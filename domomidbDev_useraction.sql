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
-- Table structure for table `useraction`
--

DROP TABLE IF EXISTS `useraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useraction` (
  `idaction` int(11) NOT NULL AUTO_INCREMENT,
  `idusersession` int(11) DEFAULT NULL,
  `lat` float(10,6) DEFAULT NULL COMMENT 'lat of click/building',
  `lng` float(10,6) DEFAULT NULL COMMENT 'lng of click/building',
  `idbuilding` int(11) DEFAULT NULL,
  `pointtype` varchar(10) CHARACTER SET latin1 DEFAULT NULL COMMENT 'click or zoom',
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idaction`),
  UNIQUE KEY `idclick_UNIQUE` (`idaction`),
  KEY `idunit_idx` (`idbuilding`),
  KEY `fk_idusersession_idx1` (`idusersession`),
  CONSTRAINT `fk_idbuilding` FOREIGN KEY (`idbuilding`) REFERENCES `building` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idusersessionaction` FOREIGN KEY (`idusersession`) REFERENCES `usersession` (`idsession`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=676 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraction`
--

LOCK TABLES `useraction` WRITE;
/*!40000 ALTER TABLE `useraction` DISABLE KEYS */;
INSERT INTO `useraction` VALUES (670,164,49.252666,-123.101036,41,'zoom','2016-07-08 17:12:34'),(671,165,49.248917,-123.115524,14,'click','2016-07-09 01:10:24'),(672,165,49.267727,-123.100433,25,'click','2016-07-09 01:10:57');
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

-- Dump completed on 2016-07-13  9:06:00
