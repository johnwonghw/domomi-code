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
-- Table structure for table `userfb`
--

DROP TABLE IF EXISTS `userfb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userfb` (
  `iduserfb` int(11) NOT NULL AUTO_INCREMENT,
  `idfb` varchar(255) NOT NULL,
  `agerange` varchar(15) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `profileurl` varchar(255) DEFAULT NULL,
  `pictureurl` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `timezone` varchar(45) DEFAULT NULL,
  `locale` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iduserfb`,`idfb`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userfb`
--

LOCK TABLES `userfb` WRITE;
/*!40000 ALTER TABLE `userfb` DISABLE KEYS */;
INSERT INTO `userfb` VALUES (15,'823907027739682','21','female','https://www.facebook.com/app_scoped_user_id/823907027739682/','https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/10429263_628307420632978_2978527126440758099_n.jpg?oh=379e9f4d2dce20dcab03cf76b34f2025&oe=57EF8FB0','2016-07-07 15:51:41','2016-07-07 16:07:43','-7','en_US'),(16,'102661890171031','21','male','https://www.facebook.com/app_scoped_user_id/102661890171031/','https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/13620799_100966490340571_6195731066892175920_n.jpg?oh=6ae4adca8011a307aea1d4ce5d765d49&oe=58300EAE','2016-07-07 15:54:10','2016-07-13 07:39:03','-7','en_US');
/*!40000 ALTER TABLE `userfb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-13  9:06:10
