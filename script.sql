-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: houseware
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `role_id` int DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_gex1lmaqpg0ir5g1f5eftyaa1` (`username`),
  KEY `FKqgwk7xr7deq2lv8padvxfl54m` (`role_id`),
  KEY `FKo3qghi6rsyakv3dm3v9kqjevu` (`status_id`),
  CONSTRAINT `FKo3qghi6rsyakv3dm3v9kqjevu` FOREIGN KEY (`status_id`) REFERENCES `status_account` (`id`),
  CONSTRAINT `FKqgwk7xr7deq2lv8padvxfl54m` FOREIGN KEY (`role_id`) REFERENCES `role_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpti9a68vae8t9cws9sopcy0br` (`status_id`),
  CONSTRAINT `FKpti9a68vae8t9cws9sopcy0br` FOREIGN KEY (`status_id`) REFERENCES `status_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Tools',1),(2,'Measurements',1),(3,'Improvement',1),(4,'Lights&Lighting',1),(5,'Home&Garden',1),(6,'Others',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgpextbyee3uk9u6o2381m7ft1` (`product_id`),
  CONSTRAINT `FKgpextbyee3uk9u6o2381m7ft1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1166 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'tools/1_1.jpg',1),(2,'tools/1_2.jpg',1),(3,'tools/1_3.jpg',1),(4,'tools/1_4.jpg',1),(5,'tools/1_5.jpg',1),(6,'tools/2_1.jpg',2),(7,'tools/2_2.jpg',2),(8,'tools/2_3.jpg',2),(9,'tools/2_4.jpg',2),(10,'tools/2_5.jpg',2),(11,'tools/3_1.jpg',3),(12,'tools/3_2.jpg',3),(13,'tools/3_3.jpg',3),(14,'tools/3_4.jpg',3),(15,'tools/3_5.jpg',3),(16,'tools/4_1.jpg',4),(17,'tools/4_2.jpg',4),(18,'tools/4_3.jpg',4),(19,'tools/4_4.jpg',4),(20,'tools/4_5.jpg',4),(21,'tools/5_1.jpg',5),(22,'tools/5_2.jpg',5),(23,'tools/5_3.jpg',5),(24,'tools/5_4.jpg',5),(25,'tools/5_5.jpg',5),(26,'tools/6_1.jpg',6),(27,'tools/6_2.jpg',6),(28,'tools/6_3.jpg',6),(29,'tools/6_4.jpg',6),(30,'tools/6_5.jpg',6),(31,'tools/7_1.jpg',7),(32,'tools/7_2.jpg',7),(33,'tools/7_3.jpg',7),(34,'tools/7_4.jpg',7),(35,'tools/7_5.jpg',7),(36,'tools/8_1.jpg',8),(37,'tools/8_2.jpg',8),(38,'tools/8_3.jpg',8),(39,'tools/8_4.jpg',8),(40,'tools/8_5.jpg',8),(41,'tools/9_1.jpg',9),(42,'tools/9_2.jpg',9),(43,'tools/9_3.jpg',9),(44,'tools/9_4.jpg',9),(45,'tools/9_5.jpg',9),(46,'tools/10_1.jpg',10),(47,'tools/10_2.jpg',10),(48,'tools/10_3.jpg',10),(49,'tools/10_4.jpg',10),(50,'tools/10_5.jpg',10),(51,'tools/11_1.jpg',11),(52,'tools/11_2.jpg',11),(53,'tools/11_3.jpg',11),(54,'tools/11_4.jpg',11),(55,'tools/11_5.jpg',11),(56,'tools/12_1.jpg',12),(57,'tools/12_2.jpg',12),(58,'tools/12_3.jpg',12),(59,'tools/12_4.jpg',12),(60,'tools/12_5.jpg',12),(61,'tools/13_1.jpg',13),(62,'tools/13_2.jpg',13),(63,'tools/13_3.jpg',13),(64,'tools/13_4.jpg',13),(65,'tools/13_5.jpg',13),(66,'tools/14_1.jpg',14),(67,'tools/14_2.jpg',14),(68,'tools/14_3.jpg',14),(69,'tools/14_4.jpg',14),(70,'tools/14_5.jpg',14),(71,'tools/15_1.jpg',15),(72,'tools/15_2.jpg',15),(73,'tools/15_3.jpg',15),(74,'tools/15_4.jpg',15),(75,'tools/15_5.jpg',15),(76,'tools/16_1.jpg',16),(77,'tools/16_2.jpg',16),(78,'tools/16_3.jpg',16),(79,'tools/16_4.jpg',16),(80,'tools/16_5.jpg',16),(81,'tools/17_1.jpg',17),(82,'tools/17_2.jpg',17),(83,'tools/17_3.jpg',17),(84,'tools/17_4.jpg',17),(85,'tools/17_5.jpg',17),(86,'tools/18_1.jpg',18),(87,'tools/18_2.jpg',18),(88,'tools/18_3.jpg',18),(89,'tools/18_4.jpg',18),(90,'tools/18_5.jpg',18),(91,'tools/19_1.jpg',19),(92,'tools/19_2.jpg',19),(93,'tools/19_3.jpg',19),(94,'tools/19_4.jpg',19),(95,'tools/19_5.jpg',19),(96,'tools/20_1.jpg',20),(97,'tools/20_2.jpg',20),(98,'tools/20_3.jpg',20),(99,'tools/20_4.jpg',20),(100,'tools/20_5.jpg',20),(101,'tools/21_1.jpg',21),(102,'tools/21_2.jpg',21),(103,'tools/21_3.jpg',21),(104,'tools/21_4.jpg',21),(105,'tools/21_5.jpg',21),(106,'tools/22_1.jpg',22),(107,'tools/22_2.jpg',22),(108,'tools/22_3.jpg',22),(109,'tools/22_4.jpg',22),(110,'tools/22_5.jpg',22),(111,'tools/23_1.jpg',23),(112,'tools/23_2.jpg',23),(113,'tools/23_3.jpg',23),(114,'tools/23_4.jpg',23),(115,'tools/23_5.jpg',23),(116,'tools/24_1.jpg',24),(117,'tools/24_2.jpg',24),(118,'tools/24_3.jpg',24),(119,'tools/24_4.jpg',24),(120,'tools/24_5.jpg',24),(121,'tools/25_1.jpg',25),(122,'tools/25_2.jpg',25),(123,'tools/25_3.jpg',25),(124,'tools/25_4.jpg',25),(125,'tools/25_5.jpg',25),(126,'tools/26_1.jpg',26),(127,'tools/26_2.jpg',26),(128,'tools/26_3.jpg',26),(129,'tools/26_4.jpg',26),(130,'tools/26_5.jpg',26),(131,'tools/27_1.jpg',27),(132,'tools/27_2.jpg',27),(133,'tools/27_3.jpg',27),(134,'tools/27_4.jpg',27),(135,'tools/27_5.jpg',27),(136,'tools/28_1.jpg',28),(137,'tools/28_2.jpg',28),(138,'tools/28_3.jpg',28),(139,'tools/28_4.jpg',28),(140,'tools/28_5.jpg',28),(141,'tools/29_1.jpg',29),(142,'tools/29_2.jpg',29),(143,'tools/29_3.jpg',29),(144,'tools/29_4.jpg',29),(145,'tools/29_5.jpg',29),(146,'tools/30_1.jpg',30),(147,'tools/30_2.jpg',30),(148,'tools/30_3.jpg',30),(149,'tools/30_4.jpg',30),(150,'tools/30_5.jpg',30),(151,'tools/31_1.jpg',31),(152,'tools/31_2.jpg',31),(153,'tools/31_3.jpg',31),(154,'tools/31_4.jpg',31),(155,'tools/31_5.jpg',31),(156,'tools/32_1.jpg',32),(157,'tools/32_2.jpg',32),(158,'tools/32_3.jpg',32),(159,'tools/32_4.jpg',32),(160,'tools/32_5.jpg',32),(161,'tools/33_1.jpg',33),(162,'tools/33_2.jpg',33),(163,'tools/33_3.jpg',33),(164,'tools/33_4.jpg',33),(165,'tools/33_5.jpg',33),(166,'tools/34_1.jpg',34),(167,'tools/34_2.jpg',34),(168,'tools/34_3.jpg',34),(169,'tools/34_4.jpg',34),(170,'tools/34_5.jpg',34),(171,'tools/35_1.jpg',35),(172,'tools/35_2.jpg',35),(173,'tools/35_3.jpg',35),(174,'tools/35_4.jpg',35),(175,'tools/35_5.jpg',35),(176,'tools/36_1.jpg',36),(177,'tools/36_2.jpg',36),(178,'tools/36_3.jpg',36),(179,'tools/36_4.jpg',36),(180,'tools/36_5.jpg',36),(181,'tools/37_1.jpg',37),(182,'tools/37_2.jpg',37),(183,'tools/37_3.jpg',37),(184,'tools/37_4.jpg',37),(185,'tools/37_5.jpg',37),(186,'tools/38_1.jpg',38),(187,'tools/38_2.jpg',38),(188,'tools/38_3.jpg',38),(189,'tools/38_4.jpg',38),(190,'tools/38_5.jpg',38),(191,'tools/39_1.jpg',39),(192,'tools/39_2.jpg',39),(193,'tools/39_3.jpg',39),(194,'tools/39_4.jpg',39),(195,'tools/39_5.jpg',39),(196,'tools/40_1.jpg',40),(197,'tools/40_2.jpg',40),(198,'tools/40_3.jpg',40),(199,'tools/40_4.jpg',40),(200,'tools/40_5.jpg',40),(201,'tools/41_1.jpg',41),(202,'tools/41_2.jpg',41),(203,'tools/41_3.jpg',41),(204,'tools/41_4.jpg',41),(205,'tools/41_5.jpg',41),(206,'tools/42_1.jpg',42),(207,'tools/42_2.jpg',42),(208,'tools/42_3.jpg',42),(209,'tools/42_4.jpg',42),(210,'tools/42_5.jpg',42),(211,'tools/43_1.jpg',43),(212,'tools/43_2.jpg',43),(213,'tools/43_3.jpg',43),(214,'tools/43_4.jpg',43),(215,'tools/43_5.jpg',43),(216,'tools/44_1.jpg',44),(217,'tools/44_2.jpg',44),(218,'tools/44_3.jpg',44),(219,'tools/44_4.jpg',44),(220,'tools/44_5.jpg',44),(221,'tools/45_1.jpg',45),(222,'tools/45_2.jpg',45),(223,'tools/45_3.jpg',45),(224,'tools/45_4.jpg',45),(225,'tools/45_5.jpg',45),(226,'tools/46_1.jpg',46),(227,'tools/46_2.jpg',46),(228,'tools/46_3.jpg',46),(229,'tools/46_4.jpg',46),(230,'tools/46_5.jpg',46),(231,'tools/47_1.jpg',47),(232,'tools/47_2.jpg',47),(233,'tools/47_3.jpg',47),(234,'tools/47_4.jpg',47),(235,'tools/47_5.jpg',47),(236,'tools/48_1.jpg',48),(237,'tools/48_2.jpg',48),(238,'tools/48_3.jpg',48),(239,'tools/48_4.jpg',48),(240,'tools/48_5.jpg',48),(241,'tools/49_1.jpg',49),(242,'tools/49_2.jpg',49),(243,'tools/49_3.jpg',49),(244,'tools/49_4.jpg',49),(245,'tools/49_5.jpg',49),(246,'tools/50_1.jpg',50),(247,'tools/50_2.jpg',50),(248,'tools/50_3.jpg',50),(249,'tools/50_4.jpg',50),(250,'tools/50_5.jpg',50),(251,'tools/51_1.jpg',51),(252,'tools/51_2.jpg',51),(253,'tools/51_3.jpg',51),(254,'tools/51_4.jpg',51),(255,'tools/51_5.jpg',51),(256,'tools/52_1.jpg',52),(257,'tools/52_2.jpg',52),(258,'tools/52_3.jpg',52),(259,'tools/52_4.jpg',52),(260,'tools/52_5.jpg',52),(261,'tools/53_1.jpg',53),(262,'tools/53_2.jpg',53),(263,'tools/53_3.jpg',53),(264,'tools/53_4.jpg',53),(265,'tools/53_5.jpg',53),(266,'tools/54_1.jpg',54),(267,'tools/54_2.jpg',54),(268,'tools/54_3.jpg',54),(269,'tools/54_4.jpg',54),(270,'tools/54_5.jpg',54),(271,'tools/55_1.jpg',55),(272,'tools/55_2.jpg',55),(273,'tools/55_3.jpg',55),(274,'tools/55_4.jpg',55),(275,'tools/55_5.jpg',55),(276,'tools/56_1.jpg',56),(277,'tools/56_2.jpg',56),(278,'tools/56_3.jpg',56),(279,'tools/56_4.jpg',56),(280,'tools/56_5.jpg',56),(281,'tools/57_1.jpg',57),(282,'tools/57_2.jpg',57),(283,'tools/57_3.jpg',57),(284,'tools/57_4.jpg',57),(285,'tools/57_5.jpg',57),(286,'tools/58_1.jpg',58),(287,'tools/58_2.jpg',58),(288,'tools/58_3.jpg',58),(289,'tools/58_4.jpg',58),(290,'tools/58_5.jpg',58),(291,'tools/59_1.jpg',59),(292,'tools/59_2.jpg',59),(293,'tools/59_3.jpg',59),(294,'tools/59_4.jpg',59),(295,'tools/59_5.jpg',59),(296,'tools/60_1.jpg',60),(297,'tools/60_2.jpg',60),(298,'tools/60_3.jpg',60),(299,'tools/60_4.jpg',60),(300,'tools/60_5.jpg',60),(301,'Measurements/61_1.jpg',61),(302,'Measurements/61_2.jpg',61),(303,'Measurements/61_3.jpg',61),(304,'Measurements/61_4.jpg',61),(305,'Measurements/61_5.jpg',61),(306,'Measurements/62_1.jpg',62),(307,'Measurements/62_2.jpg',62),(308,'Measurements/62_3.jpg',62),(309,'Measurements/62_4.jpg',62),(310,'Measurements/62_5.jpg',62),(311,'Measurements/63_1.jpg',63),(312,'Measurements/63_2.jpg',63),(313,'Measurements/63_3.jpg',63),(314,'Measurements/63_4.jpg',63),(315,'Measurements/63_5.jpg',63),(316,'Measurements/64_1.jpg',64),(317,'Measurements/64_2.jpg',64),(318,'Measurements/64_3.jpg',64),(319,'Measurements/64_4.jpg',64),(320,'Measurements/64_5.jpg',64),(321,'Measurements/65_1.jpg',65),(322,'Measurements/65_2.jpg',65),(323,'Measurements/65_3.jpg',65),(324,'Measurements/65_4.jpg',65),(325,'Measurements/65_5.jpg',65),(326,'Measurements/66_1.jpg',66),(327,'Measurements/66_2.jpg',66),(328,'Measurements/66_3.jpg',66),(329,'Measurements/66_4.jpg',66),(330,'Measurements/66_5.jpg',66),(331,'Measurements/67_1.jpg',67),(332,'Measurements/67_2.jpg',67),(333,'Measurements/67_3.jpg',67),(334,'Measurements/67_4.jpg',67),(335,'Measurements/67_5.jpg',67),(336,'Measurements/68_1.jpg',68),(337,'Measurements/68_2.jpg',68),(338,'Measurements/68_3.jpg',68),(339,'Measurements/68_4.jpg',68),(340,'Measurements/68_5.jpg',68),(341,'Measurements/69_1.jpg',69),(342,'Measurements/69_2.jpg',69),(343,'Measurements/69_3.jpg',69),(344,'Measurements/69_4.jpg',69),(345,'Measurements/69_5.jpg',69),(346,'Measurements/70_1.jpg',70),(347,'Measurements/70_2.jpg',70),(348,'Measurements/70_3.jpg',70),(349,'Measurements/70_4.jpg',70),(350,'Measurements/70_5.jpg',70),(351,'Measurements/71_1.jpg',71),(352,'Measurements/71_2.jpg',71),(353,'Measurements/71_3.jpg',71),(354,'Measurements/71_4.jpg',71),(355,'Measurements/71_5.jpg',71),(356,'Measurements/72_1.jpg',72),(357,'Measurements/72_2.jpg',72),(358,'Measurements/72_3.jpg',72),(359,'Measurements/72_4.jpg',72),(360,'Measurements/72_5.jpg',72),(361,'Measurements/73_1.jpg',73),(362,'Measurements/73_2.jpg',73),(363,'Measurements/73_3.jpg',73),(364,'Measurements/73_4.jpg',73),(365,'Measurements/73_5.jpg',73),(366,'Measurements/74_1.jpg',74),(367,'Measurements/74_2.jpg',74),(368,'Measurements/74_3.jpg',74),(369,'Measurements/74_4.jpg',74),(370,'Measurements/74_5.jpg',74),(371,'Measurements/75_1.jpg',75),(372,'Measurements/75_2.jpg',75),(373,'Measurements/75_3.jpg',75),(374,'Measurements/75_4.jpg',75),(375,'Measurements/75_5.jpg',75),(376,'Measurements/76_1.jpg',76),(377,'Measurements/76_2.jpg',76),(378,'Measurements/76_3.jpg',76),(379,'Measurements/76_4.jpg',76),(380,'Measurements/76_5.jpg',76),(381,'Measurements/77_1.jpg',77),(382,'Measurements/77_2.jpg',77),(383,'Measurements/77_3.jpg',77),(384,'Measurements/77_4.jpg',77),(385,'Measurements/77_5.jpg',77),(386,'Measurements/78_1.jpg',78),(387,'Measurements/78_2.jpg',78),(388,'Measurements/78_3.jpg',78),(389,'Measurements/78_4.jpg',78),(390,'Measurements/78_5.jpg',78),(391,'Measurements/79_1.jpg',79),(392,'Measurements/79_2.jpg',79),(393,'Measurements/79_3.jpg',79),(394,'Measurements/79_4.jpg',79),(395,'Measurements/79_5.jpg',79),(611,'Measurements/80_1.jpg',80),(612,'Measurements/80_2.jpg',80),(613,'Measurements/80_3.jpg',80),(614,'Measurements/80_4.jpg',80),(615,'Measurements/80_5.jpg',80),(616,'Measurements/81_1.jpg',81),(617,'Measurements/81_2.jpg',81),(618,'Measurements/81_3.jpg',81),(619,'Measurements/81_4.jpg',81),(620,'Measurements/81_5.jpg',81),(621,'Measurements/82_1.jpg',82),(622,'Measurements/82_2.jpg',82),(623,'Measurements/82_3.jpg',82),(624,'Measurements/82_4.jpg',82),(625,'Measurements/82_5.jpg',82),(626,'Measurements/83_1.jpg',83),(627,'Measurements/83_2.jpg',83),(628,'Measurements/83_3.jpg',83),(629,'Measurements/83_4.jpg',83),(630,'Measurements/83_5.jpg',83),(631,'Measurements/84_1.jpg',84),(632,'Measurements/84_2.jpg',84),(633,'Measurements/84_3.jpg',84),(634,'Measurements/84_4.jpg',84),(635,'Measurements/84_5.jpg',84),(636,'Measurements/85_1.jpg',85),(637,'Measurements/85_2.jpg',85),(638,'Measurements/85_3.jpg',85),(639,'Measurements/85_4.jpg',85),(640,'Measurements/85_5.jpg',85),(641,'Measurements/86_1.jpg',86),(642,'Measurements/86_2.jpg',86),(643,'Measurements/86_3.jpg',86),(644,'Measurements/86_4.jpg',86),(645,'Measurements/86_5.jpg',86),(646,'Measurements/87_1.jpg',87),(647,'Measurements/87_2.jpg',87),(648,'Measurements/87_3.jpg',87),(649,'Measurements/87_4.jpg',87),(650,'Measurements/87_5.jpg',87),(651,'Measurements/88_1.jpg',88),(652,'Measurements/88_2.jpg',88),(653,'Measurements/88_3.jpg',88),(654,'Measurements/88_4.jpg',88),(655,'Measurements/88_5.jpg',88),(656,'Measurements/89_1.jpg',89),(657,'Measurements/89_2.jpg',89),(658,'Measurements/89_3.jpg',89),(659,'Measurements/89_4.jpg',89),(660,'Measurements/89_5.jpg',89),(661,'Measurements/90_1.jpg',90),(662,'Measurements/90_2.jpg',90),(663,'Measurements/90_3.jpg',90),(664,'Measurements/90_4.jpg',90),(665,'Measurements/90_5.jpg',90),(666,'Measurements/91_1.jpg',91),(667,'Measurements/91_2.jpg',91),(668,'Measurements/91_3.jpg',91),(669,'Measurements/91_4.jpg',91),(670,'Measurements/91_5.jpg',91),(671,'Measurements/92_1.jpg',92),(672,'Measurements/92_2.jpg',92),(673,'Measurements/92_3.jpg',92),(674,'Measurements/92_4.jpg',92),(675,'Measurements/92_5.jpg',92),(676,'Measurements/93_1.jpg',93),(677,'Measurements/93_2.jpg',93),(678,'Measurements/93_3.jpg',93),(679,'Measurements/93_4.jpg',93),(680,'Measurements/93_5.jpg',93),(681,'Measurements/94_1.jpg',94),(682,'Measurements/94_2.jpg',94),(683,'Measurements/94_3.jpg',94),(684,'Measurements/94_4.jpg',94),(685,'Measurements/94_5.jpg',94),(686,'Measurements/95_1.jpg',95),(687,'Measurements/95_2.jpg',95),(688,'Measurements/95_3.jpg',95),(689,'Measurements/95_4.jpg',95),(690,'Measurements/95_5.jpg',95),(691,'Measurements/96_1.jpg',96),(692,'Measurements/96_2.jpg',96),(693,'Measurements/96_3.jpg',96),(694,'Measurements/96_4.jpg',96),(695,'Measurements/96_5.jpg',96),(696,'Measurements/97_1.jpg',97),(697,'Measurements/97_2.jpg',97),(698,'Measurements/97_3.jpg',97),(699,'Measurements/97_4.jpg',97),(700,'Measurements/97_5.jpg',97),(701,'Measurements/98_1.jpg',98),(702,'Measurements/98_2.jpg',98),(703,'Measurements/98_3.jpg',98),(704,'Measurements/98_4.jpg',98),(705,'Measurements/98_5.jpg',98),(706,'Measurements/99_1.jpg',99),(707,'Measurements/99_2.jpg',99),(708,'Measurements/99_3.jpg',99),(709,'Measurements/99_4.jpg',99),(710,'Measurements/99_5.jpg',99),(711,'Measurements/100_1.jpg',100),(712,'Measurements/100_2.jpg',100),(713,'Measurements/100_3.jpg',100),(714,'Measurements/100_4.jpg',100),(715,'Measurements/100_5.jpg',100),(716,'improvement/101_1.jpg',101),(717,'improvement/101_2.jpg',101),(718,'improvement/101_3.jpg',101),(719,'improvement/101_4.jpg',101),(720,'improvement/101_5.jpg',101),(721,'improvement/102_1.jpg',102),(722,'improvement/102_2.jpg',102),(723,'improvement/102_3.jpg',102),(724,'improvement/102_4.jpg',102),(725,'improvement/102_5.jpg',102),(726,'improvement/103_1.jpg',103),(727,'improvement/103_2.jpg',103),(728,'improvement/103_3.jpg',103),(729,'improvement/103_4.jpg',103),(730,'improvement/103_5.jpg',103),(731,'improvement/104_1.jpg',104),(732,'improvement/104_2.jpg',104),(733,'improvement/104_3.jpg',104),(734,'improvement/104_4.jpg',104),(735,'improvement/104_5.jpg',104),(736,'improvement/105_1.jpg',105),(737,'improvement/105_2.jpg',105),(738,'improvement/105_3.jpg',105),(739,'improvement/105_4.jpg',105),(740,'improvement/105_5.jpg',105),(741,'improvement/106_1.jpg',106),(742,'improvement/106_2.jpg',106),(743,'improvement/106_3.jpg',106),(744,'improvement/106_4.jpg',106),(745,'improvement/106_5.jpg',106),(746,'improvement/107_1.jpg',107),(747,'improvement/107_2.jpg',107),(748,'improvement/107_3.jpg',107),(749,'improvement/107_4.jpg',107),(750,'improvement/107_5.jpg',107),(751,'improvement/108_1.jpg',108),(752,'improvement/108_2.jpg',108),(753,'improvement/108_3.jpg',108),(754,'improvement/108_4.jpg',108),(755,'improvement/108_5.jpg',108),(756,'improvement/109_1.jpg',109),(757,'improvement/109_2.jpg',109),(758,'improvement/109_3.jpg',109),(759,'improvement/109_4.jpg',109),(760,'improvement/109_5.jpg',109),(761,'improvement/110_1.jpg',110),(762,'improvement/110_2.jpg',110),(763,'improvement/110_3.jpg',110),(764,'improvement/110_4.jpg',110),(765,'improvement/110_5.jpg',110),(766,'improvement/111_1.jpg',111),(767,'improvement/111_2.jpg',111),(768,'improvement/111_3.jpg',111),(769,'improvement/111_4.jpg',111),(770,'improvement/111_5.jpg',111),(771,'improvement/112_1.jpg',112),(772,'improvement/112_2.jpg',112),(773,'improvement/112_3.jpg',112),(774,'improvement/112_4.jpg',112),(775,'improvement/112_5.jpg',112),(776,'improvement/113_1.jpg',113),(777,'improvement/113_2.jpg',113),(778,'improvement/113_3.jpg',113),(779,'improvement/113_4.jpg',113),(780,'improvement/113_5.jpg',113),(781,'improvement/114_1.jpg',114),(782,'improvement/114_2.jpg',114),(783,'improvement/114_3.jpg',114),(784,'improvement/114_4.jpg',114),(785,'improvement/114_5.jpg',114),(786,'improvement/115_1.jpg',115),(787,'improvement/115_2.jpg',115),(788,'improvement/115_3.jpg',115),(789,'improvement/115_4.jpg',115),(790,'improvement/115_5.jpg',115),(791,'improvement/116_1.jpg',116),(792,'improvement/116_2.jpg',116),(793,'improvement/116_3.jpg',116),(794,'improvement/116_4.jpg',116),(795,'improvement/116_5.jpg',116),(796,'improvement/117_1.jpg',117),(797,'improvement/117_2.jpg',117),(798,'improvement/117_3.jpg',117),(799,'improvement/117_4.jpg',117),(800,'improvement/117_5.jpg',117),(801,'improvement/118_1.jpg',118),(802,'improvement/118_2.jpg',118),(803,'improvement/118_3.jpg',118),(804,'improvement/118_4.jpg',118),(805,'improvement/118_5.jpg',118),(806,'improvement/119_1.jpg',119),(807,'improvement/119_2.jpg',119),(808,'improvement/119_3.jpg',119),(809,'improvement/119_4.jpg',119),(810,'improvement/119_5.jpg',119),(811,'improvement/120_1.jpg',120),(812,'improvement/120_2.jpg',120),(813,'improvement/120_3.jpg',120),(814,'improvement/120_4.jpg',120),(815,'improvement/120_5.jpg',120),(816,'improvement/121_1.jpg',121),(817,'improvement/121_2.jpg',121),(818,'improvement/121_3.jpg',121),(819,'improvement/121_4.jpg',121),(820,'improvement/121_5.jpg',121),(821,'improvement/122_1.jpg',122),(822,'improvement/122_2.jpg',122),(823,'improvement/122_3.jpg',122),(824,'improvement/122_4.jpg',122),(825,'improvement/122_5.jpg',122),(826,'improvement/123_1.jpg',123),(827,'improvement/123_2.jpg',123),(828,'improvement/123_3.jpg',123),(829,'improvement/123_4.jpg',123),(830,'improvement/123_5.jpg',123),(831,'improvement/124_1.jpg',124),(832,'improvement/124_2.jpg',124),(833,'improvement/124_3.jpg',124),(834,'improvement/124_4.jpg',124),(835,'improvement/124_5.jpg',124),(836,'improvement/125_1.jpg',125),(837,'improvement/125_2.jpg',125),(838,'improvement/125_3.jpg',125),(839,'improvement/125_4.jpg',125),(840,'improvement/125_5.jpg',125),(841,'improvement/126_1.jpg',126),(842,'improvement/126_2.jpg',126),(843,'improvement/126_3.jpg',126),(844,'improvement/126_4.jpg',126),(845,'improvement/126_5.jpg',126),(846,'improvement/127_1.jpg',127),(847,'improvement/127_2.jpg',127),(848,'improvement/127_3.jpg',127),(849,'improvement/127_4.jpg',127),(850,'improvement/127_5.jpg',127),(851,'improvement/128_1.jpg',128),(852,'improvement/128_2.jpg',128),(853,'improvement/128_3.jpg',128),(854,'improvement/128_4.jpg',128),(855,'improvement/128_5.jpg',128),(856,'improvement/129_1.jpg',129),(857,'improvement/129_2.jpg',129),(858,'improvement/129_3.jpg',129),(859,'improvement/129_4.jpg',129),(860,'improvement/129_5.jpg',129),(861,'improvement/130_1.jpg',130),(862,'improvement/130_2.jpg',130),(863,'improvement/130_3.jpg',130),(864,'improvement/130_4.jpg',130),(865,'improvement/130_5.jpg',130),(866,'improvement/131_1.jpg',131),(867,'improvement/131_2.jpg',131),(868,'improvement/131_3.jpg',131),(869,'improvement/131_4.jpg',131),(870,'improvement/131_5.jpg',131),(871,'improvement/132_1.jpg',132),(872,'improvement/132_2.jpg',132),(873,'improvement/132_3.jpg',132),(874,'improvement/132_4.jpg',132),(875,'improvement/132_5.jpg',132),(876,'improvement/133_1.jpg',133),(877,'improvement/133_2.jpg',133),(878,'improvement/133_3.jpg',133),(879,'improvement/133_4.jpg',133),(880,'improvement/133_5.jpg',133),(881,'improvement/134_1.jpg',134),(882,'improvement/134_2.jpg',134),(883,'improvement/134_3.jpg',134),(884,'improvement/134_4.jpg',134),(885,'improvement/134_5.jpg',134),(886,'improvement/135_1.jpg',135),(887,'improvement/135_2.jpg',135),(888,'improvement/135_3.jpg',135),(889,'improvement/135_4.jpg',135),(890,'improvement/135_5.jpg',135),(891,'improvement/136_1.jpg',136),(892,'improvement/136_2.jpg',136),(893,'improvement/136_3.jpg',136),(894,'improvement/136_4.jpg',136),(895,'improvement/136_5.jpg',136),(896,'improvement/137_1.jpg',137),(897,'improvement/137_2.jpg',137),(898,'improvement/137_3.jpg',137),(899,'improvement/137_4.jpg',137),(900,'improvement/137_5.jpg',137),(901,'improvement/138_1.jpg',138),(902,'improvement/138_2.jpg',138),(903,'improvement/138_3.jpg',138),(904,'improvement/138_4.jpg',138),(905,'improvement/138_5.jpg',138),(906,'improvement/139_1.jpg',139),(907,'improvement/139_2.jpg',139),(908,'improvement/139_3.jpg',139),(909,'improvement/139_4.jpg',139),(910,'improvement/139_5.jpg',139),(911,'improvement/140_1.jpg',140),(912,'improvement/140_2.jpg',140),(913,'improvement/140_3.jpg',140),(914,'improvement/140_4.jpg',140),(915,'improvement/140_5.jpg',140),(916,'improvement/141_1.jpg',141),(917,'improvement/141_2.jpg',141),(918,'improvement/141_3.jpg',141),(919,'improvement/141_4.jpg',141),(920,'improvement/141_5.jpg',141),(921,'improvement/142_1.jpg',142),(922,'improvement/142_2.jpg',142),(923,'improvement/142_3.jpg',142),(924,'improvement/142_4.jpg',142),(925,'improvement/142_5.jpg',142),(926,'improvement/143_1.jpg',143),(927,'improvement/143_2.jpg',143),(928,'improvement/143_3.jpg',143),(929,'improvement/143_4.jpg',143),(930,'improvement/143_5.jpg',143),(931,'improvement/144_1.jpg',144),(932,'improvement/144_2.jpg',144),(933,'improvement/144_3.jpg',144),(934,'improvement/144_4.jpg',144),(935,'improvement/144_5.jpg',144),(936,'improvement/145_1.jpg',145),(937,'improvement/145_2.jpg',145),(938,'improvement/145_3.jpg',145),(939,'improvement/145_4.jpg',145),(940,'improvement/145_5.jpg',145),(941,'improvement/146_1.jpg',146),(942,'improvement/146_2.jpg',146),(943,'improvement/146_3.jpg',146),(944,'improvement/146_4.jpg',146),(945,'improvement/146_5.jpg',146),(946,'improvement/147_1.jpg',147),(947,'improvement/147_2.jpg',147),(948,'improvement/147_3.jpg',147),(949,'improvement/147_4.jpg',147),(950,'improvement/147_5.jpg',147),(951,'improvement/148_1.jpg',148),(952,'improvement/148_2.jpg',148),(953,'improvement/148_3.jpg',148),(954,'improvement/148_4.jpg',148),(955,'improvement/148_5.jpg',148),(956,'improvement/149_1.jpg',149),(957,'improvement/149_2.jpg',149),(958,'improvement/149_3.jpg',149),(959,'improvement/149_4.jpg',149),(960,'improvement/149_5.jpg',149),(961,'improvement/150_1.jpg',150),(962,'improvement/150_2.jpg',150),(963,'improvement/150_3.jpg',150),(964,'improvement/150_4.jpg',150),(965,'improvement/150_5.jpg',150),(966,'Home&Garden/201_1.jpg',151),(967,'Home&Garden/201_2.jpg',151),(968,'Home&Garden/201_3.jpg',151),(969,'Home&Garden/201_4.jpg',151),(970,'Home&Garden/201_5.jpg',151),(971,'Home&Garden/202_1.jpg',152),(972,'Home&Garden/202_2.jpg',152),(973,'Home&Garden/202_3.jpg',152),(974,'Home&Garden/202_4.jpg',152),(975,'Home&Garden/202_5.jpg',152),(976,'Home&Garden/203_1.jpg',153),(977,'Home&Garden/203_2.jpg',153),(978,'Home&Garden/203_3.jpg',153),(979,'Home&Garden/203_4.jpg',153),(980,'Home&Garden/203_5.jpg',153),(981,'Home&Garden/204_1.jpg',154),(982,'Home&Garden/204_2.jpg',154),(983,'Home&Garden/204_3.jpg',154),(984,'Home&Garden/204_4.jpg',154),(985,'Home&Garden/204_5.jpg',154),(986,'Home&Garden/205_1.jpg',155),(987,'Home&Garden/205_2.jpg',155),(988,'Home&Garden/205_3.jpg',155),(989,'Home&Garden/205_4.jpg',155),(990,'Home&Garden/205_5.jpg',155),(991,'Home&Garden/206_1.jpg',156),(992,'Home&Garden/206_2.jpg',156),(993,'Home&Garden/206_3.jpg',156),(994,'Home&Garden/206_4.jpg',156),(995,'Home&Garden/206_5.jpg',156),(996,'Home&Garden/207_1.jpg',157),(997,'Home&Garden/207_2.jpg',157),(998,'Home&Garden/207_3.jpg',157),(999,'Home&Garden/207_4.jpg',157),(1000,'Home&Garden/207_5.jpg',157),(1001,'Home&Garden/208_1.jpg',158),(1002,'Home&Garden/208_2.jpg',158),(1003,'Home&Garden/208_3.jpg',158),(1004,'Home&Garden/208_4.jpg',158),(1005,'Home&Garden/208_5.jpg',158),(1006,'Home&Garden/209_1.jpg',159),(1007,'Home&Garden/209_2.jpg',159),(1008,'Home&Garden/209_3.jpg',159),(1009,'Home&Garden/209_4.jpg',159),(1010,'Home&Garden/209_5.jpg',159),(1011,'Home&Garden/210_1.jpg',160),(1012,'Home&Garden/210_2.jpg',160),(1013,'Home&Garden/210_3.jpg',160),(1014,'Home&Garden/210_4.jpg',160),(1015,'Home&Garden/210_5.jpg',160),(1016,'Home&Garden/211_1.jpg',161),(1017,'Home&Garden/211_2.jpg',161),(1018,'Home&Garden/211_3.jpg',161),(1019,'Home&Garden/211_4.jpg',161),(1020,'Home&Garden/211_5.jpg',161),(1021,'Home&Garden/212_1.jpg',162),(1022,'Home&Garden/212_2.jpg',162),(1023,'Home&Garden/212_3.jpg',162),(1024,'Home&Garden/212_4.jpg',162),(1025,'Home&Garden/212_5.jpg',162),(1026,'Home&Garden/213_1.jpg',163),(1027,'Home&Garden/213_2.jpg',163),(1028,'Home&Garden/213_3.jpg',163),(1029,'Home&Garden/213_4.jpg',163),(1030,'Home&Garden/213_5.jpg',163),(1031,'Home&Garden/214_1.jpg',164),(1032,'Home&Garden/214_2.jpg',164),(1033,'Home&Garden/214_3.jpg',164),(1034,'Home&Garden/214_4.jpg',164),(1035,'Home&Garden/214_5.jpg',164),(1036,'Home&Garden/215_1.jpg',165),(1037,'Home&Garden/215_2.jpg',165),(1038,'Home&Garden/215_3.jpg',165),(1039,'Home&Garden/215_4.jpg',165),(1040,'Home&Garden/215_5.jpg',165),(1041,'Home&Garden/216_1.jpg',166),(1042,'Home&Garden/216_2.jpg',166),(1043,'Home&Garden/216_3.jpg',166),(1044,'Home&Garden/216_4.jpg',166),(1045,'Home&Garden/216_5.jpg',166),(1046,'Home&Garden/217_1.jpg',167),(1047,'Home&Garden/217_2.jpg',167),(1048,'Home&Garden/217_3.jpg',167),(1049,'Home&Garden/217_4.jpg',167),(1050,'Home&Garden/217_5.jpg',167),(1051,'Home&Garden/218_1.jpg',168),(1052,'Home&Garden/218_2.jpg',168),(1053,'Home&Garden/218_3.jpg',168),(1054,'Home&Garden/218_4.jpg',168),(1055,'Home&Garden/218_5.jpg',168),(1056,'Home&Garden/219_1.jpg',169),(1057,'Home&Garden/219_2.jpg',169),(1058,'Home&Garden/219_3.jpg',169),(1059,'Home&Garden/219_4.jpg',169),(1060,'Home&Garden/219_5.jpg',169),(1061,'Home&Garden/220_1.jpg',170),(1062,'Home&Garden/220_2.jpg',170),(1063,'Home&Garden/220_3.jpg',170),(1064,'Home&Garden/220_4.jpg',170),(1065,'Home&Garden/220_5.jpg',170),(1066,'Home&Garden/221_1.jpg',171),(1067,'Home&Garden/221_2.jpg',171),(1068,'Home&Garden/221_3.jpg',171),(1069,'Home&Garden/221_4.jpg',171),(1070,'Home&Garden/221_5.jpg',171),(1071,'Home&Garden/222_1.jpg',172),(1072,'Home&Garden/222_2.jpg',172),(1073,'Home&Garden/222_3.jpg',172),(1074,'Home&Garden/222_4.jpg',172),(1075,'Home&Garden/222_5.jpg',172),(1076,'Home&Garden/223_1.jpg',173),(1077,'Home&Garden/223_2.jpg',173),(1078,'Home&Garden/223_3.jpg',173),(1079,'Home&Garden/223_4.jpg',173),(1080,'Home&Garden/223_5.jpg',173),(1081,'Home&Garden/224_1.jpg',174),(1082,'Home&Garden/224_2.jpg',174),(1083,'Home&Garden/224_3.jpg',174),(1084,'Home&Garden/224_4.jpg',174),(1085,'Home&Garden/224_5.jpg',174),(1086,'Home&Garden/225_1.jpg',175),(1087,'Home&Garden/225_2.jpg',175),(1088,'Home&Garden/225_3.jpg',175),(1089,'Home&Garden/225_4.jpg',175),(1090,'Home&Garden/225_5.jpg',175),(1091,'Home&Garden/226_1.jpg',176),(1092,'Home&Garden/226_2.jpg',176),(1093,'Home&Garden/226_3.jpg',176),(1094,'Home&Garden/226_4.jpg',176),(1095,'Home&Garden/226_5.jpg',176),(1096,'Home&Garden/227_1.jpg',177),(1097,'Home&Garden/227_2.jpg',177),(1098,'Home&Garden/227_3.jpg',177),(1099,'Home&Garden/227_4.jpg',177),(1100,'Home&Garden/227_5.jpg',177),(1101,'Home&Garden/228_1.jpg',178),(1102,'Home&Garden/228_2.jpg',178),(1103,'Home&Garden/228_3.jpg',178),(1104,'Home&Garden/228_4.jpg',178),(1105,'Home&Garden/228_5.jpg',178),(1106,'Home&Garden/229_1.jpg',179),(1107,'Home&Garden/229_2.jpg',179),(1108,'Home&Garden/229_3.jpg',179),(1109,'Home&Garden/229_4.jpg',179),(1110,'Home&Garden/229_5.jpg',179),(1111,'Home&Garden/230_1.jpg',180),(1112,'Home&Garden/230_2.jpg',180),(1113,'Home&Garden/230_3.jpg',180),(1114,'Home&Garden/230_4.jpg',180),(1115,'Home&Garden/230_5.jpg',180),(1116,'Home&Garden/231_1.jpg',181),(1117,'Home&Garden/231_2.jpg',181),(1118,'Home&Garden/231_3.jpg',181),(1119,'Home&Garden/231_4.jpg',181),(1120,'Home&Garden/231_5.jpg',181),(1121,'Home&Garden/232_1.jpg',182),(1122,'Home&Garden/232_2.jpg',182),(1123,'Home&Garden/232_3.jpg',182),(1124,'Home&Garden/232_4.jpg',182),(1125,'Home&Garden/232_5.jpg',182),(1126,'Home&Garden/233_1.jpg',183),(1127,'Home&Garden/233_2.jpg',183),(1128,'Home&Garden/233_3.jpg',183),(1129,'Home&Garden/233_4.jpg',183),(1130,'Home&Garden/233_5.jpg',183),(1131,'Home&Garden/234_1.jpg',184),(1132,'Home&Garden/234_2.jpg',184),(1133,'Home&Garden/234_3.jpg',184),(1134,'Home&Garden/234_4.jpg',184),(1135,'Home&Garden/234_5.jpg',184),(1136,'Home&Garden/235_1.jpg',185),(1137,'Home&Garden/235_2.jpg',185),(1138,'Home&Garden/235_3.jpg',185),(1139,'Home&Garden/235_4.jpg',185),(1140,'Home&Garden/235_5.jpg',185),(1141,'Home&Garden/236_1.jpg',186),(1142,'Home&Garden/236_2.jpg',186),(1143,'Home&Garden/236_3.jpg',186),(1144,'Home&Garden/236_4.jpg',186),(1145,'Home&Garden/236_5.jpg',186),(1146,'Home&Garden/237_1.jpg',187),(1147,'Home&Garden/237_2.jpg',187),(1148,'Home&Garden/237_3.jpg',187),(1149,'Home&Garden/237_4.jpg',187),(1150,'Home&Garden/237_5.jpg',187),(1151,'Home&Garden/238_1.jpg',188),(1152,'Home&Garden/238_2.jpg',188),(1153,'Home&Garden/238_3.jpg',188),(1154,'Home&Garden/238_4.jpg',188),(1155,'Home&Garden/238_5.jpg',188),(1156,'Home&Garden/239_1.jpg',189),(1157,'Home&Garden/239_2.jpg',189),(1158,'Home&Garden/239_3.jpg',189),(1159,'Home&Garden/239_4.jpg',189),(1160,'Home&Garden/239_5.jpg',189),(1161,'Home&Garden/240_1.jpg',190),(1162,'Home&Garden/240_2.jpg',190),(1163,'Home&Garden/240_3.jpg',190),(1164,'Home&Garden/240_4.jpg',190),(1165,'Home&Garden/240_5.jpg',190);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_image` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` double NOT NULL,
  `quantity` int NOT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK13v4xci299ufu9jvrew459yl9` (`order_id`),
  KEY `FKb8bg2bkty0oksa3wiq5mp5qnc` (`product_id`),
  CONSTRAINT `FK13v4xci299ufu9jvrew459yl9` FOREIGN KEY (`order_id`) REFERENCES `order_tbl` (`id`),
  CONSTRAINT `FKb8bg2bkty0oksa3wiq5mp5qnc` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_tbl`
--

DROP TABLE IF EXISTS `order_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `total_price` double NOT NULL,
  `account_id` int DEFAULT NULL,
  `shipping_id` bigint DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1pbwvuq545ychrqxj7kjhonts` (`account_id`),
  KEY `FK8pt2197kqcyjae8frk8fcw4el` (`shipping_id`),
  KEY `FK3otn2vlgwxauaskrb7v3aeuxk` (`status_id`),
  CONSTRAINT `FK1pbwvuq545ychrqxj7kjhonts` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `FK3otn2vlgwxauaskrb7v3aeuxk` FOREIGN KEY (`status_id`) REFERENCES `status_order` (`id`),
  CONSTRAINT `FK8pt2197kqcyjae8frk8fcw4el` FOREIGN KEY (`shipping_id`) REFERENCES `shipping` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_tbl`
