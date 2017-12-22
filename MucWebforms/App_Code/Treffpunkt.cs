namespace MucWebforms
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Treffpunkt")]
    public partial class Treffpunkt
    {
        public int Id { get; set; }

        [StringLength(50)]
        public string Ort { get; set; }
        [ForeignKey("TreffpunktID")]
        public virtual ICollection<Anforderung> Anforderungen { get; set; }
    }
}
