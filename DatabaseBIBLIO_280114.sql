-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: BNCR
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `BNCR`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `BNCR` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `BNCR`;

--
-- Table structure for table `Biblioteca`
--

DROP TABLE IF EXISTS `Biblioteca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Biblioteca` (
  `Nome` varchar(100) NOT NULL,
  `Citta` varchar(100) NOT NULL,
  `ID_Biblioteca` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID_Biblioteca`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Biblioteca`
--

LOCK TABLES `Biblioteca` WRITE;
/*!40000 ALTER TABLE `Biblioteca` DISABLE KEYS */;
INSERT INTO `Biblioteca` VALUES ('Biblioteca Accademica','Pisa',1),('Biblioteca Centrale','Roma',2),('Biblioteca Civica','Torino',3),('Biblioteca Comunale','Firenze',4),('Biblioteca Metropolitana','Genova',5),('Biblioteca Nazionale','Milano',6),('Biblioteca Popolare','Palermo',7),('Biblioteca Regionale','Napoli',8),('Biblioteca Storica','Venezia',9),('Biblioteca Universitaria','Bologna',10),('Casa delle Letterature','Roma',11);
/*!40000 ALTER TABLE `Biblioteca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categoria`
--

DROP TABLE IF EXISTS `Categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Categoria` (
  `Codice_categoria` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`Codice_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categoria`
--

LOCK TABLES `Categoria` WRITE;
/*!40000 ALTER TABLE `Categoria` DISABLE KEYS */;
INSERT INTO `Categoria` VALUES ('000','Opere generali'),('010','Bibliografia'),('020','Scienze dell’informazione e biblioteconomia'),('030','Enciclopedie e libri di riferimento'),('050','Periodici e giornalismo'),('060','Organizzazioni e museologia'),('070','Giornalismo, editoria e media'),('080','Citazioni e antologie'),('090','Manoscritti e libri rari'),('100','Filosofia'),('110','Metafisica'),('120','Epistemologia, causalità e cambiamento'),('130','Parapsicologia e occultismo'),('140','Scuole filosofiche specifiche'),('150','Psicologia'),('160','Logica'),('170','Etica'),('180','Filosofia antica, medievale e orientale'),('190','Filosofia moderna e occidentale'),('200','Religione'),('210','Filosofia e teoria della religione'),('220','Bibbia e studi biblici'),('230','Cristianesimo e teologia cristiana'),('240','Pratiche e devozioni cristiane'),('250','Chiese e pratiche pastorali'),('260','Teologia sociale e gruppi religiosi'),('270','Storia del cristianesimo'),('280','Diverse denominazioni cristiane'),('290','Altre religioni'),('300','Scienze sociali'),('310','Statistica generale'),('320','Scienza politica'),('330','Economia'),('340','Diritto'),('350','Pubblica amministrazione e scienza militare'),('360','Problemi sociali e servizi sociali'),('370','Educazione'),('380','Commercio, comunicazioni e trasporti'),('390','Costumi, etichetta e folclore'),('400','Linguaggio'),('410','Linguistica'),('420','Inglese e lingue germaniche'),('430','Tedesco e lingue affini'),('440','Francese e lingue romanze'),('450','Italiano, rumeno e lingue correlate'),('460','Spagnolo e portoghese'),('470','Latino'),('480','Greco classico e moderno'),('490','Altre lingue'),('500','Scienze naturali e matematica'),('510','Matematica'),('520','Astronomia'),('530','Fisica'),('540','Chimica'),('550','Scienze della Terra'),('560','Paleontologia'),('570','Scienze della vita e biologia'),('580','Botanica'),('590','Zoologia'),('600','Tecnologia'),('610','Medicina'),('620','Ingegneria'),('630','Agricoltura'),('640','Economia domestica e vita familiare'),('650','Management e servizi aziendali'),('660','Ingegneria chimica'),('670','Manifattura e industria'),('680','Produzione e lavorazione di prodotti'),('690','Edilizia e costruzioni'),('700','Arti e belle arti'),('710','Urbanistica e paesaggistica'),('720','Architettura'),('730','Scultura e arti decorative'),('740','Disegno e arti decorative'),('750','Pittura'),('760','Arti grafiche e stampa'),('770','Fotografia'),('780','Musica'),('790','Intrattenimento e sport'),('800','Letteratura e retorica'),('810','Letteratura americana'),('820','Letteratura inglese e anglofona'),('830','Letteratura tedesca'),('840','Letteratura francese'),('850','Letteratura italiana, rumena e lingue correlate'),('860','Letteratura spagnola e portoghese'),('870','Letteratura latina'),('880','Letteratura greca'),('890','Altre letterature'),('900','Storia e geografia'),('910','Geografia e viaggi'),('920','Biografie, genealogia e persone'),('930','Storia del mondo antico'),('940','Storia dell’Europa'),('950','Storia dell’Asia'),('960','Storia dell’Africa'),('970','Storia del Nord America'),('980','Storia del Sud America'),('990','Storia di altre parti del mondo');
/*!40000 ALTER TABLE `Categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!50001 DROP VIEW IF EXISTS `categorie`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `categorie` AS SELECT 
 1 AS `Codice_categoria`,
 1 AS `nome`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Copia`
--

DROP TABLE IF EXISTS `Copia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Copia` (
  `Numero_Copia` int NOT NULL,
  `stato` enum('In prestito utente','In prestito altra biblioteca','Disponibile') NOT NULL,
  `ISBN` varchar(100) NOT NULL,
  PRIMARY KEY (`Numero_Copia`,`ISBN`),
  KEY `copia_ibfk_1` (`ISBN`),
  KEY `idx_copia_stato` (`stato`),
  CONSTRAINT `copia_ibfk_1` FOREIGN KEY (`ISBN`) REFERENCES `Libro` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Copia`
--

LOCK TABLES `Copia` WRITE;
/*!40000 ALTER TABLE `Copia` DISABLE KEYS */;
INSERT INTO `Copia` VALUES (5,'In prestito utente','978-0000000011'),(6,'In prestito utente','978-0000000011'),(7,'In prestito utente','978-0000000011'),(8,'In prestito utente','978-0000000011'),(9,'In prestito utente','978-0000000011'),(10,'In prestito utente','978-0000000011'),(1,'In prestito altra biblioteca','978-0000000002'),(1,'In prestito altra biblioteca','978-4000000013'),(1,'In prestito altra biblioteca','978-4000000103'),(1,'In prestito altra biblioteca','978-4000000110'),(1,'In prestito altra biblioteca','978-5000000102'),(1,'In prestito altra biblioteca','978-6000000005'),(1,'In prestito altra biblioteca','978-6000000103'),(1,'In prestito altra biblioteca','978-7000000011'),(1,'In prestito altra biblioteca','978-8000000014'),(1,'In prestito altra biblioteca','978-9000000015'),(1,'Disponibile','978-0000000001'),(1,'Disponibile','978-0000000003'),(1,'Disponibile','978-0000000004'),(1,'Disponibile','978-0000000005'),(1,'Disponibile','978-0000000006'),(1,'Disponibile','978-0000000007'),(1,'Disponibile','978-0000000008'),(1,'Disponibile','978-0000000009'),(1,'Disponibile','978-0000000010'),(1,'Disponibile','978-0000000012'),(1,'Disponibile','978-0000000013'),(1,'Disponibile','978-0000000014'),(1,'Disponibile','978-0000000015'),(1,'Disponibile','978-0000000101'),(1,'Disponibile','978-0000000102'),(1,'Disponibile','978-0000000103'),(1,'Disponibile','978-0000000104'),(1,'Disponibile','978-0000000105'),(1,'Disponibile','978-0000000106'),(1,'Disponibile','978-0000000107'),(1,'Disponibile','978-0000000108'),(1,'Disponibile','978-0000000109'),(1,'Disponibile','978-0000000110'),(1,'Disponibile','978-0000000201'),(1,'Disponibile','978-0000000202'),(1,'Disponibile','978-0000000203'),(1,'Disponibile','978-0000000204'),(1,'Disponibile','978-0000000205'),(1,'Disponibile','978-0000000206'),(1,'Disponibile','978-0000000207'),(1,'Disponibile','978-0000000208'),(1,'Disponibile','978-0000000209'),(1,'Disponibile','978-0000000210'),(1,'Disponibile','978-00000432'),(1,'Disponibile','978-002345611'),(1,'Disponibile','978-01298716'),(1,'Disponibile','978-1000000001'),(1,'Disponibile','978-1000000002'),(1,'Disponibile','978-1000000004'),(1,'Disponibile','978-1000000005'),(1,'Disponibile','978-1000000006'),(1,'Disponibile','978-1000000007'),(1,'Disponibile','978-1000000008'),(1,'Disponibile','978-1000000009'),(1,'Disponibile','978-1000000010'),(1,'Disponibile','978-1000000011'),(1,'Disponibile','978-1000000012'),(1,'Disponibile','978-1000000013'),(1,'Disponibile','978-1000000014'),(1,'Disponibile','978-1000000015'),(1,'Disponibile','978-1000000101'),(1,'Disponibile','978-1000000102'),(1,'Disponibile','978-1000000103'),(1,'Disponibile','978-1000000104'),(1,'Disponibile','978-1000000105'),(1,'Disponibile','978-1000000106'),(1,'Disponibile','978-1000000107'),(1,'Disponibile','978-1000000108'),(1,'Disponibile','978-1000000109'),(1,'Disponibile','978-1000000110'),(1,'Disponibile','978-1000000201'),(1,'Disponibile','978-1000000202'),(1,'Disponibile','978-1000000203'),(1,'Disponibile','978-1000000204'),(1,'Disponibile','978-1000000205'),(1,'Disponibile','978-1000000206'),(1,'Disponibile','978-1000000207'),(1,'Disponibile','978-1000000208'),(1,'Disponibile','978-1000000209'),(1,'Disponibile','978-1000000210'),(1,'Disponibile','978-2000000001'),(1,'Disponibile','978-2000000002'),(1,'Disponibile','978-2000000003'),(1,'Disponibile','978-2000000004'),(1,'Disponibile','978-2000000005'),(1,'Disponibile','978-2000000006'),(1,'Disponibile','978-2000000007'),(1,'Disponibile','978-2000000008'),(1,'Disponibile','978-2000000009'),(1,'Disponibile','978-2000000010'),(1,'Disponibile','978-2000000011'),(1,'Disponibile','978-2000000012'),(1,'Disponibile','978-2000000013'),(1,'Disponibile','978-2000000014'),(1,'Disponibile','978-2000000015'),(1,'Disponibile','978-2000000101'),(1,'Disponibile','978-2000000102'),(1,'Disponibile','978-2000000103'),(1,'Disponibile','978-2000000104'),(1,'Disponibile','978-2000000105'),(1,'Disponibile','978-2000000106'),(1,'Disponibile','978-2000000107'),(1,'Disponibile','978-2000000108'),(1,'Disponibile','978-2000000109'),(1,'Disponibile','978-2000000110'),(1,'Disponibile','978-2000000201'),(1,'Disponibile','978-2000000202'),(1,'Disponibile','978-2000000203'),(1,'Disponibile','978-2000000204'),(1,'Disponibile','978-2000000205'),(1,'Disponibile','978-2000000206'),(1,'Disponibile','978-2000000207'),(1,'Disponibile','978-2000000208'),(1,'Disponibile','978-2000000209'),(1,'Disponibile','978-2000000210'),(1,'Disponibile','978-3000000001'),(1,'Disponibile','978-3000000002'),(1,'Disponibile','978-3000000003'),(1,'Disponibile','978-3000000004'),(1,'Disponibile','978-3000000005'),(1,'Disponibile','978-3000000006'),(1,'Disponibile','978-3000000007'),(1,'Disponibile','978-3000000008'),(1,'Disponibile','978-3000000009'),(1,'Disponibile','978-3000000010'),(1,'Disponibile','978-3000000011'),(1,'Disponibile','978-3000000012'),(1,'Disponibile','978-3000000013'),(1,'Disponibile','978-3000000014'),(1,'Disponibile','978-3000000015'),(1,'Disponibile','978-3000000101'),(1,'Disponibile','978-3000000102'),(1,'Disponibile','978-3000000103'),(1,'Disponibile','978-3000000104'),(1,'Disponibile','978-3000000105'),(1,'Disponibile','978-3000000106'),(1,'Disponibile','978-3000000107'),(1,'Disponibile','978-3000000108'),(1,'Disponibile','978-3000000109'),(1,'Disponibile','978-3000000201'),(1,'Disponibile','978-3000000202'),(1,'Disponibile','978-3000000203'),(1,'Disponibile','978-3000000204'),(1,'Disponibile','978-3000000205'),(1,'Disponibile','978-3000000206'),(1,'Disponibile','978-3000000207'),(1,'Disponibile','978-3000000208'),(1,'Disponibile','978-3000000209'),(1,'Disponibile','978-3000000210'),(1,'Disponibile','978-4000000001'),(1,'Disponibile','978-4000000002'),(1,'Disponibile','978-4000000003'),(1,'Disponibile','978-4000000004'),(1,'Disponibile','978-4000000005'),(1,'Disponibile','978-4000000006'),(1,'Disponibile','978-4000000007'),(1,'Disponibile','978-4000000008'),(1,'Disponibile','978-4000000009'),(1,'Disponibile','978-4000000010'),(1,'Disponibile','978-4000000011'),(1,'Disponibile','978-4000000012'),(1,'Disponibile','978-4000000014'),(1,'Disponibile','978-4000000015'),(1,'Disponibile','978-4000000101'),(1,'Disponibile','978-4000000102'),(1,'Disponibile','978-4000000104'),(1,'Disponibile','978-4000000105'),(1,'Disponibile','978-4000000106'),(1,'Disponibile','978-4000000107'),(1,'Disponibile','978-4000000108'),(1,'Disponibile','978-4000000109'),(1,'Disponibile','978-4000000201'),(1,'Disponibile','978-4000000202'),(1,'Disponibile','978-4000000203'),(1,'Disponibile','978-4000000204'),(1,'Disponibile','978-4000000205'),(1,'Disponibile','978-4000000206'),(1,'Disponibile','978-4000000207'),(1,'Disponibile','978-4000000208'),(1,'Disponibile','978-4000000209'),(1,'Disponibile','978-4000000210'),(1,'Disponibile','978-5000000001'),(1,'Disponibile','978-5000000002'),(1,'Disponibile','978-5000000003'),(1,'Disponibile','978-5000000004'),(1,'Disponibile','978-5000000005'),(1,'Disponibile','978-5000000006'),(1,'Disponibile','978-5000000007'),(1,'Disponibile','978-5000000008'),(1,'Disponibile','978-5000000009'),(1,'Disponibile','978-5000000010'),(1,'Disponibile','978-5000000011'),(1,'Disponibile','978-5000000012'),(1,'Disponibile','978-5000000013'),(1,'Disponibile','978-5000000014'),(1,'Disponibile','978-5000000015'),(1,'Disponibile','978-5000000101'),(1,'Disponibile','978-5000000103'),(1,'Disponibile','978-5000000104'),(1,'Disponibile','978-5000000105'),(1,'Disponibile','978-5000000106'),(1,'Disponibile','978-5000000107'),(1,'Disponibile','978-5000000108'),(1,'Disponibile','978-5000000109'),(1,'Disponibile','978-5000000110'),(1,'Disponibile','978-5000000201'),(1,'Disponibile','978-5000000202'),(1,'Disponibile','978-5000000203'),(1,'Disponibile','978-5000000204'),(1,'Disponibile','978-5000000205'),(1,'Disponibile','978-5000000206'),(1,'Disponibile','978-5000000207'),(1,'Disponibile','978-5000000208'),(1,'Disponibile','978-5000000209'),(1,'Disponibile','978-5000000210'),(1,'Disponibile','978-6000000001'),(1,'Disponibile','978-6000000002'),(1,'Disponibile','978-6000000003'),(1,'Disponibile','978-6000000004'),(1,'Disponibile','978-6000000006'),(1,'Disponibile','978-6000000007'),(1,'Disponibile','978-6000000008'),(1,'Disponibile','978-6000000009'),(1,'Disponibile','978-6000000010'),(1,'Disponibile','978-6000000011'),(1,'Disponibile','978-6000000012'),(1,'Disponibile','978-6000000014'),(1,'Disponibile','978-6000000015'),(1,'Disponibile','978-6000000101'),(1,'Disponibile','978-6000000102'),(1,'Disponibile','978-6000000104'),(1,'Disponibile','978-6000000105'),(1,'Disponibile','978-6000000106'),(1,'Disponibile','978-6000000107'),(1,'Disponibile','978-6000000108'),(1,'Disponibile','978-6000000109'),(1,'Disponibile','978-6000000110'),(1,'Disponibile','978-7000000012'),(1,'Disponibile','978-7000000013'),(1,'Disponibile','978-7000000014'),(1,'Disponibile','978-7000000015'),(1,'Disponibile','978-7000000101'),(1,'Disponibile','978-7000000102'),(1,'Disponibile','978-7000000103'),(1,'Disponibile','978-7000000104'),(1,'Disponibile','978-7000000105'),(1,'Disponibile','978-7000000106'),(1,'Disponibile','978-7000000107'),(1,'Disponibile','978-7000000108'),(1,'Disponibile','978-7000000109'),(1,'Disponibile','978-7000000110'),(1,'Disponibile','978-8000000011'),(1,'Disponibile','978-8000000012'),(1,'Disponibile','978-8000000013'),(1,'Disponibile','978-8000000015'),(1,'Disponibile','978-9000000011'),(1,'Disponibile','978-9000000012'),(1,'Disponibile','978-9000000013'),(1,'Disponibile','978-9000000014'),(2,'Disponibile','978-0000000001'),(2,'Disponibile','978-0000000002'),(2,'Disponibile','978-0000000003'),(2,'Disponibile','978-0000000004'),(2,'Disponibile','978-0000000005'),(2,'Disponibile','978-0000000006'),(2,'Disponibile','978-0000000007'),(2,'Disponibile','978-0000000008'),(2,'Disponibile','978-0000000009'),(2,'Disponibile','978-0000000010'),(2,'Disponibile','978-0000000011'),(2,'Disponibile','978-0000000012'),(2,'Disponibile','978-0000000013'),(2,'Disponibile','978-0000000014'),(2,'Disponibile','978-0000000015'),(2,'Disponibile','978-0000000101'),(2,'Disponibile','978-0000000102'),(2,'Disponibile','978-0000000103'),(2,'Disponibile','978-0000000104'),(2,'Disponibile','978-0000000105'),(2,'Disponibile','978-0000000106'),(2,'Disponibile','978-0000000107'),(2,'Disponibile','978-0000000108'),(2,'Disponibile','978-0000000109'),(2,'Disponibile','978-0000000110'),(2,'Disponibile','978-0000000201'),(2,'Disponibile','978-0000000202'),(2,'Disponibile','978-0000000203'),(2,'Disponibile','978-0000000204'),(2,'Disponibile','978-0000000205'),(2,'Disponibile','978-0000000206'),(2,'Disponibile','978-0000000207'),(2,'Disponibile','978-0000000208'),(2,'Disponibile','978-0000000209'),(2,'Disponibile','978-0000000210'),(2,'Disponibile','978-00000432'),(2,'Disponibile','978-1000000001'),(2,'Disponibile','978-1000000002'),(2,'Disponibile','978-1000000004'),(2,'Disponibile','978-1000000005'),(2,'Disponibile','978-1000000006'),(2,'Disponibile','978-1000000007'),(2,'Disponibile','978-1000000008'),(2,'Disponibile','978-1000000009'),(2,'Disponibile','978-1000000010'),(2,'Disponibile','978-1000000011'),(2,'Disponibile','978-1000000012'),(2,'Disponibile','978-1000000013'),(2,'Disponibile','978-1000000014'),(2,'Disponibile','978-1000000015'),(2,'Disponibile','978-1000000101'),(2,'Disponibile','978-1000000102'),(2,'Disponibile','978-1000000103'),(2,'Disponibile','978-1000000104'),(2,'Disponibile','978-1000000105'),(2,'Disponibile','978-1000000106'),(2,'Disponibile','978-1000000107'),(2,'Disponibile','978-1000000108'),(2,'Disponibile','978-1000000109'),(2,'Disponibile','978-1000000110'),(2,'Disponibile','978-1000000201'),(2,'Disponibile','978-1000000202'),(2,'Disponibile','978-1000000203'),(2,'Disponibile','978-1000000204'),(2,'Disponibile','978-1000000205'),(2,'Disponibile','978-1000000206'),(2,'Disponibile','978-1000000207'),(2,'Disponibile','978-1000000208'),(2,'Disponibile','978-1000000209'),(2,'Disponibile','978-1000000210'),(2,'Disponibile','978-2000000001'),(2,'Disponibile','978-2000000002'),(2,'Disponibile','978-2000000003'),(2,'Disponibile','978-2000000004'),(2,'Disponibile','978-2000000005'),(2,'Disponibile','978-2000000006'),(2,'Disponibile','978-2000000007'),(2,'Disponibile','978-2000000008'),(2,'Disponibile','978-2000000009'),(2,'Disponibile','978-2000000010'),(2,'Disponibile','978-2000000011'),(2,'Disponibile','978-2000000012'),(2,'Disponibile','978-2000000013'),(2,'Disponibile','978-2000000014'),(2,'Disponibile','978-2000000015'),(2,'Disponibile','978-2000000101'),(2,'Disponibile','978-2000000102'),(2,'Disponibile','978-2000000103'),(2,'Disponibile','978-2000000104'),(2,'Disponibile','978-2000000105'),(2,'Disponibile','978-2000000106'),(2,'Disponibile','978-2000000107'),(2,'Disponibile','978-2000000108'),(2,'Disponibile','978-2000000109'),(2,'Disponibile','978-2000000110'),(2,'Disponibile','978-2000000201'),(2,'Disponibile','978-2000000202'),(2,'Disponibile','978-2000000203'),(2,'Disponibile','978-2000000204'),(2,'Disponibile','978-2000000205'),(2,'Disponibile','978-2000000206'),(2,'Disponibile','978-2000000207'),(2,'Disponibile','978-2000000208'),(2,'Disponibile','978-2000000209'),(2,'Disponibile','978-2000000210'),(2,'Disponibile','978-3000000001'),(2,'Disponibile','978-3000000002'),(2,'Disponibile','978-3000000003'),(2,'Disponibile','978-3000000004'),(2,'Disponibile','978-3000000005'),(2,'Disponibile','978-3000000006'),(2,'Disponibile','978-3000000007'),(2,'Disponibile','978-3000000008'),(2,'Disponibile','978-3000000009'),(2,'Disponibile','978-3000000010'),(2,'Disponibile','978-3000000011'),(2,'Disponibile','978-3000000012'),(2,'Disponibile','978-3000000013'),(2,'Disponibile','978-3000000014'),(2,'Disponibile','978-3000000015'),(2,'Disponibile','978-3000000101'),(2,'Disponibile','978-3000000102'),(2,'Disponibile','978-3000000103'),(2,'Disponibile','978-3000000104'),(2,'Disponibile','978-3000000105'),(2,'Disponibile','978-3000000106'),(2,'Disponibile','978-3000000107'),(2,'Disponibile','978-3000000108'),(2,'Disponibile','978-3000000109'),(2,'Disponibile','978-3000000201'),(2,'Disponibile','978-3000000202'),(2,'Disponibile','978-3000000203'),(2,'Disponibile','978-3000000204'),(2,'Disponibile','978-3000000205'),(2,'Disponibile','978-3000000206'),(2,'Disponibile','978-3000000207'),(2,'Disponibile','978-3000000208'),(2,'Disponibile','978-3000000209'),(2,'Disponibile','978-3000000210'),(2,'Disponibile','978-4000000001'),(2,'Disponibile','978-4000000002'),(2,'Disponibile','978-4000000003'),(2,'Disponibile','978-4000000004'),(2,'Disponibile','978-4000000005'),(2,'Disponibile','978-4000000006'),(2,'Disponibile','978-4000000007'),(2,'Disponibile','978-4000000008'),(2,'Disponibile','978-4000000009'),(2,'Disponibile','978-4000000010'),(2,'Disponibile','978-4000000011'),(2,'Disponibile','978-4000000012'),(2,'Disponibile','978-4000000013'),(2,'Disponibile','978-4000000014'),(2,'Disponibile','978-4000000015'),(2,'Disponibile','978-4000000101'),(2,'Disponibile','978-4000000102'),(2,'Disponibile','978-4000000103'),(2,'Disponibile','978-4000000104'),(2,'Disponibile','978-4000000105'),(2,'Disponibile','978-4000000106'),(2,'Disponibile','978-4000000107'),(2,'Disponibile','978-4000000108'),(2,'Disponibile','978-4000000109'),(2,'Disponibile','978-4000000110'),(2,'Disponibile','978-4000000201'),(2,'Disponibile','978-4000000202'),(2,'Disponibile','978-4000000203'),(2,'Disponibile','978-4000000204'),(2,'Disponibile','978-4000000205'),(2,'Disponibile','978-4000000206'),(2,'Disponibile','978-4000000207'),(2,'Disponibile','978-4000000208'),(2,'Disponibile','978-4000000209'),(2,'Disponibile','978-4000000210'),(2,'Disponibile','978-5000000001'),(2,'Disponibile','978-5000000002'),(2,'Disponibile','978-5000000003'),(2,'Disponibile','978-5000000004'),(2,'Disponibile','978-5000000005'),(2,'Disponibile','978-5000000006'),(2,'Disponibile','978-5000000007'),(2,'Disponibile','978-5000000008'),(2,'Disponibile','978-5000000009'),(2,'Disponibile','978-5000000010'),(2,'Disponibile','978-5000000011'),(2,'Disponibile','978-5000000012'),(2,'Disponibile','978-5000000013'),(2,'Disponibile','978-5000000014'),(2,'Disponibile','978-5000000015'),(2,'Disponibile','978-5000000101'),(2,'Disponibile','978-5000000102'),(2,'Disponibile','978-5000000103'),(2,'Disponibile','978-5000000104'),(2,'Disponibile','978-5000000105'),(2,'Disponibile','978-5000000106'),(2,'Disponibile','978-5000000107'),(2,'Disponibile','978-5000000108'),(2,'Disponibile','978-5000000109'),(2,'Disponibile','978-5000000110'),(2,'Disponibile','978-5000000201'),(2,'Disponibile','978-5000000202'),(2,'Disponibile','978-5000000203'),(2,'Disponibile','978-5000000204'),(2,'Disponibile','978-5000000205'),(2,'Disponibile','978-5000000206'),(2,'Disponibile','978-5000000207'),(2,'Disponibile','978-5000000208'),(2,'Disponibile','978-5000000209'),(2,'Disponibile','978-5000000210'),(2,'Disponibile','978-6000000001'),(2,'Disponibile','978-6000000002'),(2,'Disponibile','978-6000000003'),(2,'Disponibile','978-6000000004'),(2,'Disponibile','978-6000000005'),(2,'Disponibile','978-6000000006'),(2,'Disponibile','978-6000000007'),(2,'Disponibile','978-6000000008'),(2,'Disponibile','978-6000000009'),(2,'Disponibile','978-6000000010'),(2,'Disponibile','978-6000000011'),(2,'Disponibile','978-6000000012'),(2,'Disponibile','978-6000000014'),(2,'Disponibile','978-6000000015'),(2,'Disponibile','978-6000000101'),(2,'Disponibile','978-6000000102'),(2,'Disponibile','978-6000000103'),(2,'Disponibile','978-6000000104'),(2,'Disponibile','978-6000000105'),(2,'Disponibile','978-6000000106'),(2,'Disponibile','978-6000000107'),(2,'Disponibile','978-6000000108'),(2,'Disponibile','978-6000000109'),(2,'Disponibile','978-6000000110'),(2,'Disponibile','978-7000000011'),(2,'Disponibile','978-7000000012'),(2,'Disponibile','978-7000000013'),(2,'Disponibile','978-7000000014'),(2,'Disponibile','978-7000000015'),(2,'Disponibile','978-7000000101'),(2,'Disponibile','978-7000000102'),(2,'Disponibile','978-7000000103'),(2,'Disponibile','978-7000000104'),(2,'Disponibile','978-7000000105'),(2,'Disponibile','978-7000000106'),(2,'Disponibile','978-7000000107'),(2,'Disponibile','978-7000000108'),(2,'Disponibile','978-7000000109'),(2,'Disponibile','978-7000000110'),(2,'Disponibile','978-8000000011'),(2,'Disponibile','978-8000000012'),(2,'Disponibile','978-8000000013'),(2,'Disponibile','978-8000000014'),(2,'Disponibile','978-8000000015'),(2,'Disponibile','978-9000000011'),(2,'Disponibile','978-9000000012'),(2,'Disponibile','978-9000000013'),(2,'Disponibile','978-9000000014'),(2,'Disponibile','978-9000000015'),(3,'Disponibile','978-0000000015'),(3,'Disponibile','978-0000000105'),(3,'Disponibile','978-00000432'),(3,'Disponibile','978-1000000002'),(3,'Disponibile','978-1000000201'),(3,'Disponibile','978-1000000207'),(3,'Disponibile','978-2000000001'),(3,'Disponibile','978-2000000002'),(3,'Disponibile','978-2000000101'),(3,'Disponibile','978-3000000001'),(3,'Disponibile','978-5000000011'),(4,'Disponibile','978-0000000015'),(4,'Disponibile','978-0000000105'),(4,'Disponibile','978-00000432'),(4,'Disponibile','978-1000000002'),(4,'Disponibile','978-1000000207'),(4,'Disponibile','978-2000000002'),(4,'Disponibile','978-2000000101'),(4,'Disponibile','978-3000000001'),(4,'Disponibile','978-5000000011'),(5,'Disponibile','978-0000000001'),(5,'Disponibile','978-0000000002'),(5,'Disponibile','978-0000000003'),(5,'Disponibile','978-0000000004'),(5,'Disponibile','978-0000000005'),(5,'Disponibile','978-0000000006'),(5,'Disponibile','978-0000000007'),(5,'Disponibile','978-0000000008'),(5,'Disponibile','978-0000000009'),(5,'Disponibile','978-0000000010'),(5,'Disponibile','978-0000000012'),(5,'Disponibile','978-0000000013'),(5,'Disponibile','978-0000000014'),(5,'Disponibile','978-0000000015'),(5,'Disponibile','978-0000000101'),(5,'Disponibile','978-0000000102'),(5,'Disponibile','978-0000000103'),(5,'Disponibile','978-0000000104'),(5,'Disponibile','978-0000000105'),(5,'Disponibile','978-0000000106'),(5,'Disponibile','978-0000000107'),(5,'Disponibile','978-0000000108'),(5,'Disponibile','978-0000000109'),(5,'Disponibile','978-0000000110'),(5,'Disponibile','978-0000000201'),(5,'Disponibile','978-0000000202'),(5,'Disponibile','978-0000000203'),(5,'Disponibile','978-0000000204'),(5,'Disponibile','978-0000000205'),(5,'Disponibile','978-0000000206'),(5,'Disponibile','978-0000000207'),(5,'Disponibile','978-0000000208'),(5,'Disponibile','978-0000000209'),(5,'Disponibile','978-0000000210'),(5,'Disponibile','978-00000432'),(5,'Disponibile','978-1000000001'),(5,'Disponibile','978-1000000002'),(5,'Disponibile','978-1000000004'),(5,'Disponibile','978-1000000005'),(5,'Disponibile','978-1000000006'),(5,'Disponibile','978-1000000007'),(5,'Disponibile','978-1000000008'),(5,'Disponibile','978-1000000009'),(5,'Disponibile','978-1000000010'),(5,'Disponibile','978-1000000011'),(5,'Disponibile','978-1000000012'),(5,'Disponibile','978-1000000013'),(5,'Disponibile','978-1000000014'),(5,'Disponibile','978-1000000015'),(5,'Disponibile','978-1000000101'),(5,'Disponibile','978-1000000102'),(5,'Disponibile','978-1000000103'),(5,'Disponibile','978-1000000104'),(5,'Disponibile','978-1000000105'),(5,'Disponibile','978-1000000106'),(5,'Disponibile','978-1000000107'),(5,'Disponibile','978-1000000108'),(5,'Disponibile','978-1000000109'),(5,'Disponibile','978-1000000110'),(5,'Disponibile','978-1000000201'),(5,'Disponibile','978-1000000202'),(5,'Disponibile','978-1000000203'),(5,'Disponibile','978-1000000204'),(5,'Disponibile','978-1000000205'),(5,'Disponibile','978-1000000206'),(5,'Disponibile','978-1000000207'),(5,'Disponibile','978-1000000208'),(5,'Disponibile','978-1000000209'),(5,'Disponibile','978-1000000210'),(5,'Disponibile','978-2000000001'),(5,'Disponibile','978-2000000002'),(5,'Disponibile','978-2000000003'),(5,'Disponibile','978-2000000004'),(5,'Disponibile','978-2000000005'),(5,'Disponibile','978-2000000006'),(5,'Disponibile','978-2000000007'),(5,'Disponibile','978-2000000008'),(5,'Disponibile','978-2000000009'),(5,'Disponibile','978-2000000010'),(5,'Disponibile','978-2000000011'),(5,'Disponibile','978-2000000012'),(5,'Disponibile','978-2000000013'),(5,'Disponibile','978-2000000014'),(5,'Disponibile','978-2000000015'),(5,'Disponibile','978-2000000101'),(5,'Disponibile','978-2000000102'),(5,'Disponibile','978-2000000103'),(5,'Disponibile','978-2000000104'),(5,'Disponibile','978-2000000105'),(5,'Disponibile','978-2000000106'),(5,'Disponibile','978-2000000107'),(5,'Disponibile','978-2000000108'),(5,'Disponibile','978-2000000109'),(5,'Disponibile','978-2000000110'),(5,'Disponibile','978-2000000201'),(5,'Disponibile','978-2000000202'),(5,'Disponibile','978-2000000203'),(5,'Disponibile','978-2000000204'),(5,'Disponibile','978-2000000205'),(5,'Disponibile','978-2000000206'),(5,'Disponibile','978-2000000207'),(5,'Disponibile','978-2000000208'),(5,'Disponibile','978-2000000209'),(5,'Disponibile','978-2000000210'),(5,'Disponibile','978-3000000001'),(5,'Disponibile','978-3000000002'),(5,'Disponibile','978-3000000003'),(5,'Disponibile','978-3000000004'),(5,'Disponibile','978-3000000005'),(5,'Disponibile','978-3000000006'),(5,'Disponibile','978-3000000007'),(5,'Disponibile','978-3000000008'),(5,'Disponibile','978-3000000009'),(5,'Disponibile','978-3000000010'),(5,'Disponibile','978-3000000011'),(5,'Disponibile','978-3000000012'),(5,'Disponibile','978-3000000013'),(5,'Disponibile','978-3000000014'),(5,'Disponibile','978-3000000015'),(5,'Disponibile','978-3000000101'),(5,'Disponibile','978-3000000102'),(5,'Disponibile','978-3000000103'),(5,'Disponibile','978-3000000104'),(5,'Disponibile','978-3000000105'),(5,'Disponibile','978-3000000106'),(5,'Disponibile','978-3000000107'),(5,'Disponibile','978-3000000108'),(5,'Disponibile','978-3000000109'),(5,'Disponibile','978-3000000201'),(5,'Disponibile','978-3000000202'),(5,'Disponibile','978-3000000203'),(5,'Disponibile','978-3000000204'),(5,'Disponibile','978-3000000205'),(5,'Disponibile','978-3000000206'),(5,'Disponibile','978-3000000207'),(5,'Disponibile','978-3000000208'),(5,'Disponibile','978-3000000209'),(5,'Disponibile','978-3000000210'),(5,'Disponibile','978-4000000001'),(5,'Disponibile','978-4000000002'),(5,'Disponibile','978-4000000003'),(5,'Disponibile','978-4000000004'),(5,'Disponibile','978-4000000005'),(5,'Disponibile','978-4000000006'),(5,'Disponibile','978-4000000007'),(5,'Disponibile','978-4000000008'),(5,'Disponibile','978-4000000009'),(5,'Disponibile','978-4000000010'),(5,'Disponibile','978-4000000011'),(5,'Disponibile','978-4000000012'),(5,'Disponibile','978-4000000013'),(5,'Disponibile','978-4000000014'),(5,'Disponibile','978-4000000015'),(5,'Disponibile','978-4000000101'),(5,'Disponibile','978-4000000102'),(5,'Disponibile','978-4000000103'),(5,'Disponibile','978-4000000104'),(5,'Disponibile','978-4000000105'),(5,'Disponibile','978-4000000106'),(5,'Disponibile','978-4000000107'),(5,'Disponibile','978-4000000108'),(5,'Disponibile','978-4000000109'),(5,'Disponibile','978-4000000110'),(5,'Disponibile','978-4000000201'),(5,'Disponibile','978-4000000202'),(5,'Disponibile','978-4000000203'),(5,'Disponibile','978-4000000204'),(5,'Disponibile','978-4000000205'),(5,'Disponibile','978-4000000206'),(5,'Disponibile','978-4000000207'),(5,'Disponibile','978-4000000208'),(5,'Disponibile','978-4000000209'),(5,'Disponibile','978-4000000210'),(5,'Disponibile','978-5000000001'),(5,'Disponibile','978-5000000002'),(5,'Disponibile','978-5000000003'),(5,'Disponibile','978-5000000004'),(5,'Disponibile','978-5000000005'),(5,'Disponibile','978-5000000006'),(5,'Disponibile','978-5000000007'),(5,'Disponibile','978-5000000008'),(5,'Disponibile','978-5000000009'),(5,'Disponibile','978-5000000010'),(5,'Disponibile','978-5000000011'),(5,'Disponibile','978-5000000012'),(5,'Disponibile','978-5000000013'),(5,'Disponibile','978-5000000014'),(5,'Disponibile','978-5000000015'),(5,'Disponibile','978-5000000101'),(5,'Disponibile','978-5000000102'),(5,'Disponibile','978-5000000103'),(5,'Disponibile','978-5000000104'),(5,'Disponibile','978-5000000105'),(5,'Disponibile','978-5000000106'),(5,'Disponibile','978-5000000107'),(5,'Disponibile','978-5000000108'),(5,'Disponibile','978-5000000109'),(5,'Disponibile','978-5000000110'),(5,'Disponibile','978-5000000201'),(5,'Disponibile','978-5000000202'),(5,'Disponibile','978-5000000203'),(5,'Disponibile','978-5000000204'),(5,'Disponibile','978-5000000205'),(5,'Disponibile','978-5000000206'),(5,'Disponibile','978-5000000207'),(5,'Disponibile','978-5000000208'),(5,'Disponibile','978-5000000209'),(5,'Disponibile','978-5000000210'),(5,'Disponibile','978-6000000001'),(5,'Disponibile','978-6000000002'),(5,'Disponibile','978-6000000003'),(5,'Disponibile','978-6000000004'),(5,'Disponibile','978-6000000005'),(5,'Disponibile','978-6000000006'),(5,'Disponibile','978-6000000007'),(5,'Disponibile','978-6000000008'),(5,'Disponibile','978-6000000009'),(5,'Disponibile','978-6000000010'),(5,'Disponibile','978-6000000011'),(5,'Disponibile','978-6000000012'),(5,'Disponibile','978-6000000014'),(5,'Disponibile','978-6000000015'),(5,'Disponibile','978-6000000101'),(5,'Disponibile','978-6000000102'),(5,'Disponibile','978-6000000103'),(5,'Disponibile','978-6000000104'),(5,'Disponibile','978-6000000105'),(5,'Disponibile','978-6000000106'),(5,'Disponibile','978-6000000107'),(5,'Disponibile','978-6000000108'),(5,'Disponibile','978-6000000109'),(5,'Disponibile','978-6000000110'),(5,'Disponibile','978-7000000011'),(5,'Disponibile','978-7000000012'),(5,'Disponibile','978-7000000013'),(5,'Disponibile','978-7000000014'),(5,'Disponibile','978-7000000015'),(5,'Disponibile','978-7000000101'),(5,'Disponibile','978-7000000102'),(5,'Disponibile','978-7000000103'),(5,'Disponibile','978-7000000104'),(5,'Disponibile','978-7000000105'),(5,'Disponibile','978-7000000106'),(5,'Disponibile','978-7000000107'),(5,'Disponibile','978-7000000108'),(5,'Disponibile','978-7000000109'),(5,'Disponibile','978-7000000110'),(5,'Disponibile','978-8000000011'),(5,'Disponibile','978-8000000012'),(5,'Disponibile','978-8000000013'),(5,'Disponibile','978-8000000014'),(5,'Disponibile','978-8000000015'),(5,'Disponibile','978-9000000011'),(5,'Disponibile','978-9000000012'),(5,'Disponibile','978-9000000013'),(5,'Disponibile','978-9000000014'),(5,'Disponibile','978-9000000015'),(6,'Disponibile','978-0000000010'),(6,'Disponibile','978-0000000015'),(6,'Disponibile','978-00000432'),(7,'Disponibile','978-0000000015'),(8,'Disponibile','978-0000000015');
/*!40000 ALTER TABLE `Copia` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `controllo_copia_esemplare` BEFORE DELETE ON `copia` FOR EACH ROW BEGIN
	
	declare var int;
	
	select count(*) into var
	from BNCR.Copia
	where BNCR.Copia.Numero_Copia=OLD.Numero_Copia and BNCR.Copia.ISBN=OLD.ISBN and BNCR.Copia.stato!='Disponibile';
	
	if var > 0 then
	SIGNAL SQLSTATE '45999' SET MESSAGE_TEXT='Non puoi eliminare una copia se questa è in trasferimento presso utente o bliblioteca';
	end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `disponi`
--

DROP TABLE IF EXISTS `disponi`;
/*!50001 DROP VIEW IF EXISTS `disponi`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `disponi` AS SELECT 
 1 AS `Titolo`,
 1 AS `ISBN`,
 1 AS `Codice_Scaffale`,
 1 AS `Nome`,
 1 AS `Numero_Ripiano`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `DisponibilitaCopia`
--

DROP TABLE IF EXISTS `DisponibilitaCopia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DisponibilitaCopia` (
  `ISBN` varchar(100) NOT NULL,
  `numero_copie` int NOT NULL DEFAULT '0',
  `ID_Biblioteca` int NOT NULL,
  PRIMARY KEY (`ISBN`,`ID_Biblioteca`),
  KEY `fk_disp_biblioteca` (`ID_Biblioteca`),
  CONSTRAINT `fk_disp_biblioteca` FOREIGN KEY (`ID_Biblioteca`) REFERENCES `Biblioteca` (`ID_Biblioteca`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_disp_libro` FOREIGN KEY (`ISBN`) REFERENCES `Libro` (`ISBN`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DisponibilitaCopia`
--

LOCK TABLES `DisponibilitaCopia` WRITE;
/*!40000 ALTER TABLE `DisponibilitaCopia` DISABLE KEYS */;
INSERT INTO `DisponibilitaCopia` VALUES ('978-0000000002',5,9),('978-0000000008',3,9),('978-0000000011',8,1),('978-0000000011',3,11),('978-0000000012',1,7),('978-0000000102',1,4),('978-0000000108',2,2),('978-0000000109',2,3),('978-0000000201',2,3),('978-1000000002',4,2),('978-1000000005',4,10),('978-1000000009',5,6),('978-1000000015',4,1),('978-1000000104',4,4),('978-1000000106',2,7),('978-1000000204',4,2),('978-1000000206',2,4),('978-1000000208',1,3),('978-2000000008',1,3),('978-2000000011',5,7),('978-2000000013',1,4),('978-2000000013',3,10),('978-2000000015',2,3),('978-2000000105',1,8),('978-2000000202',5,2),('978-2000000206',1,2),('978-2000000206',5,9),('978-3000000001',4,7),('978-3000000006',5,1),('978-3000000008',4,9),('978-3000000009',2,2),('978-3000000010',2,8),('978-3000000101',3,3),('978-3000000102',5,5),('978-3000000201',3,6),('978-3000000202',5,5),('978-3000000206',2,9),('978-4000000009',4,8),('978-4000000012',2,2),('978-4000000014',4,5),('978-4000000014',1,6),('978-4000000105',5,6),('978-4000000201',5,6),('978-4000000203',4,7),('978-4000000204',2,3),('978-4000000207',3,1),('978-4000000208',2,5),('978-4000000210',4,7),('978-5000000004',1,10),('978-5000000005',4,9),('978-5000000012',3,7),('978-5000000014',2,5),('978-5000000101',4,7),('978-5000000207',3,4),('978-6000000001',4,3),('978-6000000007',4,1),('978-6000000009',1,2),('978-6000000012',5,6),('978-6000000101',2,10),('978-6000000104',5,2),('978-6000000109',4,5),('978-7000000011',1,9),('978-7000000012',2,2),('978-7000000013',5,5),('978-7000000101',5,6),('978-7000000101',2,10),('978-7000000102',4,2),('978-7000000102',1,8),('978-7000000103',1,4),('978-7000000104',4,6),('978-7000000107',5,8),('978-8000000012',3,7),('978-8000000013',1,8),('978-8000000015',1,2),('978-9000000011',2,9),('978-9000000012',5,6),('978-9000000014',11,6),('978-9000000014',5,8),('978-9000000014',2,10),('978-9000000015',2,6);
/*!40000 ALTER TABLE `DisponibilitaCopia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Libro`
--

DROP TABLE IF EXISTS `Libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Libro` (
  `Titolo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '000-00-000-0000-0',
  `ISBN` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '000-00-000-0000-0',
  `Codice_categoria` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Disponibile` varchar(100) NOT NULL,
  PRIMARY KEY (`ISBN`),
  KEY `Libro_Categoria_FK` (`Codice_categoria`),
  KEY `idx_libro_disponibile` (`Disponibile`),
  KEY `idx_libro_titolo` (`Titolo`),
  CONSTRAINT `Libro_Categoria_FK` FOREIGN KEY (`Codice_categoria`) REFERENCES `Categoria` (`Codice_categoria`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Libro`
--

LOCK TABLES `Libro` WRITE;
/*!40000 ALTER TABLE `Libro` DISABLE KEYS */;
INSERT INTO `Libro` VALUES ('Enciclopedia Universale','978-0000000001','000','si'),('Dizionario della Lingua Italiana','978-0000000002','000','si'),('Atlante del Mondo','978-0000000003','000','si'),('Manuale di Biblioteconomia','978-0000000004','010','si'),('Guida ai Libri Rari','978-0000000005','020','si'),('Storia della Scrittura','978-0000000006','030','si'),('Grandi Enciclopedie','978-0000000007','030','si'),('Introduzione alla Bibliografia','978-0000000008','010','si'),('Catalogazione e Archiviazione','978-0000000009','020','si'),('Giornalismo e Media','978-0000000010','050','si'),('Enciclopedia della Conoscenza','978-0000000011','000','si'),('Dizionario Enciclopedico','978-0000000012','000','si'),('Guida ai Testi Antichi','978-0000000013','000','si'),('Manuale di Ricerca Bibliografica','978-0000000014','010','si'),('Enciclopedia Storica','978-0000000015','030','si'),('Enciclopedia del Sapere','978-0000000101','000','si'),('Manuale di Archivistica','978-0000000102','000','si'),('La Biblioteca del Mondo','978-0000000103','000','si'),('Bibliografia Universale','978-0000000104','010','si'),('Dizionario Filosofico','978-0000000105','030','si'),('Giornalismo Investigativo','978-0000000106','050','si'),('Atlante del XX Secolo','978-0000000107','000','si'),('Enciclopedia della Scienza','978-0000000108','000','si'),('Le Grandi Biografie','978-0000000109','030','si'),('Manuale di Documentazione','978-0000000110','010','si'),('Guida Definitiva all’Inutilità','978-0000000201','000','si'),('Il Dizionario delle Parole Inventate','978-0000000202','000','si'),('L’Enciclopedia delle Cose che Non Sai di Non Sapere','978-0000000203','000','si'),('Manuale di Biblioteconomia per Chi Non Legge','978-0000000204','010','si'),('Atlante delle Terre che Non Esistono','978-0000000205','000','si'),('Come Nascondersi in una Biblioteca','978-0000000206','010','si'),('Le 1000 Cose che Nessuno Ti Chiederà Mai','978-0000000207','030','si'),('Giornalismo Spazzatura per Esperti','978-0000000208','050','si'),('Come Scrivere un Libro Senza Scriverlo','978-0000000209','020','si'),('Guida agli Errori di Stampa Memorabili','978-0000000210','030','si'),('Le Follie dell\'Imperatore','978-00000432','950','si'),('La madre di tutti','978-002345611','920','si'),('La casetta di marzapane','978-01298716','890','si'),('Storia della Filosofia','978-1000000001','100','si'),('Metafisica e Realtà','978-1000000002','110','si'),('Psicologia del Comportamento','978-1000000004','150','si'),('Logica e Argomentazione','978-1000000005','160','si'),('Filosofia Antica','978-1000000006','180','si'),('Pensiero Critico e Ragionamento','978-1000000007','160','si'),('La Mente Umana','978-1000000008','150','si'),('Filosofia Orientale','978-1000000009','180','si'),('Etica e Morale','978-1000000010','170','si'),('La Filosofia Contemporanea','978-1000000011','100','si'),('Letture di Metafisica','978-1000000012','110','si'),('Psicologia del Pensiero','978-1000000013','150','si'),('Logica Matematica','978-1000000014','160','si'),('I Grandi Filosofi','978-1000000015','180','si'),('Il Pensiero Umano','978-1000000101','100','si'),('Metafisica per Tutti','978-1000000102','110','si'),('Filosofia e Logica','978-1000000103','120','si'),('Psicologia Clinica','978-1000000104','150','si'),('Etica e Società','978-1000000105','170','si'),('Filosofia Orientale Moderna','978-1000000106','180','si'),('Psicanalisi e Neuroscienze','978-1000000107','150','si'),('Filosofia Analitica','978-1000000108','160','si'),('Il Significato della Vita','978-1000000109','100','si'),('Storia della Mente','978-1000000110','150','si'),('La Profonda Filosofia del Divano','978-1000000201','100','si'),('Zen e l’Arte di Perdere Tempo','978-1000000202','110','si'),('Logica e il Dilemma del Biscotto Spezzato','978-1000000203','160','si'),('Psicologia del Pollo in Fuga','978-1000000204','150','si'),('Filosofia della Pigrizia Estrema','978-1000000205','170','si'),('Il Pensiero Esistenziale del Gatto','978-1000000206','180','si'),('Paradossi per Confondersi Meglio','978-1000000207','120','si'),('Come Convincersi di Avere Sempre Ragione','978-1000000208','150','si'),('Guida alla Vita secondo i Cartoni Animati','978-1000000209','100','si'),('Metafisica del Bucato','978-1000000210','110','si'),('Religioni del Mondo','978-2000000001','200','si'),('Filosofia della Religione','978-2000000002','210','si'),('Il Cristianesimo e la Bibbia','978-2000000003','220','si'),('Storia del Cristianesimo','978-2000000004','270','si'),('Islam: Storia e Dottrina','978-2000000005','290','si'),('Religioni Orientali','978-2000000006','290','si'),('Il Buddhismo','978-2000000007','290','si'),('Ebraismo e Torah','978-2000000008','290','si'),('Teologia Contemporanea','978-2000000009','260','si'),('Miti e Leggende Religiose','978-2000000010','290','si'),('Le Religioni Preistoriche','978-2000000011','200','si'),('Filosofia della Spiritualità','978-2000000012','210','si'),('Islam: Tradizione e Storia','978-2000000013','290','si'),('L’Ebraismo Oggi','978-2000000014','290','si'),('Mitologia Cristiana','978-2000000015','270','si'),('La Religione nell’Antichità','978-2000000101','200','si'),('Miti e Leggende Bibliche','978-2000000102','220','si'),('Spiritualità e Filosofia','978-2000000103','210','si'),('Il Buddismo Zen','978-2000000104','290','si'),('Teologia e Dottrina Cristiana','978-2000000105','230','si'),('L’Islam tra Storia e Fede','978-2000000106','290','si'),('Ebraismo: Tradizioni e Cultura','978-2000000107','290','si'),('Mitologia Norrena','978-2000000108','290','si'),('Cristianesimo Primitivo','978-2000000109','270','si'),('La Storia delle Religioni','978-2000000110','290','si'),('Preghiere per Trovare il Telecomando','978-2000000201','200','si'),('Guida alla Teologia dei Meme','978-2000000202','210','si'),('Buddismo per Chi Non ha Tempo di Meditare','978-2000000203','290','si'),('Come Vendere la Propria Anima Senza Rimorsi','978-2000000204','270','si'),('Il Cristianesimo Spiegato ai Polli','978-2000000205','220','si'),('Ebraismo e la Festa del Cibo Gratis','978-2000000206','290','si'),('Mitologia delle Divinità Pigre','978-2000000207','290','si'),('Islam: Le 100 Domande che Nessuno ha Mai Fatto','978-2000000208','290','si'),('Manuale per Santi Pigri','978-2000000209','260','si'),('Il Vangelo secondo il Gatto','978-2000000210','290','si'),('Scienze Sociali e Politiche','978-3000000001','300','si'),('Introduzione alla Statistica','978-3000000002','310','si'),('Fondamenti di Economia','978-3000000003','330','si'),('Il Sistema Giuridico','978-3000000004','340','si'),('Sociologia della Comunicazione','978-3000000005','360','si'),('Antropologia Culturale','978-3000000006','390','si'),('Teorie Politiche','978-3000000007','320','si'),('Psicologia Sociale','978-3000000008','360','si'),('Globalizzazione e Società','978-3000000009','330','si'),('Politica Internazionale','978-3000000010','320','si'),('Statistica per le Scienze Sociali','978-3000000011','310','si'),('Economia e Mercati Globali','978-3000000012','330','si'),('Introduzione alla Politica','978-3000000013','320','si'),('Sociologia Urbana','978-3000000014','360','si'),('Geopolitica e Conflitti','978-3000000015','320','si'),('Sociologia e Cultura','978-3000000101','300','si'),('Geopolitica Moderna','978-3000000102','320','si'),('Economia e Mercati Finanziari','978-3000000103','330','si'),('Legislazione e Diritto Civile','978-3000000104','340','si'),('Storia del Pensiero Politico','978-3000000105','320','si'),('Psicologia Sociale','978-3000000106','360','si'),('Statistiche e Previsioni','978-3000000107','310','si'),('Lavoro e Diritti','978-3000000108','350','si'),('Globalizzazione e Sviluppo','978-3000000109','330','si'),('Come Evitare la Gente senza Offenderli','978-3000000201','300','si'),('Il Grande Manuale delle Scuse Perfette','978-3000000202','320','si'),('Politica per Chi non Vuole Averci a Che Fare','978-3000000203','320','si'),('Economia del Baratto di Meme','978-3000000204','330','si'),('Diritto e Come Non Essere Arrestati','978-3000000205','340','si'),('Sociologia degli Influencer Falliti','978-3000000206','360','si'),('Manuale di Sopravvivenza ai Pranzi di Famiglia','978-3000000207','390','si'),('Come Fare Soldi Senza Lavorare','978-3000000208','330','si'),('Psicologia dell’Ordine Casuale','978-3000000209','360','si'),('Introduzione alla Pigrizia Sociale','978-3000000210','300','si'),('Introduzione alla Linguistica','978-4000000001','400','si'),('Grammatica della Lingua Inglese','978-4000000002','420','si'),('Guida alla Lingua Tedesca','978-4000000003','430','si'),('Letteratura Francese','978-4000000004','440','si'),('Dizionario Italiano','978-4000000005','450','si'),('Scrittura Creativa','978-4000000006','400','si'),('Traduzione e Interpretariato','978-4000000007','400','si'),('Filologia Romana','978-4000000008','490','si'),('Dialetti Italiani','978-4000000009','490','si'),('Analisi del Testo','978-4000000010','400','si'),('Analisi Morfologica e Sintattica','978-4000000011','400','si'),('Fonologia e Fonetica','978-4000000012','400','si'),('Traduzione Letteraria','978-4000000013','400','si'),('Storia della Lingua Italiana','978-4000000014','450','si'),('Guida alla Poesia','978-4000000015','400','si'),('Linguistica Teorica','978-4000000101','400','si'),('Fonetica e Dialettologia','978-4000000102','400','si'),('Storia della Lingua Inglese','978-4000000103','420','si'),('Lessicografia e Semantica','978-4000000104','400','si'),('Grammatica Avanzata','978-4000000105','450','si'),('Linguaggi Artificiali','978-4000000106','490','si'),('Scrittura e Comunicazione','978-4000000107','400','si'),('Traduzione Tecnica','978-4000000108','400','si'),('Analisi del Discorso','978-4000000109','400','si'),('Lingue Romanze','978-4000000110','490','si'),('Dizionario delle Parole Inutili','978-4000000201','400','si'),('L’Arte di Parlare senza Dire Nulla','978-4000000202','400','si'),('Come Inventare un Nuovo Dialetto','978-4000000203','400','si'),('Guida alla Scrittura Brutta','978-4000000204','450','si'),('Lingue Aliene per Principianti','978-4000000205','490','si'),('Analisi Grammaticale delle Parolacce','978-4000000206','400','si'),('Come Imparare il Latino in 3 Minuti (Impossibile)','978-4000000207','490','si'),('Traduzioni Letterarie dei Meme','978-4000000208','400','si'),('Come Parlare in Inglese con 5 Parole','978-4000000209','420','si'),('Linguistica per Chi non sa Leggere','978-4000000210','400','si'),('Scienze della Natura','978-5000000001','500','si'),('Elementi di Matematica','978-5000000002','510','si'),('Introduzione Astronomia','978-5000000003','520','si'),('Fisica per Principianti','978-5000000004','530','si'),('Chimica Organica','978-5000000005','540','si'),('Biologia e Evoluzione','978-5000000006','570','si'),('Geologia e Minerali','978-5000000007','550','si'),('Zoologia Generale','978-5000000008','590','si'),('Scienza dell Ambiente','978-5000000009','550','si'),('Piante e Botanica','978-5000000010','580','si'),('Matematica per la Fisica','978-5000000011','510','si'),('Introduzione alla Statistica Bayesiana','978-5000000012','310','si'),('L’Universo e i Buchi Neri','978-5000000013','520','si'),('Zoologia Applicata','978-5000000014','590','si'),('Teoria dei Numeri','978-5000000015','510','si'),('Fisica Quantistica','978-5000000101','530','si'),('Matematica Computazionale','978-5000000102','510','si'),('Chimica Inorganica','978-5000000103','540','si'),('Biotecnologie e Genetica','978-5000000104','570','si'),('Scienze della Terra','978-5000000105','550','si'),('Astronomia e Astrofisica','978-5000000106','520','si'),('Evoluzione e Biodiversità','978-5000000107','590','si'),('Fisica delle Particelle','978-5000000108','530','si'),('Teorie Cosmologiche','978-5000000109','520','si'),('Botanica e Micologia','978-5000000110','580','si'),('Matematica per Chi Odia i Numeri','978-5000000201','510','si'),('Fisica Quantistica per Cani','978-5000000202','530','si'),('La Biologia della Pigrizia','978-5000000203','570','si'),('Come Farsi Amico un Atomo','978-5000000204','540','si'),('Astronomia per Chi Dorme Troppo','978-5000000205','520','si'),('Teoria della Relatività del Tempo Perso','978-5000000206','530','si'),('La Botanica del Cactus da Scrivania','978-5000000207','580','si'),('Guida alla Scienza del Nulla','978-5000000208','500','si'),('Chimica delle Sostanze Immaginarie','978-5000000209','540','si'),('Come Calcolare Senza Fare Calcoli','978-5000000210','510','si'),('Introduzione alla Tecnologia','978-6000000001','600','si'),('Manuale di Ingegneria','978-6000000002','620','si'),('Fondamenti di Medicina','978-6000000003','610','si'),('Scienze Alimentari','978-6000000004','640','si'),('Robotica e Automazione','978-6000000005','670','si'),('Nanotecnologie','978-6000000006','660','si'),('Bioinformatica','978-6000000007','610','si'),('Intelligenza Artificiale','978-6000000008','600','si'),('Cybersecurity e Privacy','978-6000000009','650','si'),('Blockchain e FinTech','978-6000000010','650','si'),('Blockchain e il Futuro del Web','978-6000000011','650','si'),('Neuroscienze e Tecnologia','978-6000000012','610','si'),('Nanotecnologie e Materiali Innovativi','978-6000000014','660','si'),('Guida alla Medicina Digitale','978-6000000015','610','si'),('Robotica e IA','978-6000000101','620','si'),('Medicina del Futuro','978-6000000102','610','si'),('Scienza dei Materiali','978-6000000103','660','si'),('Blockchain e Sicurezza Informatica','978-6000000104','650','si'),('Sistemi di Produzione Industriale','978-6000000105','670','si'),('Big Data e AI','978-6000000106','650','si'),('Automazione e Controllo','978-6000000107','620','si'),('Nanotecnologie e Biomedicina','978-6000000108','660','si'),('Ingegneria dei Sistemi','978-6000000109','620','si'),('Tecnologie dell’Informazione','978-6000000110','650','si'),('Guida alla Fotografia Digitale','978-7000000011','770','si'),('Cinema e Montaggio','978-7000000012','790','si'),('Storia del Jazz','978-7000000013','780','si'),('Tecniche di Pittura Moderna','978-7000000014','750','si'),('Scultura Contemporanea','978-7000000015','730','si'),('Pittura e Disegno','978-7000000101','750','si'),('Cinema e Regia','978-7000000102','790','si'),('Storia della Musica','978-7000000103','780','si'),('Architettura Moderna','978-7000000104','720','si'),('Fotografia e Postproduzione','978-7000000105','770','si'),('Scultura e Arte Contemporanea','978-7000000106','730','si'),('Danza e Coreografia','978-7000000107','700','si'),('Arti Digitali','978-7000000108','760','si'),('Teatro e Performance','978-7000000109','790','si'),('Arti Grafiche e Pubblicità','978-7000000110','760','si'),('I Classici della Letteratura Inglese','978-8000000011','820','si'),('Romanzi Storici','978-8000000012','830','si'),('Teatro Contemporaneo','978-8000000013','850','si'),('Antologie di Poesia','978-8000000014','800','si'),('Scrittura Creativa: Tecniche e Stili','978-8000000015','800','si'),('Storia delle Guerre Mondiali','978-9000000011','900','si'),('Geografia Economica','978-9000000012','910','si'),('Il Rinascimento Italiano','978-9000000013','940','si'),('Storia dell’Antica Roma','978-9000000014','930','si'),('Viaggi ed Esplorazioni','978-9000000015','910','si');
/*!40000 ALTER TABLE `Libro` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `controlli_libro` BEFORE DELETE ON `libro` FOR EACH ROW BEGIN
	
	declare var1 int;
	declare var2 int;
	declare var3 int;
	declare msg TEXT DEFAULT '';


	SELECT count(*) into var1
	FROM BNCR.Copia
	WHERE BNCR.Copia.ISBN=OLD.ISBN AND BNCR.Copia.stato='In prestito utente';

	SELECT count(*) into var2
	FROM BNCR.Copia
	WHERE BNCR.Copia.ISBN=OLD.ISBN AND BNCR.Copia.stato='In prestito altra biblioteca';

	SELECT count(*) into var3
	FROM BNCR.DisponibilitaCopia
	WHERE BNCR.DisponibilitaCopia.ISBN=OLD.ISBN AND BNCR.DisponibilitaCopia.numero_copie > 0;


	if var1 > 0 then
	SET msg=CONCAT(msg, 'Libro in prestito presso utente!');
	end if;

	if var2 > 0 then
	SET msg=CONCAT(msg, 'Libro in prestito presso biblioteche!');
	end if;

	if var3 > 0 then
	SET msg=CONCAT(msg, 'Il libro è nel circuito');
	end if;

	if msg!=''THEN 
	SIGNAL SQLSTATE '45988' SET MESSAGE_TEXT=msg;
	end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Log_Eventi`
--

DROP TABLE IF EXISTS `Log_Eventi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Log_Eventi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `messaggio` text,
  `data_evento` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Log_Eventi`
--

LOCK TABLES `Log_Eventi` WRITE;
/*!40000 ALTER TABLE `Log_Eventi` DISABLE KEYS */;
INSERT INTO `Log_Eventi` VALUES (47,'Eseguito evento: ISBN scelto = 978-0000000101, Stato = Disponibile, Numero copia = 1, nome biblio = Biblioteca Storica, città = Venezia','2025-04-02 11:32:49'),(48,'Eseguito evento: ISBN scelto per tornare disponibile = 978-0000000101, Numero copia = 1','2025-04-02 11:33:12'),(49,'Eseguito evento: ISBN scelto = 978-8000000014, Stato = Disponibile, Numero copia = 1, nome biblio = Biblioteca Universitaria, città = Bologna','2025-04-02 11:33:49'),(50,'Eseguito evento: ISBN scelto = 978-3000000012, Stato = Disponibile, Numero copia = 1, nome biblio = Biblioteca Metropolitana, città = Genova','2025-04-02 11:34:49'),(51,'Eseguito evento: ISBN scelto per tornare disponibile = 978-3000000012, Numero copia = 1','2025-04-02 11:35:12'),(52,'Eseguito evento: ISBN scelto = 978-1000000015, Stato = Disponibile, Numero copia = 1, nome biblio = Biblioteca Accademica, città = Pisa','2025-05-04 13:36:49'),(53,'Eseguito evento: ISBN scelto = 978-2000000007, Stato = Disponibile, Numero copia = 1, nome biblio = Biblioteca Storica, città = Venezia','2025-05-04 13:37:49'),(54,'Eseguito evento: ISBN scelto = 978-6000000103, Stato = Disponibile, Numero copia = 1, nome biblio = Biblioteca Universitaria, città = Bologna','2025-05-04 13:38:49'),(55,'Eseguito evento: ISBN scelto = 978-9000000015, Stato = Disponibile, Numero copia = 1, nome biblio = Biblioteca Regionale, città = Napoli','2025-05-04 13:39:49'),(56,'Eseguito evento: ISBN scelto = 978-4000000110, Stato = Disponibile, Numero copia = 1, nome biblio = Biblioteca Popolare, città = Palermo','2025-05-04 13:40:49'),(57,'Eseguito evento: ISBN scelto = 978-5000000102, Stato = Disponibile, Numero copia = 1, nome biblio = Biblioteca Nazionale, città = Milano','2025-05-04 13:41:49'),(58,'Eseguito evento: ISBN scelto = 978-0000000002, Stato = Disponibile, Numero copia = 1, nome biblio = Biblioteca Regionale, città = Napoli','2025-05-04 13:42:49'),(59,'Eseguito evento: ISBN scelto = 978-4000000103, Stato = Disponibile, Numero copia = 1, nome biblio = Biblioteca Popolare, città = Palermo','2025-06-01 15:29:49'),(60,'Eseguito evento: ISBN scelto = 978-6000000005, Stato = Disponibile, Numero copia = 1, nome biblio = Biblioteca Metropolitana, città = Genova','2025-06-01 15:30:49'),(61,'Eseguito evento: ISBN scelto = 978-7000000011, Stato = Disponibile, Numero copia = 1, nome biblio = Biblioteca Centrale, città = Roma','2025-06-01 15:31:49'),(62,'Eseguito evento: ISBN scelto = 978-4000000013, Stato = Disponibile, Numero copia = 1, nome biblio = Biblioteca Centrale, città = Roma','2025-06-01 15:32:49'),(63,'Eseguito evento: ISBN scelto per tornare disponibile = 978-2000000007, Numero copia = 1','2025-06-01 15:39:12'),(64,'Eseguito evento: ISBN scelto per tornare disponibile = 978-1000000015, Numero copia = 1','2025-06-01 15:41:12');
/*!40000 ALTER TABLE `Log_Eventi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Log_Prestiti`
--

DROP TABLE IF EXISTS `Log_Prestiti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Log_Prestiti` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ISBN` varchar(100) NOT NULL,
  `Data` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Log_Prestiti_Libro_FK` (`ISBN`),
  CONSTRAINT `Log_Prestiti_Libro_FK` FOREIGN KEY (`ISBN`) REFERENCES `Libro` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Log_Prestiti`
--

LOCK TABLES `Log_Prestiti` WRITE;
/*!40000 ALTER TABLE `Log_Prestiti` DISABLE KEYS */;
INSERT INTO `Log_Prestiti` VALUES (157,'978-0000000011','1999-04-02'),(158,'978-0000000011','2025-01-01'),(159,'978-0000000011','1998-04-02'),(160,'978-0000000011','1998-05-05'),(161,'978-0000000011','1999-05-04'),(162,'978-0000000011','2025-06-01'),(163,'978-0000000011','2025-06-01'),(164,'978-0000000011','2025-06-01'),(165,'978-0000000011','2025-06-01');
/*!40000 ALTER TABLE `Log_Prestiti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Permessi`
--

DROP TABLE IF EXISTS `Permessi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Permessi` (
  `Identificativo` int NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Cognome` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Ruolo` varchar(100) NOT NULL,
  PRIMARY KEY (`Identificativo`),
  UNIQUE KEY `Permessi_UNIQUE` (`Password`),
  KEY `idx_permessi_ruolo` (`Ruolo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Permessi`
--

LOCK TABLES `Permessi` WRITE;
/*!40000 ALTER TABLE `Permessi` DISABLE KEYS */;
INSERT INTO `Permessi` VALUES (280114,'Giovanni','ErViperetta','ccebba93f54d6bf2b17f8350e7c12ec4','Amministratore'),(280115,'Pietro','Stefanini','a900cd27e603f51d33c992c4914a2c3e','Amministratore'),(280116,'Dino','Sauro','50ac3ded77cfb522d8ce8d636c2f5585','Amministratore'),(280117,'Alessandro','Licitra','d0655af3824a90cf215bedc890a9028a','Amministratore'),(280118,'Esperia','Mazzarella','0fde5e12138aef815b589f87dacb9dd6','Amministratore'),(280119,'Neil','Armstrong','31f2385ba9cc65dba7ccb9aa5c5b7600','Amministratore'),(280120,'Fiorella','Mannoia','4d33fd1da665809bea02d5b573739a5f','Amministratore'),(280121,'Valerio','Salustri','27b4b5b01b0d1fcab2046369720ff75e','Amministratore'),(280122,'maria','de','0ac6cd34e2fac333bf0ee3cd06bdcf96','Amministratore'),(19283776,'Andrea','Meschino','4dc8036663d2a6c8cf8f82b8d72cb655','Bibliotecario'),(19283777,'Jorge Mario','Bergoglio','75fa676b81c7a3365c058d5068a95767','Bibliotecario'),(19283778,'Karol','Woityla','1edb2261b1047f13ff72134470aaffe7','Bibliotecario'),(19283779,'Annunziato','Sergi','c811f37fa3b8d69c4c6ba388371a98aa','Bibliotecario'),(19283780,'Kim','Namjoon','c3ea886e7d47f5c49a7d092fadf0c03b','Bibliotecario'),(19283781,'Albino','Luciani','6e6bc4e49dd477ebc98ef4046c067b5f','Bibliotecario'),(19283782,'Matteo','Renzi','892528e3dc04c9901ec1d89176c07e62','Bibliotecario'),(19283784,'Mario','Schifognina','7214dce354acbff06c81f66c4cd00081','Bibliotecario');
/*!40000 ALTER TABLE `Permessi` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Inserimento_corretto` BEFORE INSERT ON `permessi` FOR EACH ROW BEGIN
    DECLARE buffer_nome VARCHAR(100);
    DECLARE buffer_cognome VARCHAR(100);

    -- Controlla se il nome e il cognome già esistono nella tabella Permessi
    SELECT Nome, Cognome INTO buffer_nome, buffer_cognome
    FROM BNCR.Permessi
    WHERE Nome = NEW.Nome AND Cognome = NEW.Cognome
    LIMIT 1;

    -- Se il record esiste già, genera un errore
    IF buffer_nome IS NOT NULL AND buffer_cognome IS NOT NULL THEN 
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Nome e cognome già esistenti';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Prestito`
--

DROP TABLE IF EXISTS `Prestito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Prestito` (
  `ISBN` varchar(100) NOT NULL,
  `NumeroCopia` int NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Cognome` varchar(100) NOT NULL,
  `Data_Nascita` date NOT NULL,
  `DataInizioPrestito` date NOT NULL,
  `DataFinePrestito` date NOT NULL,
  PRIMARY KEY (`ISBN`,`NumeroCopia`,`Nome`,`Cognome`,`Data_Nascita`),
  KEY `idx_prestito_utente` (`Nome`,`Cognome`,`Data_Nascita`),
  KEY `idx_prestito_isbn` (`ISBN`),
  CONSTRAINT `fk_prestito_copia` FOREIGN KEY (`ISBN`, `NumeroCopia`) REFERENCES `Copia` (`ISBN`, `Numero_Copia`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_prestito_utente` FOREIGN KEY (`Nome`, `Cognome`, `Data_Nascita`) REFERENCES `Utente` (`Nome`, `Cognome`, `Data_Nascita`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prestito`
--

LOCK TABLES `Prestito` WRITE;
/*!40000 ALTER TABLE `Prestito` DISABLE KEYS */;
INSERT INTO `Prestito` VALUES ('978-0000000011',5,'mark','lopp','2021-02-01','2025-04-02','2025-06-02'),('978-0000000011',6,'Marco','Masini','2003-04-05','2025-04-01','2025-06-01'),('978-0000000011',7,'Giulio','D\'angelillo','2009-01-01','2025-04-01','2025-06-01'),('978-0000000011',8,'Nicholas','Canta','2003-12-12','2025-04-01','2025-06-01'),('978-0000000011',9,'Alex','Mariu','2009-01-01','2025-06-01','2025-08-01'),('978-0000000011',10,'Mirko','Riccardi','2001-01-01','2025-06-01','2025-07-01');
/*!40000 ALTER TABLE `Prestito` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `aggiornamento_Log_Prestiti` AFTER INSERT ON `prestito` FOR EACH ROW BEGIN
    INSERT INTO BNCR.Log_Prestiti (ISBN, `Data`)
    VALUES (NEW.ISBN, NEW.DataInizioPrestito);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `aggiorna_copia` AFTER INSERT ON `prestito` FOR EACH ROW BEGIN
	
	UPDATE BNCR.Copia 
    SET BNCR.Copia.stato = 'In prestito utente'
    WHERE BNCR.Copia.Numero_Copia = NEW.NumeroCopia
   	and BNCR.Copia.ISBN = NEW.ISBN;
	
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `riconsegna_copia` AFTER DELETE ON `prestito` FOR EACH ROW BEGIN
	
	UPDATE BNCR.Copia 
    SET BNCR.Copia.stato = 'Disponibile'
    WHERE BNCR.Copia.Numero_Copia = OLD.NumeroCopia
   	and BNCR.Copia.ISBN = OLD.ISBN;
	
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Prestito_Altrove`
--

DROP TABLE IF EXISTS `Prestito_Altrove`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Prestito_Altrove` (
  `ISBN` varchar(100) NOT NULL,
  `ID_Biblioteca` int NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Cognome` varchar(100) NOT NULL,
  `Data_Nascita` date NOT NULL,
  `DataInizioPrestito` date DEFAULT NULL,
  `DataFinePrestito` date DEFAULT NULL,
  PRIMARY KEY (`ISBN`,`ID_Biblioteca`,`Nome`,`Cognome`,`Data_Nascita`),
  KEY `fk_prestito_utenteee` (`Nome`,`Cognome`,`Data_Nascita`),
  KEY `idx_prestito_altrove_biblioteca` (`ID_Biblioteca`),
  KEY `idx_prestito_altrove_isbn` (`ISBN`),
  CONSTRAINT `fk_prestito_disp` FOREIGN KEY (`ISBN`, `ID_Biblioteca`) REFERENCES `DisponibilitaCopia` (`ISBN`, `ID_Biblioteca`),
  CONSTRAINT `fk_prestito_utenteee` FOREIGN KEY (`Nome`, `Cognome`, `Data_Nascita`) REFERENCES `Utente` (`Nome`, `Cognome`, `Data_Nascita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prestito_Altrove`
--

LOCK TABLES `Prestito_Altrove` WRITE;
/*!40000 ALTER TABLE `Prestito_Altrove` DISABLE KEYS */;
/*!40000 ALTER TABLE `Prestito_Altrove` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `reg_prestito_esterno` AFTER INSERT ON `prestito_altrove` FOR EACH ROW BEGIN
	
UPDATE BNCR.DisponibilitaCopia
	SET BNCR.DisponibilitaCopia.numero_copie = BNCR.DisponibilitaCopia.numero_copie - 1
	WHERE BNCR.DisponibilitaCopia.ISBN=NEW.ISBN
	AND BNCR.DisponibilitaCopia.ID_Biblioteca = NEW.ID_Biblioteca;
     	
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `riconsegna_prestito_esterno` AFTER DELETE ON `prestito_altrove` FOR EACH ROW BEGIN
	
    UPDATE BNCR.DisponibilitaCopia
	SET BNCR.DisponibilitaCopia.numero_copie = BNCR.DisponibilitaCopia.numero_copie + 1
	WHERE BNCR.DisponibilitaCopia.ISBN=OLD.ISBN
	AND BNCR.DisponibilitaCopia.ID_Biblioteca = OLD.ID_Biblioteca;
     	
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `report_possesso_esterno`
--

DROP TABLE IF EXISTS `report_possesso_esterno`;
/*!50001 DROP VIEW IF EXISTS `report_possesso_esterno`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `report_possesso_esterno` AS SELECT 
 1 AS `Nome`,
 1 AS `Cognome`,
 1 AS `Titolo`,
 1 AS `Data_Nascita`,
 1 AS `ISBN`,
 1 AS `Contatto`,
 1 AS `Tipo_Contatto`,
 1 AS `NomeBiblio`,
 1 AS `Citta`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `report_possesso_interno`
--

DROP TABLE IF EXISTS `report_possesso_interno`;
/*!50001 DROP VIEW IF EXISTS `report_possesso_interno`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `report_possesso_interno` AS SELECT 
 1 AS `NumeroCopia`,
 1 AS `Nome`,
 1 AS `Cognome`,
 1 AS `Titolo`,
 1 AS `Data_Nascita`,
 1 AS `ISBN`,
 1 AS `Contatto`,
 1 AS `Tipo_Contatto`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Ripiano`
--

DROP TABLE IF EXISTS `Ripiano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ripiano` (
  `Numero_Ripiano` int NOT NULL,
  `Codice_Scaffale` int NOT NULL,
  `ISBN` varchar(100) NOT NULL,
  PRIMARY KEY (`ISBN`,`Codice_Scaffale`),
  KEY `Codice_Scaffale` (`Codice_Scaffale`),
  CONSTRAINT `Codice_Scaffale` FOREIGN KEY (`Codice_Scaffale`) REFERENCES `Scaffale` (`Codice_Scaffale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ISBN` FOREIGN KEY (`ISBN`) REFERENCES `Libro` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ripiano`
--

LOCK TABLES `Ripiano` WRITE;
/*!40000 ALTER TABLE `Ripiano` DISABLE KEYS */;
INSERT INTO `Ripiano` VALUES (1,1,'978-0000000001'),(2,1,'978-0000000002'),(3,1,'978-0000000003'),(1,2,'978-0000000004'),(1,3,'978-0000000005'),(1,4,'978-0000000006'),(1,4,'978-0000000007'),(2,2,'978-0000000008'),(1,3,'978-0000000009'),(1,5,'978-0000000010'),(4,1,'978-0000000011'),(5,1,'978-0000000012'),(6,1,'978-0000000013'),(3,2,'978-0000000014'),(1,4,'978-0000000015'),(7,1,'978-0000000101'),(8,1,'978-0000000102'),(9,1,'978-0000000103'),(4,2,'978-0000000104'),(1,4,'978-0000000105'),(1,5,'978-0000000106'),(10,1,'978-0000000107'),(11,1,'978-0000000108'),(1,4,'978-0000000109'),(5,2,'978-0000000110'),(12,1,'978-0000000201'),(13,1,'978-0000000202'),(14,1,'978-0000000203'),(6,2,'978-0000000204'),(15,1,'978-0000000205'),(7,2,'978-0000000206'),(1,4,'978-0000000207'),(1,5,'978-0000000208'),(1,3,'978-0000000209'),(1,4,'978-0000000210'),(3,94,'978-00000432'),(45,91,'978-002345611'),(6,88,'978-01298716'),(1,10,'978-1000000001'),(1,11,'978-1000000002'),(1,15,'978-1000000004'),(1,16,'978-1000000005'),(1,18,'978-1000000006'),(1,16,'978-1000000007'),(1,15,'978-1000000008'),(1,18,'978-1000000009'),(1,17,'978-1000000010'),(1,10,'978-1000000011'),(1,11,'978-1000000012'),(1,15,'978-1000000013'),(1,16,'978-1000000014'),(1,18,'978-1000000015'),(1,10,'978-1000000101'),(1,11,'978-1000000102'),(1,12,'978-1000000103'),(1,15,'978-1000000104'),(1,17,'978-1000000105'),(1,18,'978-1000000106'),(1,15,'978-1000000107'),(1,16,'978-1000000108'),(1,10,'978-1000000109'),(1,15,'978-1000000110'),(1,10,'978-1000000201'),(1,11,'978-1000000202'),(1,16,'978-1000000203'),(1,15,'978-1000000204'),(1,17,'978-1000000205'),(1,18,'978-1000000206'),(1,12,'978-1000000207'),(1,15,'978-1000000208'),(1,10,'978-1000000209'),(1,11,'978-1000000210'),(1,20,'978-2000000001'),(1,21,'978-2000000002'),(1,22,'978-2000000003'),(1,27,'978-2000000004'),(1,29,'978-2000000005'),(1,29,'978-2000000006'),(1,29,'978-2000000007'),(1,29,'978-2000000008'),(1,26,'978-2000000009'),(1,29,'978-2000000010'),(1,20,'978-2000000011'),(1,21,'978-2000000012'),(1,29,'978-2000000013'),(1,29,'978-2000000014'),(1,27,'978-2000000015'),(1,20,'978-2000000101'),(1,22,'978-2000000102'),(1,21,'978-2000000103'),(1,29,'978-2000000104'),(1,23,'978-2000000105'),(1,29,'978-2000000106'),(1,29,'978-2000000107'),(1,29,'978-2000000108'),(1,27,'978-2000000109'),(1,29,'978-2000000110'),(1,20,'978-2000000201'),(1,21,'978-2000000202'),(1,29,'978-2000000203'),(1,27,'978-2000000204'),(1,22,'978-2000000205'),(1,29,'978-2000000206'),(1,29,'978-2000000207'),(1,29,'978-2000000208'),(1,26,'978-2000000209'),(1,29,'978-2000000210'),(1,30,'978-3000000001'),(1,31,'978-3000000002'),(1,33,'978-3000000003'),(1,34,'978-3000000004'),(1,36,'978-3000000005'),(1,39,'978-3000000006'),(1,32,'978-3000000007'),(1,36,'978-3000000008'),(1,33,'978-3000000009'),(1,32,'978-3000000010'),(1,31,'978-3000000011'),(1,33,'978-3000000012'),(1,32,'978-3000000013'),(1,36,'978-3000000014'),(1,32,'978-3000000015'),(1,30,'978-3000000101'),(1,32,'978-3000000102'),(1,33,'978-3000000103'),(1,34,'978-3000000104'),(1,32,'978-3000000105'),(1,36,'978-3000000106'),(1,31,'978-3000000107'),(1,35,'978-3000000108'),(1,33,'978-3000000109'),(1,30,'978-3000000201'),(1,32,'978-3000000202'),(1,32,'978-3000000203'),(1,33,'978-3000000204'),(1,34,'978-3000000205'),(1,36,'978-3000000206'),(1,39,'978-3000000207'),(1,33,'978-3000000208'),(1,36,'978-3000000209'),(1,30,'978-3000000210'),(1,40,'978-4000000001'),(1,41,'978-4000000002'),(1,42,'978-4000000003'),(1,43,'978-4000000004'),(1,44,'978-4000000005'),(1,40,'978-4000000006'),(1,40,'978-4000000007'),(1,48,'978-4000000008'),(1,48,'978-4000000009'),(1,40,'978-4000000010'),(1,40,'978-4000000011'),(1,40,'978-4000000012'),(1,40,'978-4000000013'),(1,44,'978-4000000014'),(1,40,'978-4000000015'),(1,40,'978-4000000101'),(1,40,'978-4000000102'),(1,41,'978-4000000103'),(1,40,'978-4000000104'),(1,44,'978-4000000105'),(1,48,'978-4000000106'),(1,40,'978-4000000107'),(1,40,'978-4000000108'),(1,40,'978-4000000109'),(1,48,'978-4000000110'),(1,40,'978-4000000201'),(1,40,'978-4000000202'),(1,40,'978-4000000203'),(1,44,'978-4000000204'),(1,48,'978-4000000205'),(1,40,'978-4000000206'),(1,48,'978-4000000207'),(1,40,'978-4000000208'),(1,41,'978-4000000209'),(1,40,'978-4000000210'),(1,49,'978-5000000001'),(1,50,'978-5000000002'),(1,51,'978-5000000003'),(1,52,'978-5000000004'),(1,53,'978-5000000005'),(1,56,'978-5000000006'),(1,54,'978-5000000007'),(1,58,'978-5000000008'),(1,54,'978-5000000009'),(1,57,'978-5000000010'),(1,50,'978-5000000011'),(1,31,'978-5000000012'),(1,51,'978-5000000013'),(1,58,'978-5000000014'),(1,50,'978-5000000015'),(1,52,'978-5000000101'),(1,50,'978-5000000102'),(1,53,'978-5000000103'),(1,56,'978-5000000104'),(1,54,'978-5000000105'),(1,51,'978-5000000106'),(1,58,'978-5000000107'),(1,52,'978-5000000108'),(1,51,'978-5000000109'),(1,57,'978-5000000110'),(1,50,'978-5000000201'),(1,52,'978-5000000202'),(1,56,'978-5000000203'),(1,53,'978-5000000204'),(1,51,'978-5000000205'),(1,52,'978-5000000206'),(1,57,'978-5000000207'),(1,49,'978-5000000208'),(1,53,'978-5000000209'),(1,50,'978-5000000210'),(1,59,'978-6000000001'),(1,61,'978-6000000002'),(1,60,'978-6000000003'),(1,63,'978-6000000004'),(1,66,'978-6000000005'),(1,65,'978-6000000006'),(1,60,'978-6000000007'),(1,59,'978-6000000008'),(1,64,'978-6000000009'),(1,64,'978-6000000010'),(1,64,'978-6000000011'),(1,60,'978-6000000012'),(1,65,'978-6000000014'),(1,60,'978-6000000015'),(1,61,'978-6000000101'),(1,60,'978-6000000102'),(1,65,'978-6000000103'),(1,64,'978-6000000104'),(1,66,'978-6000000105'),(1,64,'978-6000000106'),(1,61,'978-6000000107'),(1,65,'978-6000000108'),(1,61,'978-6000000109'),(1,64,'978-6000000110'),(1,76,'978-7000000011'),(1,78,'978-7000000012'),(1,77,'978-7000000013'),(1,74,'978-7000000014'),(1,72,'978-7000000015'),(1,74,'978-7000000101'),(1,78,'978-7000000102'),(1,77,'978-7000000103'),(1,71,'978-7000000104'),(1,76,'978-7000000105'),(1,72,'978-7000000106'),(1,69,'978-7000000107'),(1,75,'978-7000000108'),(1,78,'978-7000000109'),(1,75,'978-7000000110'),(1,81,'978-8000000011'),(1,82,'978-8000000012'),(1,84,'978-8000000013'),(1,79,'978-8000000014'),(1,79,'978-8000000015'),(1,89,'978-9000000011'),(1,90,'978-9000000012'),(1,93,'978-9000000013'),(1,92,'978-9000000014'),(1,90,'978-9000000015');
/*!40000 ALTER TABLE `Ripiano` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `blocca_eliminazione_ripiano` BEFORE DELETE ON `ripiano` FOR EACH ROW BEGIN
	
	declare var int;
	
	select count(*) into var
	from BNCR.Ripiano
	where BNCR.Ripiano.ISBN=OLD.ISBN and BNCR.Ripiano.Numero_Ripiano=OLD.Numero_Ripiano
	and BNCR.Ripiano.Codice_Scaffale=OLD.Codice_Scaffale;

	if var > 0 then
	SIGNAL SQLSTATE '45956' SET MESSAGE_TEXT='Non puoi eliminare una tupla che rappresenta la disposizione';
	end if;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Scaffale`
--

DROP TABLE IF EXISTS `Scaffale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Scaffale` (
  `Codice_Scaffale` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `Codice_categoria` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Codice_Scaffale`),
  KEY `Scaffale_Categoria_FK` (`Codice_categoria`),
  CONSTRAINT `Scaffale_Categoria_FK` FOREIGN KEY (`Codice_categoria`) REFERENCES `Categoria` (`Codice_categoria`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Scaffale`
--

LOCK TABLES `Scaffale` WRITE;
/*!40000 ALTER TABLE `Scaffale` DISABLE KEYS */;
INSERT INTO `Scaffale` VALUES (1,'Scaffale Generale 1','000'),(2,'Scaffale Bibliografie','010'),(3,'Scaffale Biblioteconomia','020'),(4,'Scaffale Enciclopedie','030'),(5,'Scaffale Giornalismo','050'),(6,'Scaffale Organizzazioni','060'),(7,'Scaffale Media e Editoria','070'),(8,'Scaffale Citazioni','080'),(9,'Scaffale Manoscritti','090'),(10,'Scaffale Filosofia 1','100'),(11,'Scaffale Metafisica','110'),(12,'Scaffale Epistemologia','120'),(13,'Scaffale Parapsicologia','130'),(14,'Scaffale Filosofie Specifiche','140'),(15,'Scaffale Psicologia','150'),(16,'Scaffale Logica','160'),(17,'Scaffale Etica','170'),(18,'Scaffale Filosofia Antica','180'),(19,'Scaffale Filosofia Moderna','190'),(20,'Scaffale Religione','200'),(21,'Scaffale Filosofia Religiosa','210'),(22,'Scaffale Studi Biblici','220'),(23,'Scaffale Cristianesimo','230'),(24,'Scaffale Devozioni Cristiane','240'),(25,'Scaffale Chiese','250'),(26,'Scaffale Teologia Sociale','260'),(27,'Scaffale Storia del Cristianesimo','270'),(28,'Scaffale Denominazioni Cristiane','280'),(29,'Scaffale Altre Religioni','290'),(30,'Scaffale Scienze Sociali','300'),(31,'Scaffale Statistica','310'),(32,'Scaffale Politica','320'),(33,'Scaffale Economia','330'),(34,'Scaffale Diritto','340'),(35,'Scaffale Amministrazione Pubblica','350'),(36,'Scaffale Servizi Sociali','360'),(37,'Scaffale Educazione','370'),(38,'Scaffale Commercio','380'),(39,'Scaffale Costumi e Folclore','390'),(40,'Scaffale Linguistica','400'),(41,'Scaffale Inglese e Germanico','420'),(42,'Scaffale Tedesco','430'),(43,'Scaffale Francese','440'),(44,'Scaffale Italiano','450'),(45,'Scaffale Spagnolo e Portoghese','460'),(46,'Scaffale Latino','470'),(47,'Scaffale Greco','480'),(48,'Scaffale Altre Lingue','490'),(49,'Scaffale Scienze Naturali','500'),(50,'Scaffale Matematica','510'),(51,'Scaffale Astronomia','520'),(52,'Scaffale Fisica','530'),(53,'Scaffale Chimica','540'),(54,'Scaffale Scienze della Terra','550'),(55,'Scaffale Paleontologia','560'),(56,'Scaffale Biologia','570'),(57,'Scaffale Botanica','580'),(58,'Scaffale Zoologia','590'),(59,'Scaffale Tecnologia','600'),(60,'Scaffale Medicina','610'),(61,'Scaffale Ingegneria','620'),(62,'Scaffale Agricoltura','630'),(63,'Scaffale Economia Domestica','640'),(64,'Scaffale Management','650'),(65,'Scaffale Ingegneria Chimica','660'),(66,'Scaffale Industria','670'),(67,'Scaffale Produzione','680'),(68,'Scaffale Edilizia','690'),(69,'Scaffale Arti','700'),(70,'Scaffale Urbanistica','710'),(71,'Scaffale Architettura','720'),(72,'Scaffale Scultura','730'),(73,'Scaffale Disegno','740'),(74,'Scaffale Pittura','750'),(75,'Scaffale Arti Grafiche','760'),(76,'Scaffale Fotografia','770'),(77,'Scaffale Musica','780'),(78,'Scaffale Sport','790'),(79,'Scaffale Letteratura','800'),(80,'Scaffale Letteratura Americana','810'),(81,'Scaffale Letteratura Inglese','820'),(82,'Scaffale Letteratura Tedesca','830'),(83,'Scaffale Letteratura Francese','840'),(84,'Scaffale Letteratura Italiana','850'),(85,'Scaffale Letteratura Spagnola','860'),(86,'Scaffale Letteratura Latina','870'),(87,'Scaffale Letteratura Greca','880'),(88,'Scaffale Altre Letterature','890'),(89,'Scaffale Storia','900'),(90,'Scaffale Geografia','910'),(91,'Scaffale Biografie','920'),(92,'Scaffale Storia Antica','930'),(93,'Scaffale Storia Europea','940'),(94,'Scaffale Storia Asiatica','950'),(95,'Scaffale Storia Africana','960'),(96,'Scaffale Storia Nord Americana','970'),(97,'Scaffale Storia Sud Americana','980'),(98,'Scaffale Storia del Mondo','990');
/*!40000 ALTER TABLE `Scaffale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TrasferimentoCopiaInBiblio`
--

DROP TABLE IF EXISTS `TrasferimentoCopiaInBiblio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TrasferimentoCopiaInBiblio` (
  `ISBN` varchar(100) NOT NULL,
  `Numero_Copia` int NOT NULL,
  `ID_Biblioteca` int NOT NULL,
  PRIMARY KEY (`ISBN`,`Numero_Copia`,`ID_Biblioteca`),
  KEY `fk_trasf_biblio` (`ID_Biblioteca`),
  CONSTRAINT `fk_trasf_biblio` FOREIGN KEY (`ID_Biblioteca`) REFERENCES `Biblioteca` (`ID_Biblioteca`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_trasf_copia` FOREIGN KEY (`ISBN`, `Numero_Copia`) REFERENCES `Copia` (`ISBN`, `Numero_Copia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TrasferimentoCopiaInBiblio`
--

LOCK TABLES `TrasferimentoCopiaInBiblio` WRITE;
/*!40000 ALTER TABLE `TrasferimentoCopiaInBiblio` DISABLE KEYS */;
INSERT INTO `TrasferimentoCopiaInBiblio` VALUES ('978-4000000013',1,2),('978-7000000011',1,2),('978-6000000005',1,5),('978-5000000102',1,6),('978-4000000103',1,7),('978-4000000110',1,7),('978-0000000002',1,8),('978-9000000015',1,8),('978-6000000103',1,10),('978-8000000014',1,10);
/*!40000 ALTER TABLE `TrasferimentoCopiaInBiblio` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `richiesta_da_biblioteca_di_copia` AFTER INSERT ON `trasferimentocopiainbiblio` FOR EACH ROW BEGIN
	
    UPDATE BNCR.Copia
    SET stato = 'In prestito altra biblioteca'
    WHERE Numero_Copia = NEW.Numero_Copia AND ISBN = NEW.ISBN;
     	
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `reimposta_valore_disponibile_da_trasferimento` AFTER DELETE ON `trasferimentocopiainbiblio` FOR EACH ROW BEGIN
	
	UPDATE BNCR.Copia 
	SET BNCR.Copia.stato='Disponibile'
	WHERE BNCR.Copia.ISBN=OLD.ISBN AND BNCR.Copia.Numero_Copia=OLD.Numero_Copia;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Utente`
--

DROP TABLE IF EXISTS `Utente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Utente` (
  `Nome` varchar(100) NOT NULL,
  `Cognome` varchar(100) NOT NULL,
  `Data_Nascita` date NOT NULL,
  PRIMARY KEY (`Nome`,`Cognome`,`Data_Nascita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Utente`
--

LOCK TABLES `Utente` WRITE;
/*!40000 ALTER TABLE `Utente` DISABLE KEYS */;
INSERT INTO `Utente` VALUES ('Alex','Mariu','2009-01-01'),('Giulio','D\'angelillo','2009-01-01'),('Marco','Masini','2003-04-05'),('mark','lopp','2021-02-01'),('Mirko','Riccardi','2001-01-01'),('Nicholas','Canta','2003-12-12');
/*!40000 ALTER TABLE `Utente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UtenteEmail`
--

DROP TABLE IF EXISTS `UtenteEmail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UtenteEmail` (
  `Nome` varchar(100) NOT NULL,
  `Cognome` varchar(100) NOT NULL,
  `Data_Nascita` date NOT NULL,
  `Email` varchar(100) NOT NULL,
  PRIMARY KEY (`Nome`,`Cognome`,`Data_Nascita`),
  CONSTRAINT `utenteemail_ibfk_1` FOREIGN KEY (`Nome`, `Cognome`, `Data_Nascita`) REFERENCES `Utente` (`Nome`, `Cognome`, `Data_Nascita`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UtenteEmail`
--

LOCK TABLES `UtenteEmail` WRITE;
/*!40000 ALTER TABLE `UtenteEmail` DISABLE KEYS */;
/*!40000 ALTER TABLE `UtenteEmail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UtenteTelefono`
--

DROP TABLE IF EXISTS `UtenteTelefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UtenteTelefono` (
  `Nome` varchar(100) NOT NULL,
  `Cognome` varchar(100) NOT NULL,
  `Data_Nascita` date NOT NULL,
  `Telefono` varchar(100) NOT NULL,
  PRIMARY KEY (`Nome`,`Cognome`,`Data_Nascita`),
  CONSTRAINT `utentetelefono_ibfk_1` FOREIGN KEY (`Nome`, `Cognome`, `Data_Nascita`) REFERENCES `Utente` (`Nome`, `Cognome`, `Data_Nascita`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UtenteTelefono`
--

LOCK TABLES `UtenteTelefono` WRITE;
/*!40000 ALTER TABLE `UtenteTelefono` DISABLE KEYS */;
INSERT INTO `UtenteTelefono` VALUES ('Alex','Mariu','2009-01-01','1234567'),('Giulio','D\'angelillo','2009-01-01','23'),('Marco','Masini','2003-04-05','23'),('mark','lopp','2021-02-01','1'),('Mirko','Riccardi','2001-01-01','345677889'),('Nicholas','Canta','2003-12-12','2');
/*!40000 ALTER TABLE `UtenteTelefono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'BNCR'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `arrivo_richieste_biblioteche` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `arrivo_richieste_biblioteche` ON SCHEDULE EVERY 1 MINUTE STARTS '2025-03-21 15:40:49' ON COMPLETION PRESERVE DISABLE DO BEGIN
    DECLARE isbn_scelto VARCHAR(100);
    DECLARE disponibilita VARCHAR(100);
    DECLARE num_copia INT;
    DECLARE id_biblio INT;
    DECLARE nomebiblio_log VARCHAR(100);
    DECLARE citta_log VARCHAR(100);

    -- Seleziona un ISBN disponibile casuale
    SELECT c.ISBN INTO isbn_scelto
    FROM BNCR.Copia c
    JOIN BNCR.Libro l ON c.ISBN = l.ISBN
    WHERE c.stato = 'Disponibile' AND l.Disponibile = 'si'
    ORDER BY RAND()
    LIMIT 1;

    -- Seleziona la copia disponibile corrispondente
    SELECT c.stato, c.Numero_Copia INTO disponibilita, num_copia
    FROM BNCR.Copia c
    WHERE c.ISBN = isbn_scelto AND c.stato = 'Disponibile'
    LIMIT 1;

    -- Seleziona una biblioteca casuale (diversa da quella dell'ISBN selezionato)
    SELECT dc.ID_Biblioteca INTO id_biblio
    FROM BNCR.DisponibilitaCopia dc
    WHERE dc.ISBN != isbn_scelto
    ORDER BY RAND()
    LIMIT 1;

    -- Recupera i dati della biblioteca per log
    SELECT b.Nome, b.Citta INTO nomebiblio_log, citta_log
    FROM BNCR.Biblioteca b
    WHERE b.ID_Biblioteca = id_biblio;

    -- Inserisce log evento
    INSERT INTO BNCR.Log_Eventi (messaggio, data_evento)
    VALUES (
        CONCAT('Eseguito evento: ISBN scelto = ', isbn_scelto,
               ', Stato = ', disponibilita,
               ', Numero copia = ', num_copia,
               ', nome biblio = ', nomebiblio_log,
               ', città = ', citta_log),
        NOW()
    );

    -- Inserisce il trasferimento
    INSERT INTO BNCR.TrasferimentoCopiaInBiblio (ISBN, Numero_Copia, ID_Biblioteca)
    VALUES (isbn_scelto, num_copia, id_biblio);

  
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `reimposta_disponibile_richiesta` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `reimposta_disponibile_richiesta` ON SCHEDULE EVERY 2 MINUTE STARTS '2025-04-02 11:11:12' ON COMPLETION PRESERVE DISABLE DO BEGIN
	
	declare isbn varchar(100);
	declare numero_copia int;
	select BNCR.Copia.ISBN, BNCR.Copia.Numero_Copia into isbn, numero_copia
	from BNCR.Copia
	where BNCR.Copia.stato='In prestito altra biblioteca'
	ORDER BY RAND()
	LIMIT 1;

	DELETE FROM BNCR.TrasferimentoCopiaInBiblio
	WHERE BNCR.TrasferimentoCopiaInBiblio.ISBN=isbn
	AND BNCR.TrasferimentoCopiaInBiblio.Numero_Copia=numero_copia;


	INSERT INTO BNCR.Log_Eventi (messaggio, data_evento)
    VALUES (
        CONCAT('Eseguito evento: ISBN scelto per tornare disponibile = ', isbn,
               ', Numero copia = ', numero_copia),
        NOW()
    );

	
	
	
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'BNCR'
--
/*!50003 DROP PROCEDURE IF EXISTS `aggiornamento_altrove` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `aggiornamento_altrove`(IN ISBN VARCHAR(100), IN TITOLO VARCHAR(100), IN DISPONIBILITA INT, IN CITY VARCHAR(100), IN NOME_BIBLIO VARCHAR(100), IN nome_var VARCHAR(100), IN cognome_var VARCHAR(100), IN data_var DATE, IN contatto_email VARCHAR(100), IN numero_var VARCHAR(100), IN scelta INT, IN data_fine INT)
BEGIN
	
	declare contatore INT;
	declare fine DATE;
	declare exit handler for sqlexception
	begin
		rollback;
		resignal;
	end;

	SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
	SET TRANSACTION READ WRITE;
	START TRANSACTION;
	
	SELECT COUNT(*) INTO contatore
    FROM BNCR.Utente
    WHERE BNCR.Utente.Nome=nome_var 
    AND BNCR.Utente.Cognome = cognome_var
    AND BNCR.Utente.Data_Nascita = data_var
    LIMIT 1;
   
   	IF CONTATORE > 0 THEN
   	 SIGNAL SQLSTATE '45099'
        SET MESSAGE_TEXT = 'Non puoi richiedere un secondo libro, hai già un libro in prenotazione';
    END IF;
	



	SET fine = DATE_ADD(CURDATE(), INTERVAL data_fine MONTH);


	INSERT IGNORE INTO BNCR.Utente (Nome, Cognome, Data_Nascita)
    VALUES (nome_var, cognome_var, data_var);

	if scelta = 1 then 
	INSERT INTO BNCR.UtenteEmail(BNCR.UtenteEmail.Nome, BNCR.UtenteEmail.Cognome, BNCR.UtenteEmail.Data_Nascita, BNCR.UtenteEmail.Email)
	VALUES (nome_var, cognome_var, data_var, contatto_email);
	end if;
	
	if scelta = 2 then
	INSERT INTO BNCR.UtenteTelefono (BNCR.UtenteTelefono.Nome, BNCR.UtenteTelefono.Cognome, BNCR.UtenteTelefono.Data_Nascita, BNCR.UtenteTelefono.Telefono)
	VALUES (nome_var, cognome_var, data_var, numero_var);
	end if;


	INSERT INTO BNCR.Prestito_Altrove(BNCR.Prestito_Altrove.ISBN, BNCR.Prestito_Altrove.ID_Biblioteca, BNCR.Prestito_Altrove.Nome, BNCR.Prestito_Altrove.Cognome, BNCR.Prestito_Altrove.Data_Nascita, BNCR.Prestito_Altrove.DataInizioPrestito, BNCR.Prestito_Altrove.DataFinePrestito)
	VALUES (ISBN,
	(SELECT BNCR.Biblioteca.ID_Biblioteca 
     FROM BNCR.Biblioteca 
     WHERE BNCR.Biblioteca.Nome = NOME_BIBLIO AND BNCR.Biblioteca.Citta = CITY), nome_var, cognome_var, data_var,CURDATE(), fine);
	
	COMMIT;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Aggiungi_Copia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Aggiungi_Copia`(IN nome_libro varchar(100))
BEGIN
    DECLARE buffer VARCHAR(100);
    DECLARE maximo INT;

    SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
    SET TRANSACTION READ WRITE;
    START TRANSACTION;

    SET buffer = NULL;

    SELECT ISBN INTO buffer
    FROM BNCR.Libro
    WHERE Titolo = nome_libro AND Disponibile = 'si'
    FOR UPDATE;

    IF buffer IS NULL THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45010' SET MESSAGE_TEXT = 'Errore aggiunta copia: libro non vendibile o dismesso!';
    END IF;

    SELECT MAX(Numero_Copia) INTO maximo
    FROM BNCR.Copia
    WHERE ISBN = buffer;

    IF maximo IS NULL THEN
        SET maximo = 1;
    ELSE
        SET maximo = maximo + 1;
    END IF;

    INSERT INTO BNCR.Copia (Numero_Copia, stato, ISBN)
    VALUES (maximo, 'Disponibile', buffer);

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `aggiungi_libro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `aggiungi_libro`(
    IN titolo VARCHAR(100),
    IN isbn VARCHAR(100),
    IN categoria INT
)
BEGIN
    DECLARE nomeS VARCHAR(100);
    DECLARE CodS INT;
    DECLARE buffered VARCHAR(100);
    DECLARE buffered_isbn VARCHAR(100);
    DECLARE done INT DEFAULT FALSE;

    DECLARE cur CURSOR FOR
        SELECT BNCR.Scaffale.Nome, BNCR.Scaffale.Codice_Scaffale
        FROM BNCR.Scaffale
        WHERE BNCR.Scaffale.Codice_categoria = categoria;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
    SET TRANSACTION READ WRITE;
    START TRANSACTION;

    -- Verifico che la categoria esista
    SELECT BNCR.Categoria.nome INTO buffered
    FROM BNCR.Categoria
    WHERE BNCR.Categoria.Codice_categoria = categoria;

    IF buffered IS NULL THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45012' SET MESSAGE_TEXT = 'La categoria specificata non esiste';
    END IF;

    -- Verifico che il libro non esista già
    SELECT BNCR.Libro.ISBN INTO buffered_isbn
    FROM BNCR.Libro
    WHERE BNCR.Libro.ISBN = isbn;

    IF buffered_isbn IS NOT NULL THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45013' SET MESSAGE_TEXT = 'Il libro esiste, devi aggiungere solo una copia';
    END IF;

    -- Creo na tabella temporanea per i risultati 
    DROP TEMPORARY TABLE IF EXISTS `appoggio`;
    CREATE TEMPORARY TABLE `appoggio` (
        `nome` VARCHAR(100),
        `codice_scaffale` INT
    );

    -- Riempio la tabella temporanea con gli scaffali della categoria e fetcho cursore
    OPEN cur;
    SET done = FALSE;
    read_loop: LOOP
        FETCH cur INTO nomeS, CodS;
        IF done THEN
            LEAVE read_loop;
        END IF;
        INSERT INTO `appoggio` VALUES (nomeS, CodS);
    END LOOP;
    CLOSE cur;

    -- Mostro scaffali disponibili per quella categoria 
    SELECT * FROM `appoggio`;

    --  Mostro quante copie disponibili esistono già con quel ISBN
    SELECT COUNT(*) AS CopieDisponibili
    FROM BNCR.Copia
    WHERE BNCR.Copia.stato = 'Disponibile' AND BNCR.Copia.ISBN = isbn;

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `aggiungi_personale` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `aggiungi_personale`(IN nome_arg VARCHAR(100), IN cognome_arg VARCHAR(100),IN password_arg VARCHAR(100), IN privilegio_arg VARCHAR(100))
BEGIN
	declare done int default false;
	declare var_max INT;
	declare crypt VARCHAR(100);

	declare exit handler for sqlexception
	begin
		rollback;
		resignal;
	end;
	
	SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
	SET TRANSACTION READ WRITE;
	START TRANSACTION;


	select MAX(BNCR.Permessi.Identificativo) into var_max
	from BNCR.Permessi 
	where BNCR.Permessi.Ruolo=privilegio_arg
	FOR UPDATE;

	IF var_max IS NULL THEN 
        SIGNAL SQLSTATE '45001' 
        SET MESSAGE_TEXT = 'Errore: Il ruolo specificato non esiste nel database.';
    END IF;

    
    SET var_max = var_max + 1;

    -- Cripta la password
    SET crypt = MD5(password_arg);
	
	INSERT INTO BNCR.Permessi VALUES(var_max, nome_arg, cognome_arg, crypt, privilegio_arg);
	
	COMMIT;
	
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `controlla_utente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `controlla_utente`(
    IN nome VARCHAR(100), 
    IN cognome VARCHAR(100), 
    IN data_var DATE
)
BEGIN
    -- Dichiarazione variabili di conteggio
    DECLARE conta INT DEFAULT 0;
    DECLARE conta2 INT DEFAULT 0;
   
   	SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
	SET TRANSACTION READ ONLY;
	START TRANSACTION;

    -- Controlla se l'utente esiste nella tabella Utente
    IF NOT EXISTS (
        SELECT 1 FROM BNCR.Utente 
        WHERE BNCR.Utente.Nome = nome 
        AND BNCR.Utente.Cognome = cognome 
        AND BNCR.Utente.Data_Nascita = data_var
    ) THEN
        SIGNAL SQLSTATE '45024' 
        SET MESSAGE_TEXT = 'Utente non esistente';
    END IF;

    -- Conta i prestiti
    SELECT COUNT(*) INTO conta
    FROM BNCR.Prestito p
    WHERE p.Nome = nome 
    AND p.Cognome = cognome 
    AND p.Data_Nascita = data_var;

    -- Conta i prestiti altrove
    SELECT COUNT(*) INTO conta2
    FROM BNCR.Prestito_Altrove pa
    WHERE pa.Nome = nome 
    AND pa.Cognome = cognome 
    AND pa.Data_Nascita = data_var;

    -- Se ci sono prestiti, restituiamo la lista
    IF conta > 0 THEN
        SELECT p.Nome, p.Cognome, l.Titolo, p.ISBN, p.NumeroCopia 
        FROM BNCR.Prestito p
        JOIN BNCR.Libro l ON p.ISBN = l.ISBN
        WHERE p.Nome = nome 
        AND p.Cognome = cognome 
        AND p.Data_Nascita = data_var;
    END IF;

    -- Se ci sono prestiti altrove, restituiamo la lista
     IF conta2 > 0 THEN
       SELECT 
        pa.Nome, 
        pa.Cognome, 
        l.Titolo, 
        pa.ISBN, 
        ba.Nome, 
        ba.Citta
    FROM BNCR.Prestito_Altrove pa
    JOIN BNCR.Libro l ON pa.ISBN = l.ISBN
    JOIN BNCR.Biblioteca ba ON pa.ID_Biblioteca = ba.ID_Biblioteca
    WHERE pa.Nome = nome 
      AND pa.Cognome = cognome 
      AND pa.Data_Nascita = data_var;
    END IF;
   
   COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `controllo_circuito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `controllo_circuito`(IN titolo_var VARCHAR(100))
BEGIN
	
	declare done int default false;
	declare i varchar(100);
	declare t varchar(100);
	declare n int;
	declare ci varchar(100);
	declare na varchar(100);
	declare conta int;

	declare cur cursor for

	SELECT BNCR.DisponibilitaCopia.ISBN, BNCR.Libro.Titolo, BNCR.DisponibilitaCopia.numero_copie, BNCR.Biblioteca.Nome, BNCR.Biblioteca.Citta 
	FROM BNCR.DisponibilitaCopia, BNCR.Libro, BNCR.Biblioteca
	WHERE BNCR.DisponibilitaCopia.ISBN = BNCR.Libro.ISBN 
	AND BNCR.Biblioteca.ID_Biblioteca = BNCR.DisponibilitaCopia.ID_Biblioteca 
	AND BNCR.Libro.Titolo=titolo_var AND BNCR.DisponibilitaCopia.numero_copie > 0;


	declare exit handler for sqlexception
	begin
		rollback;
		resignal;
	end;
	declare continue handler for not found set done = true;

	drop temporary table if exists `appoggio`;
	create temporary table `appoggio`(
		`isbn` varchar(100),
		`titolo` varchar(100),
		`num_copy` int,
		`city` varchar(100),
		`na` varchar(100)
	);

	SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
	SET TRANSACTION READ ONLY;
	START TRANSACTION;

	open cur;

	read_loop:loop
		fetch cur into i,t,n,ci,na;
		if done then
			leave read_loop;
		end if;
		insert into `appoggio` values (i,t,n,ci,na);
	END loop;
	close cur;

	select count(*) into conta from `appoggio`;
	if conta = 0 then 
	SIGNAL SQLSTATE '45078' SET MESSAGE_TEXT='La copia non è disponibile in nessuna biblioteca convenzionata';
	end if;
	if conta > 0 then 
	select * from `appoggio`;
	end if;
	COMMIT;

	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `disponibilita` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `disponibilita`(IN disponibilita_var VARCHAR(100), IN nome_libro_var VARCHAR(100))
BEGIN
	declare stato_copia varchar(100);
	declare titolo_copia varchar(100);
	declare isbn varchar(100);
	declare done int default false;
	
	declare cur cursor for
		select BNCR.Libro.Titolo, BNCR.Copia.Stato, BNCR.Libro.ISBN 
		from BNCR.Libro, BNCR.Copia
		where BNCR.Copia.stato=disponibilita_var and BNCR.Libro.Titolo=nome_libro_var
		and BNCR.Libro.ISBN=BNCR.Copia.ISBN and BNCR.Libro.Disponibile='si';
	
		declare continue handler for not found set done = true;
	
		declare exit handler for sqlexception
		begin
			rollback;
			resignal;
		end;
	drop temporary table if exists `BNCR`.`appoggio`;
	
	create temporary table `appoggio`(
		
		`titolo` varchar(100),
		`stato` varchar(100),
		`isbn` varchar(100)
		);
		
		set TRANSACTION ISOLATION LEVEL SERIALIZABLE;
		set TRANSACTION READ ONLY;
		START TRANSACTION;
		
		open cur;
		read_loop:loop
			fetch cur into titolo_copia, stato_copia, isbn;
			if done then
				leave read_loop;
			end if;
			insert into `appoggio` values(titolo_copia, stato_copia, isbn);
		end loop;
	close cur;	

	IF NOT EXISTS (SELECT 1 FROM appoggio) THEN 
	SIGNAL SQLSTATE '45004' set message_text='Nessuna copia disponibile';
	else select count(*) from `appoggio`;
	end if;

	select isbn from `appoggio` limit 1;

	





	COMMIT;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `disposizione` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `disposizione`()
BEGIN
	declare done int default false;
	declare titolo varchar(100);
	declare isbn varchar(100);
	declare cscaffale int;
	declare nome varchar(100);
	
	declare cur cursor for
	
	select BNCR.Libro.Titolo, BNCR.Libro.ISBN, BNCR.Scaffale.Codice_Scaffale, BNCR.Scaffale.Nome 
	from BNCR.Libro, BNCR.Scaffale 
	where BNCR.Libro.Codice_categoria = BNCR.Scaffale.Codice_categoria;

	declare continue handler for not found set done = true;



	SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
	SET TRANSACTION READ WRITE;
	START TRANSACTION;

	open cur;
	read_loop:loop
		fetch cur into titolo,isbn,cscaffale,nome;
		if done then 
			leave read_loop;
		end if;
		insert into BNCR.Ripiano (BNCR.Ripiano.Numero_Ripiano, BNCR.Ripiano.Codice_Scaffale, BNCR.Ripiano.ISBN) values (1, cscaffale, isbn);
	end loop;
	close cur;
	COMMIT;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `effettua_riconsegna` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `effettua_riconsegna`(
    IN isbn VARCHAR(100), 
    IN numcpy INT, 
    IN nome VARCHAR(100), 
    IN cognome VARCHAR(100), 
    IN dat DATE,
    IN colonne INT,
    IN nome_biblio_var VARCHAR(100),
    IN bibliocitta_var VARCHAR(100))
BEGIN

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SIGNAL SQLSTATE '45088' SET MESSAGE_TEXT='Errore durante la riconsegna, operazione annullata.';
    END;

    SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
    START TRANSACTION;
   
    IF colonne = 5 THEN

        DELETE FROM BNCR.Prestito
        WHERE BNCR.Prestito.ISBN = isbn AND BNCR.Prestito.NumeroCopia = numcpy
        AND BNCR.Prestito.Nome = nome AND BNCR.Prestito.Cognome = cognome AND BNCR.Prestito.Data_Nascita = dat;

        DELETE FROM BNCR.Utente
        WHERE BNCR.Utente.Nome = nome AND BNCR.Utente.Cognome = cognome AND BNCR.Utente.Data_Nascita = dat;

    END IF;
   
    IF colonne = 6 THEN
  	
        DELETE FROM BNCR.Prestito_Altrove 
        WHERE BNCR.Prestito_Altrove.ISBN = isbn 
        AND BNCR.Prestito_Altrove.Nome = nome 
        AND BNCR.Prestito_Altrove.Cognome = cognome 
        AND BNCR.Prestito_Altrove.Data_Nascita = dat;

        DELETE FROM BNCR.Utente
        WHERE BNCR.Utente.Nome = nome AND BNCR.Utente.Cognome = cognome AND BNCR.Utente.Data_Nascita = dat;

    END IF;

    COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `elimina_fisicamente_libro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `elimina_fisicamente_libro`(IN nome_libro VARCHAR(100))
BEGIN
    DECLARE isbn_check VARCHAR(100);

    SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
    SET TRANSACTION READ WRITE;
    START TRANSACTION;

    -- Controllaa se il libro esiste
    SELECT ISBN INTO isbn_check
    FROM BNCR.Libro
    WHERE Titolo = nome_libro
    LIMIT 1; -- mi fermo ad un risultato 

    -- Se non esiste, segnalo errore ed esco
    IF isbn_check IS NULL THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45591' SET MESSAGE_TEXT = 'Impossibile eliminare: il libro specificato non esiste.';
    END IF;

    -- Altrimenti eseguo la delete
    DELETE FROM BNCR.Libro
    WHERE Titolo = nome_libro;

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `elimina_personale` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `elimina_personale`(IN nome_var VARCHAR(100), IN cognome_var VARCHAR(100), IN ruolo VARCHAR(100))
BEGIN
	
	declare nome_appoggio varchar(100);
	declare cognome_appoggio varchar(100);
	
	declare exit handler for sqlexception
	begin
		rollback;
		resignal;
	end;

	set transaction isolation level repeatable read;
	set transaction READ WRITE;
	START TRANSACTION;

	select BNCR.Permessi.Nome, BNCR.Permessi.Cognome into nome_appoggio, cognome_appoggio
	from BNCR.Permessi
	where BNCR.Permessi.Ruolo=ruolo AND BNCR.Permessi.Nome=nome_var AND BNCR.Permessi.Cognome=cognome_var;
	

	if nome_appoggio is null and cognome_appoggio is null THEN 
	SIGNAL SQLSTATE '45002' set message_text="Non puoi eliminare un personale inesistente";
	end if;

	DELETE FROM BNCR.Permessi where BNCR.Permessi.Nome = nome_appoggio and BNCR.Permessi.Cognome = cognome_appoggio;
	COMMIT;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `login_iniziale` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `login_iniziale`(IN identificativo_var INT, IN password_var VARCHAR(100))
    READS SQL DATA
BEGIN

	declare done int default false;
	declare buffer VARCHAR(100);
	declare var_nome VARCHAR(100);
	declare var_cognome VARCHAR(100);

	declare cur cursor for 
	
		SELECT BNCR.Permessi.Nome, bncr.Permessi.Cognome FROM BNCR.Permessi
		WHERE BNCR.Permessi.Identificativo = identificativo_var
		AND BNCR.Permessi.Password = md5(password_var);
		
		declare exit handler for sqlexception
		begin
			rollback;
			resignal;
		end;
		declare continue handler for not found set done = true;
		drop temporary table if exists `BNCR`.`appoggio`;
		create temporary table `appoggio`(
		
		`nome` varchar(100),
		`cognome` varchar(100)
		);
		
		set TRANSACTION ISOLATION LEVEL REPEATABLE READ;
		set TRANSACTION READ ONLY;
		START TRANSACTION;
		
		open cur;
		read_loop:loop
			fetch cur into var_nome, var_cognome;
			if done then
				leave read_loop;
			end if;
			insert into `appoggio` values(var_nome, var_cognome);
		end loop;
	close cur;
	
	select * from `appoggio`;

		open cur;
		set done=false;
		read_loop:loop
			fetch cur into var_nome, var_cognome;
			if done then
				leave read_loop;
			end if;
			select BNCR.Permessi.Ruolo into buffer from BNCR.Permessi
			where BNCR.Permessi.Nome=var_nome and BNCR.Permessi.Cognome=var_cognome;
	    end loop;
	close cur; 	
COMMIT;

	if buffer='Amministratore' then SELECT 1 AS Ruolo;
	elseif buffer='Bibliotecario' then SELECT 2 AS Ruolo;
	else SELECT 3 AS Ruolo;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modifica_copia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modifica_copia`(IN var_isbn VARCHAR(100), IN nome_var VARCHAR(100), IN cognome_var VARCHAR(100), IN data_var DATE, IN contatto_email VARCHAR(100), IN numero_var VARCHAR(100), IN scelta INT, IN data_fine INT)
BEGIN
	
	declare copia_disponibile INT;
	declare fine DATE;
	declare contatore INT;
	declare buffer_nome varchar(100);
	declare buffer_cognome varchar(100);

	declare exit handler for sqlexception
	begin
		rollback;
		resignal;
	end;

	SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
	SET TRANSACTION READ WRITE;
	START TRANSACTION;
	
	SELECT Numero_Copia 
    INTO copia_disponibile
    FROM BNCR.Copia 
    WHERE BNCR.Copia.ISBN = var_isbn and BNCR.Copia.stato='Disponibile'
    ORDER BY BNCR.Copia.Numero_Copia ASC 
    LIMIT 1;
   
   	if copia_disponibile is null then
   	SIGNAL SQLSTATE '45008' SET MESSAGE_TEXT='Nessuna copia disponibile';
   	end if;
   
   	SELECT COUNT(*) INTO contatore
    FROM BNCR.Utente
    WHERE BNCR.Utente.Nome=nome_var 
    AND BNCR.Utente.Cognome = cognome_var
    AND BNCR.Utente.Data_Nascita = data_var
    LIMIT 1;
   
   	IF CONTATORE > 0 THEN
   	 SIGNAL SQLSTATE '45098'
        SET MESSAGE_TEXT = 'Non puoi richiedere un secondo libro, hai già un libro in prenotazione';
    END IF;
   	 
   
   	SET fine = DATE_ADD(CURDATE(), INTERVAL data_fine MONTH);
   

   
    INSERT IGNORE INTO BNCR.Utente (Nome, Cognome, Data_Nascita)
    VALUES (nome_var, cognome_var, data_var);

	if scelta = 1 then 
	INSERT INTO BNCR.UtenteEmail(BNCR.UtenteEmail.Nome, BNCR.UtenteEmail.Cognome, BNCR.UtenteEmail.Data_Nascita, BNCR.UtenteEmail.Email)
	VALUES (nome_var, cognome_var, data_var, contatto_email);
	end if;
	
	if scelta = 2 then
	INSERT INTO BNCR.UtenteTelefono (BNCR.UtenteTelefono.Nome, BNCR.UtenteTelefono.Cognome, BNCR.UtenteTelefono.Data_Nascita, BNCR.UtenteTelefono.Telefono)
	VALUES (nome_var, cognome_var, data_var, numero_var);
	end if;

	INSERT INTO BNCR.Prestito (BNCR.Prestito.ISBN, BNCR.Prestito.NumeroCopia, BNCR.Prestito.Nome, BNCR.Prestito.Cognome, BNCR.Prestito.Data_Nascita, BNCR.Prestito.DataInizioPrestito, BNCR.Prestito.DataFinePrestito)
	VALUES (var_isbn, copia_disponibile, nome_var, cognome_var, data_var, CURDATE(), fine);

	select BNCR.Scaffale.Codice_Scaffale, BNCR.Scaffale.Nome, BNCR.Ripiano.Numero_Ripiano 
	from BNCR.Libro, BNCR.Scaffale, BNCR.Ripiano  
	where BNCR.Libro.Codice_categoria = BNCR.Scaffale.Codice_categoria 
	and BNCR.Ripiano.Codice_Scaffale = BNCR.Scaffale.Codice_Scaffale 
	and BNCR.Ripiano.ISBN = BNCR.Libro.ISBN
	and BNCR.Ripiano.ISBN = var_isbn;

	COMMIT;


	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mostra_categorie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mostra_categorie`()
BEGIN
    DECLARE total INT;

    -- Conto quante categorie esistono
    SELECT COUNT(*) INTO total
    FROM BNCR.categorie;

    -- Se non esistono categorie, segnalo unn errore
    IF total = 0 THEN
        SIGNAL SQLSTATE '45099'
        SET MESSAGE_TEXT = 'Nessuna categoria esistente nel sistema.';
    END IF;

    -- Altrimenti mostro tutto ambaradam
    SELECT * FROM BNCR.categorie;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registra_libro_e_copia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registra_libro_e_copia`(IN isbn VARCHAR(100), IN titolo VARCHAR(100), IN codice_scaffale_var INT, IN codice_ripiano_var INT, IN codice_categoria_var INT)
BEGIN
	
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Errore durante la registrazione del libro e delle copie';
    END;

    START TRANSACTION;

    INSERT INTO BNCR.Libro (Titolo, ISBN, Codice_categoria, Disponibile)
    VALUES (titolo, isbn, codice_categoria_var,'si');

    INSERT INTO BNCR.Copia (Numero_Copia, stato, ISBN)
    VALUES (1, 'Disponibile', isbn);

    INSERT INTO BNCR.Ripiano (Numero_Ripiano, Codice_Scaffale, ISBN)
    VALUES (codice_ripiano_var, codice_scaffale_var, isbn);

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `report_completo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `report_completo`()
    READS SQL DATA
BEGIN
    SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
    SET TRANSACTION READ ONLY;
    START TRANSACTION;

    SELECT * FROM BNCR.disponi;

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `report_personale` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `report_personale`(IN ruolo_var VARCHAR(100))
BEGIN
	
	declare exit handler for sqlexception 
	begin
		rollback;
		resignal;
	end;

	
	set transaction isolation level READ COMMITTED;
	set transaction read write;

	start transaction;

	IF (SELECT COUNT(*) FROM BNCR.Permessi WHERE Ruolo = ruolo_var) = 0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Nessun personale trovato per il ruolo specificato';
	END IF;

	SELECT BNCR.Permessi.Nome, BNCR.Permessi.Cognome, BNCR.Permessi.Identificativo 
	from BNCR.Permessi
	where BNCR.Permessi.Ruolo = ruolo_var;

	COMMIT;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `report_possesso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `report_possesso`()
BEGIN

   SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
   START TRANSACTION READ ONLY;

   SELECT * FROM BNCR.report_possesso_interno;
   SELECT * FROM BNCR.report_possesso_esterno;

COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `validazione` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `validazione`()
BEGIN
	
    DECLARE done INT DEFAULT FALSE;
    DECLARE isbn VARCHAR(100);
    DECLARE dat DATE;

    DECLARE cur CURSOR FOR 
    SELECT BNCR.Log_Prestiti.ISBN, MAX(BNCR.Log_Prestiti.`Data`)
    FROM BNCR.Log_Prestiti
    GROUP BY BNCR.Log_Prestiti.ISBN;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
    SET TRANSACTION READ WRITE;
    START TRANSACTION;

    OPEN cur;
    
    read_loop: LOOP
        FETCH cur INTO isbn, dat;
        IF done THEN
            LEAVE read_loop;
        END IF;

      	UPDATE BNCR.Libro
		SET BNCR.Libro.Disponibile = 'no'
		WHERE BNCR.Libro.ISBN = isbn AND dat <= DATE_SUB(CURDATE(), INTERVAL 10 YEAR);
    END LOOP;

    CLOSE cur;
    
    COMMIT;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `BNCR`
--

USE `BNCR`;

--
-- Final view structure for view `categorie`
--

/*!50001 DROP VIEW IF EXISTS `categorie`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `categorie` AS select `categoria`.`Codice_categoria` AS `Codice_categoria`,`categoria`.`nome` AS `nome` from `categoria` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `disponi`
--

/*!50001 DROP VIEW IF EXISTS `disponi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `disponi` AS select distinct `libro`.`Titolo` AS `Titolo`,`libro`.`ISBN` AS `ISBN`,`scaffale`.`Codice_Scaffale` AS `Codice_Scaffale`,`scaffale`.`Nome` AS `Nome`,`ripiano`.`Numero_Ripiano` AS `Numero_Ripiano` from (((`libro` join `scaffale`) join `ripiano`) join `copia`) where ((`libro`.`Codice_categoria` = `scaffale`.`Codice_categoria`) and (`ripiano`.`Codice_Scaffale` = `scaffale`.`Codice_Scaffale`) and (`ripiano`.`ISBN` = `libro`.`ISBN`) and (`libro`.`ISBN` = `copia`.`ISBN`) and (`copia`.`stato` = 'Disponibile') and (`libro`.`Disponibile` = 'si')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `report_possesso_esterno`
--

/*!50001 DROP VIEW IF EXISTS `report_possesso_esterno`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `report_possesso_esterno` AS select `prestito_altrove`.`Nome` AS `Nome`,`prestito_altrove`.`Cognome` AS `Cognome`,`libro`.`Titolo` AS `Titolo`,`contatti`.`Data_Nascita` AS `Data_Nascita`,`libro`.`ISBN` AS `ISBN`,`contatti`.`Contatto` AS `Contatto`,`contatti`.`Tipo_Contatto` AS `Tipo_Contatto`,`biblioteca`.`Nome` AS `NomeBiblio`,`biblioteca`.`Citta` AS `Citta` from ((((`prestito_altrove` join `libro`) join `disponibilitacopia`) join `biblioteca`) join (select `utenteemail`.`Nome` AS `Nome`,`utenteemail`.`Cognome` AS `Cognome`,`utenteemail`.`Data_Nascita` AS `Data_Nascita`,`utenteemail`.`Email` AS `Contatto`,'Email' AS `Tipo_Contatto` from `utenteemail` union select `utentetelefono`.`Nome` AS `Nome`,`utentetelefono`.`Cognome` AS `Cognome`,`utentetelefono`.`Data_Nascita` AS `Data_Nascita`,`utentetelefono`.`Telefono` AS `Contatto`,'Telefono' AS `Tipo_Contatto` from `utentetelefono`) `Contatti`) where ((`prestito_altrove`.`ISBN` = `libro`.`ISBN`) and (`prestito_altrove`.`Nome` = `contatti`.`Nome`) and (`prestito_altrove`.`Cognome` = `contatti`.`Cognome`) and (`prestito_altrove`.`Data_Nascita` = `contatti`.`Data_Nascita`) and (`disponibilitacopia`.`ISBN` = `prestito_altrove`.`ISBN`) and (`disponibilitacopia`.`ID_Biblioteca` = `biblioteca`.`ID_Biblioteca`) and (`disponibilitacopia`.`ID_Biblioteca` = `prestito_altrove`.`ID_Biblioteca`) and (`biblioteca`.`ID_Biblioteca` = `prestito_altrove`.`ID_Biblioteca`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `report_possesso_interno`
--

/*!50001 DROP VIEW IF EXISTS `report_possesso_interno`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `report_possesso_interno` AS select `prestito`.`NumeroCopia` AS `NumeroCopia`,`prestito`.`Nome` AS `Nome`,`prestito`.`Cognome` AS `Cognome`,`libro`.`Titolo` AS `Titolo`,`contatti`.`Data_Nascita` AS `Data_Nascita`,`libro`.`ISBN` AS `ISBN`,`contatti`.`Contatto` AS `Contatto`,`contatti`.`Tipo_Contatto` AS `Tipo_Contatto` from ((`prestito` join `libro`) join (select `utenteemail`.`Nome` AS `Nome`,`utenteemail`.`Cognome` AS `Cognome`,`utenteemail`.`Data_Nascita` AS `Data_Nascita`,`utenteemail`.`Email` AS `Contatto`,'Email' AS `Tipo_Contatto` from `utenteemail` union select `utentetelefono`.`Nome` AS `Nome`,`utentetelefono`.`Cognome` AS `Cognome`,`utentetelefono`.`Data_Nascita` AS `Data_Nascita`,`utentetelefono`.`Telefono` AS `Contatto`,'Telefono' AS `Tipo_Contatto` from `utentetelefono`) `Contatti`) where ((`prestito`.`ISBN` = `libro`.`ISBN`) and (`prestito`.`Nome` = `contatti`.`Nome`) and (`prestito`.`Cognome` = `contatti`.`Cognome`) and (`prestito`.`Data_Nascita` = `contatti`.`Data_Nascita`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-01 16:18:03
