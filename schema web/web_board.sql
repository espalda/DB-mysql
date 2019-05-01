CREATE DATABASE  IF NOT EXISTS `web` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `web`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: web
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
  `board_no` int(11) NOT NULL DEFAULT '1',
  `board_title` varchar(255) DEFAULT NULL,
  `board_contents` longtext,
  `board_writer` varchar(45) NOT NULL DEFAULT '0',
  `board_category_code` varchar(6) DEFAULT NULL,
  `board_registered_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `board_cafe_name` varchar(45) NOT NULL DEFAULT '0',
  PRIMARY KEY (`board_no`),
  KEY `board_categorize_idx` (`board_category_code`),
  KEY `board_cafe_name_idx` (`board_cafe_name`),
  CONSTRAINT `board_cafe_name` FOREIGN KEY (`board_cafe_name`) REFERENCES `cafe` (`cafe_name`),
  CONSTRAINT `board_categorize` FOREIGN KEY (`board_category_code`) REFERENCES `category` (`category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'',NULL,'apple','adm001','2019-01-02 00:00:00','낚시의신'),(2,'',NULL,'mango','adm001','2019-01-03 00:00:00','낚시의신'),(3,'',NULL,'apple','adm002','2019-04-05 00:00:00','동물의숲'),(4,'',NULL,'banana','adm003','2019-04-12 00:00:00','사진동호회'),(5,'',NULL,'orange','adm003','2019-04-11 00:00:00','사진동호회'),(6,'',NULL,'melon','adm004','2019-04-01 00:00:00','음악공장'),(7,'',NULL,'grape','adm004','2019-04-01 00:00:00','음악공장'),(8,'',NULL,'mango','adm005','2019-04-01 00:00:00','직장인밴드'),(9,'',NULL,'apple','adm006','2019-04-01 00:00:00','동양사진관'),(10,'',NULL,'apple','adm006','2019-04-01 00:00:00','동양사진관');
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

-- Dump completed on 2019-04-30 16:39:06
