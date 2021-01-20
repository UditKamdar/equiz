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
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `result` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_username` varchar(255) DEFAULT NULL,
  `subject_name` varchar(255) DEFAULT NULL,
  `classroom_code` varchar(255) NOT NULL,
  `quiz_id` int NOT NULL,
  `obtained_marks` int DEFAULT NULL,
  `Total_marks` int DEFAULT NULL,
  PRIMARY KEY (`student_id`,`classroom_code`,`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (1,'abc','MATHEMATICS','71aif5',25,7,10),(2,'abc','MATHEMATICS','71aif5',25,12,10),(3,'xyz','MATHEMATICS','71aif5',25,12,10),(4,'abc','MATHEMATICS','71aif5',25,7,10),(5,'abc','MATHEMATICS','71aif5',25,3,10),(6,'abc','MATHEMATICS','71aif5',25,12,10),(7,'abcd','DBMS','4vxy17',27,5,10),(8,'abc','FINAL','svy518',28,3,5),(9,'abc','FINAL','svy518',28,0,5),(10,'abc','FINAL','svy518',32,0,30),(11,'abc','FINAL','svy518',28,3,5),(12,'abc','QWE','3t9um3',33,5,10),(13,'abc','EVS','aw1e87',21,0,1),(14,'abc','EVS','aw1e87',21,0,1),(15,'abc','EVS','aw1e87',21,0,1),(16,'abc',NULL,'svy518',28,5,5),(17,'abc',NULL,'svy518',28,3,5),(18,'abc',NULL,'zh74s4',18,4,10),(19,'abc','HELLO','ksw721',147,0,2),(20,'abc',NULL,'ksw721',147,0,2),(21,'abc',NULL,'ksw721',147,0,2),(22,'dcdslj','FINAL','svy518',28,0,5),(23,'dcdslj','FINAL','svy518',28,3,5),(24,'dcdslj','FINAL','svy518',28,3,5),(25,'dcdslj','FINAL','svy518',28,3,5),(26,'dcdslj','FINAL','svy518',28,3,5),(27,'dcdslj','FINAL','svy518',28,3,5),(28,'dcdslj','FINAL','svy518',28,3,5),(29,'dcdslj','FINAL','svy518',28,3,5),(30,'niyant','ANATOMY','ih933t',148,0,10),(31,'abc','ANATOMY','ih933t',149,0,20),(32,'abc','ANATOMY','ih933t',149,0,20),(33,'niyant',NULL,'ih933t',149,0,20),(34,'niyant',NULL,'ih933t',148,2,10),(35,'niyant',NULL,'ih933t',149,0,20),(36,'niyant',NULL,'ih933t',148,4,10),(37,'niyant',NULL,'ih933t',148,2,10),(38,'abc','DSVD','013oil',156,2,1),(39,'abc',NULL,'ih933t',148,4,10),(40,'abc','FBFDNGFB','h61al1',157,2,2),(41,'abc',NULL,'aw1e87',21,0,1),(42,'abc',NULL,'zh74s4',18,4,10),(43,'abc',NULL,'zh74s4',18,0,10),(44,'abc',NULL,'zh74s4',18,2,10),(45,'abc','ABC','5n83dx',159,2,4),(46,'abc',NULL,'5n83dx',159,4,4),(47,'abc',NULL,'5n83dx',159,2,4),(48,'uditkamdar5959','ABC','5n83dx',159,0,4),(49,'uditkamdar5959','ABC','5n83dx',159,2,4),(50,'niyant','TRIAL','lx578r',162,0,4),(51,'abc','ANATOMY','ih933t',148,2,10),(52,'abc','MATHS','155svr',165,7,10),(53,'abc','MATHS','155svr',166,5,10),(54,'abc','MATHS','155svr',166,10,10),(55,'abc','MATHS','155svr',165,8,10),(56,'abc','MATHS','155svr',165,5,10),(57,'abc','ENGLISH','n33if0',167,4,4),(58,'abc','ENGLISH','n33if0',167,2,4),(59,'abc','ENGLISH','n33if0',168,11,11),(60,'abc','ENGLISH','n33if0',168,6,11),(61,'uditkamdar5959','ENGLISH','n33if0',167,2,4),(62,'uditkamdar5959','ENGLISH','n33if0',168,9,11),(63,'uditkamdar5959','ENGLISH','n33if0',167,2,4),(64,'uditkamdar5959','ENGLISH','n33if0',167,4,4),(65,'uditkamdar5959','ENGLISH','n33if0',169,1,1),(66,'abcd','ENGLISH','n33if0',167,4,4),(67,'qqq','ENGLISH','n33if0',167,4,4),(68,'qqq','ENGLISH','n33if0',167,4,4),(69,'qqq','ENGLISH','n33if0',168,9,11),(70,'qqq','ENGLISH','n33if0',167,2,4),(71,'qqq','ENGLISH','n33if0',169,1,1),(72,'qqqq','ENGLISH','n33if0',167,4,4),(73,'qqqq','ENGLISH','n33if0',168,9,11),(74,'qqqq','ENGLISH','n33if0',169,1,1),(75,'m','MATHS1','1muh16',170,4,4),(76,'student1','ENGLISH','l176hx',171,7,10),(77,'student2','ENGLISH','l176hx',171,10,10),(78,'student2','MATHS1','1muh16',170,2,4),(79,'abc','MATHS1','1muh16',170,4,4),(80,'abc','MATHS-II','4kas73',172,3,6),(81,'student1','MATHS-II','4kas73',172,6,6),(82,'student2','MATHS-II','4kas73',173,2,3),(83,'student2','MATHS-II','4kas73',172,6,6),(84,'student1','ABC','ulq064',174,7,10),(85,'student2','DJDSKVDJK','18die7',175,0,2),(86,'abc','MATHS11','ez1v60',176,7,10);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-20 11:48:57
