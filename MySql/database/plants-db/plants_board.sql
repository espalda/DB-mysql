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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `board` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(45) COLLATE utf8_bin NOT NULL,
  `category` varchar(45) COLLATE utf8_bin NOT NULL,
  `title` varchar(45) COLLATE utf8_bin NOT NULL,
  `registered` datetime DEFAULT CURRENT_TIMESTAMP,
  `views` int(11) DEFAULT '0',
  `contents` longtext COLLATE utf8_bin NOT NULL,
  `file` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `valid` varchar(45) COLLATE utf8_bin DEFAULT 'I',
  PRIMARY KEY (`num`),
  KEY `fk_board_member1_idx` (`member_id`),
  CONSTRAINT `fk_board_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'pickles','질문','다육이 기르는법 알려주세요','2019-09-25 15:01:42',4,'<p>1234</p>',NULL,'I'),(2,'pickles','질문','선인장이 자꾸 죽어요','2019-09-25 15:01:53',5,'<p>02</p>',NULL,'I'),(3,'pickles','질문','다육이도 분갈이 해야하나요?','2019-09-25 15:02:11',25,'<p>03</p>',NULL,'I'),(4,'pickles','선택','교환은 어떻게 하나요?','2019-09-25 16:00:05',0,'<p>04</p>',NULL,'I'),(5,'pickles','선택','전화 상담 시간 알려주세요','2019-09-25 16:00:10',0,'<p>05</p>',NULL,'I');
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

-- Dump completed on 2019-09-26 15:01:34
