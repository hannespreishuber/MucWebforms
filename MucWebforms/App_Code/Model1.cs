namespace MucWebforms 
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model11")
        {
        }

        public virtual DbSet<Anforderung> Anforderung { get; set; }
        public virtual DbSet<Treffpunkt> Treffpunkt { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Anforderung>()
                .Property(e => e.Firma)
                .IsUnicode(false);

            modelBuilder.Entity<Treffpunkt>()
                .Property(e => e.Ort)
                .IsUnicode(false);
        }
    }
}
