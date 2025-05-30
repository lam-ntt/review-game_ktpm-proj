-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: review_sys-game_service
-- ------------------------------------------------------
-- Server version	8.4.0

CREATE DATABASE IF NOT EXISTS `review_sys-game_service`;
USE `review_sys-game_service`;

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
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `id` varchar(255) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `developer` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `summary` varchar(5000) DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES ('3c6a4827-0b89-4a1e-8610-89f2d31a3f84','https://www.metacritic.com/a/img/catalog/provider/6/12/6-1-944611-52.jpg','Masala Games Private Limited','Detective Dotson','Masala Games Private Limited','2022-12-24','Dotson never wanted to be a detective. That was his dad\'s thing. Dotson wants to be an actor, in Bollywood - he\'s great with costumes! But after dad\'s mysterious death, he must play. the. part. An adventure in the most interesting place on Earth - modern day India! Solve mysteries in the cozy alleys behind the colorful temples. Find clues and complete an evidence board to solve each case. Engage with an array of characters as vibrant as India itself. It\'s an uplifting adventure with Bollywood dance-offs aplenty Food, festivals and family weddings - we\'ve got all the fun parts of India covered.','https://www.youtube.com/watch?v=PDSCNtlVeXs'),('46c87102-94ce-420b-89c0-720d5fa2a789','https://www.metacritic.com/a/img/resize/7907871ab0e4aca610c706f63c43ee66a1580989/catalog/provider/7/2/7-1745174017.jpg?auto=webp&fit=cover&height=300&width=200','Too Kyo Games','The Hundred Line: Last Defense Academy','XSEED Games','2025-04-24','A new adventure from the creators of the Danganronpa and Zero Escape series! 15 students are tasked with defending a school from grotesque monsters for 100 days. Can they make it to the end? And will they survive long enough to uncover the truth?','https://www.youtube.com/watch?v=JNrgeoTWplU'),('6722c89e-6cfa-4a52-94d4-3f4269f6824b','https://www.metacritic.com/a/img/resize/c544fa63037bd0e3a3190daa4e798a255e6f2027/catalog/provider/7/2/7-1743138178.jpg?auto=webp&fit=cover&height=300&width=200','Sandfall Interactive','Clair Obscur: Expedition 33','Kepler Interactive','2025-04-24','Once a year, the Paintress wakes and paints upon her monolith. Paints her cursed number. And everyone of that age turns to smoke and fades away. Year by year, that number ticks down and more of us are erased. Tomorrow she’ll wake and paint “33.” And tomorrow we depart on our final mission - Destroy the Paintress, so she can never paint death again. We are Expedition 33. Clair Obscur: Expedition 33 is a turn-based RPG with unique real-time mechanics, making battles more immersive and addictive than ever. Explore a fantasy world inspired by Belle Époque France in which you battle devastating enemies. In this evolution of JRPGs, real-time actions enhance the heart of turn-based combat. Craft unique builds for your Expeditioners that fit your playstyle via gear, stats, skills, and character synergies. Open an active dimension in combat - dodge, parry, and counter in real time, chain combos by mastering attack rhythms, and target enemy weak points using a free aim system. With only one year left to live, join Gustave, Maelle, and their fellow Expeditioners as they embark upon a desperate quest to break the Paintress’ cycle of death. Follow the trail of previous expeditions and discover their fate. Get to know the members of Expedition 33 as they learn to work together against impossible odds. Explore an enchanting realm populated by surreal adversaries. Wander through breathtaking landscapes, from the Island of Visages to the Forgotten Battlefield, discovering secrets and hidden quests along the way. Find allies of fortune in creatures of legend. Recruit special companions to access new travel methods and discover secret areas in the World Map.','https://www.youtube.com/watch?v=-qgOZDRDynw'),('9f869fcb-6937-4ac6-9a42-e9173dd2edcc','https://www.metacritic.com/a/img/catalog/provider/7/2/7-1745304758.jpg','Microids Studio Paris','Amerzone - The Explorer\'s Legacy','Microids','2025-04-24','Set off on a quest for the Great White Birds in a mysterious land full of secrets! Answer the call of exploration as you travel to Amerzone, a forgotten Latin American country, to fulfill the last wishes of a late explorer. Investigate the ruins of this secretive land reclaimed by nature, meet intriguing characters with deep backstories and solve intricate puzzles to uncover the truth. Will you unveil the mysteries surrounding the mythical Great White Birds? ','https://www.youtube.com/watch?v=NITAaKKDAQA'),('a41db00c-2f3c-4b55-8ed2-2533f05e2756','https://www.metacritic.com/a/img/catalog/provider/6/12/6-1-800323-52.jpg','Pomshine Games','Umami Grove','DANGEN Entertainment','2025-04-24',NULL,'https://www.youtube.com/watch?v=EIK293muhJw'),('ccdef34d-885b-4f83-8fe4-c328fd2a1c96','https://www.metacritic.com/a/img/catalog/provider/6/12/6-1-1105415-52.jpg','Flatter Than Earth','Once Upon A Puppet','Daedalic Entertainment','2025-04-23','Welcome to Once Upon a Puppet, a 2.5D puzzle-platformer that unfolds within a vibrant world of theater. Take part in a magical tale that combines classic platforming with puppet-inspired gameplay, in a captivating story of friendship, self-discovery, and redemption. Wear the glove of Nieve, a Stagehand exiled to the Understage, and wield control over Drev’s strings, a Puppet magically bound to her. As they journey to return to the Frontstage above, they will retell forgotten stories, uncover shadowy secrets, and learn their fate is interwoven with the kingdom of theater itself.','https://www.youtube.com/watch?v=Oso4ykJmyqw'),('e33d2a6c-8e38-40c1-9b6e-2e7a7c29b165','https://www.metacritic.com/a/img/resize/dbf88aacdd858922e9b47bc80bc671ce5804d113/catalog/provider/7/2/7-1744996323.jpg?auto=webp&fit=cover&height=300&width=200','Rocket Panda Games','Phantom Breaker: Battle Grounds Ultimate','Rocket Panda Games','2025-04-17','Rebuilt from the ground up in Unreal Engine 5, this remarkable game stands as a complete remaster of the beloved original beat \'em up, Phantom Breaker: Battle Grounds, first introduced in 2013. Phantom Breaker: Battle Grounds Ultimate revitalizes the classic anime brawler with enhanced visuals, improved gameplay mechanics, and an array of exciting new features, making this the definitive version of the game. Fans of the original and newcomers alike will be immersed in a captivating world of action and adventure like never before.','https://www.youtube.com/watch?v=x5kTPSiF_V8'),('eab683ec-3fa1-42c3-a94b-729e123e4e04','https://www.metacritic.com/a/img/resize/a58fb862a5beb1f466fc4df519fad105427783a5/catalog/provider/7/2/7-1744949820.jpg?auto=webp&fit=cover&height=300&width=200','GungHo','Lunar Remastered Collection','GungHo','2025-04-18','Embark on thrilling adventures within the enchanting worlds of LUNAR: Silver Star Story Complete and LUNAR 2: Eternal Blue Complete! These two cherished JRPGs have delighted gamers for generations. Now, in this definitive remastered edition, experience enhanced graphics, audio, and quality-of-life improvements that make the journey even more magical!','https://www.youtube.com/watch?v=mQ01e5PkiA8'),('f5aa86ed-77c1-449c-a325-788f3eaa82a1','https://www.metacritic.com/a/img/resize/14f2c309c174d1257326328b7479c18e29965dcf/catalog/provider/7/2/7-1744783007.jpg?auto=webp&fit=cover&height=300&width=200','Coatsink Software','Augmented Empire','Coatsink Software','2025-04-16','Blending stunning visuals and turn-based action, Augmented Empire brings a cyberpunk tale of disparity and hope to VR. From the armchair of your secluded hideout, control a team of six misfits in a world rendered as ‘augmented reality.’ In 2058, the city of New Savannah is divided into three tiers via the Citizen Grade System. While the citizens deemed of high societal value live in luxury at the summit, outliers and criminals languish in squalor at the island’s depths. From the creators of Esper 2 and A Night Sky, Augmented Empire combines tactical action and a vibrant cast of characters – including the voice talents of Kate Mulgrew, Nick Frost and Garrick Hagon – into an unforgettable VR-RPG experience. [Oculus.com]','https://www.youtube.com/watch?v=bf8m7jB_slw');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games_genres`
--

DROP TABLE IF EXISTS `games_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games_genres` (
  `game_id` varchar(255) NOT NULL,
  `genres_id` varchar(255) NOT NULL,
  PRIMARY KEY (`game_id`,`genres_id`),
  KEY `FKa2f1qff6dc81smb1ch8kye7pt` (`genres_id`),
  CONSTRAINT `FKa2f1qff6dc81smb1ch8kye7pt` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`id`),
  CONSTRAINT `FKeoeiad6losrgoukbrj6s4m3lg` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_genres`
