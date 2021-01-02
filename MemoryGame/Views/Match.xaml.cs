using DataAccess.Entities;
using MemoryGame.MemoryGameService.DataTransferObjects;
using System;
using System.Collections.Generic;
using System.ServiceModel;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace MemoryGame.Views
{
    /// <summary>
    /// Lógica de interacción para Match.xaml
    /// </summary>
    //[CallbackBehavior(UseSynchronizationContext = false)]
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
            int rowIndex = 0;
            int columnIndex = 0;

            foreach (var player in Players)
            {
                Grid usernameContainer = new Grid()
                {
                    Background = new SolidColorBrush(Color.FromRgb(239, 71, 111))

                };

                TextBlock username = new TextBlock()
                {
                    Text = player,
                    Foreground = new SolidColorBrush(Color.FromRgb(255, 255, 255)),
                    VerticalAlignment = VerticalAlignment.Top,
                    HorizontalAlignment = HorizontalAlignment.Center,
                    FontSize = 20,
                    TextTrimming = TextTrimming.CharacterEllipsis
                };

                TextBlock score = new TextBlock()
                {
                    Text = "Puntaje: " + _score,
                    Foreground = new SolidColorBrush(Color.FromRgb(255, 255, 255)),
                    VerticalAlignment = VerticalAlignment.Bottom,
                    HorizontalAlignment = HorizontalAlignment.Center,
                    FontSize = 15,
                    TextTrimming = TextTrimming.CharacterEllipsis
                };

                Grid.SetColumn(username, 0);
                Grid.SetRow(username, 0);
                usernameContainer.Children.Add(username);
                Grid.SetColumn(score, 0);
                Grid.SetRow(score, 1);
                usernameContainer.Children.Add(score);

                Grid.SetColumn(usernameContainer, rowIndex);
                Grid.SetRow(usernameContainer, columnIndex);
                MainGrid.Children.Add(usernameContainer);

                if (columnIndex == 8)
                {
                    rowIndex = 8;
                    columnIndex = 0;
                }
                else
                {
                    columnIndex = 8;
                }                
            }
        }

        private void DrawGameBoard()
        {
            DrawColumns();
            DrawRows();
            DrawImages();
        }

        private void DrawColumns()
        {
            for (int i = 0; i < 5; i++)
            {
                GameBoardGrid.ColumnDefinitions.Add(new ColumnDefinition());
            }
        }

        private void DrawRows()
        {
            int numberOfCards = CardDeck.Cards.Count;
            int numberOfColumnsDrawn = GameBoardGrid.ColumnDefinitions.Count;
            
            //Comportamiento extraño. Ceiling no funciona
            int numberOfRequiredRows = (int)Math.Ceiling(Convert.ToDouble(numberOfCards / numberOfColumnsDrawn)) + 1;
            for (int i = 0; i < numberOfRequiredRows; i++)
            {
                GameBoardGrid.RowDefinitions.Add(new RowDefinition());
            }
        }

        private void DrawImages()
        {
            PopulateImageCards();
            int rowIndex = 0;
            int columnIndex = 0;
            int columnCount = GameBoardGrid.ColumnDefinitions.Count;
            
            for (int numberOfActualCard = 0; numberOfActualCard < _imageCards.Count; numberOfActualCard++)
            {
                if(columnIndex >= columnCount)
                {
                    columnIndex = 0;
                    rowIndex++;
                }

                Grid.SetRow(_imageCards[numberOfActualCard], rowIndex);
                Grid.SetColumn(_imageCards[numberOfActualCard], columnIndex);
                _imageCards[numberOfActualCard].Margin = new Thickness(8);
                _imageCards[numberOfActualCard].MouseDown += GetClickedCard;
                GameBoardGrid.Children.Add(_imageCards[numberOfActualCard]);                
                columnIndex++;
            }
        }

        private void PopulateImageCards()
        {
            IList<MemoryGameService.DataTransferObjects.CardDto> cards = CardDeck.Cards;
            string backImageOfCards = CardDeck.BackImage;
            BitmapImage backImage = new BitmapImage(new Uri(backImageOfCards));

            for (int numberOfActualCard = 0; numberOfActualCard < cards.Count; numberOfActualCard++)
            {
                MemoryGameService.DataTransferObjects.CardDto actualCard = CardDeck.Cards[numberOfActualCard];

                string frontImageOfActualCard = actualCard.FrontImage;


                BitmapImage frontImage = new BitmapImage(new Uri(frontImageOfActualCard));
                ImageCard imageCard = new ImageCard()
                {
                    FrontImage = frontImage,
                    BackImage = backImage,
                    Source = backImage,
                    CardId = actualCard.CardId,
                    CardDto = actualCard
                };
                _imageCards.Add(imageCard);
            }

        }

        private void GetClickedCard(object sender, EventArgs e)
        {
            ImageCard cardClicked = ((ImageCard)sender);
            bool cardHasNotBeenFlipped = cardClicked.Source != cardClicked.FrontImage;
            bool playerStillHasMovements = _numberOfMovementsAllowed > 0;
            
            if (cardHasNotBeenFlipped && playerStillHasMovements)
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
                    _matchServiceClient.PassTurnToNextPlayer(MatchHost, Sesion.GetSesion.Username, cardPairDto);
                    _playerHasFormedAPair = false;
                    _cardsFlippedInCurrentTurn.Clear();
                }                
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

        public class ImageCard : Image
        {
            public int CardId { set; get; }
            public BitmapImage FrontImage { get; set; }
            public BitmapImage BackImage { get; set; }
            public CardDto CardDto { get; set; }
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

        public void NotifyTurnHasBeenPassed(string username, CardPairDto cardPairDto)
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
