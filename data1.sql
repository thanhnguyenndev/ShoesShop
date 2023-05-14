-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: shopdb
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
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `description` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `seo` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (1,NULL,NULL,_binary '',NULL,NULL,'nike','Giày Nike',NULL),(2,NULL,NULL,_binary '',NULL,NULL,'adidas','Giày Adidas',NULL),(4,NULL,NULL,_binary '',NULL,NULL,'Puma','Giày Puma',NULL),(5,NULL,NULL,_binary '',NULL,NULL,'Under Armour','Giày Under Armour',NULL);
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contact`
--

DROP TABLE IF EXISTS `tbl_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contact`
--

LOCK TABLES `tbl_contact` WRITE;
/*!40000 ALTER TABLE `tbl_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `detail_description` longtext NOT NULL,
  `is_hot` bit(1) NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `price_sale` decimal(13,2) DEFAULT NULL,
  `seo` varchar(1000) DEFAULT NULL,
  `short_description` varchar(1000) DEFAULT NULL,
  `so_luong_ton` int DEFAULT NULL,
  `title` varchar(1000) NOT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKl5l3hu2fh1ixbx8ejat9df13p` (`category_id`),
  CONSTRAINT `FKl5l3hu2fh1ixbx8ejat9df13p` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_products`
--

