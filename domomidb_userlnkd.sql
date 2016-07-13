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
-- Table structure for table `userlnkd`
--

DROP TABLE IF EXISTS `userlnkd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlnkd` (
  `iduserlnkd` int(11) NOT NULL AUTO_INCREMENT,
  `idlnkd` varchar(255) NOT NULL,
  `fname` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `lname` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `telephone` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `address` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `postalcode` varchar(7) CHARACTER SET latin1 DEFAULT NULL,
  `city` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `province` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `country` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `profileurl` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `pictureurl` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `headline` varchar(75) DEFAULT NULL,
  `industry` int(3) DEFAULT NULL,
  `numconections` int(3) DEFAULT NULL,
  `positiontile` varchar(75) DEFAULT NULL,
  `positioncurrent` tinyint(1) DEFAULT NULL,
  `idcompany` int(11) DEFAULT NULL,
  PRIMARY KEY (`iduserlnkd`,`idlnkd`),
  KEY `idlinkcompany_idx` (`idcompany`),
  KEY `idlnkdindustry_idx` (`industry`),
  CONSTRAINT `idlinkcompany` FOREIGN KEY (`idcompany`) REFERENCES `lnkdcompany` (`idlnkdcompany`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idlnkdindustry` FOREIGN KEY (`industry`) REFERENCES `lnkdindustry` (`idlnkdindustry`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlnkd`
--

LOCK TABLES `userlnkd` WRITE;
/*!40000 ALTER TABLE `userlnkd` DISABLE KEYS */;
INSERT INTO `userlnkd` VALUES (1,'Wz5NVO7gQf','Tatiane','Tosta Ferreira','tatianester@gmail.com',NULL,NULL,NULL,'Vancouver, Cana',NULL,'ca','https://www.linkedin.com/in/tatianetosta','https://media.licdn.com/mpr/mprx/0_-NRfZkIpZr-SA6H0BK3mrKlpy9TSlXXagL_TgAFpMvm2qq9YYN3fPFQpR-lKt6kajL_7P3LyrlluBhF14FO1KKeKvllDBht-OFO2UlggYKkTg9WmtneCRLPuzXwjOhLiBksipiFjTFu','2016-06-14 09:51:12','2016-06-15 09:18:15',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `userlnkd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-13  9:05:53
