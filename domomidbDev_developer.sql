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
INSERT INTO `developer` VALUES (1,1,'sft7qf','External Developer',NULL,NULL,NULL,NULL,'',NULL),(2,NULL,'9zzolx','Coromandel Properties',NULL,NULL,NULL,NULL,'',NULL),(3,NULL,'02baky','Aquilini Development and Construction',NULL,NULL,NULL,NULL,'',NULL),(4,NULL,'ag7gb9','TBT Ventures Limited Partnership',NULL,NULL,NULL,NULL,'',NULL),(5,NULL,'cwel8f','Qualex-Landmark',NULL,NULL,NULL,NULL,'',NULL),(6,NULL,'6do647','BlueSky Properties',NULL,NULL,NULL,NULL,'',NULL),(7,NULL,'kphqia','Westbank',NULL,NULL,NULL,NULL,'',NULL),(8,NULL,'jft7qf','Decorus Developments',NULL,NULL,NULL,NULL,'',NULL),(9,NULL,'3px2yb','South Street Development Group',NULL,NULL,NULL,NULL,'',NULL),(10,NULL,'7jeb3x','Prospero International Realty Inc.',NULL,NULL,NULL,NULL,'',NULL),(11,NULL,'0o7ds4','Reliance Properties',NULL,NULL,NULL,NULL,'',NULL),(12,NULL,'m5zv95',' Arnomatis Architecture',NULL,NULL,NULL,NULL,'',NULL),(13,NULL,'c0afw2',' Wall Financial',NULL,NULL,NULL,NULL,'',NULL),(14,NULL,'b6xyld','SHAPE Architecture',NULL,NULL,NULL,NULL,'',NULL),(15,NULL,'9c0udi',' Westbank',NULL,NULL,NULL,NULL,'',NULL),(16,NULL,'fagu8f','Wesgroup',NULL,NULL,NULL,NULL,'',NULL),(17,NULL,'hpvi23','EDGAR Development Corp.',NULL,NULL,NULL,NULL,'',NULL),(18,NULL,'aif6r3','Cornerstone Architecture',NULL,NULL,NULL,NULL,'',NULL),(19,NULL,'va8xgv','Onni Group of Companies',NULL,NULL,NULL,NULL,'',NULL),(20,NULL,'a7q1if','Cressey',NULL,NULL,NULL,NULL,'',NULL),(21,NULL,'sznz5m','Caulfield Rock Capital',NULL,NULL,NULL,NULL,'',NULL);
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

-- Dump completed on 2016-07-13  9:06:12
