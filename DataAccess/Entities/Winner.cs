namespace DataAccess.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Winner
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(100)]
        public string EmailAddress { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MatchId { get; set; }

        public int Score { get; set; }

        public virtual Match Matches { get; set; }

        public virtual Player Players { get; set; }
    }
}
