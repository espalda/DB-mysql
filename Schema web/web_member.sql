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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `member` (
  `member_no` int(11) NOT NULL AUTO_INCREMENT,
  `member_cafe_name` varchar(45) DEFAULT NULL,
  `member_user_id` varchar(45) DEFAULT NULL,
  `member_grade` varchar(10) DEFAULT NULL,
  `member_board_count` int(11) NOT NULL DEFAULT '0',
  `member_visit_count` int(11) NOT NULL DEFAULT '0',
  `member_last_visit` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`member_no`),
  KEY `member_cafe_name_idx` (`member_cafe_name`),
  KEY `member_user_id_idx` (`member_user_id`),
  CONSTRAINT `member_cafe_name` FOREIGN KEY (`member_cafe_name`) REFERENCES `cafe` (`cafe_name`),
  CONSTRAINT `member_user_id` FOREIGN KEY (`member_user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'낚시의신','apple','정회원',1,0,'2019-04-30 00:00:00'),(2,'동물의숲','apple','정회원',0,0,'2019-04-11 00:00:00'),(3,'사진동호회','banana','특별회원',2,0,'2019-04-30 00:00:00'),(4,'낚시의신','banana','감사회원',0,0,'2018-01-11 00:00:00'),(5,'음악공장','grape','준회원',0,0,'2018-05-10 00:00:00'),(6,'동물의숲','grape','준회원',0,0,'2017-11-21 00:00:00'),(7,'직장인밴드','mango','준회원',0,0,'2017-03-12 00:00:00'),(8,'낚시의신','mango','정회원',0,0,'2018-05-30 00:00:00'),(9,'음악공장','melon','특별회원',0,0,'2019-04-30 00:00:00'),(10,'자유여행','orange','정회원',0,0,'2018-12-12 00:00:00'),(11,'사진동호회','orange','정회원',0,0,'2018-12-31 00:00:00'),(12,'음악공장','apple','정회원',6,0,'2019-01-10 00:00:00'),(13,'동양사진관','apple','준회원',0,0,'2019-04-01 00:00:00'),(20,'자유여행','apple','준회원',0,0,'2019-05-01 12:00:36'),(21,'자유여행','banana','준회원',0,0,'2019-05-01 12:06:03'),(22,'자유여행','banana','준회원',0,0,'2019-05-01 12:06:47');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-17 17:10:17
