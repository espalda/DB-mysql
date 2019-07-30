CREATE DATABASE  IF NOT EXISTS `university` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `university`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: university
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `board` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `writer` varchar(15) NOT NULL,
  `title` varchar(255) NOT NULL,
  `contents` longtext NOT NULL,
  `registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file` varchar(255) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `valid` varchar(1) NOT NULL DEFAULT 'I',
  PRIMARY KEY (`num`),
  KEY `writer_idx` (`writer`),
  CONSTRAINT `writer` FOREIGN KEY (`writer`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'orange1','01','01','2019-07-30 11:06:13',NULL,0,'I'),(2,'orange1','02','02','2019-07-30 11:08:36',NULL,0,'I'),(3,'orange1','03','03','2019-07-30 11:08:36',NULL,0,'I'),(4,'orange1','04','04','2019-07-30 11:08:36',NULL,0,'I'),(5,'orange1','05','05','2019-07-30 11:08:36',NULL,0,'I'),(6,'orange1','06','06','2019-07-30 11:08:36',NULL,0,'I'),(7,'orange1','07','07','2019-07-30 11:08:36',NULL,0,'I'),(8,'orange1','08','08','2019-07-30 11:08:36',NULL,0,'I'),(9,'orange1','09','09','2019-07-30 11:08:36',NULL,0,'I'),(10,'orange1','10','10','2019-07-30 11:08:36',NULL,0,'I'),(11,'orange1','11','11','2019-07-30 11:08:36',NULL,0,'I'),(12,'orange2','12','12','2019-07-30 11:08:36',NULL,0,'I'),(13,'orange2','13','13','2019-07-30 11:08:36',NULL,0,'I'),(14,'orange2','14','14','2019-07-30 11:08:36',NULL,0,'I'),(15,'orange2','15','15','2019-07-30 11:08:36',NULL,0,'I'),(16,'orange2','16','16','2019-07-30 11:08:36',NULL,0,'I'),(17,'orange2','17','17','2019-07-30 11:08:36',NULL,0,'I'),(18,'orange2','18','18','2019-07-30 11:08:36',NULL,0,'I'),(19,'orange2','19','19','2019-07-30 11:08:36',NULL,0,'I'),(20,'orange2','20','20','2019-07-30 11:08:36',NULL,0,'I'),(21,'orange2','21','21','2019-07-30 11:08:36',NULL,0,'I'),(22,'orange3','22','22','2019-07-30 11:08:36',NULL,0,'I'),(23,'orange3','23','23','2019-07-30 11:08:36',NULL,0,'I'),(24,'orange3','24','24','2019-07-30 11:08:36',NULL,0,'I'),(25,'orange3','25','25','2019-07-30 11:08:36',NULL,0,'I'),(26,'orange3','26','26','2019-07-30 11:08:36',NULL,0,'I'),(27,'orange3','27','27','2019-07-30 11:08:36',NULL,0,'I'),(28,'orange3','28','28','2019-07-30 11:08:36',NULL,0,'I'),(29,'orange3','29','29','2019-07-30 11:08:36',NULL,0,'I'),(30,'orange3','30','30','2019-07-30 11:08:36',NULL,0,'I'),(31,'orange4','31','31','2019-07-30 11:08:36',NULL,0,'I'),(32,'orange4','32','32','2019-07-30 11:11:47',NULL,0,'I'),(33,'orange4','33','33','2019-07-30 11:11:47',NULL,0,'I'),(34,'orange4','34','34','2019-07-30 11:11:47',NULL,0,'I'),(35,'orange4','35','35','2019-07-30 11:11:47',NULL,0,'I'),(36,'orange4','36','36','2019-07-30 11:11:47',NULL,0,'I'),(37,'orange4','37','37','2019-07-30 11:11:47',NULL,0,'I'),(38,'orange4','38','38','2019-07-30 11:11:47',NULL,0,'I');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-30 17:13:01
