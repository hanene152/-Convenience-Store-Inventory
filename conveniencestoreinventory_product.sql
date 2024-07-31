-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: conveniencestoreinventory
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(100) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Quantity` int NOT NULL,
  `CategoryID` int DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `CategoryID` (`CategoryID`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Shampoo',5.99,50,1),(2,'Notebook',2.50,100,2),(3,'Chips',1.99,200,3),(4,'Soda',0.99,150,4),(71,'Milk',2.50,100,11),(72,'Orange Juice',3.00,150,11),(73,'Butter',4.00,60,12),(74,'Frozen Pizza',5.99,80,13),(75,'Band-Aids',3.50,200,14),(76,'Laundry Detergent',10.00,40,15),(77,'Dish Soap',3.00,100,16),(78,'Dog Food',20.00,50,17),(79,'Apples',1.50,200,18),(80,'Salmon',15.00,30,19),(81,'Chips',1.99,200,20),(82,'Cookies',2.99,100,20),(83,'Water Bottle',0.99,300,11),(84,'Cheese',5.00,70,12),(85,'Ice Cream',4.50,90,13),(86,'Pain Killers',7.00,150,14),(87,'Toilet Paper',8.00,60,15),(88,'Cleaning Spray',5.50,80,16),(89,'Cat Food',18.00,60,17),(90,'Bananas',1.20,150,18),(91,'Shrimp',12.00,40,19),(92,'Candy',1.50,250,20),(93,'Granola Bar',2.00,120,20),(94,'Gatorade',1.75,220,11),(95,'Yogurt',3.00,110,12),(96,'Frozen Vegetables',3.50,130,13),(97,'Vitamins',8.00,90,14),(98,'Paper Towels',6.00,50,15),(99,'Sponges',2.50,90,16),(100,'Pet Shampoo',7.50,40,17),(101,'Carrots',1.80,140,18),(102,'Lobster',20.00,20,19),(103,'Crackers',2.50,150,20),(104,'Milk',2.50,100,12),(105,'Orange Juice',3.00,150,11),(106,'Butter',4.00,60,12),(107,'Frozen Pizza',5.99,80,13),(108,'Band-Aids',3.50,200,14),(109,'Laundry Detergent',10.00,40,16),(110,'Dish Soap',3.00,100,16),(111,'Dog Food',20.00,50,17),(112,'Apples',1.50,200,18),(113,'Salmon',15.00,30,19),(114,'Chips',1.99,200,20),(115,'Cookies',2.99,100,20),(116,'Water Bottle',0.99,300,11),(117,'Cheese',5.00,70,12),(118,'Ice Cream',4.50,90,13),(119,'Pain Killers',7.00,150,14),(120,'Toilet Paper',8.00,60,15),(121,'Cleaning Spray',5.50,80,16),(122,'Cat Food',18.00,60,17),(123,'Bananas',1.20,150,18),(124,'Shrimp',12.00,40,19),(125,'Candy',1.50,250,20),(126,'Granola Bar',2.00,120,20),(127,'Gatorade',1.75,220,11),(128,'Yogurt',3.00,110,12),(129,'Frozen Vegetables',3.50,130,13),(130,'Vitamins',8.00,90,14),(131,'Paper Towels',6.00,50,15),(132,'Sponges',2.50,90,16),(133,'Pet Shampoo',7.50,40,17),(134,'Carrots',1.80,140,18),(135,'Lobster',20.00,20,19),(136,'Crackers',2.50,150,20),(137,'Milk',2.50,100,12),(138,'Orange Juice',3.00,150,11),(139,'Butter',4.00,60,12),(140,'Frozen Pizza',5.99,80,13),(141,'Band-Aids',3.50,200,14),(142,'Laundry Detergent',10.00,40,16),(143,'Dish Soap',3.00,100,16),(144,'Dog Food',20.00,50,17),(145,'Apples',1.50,200,18),(146,'Salmon',15.00,30,19),(147,'Chips',1.99,200,20),(148,'Cookies',2.99,100,20),(149,'Water Bottle',0.99,300,11),(150,'Cheese',5.00,70,12),(151,'Ice Cream',4.50,90,13),(152,'Pain Killers',7.00,150,14),(153,'Toilet Paper',8.00,60,15),(154,'Cleaning Spray',5.50,80,16),(155,'Cat Food',18.00,60,17),(156,'Bananas',1.20,150,18),(157,'Shrimp',12.00,40,19),(158,'Candy',1.50,250,20),(159,'Granola Bar',2.00,120,20),(160,'Gatorade',1.75,220,11),(161,'Yogurt',3.00,110,12),(162,'Frozen Vegetables',3.50,130,13),(163,'Vitamins',8.00,90,14),(164,'Paper Towels',6.00,50,15),(165,'Sponges',2.50,90,16),(166,'Pet Shampoo',7.50,40,17),(167,'Carrots',1.80,140,18),(168,'Lobster',20.00,20,19),(169,'Crackers',2.50,150,20),(170,'Shampoo',5.99,50,1),(171,'Notebook',2.50,100,2),(172,'Chips',1.99,200,10),(173,'Soda',0.99,150,4),(174,'Bandages',3.99,75,5),(175,'Pain Reliever',7.99,80,6),(176,'Eye Drops',4.99,40,7),(177,'Ear Plugs',1.99,60,8),(178,'Adult Diapers',12.99,30,9),(179,'Cookies',2.99,90,10),(180,'Toothpaste',3.50,100,1),(181,'Pen',0.50,300,2),(182,'Chocolate Bar',1.50,250,10),(183,'Juice',1.20,200,11),(184,'Antiseptic Cream',5.50,50,5),(185,'Cold Medicine',8.50,60,6),(186,'Contact Lens Solution',6.99,45,7),(187,'Hearing Aid Batteries',9.99,20,8),(188,'Wipes',4.50,40,9),(189,'Nuts',3.99,80,10),(190,'Deodorant',4.99,60,1),(191,'Markers',3.00,150,2),(192,'Pretzels',2.50,180,10),(193,'Energy Drink',2.00,120,11),(194,'Gauze',2.99,70,5),(195,'Cough Syrup',6.99,50,6),(196,'Sunglasses',12.99,25,7),(197,'Hearing Aid Cleaner',7.50,35,8),(198,'Bed Pads',15.99,25,9),(199,'Granola Bar',1.25,200,10),(200,'Soap',1.99,150,1),(201,'Pencil',0.25,400,2),(202,'Popcorn',1.75,220,10),(203,'Milk',2.50,100,12),(204,'Orange Juice',3.00,150,11),(205,'Butter',4.00,60,12),(206,'Frozen Pizza',5.99,80,13),(207,'Band-Aids',3.50,200,14),(208,'Laundry Detergent',10.00,40,16),(209,'Dish Soap',3.00,100,16),(210,'Dog Food',20.00,50,17),(211,'Apples',1.50,200,18),(212,'Salmon',15.00,30,19),(213,'Water Bottle',0.99,300,11),(214,'Cheese',5.00,70,12),(215,'Ice Cream',4.50,90,13),(216,'Pain Killers',7.00,150,14),(217,'Toilet Paper',8.00,60,15),(218,'Cleaning Spray',5.50,80,16),(219,'Cat Food',18.00,60,17),(220,'Bananas',1.20,150,18),(221,'Shrimp',12.00,40,19),(222,'Candy',1.50,250,10),(223,'Gatorade',1.75,220,11),(224,'Yogurt',3.00,110,12),(225,'Frozen Vegetables',3.50,130,13),(226,'Vitamins',8.00,90,14),(227,'Paper Towels',6.00,50,15),(228,'Sponges',2.50,90,16),(229,'Pet Shampoo',7.50,40,17),(230,'Carrots',1.80,140,18),(231,'Lobster',20.00,20,19),(232,'Crackers',2.50,150,10);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-05 17:04:14
