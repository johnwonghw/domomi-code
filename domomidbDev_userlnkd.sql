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
-- Table structure for table `userlnkd`
--

DROP TABLE IF EXISTS `userlnkd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlnkd` (
  `iduserlnkd` int(11) NOT NULL AUTO_INCREMENT,
  `idlnkd` varchar(255) NOT NULL,
  `profileurl` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `pictureurl` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `headline` varchar(75) DEFAULT NULL,
  `idindustry` int(3) DEFAULT NULL,
  `numconnections` int(3) DEFAULT NULL,
  `positiontitle` varchar(75) DEFAULT NULL,
  `positioncurrent` tinyint(1) DEFAULT NULL,
  `idcompany` int(11) DEFAULT NULL,
  `location` varchar(70) DEFAULT NULL,
  `countrycode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iduserlnkd`,`idlnkd`),
  KEY `idlinkcompany_idx` (`idcompany`),
  KEY `idlnkdindustry_idx` (`idindustry`),
  CONSTRAINT `idlinkcompany` FOREIGN KEY (`idcompany`) REFERENCES `lnkdcompany` (`idlnkdcompany`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idlnkdindustry` FOREIGN KEY (`idindustry`) REFERENCES `lnkdindustry` (`idlnkdindustry`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlnkd`
--

LOCK TABLES `userlnkd` WRITE;
/*!40000 ALTER TABLE `userlnkd` DISABLE KEYS */;
INSERT INTO `userlnkd` VALUES (45,'Ui2_n9TpKt','https://www.linkedin.com/in/steinerjacob','https://media.licdn.com/mpr/mprx/0_xrBNYABTfPK2YZ9TxzNbYt8_DnnuyjbTgN_IYtQt-PCg_MK319bZr--yi49t0VQSY1vElz49rb-N','2016-07-07 15:56:23','2016-07-07 15:56:23','Real Estate Manager at MOSAIC Homes',126,500,'Real Estate Manager',1,2982848,'Canada','ca');
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

-- Dump completed on 2016-07-13  9:06:22
