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
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `transactions` (
  `Index` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(30) DEFAULT NULL,
  `AccountName` varchar(45) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `transactions` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Index`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'liuknan','kobebryant','2018-11-29 01:37:59','Detect'),(2,'liuknan','kobebryant','2018-11-29 01:38:16','video'),(3,'liuknan','kobebryant','2018-11-29 01:38:30','exit'),(4,'liuknan','kobebryant','2018-11-29 11:41:19','exit'),(5,'liuknan','kobebryant','2018-11-29 11:43:56','search'),(6,'liuknan','kobebryant','2018-11-29 11:44:46','exit'),(7,'liuknan','kobebryant','2018-11-29 11:45:20','search'),(8,'liuknan','kobebryant','2018-11-29 11:45:45','exit'),(9,'liuknan','kobebryant','2018-11-29 11:46:14','search'),(10,'liuknan','kobebryant','2018-11-29 11:53:18','exit'),(11,'liuknan','kobebryant','2018-11-29 11:53:35','search'),(12,'liuknan','kobebryant','2018-11-29 11:53:44','exit'),(13,'liuknan','kobebryant','2018-11-29 11:55:21','search'),(14,'liuknan','kobebryant','2018-11-29 11:55:46','exit'),(15,'liuknan','kobebryant','2018-11-29 11:58:42','search'),(16,'liuknan','kobebryant','2018-11-29 11:58:50','exit'),(17,'liuknan','kobebryant','2018-11-29 13:13:30','detect'),(18,'liuknan','kobebryant','2018-11-29 13:14:00','exit'),(19,'admin','kobebryant','2018-11-29 13:15:07','detect'),(20,'admin','kobebryant','2018-11-29 13:15:41','exit'),(21,'liuknan','kobebryant','2018-11-29 13:18:54','detect'),(22,'liuknan','kobebryant','2018-11-29 13:20:05','exit'),(23,'liuknan','kobebryant','2018-11-29 13:20:28','detect'),(24,'liuknan','kobebryant','2018-11-29 13:20:56','exit'),(25,'liuknan','kobebryant','2018-11-29 13:25:40','detect'),(26,'liuknan','kobebryant','2018-11-29 13:26:09','detect'),(27,'liuknan','kobebryant','2018-11-29 13:26:31','exit'),(28,'liuknan','kobebryant','2018-11-29 13:29:48','search'),(29,'liuknan','kobebryant','2018-11-29 13:31:14','search'),(30,'liuknan','kobebryant','2018-11-29 13:31:24','search'),(31,'liuknan','russwest44','2018-11-29 13:33:16','detect'),(32,'liuknan','russwest44','2018-11-29 13:34:17','search'),(33,'liuknan','russwest44','2018-11-29 13:34:25','search'),(34,'liuknan','russwest44','2018-11-29 13:34:36','search'),(35,'liuknan','russwest44','2018-11-29 13:34:49','search'),(36,'liuknan','kobebryant','2018-11-30 02:07:42','exit'),(37,'liuknan','kobebryant','2018-11-30 02:26:01','detect'),(38,'liuknan','kobebryant','2018-11-30 02:32:16','detect'),(39,'liuknan','kobebryant','2018-11-30 02:32:36','search'),(40,'liuknan','kobebryant','2018-11-30 02:33:01','exit'),(41,'liuknan','KingJames','2018-11-30 02:39:34','detect'),(42,'liuknan','KingJames','2018-11-30 02:39:49','search'),(43,'liuknan','KingJames','2018-11-30 02:40:01','exit'),(44,'liuknan','KingJames','2018-11-30 09:12:13','search'),(45,'liuknan','KingJames','2018-11-30 09:12:41','exit'),(46,'liuknan','KingJames','2018-11-30 09:15:49','search'),(47,'liuknan','KingJames','2018-11-30 09:16:41','out'),(48,'liuknan','KingJames','2018-11-30 09:18:37','search'),(49,'liuknan','KingJames','2018-11-30 09:18:47','exit'),(50,'liuknan','KingJames','2018-11-30 09:34:15','exit'),(51,'liuknan','kobebryant','2018-11-30 11:57:28','detect'),(52,'liuknan','kobebryant','2018-11-30 11:57:48','search'),(53,'liuknan','kobebryant','2018-11-30 11:58:05','exit');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
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
