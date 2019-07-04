-- MySQL dump 10.13  Distrib 8.0.13, for Linux (x86_64)
--
-- Host: localhost    Database: geodata
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_cities`
--

DROP TABLE IF EXISTS `_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `_cities` (
  `city_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `important` tinyint(1) NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  `title_ru` varchar(150) DEFAULT NULL,
  `area_ru` varchar(150) DEFAULT NULL,
  `region_ru` varchar(150) DEFAULT NULL,
  `title_ua` varchar(150) DEFAULT NULL,
  `area_ua` varchar(150) DEFAULT NULL,
  `region_ua` varchar(150) DEFAULT NULL,
  `title_be` varchar(150) DEFAULT NULL,
  `area_be` varchar(150) DEFAULT NULL,
  `region_be` varchar(150) DEFAULT NULL,
  `title_en` varchar(150) DEFAULT NULL,
  `area_en` varchar(150) DEFAULT NULL,
  `region_en` varchar(150) DEFAULT NULL,
  `title_es` varchar(150) DEFAULT NULL,
  `area_es` varchar(150) DEFAULT NULL,
  `region_es` varchar(150) DEFAULT NULL,
  `title_pt` varchar(150) DEFAULT NULL,
  `area_pt` varchar(150) DEFAULT NULL,
  `region_pt` varchar(150) DEFAULT NULL,
  `title_de` varchar(150) DEFAULT NULL,
  `area_de` varchar(150) DEFAULT NULL,
  `region_de` varchar(150) DEFAULT NULL,
  `title_fr` varchar(150) DEFAULT NULL,
  `area_fr` varchar(150) DEFAULT NULL,
  `region_fr` varchar(150) DEFAULT NULL,
  `title_it` varchar(150) DEFAULT NULL,
  `area_it` varchar(150) DEFAULT NULL,
  `region_it` varchar(150) DEFAULT NULL,
  `title_pl` varchar(150) DEFAULT NULL,
  `area_pl` varchar(150) DEFAULT NULL,
  `region_pl` varchar(150) DEFAULT NULL,
  `title_ja` varchar(150) DEFAULT NULL,
  `area_ja` varchar(150) DEFAULT NULL,
  `region_ja` varchar(150) DEFAULT NULL,
  `title_lt` varchar(150) DEFAULT NULL,
  `area_lt` varchar(150) DEFAULT NULL,
  `region_lt` varchar(150) DEFAULT NULL,
  `title_lv` varchar(150) DEFAULT NULL,
  `area_lv` varchar(150) DEFAULT NULL,
  `region_lv` varchar(150) DEFAULT NULL,
  `title_cz` varchar(150) DEFAULT NULL,
  `area_cz` varchar(150) DEFAULT NULL,
  `region_cz` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='233 стран, 3 721 регионов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_cities`
--

LOCK TABLES `_cities` WRITE;
/*!40000 ALTER TABLE `_cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_countries`
--

DROP TABLE IF EXISTS `_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `_countries` (
  `country_id` int(11) NOT NULL,
  `title_ru` varchar(60) DEFAULT NULL,
  `title_ua` varchar(60) DEFAULT NULL,
  `title_be` varchar(60) DEFAULT NULL,
  `title_en` varchar(60) DEFAULT NULL,
  `title_es` varchar(60) DEFAULT NULL,
  `title_pt` varchar(60) DEFAULT NULL,
  `title_de` varchar(60) DEFAULT NULL,
  `title_fr` varchar(60) DEFAULT NULL,
  `title_it` varchar(60) DEFAULT NULL,
  `title_pl` varchar(60) DEFAULT NULL,
  `title_ja` varchar(60) DEFAULT NULL,
  `title_lt` varchar(60) DEFAULT NULL,
  `title_lv` varchar(60) DEFAULT NULL,
  `title_cz` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='233 стран, 3 721 регионов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_countries`
--

LOCK TABLES `_countries` WRITE;
/*!40000 ALTER TABLE `_countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_regions`
--

DROP TABLE IF EXISTS `_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `_regions` (
  `region_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `title_ru` varchar(150) DEFAULT NULL,
  `title_ua` varchar(150) DEFAULT NULL,
  `title_be` varchar(150) DEFAULT NULL,
  `title_en` varchar(150) DEFAULT NULL,
  `title_es` varchar(150) DEFAULT NULL,
  `title_pt` varchar(150) DEFAULT NULL,
  `title_de` varchar(150) DEFAULT NULL,
  `title_fr` varchar(150) DEFAULT NULL,
  `title_it` varchar(150) DEFAULT NULL,
  `title_pl` varchar(150) DEFAULT NULL,
  `title_ja` varchar(150) DEFAULT NULL,
  `title_lt` varchar(150) DEFAULT NULL,
  `title_lv` varchar(150) DEFAULT NULL,
  `title_cz` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='233 стран, 3 721 регионов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_regions`
--

LOCK TABLES `_regions` WRITE;
/*!40000 ALTER TABLE `_regions` DISABLE KEYS */;
/*!40000 ALTER TABLE `_regions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-04 18:40:12
