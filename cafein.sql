-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: cafein
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_jenis`
--

DROP TABLE IF EXISTS `tbl_jenis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_jenis` (
  `jenis` varchar(2) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_jenis`
--

LOCK TABLES `tbl_jenis` WRITE;
/*!40000 ALTER TABLE `tbl_jenis` DISABLE KEYS */;
INSERT INTO `tbl_jenis` VALUES ('A','Acai'),('B','Blended'),('C','Coffee'),('E','Sweet Treats'),('K','Topping Food'),('N','Topping Drinks'),('O','Others'),('P','Pasta'),('R','Rice'),('S','Shared Bites'),('T','Tea'),('W','Western');
/*!40000 ALTER TABLE `tbl_jenis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `person id` (`person_id`),
  CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `tbl_person` (`person_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order`
--

LOCK TABLES `tbl_order` WRITE;
/*!40000 ALTER TABLE `tbl_order` DISABLE KEYS */;
INSERT INTO `tbl_order` VALUES (1,1,'2019-04-22 22:26:27','dipesan'),(2,1,'2019-04-24 20:07:59','dipesan');
/*!40000 ALTER TABLE `tbl_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_person`
--

DROP TABLE IF EXISTS `tbl_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_person` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_person`
--

LOCK TABLES `tbl_person` WRITE;
/*!40000 ALTER TABLE `tbl_person` DISABLE KEYS */;
INSERT INTO `tbl_person` VALUES (1,'meja1','10705f86b703823d889c434c01419350'),(2,'meja2','7b2c6d18787edfdbfd9e67ccdbb15c4b'),(3,'meja3','e37d2cd2c6fda2c179aa38efcaad5c49'),(4,'meja4','16d8fbd62375c5a77962ffd96c9275a2'),(5,'meja5','334399afe2f67145c62d4e9773f8c2e3'),(6,'meja6','d07cf74071a8cae70ad0eb6c79928f88'),(7,'meja7','f797f82f9a74d685af9bc0029589122e');
/*!40000 ALTER TABLE `tbl_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `Nama` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `Jenis` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `Jenis` (`Jenis`),
  CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`Jenis`) REFERENCES `tbl_jenis` (`jenis`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product`
--

LOCK TABLES `tbl_product` WRITE;
/*!40000 ALTER TABLE `tbl_product` DISABLE KEYS */;
INSERT INTO `tbl_product` VALUES (1,'chili beef fries or nachos',30,'S'),(2,'cheesy mix fries',28,'S'),(3,'libreria fried sampler',30,'S'),(4,'seafood sampler',32,'S'),(5,'cheesy pizza',47,'S'),(6,'mushroom pizza',50,'S'),(7,'supreme pizza',48,'S'),(8,'meatlover pizza',50,'S'),(9,'grilled chicken salad',30,'W'),(10,'meatballsmash',40,'W'),(11,'chicken \'n chips parmigiana',40,'W'),(12,'house burger',40,'W'),(13,'coney dog',42,'W'),(14,'all day egg',42,'W'),(15,'sausage and egg',42,'W'),(16,'bbq chicken steak',42,'W'),(17,'aglio olio',33,'P'),(18,'seafood mariana',33,'P'),(19,'chicken pesto',33,'P'),(20,'carbonara',33,'P'),(21,'bolognese',33,'P'),(22,'chicken katsu woku',30,'R'),(23,'dory sambal matah',30,'R'),(24,'nasi goreng libreria',30,'R'),(25,'nasi gila',30,'R'),(26,'hot beef rice',30,'R'),(27,'crushed chicken rice',30,'R'),(28,'salted egg chicken rice',32,'R'),(29,'beef bulgogi rice',32,'R'),(30,'mango acai bowl',35,'A'),(31,'dragonfruit acai bowl',35,'A'),(32,'egg',6,'K'),(33,'rice',6,'K'),(34,'cheddar cheese',8,'K'),(35,'mushroom',8,'K'),(36,'cheese sauce',8,'K'),(37,'sausage',12,'K'),(38,'mozarella cheese',12,'K'),(39,'espresso',13,'C'),(40,'double espresso',15,'C'),(41,'americano hot',17,'C'),(42,'americano ice',20,'C'),(43,'piccolo',22,'C'),(44,'cappuccino hot',25,'C'),(45,'cappuccino ice',30,'C'),(46,'latte hot',27,'C'),(47,'latte ice',30,'C'),(48,'caramel latte hot',30,'C'),(49,'caramel latte ice',33,'C'),(50,'hazelnut latte hot',30,'C'),(51,'hazelnut latte ice',33,'C'),(52,'mocha caramel frappe',35,'C'),(53,'salted caramel frape',35,'C'),(54,'baileys frappe',35,'C'),(55,'tiramisu',35,'C'),(56,'hot tea bag by dilmah',25,'T'),(57,'hot tea pot by gryphon',30,'T'),(58,'iced tea',16,'T'),(59,'iced longan tea',25,'T'),(60,'iced apple tea',25,'T'),(61,'iced lemon tea',25,'T'),(62,'iced berry tea',25,'T'),(63,'iced aloe lavender tea',25,'T'),(64,'iced thai tea',25,'T'),(65,'cookies \'n cream',32,'B'),(66,'choco cookies \'n cream',32,'B'),(67,'vanilla hazelnut frappe',32,'B'),(68,'vanilla milkshake',32,'B'),(69,'choco milkshake',32,'B'),(70,'choco peanut butter',35,'B'),(71,'oatvomaltine',35,'B'),(72,'stracciatella chocochips',35,'B'),(73,'lemon sorbet',27,'O'),(74,'strawberry sorbet',27,'O'),(75,'kiwi cucumber soda',30,'O'),(76,'honey longan lime soda',30,'O'),(77,'strawberry smoothies',32,'O'),(78,'mango yoghhurt',32,'O'),(79,'green tea hot',30,'O'),(80,'green tea ice',35,'O'),(81,'taro hot',30,'O'),(82,'taro ice',35,'O'),(83,'red velvet hot',30,'O'),(84,'red velvet ice',35,'O'),(85,'chocolate hot',30,'O'),(86,'chocolate ice',32,'O'),(87,'mineral water (600 ml)',16,'O'),(88,'affogato',21,'E'),(89,'pancake with ice cream',28,'E'),(90,'waffle with ice cream',28,'E'),(91,'classic american style pancake',28,'E'),(92,'cookie dough brownies',30,'E'),(93,'ovomaltine smores waffle',30,'E'),(94,'ice cream',8,'N'),(95,'extra caramel',8,'N'),(96,'extra hazelnut',8,'N'),(97,'extra choco',8,'N'),(98,'extra maple',8,'N');
/*!40000 ALTER TABLE `tbl_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_rumahmakan`
--

DROP TABLE IF EXISTS `tbl_rumahmakan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_rumahmakan` (
  `id_rumahmakan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_rumahmakan` varchar(45) DEFAULT NULL,
  `jarak_rumahmakan` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_rumahmakan`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_rumahmakan`
--

LOCK TABLES `tbl_rumahmakan` WRITE;
/*!40000 ALTER TABLE `tbl_rumahmakan` DISABLE KEYS */;
INSERT INTO `tbl_rumahmakan` VALUES (1,'RM Sederhana',5.23),(2,'Mak Ni',1.10),(3,'RM Goyang Lidah',1.12),(4,'J ONE',0.21),(5,'RM Cahaya',0.13),(6,'Warung Kampus',1.00),(7,'Warung Gang 3',2.13),(8,'Warung Abah',1.30);
/*!40000 ALTER TABLE `tbl_rumahmakan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_waitreess`
--

DROP TABLE IF EXISTS `tbl_waitreess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_waitreess` (
  `waitreess_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  PRIMARY KEY (`waitreess_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_waitreess`
--

LOCK TABLES `tbl_waitreess` WRITE;
/*!40000 ALTER TABLE `tbl_waitreess` DISABLE KEYS */;
INSERT INTO `tbl_waitreess` VALUES (5,'pelayan','511cc40443f2a1ab03ab373b77d28091'),(6,'koki','c38be0f1f87d0e77a0cd2fe6941253eb'),(7,'kasir','c7911af3adbd12a035b289556d96470a'),(8,'admin','21232f297a57a5a743894a0e4a801fc3');
/*!40000 ALTER TABLE `tbl_waitreess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblorderproduct`
--

DROP TABLE IF EXISTS `tblorderproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorderproduct` (
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  KEY `order id` (`order_id`),
  KEY `product id` (`product_id`),
  CONSTRAINT `tblorderproduct_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tblorderproduct_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorderproduct`
--

LOCK TABLES `tblorderproduct` WRITE;
/*!40000 ALTER TABLE `tblorderproduct` DISABLE KEYS */;
INSERT INTO `tblorderproduct` VALUES (1,88,3,'dibayar'),(1,11,4,'dibayar'),(2,2,1,'dibayar'),(2,3,1,'dibayar'),(2,6,1,'dibayar');
/*!40000 ALTER TABLE `tblorderproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproduct`
--

DROP TABLE IF EXISTS `tblproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproduct` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproduct`
--

LOCK TABLES `tblproduct` WRITE;
/*!40000 ALTER TABLE `tblproduct` DISABLE KEYS */;
INSERT INTO `tblproduct` VALUES (1,'3D Camera','3DcAM01','product-images/camera.jpg',1500.00),(2,'External Hard Drive','USB02','product-images/external-hard-drive.jpg',800.00),(3,'Wrist Watch','wristWear03','product-images/watch.jpg',300.00);
/*!40000 ALTER TABLE `tblproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v_acai`
--

DROP TABLE IF EXISTS `v_acai`;
/*!50001 DROP VIEW IF EXISTS `v_acai`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_acai` AS SELECT 
 1 AS `product_id`,
 1 AS `Nama`,
 1 AS `price`,
 1 AS `Jenis`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_blended`
--

DROP TABLE IF EXISTS `v_blended`;
/*!50001 DROP VIEW IF EXISTS `v_blended`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_blended` AS SELECT 
 1 AS `product_id`,
 1 AS `Nama`,
 1 AS `price`,
 1 AS `Jenis`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_coffee`
--

DROP TABLE IF EXISTS `v_coffee`;
/*!50001 DROP VIEW IF EXISTS `v_coffee`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_coffee` AS SELECT 
 1 AS `product_id`,
 1 AS `Nama`,
 1 AS `price`,
 1 AS `Jenis`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_others`
--

DROP TABLE IF EXISTS `v_others`;
/*!50001 DROP VIEW IF EXISTS `v_others`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_others` AS SELECT 
 1 AS `product_id`,
 1 AS `Nama`,
 1 AS `price`,
 1 AS `Jenis`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_pasta`
--

DROP TABLE IF EXISTS `v_pasta`;
/*!50001 DROP VIEW IF EXISTS `v_pasta`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_pasta` AS SELECT 
 1 AS `product_id`,
 1 AS `Nama`,
 1 AS `price`,
 1 AS `Jenis`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_pembayaran`
--

DROP TABLE IF EXISTS `v_pembayaran`;
/*!50001 DROP VIEW IF EXISTS `v_pembayaran`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_pembayaran` AS SELECT 
 1 AS `order_id`,
 1 AS `person_id`,
 1 AS `product_id`,
 1 AS `Nama`,
 1 AS `price`,
 1 AS `order_date`,
 1 AS `quantity`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_pemesanan`
--

DROP TABLE IF EXISTS `v_pemesanan`;
/*!50001 DROP VIEW IF EXISTS `v_pemesanan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_pemesanan` AS SELECT 
 1 AS `order_id`,
 1 AS `person_id`,
 1 AS `product_id`,
 1 AS `Nama`,
 1 AS `order_date`,
 1 AS `quantity`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_rice`
--

DROP TABLE IF EXISTS `v_rice`;
/*!50001 DROP VIEW IF EXISTS `v_rice`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_rice` AS SELECT 
 1 AS `product_id`,
 1 AS `Nama`,
 1 AS `price`,
 1 AS `Jenis`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_sajikan`
--

DROP TABLE IF EXISTS `v_sajikan`;
/*!50001 DROP VIEW IF EXISTS `v_sajikan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_sajikan` AS SELECT 
 1 AS `order_id`,
 1 AS `person_id`,
 1 AS `product_id`,
 1 AS `Nama`,
 1 AS `order_date`,
 1 AS `quantity`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_sharedbites`
--

DROP TABLE IF EXISTS `v_sharedbites`;
/*!50001 DROP VIEW IF EXISTS `v_sharedbites`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_sharedbites` AS SELECT 
 1 AS `product_id`,
 1 AS `Nama`,
 1 AS `price`,
 1 AS `Jenis`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_sweet`
--

DROP TABLE IF EXISTS `v_sweet`;
/*!50001 DROP VIEW IF EXISTS `v_sweet`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_sweet` AS SELECT 
 1 AS `product_id`,
 1 AS `Nama`,
 1 AS `price`,
 1 AS `Jenis`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_tea`
--

DROP TABLE IF EXISTS `v_tea`;
/*!50001 DROP VIEW IF EXISTS `v_tea`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_tea` AS SELECT 
 1 AS `product_id`,
 1 AS `Nama`,
 1 AS `price`,
 1 AS `Jenis`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_topdrinks`
--

DROP TABLE IF EXISTS `v_topdrinks`;
/*!50001 DROP VIEW IF EXISTS `v_topdrinks`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_topdrinks` AS SELECT 
 1 AS `product_id`,
 1 AS `Nama`,
 1 AS `price`,
 1 AS `Jenis`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_topfood`
--

DROP TABLE IF EXISTS `v_topfood`;
/*!50001 DROP VIEW IF EXISTS `v_topfood`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_topfood` AS SELECT 
 1 AS `product_id`,
 1 AS `Nama`,
 1 AS `price`,
 1 AS `Jenis`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_western`
--

DROP TABLE IF EXISTS `v_western`;
/*!50001 DROP VIEW IF EXISTS `v_western`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_western` AS SELECT 
 1 AS `product_id`,
 1 AS `Nama`,
 1 AS `price`,
 1 AS `Jenis`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_acai`
--

/*!50001 DROP VIEW IF EXISTS `v_acai`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`raldo`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_acai` AS (select `tbl_product`.`product_id` AS `product_id`,`tbl_product`.`Nama` AS `Nama`,`tbl_product`.`price` AS `price`,`tbl_product`.`Jenis` AS `Jenis` from `tbl_product` where (`tbl_product`.`Jenis` = 'A')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_blended`
--

/*!50001 DROP VIEW IF EXISTS `v_blended`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`raldo`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_blended` AS (select `tbl_product`.`product_id` AS `product_id`,`tbl_product`.`Nama` AS `Nama`,`tbl_product`.`price` AS `price`,`tbl_product`.`Jenis` AS `Jenis` from `tbl_product` where (`tbl_product`.`Jenis` = 'B')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_coffee`
--

/*!50001 DROP VIEW IF EXISTS `v_coffee`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`raldo`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_coffee` AS (select `tbl_product`.`product_id` AS `product_id`,`tbl_product`.`Nama` AS `Nama`,`tbl_product`.`price` AS `price`,`tbl_product`.`Jenis` AS `Jenis` from `tbl_product` where (`tbl_product`.`Jenis` = 'C')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_others`
--

/*!50001 DROP VIEW IF EXISTS `v_others`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`raldo`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_others` AS (select `tbl_product`.`product_id` AS `product_id`,`tbl_product`.`Nama` AS `Nama`,`tbl_product`.`price` AS `price`,`tbl_product`.`Jenis` AS `Jenis` from `tbl_product` where (`tbl_product`.`Jenis` = 'O')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pasta`
--

/*!50001 DROP VIEW IF EXISTS `v_pasta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`raldo`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pasta` AS (select `tbl_product`.`product_id` AS `product_id`,`tbl_product`.`Nama` AS `Nama`,`tbl_product`.`price` AS `price`,`tbl_product`.`Jenis` AS `Jenis` from `tbl_product` where (`tbl_product`.`Jenis` = 'P')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pembayaran`
--

/*!50001 DROP VIEW IF EXISTS `v_pembayaran`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`raldo`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pembayaran` AS (select `tbl_order`.`order_id` AS `order_id`,`tbl_order`.`person_id` AS `person_id`,`tbl_product`.`product_id` AS `product_id`,`tbl_product`.`Nama` AS `Nama`,`tbl_product`.`price` AS `price`,`tbl_order`.`order_date` AS `order_date`,`tblorderproduct`.`quantity` AS `quantity`,`tbl_order`.`status` AS `status` from ((`tblorderproduct` join `tbl_order` on((`tblorderproduct`.`order_id` = `tbl_order`.`order_id`))) join `tbl_product` on((`tblorderproduct`.`product_id` = `tbl_product`.`product_id`))) where (`tblorderproduct`.`status` = 'disajikan')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pemesanan`
--

/*!50001 DROP VIEW IF EXISTS `v_pemesanan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`raldo`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pemesanan` AS (select `tbl_order`.`order_id` AS `order_id`,`tbl_order`.`person_id` AS `person_id`,`tbl_product`.`product_id` AS `product_id`,`tbl_product`.`Nama` AS `Nama`,`tbl_order`.`order_date` AS `order_date`,`tblorderproduct`.`quantity` AS `quantity`,`tbl_order`.`status` AS `status` from ((`tblorderproduct` join `tbl_order` on((`tblorderproduct`.`order_id` = `tbl_order`.`order_id`))) join `tbl_product` on((`tblorderproduct`.`product_id` = `tbl_product`.`product_id`))) where (`tblorderproduct`.`status` = 'dipesan')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_rice`
--

/*!50001 DROP VIEW IF EXISTS `v_rice`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`raldo`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_rice` AS (select `tbl_product`.`product_id` AS `product_id`,`tbl_product`.`Nama` AS `Nama`,`tbl_product`.`price` AS `price`,`tbl_product`.`Jenis` AS `Jenis` from `tbl_product` where (`tbl_product`.`Jenis` = 'R')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_sajikan`
--

/*!50001 DROP VIEW IF EXISTS `v_sajikan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`raldo`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_sajikan` AS (select `tbl_order`.`order_id` AS `order_id`,`tbl_order`.`person_id` AS `person_id`,`tbl_product`.`product_id` AS `product_id`,`tbl_product`.`Nama` AS `Nama`,`tbl_order`.`order_date` AS `order_date`,`tblorderproduct`.`quantity` AS `quantity`,`tbl_order`.`status` AS `status` from ((`tblorderproduct` join `tbl_order` on((`tblorderproduct`.`order_id` = `tbl_order`.`order_id`))) join `tbl_product` on((`tblorderproduct`.`product_id` = `tbl_product`.`product_id`))) where (`tblorderproduct`.`status` = 'dimasak')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_sharedbites`
--

/*!50001 DROP VIEW IF EXISTS `v_sharedbites`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`raldo`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_sharedbites` AS (select `tbl_product`.`product_id` AS `product_id`,`tbl_product`.`Nama` AS `Nama`,`tbl_product`.`price` AS `price`,`tbl_product`.`Jenis` AS `Jenis` from `tbl_product` where (`tbl_product`.`Jenis` = 'B')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_sweet`
--

/*!50001 DROP VIEW IF EXISTS `v_sweet`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`raldo`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_sweet` AS (select `tbl_product`.`product_id` AS `product_id`,`tbl_product`.`Nama` AS `Nama`,`tbl_product`.`price` AS `price`,`tbl_product`.`Jenis` AS `Jenis` from `tbl_product` where (`tbl_product`.`Jenis` = 'E')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_tea`
--

/*!50001 DROP VIEW IF EXISTS `v_tea`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`raldo`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_tea` AS (select `tbl_product`.`product_id` AS `product_id`,`tbl_product`.`Nama` AS `Nama`,`tbl_product`.`price` AS `price`,`tbl_product`.`Jenis` AS `Jenis` from `tbl_product` where (`tbl_product`.`Jenis` = 'T')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_topdrinks`
--

/*!50001 DROP VIEW IF EXISTS `v_topdrinks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`raldo`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_topdrinks` AS (select `tbl_product`.`product_id` AS `product_id`,`tbl_product`.`Nama` AS `Nama`,`tbl_product`.`price` AS `price`,`tbl_product`.`Jenis` AS `Jenis` from `tbl_product` where (`tbl_product`.`Jenis` = 'N')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_topfood`
--

/*!50001 DROP VIEW IF EXISTS `v_topfood`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`raldo`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_topfood` AS (select `tbl_product`.`product_id` AS `product_id`,`tbl_product`.`Nama` AS `Nama`,`tbl_product`.`price` AS `price`,`tbl_product`.`Jenis` AS `Jenis` from `tbl_product` where (`tbl_product`.`Jenis` = 'K')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_western`
--

/*!50001 DROP VIEW IF EXISTS `v_western`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`raldo`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_western` AS (select `tbl_product`.`product_id` AS `product_id`,`tbl_product`.`Nama` AS `Nama`,`tbl_product`.`price` AS `price`,`tbl_product`.`Jenis` AS `Jenis` from `tbl_product` where (`tbl_product`.`Jenis` = 'W')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-24 20:38:32
