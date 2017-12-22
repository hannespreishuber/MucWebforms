namespace MucWebforms
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Anforderung")]
    public partial class Anforderung
    {
        public int Id { get; set; }

        [StringLength(50)]
        public string Firma { get; set; }

        public int? Kostenstelle { get; set; }

        public int? SAPNr { get; set; }

        public int? TreffpunktID { get; set; }

        [Column(TypeName = "date")]
        public DateTime? Datum { get; set; }

        public DateTime? Von { get; set; }

        public DateTime? Bis { get; set; }
        public virtual Treffpunkt Treffpunkt { get; set; }
       
    }
}
