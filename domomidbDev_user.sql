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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `fname` varchar(25) DEFAULT NULL,
  `lname` varchar(25) DEFAULT NULL,
  `telephone` varchar(9) DEFAULT NULL,
  `address` varchar(35) DEFAULT NULL,
  `postalcode` varchar(7) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `province` varchar(15) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `iduserfb` int(11) DEFAULT NULL,
  `iduserlnkd` int(11) DEFAULT NULL,
  PRIMARY KEY (`iduser`,`email`),
  KEY `fk_iduserfb_idx` (`iduserfb`),
  KEY `fk_iduserlnkd_idx` (`iduserlnkd`),
  CONSTRAINT `fk_iduserfb` FOREIGN KEY (`iduserfb`) REFERENCES `userfb` (`iduserfb`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_iduserlnkd` FOREIGN KEY (`iduserlnkd`) REFERENCES `userlnkd` (`iduserlnkd`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Test@domomi','teste','domomi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'tatianester@gmail.com','Tatiane','Ferreira',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-07 15:51:41','2016-07-07 16:07:43',15,NULL),(11,'','Jacob','Steiner',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-07 15:54:10','2016-07-13 07:39:03',16,NULL),(12,'jbarrettsteiner@gmail.com','Jacob','',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-07 15:56:23','2016-07-07 15:56:23',NULL,45);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-13  9:06:09
