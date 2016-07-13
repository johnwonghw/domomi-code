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
-- Table structure for table `lnkdindustry`
--

DROP TABLE IF EXISTS `lnkdindustry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lnkdindustry` (
  `idlnkdindustry` int(11) NOT NULL AUTO_INCREMENT,
  `lnkdid` int(11) NOT NULL,
  `groups` varchar(15) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idlnkdindustry`,`lnkdid`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lnkdindustry`
--

LOCK TABLES `lnkdindustry` WRITE;
/*!40000 ALTER TABLE `lnkdindustry` DISABLE KEYS */;
INSERT INTO `lnkdindustry` VALUES (1,3,'tech','Computer Hardware'),(2,4,'tech','Computer Software'),(3,5,'tech','Computer Networking'),(4,6,'tech','Internet'),(5,7,'tech','Semiconductors'),(6,8,'gov, tech','Telecommunications'),(7,9,'leg','Law Practice'),(8,10,'leg','Legal Services'),(9,11,'corp','Management Consulting'),(10,12,'gov, hlth, tech','Biotechnology'),(11,13,'hlth','Medical Practice'),(12,14,'hlth','Hospital & Health Care'),(13,15,'hlth, tech','Pharmaceuticals'),(14,16,'hlth','Veterinary'),(15,17,'hlth','Medical Devices'),(16,18,'good','Cosmetics'),(17,19,'good','Apparel & Fashion'),(18,20,'good, rec','Sporting Goods'),(19,21,'good','Tobacco'),(20,22,'good','Supermarkets'),(21,23,'good, man, serv','Food Production'),(22,24,'good, man','Consumer Electronics'),(23,25,'good, man','Consumer Goods'),(24,26,'good, man','Furniture'),(25,27,'good, man','Retail'),(26,28,'med, rec','Entertainment'),(27,29,'rec','Gambling & Casinos'),(28,30,'rec, serv, tran','Leisure, Travel & Tourism'),(29,31,'rec, serv, tran','Hospitality'),(30,32,'rec, serv','Restaurants'),(31,33,'rec','Sports'),(32,34,'rec, serv','Food & Beverages'),(33,35,'art, med, rec','Motion Pictures and Film'),(34,36,'med, rec','Broadcast Media'),(35,37,'art, med, rec','Museums and Institutions'),(36,38,'art, med, rec','Fine Art'),(37,39,'art, med, rec','Performing Arts'),(38,40,'rec, serv','Recreational Facilities and Services'),(39,41,'fin','Banking'),(40,42,'fin','Insurance'),(41,43,'fin','Financial Services'),(42,44,'cons, fin, good','Real Estate'),(43,45,'fin','Investment Banking'),(44,46,'fin','Investment Management'),(45,47,'corp, fin','Accounting'),(46,48,'cons','Construction'),(47,49,'cons','Building Materials'),(48,50,'cons','Architecture & Planning'),(49,51,'cons, gov','Civil Engineering'),(50,52,'gov, man','Aviation & Aerospace'),(51,53,'man','Automotive'),(52,54,'man','Chemicals'),(53,55,'man','Machinery'),(54,56,'man','Mining & Metals'),(55,57,'man','Oil & Energy'),(56,58,'man','Shipbuilding'),(57,59,'man','Utilities'),(58,60,'man','Textiles'),(59,61,'man','Paper & Forest Products'),(60,62,'man','Railroad Manufacture'),(61,63,'agr','Farming'),(62,64,'agr','Ranching'),(63,65,'agr','Dairy'),(64,66,'agr','Fishery'),(65,67,'edu','Primary/Secondary Education'),(66,68,'edu','Higher Education'),(67,69,'edu','Education Management'),(68,70,'edu, gov','Research'),(69,71,'gov','Military'),(70,72,'gov, leg','Legislative Office'),(71,73,'gov, leg','Judiciary'),(72,74,'gov','International Affairs'),(73,75,'gov','Government Administration'),(74,76,'gov','Executive Office'),(75,77,'gov, leg','Law Enforcement'),(76,78,'gov','Public Safety'),(77,79,'gov','Public Policy'),(78,80,'corp, med','Marketing and Advertising'),(79,81,'med, rec','Newspapers'),(80,82,'med, rec','Publishing'),(81,83,'med, rec','Printing'),(82,84,'med, serv','Information Services'),(83,85,'med, rec, serv','Libraries'),(84,86,'org, serv','Environmental Services'),(85,87,'serv, tran','Package/Freight Delivery'),(86,88,'org, serv','Individual & Family Services'),(87,89,'org, serv','Religious Institutions'),(88,90,'org, serv','Civic & Social Organization'),(89,91,'org, serv','Consumer Services'),(90,92,'tran','Transportation/Trucking/Railroad'),(91,93,'tran','Warehousing'),(92,94,'man, tech, tran','Airlines/Aviation'),(93,95,'tran','Maritime'),(94,96,'tech','Information Technology and Services'),(95,97,'corp','Market Research'),(96,98,'corp','Public Relations and Communications'),(97,99,'art, med','Design'),(98,100,'org','Non-Profit Organization Management'),(99,101,'org','Fund-Raising'),(100,102,'corp, org','Program Development'),(101,103,'art, med, rec','Writing and Editing'),(102,104,'corp','Staffing and Recruiting'),(103,105,'corp','Professional Training & Coaching'),(104,106,'fin, tech','Venture Capital & Private Equity'),(105,107,'gov, org','Political Organization'),(106,108,'corp, gov, serv','Translation and Localization'),(107,109,'med, rec','Computer Games'),(108,110,'corp, rec, serv','Events Services'),(109,111,'art, med, rec','Arts and Crafts'),(110,112,'good, man','Electrical/Electronic Manufacturing'),(111,113,'med','Online Media'),(112,114,'gov, man, tech','Nanotechnology'),(113,115,'art, rec','Music'),(114,116,'corp, tran','Logistics and Supply Chain'),(115,117,'man','Plastics'),(116,118,'tech','Computer & Network Security'),(117,119,'tech','Wireless'),(118,120,'leg, org','Alternative Dispute Resolution'),(119,121,'corp, org, serv','Security and Investigations'),(120,122,'corp, serv','Facilities Services'),(121,123,'corp','Outsourcing/Offshoring'),(122,124,'hlth, rec','Health, Wellness and Fitness'),(123,125,'hlth','Alternative Medicine'),(124,126,'med, rec','Media Production'),(125,127,'art, med','Animation'),(126,128,'cons, corp, fin','Commercial Real Estate'),(127,129,'fin','Capital Markets'),(128,130,'gov, org','Think Tanks'),(129,131,'org','Philanthropy'),(130,132,'edu, org','E-Learning'),(131,133,'good','Wholesale'),(132,134,'corp, good, tra','Import and Export'),(133,135,'cons, gov, man','Mechanical or Industrial Engineering'),(134,136,'art, med, rec','Photography'),(135,137,'corp','Human Resources'),(136,138,'corp, man','Business Supplies and Equipment'),(137,139,'hlth','Mental Health Care'),(138,140,'art, med','Graphic Design'),(139,141,'gov, org, tran','International Trade and Development'),(140,142,'good, man, rec','Wine and Spirits'),(141,143,'good','Luxury Goods & Jewelry'),(142,144,'gov, man, org','Renewables & Environment'),(143,145,'cons, man','Glass, Ceramics & Concrete'),(144,146,'good, man','Packaging and Containers'),(145,147,'cons, man','Industrial Automation'),(146,148,'gov','Government Relations');
/*!40000 ALTER TABLE `lnkdindustry` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-13  9:06:16
