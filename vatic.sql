-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: vatic
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `attribute_annotations`
--

DROP TABLE IF EXISTS `attribute_annotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute_annotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pathid` int(11) DEFAULT NULL,
  `attributeid` int(11) DEFAULT NULL,
  `frame` int(11) DEFAULT NULL,
  `value` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pathid` (`pathid`),
  KEY `attributeid` (`attributeid`),
  CONSTRAINT `attribute_annotations_ibfk_1` FOREIGN KEY (`pathid`) REFERENCES `paths` (`id`),
  CONSTRAINT `attribute_annotations_ibfk_2` FOREIGN KEY (`attributeid`) REFERENCES `attributes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_annotations`
--

LOCK TABLES `attribute_annotations` WRITE;
/*!40000 ALTER TABLE `attribute_annotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `attribute_annotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(250) DEFAULT NULL,
  `labelid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `labelid` (`labelid`),
  CONSTRAINT `attributes_ibfk_1` FOREIGN KEY (`labelid`) REFERENCES `labels` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boxes`
--

DROP TABLE IF EXISTS `boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pathid` int(11) DEFAULT NULL,
  `xtl` int(11) DEFAULT NULL,
  `ytl` int(11) DEFAULT NULL,
  `xbr` int(11) DEFAULT NULL,
  `ybr` int(11) DEFAULT NULL,
  `frame` int(11) DEFAULT NULL,
  `occluded` tinyint(1) DEFAULT NULL,
  `outside` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pathid` (`pathid`),
  CONSTRAINT `boxes_ibfk_1` FOREIGN KEY (`pathid`) REFERENCES `paths` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boxes`
--

LOCK TABLES `boxes` WRITE;
/*!40000 ALTER TABLE `boxes` DISABLE KEYS */;
INSERT INTO `boxes` VALUES (1,1,303,172,344,205,4129,0,0),(2,1,319,171,363,204,3900,0,1),(3,1,312,171,356,204,3924,0,0),(4,1,317,170,361,203,3903,0,0),(5,1,313,175,352,207,4069,0,0),(6,1,303,170,346,206,4185,0,0),(7,1,311,171,355,204,3956,0,0),(8,1,316,173,355,205,4038,0,0),(9,1,304,169,348,209,4221,0,0),(10,2,343,172,379,200,3213,0,0),(11,2,327,174,367,203,3121,0,0),(12,2,342,173,378,201,3261,0,0),(13,2,331,171,366,202,3321,0,0),(14,2,343,167,392,208,3000,0,0),(15,2,347,172,390,207,3053,0,0),(16,2,337,172,373,200,3292,0,0),(17,3,327,168,362,198,3544,0,0),(18,3,333,168,372,201,3592,0,0),(19,3,333,168,372,201,3621,0,0),(20,3,343,172,381,200,3447,0,0),(21,3,341,168,383,199,3492,0,0),(22,3,333,171,371,199,3300,0,0),(23,4,1,152,179,266,1286,0,0),(24,4,81,158,223,242,1273,0,0),(25,4,1,152,179,266,1308,0,1),(26,4,254,177,286,203,1200,0,0),(27,4,228,170,280,207,1229,0,0),(28,4,207,166,274,214,1239,0,0),(29,4,1,152,179,266,1521,0,1),(30,5,316,177,348,198,1286,0,0),(31,5,304,174,345,209,1473,0,0),(32,5,317,176,348,201,1308,0,0),(33,5,308,177,335,200,1200,0,0),(34,5,316,178,347,203,1346,0,0),(35,5,303,173,339,204,1419,0,0),(36,5,294,173,335,208,1521,0,0),(37,5,301,174,342,209,1506,0,0),(38,5,311,177,340,199,1229,0,0),(39,5,304,173,340,204,1402,0,0),(40,5,314,177,344,205,1380,0,0),(41,5,302,175,341,207,1448,0,0),(42,6,288,157,317,193,1286,0,0),(43,6,0,60,123,238,1419,0,0),(44,6,276,156,310,197,1308,0,0),(45,6,295,168,311,192,1200,0,0),(46,6,238,145,298,207,1346,0,0),(47,6,151,119,259,223,1384,0,0),(48,6,0,60,123,238,1521,0,1),(49,6,293,163,316,192,1229,0,0),(50,6,295,160,320,191,1249,0,0),(51,6,51,92,210,234,1402,0,0),(52,6,170,125,267,220,1380,0,0),(53,6,0,60,123,238,1448,0,1),(54,7,246,148,288,199,1286,0,0),(55,7,221,142,271,196,1308,0,0),(56,7,246,148,289,196,1200,0,1),(57,7,126,111,236,213,1346,0,0),(58,7,251,150,294,198,1277,0,0),(59,7,11,70,189,226,1367,0,0),(60,7,0,59,138,230,1521,0,1),(61,7,0,59,138,230,1402,0,1),(62,7,0,59,138,230,1380,0,0),(63,8,566,170,631,210,1402,0,0),(64,8,566,170,631,210,1521,0,1),(65,8,566,170,631,210,1200,0,1),(66,8,566,170,631,210,1419,0,1),(67,9,131,172,184,205,1473,0,0),(68,9,242,172,272,197,1200,0,1),(69,9,242,172,272,197,1419,0,0),(70,9,0,160,63,214,1506,0,0),(71,9,0,160,63,214,1521,0,1),(72,9,198,174,237,202,1448,0,0),(73,10,570,172,638,220,1269,0,1),(74,10,469,179,511,205,1200,0,1),(75,10,500,177,550,205,1253,0,0),(76,10,570,172,638,220,1521,0,1),(77,10,470,176,509,201,1249,0,0),(78,10,570,172,638,220,1259,0,0),(79,11,489,166,554,208,1269,0,0),(80,11,489,166,554,208,1280,0,1),(81,11,535,163,609,213,1273,0,0),(82,11,418,174,442,193,1200,0,1),(83,11,489,166,554,208,1521,0,1),(84,11,418,174,442,193,1249,0,0),(85,11,440,171,475,200,1259,0,0),(86,12,405,170,440,197,1269,0,0),(87,12,575,166,639,232,1286,0,0),(88,12,493,170,575,218,1282,0,0),(89,12,422,173,459,201,1273,0,0),(90,12,405,175,440,202,1200,0,1),(91,12,469,173,536,213,1521,0,1),(92,12,469,173,536,213,1290,0,1),(93,13,414,162,450,188,1283,0,0),(94,13,457,147,543,201,1302,0,0),(95,13,493,134,628,212,1308,0,0),(96,13,420,171,446,189,1200,0,1),(97,13,493,134,628,212,1319,0,1),(98,13,420,161,460,193,1288,0,0),(99,13,493,134,628,212,1521,0,1),(100,14,510,131,619,212,1340,0,1),(101,14,510,131,619,212,1521,0,1),(102,14,443,153,494,200,1321,0,0),(103,14,443,153,494,200,1200,0,1),(104,14,510,131,619,212,1332,0,0),(105,15,454,172,498,206,1200,0,1),(106,15,518,165,597,220,1367,0,0),(107,15,476,170,538,208,1364,0,0),(108,15,476,170,538,208,1375,0,1),(109,15,476,170,538,208,1521,0,1),(110,15,454,172,498,206,1361,0,0),(111,16,434,176,470,202,1384,0,0),(112,16,520,165,613,223,1521,0,1),(113,16,520,165,613,223,1394,0,0),(114,16,434,176,470,202,1200,0,1),(115,16,520,165,613,223,1404,0,1),(116,17,0,103,92,295,272,0,1),(117,17,169,150,267,227,51,0,0),(118,17,0,91,177,283,180,0,0),(119,17,196,154,272,215,0,0,0),(120,17,62,121,238,264,131,0,0),(121,17,169,150,267,227,321,0,0),(122,17,0,103,92,295,238,0,0);
/*!40000 ALTER TABLE `boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boxes2attributes`
--

DROP TABLE IF EXISTS `boxes2attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boxes2attributes` (
  `box_id` int(11) DEFAULT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  KEY `box_id` (`box_id`),
  KEY `attribute_id` (`attribute_id`),
  CONSTRAINT `boxes2attributes_ibfk_1` FOREIGN KEY (`box_id`) REFERENCES `boxes` (`id`),
  CONSTRAINT `boxes2attributes_ibfk_2` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boxes2attributes`
