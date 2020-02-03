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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(45) COLLATE utf8_bin NOT NULL,
  `item_num` int(11) NOT NULL,
  `option_num` int(11) NOT NULL,
  `order_num` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `order_price` int(11) DEFAULT NULL,
  `order_count` int(11) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) COLLATE utf8_bin DEFAULT '상품준비중',
  PRIMARY KEY (`num`),
  KEY `fk_order_member1_idx` (`member_id`),
  KEY `fk_order_item1_idx` (`item_num`),
  KEY `fk_order_option1_idx` (`option_num`),
  CONSTRAINT `fk_order_item1` FOREIGN KEY (`item_num`) REFERENCES `item` (`num`),
  CONSTRAINT `fk_order_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `fk_order_option1` FOREIGN KEY (`option_num`) REFERENCES `option` (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'pickles',10,18,'20190925-63672281',11500,1,'2019-09-25 15:00:55','상품준비중'),(2,'pickles',1,1,'20190925-89137462',7500,1,'2019-09-25 15:01:08','상품준비중'),(3,'pickles',11,19,'20190925-92514843',10500,1,'2019-09-25 15:01:15','상품준비중'),(4,'pickles',10,16,'20190925-54627788',8500,1,'2019-09-25 15:12:59','상품준비중'),(5,'pickles',16,25,'20190925-44626392',26000,1,'2019-09-25 15:13:43','상품준비중'),(6,'pickles',17,26,'20190925-65354176',10500,1,'2019-09-25 15:13:57','상품준비중'),(7,'pickles',8,13,'20190925-83967176',15000,1,'2019-09-25 15:16:55','상품준비중');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-26 15:01:34
