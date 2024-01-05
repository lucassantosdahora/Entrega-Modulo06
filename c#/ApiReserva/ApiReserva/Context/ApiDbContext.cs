using ApiReserva.Models;
using Microsoft.EntityFrameworkCore;
using System;



namespace ApiReserva.Context
{
    public class ApiDbContext: DbContext
    {
        public ApiDbContext() { }  // Construtor sem parâmetros adicionado

        public ApiDbContext(DbContextOptions<ApiDbContext> options) : base(options)
        { }


        public DbSet<Destino> Destinos { get; set; }
        public DbSet<Reserva> Reservas { get; set; }
      


    }
}
