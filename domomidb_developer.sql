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
-- Table structure for table `developer`
--

DROP TABLE IF EXISTS `developer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `developer` (
  `iddeveloper` int(11) NOT NULL,
  `companyid` int(11) DEFAULT NULL,
  `accesscode` varchar(6) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `postalcode` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phonenumber` varchar(9) DEFAULT NULL,
  `passw` varchar(15) NOT NULL,
  `logo` mediumblob,
  PRIMARY KEY (`iddeveloper`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developer`
--

LOCK TABLES `developer` WRITE;
/*!40000 ALTER TABLE `developer` DISABLE KEYS */;
INSERT INTO `developer` VALUES (1,1,NULL,'External Developer',NULL,NULL,NULL,NULL,'',NULL),(2,NULL,NULL,'Coromandel Properties',NULL,NULL,NULL,NULL,'',NULL),(3,NULL,NULL,'Aquilini Development and Construction',NULL,NULL,NULL,NULL,'',NULL),(4,NULL,NULL,'TBT Ventures Limited Partnership',NULL,NULL,NULL,NULL,'',NULL),(5,NULL,NULL,'Qualex-Landmark',NULL,NULL,NULL,NULL,'',NULL),(6,NULL,NULL,'BlueSky Properties',NULL,NULL,NULL,NULL,'',NULL),(7,NULL,NULL,'Westbank',NULL,NULL,NULL,NULL,'',NULL),(8,NULL,NULL,'Decorus Developments',NULL,NULL,NULL,NULL,'',NULL),(9,NULL,NULL,'South Street Development Group',NULL,NULL,NULL,NULL,'',NULL),(10,NULL,NULL,'Prospero International Realty Inc.',NULL,NULL,NULL,NULL,'',NULL),(11,NULL,NULL,'Reliance Properties',NULL,NULL,NULL,NULL,'',NULL),(12,NULL,NULL,'Arnomatis Architecture',NULL,NULL,NULL,NULL,'',NULL),(13,NULL,NULL,'Wall Financial',NULL,NULL,NULL,NULL,'',NULL),(14,NULL,NULL,'SHAPE Architecture',NULL,NULL,NULL,NULL,'',NULL),(15,NULL,NULL,'Westbank',NULL,NULL,NULL,NULL,'',NULL),(16,NULL,NULL,'Wesgroup',NULL,NULL,NULL,NULL,'',NULL),(17,NULL,NULL,'EDGAR Development Corp.',NULL,NULL,NULL,NULL,'',NULL),(18,NULL,NULL,'Cornerstone Architecture',NULL,NULL,NULL,NULL,'',NULL),(19,NULL,NULL,'Onni Group of Companies',NULL,NULL,NULL,NULL,'',NULL),(20,NULL,NULL,'Cressey',NULL,NULL,NULL,NULL,'',NULL),(21,NULL,NULL,'Caulfield Rock Capital',NULL,NULL,NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `developer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-13  9:05:56
