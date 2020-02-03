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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `seller_member_id` varchar(45) COLLATE utf8_bin NOT NULL,
  `name` varchar(45) COLLATE utf8_bin NOT NULL,
  `category` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `registered` datetime DEFAULT CURRENT_TIMESTAMP,
  `price` int(11) DEFAULT '0',
  `delivery_charge` int(11) DEFAULT '2500',
  `contents` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `valid` varchar(45) COLLATE utf8_bin DEFAULT 'I',
  PRIMARY KEY (`num`),
  KEY `fk_item_member1_idx` (`seller_member_id`),
  CONSTRAINT `fk_item_member1` FOREIGN KEY (`seller_member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'pickles','다육이1','Succulents','2019-09-25 14:24:40',5000,2500,'다육이1을 키워보세요','/2019/09/25/acd0aeda-0007-4e2c-82a0-3904e3ba41b6_item-13.jpg','I'),(2,'pickles','다육이2','Succulents','2019-09-25 14:25:25',6000,2500,'다육이2를 잘 키워보세요','/2019/09/25/18291e15-505c-403f-b781-f52d5184c047_item-15.jpg','I'),(3,'pickles','다육이3','Succulents','2019-09-25 14:28:29',8000,2500,'다육이3을 섬세하게 키워보세요','/2019/09/25/83ba3173-c05a-4bb7-b8e8-8542649a8e9a_item-20.jpg','I'),(4,'pickles','선인장1','Cactus','2019-09-25 14:29:53',8000,2500,'선인장1을 잘 키워주세요','/2019/09/25/d2ce0ac2-6c04-41ce-8671-10e80fc36044_item-2.jpg','I'),(5,'pickles','선인장2','Cactus','2019-09-25 14:30:28',9000,2500,'선인장2를 잘 키워주세요','/2019/09/25/0135ba1e-8ea7-4e5b-ac13-7ff700913dc8_item-8.jpg','I'),(6,'pickles','선인장3','Cactus','2019-09-25 14:31:09',15000,2500,'고급 선인장을 키워보세요','/2019/09/25/642c6ed6-3be6-482b-adc8-ee8cdd3918d5_item-16.jpg','I'),(7,'pickles','화분1','Plant','2019-09-25 14:31:48',10000,2500,'화분1로 집안을 장식해보아요','/2019/09/25/1a88f8b3-7087-4947-92e8-fe739b5103e8_item-3.jpg','I'),(8,'pickles','화분2','Plant','2019-09-25 14:32:19',15000,2500,'화분2로 집안을 화사하게','/2019/09/25/f448b8cd-1c93-42ed-b0d5-50b7da0d9542_item-6.jpg','I'),(9,'pickles','화분3','Plant','2019-09-25 14:32:49',23000,2500,'화분3을 집안에 두십시오','/2019/09/25/ed62e8be-d1d7-448a-bc4c-654253ec3863_item-18.jpg','I'),(10,'pickles','디시디아','Hanging plant','2019-09-25 14:34:52',6000,2500,'집안에 식물을 걸어두어요','/2019/09/25/139e6a39-8d22-40cc-b3a4-e8fdbdfa5d1c_hang-1.jpg','I'),(11,'pickles','백자갈','Goods','2019-09-25 14:41:45',8000,2500,'자갈로 화분을 고급지게','/2019/09/25/ee0cd373-c1b1-4ac9-88ae-78111913fce7_whitestone.jpg','I'),(12,'pickles','황토볼','Goods','2019-09-25 14:42:36',16000,2500,'황토볼로 식물을 건강하게 만드세요','/2019/09/25/22d67c6b-148a-452b-81f3-23e583be2463_0fb7da7e-2b97-4ae7-b35f-40044e695109.jpg','I'),(13,'pickles','식물 영양제1','Goods','2019-09-25 14:43:54',1900,2500,'식물 영양제1','/2019/09/25/b31315a1-5a12-4f8e-add5-7ab86761f315_다운로드.jpg','I'),(14,'pickles','식물 영양제2','Goods','2019-09-25 14:44:19',3900,2500,'식물 영양제2','/2019/09/25/a38ec7f1-b20a-4b13-9463-1aff768e09b6_1000005186256_i1_1200.jpg','I'),(15,'pickles','원예 가위','Goods','2019-09-25 14:44:50',15000,2500,'','/2019/09/25/2460dfbf-4058-4347-afec-2b50b8f2a346_139bb6c9-7919-444c-816a-1e8a8198da14.jpg','I'),(16,'pickles','원예용품 세트','Goods','2019-09-25 14:45:07',26000,2500,'','/2019/09/25/50eb9ef3-c9e0-4b0c-ac83-7091e61ed2d3_800_shop1_316047.jpg','I'),(17,'pickles','분갈이흙','Goods','2019-09-25 14:45:34',8000,2500,'','/2019/09/25/b8ac1143-8a76-42a1-87b3-206af328eecc_4971ce9c-5a21-49bc-8879-7fcc3ba5160c.jpg','I'),(18,'pickles','꽃1','Plant','2019-09-26 09:59:58',9000,2500,'꽃1로 집안을 장식하세요','/2019/09/26/d247bbdf-49cc-4401-b5ac-6ca688dc7f66_item-10.jpg','I');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
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
