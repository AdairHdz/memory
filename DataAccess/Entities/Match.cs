namespace DataAccess.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class Match
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Match()
        {
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int MatchId { get; set; }

        public DateTime Date { get; set; }

        public int CardDeckId { get; set; }
        [ForeignKey("CardDeckId")]
        public virtual CardDeck CardDeck { get; set; }

        public string EmailAddress { get; set; }
        [ForeignKey("EmailAddress")]
        public virtual Player Winner { get; set; }
    }
}
