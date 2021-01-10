using DataAccess.Entities;
using MemoryGame.Components;
using MemoryGame.MemoryGameService.DataTransferObjects;
using System;
using System.Collections.Generic;
using System.ServiceModel;
using System.Threading.Tasks;
using System.Windows;

namespace MemoryGame.Views
{
    /// <summary>
    /// Lógica de interacción para Match.xaml
    /// </summary>
    public partial class Match : Window, MemoryGameService.IMatchServiceCallback
    {
        
        private InstanceContext _context = null;
        private MemoryGameService.MatchServiceClient _matchServiceClient;
        public MemoryGameService.DataTransferObjects.CardDeckDTO CardDeck { get; set; }
        private List<ImageCard> _imageCards;
        private int _numberOfMovementsAllowed;
        private IList<ImageCard> _cardsFlippedInCurrentTurn;
        private bool _playerHasFormedAPair;
        public string[] Players { get; set; }
        public int NumberOfPlayers { get; set; }
        public string MatchHost { get; set; }
        private bool _windowIsBeingClosedByTheCloseButton;
        private static readonly log4net.ILog _logger = log4net.LogManager.GetLogger("Match.xaml.cs");
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
                if (_numberOfMovementsAllowed == 0)
                {
                    if (HasFormedAPair())
                    {
                        playerMovementDto.HasFormedAPair = true;
                    }
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

        public void NotifyTurnHasEnded(string username, CardPairDto cardPairDto)
        {
            TurnLabel.Content = Properties.Langs.Resources.TurnMessage + ": " + username;

            if (Sesion.GetSesion.Username.Equals(username))
            {
                _numberOfMovementsAllowed = 2;
            }

            if (cardPairDto.BothCardsAreEqual)
            {
                ImageCard imageCard1 = _imageCards[cardPairDto.IndexOfCard1];
                ImageCard imageCard2 = _imageCards[cardPairDto.IndexOfCard2];
            }
            else
            {
                FlipBothCardsAgain(cardPairDto);
            }
        }

        public void ShowWinners(string winner)
        {
            MessageBox.Show(winner + " " + Properties.Langs.Resources.WinMessage);
        }

        public void MatchHasEnded()
        {
            GoToMainMenuView();
        }

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

        public void NotifyPlayerLeaveMatch(string playerUsername, int[] cardsUncovered)
        {
            if (Sesion.GetSesion.Username.Equals(playerUsername))
            {
                GoToMainMenuView();
            }
            else
            {
                for (int index = 0; index < cardsUncovered.Length; index++)
                {
                    _imageCards[cardsUncovered[index]].Source = _imageCards[cardsUncovered[index]].BackImage;
                }
                MessageBox.Show(playerUsername + " " + Properties.Langs.Resources.LeaveMatchMessage);
                NumberOfPlayers--;
            }
        }

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
