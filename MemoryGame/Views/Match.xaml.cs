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
        private IList<ImageCard> _cardsFlippedInCurrentTurn = new List<ImageCard>();
        private IList<ImageCard> _cardsFlippedInTotal = new List<ImageCard>();
        private int _score;
        bool _playerHasFormedAPair = false;
        public string[] Players { get; set; }
        public string MatchHost { get; set; }
        public Match()
        {
            InitializeComponent();
            _imageCards = new List<ImageCard>();
            _context = new InstanceContext(this);            
            _matchServiceClient = new MemoryGameService.MatchServiceClient(_context);
            _numberOfMovementsAllowed = 0;
            _score = 0;
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

            _matchServiceClient.NotifyCardWasUncoveredd(playerMovementDto);
        }

        private void EndMovement()
        {
            if (_numberOfMovementsAllowed == 0)
            {
                if (HasFormedAPair())
                {
                    _numberOfMovementsAllowed = 2;
                    _playerHasFormedAPair = true;
                    _score += 100;
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
            GameOptions registerView = new GameOptions();
            registerView.Show();
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
            TurnLabel.Content = "Es turno de: " + MatchHost;
            _matchServiceClient.EnterMatch(MatchHost, Sesion.GetSesion.Username);
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
            TurnLabel.Content = "Es turno de: " + username;

            if (Sesion.GetSesion.Username.Equals(username))
            {
                _numberOfMovementsAllowed = 2;
            }

            if (cardPairDto.BothCardsAreEqual)
            {
                ImageCard imageCard1 = _imageCards[cardPairDto.IndexOfCard1];
                ImageCard imageCard2 = _imageCards[cardPairDto.IndexOfCard2];
                _cardsFlippedInTotal.Add(imageCard1);
                _cardsFlippedInTotal.Add(imageCard2);
            }
            else
            {
                FlipBothCardsAgain(cardPairDto);
            }

            if(_cardsFlippedInTotal.Count == _imageCards.Count)
            {
                _matchServiceClient.NotifyMatchHasEnded(MatchHost);
            }
        }

        public void ShowWinners(string winner)
        {
            MessageBox.Show(winner + " ha ganado");
        }
    }
}