--

LOCK TABLES `order_tbl` WRITE;
/*!40000 ALTER TABLE `order_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  `status_id` int DEFAULT NULL,
  `sub_category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfn5bxb3t7aubd466pn0a0jgau` (`status_id`),
  KEY `FKd9gfnsjgfwjtaxl57udrbocsp` (`sub_category_id`),
  CONSTRAINT `FKd9gfnsjgfwjtaxl57udrbocsp` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_category` (`id`),
  CONSTRAINT `FKfn5bxb3t7aubd466pn0a0jgau` FOREIGN KEY (`status_id`) REFERENCES `status_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'HW-01','2019-09-10','86pcs M3-M8 Hand Riveter Nut Rivet Gun Kit Threaded Nut Rive Tool with Rivnut Nutsert Riveting Kit for Household Repair Tools','tools/1_0.jpg','Repair Tool',16.61,10,3,1),(2,'HW-02','2019-10-09','Outside Micrometer 0-25mm/0.01mm Gauge Vernier Caliper Gauge Meter Micrometer Carbon Steel Measure Tools','tools/2_0.jpg','Measure Tools',9.27,10,2,1),(3,'HW-03','2019-10-09','5/6mm Multi-use Screwdriver Security Insulated Screwdrivers Repair Hand Tools Screwdriver Set Electrician Manual Screw Driver','tools/3_0.jpg','Manual Screw',8.6,10,1,1),(4,'HW-04','2019-10-09','\"9pcs/Set Multifunction Paint Roller Tray Sponge Pads Handles Tubes Kits Home DIY Wall Painting Brush Decorative Tools Dropship','tools/4_0.jpg','Painting Brush',5.93,10,1,1),(5,'HW-05','2019-10-09','Automatic Stripping Pliers Rotary Coaxial Wire Cable Stripper Knife Wire Stripping Crimping Pliers RG59 RG6 RG7 RG11 Repair Tool','tools/5_0.jpg','Hiro Crimping Pliers',15.36,10,3,1),(6,'HW-06','2019-10-09','8\" Electrical Cable Stripper Wire Stripper Cable Cutter Multi Tool Wire Cutting Scissor Stripping Pliers 9-14mm Hand Tools Kit','tools/6_0.jpg','Stripping Pliers',12.42,10,2,1),(7,'HW-07','2019-10-09','5pcs 50mm Electric Screwdrivers Bits Magnetic U-shaped Screwdriver Bits S2 Alloy Steel Triangular Screw Driver Bit Hand Tool Set','tools/7_0.jpg','Steel Triangular',9.14,10,3,1),(8,'HW-08','2019-10-09','1pc Precision Screwdriver Set Y Tip Tri-wing Screwdriver Attachments Repair Tool for Game Cube Game Toy Nintendo Wii DS Lite','tools/8_0.jpg','Game Cube',9.25,10,2,1),(9,'HW-09','2019-10-09','1pc 65mm Saw Blades HCS Metal Oscillating Multi Tools for Metal Wood Cutting Saw DIY Renovator Tool','tools/9_0.jpg','Cutting Saw',3.46,12,1,1),(10,'HW-010','2019-10-18','2pcs/Set Decorative Paint Sponges Replacement Paint Roller Tray Set Paint Pad Painting Brush Point Paint Sponges Household DIY','tools/10_0.jpg','Brush Point Paint',18.06,12,2,1),(11,'HW-011','2019-10-18','High Pressure Power Washer Car Wash Spray Nozzle Water Hose Auto Water Gun Car Lawn Floor Cleaning Irrigation Tool Dropshipping','tools/11_0.jpg','Nozzle Water',14.15,13,2,1),(12,'HW-012','2019-10-18','4Pcs Plastic Car Disassembly Interior Kit Audio Removal Trim Panel Dashboard Car DVD Player Auto Trim Removal Tool','tools/12_0.jpg','Plastic Car',12.81,13,1,1),(13,'HW-013','2019-10-18','Disassembly Heavy Duty Suction Cup Car Dent Remover Puller Phone Repair Tool for iPhone LCD Screen Opening Tools Glass Lifter','tools/13_0.jpg','Screen Opening',12.07,14,2,1),(14,'HW-014','2019-10-18','3pcs Practical Mini Spade Shovel Gardening Tools Children Harrow Shovel Rake Plant Maintenance Wooden Handle Garden Tool Set','tools/14_0.jpg','Mini Spade Shovel',12.34,14,2,1),(15,'HW-015','2019-10-18','Suction Cup Screen Separating Pliers LCD Separator Opening Tools Mobile Phone Repair Tools Pliers','tools/15_0.jpg','Separating Pliers',8.96,14,2,1),(16,'HW-016','2019-10-18','15mm Plasterboard Gypsum Board Wood Planer Edge Jig Plane Woodworking Tool','tools/16_0.jpg','Plasterboard Gypsum',6.9,14,2,1),(17,'HW-017','2019-10-18','Useful Cocktail Muddler Barware Mojito Cocktail Stainless Steel Bar Mixer DIY Drink Fruit Muddler Crushed Ice Barware Bar Tool','tools/17_0.jpg','Cocktail Muddler',14.33,14,2,1),(18,'HW-018','2019-10-18','9/12/13/16pcs Household Repair Hand Tool Kit Screwdriver+Knife+Wire Pliers+Toolbox+Digital Pen with Plastic Toolbox Storage Case','tools/18_0.jpg','Toolbox+Digital',6.59,14,1,1),(19,'HW-019','2019-10-18','28*33*18mm Deburring External Chamfer Tool Stainless Steel Metal Remove Burr Repairs Tools for Chuck Drills Bit','tools/19_0.jpg','Stainless Steel',10.36,14,2,1),(20,'HW-020','2019-10-18','2pcs 1/4\"Extension Drill Guide Rod Hex Bit Drill Holder Telescoping Bit Mini Handy Magnetic Screwdriver Bit','tools/20_0.jpg','Screwdriver Bit',9.59,14,1,1),(21,'HW-021','2019-10-18','35pcs 1/4in Handle Wood Router Bit Mill Engraving Trim Woodworking Milling Cutter Trimmer Adapter Machine Tools Set Router Bits','tools/21_0.jpg','Wood Router',15.38,14,1,2),(22,'HW-022','2019-10-18','10pcs Clamp Greenhouse Frame Pipe Tube and Film Clip Clamp Connector Kits 19 22 25mm Smooth Tenacious Pipe Clamp Garden Access','tools/22_0.jpg','Frame Pipe',6.68,14,1,2),(23,'HW-023','2019-10-18','100M LCD Cutting Wire 0.10mm Gold Molybdenum Cutting Wire Line Splitter LCD Glass Cutting Line for Cell Phones Screen Separator','tools/23_0.jpg','Gold Molybdenum',19,14,3,2),(24,'HW-024','2019-10-18','Multi-function Canvas Waterproof Storage Hand Tool Bag Portable Tool kit Wrenches Screwdrivers Pliers Metal Parts Storage Bag','tools/24_0.jpg','Tool Bag',14.92,14,2,2),(25,'HW-025','2019-10-18','20m 10mm Copper Foil Stained Glass Foil Tape for EMI Shielding Slug Repellent Electrical Repair Waterproof Single Conductive','tools/25_0.jpg','Glass Foil',10.37,14,3,2),(26,'HW-026','2019-10-18','1/4in T-type Wood Router Bit Mill Engraving Trimmer Adapter Milling Cutter Woodworking Tool','tools/26_0.jpg','Wood Router',8.84,14,3,2),(27,'HW-027','2019-10-18','2 in 1 Plus Minus Magnetizer Degaussing Demagnetizer Magnetic Pick Up Tool for Screwdriver Tips Screw Bit','tools/27_0.jpg','Pick Up Tool',6.36,14,3,2),(28,'HW-028','2019-10-18','100mm HCS Segment Saw Blade Multi Tools For Multimaster Fein Dremel Renovator Power Tool for Woodworking Metal Cutting','tools/28_0.jpg','Saw Blade',9.6,14,1,2),(29,'HW-029','2019-10-18','Universal Multi Keyless Chuck Mini Drill Chuck Keyless Per Drill Rotary Tool Grinder 0.3-3.2mm','tools/29_0.jpg','Chuck Mini Drill',19.62,14,3,2),(30,'HW-030','2019-10-18','0.02mm/120m Tinned Copper Wire PCB Maintenance Link Wire Jump Line for Mobile Phone Repair Tools Insulated/Non-insulated','tools/30_0.jpg','Tinned Copper Wire',19.06,14,1,2),(31,'HW-031','2019-10-18','8pcs Dowel Centre Point Pin Set 6/8/10/12mm Dowel Tenon Center Set Solid/Hollow Woodworking Transfer Tools','tools/31_0.jpg','Dowel Tenon',10.21,14,2,2),(32,'HW-032','2019-10-18','mm Spacing Leather Hole Punches DIY Handmade Round Stitching Punch Tools Hole Cutter Leather Punching Tool 2/4/6/Hole','tools/32_0.jpg','Stitching Punch',12.04,14,2,2),(33,'HW-033','2019-10-18','Stainless Steel Socket Extending Rod Golden Keychain Extension Bar for Screwdriver Bits','tools/33_0.jpg','Steel Socket',7.51,14,3,2),(34,'HW-034','2019-10-18','Universal Multi Keyless Chuck Mini Drill Chuck Keyless Per Drill Rotary Tool Grinder 0.3-3.2mm','tools/34_0.jpg','Keyless Chuck',3.34,14,2,2),(35,'HW-035','2019-10-18','100mm Diamond Coated Glass Grinding Cutter Saw Blade Wheel Disc Rotary Tool for Marble Granite Glass','tools/35_0.jpg','Diamond Coated Glass',10.74,14,2,2),(36,'HW-036','2019-10-18','80cm 1 Pair Universal Multi Meters Tester Lead Probe Wire Pen 1000V 10A for Multimeter Meter Needle Tip Probe Test Leads Pin','tools/36_0.jpg','Pair Universal',8.93,14,2,2),(37,'HW-037','2019-10-18','295mm 1/4 Flexible Shaft Electronic Drill Bits Extension Screwdriver Bit Holder Connect Link Hex Shank Extension Snake Bit Tool','tools/37_0.jpg','Drill Bits',10.23,14,1,2),(38,'HW-038','2019-10-18','13pcs HSS Metric System Durable Titanium Quick Change Twist Drill Bits Set Tools Mini Electric Twist Drill Bit Tools With Case','tools/38_0.jpg','Twist Drill Bits',17.95,14,2,2),(39,'HW-039','2019-10-18','100mm HCS Segment Saw Blade Multi Tools For Multimaster Fein Dremel Renovator Power Tool for Woodworking Metal Cutting','tools/39_0.jpg','Saw Blade',14.36,14,2,2),(40,'HW-040','2019-10-18','2/3/4/5/6mm 3M Scotch Double Sided Tape Sticky for Mobile Phone Repaired Acrylic Glue White Tape Repair Tools','tools/40_0.jpg','Scotch Double Sided',11.98,14,1,2),(41,'HW-041','2019-10-18','Hole Cutter 4-12mm Cone Step Drill Hole Tools Countersink Drill Bit Power Tools Step Drill Bit for Metal Tools Set','tools/41_0.jpg','Drill Hole',9.94,14,3,3),(42,'HW-042','2019-10-18','900M Soldering Tips Pure Copper Lead-free Screwdriver Soldering Iron Tips Electric Iron Head Soldering Station Welding Equipment','tools/42_0.jpg','Soldering Iron',16.95,14,3,3),(43,'HW-043','2019-10-18','1pc 0.3-6.5mm/0.3-8mm Clamping Range Keyless Drill Chuck Adapter Impact Hex Shank Driver Tool Accessories for Rotary Power Tool','tools/43_0.jpg','Keyless Drill',20.11,14,2,3),(44,'HW-044','2019-10-18','8pcs Soldering Iron 850 Hot Air Gun Nozzle Welding Nozzles Heat Resistant Aluminum Alloy 3/4/5/6/7/8/10/12 mm','tools/44_0.jpg','Hot Air Gun',3.39,14,1,3),(45,'HW-045','2019-10-18','5pcs Masonry Drill Bits Tungsten Carbide Tipped Concrete Drilling Set Size 5/6/8/10/12mm Power Tool Accessories','tools/45_0.jpg','Concrete Drilling',17.49,14,3,3),(46,'HW-046','2019-10-18','Car High Pressure Power Water Gun Airbrush Washer Water Jet Garden Water Hose Wand Nozzle Spray Sprinkler Cleaning Tool Dropship','tools/46_0.jpg','Washer Water',10.54,14,2,3),(47,'HW-047','2019-10-18','5Pcs PH2 Single Head Magnetic Screwdriver Bit Anti-Slip Hex S2 PH2 Electric Screw Driver Set For Power Tools','tools/47_0.jpg','Anti-Slip Hex S2',7.78,14,2,3),(48,'HW-048','2019-10-18','Nibble Metal Cutting Double Head Metal Plate Cutting Nibbler Sheet Saw Cutter Tools Drill Attachment Free Cutting Tool Cutter','tools/48_0.jpg','Head Metal Plate',11.41,14,2,3),(49,'HW-049','2019-10-18','3pcs/set Power Scrubber Brush Drill Brush Clean for Bathroom Surfaces Tub Shower Tile Grout Cordless Power Scrub Cleaning Tools','tools/49_0.jpg','Scrubber Brush Drill',6.06,14,1,3),(50,'HW-050','2019-10-18','Professional 0.8MM/1.0MM Nozzle H-2000 Mini Air Paint Spray Gun Airbrush HVLP Spray Gun for Painting Car Aerograph Airbrush','tools/50_0.jpg','Gun Airbrush',12.58,14,1,3),(51,'HW-051','2019-10-27','10W Electric USB Soldering Iron Pen DC5V Soldering Tip LED Indicator Touch Switch Metal Stand Welding Equipment','tools/51_0.jpg','Electric USB Soldering',19.6,14,3,3),(52,'HW-052','2019-10-27','Car Washer DC 12V Electric Pump Portable Car Shower Washer Set Camping Shower Outdoor Camping Travel Pet Dog Man Woman','tools/52_0.jpg','Car Washer DC',18.01,14,2,3),(53,'HW-053','2019-10-27','NI-CD18V2.0Ah Power Tools Battery Pack 18V Power Tools Lithium Batteries','tools/53_0.jpg','Lithium Batteries',23.63,14,2,3),(54,'HW-054','2019-10-27','Mini Air Paint HVLP Spray Gun Gravity Feed Vehicle Car Paint Airbrush Pro Cake Spraying Gun Professional Air Paint Spray Gun','tools/54_0.jpg','Paint Airbrush Pro',13.9,14,2,3),(55,'HW-055','2019-10-27','200ml Electric Painting Spray Gun Handheld Sprayer Painter Cake Chocolate Painting Sprayer Gun Adjustable Latex Paint Spray Gun','tools/55_0.jpg','Spray Gun',27.25,14,1,3),(56,'HW-056','2019-10-27','\"Household Portable Reciprocating Saw Metal Cutting Wood Cutting Tool Electric Drill Attachment Power Tool Accessories','tools/56_0.jpg','Tool Electric',11.04,14,3,3),(57,'HW-057','2019-10-27','Bench Vise Table Screw Vise Bench Clamp Screw Vise for Metalworking Electric Drill Clamp Grinder Holder Bracket Repair Tools','tools/57_0.jpg','Bench Vise',20.95,14,2,3),(58,'HW-058','2019-10-27','12V Home Mini Power Driver Cordless Drill Rechargeable Electric Screwdriver Wireless Power Driver DC Lithium-Ion Battery','tools/58_0.jpg','Mini Power Driver',4.27,14,2,3),(59,'HW-059','2019-10-27','Mini Wireless Power Driver Cordless Drill Rechargeable Electric Screwdriver Lithium-Ion Battery Operated Rechargeable Power Tool','tools/59_0.jpg','Cordless Drill',22.92,14,2,3),(60,'HW-060','2019-10-27','Lawn Mower Trimmer Head Chain Brushcutter for Garden Grass Brush Cutter Tools Parts Gardening Tools Trimmer Head Chain','tools/60_0.jpg','Chain Brushcutter',17,14,3,3),(61,'HW-061','2019-11-01','LED Mirror Alarm Clock Digital Snooze Table Clock Wake Up Light Electronic Large Time Temperature Display Home Decoration Clock','Measurements/61_0.jpg','Mirror Alarm Clock',27.63,20,2,4),(62,'HW-062','2019-11-01','Digital LCD Thermometer Hygrometer Electronic Temperature Humidity Meter Tester High Quality Hygrometer Household Thermometer','Measurements/62_0.jpg','LCD Thermometer',17.33,20,3,4),(63,'HW-063','2019-11-01','DC12V Digital Temperature Controller LED Display Thermostat NTC Thermometer','Measurements/63_0.jpg','Digital Temperature',12.83,20,3,4),(64,'HW-064','2019-11-01','Mini Digital Refrigerator LCD Probe Fridge Freezer Thermometer Temperature Sensor Thermograph Meter Fridge Thermometer','Measurements/64_0.jpg','Fridge Thermometer',21.6,20,2,4),(65,'HW-065','2019-11-01','Glasstube Aquariums Submersible Thermometer Temperature Decor Suction Cup','Measurements/65_0.jpg','Submersible Thermometer',29.81,20,3,4),(66,'HW-066','2019-11-01','Multifunction Thermometer Hygrometer Automatic Electronic Temperature Sensor Humidity Monitor Clock 3.2inch Large LCD Screen','Measurements/66_0.jpg','Multifunction',28.57,20,1,4),(67,'HW-067','2019-11-01','DC 12V 24V 220V Digital Temperature Controller 10A Thermostat Control Switch with Probe Sensor Thermometer Thermo Controller','Measurements/67_0.jpg','DC 12V 24V 220V',14.17,20,3,4),(68,'HW-068','2019-11-01','-50~125C LED Temperature Meter Detector Sensor Probe DC4-28V High-precision Dual-display Digital Car Thermometer Monitor Tester','Measurements/68_0.jpg','125C LED Temperature',25.6,20,2,4),(69,'HW-069','2019-11-01','Swimming Pools Thermometer Water Portable Water Sauna Digital Floating Thermometers Floating Temperature Measure Instruments','Measurements/69_0.jpg','Pools Thermometer',4.71,20,2,4),(70,'HW-070','2019-11-01','Digital Temperature Humidity Sensor Module Tester High Precision sensor AM2320B IIC Double Output with Shell Sensor','Measurements/70_0.jpg','Temperature Humidity',21.26,20,2,4),(71,'HW-071','2019-11-01','Floating Pool Outdoor Swimming Pool Water Special Thermometer Pond Water Temperature Tester Analysis Instruments','Measurements/71_0.jpg','Water Special Thermometer',26,20,2,4),(72,'HW-072','2019-11-01','Digital LCD Thermometer Hygrometer Electronic Temperature Humidity Meter Tester High Quality Hygrometer Household Thermometer','Measurements/72_0.jpg','Humidity Meter',17.4,20,1,4),(73,'HW-073','2019-11-01','Electronic Digital LCD Display Temperature Humidity Meter ABS Button Battery Weather Graphic Display Sensor Thermometer','Measurements/73_0.jpg','Digital LCD Display',29.39,20,3,4),(74,'HW-074','2019-11-01','8 in 1 Gas Monitor PM2.5/HCHO/TVOC/AQI Temperature Humidity Meter Thermometer Hygrometer Gas Detector Analyzer','Measurements/74_0.jpg','Gas Monitor',22.99,20,3,4),(75,'HW-075','2019-11-01','2 in 1 Car Auto Voltmeter Dual Display LED Digital Thermometer Voltmeter Electrical Voltage Temperature Meter Tester 3 Colors','Measurements/75_0.jpg','Car Auto Voltmeter',30.88,20,2,4),(76,'HW-076','2019-11-01','LCD Digital Temperature Humidity Meter Digital Data Hold Humidity Temperature Meter Indoor Outdoor Thermometer Thermo-Hygrometer','Measurements/76_0.jpg','Indoor Outdoor Thermometer',24.38,20,1,4),(77,'HW-077','2019-11-01','ANENG LCD Backlight Digital Multimeter AC/DC Ammeter Voltmeter Temperature Meter Automatic Multimeter Voltage/Current/Resistance','Measurements/77_0.jpg','ANENG LCD',20.2,20,3,4),(78,'HW-078','2019-11-01','W3230 DC12V 20A Digital Thermostat Digital Temperature Regulator Controller Data Save Red and Blue Display -55-120 Degree','Measurements/78_0.jpg','W3230 DC12V 20A',13.45,20,3,4),(79,'HW-079','2019-11-01','Electric Indoor Room Floor Heating Thermostat Temperature Controller Cool Warm Regulator 220V 1A Dial Temperature Controller','Measurements/79_0.jpg','Indoor Room Floor',28.13,20,3,4),(80,'HW-080','2019-11-01','DT8230 Mini Digital Pen Temperature Testers Digital LCD Mini Infrared Thermometer Temperature Meter Testers','Measurements/80_0.jpg','Pen Temperature Testers',31.18,20,3,4),(81,'HW-081','2019-11-03','600M/900M Monocular Telescope Laser Rangefinder Hunting Outdoor Sports Golf Range Finder Distance Meter Laser Measurement Tools','Measurements/81_0.jpg','Monocular Telescope',20.87,10,1,5),(82,'HW-082','2019-11-03','10pcs/Set 3X Transparent Magnifier Credit Card Shape Magnifiers Plastic Magnifying Fresnel Lens for Reading Newspaper Book','Measurements/82_0.jpg','Fresnel Lens',14.26,10,2,5),(83,'HW-083','2019-11-03','4pcs 60inch 150cm Tape Measure Sewing Tools Portable Body Measuring Tape Tailor Ruler Soft Ruler','Measurements/83_0.jpg','Measure Sewing',17.54,10,2,5),(84,'HW-084','2019-11-03','200mm Digital Protractor Ruler Inclinometer Goniometer Level Measuring Tool Electronic Angle Gauge Stainless Steel Angle Ruler','Measurements/84_0.jpg','Ruler Inclinometer',12.58,10,1,5),(85,'HW-085','2019-11-03','7inch Aluminum Speed Square Triangle Angle Protractor Ruler Measuring Tool Multi-functional Engineering Supplies Dropshipping','Measurements/85_0.jpg','Protractor Ruler',19.53,10,2,5),(86,'HW-086','2019-11-03','Portable 20 x 21mm Jewelry Magnifying Glass 20X Folding Magnifier Loupe for Jewelry Coins Stamps Antiques','Measurements/86_0.jpg','Magnifier Loupe',26.59,10,3,5),(87,'HW-087','2019-11-03','2pcs Woodworking Right Angle Ruler Locator Positioning Block Fixed Carpentry Clamp Tool Right Angle Assist Angle Measuring Tools','Measurements/87_0.jpg','Ruler Locator',24.02,10,2,5),(88,'HW-088','2019-11-03','10X Magnifying Glass Folding Magnifier Handheld Glass Lens Plastic Portable Keychain Loupe Optical Instruments','Measurements/88_0.jpg','Portable Keychain',16.12,10,1,5),(89,'HW-089','2019-11-03','150cm Sewing Tape Measure Retractable Ruler Portable Body Measuring Tape for Shopping Sewing Tool Tape Children Height Ruler','Measurements/89_0.jpg','Tape Measure',14.39,10,3,5),(90,'HW-090','2019-11-03','Stainless Steel Metal Straight Ruler Precision Double Sided Measuring Tool','Measurements/90_0.jpg','Straight Ruler',25.18,10,2,5),(91,'HW-091','2019-11-03','Multi-Ruler 360 Degree Goniometer Angle Medical Spinal Ruler Protractor Grinded PVC Ruler Measuring Accessories','Measurements/91_0.jpg','Multi-Ruler 360',9.91,10,3,5),(92,'HW-092','2019-11-04','Stainless Steel 180 Degree Protractor Angle Ruler Round Head Digital Angle Finder Rotary Measuring Tools','Measurements/92_0.jpg','180 Degree',23.01,10,1,5),(93,'HW-093','2019-11-04','Slope Inclinometer Angle Finder Measuring Slope Protractor with Magnetic Base Measuring Gauging Tools','Measurements/93_0.jpg','Slope Inclinometer',7.25,10,1,5),(94,'HW-094','2019-11-04','Drill Bit Deburring External Chamfer Tool Stainless Steel Metal Remove Burr Tools for all kinds of Chuck Drills Dropshiping','Measurements/94_0.jpg','Chuck Drills',29.65,10,2,5),(95,'HW-095','2019-11-04','5pcs Money Marker Portable Useful Banknotes Money Tester Detector Pen Counterfeit Marker Fake Notes','Measurements/95_0.jpg','Money Marker',11.24,10,2,5),(96,'HW-096','2019-11-04','1-4 pcs 20/30 LED Solar Light Solar PIR Motion Sensor Lamp Waterproof Outdoor Garden Pathway Yard Emergency Security Wall Light','Measurements/96_0.jpg','LED Solar Light',19.47,10,1,5),(97,'HW-097','2019-11-04','Aluminum Alloy Angle Gauge Ruler Protractor Inclinometer Woodwork Measuring Tool Durable Auxiliary Scribing Tool 92x49x4mm','Measurements/97_0.jpg','Alloy Angle',6.7,10,3,5),(98,'HW-098','2019-11-04','200mm 90 Degree Right Angle Ruler Gauge Holder Woodworking Protractor Engineers Wood Measuring Tool Try Square Measuring Tool','Measurements/98_0.jpg','90 Degree Right',25.24,10,1,5),(99,'HW-099','2019-11-04','PT1005 10A Universal Probe Test Leads for Multimeter with Alligator Pliers Multi Meter Tester Lead Probe Wire Pen Cable Tools','Measurements/99_0.jpg','Wire Pen Cable',19.05,10,2,5),(100,'HW-100','2019-11-04','1Pcs Mini Stitch Marker And Row Finger Counter LCD Electronic Digital Tally Counter For Sewing Knitting weave Tool','Measurements/100_0.jpg','Counter LCD',12.71,10,2,5),(101,'HW-101','2019-11-08','Bathroom Water Stopper Flood Barrier Rubber Dam Silicon Water Blocker Dry and Wet Separation Home Improve Supplies','improvement/101_0.jpg','Water Stopper',11.73,10,2,7),(102,'HW-102','2019-11-08','Cartoon Toothbrush Holder with Holes Toothbrush Bracket Container Tooth Shape Bathroom Shelf Bathroom Products','improvement/102_0.jpg','Toothbrush Holder',28.55,10,2,7),(103,'HW-103','2019-11-08','High Pressure Bathroom Shower Head Handheld Water Saving Hand Shower Head Filter Sprayer Head Bathroom Shower Holder','improvement/103_0.jpg','Bathroom Shower',25.55,10,1,7),(104,'HW-104','2019-11-08','4/6in ABS Plastic Shower Head Hand Held Adjustable 2 Mode Handheld Bathroom High Pressure Water Saving Jetting Showerhead','improvement/104_0.jpg','Plastic Shower',13.59,10,1,7),(105,'HW-105','2019-11-08','SPA shower Pressure Rainfall Shower Head 300 Holes Shower Head Water Saving Filter Spray Nozzle High Pressure Pressurized showe','improvement/105_0.jpg','SPA shower',17.05,10,3,7),(106,'HW-106','2019-11-08','1.8*1.8m Moldproof Waterproof 3D Thickened Bathroom Bath Shower Simple Curtain Bathroom Products Home Decor','improvement/106_0.jpg','Curtain Bathroom',13.55,10,2,7),(107,'HW-107','2019-11-08','6pcs Waterproof Tiles Mosaic Wall Stickers Kitchen Bathroom Adhesive Decor Home Decoration 20x20cm','improvement/107_0.jpg','Bathroom Adhesive',18.41,10,1,7),(108,'HW-108','2019-11-08','Bathroom Pressurize Handheld Shower Head Water Saving Filter Spray Nozzle Bathroom Watersaving Big Panel Spray','improvement/108_0.jpg','Handheld Shower',31.83,10,1,7),(109,'HW-109','2019-11-08','SPA shower Pressure Rainfall Shower Head 300 Holes Shower Head Water Saving Filter Spray Nozzle High Pressure Pressurized showe','improvement/109_0.jpg','Rainfall Shower',13.88,10,1,7),(110,'HW-110','2019-11-08','7 Colors LED Water Faucet Lights Colorful Changing Glow Shower Head Kitchen Tap Aerators for Kitchen Bathroom Faucets Products','improvement/110_0.jpg','Lights Colorful',27.98,10,2,7),(111,'HW-111','2019-11-08','Shower Head Top Spray ABS Full Electroplating Thread Water Saving Rainfall Pressuized Shower Head Water Saving Bathroom','improvement/111_0.jpg','Shower Head',20.77,10,2,7),(112,'HW-112','2019-11-08','Bathroom Water Stopper Flood Barrier Rubber Dam Silicon Water Blocker Dry and Wet Separation Home Improve Supplies','improvement/112_0.jpg','Wall Lamp',23.24,10,2,7),(113,'HW-113','2019-11-08','Bathroom Water Stopper Flood Barrier Rubber Dam Silicon Water Blocker Dry and Wet Separation Home Improve Supplies','improvement/113_0.jpg','Toilet Lamp',5.01,10,2,7),(114,'HW-114','2019-11-08','Bathroom Water Stopper Flood Barrier Rubber Dam Silicon Water Blocker Dry and Wet Separation Home Improve Supplies','improvement/114_0.jpg','Adjustable Showe',15.99,10,2,7),(115,'HW-115','2019-11-08','Bathroom Water Stopper Flood Barrier Rubber Dam Silicon Water Blocker Dry and Wet Separation Home Improve Supplies','improvement/115_0.jpg','Hanging Rack',17.4,10,2,7),(116,'HW-116','2019-11-08','Bathroom Water Stopper Flood Barrier Rubber Dam Silicon Water Blocker Dry and Wet Separation Home Improve Supplies','improvement/116_0.jpg','Shower Spray',12.63,10,1,7),(117,'HW-117','2019-11-08','Bathroom Water Stopper Flood Barrier Rubber Dam Silicon Water Blocker Dry and Wet Separation Home Improve Supplies','improvement/117_0.jpg','Non-Slip Silicone',15.99,10,1,7),(118,'HW-118','2019-11-08','Bathroom Water Stopper Flood Barrier Rubber Dam Silicon Water Blocker Dry and Wet Separation Home Improve Supplies','improvement/118_0.jpg','Toothbrush Holder',21.76,10,3,7),(119,'HW-119','2019-11-08','Bathroom Water Stopper Flood Barrier Rubber Dam Silicon Water Blocker Dry and Wet Separation Home Improve Supplies','improvement/119_0.jpg','LED Aluminum',7.76,10,1,7),(120,'HW-120','2019-11-08','Bathroom Water Stopper Flood Barrier Rubber Dam Silicon Water Blocker Dry and Wet Separation Home Improve Supplies','improvement/120_0.jpg','Hair Dryer',17.39,10,3,7),(121,'HW-121','2019-11-10','Brass Faucets Standard Connector Washing Machine Gun Quick Connect Fitting Pipe Connections Threaded Tap Connectors Tools','improvement/121_0.jpg','Brass Faucets',19.9,10,3,8),(122,'HW-122','2019-11-10','Brass Faucets Standard Connector Washing Machine Gun Quick Connect Fitting Pipe Connections Threaded Tap Connectors Tools','improvement/122_0.jpg','Water Bubble',17.7,10,1,8),(123,'HW-123','2019-11-10','Brass Faucets Standard Connector Washing Machine Gun Quick Connect Fitting Pipe Connections Threaded Tap Connectors Tools','improvement/123_0.jpg','Sealing Strip',14.85,10,1,8),(124,'HW-124','2019-11-10','Brass Faucets Standard Connector Washing Machine Gun Quick Connect Fitting Pipe Connections Threaded Tap Connectors Tools','improvement/124_0.jpg','Faucet Nozzle',16.73,10,1,8),(125,'HW-125','2019-11-10','Brass Faucets Standard Connector Washing Machine Gun Quick Connect Fitting Pipe Connections Threaded Tap Connectors Tools','improvement/125_0.jpg','Faucet Accessories',19.5,10,1,8),(126,'HW-126','2019-11-10','Brass Faucets Standard Connector Washing Machine Gun Quick Connect Fitting Pipe Connections Threaded Tap Connectors Tools','improvement/126_0.jpg','Butter Cutting',18.27,10,2,8),(127,'HW-127','2019-11-10','Brass Faucets Standard Connector Washing Machine Gun Quick Connect Fitting Pipe Connections Threaded Tap Connectors Tools','improvement/127_0.jpg','ED Bar Light',20.1,10,2,8),(128,'HW-128','2019-11-10','Brass Faucets Standard Connector Washing Machine Gun Quick Connect Fitting Pipe Connections Threaded Tap Connectors Tools','improvement/128_0.jpg','Wall-Mount',6.91,10,3,8),(129,'HW-129','2019-11-10','Brass Faucets Standard Connector Washing Machine Gun Quick Connect Fitting Pipe Connections Threaded Tap Connectors Tools','improvement/129_0.jpg','Multifunction Slicer',18.4,10,1,8),(130,'HW-130','2019-11-10','2019 New Slicer Vegetable Slicer Potato Peeler Carrot Onion Grater with Strainer Vegetable Cutter Kitchen Accessories','improvement/130_0.jpg','Slicer Vegetable',16.14,10,1,8),(131,'HW-131','2019-11-10','35mm 40mm Hinge Hole Drilling Guide Locator Hole Opener Template Door Cabinets DIY Tools Woodworking Punch Hinge Drill Hole Tool','improvement/131_0.jpg','Hole Drilling',21.14,10,3,9),(132,'HW-132','2019-11-10','Brass Faucets Standard Connector Washing Machine Gun Quick Connect Fitting Pipe Connections Threaded Tap Connectors Tools','improvement/132_0.jpg','Wardrobe Locks',19.8,10,2,9),(133,'HW-133','2019-11-10','Brass Faucets Standard Connector Washing Machine Gun Quick Connect Fitting Pipe Connections Threaded Tap Connectors Tools','improvement/133_0.jpg','Drawer Cabinet',27.31,10,3,9),(134,'HW-134','2019-11-10','Brass Faucets Standard Connector Washing Machine Gun Quick Connect Fitting Pipe Connections Threaded Tap Connectors Tools','improvement/134_0.jpg','Lock Limit',17.58,10,1,9),(135,'HW-135','2019-11-10','Brass Faucets Standard Connector Washing Machine Gun Quick Connect Fitting Pipe Connections Threaded Tap Connectors Tools','improvement/135_0.jpg','Hinged Hole',27.12,10,2,9),(136,'HW-136','2019-11-10','Brass Faucets Standard Connector Washing Machine Gun Quick Connect Fitting Pipe Connections Threaded Tap Connectors Tools','improvement/136_0.jpg','Door Lever Lock',20.54,10,1,9),(137,'HW-137','2019-11-10','Lace Curtains Voile Tulle Curtains Insect Bed Canopy Netting Drape Panel Leaf Door Window Sheer Curtain for Living Room','improvement/137_0.jpg','Lace Curtains',17.29,10,3,9),(138,'HW-138','2019-11-10','Lace Curtains Voile Tulle Curtains Insect Bed Canopy Netting Drape Panel Leaf Door Window Sheer Curtain for Living Room','improvement/138_0.jpg','Blackout Curtains',27.98,10,2,9),(139,'HW-139','2019-11-10','Window Glass Film Reduce Glare Sunscreen New and High Quality One Way Mirror Heat Insulation Sticker Bedroom Home Decoration','improvement/139_0.jpg','Window Glass',12.93,10,3,9),(140,'HW-140','2019-11-10','40cm Circular Glass Cutter Glass Cutter Wheel Compasses Circular Cutting With Suction Cup Tools Window Warranty','improvement/140_0.jpg','Glass Cutter',16.19,10,2,9),(141,'HW-141','2019-11-10','Modern blackout curtains Shading Sliding Curtains for window treatment blinds finished drapes window blackout curtains','improvement/141_0.jpg','curtains Shading',17.37,10,3,9),(142,'HW-142','2019-11-11','Door Latch Bolt Brushed Furniture Bolt Security Sliding Door Thickened Cabinet Latch Door Lock Pin Zinc Alloy','improvement/142_0.jpg','Door Lock',22.26,10,1,9),(143,'HW-143','2019-11-11','Brass Faucets Standard Connector Washing Machine Gun Quick Connect Fitting Pipe Connections Threaded Tap Connectors Tools','improvement/143_0.jpg','Car Interior',18.79,10,2,9),(144,'HW-144','2019-11-11','1/2\" Shank Glass Door Rail Stile Reversible Router Bit Wood Cutting Tool Woodworking Router Bits Home Wood Cutting Accessories','improvement/144_0.jpg','Shank Glass',25.12,10,1,9),(145,'HW-145','2019-11-11','Brass Faucets Standard Connector Washing Machine Gun Quick Connect Fitting Pipe Connections Threaded Tap Connectors Tools','improvement/145_0.jpg','Rubber Telescopic',20.46,10,1,9),(146,'HW-146','2019-11-11','Brass Faucets Standard Connector Washing Machine Gun Quick Connect Fitting Pipe Connections Threaded Tap Connectors Tools','improvement/146_0.jpg','Mosquito Net',15.8,10,3,9),(147,'HW-147','2019-11-11','Brass Faucets Standard Connector Washing Machine Gun Quick Connect Fitting Pipe Connections Threaded Tap Connectors Tools','improvement/147_0.jpg','AC100-240V',17.81,10,3,9),(148,'HW-148','2019-11-11','Brass Faucets Standard Connector Washing Machine Gun Quick Connect Fitting Pipe Connections Threaded Tap Connectors Tools','improvement/148_0.jpg','Automatic Greenhouse',25.74,10,2,9),(149,'HW-149','2019-11-11','Brass Faucets Standard Connector Washing Machine Gun Quick Connect Fitting Pipe Connections Threaded Tap Connectors Tools','improvement/149_0.jpg','Door Bell',13.05,10,2,9),(150,'HW-150','2019-11-11','Smart WiFi DoorBell Door Viewers HD 720P Visual Intercom Recording Video Remote Home Monitoring Night Vision Video Door Phone','improvement/150_0.jpg','Brass Faucets',15.46,10,1,9),(151,'HW-151','2019-11-11','Electric Knife Sharpener Professional Motorized Knife Sharpener Rotating Sharpening Stone Kitchen High-Speed Sharpening Tool','Home&Garden/201_0.jpg','Electric Knife',28.32,10,1,14),(152,'HW-152','2019-11-11','DIY Low Calories Microwave Oven Fat Free Potato Chips Maker Kitchen Bakeware Tools Baking Dishes & Pans Chips Rack','Home&Garden/202_0.jpg','Calories Microwave',14.84,10,2,14),(153,'HW-153','2019-11-11','Kitchen Accessories Cooking Gadgets Silicone Anti Overflow Lid Holder Soup Funny Man Phone Holder Stand Universial Kitchen Tool','Home&Garden/203_0.jpg','Kitchen Accessories',19.47,10,1,14),(154,'HW-154','2019-11-11','Ex-large Silicone Baking Mat for Oven Scale Rolling Dough Mat Baking Rolling Fondant Pastry Mat Non-stick Bakeware Cooking Tool','Home&Garden/204_0.jpg','Ex-large Silicone',10.03,10,3,14),(155,'HW-155','2019-11-11','3D Skull Ice Silicone Mold Maker Ice Cube Tray Pudding Mold Cake Candy Mould Bar Party Cool Wine Ice Cream Kitchen DIY Accessory','Home&Garden/205_0.jpg','3D Skull',17,10,2,14),(156,'HW-156','2019-11-11','3/20/50/100pcs High Density Melamine Sponge Magic Sponge Eraser Cleaner Nano Sponge for Kitchen Office Bathroom Cleaning','Home&Garden/206_0.jpg','Sponge Magic',25.37,10,1,14),(157,'HW-157','2019-11-11','Kitchen Tools Dumpling Maker Tool Device Easy DIY Hand Pinch Dumpling Mold Dumplings Folder Dessert Mold Maker Tools White','Home&Garden/207_0.jpg','Kitchen Tools',25.17,10,3,14),(158,'HW-158','2019-11-11','Gas Stove Protector Cover Liner Reusable Non Stick Dishwasher Protective Pad Gas Burner Stovetop Protector Kitchen Supplies','Home&Garden/208_0.jpg','Cover Liner',23.1,10,2,14),(159,'HW-159','2019-11-11','New 1PCS Chess Shape Silicone Cake Molds Fondant Cake Jelly Candy Chocolate Mold DIY Bakware Decorate 20.5*8.5cm','Home&Garden/209_0.jpg','Cake Molds',17.21,10,1,14),(160,'HW-160','2019-11-11','FIsh Shape Beer Bottle Opener Fishbone Aluminum Alloy Bottle Opener Keychain Ring kitchen Tool Trinket Gifts Color Random','Home&Garden/210_0.jpg','Beer Bottle Opener',13.63,10,2,14),(161,'HW-161','2019-11-11','Water Shovel Kitchen Accessories Nylon Strainer Scoop Colander Drain Water Leaking Shovel Stainer Gadgets Cooking Tools Droship','Home&Garden/211_0.jpg','Water Shovel',20.29,10,1,14),(162,'HW-162','2019-11-11','Stainless Steel Wine Olive Oil Pourer Dispenser Spout Glass Bottle Wine Bottle Pour Spout Stopper Barware For Bar Dropshipping','Home&Garden/212_0.jpg','Stainless Steel',25.91,10,1,14),(163,'HW-163','2019-11-11','ABS+Stainless Steel Potato Cutter Vegetable Slicer Chopper Chips Making Device for Fries Kitchen Cooking Tools','Home&Garden/213_0.jpg','Potato Cutter',32.91,10,3,14),(164,'HW-164','2019-11-11','4/6/8pcs Reusable Metal Straws Reusable Drinking Stainless Steel Straws with Cleaner Brush Kits for Mugs Party Bar Accessories','Home&Garden/214_0.jpg','Straws Reusable',16.56,10,1,14),(165,'HW-165','2019-11-11','4PCS/Set Useful Bakeware Carved Pens Gadgets Simple DIY Flower Modelling Tool Fondant Biscuits Cake Molds Cake Decorating Tools','Home&Garden/215_0.jpg','Carved Pens',27.14,10,3,14),(166,'HW-166','2019-11-11','\"Adjustable Kitchen Scales Measure Cups Double-head Cookware Measuring Spoon for Soup Coffee Tea Powder with Scal Kitchen Gadget','Home&Garden/216_0.jpg','Kitchen Scales',22.94,10,2,14),(167,'HW-167','2019-11-11','5pcs Stainless Steel Biscuit Mould Cake Tool Cookie Mould Cutters Specialized Multi-function DIY Baking Tools Dropshipping','Home&Garden/217_0.jpg','Cookie Mould',17.18,10,2,14),(168,'HW-168','2019-11-11','50pcs Disposable Plastic Colorful Stick Love Heart Arrow Shape Fruit Fork Picks Set for Party kitchen accessorie','Home&Garden/218_0.jpg','Disposable Plastic',27.63,10,3,14),(169,'HW-169','2019-11-11','2pcs Reusable Silicone Drinking Straws Home Party Straw with Cleaning Brush for Home Party Wedding Decor Bar Accessories Straws','Home&Garden/219_0.jpg','Drinking Straws',16.97,10,2,14),(170,'HW-170','2019-11-11','Defrost Tray Food Meat Pork Thaw Frozen in Minutes Kitchen Defrosting Tools','Home&Garden/220_0.jpg','Defrost Tray',15.24,10,3,14),(171,'HW-171','2019-11-11','Adjustable Stretch Extend Microfiber Duster Static Suction Dusting Brush Clean Up Table Car Dust Anti-Static House Cleaning Tool','Home&Garden/221_0.jpg','Microfiber Duster',20.36,10,3,15),(172,'HW-172','2019-11-11','Soft Microfiber Cleaning Duster Brush Dust Cleaner can not lose hair Static Anti Dusting Brush Household Cleaning Tools','Home&Garden/222_0.jpg','Brush Dust',12.11,10,3,15),(173,'HW-173','2019-11-11','Duster Dust Cleaner Adjustable Stretch Extend Microfiber Feather Duster Furniture Dust Brush Household Cleaning Tools','Home&Garden/223_0.jpg','Feather Duster',29.78,10,3,15),(174,'HW-174','2019-11-11','100pcs Plastic Disposable Gloves Restaurant Home Service Catering Hygiene Home Dining Kitchen Accessories','Home&Garden/224_0.jpg','Disposable Gloves',28.32,10,1,15),(175,'HW-175','2019-11-11','10Pcs Non Disposable Compressed Towel Non-woven Eco Towel for Outdoor Travel Bath Towel Shower Cleaning Towel','Home&Garden/225_0.jpg','Compressed Towel',13.77,10,2,15),(176,'HW-176','2019-11-11','3/5pcs Stainless Steel Straight Bent Straws+Cleaning Brush Drinking Tool With Cleaning Brush Dinking Straws Bar Accessories','Home&Garden/226_0.jpg','Bent Straws',32.35,10,3,15),(177,'HW-177','2019-11-11','10pcs/set T-type Round Polishing Buffing Cloth Electric Grinder Cleaning Wheel Brush Rotary Tool for Power','Home&Garden/227_0.jpg','Buffing Cloth',18.69,10,1,15),(178,'HW-178','2019-11-11','Household Long Handle Cleaning Brush Toilet Decontamination Brush Set Toilet Brush Wall-Mounted Floor-Standing Cleaning Tools','Home&Garden/228_0.jpg','Brush Toilet',20.72,10,3,15),(179,'HW-179','2019-11-11','100pcs Eco-friendly Disposable Plastic Gloves for Restaurant Hotel Handling Raw Chicken Plastic Multifuctional Gloves Food','Home&Garden/229_0.jpg','Plastic Gloves',16.63,10,1,15),(180,'HW-180','2019-11-11','1/2/3/5Pcs Reusable Drinking Straw Heart Shaped Stainless Steel Metal Straws Reusable Straw w/Cleaning Brush Bar Accessories','Home&Garden/230_0.jpg','Straws Heart',14.34,10,2,15),(181,'HW-181','2019-11-11','1/5Pcs Reusable Drinking Straws Bar Drinking Stainless Steel Straws With Cleaning Brush Party Eco-friendly Drinking Accessories','Home&Garden/231_0.jpg','Stainless Steel Straws',29.58,10,3,15),(182,'HW-182','2019-11-11','Replacement 360 Rotating Head Easy Microfiber Spinning Floor Mop Head for Housekeeper Home Floor Cleaning Mop','Home&Garden/232_0.jpg','Floor Mop',21.44,10,2,15),(183,'HW-183','2019-11-11','Long Handle Toilet Brush Holder Set Bathroom Lavatory Cleaning Tool Floor-Standing WC Toilet Cleaning Brush Bathroom Accessories','Home&Garden/233_0.jpg','Toilet Brush',12.01,10,1,15),(184,'HW-184','2019-11-11','High Temperature Resistant Solder Iron Tip Cleaning Sponge PCB Repair Pads Tin Wire Melt Rosin Core Solder Soldering Wire Roll','Home&Garden/234_0.jpg','Solder Iron',9.26,10,1,15),(185,'HW-185','2019-11-11','Double Sided Flat Mops Floor Mop Pad with Replacement Cleaning Cloth Head for Household Cleaning Tools Accessories','Home&Garden/235_0.jpg','Floor Mop Pad',16.2,10,1,15),(186,'HW-186','2019-11-11','Pneumatic Air Blow Gun Spray Pistol Compressor Dust Blower Cleaner Compressor Dust Blower 8inch Nozzle Cleaning Tool','Home&Garden/236_0.jpg','Gun Spray',17.86,10,2,15),(187,'HW-187','2019-11-11','5pcs/Set Reusable Drinking Straw Stainless Steel Straight Bent Straws+Cleaning Brush Set Bar Coffee Milk Drinking Accessories','Home&Garden/237_0.jpg','Straw Stainless',26.45,10,1,15),(188,'HW-188','2019-11-11','Floor Cleaning Tool Spray Mop 350ML Microfiber Cloth Hand Wash Plate Mop Home Windows Kitchen Mop Sweeper Broom Floor Clean Mops','Home&Garden/238_0.jpg','Floor Cleaning',25.04,10,1,15),(189,'HW-189','2019-11-11','Reusable Lint Rollers Double Side Clothes Sticky Brush Dust Remover Pet Hair Cleaner Home Clothes Cleaning Tools Random Color','Home&Garden/239_0.jpg','Sticky Brush',19.57,10,2,15),(190,'HW-190','2019-11-11','Window Groove Cleaning Brush Cleaning Tool Sweeping the Small Brush Mini Sill Crevice Sweeping Brush Household Cleaning Tools','Home&Garden/240_0.jpg','Groove Cleaning',28.07,10,3,15);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_account`
--

DROP TABLE IF EXISTS `role_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_account`
--

LOCK TABLES `role_account` WRITE;
/*!40000 ALTER TABLE `role_account` DISABLE KEYS */;
INSERT INTO `role_account` VALUES (1,'Admin'),(2,'Employee'),(3,'Vip'),(4,'Normal');
/*!40000 ALTER TABLE `role_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping`
--

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_account`
--

DROP TABLE IF EXISTS `status_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_account`
--

LOCK TABLES `status_account` WRITE;
/*!40000 ALTER TABLE `status_account` DISABLE KEYS */;
INSERT INTO `status_account` VALUES (1,'Active'),(2,'Pending'),(3,'Baned');
/*!40000 ALTER TABLE `status_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_category`
--

DROP TABLE IF EXISTS `status_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_category`
--

LOCK TABLES `status_category` WRITE;
/*!40000 ALTER TABLE `status_category` DISABLE KEYS */;
INSERT INTO `status_category` VALUES (1,'Selling'),(2,'Salling'),(3,'Freeship'),(4,'Out Of Stock'),(5,'Stop Business');
/*!40000 ALTER TABLE `status_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_order`
--

DROP TABLE IF EXISTS `status_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_order`
--

LOCK TABLES `status_order` WRITE;
/*!40000 ALTER TABLE `status_order` DISABLE KEYS */;
INSERT INTO `status_order` VALUES (1,'Waitting'),(2,'Accepted'),(3,'Shipping'),(4,'Success');
/*!40000 ALTER TABLE `status_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_product`
--

DROP TABLE IF EXISTS `status_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_product`
--

LOCK TABLES `status_product` WRITE;
/*!40000 ALTER TABLE `status_product` DISABLE KEYS */;
INSERT INTO `status_product` VALUES (1,'Selling'),(2,'Salling'),(3,'Freeship'),(4,'Out Of Stock'),(5,'Stop Business');
/*!40000 ALTER TABLE `status_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_sub_category`
--

DROP TABLE IF EXISTS `status_sub_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_sub_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_sub_category`
--

LOCK TABLES `status_sub_category` WRITE;
/*!40000 ALTER TABLE `status_sub_category` DISABLE KEYS */;
INSERT INTO `status_sub_category` VALUES (1,'Selling'),(2,'Salling'),(3,'Freeship'),(4,'Out Of Stock'),(5,'Stop Business');
/*!40000 ALTER TABLE `status_sub_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_category`
--

DROP TABLE IF EXISTS `sub_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sub_category_name` varchar(255) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKl65dyy5me2ypoyj8ou1hnt64e` (`category_id`),
  KEY `FKgp4bx11vhu973i9fq46cingr1` (`status_id`),
  CONSTRAINT `FKgp4bx11vhu973i9fq46cingr1` FOREIGN KEY (`status_id`) REFERENCES `status_sub_category` (`id`),
  CONSTRAINT `FKl65dyy5me2ypoyj8ou1hnt64e` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_category`
--

LOCK TABLES `sub_category` WRITE;
/*!40000 ALTER TABLE `sub_category` DISABLE KEYS */;
INSERT INTO `sub_category` VALUES (1,'Hand Tools',1,1),(2,'Tool Parts',1,1),(3,'Power Tools',1,1),(4,'Temperature Instruments',2,1),(5,'Measurement & Analysis Instruments',2,1),(6,'Gauging Tool',2,1),(7,' Bathroom Fixtures',3,1),(8,'Kitchen Fixtures ',3,1),(9,'Door& Window Part ',3,1),(10,'Bag,Box,Bottle',3,1),(11,'Stage Lighting ',4,1),(12,'Lighting Bulbs & Tubes',4,1),(13,' Indoor Light',4,1),(14,'Kitchen, Dining & Bar',5,1),(15,'Household Cleaning Tools & Accessories',5,1),(16,'Garden Supplies',5,1);
/*!40000 ALTER TABLE `sub_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-12 10:35:49
