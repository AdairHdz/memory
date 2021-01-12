using DataAccess.Entities;
using MemoryGame.Components;
using MemoryGame.MemoryGameService;
using MemoryGame.MemoryGameService.DataTransferObjects;
using System;
using System.Collections.Generic;
using System.ServiceModel;
using System.Threading.Tasks;
using System.Windows;

namespace MemoryGame.Views
{
    /// <summary>
    /// Interaction logic for Match.xaml
    /// </summary>
    public partial class Match : Window, MemoryGameService.IMatchServiceCallback
    {
        /// <summary>
        /// The players for the current match.
        /// </summary>
        public string[] Players { get; set; }

        /// <summary>
        /// The number of players set to the current match.
        /// </summary>
        public int NumberOfPlayers { get; set; }

        /// <summary>
        /// The host of the current match.
        /// </summary>
        public string MatchHost { get; set; }

        /// <summary>
        /// The card deck for the current match.
        /// </summary>
        public CardDeckDto CardDeck { get; set; }
        private InstanceContext _context = null;
        private MatchServiceClient _matchServiceClient;        
        private List<ImageCard> _imageCards;
        private int _numberOfMovementsAllowed;
        private IList<ImageCard> _cardsFlippedInCurrentTurn;
        private bool _playerHasFormedAPair;
        private bool _windowIsBeingClosedByTheCloseButton;
        private static readonly log4net.ILog _logger = log4net.LogManager.GetLogger("Match.xaml.cs");

        /// <summary>
        /// The <c>Match</c> constructor.
        /// </summary>
        public Match()
        {
            InitializeComponent();
            _context = new InstanceContext(this);
            _matchServiceClient = new MemoryGameService.MatchServiceClient(_context);
            _imageCards = new List<ImageCard>();                        
            _numberOfMovementsAllowed = 0;
            _cardsFlippedInCurrentTurn = new List<ImageCard>();
            _playerHasFormedAPair = false;
            _windowIsBeingClosedByTheCloseButton = true;
        }

        private void DrawPlayersNames()
        {            
            UserBoxDrawer userBoxDrawer = new UserBoxDrawer()
            {
                GridToBeDrawnOn = MainGrid,
                PlayersUsernames = Players
            };
            userBoxDrawer.Draw();
        }

        private void DrawGameBoard()
        {
            GameBoardDrawer gameBoardDrawer = new GameBoardDrawer()
            {
                GridToBeDrawnOn = GameBoardGrid,
                ImageCards = _imageCards,
                CardDeck = CardDeck,
                NumberOfColumns = 5
            };
               gameBoardDrawer.Draw();
               gameBoardDrawer.SetEventOnCardClicked(GetClickedCard);
        }
        
        private void GetClickedCard(object sender, EventArgs e)
        {
            ImageCard cardClicked = ((ImageCard)sender);
            bool cardHasNotBeenFlipped = cardClicked.Source != cardClicked.FrontImage;
            bool playerStillHasMovements = _numberOfMovementsAllowed > 0;

            if (cardHasNotBeenFlipped && playerStillHasMovements)
            {
                FlipCard(cardClicked);
                EndMovement();
            }            
        }

        private void FlipCard(ImageCard cardClicked)
        {
            try
            {
                _numberOfMovementsAllowed--;
                int cardIndex = _imageCards.IndexOf(cardClicked);
                _cardsFlippedInCurrentTurn.Add(cardClicked);
                PlayerMovementDto playerMovementDto = new PlayerMovementDto()
                {
                    Host = MatchHost,
                    Username = Sesion.GetSesion.Username,
                    CardIndex = cardIndex,
                    MovementsLeft = _numberOfMovementsAllowed,
                    HasFormedAPair = _playerHasFormedAPair
                };
                if (_numberOfMovementsAllowed == 0 && HasFormedAPair())
                {
                    playerMovementDto.HasFormedAPair = true;
                }
                _matchServiceClient.NotifyCardWasUncoveredd(playerMovementDto);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
            }
            catch (TimeoutException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerTimeoutError);
            }
            catch (CommunicationException)
            {
                MessageBox.Show(Properties.Langs.Resources.CommunicationInterrupted);
            }
        }

