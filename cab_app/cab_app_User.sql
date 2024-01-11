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
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `User_Name` varchar(50) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Mobile_No` varchar(50) DEFAULT NULL,
  `User_id` int NOT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('Rem','raudley0@drupal.org','5iTWWDY','Suite 11','4934572663',1),('Ludovico','lfrankham1@about.com','F2Ixz3KH','PO Box 48592','7232336615',2),('Jamie','jlewton2@dailymail.co.uk','NnMYFeGH','Apt 40','1636803845',3),('Adrien','aprazor3@howstuffworks.com','VSwgbZxE','Suite 55','6877196867',4),('Giselbert','ghavick4@si.edu','AnULwHFs5G','Suite 49','2431069885',5),('Terry','tshovel5@ox.ac.uk','Gk2XOxOioD','Suite 28','6155303007',6),('Reeva','rhurn6@freewebs.com','l6y6AHA','Suite 2','2483203894',7),('Haydon','hlabdon7@tuttocitta.it','PhOPiIyKBJ0P','PO Box 15250','9174248845',8),('Lyndel','lgiacoppo8@yahoo.co.jp','7HgidegFV','Suite 72','3793971806',9),('Elisha','erymour9@google.fr','BaVErAv','Suite 48','4968536750',10),('Vicki','vbalduccia@ft.com','6ZhN3piZh5Z','PO Box 46021','4145551427',11),('Tracee','talmeidab@ovh.net','cG3Dd2kzA','10th Floor','1048644468',12),('Evelyn','eudalec@exblog.jp','0DIdMBAWjvK','Apt 573','9323582550',13),('Adolphe','areadmired@psu.edu','ELARubMtERa','Apt 1350','8086395257',14),('Jillie','jburnsidee@imageshack.us','NaCEiPcj3o','Apt 1727','6824862309',15),('Jackie','jantoninf@wiley.com','BsjNiirV7Aea','17th Floor','9438232326',16),('Lisabeth','lballintimeg@lycos.com','ozJZabhlcrya','Apt 1186','8374089746',17),('Dalenna','dsleeth@etsy.com','VADGOc','Suite 3','4242104428',18),('Clo','ccathesyedi@addtoany.com','y4IIveM','Room 679','1688683165',19),('Elana','efurmanj@blogs.com','1o08LEw','Suite 16','2775374992',20),('Sayres','sgiacobiliok@bbb.org','QdFK1Zn','PO Box 18113','8015674263',21),('Glenn','gchimesl@dmoz.org','5eSEv2YYe4u','Suite 88','2623654062',22),('Cornelius','cdisneym@state.gov','8DBKZPO','Apt 47','5057830322',23),('Sheffie','sbrownbilln@booking.com','qZp1B4','Suite 99','5426464952',24),('Ericka','edrummero@nifty.com','1AIu1Zp8D','18th Floor','3633873844',25),('Lyndell','lsmothp@webs.com','W8nYCNnc2wBS','Room 46','9413764267',26),('Shelden','sricartq@weather.com','h69N7no4L67','Suite 38','9875712923',27),('Zulema','ztomblinr@uiuc.edu','9ZtqzJoeiWkc','Apt 1165','7886955158',28),('Sarene','smcmenamins@sohu.com','WqnbYg','12th Floor','1425550196',29),('Carmine','claminmant@sina.com.cn','bTyCPGbpFw4y','Room 1912','9296178007',30),('Brietta','bfletcheru@weebly.com','KAi7mpOsT','Suite 58','7502382502',31),('Archibald','abardwallv@bandcamp.com','rGMbvSh1','Apt 906','4078464523',32),('Katerina','khamsherew@engadget.com','aTAbQBA1c4n','Suite 61','3605272929',33),('Dara','ddevillex@ycombinator.com','2CJtPiKP7uK','PO Box 91084','4317181770',34),('Reggy','rswyery@cam.ac.uk','hLRxbGu','Room 509','2778866350',35),('Delcine','ddoylendz@google.com','kqJJ0lJq','14th Floor','1046687719',36),('Garek','gtomovic10@eventbrite.com','n2GdvSdl2Xnk','Suite 41','1423356245',37),('Franny','finston11@plala.or.jp','HXGxG3vU','Room 828','4744081424',38),('Sephira','slehr12@bravesites.com','52egbqt23fJK','PO Box 9149','8363349018',39),('Cobby','cdownage13@infoseek.co.jp','mmswwp8','Suite 67','5555214197',40),('Frankie','fkenforth14@ow.ly','1GGXm9s','11th Floor','8424798343',41),('Erinn','earnli15@xing.com','xoaLtrY6O','Suite 31','2241491889',42),('Rasla','rbinham16@admin.ch','dANsDa6xc3lf','PO Box 4524','7816011018',43),('Josiah','jdunbabin17@rakuten.co.jp','lHrpsDzSTuT','Apt 1384','2679529057',44),('Kelcy','kkeighly18@google.com','JJ8nvsuYa7e','PO Box 51054','1012172168',45),('Norby','nives19@cmu.edu','KjWO5ewcPaYx','PO Box 15771','1917180691',46),('Shandeigh','scroxford1a@shop-pro.jp','6fq1SNwcC','2nd Floor','9806404221',47),('Garvy','gcoskerry1b@joomla.org','Gh1aKx','Apt 783','5979450335',48),('Roseanna','rpleasaunce1c@altervista.org','R2H43nN','Apt 509','5054482107',49),('Gracia','gsutherley1d@skyrock.com','IdLxLsbwYsIF','Apt 865','4065143037',50),('Edd','eveschambes1e@buzzfeed.com','4QXwPtDMRb','Suite 55','6062440560',51),('Alexa','askipper1f@symantec.com','84ma9f','Room 1753','3263673926',52),('Tobias','tcloute1g@epa.gov','bb5nXrTppr','PO Box 93516','1123006463',53),('Baillie','bburchess1h@nifty.com','1PVlDOy1dO','Suite 63','3691700442',54),('Rhys','rheddy1i@xing.com','KQohGl8T','Room 1010','4905149472',55),('Tiler','random@example.com','364IuNV6','Suite 62','1321983139',56),('Osborn','oveltman1k@ezinearticles.com','qWHolfXkTxW','PO Box 27851','8987706241',57),('Grace','gjobin1l@yellowpages.com','izF0VsZH','Apt 73','2747975113',58),('Allison','agordge1m@t-online.de','3RBV2c7SpLrL','PO Box 43708','3315524015',59),('Marshal','mbolam1n@lulu.com','tpMSJEFMTaC','Apt 1365','7977653539',60),('Blinny','bleprovest1o@friendfeed.com','AhRcrxpcAw','Apt 737','5198396307',61),('Elnora','egrix1p@wp.com','z5we2lGUK22b','Suite 58','6875556483',62),('Deloria','dtullett1q@discovery.com','eZzNKpEYbX','Apt 114','5746957760',63),('Marcella','mguiver1r@harvard.edu','4uzjTE','6th Floor','2047034081',64),('Jedd','jfancott1s@twitpic.com','TKzZy89w','18th Floor','4814495214',65),('Garv','greddihough1t@japanpost.jp','CNdQkhjPnv6','PO Box 45339','8555224522',66),('Bartram','bisherwood1u@salon.com','Y2mP3BQh','PO Box 95261','8642041072',67),('Rolfe','rsemerad1v@sohu.com','O3betix9','Apt 1972','5444196849',68),('Rozele','rsemaine1w@wiley.com','al7oBuykH','PO Box 10398','2217402896',69),('Ben','bwoodford1x@mapy.cz','r7iVwDNWVcZy','16th Floor','2535896914',70),('Ali','abasketfield1y@free.fr','Yn34Fmr2fyrG','Apt 1974','4871060551',71),('Hadley','hkubicka1z@cocolog-nifty.com','J319Fx6P','Room 189','6348861220',72),('Iseabal','isay20@springer.com','4pHlXeI','Room 600','3647344718',73),('Hilda','hmckenna21@boston.com','540iAT','Apt 295','6675510286',74),('Keene','kjardine22@tinypic.com','omFcph','8th Floor','2091440413',75),('Corby','ccorzon23@goo.ne.jp','26BSzP7','17th Floor','1713730684',76),('Ingaberg','icoulthard24@imgur.com','CrozG6jmBPH','4th Floor','4037358115',77),('Alli','aattryde25@youtube.com','5bwpBdw0Ygb','Room 190','4436111660',78),('Chaddie','cavarne26@networksolutions.com','Ajfbfnmyf','Apt 770','9858187595',79),('Shepard','scollidge27@shop-pro.jp','lmFRPRHzkic','16th Floor','9035474053',80),('Wrennie','wyegorchenkov28@liveinternet.ru','UkFBVwBuM5Da','Suite 56','8447512457',81),('Valle','vbreffitt29@yandex.ru','xT1tuE7','9th Floor','1613290841',82),('Aguistin','akubacki2a@dedecms.com','XIUd9E','3rd Floor','9631366022',83),('Renard','radne2b@who.int','T598z2n2oXQr','Apt 1108','4348330769',84),('Roy','rzisneros2c@bloglovin.com','NkGD4dbhwxhc','PO Box 56562','7722888930',85),('Larissa','lbaiden2d@kickstarter.com','PHQGD2','Room 1513','1368407894',86),('Morgun','mheatley2e@technorati.com','YHKyYaU','13th Floor','3393771071',87),('Aurore','awraggs2f@lycos.com','uWb4whu','PO Box 54277','4347303301',88),('Andreana','afradson2g@who.int','qWmNveoiC4w3','Room 1000','2967922338',89),('Fae','fmalec2h@foxnews.com','HkSWoP9UfO8c','Suite 95','6189446500',90),('Eugine','eingliby2i@wufoo.com','IVHDKaD5N','10th Floor','3125710050',91),('Giana','gthistleton2j@naver.com','H2w42YU00T','PO Box 80933','2237253372',92),('Judas','jstapylton2k@harvard.edu','j1iu9aP','PO Box 41510','7991786305',93),('Bari','bgrzelak2l@lycos.com','6NrPYLD4','Suite 84','4483227453',94),('Ferrell','fparsisson2m@icq.com','sRyE6l','Apt 692','8666131164',95),('Adelind','aedowes2n@forbes.com','2JtFpQkplR','Apt 1003','9248436184',96),('Jerry','jbome2o@networkadvertising.org','KPvppF3C9','Room 266','5347116061',97),('Rosanna','rcorselles2p@squarespace.com','0sum20eaQw5r','Suite 73','1986163105',98),('Pacorro','ptothe2q@constantcontact.com','PHDP6h','PO Box 71793','9103622981',99),('Rene','raudley0@drupal.org','5iTWWDY','Suite 11','4968536750',101),('Landen','lfrankham1@about.com','F2Ixz3KH','PO Box 48592','7232336615',102),('Jack','jlewton2@dailymail.co.uk','NnMYFeGH','Apt 40','1636803845',103),('Lyndel','aprazor3@howstuffworks.com','VSwgbZxE','Suite 55','6877196867',104),('Giselbert','ghavick4@si.edu','AnULwHFs5G','Suite 49','3793971806',105),('Tira','tshovel5@ox.ac.uk','Gk2XOxOioD','Suite 28','4934572663',106),('Rem','rhurn6@freewebs.com','l6y6AHA','Suite 2','2483203894',107),('Elisha','hlabdon7@tuttocitta.it','PhOPiIyKBJ0P','PO Box 15250','2431069885',108),('Adrien','lgiacoppo8@yahoo.co.jp','7HgidegFV','Suite 72','3333971806',109),('Hayden','erymour9@google.fr','BaVErAv','Suite 48','59685332150',110);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17 19:58:44
