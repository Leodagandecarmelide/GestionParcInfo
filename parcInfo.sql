-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: parcinfo
-- ------------------------------------------------------
-- Server version	8.0.39
 
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `idbrand-pc` int NOT NULL AUTO_INCREMENT,
  `brand-pc-name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idbrand-pc`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Mac'),(2,'ASUS'),(3,'ACER'),(4,'HP'),(5,'LENOVO'),(6,'DELL');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function`
--

DROP TABLE IF EXISTS `function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `function` (
  `idFunction` int NOT NULL AUTO_INCREMENT,
  `FunctionName` varchar(125) DEFAULT NULL,
  `users_idusers` int NOT NULL,
  PRIMARY KEY (`idFunction`,`users_idusers`),
  KEY `fk_function_users1_idx` (`users_idusers`),
  CONSTRAINT `fk_function_users1` FOREIGN KEY (`users_idusers`) REFERENCES `users` (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function`
--

LOCK TABLES `function` WRITE;
/*!40000 ALTER TABLE `function` DISABLE KEYS */;
/*!40000 ALTER TABLE `function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os`
--

DROP TABLE IF EXISTS `os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `os` (
  `idOs` int NOT NULL AUTO_INCREMENT,
  `osname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idOs`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os`
--

LOCK TABLES `os` WRITE;
/*!40000 ALTER TABLE `os` DISABLE KEYS */;
/*!40000 ALTER TABLE `os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pc`
--

DROP TABLE IF EXISTS `pc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pc` (
  `idPC` int NOT NULL AUTO_INCREMENT,
  `refPC` varchar(20) NOT NULL,
  `typepc_idtype_pc` enum('Fixe','Portable') NOT NULL,
  `brand_idbrand-pc` int NOT NULL,
  PRIMARY KEY (`idPC`,`typepc_idtype_pc`,`brand_idbrand-pc`),
  KEY `fk_pc_brand1_idx` (`brand_idbrand-pc`),
  CONSTRAINT `fk_pc_brand1` FOREIGN KEY (`brand_idbrand-pc`) REFERENCES `brand` (`idbrand-pc`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pc`
--

LOCK TABLES `pc` WRITE;
/*!40000 ALTER TABLE `pc` DISABLE KEYS */;
INSERT INTO `pc` VALUES (1,'R1','Portable',2),(2,'R2','Portable',3),(3,'R3','Fixe',4),(4,'R4','Fixe',2),(5,'R5','Fixe',3),(6,'R6','Fixe',5),(7,'R7','Fixe',2),(8,'R8','Fixe',4),(9,'R9','Fixe',3),(10,'R1','Portable',4),(11,'R11','Fixe',5),(12,'R12','Fixe',6),(13,'R13','Portable',2),(14,'R14','Fixe',5),(15,'R15','Portable',1),(16,'R16','Fixe',2);
/*!40000 ALTER TABLE `pc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idusers` int NOT NULL AUTO_INCREMENT,
  `gender` enum('M','F') DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `mail` varchar(125) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  PRIMARY KEY (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'M','A','a',NULL,NULL),(2,'M','B','b',NULL,NULL),(3,'M','C','c',NULL,NULL),(4,'F','D','d',NULL,NULL),(5,'F','E','e',NULL,NULL),(6,'F','F','f',NULL,NULL),(7,'M','G','g',NULL,NULL),(8,'M','H','h',NULL,NULL),(9,'M','I','i',NULL,NULL),(10,'F','J','j',NULL,NULL),(11,'F','K','k',NULL,NULL),(12,'M','L','l',NULL,NULL),(13,'F','M','m',NULL,NULL),(14,'M','N','n',NULL,NULL),(15,'F','O','o',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_has_pc`
--

DROP TABLE IF EXISTS `users_has_pc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_has_pc` (
  `users_idusers` int NOT NULL,
  `pc_idPC` int NOT NULL,
  PRIMARY KEY (`users_idusers`,`pc_idPC`),
  KEY `fk_users_has_pc_pc1_idx` (`pc_idPC`),
  KEY `fk_users_has_pc_users1_idx` (`users_idusers`),
  CONSTRAINT `fk_users_has_pc_pc1` FOREIGN KEY (`pc_idPC`) REFERENCES `pc` (`idPC`),
  CONSTRAINT `fk_users_has_pc_users1` FOREIGN KEY (`users_idusers`) REFERENCES `users` (`idusers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_has_pc`
--

LOCK TABLES `users_has_pc` WRITE;
/*!40000 ALTER TABLE `users_has_pc` DISABLE KEYS */;
INSERT INTO `users_has_pc` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(10,12),(13,13),(14,14);
/*!40000 ALTER TABLE `users_has_pc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-07 17:08:47
