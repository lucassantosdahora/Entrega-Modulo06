CREATE DATABASE  IF NOT EXISTS `apireservadb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `apireservadb`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: apireservadb
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__efmigrationshistory`
--

LOCK TABLES `__efmigrationshistory` WRITE;
/*!40000 ALTER TABLE `__efmigrationshistory` DISABLE KEYS */;
INSERT INTO `__efmigrationshistory` VALUES ('20240101041334_inicial','6.0.25'),('20240101043806_repare','6.0.25'),('20240101044506_repare2','6.0.25'),('20240101051958_repare3','6.0.25');
/*!40000 ALTER TABLE `__efmigrationshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destinos`
--

DROP TABLE IF EXISTS `destinos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `destinos` (
  `DestinoId` int NOT NULL AUTO_INCREMENT,
  `DestinoName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DestinoDescription` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DestinoLocation` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`DestinoId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destinos`
--

LOCK TABLES `destinos` WRITE;
/*!40000 ALTER TABLE `destinos` DISABLE KEYS */;
INSERT INTO `destinos` VALUES (1,'Salvador','Salvador, a capital do estado da Bahia, é uma cidade rica em história, cultura e beleza natural. ','Brasil'),(2,'Rio de janeiro','O Rio de Janeiro é uma cidade brasileira conhecida por sua beleza natural deslumbrante, sua cultura vibrante e sua atmosfera festiva.','Brasil'),(3,'São Paulo','São Paulo, a maior cidade do Brasil e uma das maiores do mundo, é um centro cosmopolita de negócios, cultura e entretenimento.','Brasil'),(4,'Porto Alegre','Porto Alegre, a capital do estado do Rio Grande do Sul, é uma cidade que combina tradição e modernidade, oferecendo uma experiência única aos visitantes.','Brasil'),(5,'Fortaleza','Fortaleza, localizada no nordeste do Brasil, é uma cidade conhecida por suas praias deslumbrantes, cultura vibrante e clima tropical.','Brasil'),(6,'Porto Seguro','Porto Seguro, situada no estado da Bahia, Brasil, é uma cidade que mescla história, belas praias e uma atmosfera descontraída. ','Brasil'),(7,'Jalapão','O Jalapão é uma região de natureza exuberante e paisagens únicas localizada no estado do Tocantins, Brasil. ','Brasil'),(8,'Londres','Londres, a capital do Reino Unido, é uma cidade global vibrante, rica em história, cultura e diversidade. ','Inglaterra'),(9,'Paris','Conhecida como a \'Cidade Luz\', Paris é famosa por seus ícones como a Torre Eiffel, o Louvre e a Catedral de Notre-Dame.','França'),(10,'Roma','A capital da Itália, Roma é uma cidade repleta de história, com o Coliseu, o Fórum Romano e o Vaticano entre suas atrações.','Itália'),(11,'Nova Iorque','Conhecida como a \'Grande Maçã\', Nova Iorque é uma metrópole vibrante e diversificada.','Estados Unidos'),(12,'Tóquio',' Tóquio é uma metrópole moderna que equilibra tradição e inovação. Com seus arranha-céus futuristas, templos antigos e bairros únicos como Shibuya.','Japão'),(13,'Barcelona','Barcelona encanta com sua arquitetura única de Antoni Gaudí, como a Sagrada Família e o Parque Güell. ','Espanha'),(14,'Sydney',' Sydney é famosa por sua icônica Sydney Opera House e pela Sydney Harbour Bridge. ','Austrália');
/*!40000 ALTER TABLE `destinos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `reservaId` int NOT NULL AUTO_INCREMENT,
  `clienteName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `clienteEmail` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `clienteTelephone` int NOT NULL,
  `quatidadePeople` int NOT NULL,
  `reservaValue` decimal(65,30) NOT NULL,
  `DestinoId` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`reservaId`),
  KEY `IX_Reservas_DestinoId` (`DestinoId`),
  CONSTRAINT `FK_Reservas_Destinos_DestinoId` FOREIGN KEY (`DestinoId`) REFERENCES `destinos` (`DestinoId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (1,'Isabela Lima','isabela@email.com',333222111,1,900.000000000000000000000000000000,4),(2,'Camila Souza','camila@email.com',987654321,3,3500.000000000000000000000000000000,7),(3,'Rafael Oliveira','rafael@email.com',555666777,1,800.000000000000000000000000000000,2),(4,'Lucas Ferreira','lucas@email.com',999888777,2,1200.000000000000000000000000000000,3),(5,'Patricia Santos','patricia@email.com',111222333,4,5200.000000000000000000000000000000,5),(6,'Fernando Costa','fernando@email.com',777666555,3,1800.000000000000000000000000000000,5),(7,'Grazi Santos','grazu@email.com',667333444,1,2000.000000000000000000000000000000,12),(8,'Mariana Oliveira','mariana@email.com',444555666,2,2600.000000000000000000000000000000,6),(9,'Carlos Silva','carlos@email.com',666777888,4,2400.000000000000000000000000000000,7),(10,'Ana Santos','ana@email.com',222333444,1,2000.000000000000000000000000000000,8);
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-05 14:32:07
