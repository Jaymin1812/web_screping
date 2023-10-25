-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: task2
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES ('Boston College','background-color: #98002E; color: white; border-bottom: 4px solid #BC9B6A;'),('Clemson','background-color: #f66733; color: white; border-bottom: 4px solid #522d80;'),('Duke','background-color: #001a57; color: white; border-bottom: 4px solid #003366;'),('Florida State','background-color: #782f40; color: #ceb888; border-bottom: 4px solid #ceb888;'),('Georgia Tech','background-color: #eeb211; color: white; border-bottom: 4px solid #262626;'),('Louisville','background-color: #Ad0000; color: white; border-bottom: 4px solid #000;'),('Miami','background-color: #f47321; color: #fff; border-bottom: 4px solid #005030;'),('North Carolina','background-color: #4b9cd3; color: #e1e1e1; border-bottom: 4px solid #13294b;'),('North Carolina State','background-color: #cc0000;color: white; border-bottom: 4px solid black;'),('Notre Dame','background-color: #0c2340; color: white; border-bottom: 4px solid #c99700;'),('Pittsburgh','background-color: #003594; color: white; border-bottom: 4px solid #FFB81C;'),('Syracuse','background-color: #d44500; color: #e8eAeb; border-bottom: 4px solid #3e3d3c;'),('Virginia','background-color:#232D4b; border-bottom: 4px solid #e57200; color: #fff;'),('Virginia Tech','background-color:#8a1e41; border-bottom: 4px solid #ee7623; color: #fff;'),('Wake Forest','background-color:#a67f31; border-bottom: 4px solid #000; color: #fff;');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-20 20:16:01
