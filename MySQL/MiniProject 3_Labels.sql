-- MySQL dump 10.13  Distrib 8.0.13, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: MiniProject 3
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Labels`
--

DROP TABLE IF EXISTS `Labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Labels` (
  `Index` int(11) NOT NULL AUTO_INCREMENT,
  `TwitterAccount` varchar(45) DEFAULT NULL,
  `Label` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Index`),
  UNIQUE KEY `Label_UNIQUE` (`Label`)
) ENGINE=InnoDB AUTO_INCREMENT=739 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Labels`
--

LOCK TABLES `Labels` WRITE;
/*!40000 ALTER TABLE `Labels` DISABLE KEYS */;
INSERT INTO `Labels` VALUES (1,'kobebryant','red'),(2,'kobebryant','fictional character'),(3,'kobebryant','art'),(4,'kobebryant','superhero'),(6,'kobebryant','t shirt'),(7,'kobebryant','facial hair'),(8,'kobebryant','fun'),(9,'kobebryant','lighting'),(10,'kobebryant','night'),(11,'kobebryant','darkness'),(12,'kobebryant','suit'),(13,'kobebryant','official'),(14,'kobebryant','album cover'),(15,'kobebryant','black and white'),(16,'kobebryant','nose'),(17,'kobebryant','poster'),(18,'kobebryant','forehead'),(20,'kobebryant','monochrome photography'),(21,'kobebryant','font'),(22,'kobebryant','film'),(23,'kobebryant','advertising'),(24,'kobebryant','blue'),(25,'kobebryant','photograph'),(26,'kobebryant','man'),(27,'kobebryant','snapshot'),(28,'kobebryant','photography'),(29,'kobebryant','sitting'),(31,'kobebryant','human'),(33,'kobebryant','girl'),(34,'kobebryant','electronic device'),(35,'kobebryant','technology'),(36,'kobebryant','audio'),(37,'kobebryant','music'),(38,'kobebryant','television crew'),(39,'kobebryant','recreation'),(40,'kobebryant','musical instrument'),(41,'kobebryant','musician'),(42,'kobebryant','leg'),(43,'kobebryant','arm'),(46,'kobebryant','social group'),(47,'kobebryant','team'),(48,'kobebryant','physical fitness'),(50,'kobebryant','clothing'),(51,'kobebryant','outerwear'),(52,'kobebryant','costume'),(54,'kobebryant','event'),(55,'kobebryant','child'),(56,'kobebryant','product'),(61,'kobebryant','white'),(63,'kobebryant','black'),(65,'kobebryant','person'),(67,'kobebryant','hand'),(69,'kobebryant','head'),(71,'russwest44','basketball moves'),(72,'russwest44','basketball player'),(74,'russwest44','basketball'),(75,'russwest44','team sport'),(76,'russwest44','jersey'),(77,'russwest44','athlete'),(78,'russwest44','slam dunk'),(79,'russwest44','player'),(80,'russwest44','sports'),(81,'russwest44','sport venue'),(83,'russwest44','audience'),(84,'russwest44','crowd'),(86,'russwest44','arena'),(87,'russwest44','games'),(90,'russwest44','structure'),(91,'russwest44','footwear'),(94,'russwest44','shoe'),(95,'russwest44','sneakers'),(98,'russwest44','design'),(99,'russwest44','sportswear'),(100,'russwest44','pattern'),(102,'russwest44','skin'),(104,'russwest44','finger'),(106,'russwest44','ring'),(108,'russwest44','nail'),(109,'russwest44','jewellery'),(113,'russwest44','competition event'),(114,'russwest44','performance'),(116,'russwest44','championship'),(129,'russwest44','stuffed toy'),(130,'russwest44','plush'),(131,'russwest44','textile'),(132,'russwest44','toy'),(133,'russwest44','material'),(134,'russwest44','dalmatian'),(137,'russwest44','grass'),(144,'russwest44','fashion'),(145,'russwest44','male'),(146,'russwest44','standing'),(169,'russwest44','text'),(172,'russwest44','line'),(173,'russwest44','logo'),(174,'russwest44','area'),(175,'russwest44','brand'),(176,'russwest44','graphics'),(180,'russwest44','formal wear'),(181,'russwest44','runway'),(182,'russwest44','fashion model'),(183,'russwest44','gentleman'),(184,'russwest44','flooring'),(191,'russwest44','electric blue'),(192,'russwest44','joint'),(195,'russwest44','uniform'),(198,'russwest44','yellow'),(201,'russwest44','fan'),(211,'russwest44','sports training'),(214,'russwest44','training'),(215,'russwest44','muscle'),(223,'russwest44','human body'),(225,'russwest44','indoor games and sports'),(238,'russwest44','infrastructure'),(240,'russwest44','street'),(241,'russwest44','road'),(243,'russwest44','pink'),(245,'russwest44','shoulder'),(249,'russwest44','fashion design'),(251,'russwest44','barechestedness'),(256,'russwest44','chest'),(257,'russwest44','competition'),(258,'russwest44','trunk'),(259,'russwest44','abdomen'),(263,'russwest44','magazine'),(267,'russwest44','people'),(270,'russwest44','cheering'),(277,'russwest44','interaction'),(280,'russwest44','vehicle'),(284,'russwest44','block party'),(293,'russwest44','headgear'),(297,'russwest44','computer wallpaper'),(298,'russwest44','display device'),(303,'russwest44','stage'),(305,'russwest44','auditorium'),(306,'russwest44','public event'),(308,'russwest44','concert'),(309,'russwest44','convention'),(323,'russwest44','city'),(324,'russwest44','festival'),(330,'russwest44','baseball field'),(332,'russwest44','sky'),(335,'russwest44','stadium'),(341,'russwest44','boy'),(342,'russwest44','youth'),(343,'russwest44','community'),(347,'russwest44','wood'),(351,'russwest44','denim'),(352,'russwest44','jeans'),(358,'russwest44','trousers'),(359,'russwest44','cool'),(365,'russwest44','chin'),(367,'russwest44','model'),(380,'russwest44','car'),(387,'russwest44','sport utility vehicle'),(401,'russwest44','protective gear in sports'),(403,'russwest44','personal protective equipment'),(405,'russwest44','metal'),(406,'russwest44','helmet'),(410,'russwest44','human behavior'),(412,'russwest44','energy'),(433,'russwest44','green'),(436,'russwest44','aqua'),(438,'russwest44','walking shoe'),(446,'russwest44','outdoor shoe'),(452,'russwest44','sleeve'),(457,'russwest44','jacket'),(618,'KingJames','entertainment'),(619,'KingJames','light'),(623,'KingJames','television program'),(624,'KingJames','world'),(625,'KingJames','performance art'),(627,'KingJames','midnight'),(639,'KingJames','tournament'),(642,'KingJames','ball'),(643,'KingJames','ball game'),(645,'KingJames','rackets'),(649,'KingJames','pallone'),(650,'KingJames','leisure'),(658,'KingJames','plant'),(660,'KingJames','athletic shoe');
/*!40000 ALTER TABLE `Labels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-30 22:48:11
