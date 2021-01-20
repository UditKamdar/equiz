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
-- Table structure for table `join_class`
--

DROP TABLE IF EXISTS `join_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `join_class` (
  `classroom_code` varchar(255) DEFAULT NULL,
  `subject_name` varchar(255) NOT NULL,
  `student_username` varchar(255) NOT NULL,
  PRIMARY KEY (`subject_name`,`student_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `join_class`
--

LOCK TABLES `join_class` WRITE;
/*!40000 ALTER TABLE `join_class` DISABLE KEYS */;
INSERT INTO `join_class` VALUES ('5n83dx','ABC','abc'),('ulq064','ABC','student1'),('5n83dx','ABC','uditkamdar5959'),('ih933t','ANATOMY','abc'),('ih933t','ANATOMY','niyant'),('zk4z34','cpp','abc'),('zk4z34','cpp','abc12345'),('zh74s4','DBMS','abc'),('18die7','DJDSKVDJK','student2'),('013oil','DSVD','abc'),('n33if0','ENGLISH','abc'),('n33if0','ENGLISH','abcd'),('n33if0','ENGLISH','qqq'),('n33if0','ENGLISH','qqqq'),('l176hx','ENGLISH','student1'),('l176hx','ENGLISH','student2'),('n33if0','ENGLISH','uditkamdar5959'),('aw1e87','EVS','abc'),('aw1e87','EVS','abc12345'),('h61al1','FBFDNGFB','abc'),('svy518','FINAL','abc'),('svy518','FINAL','dcdslj'),('ksw721','HELLO','abc'),('ksw721','HELLO','dcdslj'),('71aif5','MATHEMATICS','abc'),('155svr','MATHS','abc'),('4kas73','MATHS-II','abc'),('4kas73','MATHS-II','student1'),('4kas73','MATHS-II','student2'),('1muh16','MATHS1','abc'),('1muh16','MATHS1','m'),('1muh16','MATHS1','student2'),('ez1v60','MATHS11','abc'),('lx578r','TRIAL','niyant');
/*!40000 ALTER TABLE `join_class` ENABLE KEYS */;
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
