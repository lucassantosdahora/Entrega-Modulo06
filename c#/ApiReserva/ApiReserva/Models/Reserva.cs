using ApiReserva.Models;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;


public class Reserva
{
    [Key]
    public int reservaId { get; set; }

    [Required]
    [StringLength(200)]
    public string clienteName { get; set; }

    [Required]
    [StringLength(150)]
    public string clienteEmail { get; set; }

    [Required]
    public int clienteTelephone { get; set; }

    [Required]
    public int quatidadePeople { get; set; }

    [Required]
    public decimal reservaValue { get; set; }

    [ForeignKey("Destino")]  // Nome da propriedade de navegação no modelo
    public int DestinoId { get; set; }

    [JsonIgnore]
    public Destino Destino { get; set; }
}
