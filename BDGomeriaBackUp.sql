CREATE DATABASE  IF NOT EXISTS `gomeria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gomeria`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: gomeria
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citas` (
  `id_citas` int NOT NULL AUTO_INCREMENT,
  `Cliente_id` int NOT NULL,
  `Vehiculos_id` int NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_citas`),
  UNIQUE KEY `id_citas` (`id_citas`),
  KEY `Cliente_id` (`Cliente_id`),
  KEY `Vehiculos_id` (`Vehiculos_id`),
  CONSTRAINT `citas_ibfk_1` FOREIGN KEY (`Cliente_id`) REFERENCES `clientes` (`id_clientes`) ON DELETE CASCADE,
  CONSTRAINT `citas_ibfk_2` FOREIGN KEY (`Vehiculos_id`) REFERENCES `vehiculos` (`id_vehiculos`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
INSERT INTO `citas` VALUES (1,2,1,'2024-06-23','Es necesario balancear las llantas del vehículo'),(2,10,6,'2024-03-29','Es necesario balancear las llantas del vehículo'),(3,2,11,'2024-03-20','El cliente necesita revisar la presión de sus neumáticos'),(4,3,1,'2024-01-11','Se recomienda al cliente alinear las ruedas'),(5,12,12,'2024-06-07','El cliente necesita revisar la presión de sus neumáticos'),(6,4,12,'2024-05-23','Es necesario balancear las llantas del vehículo'),(7,7,12,'2024-07-27','Se recomienda al cliente alinear las ruedas'),(8,12,6,'2024-07-18','Se recomienda al cliente alinear las ruedas'),(9,10,10,'2023-12-01','Se recomienda al cliente alinear las ruedas'),(10,5,1,'2023-11-03','El cliente necesita revisar la presión de sus neumáticos'),(11,9,12,'2024-02-16','El cliente necesita revisar la presión de sus neumáticos'),(12,4,4,'2024-02-22','Se debe cambiar la válvula del neumático');
/*!40000 ALTER TABLE `citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_clientes` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `TipoDocumento` varchar(20) NOT NULL,
  `NumeroDocumento` varchar(20) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `CP` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_clientes`),
  UNIQUE KEY `id_clientes` (`id_clientes`),
  UNIQUE KEY `NumeroDocumento` (`NumeroDocumento`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Palmer','Rosengart','Dni','45789501','1123131314','Suite 22',NULL,'prosengart0@nhs.uk'),(2,'Wadsworth','Nanetti','Pasaporte','25687001','2142568709','Suite 34','624082','wnanetti1@telegraph.co.uk'),(3,'Cairistiona','Holyland','Pasaporte','3450478554','413578','Room 176',NULL,'cholyland2@sohu.com'),(4,'Gerri','Jarrad','Dni','33254105','4874513045','Suite 32',NULL,'gjarrad3@free.fr'),(5,'Maximilien','Cauthra','Pasaporte','24578941','5748154230','Suite 4','39104 CEDEX','mcauthra4@wikipedia.org'),(6,'Kassey','Lucius','Dni','7154540','6874513097','Apt 1095','4560-221','klucius5@livejournal.com'),(7,'Nada','Impett','Pasaporte','11457910','7742013587','20th Floor','2733','nimpett6@hud.gov'),(8,'Merrile','Semorad','Dni','46810780','8871606987','Apt 816','626020','msemorad7@slideshare.net'),(9,'Royall','Nicklinson','Dni','40125478','571369874','PO Box 47770',NULL,'rnicklinson8@bravesites.com'),(10,'Deborah','Knaggs','Dni','23654781','1057410358','13th Floor','4745-380','dknaggs9@pen.io'),(11,'Eward','Keppe','Dni','6115450','1147814039','Apt 1066',NULL,'ekeppea@biblegateway.com'),(12,'Sig','Larby','Pasaporte','41110248','4441059','19th Floor','39860-000','slarbyb@hhs.gov');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `NuevoClienteNotification` AFTER INSERT ON `clientes` FOR EACH ROW BEGIN
    DECLARE Mensaje VARCHAR(255);
    
    SET Mensaje = CONCAT('Nuevo cliente agregado: ', NEW.Nombre, ' ', NEW.Apellido);
    
    -- Inserta el mensaje en la tabla temporal
    CREATE TEMPORARY TABLE IF NOT EXISTS TempNotificaciones (
        ID INT AUTO_INCREMENT PRIMARY KEY,
        Mensaje VARCHAR(255)
    );
    
    INSERT INTO TempNotificaciones (Mensaje)
    VALUES (Mensaje);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `id_compras` int NOT NULL AUTO_INCREMENT,
  `Proveedores_id` int NOT NULL,
  `Empleados_id` int NOT NULL,
  `Inventario_id` int NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Cantidad` int DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_compras`),
  UNIQUE KEY `id_compras` (`id_compras`),
  KEY `Proveedores_id` (`Proveedores_id`),
  KEY `Empleados_id` (`Empleados_id`),
  KEY `Inventario_id` (`Inventario_id`),
  CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`Proveedores_id`) REFERENCES `proveedores` (`id_proveedores`) ON DELETE CASCADE,
  CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`Empleados_id`) REFERENCES `empleados` (`id_empleados`) ON DELETE CASCADE,
  CONSTRAINT `compras_ibfk_3` FOREIGN KEY (`Inventario_id`) REFERENCES `inventario` (`id_inventario`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,1,1,1,'2019-12-21',100,219304.68),(2,7,5,8,'2020-08-10',93,67545.92),(3,5,5,7,'2022-03-26',56,80891.03),(4,8,2,6,'2021-05-05',41,3783.64),(5,7,2,8,'2020-10-29',64,169494.10),(6,2,9,8,'2022-07-14',1,62623.83),(7,5,7,11,'2019-11-14',93,205284.39),(8,5,10,4,'2022-09-01',75,169803.58),(9,1,11,8,'2021-11-19',60,132886.05),(10,11,12,1,'2023-08-25',17,210056.69),(11,5,1,11,'2019-10-11',22,15437.83),(12,2,6,3,'2019-11-09',16,92001.36);
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacto` (
  `id_contacto` int NOT NULL AUTO_INCREMENT,
  `Telefono` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  PRIMARY KEY (`id_contacto`),
  UNIQUE KEY `id_contacto` (`id_contacto`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
INSERT INTO `contacto` VALUES (1,'7156715583','charwood0@mysql.com'),(2,'7888943022','flangrish1@desdev.cn'),(3,'2958657364','ssenton2@simplemachines.org'),(4,'4264741312','obeaves3@1und1.de'),(5,'1945160811','rlattimore4@japanpost.jp'),(6,'4681889046','wsparrowhawk5@prnewswire.com'),(7,'6613379223','cstout6@deviantart.com'),(8,'5163282206','jwolver7@disqus.com'),(9,'2875386473','imonument8@eepurl.com'),(10,'2388917975','kgreenland9@hubpages.com'),(11,'4663352473','adufraya@nih.gov'),(12,'5481806416','vgilhoolieb@google.es');
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleados` int NOT NULL AUTO_INCREMENT,
  `Contacto_id` int DEFAULT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Cargo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_empleados`),
  UNIQUE KEY `id_empleados` (`id_empleados`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,3,'Stacia','Ivery','Auxiliar'),(2,4,'Babs','Di Giorgio','Mecánico'),(3,12,'Atlante','Sherborne','Auxiliar'),(4,8,'Alicia','Wynrahame','Mecánico'),(5,7,'Kirk','O\'Fogarty','Auxiliar'),(6,9,'Ruthanne','Laffranconi','Vendedor'),(7,1,'Ludvig','Cherrington','Mecánico'),(8,10,'Birch','Dinwoodie','Mecánico'),(9,3,'Sterling','Mellonby','Vendedor'),(10,3,'Melodie','Bruinsma','Auxiliar'),(11,8,'Rabi','Hissie','Gerente'),(12,6,'Henka','Headingham','Gerente');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historialservicios`
--

DROP TABLE IF EXISTS `historialservicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historialservicios` (
  `id_historialServicios` int NOT NULL AUTO_INCREMENT,
  `Vehiculos_id` int NOT NULL,
  `Servicios_id` int NOT NULL,
  `Empleados_id` int DEFAULT NULL,
  `Fecha` date NOT NULL,
  `Observaciones` text,
  PRIMARY KEY (`id_historialServicios`),
  UNIQUE KEY `id_historialServicios` (`id_historialServicios`),
  KEY `Vehiculos_id` (`Vehiculos_id`),
  KEY `Servicios_id` (`Servicios_id`),
  KEY `Empleados_id` (`Empleados_id`),
  CONSTRAINT `historialservicios_ibfk_1` FOREIGN KEY (`Vehiculos_id`) REFERENCES `vehiculos` (`id_vehiculos`) ON DELETE CASCADE,
  CONSTRAINT `historialservicios_ibfk_2` FOREIGN KEY (`Servicios_id`) REFERENCES `servicios` (`id_servicios`) ON DELETE CASCADE,
  CONSTRAINT `historialservicios_ibfk_3` FOREIGN KEY (`Empleados_id`) REFERENCES `empleados` (`id_empleados`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historialservicios`
--

LOCK TABLES `historialservicios` WRITE;
/*!40000 ALTER TABLE `historialservicios` DISABLE KEYS */;
INSERT INTO `historialservicios` VALUES (1,3,3,6,'2022-04-21','Parche de neumáticos'),(3,5,11,8,'2021-08-30','Alineación de ruedas'),(5,6,8,7,'2020-11-14','Reparación de pinchazos'),(7,5,11,6,'2022-03-13','Balanceo de neumáticos'),(8,12,11,10,'2023-05-14','Reparación de pinchazos'),(9,4,10,12,'2021-04-30','Alineación de ruedas'),(10,3,8,2,'2021-11-02','Reparación de pinchazos'),(11,12,7,2,'2018-12-09','Reparación de válvulas'),(12,10,3,8,'2019-07-11','Cambio de válvulas');
/*!40000 ALTER TABLE `historialservicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `id_inventario` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `CantidadDisponible` int DEFAULT NULL,
  `PrecioUnitario` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id_inventario`),
  UNIQUE KEY `id_inventario` (`id_inventario`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (1,'balanceadoras',28,17730.06),(2,'tapas de válvulas',72,47459.59),(3,'tuercas',25,197072.34),(4,'tapas de válvulas',17,123653.34),(5,'balanceadoras',42,220490.49),(6,'tapas de válvulas',6,214535.05),(7,'llantas',4,185713.74),(8,'tuercas',26,179716.74),(9,'tornillos',13,200898.68),(10,'tornillos',14,164322.08),(11,'alineadoras',45,88361.49),(12,'compresores',35,284246.55);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `RegistroCambiosStockInventario` BEFORE UPDATE ON `inventario` FOR EACH ROW BEGIN
    DECLARE CantidadAnterior INT;
    
    IF NEW.CantidadDisponible <> OLD.CantidadDisponible THEN
        -- Almacena la cantidad anterior en una tabla temporal.
        CREATE TEMPORARY TABLE IF NOT EXISTS TempCantidadesAnteriores (
            id_inventario INT,
            CantidadAnterior INT
        );
        
        SET CantidadAnterior = OLD.CantidadDisponible;
        
        -- Inserta el registro en la tabla temporal.
        INSERT INTO TempCantidadesAnteriores (id_inventario, CantidadAnterior)
        VALUES (NEW.id_inventario, CantidadAnterior);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id_proveedores` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_proveedores`),
  UNIQUE KEY `id_proveedores` (`id_proveedores`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Gomería La Ruedita','01 Kenwood Way','765-955-8320','paxworthy0@chronoengine.com'),(2,'Gomería El Globo','8 Sutherland Drive','689-802-5764','tkhomich1@army.mil'),(3,'Gomería El Progreso','74 Calypso Junction','942-566-4673','tbeeckx2@uol.com.br'),(4,'ServiGomas','57904 Charing Cross Parkway','971-552-3895','rdureden3@japanpost.jp'),(5,'Gomería El Faro','86812 Nova Place','373-633-1964','cmatyashev4@github.com'),(6,'Neumáticos Rueda Feliz','185 Moulton Hill','430-305-5421','ahardington5@webeden.co.uk'),(7,'Neumáticos del Sur','48 David Avenue','442-627-8587','lwelford6@narod.ru'),(8,'Gomería El Globo','3473 Schurz Circle','994-998-6488','psilber7@mapquest.com'),(9,'Gomería El Progreso','7 Homewood Terrace','151-279-3157','bpiatkowski8@scribd.com'),(10,'Neumáticos del Sur','079 North Park','660-582-5155','cbreache9@vk.com'),(11,'Gomería La Ruedita','78 Westport Terrace','122-205-0982','pstodea@wikimedia.org'),(12,'Neumáticos Rueda Feliz','3228 Lighthouse Bay Point','698-485-8678','arawlingsb@cbslocal.com');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios` (
  `id_servicios` int NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(50) NOT NULL,
  `Precio` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id_servicios`),
  UNIQUE KEY `id_servicios` (`id_servicios`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,'Reparación de sistema de dirección',171905.00),(2,'Reparación de llantas',40679.00),(3,'Cambio de neumáticos',60407.00),(4,'Reparación de frenos',135309.00),(5,'Reparación de frenos',54672.00),(6,'Reparación de frenos',69555.00),(7,'Cambio de aceite',138547.00),(8,'Cambio de batería',171619.00),(9,'Alineación y balanceo',3601.00),(10,'Reparación de sistema de escape',782.00),(11,'Alineación y balanceo',106210.00),(12,'Alineación y balanceo',115432.00);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `RegistroCambiosPrecioServicio` BEFORE UPDATE ON `servicios` FOR EACH ROW BEGIN
    DECLARE PrecioAnterior DECIMAL(8, 2);
    
    IF NEW.Precio <> OLD.Precio THEN
        -- Almacena el precio anterior en una tabla temporal
        CREATE TEMPORARY TABLE IF NOT EXISTS TempPreciosAnteriores (
            id_servicio INT,
            PrecioAnterior DECIMAL(8, 2)
        );
        
        SET PrecioAnterior = OLD.Precio;
        
        -- Inserta el registro en la tabla temporal.
        INSERT INTO TempPreciosAnteriores (id_servicio, PrecioAnterior)
        VALUES (NEW.id_servicios, PrecioAnterior);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `vehiculos`
--

DROP TABLE IF EXISTS `vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculos` (
  `id_vehiculos` int NOT NULL AUTO_INCREMENT,
  `Cliente_id` int NOT NULL,
  `Marca` varchar(50) DEFAULT NULL,
  `Modelo` varchar(50) NOT NULL,
  `Anio` int DEFAULT NULL,
  `Placa` varchar(20) NOT NULL,
  `Kilometraje` int DEFAULT NULL,
  PRIMARY KEY (`id_vehiculos`),
  UNIQUE KEY `id_vehiculos` (`id_vehiculos`),
  KEY `Cliente_id` (`Cliente_id`),
  CONSTRAINT `vehiculos_ibfk_1` FOREIGN KEY (`Cliente_id`) REFERENCES `clientes` (`id_clientes`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculos`
--

LOCK TABLES `vehiculos` WRITE;
/*!40000 ALTER TABLE `vehiculos` DISABLE KEYS */;
INSERT INTO `vehiculos` VALUES (1,11,'Chrysler','Pacifica',2008,'NTF133',33900),(2,1,'Chevrolet','S10',2001,'UCC690',143175),(3,11,'Audi','TT',NULL,'ZDT529',NULL),(4,10,'Maserati','Quattroporte',NULL,'LBD455',NULL),(5,1,'Mitsubishi','Sigma',NULL,'KBQ424',146759),(6,7,'Pontiac','Bonneville',1997,'KCH146',54621),(7,8,'Toyota','Prius',2007,'FTO664',80752),(8,4,'Mitsubishi','Galant',2000,'QYT866',53706),(9,3,'Mercedes-Benz','SLK-Class',2009,'CCN401',148420),(10,7,'Nissan','Sentra',1998,'QIV347',14407),(11,6,'Audi','Coupe GT',1985,'XDJ593',NULL),(12,8,'Toyota','MR2',2002,'BSA923',99589);
/*!40000 ALTER TABLE `vehiculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id_ventas` int NOT NULL AUTO_INCREMENT,
  `Clientes_id` int NOT NULL,
  `Empleados_id` int DEFAULT NULL,
  `Inventario_id` int NOT NULL,
  `Fecha` date NOT NULL,
  `Cantidad` int NOT NULL,
  `Total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_ventas`),
  UNIQUE KEY `id_ventas` (`id_ventas`),
  KEY `Clientes_id` (`Clientes_id`),
  KEY `Empleados_id` (`Empleados_id`),
  KEY `Inventario_id` (`Inventario_id`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`Clientes_id`) REFERENCES `clientes` (`id_clientes`) ON DELETE CASCADE,
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`Empleados_id`) REFERENCES `empleados` (`id_empleados`) ON DELETE CASCADE,
  CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`Inventario_id`) REFERENCES `inventario` (`id_inventario`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,3,7,11,'2023-10-05',25,241948.83),(2,1,10,7,'2018-10-31',40,58279.88),(3,4,5,9,'2021-10-22',15,254371.69),(4,11,9,12,'2019-08-18',32,149319.30),(5,8,5,8,'2020-06-04',6,119300.04),(6,3,12,2,'2021-09-12',47,95243.99),(7,6,8,6,'2023-01-12',4,95664.34),(8,7,10,6,'2021-07-28',50,115823.65),(9,1,2,7,'2023-06-28',16,176215.02),(10,10,6,1,'2018-11-24',26,110105.29),(11,5,11,7,'2023-06-11',37,179906.36),(12,4,11,7,'2022-12-26',19,61083.21);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vistaclientesconvehiculos`
--

DROP TABLE IF EXISTS `vistaclientesconvehiculos`;
/*!50001 DROP VIEW IF EXISTS `vistaclientesconvehiculos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistaclientesconvehiculos` AS SELECT 
 1 AS `id_clientes`,
 1 AS `Nombre`,
 1 AS `Apellido`,
 1 AS `Telefono`,
 1 AS `Direccion`,
 1 AS `Marca`,
 1 AS `Modelo`,
 1 AS `Placa`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistacomprastotalesporproveedor`
--

DROP TABLE IF EXISTS `vistacomprastotalesporproveedor`;
/*!50001 DROP VIEW IF EXISTS `vistacomprastotalesporproveedor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistacomprastotalesporproveedor` AS SELECT 
 1 AS `NombreProveedor`,
 1 AS `TotalCompras`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistahistorialserviciosdetallado`
--

DROP TABLE IF EXISTS `vistahistorialserviciosdetallado`;
/*!50001 DROP VIEW IF EXISTS `vistahistorialserviciosdetallado`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistahistorialserviciosdetallado` AS SELECT 
 1 AS `id_historialServicios`,
 1 AS `NombreCliente`,
 1 AS `ModeloVehiculo`,
 1 AS `Servicio`,
 1 AS `NombreEmpleado`,
 1 AS `Fecha`,
 1 AS `Observaciones`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistaventastotalesporcliente`
--

DROP TABLE IF EXISTS `vistaventastotalesporcliente`;
/*!50001 DROP VIEW IF EXISTS `vistaventastotalesporcliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistaventastotalesporcliente` AS SELECT 
 1 AS `NombreCliente`,
 1 AS `TotalVentas`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'gomeria'
--

--
-- Dumping routines for database 'gomeria'
--
/*!50003 DROP FUNCTION IF EXISTS `CalcularTotalGastadoCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalcularTotalGastadoCliente`(id_clientes INT) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE totalGastado DECIMAL(10, 2);
    SELECT SUM(s.Precio)
    INTO totalGastado
    FROM HistorialServicios hs
    JOIN VEHICULOS v ON hs.Vehiculos_id = v.id_vehiculos
    JOIN Servicios s ON hs.Servicios_id = s.id_servicios
    WHERE v.Cliente_id = id_clientes;
    RETURN totalGastado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CalcularTotalGastosEmpleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalcularTotalGastosEmpleado`(id_empleados INT) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10, 2);
    SELECT SUM(Precio) INTO total FROM COMPRAS WHERE Empleados_id = id_empleados;
    RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `EncontrarServicioMasCaro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `EncontrarServicioMasCaro`() RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE servicio_mas_caro VARCHAR(50);
    SELECT Descripcion INTO servicio_mas_caro FROM SERVICIOS 
    ORDER BY Precio DESC LIMIT 1;
    RETURN servicio_mas_caro;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ObtenerInventarioPorNombre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `ObtenerInventarioPorNombre`(productoNombre VARCHAR(50)) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE cantidad INT;
    SELECT SUM(CantidadDisponible)
    INTO cantidad
    FROM INVENTARIO
    WHERE Nombre = productoNombre;
    RETURN cantidad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarCliente`(IN p_ClienteId INT)
BEGIN
    DELETE FROM CLIENTES WHERE id_clientes = p_ClienteId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarCliente`(
    IN p_Nombre VARCHAR(50),
    IN p_Apellido VARCHAR(50),
    IN p_TipoDocumento VARCHAR(20),
    IN p_NumeroDocumento VARCHAR(20),
    IN p_Telefono VARCHAR(20),
    IN p_Direccion VARCHAR(50),
    IN p_CP VARCHAR(15),
    IN p_Email VARCHAR(100)
)
BEGIN
    INSERT INTO CLIENTES (Nombre, Apellido, TipoDocumento, NumeroDocumento, Telefono, Direccion, CP, Email)
    VALUES (p_Nombre, p_Apellido, p_TipoDocumento, p_NumeroDocumento, p_Telefono, p_Direccion, p_CP, p_Email);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarVehiculoParaCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarVehiculoParaCliente`(
    IN p_ClienteId INT,
    IN p_Marca VARCHAR(50),
    IN p_Modelo VARCHAR(50),
    IN p_Anio INT,
    IN p_Placa VARCHAR(20),
    IN p_Kilometraje INT
)
BEGIN
    INSERT INTO VEHICULOS (Cliente_id, Marca, Modelo, Anio, Placa, Kilometraje)
    VALUES (p_ClienteId, p_Marca, p_Modelo, p_Anio, p_Placa, p_Kilometraje);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OrdenarTabla` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OrdenarTabla`(IN nombreTabla VARCHAR(255), IN columnaOrden VARCHAR(255), IN orden VARCHAR(4))
BEGIN
    SET @query = CONCAT('SELECT * FROM ', nombreTabla, ' ORDER BY ', columnaOrden, ' ', orden);
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vistaclientesconvehiculos`
--

/*!50001 DROP VIEW IF EXISTS `vistaclientesconvehiculos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistaclientesconvehiculos` AS select `c`.`id_clientes` AS `id_clientes`,`c`.`Nombre` AS `Nombre`,`c`.`Apellido` AS `Apellido`,`c`.`Telefono` AS `Telefono`,`c`.`Direccion` AS `Direccion`,`v`.`Marca` AS `Marca`,`v`.`Modelo` AS `Modelo`,`v`.`Placa` AS `Placa` from (`clientes` `c` left join `vehiculos` `v` on((`c`.`id_clientes` = `v`.`Cliente_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistacomprastotalesporproveedor`
--

/*!50001 DROP VIEW IF EXISTS `vistacomprastotalesporproveedor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistacomprastotalesporproveedor` AS select `p`.`Nombre` AS `NombreProveedor`,sum(`c`.`Cantidad`) AS `TotalCompras` from (`proveedores` `p` left join `compras` `c` on((`p`.`id_proveedores` = `c`.`Proveedores_id`))) group by `p`.`Nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistahistorialserviciosdetallado`
--

/*!50001 DROP VIEW IF EXISTS `vistahistorialserviciosdetallado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistahistorialserviciosdetallado` AS select `hs`.`id_historialServicios` AS `id_historialServicios`,`c`.`Nombre` AS `NombreCliente`,`v`.`Modelo` AS `ModeloVehiculo`,`s`.`Descripcion` AS `Servicio`,`e`.`Nombre` AS `NombreEmpleado`,`hs`.`Fecha` AS `Fecha`,`hs`.`Observaciones` AS `Observaciones` from ((((`historialservicios` `hs` join `clientes` `c` on((`hs`.`Vehiculos_id` = `c`.`id_clientes`))) join `vehiculos` `v` on((`hs`.`Vehiculos_id` = `v`.`id_vehiculos`))) join `servicios` `s` on((`hs`.`Servicios_id` = `s`.`id_servicios`))) left join `empleados` `e` on((`hs`.`Empleados_id` = `e`.`id_empleados`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistaventastotalesporcliente`
--

/*!50001 DROP VIEW IF EXISTS `vistaventastotalesporcliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistaventastotalesporcliente` AS select `c`.`Nombre` AS `NombreCliente`,sum(`v`.`Cantidad`) AS `TotalVentas` from (`clientes` `c` left join `ventas` `v` on((`c`.`id_clientes` = `v`.`Clientes_id`))) group by `c`.`id_clientes` */;
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

-- Dump completed on 2023-11-20 13:24:09
