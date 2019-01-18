-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: placement_and_training
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_register`
--

DROP TABLE IF EXISTS `tbl_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_register` (
  `int_registerid` int(11) NOT NULL AUTO_INCREMENT,
  `str_userid` varchar(45) DEFAULT NULL,
  `str_password` varchar(45) DEFAULT NULL,
  `str_email` varchar(45) DEFAULT NULL,
  `str_otp` varchar(45) DEFAULT '123',
  `str_first_name` varchar(45) DEFAULT NULL,
  `str_middle_name` varchar(45) DEFAULT NULL,
  `str_last_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`int_registerid`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_register`
--

LOCK TABLES `tbl_register` WRITE;
/*!40000 ALTER TABLE `tbl_register` DISABLE KEYS */;
INSERT INTO `tbl_register` VALUES (10,NULL,NULL,NULL,'123',NULL,NULL,NULL),(11,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(12,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(13,'741852','pa','doshi.paril@yahoo.com','123','ikjhugy','jkh','jkhgf'),(14,'741852','pa','doshi.paril@yahoo.com','123','ikjhugy','jkh','jkhgf'),(15,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(16,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(17,NULL,NULL,NULL,'123',NULL,NULL,NULL),(18,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(19,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(20,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(21,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(22,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(23,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(24,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(25,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(26,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(27,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(28,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(29,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(30,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(31,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(32,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(33,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(34,'130020107019','p','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(35,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(36,NULL,NULL,NULL,'123',NULL,NULL,NULL),(37,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(38,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(39,'130020107019','ps','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(40,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(41,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(42,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(43,'130020107019','as','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(44,'130020107019','pa','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi'),(45,'130020107019','ps','doshi.paril@yahoo.com','123','Paril','Sunilkumar','Doshi');
/*!40000 ALTER TABLE `tbl_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_request_letter`
--

DROP TABLE IF EXISTS `tbl_request_letter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_request_letter` (
  `int_requestid` int(11) NOT NULL AUTO_INCREMENT,
  `str_companyname` varchar(45) NOT NULL,
  `str_url` varchar(45) NOT NULL,
  `str_hrname` varchar(45) NOT NULL,
  `str_address` varchar(45) NOT NULL,
  `str_contactno` varchar(45) NOT NULL,
  `str_flag` varchar(45) NOT NULL,
  `str_enno` varchar(45) NOT NULL,
  `date_createddate` datetime NOT NULL,
  PRIMARY KEY (`int_requestid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_request_letter`
--

LOCK TABLES `tbl_request_letter` WRITE;
/*!40000 ALTER TABLE `tbl_request_letter` DISABLE KEYS */;
INSERT INTO `tbl_request_letter` VALUES (1,'MassInfoLine','www.massinfoline.com','Paril Dosi','CG Road','9409406975','Allow','130020107019','2018-04-23 20:48:18'),(2,'Google','www.google.com','Adesh','California','1963852741','Allow','999999','2018-05-06 19:18:16');
/*!40000 ALTER TABLE `tbl_request_letter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_studdet`
--

DROP TABLE IF EXISTS `tbl_studdet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_studdet` (
  `int_studentid` int(11) NOT NULL AUTO_INCREMENT,
  `int_enno` varchar(45) NOT NULL,
  `str_firstname` varchar(45) NOT NULL,
  `str_middlename` varchar(45) NOT NULL,
  `str_lastname` varchar(45) NOT NULL,
  `date_birthdate` date NOT NULL,
  `str_email` varchar(45) NOT NULL,
  `str_contactno` varchar(45) NOT NULL,
  `str_password` varchar(45) NOT NULL,
  `date_createdate` datetime NOT NULL,
  `str_type` varchar(45) NOT NULL,
  `str_branch` varchar(45) NOT NULL,
  PRIMARY KEY (`int_studentid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_studdet`
--

LOCK TABLES `tbl_studdet` WRITE;
/*!40000 ALTER TABLE `tbl_studdet` DISABLE KEYS */;
INSERT INTO `tbl_studdet` VALUES (1,'130020107019','Paril','Sunilkumar','Doshi','2018-04-08','doshi.paril@yahoo.com','9409406975','Paril','2018-04-08 15:25:25','student','Computer Engineering'),(2,'001','Adesh','Chunilal','Pansuriya','1997-06-06','adeshpansuriya97@gmail.com','8200217275','Adesh','2018-04-16 19:58:00','admin','Placement'),(8,'130020107017','Aditya','Ashok','Dave','1996-12-28','doshi.paril@yahoo.com','9586524343','123','2018-04-20 21:47:37','student','Information Technology'),(9,'999999','Hardik','ChanduBhai','Jogani','1996-11-28','haven2332@gmail.com','8200434215','123','2018-05-06 19:13:15','student','Information Technology'),(10,'14012011032','Paresh','poou','DAVE','2018-05-26','adeshpansuriya97@gmail.com','9409406975','123','2018-05-12 11:55:33','student','Computer Engineering');
/*!40000 ALTER TABLE `tbl_studdet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-12 14:35:32
