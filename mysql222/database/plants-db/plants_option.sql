CREATE DATABASE  IF NOT EXISTS `plants` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `plants`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: plants
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
-- Table structure for table `option`
--

DROP TABLE IF EXISTS `option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `option` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `item_num` int(11) NOT NULL,
  `item_name` varchar(45) DEFAULT NULL,
  `option` varchar(45) DEFAULT NULL,
  `option_count` int(11) DEFAULT NULL,
  `option_price` int(11) DEFAULT '0',
  `valid` varchar(45) NOT NULL DEFAULT 'I',
  PRIMARY KEY (`num`),
  KEY `fk_option_item1_idx` (`item_num`),
  CONSTRAINT `fk_option_item1` FOREIGN KEY (`item_num`) REFERENCES `item` (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option`
--

LOCK TABLES `option` WRITE;
/*!40000 ALTER TABLE `option` DISABLE KEYS */;
INSERT INTO `option` VALUES (1,1,'다육이1','기본',99,5000,'I'),(2,2,'다육이2','기본',100,6000,'I'),(3,2,'다육이2','고급(+1000)',100,7000,'I'),(4,3,'다육이3','기본',100,8000,'I'),(5,4,'선인장1','기본',100,8000,'I'),(6,4,'선인장1','고급(+2000)',100,10000,'I'),(7,5,'선인장2','기본',100,9000,'I'),(8,5,'선인장2','고급(+1000)',100,10000,'I'),(9,6,'선인장3','기본',100,15000,'I'),(10,6,'선인장3','고급(+2000)',100,17000,'I'),(11,7,'화분1','기본',100,10000,'I'),(12,7,'화분1','고급(+2000)',100,12000,'I'),(13,8,'화분2','기본',99,15000,'I'),(14,8,'화분2','고급(+1000)',100,16000,'I'),(15,9,'화분3','기본',100,23000,'I'),(16,10,'디시디아','기본',99,6000,'I'),(17,10,'디시디아','화이트(+2000)',100,8000,'I'),(18,10,'디시디아','밀리언하트(+3000)',99,9000,'I'),(19,11,'백자갈','기본',99,8000,'I'),(20,12,'황토볼','기본',100,16000,'I'),(21,13,'식물 영양제1','기본',100,1900,'I'),(22,14,'식물 영양제2','기본',100,3900,'I'),(23,15,'원예 가위','기본',100,15000,'I'),(24,15,'원예 가위','고급(+2000)',100,17000,'I'),(25,16,'원예용품 세트','기본',99,26000,'I'),(26,17,'분갈이흙','기본',99,8000,'I'),(27,18,'꽃1','기본',100,9000,'I');
/*!40000 ALTER TABLE `option` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-26 15:01:33
