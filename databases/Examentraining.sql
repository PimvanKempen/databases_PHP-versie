/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Docenten` (
  `docentcode` varchar(3) NOT NULL,
  `docentnaam` text NOT NULL,
  `lokaal` varchar(5) NOT NULL,
  PRIMARY KEY (`docentcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `Docenten` (`docentcode`, `docentnaam`, `lokaal`) VALUES ('BAH','Bakker','A105'),('HOJ','Hoekstra','A202'),('PLP','Palsma','B206'),('SCI','Schreuder','A104'),('SCL','Scheffers','B409'),('THV','Thiadens','A101'),('WAZ','Warmelink','B102');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Inschrijvingen` (
  `vakkeuze` varchar(32) NOT NULL,
  `id_leerling` int NOT NULL,
  `docentcode` varchar(3) NOT NULL,
  PRIMARY KEY (`vakkeuze`,`id_leerling`),
  KEY `id_leerling` (`id_leerling`),
  KEY `docentcode` (`docentcode`),
  CONSTRAINT `Inschrijvingen_ibfk_1` FOREIGN KEY (`id_leerling`) REFERENCES `Leerlingen` (`id_leerling`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Inschrijvingen_ibfk_2` FOREIGN KEY (`docentcode`) REFERENCES `Docenten` (`docentcode`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `Inschrijvingen` (`vakkeuze`, `id_leerling`, `docentcode`) VALUES ('wiskunde',150114,'BAH'),('wiskunde',150410,'BAH'),('Nederlands',150114,'HOJ'),('Nederlands',150273,'HOJ'),('Nederlands',150701,'HOJ'),('natuurkunde',150273,'PLP'),('natuurkunde',150701,'PLP'),('Engels',150114,'SCI'),('Engels',150273,'SCI'),('geschiedenis',150410,'SCL'),('geschiedenis',152809,'SCL'),('Engels',150410,'THV'),('Engels',152809,'THV'),('wiskunde',150701,'WAZ'),('wiskunde',152809,'WAZ');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Leerlingen` (
  `id_leerling` int NOT NULL AUTO_INCREMENT,
  `naam` text NOT NULL,
  `klas` varchar(4) NOT NULL,
  PRIMARY KEY (`id_leerling`)
) ENGINE=InnoDB AUTO_INCREMENT=152810 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `Leerlingen` (`id_leerling`, `naam`, `klas`) VALUES (150114,'Alice Pieters','H5A'),(150273,'Bob Bouwma','H5A'),(150410,'Cindy Young','H5B'),(150701,'Eve Ning','H5B'),(151550,'Christiaan','H5C'),(152809,'Dirk Nauta','H5A');
