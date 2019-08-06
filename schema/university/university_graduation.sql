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
-- Table structure for table `graduation`
--

DROP TABLE IF EXISTS `graduation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `graduation` (
  `graduation_student_num` int(11) NOT NULL,
  `graduation_requirement_num` int(11) DEFAULT NULL,
  `graduation_total` int(11) DEFAULT '0',
  `graduation_ok` varchar(1) DEFAULT NULL,
  `graduation_english` int(11) DEFAULT NULL,
  `graduation_project` varchar(1) DEFAULT NULL,
  `graduation_paper` varchar(1) DEFAULT NULL,
  `graduation_test` varchar(1) DEFAULT NULL,
  `graduation_certificate` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`graduation_student_num`),
  KEY `graduation_requirement_num_idx` (`graduation_requirement_num`),
  CONSTRAINT `graduation_requirement_num` FOREIGN KEY (`graduation_requirement_num`) REFERENCES `requirement` (`requirement_num`),
  CONSTRAINT `graduation_student_num` FOREIGN KEY (`graduation_student_num`) REFERENCES `student` (`student_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graduation`
--

LOCK TABLES `graduation` WRITE;
/*!40000 ALTER TABLE `graduation` DISABLE KEYS */;
INSERT INTO `graduation` VALUES (2019001,1,0,'o',650,'o','o','o','o'),(2019002,1,0,NULL,500,'x','x','x','x'),(2019003,2,0,NULL,850,'o','o','x','x'),(2019004,2,0,NULL,700,'x','o','x','x'),(2019005,3,0,NULL,450,'o','o','x','x'),(2019006,3,0,NULL,NULL,NULL,NULL,NULL,''),(2019007,3,0,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `graduation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-06 17:00:46
