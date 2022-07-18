-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: tsn_demo
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Current Database: `tsn_demo`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `tsn_demo` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `tsn_demo`;

--
-- Table structure for table `my_books`
--

DROP TABLE IF EXISTS `my_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_books` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_books`
--

LOCK TABLES `my_books` WRITE;
/*!40000 ALTER TABLE `my_books` DISABLE KEYS */;
INSERT INTO `my_books` VALUES (1,'Effective Java','Joshua Bloch'),(2,'Java Concurrency in Practice','Brian Goetz'),(3,'Современное визуальное программирование','Талипов С.Н.');
/*!40000 ALTER TABLE `my_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (85,'Sergey','Talipov',39),(88,'Lars','Vogel',18),(89,'Jim','Talipov',25),(90,'Lars','Man',33),(91,'Spider','Man',44);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userrole` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `accessCodes` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrole`
--

LOCK TABLES `userrole` WRITE;
/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` VALUES (28,'R114','1,2,5'),(29,'hibernate2','7,7,7'),(30,'R114','1,2,5'),(31,'hibernate2','7,7,7'),(32,'R114','1,2,5'),(33,'hibernate2','7,7,7'),(34,'R114','1,2,5'),(35,'hibernate2','7,7,7'),(36,'R114','1,2,5'),(37,'hibernate2','7,7,7'),(38,'R114','1,2,5'),(39,'hibernate2','7,7,7'),(40,'R114','1,2,5'),(41,'hibernate2','7,7,7'),(42,'R114','1,2,5'),(43,'hibernate2','7,7,7'),(44,'R114','1,2,5'),(45,'hibernate2','7,7,7'),(46,'R114','1,2,5'),(47,'hibernate2','7,7,7');
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userRoleID` int DEFAULT '0',
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `note` varchar(45) DEFAULT NULL,
  `availableDepartments` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5u2kg39886myytwutp0dnxa6d` (`userRoleID`),
  CONSTRAINT `FKa5jrbsbaxr0f0l4f8r4yl5ir9` FOREIGN KEY (`userRoleID`) REFERENCES `userrole` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (14,29,'Test12','1234','Test12',NULL,'1,2,3,4'),(15,31,'Test12','1234','Test12',NULL,'1,2,3,4'),(16,33,'Test12','1234','Test12',NULL,'1,2,3,4'),(17,35,'Test12','1234','Test12',NULL,'1,2,3,4'),(18,37,'Test12','1234','Test12',NULL,'1,2,3,4'),(19,39,'Test12','1234','Test12',NULL,'1,2,3,4'),(20,41,'Test12','1234','Test12',NULL,'1,2,3,4'),(21,43,'Test12','1234','Test12',NULL,'1,2,3,4'),(22,45,'Test12','1234','Test12',NULL,'1,2,3,4'),(23,47,'Test12','1234','Test12',NULL,'1,2,3,4');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tsn_demo'
--

--
-- Dumping routines for database 'tsn_demo'
--

--
-- Current Database: `ts_disks_lite`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ts_disks_lite` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ts_disks_lite`;

--
-- Table structure for table `disk_1`
--

DROP TABLE IF EXISTS `disk_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disk_1` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME_DISK` varchar(80) DEFAULT NULL,
  `PRICE_SEL` decimal(8,2) DEFAULT '0.00',
  `ID_TYPE_DISK` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disk_1`
--

LOCK TABLES `disk_1` WRITE;
/*!40000 ALTER TABLE `disk_1` DISABLE KEYS */;
INSERT INTO `disk_1` VALUES (1,'ОФИС 2019',500.00,2),(2,'СУПЕРСИСТЕМНЫЙ ДИСК',600.00,1),(3,'ENGLISH PLATINUM 2019',1200.00,4),(4,'ALL STARS DISCO 2019',450.00,3),(5,'ЗОЛОТАЯ БУХГАЛТЕРИЯ',1240.00,2),(6,'ЗВЁЗДНЫЕ ВОЙНЫ',1300.00,5),(7,'МАДАГАСКАР',1200.00,5),(8,'WINDOWS 10',15000.00,1),(9,'LINUX MINT',150.00,1),(10,'LINUX UBUNTU',200.00,NULL),(22,'Debian',111.00,1);
/*!40000 ALTER TABLE `disk_1` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `ts_disks_lite` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `new_disk` BEFORE INSERT ON `disk_1` FOR EACH ROW BEGIN
    SET NEW.NAME_DISK =  CONCAT( UPPER( LEFT( NEW.NAME_DISK , 1 ) )  , LOWER ( SUBSTRING( NEW.NAME_DISK , 2) ) );
 END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `ts_disks_lite` CHARACTER SET utf8mb3 COLLATE utf8_general_ci ;

--
-- Temporary view structure for view `disks`
--

DROP TABLE IF EXISTS `disks`;
/*!50001 DROP VIEW IF EXISTS `disks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `disks` AS SELECT 
 1 AS `NAME_DISK`,
 1 AS `PRICE`,
 1 AS `NAME_TYPE_DISK`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `product_type_count`
--

