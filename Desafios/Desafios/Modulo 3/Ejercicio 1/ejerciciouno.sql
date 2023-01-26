CREATE DATABASE  IF NOT EXISTS `bonus_track` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `bonus_track`;
-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: bonus_track
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
-- Table structure for table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agenda` (
  `IDcontacto` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(15) NOT NULL,
  `domicilio` varchar(50) DEFAULT NULL,
  `teléfono` int(11) NOT NULL,
  `mail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDcontacto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda`
--

LOCK TABLES `agenda` WRITE;
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
INSERT INTO `agenda` VALUES (1,'Luciano','Barrientos',NULL,1123456789,NULL);
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_spotify`
--

DROP TABLE IF EXISTS `top_spotify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_spotify` (
  `ID` int(11) DEFAULT NULL,
  `TITULO` text DEFAULT NULL,
  `ARTISTA` text DEFAULT NULL,
  `GENERO` text DEFAULT NULL,
  `ANO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_spotify`
--

LOCK TABLES `top_spotify` WRITE;
/*!40000 ALTER TABLE `top_spotify` DISABLE KEYS */;
INSERT INTO `top_spotify` VALUES (2,'Love The Way You Lie','Eminem','Detroit Hip Hop',2010),(3,'TiK ToK','Kesha','Dance Pop',2010),(4,'Bad Romance','Lady Gaga','Dance Pop',2010),(5,'Just the Way You Are','Bruno Mars','Pop',2010),(6,'Baby','Justin Bieber','Canadian Pop',2010),(7,'Dynamite','Taio Cruz','Dance Pop',2010),(8,'Secrets','OneRepublic','Dance Pop',2010),(9,'Empire State of Mind (Part II) Broken Down','Alicia Keys','Hip Pop',2010),(10,'Only Girl (In The World)','Rihanna','Barbadian Pop',2010),(11,'Club Can\'t Handle Me (feat. David Guetta)','Flo Rida','Dance Pop',2010),(12,'Marry You','Bruno Mars','Pop',2010),(13,'Cooler Than Me - Single Mix','Mike Posner','Dance Pop',2010),(14,'Telephone','Lady Gaga','Dance Pop',2010),(15,'Like A G6','Far East Movement','Dance Pop',2010),(16,'OMG (feat. will.i.am)','Usher','Atl Hip Hop',2010),(17,'Eenie Meenie','Sean Kingston','Dance Pop',2010),(18,'The Time (Dirty Bit)','The Black Eyed Peas','Dance Pop',2010),(19,'Alejandro','Lady Gaga','Dance Pop',2010),(20,'Your Love Is My Drug','Kesha','Dance Pop',2010),(21,'Meet Me Halfway','The Black Eyed Peas','Dance Pop',2010),(22,'Whataya Want from Me','Adam Lambert','Australian Pop',2010),(23,'Take It Off','Kesha','Dance Pop',2010),(24,'Misery','Maroon 5','Pop',2010),(25,'All The Right Moves','OneRepublic','Dance Pop',2010),(26,'Animal','Neon Trees','Indie Pop',2010),(27,'Naturally','Selena Gomez & The Scene','Dance Pop',2010),(28,'I Like It','Enrique Iglesias','Dance Pop',2010),(29,'Teenage Dream','Katy Perry','Dance Pop',2010),(30,'California Gurls','Katy Perry','Dance Pop',2010),(31,'3','Britney Spears','Dance Pop',2010),(32,'My First Kiss - feat. Ke$ha','3OH!3','Dance Pop',2010),(33,'Blah Blah Blah (feat. 3OH!3)','Kesha','Dance Pop',2010),(34,'Imma Be','The Black Eyed Peas','Dance Pop',2010),(35,'Try Sleeping with a Broken Heart','Alicia Keys','Hip Pop',2010),(36,'Sexy Bitch (feat. Akon)','David Guetta','Dance Pop',2010),(37,'Bound To You - Burlesque Original Motion Picture Soundtrack','Christina Aguilera','Dance Pop',2010),(38,'If I Had You','Adam Lambert','Australian Pop',2010),(39,'Rock That Body','The Black Eyed Peas','Dance Pop',2010),(40,'Dog Days Are Over','Florence + The Machine','Art Pop',2010),(41,'Something\'s Got A Hold On Me - Burlesque Original Motion Picture Soundtrack','Christina Aguilera','Dance Pop',2010),(42,'Doesn\'t Mean Anything','Alicia Keys','Hip Pop',2010),(43,'Hard','Rihanna','Barbadian Pop',2010),(44,'Loca','Shakira','Colombian Pop',2010),(45,'You Lost Me','Christina Aguilera','Dance Pop',2010),(46,'Not Myself Tonight','Christina Aguilera','Dance Pop',2010),(47,'Written in the Stars (feat. Eric Turner)','Tinie Tempah','Dance Pop',2010),(48,'DJ Got Us Fallin\' In Love (feat. Pitbull)','Usher','Atl Hip Hop',2010),(49,'Castle Walls (feat. Christina Aguilera)','T.I.','Atl Hip Hop',2010),(50,'Break Your Heart','Taio Cruz','Dance Pop',2010),(51,'Hello','Martin Solveig','Big Room',2010),(52,'A Thousand Years','Christina Perri','Dance Pop',2011),(53,'Someone Like You','Adele','British Soul',2011),(54,'Give Me Everything','Pitbull','Dance Pop',2011),(55,'Just the Way You Are','Bruno Mars','Pop',2011),(56,'Rolling in the Deep','Adele','British Soul',2011),(57,'Run the World (Girls)','BeyoncÃ©','Dance Pop',2011),(58,'Moves Like Jagger - Studio Recording From The Voice Performance','Maroon 5','Pop',2011),(59,'Love On Top','BeyoncÃ©','Dance Pop',2011),(60,'Grenade','Bruno Mars','Pop',2011),(61,'Tonight Tonight','Hot Chelle Rae','Dance Pop',2011),(62,'What the Hell','Avril Lavigne','Canadian Pop',2011),(63,'Born This Way','Lady Gaga','Dance Pop',2011),(64,'Monster','Kanye West','Chicago Rap',2011),(65,'Marry You','Bruno Mars','Pop',2011),(66,'Best Thing I Never Had','BeyoncÃ©','Dance Pop',2011),(67,'Party Rock Anthem','LMFAO','Dance Pop',2011),(68,'We R Who We R','Kesha','Dance Pop',2011),(69,'Price Tag','Jessie J','Australian Pop',2011),(70,'Good Life','OneRepublic','Dance Pop',2011),(71,'Just Canâ€™t Get Enough','The Black Eyed Peas','Dance Pop',2011),(72,'On The Floor','Jennifer Lopez','Dance Pop',2011),(73,'What\'s My Name?','Rihanna','Barbadian Pop',2011),(74,'Yeah 3x','Chris Brown','Dance Pop',2011),(75,'Without You (feat. Usher)','David Guetta','Dance Pop',2011),(76,'Sexy And I Know It','LMFAO','Dance Pop',2011),(77,'The Edge Of Glory','Lady Gaga','Dance Pop',2011),(78,'E.T.','Katy Perry','Dance Pop',2011),(79,'Till the World Ends','Britney Spears','Dance Pop',2011),(80,'I Wanna Go','Britney Spears','Dance Pop',2011),(81,'Blow','Kesha','Dance Pop',2011),(82,'You And I','Lady Gaga','Dance Pop',2011),(83,'Judas','Lady Gaga','Dance Pop',2011),(84,'Tonight (I\'m Fuckin\' You)','Enrique Iglesias','Dance Pop',2011),(85,'Please Don\'t Go','Mike Posner','Dance Pop',2011),(86,'We Found Love','Rihanna','Barbadian Pop',2011),(87,'Marry The Night','Lady Gaga','Dance Pop',2011),(88,'1+1','BeyoncÃ©','Dance Pop',2011),(89,'Hold It Against Me','Britney Spears','Dance Pop',2011),(90,'I\'m Into You','Jennifer Lopez','Dance Pop',2011),(91,'Papi','Jennifer Lopez','Dance Pop',2011),(92,'Cheers (Drink To That)','Rihanna','Barbadian Pop',2011),(93,'S&M Remix','Rihanna','Barbadian Pop',2011),(94,'Written in the Stars (feat. Eric Turner)','Tinie Tempah','Dance Pop',2011),(95,'Jar of Hearts','Christina Perri','Dance Pop',2011),(96,'Castle Walls (feat. Christina Aguilera)','T.I.','Atl Hip Hop',2011),(97,'Turning Page','Sleeping At Last','Acoustic Pop',2011),(98,'Super Bass','Nicki Minaj','Dance Pop',2011),(99,'Raise Your Glass','P!nk','Dance Pop',2011),(100,'Invading My Mind','Jennifer Lopez','Dance Pop',2011),(101,'Moment 4 Life - Album Version (Edited)','Nicki Minaj','Dance Pop',2011),(102,'Last Friday Night (T.G.I.F.)','Katy Perry','Dance Pop',2011),(103,'Firework','Katy Perry','Dance Pop',2011),(104,'Muny - Album Version (Edited)','Nicki Minaj','Dance Pop',2011),(105,'Titanium (feat. Sia)','David Guetta','Dance Pop',2012),(106,'Locked Out of Heaven','Bruno Mars','Pop',2012),(107,'Paradise','Coldplay','Permanent Wave',2012),(108,'Payphone','Maroon 5','Pop',2012),(109,'What Makes You Beautiful','One Direction','Boy Band',2012),(110,'I Knew You Were Trouble.','Taylor Swift','Pop',2012),(111,'Call Me Maybe','Carly Rae Jepsen','Canadian Pop',2012),(112,'Love You Like A Love Song','Selena Gomez & The Scene','Dance Pop',2012),(113,'Set Fire to the Rain','Adele','British Soul',2012),(114,'We Are Never Ever Getting Back Together','Taylor Swift','Pop',2012),(115,'Stronger (What Doesn\'t Kill You)','Kelly Clarkson','Dance Pop',2012),(116,'Try','P!nk','Dance Pop',2012),(117,'Starships','Nicki Minaj','Dance Pop',2012),(118,'One More Night','Maroon 5','Pop',2012),(119,'Good Time','Owl City','Pop',2012),(120,'Glad You Came','The Wanted','Boy Band',2012),(121,'Beauty And A Beat','Justin Bieber','Canadian Pop',2012),(122,'International Love','Pitbull','Dance Pop',2012),(123,'Some Nights','fun.','Baroque Pop',2012),(124,'Boyfriend','Justin Bieber','Canadian Pop',2012),(125,'Part Of Me','Katy Perry','Dance Pop',2012),(126,'Domino','Jessie J','Australian Pop',2012),(127,'Where Have You Been','Rihanna','Barbadian Pop',2012),(128,'Wide Awake','Katy Perry','Dance Pop',2012),(129,'The One That Got Away','Katy Perry','Dance Pop',2012),(130,'Dance Again','Jennifer Lopez','Dance Pop',2012),(131,'Turn Up the Music','Chris Brown','Dance Pop',2012),(132,'Lights - Single Version','Ellie Goulding','Dance Pop',2012),(133,'We Are Young (feat. Janelle MonÃ¡e)','fun.','Baroque Pop',2012),(134,'Diamonds','Rihanna','Barbadian Pop',2012),(135,'Don\'t Stop the Party (feat. TJR)','Pitbull','Dance Pop',2012),(136,'You Da One','Rihanna','Barbadian Pop',2012),(137,'Stereo Hearts (feat. Adam Levine)','Gym Class Heroes','Dance Pop',2012),(138,'It Will Rain','Bruno Mars','Pop',2012),(139,'Blow Me (One Last Kiss)','P!nk','Dance Pop',2012),(140,'Underneath the Tree','Kelly Clarkson','Dance Pop',2013),(141,'Wake Me Up','Avicii','Big Room',2013),(142,'Story of My Life','One Direction','Boy Band',2013),(143,'Just Give Me a Reason (feat. Nate Ruess)','P!nk','Dance Pop',2013),(144,'Hall of Fame','The Script','Celtic Rock',2013),(145,'Roar','Katy Perry','Dance Pop',2013),(146,'We Can\'t Stop','Miley Cyrus','Dance Pop',2013),(147,'Don\'t You Worry Child - Radio Edit','Swedish House Mafia','Big Room',2013),(148,'Get Lucky (feat. Pharrell Williams & Nile Rodgers) - Radio Edit','Daft Punk','Electro',2013),(149,'Wrecking Ball','Miley Cyrus','Dance Pop',2013),(150,'Impossible','James Arthur','Pop',2013),(151,'Blurred Lines','Robin Thicke','Dance Pop',2013),(152,'Heart Attack','Demi Lovato','Dance Pop',2013),(153,'We Are Never Ever Getting Back Together','Taylor Swift','Pop',2013),(154,'Die Young','Kesha','Dance Pop',2013),(155,'Clarity','Zedd','Complextro',2013),(156,'Summertime Sadness (Lana Del Rey Vs. Cedric Gervais) - Cedric Gervais Remix','Lana Del Rey','Art Pop',2013),(157,'Under Control','Calvin Harris','Dance Pop',2013),(158,'Everybody Talks','Neon Trees','Indie Pop',2013),(160,'Best Song Ever','One Direction','Boy Band',2013),(161,'Kiss You','One Direction','Boy Band',2013),(162,'Sweet Nothing (feat. Florence Welch)','Calvin Harris','Dance Pop',2013),(163,'Lose Yourself to Dance','Daft Punk','Electro',2013),(164,'Work Bitch','Britney Spears','Dance Pop',2013),(165,'Brave','Sara Bareilles','Acoustic Pop',2013);
/*!40000 ALTER TABLE `top_spotify` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-17 19:26:06
