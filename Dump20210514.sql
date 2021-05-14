-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: customerorderdb
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customerId` int NOT NULL AUTO_INCREMENT,
  `customerName` varchar(60) DEFAULT NULL,
  `customerAge` int DEFAULT NULL,
  `customerPhone` varchar(15) DEFAULT NULL,
  `customerAddress` varchar(65) DEFAULT NULL,
  `customerEmail` varchar(45) DEFAULT NULL,
  `customerPassword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (5,'naveen',21,'0712323232','kandy','nav@gmail.com','nav098'),(8,'chalana',23,'0719393333','malabe','chalana@gmail.com','chalana234'),(9,'Saman',23,'0712233456','malabe','saman@gmail.com','saman098'),(10,'kasun',23,'0754343432','Galle','kasun@gmail.com','kasun117'),(11,'Nuwan',18,'0779394338','Kurunegala','nuwan@gmail.com','nuwan34566'),(12,'Kalana',22,'0815454543','Matara','kalana@gmail.com','kalana322'),(13,'Lasantha',32,'0721122321','Ja Ela','lasantha123@gmail.com','lasantha123'),(14,'Janith',23,'0773377876','Gampaha','janith@gmail.com','janith644'),(15,'Sampath',33,'0773434399','Horana','sampath@gmail.com','sampath4343'),(16,'Dinuka',24,'0774343222','Colombo','din@gmail.com','dinu4343'),(17,'Thushara',28,'0712345678','Kandy','thushara@gmail.com','thushara44'),(18,'Sanath',33,'0723355467','Anuradhapura','sanath@gmail.com','sanath111');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-14 22:50:36