DROP TABLE IF EXISTS `product_type_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_type_count` (
  `type` varchar(40) DEFAULT NULL,
  `count` int unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type_count`
--

LOCK TABLES `product_type_count` WRITE;
/*!40000 ALTER TABLE `product_type_count` DISABLE KEYS */;
INSERT INTO `product_type_count` VALUES ('ПРИКЛАДНОЕ И СИСТЕМНОЕ ПО',2),('СИСТЕМНЫЙ ДИСК',4),('ОБУЧАЮЩИЕ ПРОГРАММЫ',1),('МУЗЫКА',1),('ФИЛЬМЫ',2);
/*!40000 ALTER TABLE `product_type_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tdisk_4`
--

DROP TABLE IF EXISTS `tdisk_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tdisk_4` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME_TYPE_DISK` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tdisk_4`
--

LOCK TABLES `tdisk_4` WRITE;
/*!40000 ALTER TABLE `tdisk_4` DISABLE KEYS */;
INSERT INTO `tdisk_4` VALUES (1,'СИСТЕМНЫЙ ДИСК'),(2,'ПРИКЛАДНОЕ И СИСТЕМНОЕ ПО'),(3,'МУЗЫКА'),(4,'ОБУЧАЮЩИЕ ПРОГРАММЫ'),(5,'ФИЛЬМЫ'),(6,'ДРАЙВЕРЫ'),(7,'ДОКУМЕНТАЦИЯ');
/*!40000 ALTER TABLE `tdisk_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ts_disks_lite'
--

--
-- Dumping routines for database 'ts_disks_lite'
--
/*!50003 DROP FUNCTION IF EXISTS `get_name_disk` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_name_disk`(PID INT) RETURNS varchar(180) CHARSET utf8mb3
    DETERMINISTIC
BEGIN
  DECLARE NAME_FOUND TEXT DEFAULT "";
  SELECT NAME_DISK INTO NAME_FOUND FROM  `ts_disks_lite`.`DISK_1` WHERE ID = PID;
  RETURN NAME_FOUND;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_disks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_disks`(name_arg VARCHAR(145))
    DETERMINISTIC
BEGIN
    SELECT NAME_DISK, PRICE_SEL AS PRICE, NAME_TYPE_DISK
    FROM `ts_disks_lite`.`DISK_1` AS d, `ts_disks_lite`.`TDISK_4` AS td
    WHERE (d.ID_TYPE_DISK = td.ID) AND (NAME_DISK like name_arg)
    ORDER BY NAME_DISK;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `product_count` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `product_count`()
    DETERMINISTIC
BEGIN
    DECLARE p_type VARCHAR(140);  -- Объявление переменной p_type
    DECLARE p_count INT(10) UNSIGNED;  -- Объявление переменной p_count
    DECLARE done INT DEFAULT 0;  -- Объявление переменной done
    
    -- Объявление курора
    DECLARE product CURSOR FOR  
		SELECT NAME_TYPE_DISK, COUNT(*) 
			FROM `ts_disks_lite`.DISK_1 as d, `ts_disks_lite`.TDISK_4 as td
			WHERE (d.ID_TYPE_DISK = td.ID) AND (ID_TYPE_DISK IS NOT NULL)
			GROUP BY NAME_TYPE_DISK;

    -- Объявление обработчика конца курсора
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000'  SET done = 1;-- Когда конец записей в курсоре установить done = 1

	-- Создаем таблицу product_type_count, если ее еще нет в базе данных
    CREATE TABLE IF NOT EXISTS `ts_disks_lite`.`product_type_count` (
		`type` VARCHAR(40),
		`count` INT(10) UNSIGNED
	);

    TRUNCATE `ts_disks_lite`.product_type_count;  -- Очистка таблицы product_type_count от данных

    OPEN product; -- Открыть курсор

    REPEAT FETCH product INTO p_type, p_count;  -- Цикл по записям курсора с инициализацией переменных p_type, p_count для каждой строки курсора
      -- Пока не конец записей курсора
      IF NOT done THEN
        INSERT INTO `ts_disks_lite`.product_type_count SET type  = p_type, count = p_count;  -- Вставка данных в таблицу product_type_count
      END IF;
    UNTIL done END REPEAT;  -- Конец цикла
    
    CLOSE product;  -- Закрыть курсор
    
    SELECT * FROM ts_disks_lite.product_type_count; -- Показ данных из таблицы product_type_count
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `tsn_demo`
--

USE `tsn_demo`;

--
-- Current Database: `ts_disks_lite`
--

USE `ts_disks_lite`;

--
-- Final view structure for view `disks`
--

/*!50001 DROP VIEW IF EXISTS `disks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `disks` AS select `d`.`NAME_DISK` AS `NAME_DISK`,`d`.`PRICE_SEL` AS `PRICE`,`td`.`NAME_TYPE_DISK` AS `NAME_TYPE_DISK` from (`disk_1` `d` join `tdisk_4` `td`) where (`d`.`ID_TYPE_DISK` = `td`.`ID`) order by `d`.`NAME_DISK` */;
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

-- Dump completed on 2022-07-15 21:53:13