        private void EndMovement()
        {
            try
            {
                if (_numberOfMovementsAllowed == 0)
                {
                    if (HasFormedAPair())
                    {
                        _numberOfMovementsAllowed = 2;
                        _playerHasFormedAPair = true;
                    }

                    CardPairDto cardPairDto = new CardPairDto()
                    {
                        IndexOfCard1 = _imageCards.IndexOf(_cardsFlippedInCurrentTurn[0]),
                        IndexOfCard2 = _imageCards.IndexOf(_cardsFlippedInCurrentTurn[1]),
                        BothCardsAreEqual = _playerHasFormedAPair
                    };
                    _matchServiceClient.EndTurn(MatchHost, Sesion.GetSesion.Username, cardPairDto);
                    _playerHasFormedAPair = false;
                    _cardsFlippedInCurrentTurn.Clear();
                }
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
            }
            catch (TimeoutException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerTimeoutError);
            }
            catch (CommunicationException)
            {
                MessageBox.Show(Properties.Langs.Resources.CommunicationInterrupted);
            }
        }

        private bool HasFormedAPair()
        {
            if (_cardsFlippedInCurrentTurn[0].CardId == _cardsFlippedInCurrentTurn[1].CardId)
            {
                return true;
            }
            return false;
        }

        private void OptionsButtonClicked(object sender, RoutedEventArgs e)
        {
            _windowIsBeingClosedByTheCloseButton = false;
            GameOptions gameOptionsView = new GameOptions()
            {
                MatchHost = this.MatchHost,
                NumberOfPlayersInMatch = NumberOfPlayers,
                PlayerUsername = Sesion.GetSesion.Username,
                Context = this._context
            };
            gameOptionsView.Show();
        }

        private void WindowLoaded(object sender, EventArgs e)
        {            
            DrawPlayersNames();
            DrawGameBoard();
            if (MatchHost.Equals(Sesion.GetSesion.Username))
            {
                _numberOfMovementsAllowed = 2;
            }
            else
            {
                _numberOfMovementsAllowed = 0;
            }
            TurnLabel.Content = Properties.Langs.Resources.TurnMessage + ": " + MatchHost;
            _matchServiceClient.EnterMatch(MatchHost, Sesion.GetSesion.Username);
            NumberOfPlayers = Players.Length;
        }

        private void Window_Closed(object sender, System.EventArgs e)
        {
            if (_windowIsBeingClosedByTheCloseButton)
            {
                try
                {
                    _matchServiceClient.LeaveMatch(MatchHost, Sesion.GetSesion.Username);
                }
                catch (CommunicationException communicationException)
                {
                    _logger.Fatal(communicationException);
                }                
            }
        }

        /// <summary>
        /// Notifies the client that it has to uncover the card with the specified index.
        /// </summary>
        /// <param name="cardIndex">The index of the card to be uncovered.</param>
        public void UncoverCardd(int cardIndex)
        {
            _imageCards[cardIndex].Source = _imageCards[cardIndex].FrontImage;
        }

        private async void FlipBothCardsAgain(CardPairDto cardPairDto)
        {
            await Task.Delay(1000);
            _imageCards[cardPairDto.IndexOfCard1].Source = _imageCards[cardPairDto.IndexOfCard1].BackImage;
            _imageCards[cardPairDto.IndexOfCard2].Source = _imageCards[cardPairDto.IndexOfCard2].BackImage;
        }

        /// <summary>
        /// Notifies the client that the turn of the previous player has ended.
        /// </summary>
        /// <param name="username">The username of the player that had the previous turn.</param>
        /// <param name="cardPairDto">The pair of cards of the previous player.</param>
        public void NotifyTurnHasEnded(string username, CardPairDto cardPairDto)
        {
            TurnLabel.Content = Properties.Langs.Resources.TurnMessage + ": " + username;

            if (Sesion.GetSesion.Username.Equals(username))
            {
                _numberOfMovementsAllowed = 2;
            }
            
            if(!cardPairDto.BothCardsAreEqual)
            {                
                FlipBothCardsAgain(cardPairDto);
            }
        }

        /// <summary>
        /// Shows the winner of the current match.
        /// </summary>
        /// <param name="winner">The winner of the current match.</param>
        public void ShowWinners(string winner)
        {
            MessageBox.Show(winner + " " + Properties.Langs.Resources.WinMessage);
        }

        /// <summary>
        /// Notifies the client that the match has already ended.
        /// </summary>
        public void MatchHasEnded()
        {
            GoToMainMenuView();
        }

        /// <summary>
        /// Notifies the client that a player has been expeled.
        /// </summary>
        /// <param name="expelPlayerUsername">The username of the expeled player.</param>
        /// <param name="cardsUncovered">The cards that the expeled player had uncovered.</param>
        public void NotifyPlayerWasExpel(string expelPlayerUsername, int[] cardsUncovered)
        {
            if (Sesion.GetSesion.Username.Equals(expelPlayerUsername))
            {
                GoToMainMenuView();
            }
            else
            {
                for (int index = 0; index < cardsUncovered.Length; index++)
                {
                    _imageCards[cardsUncovered[index]].Source = _imageCards[cardsUncovered[index]].BackImage;
                }
                MessageBox.Show(expelPlayerUsername + " " + Properties.Langs.Resources.ExpelMessage);
                NumberOfPlayers--;
            }
        }

        /// <summary>
        /// Notifies the client that a player left the match.
        /// </summary>
        /// <param name="username">The username of the player who left the match.</param>
        /// <param name="cardsUncovered">The uncovered cards of the player who left.</param>
        public void NotifyPlayerLeaveMatch(string username, int[] cardsUncovered)
        {
            if (Sesion.GetSesion.Username.Equals(username))
            {
                GoToMainMenuView();
            }
            else
            {
                for (int index = 0; index < cardsUncovered.Length; index++)
                {
                    _imageCards[cardsUncovered[index]].Source = _imageCards[cardsUncovered[index]].BackImage;
                }
                MessageBox.Show(username + " " + Properties.Langs.Resources.LeaveMatchMessage);
                NumberOfPlayers--;
            }
        }

        /// <summary>
        /// Notifies the client that the turn of the expeled player has been ended.
        /// </summary>
        /// <param name="nextPlayerUsername">The name of the player who is gonna take the next turn.</param>
        public void EndTurnOfExpelPlayer(string nextPlayerUsername)
        {
            TurnLabel.Content = Properties.Langs.Resources.TurnMessage + ": " + nextPlayerUsername;

            if (Sesion.GetSesion.Username.Equals(nextPlayerUsername))
            {
                _numberOfMovementsAllowed = 2;
            }
        }

        private void GoToMainMenuView()
        {
            _windowIsBeingClosedByTheCloseButton = false;
            MainMenu mainMenuView = new MainMenu();
            mainMenuView.Show();
            this.Close();
        }
    }
}
