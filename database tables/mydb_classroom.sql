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
-- Table structure for table `classroom`
--

DROP TABLE IF EXISTS `classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classroom` (
  `class_id` int NOT NULL AUTO_INCREMENT,
  `teacher_id` varchar(255) DEFAULT NULL,
  `classroom_code` varchar(255) DEFAULT NULL,
  `subject_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`class_id`),
  UNIQUE KEY `classid_UNIQUE` (`classroom_code`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom`
--

LOCK TABLES `classroom` WRITE;
/*!40000 ALTER TABLE `classroom` DISABLE KEYS */;
INSERT INTO `classroom` VALUES (1,NULL,'3nu15o','EVS'),(2,NULL,'qd8i77','EVS'),(3,NULL,'zk4z34','cpp'),(4,NULL,'r884ke','cpp'),(5,NULL,'r412vq',NULL),(6,NULL,'s078ra',NULL),(7,NULL,'s2ch84',NULL),(8,NULL,'86w7wx',NULL),(9,NULL,'s6vm48',NULL),(10,NULL,'982omc',NULL),(11,NULL,'78y3zh',NULL),(12,NULL,'ay092l',NULL),(13,NULL,'llt829',NULL),(14,NULL,'yaw603',NULL),(15,NULL,'6eah01',NULL),(16,NULL,'50x1on',NULL),(17,NULL,'091zcn',NULL),(18,NULL,'05s4xa',NULL),(19,NULL,'v3i7o9',NULL),(20,NULL,'9mce31',NULL),(21,NULL,'zy4f21',NULL),(22,NULL,'hia083',NULL),(23,NULL,'f9ck98','hello'),(24,NULL,'uf49c8','maths'),(25,NULL,'d033zu','maths'),(26,NULL,'18y5hy','EVS'),(27,NULL,'673luh','ABC'),(28,NULL,'287mwi','ABC'),(29,NULL,'r3r82i','ABC'),(30,NULL,'950axv','ABC'),(31,NULL,'o7q3h4','ABC'),(32,NULL,'7xw4k5','ABC'),(33,NULL,'527ofr','ABC'),(34,NULL,'q34yl1','ABC'),(35,NULL,'uaw806','ABC'),(36,NULL,'94nk5l','ABC'),(37,NULL,'4yus81',''),(38,NULL,'950acz','MATHS'),(39,NULL,'n0ov12','DEF'),(40,NULL,'89fnz5','DEF'),(41,NULL,'dk620i',''),(42,NULL,'e5cq28',''),(43,NULL,'r4m5e9','ZXC'),(44,NULL,'d42y5l','CPP'),(45,NULL,'c8e51r','DBMS'),(46,NULL,'r965kz','MATHS'),(47,NULL,'2d9r8h','ABC'),(48,NULL,'w49d8e','DEF'),(49,'3','xrm722','AZQ'),(50,'3','mdq399','QWE'),(51,'[object Object]','8rff62','QWE'),(52,'[object Object]','vk668r','QWE'),(53,'3','zm3d44','MATHS'),(54,'3','ov9z53','QWE'),(55,'3','13ivi4','DEF'),(56,'1','3ms9n4',''),(57,'3','8zas33','ABC'),(58,'3','h6w0t0','ABC'),(59,'3','42wt7m','DSA'),(60,'4','n761ih','AI'),(61,'4','mc8i27','DBMS'),(62,'3','h79x3c','DEF'),(63,'3','105uvq','MATHS'),(64,'4','303zfs','QWE'),(65,'4','8zdy24','MATHS'),(66,'4','k952dw','DBMS'),(67,'3','o0m9f9','DEF'),(68,'3','iz44n5','QWE'),(69,'3','99ri1t','ABC'),(70,'3','83xd3z','DBMS'),(71,'3','02lf2k','MATHS'),(72,'3','0usq06','MATHS'),(73,'3','41hxx8','QWE'),(74,'4','u8w9e0','ABC'),(75,'4','oxa771','DBMS'),(76,'4','318huu','EVS'),(77,'3','v88lq7','DBMS'),(78,'4','3n8cu5','ABC'),(79,'4','ql594t','MATHS'),(80,'4','zh74s4','DBMS'),(81,NULL,'h1kv83','DEF'),(82,NULL,'543lqz','EVS'),(83,NULL,'f33fd4','MATHS'),(84,NULL,'amw830','ABC'),(85,NULL,'r9s60e','QWE'),(86,NULL,'574wzd','DEF'),(87,NULL,'in055t','QWE'),(88,NULL,'1v9c7f','DBMS'),(89,NULL,'903our','EVS'),(90,NULL,'sf5h28','QWE'),(91,NULL,'t91dx9','DEF'),(92,NULL,'12xwr6','MATHS'),(93,NULL,'5d11um','ABC'),(94,NULL,'t39z2w','ABC'),(95,'9','986wlv','DBMS'),(96,'9','aw1e87','EVS'),(97,'10','71aif5','MATHEMATICS'),(98,'10','488mfn','MATHS'),(99,'12','4vxy17','DBMS'),(100,'12','7m36ql','ABC'),(101,'12','svy518','FINAL'),(102,'12','595vxa','DEF'),(103,'12','v21q4c','VFBDF'),(104,'15','3t9um3','QWE'),(105,'12','rqr463','ABCDEF'),(106,'12','7rw6y7','ABCDEFGHI'),(107,'12','s8uv07','ABCDEFGHI'),(108,'12','482ext','ABCDEFGHI'),(109,'12','7e37vl','ABCDEFGHI'),(110,'12','dsa894','12'),(111,'12','mu8y91','QWERT'),(112,'12','r3q45w','ABCDE'),(113,'12','eq858c','CDGDFF'),(114,'12','2o0mk5','ABCDEFGMFGMN'),(115,'12','daz779','12345'),(116,'12','t5h85d','QWE123'),(117,'12','56n0tz','DFDFBF'),(118,'12','oze376','2123R3D'),(119,'12','da3y33','EVS1234'),(120,'12','2n4se5','DFSDFDSVDS'),(121,'12','56s9dz','XCXCXC'),(122,'12','cf525l','VDVDFBFDB'),(123,'12','m1kk43','EVS'),(124,'18','403uit','ABC'),(125,'18','z01k9m','DBMS'),(126,'18','887kca','DEF'),(127,'18','os0c66','MATHS'),(128,'18','70h4nz','QWE'),(129,'18','omi433','ABC'),(130,'18','0k2xs5','BFJBFEWUB'),(131,'18','0ss0w9','VDNKLENFK'),(132,'18','yeo081','MATHS'),(133,'18','rd77u4','QWE123'),(134,'18','wh20c9','OIHIHIGUIGU'),(135,'18','23y3nf','HGYUUYGU'),(136,'18','242and','HGUIGGIU'),(137,'18','zqk935','EVS'),(138,'18','ks6f46','DBMS11'),(139,'18','wr906w','EVS'),(140,'18','ezi997','ABC'),(141,'18','05v5tf','DBMSERDF'),(142,'18','t444fi','RRH'),(143,'18','553owh','GDFHDRH'),(144,'18','y4qq92','VFBDFBDFB'),(145,'18','0n1sz8','IUI'),(146,'18','593nuz','DGDBDF'),(147,'18','38y8xy','DSDVDSSVDV'),(148,'18','868sfv','DSCDSVD'),(149,'18','5nkh04','EWERTREE'),(150,'18','e9i5i7','DBMS'),(151,'18','ksw721','HELLO'),(152,'19','ih933t','ANATOMY'),(153,'20','ohw468','MEDICAL'),(154,'20','san265','CKSDMDSKM'),(155,'20','28zr8a','DCDVD'),(156,'20','tun856','ABC'),(157,'20','538myh','MKVMD'),(158,'20','013oil','DSVD'),(159,'20','h61al1','FBFDNGFB'),(160,'19','5n83dx','ABC'),(161,'19','lx578r','TRIAL'),(162,'22','155svr','MATHS'),(163,'22','n33if0','ENGLISH'),(164,'23','1muh16','MATHS1'),(165,'24','l176hx','ENGLISH'),(166,'24','4kas73','MATHS-II'),(167,'25','ulq064','ABC'),(168,'25','18die7','DJDSKVDJK'),(169,'26','ez1v60','MATHS11');
/*!40000 ALTER TABLE `classroom` ENABLE KEYS */;
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
