CREATE DATABASE  IF NOT EXISTS `cab_app` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cab_app`;
-- MySQL dump 10.13  Distrib 8.0.32, for macos13 (x86_64)
--
-- Host: localhost    Database: cab_app
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `Trip`
--

DROP TABLE IF EXISTS `Trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Trip` (
  `Trip_id` int NOT NULL,
  `Driver_Id` int DEFAULT NULL,
  `Customer_Id` int DEFAULT NULL,
  `Journey_Begins` varchar(50) DEFAULT NULL,
  `Journey_Ends` varchar(50) DEFAULT NULL,
  `Total_Amount` decimal(5,2) DEFAULT NULL,
  `Distance` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`Trip_id`),
  KEY `Driver_Id` (`Driver_Id`),
  KEY `Customer_Id` (`Customer_Id`),
  CONSTRAINT `trip_ibfk_1` FOREIGN KEY (`Driver_Id`) REFERENCES `Driver` (`Driver_Id`),
  CONSTRAINT `trip_ibfk_2` FOREIGN KEY (`Customer_Id`) REFERENCES `Customer` (`Customer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trip`
--

LOCK TABLES `Trip` WRITE;
/*!40000 ALTER TABLE `Trip` DISABLE KEYS */;
INSERT INTO `Trip` VALUES (1,1,1,'PO Box 32378','Suite 71',219.16,31.30),(2,2,2,'Suite 26','Room 976',138.07,13.45),(3,3,3,'Room 1811','Apt 134',495.16,6.13),(4,4,4,'Suite 43','Suite 50',434.55,29.27),(5,5,5,'Suite 52','8th Floor',311.06,30.92),(6,6,6,'1st Floor','PO Box 7089',260.05,45.22),(7,7,7,'Room 1822','1st Floor',441.74,43.98),(8,8,8,'Suite 83','Apt 793',489.86,20.05),(9,9,9,'15th Floor','Suite 9',263.66,26.36),(10,10,10,'Room 826','Suite 52',387.92,15.93),(11,11,11,'Room 1535','Room 1990',265.61,45.69),(12,12,12,'1st Floor','Apt 404',178.61,17.27),(13,13,13,'Room 973','20th Floor',365.82,49.31),(14,14,14,'Room 551','Room 1770',109.05,2.99),(15,15,15,'Room 370','Room 1693',341.93,11.28),(16,16,16,'17th Floor','Apt 592',318.34,33.89),(17,17,17,'Room 372','PO Box 1025',140.83,28.38),(18,18,18,'Room 1903','16th Floor',223.22,10.36),(19,19,19,'Room 857','Room 502',132.75,15.26),(20,20,20,'Suite 53','5th Floor',480.68,18.40),(21,21,21,'Apt 912','PO Box 59182',194.56,4.25),(22,22,22,'Suite 69','PO Box 56361',328.08,41.70),(23,23,23,'Suite 32','PO Box 49876',412.36,43.59),(24,24,24,'Suite 51','PO Box 95424',450.14,43.28),(25,25,25,'Apt 1087','Apt 1356',275.63,3.92),(26,26,26,'Room 670','Apt 1790',222.96,14.07),(27,27,27,'Apt 1667','PO Box 1056',132.61,13.85),(28,28,28,'Room 1261','Room 1400',171.14,8.17),(29,29,29,'3rd Floor','15th Floor',224.77,12.97),(30,30,30,'Suite 96','15th Floor',133.02,15.75),(31,31,31,'6th Floor','Room 1862',220.22,30.80),(32,32,32,'8th Floor','Apt 1773',263.80,17.08),(33,33,33,'Apt 1772','Apt 840',145.60,49.03),(34,34,34,'Room 518','Room 1889',385.47,40.61),(35,35,35,'PO Box 31566','Room 89',147.20,35.98),(36,36,36,'Suite 44','Suite 63',233.25,15.99),(37,37,37,'Suite 28','Apt 617',184.42,2.49),(38,38,38,'Suite 9','11th Floor',389.68,44.36),(39,39,39,'18th Floor','Apt 1335',499.72,5.79),(40,40,40,'Suite 4','PO Box 64694',343.61,14.56),(41,41,41,'Apt 1762','PO Box 47312',124.45,2.94),(42,42,42,'Suite 96','13th Floor',149.66,22.58),(43,43,43,'Suite 43','Room 1443',305.76,2.23),(44,44,44,'12th Floor','Suite 48',218.01,46.56),(45,45,45,'Suite 50','6th Floor',437.16,12.08),(46,46,46,'PO Box 74980','PO Box 5814',130.93,17.63),(47,47,47,'PO Box 53328','Apt 1112',482.76,8.22),(48,48,48,'Suite 18','Room 596',107.66,12.60),(49,49,49,'Apt 1245','PO Box 96603',241.19,4.85),(50,50,50,'10th Floor','18th Floor',312.48,10.20),(51,51,51,'PO Box 99628','Apt 1198',344.25,21.71),(52,52,52,'PO Box 51396','Room 1750',115.04,26.97),(53,53,53,'Suite 73','PO Box 22031',455.83,35.85),(54,54,54,'19th Floor','Room 1715',337.46,42.03),(55,55,55,'Room 8','7th Floor',179.58,9.58),(56,56,56,'PO Box 30706','Apt 811',257.85,30.96),(57,57,57,'PO Box 71969','Apt 1766',351.79,35.38),(58,58,58,'PO Box 4103','3rd Floor',139.31,46.33),(59,59,59,'Apt 1652','12th Floor',141.20,29.34),(60,60,60,'Suite 94','PO Box 93256',243.23,35.78),(61,61,61,'2nd Floor','Apt 1301',124.65,37.83),(62,62,62,'Room 208','Room 1930',166.16,44.59),(63,63,63,'Apt 1721','Apt 1522',272.51,28.41),(64,64,64,'Suite 9','PO Box 34973',470.11,17.80),(65,65,65,'Suite 80','14th Floor',361.85,44.77),(66,66,66,'Apt 234','Room 567',134.10,27.83),(67,67,67,'2nd Floor','19th Floor',190.96,8.60),(68,68,68,'Apt 1372','Suite 100',284.66,46.85),(69,69,69,'5th Floor','PO Box 71969',160.89,38.75),(70,70,70,'Apt 93','3rd Floor',161.52,32.42),(71,71,71,'PO Box 58447','Suite 91',313.12,23.36),(72,72,72,'17th Floor','Room 711',304.55,31.50),(73,73,73,'Apt 1605','Suite 96',334.67,36.21),(74,74,74,'Apt 1471','Suite 38',100.57,25.10),(75,75,75,'PO Box 20232','Suite 88',132.35,12.28),(76,76,76,'Room 71','Suite 73',109.67,11.87),(77,77,77,'Room 96','Apt 1268',256.92,18.00),(78,78,78,'Room 320','4th Floor',417.95,23.00),(79,79,79,'Room 463','PO Box 57940',398.38,4.06),(80,80,80,'Suite 95','PO Box 86385',274.43,43.90),(81,81,81,'1st Floor','PO Box 2043',229.93,2.42),(82,82,82,'2nd Floor','7th Floor',119.10,15.62),(83,83,83,'Room 112','Room 1113',200.58,18.23),(84,84,84,'PO Box 60262','9th Floor',365.20,9.93),(85,85,85,'Room 1205','Room 1094',341.69,1.48),(86,86,86,'6th Floor','Apt 56',439.87,4.80),(87,87,87,'Suite 17','Apt 1591',277.31,43.12),(88,88,88,'PO Box 89378','Suite 50',167.25,28.77),(89,89,89,'Room 852','Apt 1080',198.84,5.45),(90,90,90,'Apt 1776','Room 131',267.16,27.68),(91,91,91,'PO Box 59337','Room 381',139.04,21.72),(92,92,92,'Apt 49','PO Box 27428',273.91,32.63),(93,93,93,'Apt 756','PO Box 68601',210.67,25.98),(94,94,94,'8th Floor','8th Floor',448.83,15.27),(95,95,95,'PO Box 99561','PO Box 45542',158.36,13.74),(96,96,96,'PO Box 99410','PO Box 22437',283.35,38.52),(97,97,97,'Apt 1141','Room 481',362.29,32.30),(98,98,98,'Room 39','5th Floor',257.63,30.67),(99,99,99,'Apt 1821','6th Floor',449.83,12.79),(101,101,101,'PO Box 32378','Suite 171',219.16,31.30),(102,102,102,'Suite 26','Room 96',138.07,13.45),(103,103,103,'Room 1811','Apt 14',495.16,6.13),(104,104,104,'Suite 43','Suite 10',434.55,29.27),(105,105,105,'Suite 52','8th Floor',311.06,30.92),(106,106,106,'1st Floor','PO Box 7089',260.05,45.22),(107,107,107,'Room 1822','3rd Floor',441.74,43.98),(108,108,108,'Suite 83','Apt 73',489.86,20.05),(109,109,109,'15th Floor','Suite 9',263.66,26.36),(110,110,110,'Room 826','Suite 5',387.92,15.93);
/*!40000 ALTER TABLE `Trip` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17 19:58:43
