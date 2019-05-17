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
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `delivery` (
  `delivery_no` int(11) NOT NULL AUTO_INCREMENT,
  `delivery_item_name` varchar(100) DEFAULT NULL,
  `delivery_member_id` varchar(45) DEFAULT NULL,
  `delivery_name` varchar(45) DEFAULT NULL,
  `delivery_address` varchar(45) DEFAULT NULL,
  `delivery_phone` varchar(45) DEFAULT NULL,
  `delivery_email` varchar(45) DEFAULT NULL,
  `delivery_memo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`delivery_no`),
  KEY `delivery_item_name_idx` (`delivery_item_name`),
  KEY `delivery_member_id_idx` (`delivery_member_id`),
  CONSTRAINT `delivery_item_name` FOREIGN KEY (`delivery_item_name`) REFERENCES `item` (`item_name`),
  CONSTRAINT `delivery_member_id` FOREIGN KEY (`delivery_member_id`) REFERENCES `member` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,'산세베리아','apple','김은비',NULL,'010-9936-0145','apple@gmail.com',NULL),(2,'산세베리아','grape','김정화',NULL,'010-1587-3125','grage@gmail.com',NULL),(3,'극락조','grape','김정화',NULL,'010-1587-3125','grage@gmail.com',NULL),(4,'뱅갈고무나무','orange','지화자',NULL,'010-1254-7789','orange@naver.com',NULL),(5,'산세베리아','melon','정정희',NULL,'010-7798-2385','melon@naver.com',NULL);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-17 17:10:16