--

LOCK TABLES `games_genres` WRITE;
/*!40000 ALTER TABLE `games_genres` DISABLE KEYS */;
INSERT INTO `games_genres` VALUES ('46c87102-94ce-420b-89c0-720d5fa2a789','0e6c1ae9-c616-42f5-939b-e63741a0e3f3'),('f5aa86ed-77c1-449c-a325-788f3eaa82a1','0e6c1ae9-c616-42f5-939b-e63741a0e3f3'),('ccdef34d-885b-4f83-8fe4-c328fd2a1c96','d1a8c7f2-bc4f-4ed7-96f5-9bfb38b39b4a'),('e33d2a6c-8e38-40c1-9b6e-2e7a7c29b165','d1a8c7f2-bc4f-4ed7-96f5-9bfb38b39b4a'),('3c6a4827-0b89-4a1e-8610-89f2d31a3f84','fe204d9d-8c8d-49b3-bb51-5c19eae26504'),('6722c89e-6cfa-4a52-94d4-3f4269f6824b','fe204d9d-8c8d-49b3-bb51-5c19eae26504'),('9f869fcb-6937-4ac6-9a42-e9173dd2edcc','fe204d9d-8c8d-49b3-bb51-5c19eae26504'),('a41db00c-2f3c-4b55-8ed2-2533f05e2756','fe204d9d-8c8d-49b3-bb51-5c19eae26504'),('ccdef34d-885b-4f83-8fe4-c328fd2a1c96','fe204d9d-8c8d-49b3-bb51-5c19eae26504'),('eab683ec-3fa1-42c3-a94b-729e123e4e04','fe204d9d-8c8d-49b3-bb51-5c19eae26504');
/*!40000 ALTER TABLE `games_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games_platforms`
--

DROP TABLE IF EXISTS `games_platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games_platforms` (
  `game_id` varchar(255) NOT NULL,
  `platforms_id` varchar(255) NOT NULL,
  PRIMARY KEY (`game_id`,`platforms_id`),
  KEY `FK63iv87a9g5vc3g5p5r3vfhlju` (`platforms_id`),
  CONSTRAINT `FK3omutxk5poaaqgogc352quk39` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`),
  CONSTRAINT `FK63iv87a9g5vc3g5p5r3vfhlju` FOREIGN KEY (`platforms_id`) REFERENCES `platforms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_platforms`
--

LOCK TABLES `games_platforms` WRITE;
/*!40000 ALTER TABLE `games_platforms` DISABLE KEYS */;
INSERT INTO `games_platforms` VALUES ('3c6a4827-0b89-4a1e-8610-89f2d31a3f84','6d2a9a1e-ff36-4e23-b9ad-b238ca0f1143'),('46c87102-94ce-420b-89c0-720d5fa2a789','6d2a9a1e-ff36-4e23-b9ad-b238ca0f1143'),('6722c89e-6cfa-4a52-94d4-3f4269f6824b','6d2a9a1e-ff36-4e23-b9ad-b238ca0f1143'),('9f869fcb-6937-4ac6-9a42-e9173dd2edcc','6d2a9a1e-ff36-4e23-b9ad-b238ca0f1143'),('a41db00c-2f3c-4b55-8ed2-2533f05e2756','6d2a9a1e-ff36-4e23-b9ad-b238ca0f1143'),('ccdef34d-885b-4f83-8fe4-c328fd2a1c96','6d2a9a1e-ff36-4e23-b9ad-b238ca0f1143'),('e33d2a6c-8e38-40c1-9b6e-2e7a7c29b165','6d2a9a1e-ff36-4e23-b9ad-b238ca0f1143'),('eab683ec-3fa1-42c3-a94b-729e123e4e04','6d2a9a1e-ff36-4e23-b9ad-b238ca0f1143'),('f5aa86ed-77c1-449c-a325-788f3eaa82a1','6d2a9a1e-ff36-4e23-b9ad-b238ca0f1143'),('46c87102-94ce-420b-89c0-720d5fa2a789','7ac7d88e-0266-4d9a-bf2e-23462eb80c16'),('ccdef34d-885b-4f83-8fe4-c328fd2a1c96','7ac7d88e-0266-4d9a-bf2e-23462eb80c16'),('e33d2a6c-8e38-40c1-9b6e-2e7a7c29b165','7ac7d88e-0266-4d9a-bf2e-23462eb80c16'),('eab683ec-3fa1-42c3-a94b-729e123e4e04','7ac7d88e-0266-4d9a-bf2e-23462eb80c16'),('6722c89e-6cfa-4a52-94d4-3f4269f6824b','9f3e1b22-42f7-4b99-9c6c-458c68b7499a'),('9f869fcb-6937-4ac6-9a42-e9173dd2edcc','9f3e1b22-42f7-4b99-9c6c-458c68b7499a'),('a41db00c-2f3c-4b55-8ed2-2533f05e2756','9f3e1b22-42f7-4b99-9c6c-458c68b7499a'),('ccdef34d-885b-4f83-8fe4-c328fd2a1c96','9f3e1b22-42f7-4b99-9c6c-458c68b7499a'),('e33d2a6c-8e38-40c1-9b6e-2e7a7c29b165','9f3e1b22-42f7-4b99-9c6c-458c68b7499a'),('eab683ec-3fa1-42c3-a94b-729e123e4e04','9f3e1b22-42f7-4b99-9c6c-458c68b7499a'),('3c6a4827-0b89-4a1e-8610-89f2d31a3f84','b7e9f0a8-5df2-4950-8f4b-d41eaa2f3c6a'),('6722c89e-6cfa-4a52-94d4-3f4269f6824b','b7e9f0a8-5df2-4950-8f4b-d41eaa2f3c6a'),('9f869fcb-6937-4ac6-9a42-e9173dd2edcc','b7e9f0a8-5df2-4950-8f4b-d41eaa2f3c6a'),('ccdef34d-885b-4f83-8fe4-c328fd2a1c96','b7e9f0a8-5df2-4950-8f4b-d41eaa2f3c6a'),('e33d2a6c-8e38-40c1-9b6e-2e7a7c29b165','b7e9f0a8-5df2-4950-8f4b-d41eaa2f3c6a'),('eab683ec-3fa1-42c3-a94b-729e123e4e04','b7e9f0a8-5df2-4950-8f4b-d41eaa2f3c6a');
/*!40000 ALTER TABLE `games_platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `id` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES ('0e6c1ae9-c616-42f5-939b-e63741a0e3f3',NULL,'Strategy'),('87c4a6e5-7186-4ed8-bff5-1d87d7b2f5e1',NULL,'Simulation'),('c7a8fd65-48b3-4c01-9fa7-0e5902a43c71',NULL,'Defence'),('d1a8c7f2-bc4f-4ed7-96f5-9bfb38b39b4a',NULL,'Action'),('fe204d9d-8c8d-49b3-bb51-5c19eae26504',NULL,'Adventure');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platforms`
--

DROP TABLE IF EXISTS `platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platforms` (
  `id` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platforms`
--

LOCK TABLES `platforms` WRITE;
/*!40000 ALTER TABLE `platforms` DISABLE KEYS */;
INSERT INTO `platforms` VALUES ('6d2a9a1e-ff36-4e23-b9ad-b238ca0f1143',NULL,'PC'),('7ac7d88e-0266-4d9a-bf2e-23462eb80c16',NULL,'Nitendo Switch'),('9f3e1b22-42f7-4b99-9c6c-458c68b7499a',NULL,'PS5'),('b7e9f0a8-5df2-4950-8f4b-d41eaa2f3c6a',NULL,'Xbox');
/*!40000 ALTER TABLE `platforms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-28 21:31:38
