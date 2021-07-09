-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: surgery_department
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `assigned bed`
--

DROP TABLE IF EXISTS `assigned bed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assigned bed` (
  `BED_ID` int NOT NULL,
  `WARD_ID` char(2) NOT NULL,
  `PATIENT_ID` char(10) NOT NULL,
  `NURSE_ID` char(4) NOT NULL,
  PRIMARY KEY (`BED_ID`),
  KEY `WARD_ID` (`WARD_ID`),
  KEY `PATIENT_ID` (`PATIENT_ID`),
  KEY `NURSE_ID` (`NURSE_ID`),
  CONSTRAINT `assigned bed_ibfk_1` FOREIGN KEY (`WARD_ID`) REFERENCES `wards` (`WARD_ID`),
  CONSTRAINT `assigned bed_ibfk_2` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patients` (`PATIENT_ID`),
  CONSTRAINT `assigned bed_ibfk_3` FOREIGN KEY (`NURSE_ID`) REFERENCES `staff` (`STAFF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assigned bed`
--

LOCK TABLES `assigned bed` WRITE;
/*!40000 ALTER TABLE `assigned bed` DISABLE KEYS */;
INSERT INTO `assigned bed` VALUES (11,'W1','P172947108','S002'),(12,'W1','P648173645','S002'),(14,'W1','P104661928','S002'),(21,'W2','P761038466','S002'),(22,'W2','P185638198','S009'),(23,'W2','P840193619','S002'),(25,'W2','P352647502','S009'),(26,'W2','P185638000','S009'),(27,'W2','P180637652','S002');
/*!40000 ALTER TABLE `assigned bed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `bed occupancy`
--

DROP TABLE IF EXISTS `bed occupancy`;
/*!50001 DROP VIEW IF EXISTS `bed occupancy`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bed occupancy` AS SELECT 
 1 AS `Ward_Admission_date`,
 1 AS `patient_ID`,
 1 AS `Ward_Name`,
 1 AS `bed_number`,
 1 AS `SURGERYCODE`,
 1 AS `SURGERY_NAME`,
 1 AS `SURGERY_DATE`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `managers`
--

DROP TABLE IF EXISTS `managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managers` (
  `MANAGER_ID` char(4) NOT NULL,
  `FIRSTNAME` varchar(20) NOT NULL,
  `LASTNAME` varchar(20) NOT NULL,
  PRIMARY KEY (`MANAGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managers`
--

LOCK TABLES `managers` WRITE;
/*!40000 ALTER TABLE `managers` DISABLE KEYS */;
INSERT INTO `managers` VALUES ('S006','Chandler','Bing'),('S009','Neville','Longbottom'),('S010','Albus','Dumbledore'),('S011','Ron','Weasley');
/*!40000 ALTER TABLE `managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient status`
--

DROP TABLE IF EXISTS `patient status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient status` (
  `PATIENT_ID` char(10) NOT NULL,
  `ADMISSION` date NOT NULL,
  `DISCHARGE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient status`
--

LOCK TABLES `patient status` WRITE;
/*!40000 ALTER TABLE `patient status` DISABLE KEYS */;
INSERT INTO `patient status` VALUES ('P185638000','2021-05-30',NULL),('P110637652','2021-05-28','2021-05-29'),('P172947108','2021-06-01',NULL),('P648173645','2021-06-01',NULL),('P958153850','2021-06-01','2021-06-02'),('P352647502','2021-05-28',NULL),('P847164036','2021-06-01',NULL),('P180637652','2021-05-28','2021-06-01'),('P761038466','2021-05-29',NULL),('P736105998','2021-05-27','2021-05-28'),('P132956337','2021-05-28','2021-06-01'),('P840193619','2021-05-29','2021-05-30'),('P104661928','2021-05-26',NULL),('P175019724','2021-05-25','2021-05-28'),('P185638198','2021-05-31',NULL),('P110637652','2021-05-30',NULL),('P111111111','2021-06-08',NULL),('P111131111','2021-06-08',NULL);
/*!40000 ALTER TABLE `patient status` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_patient_insert` BEFORE INSERT ON `patient status` FOR EACH ROW BEGIN
set NEW.ADMISSION = CURRENT_DATE;

   
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `PATIENT_ID` char(10) NOT NULL,
  `FIRSTNAME` varchar(20) NOT NULL,
  `LASTNAME` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `PHONENUMBER` char(11) DEFAULT NULL,
  `ADDRESS` varchar(30) DEFAULT NULL,
  `GP_SURGERY` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PATIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES ('P104661928','Captain','America','1982-05-19','7312947163','ROGERS STREET','VERY HEALTHY CENTRE'),('P110637652','Draco','Malfoy','2000-07-18','07659371544','7 SLYTHERIN MANOR','VILLIAN DOCTORS'),('P132956337','Green','Lantern','2005-06-28','7265401879','9 LAMP LANE','GREEN MEDICAL CENTRE'),('P172947108','Jenny','Smith','1993-05-09','01742876935','15 SMITH ROAD','GREEN MEDICAL CENTRE'),('P175019724','Captain','Marvel','1994-07-17','7886351948','20 DANVERS DRIVE','VERY HEALTHY CENTRE'),('P180637652','Vol','De Mort','1960-07-01','7999525381','22 KNOCKTURN ALLEY','VILLIAN DOCTORS'),('P185638000','Cruella','de Vil','1968-12-30','7365440128','18 DALMATION CLOSE','VILLIAN DOCTORS'),('P185638198','Black','Panther','1980-09-14','7162538122','99 WAKANDA WAY','VERY HEALTHY CENTRE'),('P352647502','Bat','Man','1963-04-29','07526498264','THE BATCAVE','SUPERHERO PRACTICE'),('P648173645','Paddington','Bear','2000-07-11','07726491049','1 LOST STREET','GREEN MEDICAL CENTRE'),('P736105998','Super','Woman','1973-11-18','7825664819','HEROVILLE','SUPERHERO PRACTICE'),('P761038466','Peter','Parker','1999-12-19','7816354009','11 BITE LANE','GREEN MEDICAL CENTRE'),('P840193619','Wonder','Woman','1992-01-01','7163927581','THEMYSCIRA','SUPERHERO PRACTICE'),('P847164036','Lois','Lane','1968-10-03','7982653946','12 LOIS LANE','SUPERHERO PRACTICE'),('P958153850','Spider','Man','1980-12-19','07726433349','010 BITE LANE','SUPERHERO PRACTICE');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `PATIENT_ID` char(10) NOT NULL,
  `SURGERYCODE` char(4) NOT NULL,
  `NURSE_ID` char(4) NOT NULL,
  `SURGEON_ID` char(4) NOT NULL,
  `DATE` date NOT NULL,
  `THEATRE` char(1) NOT NULL,
  PRIMARY KEY (`PATIENT_ID`,`SURGERYCODE`),
  KEY `NURSE_ID` (`NURSE_ID`),
  KEY `SURGEON_ID` (`SURGEON_ID`),
  KEY `FK_SURGERYCODE` (`SURGERYCODE`),
  CONSTRAINT `FK_SURGERYCODE` FOREIGN KEY (`SURGERYCODE`) REFERENCES `surgery procedure` (`SURGERYCODE`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`NURSE_ID`) REFERENCES `staff` (`STAFF_ID`),
  CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`SURGEON_ID`) REFERENCES `staff` (`STAFF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES ('P104661928','D1','S009','S004','2021-05-27','3'),('P110637652','D1','S002','S004','2021-05-28','1'),('P110637652','D2','S009','S001','2021-05-31','2'),('P132956337','D3','S013','S005','2021-05-28','3'),('P172947108','D2','S013','S001','2021-06-01','1'),('P175019724','D1','S002','S004','2021-05-25','3'),('P185638000','D2','S013','S005','2021-05-31','1'),('P185638000','D3','S013','S005','2021-05-31','1'),('P185638198','D3','S002','S006','2021-06-01','2'),('P352647502','D3','S002','S001','2021-05-29','3'),('P648173645','D1','S002','S001','2021-06-02','3'),('P736105998','D3','S012','S001','2021-05-27','1'),('P761038466','D2','S009','S006','2021-05-30','1'),('P840193619','D3','S009','S005','2021-05-29','2'),('P847164036','D1','S008','S004','2021-06-02','2'),('P958153850','D2','S009','S005','2021-06-02','1');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `STAFF_ID` char(4) NOT NULL,
  `FIRSTNAME` varchar(50) NOT NULL,
  `LASTNAME` varchar(50) NOT NULL,
  `JOB` varchar(50) DEFAULT NULL,
  `PHONENUMBER` char(11) DEFAULT NULL,
  `MANAGER_ID` char(4) DEFAULT NULL,
  PRIMARY KEY (`STAFF_ID`),
  KEY `MANAGER_ID` (`MANAGER_ID`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`MANAGER_ID`) REFERENCES `managers` (`MANAGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('S001','Rachel','Green','Surgeon','1865000001','S006'),('S002','Ross','Geller','Nurse','1865012345','S009'),('S003','Phoebe','Buffay','Receptionist','01865012379','S010'),('S004','Joey','Tribbiani','Surgeon','1865012455','S006'),('S005','Monica','Geller','Surgeon','01865012755','S006'),('S006','Chandler','Bing','Senior Surgeon','1865012755','S011'),('S007','Harry','Potter','Receptionist','1865012380','S010'),('S008','Hermione','Grainger','Nurse','1865012380','S009'),('S009','Neville','Longbottom','Senior Nurse','1865012380','S011'),('S010','Albus','Dumbledore','Head of Department','1865012999',NULL),('S011','Ron','Weasley','Senior Admin','01865012000','S011'),('S012','Lex','Luther','Nurse','1865012555','S009'),('S013','Winnie','Pooh','Nurse','01865012311','S009'),('S014','ELECTRIC','SHOCK','IT','01865012388','S011');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `summary`
--

DROP TABLE IF EXISTS `summary`;
/*!50001 DROP VIEW IF EXISTS `summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `summary` AS SELECT 
 1 AS `Ward_Admission_date`,
 1 AS `patient_ID`,
 1 AS `Ward_Name`,
 1 AS `bed_number`,
 1 AS `SURGERYCODE`,
 1 AS `SURGERY_NAME`,
 1 AS `SURGERY_DATE`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `surgery procedure`
--

DROP TABLE IF EXISTS `surgery procedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surgery procedure` (
  `SURGERYCODE` char(2) NOT NULL,
  `SURGERY_NAME` char(50) DEFAULT NULL,
  PRIMARY KEY (`SURGERYCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surgery procedure`
--

LOCK TABLES `surgery procedure` WRITE;
/*!40000 ALTER TABLE `surgery procedure` DISABLE KEYS */;
INSERT INTO `surgery procedure` VALUES ('D1','Craniectomy'),('D2','heterotopic heart transplant'),('D3','joint replacement');
/*!40000 ALTER TABLE `surgery procedure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wards`
--

DROP TABLE IF EXISTS `wards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wards` (
  `WARD_ID` char(2) NOT NULL,
  `WARD_NAME` char(50) DEFAULT NULL,
  `NUMBER_OF_BEDS` int DEFAULT NULL,
  PRIMARY KEY (`WARD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wards`
--

LOCK TABLES `wards` WRITE;
/*!40000 ALTER TABLE `wards` DISABLE KEYS */;
INSERT INTO `wards` VALUES ('W1','Ororo Monroe',4),('W2','DORA MILAJE',7);
/*!40000 ALTER TABLE `wards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `bed occupancy`
--

/*!50001 DROP VIEW IF EXISTS `bed occupancy`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bed occupancy` AS select distinct `ps`.`ADMISSION` AS `Ward_Admission_date`,`ab`.`PATIENT_ID` AS `patient_ID`,`w`.`WARD_NAME` AS `Ward_Name`,`ab`.`BED_ID` AS `bed_number`,`s`.`SURGERYCODE` AS `SURGERYCODE`,`sp`.`SURGERY_NAME` AS `SURGERY_NAME`,`s`.`DATE` AS `SURGERY_DATE` from (((((`patients` `p` join `assigned bed` `ab` on((`p`.`PATIENT_ID` = `ab`.`PATIENT_ID`))) left join `wards` `w` on((`ab`.`WARD_ID` = `w`.`WARD_ID`))) join `schedule` `s` on((`p`.`PATIENT_ID` = `s`.`PATIENT_ID`))) join `patient status` `ps` on((`ps`.`PATIENT_ID` = `p`.`PATIENT_ID`))) join `surgery procedure` `sp` on(((`s`.`SURGERYCODE` = `sp`.`SURGERYCODE`) and (`ps`.`DISCHARGE` is null)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `summary`
--

/*!50001 DROP VIEW IF EXISTS `summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `summary` AS select distinct `ps`.`ADMISSION` AS `Ward_Admission_date`,`ab`.`PATIENT_ID` AS `patient_ID`,`w`.`WARD_NAME` AS `Ward_Name`,`ab`.`BED_ID` AS `bed_number`,`s`.`SURGERYCODE` AS `SURGERYCODE`,`sp`.`SURGERY_NAME` AS `SURGERY_NAME`,`s`.`DATE` AS `SURGERY_DATE` from (((((`patients` `p` join `assigned bed` `ab` on((`p`.`PATIENT_ID` = `ab`.`PATIENT_ID`))) left join `wards` `w` on((`ab`.`WARD_ID` = `w`.`WARD_ID`))) join `schedule` `s` on((`p`.`PATIENT_ID` = `s`.`PATIENT_ID`))) join `patient status` `ps` on((`ps`.`PATIENT_ID` = `p`.`PATIENT_ID`))) join `surgery procedure` `sp` on(((`s`.`SURGERYCODE` = `sp`.`SURGERYCODE`) and (`ps`.`DISCHARGE` is null)))) */;
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

-- Dump completed on 2021-06-08 19:59:34
