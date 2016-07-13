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
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `building` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iddeveloperbuilding` int(11) NOT NULL,
  `idbuildingutilities` int(11) DEFAULT NULL,
  `name` varchar(60) CHARACTER SET latin1 NOT NULL,
  `address` varchar(80) CHARACTER SET latin1 NOT NULL,
  `city` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `idbuildingstatus` int(11) DEFAULT NULL,
  `websitelink` varchar(75) CHARACTER SET latin1 DEFAULT NULL,
  `buildingphoto` blob,
  `carsharestalls` int(2) DEFAULT NULL,
  `carsharecompany` varchar(45) DEFAULT NULL,
  `tags` varchar(45) DEFAULT NULL,
  `totalunits` int(2) DEFAULT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idmarkers_UNIQUE` (`id`),
  KEY `fk_iddeveloper_idx` (`iddeveloperbuilding`),
  KEY `fk_idbuildingstatus_idx` (`idbuildingstatus`),
  KEY `fd_idbuildingutilities_idx` (`idbuildingutilities`),
  CONSTRAINT `fd_idbuildingutilities` FOREIGN KEY (`idbuildingutilities`) REFERENCES `buildingutilities` (`idbuildingutilities`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idbuildingstatus` FOREIGN KEY (`idbuildingstatus`) REFERENCES `buildingstatus` (`idbuldingstatus`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_iddeveloperbuilding` FOREIGN KEY (`iddeveloperbuilding`) REFERENCES `developer` (`iddeveloper`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (1,1,NULL,'Oakridge Community','','Vancouver',2,'http://coromandelproperties.com/project-oakridge2.php',NULL,NULL,NULL,NULL,0,49.285320,-123.115402),(2,2,NULL,'Aquilini Centre South & East','97 West Georgia Street','Vancouver',1,'http://www.aquilinicentre.com/residential',NULL,NULL,NULL,NULL,403,49.277882,-123.110107),(3,3,NULL,'Aquilini Centre West','97 West Georgia Street','Vancouver',4,'http://www.aquilinicentre.com/residential/',NULL,NULL,NULL,NULL,197,49.277882,-123.110107),(4,4,NULL,'The Ivy on Dunbar at 27th','Dunbar at 27th','Vancouver',1,NULL,NULL,NULL,NULL,NULL,50,49.248085,-123.185219),(5,5,NULL,'Aria','488 West 41st Avenue','Vancouver',4,'http://qualex.ca/aria/',NULL,NULL,NULL,NULL,52,49.233471,-123.115227),(6,6,NULL,'BlueSky Chinatown','633 Main Street','Vancouver',4,'http://bosa4rent.com/chinatown/',NULL,NULL,NULL,NULL,192,49.278740,-123.100151),(7,7,NULL,'1661 Davie Street','1661 Davie Street','Vancouver',2,'http://westbankcorp.com/',NULL,NULL,NULL,NULL,319,49.285973,-123.139771),(8,7,NULL,'The Lauren','1051 Broughton Street','Vancouver',4,'http://thelauren.ca/',NULL,NULL,NULL,NULL,186,49.285172,-123.134094),(9,7,NULL,'Granville @ 70th','8495 Granville Street','Vancouver',4,'http://rental.granvilleat70th.com',NULL,NULL,NULL,NULL,312,49.209415,-123.141335),(10,8,NULL,'2894 East Broadway','2894 East Broadway','Vancouver',2,'http://former.vancouver.ca/commsvcs/planning/rezoning/applications/2894ebro',NULL,NULL,NULL,NULL,37,49.261871,-123.044441),(11,9,NULL,'Cambie Street Rental Project','7675 Cambie Street','Vancouver',2,'http://www.southstreet.ca/projects_comingsoon_cambiestreet.html',NULL,NULL,NULL,NULL,129,49.215229,-123.117508),(12,10,NULL,'7151 Victoria Drive','7151 Victoria Drive','Vancouver',2,'https://www.buzzbuzzhome.com/7151-victoria-drive',NULL,NULL,NULL,NULL,25,49.219364,-123.066200),(13,11,NULL,'1188 Bidwell Street','1188 Bidwell Street','Vancouver',2,'http://relianceproperties.ca',NULL,NULL,NULL,NULL,108,49.286243,-123.140205),(14,12,NULL,'512 West King Edward',' 512 West King Edward Avenue','Vancouver',2,'http://www.arnomatisarchitecture.com/king_edward_rental_architect_vancouver',NULL,NULL,NULL,NULL,50,49.248917,-123.115524),(15,13,NULL,'498 Drake Street',' 498 Drake Street','Vancouver',3,'http://www.dialogdesign.ca/work/residential',NULL,NULL,NULL,NULL,300,49.274513,-123.125374),(16,13,NULL,'288 East Hastings St',' 288 East Hastings Street','Vancouver',2,'http://development.vancouver.ca/288ehastings/index.htm',NULL,NULL,NULL,NULL,68,49.281288,-123.097664),(17,14,NULL,'Vancouver Masonic Centre','1495 West 8th Avenue','Vancouver',2,'http://www.vancouvermarket.ca/tag/1495-west-8th-ave',NULL,NULL,NULL,NULL,159,49.265076,-123.137482),(18,7,NULL,'33 W Cordova Street',' 33 West Cordova Street','Vancouver',2,'http://www.westbankcorp.com',NULL,NULL,NULL,NULL,134,49.282738,-123.105591),(19,16,NULL,'River District','8683 Kerr Street','Vancouver',2,'http://www.riverdistrict.ca/live-here/homes/rentals/',NULL,NULL,NULL,NULL,0,49.206303,-123.042526),(20,17,NULL,'The Duke','333 East 11th Avenue','Vancouver',3,'http://edgardevelopment.com/project/the-duke',NULL,NULL,NULL,NULL,201,49.261059,-123.096733),(21,18,NULL,'1102 Commercial Drive','1102 Commercial Drive','Vancouver',2,'http://development.vancouver.ca/pc1102commercial/index.htm',NULL,NULL,NULL,NULL,8,49.274700,-123.069168),(22,19,NULL,'West Pender St.','454 West Pender Street','Vancouver',2,'http://www.onni.com',NULL,NULL,NULL,NULL,69,49.283356,-123.112846),(23,20,NULL,'The Porter','3615 Victoria Drive','Vancouver',4,'http://www.rentporter.com',NULL,NULL,NULL,NULL,192,49.252552,-123.066261),(24,20,NULL,'Mercer Apartments','1840 Victoria Diversion','Vancouver',4,'http://www.aptrentals.net/apartments/mercer-rental-apartments',NULL,NULL,NULL,NULL,48,49.253712,-123.067291),(25,19,NULL,'Evan','1908 Scotia Street','vancouver',4,'http://www.rentevan.com/rent-evan/',NULL,NULL,NULL,NULL,60,49.267727,-123.100433),(26,20,NULL,'Neon','1388 Continental Street','Vancouver',4,'http://former.vancouver.ca/commsvcs/planning/rezoning/applications/3365comm',NULL,NULL,NULL,NULL,89,49.275990,-123.128822),(27,20,NULL,'3365 Commercial Drive',' 3365 Commercial Drive','Vancouver',2,'http://former.vancouver.ca/commsvcs/planning/rezoning/applications/3365comm',NULL,NULL,NULL,NULL,110,49.254642,-123.069122),(28,21,NULL,'Hamilton Bank Studios','1895 Powell Street','Vancouver',4,'http://www.hamiltonbankbuilding.com',NULL,NULL,NULL,NULL,43,49.284863,-123.065910),(41,1,NULL,'Dummybuilding','click stored','vancouver',1,'',NULL,NULL,NULL,NULL,0,0.000000,0.000000);
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

-- Dump completed on 2016-07-13  9:06:13
