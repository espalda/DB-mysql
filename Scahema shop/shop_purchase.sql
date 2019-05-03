CREATE DATABASE  IF NOT EXISTS `shop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `shop`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
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
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `purchase` (
  `purchase_no` int(11) NOT NULL,
  `purchase_member_id` varchar(45) DEFAULT NULL,
  `purchase_item_name` varchar(100) DEFAULT NULL,
  `purchase_delivery_no` int(11) DEFAULT NULL,
  `purchase_count` int(11) DEFAULT NULL,
  `purchase_state` varchar(45) DEFAULT NULL,
  `purchase_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`purchase_no`),
  KEY `board_member_id_idx` (`purchase_member_id`),
  KEY `purchase_item_name_idx` (`purchase_item_name`),
  KEY `purchase_delivery_no_idx` (`purchase_delivery_no`),
  CONSTRAINT `purchase_delivery_no` FOREIGN KEY (`purchase_delivery_no`) REFERENCES `delivery` (`delivery_no`),
  CONSTRAINT `purchase_item_name` FOREIGN KEY (`purchase_item_name`) REFERENCES `item` (`item_name`),
  CONSTRAINT `purchase_member_id` FOREIGN KEY (`purchase_member_id`) REFERENCES `member` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` VALUES (1,'apple','산세베리아',1,5,'배송완료','2019-05-03 09:44:59'),(2,'grape','산세베리아',2,2,'배송완료','2019-05-03 09:44:59'),(3,'grape','극락조',3,1,'배송완료','2019-05-03 09:44:59'),(4,'orange','뱅갈고무나무',4,1,'배송중','2019-05-03 09:44:59'),(5,'melon','산세베리아',5,10,'장바구니','2019-05-03 09:44:59');
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-03 17:17:19