LOCK TABLES `tbl_products` WRITE;
/*!40000 ALTER TABLE `tbl_products` DISABLE KEYS */;
INSERT INTO `tbl_products` VALUES (11,NULL,NULL,_binary '',NULL,NULL,'product/avatar/Nike-Gripkinit-Phantom-GX-Elite-AG-By-You.jpg','<p>Nike Gripkinit Phantom GX Elite AG By You<br></p>',_binary '',1420000.00,1000.00,NULL,'Nike Gripkinit Phantom GX Elite AG By You',4,'Nike Gripkinit Phantom GX Elite AG By You',1),(12,NULL,NULL,_binary '',NULL,NULL,'product/avatar/Nike-Gripknit-Phantom-GX-Elite-Dynamic-Fit-AG-By-You.jpg','<p>Nike Gripknit Phantom GX Elite Dynamic Fit AG By You<br></p>',_binary '',2500000.00,1122.00,NULL,'Nike Gripknit Phantom GX Elite Dynamic Fit AG By You',6,'Nike Gripknit Phantom GX Elite Dynamic Fit AG By You',1),(13,NULL,NULL,_binary '',NULL,NULL,'product/avatar/NikeGripknitPhantomGXEliteDynamicFitFG.jpg','<p>Nike Gripknit Phantom GX Elite Dynamic Fit FG<br></p>',_binary '\0',1000000.00,1000.00,NULL,'Nike Gripknit Phantom GX Elite Dynamic Fit FG',5,'Nike Gripknit Phantom GX Elite Dynamic Fit FG',1),(14,NULL,NULL,_binary '',NULL,NULL,'product/avatar/NikeGripknitPhantomGXEliteFusionFG.jpg','<p>Nike Gripknit Phantom GX Elite Fusion FG<br></p>',_binary '',1550000.00,1000.00,NULL,'Nike Gripknit Phantom GX Elite Fusion FG',3,'Nike Gripknit Phantom GX Elite Fusion FG',1),(15,NULL,NULL,_binary '',NULL,NULL,'product/avatar/phantom-gt2-academy-ic-indoor-court-football-shoes-FrdsZG.jpg','<p>Nike Phantom GT2 Academy IC<br></p>',_binary '',5230000.00,1000.00,NULL,'Nike Phantom GT2 Academy IC',10,'Nike Phantom GT2 Academy IC',1),(16,NULL,NULL,_binary '',NULL,NULL,'product/avatar/custom-phantom-academy-dynamic-fit-by-you.jpg','<p>Nike Phantom GX Academy Dynamic Fit MG By You<br></p>',_binary '',1400202.00,10000.00,NULL,'Nike Phantom GX Academy Dynamic Fit MG By You',5,'Nike Phantom GX Academy Dynamic Fit MG By You',1),(17,NULL,NULL,_binary '',NULL,NULL,'product/avatar/NikePhantomGXAcademyIC.jpg','<p>Nike Phantom GX Academy IC<br></p>',_binary '\0',1048585.00,10000.00,NULL,'Nike Phantom GX Academy IC',9,'Nike Phantom GX Academy IC',1),(18,NULL,NULL,_binary '',NULL,NULL,'product/avatar/custom-phantom-academy-low-by-you.jpg','<p>Nike Phantom GX Academy MG By You<br></p>',_binary '',3000000.00,10000.00,NULL,'Nike Phantom GX Academy MG By You',3,'Nike Phantom GX Academy MG By You',1),(19,NULL,NULL,_binary '',NULL,NULL,'product/avatar/NikePhantomGXAcademyTF.jpg','<p>Nike Phantom GX Academy TF<br></p>',_binary '',1400000.00,10000.00,NULL,'Nike Phantom GX Academy TF',5,'Nike Phantom GX Academy TF',1),(20,NULL,NULL,_binary '',NULL,NULL,'product/avatar/NikeStreetgato.jpg','<p>Nike Streetgato<br></p>',_binary '',3000000.00,10000.00,NULL,'Nike Streetgato',6,'Nike Streetgato',1),(21,NULL,NULL,_binary '',NULL,NULL,'product/avatar/NikeZoomMercurialDreamSpeedSuperfly9EliteFG.jpg','<p>Nike Zoom Mercurial Dream Speed Superfly 9 Elite FG<br></p>',_binary '\0',6000000.00,10000.00,NULL,'Nike Zoom Mercurial Dream Speed Superfly 9 Elite FG',5,'Nike Zoom Mercurial Dream Speed Superfly 9 Elite FG',1),(22,NULL,NULL,_binary '',NULL,NULL,'product/avatar/NikeZoomMercurialDreamSpeedVapor15AcademyTF.jpg','<p>Nike Zoom Mercurial Dream Speed Vapor 15 Academy TF<br></p>',_binary '',4000000.00,40000.00,NULL,'Nike Zoom Mercurial Dream Speed Vapor 15 Academy TF',10,'Nike Zoom Mercurial Dream Speed Vapor 15 Academy TF',1),(23,NULL,NULL,_binary '',NULL,NULL,'product/avatar/NikeZoomMercurialSuperfly9EliteFGByYou.jpg','<p>Nike Zoom Mercurial Superfly 9 Elite FG By You<br></p>',_binary '',2500000.00,10000.00,NULL,'Nike Zoom Mercurial Superfly 9 Elite FG By You',6,'Nike Zoom Mercurial Superfly 9 Elite FG By You',1),(24,NULL,NULL,_binary '',NULL,NULL,'product/avatar/NikeZoomMercurialVapor15AcademyFGMGByYou.jpg','<p>Nike Zoom Mercurial Vapor 15 Academy FGMG By You<br></p>',_binary '',3000000.00,10000.00,NULL,'Nike Zoom Mercurial Vapor 15 Academy FGMG By You',6,'Nike Zoom Mercurial Vapor 15 Academy FGMG By You',1),(25,NULL,NULL,_binary '',NULL,NULL,'product/avatar/NikeZoomMercurialVapor15AcademyIC.jpg','<p>Nike Zoom Mercurial Vapor 15 Academy IC<br></p>',_binary '',4000000.00,10000.00,NULL,'Nike Zoom Mercurial Vapor 15 Academy IC',15,'Nike Zoom Mercurial Vapor 15 Academy IC',1),(26,NULL,NULL,_binary '',NULL,NULL,'product/avatar/NikeZoomMercurialVapor15EliteFG.jpg','<p>Nike Zoom Mercurial Vapor 15 Elite FG<br></p>',_binary '',2700000.00,10000.00,NULL,'Nike Zoom Mercurial Vapor 15 Elite FG',17,'Nike Zoom Mercurial Vapor 15 Elite FG',1),(27,NULL,NULL,_binary '',NULL,NULL,'product/avatar/COPA_PURE1_FIRM_GROUND_BOOTS_1.jpg','<p>ADIDAS COPA PURE.1 FIRM GROUND BOOTS<br></p>',_binary '',3100000.00,10000.00,NULL,'ADIDAS COPA PURE.1 FIRM GROUND BOOTS',24,'ADIDAS COPA PURE.1 FIRM GROUND BOOTS',2),(28,NULL,NULL,_binary '',NULL,NULL,'product/avatar/COPA_PURE3_TURF_BOOTS_2.jpg','<p>ADIDAS COPA PURE.3 TURF BOOTS<br></p>',_binary '',3400000.00,10000.00,NULL,'ADIDAS COPA PURE.3 TURF BOOTS',25,'ADIDAS COPA PURE.3 TURF BOOTS',2),(29,NULL,NULL,_binary '',NULL,NULL,'product/avatar/COPA_PURE3_TURF_BOOTS_2.jpg','<p>ADIDAS COPA PURE.4 TURF BOOTS<br></p>',_binary '',4100000.00,10000.00,NULL,'ADIDAS COPA PURE.4 TURF BOOTS',26,'ADIDAS COPA PURE.4 TURF BOOTS',2),(30,NULL,NULL,_binary '',NULL,NULL,'product/avatar/PREDATOR_ACCURACY3_LOW_FIRM_GROUND_BOOTS_2.jpg','<p>ADIDAS PREDATOR ACCURACY.3 LOW FIRM GROUND BOOTS<br></p>',_binary '',3400000.00,10000.00,NULL,'ADIDAS PREDATOR ACCURACY.3 LOW FIRM GROUND BOOTS',15,'ADIDAS PREDATOR ACCURACY.3 LOW FIRM GROUND BOOTS',2),(31,NULL,NULL,_binary '',NULL,NULL,'product/avatar/PREDATOR_ACCURACY3_LOW_TURF_BOOTS_2.jpg','<p>ADIDAS PREDATOR ACCURACY.3 LOW TURF BOOTS<br></p>',_binary '',3500000.00,10000.00,NULL,'ADIDAS PREDATOR ACCURACY.3 LOW TURF BOOTS',17,'ADIDAS PREDATOR ACCURACY.3 LOW TURF BOOTS',2),(32,NULL,NULL,_binary '',NULL,NULL,'product/avatar/PREDATOR_FREAK3_TURF_BOOTS_1.jpg','<p>ADIDAS PREDATOR FREAK.3 TURF BOOTS<br></p>',_binary '',2400000.00,10000.00,NULL,'ADIDAS PREDATOR FREAK.3 TURF BOOTS',23,'ADIDAS PREDATOR FREAK.3 TURF BOOTS',2),(33,NULL,NULL,_binary '',NULL,NULL,'product/avatar/PREDATOR_MUTATOR_20_1_LOW_FIRM_GROUND_BOOTS_1.jpg','<p>ADIDAS PREDATOR MUTATOR 20.1 LOW FIRM GROUND BOOTS<br></p>',_binary '',3700000.00,10000.00,NULL,'ADIDAS PREDATOR MUTATOR 20.1 LOW FIRM GROUND BOOTS',25,'ADIDAS PREDATOR MUTATOR 20.1 LOW FIRM GROUND BOOTS',2),(34,NULL,NULL,_binary '',NULL,NULL,'product/avatar/X_SPEEDPORTAL_MESSI3_FIRM_GROUND_BOOTS_2.jpg','<p>ADIDAS X SPEEDPORTAL MESSI.3 FIRM GROUND BOOTS<br></p>',_binary '',3100000.00,10000.00,NULL,'ADIDAS X SPEEDPORTAL MESSI.3 FIRM GROUND BOOTS',26,'ADIDAS X SPEEDPORTAL MESSI.3 FIRM GROUND BOOTS',2),(35,NULL,NULL,_binary '',NULL,NULL,'product/avatar/X_SPEEDPORTAL1_FIRM_GROUND_BOOTS_2.jpg','<p>ADIDAS X SPEEDPORTAL.1 FIRM GROUND BOOTS<br></p>',_binary '',4200000.00,10000.00,NULL,'ADIDAS X SPEEDPORTAL.1 FIRM GROUND BOOTS',26,'ADIDAS X SPEEDPORTAL.1 FIRM GROUND BOOTS',2),(36,NULL,NULL,_binary '',NULL,NULL,'product/avatar/XSPEEDPORTAL3FIRMGROUNDBOOTS2.jpg','<p>ADIDAS X SPEEDPORTAL.3 FIRM GROUND BOOTS<br></p>',_binary '',5200000.00,10000.00,NULL,'ADIDAS X SPEEDPORTAL.3 FIRM GROUND BOOTS',30,'ADIDAS X SPEEDPORTAL.3 FIRM GROUND BOOTS',2),(37,NULL,NULL,_binary '',NULL,NULL,'product/avatar/X_SPEEDPORTAL3_TURF_BOOTS_2.jpg','<p>ADIDAS X SPEEDPORTAL.3 TURF BOOTS<br></p>',_binary '',4300000.00,10000.00,NULL,'ADIDAS X SPEEDPORTAL.3 TURF BOOTS',18,'ADIDAS X SPEEDPORTAL.3 TURF BOOTS',2),(39,NULL,NULL,_binary '',NULL,NULL,'product/avatar/PUMA_BATMAN_FUTURE_3_3_FGAG_Mens_Soccer_Cleats_1.jpg','<p>Puma BATMAN FUTURE 3 3 FGAG<br></p>',_binary '',4200000.00,10000.00,NULL,'Puma BATMAN FUTURE 3 3 FGAG',17,'Puma BATMAN FUTURE 3 3 FGAG',4),(40,NULL,NULL,_binary '',NULL,NULL,'product/avatar/PUMA_CHRISTIAN_PULISIC_ULTRA_Ultimate_FGAG_Soccer_Cleats_1.jpg','<p>Puma CHRISTIAN PULISIC ULTRA Ultimate FGAG<br></p>',_binary '',2600000.00,10000.00,NULL,'Puma CHRISTIAN PULISIC ULTRA Ultimate FGAG',25,'Puma CHRISTIAN PULISIC ULTRA Ultimate FGAG',4),(41,NULL,NULL,_binary '',NULL,NULL,'product/avatar/EvoSPEED_Electric_13_Track_and_Field_Shoes_1.jpg','<p>Puma Evo SPEED Electric 13 Track and Field<br></p>',_binary '',4300000.00,10000.00,NULL,'Puma Evo SPEED Electric 13 Track and Field',27,'Puma Evo SPEED Electric 13 Track and Field',4),(42,NULL,NULL,_binary '',NULL,NULL,'product/avatar/FUTURE_1_4_FGAG_Soccer_Cleats_1.jpg','<p>Puma FUTURE 1 4 FGAG<br></p>',_binary '',4000000.00,10000.00,NULL,'Puma FUTURE 1 4 FGAG',26,'Puma FUTURE 1 4 FGAG',4),(43,NULL,NULL,_binary '',NULL,NULL,'product/avatar/FUTURE_2_4_FGAG_Men_Soccer_Cleats_1.jpg','<p>Puma FUTURE 2 4 FGAG<br></p>',_binary '',4400000.00,10000.00,NULL,'Puma FUTURE 2 4 FGAG',33,'Puma FUTURE 2 4 FGAG',4),(44,NULL,NULL,_binary '',NULL,NULL,'product/avatar/King_Platinum_21_VGN_FGAG_Mens_Soccer_Cleats_1.jpg','<p>Puma King Platinum 21 VGN FGAG<br></p>',_binary '',3300000.00,10000.00,NULL,'Puma King Platinum 21 VGN FGAG',27,'Puma King Platinum 21 VGN FGAG',4),(45,NULL,NULL,_binary '',NULL,NULL,'product/avatar/King_Ultimate_Brilliance_FGAG_Womens_Soccer_Cleats_1.jpg','<p>Puma King Ultimate Brilliance FGAG<br></p>',_binary '',5000000.00,10000.00,NULL,'Puma King Ultimate Brilliance FGAG',14,'Puma King Ultimate Brilliance FGAG',4),(46,NULL,NULL,_binary '',NULL,NULL,'product/avatar/ULTRA_1_4_FGAG_Womens_Soccer_Cleats_1.jpg','<p>Puma ULTRA 1 4 FGAG Womens<br></p>',_binary '',2300000.00,10000.00,NULL,'Puma ULTRA 1 4 FGAG Womens',19,'Puma ULTRA 1 4 FGAG Womens',4),(47,NULL,NULL,_binary '',NULL,NULL,'product/avatar/ULTRA_ULTIMATE_FG_AG_Soccer_Cleats_1.jpg','<p>Puma ULTRA ULTIMATE FG AG<br></p>',_binary '',3500000.00,10000.00,NULL,'Puma ULTRA ULTIMATE FG AG',17,'Puma ULTRA ULTIMATE FG AG',4),(48,NULL,NULL,_binary '',NULL,NULL,'product/avatar/Boys_UA_Highlight_Franchise_Jr_1.jpg','<p>Under Armour Boys\' UA Highlight Franchise Jr. Football Cleats<br></p>',_binary '',4200000.00,10000.00,NULL,'Under Armour Boys\' UA Highlight Franchise Jr. Football Cleats',25,'Under Armour Boys\' UA Highlight Franchise Jr. Football Cleats',5),(49,NULL,NULL,_binary '',NULL,NULL,'product/avatar/Blur_Smoke_2_0_MC_LE_AA_1.jpg','<p>Under Armour Men\'s UA Blur Smoke 2.0 MC LE AA Football Cleats<br></p>',_binary '',4300000.00,10000.00,NULL,'Under Armour Men\'s UA Blur Smoke 2.0 MC LE AA Football Cleats',27,'Under Armour Men\'s UA Blur Smoke 2.0 MC LE AA Football Cleats',5),(50,NULL,NULL,_binary '',NULL,NULL,'product/avatar/Men_UA_Blur_Smoke_2_0_MC_World_Tour_Football_Cleats_2.jpg','<p>Under Armour Men\'s UA Blur Smoke 2.0 MC World Tour Football Cleats<br></p>',_binary '',3900000.00,10000.00,NULL,'Under Armour Men\'s UA Blur Smoke 2.0 MC World Tour Football Cleats',13,'Under Armour Men\'s UA Blur Smoke 2.0 MC World Tour Football Cleats',5),(51,NULL,NULL,_binary '',NULL,NULL,'product/avatar/Highlight_MC_2.jpg','<p>Under Armour Men\'s UA Highlight MC Football Cleats<br></p>',_binary '',4300000.00,10000.00,NULL,'Under Armour Men\'s UA Highlight MC Football Cleats',27,'Under Armour Men\'s UA Highlight MC Football Cleats',5),(53,NULL,NULL,_binary '',NULL,NULL,'product/avatar/Men_UA_Spotlight_Clone_MC_LE_Black_History_Month_Football_Cleats_1.jpg','<p>Under Armour Men\'s UA Spotlight Clone MC LE Black History Month Football Cleats<br></p>',_binary '',4300000.00,10000.00,NULL,'Under Armour Men\'s UA Spotlight Clone MC LE Black History Month Football Cleats',36,'Under Armour Men\'s UA Spotlight Clone MC LE Black History Month Football Cleats',5),(54,NULL,NULL,_binary '',NULL,NULL,'product/avatar/Spotlight_Lux_MC_2_0_1.jpg','<p>Under Armour Men\'s UA Spotlight Lux MC 2.0 Football Cleats<br></p>',_binary '',5400000.00,10000.00,NULL,'Under Armour Men\'s UA Spotlight Lux MC 2.0 Football Cleats',16,'Under Armour Men\'s UA Spotlight Lux MC 2.0 Football Cleats',5),(55,NULL,NULL,_binary '',NULL,NULL,'product/avatar/Men_UA_Spotlight_Clone_3_0_MC_World_Tour_Football_Cleats_1.jpg','<p>Under Armour Men\'s UA Spotlight Clone 3.0 MC World Tour Football Cleats<br></p>',_binary '',5000000.00,10000.00,NULL,'Under Armour Men\'s UA Spotlight Clone 3.0 MC World Tour Football Cleats',24,'Under Armour Men\'s UA Spotlight Clone 3.0 MC World Tour Football Cleats',5);
/*!40000 ALTER TABLE `tbl_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_products_images`
--

DROP TABLE IF EXISTS `tbl_products_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_products_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `path` varchar(200) NOT NULL,
  `title` varchar(500) NOT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjac7pn534bktj4tvkxqvydglf` (`product_id`),
  CONSTRAINT `FKjac7pn534bktj4tvkxqvydglf` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=332 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_products_images`
--

LOCK TABLES `tbl_products_images` WRITE;
/*!40000 ALTER TABLE `tbl_products_images` DISABLE KEYS */;
INSERT INTO `tbl_products_images` VALUES (55,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Nike-Gripkinit-Phantom-GX-Elite-AG-By-You3.jpg','Nike-Gripkinit-Phantom-GX-Elite-AG-By-You3.jpg',11),(56,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Nike-Gripkinit-Phantom-GX-Elite-AG-By-You4.jpg','Nike-Gripkinit-Phantom-GX-Elite-AG-By-You4.jpg',11),(57,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Nike-Gripkinit-Phantom-GX-Elite-AG-By-You6.jpg','Nike-Gripkinit-Phantom-GX-Elite-AG-By-You6.jpg',11),(58,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Nike-Gripkinit-Phantom-GX-Elite-AG-By-You.jpg','Nike-Gripkinit-Phantom-GX-Elite-AG-By-You.jpg',11),(59,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Nike-Gripkinit-Phantom-GX-Elite-AG-By-You5.jpg','Nike-Gripkinit-Phantom-GX-Elite-AG-By-You5.jpg',11),(60,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Nike-Gripkinit-Phantom-GX-Elite-AG-By-You2.jpg','Nike-Gripkinit-Phantom-GX-Elite-AG-By-You2.jpg',11),(61,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Nike-Gripknit-Phantom-GX-Elite-Dynamic-Fit-AG-By-You5.jpg','Nike-Gripknit-Phantom-GX-Elite-Dynamic-Fit-AG-By-You5.jpg',12),(62,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Nike-Gripknit-Phantom-GX-Elite-Dynamic-Fit-AG-By-You2.jpg','Nike-Gripknit-Phantom-GX-Elite-Dynamic-Fit-AG-By-You2.jpg',12),(63,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Nike-Gripknit-Phantom-GX-Elite-Dynamic-Fit-AG-By-You3.jpg','Nike-Gripknit-Phantom-GX-Elite-Dynamic-Fit-AG-By-You3.jpg',12),(64,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Nike-Gripknit-Phantom-GX-Elite-Dynamic-Fit-AG-By-You.jpg','Nike-Gripknit-Phantom-GX-Elite-Dynamic-Fit-AG-By-You.jpg',12),(65,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Nike-Gripknit-Phantom-GX-Elite-Dynamic-Fit-AG-By-You4.jpg','Nike-Gripknit-Phantom-GX-Elite-Dynamic-Fit-AG-By-You4.jpg',12),(66,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Nike-Gripknit-Phantom-GX-Elite-Dynamic-Fit-AG-By-You6.jpg','Nike-Gripknit-Phantom-GX-Elite-Dynamic-Fit-AG-By-You6.jpg',12),(67,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeGripknitPhantomGXEliteDynamicFitFG.jpg','NikeGripknitPhantomGXEliteDynamicFitFG.jpg',13),(68,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeGripknitPhantomGXEliteDynamicFitFG3.jpg','NikeGripknitPhantomGXEliteDynamicFitFG3.jpg',13),(69,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeGripknitPhantomGXEliteDynamicFitFG5.jpg','NikeGripknitPhantomGXEliteDynamicFitFG5.jpg',13),(70,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeGripknitPhantomGXEliteDynamicFitFG4.jpg','NikeGripknitPhantomGXEliteDynamicFitFG4.jpg',13),(71,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeGripknitPhantomGXEliteDynamicFitFG6.jpg','NikeGripknitPhantomGXEliteDynamicFitFG6.jpg',13),(72,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeGripknitPhantomGXEliteDynamicFitFG7.jpg','NikeGripknitPhantomGXEliteDynamicFitFG7.jpg',13),(73,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeGripknitPhantomGXEliteDynamicFitFG2.jpg','NikeGripknitPhantomGXEliteDynamicFitFG2.jpg',13),(74,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeGripknitPhantomGXEliteFusionFG6.jpg','NikeGripknitPhantomGXEliteFusionFG6.jpg',14),(75,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeGripknitPhantomGXEliteFusionFG.jpg','NikeGripknitPhantomGXEliteFusionFG.jpg',14),(76,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeGripknitPhantomGXEliteFusionFG3.jpg','NikeGripknitPhantomGXEliteFusionFG3.jpg',14),(77,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeGripknitPhantomGXEliteFusionFG5.jpg','NikeGripknitPhantomGXEliteFusionFG5.jpg',14),(78,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeGripknitPhantomGXEliteFusionFG2.jpg','NikeGripknitPhantomGXEliteFusionFG2.jpg',14),(79,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeGripknitPhantomGXEliteFusionFG4.jpg','NikeGripknitPhantomGXEliteFusionFG4.jpg',14),(80,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeGripknitPhantomGXEliteFusionFG7.jpg','NikeGripknitPhantomGXEliteFusionFG7.jpg',14),(81,NULL,NULL,_binary '',NULL,NULL,'product/pictures/phantom-gt2-academy-ic-indoor-court-football-shoes-FrdsZG5.jpg','phantom-gt2-academy-ic-indoor-court-football-shoes-FrdsZG5.jpg',15),(82,NULL,NULL,_binary '',NULL,NULL,'product/pictures/phantom-gt2-academy-ic-indoor-court-football-shoes-FrdsZG.jpg','phantom-gt2-academy-ic-indoor-court-football-shoes-FrdsZG.jpg',15),(83,NULL,NULL,_binary '',NULL,NULL,'product/pictures/phantom-gt2-academy-ic-indoor-court-football-shoes-FrdsZG7.jpg','phantom-gt2-academy-ic-indoor-court-football-shoes-FrdsZG7.jpg',15),(84,NULL,NULL,_binary '',NULL,NULL,'product/pictures/phantom-gt2-academy-ic-indoor-court-football-shoes-FrdsZG6.jpg','phantom-gt2-academy-ic-indoor-court-football-shoes-FrdsZG6.jpg',15),(85,NULL,NULL,_binary '',NULL,NULL,'product/pictures/phantom-gt2-academy-ic-indoor-court-football-shoes-FrdsZG8.jpg','phantom-gt2-academy-ic-indoor-court-football-shoes-FrdsZG8.jpg',15),(86,NULL,NULL,_binary '',NULL,NULL,'product/pictures/phantom-gt2-academy-ic-indoor-court-football-shoes-FrdsZG9.jpg','phantom-gt2-academy-ic-indoor-court-football-shoes-FrdsZG9.jpg',15),(87,NULL,NULL,_binary '',NULL,NULL,'product/pictures/phantom-gt2-academy-ic-indoor-court-football-shoes-FrdsZG3.jpg','phantom-gt2-academy-ic-indoor-court-football-shoes-FrdsZG3.jpg',15),(88,NULL,NULL,_binary '',NULL,NULL,'product/pictures/phantom-gt2-academy-ic-indoor-court-football-shoes-FrdsZG4.jpg','phantom-gt2-academy-ic-indoor-court-football-shoes-FrdsZG4.jpg',15),(89,NULL,NULL,_binary '',NULL,NULL,'product/pictures/phantom-gt2-academy-ic-indoor-court-football-shoes-FrdsZG2.jpg','phantom-gt2-academy-ic-indoor-court-football-shoes-FrdsZG2.jpg',15),(90,NULL,NULL,_binary '',NULL,NULL,'product/pictures/custom-phantom-academy-dynamic-fit-by-you4.jpg','custom-phantom-academy-dynamic-fit-by-you4.jpg',16),(91,NULL,NULL,_binary '',NULL,NULL,'product/pictures/custom-phantom-academy-dynamic-fit-by-you.jpg','custom-phantom-academy-dynamic-fit-by-you.jpg',16),(92,NULL,NULL,_binary '',NULL,NULL,'product/pictures/custom-phantom-academy-dynamic-fit-by-you3.jpg','custom-phantom-academy-dynamic-fit-by-you3.jpg',16),(93,NULL,NULL,_binary '',NULL,NULL,'product/pictures/custom-phantom-academy-dynamic-fit-by-you5.jpg','custom-phantom-academy-dynamic-fit-by-you5.jpg',16),(94,NULL,NULL,_binary '',NULL,NULL,'product/pictures/custom-phantom-academy-dynamic-fit-by-you2.jpg','custom-phantom-academy-dynamic-fit-by-you2.jpg',16),(95,NULL,NULL,_binary '',NULL,NULL,'product/pictures/custom-phantom-academy-dynamic-fit-by-you1.jpg','custom-phantom-academy-dynamic-fit-by-you1.jpg',16),(96,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikePhantomGXAcademyIC2.jpg','NikePhantomGXAcademyIC2.jpg',17),(97,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikePhantomGXAcademyIC4.jpg','NikePhantomGXAcademyIC4.jpg',17),(98,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikePhantomGXAcademyIC.jpg','NikePhantomGXAcademyIC.jpg',17),(99,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikePhantomGXAcademyIC6.jpg','NikePhantomGXAcademyIC6.jpg',17),(100,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikePhantomGXAcademyIC5.jpg','NikePhantomGXAcademyIC5.jpg',17),(101,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikePhantomGXAcademyIC3.jpg','NikePhantomGXAcademyIC3.jpg',17),(102,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikePhantomGXAcademyIC7.jpg','NikePhantomGXAcademyIC7.jpg',17),(103,NULL,NULL,_binary '',NULL,NULL,'product/pictures/custom-phantom-academy-low-by-you2.jpg','custom-phantom-academy-low-by-you2.jpg',18),(104,NULL,NULL,_binary '',NULL,NULL,'product/pictures/custom-phantom-academy-low-by-you4.jpg','custom-phantom-academy-low-by-you4.jpg',18),(105,NULL,NULL,_binary '',NULL,NULL,'product/pictures/custom-phantom-academy-low-by-you.jpg','custom-phantom-academy-low-by-you.jpg',18),(106,NULL,NULL,_binary '',NULL,NULL,'product/pictures/custom-phantom-academy-low-by-you1.jpg','custom-phantom-academy-low-by-you1.jpg',18),(107,NULL,NULL,_binary '',NULL,NULL,'product/pictures/custom-phantom-academy-low-by-you5.jpg','custom-phantom-academy-low-by-you5.jpg',18),(108,NULL,NULL,_binary '',NULL,NULL,'product/pictures/custom-phantom-academy-low-by-you3.jpg','custom-phantom-academy-low-by-you3.jpg',18),(109,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikePhantomGXAcademyTF4.jpg','NikePhantomGXAcademyTF4.jpg',19),(110,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikePhantomGXAcademyTF3.jpg','NikePhantomGXAcademyTF3.jpg',19),(111,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikePhantomGXAcademyTF7.jpg','NikePhantomGXAcademyTF7.jpg',19),(112,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikePhantomGXAcademyTF6.jpg','NikePhantomGXAcademyTF6.jpg',19),(113,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikePhantomGXAcademyTF5.jpg','NikePhantomGXAcademyTF5.jpg',19),(114,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikePhantomGXAcademyTF2.jpg','NikePhantomGXAcademyTF2.jpg',19),(115,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikePhantomGXAcademyTF.jpg','NikePhantomGXAcademyTF.jpg',19),(116,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeStreetgato3.jpg','NikeStreetgato3.jpg',20),(117,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeStreetgato.jpg','NikeStreetgato.jpg',20),(118,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeStreetgato6.jpg','NikeStreetgato6.jpg',20),(119,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeStreetgato4.jpg','NikeStreetgato4.jpg',20),(120,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeStreetgato2.jpg','NikeStreetgato2.jpg',20),(121,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeStreetgato5.jpg','NikeStreetgato5.jpg',20),(122,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeStreetgato7.jpg','NikeStreetgato7.jpg',20),(123,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialDreamSpeedSuperfly9EliteFG6.jpg','NikeZoomMercurialDreamSpeedSuperfly9EliteFG6.jpg',21),(124,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialDreamSpeedSuperfly9EliteFG8.jpg','NikeZoomMercurialDreamSpeedSuperfly9EliteFG8.jpg',21),(125,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialDreamSpeedSuperfly9EliteFG.jpg','NikeZoomMercurialDreamSpeedSuperfly9EliteFG.jpg',21),(126,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialDreamSpeedSuperfly9EliteFG4.jpg','NikeZoomMercurialDreamSpeedSuperfly9EliteFG4.jpg',21),(127,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialDreamSpeedSuperfly9EliteFG2.jpg','NikeZoomMercurialDreamSpeedSuperfly9EliteFG2.jpg',21),(128,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialDreamSpeedSuperfly9EliteFG5.jpg','NikeZoomMercurialDreamSpeedSuperfly9EliteFG5.jpg',21),(129,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialDreamSpeedSuperfly9EliteFG3.jpg','NikeZoomMercurialDreamSpeedSuperfly9EliteFG3.jpg',21),(130,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialDreamSpeedSuperfly9EliteFG7.jpg','NikeZoomMercurialDreamSpeedSuperfly9EliteFG7.jpg',21),(131,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialDreamSpeedVapor15AcademyTF6.jpg','NikeZoomMercurialDreamSpeedVapor15AcademyTF6.jpg',22),(132,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialDreamSpeedVapor15AcademyTF.jpg','NikeZoomMercurialDreamSpeedVapor15AcademyTF.jpg',22),(133,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialDreamSpeedVapor15AcademyTF7.jpg','NikeZoomMercurialDreamSpeedVapor15AcademyTF7.jpg',22),(134,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialDreamSpeedVapor15AcademyTF3.jpg','NikeZoomMercurialDreamSpeedVapor15AcademyTF3.jpg',22),(135,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialDreamSpeedVapor15AcademyTF4.jpg','NikeZoomMercurialDreamSpeedVapor15AcademyTF4.jpg',22),(136,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialDreamSpeedVapor15AcademyTF5.jpg','NikeZoomMercurialDreamSpeedVapor15AcademyTF5.jpg',22),(137,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialDreamSpeedVapor15AcademyTF2.jpg','NikeZoomMercurialDreamSpeedVapor15AcademyTF2.jpg',22),(138,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialSuperfly9EliteFGByYou6.jpg','NikeZoomMercurialSuperfly9EliteFGByYou6.jpg',23),(139,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialSuperfly9EliteFGByYou2.jpg','NikeZoomMercurialSuperfly9EliteFGByYou2.jpg',23),(140,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialSuperfly9EliteFGByYou.jpg','NikeZoomMercurialSuperfly9EliteFGByYou.jpg',23),(141,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialSuperfly9EliteFGByYou4.jpg','NikeZoomMercurialSuperfly9EliteFGByYou4.jpg',23),(142,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialSuperfly9EliteFGByYou3.jpg','NikeZoomMercurialSuperfly9EliteFGByYou3.jpg',23),(143,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialSuperfly9EliteFGByYou5.jpg','NikeZoomMercurialSuperfly9EliteFGByYou5.jpg',23),(144,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialSuperfly9EliteFGByYou7.jpg','NikeZoomMercurialSuperfly9EliteFGByYou7.jpg',23),(145,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialVapor15AcademyFGMGByYou3.jpg','NikeZoomMercurialVapor15AcademyFGMGByYou3.jpg',24),(146,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialVapor15AcademyFGMGByYou4.jpg','NikeZoomMercurialVapor15AcademyFGMGByYou4.jpg',24),(147,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialVapor15AcademyFGMGByYou.jpg','NikeZoomMercurialVapor15AcademyFGMGByYou.jpg',24),(148,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialVapor15AcademyFGMGByYou2.jpg','NikeZoomMercurialVapor15AcademyFGMGByYou2.jpg',24),(149,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialVapor15AcademyFGMGByYou6.jpg','NikeZoomMercurialVapor15AcademyFGMGByYou6.jpg',24),(150,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialVapor15AcademyFGMGByYou5.jpg','NikeZoomMercurialVapor15AcademyFGMGByYou5.jpg',24),(151,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialVapor15AcademyIC4.jpg','NikeZoomMercurialVapor15AcademyIC4.jpg',25),(152,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialVapor15AcademyIC5.jpg','NikeZoomMercurialVapor15AcademyIC5.jpg',25),(153,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialVapor15AcademyIC.jpg','NikeZoomMercurialVapor15AcademyIC.jpg',25),(154,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialVapor15AcademyIC6.jpg','NikeZoomMercurialVapor15AcademyIC6.jpg',25),(155,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialVapor15AcademyIC8.jpg','NikeZoomMercurialVapor15AcademyIC8.jpg',25),(156,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialVapor15AcademyIC2.jpg','NikeZoomMercurialVapor15AcademyIC2.jpg',25),(157,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialVapor15AcademyIC7.jpg','NikeZoomMercurialVapor15AcademyIC7.jpg',25),(158,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialVapor15AcademyIC3.jpg','NikeZoomMercurialVapor15AcademyIC3.jpg',25),(159,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialVapor15EliteFG6.jpg','NikeZoomMercurialVapor15EliteFG6.jpg',26),(160,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialVapor15EliteFG.jpg','NikeZoomMercurialVapor15EliteFG.jpg',26),(161,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialVapor15EliteFG3.jpg','NikeZoomMercurialVapor15EliteFG3.jpg',26),(162,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialVapor15EliteFG7.jpg','NikeZoomMercurialVapor15EliteFG7.jpg',26),(163,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialVapor15EliteFG2.jpg','NikeZoomMercurialVapor15EliteFG2.jpg',26),(164,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialVapor15EliteFG4.jpg','NikeZoomMercurialVapor15EliteFG4.jpg',26),(165,NULL,NULL,_binary '',NULL,NULL,'product/pictures/NikeZoomMercurialVapor15EliteFG5.jpg','NikeZoomMercurialVapor15EliteFG5.jpg',26),(166,NULL,NULL,_binary '',NULL,NULL,'product/pictures/COPA_PURE1_FIRM_GROUND_BOOTS_6.jpg','COPA_PURE1_FIRM_GROUND_BOOTS_6.jpg',27),(167,NULL,NULL,_binary '',NULL,NULL,'product/pictures/COPA_PURE1_FIRM_GROUND_BOOTS_1.jpg','COPA_PURE1_FIRM_GROUND_BOOTS_1.jpg',27),(168,NULL,NULL,_binary '',NULL,NULL,'product/pictures/COPA_PURE1_FIRM_GROUND_BOOTS_5.jpg','COPA_PURE1_FIRM_GROUND_BOOTS_5.jpg',27),(169,NULL,NULL,_binary '',NULL,NULL,'product/pictures/COPA_PURE1_FIRM_GROUND_BOOTS_2.jpg','COPA_PURE1_FIRM_GROUND_BOOTS_2.jpg',27),(170,NULL,NULL,_binary '',NULL,NULL,'product/pictures/COPA_PURE1_FIRM_GROUND_BOOTS_3.jpg','COPA_PURE1_FIRM_GROUND_BOOTS_3.jpg',27),(171,NULL,NULL,_binary '',NULL,NULL,'product/pictures/COPA_PURE1_FIRM_GROUND_BOOTS_4.jpg','COPA_PURE1_FIRM_GROUND_BOOTS_4.jpg',27),(172,NULL,NULL,_binary '',NULL,NULL,'product/pictures/COPA_PURE3_TURF_BOOTS_6.jpg','COPA_PURE3_TURF_BOOTS_6.jpg',28),(173,NULL,NULL,_binary '',NULL,NULL,'product/pictures/COPA_PURE3_TURF_BOOTS_5.jpg','COPA_PURE3_TURF_BOOTS_5.jpg',28),(174,NULL,NULL,_binary '',NULL,NULL,'product/pictures/COPA_PURE3_TURF_BOOTS_1.jpg','COPA_PURE3_TURF_BOOTS_1.jpg',28),(175,NULL,NULL,_binary '',NULL,NULL,'product/pictures/COPA_PURE3_TURF_BOOTS_2.jpg','COPA_PURE3_TURF_BOOTS_2.jpg',28),(176,NULL,NULL,_binary '',NULL,NULL,'product/pictures/COPA_PURE3_TURF_BOOTS_4.jpg','COPA_PURE3_TURF_BOOTS_4.jpg',28),(177,NULL,NULL,_binary '',NULL,NULL,'product/pictures/COPA_PURE3_TURF_BOOTS_3.jpg','COPA_PURE3_TURF_BOOTS_3.jpg',28),(178,NULL,NULL,_binary '',NULL,NULL,'product/pictures/COPA_PURE3_TURF_BOOTS_2.jpg','COPA_PURE3_TURF_BOOTS_2.jpg',29),(179,NULL,NULL,_binary '',NULL,NULL,'product/pictures/COPA_PURE3_TURF_BOOTS_1.jpg','COPA_PURE3_TURF_BOOTS_1.jpg',29),(180,NULL,NULL,_binary '',NULL,NULL,'product/pictures/COPA_PURE3_TURF_BOOTS_4.jpg','COPA_PURE3_TURF_BOOTS_4.jpg',29),(181,NULL,NULL,_binary '',NULL,NULL,'product/pictures/COPA_PURE3_TURF_BOOTS_5.jpg','COPA_PURE3_TURF_BOOTS_5.jpg',29),(182,NULL,NULL,_binary '',NULL,NULL,'product/pictures/COPA_PURE3_TURF_BOOTS_3.jpg','COPA_PURE3_TURF_BOOTS_3.jpg',29),(183,NULL,NULL,_binary '',NULL,NULL,'product/pictures/COPA_PURE3_TURF_BOOTS_6.jpg','COPA_PURE3_TURF_BOOTS_6.jpg',29),(184,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_ACCURACY3_LOW_FIRM_GROUND_BOOTS_6.jpg','PREDATOR_ACCURACY3_LOW_FIRM_GROUND_BOOTS_6.jpg',30),(185,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_ACCURACY3_LOW_FIRM_GROUND_BOOTS_3.jpg','PREDATOR_ACCURACY3_LOW_FIRM_GROUND_BOOTS_3.jpg',30),(186,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_ACCURACY3_LOW_FIRM_GROUND_BOOTS_2.jpg','PREDATOR_ACCURACY3_LOW_FIRM_GROUND_BOOTS_2.jpg',30),(187,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_ACCURACY3_LOW_FIRM_GROUND_BOOTS_4.jpg','PREDATOR_ACCURACY3_LOW_FIRM_GROUND_BOOTS_4.jpg',30),(188,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_ACCURACY3_LOW_FIRM_GROUND_BOOTS_5.jpg','PREDATOR_ACCURACY3_LOW_FIRM_GROUND_BOOTS_5.jpg',30),(189,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_ACCURACY3_LOW_FIRM_GROUND_BOOTS_1.jpg','PREDATOR_ACCURACY3_LOW_FIRM_GROUND_BOOTS_1.jpg',30),(190,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_ACCURACY3_LOW_TURF_BOOTS_3.jpg','PREDATOR_ACCURACY3_LOW_TURF_BOOTS_3.jpg',31),(191,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_ACCURACY3_LOW_TURF_BOOTS_4.jpg','PREDATOR_ACCURACY3_LOW_TURF_BOOTS_4.jpg',31),(192,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_ACCURACY3_LOW_TURF_BOOTS_5.jpg','PREDATOR_ACCURACY3_LOW_TURF_BOOTS_5.jpg',31),(193,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_ACCURACY3_LOW_TURF_BOOTS_2.jpg','PREDATOR_ACCURACY3_LOW_TURF_BOOTS_2.jpg',31),(194,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_ACCURACY3_LOW_TURF_BOOTS_1.jpg','PREDATOR_ACCURACY3_LOW_TURF_BOOTS_1.jpg',31),(195,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_ACCURACY3_LOW_TURF_BOOTS_6.jpg','PREDATOR_ACCURACY3_LOW_TURF_BOOTS_6.jpg',31),(196,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_FREAK3_TURF_BOOTS_2.jpg','PREDATOR_FREAK3_TURF_BOOTS_2.jpg',32),(197,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_FREAK3_TURF_BOOTS_4.jpg','PREDATOR_FREAK3_TURF_BOOTS_4.jpg',32),(198,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_FREAK3_TURF_BOOTS_3.jpg','PREDATOR_FREAK3_TURF_BOOTS_3.jpg',32),(199,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_FREAK3_TURF_BOOTS_6.jpg','PREDATOR_FREAK3_TURF_BOOTS_6.jpg',32),(200,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_FREAK3_TURF_BOOTS_1.jpg','PREDATOR_FREAK3_TURF_BOOTS_1.jpg',32),(201,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_FREAK3_TURF_BOOTS_5.jpg','PREDATOR_FREAK3_TURF_BOOTS_5.jpg',32),(202,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_MUTATOR_20_1_LOW_FIRM_GROUND_BOOTS_2.jpg','PREDATOR_MUTATOR_20_1_LOW_FIRM_GROUND_BOOTS_2.jpg',33),(203,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_MUTATOR_20_1_LOW_FIRM_GROUND_BOOTS_3.jpg','PREDATOR_MUTATOR_20_1_LOW_FIRM_GROUND_BOOTS_3.jpg',33),(204,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_MUTATOR_20_1_LOW_FIRM_GROUND_BOOTS_4.jpg','PREDATOR_MUTATOR_20_1_LOW_FIRM_GROUND_BOOTS_4.jpg',33),(205,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_MUTATOR_20_1_LOW_FIRM_GROUND_BOOTS_5.jpg','PREDATOR_MUTATOR_20_1_LOW_FIRM_GROUND_BOOTS_5.jpg',33),(206,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_MUTATOR_20_1_LOW_FIRM_GROUND_BOOTS_6.jpg','PREDATOR_MUTATOR_20_1_LOW_FIRM_GROUND_BOOTS_6.jpg',33),(207,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_MUTATOR_20_1_LOW_FIRM_GROUND_BOOTS_1.jpg','PREDATOR_MUTATOR_20_1_LOW_FIRM_GROUND_BOOTS_1.jpg',33),(208,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PREDATOR_MUTATOR_20_1_LOW_FIRM_GROUND_BOOTS_7.jpg','PREDATOR_MUTATOR_20_1_LOW_FIRM_GROUND_BOOTS_7.jpg',33),(209,NULL,NULL,_binary '',NULL,NULL,'product/pictures/X_SPEEDPORTAL_MESSI3_FIRM_GROUND_BOOTS_5.jpg','X_SPEEDPORTAL_MESSI3_FIRM_GROUND_BOOTS_5.jpg',34),(210,NULL,NULL,_binary '',NULL,NULL,'product/pictures/X_SPEEDPORTAL_MESSI3_FIRM_GROUND_BOOTS_4.jpg','X_SPEEDPORTAL_MESSI3_FIRM_GROUND_BOOTS_4.jpg',34),(211,NULL,NULL,_binary '',NULL,NULL,'product/pictures/X_SPEEDPORTAL_MESSI3_FIRM_GROUND_BOOTS_6.jpg','X_SPEEDPORTAL_MESSI3_FIRM_GROUND_BOOTS_6.jpg',34),(212,NULL,NULL,_binary '',NULL,NULL,'product/pictures/X_SPEEDPORTAL_MESSI3_FIRM_GROUND_BOOTS_1.jpg','X_SPEEDPORTAL_MESSI3_FIRM_GROUND_BOOTS_1.jpg',34),(213,NULL,NULL,_binary '',NULL,NULL,'product/pictures/X_SPEEDPORTAL_MESSI3_FIRM_GROUND_BOOTS_2.jpg','X_SPEEDPORTAL_MESSI3_FIRM_GROUND_BOOTS_2.jpg',34),(214,NULL,NULL,_binary '',NULL,NULL,'product/pictures/X_SPEEDPORTAL_MESSI3_FIRM_GROUND_BOOTS_3.jpg','X_SPEEDPORTAL_MESSI3_FIRM_GROUND_BOOTS_3.jpg',34),(215,NULL,NULL,_binary '',NULL,NULL,'product/pictures/X_SPEEDPORTAL_MESSI3_FIRM_GROUND_BOOTS_7.jpg','X_SPEEDPORTAL_MESSI3_FIRM_GROUND_BOOTS_7.jpg',34),(216,NULL,NULL,_binary '',NULL,NULL,'product/pictures/X_SPEEDPORTAL1_FIRM_GROUND_BOOTS_3.jpg','X_SPEEDPORTAL1_FIRM_GROUND_BOOTS_3.jpg',35),(217,NULL,NULL,_binary '',NULL,NULL,'product/pictures/X_SPEEDPORTAL1_FIRM_GROUND_BOOTS_4.jpg','X_SPEEDPORTAL1_FIRM_GROUND_BOOTS_4.jpg',35),(218,NULL,NULL,_binary '',NULL,NULL,'product/pictures/X_SPEEDPORTAL1_FIRM_GROUND_BOOTS_1.jpg','X_SPEEDPORTAL1_FIRM_GROUND_BOOTS_1.jpg',35),(219,NULL,NULL,_binary '',NULL,NULL,'product/pictures/X_SPEEDPORTAL1_FIRM_GROUND_BOOTS_2.jpg','X_SPEEDPORTAL1_FIRM_GROUND_BOOTS_2.jpg',35),(220,NULL,NULL,_binary '',NULL,NULL,'product/pictures/X_SPEEDPORTAL1_FIRM_GROUND_BOOTS_6.jpg','X_SPEEDPORTAL1_FIRM_GROUND_BOOTS_6.jpg',35),(221,NULL,NULL,_binary '',NULL,NULL,'product/pictures/X_SPEEDPORTAL1_FIRM_GROUND_BOOTS_5.jpg','X_SPEEDPORTAL1_FIRM_GROUND_BOOTS_5.jpg',35),(222,NULL,NULL,_binary '',NULL,NULL,'product/pictures/XSPEEDPORTAL3FIRMGROUNDBOOTS2.jpg','XSPEEDPORTAL3FIRMGROUNDBOOTS2.jpg',36),(223,NULL,NULL,_binary '',NULL,NULL,'product/pictures/XSPEEDPORTAL3FIRMGROUNDBOOTS4.jpg','XSPEEDPORTAL3FIRMGROUNDBOOTS4.jpg',36),(224,NULL,NULL,_binary '',NULL,NULL,'product/pictures/XSPEEDPORTAL3FIRMGROUNDBOOTS5.jpg','XSPEEDPORTAL3FIRMGROUNDBOOTS5.jpg',36),(225,NULL,NULL,_binary '',NULL,NULL,'product/pictures/XSPEEDPORTAL3FIRMGROUNDBOOTS3.jpg','XSPEEDPORTAL3FIRMGROUNDBOOTS3.jpg',36),(226,NULL,NULL,_binary '',NULL,NULL,'product/pictures/XSPEEDPORTAL3FIRMGROUNDBOOTS1.jpg','XSPEEDPORTAL3FIRMGROUNDBOOTS1.jpg',36),(227,NULL,NULL,_binary '',NULL,NULL,'product/pictures/XSPEEDPORTAL3FIRMGROUNDBOOTS6.jpg','XSPEEDPORTAL3FIRMGROUNDBOOTS6.jpg',36),(228,NULL,NULL,_binary '',NULL,NULL,'product/pictures/X_SPEEDPORTAL3_TURF_BOOTS_6.jpg','X_SPEEDPORTAL3_TURF_BOOTS_6.jpg',37),(229,NULL,NULL,_binary '',NULL,NULL,'product/pictures/X_SPEEDPORTAL3_TURF_BOOTS_1.jpg','X_SPEEDPORTAL3_TURF_BOOTS_1.jpg',37),(230,NULL,NULL,_binary '',NULL,NULL,'product/pictures/X_SPEEDPORTAL3_TURF_BOOTS_3.jpg','X_SPEEDPORTAL3_TURF_BOOTS_3.jpg',37),(231,NULL,NULL,_binary '',NULL,NULL,'product/pictures/X_SPEEDPORTAL3_TURF_BOOTS_2.jpg','X_SPEEDPORTAL3_TURF_BOOTS_2.jpg',37),(232,NULL,NULL,_binary '',NULL,NULL,'product/pictures/X_SPEEDPORTAL3_TURF_BOOTS_5.jpg','X_SPEEDPORTAL3_TURF_BOOTS_5.jpg',37),(233,NULL,NULL,_binary '',NULL,NULL,'product/pictures/X_SPEEDPORTAL3_TURF_BOOTS_4.jpg','X_SPEEDPORTAL3_TURF_BOOTS_4.jpg',37),(239,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PUMA_BATMAN_FUTURE_3_3_FGAG_Mens_Soccer_Cleats_5.jpg','PUMA_BATMAN_FUTURE_3_3_FGAG_Mens_Soccer_Cleats_5.jpg',39),(240,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PUMA_BATMAN_FUTURE_3_3_FGAG_Mens_Soccer_Cleats_1.jpg','PUMA_BATMAN_FUTURE_3_3_FGAG_Mens_Soccer_Cleats_1.jpg',39),(241,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PUMA_BATMAN_FUTURE_3_3_FGAG_Mens_Soccer_Cleats_3.jpg','PUMA_BATMAN_FUTURE_3_3_FGAG_Mens_Soccer_Cleats_3.jpg',39),(242,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PUMA_BATMAN_FUTURE_3_3_FGAG_Mens_Soccer_Cleats_2.jpg','PUMA_BATMAN_FUTURE_3_3_FGAG_Mens_Soccer_Cleats_2.jpg',39),(243,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PUMA_BATMAN_FUTURE_3_3_FGAG_Mens_Soccer_Cleats_4.jpg','PUMA_BATMAN_FUTURE_3_3_FGAG_Mens_Soccer_Cleats_4.jpg',39),(244,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PUMA_CHRISTIAN_PULISIC_ULTRA_Ultimate_FGAG_Soccer_Cleats_4.jpg','PUMA_CHRISTIAN_PULISIC_ULTRA_Ultimate_FGAG_Soccer_Cleats_4.jpg',40),(245,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PUMA_CHRISTIAN_PULISIC_ULTRA_Ultimate_FGAG_Soccer_Cleats_2.jpg','PUMA_CHRISTIAN_PULISIC_ULTRA_Ultimate_FGAG_Soccer_Cleats_2.jpg',40),(246,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PUMA_CHRISTIAN_PULISIC_ULTRA_Ultimate_FGAG_Soccer_Cleats_5.jpg','PUMA_CHRISTIAN_PULISIC_ULTRA_Ultimate_FGAG_Soccer_Cleats_5.jpg',40),(247,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PUMA_CHRISTIAN_PULISIC_ULTRA_Ultimate_FGAG_Soccer_Cleats_1.jpg','PUMA_CHRISTIAN_PULISIC_ULTRA_Ultimate_FGAG_Soccer_Cleats_1.jpg',40),(248,NULL,NULL,_binary '',NULL,NULL,'product/pictures/PUMA_CHRISTIAN_PULISIC_ULTRA_Ultimate_FGAG_Soccer_Cleats_6.jpg','PUMA_CHRISTIAN_PULISIC_ULTRA_Ultimate_FGAG_Soccer_Cleats_6.jpg',40),(249,NULL,NULL,_binary '',NULL,NULL,'product/pictures/EvoSPEED_Electric_13_Track_and_Field_Shoes_3.jpg','EvoSPEED_Electric_13_Track_and_Field_Shoes_3.jpg',41),(250,NULL,NULL,_binary '',NULL,NULL,'product/pictures/EvoSPEED_Electric_13_Track_and_Field_Shoes_6.jpg','EvoSPEED_Electric_13_Track_and_Field_Shoes_6.jpg',41),(251,NULL,NULL,_binary '',NULL,NULL,'product/pictures/EvoSPEED_Electric_13_Track_and_Field_Shoes_4.jpg','EvoSPEED_Electric_13_Track_and_Field_Shoes_4.jpg',41),(252,NULL,NULL,_binary '',NULL,NULL,'product/pictures/EvoSPEED_Electric_13_Track_and_Field_Shoes_1.jpg','EvoSPEED_Electric_13_Track_and_Field_Shoes_1.jpg',41),(253,NULL,NULL,_binary '',NULL,NULL,'product/pictures/EvoSPEED_Electric_13_Track_and_Field_Shoes_2.jpg','EvoSPEED_Electric_13_Track_and_Field_Shoes_2.jpg',41),(254,NULL,NULL,_binary '',NULL,NULL,'product/pictures/EvoSPEED_Electric_13_Track_and_Field_Shoes_5.jpg','EvoSPEED_Electric_13_Track_and_Field_Shoes_5.jpg',41),(255,NULL,NULL,_binary '',NULL,NULL,'product/pictures/FUTURE_1_4_FGAG_Soccer_Cleats_5.jpg','FUTURE_1_4_FGAG_Soccer_Cleats_5.jpg',42),(256,NULL,NULL,_binary '',NULL,NULL,'product/pictures/FUTURE_1_4_FGAG_Soccer_Cleats_1.jpg','FUTURE_1_4_FGAG_Soccer_Cleats_1.jpg',42),(257,NULL,NULL,_binary '',NULL,NULL,'product/pictures/FUTURE_1_4_FGAG_Soccer_Cleats_4.jpg','FUTURE_1_4_FGAG_Soccer_Cleats_4.jpg',42),(258,NULL,NULL,_binary '',NULL,NULL,'product/pictures/FUTURE_1_4_FGAG_Soccer_Cleats_3.jpg','FUTURE_1_4_FGAG_Soccer_Cleats_3.jpg',42),(259,NULL,NULL,_binary '',NULL,NULL,'product/pictures/FUTURE_1_4_FGAG_Soccer_Cleats_2.jpg','FUTURE_1_4_FGAG_Soccer_Cleats_2.jpg',42),(260,NULL,NULL,_binary '',NULL,NULL,'product/pictures/FUTURE_2_4_FGAG_Men_Soccer_Cleats_5.jpg','FUTURE_2_4_FGAG_Men_Soccer_Cleats_5.jpg',43),(261,NULL,NULL,_binary '',NULL,NULL,'product/pictures/FUTURE_2_4_FGAG_Men_Soccer_Cleats_6.jpg','FUTURE_2_4_FGAG_Men_Soccer_Cleats_6.jpg',43),(262,NULL,NULL,_binary '',NULL,NULL,'product/pictures/FUTURE_2_4_FGAG_Men_Soccer_Cleats_3.jpg','FUTURE_2_4_FGAG_Men_Soccer_Cleats_3.jpg',43),(263,NULL,NULL,_binary '',NULL,NULL,'product/pictures/FUTURE_2_4_FGAG_Men_Soccer_Cleats_4.jpg','FUTURE_2_4_FGAG_Men_Soccer_Cleats_4.jpg',43),(264,NULL,NULL,_binary '',NULL,NULL,'product/pictures/FUTURE_2_4_FGAG_Men_Soccer_Cleats_1.jpg','FUTURE_2_4_FGAG_Men_Soccer_Cleats_1.jpg',43),(265,NULL,NULL,_binary '',NULL,NULL,'product/pictures/FUTURE_2_4_FGAG_Men_Soccer_Cleats_2.jpg','FUTURE_2_4_FGAG_Men_Soccer_Cleats_2.jpg',43),(266,NULL,NULL,_binary '',NULL,NULL,'product/pictures/King_Platinum_21_VGN_FGAG_Mens_Soccer_Cleats_1.jpg','King_Platinum_21_VGN_FGAG_Mens_Soccer_Cleats_1.jpg',44),(267,NULL,NULL,_binary '',NULL,NULL,'product/pictures/King_Platinum_21_VGN_FGAG_Mens_Soccer_Cleats_4.jpg','King_Platinum_21_VGN_FGAG_Mens_Soccer_Cleats_4.jpg',44),(268,NULL,NULL,_binary '',NULL,NULL,'product/pictures/King_Platinum_21_VGN_FGAG_Mens_Soccer_Cleats_2.jpg','King_Platinum_21_VGN_FGAG_Mens_Soccer_Cleats_2.jpg',44),(269,NULL,NULL,_binary '',NULL,NULL,'product/pictures/King_Platinum_21_VGN_FGAG_Mens_Soccer_Cleats_5.jpg','King_Platinum_21_VGN_FGAG_Mens_Soccer_Cleats_5.jpg',44),(270,NULL,NULL,_binary '',NULL,NULL,'product/pictures/King_Platinum_21_VGN_FGAG_Mens_Soccer_Cleats_3.jpg','King_Platinum_21_VGN_FGAG_Mens_Soccer_Cleats_3.jpg',44),(271,NULL,NULL,_binary '',NULL,NULL,'product/pictures/King_Ultimate_Brilliance_FGAG_Womens_Soccer_Cleats_2.jpg','King_Ultimate_Brilliance_FGAG_Womens_Soccer_Cleats_2.jpg',45),(272,NULL,NULL,_binary '',NULL,NULL,'product/pictures/King_Ultimate_Brilliance_FGAG_Womens_Soccer_Cleats_4.jpg','King_Ultimate_Brilliance_FGAG_Womens_Soccer_Cleats_4.jpg',45),(273,NULL,NULL,_binary '',NULL,NULL,'product/pictures/King_Ultimate_Brilliance_FGAG_Womens_Soccer_Cleats_1.jpg','King_Ultimate_Brilliance_FGAG_Womens_Soccer_Cleats_1.jpg',45),(274,NULL,NULL,_binary '',NULL,NULL,'product/pictures/King_Ultimate_Brilliance_FGAG_Womens_Soccer_Cleats_5.jpg','King_Ultimate_Brilliance_FGAG_Womens_Soccer_Cleats_5.jpg',45),(275,NULL,NULL,_binary '',NULL,NULL,'product/pictures/King_Ultimate_Brilliance_FGAG_Womens_Soccer_Cleats_6.jpg','King_Ultimate_Brilliance_FGAG_Womens_Soccer_Cleats_6.jpg',45),(276,NULL,NULL,_binary '',NULL,NULL,'product/pictures/King_Ultimate_Brilliance_FGAG_Womens_Soccer_Cleats_3.jpg','King_Ultimate_Brilliance_FGAG_Womens_Soccer_Cleats_3.jpg',45),(277,NULL,NULL,_binary '',NULL,NULL,'product/pictures/ULTRA_1_4_FGAG_Womens_Soccer_Cleats_3.jpg','ULTRA_1_4_FGAG_Womens_Soccer_Cleats_3.jpg',46),(278,NULL,NULL,_binary '',NULL,NULL,'product/pictures/ULTRA_1_4_FGAG_Womens_Soccer_Cleats_1.jpg','ULTRA_1_4_FGAG_Womens_Soccer_Cleats_1.jpg',46),(279,NULL,NULL,_binary '',NULL,NULL,'product/pictures/ULTRA_1_4_FGAG_Womens_Soccer_Cleats_6.jpg','ULTRA_1_4_FGAG_Womens_Soccer_Cleats_6.jpg',46),(280,NULL,NULL,_binary '',NULL,NULL,'product/pictures/ULTRA_1_4_FGAG_Womens_Soccer_Cleats-4.jpg','ULTRA_1_4_FGAG_Womens_Soccer_Cleats-4.jpg',46),(281,NULL,NULL,_binary '',NULL,NULL,'product/pictures/ULTRA_1_4_FGAG_Womens_Soccer_Cleats_2.jpg','ULTRA_1_4_FGAG_Womens_Soccer_Cleats_2.jpg',46),(282,NULL,NULL,_binary '',NULL,NULL,'product/pictures/ULTRA_1_4_FGAG_Womens_Soccer_Cleats_5.jpg','ULTRA_1_4_FGAG_Womens_Soccer_Cleats_5.jpg',46),(283,NULL,NULL,_binary '',NULL,NULL,'product/pictures/ULTRA_1_4_FGAG_Womens_Soccer_Cleats_4.jpg','ULTRA_1_4_FGAG_Womens_Soccer_Cleats_4.jpg',46),(284,NULL,NULL,_binary '',NULL,NULL,'product/pictures/ULTRA_ULTIMATE_FG_AG_Soccer_Cleats_4.jpg','ULTRA_ULTIMATE_FG_AG_Soccer_Cleats_4.jpg',47),(285,NULL,NULL,_binary '',NULL,NULL,'product/pictures/ULTRA_ULTIMATE_FG_AG_Soccer_Cleats_3.jpg','ULTRA_ULTIMATE_FG_AG_Soccer_Cleats_3.jpg',47),(286,NULL,NULL,_binary '',NULL,NULL,'product/pictures/ULTRA_ULTIMATE_FG_AG_Soccer_Cleats_6.jpg','ULTRA_ULTIMATE_FG_AG_Soccer_Cleats_6.jpg',47),(287,NULL,NULL,_binary '',NULL,NULL,'product/pictures/ULTRA_ULTIMATE_FG_AG_Soccer_Cleats_1.jpg','ULTRA_ULTIMATE_FG_AG_Soccer_Cleats_1.jpg',47),(288,NULL,NULL,_binary '',NULL,NULL,'product/pictures/ULTRA_ULTIMATE_FG_AG_Soccer_Cleats_5.jpg','ULTRA_ULTIMATE_FG_AG_Soccer_Cleats_5.jpg',47),(289,NULL,NULL,_binary '',NULL,NULL,'product/pictures/ULTRA_ULTIMATE_FG_AG_Soccer_Cleats_2.jpg','ULTRA_ULTIMATE_FG_AG_Soccer_Cleats_2.jpg',47),(290,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Boys_UA_Highlight_Franchise_Jr_5.jpg','Boys_UA_Highlight_Franchise_Jr_5.jpg',48),(291,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Boys_UA_Highlight_Franchise_Jr_1.jpg','Boys_UA_Highlight_Franchise_Jr_1.jpg',48),(292,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Boys_UA_Highlight_Franchise_Jr_6.jpg','Boys_UA_Highlight_Franchise_Jr_6.jpg',48),(293,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Boys_UA_Highlight_Franchise_Jr_3.jpg','Boys_UA_Highlight_Franchise_Jr_3.jpg',48),(294,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Boys_UA_Highlight_Franchise_Jr_4.jpg','Boys_UA_Highlight_Franchise_Jr_4.jpg',48),(295,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Boys_UA_Highlight_Franchise_Jr_2.jpg','Boys_UA_Highlight_Franchise_Jr_2.jpg',48),(296,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Blur_Smoke_2_0_MC_LE_AA_4.jpg','Blur_Smoke_2_0_MC_LE_AA_4.jpg',49),(297,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Blur_Smoke_2_0_MC_LE_AA_3.jpg','Blur_Smoke_2_0_MC_LE_AA_3.jpg',49),(298,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Blur_Smoke_2_0_MC_LE_AA_5.jpg','Blur_Smoke_2_0_MC_LE_AA_5.jpg',49),(299,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Blur_Smoke_2_0_MC_LE_AA_2.jpg','Blur_Smoke_2_0_MC_LE_AA_2.jpg',49),(300,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Blur_Smoke_2_0_MC_LE_AA_1.jpg','Blur_Smoke_2_0_MC_LE_AA_1.jpg',49),(301,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Men_UA_Blur_Smoke_2_0_MC_World_Tour_Football_Cleats_5.jpg','Men_UA_Blur_Smoke_2_0_MC_World_Tour_Football_Cleats_5.jpg',50),(302,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Men_UA_Blur_Smoke_2_0_MC_World_Tour_Football_Cleats_2.jpg','Men_UA_Blur_Smoke_2_0_MC_World_Tour_Football_Cleats_2.jpg',50),(303,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Men_UA_Blur_Smoke_2_0_MC_World_Tour_Football_Cleats_1.jpg','Men_UA_Blur_Smoke_2_0_MC_World_Tour_Football_Cleats_1.jpg',50),(304,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Men_UA_Blur_Smoke_2_0_MC_World_Tour_Football_Cleats_3.jpg','Men_UA_Blur_Smoke_2_0_MC_World_Tour_Football_Cleats_3.jpg',50),(305,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Men_UA_Blur_Smoke_2_0_MC_World_Tour_Football_Cleats_4.jpg','Men_UA_Blur_Smoke_2_0_MC_World_Tour_Football_Cleats_4.jpg',50),(306,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Highlight_MC_3.jpg','Highlight_MC_3.jpg',51),(307,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Highlight_MC_4.jpg','Highlight_MC_4.jpg',51),(308,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Highlight_MC_5.jpg','Highlight_MC_5.jpg',51),(309,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Highlight_MC_1.jpg','Highlight_MC_1.jpg',51),(310,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Highlight_MC_6.jpg','Highlight_MC_6.jpg',51),(311,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Highlight_MC_2.jpg','Highlight_MC_2.jpg',51),(317,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Men_UA_Spotlight_Clone_MC_LE_Black_History_Month_Football_Cleats_1.jpg','Men_UA_Spotlight_Clone_MC_LE_Black_History_Month_Football_Cleats_1.jpg',53),(318,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Men_UA_Spotlight_Clone_MC_LE_Black_History_Month_Football_Cleats_4.jpg','Men_UA_Spotlight_Clone_MC_LE_Black_History_Month_Football_Cleats_4.jpg',53),(319,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Men_UA_Spotlight_Clone_MC_LE_Black_History_Month_Football_Cleats_3.jpg','Men_UA_Spotlight_Clone_MC_LE_Black_History_Month_Football_Cleats_3.jpg',53),(320,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Men_UA_Spotlight_Clone_MC_LE_Black_History_Month_Football_Cleats_5.jpg','Men_UA_Spotlight_Clone_MC_LE_Black_History_Month_Football_Cleats_5.jpg',53),(321,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Men_UA_Spotlight_Clone_MC_LE_Black_History_Month_Football_Cleats_2.jpg','Men_UA_Spotlight_Clone_MC_LE_Black_History_Month_Football_Cleats_2.jpg',53),(322,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Spotlight_Lux_MC_2_0_5.jpg','Spotlight_Lux_MC_2_0_5.jpg',54),(323,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Spotlight_Lux_MC_2_0_4.jpg','Spotlight_Lux_MC_2_0_4.jpg',54),(324,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Spotlight_Lux_MC_2_0_1.jpg','Spotlight_Lux_MC_2_0_1.jpg',54),(325,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Spotlight_Lux_MC_2_0_3.jpg','Spotlight_Lux_MC_2_0_3.jpg',54),(326,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Spotlight_Lux_MC_2_0_2.jpg','Spotlight_Lux_MC_2_0_2.jpg',54),(327,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Men_UA_Spotlight_Clone_3_0_MC_World_Tour_Football_Cleats_1.jpg','Men_UA_Spotlight_Clone_3_0_MC_World_Tour_Football_Cleats_1.jpg',55),(328,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Men_UA_Spotlight_Clone_3_0_MC_World_Tour_Football_Cleats_4.jpg','Men_UA_Spotlight_Clone_3_0_MC_World_Tour_Football_Cleats_4.jpg',55),(329,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Men_UA_Spotlight_Clone_3_0_MC_World_Tour_Football_Cleats_2.jpg','Men_UA_Spotlight_Clone_3_0_MC_World_Tour_Football_Cleats_2.jpg',55),(330,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Men_UA_Spotlight_Clone_3_0_MC_World_Tour_Football_Cleats_5.jpg','Men_UA_Spotlight_Clone_3_0_MC_World_Tour_Football_Cleats_5.jpg',55),(331,NULL,NULL,_binary '',NULL,NULL,'product/pictures/Men_UA_Spotlight_Clone_3_0_MC_World_Tour_Football_Cleats_3.jpg','Men_UA_Spotlight_Clone_3_0_MC_World_Tour_Football_Cleats_3.jpg',55);
/*!40000 ALTER TABLE `tbl_products_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `description` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_roles`
--

LOCK TABLES `tbl_roles` WRITE;
/*!40000 ALTER TABLE `tbl_roles` DISABLE KEYS */;
INSERT INTO `tbl_roles` VALUES (1,NULL,NULL,_binary '',NULL,NULL,'GUEST','GUEST'),(2,NULL,NULL,_binary '',NULL,NULL,'ADMIN','ADMIN'),(3,NULL,NULL,_binary '',NULL,NULL,'GUEST','GUEST');
/*!40000 ALTER TABLE `tbl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_saleorder`
--

DROP TABLE IF EXISTS `tbl_saleorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_saleorder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `code` varchar(45) NOT NULL,
  `customer_address` varchar(100) DEFAULT NULL,
  `cutomer_email` varchar(100) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_phone` varchar(100) DEFAULT NULL,
  `tinh_trang` varchar(255) DEFAULT NULL,
  `total` decimal(13,2) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbiu8ui4krw8j3gtn97w3rdq7v` (`user_id`),
  CONSTRAINT `FKbiu8ui4krw8j3gtn97w3rdq7v` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_saleorder`
--

LOCK TABLES `tbl_saleorder` WRITE;
/*!40000 ALTER TABLE `tbl_saleorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_saleorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_saleorder_products`
--

DROP TABLE IF EXISTS `tbl_saleorder_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_saleorder_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `quality` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `saleorder_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnyfdau9vc46jkiwvrgj1ns85v` (`product_id`),
  KEY `FKnpyir3q973iv4wq49ltw0kcrd` (`saleorder_id`),
  CONSTRAINT `FKnpyir3q973iv4wq49ltw0kcrd` FOREIGN KEY (`saleorder_id`) REFERENCES `tbl_saleorder` (`id`),
  CONSTRAINT `FKnyfdau9vc46jkiwvrgj1ns85v` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_saleorder_products`
--

LOCK TABLES `tbl_saleorder_products` WRITE;
/*!40000 ALTER TABLE `tbl_saleorder_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_saleorder_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_size`
--

DROP TABLE IF EXISTS `tbl_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_size` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKls0yrh80202em4pjo889xdjou` (`product_id`),
  CONSTRAINT `FKls0yrh80202em4pjo889xdjou` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_size`
--

LOCK TABLES `tbl_size` WRITE;
/*!40000 ALTER TABLE `tbl_size` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `username` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (1,NULL,NULL,_binary '',NULL,NULL,'cuncunham1@gmail.com','$2a$10$72zWXRkpNjRhFOSWh9KKju3wRP3cNTCSYamJ/ecGoWNupsygpZOdO','Nguyen'),(2,NULL,NULL,_binary '',NULL,NULL,'cuncunham51@gmail.com','$2a$10$/usH.qChQZK4V/GiFMLOR.S.5DU9bfpRj4DvFpsH3fUBFsheRjA7e','admin'),(3,NULL,NULL,_binary '',NULL,NULL,'cuncunham41@gmail.com','$2a$10$IenTx2X72aQTgWA8s9bWieYIyzVFedOqZ8p1P27kK346LhJeEXcXe','thanhop');
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users_roles`
--

DROP TABLE IF EXISTS `tbl_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users_roles` (
  `role_id` int NOT NULL,
  `user_id` int NOT NULL,
  KEY `FK9759r6hlfhyhtv3e7eppsldx9` (`user_id`),
  KEY `FKjx9up05623t9hyre3gu4ch7eb` (`role_id`),
  CONSTRAINT `FK9759r6hlfhyhtv3e7eppsldx9` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`),
  CONSTRAINT `FKjx9up05623t9hyre3gu4ch7eb` FOREIGN KEY (`role_id`) REFERENCES `tbl_roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users_roles`
--

LOCK TABLES `tbl_users_roles` WRITE;
/*!40000 ALTER TABLE `tbl_users_roles` DISABLE KEYS */;
INSERT INTO `tbl_users_roles` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `tbl_users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-08 10:12:06
