CREATE DATABASE  IF NOT EXISTS `tcomplex_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tcomplex_db`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: tcomplex_db
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `premises`
--

DROP TABLE IF EXISTS `premises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premises` (
  `code` varchar(20) NOT NULL,
  `area` double NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `floor` int DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`code`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `premises_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `premises_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premises`
--

LOCK TABLES `premises` WRITE;
/*!40000 ALTER TABLE `premises` DISABLE KEYS */;
INSERT INTO `premises` VALUES ('MB1-01-32',63.6,'Đầy đủ',9,1,48330199,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 1'),('MB1-14-08',378.5,'Hạ tầng',14,1,22316248,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 16'),('MB1-29-36',476.7,'Đầy đủ',1,2,49050724,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 12'),('MB1-55-29',241.7,'Đầy đủ',8,1,48690354,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 14'),('MB1-66-62',336.7,'Hạ tầng',4,2,42389474,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 13'),('MB1-69-03',103.2,'Trống',13,1,24181648,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 100'),('MB1-72-14',354.4,'Trống',3,1,4484242,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 18'),('MB1-76-83',448.7,'Hạ tầng',11,1,43792252,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 11'),('MB1-79-96',464.2,'Trống',1,2,38379714,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 15'),('MB1-94-12',310,'Trống',9,2,14998757,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 19'),('MB1-94-83',264.3,'Đầy đủ',10,2,22760523,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 17'),('MB1-97-24',123.3,'Trống',14,2,26202305,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 10'),('MB2-08-46',423.3,'Hạ tầng',5,1,9989315,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 27'),('MB2-34-88',160.7,'Trống',5,2,3388466,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 25'),('MB2-42-68',44.2,'Đầy đủ',8,2,17340508,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 2'),('MB2-44-65',466.7,'Đầy đủ',8,1,5048647,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 29'),('MB2-52-80',199,'Trống',15,1,21702898,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 28'),('MB2-77-74',453.7,'Đầy đủ',1,2,9236439,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 23'),('MB2-84-36',393.1,'Hạ tầng',15,1,33590570,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 26'),('MB2-86-66',470.4,'Trống',14,1,28050934,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 21'),('MB2-98-52',43.5,'Hạ tầng',3,2,14180794,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 22'),('MB2-98-81',234.5,'Trống',11,2,12072525,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 20'),('MB3-01-55',208.3,'Trống',13,1,21216754,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 36'),('MB3-05-24',93.6,'Trống',6,1,28672856,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 39'),('MB3-07-05',380,'Hạ tầng',12,1,30995397,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 38'),('MB3-12-76',157.6,'Trống',5,1,22307838,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 35'),('MB3-29-22',428.9,'Đầy đủ',7,1,30466998,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 3'),('MB3-43-08',188.1,'Hạ tầng',6,2,25112392,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 32'),('MB3-53-69',354.2,'Trống',15,2,41133295,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 31'),('MB3-57-63',61.1,'Hạ tầng',12,2,21024387,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 34'),('MB3-59-91',116.8,'Đầy đủ',1,2,27100842,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 30'),('MB3-71-50',433.5,'Trống',11,2,14260026,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 37'),('MB3-77-01',429.3,'Trống',5,1,29383915,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 33'),('MB4-12-25',467.2,'Trống',7,1,4376120,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 47'),('MB4-12-51',174,'Đầy đủ',11,2,8173915,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 48'),('MB4-17-62',114,'Đầy đủ',12,1,43434664,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 40'),('MB4-28-66',300.9,'Trống',4,2,2000614,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 41'),('MB4-47-39',296.8,'Đầy đủ',10,2,15224408,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 45'),('MB4-50-30',365.6,'Đầy đủ',7,2,26571475,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 46'),('MB4-55-39',300,'Trống',3,1,19992896,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 43'),('MB4-61-65',278.5,'Hạ tầng',13,1,25178879,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 42'),('MB4-64-04',432.3,'Hạ tầng',7,1,40221114,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 49'),('MB4-71-85',53.6,'Hạ tầng',14,1,31733248,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 4'),('MB4-92-67',325.8,'Trống',6,1,13857303,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 44'),('MB5-04-83',366.3,'Trống',2,1,43060519,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 5'),('MB5-11-00',414.2,'Trống',13,1,5069124,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 59'),('MB5-34-53',227.3,'Hạ tầng',2,2,34160540,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 56'),('MB5-43-12',199.9,'Hạ tầng',1,2,12829881,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 53'),('MB5-50-84',475.7,'Trống',4,1,12344895,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 54'),('MB5-58-11',483.7,'Đầy đủ',10,2,26173566,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 52'),('MB5-77-49',116.4,'Hạ tầng',13,2,5636733,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 57'),('MB5-80-61',398.8,'Trống',3,2,16432536,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 55'),('MB5-81-90',180,'Trống',11,1,47200378,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 50'),('MB5-82-68',455.9,'Đầy đủ',3,1,48771117,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 51'),('MB5-84-12',63,'Trống',1,1,23929631,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 58'),('MB6-09-63',369.4,'Trống',5,1,6292328,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 68'),('MB6-10-42',55.7,'Hạ tầng',6,2,45804370,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 65'),('MB6-10-76',71.5,'Đầy đủ',4,2,35969035,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 66'),('MB6-12-43',274.1,'Đầy đủ',1,1,36887998,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 6'),('MB6-26-11',394,'Trống',12,2,41102144,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 64'),('MB6-36-73',163.8,'Trống',11,2,36374444,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 60'),('MB6-43-16',188.8,'Đầy đủ',1,2,12065199,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 61'),('MB6-49-20',256.2,'Đầy đủ',12,1,23387090,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 62'),('MB6-55-28',162,'Đầy đủ',13,2,27931537,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 63'),('MB6-69-03',414.5,'Hạ tầng',8,2,30374237,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 67'),('MB6-79-91',157.1,'Đầy đủ',11,2,45593782,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 69'),('MB7-02-03',94.5,'Trống',11,2,41755045,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 78'),('MB7-03-91',258.1,'Hạ tầng',12,2,13779982,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 74'),('MB7-16-48',399.8,'Đầy đủ',7,2,19462243,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 7'),('MB7-21-95',66.8,'Trống',1,1,33717934,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 79'),('MB7-30-53',491.5,'Đầy đủ',6,2,23907553,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 77'),('MB7-48-83',434.8,'Đầy đủ',14,2,16035355,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 72'),('MB7-51-60',110.5,'Đầy đủ',5,2,19932778,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 71'),('MB7-70-55',91.4,'Trống',15,2,5936906,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 76'),('MB7-73-17',52.2,'Trống',8,1,46945816,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 70'),('MB7-78-86',207.7,'Đầy đủ',11,2,29414419,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 75'),('MB7-93-92',254.7,'Trống',9,2,2428459,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 73'),('MB8-28-86',63.1,'Trống',3,2,44525894,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 8'),('MB8-39-04',359.6,'Hạ tầng',10,2,47745539,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 88'),('MB8-39-87',400.5,'Hạ tầng',6,2,9102721,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 82'),('MB8-42-29',263.8,'Hạ tầng',10,1,12856275,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 83'),('MB8-48-21',299,'Hạ tầng',2,2,48127642,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 87'),('MB8-51-56',379.5,'Đầy đủ',1,1,42838113,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 89'),('MB8-57-30',432.7,'Trống',8,1,2986563,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 84'),('MB8-63-64',159.6,'Đầy đủ',13,1,27946291,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 80'),('MB8-72-56',368.9,'Trống',11,2,29466999,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 85'),('MB8-79-03',163.4,'Hạ tầng',10,1,26388193,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 81'),('MB8-96-68',307.1,'Đầy đủ',1,2,38827410,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 86'),('MB9-08-42',402.7,'Đầy đủ',10,1,21658974,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 9'),('MB9-10-63',390.3,'Trống',5,1,7763015,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 97'),('MB9-19-18',196.8,'Trống',10,1,46995807,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 92'),('MB9-22-16',142.6,'Đầy đủ',10,1,34592628,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 96'),('MB9-22-42',236.8,'Hạ tầng',4,2,17088374,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 98'),('MB9-24-60',371.1,'Hạ tầng',9,1,8920891,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 95'),('MB9-39-22',187.4,'Trống',9,1,27155771,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 93'),('MB9-49-17',466.2,'Trống',7,2,13863467,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 91'),('MB9-50-53',109.4,'Trống',1,1,26383974,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 99'),('MB9-56-58',468.4,'Đầy đủ',7,2,42522342,'2025-01-01','2026-01-01','Mô tả chi tiết cho mặt bằng số 94');
/*!40000 ALTER TABLE `premises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premises_type`
--

DROP TABLE IF EXISTS `premises_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premises_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premises_type`
--

LOCK TABLES `premises_type` WRITE;
/*!40000 ALTER TABLE `premises_type` DISABLE KEYS */;
INSERT INTO `premises_type` VALUES (1,'Văn phòng chia sẻ'),(2,'Văn phòng trọn gói');
/*!40000 ALTER TABLE `premises_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-10 20:53:30
