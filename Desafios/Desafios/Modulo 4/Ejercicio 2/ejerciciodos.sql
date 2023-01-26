CREATE DATABASE  IF NOT EXISTS `libreria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `libreria`;
-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: libreria
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autores` (
  `autor_id` varchar(11) NOT NULL,
  `apellido` varchar(40) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `direccion` varchar(40) DEFAULT NULL,
  `ciudad` varchar(20) DEFAULT NULL,
  `provincia` char(2) DEFAULT NULL,
  `c_postal` char(5) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`autor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES ('172-32-1176','Quiroga','Horacio','44967223','','Salto','ER','4025',1),('213-46-8915','Bioy Casares','Adolfo','49867020','','Buenos Aires','CF','4618',1),('238-95-7766','Vargas LLosa','Mario','45487723','','Lima','LI','4705',1),('267-41-2394','Giardinelli','Mempo','42862428','','Resistencia','CH','5128',1),('274-80-9391','Ocampo','Victoria','48342919','','Beccar','BA','4609',1),('341-22-1782','Walsh','Rodolfo','98430462','','Choele Choel','R','6044',0),('409-56-7008','Lugones','Leopoldo','46589932','','Río Seco','CO','4705',1),('427-17-2319','Echeverría','Esteban','48367128','','','','',1),('472-27-2349','Kafka','Frank','79386445','','Praga','AU','5428',1),('486-29-1786','Sábato','Ernesto','45854620','','Rojas','BA','4130',1),('527-72-3246','Borges','Jorge Luis','62972723','','Buenos Aires','CF','7215',0),('648-92-1872','Martinez','Tomas Eloy','57456402','','San Miguel','TU','7330',1),('672-71-3249','Arlt','Roberto','49354228','','Flores','CF','4595',1),('712-45-1867','Dolina','Alejandro','69968275','','Morse','BA','8105',1),('722-51-5454','Pigna','Felipe','25479982','','Mercedes','BA','6403',1),('724-08-9931','Cortazar','Julio','48432991','','Ixelles','BE','4609',0),('725-80-9391','Piglia','Ricardo','43547128','','Adrogué','BA','4612',1),('756-30-7391','Saer','Juan José','45349219','','Serodino','SF','4609',1),('807-91-6654','Ocampo','Silvina','39468853','','Microcentro','CF','8853',1),('846-92-7186','Puig','Manuel','48367128','','General Villegas','BA','4301',1),('893-72-1158','Hernández','José','74484982','','Chacras de Perdirel','BA','5688',0),('899-46-2035','Di Benedetto','Antonio','88260752','','Bermejo','ME','4152',1),('998-72-3567','Fogwill','Rodolfo','49810752','','Quilmes','BA','4152',1);
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editoriales`
--

DROP TABLE IF EXISTS `editoriales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editoriales` (
  `editorial_id` char(4) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `ciudad` varchar(20) DEFAULT NULL,
  `provincia` char(2) DEFAULT NULL,
  `pais` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`editorial_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editoriales`
--

LOCK TABLES `editoriales` WRITE;
/*!40000 ALTER TABLE `editoriales` DISABLE KEYS */;
INSERT INTO `editoriales` VALUES ('0736','Losada','Buenos Aires','CF','Argentina'),('0877','Ediciones de la Flor','Buenos Aires','CF','Argentina'),('1389','Abeledo-Perrot','Buenos Aires','CF','Argentina'),('1622','Amorrortu Editores','Buenos Aires','CF','Argentina'),('1756','Editorial Atlántida','Buenos Aires','CF','Argentina'),('9901','Centro Editor de América Latina','Buenos Aires','CF','Argentina'),('9952','Editorial Columba','Buenos Aires','CF','Argentina'),('9999','Editorial Emecé','Buenos Aires','CF','Argentina');
/*!40000 ALTER TABLE `editoriales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `empleado_id` char(9) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `puesto_id` smallint(6) NOT NULL,
  `editorial_id` char(4) NOT NULL,
  `fecha_ingreso` datetime DEFAULT NULL,
  `permanencia` int(11) DEFAULT NULL,
  PRIMARY KEY (`empleado_id`,`puesto_id`,`editorial_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES ('A-C71970F','Aria','Cruz',10,'1389','1991-10-26 00:00:00',31),('A-R89858F','Annette','Roulet',6,'9999','1990-02-21 00:00:00',32),('AMD15433F','An','Devo',3,'9952','1991-07-16 00:00:00',31),('ARD36773F','Anabela','Domingues',8,'0877','1993-01-27 00:00:00',29),('CFH28514M','Carlos','Hernandez',5,'9999','1989-04-21 00:00:00',33),('CGS88322F','Carine','Schmitt',13,'1389','1992-07-07 00:00:00',30),('DBT39435M','Daniel','Tonini',11,'0877','1990-01-01 00:00:00',33),('DWR65030M','Diego','Roel',6,'1389','1991-12-16 00:00:00',31),('ENL44273F','Elizabeth','Lincol',14,'0877','1990-07-24 00:00:00',32),('F-C16315M','Francisco','Chang',4,'9952','1990-11-03 00:00:00',32),('GHT50241M','Gary','Thomas',9,'0736','1988-08-09 00:00:00',34),('H-B39728F','Hele','Bennett',12,'0877','1989-09-21 00:00:00',33),('HAN90777M','Helvetius','Nagy',7,'9999','1993-03-19 00:00:00',29),('HAS54740M','Howard','Snyder',12,'0736','1988-11-19 00:00:00',34),('JYL26161F','Janine','Labrune',5,'9901','1991-05-26 00:00:00',31),('KFJ64308F','Kari','Josephs',14,'0736','1992-10-17 00:00:00',30),('KJJ92907F','Karla','Jablonski',9,'9999','1994-03-11 00:00:00',28),('L-B31947F','Lesley','Brow',7,'0877','1991-02-13 00:00:00',31),('LAL21447M','Laurence','Lebiha',5,'0736','1990-06-03 00:00:00',32),('M-L67958F','Maria','Larsso',7,'1389','1992-03-27 00:00:00',30),('M-P91209M','Manuel','Pereira',8,'9999','1989-01-09 00:00:00',34),('M-R38834F','Martine','Rance',9,'0877','1992-02-05 00:00:00',30),('MAP77183M','Miguel','Paolino',11,'1389','1992-12-07 00:00:00',30),('MAS70474F','Margaret','Smith',9,'1389','1988-09-29 00:00:00',34),('MFS52347M','Marti','Sommer',10,'0736','1990-04-13 00:00:00',32),('MGK44605M','Matti','Karttune',6,'0736','1994-05-01 00:00:00',28),('MJP25939M','Maria','Pontes',5,'1756','1989-03-01 00:00:00',33),('MMS49649F','Mary','Saveley',8,'0736','1993-06-29 00:00:00',29),('PCM98509F','Patricia','McKenna',11,'9999','1989-08-01 00:00:00',33),('PDI47470M','Palle','Ibse',7,'0736','1993-05-09 00:00:00',29),('PHF38899M','Peter','Franke',10,'0877','1992-05-17 00:00:00',30),('PMA42628M','Paolo','Accorti',13,'0877','1992-08-27 00:00:00',30),('POK93028M','Pirkko','Koskitalo',10,'9999','1993-11-29 00:00:00',29),('PSA89086M','Pedro','Afonso',14,'1389','1990-12-24 00:00:00',32),('PSP68661F','Paula','Parente',8,'1389','1994-01-19 00:00:00',28),('PTC11962M','Philip','Cramer',2,'9952','1989-11-11 00:00:00',33),('PXH22250M','Paul','Henriot',5,'0877','1993-08-19 00:00:00',29),('R-M53550M','Roland','Mendel',11,'0736','1991-09-05 00:00:00',31),('RBM23061F','Rita','Muller',5,'1622','1993-10-09 00:00:00',29),('SKO22412M','Sve','Ottlieb',5,'1389','1991-04-05 00:00:00',31),('TPO55093M','Timothy','O\'Rourke',13,'0736','1988-06-19 00:00:00',34),('VPA30890F','Victoria','Ashworth',6,'0877','1990-09-13 00:00:00',32),('Y-L77953M','Yoshi','Latimer',12,'1389','1989-06-11 00:00:00',33);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libroautor`
--

DROP TABLE IF EXISTS `libroautor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libroautor` (
  `autor_id` varchar(11) NOT NULL,
  `libro_id` varchar(6) NOT NULL,
  PRIMARY KEY (`autor_id`,`libro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libroautor`
--

LOCK TABLES `libroautor` WRITE;
/*!40000 ALTER TABLE `libroautor` DISABLE KEYS */;
INSERT INTO `libroautor` VALUES ('172-32-1176','PS3333'),('213-46-8915','BU1032'),('214-46-8915','BU2075'),('238-95-7766','PC1035'),('267-41-2394','BU1111'),('267-41-2399','TC7777'),('274-80-9391','BU7832'),('409-56-7008','BU1033'),('427-17-2319','PC8888'),('472-27-2349','TC7778'),('486-29-1786','PC9999'),('486-29-1789','PS7777'),('648-92-1872','TC4203'),('672-71-3249','TC7779'),('712-45-1867','MC2222'),('722-51-5454','MC3021'),('724-80-9391','BU1112'),('725-80-9391','PS1372'),('756-30-7391','PS1373'),('807-91-6654','TC3218'),('846-92-7186','PC8889'),('892-46-2035','PS2091'),('899-46-2035','MC3022'),('992-72-3567','PS2106'),('998-72-3567','PS2092');
/*!40000 ALTER TABLE `libroautor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libros` (
  `libro_id` varchar(6) NOT NULL,
  `titulo` varchar(80) DEFAULT NULL,
  `categoria` char(12) DEFAULT NULL,
  `editorial_id` char(4) NOT NULL,
  `precio` double DEFAULT NULL,
  `comentarios` varchar(200) DEFAULT NULL,
  `fecha_publicacion` datetime DEFAULT NULL,
  `precio_publico` float DEFAULT NULL,
  PRIMARY KEY (`libro_id`,`editorial_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES ('BU1032','La invención de Morel','Novelas','1389',19.99,'','1991-06-12 00:00:00',24.19),('BU1033','El Imperio jesuítico','Ensayos','0877',22.98,NULL,'1904-06-12 00:00:00',27.81),('BU1111','El castigo de Dios','Cuentos','1389',11.95,'','1991-06-09 00:00:00',14.46),('BU1112','Los casos del comisario Croce','Cuentos','0736',20,NULL,'2018-12-01 00:00:00',24.2),('BU2075','De las cosas maravillosas','Ensayos','0736',29.9,'','1991-06-30 00:00:00',36.18),('BU7832','La mujer y su expresió','Ensayos','1389',19.99,'','1991-06-22 00:00:00',24.19),('MC2222','Crónicas del angel gris','Relato','0877',19.99,'','1991-06-09 00:00:00',24.19),('MC3021','El mundo contemporáneo','Historia','0877',29.9,'','1991-06-18 00:00:00',36.18),('MC3022','El silenciero','Novelas','9901',32,NULL,'1964-03-10 00:00:00',38.72),('MC3026','The Psychology of Computer Cooking','Sin asignar','0877',NULL,'','2004-12-13 00:00:00',NULL),('PC1035','Pantaleón y las visitadoras','Novelas','1389',22.95,'','1991-06-30 00:00:00',27.77),('PC8888','El matadero','Cuentos','1389',20,'','1994-06-12 00:00:00',24.2),('PC8889','Sangre de amor correspondido','Novelas','1756',13,NULL,'1982-01-01 00:00:00',15.73),('PC9999','La robotización del hombre y otras páginas','Antologías','1389',NULL,'','2004-12-13 00:00:00',NULL),('PS1372','La ciudad ausente','Novelas','0877',21.59,'','1991-10-21 00:00:00',26.12),('PS1373','Nadie nada nunca','Novelas','1622',20,NULL,'1980-06-12 00:00:00',24.2),('PS2091','Caballo en el salitral','Antologías','0736',10.95,'','1991-06-15 00:00:00',13.25),('PS2092','Memoria romana','Cuentos','9952',13.5,NULL,'2018-05-29 00:00:00',16.34),('PS2106','Vivir afuera','Novelas','0736',70,'','1991-10-05 00:00:00',84.7),('PS3333','Cuentos de Amor, de Locura y Muerte','Cuentos','0736',19.99,'','1991-06-12 00:00:00',24.19),('PS7777','Sobre héroes y tumbas','Novelas','0736',79.9,'','1991-06-12 00:00:00',96.68),('TC3218','La promesa','Novelas','0877',20.95,'','1991-10-21 00:00:00',25.35),('TC4203','La pasión según Trelew','Crónicas','0877',11.95,'','1991-06-12 00:00:00',14.46),('TC7777','La revolución en bicicleta','Novelas','0877',14.99,'','1991-06-12 00:00:00',18.14),('TC7778','La metamorfosis','Novelas','9999',18,NULL,'1975-05-05 00:00:00',21.78),('TC7779','El juguete rabioso','Novelas','9999',22,NULL,'1964-01-15 00:00:00',26.62);
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locales`
--

DROP TABLE IF EXISTS `locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locales` (
  `local_id` char(4) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `direccion` varchar(40) DEFAULT NULL,
  `ciudad` varchar(20) DEFAULT NULL,
  `provincia` char(2) DEFAULT NULL,
  `c_postal` char(5) DEFAULT NULL,
  PRIMARY KEY (`local_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locales`
--

LOCK TABLES `locales` WRITE;
/*!40000 ALTER TABLE `locales` DISABLE KEYS */;
INSERT INTO `locales` VALUES ('6380','Yenny - El Ateneo','Petaonal San Martin 732','Paraná','ER','98056'),('7066','Librería Hernández','Diagonal 104 1436','La Plata','BA','92789'),('7067','Librería Santa Fe','Ovidio Lagos 3253','Rosario','SF','96745'),('7131','Librería Cúspide','Av San Martin 931','Capital','ME','98014'),('7896','SBS Librerías','Av Rivadavia 4791','Capital','CO','90019'),('8042','Planeta de Libros','Av Independencia 1682','Buenos Aires','CF','89076');
/*!40000 ALTER TABLE `locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puestos`
--

DROP TABLE IF EXISTS `puestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `puestos` (
  `puesto_id` smallint(6) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`puesto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puestos`
--

LOCK TABLES `puestos` WRITE;
/*!40000 ALTER TABLE `puestos` DISABLE KEYS */;
INSERT INTO `puestos` VALUES (1,'Nuevo Ingreso - Puesto no definido'),(2,'CEO'),(3,'Director de Operaciones de Negocio'),(4,'CFO'),(5,'Editorialista'),(6,'Director de Edición'),(7,'Director de Marketing'),(8,'Director de Relaciones Públicas'),(9,'Director de Compras'),(10,'Director de Producción'),(11,'Director de Operaciones'),(12,'Editor'),(13,'Representante de Ventas'),(14,'Diseñador');
/*!40000 ALTER TABLE `puestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas` (
  `local_id` char(4) NOT NULL,
  `factura_nro` varchar(20) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `cantidad` smallint(6) DEFAULT NULL,
  `forma_pago` varchar(12) DEFAULT NULL,
  `libro_id` varchar(6) NOT NULL,
  PRIMARY KEY (`local_id`,`libro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-18 19:21:12
