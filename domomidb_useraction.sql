CREATE DATABASE  IF NOT EXISTS `domomidb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `domomidb`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: domomidb.cwidfjxj5r7n.us-west-2.rds.amazonaws.com    Database: domomidb
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
-- Table structure for table `useraction`
--

DROP TABLE IF EXISTS `useraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useraction` (
  `idaction` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `userlnkd` int(11) DEFAULT NULL,
  `userfb` int(11) DEFAULT NULL,
  `idusersession` int(11) DEFAULT NULL,
  `ipaddress` varchar(45) DEFAULT NULL,
  `lat` float(10,6) DEFAULT NULL,
  `lng` float(10,6) DEFAULT NULL,
  `idbuilding` int(11) DEFAULT NULL,
  `pointtype` varchar(10) DEFAULT NULL COMMENT 'click or zoom',
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idaction`,`iduser`),
  UNIQUE KEY `idclick_UNIQUE` (`idaction`),
  KEY `idunit_idx` (`idbuilding`),
  KEY `fk_idusersession_idx` (`iduser`),
  KEY `fk_idusersession_idx1` (`idusersession`),
  CONSTRAINT `fk_idbuilding` FOREIGN KEY (`idbuilding`) REFERENCES `building` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idusersessionaction` FOREIGN KEY (`idusersession`) REFERENCES `usersession` (`idsession`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=548 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraction`
--

LOCK TABLES `useraction` WRITE;
/*!40000 ALTER TABLE `useraction` DISABLE KEYS */;
INSERT INTO `useraction` VALUES (521,1,0,0,1,'',49.233471,-123.115227,5,'click','2016-07-01 04:14:21'),(522,1,0,0,1,'',49.261871,-123.044441,10,'click','2016-07-01 04:15:22'),(523,1,0,0,1,'',49.248917,-123.115524,14,'click','2016-07-01 04:16:31'),(524,1,0,0,1,'',49.265076,-123.137482,17,'click','2016-07-01 04:16:40'),(525,1,0,0,1,'',49.267727,-123.100433,25,'click','2016-07-01 04:16:49'),(526,1,0,0,1,'',49.233471,-123.115227,5,'click','2016-07-04 02:12:34'),(527,1,0,0,1,'',49.248085,-123.185219,4,'click','2016-07-04 02:12:36'),(528,1,0,0,1,'',49.252552,-123.066261,23,'click','2016-07-04 02:12:43'),(529,1,0,0,1,'',49.265076,-123.137482,17,'click','2016-07-04 02:12:49'),(530,1,0,0,1,'',49.274700,-123.069168,21,'click','2016-07-04 02:12:53'),(531,1,0,0,1,'',49.274513,-123.125374,15,'click','2016-07-04 02:12:58'),(532,1,0,0,1,'',49.284863,-123.065910,28,'click','2016-07-04 02:12:59'),(533,1,0,0,1,'',49.277882,-123.110107,3,'click','2016-07-04 02:13:03'),(534,1,0,0,1,'',49.261871,-123.044441,10,'click','2016-07-04 02:13:06'),(535,1,0,0,1,'',49.219364,-123.066200,12,'click','2016-07-04 02:13:11'),(536,1,0,0,1,'',49.215229,-123.117508,11,'click','2016-07-04 02:13:18'),(537,1,0,0,1,'',49.209415,-123.141335,9,'click','2016-07-04 02:13:20'),(538,1,0,0,1,'',49.274513,-123.125374,15,'click','2016-07-04 02:13:43'),(539,1,0,0,1,'',49.278740,-123.100151,6,'click','2016-07-04 02:13:45'),(540,1,0,0,1,'',49.277882,-123.110107,3,'click','2016-07-04 02:13:47'),(541,1,0,0,1,'',49.248917,-123.115524,14,'click','2016-07-04 23:57:32'),(542,1,0,0,1,'',49.286243,-123.140205,13,'click','2016-07-04 23:57:44'),(543,1,0,0,1,'',49.285973,-123.139771,7,'click','2016-07-04 23:57:47'),(544,1,0,0,1,'',49.285172,-123.134094,8,'click','2016-07-04 23:57:50'),(545,1,0,0,1,'',49.248085,-123.185219,4,'click','2016-07-07 15:13:46'),(546,1,0,0,1,'',49.265076,-123.137482,17,'click','2016-07-07 15:13:52'),(547,1,0,0,1,'',49.252552,-123.066261,23,'click','2016-07-07 15:14:03');
/*!40000 ALTER TABLE `useraction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-13  9:05:45
