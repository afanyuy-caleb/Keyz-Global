-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: registration
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `real_pass`
--

DROP TABLE IF EXISTS `real_pass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `real_pass` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(80) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `real_pass`
--

LOCK TABLES `real_pass` WRITE;
/*!40000 ALTER TABLE `real_pass` DISABLE KEYS */;
INSERT INTO `real_pass` VALUES (6,'afanyuys@gmail.com','Afanyuy Caleb','afa123'),(7,'test1@gmail.com','Test User 1','test123'),(8,'test2@gmail.com','Test user 2','test2123'),(10,'vimto@gmail.com','Vimto Mckhaled','vimto123'),(11,'testing@yahoo.com','testing','testing123');
/*!40000 ALTER TABLE `real_pass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL,
  `name` char(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Admin'),(2,'Manager'),(3,'Client');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_type`
--

DROP TABLE IF EXISTS `trans_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `trans_type` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `trans_name` char(15) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_type`
--

LOCK TABLES `trans_type` WRITE;
/*!40000 ALTER TABLE `trans_type` DISABLE KEYS */;
INSERT INTO `trans_type` VALUES (1,'Purchase'),(2,'Download'),(3,'stream');
/*!40000 ALTER TABLE `trans_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `pass_hash` varchar(128) DEFAULT NULL,
  `occupation` varchar(50) DEFAULT NULL,
  `Country` char(30) DEFAULT 'Cameroon',
  `Tel` varchar(25) DEFAULT NULL,
  `Gender` enum('Male','Female') DEFAULT NULL,
  `role_id` int DEFAULT '3',
  `pic` varchar(50) DEFAULT NULL,
  `signUp_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `Tel` (`Tel`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (12,'Afanyuy Caleb','afanyuys@gmail.com','$2y$10$9CrdZC.EkIRJPXmre7oetO2L5BYUOhD/MNcl0uqnx.8gEyjfWr8X.','Full Stack Web and Mobile Developer','Cameroon','+237 986743','Male',1,'1705672489_6ddb30b41666f437d34919c6c208430f.jpg',NULL),(13,'Test User 1','test1@gmail.com','$2y$10$R80Ofb1kkT3D5e3gM7jLnOrx7/gCLk9iJlHdMfZoTYokQ/Q86e.Y2','student','Germany','+000 236761','Female',3,'3a3d3b6bd5766db8e6488ca582fbbd82.jpg',NULL),(14,'Test user 2','test2@gmail.com','$2y$10$muDTQbeEi20rwDCRJ1sZL.irDhw9dXMRJKIhvGKtIWdRf4YkmuKyG','Software Engineer','Britain','+231 8965400','Female',3,'9a632d7b3bc438974911ad59a506e758.jpg',NULL),(15,'Keyz Global','keyz@gmail.com','$2y$10$FYuB4aujOpPG/k6HAYgdDeI1c9XpYrPZj120bFSbtjQUMe73iodVe','Gamer','Canada','+6712 9908','Male',3,'1705676016d07b51aa1fbd871620c804e602ac2a29.jpg',NULL),(17,'Vimto Mckhaled','vimto@gmail.com','$2y$10$wZ2RsY8lhogWJgf9UeFJ7eciY0WoCFR4E32E//TJWrVZcysAIrYGq','Guiness manager','Switzerland','+5623 5845 ','Female',3,'1705676396fcf477338dea98070c064ee1893009c3.jpg',NULL),(18,'testing','testing@yahoo.com','$2y$10$uaI2.3HJDbhkY2rIrP8cDOx3qr3hXoz2WiM7e.qFx/ASCQyrAeNF.','hacker','switzerland','+565454 1565','Male',3,'1707337325_0e725de4ebf8583af8409727f3734891.jpg','2024-02-06');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_trans`
--

DROP TABLE IF EXISTS `user_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_trans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `transId` int DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Amount` float DEFAULT NULL,
  `transString` text,
  PRIMARY KEY (`id`),
  KEY `fk1` (`user_id`),
  KEY `fk2` (`transId`),
  CONSTRAINT `fk1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk2` FOREIGN KEY (`transId`) REFERENCES `trans_type` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_trans`
--

LOCK TABLES `user_trans` WRITE;
/*!40000 ALTER TABLE `user_trans` DISABLE KEYS */;
INSERT INTO `user_trans` VALUES (1,17,1,'2024-01-25 00:51:28',61.88,'[{\"id\":\"6agpe4j1nrOg\",\"item_qty\":4,\"table_name\":\"fruits\"},{\"id\":\"je0mp8o83ga\",\"item_qty\":\"1\",\"table_name\":\"fruits\"}]'),(2,17,1,'2024-01-25 00:57:23',696.58,'[{\"id\":\"6agpe4j1nrOg\",\"item_qty\":4,\"table_name\":\"fruits\"},{\"id\":\"je0mp8o83ga\",\"item_qty\":\"1\",\"table_name\":\"fruits\"},{\"id\":\"43413g1depjs\",\"item_qty\":\"1\",\"table_name\":\"fabrics\"},{\"id\":\"d83076sgepj\",\"item_qty\":\"1\",\"table_name\":\"fabrics\"}]'),(3,17,1,'2024-01-25 07:43:18',361.9,'[{\"id\":\"3gh9332gNHhiipiHkk1_jegNei75_\",\"item_qty\":\"1\",\"table_name\":\"shoes\"},{\"id\":\"5fljWak57hle7768cgs8eooB8\",\"item_qty\":\"1\",\"table_name\":\"shoes\"},{\"id\":\"2gi1pj7V2loni\",\"item_qty\":\"1\",\"table_name\":\"musicals\"},{\"id\":\"5erpjg98g9ui\",\"item_qty\":\"1\",\"table_name\":\"musicals\"},{\"id\":\"9x22gpj1sa7\",\"item_qty\":\"1\",\"table_name\":\"musicals\"}]'),(4,15,1,'2024-01-25 11:45:26',291.5,'[{\"id\":\"nd9o58ugpj27pw\",\"item_qty\":\"1\",\"table_name\":\"fabrics\"},{\"id\":\"on4dpp0jgw9u68\",\"item_qty\":\"1\",\"table_name\":\"fabrics\"}]'),(5,15,1,'2024-01-25 11:46:45',138.6,'[{\"id\":\"6agpe4j1nrOg\",\"item_qty\":\"1\",\"table_name\":\"fruits\"},{\"id\":\"005w_9B025D0230GhD5BD3_b2ehGpD\",\"item_qty\":\"1\",\"table_name\":\"electronics\"},{\"id\":\"4nro9ernrgpo5lo2r1l1nl1eC9ocl\",\"item_qty\":2,\"table_name\":\"electronics\"},{\"id\":\"5fljWak57hle7768cgs8eooB8\",\"item_qty\":\"1\",\"table_name\":\"shoes\"}]'),(6,13,1,'2024-01-25 22:04:00',157.23,'[{\"id\":\"0hoj36921egs89p\",\"item_qty\":\"1\",\"table_name\":\"shoes\"},{\"id\":\"k_7erk3pi7N_D34081ek7ra\",\"item_qty\":\"1\",\"table_name\":\"shoes\"},{\"id\":\"3o6joRo3rpdegw9\",\"item_qty\":\"1\",\"table_name\":\"fruits\"},{\"id\":\"5r37p1juefig4\",\"item_qty\":\"1\",\"table_name\":\"fruits\"}]'),(7,15,1,'2024-01-30 01:15:02',167.18,'[{\"id\":\"2pp2p2jog91al\",\"item_qty\":\"1\",\"table_name\":\"electronics\"},{\"id\":\"4nro9ernrgpo5lo2r1l1nl1eC9ocl\",\"item_qty\":\"1\",\"table_name\":\"electronics\"}]'),(8,15,1,'2024-01-31 08:44:02',130949,'[{\"id\":\"7890car4jpg\",\"item_qty\":\"1\",\"table_name\":\"automobiles\"},{\"id\":\"7626car18jpg\",\"item_qty\":2,\"table_name\":\"automobiles\"},{\"id\":\"6agpe4j1nrOg\",\"item_qty\":3,\"table_name\":\"fruits\"}]'),(9,12,1,'2024-02-06 23:12:01',3290.22,'[{\"id\":\"2ll4ppjug\",\"item_qty\":\"1\",\"table_name\":\"fabrics\"},{\"id\":\"33esg8dp2j8\",\"item_qty\":\"1\",\"table_name\":\"fabrics\"},{\"id\":\"43413g1depjs\",\"item_qty\":1,\"table_name\":\"fabrics\"},{\"id\":\"6geo9m3nwp11j\",\"item_qty\":4,\"table_name\":\"fabrics\"}]'),(10,18,1,'2024-02-06 23:17:16',227.82,'[{\"id\":\"0hoj36921egs89p\",\"item_qty\":2,\"table_name\":\"shoes\"},{\"id\":\"55us6jo1peMe2ne5c58hq1g8\",\"item_qty\":\"1\",\"table_name\":\"shoes\"}]'),(11,18,1,'2024-02-06 23:18:31',266.2,'[{\"id\":\"41g127jp\",\"item_qty\":\"1\",\"table_name\":\"ai_techs\"},{\"id\":\"wj5ndgdloa79o1ep\",\"item_qty\":3,\"table_name\":\"ai_techs\"}]'),(12,18,1,'2024-02-06 23:19:14',6.13,'[{\"id\":\"3o6joRo3rpdegw9\",\"item_qty\":\"1\",\"table_name\":\"fruits\"}]');
/*!40000 ALTER TABLE `user_trans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-09 18:54:32
