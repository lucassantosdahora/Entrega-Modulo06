using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace ApiReserva.Migrations
{
    public partial class repare3 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Reservas_Destinos_DestinosDestinoId",
                table: "Reservas");

            migrationBuilder.DropIndex(
                name: "IX_Reservas_DestinosDestinoId",
                table: "Reservas");

            migrationBuilder.DropColumn(
                name: "DestinosDestinoId",
                table: "Reservas");

            migrationBuilder.AddColumn<int>(
                name: "DestinoId",
                table: "Reservas",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_Reservas_DestinoId",
                table: "Reservas",
                column: "DestinoId");

            migrationBuilder.AddForeignKey(
                name: "FK_Reservas_Destinos_DestinoId",
                table: "Reservas",
                column: "DestinoId",
                principalTable: "Destinos",
                principalColumn: "DestinoId",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Reservas_Destinos_DestinoId",
                table: "Reservas");

            migrationBuilder.DropIndex(
                name: "IX_Reservas_DestinoId",
                table: "Reservas");

            migrationBuilder.DropColumn(
                name: "DestinoId",
                table: "Reservas");

            migrationBuilder.AddColumn<int>(
                name: "DestinosDestinoId",
                table: "Reservas",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Reservas_DestinosDestinoId",
                table: "Reservas",
                column: "DestinosDestinoId");

            migrationBuilder.AddForeignKey(
                name: "FK_Reservas_Destinos_DestinosDestinoId",
                table: "Reservas",
                column: "DestinosDestinoId",
                principalTable: "Destinos",
                principalColumn: "DestinoId");
        }
    }
}
