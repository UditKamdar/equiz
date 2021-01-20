-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `question_table`
--

DROP TABLE IF EXISTS `question_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_table` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `questions` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_table`
--

LOCK TABLES `question_table` WRITE;
/*!40000 ALTER TABLE `question_table` DISABLE KEYS */;
INSERT INTO `question_table` VALUES (1,'hello','0000-00-00 00:00:00'),(2,'hello','0000-00-00 00:00:00'),(3,'hello how are u','0000-00-00 00:00:00'),(4,'hello','2020-05-04 19:54:27'),(5,'he','2020-05-04 19:55:20'),(6,'','2020-05-05 00:06:21'),(7,'hello','2020-05-05 17:24:19'),(8,'cdvdv','2020-05-05 17:25:56'),(9,'cdvdv','2020-05-05 17:26:24'),(10,'hello','2020-05-05 17:33:40'),(11,'hiii','2020-05-05 23:50:42'),(12,'hii','2020-05-05 23:53:22'),(13,'vggcrct','2020-05-05 23:56:21'),(14,'hello','2020-05-06 00:01:25'),(15,'hiiiii','2020-05-06 00:05:30'),(16,'gcgcgcgc','2020-05-06 00:05:30'),(17,'abc','2020-05-06 00:07:44'),(18,'def','2020-05-06 00:07:44'),(19,'abc','2020-05-06 00:07:53'),(20,'def','2020-05-06 00:07:53'),(21,'abc','2020-05-06 00:09:53'),(22,'def','2020-05-06 00:09:53'),(23,'q','2020-05-06 04:18:25'),(24,'q','2020-05-06 04:18:25'),(25,'q','2020-05-06 04:18:25'),(26,'q','2020-05-06 04:18:25'),(27,'q','2020-05-06 04:18:25');
/*!40000 ALTER TABLE `question_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-20 11:48:56
