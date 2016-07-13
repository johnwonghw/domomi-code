CREATE DATABASE  IF NOT EXISTS `domomidbDev` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `domomidbDev`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: domomidb.cwidfjxj5r7n.us-west-2.rds.amazonaws.com    Database: domomidbDev
-- ------------------------------------------------------
-- Server version	5.6.27-log

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
-- Table structure for table `usersession`
--

DROP TABLE IF EXISTS `usersession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersession` (
  `idsession` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) DEFAULT NULL,
  `sessionkey` varchar(25) DEFAULT NULL,
  `sessiondate` datetime DEFAULT CURRENT_TIMESTAMP,
  `idsocialmediatype` int(11) DEFAULT NULL,
  `userlat` float(10,6) DEFAULT NULL,
  `userlng` float(10,6) DEFAULT NULL,
  `usercity` varchar(45) DEFAULT NULL,
  `usercountry` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idsession`),
  KEY `fk_idusersession_idx` (`iduser`),
  KEY `fk_idsocialmediatype` (`idsocialmediatype`),
  CONSTRAINT `fk_idsocialmediatype` FOREIGN KEY (`idsocialmediatype`) REFERENCES `socialmediatype` (`idsocialmediatype`),
  CONSTRAINT `fk_idusersession` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersession`
--

LOCK TABLES `usersession` WRITE;
/*!40000 ALTER TABLE `usersession` DISABLE KEYS */;
INSERT INTO `usersession` VALUES (156,10,NULL,'2016-07-07 15:51:41',1,0.000000,0.000000,'',''),(157,11,NULL,'2016-07-07 15:54:10',1,0.000000,0.000000,'',''),(158,11,NULL,'2016-07-07 15:55:19',1,0.000000,0.000000,'',''),(159,12,NULL,'2016-07-07 15:56:23',2,0.000000,0.000000,'',''),(160,11,NULL,'2016-07-07 15:56:57',1,0.000000,0.000000,'',''),(161,11,NULL,'2016-07-07 15:57:10',1,0.000000,0.000000,'',''),(162,11,NULL,'2016-07-07 15:57:30',1,0.000000,0.000000,'',''),(163,10,NULL,'2016-07-07 16:07:43',1,0.000000,0.000000,'',''),(164,11,NULL,'2016-07-08 10:11:19',1,0.000000,0.000000,'',''),(165,11,NULL,'2016-07-08 18:09:05',1,0.000000,0.000000,'',''),(166,11,NULL,'2016-07-11 11:27:23',1,0.000000,0.000000,'',''),(167,11,NULL,'2016-07-11 14:17:49',1,0.000000,0.000000,'',''),(168,11,NULL,'2016-07-13 07:39:03',1,0.000000,0.000000,'','');
/*!40000 ALTER TABLE `usersession` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-13  9:06:08
