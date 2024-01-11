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
-- Table structure for table `Driver`
--

DROP TABLE IF EXISTS `Driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Driver` (
  `Driver_Name` varchar(50) DEFAULT NULL,
  `User_id` int DEFAULT NULL,
  `Driver_Id` int NOT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Car_Name` varchar(50) DEFAULT NULL,
  `Car_Id` int DEFAULT NULL,
  `Ratings` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`Driver_Id`),
  KEY `User_id` (`User_id`),
  CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `User` (`User_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Driver`
--

LOCK TABLES `Driver` WRITE;
/*!40000 ALTER TABLE `Driver` DISABLE KEYS */;
INSERT INTO `Driver` VALUES ('Dud',1,1,'Cu9RguPJb','Avalon',8463,3.2),('Giselbert',2,2,'JU5rapA8gK','Daewoo Lacetti',5049,4.0),('Mehetabel',3,3,'amUTZDiJUFnp','M',9937,1.7),('Ursala',4,4,'911Ttigxu','F-Series',8295,2.5),('Arden',5,5,'59bkWygy1u4','Ram 1500',1941,1.7),('Samuele',6,6,'0rQu5GC0V','T100 Xtra',1880,3.6),('Tanitansy',7,7,'K2sMJErn0','Ram 1500',7639,2.6),('Sheffield',8,8,'UwPmDdDylW','Familia',5726,1.5),('Dina',9,9,'p5MhFG11oIn','Trans Sport',2839,3.6),('Binny',10,10,'dij9uTG','Crown Victoria',9104,1.7),('Avis',11,11,'qW7UqKSeF9','Accord',2551,2.8),('Koralle',12,12,'JpW7q29','Summit',335,1.5),('Lanny',13,13,'Sgh0r4','Grand Prix',6280,4.3),('Gizela',14,14,'tJRQ45Ku','Ram 2500 Club',6711,2.9),('Christiane',15,15,'QpcpC6hAn','Town Car',1545,1.1),('Leonerd',16,16,'aGprktE','Tercel',1505,2.2),('Malorie',17,17,'r2utsl5HF0W','Karif',7003,2.6),('Thaine',18,18,'ThmGpD5n4','Passat',2501,3.0),('Benjamin',19,19,'GjSwTmkzCmn','Century',5891,1.8),('Gifford',20,20,'SqvrVubfUFX','2500',1558,3.8),('Natalie',21,21,'IsJBPq','V40',3292,3.6),('Gav',22,22,'0PuyGq','Grand Marquis',478,3.3),('Roderic',23,23,'ANGYDqcv','Astro',4054,3.6),('Edvard',24,24,'P9WSoJrl1268','Frontier',546,4.7),('Bennett',25,25,'Nf46ZK','Swift',8415,4.9),('Kylie',26,26,'GDEWfJ7O','Escalade',8993,4.9),('Cobby',27,27,'yuE707H2ii6','Ram Van 1500',5606,3.2),('Merci',28,28,'cWWzM0qH','RX Hybrid',6643,3.9),('Haroun',29,29,'PUyUll','LS',4843,1.0),('Sheela',30,30,'piANt3oEPY','Celica',304,2.6),('Fowler',31,31,'we2a6jz','M-Class',5988,4.3),('Deb',32,32,'3cpScDdj','Gallardo',2753,4.8),('Ethelyn',33,33,'alV4QvQN2f','XJ',8194,2.6),('Jewelle',34,34,'CzmcBiS9q','Tundra',5972,3.5),('Sharron',35,35,'k4RvhYIz7g','A4',7160,4.1),('Armstrong',36,36,'GbEiKNKc2','Highlander',4285,3.9),('Cindee',37,37,'XflK7Sh','Insight',5275,3.0),('Bridie',38,38,'wOeW1Df2a9','G',1046,2.4),('Ulla',39,39,'KSGAB0QAbxdA','Accord',1552,4.1),('Babette',40,40,'VYhQAzusSX','Lancer',9885,1.6),('Jamal',41,41,'Z97QQ5U','4000s',9271,4.5),('Ethelin',42,42,'7GeWzN','Tundra',2784,2.1),('Brand',43,43,'ktQBRfyL','2500 Club Coupe',6201,2.3),('Leanor',44,44,'N5ODT2nLA','Eldorado',8431,2.3),('Allene',45,45,'YRUad6Pb1ym','Aviator',5917,4.6),('Holly-anne',46,46,'dpNId2QvTpjb','7 Series',1727,4.1),('Nike',47,47,'WVd4s31WkNV','Acclaim',8610,1.6),('Steffen',48,48,'1pTr6ot','GS',581,4.8),('Roch',49,49,'Ry6WBuXb969','GL-Class',1703,2.5),('Inness',50,50,'tgyuBIV1YYN5','Expo',986,3.4),('Patrice',51,51,'eBYo7Wm9vTLn','E150',9793,1.6),('Phillida',52,52,'NvR3aVZ','Freestyle',6993,2.7),('Goldina',53,53,'Sb2ph45','CX',1322,2.3),('Glenn',54,54,'iRxaQRQMk1EQ','SLR McLaren',2655,3.2),('Martin',55,55,'WT2XX0mP6p','F-350 Super Duty',2376,1.2),('Brooke',56,56,'s6ELAjdVLM','Highlander',4561,3.1),('Peder',57,57,'Yge4K0oW','Suburban 1500',543,4.8),('Raphael',58,58,'j4pfKDX','Sonata',6642,3.1),('Dorree',59,59,'P2TesO','HS',8649,3.6),('Salomi',60,60,'yy1o0eqsI','SC',3261,1.3),('Danyelle',61,61,'wVxMlX','Quest',3519,4.0),('Jacklyn',62,62,'UI3dObUmR','300ZX',6834,1.7),('Sheba',63,63,'e81SvnLr','Bonneville',8237,4.6),('Margaretha',64,64,'GI6boKdwQc5','F150',7261,2.4),('Sherie',65,65,'nHTSUb1IZRU','RX',3405,4.6),('Hadleigh',66,66,'cuPhfIRKC','Aerio',5096,4.9),('Ross',67,67,'CpokVc','F350',4199,4.6),('Danit',68,68,'b2aYyWNN','Yukon',6923,4.3),('Alasteir',69,69,'j8Mq2M','Grand Prix',8529,1.9),('Robinson',70,70,'11mDzFddp','Storm',8747,2.0),('Fallon',71,71,'FclzOJb89t','Century',9648,4.0),('Emlen',72,72,'HQESPw1dYufG','Camry',7799,3.4),('Joseito',73,73,'0W4He8vpa','SVX',4018,3.7),('Anita',74,74,'mihCgdL4m5','Viper',6239,1.7),('Sisely',75,75,'bca9r1Q8NV','RL',3965,2.1),('Fanni',76,76,'kY04Dy0','Sonoma',2609,4.0),('Marga',77,77,'5qRDcovaHPUU','Edge',329,2.8),('Sampson',78,78,'YbGpDupu2eEl','QX',2462,1.3),('Ignazio',79,79,'1sGjt4aHSx2','Civic',7552,4.3),('Eugenio',80,80,'eNnmPg7','Ram 3500',6179,2.5),('Anatol',81,81,'54YCFcsx2j','Voyager',5485,4.6),('Donavon',82,82,'yIEAy2OCHBa','Cherokee',1598,3.2),('Hayyim',83,83,'dzUKponVS8','SLK-Class',2789,3.1),('Angele',84,84,'5v4mWcwTxD','Maxima',7798,3.0),('Livvyy',85,85,'oWGiBR65t16','Eclipse',3618,3.5),('Henrietta',86,86,'kGas8JCx','Insight',7050,3.3),('Rosette',87,87,'UezbaGngOO7','Grand Am',5476,1.2),('Brandi',88,88,'F0sEr1X','LX',5097,2.9),('Lydie',89,89,'xA4tiYaDFW','SLK-Class',971,4.6),('Germayne',90,90,'VjRlrz092T','X-Type',8286,2.8),('Rae',91,91,'F9UXF1UHt','Hombre Space',6774,2.2),('Hayes',92,92,'UYgMRC4','Cavalier',3603,1.9),('Adrian',93,93,'4a37OPLSj','XK',3502,2.3),('Kaspar',94,94,'y7LKVxPJ','Bravada',9751,2.7),('Jerrie',95,95,'bRmibcJTUBn','SL-Class',6436,1.5),('Gwenny',96,96,'lU2YStUV','Durango',8596,2.9),('Augy',97,97,'1FYTVCJOx90','GX',8515,4.9),('Kerwin',98,98,'AvjlJ1hElIFC','Ghost',5505,3.2),('Diane-marie',99,99,'V7xIYH','Corvette',8471,1.0),('Dud',101,101,'Cu9RguPJb','Avalon',8463,3.2),('Mehetabel',102,102,'JU5rapA8gK','Daewoo Lacetti',5049,4.0),('Bale',103,103,'amUTZDiJUFnp','M',9937,1.7),('Samuele',104,104,'911Ttigxu','F-Series',8295,2.5),('Arden',105,105,'59bkWygy1u4','Ram 1500',1941,1.7),('Sammy',106,106,'0rQu5GC0V','T100 Xtra',1880,3.6),('Darwin',107,107,'K2sMJErn0','Ram 1500',7639,2.6),('Binny',108,108,'UwPmDdDylW','Eeco Sport',5726,1.5),('Dina',109,109,'p5MhFG11oIn','Familia ',2839,3.6),('Kinny',110,110,'dij9uTG','Crown Victoria',9104,1.7);
/*!40000 ALTER TABLE `Driver` ENABLE KEYS */;
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
