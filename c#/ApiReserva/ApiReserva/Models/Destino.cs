using System.Collections.ObjectModel;
using System.ComponentModel.DataAnnotations;

namespace ApiReserva.Models
{
    public class Destino
    {
        public Destino()
        {
            Reservas = new Collection<Reserva>();
        }

        [Key]
        public int DestinoId { get; set; }

        [Required]
        [StringLength(200)]
        public string DestinoName { get; set; }

        [Required]
        [StringLength(200)]
        public string DestinoDescription { get; set; }

        [Required]
        [StringLength(200)]
        public string DestinoLocation { get; set; }

        public ICollection<Reserva> Reservas { get; set; }
    }
}