--

LOCK TABLES `boxes2attributes` WRITE;
/*!40000 ALTER TABLE `boxes2attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `boxes2attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `completion_bonuses`
--

DROP TABLE IF EXISTS `completion_bonuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `completion_bonuses` (
  `id` int(11) NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `completion_bonuses_ibfk_1` FOREIGN KEY (`id`) REFERENCES `turkic_bonus_schedules` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `completion_bonuses`
--

LOCK TABLES `completion_bonuses` WRITE;
/*!40000 ALTER TABLE `completion_bonuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `completion_bonuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `segmentid` int(11) DEFAULT NULL,
  `istraining` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `segmentid` (`segmentid`),
  CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`id`) REFERENCES `turkic_hits` (`id`),
  CONSTRAINT `jobs_ibfk_2` FOREIGN KEY (`segmentid`) REFERENCES `segments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,6,0),(7,7,0),(8,8,0),(9,9,0),(10,10,0),(11,11,0),(12,12,0),(13,13,0),(14,14,0),(15,15,0),(16,16,0),(17,17,0),(18,18,0),(19,19,0),(20,20,0),(21,21,0),(22,22,0),(23,23,0),(24,24,0),(25,25,0),(26,26,0),(27,27,0),(28,28,0),(29,29,0),(30,30,0),(31,31,0),(32,32,0),(33,33,0),(34,34,0),(35,35,0),(36,36,0),(37,37,0),(38,38,0),(39,39,0),(40,40,0),(41,41,0),(42,42,0),(43,43,0),(44,44,0),(45,45,0),(46,46,0),(47,47,0),(48,48,0),(49,49,0),(50,50,0),(51,51,0),(52,52,0),(53,53,0),(54,54,0),(55,55,0),(56,56,0),(57,57,0),(58,58,0),(59,59,0),(60,60,0),(61,61,0),(62,62,0),(63,63,0),(64,64,0),(65,65,0),(66,66,0),(67,67,0),(68,68,0),(69,69,0),(70,70,0),(71,71,0),(72,72,0),(73,73,0),(74,74,0),(75,75,0),(76,76,0),(77,77,0),(78,78,0),(79,79,0),(80,80,0),(81,81,0),(82,82,0),(83,83,0),(84,84,0),(85,85,0),(86,86,0),(87,87,0),(88,88,0),(89,89,0),(90,90,0),(91,91,0),(92,92,0),(93,93,0),(94,94,0),(95,95,0),(96,96,0),(97,97,0),(98,98,0),(99,99,0),(100,100,0),(101,101,0),(102,102,0),(103,103,0),(104,104,0),(105,105,0),(106,106,0),(107,107,0),(108,108,0),(109,109,0),(110,110,0),(111,111,0),(112,112,0),(113,113,0),(114,114,0),(115,115,0),(116,116,0),(117,117,0),(118,118,0),(119,119,0),(120,120,0),(121,121,0),(122,122,0),(123,123,0),(124,124,0),(125,125,0),(126,126,0),(127,127,0),(128,128,0),(129,129,0),(130,130,0),(131,131,0),(132,132,0),(133,133,0),(134,134,0),(135,135,0),(136,136,0),(137,137,0),(138,138,0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labels`
--

DROP TABLE IF EXISTS `labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(250) DEFAULT NULL,
  `videoid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `videoid` (`videoid`),
  CONSTRAINT `labels_ibfk_1` FOREIGN KEY (`videoid`) REFERENCES `videos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labels`
--

LOCK TABLES `labels` WRITE;
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
INSERT INTO `labels` VALUES (1,'car',1),(2,'car',2),(3,'car',3),(4,'car',4),(5,'car',5),(6,'dog',5),(7,'car',6),(8,'dog',6),(9,'ball',7),(10,'player',7),(11,'basketturkic',7),(12,'extract',7),(13,'public/basketball.mp4',7),(14,'public/output/',7);
/*!40000 ALTER TABLE `labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paths`
--

DROP TABLE IF EXISTS `paths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paths` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobid` int(11) DEFAULT NULL,
  `labelid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jobid` (`jobid`),
  KEY `labelid` (`labelid`),
  CONSTRAINT `paths_ibfk_1` FOREIGN KEY (`jobid`) REFERENCES `jobs` (`id`),
  CONSTRAINT `paths_ibfk_2` FOREIGN KEY (`labelid`) REFERENCES `labels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paths`
--

LOCK TABLES `paths` WRITE;
/*!40000 ALTER TABLE `paths` DISABLE KEYS */;
INSERT INTO `paths` VALUES (1,90,5),(2,30,2),(3,31,2),(4,100,7),(5,100,7),(6,100,7),(7,100,7),(8,100,7),(9,100,7),(10,100,7),(11,100,7),(12,100,7),(13,100,7),(14,100,7),(15,100,7),(16,100,7),(17,1,1);
/*!40000 ALTER TABLE `paths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `per_object_bonuses`
--

DROP TABLE IF EXISTS `per_object_bonuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `per_object_bonuses` (
  `id` int(11) NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `per_object_bonuses_ibfk_1` FOREIGN KEY (`id`) REFERENCES `turkic_bonus_schedules` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `per_object_bonuses`
--

LOCK TABLES `per_object_bonuses` WRITE;
/*!40000 ALTER TABLE `per_object_bonuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `per_object_bonuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segments`
--

DROP TABLE IF EXISTS `segments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `segments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videoid` int(11) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `stop` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `videoid` (`videoid`),
  CONSTRAINT `segments_ibfk_1` FOREIGN KEY (`videoid`) REFERENCES `videos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segments`
--

LOCK TABLES `segments` WRITE;
/*!40000 ALTER TABLE `segments` DISABLE KEYS */;
INSERT INTO `segments` VALUES (1,1,0,321),(2,1,300,621),(3,1,600,921),(4,1,900,1221),(5,1,1200,1521),(6,1,1500,1821),(7,1,1800,2121),(8,1,2100,2421),(9,1,2400,2721),(10,1,2700,3021),(11,1,3000,3321),(12,1,3300,3621),(13,1,3600,3921),(14,1,3900,4221),(15,1,4200,4521),(16,1,4500,4821),(17,1,4800,5121),(18,1,5100,5421),(19,1,5400,5429),(20,2,0,321),(21,2,300,621),(22,2,600,921),(23,2,900,1221),(24,2,1200,1521),(25,2,1500,1821),(26,2,1800,2121),(27,2,2100,2421),(28,2,2400,2721),(29,2,2700,3021),(30,2,3000,3321),(31,2,3300,3621),(32,2,3600,3921),(33,2,3900,4221),(34,2,4200,4521),(35,2,4500,4821),(36,2,4800,5121),(37,2,5100,5421),(38,2,5400,5429),(39,3,0,321),(40,3,300,621),(41,3,600,921),(42,3,900,1221),(43,3,1200,1521),(44,3,1500,1821),(45,3,1800,2121),(46,3,2100,2421),(47,3,2400,2721),(48,3,2700,3021),(49,3,3000,3321),(50,3,3300,3621),(51,3,3600,3921),(52,3,3900,4221),(53,3,4200,4521),(54,3,4500,4821),(55,3,4800,5121),(56,3,5100,5421),(57,3,5400,5429),(58,4,0,321),(59,4,300,621),(60,4,600,921),(61,4,900,1221),(62,4,1200,1521),(63,4,1500,1821),(64,4,1800,2121),(65,4,2100,2421),(66,4,2400,2721),(67,4,2700,3021),(68,4,3000,3321),(69,4,3300,3621),(70,4,3600,3921),(71,4,3900,4221),(72,4,4200,4521),(73,4,4500,4821),(74,4,4800,5121),(75,4,5100,5421),(76,4,5400,5429),(77,5,0,321),(78,5,300,621),(79,5,600,921),(80,5,900,1221),(81,5,1200,1521),(82,5,1500,1821),(83,5,1800,2121),(84,5,2100,2421),(85,5,2400,2721),(86,5,2700,3021),(87,5,3000,3321),(88,5,3300,3621),(89,5,3600,3921),(90,5,3900,4221),(91,5,4200,4521),(92,5,4500,4821),(93,5,4800,5121),(94,5,5100,5421),(95,5,5400,5429),(96,6,0,321),(97,6,300,621),(98,6,600,921),(99,6,900,1221),(100,6,1200,1521),(101,6,1500,1821),(102,6,1800,2121),(103,6,2100,2421),(104,6,2400,2721),(105,6,2700,3021),(106,6,3000,3321),(107,6,3300,3621),(108,6,3600,3921),(109,6,3900,4221),(110,6,4200,4521),(111,6,4500,4821),(112,6,4800,5121),(113,6,5100,5421),(114,6,5400,5429),(115,7,0,321),(116,7,300,621),(117,7,600,921),(118,7,900,1221),(119,7,1200,1521),(120,7,1500,1821),(121,7,1800,2121),(122,7,2100,2421),(123,7,2400,2721),(124,7,2700,3021),(125,7,3000,3321),(126,7,3300,3621),(127,7,3600,3921),(128,7,3900,4221),(129,7,4200,4521),(130,7,4500,4821),(131,7,4800,5121),(132,7,5100,5421),(133,7,5400,5721),(134,7,5700,6021),(135,7,6000,6321),(136,7,6300,6621),(137,7,6600,6921),(138,7,6900,7102);
/*!40000 ALTER TABLE `segments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turkic_bonus_schedule_constant`
--

DROP TABLE IF EXISTS `turkic_bonus_schedule_constant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turkic_bonus_schedule_constant` (
  `id` int(11) NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `turkic_bonus_schedule_constant_ibfk_1` FOREIGN KEY (`id`) REFERENCES `turkic_bonus_schedules` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turkic_bonus_schedule_constant`
--

LOCK TABLES `turkic_bonus_schedule_constant` WRITE;
/*!40000 ALTER TABLE `turkic_bonus_schedule_constant` DISABLE KEYS */;
/*!40000 ALTER TABLE `turkic_bonus_schedule_constant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turkic_bonus_schedules`
--

DROP TABLE IF EXISTS `turkic_bonus_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turkic_bonus_schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `groupid` (`groupid`),
  CONSTRAINT `turkic_bonus_schedules_ibfk_1` FOREIGN KEY (`groupid`) REFERENCES `turkic_hit_groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turkic_bonus_schedules`
--

LOCK TABLES `turkic_bonus_schedules` WRITE;
/*!40000 ALTER TABLE `turkic_bonus_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `turkic_bonus_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turkic_event_log`
--

DROP TABLE IF EXISTS `turkic_event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turkic_event_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hitid` int(11) DEFAULT NULL,
  `domain` text,
  `message` text,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_turkic_event_log_hitid` (`hitid`),
  CONSTRAINT `turkic_event_log_ibfk_1` FOREIGN KEY (`hitid`) REFERENCES `turkic_hits` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turkic_event_log`
--

LOCK TABLES `turkic_event_log` WRITE;
/*!40000 ALTER TABLE `turkic_event_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `turkic_event_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turkic_hit_groups`
--

DROP TABLE IF EXISTS `turkic_hit_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turkic_hit_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `duration` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `cost` float NOT NULL,
  `keywords` varchar(250) NOT NULL,
  `height` int(11) NOT NULL,
  `donation` int(11) DEFAULT NULL,
  `offline` tinyint(1) DEFAULT NULL,
  `minapprovedamount` int(11) DEFAULT NULL,
  `minapprovedpercent` int(11) DEFAULT NULL,
  `countrycode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turkic_hit_groups`
--

LOCK TABLES `turkic_hit_groups` WRITE;
/*!40000 ALTER TABLE `turkic_hit_groups` DISABLE KEYS */;
INSERT INTO `turkic_hit_groups` VALUES (1,'Video annotation','Draw boxes around objects moving around in a video.',21600,1209600,0.05,'video, annotation, computer, vision',650,0,0,NULL,NULL,NULL),(2,'Video annotation','Draw boxes around objects moving around in a video.',21600,1209600,0.05,'video, annotation, computer, vision',650,0,1,NULL,NULL,NULL),(3,'Video annotation','Draw boxes around objects moving around in a video.',21600,1209600,0.05,'video, annotation, computer, vision',650,0,1,NULL,NULL,NULL),(4,'Video annotation','Draw boxes around objects moving around in a video.',21600,1209600,0.05,'video, annotation, computer, vision',650,0,1,NULL,NULL,NULL),(5,'Video annotation','Draw boxes around objects moving around in a video.',21600,1209600,0.05,'video, annotation, computer, vision',650,0,0,NULL,NULL,NULL),(6,'Video annotation','Draw boxes around objects moving around in a video.',21600,1209600,0.05,'video, annotation, computer, vision',650,0,1,NULL,NULL,NULL),(7,'Video annotation','Draw boxes around objects moving around in a video.',21600,1209600,0.05,'video, annotation, computer, vision',650,0,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `turkic_hit_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turkic_hits`
--

DROP TABLE IF EXISTS `turkic_hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turkic_hits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hitid` varchar(30) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  `assignmentid` varchar(30) DEFAULT NULL,
  `workerid` varchar(14) DEFAULT NULL,
  `ready` tinyint(1) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `compensated` tinyint(1) DEFAULT NULL,
  `accepted` tinyint(1) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  `reason` text,
  `comments` text,
  `timeaccepted` datetime DEFAULT NULL,
  `timecompleted` datetime DEFAULT NULL,
  `timeonserver` datetime DEFAULT NULL,
  `ipaddress` varchar(15) DEFAULT NULL,
  `page` varchar(250) NOT NULL,
  `opt2donate` float DEFAULT NULL,
  `donatedamount` float NOT NULL,
  `bonusamount` float NOT NULL,
  `useful` tinyint(1) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_turkic_hits_groupid` (`groupid`),
  KEY `ix_turkic_hits_validated` (`validated`),
  KEY `ix_turkic_hits_ready` (`ready`),
  KEY `ix_turkic_hits_completed` (`completed`),
  KEY `ix_turkic_hits_accepted` (`accepted`),
  KEY `ix_turkic_hits_workerid` (`workerid`),
  KEY `ix_turkic_hits_published` (`published`),
  KEY `ix_turkic_hits_compensated` (`compensated`),
  CONSTRAINT `turkic_hits_ibfk_1` FOREIGN KEY (`groupid`) REFERENCES `turkic_hit_groups` (`id`),
  CONSTRAINT `turkic_hits_ibfk_2` FOREIGN KEY (`workerid`) REFERENCES `turkic_workers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turkic_hits`
--

LOCK TABLES `turkic_hits` WRITE;
/*!40000 ALTER TABLE `turkic_hits` DISABLE KEYS */;
INSERT INTO `turkic_hits` VALUES (1,NULL,1,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(2,NULL,1,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(3,NULL,1,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(4,NULL,1,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(5,NULL,1,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(6,NULL,1,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(7,NULL,1,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(8,NULL,1,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(9,NULL,1,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(10,NULL,1,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(11,NULL,1,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(12,NULL,1,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(13,NULL,1,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(14,NULL,1,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(15,NULL,1,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(16,NULL,1,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(17,NULL,1,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(18,NULL,1,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(19,NULL,1,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(20,NULL,2,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(21,NULL,2,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(22,NULL,2,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(23,NULL,2,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(24,NULL,2,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(25,NULL,2,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(26,NULL,2,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(27,NULL,2,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(28,NULL,2,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(29,NULL,2,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(30,NULL,2,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(31,NULL,2,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(32,NULL,2,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(33,NULL,2,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(34,NULL,2,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(35,NULL,2,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(36,NULL,2,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(37,NULL,2,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(38,NULL,2,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(39,NULL,3,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(40,NULL,3,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(41,NULL,3,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(42,NULL,3,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(43,NULL,3,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(44,NULL,3,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(45,NULL,3,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(46,NULL,3,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(47,NULL,3,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(48,NULL,3,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(49,NULL,3,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(50,NULL,3,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(51,NULL,3,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(52,NULL,3,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(53,NULL,3,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(54,NULL,3,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(55,NULL,3,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(56,NULL,3,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(57,NULL,3,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(58,NULL,4,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(59,NULL,4,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(60,NULL,4,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(61,NULL,4,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(62,NULL,4,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(63,NULL,4,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(64,NULL,4,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(65,NULL,4,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(66,NULL,4,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(67,NULL,4,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(68,NULL,4,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(69,NULL,4,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(70,NULL,4,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(71,NULL,4,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(72,NULL,4,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(73,NULL,4,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(74,NULL,4,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(75,NULL,4,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(76,NULL,4,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(77,NULL,5,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(78,NULL,5,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(79,NULL,5,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(80,NULL,5,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(81,NULL,5,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(82,NULL,5,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(83,NULL,5,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(84,NULL,5,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(85,NULL,5,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(86,NULL,5,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(87,NULL,5,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(88,NULL,5,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(89,NULL,5,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(90,NULL,5,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(91,NULL,5,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(92,NULL,5,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(93,NULL,5,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(94,NULL,5,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(95,NULL,5,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(96,NULL,6,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(97,NULL,6,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(98,NULL,6,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(99,NULL,6,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(100,NULL,6,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(101,NULL,6,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(102,NULL,6,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(103,NULL,6,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(104,NULL,6,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(105,NULL,6,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(106,NULL,6,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(107,NULL,6,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(108,NULL,6,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(109,NULL,6,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(110,NULL,6,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(111,NULL,6,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(112,NULL,6,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(113,NULL,6,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(114,NULL,6,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(115,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(116,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(117,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(118,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(119,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(120,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(121,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(122,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(123,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(124,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(125,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(126,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(127,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(128,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(129,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(130,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(131,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(132,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(133,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(134,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(135,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(136,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(137,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs'),(138,NULL,7,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,1,'jobs');
/*!40000 ALTER TABLE `turkic_hits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turkic_workers`
--

DROP TABLE IF EXISTS `turkic_workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turkic_workers` (
  `id` varchar(14) NOT NULL,
  `numsubmitted` int(11) NOT NULL,
  `numacceptances` int(11) NOT NULL,
  `numrejections` int(11) NOT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `donatedamount` float NOT NULL,
  `bonusamount` float NOT NULL,
  `verified` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turkic_workers`
--

LOCK TABLES `turkic_workers` WRITE;
/*!40000 ALTER TABLE `turkic_workers` DISABLE KEYS */;
/*!40000 ALTER TABLE `turkic_workers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(250) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `totalframes` int(11) DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL,
  `skip` int(11) NOT NULL,
  `perobjectbonus` float DEFAULT NULL,
  `completionbonus` float DEFAULT NULL,
  `trainwithid` int(11) DEFAULT NULL,
  `isfortraining` tinyint(1) DEFAULT NULL,
  `trainvalidator` blob,
  `blowradius` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trainwithid` (`trainwithid`),
  KEY `ix_videos_slug` (`slug`),
  CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`trainwithid`) REFERENCES `videos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (1,'identifier',640,360,5430,'/home/ray/vatic/public/out',0,0,0,NULL,0,NULL,3),(2,'identifier1',640,360,5430,'/home/ray/vatic/public/out',0,0,0,NULL,0,NULL,3),(3,'MyTest',640,360,5430,'/home/ray/vatic/public/out',0,0,0,NULL,0,NULL,3),(4,'car',640,360,5430,'/home/ray/vatic/public/out',0,0,0,NULL,0,NULL,3),(5,'Test',640,360,5430,'/home/ray/vatic/public/out',0,0,0,NULL,0,NULL,3),(6,'EX1',640,360,5430,'/home/ray/vatic/public/out',0,0,0,NULL,0,NULL,3),(7,'basketball',720,405,7103,'/home/ray/vatic/public/output',0,0,0,NULL,0,NULL,3);
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-11  9:19:30
