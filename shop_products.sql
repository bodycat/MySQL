-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `products` (
  `idproducts` int(11) NOT NULL AUTO_INCREMENT,
  `articul` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `idbrands` int(11) DEFAULT NULL,
  `idcategory` int(11) DEFAULT NULL,
  `idproducts_type` int(11) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idproducts`),
  KEY `fk_brand_product_idx` (`idbrands`),
  KEY `fk_category_idx` (`idcategory`),
  KEY `fk_products_type_idx` (`idproducts_type`),
  KEY `price_index` (`price`),
  CONSTRAINT `fk_brands` FOREIGN KEY (`idbrands`) REFERENCES `brands` (`idbrands`) ON DELETE CASCADE,
  CONSTRAINT `fk_category` FOREIGN KEY (`idcategory`) REFERENCES `category` (`idcategory`) ON DELETE CASCADE,
  CONSTRAINT `fk_products_type` FOREIGN KEY (`idproducts_type`) REFERENCES `products_type` (`idproducts_type`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'153921109/874',1,1,1,15980.00),(2,'TS10757DO C109',2,1,2,1090.00),(3,'W61K69-W79S0-G750',3,1,1,13990.00),(4,'TS9682UO C099',2,2,2,1490.00),(5,'new1',1,1,1,8999.00),(6,'new2',1,1,1,8999.00),(7,'new3',1,1,1,8999.00);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-16 17:33:31
