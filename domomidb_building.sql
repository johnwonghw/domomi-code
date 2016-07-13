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
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `building` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iddeveloperbuilding` int(11) NOT NULL,
  `name` varchar(60) CHARACTER SET latin1 NOT NULL,
  `address` varchar(80) CHARACTER SET latin1 NOT NULL,
  `city` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `idbuildingstatus` int(11) DEFAULT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `websitelink` varchar(75) CHARACTER SET latin1 DEFAULT NULL,
  `buildingphoto` blob,
  `carsharestalls` int(2) DEFAULT NULL,
  `carsharecompany` varchar(45) DEFAULT NULL,
  `tags` varchar(45) DEFAULT NULL,
  `totalunits` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idmarkers_UNIQUE` (`id`),
  KEY `fk_iddeveloper_idx` (`iddeveloperbuilding`),
  KEY `fk_idbuildingstatus_idx` (`idbuildingstatus`),
  CONSTRAINT `fk_idbuildingstatus` FOREIGN KEY (`idbuildingstatus`) REFERENCES `buildingstatus` (`idbuldingstatus`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_iddeveloperbuilding` FOREIGN KEY (`iddeveloperbuilding`) REFERENCES `developer` (`iddeveloper`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (1,1,'Oakridge Community','','Vancouver',2,49.285320,-123.115402,'http://coromandelproperties.com/project-oakridge2.php',NULL,NULL,NULL,NULL,0),(2,2,'Aquilini Centre South & East','97 West Georgia Street','Vancouver',1,49.277882,-123.110107,'http://www.aquilinicentre.com/residential',NULL,NULL,NULL,NULL,403),(3,3,'Aquilini Centre West','97 West Georgia Street','Vancouver',4,49.277882,-123.110107,'http://www.aquilinicentre.com/residential/',NULL,NULL,NULL,NULL,197),(4,4,'The Ivy on Dunbar at 27th','Dunbar at 27th','Vancouver',1,49.248085,-123.185219,NULL,NULL,NULL,NULL,NULL,50),(5,5,'Aria','488 West 41st Avenue','Vancouver',4,49.233471,-123.115227,'http://qualex.ca/aria/',NULL,NULL,NULL,NULL,52),(6,6,'BlueSky Chinatown','633 Main Street','Vancouver',4,49.278740,-123.100151,'http://bosa4rent.com/chinatown/',NULL,NULL,NULL,NULL,192),(7,7,'1661 Davie Street','1661 Davie Street','Vancouver',2,49.285973,-123.139771,'http://westbankcorp.com/',NULL,NULL,NULL,NULL,319),(8,7,'The Lauren','1051 Broughton Street','Vancouver',4,49.285172,-123.134094,'http://thelauren.ca/',NULL,NULL,NULL,NULL,186),(9,7,'Granville @ 70th','8495 Granville Street','Vancouver',4,49.209415,-123.141335,'http://rental.granvilleat70th.com',NULL,NULL,NULL,NULL,312),(10,8,'2894 East Broadway','2894 East Broadway','Vancouver',2,49.261871,-123.044441,'http://former.vancouver.ca/commsvcs/planning/rezoning/applications/2894ebro',NULL,NULL,NULL,NULL,37),(11,9,'Cambie Street Rental Project','7675 Cambie Street','Vancouver',2,49.215229,-123.117508,'http://www.southstreet.ca/projects_comingsoon_cambiestreet.html',NULL,NULL,NULL,NULL,129),(12,10,'7151 Victoria Drive','7151 Victoria Drive','Vancouver',2,49.219364,-123.066200,'https://www.buzzbuzzhome.com/7151-victoria-drive',NULL,NULL,NULL,NULL,25),(13,11,'1188 Bidwell Street','1188 Bidwell Street','Vancouver',2,49.286243,-123.140205,'http://relianceproperties.ca',NULL,NULL,NULL,NULL,108),(14,12,'512 West King Edward',' 512 West King Edward Avenue','Vancouver',2,49.248917,-123.115524,'http://www.arnomatisarchitecture.com/king_edward_rental_architect_vancouver',NULL,NULL,NULL,NULL,50),(15,13,'498 Drake Street',' 498 Drake Street','Vancouver',3,49.274513,-123.125374,'http://www.dialogdesign.ca/work/residential',NULL,NULL,NULL,NULL,300),(16,13,'288 East Hastings St',' 288 East Hastings Street','Vancouver',2,49.281288,-123.097664,'http://development.vancouver.ca/288ehastings/index.htm',NULL,NULL,NULL,NULL,68),(17,14,'Vancouver Masonic Centre','1495 West 8th Avenue','Vancouver',2,49.265076,-123.137482,'http://www.vancouvermarket.ca/tag/1495-west-8th-ave',NULL,NULL,NULL,NULL,159),(18,15,'33 W Cordova Street',' 33 West Cordova Street','Vancouver',2,49.282738,-123.105591,'http://www.westbankcorp.com',NULL,NULL,NULL,NULL,134),(19,16,'River District','8683 Kerr Street','Vancouver',2,49.206303,-123.042526,'http://www.riverdistrict.ca/live-here/homes/rentals/',NULL,NULL,NULL,NULL,0),(20,17,'The Duke','333 East 11th Avenue','Vancouver',3,49.261059,-123.096733,'http://edgardevelopment.com/project/the-duke',NULL,NULL,NULL,NULL,201),(21,18,'1102 Commercial Drive','1102 Commercial Drive','Vancouver',2,49.274700,-123.069168,'http://development.vancouver.ca/pc1102commercial/index.htm',NULL,NULL,NULL,NULL,8),(22,19,'West Pender St.','454 West Pender Street','Vancouver',2,49.283356,-123.112846,'http://www.onni.com',NULL,NULL,NULL,NULL,69),(23,20,'The Porter','3615 Victoria Drive','Vancouver',4,49.252552,-123.066261,'http://www.rentporter.com',NULL,NULL,NULL,NULL,192),(24,1,'Mercer Apartments','1840 Victoria Diversion','Vancouver',4,49.253712,-123.067291,'http://www.aptrentals.net/apartments/mercer-rental-apartments',NULL,NULL,NULL,NULL,48),(25,19,'Evan','1908 Scotia Street','vancouver',4,49.267727,-123.100433,'http://www.rentevan.com/rent-evan/',NULL,NULL,NULL,NULL,60),(26,1,'Neon','1388 Continental Street','Vancouver',4,49.275990,-123.128822,'http://former.vancouver.ca/commsvcs/planning/rezoning/applications/3365comm',NULL,NULL,NULL,NULL,89),(27,1,'3365 Commercial Drive',' 3365 Commercial Drive','Vancouver',2,49.254642,-123.069122,'http://former.vancouver.ca/commsvcs/planning/rezoning/applications/3365comm',NULL,NULL,NULL,NULL,110),(28,1,'Hamilton Bank Studios','1895 Powell Street','Vancouver',4,49.284863,-123.065910,'http://www.hamiltonbankbuilding.com',NULL,NULL,NULL,NULL,43),(41,1,'Dummybuilding','click stored','vancouver',1,0.000000,0.000000,'',NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-13  9:05:39
