-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: review_sys-user_service
-- ------------------------------------------------------
-- Server version	8.4.0

CREATE DATABASE IF NOT EXISTS `review_sys-user_service`;
USE `review_sys-user_service`;

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `is_admin` int NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('0ec94597-e6c4-4a84-9880-90f5a360f61d',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','AstralX79'),('0f4a5f6e-3f27-4cd1-b3b4-0c2c0e5f3eaf',0,'$2a$10$dUsPP2ewDL1QMCfZ7Wsl/uRxm.Dn9Fs1cbDA2okpmH/oUjzwhaOPu','Game Rant'),('136357fa-15e9-4a0c-95c7-107be1f1dca4',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','GamingTrend'),('1c7b17f8-70e4-419e-8dc8-5e68b3e6b14f',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','Loupdo78'),('1debb3ef-9278-40fc-8b5e-00e47960c29f',0,'$2a$10$dUsPP2ewDL1QMCfZ7Wsl/uRxm.Dn9Fs1cbDA2okpmH/oUjzwhaOPu','Digital Trends'),('1df928f6-94a0-4081-a221-f29770d3d35e',0,'$2a$10$dUsPP2ewDL1QMCfZ7Wsl/uRxm.Dn9Fs1cbDA2okpmH/oUjzwhaOPu','Hey Poor Player'),('22e4e6ab-2c91-11f0-8e90-0250650f6d46',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','userA123'),('22e5487e-2c91-11f0-8e90-0250650f6d46',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','coolGuy42'),('22e54a6f-2c91-11f0-8e90-0250650f6d46',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','alphaWolf'),('22e54b01-2c91-11f0-8e90-0250650f6d46',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','zebra99'),('22e54b92-2c91-11f0-8e90-0250650f6d46',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','skyBlue77'),('22e54c7d-2c91-11f0-8e90-0250650f6d46',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','neo88'),('22e54d02-2c91-11f0-8e90-0250650f6d46',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','pixie32'),('22e54d85-2c91-11f0-8e90-0250650f6d46',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','hacker23'),('22e54e4e-2c91-11f0-8e90-0250650f6d46',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','deltaFox'),('22e54f4a-2c91-11f0-8e90-0250650f6d46',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','lunaBee'),('22e6d81f-80c6-4b29-a8d3-d1680e697219',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','Gamereactor UK'),('2f5c6399-f60c-43a2-9b53-2ad8f78170f2',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','Kitsune0805'),('33b8376f-9f43-4572-9179-458b391dcbbb',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','TheGamer'),('38f7a1fc-9e1c-42e2-9493-6b7bb47a186d',0,'$2a$10$dUsPP2ewDL1QMCfZ7Wsl/uRxm.Dn9Fs1cbDA2okpmH/oUjzwhaOPu','Nintenderos'),('3f4b5ec9-474b-4645-9de0-8d4b97918814',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','kraky58'),('476edebc-bb6e-42cb-9828-7ef927f55ee7',0,'$2a$10$dUsPP2ewDL1QMCfZ7Wsl/uRxm.Dn9Fs1cbDA2okpmH/oUjzwhaOPu','Inverse'),('4c2a36ef-f9d7-4933-a9e5-39aef5de6c7d',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','Khaledbakdash'),('5f68b8d9-81e7-4b0e-96be-449aa4d0303b',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','v1gor'),('7052fe70-7301-43b4-8f0c-ffbc3f5fbd91',0,'$2a$10$dUsPP2ewDL1QMCfZ7Wsl/uRxm.Dn9Fs1cbDA2okpmH/oUjzwhaOPu','Nintendo Life'),('7d10540d-f4c1-4ab8-b0b1-47df20b91be6',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','jovembuumer'),('862e45cc-f683-4062-b34c-82761c0009e5',0,'$2a$10$dUsPP2ewDL1QMCfZ7Wsl/uRxm.Dn9Fs1cbDA2okpmH/oUjzwhaOPu','test'),('9650ae28-4b79-46b6-b5f3-792d0dc71ee4',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','Kralarthur'),('9a3f1e1e-2361-4a8e-9bd1-4f75f9cc14e5',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','Yoking765'),('9c12c8a7-66fd-4a25-9a5b-4ec6df9c9d0c',0,'$2a$10$dUsPP2ewDL1QMCfZ7Wsl/uRxm.Dn9Fs1cbDA2okpmH/oUjzwhaOPu','Loot Level Chill'),('9e2fa0c6-2e51-4ef9-b9e7-9c39078b312d',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','Pure Nintendo'),('9e66d950-bbe9-48ca-bf4d-cfe4b5099425',1,'$2a$10$0vTssKZzi6B0q4E7BOYABObHUSLMKv7yG7cTlZGlogJRkILGIhq.S','admin'),('b1a4db9b-9242-4ff6-b20b-3e71a37958d0',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','Cortex31'),('b844e0ec-cf2f-4c55-a362-1fd11c17f2ef',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','CGMagazine'),('bceadbb4-73cb-4df3-9a7c-26cb5b6cb10a',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','COGconnected'),('c41f6a42-9a94-4e1f-961f-3e6328ceebcb',0,'$2a$10$dUsPP2ewDL1QMCfZ7Wsl/uRxm.Dn9Fs1cbDA2okpmH/oUjzwhaOPu','NintendoWorldReport'),('d57b1040-dab5-4df2-a8bc-c598b2a4d4e9',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','Shacknews'),('e38b8e2e-ead5-4c34-8063-94e994de9a9b',0,'$2a$10$PKpRvBxYEAMcI7WIE4EZnuj5FNE82MuIjf8h5dzO6BwiD4GxPL/Q2','test2'),('e56eec6f-d449-4221-8470-40d6f1fd7c4f',0,'$2a$10$dUsPP2ewDL1QMCfZ7Wsl/uRxm.Dn9Fs1cbDA2okpmH/oUjzwhaOPu','RPG Fan'),('e8a8f353-7a70-4b7f-a39f-3f5b0f1b0c2e',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','Faylon'),('f88fc099-9e2e-4a5e-8d5e-3d2080d81b8e',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','Gameliner'),('f9ac49da-3425-42d6-ae7b-09d716675af2',0,'$2a$10$gezgSWsDwIE3V6nUC242UOv4ewDcjIq3kuyXQ3ML76b64PlReFJD6','test3');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-28 21:40:26
