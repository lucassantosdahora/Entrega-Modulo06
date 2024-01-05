using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace ApiReserva.Migrations
{
    public partial class repare : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "reservaValue",
                table: "Reservas",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "reservaValue",
                table: "Reservas");
        }
    }
}
