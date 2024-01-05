﻿// <auto-generated />
using System;
using ApiReserva.Context;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

#nullable disable

namespace ApiReserva.Migrations
{
    [DbContext(typeof(ApiDbContext))]
    [Migration("20240101044506_repare2")]
    partial class repare2
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.25")
                .HasAnnotation("Relational:MaxIdentifierLength", 64);

            modelBuilder.Entity("ApiReserva.Models.Destino", b =>
                {
                    b.Property<int>("DestinoId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<string>("DestinoDescription")
                        .IsRequired()
                        .HasMaxLength(200)
                        .HasColumnType("varchar(200)");

                    b.Property<string>("DestinoLocation")
                        .IsRequired()
                        .HasMaxLength(200)
                        .HasColumnType("varchar(200)");

                    b.Property<string>("DestinoName")
                        .IsRequired()
                        .HasMaxLength(200)
                        .HasColumnType("varchar(200)");

                    b.HasKey("DestinoId");

                    b.ToTable("Destinos");
                });

            modelBuilder.Entity("Reserva", b =>
                {
                    b.Property<int>("reservaId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<int?>("DestinosDestinoId")
                        .HasColumnType("int");

                    b.Property<string>("clienteEmail")
                        .IsRequired()
                        .HasMaxLength(150)
                        .HasColumnType("varchar(150)");

                    b.Property<string>("clienteName")
                        .IsRequired()
                        .HasMaxLength(200)
                        .HasColumnType("varchar(200)");

                    b.Property<int>("clienteTelephone")
                        .HasColumnType("int");

                    b.Property<int>("quatidadePeople")
                        .HasColumnType("int");

                    b.Property<decimal>("reservaValue")
                        .HasColumnType("decimal(65,30)");

                    b.HasKey("reservaId");

                    b.HasIndex("DestinosDestinoId");

                    b.ToTable("Reservas");
                });

            modelBuilder.Entity("Reserva", b =>
                {
                    b.HasOne("ApiReserva.Models.Destino", "Destinos")
                        .WithMany("Reservas")
                        .HasForeignKey("DestinosDestinoId");

                    b.Navigation("Destinos");
                });

            modelBuilder.Entity("ApiReserva.Models.Destino", b =>
                {
                    b.Navigation("Reservas");
                });
#pragma warning restore 612, 618
        }
    }
}
