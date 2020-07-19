CREATE DATABASE  IF NOT EXISTS `homework_pmh` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `homework_pmh`;
-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: homework_pmh
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `tb_userlog`
--

DROP TABLE IF EXISTS `tb_userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `action` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tstmp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_userlog`
--

LOCK TABLES `tb_userlog` WRITE;
/*!40000 ALTER TABLE `tb_userlog` DISABLE KEYS */;
INSERT INTO `tb_userlog` VALUES (1,1,'login','2020-07-17 12:26:27'),(2,1,'login','2020-07-17 13:05:14'),(3,1,'login','2020-07-17 13:05:20'),(4,1,'login','2020-07-17 13:05:28'),(5,1,'login','2020-07-17 13:13:21'),(6,1,'logout','2020-07-17 13:37:24'),(7,1,'logout','2020-07-17 13:37:39'),(8,1,'login','2020-07-17 13:39:11'),(9,2,'login','2020-07-17 13:40:22'),(10,2,'login','2020-07-17 13:43:27'),(11,2,'login','2020-07-17 13:43:49'),(12,2,'login','2020-07-17 17:36:03'),(13,2,'login','2020-07-17 17:37:09'),(14,2,'login','2020-07-17 17:37:44'),(15,2,'login','2020-07-17 17:38:01'),(16,2,'login','2020-07-17 17:38:47'),(17,1,'logout','2020-07-17 17:39:33'),(18,1,'logout','2020-07-17 17:39:35'),(19,1,'logout','2020-07-17 17:39:35'),(20,1,'logout','2020-07-17 17:39:36'),(21,2,'login','2020-07-17 17:40:55'),(22,2,'login','2020-07-17 17:48:27'),(23,1,'login','2020-07-17 18:03:23'),(24,1,'login','2020-07-17 18:06:47'),(25,1,'login','2020-07-17 18:11:45'),(26,1,'login','2020-07-17 18:11:47'),(27,1,'login','2020-07-17 18:13:48'),(28,1,'login','2020-07-17 18:14:42'),(29,1,'login','2020-07-17 18:15:45'),(30,1,'login','2020-07-17 18:16:35'),(31,1,'login','2020-07-17 18:16:38'),(32,1,'login','2020-07-17 18:16:39'),(33,1,'login','2020-07-17 18:16:48'),(34,1,'login','2020-07-17 18:16:51'),(35,1,'login','2020-07-17 18:17:23'),(36,1,'login','2020-07-17 18:17:31'),(37,1,'login','2020-07-17 18:17:32'),(38,1,'login','2020-07-17 18:18:32'),(39,1,'login','2020-07-17 18:18:44'),(40,1,'login','2020-07-17 18:19:20'),(41,1,'login','2020-07-17 18:19:25'),(42,1,'login','2020-07-17 18:20:45'),(43,1,'login','2020-07-17 18:20:49'),(44,1,'login','2020-07-17 18:21:15'),(45,1,'login','2020-07-17 18:22:24'),(46,1,'login','2020-07-17 18:22:26'),(47,1,'login','2020-07-17 18:24:59'),(48,1,'login','2020-07-17 18:25:38'),(49,1,'login','2020-07-17 18:25:48'),(50,1,'login','2020-07-17 18:25:59'),(51,1,'login','2020-07-17 18:26:27'),(52,1,'login','2020-07-17 18:26:58'),(53,4,'login','2020-07-17 19:08:15'),(54,4,'login','2020-07-17 19:11:00'),(55,1,'login','2020-07-17 19:19:36'),(56,1,'login','2020-07-17 19:41:47'),(57,1,'login','2020-07-17 19:47:13'),(58,1,'login','2020-07-17 19:48:10'),(59,1,'login','2020-07-17 19:49:45'),(60,1,'login','2020-07-17 19:50:13'),(61,1,'login','2020-07-17 20:04:33'),(62,1,'login','2020-07-17 20:05:43'),(63,1,'login','2020-07-17 21:38:57'),(64,1,'login','2020-07-17 21:39:09'),(65,1,'login','2020-07-17 21:46:28'),(66,1,'login','2020-07-17 21:46:33'),(67,1,'login','2020-07-17 21:47:08'),(68,1,'login','2020-07-17 21:48:10'),(69,1,'login','2020-07-17 21:49:00'),(70,1,'login','2020-07-17 21:50:19'),(71,1,'login','2020-07-17 21:50:32'),(72,1,'login','2020-07-17 21:50:33'),(73,3,'login','2020-07-17 21:50:37'),(74,3,'login','2020-07-17 21:51:33'),(75,3,'login','2020-07-17 21:54:18'),(76,1,'login','2020-07-17 21:54:21'),(77,1,'login','2020-07-17 21:59:01'),(78,3,'login','2020-07-17 22:08:12'),(79,2,'login','2020-07-17 22:08:59'),(80,2,'login','2020-07-17 22:09:43'),(81,2,'login','2020-07-17 22:10:47'),(82,3,'login','2020-07-17 22:11:20'),(83,1,'login','2020-07-17 22:25:39'),(84,1,'login','2020-07-17 22:41:12'),(85,1,'login','2020-07-17 22:42:04'),(86,1,'login','2020-07-18 11:30:55'),(87,2,'login','2020-07-18 14:10:55'),(88,1,'login','2020-07-18 14:27:57'),(89,1,'login','2020-07-18 21:24:33'),(90,5,'login','2020-07-18 22:26:11'),(91,1,'login','2020-07-19 09:41:17');
/*!40000 ALTER TABLE `tb_userlog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-19 10:48:17
