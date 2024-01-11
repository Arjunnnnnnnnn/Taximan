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
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `Customer_Name` varchar(50) DEFAULT NULL,
  `User_id` int DEFAULT NULL,
  `Customer_Id` int NOT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Ratings` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`Customer_Id`),
  KEY `User_id` (`User_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `User` (`User_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES ('Abbie',1,1,'phJRMBDnWmG',3.3),('Kial',2,2,'1G324Jk',1.7),('Menard',3,3,'WJUslctdGJr',4.6),('Ben',4,4,'zZ2RG5',3.7),('Ingemar',5,5,'kQRkvioXD',1.9),('Charil',6,6,'CdFVUG',3.4),('Garwin',7,7,'LBWjZf',2.4),('Avis',8,8,'fQc6pXnLS',3.2),('Gerianne',9,9,'KX1sTAJ',3.1),('Jedidiah',10,10,'4jTu70',2.8),('Jehu',11,11,'225i8hc1I8',2.7),('Zachery',12,12,'AEirnO',4.8),('Egbert',13,13,'5LHjKL6wsao6',4.8),('Allayne',14,14,'XwS8pL',3.8),('Pate',15,15,'582QudI',3.6),('Lyndel',16,16,'Oyyvj1U7O',2.7),('Flory',17,17,'3Q0XBRHUwVEU',3.3),('Lucian',18,18,'dxxXo8bW',1.9),('Emmanuel',19,19,'8hgjMV',1.7),('Clari',20,20,'VRE9k20tyS',1.2),('Lucho',21,21,'bTewfG',3.8),('Katti',22,22,'atZ07wE',3.8),('Torrie',23,23,'OB7XrWE5',3.7),('Clo',24,24,'IiAS4n',4.6),('Pooh',25,25,'MyZ0WL1DBh',3.1),('Chaunce',26,26,'ISVrDQ',3.7),('Tildi',27,27,'wK5lr1',3.4),('Beck',28,28,'ApVTVfk',2.7),('Gar',29,29,'v57k673HJ',2.3),('Noak',30,30,'9puVXuw2cd',2.1),('Glad',31,31,'ik8ZqNKQ6R',4.2),('Karalee',32,32,'uf4cnNt',4.1),('Hubey',33,33,'L9WjBy1',2.1),('Lorrin',34,34,'UgeNeq8Bo',2.7),('Ralf',35,35,'zPYpg7hk',2.8),('Chucho',36,36,'LJ01rlf7',2.0),('Jane',37,37,'YSDt91tKV',4.0),('Sarajane',38,38,'Ca3jFgdHW',1.0),('Bill',39,39,'2CPeDmrZuh',3.2),('Marge',40,40,'mzEIzZtY4Aa',1.7),('Umeko',41,41,'XKbi5gJo9F',2.8),('Petronilla',42,42,'E7YHmH4',4.5),('Jordon',43,43,'pq0Xi3tP',1.3),('Lou',44,44,'zagb9Ch',3.4),('Ambrosio',45,45,'LzpxWyBmipEX',4.3),('Vanya',46,46,'Ei8NJpeEuPU',1.6),('Tobye',47,47,'O1AS6H',2.6),('Candice',48,48,'Q3FSPPLAs2rJ',1.2),('Donelle',49,49,'mHJNO85LulV',2.1),('Maryrose',50,50,'UI26MN',1.6),('Harlene',51,51,'CN3rqY0Fh',1.5),('Emmy',52,52,'LZwzT5qcJHB',2.4),('Jayson',53,53,'Qu9KCmYHR',1.2),('Maynord',54,54,'nwS8qDjypQZo',1.0),('Harlen',55,55,'4V3joT9v0',2.5),('Brandon',56,56,'iREYPLGpO',2.5),('Joshia',57,57,'jRLW7dsVo',4.0),('Kassi',58,58,'We9bDvxN03',4.2),('Malina',59,59,'bZUaurzEciB',3.0),('Margarita',60,60,'93Bs7gG74',1.2),('Batholomew',61,61,'Iw75Zj7',3.0),('Lettie',62,62,'lTEexWtMWx',2.1),('Johann',63,63,'It8lqOmBncG',1.8),('Elvina',64,64,'bb1pDfipD',4.5),('Jessamine',65,65,'pVsXcyh0bn',2.9),('Billye',66,66,'1XlpaHz7',4.6),('Kris',67,67,'GKIo925Y',1.0),('Drew',68,68,'BimBszIcLL',1.8),('Frieda',69,69,'NlePsooP',3.5),('Ariel',70,70,'HxwqDjb3Kj',2.7),('Ros',71,71,'m0PLgVURJg',1.8),('Magdalene',72,72,'rZDbTWu5L5wq',3.6),('Hedvige',73,73,'NkBGoesDU5',4.1),('Jessie',74,74,'cUH1n9KGJ',2.5),('Salim',75,75,'MIZ7ZM3gH8F',3.2),('Adi',76,76,'fxUF8gk1',4.2),('Boyd',77,77,'s2lFHu2jXN98',3.6),('Fleurette',78,78,'Ozp2rP3q',2.1),('Marlene',79,79,'61xy9tvGs',3.4),('Ashlan',80,80,'RkScXDsAB2J',2.0),('Janie',81,81,'25z4kU1A9',4.5),('Edmon',82,82,'gng2XldBmD',4.8),('Kinna',83,83,'Q8LaXCfF',4.4),('Nestor',84,84,'RXQiufzzzc',4.5),('Lauritz',85,85,'pqF7wrGgZELr',1.2),('Lanae',86,86,'5fefW2xsX',4.9),('Jen',87,87,'B5YMEIq9jr',2.3),('Crissy',88,88,'BojIP2',3.6),('Nicolis',89,89,'tZW1W7w',4.2),('Xylina',90,90,'PionGPZmEm',2.6),('Cecilius',91,91,'9Eh427etCcX9',3.3),('Katharine',92,92,'3kxJCKffYQ',2.2),('Hodge',93,93,'pJVVH0t',4.9),('Amble',94,94,'cYPAkkAjaDj',4.6),('Ettore',95,95,'q8trNwttijmU',1.5),('Nollie',96,96,'eKcWBHUf2No',2.0),('Catherin',97,97,'mk2e2alD',1.4),('Albina',98,98,'F7Wr5Ag',3.5),('Devora',99,99,'Zb6nZthD',1.9),('Menard',101,101,'phJRMBDnWmG',3.3),('Ben',102,102,'1G324Jk',1.7),('Abbey',103,103,'WJUslctdGJr',4.6),('Kiara',104,104,'zZ2RG5',3.7),('Gerianne',105,105,'kQRkvioXD',1.9),('Charil',106,106,'CdFVUG',3.4),('Jedidiah',107,107,'LBWjZf',2.4),('Avis',108,108,'fQc6pXnLS',3.2),('Jeremy',109,109,'KX1sTAJ',3.1),('Jerimiah',110,110,'4jTu70',2.8);
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
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
