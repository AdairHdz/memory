namespace DataAccess.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Card
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int CardId { get; set; }

        public int CardDeckId { get; set; }

        [Required]
        public string FrontImage { get; set; }

        public virtual CardDeck CardDecks { get; set; }
    }
}
