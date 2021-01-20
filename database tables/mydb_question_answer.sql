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
-- Table structure for table `question_answer`
--

DROP TABLE IF EXISTS `question_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_answer` (
  `quiz_id` int NOT NULL,
  `question_no` int NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `option_1` varchar(255) DEFAULT NULL,
  `option_2` varchar(255) DEFAULT NULL,
  `option_3` varchar(255) DEFAULT NULL,
  `option_4` varchar(255) DEFAULT NULL,
  `correct_option` varchar(255) DEFAULT NULL,
  `marks` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`quiz_id`,`question_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_answer`
--

LOCK TABLES `question_answer` WRITE;
/*!40000 ALTER TABLE `question_answer` DISABLE KEYS */;
INSERT INTO `question_answer` VALUES (7,1,'hello','a','b','c','d','a',2,'2020-05-15 18:52:16'),(8,1,'hello','a','b','c','d','d',2,'2020-05-15 19:03:24'),(9,2,'hello','a','b','c','d','ji',2,'2020-05-15 19:10:31'),(9,3,'yhyh','a','d','ij','ji','ji',3,'2020-05-15 19:10:51'),(11,0,'hello','a','b','c','d','a',4,'2020-05-15 22:47:26'),(12,0,'hello how are u','a','b','c','d','a',4,'2020-05-15 22:54:47'),(13,1,'yhyh','a','b','c','d','a',2,'2020-05-15 22:58:57'),(14,1,'hello how are u','asad','fvgv','hubuub','a','a',2,'2020-05-15 23:03:31'),(16,1,'yhyh','a','ji','hubuub','a','b',4,'2020-05-15 23:13:26'),(16,2,'yhyh','a','fvgv','hubuub','a','b',2,'2020-05-15 23:13:46'),(16,3,'yhyh','y','ji','c','ji','b',2,'2020-05-15 23:14:08'),(17,1,'yhyh','a','fvgv','hubuub','a','d',4,'2020-05-16 03:24:03'),(17,2,'hello','y','fvgv','hubuub','ji','ji',3,'2020-05-16 03:24:24'),(17,3,'hello how are u','y','ji','ij','a','y',3,'2020-05-16 03:24:43'),(18,1,'hello','a','b','c','d','b',2,'2020-05-16 03:36:11'),(18,2,'hello','a','b','ij','a','a',2,'2020-05-16 03:36:34'),(18,3,'hello how are u','ji','b','c','a','y',2,'2020-05-16 03:38:37'),(18,4,'ddsbusbusbdasjdbsaujb how are dsndscdsvndslvndvdsnvkldsn nvdlvndnvdkvn nvdnvdljvbn','y','b','hubuub','a','y',2,'2020-05-16 04:05:30'),(19,1,'hello','a','ji','hubuub','ji','y',2,'2020-05-16 17:35:10'),(19,2,'hello how are u','a','fvgv','ij','ji','y',4,'2020-05-16 17:36:02'),(20,1,'hello','a','b','c','d','d',4,'2020-05-16 17:40:21'),(20,2,'hello how are u','a','b','c','d','ji',4,'2020-05-16 17:40:45'),(21,1,'dfxfcgc','b','b','nbn','n ','n',3,'2020-06-04 03:50:04'),(21,2,'hello','a','ji','nbn','ji','b',4,'2020-06-04 03:50:44'),(25,1,'3+2','1','2','5','4','5',3,'2020-06-22 04:12:36'),(25,2,'5*5','1','20','25','21','25',4,'2020-06-22 04:13:04'),(25,3,'4+3+2','4','9','8','2','9',5,'2020-06-22 04:13:52'),(27,1,'hello','hi','hey','heyaa','dvd','hi',2,'2020-06-26 03:55:40'),(27,2,'3+2','5','4','4','3','5',3,'2020-06-26 03:56:11'),(27,3,'djvnjvnjd','1','2','3','4','4',5,'2020-06-26 03:56:47'),(28,1,'hello how are u','fine','well','good','no','fine',2,'2020-06-27 03:32:16'),(28,2,'4-2','1','2','0','4','2',3,'2020-06-27 03:32:38'),(32,1,'efegrgr','dcdcfdfddg','2','3','4','4',15,'2020-06-29 01:50:56'),(32,2,'gfdbfb','1','2','3','4','1',15,'2020-06-29 01:51:11'),(33,1,'5-2','1','2','3','4','3',5,'2020-06-29 17:31:14'),(33,2,'fhfh','acw','ace','afdfgq','qcwc','qcwc',5,'2020-06-29 17:33:19'),(35,1,'cndsncdsnl','1','2','3','4','1',1,'2020-07-01 04:44:10'),(35,2,'nvdsnfsndsvndsn','2','3','4','5','5',1,'2020-07-01 04:44:23'),(35,3,'SDNCDSVDSGIV','1','12','13','14','12',1,'2020-07-01 04:44:36'),(37,1,'dvd','1','1','1','2','2',1,'2020-07-01 04:48:30'),(38,1,'dd','1','2','3','4','2',2,'2020-07-06 17:15:36'),(38,2,'hello','a','1','2','3','2',4,'2020-07-06 17:15:55'),(40,1,'jirjfidindindivndidnidsnisncicnsionindsindsindsicnivndivndsivndivndivndivdnzvidvndivndivnzdivnzdfibnzdfibnzdfibndfvinzdfvindinivndfibndfivndivndindvndvindivndvndvndvndivn','12323','ckncxknvnv','jirjfidindindivndidnidsnisncicnsionindsindsindsicnivndivndsivndivndivndivdnzvidvndivndivnzdivnzdfibnzdfibnzdfibndfvinzdfvindinivndfibndfivndivndindvndvindivndvndvndvndivn','jirjfidindindivndidnidsnisncicnsionindsindsindsicnivndivndsivndivndivndivdnzvidvndivndivnzdivnzdfibnzdfibnzdfibndfvinzdfvindinivndfibndfivndivndindvndvindivndvndvndvndivn','1223',4,'2020-07-12 23:29:53'),(40,2,'hello','1','1','3','4','5',3,'2020-07-12 23:30:23'),(40,3,'hello','1','1','3','4','5',3,'2020-07-12 23:33:46'),(50,1,'ddvd','wd','sad','df','de','sd',1,'2020-07-13 02:01:08'),(50,2,'fefe','fdewf','df','sfs','EFE','EFE',12,'2020-07-13 02:01:31'),(50,3,'fefe','fdewf','df','sfs','EFE','EFE',12,'2020-07-13 02:02:34'),(50,4,'fefe','fdewf','df','sfs','EFE','EFE',12,'2020-07-13 02:02:45'),(50,5,'fefe','fdewf','df','sfs','EFE','EFE',12,'2020-07-13 02:03:18'),(50,6,'fefe','fdewf','df','sfs','EFE','EFE',12,'2020-07-13 02:03:57'),(50,7,'fefe','fdewf','df','sfs','EFE','EFE',12,'2020-07-13 02:04:18'),(50,8,'fefe','fdewf','df','sfs','EFE','EFE',12,'2020-07-13 02:05:17'),(50,9,'fefe','fdewf','df','sfs','EFE','EFE',12,'2020-07-13 02:05:44'),(66,1,'ewrewr','eew','ew','erw','erwer','ewrr',1,'2020-07-18 16:45:28'),(73,1,'fevrgerikj','12','12','21','13','312',1,'2020-07-18 19:31:10'),(74,1,'hbhdsbvhds','','','','','',1,'2020-07-18 19:41:45'),(74,2,'FFE','DVDVD','EWWC','FVV','BDB','DGG',1,'2020-07-18 19:42:09'),(74,3,'FFE','DVDVD','EWWC','FVV','BDB','DGG',1,'2020-07-18 19:42:22'),(75,1,'VDVD','SDV','FVDFV','FDVFDV','FBFBFVFV','BFBGF',1,'2020-07-19 16:43:38'),(76,1,'gergrhr','ddgd','fgfg','dfdb','ggf','ggfg',1,'2020-07-21 09:45:51'),(77,1,'gfhdf','fefew','dfv','vv','vew','rgrdg',1,'2020-07-21 10:20:13'),(145,1,'hdvhdvjhdj','scnsvjdsnvjdsnvj','kdmckdsmkvdk','mdvkdmvkdmvk','vfdmbmdfkbmfkm',NULL,NULL,'2020-07-22 22:53:03'),(146,1,'ndfdkvndfkbndfbkndfbkdfn','vkdfnvkdfn','mdkvmd','mdfbkdmfbk','mfkbmdkm','fdbmkbm;',2,'2020-07-22 22:55:00'),(147,1,'vkmdkvndfkn','frfe','efef','eff','rreg','rfegf',NULL,'2020-07-23 16:37:54'),(147,2,'gregr','rgerg','greg','rge','regeg','erge',1,'2020-07-23 16:38:12'),(148,1,'what is anatomy','foolish','bad','csdjdnjvdsnjvndsvjndsjvsnjsncjsnjdsnjs bdsusbdsdbvbdsvjbdvjdsbbvsbvjsdbv bsjvbdsjvbdsjvbdsjvbdsjvbsdj','hsudshjdsvsdjvbdsjvbdsjbdsvjsbdvjdsbvjsvsjnjdsndsjn','bad',NULL,'2020-07-23 19:59:20'),(148,2,'lsdfkdnvkdsnvsdkvndskvdsnkvsndklvndskvndskvndskvnskvndskvndskvndsvkdnvkdsvndskvnksvndskvn','fsdgdgdfgd','q','ewfeigjvknkvnkvnkvnekvnekvnerkvnekvnekvnekrvnek','fdkvdfnbkfmbkdfmbkdfnbkfnbkdfnbfkdnbfdkbndfkbndfnfbn','q',2,'2020-07-23 19:59:55'),(148,3,'nkvndfklvndfkvndfkvndfkvndfkvdnvkdfnvdfkvndfkvnkfvndkvndfvk','efiehjfieinerirnefikvnrevjnevr','fneignreunvveriuvneivnei','bbbb','jerjvervnerdn','bbbb',2,'2020-07-23 20:00:24'),(149,1,'hello how are uyogkdfodsmsc cjncsjcnsjdn','jijicsdcsdckndscdsk','huudnusnsd i am freat','cdnscndsjncscnkd','aaaa','aaaa',2,'2020-07-23 22:53:54'),(149,2,'dnsdsmndsmdsm','cscscsd cs ','cdsnjdsjdsn','bbbb','dcdsdsvdv','bbbb',4,'2020-07-23 22:54:15'),(149,3,'dcnsjcndjcnjn','cjdsncjnsdcjdsncjsdncjdsncsjcnsjcnsjcnsj','heeeeeeeee djncsdjcnsdjcnsjcnsjcnsjcnsjcnsjcnscjsncjscnjcsnjcncjsncjsncjscncjncjnjscnjcnscjnscjsncj','csnjcnsjcnsjcnscjsncjsncjsncjscnjsnjcnsjcnscjnsjnsjncjscncs','aaa','aaa',3,'2020-07-23 22:54:53'),(150,1,'hellllo njcndsjnjc','aBcD','B','B','V','V',NULL,'2020-07-24 03:10:32'),(151,1,'KMKDVMDKVMD','A','B','C','D','A',NULL,'2020-07-24 03:14:52'),(152,1,'ddmkm','cdsvdvv','dvd','a','acv','a',NULL,'2020-07-24 03:16:00'),(152,2,'dvjdvnj','saxas','vc','cd','cc','cc',NULL,'2020-07-24 03:16:27'),(153,1,'dmkdmc','dd','a','c','d','d',NULL,'2020-07-24 03:26:51'),(154,1,'abc','a','v','s','a','s',NULL,'2020-07-24 03:31:12'),(154,2,'','','','','','',NULL,'2020-07-24 03:31:24'),(156,1,'a','a','a','a','a','a',2,'2020-07-24 03:33:00'),(157,1,'fddf','a','v','x','c','c',2,'2020-07-24 03:40:27'),(159,1,'hello how are u','fine','well','good','all of the above','all of the above',2,'2020-07-24 17:05:53'),(159,2,'2+2','2','3','4','5','4',2,'2020-07-24 17:06:11'),(160,1,'helelll','aaa','bbb','c','d','aaa',3,'2020-07-24 19:33:51'),(161,1,'vmdkvm','q','q','we','ww','ww',2,'2020-07-24 19:57:00'),(162,1,'dckmkvmdk','1','2','3','4','1',3,'2020-07-24 19:58:11'),(165,1,'4+5','2','9','8','4','9',3,'2020-07-24 22:37:52'),(165,2,'3*2','1','2','6','4','6',4,'2020-07-24 22:38:14'),(165,3,'hello how are u','2','1','good','dkmk','good',1,'2020-07-24 22:38:37'),(166,1,'5+5','10','4','6','3','10',5,'2020-07-24 23:03:38'),(166,2,'2*4*4','21','20','201','32','32',5,'2020-07-24 23:04:05'),(167,1,'HELLO how are u?','good','well','fine','all the above','all the above',2,'2020-07-25 02:53:45'),(167,2,'i am','person','animal','none','both','person',2,'2020-07-25 02:54:20'),(168,1,'What is the capital of India?','Delhi','Mumbai','Chennai','Kolkata','Delhi',2,'2020-07-25 03:02:10'),(168,2,'\"0\" was invented by ','Arrya','ahmed','Aryabhatt','none of the above','Aryabhatt',4,'2020-07-25 03:03:38'),(168,3,'Origin of coronavirus was from which place?','Ahmedabad','Wuhan','Beijing','tokyo','Wuhan',5,'2020-07-25 03:05:05'),(169,1,'sdncdiscn','dsDSD','eew','qq','dwc','qq',1,'2020-07-25 04:29:21'),(170,1,'2+3','4','5','3','1','5',2,'2020-07-25 14:35:42'),(170,2,'1+2+3','5','1','4','6','6',2,'2020-07-25 14:36:00'),(171,1,'hello! how are u?','All well','good','fine','all of above','all of above',3,'2020-08-13 19:07:13'),(171,2,'What is capital of India?','Mumbai','Delhi','Ahmedabad','Anand','Delhi',4,'2020-08-13 19:08:38'),(171,3,'what is at 2nd position in world in terms of population?','China','India','US','none','India',3,'2020-08-13 19:09:36'),(172,1,'2*5','3','5','8','10','10',3,'2020-08-13 19:33:43'),(172,2,'5%2','2.1','2.5','2.6','2.8','2.5',3,'2020-08-13 19:34:10'),(173,1,'2+3','2','3','4','5','5',1,'2020-08-13 19:37:24'),(173,2,'2%2','1','2','3','4','1',1,'2020-08-13 19:37:38'),(173,3,'3*3','6','8','9','10','9',1,'2020-08-13 19:37:55'),(174,1,'2+3','2','3','4','5','5',3,'2020-08-14 13:22:29'),(174,2,'2*2','1','2','3','4','4',4,'2020-08-14 13:22:47'),(174,3,'4+5+6','10','11','12','15','15',3,'2020-08-14 13:23:13'),(175,1,'f;fejglj;','o;jo','f;','fewo;n','o;cn',';owlenv;l',2,'2020-08-16 18:13:48'),(176,1,'5+5','10','2','40','11','10',3,'2020-09-24 19:00:08'),(176,2,'5*5-5','10','20','30','0','20',4,'2020-09-24 19:00:32'),(176,3,'1+2+3','5','6','7','8','6',3,'2020-09-24 19:00:52');
/*!40000 ALTER TABLE `question_answer` ENABLE KEYS */;
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
