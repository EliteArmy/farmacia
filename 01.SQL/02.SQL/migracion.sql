

DROP TABLE IF EXISTS `categoria`;

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
);


INSERT INTO `categoria` VALUES (1,'Anti-Histeria','I');
INSERT INTO `categoria` VALUES (2,'Productos Dentrificosss','A');
INSERT INTO `categoria` VALUES (3,'Cicatrizante','I');
INSERT INTO `categoria` VALUES (4,'Limpieza varios','A');
INSERT INTO `categoria` VALUES (5,'Analgésicos','A');
INSERT INTO `categoria` VALUES (31,'Antiviral','I');
INSERT INTO `categoria` VALUES (32,'Antiflamatorios','I');

--
-- Table structure for table `categoria_producto`
--

DROP TABLE IF EXISTS `categoria_producto`;

CREATE TABLE `categoria_producto` (
  `id_categoria` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `estado` varchar(1) DEFAULT NULL,
  UNIQUE KEY `id_categoria_id_producto` (`id_categoria`,`id_producto`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `categoria_producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  CONSTRAINT `categoria_producto_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`)
);


INSERT INTO `categoria_producto` VALUES (1,4,'I');
INSERT INTO `categoria_producto` VALUES (1,8,'I');
INSERT INTO `categoria_producto` VALUES (1,15,'I');
INSERT INTO `categoria_producto` VALUES (1,16,'I');
INSERT INTO `categoria_producto` VALUES (1,55,'I');
INSERT INTO `categoria_producto` VALUES (1,57,'I');
INSERT INTO `categoria_producto` VALUES (1,58,'I');
INSERT INTO `categoria_producto` VALUES (1,59,'I');
INSERT INTO `categoria_producto` VALUES (1,60,'I');
INSERT INTO `categoria_producto` VALUES (1,61,'I');
INSERT INTO `categoria_producto` VALUES (1,62,'I');
INSERT INTO `categoria_producto` VALUES (1,77,'I');
INSERT INTO `categoria_producto` VALUES (1,78,'I');
INSERT INTO `categoria_producto` VALUES (1,79,'I');
INSERT INTO `categoria_producto` VALUES (1,81,'I');
INSERT INTO `categoria_producto` VALUES (1,109,'I');
INSERT INTO `categoria_producto` VALUES (1,125,'I');
INSERT INTO `categoria_producto` VALUES (1,128,'I');
INSERT INTO `categoria_producto` VALUES (1,131,'I');
INSERT INTO `categoria_producto` VALUES (1,132,'I');
INSERT INTO `categoria_producto` VALUES (1,133,'I');
INSERT INTO `categoria_producto` VALUES (1,134,'I');
INSERT INTO `categoria_producto` VALUES (1,135,'I');
INSERT INTO `categoria_producto` VALUES (1,136,'I');
INSERT INTO `categoria_producto` VALUES (1,137,'I');
INSERT INTO `categoria_producto` VALUES (1,138,'I');
INSERT INTO `categoria_producto` VALUES (1,141,'I');
INSERT INTO `categoria_producto` VALUES (1,142,'I');
INSERT INTO `categoria_producto` VALUES (1,143,'I');
INSERT INTO `categoria_producto` VALUES (1,144,'I');
INSERT INTO `categoria_producto` VALUES (1,145,'I');
INSERT INTO `categoria_producto` VALUES (1,146,'I');
INSERT INTO `categoria_producto` VALUES (1,147,'I');
INSERT INTO `categoria_producto` VALUES (1,150,'I');
INSERT INTO `categoria_producto` VALUES (1,151,'I');
INSERT INTO `categoria_producto` VALUES (1,153,'I');
INSERT INTO `categoria_producto` VALUES (1,156,'I');
INSERT INTO `categoria_producto` VALUES (1,160,'I');
INSERT INTO `categoria_producto` VALUES (1,161,'I');
INSERT INTO `categoria_producto` VALUES (1,162,'I');
INSERT INTO `categoria_producto` VALUES (1,164,'I');
INSERT INTO `categoria_producto` VALUES (1,165,'I');
INSERT INTO `categoria_producto` VALUES (1,166,'I');
INSERT INTO `categoria_producto` VALUES (1,167,'I');
INSERT INTO `categoria_producto` VALUES (1,169,'I');
INSERT INTO `categoria_producto` VALUES (1,172,'I');
INSERT INTO `categoria_producto` VALUES (1,177,'I');
INSERT INTO `categoria_producto` VALUES (1,178,'I');
INSERT INTO `categoria_producto` VALUES (1,179,'I');
INSERT INTO `categoria_producto` VALUES (1,180,'I');
INSERT INTO `categoria_producto` VALUES (1,181,'I');
INSERT INTO `categoria_producto` VALUES (1,182,'I');
INSERT INTO `categoria_producto` VALUES (1,183,'I');
INSERT INTO `categoria_producto` VALUES (1,184,'I');
INSERT INTO `categoria_producto` VALUES (1,185,'I');
INSERT INTO `categoria_producto` VALUES (1,186,'I');
INSERT INTO `categoria_producto` VALUES (1,188,'I');
INSERT INTO `categoria_producto` VALUES (1,191,'I');
INSERT INTO `categoria_producto` VALUES (1,192,'I');
INSERT INTO `categoria_producto` VALUES (1,193,'I');
INSERT INTO `categoria_producto` VALUES (1,195,'I');
INSERT INTO `categoria_producto` VALUES (1,197,'I');
INSERT INTO `categoria_producto` VALUES (1,198,'I');
INSERT INTO `categoria_producto` VALUES (1,199,'I');
INSERT INTO `categoria_producto` VALUES (1,200,'I');
INSERT INTO `categoria_producto` VALUES (1,201,'I');
INSERT INTO `categoria_producto` VALUES (1,202,'I');
INSERT INTO `categoria_producto` VALUES (1,203,'I');
INSERT INTO `categoria_producto` VALUES (1,204,'I');
INSERT INTO `categoria_producto` VALUES (1,205,'I');
INSERT INTO `categoria_producto` VALUES (1,206,'I');
INSERT INTO `categoria_producto` VALUES (1,207,'I');
INSERT INTO `categoria_producto` VALUES (1,208,'I');
INSERT INTO `categoria_producto` VALUES (1,209,'I');
INSERT INTO `categoria_producto` VALUES (1,210,'I');
INSERT INTO `categoria_producto` VALUES (1,211,'I');
INSERT INTO `categoria_producto` VALUES (1,212,'I');
INSERT INTO `categoria_producto` VALUES (1,213,'I');
INSERT INTO `categoria_producto` VALUES (1,215,'I');
INSERT INTO `categoria_producto` VALUES (1,217,'I');
INSERT INTO `categoria_producto` VALUES (1,218,'I');
INSERT INTO `categoria_producto` VALUES (1,219,'I');
INSERT INTO `categoria_producto` VALUES (1,221,'I');
INSERT INTO `categoria_producto` VALUES (1,222,'I');
INSERT INTO `categoria_producto` VALUES (1,224,'I');
INSERT INTO `categoria_producto` VALUES (1,225,'I');
INSERT INTO `categoria_producto` VALUES (1,226,'I');
INSERT INTO `categoria_producto` VALUES (1,227,'I');
INSERT INTO `categoria_producto` VALUES (1,228,'I');
INSERT INTO `categoria_producto` VALUES (1,229,'I');
INSERT INTO `categoria_producto` VALUES (1,230,'I');
INSERT INTO `categoria_producto` VALUES (1,231,'I');
INSERT INTO `categoria_producto` VALUES (1,232,'I');
INSERT INTO `categoria_producto` VALUES (1,233,'I');
INSERT INTO `categoria_producto` VALUES (1,234,'I');
INSERT INTO `categoria_producto` VALUES (1,235,'I');
INSERT INTO `categoria_producto` VALUES (1,236,'I');
INSERT INTO `categoria_producto` VALUES (1,237,'I');
INSERT INTO `categoria_producto` VALUES (1,238,'I');
INSERT INTO `categoria_producto` VALUES (1,239,'I');
INSERT INTO `categoria_producto` VALUES (1,240,'I');
INSERT INTO `categoria_producto` VALUES (1,241,'I');
INSERT INTO `categoria_producto` VALUES (1,243,'I');
INSERT INTO `categoria_producto` VALUES (1,244,'I');
INSERT INTO `categoria_producto` VALUES (1,245,'I');
INSERT INTO `categoria_producto` VALUES (1,246,'I');
INSERT INTO `categoria_producto` VALUES (1,247,'I');
INSERT INTO `categoria_producto` VALUES (1,248,'I');
INSERT INTO `categoria_producto` VALUES (1,249,'I');
INSERT INTO `categoria_producto` VALUES (1,250,'I');
INSERT INTO `categoria_producto` VALUES (1,251,'I');
INSERT INTO `categoria_producto` VALUES (1,254,'I');
INSERT INTO `categoria_producto` VALUES (1,255,'I');
INSERT INTO `categoria_producto` VALUES (1,256,'I');
INSERT INTO `categoria_producto` VALUES (1,258,'I');
INSERT INTO `categoria_producto` VALUES (1,259,'I');
INSERT INTO `categoria_producto` VALUES (1,261,'I');
INSERT INTO `categoria_producto` VALUES (1,262,'I');
INSERT INTO `categoria_producto` VALUES (1,263,'I');
INSERT INTO `categoria_producto` VALUES (1,270,'I');
INSERT INTO `categoria_producto` VALUES (1,273,'I');
INSERT INTO `categoria_producto` VALUES (1,274,'I');
INSERT INTO `categoria_producto` VALUES (1,275,'I');
INSERT INTO `categoria_producto` VALUES (1,276,'I');
INSERT INTO `categoria_producto` VALUES (1,277,'I');
INSERT INTO `categoria_producto` VALUES (1,278,'I');
INSERT INTO `categoria_producto` VALUES (2,4,'A');
INSERT INTO `categoria_producto` VALUES (2,56,'A');
INSERT INTO `categoria_producto` VALUES (2,57,'A');
INSERT INTO `categoria_producto` VALUES (2,58,'A');
INSERT INTO `categoria_producto` VALUES (2,59,'A');
INSERT INTO `categoria_producto` VALUES (2,60,'A');
INSERT INTO `categoria_producto` VALUES (2,61,'A');
INSERT INTO `categoria_producto` VALUES (2,62,'A');
INSERT INTO `categoria_producto` VALUES (2,77,'A');
INSERT INTO `categoria_producto` VALUES (2,78,'A');
INSERT INTO `categoria_producto` VALUES (2,109,'A');
INSERT INTO `categoria_producto` VALUES (2,119,'A');
INSERT INTO `categoria_producto` VALUES (2,125,'A');
INSERT INTO `categoria_producto` VALUES (2,128,'A');
INSERT INTO `categoria_producto` VALUES (2,129,'A');
INSERT INTO `categoria_producto` VALUES (2,130,'A');
INSERT INTO `categoria_producto` VALUES (2,131,'A');
INSERT INTO `categoria_producto` VALUES (2,133,'A');
INSERT INTO `categoria_producto` VALUES (2,134,'A');
INSERT INTO `categoria_producto` VALUES (2,151,'A');
INSERT INTO `categoria_producto` VALUES (2,153,'A');
INSERT INTO `categoria_producto` VALUES (2,157,'A');
INSERT INTO `categoria_producto` VALUES (2,158,'A');
INSERT INTO `categoria_producto` VALUES (2,192,'A');
INSERT INTO `categoria_producto` VALUES (2,193,'A');
INSERT INTO `categoria_producto` VALUES (2,195,'A');
INSERT INTO `categoria_producto` VALUES (2,196,'A');
INSERT INTO `categoria_producto` VALUES (2,199,'A');
INSERT INTO `categoria_producto` VALUES (2,203,'A');
INSERT INTO `categoria_producto` VALUES (2,204,'A');
INSERT INTO `categoria_producto` VALUES (2,205,'A');
INSERT INTO `categoria_producto` VALUES (2,206,'A');
INSERT INTO `categoria_producto` VALUES (2,207,'A');
INSERT INTO `categoria_producto` VALUES (2,208,'A');
INSERT INTO `categoria_producto` VALUES (2,209,'A');
INSERT INTO `categoria_producto` VALUES (2,210,'A');
INSERT INTO `categoria_producto` VALUES (2,211,'A');
INSERT INTO `categoria_producto` VALUES (2,212,'A');
INSERT INTO `categoria_producto` VALUES (2,213,'A');
INSERT INTO `categoria_producto` VALUES (2,214,'A');
INSERT INTO `categoria_producto` VALUES (2,217,'A');
INSERT INTO `categoria_producto` VALUES (2,218,'A');
INSERT INTO `categoria_producto` VALUES (2,219,'A');
INSERT INTO `categoria_producto` VALUES (2,220,'A');
INSERT INTO `categoria_producto` VALUES (2,223,'A');
INSERT INTO `categoria_producto` VALUES (2,238,'A');
INSERT INTO `categoria_producto` VALUES (2,252,'A');
INSERT INTO `categoria_producto` VALUES (2,253,'A');
INSERT INTO `categoria_producto` VALUES (2,255,'A');
INSERT INTO `categoria_producto` VALUES (2,257,'A');
INSERT INTO `categoria_producto` VALUES (2,258,'A');
INSERT INTO `categoria_producto` VALUES (2,259,'A');
INSERT INTO `categoria_producto` VALUES (2,260,'A');
INSERT INTO `categoria_producto` VALUES (2,261,'A');
INSERT INTO `categoria_producto` VALUES (2,262,'A');
INSERT INTO `categoria_producto` VALUES (2,263,'A');
INSERT INTO `categoria_producto` VALUES (2,270,'A');
INSERT INTO `categoria_producto` VALUES (2,273,'A');
INSERT INTO `categoria_producto` VALUES (2,274,'A');
INSERT INTO `categoria_producto` VALUES (2,275,'A');
INSERT INTO `categoria_producto` VALUES (2,276,'A');
INSERT INTO `categoria_producto` VALUES (2,278,'A');
INSERT INTO `categoria_producto` VALUES (2,279,'A');
INSERT INTO `categoria_producto` VALUES (2,280,'A');
INSERT INTO `categoria_producto` VALUES (2,284,'A');
INSERT INTO `categoria_producto` VALUES (2,285,'A');
INSERT INTO `categoria_producto` VALUES (3,55,'I');
INSERT INTO `categoria_producto` VALUES (3,56,'I');
INSERT INTO `categoria_producto` VALUES (3,57,'I');
INSERT INTO `categoria_producto` VALUES (3,58,'I');
INSERT INTO `categoria_producto` VALUES (3,59,'I');
INSERT INTO `categoria_producto` VALUES (3,60,'I');
INSERT INTO `categoria_producto` VALUES (3,61,'I');
INSERT INTO `categoria_producto` VALUES (3,62,'I');
INSERT INTO `categoria_producto` VALUES (3,77,'I');
INSERT INTO `categoria_producto` VALUES (3,78,'I');
INSERT INTO `categoria_producto` VALUES (3,79,'I');
INSERT INTO `categoria_producto` VALUES (3,81,'I');
INSERT INTO `categoria_producto` VALUES (3,109,'I');
INSERT INTO `categoria_producto` VALUES (3,119,'I');
INSERT INTO `categoria_producto` VALUES (3,137,'I');
INSERT INTO `categoria_producto` VALUES (3,138,'I');
INSERT INTO `categoria_producto` VALUES (3,161,'I');
INSERT INTO `categoria_producto` VALUES (3,162,'I');
INSERT INTO `categoria_producto` VALUES (3,165,'I');
INSERT INTO `categoria_producto` VALUES (3,167,'I');
INSERT INTO `categoria_producto` VALUES (3,169,'I');
INSERT INTO `categoria_producto` VALUES (3,170,'I');
INSERT INTO `categoria_producto` VALUES (3,171,'I');
INSERT INTO `categoria_producto` VALUES (3,172,'I');
INSERT INTO `categoria_producto` VALUES (3,177,'I');
INSERT INTO `categoria_producto` VALUES (3,178,'I');
INSERT INTO `categoria_producto` VALUES (3,181,'I');
INSERT INTO `categoria_producto` VALUES (3,184,'I');
INSERT INTO `categoria_producto` VALUES (3,185,'I');
INSERT INTO `categoria_producto` VALUES (3,193,'I');
INSERT INTO `categoria_producto` VALUES (3,199,'I');
INSERT INTO `categoria_producto` VALUES (3,200,'I');
INSERT INTO `categoria_producto` VALUES (3,203,'I');
INSERT INTO `categoria_producto` VALUES (3,204,'I');
INSERT INTO `categoria_producto` VALUES (3,205,'I');
INSERT INTO `categoria_producto` VALUES (3,206,'I');
INSERT INTO `categoria_producto` VALUES (3,207,'I');
INSERT INTO `categoria_producto` VALUES (3,208,'I');
INSERT INTO `categoria_producto` VALUES (3,209,'I');
INSERT INTO `categoria_producto` VALUES (3,210,'I');
INSERT INTO `categoria_producto` VALUES (3,211,'I');
INSERT INTO `categoria_producto` VALUES (3,212,'I');
INSERT INTO `categoria_producto` VALUES (3,213,'I');
INSERT INTO `categoria_producto` VALUES (3,215,'I');
INSERT INTO `categoria_producto` VALUES (3,216,'I');
INSERT INTO `categoria_producto` VALUES (3,217,'I');
INSERT INTO `categoria_producto` VALUES (3,218,'I');
INSERT INTO `categoria_producto` VALUES (3,219,'I');
INSERT INTO `categoria_producto` VALUES (3,255,'I');
INSERT INTO `categoria_producto` VALUES (3,258,'I');
INSERT INTO `categoria_producto` VALUES (3,259,'I');
INSERT INTO `categoria_producto` VALUES (3,261,'I');
INSERT INTO `categoria_producto` VALUES (3,262,'I');
INSERT INTO `categoria_producto` VALUES (3,263,'I');
INSERT INTO `categoria_producto` VALUES (3,267,'I');
INSERT INTO `categoria_producto` VALUES (3,268,'I');
INSERT INTO `categoria_producto` VALUES (3,274,'I');
INSERT INTO `categoria_producto` VALUES (3,275,'I');
INSERT INTO `categoria_producto` VALUES (3,276,'I');
INSERT INTO `categoria_producto` VALUES (3,278,'I');
INSERT INTO `categoria_producto` VALUES (4,55,'A');
INSERT INTO `categoria_producto` VALUES (4,56,'A');
INSERT INTO `categoria_producto` VALUES (4,57,'A');
INSERT INTO `categoria_producto` VALUES (4,58,'A');
INSERT INTO `categoria_producto` VALUES (4,59,'A');
INSERT INTO `categoria_producto` VALUES (4,60,'A');
INSERT INTO `categoria_producto` VALUES (4,61,'A');
INSERT INTO `categoria_producto` VALUES (4,62,'A');
INSERT INTO `categoria_producto` VALUES (4,77,'A');
INSERT INTO `categoria_producto` VALUES (4,78,'A');
INSERT INTO `categoria_producto` VALUES (4,127,'A');
INSERT INTO `categoria_producto` VALUES (4,128,'A');
INSERT INTO `categoria_producto` VALUES (4,135,'A');
INSERT INTO `categoria_producto` VALUES (4,136,'A');
INSERT INTO `categoria_producto` VALUES (4,141,'A');
INSERT INTO `categoria_producto` VALUES (4,142,'A');
INSERT INTO `categoria_producto` VALUES (4,144,'A');
INSERT INTO `categoria_producto` VALUES (4,145,'A');
INSERT INTO `categoria_producto` VALUES (4,156,'A');
INSERT INTO `categoria_producto` VALUES (4,157,'A');
INSERT INTO `categoria_producto` VALUES (4,158,'A');
INSERT INTO `categoria_producto` VALUES (4,159,'A');
INSERT INTO `categoria_producto` VALUES (4,160,'A');
INSERT INTO `categoria_producto` VALUES (4,163,'A');
INSERT INTO `categoria_producto` VALUES (4,164,'A');
INSERT INTO `categoria_producto` VALUES (4,179,'A');
INSERT INTO `categoria_producto` VALUES (4,180,'A');
INSERT INTO `categoria_producto` VALUES (4,182,'A');
INSERT INTO `categoria_producto` VALUES (4,183,'A');
INSERT INTO `categoria_producto` VALUES (4,186,'A');
INSERT INTO `categoria_producto` VALUES (4,188,'A');
INSERT INTO `categoria_producto` VALUES (4,191,'A');
INSERT INTO `categoria_producto` VALUES (4,193,'A');
INSERT INTO `categoria_producto` VALUES (4,196,'A');
INSERT INTO `categoria_producto` VALUES (4,197,'A');
INSERT INTO `categoria_producto` VALUES (4,198,'A');
INSERT INTO `categoria_producto` VALUES (4,199,'A');
INSERT INTO `categoria_producto` VALUES (4,203,'A');
INSERT INTO `categoria_producto` VALUES (4,204,'A');
INSERT INTO `categoria_producto` VALUES (4,205,'A');
INSERT INTO `categoria_producto` VALUES (4,206,'A');
INSERT INTO `categoria_producto` VALUES (4,207,'A');
INSERT INTO `categoria_producto` VALUES (4,208,'A');
INSERT INTO `categoria_producto` VALUES (4,209,'A');
INSERT INTO `categoria_producto` VALUES (4,210,'A');
INSERT INTO `categoria_producto` VALUES (4,211,'A');
INSERT INTO `categoria_producto` VALUES (4,212,'A');
INSERT INTO `categoria_producto` VALUES (4,213,'A');
INSERT INTO `categoria_producto` VALUES (4,214,'A');
INSERT INTO `categoria_producto` VALUES (4,215,'A');
INSERT INTO `categoria_producto` VALUES (4,216,'A');
INSERT INTO `categoria_producto` VALUES (4,255,'A');
INSERT INTO `categoria_producto` VALUES (4,264,'A');
INSERT INTO `categoria_producto` VALUES (4,265,'A');
INSERT INTO `categoria_producto` VALUES (4,266,'A');
INSERT INTO `categoria_producto` VALUES (4,269,'A');
INSERT INTO `categoria_producto` VALUES (4,271,'A');
INSERT INTO `categoria_producto` VALUES (4,272,'A');
INSERT INTO `categoria_producto` VALUES (4,277,'A');
INSERT INTO `categoria_producto` VALUES (4,280,'A');
INSERT INTO `categoria_producto` VALUES (4,281,'A');
INSERT INTO `categoria_producto` VALUES (4,282,'A');
INSERT INTO `categoria_producto` VALUES (4,283,'A');
INSERT INTO `categoria_producto` VALUES (4,286,'A');
INSERT INTO `categoria_producto` VALUES (5,242,'A');
INSERT INTO `categoria_producto` VALUES (5,260,'A');
INSERT INTO `categoria_producto` VALUES (5,264,'A');
INSERT INTO `categoria_producto` VALUES (5,265,'A');
INSERT INTO `categoria_producto` VALUES (5,266,'A');
INSERT INTO `categoria_producto` VALUES (5,267,'A');
INSERT INTO `categoria_producto` VALUES (5,268,'A');
INSERT INTO `categoria_producto` VALUES (5,269,'A');
INSERT INTO `categoria_producto` VALUES (5,270,'A');
INSERT INTO `categoria_producto` VALUES (5,271,'A');
INSERT INTO `categoria_producto` VALUES (5,272,'A');
INSERT INTO `categoria_producto` VALUES (5,286,'A');
INSERT INTO `categoria_producto` VALUES (31,260,'I');
INSERT INTO `categoria_producto` VALUES (31,264,'I');
INSERT INTO `categoria_producto` VALUES (31,265,'I');
INSERT INTO `categoria_producto` VALUES (31,266,'A');
INSERT INTO `categoria_producto` VALUES (31,267,'I');
INSERT INTO `categoria_producto` VALUES (31,268,'I');
INSERT INTO `categoria_producto` VALUES (31,272,'I');

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `id_municipio` varchar(4) NOT NULL,
  PRIMARY KEY (`id_ciudad`),
  KEY `ciudad_ibfk_1` (`id_municipio`),
  CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id_municipio`)
);

INSERT INTO `ciudad` VALUES (1,'Tegucigalpa','0801');

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `fecha_registro` date NOT NULL,
  `id_persona` int(11) NOT NULL,
  `estado` varchar(1) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `cliente_uq` (`id_persona`),
  CONSTRAINT `fk_id_persona_cliente` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`)
);

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` VALUES (1,'2019-01-12',31,'A');
INSERT INTO `cliente` VALUES (2,'2019-01-12',32,'A');
INSERT INTO `cliente` VALUES (3,'2019-01-12',33,'A');
INSERT INTO `cliente` VALUES (4,'2019-01-12',34,'A');
INSERT INTO `cliente` VALUES (5,'2019-01-12',35,'A');
INSERT INTO `cliente` VALUES (6,'2019-01-12',36,'A');
INSERT INTO `cliente` VALUES (7,'2019-01-12',37,'A');
INSERT INTO `cliente` VALUES (8,'2019-01-12',38,'A');
INSERT INTO `cliente` VALUES (9,'2019-01-12',39,'A');
INSERT INTO `cliente` VALUES (10,'2019-01-12',40,'A');
INSERT INTO `cliente` VALUES (11,'2019-01-12',41,'A');
INSERT INTO `cliente` VALUES (12,'2019-01-12',42,'A');
INSERT INTO `cliente` VALUES (13,'2019-01-12',43,'A');
INSERT INTO `cliente` VALUES (14,'2019-01-12',44,'A');
INSERT INTO `cliente` VALUES (15,'2019-01-12',45,'A');
INSERT INTO `cliente` VALUES (16,'2019-01-12',46,'A');
INSERT INTO `cliente` VALUES (17,'2019-01-12',47,'A');
INSERT INTO `cliente` VALUES (18,'2019-01-12',48,'A');
INSERT INTO `cliente` VALUES (19,'2019-01-12',49,'A');
INSERT INTO `cliente` VALUES (20,'2019-01-12',50,'A');
INSERT INTO `cliente` VALUES (21,'2019-01-12',51,'A');
INSERT INTO `cliente` VALUES (22,'2019-01-12',52,'A');
INSERT INTO `cliente` VALUES (23,'2019-01-12',53,'A');
INSERT INTO `cliente` VALUES (24,'2019-01-12',54,'A');
INSERT INTO `cliente` VALUES (25,'2019-01-12',55,'A');
INSERT INTO `cliente` VALUES (26,'2019-01-12',56,'A');
INSERT INTO `cliente` VALUES (27,'2019-01-12',57,'A');
INSERT INTO `cliente` VALUES (28,'2019-01-12',58,'A');
INSERT INTO `cliente` VALUES (29,'2019-01-12',59,'A');
INSERT INTO `cliente` VALUES (30,'2019-01-12',60,'A');
INSERT INTO `cliente` VALUES (31,'2019-01-12',61,'A');
INSERT INTO `cliente` VALUES (32,'2019-01-12',62,'A');
INSERT INTO `cliente` VALUES (33,'2019-01-12',63,'A');
INSERT INTO `cliente` VALUES (34,'2019-01-12',64,'A');
INSERT INTO `cliente` VALUES (35,'2019-01-12',65,'A');
INSERT INTO `cliente` VALUES (36,'2019-01-12',66,'A');
INSERT INTO `cliente` VALUES (37,'2019-01-12',67,'A');
INSERT INTO `cliente` VALUES (38,'2019-01-12',68,'A');
INSERT INTO `cliente` VALUES (39,'2019-01-12',69,'A');
INSERT INTO `cliente` VALUES (40,'2019-01-12',70,'A');
INSERT INTO `cliente` VALUES (41,'2019-01-12',71,'A');
INSERT INTO `cliente` VALUES (42,'2019-01-12',72,'A');
INSERT INTO `cliente` VALUES (43,'2019-01-12',73,'A');
INSERT INTO `cliente` VALUES (44,'2019-01-12',74,'A');
INSERT INTO `cliente` VALUES (45,'2019-01-12',75,'A');
INSERT INTO `cliente` VALUES (46,'2019-01-12',76,'A');
INSERT INTO `cliente` VALUES (47,'2019-01-12',77,'A');
INSERT INTO `cliente` VALUES (48,'2019-01-12',78,'A');
INSERT INTO `cliente` VALUES (49,'2019-01-12',79,'A');
INSERT INTO `cliente` VALUES (50,'2019-01-12',80,'A');
INSERT INTO `cliente` VALUES (51,'2019-01-12',81,'A');
INSERT INTO `cliente` VALUES (52,'2019-01-12',82,'A');
INSERT INTO `cliente` VALUES (53,'2019-01-12',83,'A');
INSERT INTO `cliente` VALUES (54,'2019-01-12',84,'A');
INSERT INTO `cliente` VALUES (55,'2019-01-12',85,'A');
INSERT INTO `cliente` VALUES (56,'2019-01-12',86,'A');
INSERT INTO `cliente` VALUES (57,'2019-01-12',87,'A');
INSERT INTO `cliente` VALUES (58,'2019-01-12',88,'A');
INSERT INTO `cliente` VALUES (59,'2019-01-12',89,'A');
INSERT INTO `cliente` VALUES (60,'2019-01-12',90,'A');
INSERT INTO `cliente` VALUES (61,'2019-01-12',91,'A');
INSERT INTO `cliente` VALUES (62,'2019-01-12',92,'A');
INSERT INTO `cliente` VALUES (63,'2019-01-12',93,'A');
INSERT INTO `cliente` VALUES (64,'2019-01-12',94,'A');
INSERT INTO `cliente` VALUES (65,'2019-01-12',95,'A');
INSERT INTO `cliente` VALUES (66,'2019-01-12',96,'A');
INSERT INTO `cliente` VALUES (67,'2019-01-12',97,'A');
INSERT INTO `cliente` VALUES (68,'2019-01-12',98,'A');
INSERT INTO `cliente` VALUES (69,'2019-01-12',99,'A');
INSERT INTO `cliente` VALUES (70,'2019-01-12',100,'A');
INSERT INTO `cliente` VALUES (71,'2019-01-12',101,'A');
INSERT INTO `cliente` VALUES (72,'2019-01-12',102,'A');
INSERT INTO `cliente` VALUES (73,'2019-01-12',103,'A');
INSERT INTO `cliente` VALUES (74,'2019-01-12',104,'A');
INSERT INTO `cliente` VALUES (75,'2019-01-12',105,'A');
INSERT INTO `cliente` VALUES (76,'2019-01-12',106,'A');
INSERT INTO `cliente` VALUES (77,'2019-01-12',107,'A');
INSERT INTO `cliente` VALUES (78,'2019-01-12',108,'A');
INSERT INTO `cliente` VALUES (79,'2019-01-12',109,'A');
INSERT INTO `cliente` VALUES (80,'2019-01-12',110,'A');
INSERT INTO `cliente` VALUES (81,'2019-01-12',111,'A');
INSERT INTO `cliente` VALUES (82,'2019-01-12',112,'A');
INSERT INTO `cliente` VALUES (83,'2019-01-12',113,'A');
INSERT INTO `cliente` VALUES (84,'2019-01-12',114,'A');
INSERT INTO `cliente` VALUES (85,'2019-01-12',115,'A');
INSERT INTO `cliente` VALUES (86,'2019-01-12',116,'A');
INSERT INTO `cliente` VALUES (87,'2019-01-12',117,'A');
INSERT INTO `cliente` VALUES (88,'2019-01-12',118,'A');
INSERT INTO `cliente` VALUES (89,'2019-01-12',119,'A');
INSERT INTO `cliente` VALUES (90,'2019-01-12',120,'A');
INSERT INTO `cliente` VALUES (91,'2019-01-12',121,'A');
INSERT INTO `cliente` VALUES (92,'2019-01-12',122,'A');
INSERT INTO `cliente` VALUES (93,'2019-01-12',123,'A');
INSERT INTO `cliente` VALUES (94,'2019-01-12',124,'A');
INSERT INTO `cliente` VALUES (95,'2019-01-12',125,'A');
INSERT INTO `cliente` VALUES (96,'2019-01-12',126,'A');
INSERT INTO `cliente` VALUES (97,'2019-01-12',127,'A');
INSERT INTO `cliente` VALUES (98,'2019-01-12',128,'A');
INSERT INTO `cliente` VALUES (99,'2019-01-12',129,'A');
INSERT INTO `cliente` VALUES (100,'2019-01-12',130,'A');
INSERT INTO `cliente` VALUES (101,'2019-01-12',131,'A');
INSERT INTO `cliente` VALUES (102,'2019-01-12',132,'A');
INSERT INTO `cliente` VALUES (103,'2019-01-12',133,'A');
INSERT INTO `cliente` VALUES (104,'2019-01-12',134,'A');
INSERT INTO `cliente` VALUES (105,'2019-01-12',135,'A');
INSERT INTO `cliente` VALUES (106,'2019-01-12',136,'A');
INSERT INTO `cliente` VALUES (107,'2019-01-12',137,'A');
INSERT INTO `cliente` VALUES (108,'2019-01-12',138,'A');
INSERT INTO `cliente` VALUES (109,'2019-01-12',139,'A');
INSERT INTO `cliente` VALUES (110,'2019-01-12',140,'A');
INSERT INTO `cliente` VALUES (111,'2019-01-12',141,'A');
INSERT INTO `cliente` VALUES (112,'2019-01-12',142,'A');
INSERT INTO `cliente` VALUES (113,'2019-01-12',143,'A');
INSERT INTO `cliente` VALUES (114,'2019-01-12',144,'A');
INSERT INTO `cliente` VALUES (115,'2019-01-12',145,'A');
INSERT INTO `cliente` VALUES (116,'2019-01-12',146,'A');
INSERT INTO `cliente` VALUES (117,'2019-01-12',147,'A');
INSERT INTO `cliente` VALUES (118,'2019-01-12',148,'A');
INSERT INTO `cliente` VALUES (119,'2019-01-12',149,'A');
INSERT INTO `cliente` VALUES (120,'2019-01-12',150,'A');
INSERT INTO `cliente` VALUES (121,'2019-01-12',151,'A');
INSERT INTO `cliente` VALUES (122,'2019-01-12',152,'A');
INSERT INTO `cliente` VALUES (123,'2019-01-12',153,'A');
INSERT INTO `cliente` VALUES (124,'2019-01-12',154,'A');
INSERT INTO `cliente` VALUES (125,'2019-01-12',155,'A');
INSERT INTO `cliente` VALUES (126,'2019-01-12',156,'A');
INSERT INTO `cliente` VALUES (127,'2019-01-12',157,'A');
INSERT INTO `cliente` VALUES (128,'2019-01-12',158,'A');
INSERT INTO `cliente` VALUES (129,'2019-01-12',159,'A');
INSERT INTO `cliente` VALUES (130,'2019-01-12',160,'A');
INSERT INTO `cliente` VALUES (131,'2019-01-12',161,'A');
INSERT INTO `cliente` VALUES (132,'2019-01-12',162,'A');
INSERT INTO `cliente` VALUES (133,'2019-01-12',163,'A');
INSERT INTO `cliente` VALUES (134,'2019-01-12',164,'A');
INSERT INTO `cliente` VALUES (135,'2019-01-12',165,'A');
INSERT INTO `cliente` VALUES (136,'2019-01-12',166,'A');
INSERT INTO `cliente` VALUES (137,'2019-01-12',167,'A');
INSERT INTO `cliente` VALUES (138,'2019-01-12',168,'A');
INSERT INTO `cliente` VALUES (139,'2019-01-12',169,'A');
INSERT INTO `cliente` VALUES (140,'2019-01-12',170,'A');
INSERT INTO `cliente` VALUES (141,'2019-01-12',171,'A');
INSERT INTO `cliente` VALUES (142,'2019-01-12',172,'A');
INSERT INTO `cliente` VALUES (143,'2019-01-12',173,'A');
INSERT INTO `cliente` VALUES (144,'2019-01-12',174,'A');
INSERT INTO `cliente` VALUES (145,'2019-01-12',175,'A');
INSERT INTO `cliente` VALUES (146,'2019-01-12',176,'A');
INSERT INTO `cliente` VALUES (147,'2019-01-12',177,'A');
INSERT INTO `cliente` VALUES (148,'2019-01-12',178,'A');
INSERT INTO `cliente` VALUES (149,'2019-01-12',179,'A');
INSERT INTO `cliente` VALUES (150,'2019-01-12',180,'A');
INSERT INTO `cliente` VALUES (151,'2019-01-12',181,'A');
INSERT INTO `cliente` VALUES (152,'2019-01-12',182,'A');
INSERT INTO `cliente` VALUES (153,'2019-01-12',183,'A');
INSERT INTO `cliente` VALUES (154,'2019-01-12',184,'A');
INSERT INTO `cliente` VALUES (155,'2019-01-12',185,'A');
INSERT INTO `cliente` VALUES (156,'2019-01-12',186,'A');
INSERT INTO `cliente` VALUES (157,'2019-01-12',187,'A');
INSERT INTO `cliente` VALUES (158,'2019-01-12',188,'A');
INSERT INTO `cliente` VALUES (159,'2019-01-12',189,'A');
INSERT INTO `cliente` VALUES (160,'2019-01-12',190,'A');
INSERT INTO `cliente` VALUES (161,'2019-01-12',191,'A');
INSERT INTO `cliente` VALUES (162,'2019-01-12',192,'A');
INSERT INTO `cliente` VALUES (163,'2019-01-12',193,'A');
INSERT INTO `cliente` VALUES (164,'2019-01-12',194,'A');
INSERT INTO `cliente` VALUES (165,'2019-01-12',195,'A');
INSERT INTO `cliente` VALUES (166,'2019-01-12',196,'A');
INSERT INTO `cliente` VALUES (167,'2019-01-12',197,'A');
INSERT INTO `cliente` VALUES (168,'2019-01-12',198,'A');
INSERT INTO `cliente` VALUES (169,'2019-01-12',199,'A');
INSERT INTO `cliente` VALUES (170,'2019-01-12',200,'A');
INSERT INTO `cliente` VALUES (171,'2019-01-12',201,'A');
INSERT INTO `cliente` VALUES (172,'2019-01-12',202,'A');
INSERT INTO `cliente` VALUES (173,'2019-01-12',203,'A');
INSERT INTO `cliente` VALUES (174,'2019-01-12',204,'A');
INSERT INTO `cliente` VALUES (175,'2019-01-12',205,'A');
INSERT INTO `cliente` VALUES (176,'2019-01-12',206,'A');
INSERT INTO `cliente` VALUES (177,'2019-01-12',207,'A');
INSERT INTO `cliente` VALUES (178,'2019-01-12',208,'A');
INSERT INTO `cliente` VALUES (179,'2019-01-12',209,'A');
INSERT INTO `cliente` VALUES (180,'2019-01-12',210,'A');
INSERT INTO `cliente` VALUES (181,'2019-01-12',211,'A');
INSERT INTO `cliente` VALUES (182,'2019-01-12',212,'A');
INSERT INTO `cliente` VALUES (183,'2019-01-12',213,'A');
INSERT INTO `cliente` VALUES (184,'2019-01-12',214,'A');
INSERT INTO `cliente` VALUES (185,'2019-01-12',215,'A');
INSERT INTO `cliente` VALUES (186,'2019-01-12',216,'A');
INSERT INTO `cliente` VALUES (187,'2019-01-12',217,'A');
INSERT INTO `cliente` VALUES (188,'2019-01-12',218,'A');
INSERT INTO `cliente` VALUES (189,'2019-01-12',219,'A');
INSERT INTO `cliente` VALUES (190,'2019-01-12',220,'A');
INSERT INTO `cliente` VALUES (191,'2019-01-12',221,'A');
INSERT INTO `cliente` VALUES (192,'2019-01-12',222,'A');
INSERT INTO `cliente` VALUES (193,'2019-01-12',223,'A');
INSERT INTO `cliente` VALUES (194,'2019-01-12',224,'A');
INSERT INTO `cliente` VALUES (195,'2019-01-12',225,'A');
INSERT INTO `cliente` VALUES (196,'2019-01-12',226,'A');
INSERT INTO `cliente` VALUES (197,'2019-01-12',227,'A');
INSERT INTO `cliente` VALUES (198,'2019-01-12',228,'A');
INSERT INTO `cliente` VALUES (199,'2019-01-12',229,'A');
INSERT INTO `cliente` VALUES (200,'2019-01-12',230,'A');
INSERT INTO `cliente` VALUES (201,'2019-01-12',231,'A');
INSERT INTO `cliente` VALUES (202,'2019-01-12',232,'A');
INSERT INTO `cliente` VALUES (203,'2019-01-12',233,'A');
INSERT INTO `cliente` VALUES (204,'2019-01-12',234,'A');
INSERT INTO `cliente` VALUES (205,'2019-01-12',235,'A');
INSERT INTO `cliente` VALUES (206,'2019-01-12',236,'A');
INSERT INTO `cliente` VALUES (207,'2019-01-12',237,'A');
INSERT INTO `cliente` VALUES (208,'2019-01-12',238,'A');
INSERT INTO `cliente` VALUES (209,'2019-01-12',239,'A');
INSERT INTO `cliente` VALUES (210,'2019-01-12',240,'A');
INSERT INTO `cliente` VALUES (211,'2019-01-12',241,'A');
INSERT INTO `cliente` VALUES (212,'2019-01-12',242,'A');
INSERT INTO `cliente` VALUES (213,'2019-01-12',243,'A');
INSERT INTO `cliente` VALUES (214,'2019-01-12',244,'A');
INSERT INTO `cliente` VALUES (215,'2019-01-12',245,'A');
INSERT INTO `cliente` VALUES (216,'2019-01-12',246,'A');
INSERT INTO `cliente` VALUES (217,'2019-01-12',247,'A');
INSERT INTO `cliente` VALUES (218,'2019-01-12',248,'A');
INSERT INTO `cliente` VALUES (219,'2019-01-12',249,'A');
INSERT INTO `cliente` VALUES (220,'2019-01-12',250,'A');
INSERT INTO `cliente` VALUES (221,'2019-01-12',251,'A');
INSERT INTO `cliente` VALUES (222,'2019-01-12',252,'A');
INSERT INTO `cliente` VALUES (223,'2019-01-12',253,'A');
INSERT INTO `cliente` VALUES (224,'2019-01-12',254,'A');
INSERT INTO `cliente` VALUES (225,'2019-01-12',255,'A');
INSERT INTO `cliente` VALUES (226,'2019-01-12',256,'A');
INSERT INTO `cliente` VALUES (227,'2019-01-12',257,'A');
INSERT INTO `cliente` VALUES (228,'2019-01-12',258,'A');
INSERT INTO `cliente` VALUES (229,'2019-01-12',259,'A');
INSERT INTO `cliente` VALUES (230,'2019-01-12',260,'A');
INSERT INTO `cliente` VALUES (231,'2019-01-12',261,'A');
INSERT INTO `cliente` VALUES (232,'2019-01-12',262,'A');
INSERT INTO `cliente` VALUES (233,'2019-01-12',263,'A');
INSERT INTO `cliente` VALUES (234,'2019-01-12',264,'A');
INSERT INTO `cliente` VALUES (235,'2019-01-12',265,'A');
INSERT INTO `cliente` VALUES (236,'2019-01-12',266,'A');
INSERT INTO `cliente` VALUES (237,'2019-01-12',267,'A');
INSERT INTO `cliente` VALUES (238,'2019-01-12',268,'A');
INSERT INTO `cliente` VALUES (239,'2019-01-12',269,'A');
INSERT INTO `cliente` VALUES (240,'2019-01-12',270,'A');
INSERT INTO `cliente` VALUES (241,'2019-01-12',271,'A');
INSERT INTO `cliente` VALUES (242,'2019-01-12',272,'A');
INSERT INTO `cliente` VALUES (243,'2019-01-12',273,'A');
INSERT INTO `cliente` VALUES (244,'2019-01-12',274,'A');
INSERT INTO `cliente` VALUES (245,'2019-01-12',275,'A');
INSERT INTO `cliente` VALUES (246,'2019-01-12',276,'A');
INSERT INTO `cliente` VALUES (247,'2019-01-12',277,'A');
INSERT INTO `cliente` VALUES (248,'2019-01-12',278,'A');
INSERT INTO `cliente` VALUES (249,'2019-01-12',279,'A');
INSERT INTO `cliente` VALUES (250,'2019-01-12',280,'A');
INSERT INTO `cliente` VALUES (251,'2019-01-12',281,'A');
INSERT INTO `cliente` VALUES (252,'2019-01-12',282,'A');
INSERT INTO `cliente` VALUES (253,'2019-01-12',283,'A');
INSERT INTO `cliente` VALUES (254,'2019-01-12',284,'A');
INSERT INTO `cliente` VALUES (255,'2019-01-12',285,'A');
INSERT INTO `cliente` VALUES (256,'2019-01-12',286,'A');
INSERT INTO `cliente` VALUES (257,'2019-01-12',287,'A');
INSERT INTO `cliente` VALUES (258,'2019-01-12',288,'A');
INSERT INTO `cliente` VALUES (259,'2019-01-12',289,'A');
INSERT INTO `cliente` VALUES (260,'2019-01-12',290,'A');
INSERT INTO `cliente` VALUES (261,'2019-01-12',291,'A');
INSERT INTO `cliente` VALUES (262,'2019-01-12',292,'A');
INSERT INTO `cliente` VALUES (263,'2019-01-12',293,'A');
INSERT INTO `cliente` VALUES (264,'2019-01-12',294,'A');
INSERT INTO `cliente` VALUES (265,'2019-01-12',295,'A');
INSERT INTO `cliente` VALUES (266,'2019-01-12',296,'A');
INSERT INTO `cliente` VALUES (267,'2019-01-12',297,'A');
INSERT INTO `cliente` VALUES (268,'2019-01-12',298,'A');
INSERT INTO `cliente` VALUES (269,'2019-01-12',299,'A');
INSERT INTO `cliente` VALUES (270,'2019-01-12',300,'A');
INSERT INTO `cliente` VALUES (271,'2019-01-12',301,'A');
INSERT INTO `cliente` VALUES (272,'2019-01-12',302,'A');
INSERT INTO `cliente` VALUES (273,'2019-01-12',303,'A');
INSERT INTO `cliente` VALUES (274,'2019-01-12',304,'A');
INSERT INTO `cliente` VALUES (275,'2019-01-12',305,'A');
INSERT INTO `cliente` VALUES (276,'2019-01-12',306,'A');
INSERT INTO `cliente` VALUES (277,'2019-01-12',307,'A');
INSERT INTO `cliente` VALUES (278,'2019-01-12',308,'A');
INSERT INTO `cliente` VALUES (279,'2019-01-12',309,'A');
INSERT INTO `cliente` VALUES (280,'2019-01-12',310,'A');
INSERT INTO `cliente` VALUES (281,'2019-01-12',311,'A');
INSERT INTO `cliente` VALUES (282,'2019-01-12',312,'A');
INSERT INTO `cliente` VALUES (283,'2019-01-12',313,'A');
INSERT INTO `cliente` VALUES (284,'2019-01-12',314,'A');
INSERT INTO `cliente` VALUES (285,'2019-01-12',315,'A');
INSERT INTO `cliente` VALUES (286,'2019-01-12',316,'A');
INSERT INTO `cliente` VALUES (287,'2019-01-12',317,'A');
INSERT INTO `cliente` VALUES (288,'2019-01-12',318,'A');
INSERT INTO `cliente` VALUES (289,'2019-01-12',319,'A');
INSERT INTO `cliente` VALUES (290,'2019-01-12',320,'A');
INSERT INTO `cliente` VALUES (291,'2019-01-12',321,'A');
INSERT INTO `cliente` VALUES (292,'2019-01-12',322,'A');
INSERT INTO `cliente` VALUES (293,'2019-01-12',323,'A');
INSERT INTO `cliente` VALUES (294,'2019-01-12',324,'A');
INSERT INTO `cliente` VALUES (295,'2019-01-12',325,'A');
INSERT INTO `cliente` VALUES (296,'2019-01-12',326,'A');
INSERT INTO `cliente` VALUES (297,'2019-01-12',327,'A');
INSERT INTO `cliente` VALUES (298,'2019-01-12',328,'A');
INSERT INTO `cliente` VALUES (299,'2019-01-12',329,'A');
INSERT INTO `cliente` VALUES (300,'2019-01-12',330,'A');
INSERT INTO `cliente` VALUES (301,'2019-01-12',331,'A');
INSERT INTO `cliente` VALUES (302,'2019-01-12',332,'A');
INSERT INTO `cliente` VALUES (303,'2019-01-12',333,'A');
INSERT INTO `cliente` VALUES (304,'2019-01-12',334,'A');
INSERT INTO `cliente` VALUES (305,'2019-01-12',335,'A');
INSERT INTO `cliente` VALUES (306,'2019-01-12',336,'A');
INSERT INTO `cliente` VALUES (307,'2019-01-12',337,'A');
INSERT INTO `cliente` VALUES (308,'2019-01-12',338,'A');
INSERT INTO `cliente` VALUES (309,'2019-01-12',339,'A');
INSERT INTO `cliente` VALUES (310,'2019-01-12',340,'A');
INSERT INTO `cliente` VALUES (311,'2019-01-12',341,'A');
INSERT INTO `cliente` VALUES (312,'2019-01-12',342,'A');
INSERT INTO `cliente` VALUES (313,'2019-01-12',343,'A');
INSERT INTO `cliente` VALUES (314,'2019-01-12',344,'A');
INSERT INTO `cliente` VALUES (315,'2019-01-12',345,'A');
INSERT INTO `cliente` VALUES (316,'2019-01-12',346,'A');
INSERT INTO `cliente` VALUES (317,'2019-01-12',347,'A');
INSERT INTO `cliente` VALUES (318,'2019-01-12',348,'A');
INSERT INTO `cliente` VALUES (319,'2019-01-12',349,'A');
INSERT INTO `cliente` VALUES (320,'2019-01-12',350,'A');
INSERT INTO `cliente` VALUES (321,'2019-01-12',351,'A');
INSERT INTO `cliente` VALUES (322,'2019-01-12',352,'A');
INSERT INTO `cliente` VALUES (323,'2019-01-12',353,'A');
INSERT INTO `cliente` VALUES (324,'2019-01-12',354,'A');
INSERT INTO `cliente` VALUES (325,'2019-01-12',355,'A');
INSERT INTO `cliente` VALUES (326,'2019-01-12',356,'A');
INSERT INTO `cliente` VALUES (327,'2019-01-12',357,'A');
INSERT INTO `cliente` VALUES (328,'2019-01-12',358,'A');
INSERT INTO `cliente` VALUES (329,'2019-01-12',359,'A');
INSERT INTO `cliente` VALUES (330,'2019-01-12',360,'A');
INSERT INTO `cliente` VALUES (331,'2019-01-12',361,'A');
INSERT INTO `cliente` VALUES (332,'2019-01-12',362,'A');
INSERT INTO `cliente` VALUES (333,'2019-01-12',363,'A');
INSERT INTO `cliente` VALUES (334,'2019-01-12',364,'A');
INSERT INTO `cliente` VALUES (335,'2019-01-12',365,'A');
INSERT INTO `cliente` VALUES (336,'2019-01-12',366,'A');
INSERT INTO `cliente` VALUES (337,'2019-01-12',367,'A');
INSERT INTO `cliente` VALUES (338,'2019-01-12',368,'A');
INSERT INTO `cliente` VALUES (339,'2019-01-12',369,'A');
INSERT INTO `cliente` VALUES (340,'2019-01-12',370,'A');
INSERT INTO `cliente` VALUES (341,'2019-01-12',371,'A');
INSERT INTO `cliente` VALUES (342,'2019-01-12',372,'A');
INSERT INTO `cliente` VALUES (343,'2019-01-12',373,'A');
INSERT INTO `cliente` VALUES (344,'2019-01-12',374,'A');
INSERT INTO `cliente` VALUES (345,'2019-01-12',375,'A');
INSERT INTO `cliente` VALUES (346,'2019-01-12',376,'A');
INSERT INTO `cliente` VALUES (347,'2019-01-12',377,'A');
INSERT INTO `cliente` VALUES (348,'2019-01-12',378,'A');
INSERT INTO `cliente` VALUES (349,'2019-01-12',379,'A');
INSERT INTO `cliente` VALUES (350,'2019-01-12',380,'A');
INSERT INTO `cliente` VALUES (351,'2019-01-12',381,'A');
INSERT INTO `cliente` VALUES (352,'2019-01-12',382,'A');
INSERT INTO `cliente` VALUES (353,'2019-01-12',383,'A');
INSERT INTO `cliente` VALUES (354,'2019-01-12',384,'A');
INSERT INTO `cliente` VALUES (355,'2019-01-12',385,'A');
INSERT INTO `cliente` VALUES (356,'2019-01-12',386,'A');
INSERT INTO `cliente` VALUES (357,'2019-01-12',387,'A');
INSERT INTO `cliente` VALUES (358,'2019-01-12',388,'A');
INSERT INTO `cliente` VALUES (359,'2019-01-12',389,'A');
INSERT INTO `cliente` VALUES (360,'2019-01-12',390,'A');
INSERT INTO `cliente` VALUES (361,'2019-01-12',391,'A');
INSERT INTO `cliente` VALUES (362,'2019-01-12',392,'A');
INSERT INTO `cliente` VALUES (363,'2019-01-12',393,'A');
INSERT INTO `cliente` VALUES (364,'2019-01-12',394,'A');
INSERT INTO `cliente` VALUES (365,'2019-01-12',395,'A');
INSERT INTO `cliente` VALUES (366,'2019-01-12',396,'A');
INSERT INTO `cliente` VALUES (367,'2019-01-12',397,'A');
INSERT INTO `cliente` VALUES (368,'2019-01-12',398,'A');
INSERT INTO `cliente` VALUES (369,'2019-01-12',399,'A');
INSERT INTO `cliente` VALUES (370,'2019-01-12',400,'A');
INSERT INTO `cliente` VALUES (371,'2019-01-12',401,'A');
INSERT INTO `cliente` VALUES (372,'2019-01-12',402,'A');
INSERT INTO `cliente` VALUES (373,'2019-01-12',403,'A');
INSERT INTO `cliente` VALUES (374,'2019-01-12',404,'A');
INSERT INTO `cliente` VALUES (375,'2019-01-12',405,'A');
INSERT INTO `cliente` VALUES (376,'2019-01-12',406,'A');
INSERT INTO `cliente` VALUES (377,'2019-01-12',407,'A');
INSERT INTO `cliente` VALUES (378,'2019-01-12',408,'A');
INSERT INTO `cliente` VALUES (379,'2019-01-12',409,'A');
INSERT INTO `cliente` VALUES (380,'2019-01-12',410,'A');
INSERT INTO `cliente` VALUES (381,'2019-01-12',411,'A');
INSERT INTO `cliente` VALUES (382,'2019-01-12',412,'A');
INSERT INTO `cliente` VALUES (383,'2019-01-12',413,'A');
INSERT INTO `cliente` VALUES (384,'2019-01-12',414,'A');
INSERT INTO `cliente` VALUES (385,'2019-01-12',415,'A');
INSERT INTO `cliente` VALUES (386,'2019-01-12',416,'A');
INSERT INTO `cliente` VALUES (387,'2019-01-12',417,'A');
INSERT INTO `cliente` VALUES (388,'2019-01-12',418,'A');
INSERT INTO `cliente` VALUES (389,'2019-01-12',419,'A');
INSERT INTO `cliente` VALUES (390,'2019-01-12',420,'A');
INSERT INTO `cliente` VALUES (391,'2019-01-12',421,'A');
INSERT INTO `cliente` VALUES (392,'2019-01-12',422,'A');
INSERT INTO `cliente` VALUES (393,'2019-01-12',423,'A');
INSERT INTO `cliente` VALUES (394,'2019-01-12',424,'A');
INSERT INTO `cliente` VALUES (395,'2019-01-12',425,'A');
INSERT INTO `cliente` VALUES (396,'2019-01-12',426,'A');
INSERT INTO `cliente` VALUES (397,'2019-01-12',427,'A');
INSERT INTO `cliente` VALUES (398,'2019-01-12',428,'A');
INSERT INTO `cliente` VALUES (399,'2019-01-12',429,'A');
INSERT INTO `cliente` VALUES (400,'2019-01-12',430,'A');
INSERT INTO `cliente` VALUES (401,'2019-01-12',431,'A');
INSERT INTO `cliente` VALUES (402,'2019-01-12',432,'A');
INSERT INTO `cliente` VALUES (403,'2019-01-12',433,'A');
INSERT INTO `cliente` VALUES (404,'2019-01-12',434,'A');
INSERT INTO `cliente` VALUES (405,'2019-01-12',435,'A');
INSERT INTO `cliente` VALUES (406,'2019-01-12',436,'A');
INSERT INTO `cliente` VALUES (407,'2019-01-12',437,'A');
INSERT INTO `cliente` VALUES (408,'2019-01-12',438,'A');
INSERT INTO `cliente` VALUES (409,'2019-01-12',439,'A');
INSERT INTO `cliente` VALUES (410,'2019-01-12',440,'A');
INSERT INTO `cliente` VALUES (411,'2019-01-12',441,'A');
INSERT INTO `cliente` VALUES (412,'2019-01-12',442,'A');
INSERT INTO `cliente` VALUES (413,'2019-01-12',443,'A');
INSERT INTO `cliente` VALUES (414,'2019-01-12',444,'A');
INSERT INTO `cliente` VALUES (415,'2019-01-12',445,'A');
INSERT INTO `cliente` VALUES (416,'2019-01-12',446,'A');
INSERT INTO `cliente` VALUES (417,'2019-01-12',447,'A');
INSERT INTO `cliente` VALUES (418,'2019-01-12',448,'A');
INSERT INTO `cliente` VALUES (419,'2019-01-12',449,'A');
INSERT INTO `cliente` VALUES (420,'2019-01-12',450,'A');
INSERT INTO `cliente` VALUES (421,'2019-01-12',451,'A');
INSERT INTO `cliente` VALUES (422,'2019-01-12',452,'A');
INSERT INTO `cliente` VALUES (423,'2019-01-12',453,'A');
INSERT INTO `cliente` VALUES (424,'2019-01-12',454,'A');
INSERT INTO `cliente` VALUES (425,'2019-01-12',455,'A');
INSERT INTO `cliente` VALUES (426,'2019-01-12',456,'A');
INSERT INTO `cliente` VALUES (427,'2019-01-12',457,'A');
INSERT INTO `cliente` VALUES (428,'2019-01-12',458,'A');
INSERT INTO `cliente` VALUES (429,'2019-01-12',459,'A');
INSERT INTO `cliente` VALUES (430,'2019-01-12',460,'A');
INSERT INTO `cliente` VALUES (431,'2019-01-12',461,'A');
INSERT INTO `cliente` VALUES (432,'2019-01-12',462,'A');
INSERT INTO `cliente` VALUES (433,'2019-01-12',463,'A');
INSERT INTO `cliente` VALUES (434,'2019-01-12',464,'A');
INSERT INTO `cliente` VALUES (435,'2019-01-12',465,'A');
INSERT INTO `cliente` VALUES (436,'2019-01-12',466,'A');
INSERT INTO `cliente` VALUES (437,'2019-01-12',467,'A');
INSERT INTO `cliente` VALUES (438,'2019-01-12',468,'A');
INSERT INTO `cliente` VALUES (439,'2019-01-12',469,'A');
INSERT INTO `cliente` VALUES (440,'2019-01-12',470,'A');
INSERT INTO `cliente` VALUES (441,'2019-01-12',471,'A');
INSERT INTO `cliente` VALUES (442,'2019-01-12',472,'A');
INSERT INTO `cliente` VALUES (443,'2019-01-12',473,'A');
INSERT INTO `cliente` VALUES (444,'2019-01-12',474,'A');
INSERT INTO `cliente` VALUES (445,'2019-01-12',475,'A');
INSERT INTO `cliente` VALUES (446,'2019-01-12',476,'A');
INSERT INTO `cliente` VALUES (447,'2019-01-12',477,'A');
INSERT INTO `cliente` VALUES (448,'2019-01-12',478,'A');
INSERT INTO `cliente` VALUES (449,'2019-01-12',479,'A');
INSERT INTO `cliente` VALUES (450,'2019-01-12',480,'A');
INSERT INTO `cliente` VALUES (451,'2019-01-12',481,'A');
INSERT INTO `cliente` VALUES (452,'2019-01-12',482,'A');
INSERT INTO `cliente` VALUES (453,'2019-01-12',483,'A');
INSERT INTO `cliente` VALUES (454,'2019-01-12',484,'A');
INSERT INTO `cliente` VALUES (455,'2019-01-12',485,'A');
INSERT INTO `cliente` VALUES (456,'2019-01-12',486,'A');
INSERT INTO `cliente` VALUES (457,'2019-01-12',487,'A');
INSERT INTO `cliente` VALUES (458,'2019-01-12',488,'A');
INSERT INTO `cliente` VALUES (459,'2019-01-12',489,'A');
INSERT INTO `cliente` VALUES (460,'2019-01-12',490,'A');
INSERT INTO `cliente` VALUES (461,'2019-01-12',491,'A');
INSERT INTO `cliente` VALUES (462,'2019-01-12',492,'A');
INSERT INTO `cliente` VALUES (463,'2019-01-12',493,'A');
INSERT INTO `cliente` VALUES (464,'2019-01-12',494,'A');
INSERT INTO `cliente` VALUES (465,'2019-01-12',495,'A');
INSERT INTO `cliente` VALUES (466,'2019-01-12',496,'A');
INSERT INTO `cliente` VALUES (467,'2019-01-12',497,'A');
INSERT INTO `cliente` VALUES (468,'2019-01-12',498,'A');
INSERT INTO `cliente` VALUES (469,'2019-01-12',499,'A');
INSERT INTO `cliente` VALUES (470,'2019-01-12',500,'A');
INSERT INTO `cliente` VALUES (471,'2019-03-19',586,'A');

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;

CREATE TABLE `departamento` (
  `id_departamento` varchar(2) NOT NULL,
  `departamento` varchar(100) NOT NULL,
  PRIMARY KEY (`id_departamento`)
);

--
-- Dumping data for table `departamento`
--

INSERT INTO `departamento` VALUES ('01','Atlántida');
INSERT INTO `departamento` VALUES ('02','Colón');
INSERT INTO `departamento` VALUES ('03','Comayagua');
INSERT INTO `departamento` VALUES ('04','Copán');
INSERT INTO `departamento` VALUES ('05','Cortés');
INSERT INTO `departamento` VALUES ('06','Choluteca');
INSERT INTO `departamento` VALUES ('07','El Paraíso');
INSERT INTO `departamento` VALUES ('08','Francisco Morazán');
INSERT INTO `departamento` VALUES ('09','Gracias a Dios');
INSERT INTO `departamento` VALUES ('10','Intibucá');
INSERT INTO `departamento` VALUES ('11','Islas de la Bahía');
INSERT INTO `departamento` VALUES ('12','La Paz');
INSERT INTO `departamento` VALUES ('13','Lempira');
INSERT INTO `departamento` VALUES ('14','Ocotepeque');
INSERT INTO `departamento` VALUES ('15','Olancho');
INSERT INTO `departamento` VALUES ('16','Santa Bárbara');
INSERT INTO `departamento` VALUES ('17','Valle');
INSERT INTO `departamento` VALUES ('18','Yoro');

--
-- Table structure for table `descuento`
--

DROP TABLE IF EXISTS `descuento`;

CREATE TABLE `descuento` (
  `id_descuento` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `porcentaje` int(11) NOT NULL,
  `estado` varchar(1) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  PRIMARY KEY (`id_descuento`)
);


--
-- Dumping data for table `descuento`
--

INSERT INTO `descuento` VALUES (1,'Descuento Liquidacion 2019',10,'I','2019-03-18','2020-12-03');
INSERT INTO `descuento` VALUES (2,'Descuento Verano',20,'I','2018-02-02','2018-02-03');
INSERT INTO `descuento` VALUES (3,'Descuento Invierno',20,'I','2019-02-16','2019-05-05');

INSERT INTO `descuento` VALUES (41,'Dia de las Madres',13,'A','2019-03-05','2019-03-29');
INSERT INTO `descuento` VALUES (42,'Dia del Padre',10,'A','2019-03-06','2020-02-11');
INSERT INTO `descuento` VALUES (47,'Semana Santa',7,'I','2019-03-19','2019-03-23');
INSERT INTO `descuento` VALUES (49,'Dia de la indepencencia',15,'A','2019-03-19','2019-09-15');
INSERT INTO `descuento` VALUES (53,'Ofertas Varias',15,'I','2019-03-19','2019-03-31');

--
-- Table structure for table `descuento_lote`
--

DROP TABLE IF EXISTS `descuento_lote`;

CREATE TABLE `descuento_lote` (
  `id_lote` int(11) NOT NULL,
  `id_descuento` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `estado` varchar(1) NOT NULL,
  KEY `id_lote` (`id_lote`),
  KEY `id_descuento` (`id_descuento`),
  CONSTRAINT `descuento_lote_ibfk_1` FOREIGN KEY (`id_lote`) REFERENCES `lote` (`id_lote`),
  CONSTRAINT `descuento_lote_ibfk_2` FOREIGN KEY (`id_descuento`) REFERENCES `descuento` (`id_descuento`)
);



INSERT INTO `descuento_lote` VALUES (4,2,'2018-02-02','2018-02-02','I');
INSERT INTO `descuento_lote` VALUES (4,2,'2018-02-02','2018-02-02','3');
INSERT INTO `descuento_lote` VALUES (3,2,'2018-02-02','2018-02-02','I');
INSERT INTO `descuento_lote` VALUES (3,2,'2018-02-02','2018-02-02','A');
INSERT INTO `descuento_lote` VALUES (2,2,'2021-03-03','2018-02-02','A');
INSERT INTO `descuento_lote` VALUES (419,3,'2019-02-18',NULL,'A');
INSERT INTO `descuento_lote` VALUES (420,1,'2019-02-18',NULL,'A');
INSERT INTO `descuento_lote` VALUES (421,1,'2019-02-19',NULL,'A');
INSERT INTO `descuento_lote` VALUES (424,1,'2019-02-19',NULL,'A');
INSERT INTO `descuento_lote` VALUES (426,1,'2019-02-19',NULL,'A');
INSERT INTO `descuento_lote` VALUES (427,1,'2019-02-19',NULL,'A');
INSERT INTO `descuento_lote` VALUES (428,1,'2019-02-19',NULL,'A');
INSERT INTO `descuento_lote` VALUES (429,2,'2019-02-19',NULL,'A');
INSERT INTO `descuento_lote` VALUES (430,1,'2019-02-19',NULL,'A');
INSERT INTO `descuento_lote` VALUES (431,1,'2019-02-19',NULL,'A');
INSERT INTO `descuento_lote` VALUES (432,2,'2019-02-19',NULL,'A');
INSERT INTO `descuento_lote` VALUES (433,2,'2019-02-19',NULL,'A');
INSERT INTO `descuento_lote` VALUES (434,3,'2019-02-19',NULL,'A');
INSERT INTO `descuento_lote` VALUES (435,1,'2019-02-20',NULL,'A');
INSERT INTO `descuento_lote` VALUES (436,2,'2019-02-25',NULL,'A');
INSERT INTO `descuento_lote` VALUES (438,1,'2019-02-26',NULL,'I');
INSERT INTO `descuento_lote` VALUES (439,2,'2019-02-26',NULL,'A');
INSERT INTO `descuento_lote` VALUES (440,1,'2019-02-26',NULL,'A');
INSERT INTO `descuento_lote` VALUES (459,1,'2019-03-02',NULL,'A');
INSERT INTO `descuento_lote` VALUES (460,1,'2019-03-02',NULL,'A');
INSERT INTO `descuento_lote` VALUES (464,1,'2019-03-02',NULL,'A');
INSERT INTO `descuento_lote` VALUES (466,1,'2019-03-03','2018-02-03','A');
INSERT INTO `descuento_lote` VALUES (467,2,'2019-03-04','2018-02-03','A');
INSERT INTO `descuento_lote` VALUES (463,1,'2019-03-05','2018-02-03','I');
INSERT INTO `descuento_lote` VALUES (447,1,'2019-03-05','2018-02-03','I');

INSERT INTO `descuento_lote` VALUES (463,41,'2019-03-06','2019-03-29','A');
INSERT INTO `descuento_lote` VALUES (447,3,'2019-03-06','2019-03-23','A');
INSERT INTO `descuento_lote` VALUES (469,1,'2019-03-13','2018-02-03','A');
INSERT INTO `descuento_lote` VALUES (438,2,'2019-03-13','2018-02-03','A');
INSERT INTO `descuento_lote` VALUES (470,1,'2019-03-18','2019-03-19','A');
INSERT INTO `descuento_lote` VALUES (471,42,'2019-03-18','2020-02-02','A');
INSERT INTO `descuento_lote` VALUES (472,42,'2019-03-18','2020-02-02','A');
INSERT INTO `descuento_lote` VALUES (473,42,'2019-03-18','2020-02-02','A');
INSERT INTO `descuento_lote` VALUES (1,5,'2019-03-19','2020-02-03','A');

--
-- Table structure for table `detalle_factura`
--

DROP TABLE IF EXISTS `detalle_factura`;

CREATE TABLE `detalle_factura` (
  `id_factura` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_lote` int(11) NOT NULL,
  `id_descuento` int(11) DEFAULT NULL,
  `id_impuesto` int(11) DEFAULT NULL,
  KEY `id_factura` (`id_factura`),
  KEY `id_lote` (`id_lote`),
  KEY `fk_id_descuento_detalle` (`id_descuento`),
  KEY `fk_id_impuesto_detalle` (`id_impuesto`),
  CONSTRAINT `detalle_factura_ibfk_1` FOREIGN KEY (`id_factura`) REFERENCES `factura` (`id_factura`),
  CONSTRAINT `detalle_factura_ibfk_2` FOREIGN KEY (`id_lote`) REFERENCES `lote` (`id_lote`),
  CONSTRAINT `fk_id_descuento_detalle` FOREIGN KEY (`id_descuento`) REFERENCES `descuento` (`id_descuento`),
  CONSTRAINT `fk_id_impuesto_detalle` FOREIGN KEY (`id_impuesto`) REFERENCES `impuesto` (`id_impuesto`)
);

INSERT INTO `detalle_factura` VALUES (1,158,5,3,3);
INSERT INTO `detalle_factura` VALUES (2,1195,20,NULL,3);
INSERT INTO `detalle_factura` VALUES (3,1246,24,NULL,3);
INSERT INTO `detalle_factura` VALUES (4,496,43,NULL,3);
INSERT INTO `detalle_factura` VALUES (5,142,44,NULL,3);
INSERT INTO `detalle_factura` VALUES (6,913,51,NULL,3);
INSERT INTO `detalle_factura` VALUES (7,1186,55,NULL,3);
INSERT INTO `detalle_factura` VALUES (8,683,57,NULL,3);
INSERT INTO `detalle_factura` VALUES (9,1029,59,NULL,3);
INSERT INTO `detalle_factura` VALUES (10,1788,65,NULL,3);
INSERT INTO `detalle_factura` VALUES (11,647,68,NULL,3);
INSERT INTO `detalle_factura` VALUES (12,291,75,NULL,3);
INSERT INTO `detalle_factura` VALUES (13,657,76,NULL,3);
INSERT INTO `detalle_factura` VALUES (14,688,77,NULL,3);
INSERT INTO `detalle_factura` VALUES (15,21,82,NULL,3);
INSERT INTO `detalle_factura` VALUES (16,1484,84,NULL,3);
INSERT INTO `detalle_factura` VALUES (17,1129,90,NULL,3);
INSERT INTO `detalle_factura` VALUES (18,989,98,NULL,3);
INSERT INTO `detalle_factura` VALUES (19,223,99,NULL,3);
INSERT INTO `detalle_factura` VALUES (20,438,106,NULL,3);
INSERT INTO `detalle_factura` VALUES (21,1719,108,NULL,3);
INSERT INTO `detalle_factura` VALUES (22,615,114,NULL,3);
INSERT INTO `detalle_factura` VALUES (23,1549,131,NULL,3);
INSERT INTO `detalle_factura` VALUES (24,269,144,NULL,3);
INSERT INTO `detalle_factura` VALUES (25,1307,164,NULL,3);
INSERT INTO `detalle_factura` VALUES (26,976,165,NULL,3);
INSERT INTO `detalle_factura` VALUES (27,636,166,NULL,3);
INSERT INTO `detalle_factura` VALUES (28,1289,168,NULL,3);
INSERT INTO `detalle_factura` VALUES (29,660,173,NULL,3);
INSERT INTO `detalle_factura` VALUES (30,992,175,NULL,3);
INSERT INTO `detalle_factura` VALUES (31,596,191,NULL,3);
INSERT INTO `detalle_factura` VALUES (32,681,202,NULL,3);
INSERT INTO `detalle_factura` VALUES (33,19,212,NULL,3);
INSERT INTO `detalle_factura` VALUES (34,1110,216,NULL,3);
INSERT INTO `detalle_factura` VALUES (35,2100,236,NULL,3);
INSERT INTO `detalle_factura` VALUES (36,6,246,NULL,3);
INSERT INTO `detalle_factura` VALUES (37,164,252,NULL,3);
INSERT INTO `detalle_factura` VALUES (38,909,258,NULL,3);
INSERT INTO `detalle_factura` VALUES (39,1320,271,NULL,3);
INSERT INTO `detalle_factura` VALUES (40,1886,272,NULL,3);
INSERT INTO `detalle_factura` VALUES (41,1287,283,NULL,3);
INSERT INTO `detalle_factura` VALUES (42,98,306,NULL,3);
INSERT INTO `detalle_factura` VALUES (43,218,322,NULL,3);
INSERT INTO `detalle_factura` VALUES (44,823,337,NULL,3);
INSERT INTO `detalle_factura` VALUES (45,995,341,NULL,3);
INSERT INTO `detalle_factura` VALUES (46,10,359,NULL,3);
INSERT INTO `detalle_factura` VALUES (47,379,364,NULL,3);
INSERT INTO `detalle_factura` VALUES (48,161,379,NULL,3);
INSERT INTO `detalle_factura` VALUES (49,316,393,NULL,2);
INSERT INTO `detalle_factura` VALUES (50,861,396,NULL,3);
INSERT INTO `detalle_factura` VALUES (51,433,398,NULL,3);
INSERT INTO `detalle_factura` VALUES (52,1295,405,NULL,3);
INSERT INTO `detalle_factura` VALUES (52,2,398,NULL,3);
INSERT INTO `detalle_factura` VALUES (53,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (53,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (53,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (53,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (53,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (53,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (53,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (53,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (54,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (54,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (54,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (54,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (54,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (54,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (54,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (54,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (56,1,1,5,3);
INSERT INTO `detalle_factura` VALUES (56,1,1,5,3);
INSERT INTO `detalle_factura` VALUES (56,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (56,1,472,42,2);
INSERT INTO `detalle_factura` VALUES (56,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (56,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (56,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (56,1,472,42,2);
INSERT INTO `detalle_factura` VALUES (56,1,472,42,2);
INSERT INTO `detalle_factura` VALUES (56,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (56,1,472,42,2);
INSERT INTO `detalle_factura` VALUES (56,1,472,42,2);
INSERT INTO `detalle_factura` VALUES (56,1,472,42,2);
INSERT INTO `detalle_factura` VALUES (56,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (56,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (56,1,472,42,2);
INSERT INTO `detalle_factura` VALUES (56,1,473,42,2);
INSERT INTO `detalle_factura` VALUES (65,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (65,1,1,5,3);
INSERT INTO `detalle_factura` VALUES (65,1,2,2,3);
INSERT INTO `detalle_factura` VALUES (65,1,2,2,3);
INSERT INTO `detalle_factura` VALUES (65,1,2,2,3);
INSERT INTO `detalle_factura` VALUES (65,1,2,2,3);
INSERT INTO `detalle_factura` VALUES (65,1,2,2,3);
INSERT INTO `detalle_factura` VALUES (65,1,2,2,3);
INSERT INTO `detalle_factura` VALUES (65,1,2,2,3);
INSERT INTO `detalle_factura` VALUES (66,1,2,2,3);
INSERT INTO `detalle_factura` VALUES (66,1,2,2,3);
INSERT INTO `detalle_factura` VALUES (66,1,2,2,3);
INSERT INTO `detalle_factura` VALUES (66,1,2,2,3);
INSERT INTO `detalle_factura` VALUES (66,1,2,2,3);
INSERT INTO `detalle_factura` VALUES (67,1,2,2,3);
INSERT INTO `detalle_factura` VALUES (67,1,2,2,3);
INSERT INTO `detalle_factura` VALUES (67,1,2,2,3);
INSERT INTO `detalle_factura` VALUES (67,1,2,2,3);
INSERT INTO `detalle_factura` VALUES (70,1,2,2,3);
INSERT INTO `detalle_factura` VALUES (70,1,2,2,3);
INSERT INTO `detalle_factura` VALUES (70,3,1,5,3);
INSERT INTO `detalle_factura` VALUES (70,3,1,5,3);
INSERT INTO `detalle_factura` VALUES (70,3,1,5,3);
INSERT INTO `detalle_factura` VALUES (71,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (71,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (71,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (71,1,472,42,2);
INSERT INTO `detalle_factura` VALUES (71,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (72,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (72,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (72,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (72,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (72,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (72,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (72,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (72,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (72,2,471,42,2);
INSERT INTO `detalle_factura` VALUES (72,10,471,42,2);
INSERT INTO `detalle_factura` VALUES (72,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (72,1,472,42,2);
INSERT INTO `detalle_factura` VALUES (72,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (72,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (72,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (72,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (72,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (72,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (72,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (72,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (75,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (75,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (105,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (105,1,472,42,2);
INSERT INTO `detalle_factura` VALUES (105,1,472,42,2);
INSERT INTO `detalle_factura` VALUES (105,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (108,3,1,5,3);
INSERT INTO `detalle_factura` VALUES (108,3,1,5,3);
INSERT INTO `detalle_factura` VALUES (108,3,1,5,3);
INSERT INTO `detalle_factura` VALUES (119,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (119,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (119,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (120,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (120,2,473,42,2);
INSERT INTO `detalle_factura` VALUES (120,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (121,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (121,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (124,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (124,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (127,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (128,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (139,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (139,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (139,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (139,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (143,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (143,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (143,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (179,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (179,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (179,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (179,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (180,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (180,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (180,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (180,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (181,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (181,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (181,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (181,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (197,1,1,5,3);
INSERT INTO `detalle_factura` VALUES (197,1,1,5,3);
INSERT INTO `detalle_factura` VALUES (197,1,1,5,3);
INSERT INTO `detalle_factura` VALUES (199,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (199,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (199,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (200,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (200,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (201,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (201,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (201,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (201,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (201,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (202,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (202,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (202,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (203,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (203,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (204,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (204,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (204,2,2,2,3);
INSERT INTO `detalle_factura` VALUES (204,2,2,2,3);
INSERT INTO `detalle_factura` VALUES (204,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (204,3,3,2,3);
INSERT INTO `detalle_factura` VALUES (204,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (204,4,4,NULL,3);
INSERT INTO `detalle_factura` VALUES (205,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (205,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (205,2,2,2,3);
INSERT INTO `detalle_factura` VALUES (205,2,2,2,3);
INSERT INTO `detalle_factura` VALUES (205,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (205,3,3,2,3);
INSERT INTO `detalle_factura` VALUES (205,4,1,5,3);
INSERT INTO `detalle_factura` VALUES (206,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (206,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (207,4,4,NULL,3);
INSERT INTO `detalle_factura` VALUES (207,2,4,NULL,3);
INSERT INTO `detalle_factura` VALUES (208,2,4,NULL,3);
INSERT INTO `detalle_factura` VALUES (208,2,1,5,3);
INSERT INTO `detalle_factura` VALUES (209,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (209,1,472,42,2);
INSERT INTO `detalle_factura` VALUES (209,2,471,42,2);
INSERT INTO `detalle_factura` VALUES (210,3,471,42,2);
INSERT INTO `detalle_factura` VALUES (210,2,471,42,2);
INSERT INTO `detalle_factura` VALUES (210,4,472,42,2);
INSERT INTO `detalle_factura` VALUES (211,2,471,42,2);
INSERT INTO `detalle_factura` VALUES (212,1,471,42,2);
INSERT INTO `detalle_factura` VALUES (212,1,472,42,2);

--
-- Table structure for table `detalle_factura_temp`
--

DROP TABLE IF EXISTS `detalle_factura_temp`;

CREATE TABLE `detalle_factura_temp` (
  `id_temporal` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_lote` int(11) NOT NULL,
  `id_descuento` int(11) DEFAULT NULL,
  `id_impuesto` int(11) DEFAULT NULL,
  `codigo_barra` varchar(45) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `total_descuento` double DEFAULT NULL,
  `total_impuesto` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`id_temporal`),
  UNIQUE KEY `detalle_factura_temp_id_temporal_uindex` (`id_temporal`)
);

INSERT INTO `detalle_factura_temp` VALUES (403,1,473,42,2,'7504800172101',1,'aaaLorem2',15,22.5,150,157.5);

--
-- Table structure for table `detalle_movimiento`
--

DROP TABLE IF EXISTS `detalle_movimiento`;

CREATE TABLE `detalle_movimiento` (
  `id_movimiento` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_lote` int(11) NOT NULL,
  KEY `id_movimiento` (`id_movimiento`),
  KEY `id_lote` (`id_lote`),
  CONSTRAINT `detalle_movimiento_ibfk_1` FOREIGN KEY (`id_movimiento`) REFERENCES `movimiento_producto` (`id_movimiento`),
  CONSTRAINT `detalle_movimiento_ibfk_2` FOREIGN KEY (`id_lote`) REFERENCES `lote` (`id_lote`)
);

INSERT INTO `detalle_movimiento` VALUES (4,81,10);
INSERT INTO `detalle_movimiento` VALUES (4,100,43);
INSERT INTO `detalle_movimiento` VALUES (4,100,65);
INSERT INTO `detalle_movimiento` VALUES (4,93,90);
INSERT INTO `detalle_movimiento` VALUES (4,92,91);
INSERT INTO `detalle_movimiento` VALUES (4,52,122);
INSERT INTO `detalle_movimiento` VALUES (4,62,130);
INSERT INTO `detalle_movimiento` VALUES (4,61,136);
INSERT INTO `detalle_movimiento` VALUES (4,96,144);
INSERT INTO `detalle_movimiento` VALUES (4,88,157);
INSERT INTO `detalle_movimiento` VALUES (4,70,165);
INSERT INTO `detalle_movimiento` VALUES (4,67,168);
INSERT INTO `detalle_movimiento` VALUES (4,68,174);
INSERT INTO `detalle_movimiento` VALUES (4,68,184);
INSERT INTO `detalle_movimiento` VALUES (4,92,190);
INSERT INTO `detalle_movimiento` VALUES (4,67,191);
INSERT INTO `detalle_movimiento` VALUES (4,65,199);
INSERT INTO `detalle_movimiento` VALUES (4,85,244);
INSERT INTO `detalle_movimiento` VALUES (4,69,256);
INSERT INTO `detalle_movimiento` VALUES (4,93,272);
INSERT INTO `detalle_movimiento` VALUES (4,88,283);
INSERT INTO `detalle_movimiento` VALUES (4,69,290);
INSERT INTO `detalle_movimiento` VALUES (4,63,306);
INSERT INTO `detalle_movimiento` VALUES (4,88,337);
INSERT INTO `detalle_movimiento` VALUES (4,61,341);
INSERT INTO `detalle_movimiento` VALUES (4,90,379);
INSERT INTO `detalle_movimiento` VALUES (4,79,393);
INSERT INTO `detalle_movimiento` VALUES (4,60,396);
INSERT INTO `detalle_movimiento` VALUES (5,94,4);
INSERT INTO `detalle_movimiento` VALUES (5,63,14);
INSERT INTO `detalle_movimiento` VALUES (5,93,20);
INSERT INTO `detalle_movimiento` VALUES (5,70,22);
INSERT INTO `detalle_movimiento` VALUES (5,51,24);
INSERT INTO `detalle_movimiento` VALUES (5,52,25);
INSERT INTO `detalle_movimiento` VALUES (5,77,30);
INSERT INTO `detalle_movimiento` VALUES (5,83,32);
INSERT INTO `detalle_movimiento` VALUES (5,52,35);
INSERT INTO `detalle_movimiento` VALUES (5,54,37);
INSERT INTO `detalle_movimiento` VALUES (5,66,40);
INSERT INTO `detalle_movimiento` VALUES (5,98,44);
INSERT INTO `detalle_movimiento` VALUES (5,92,52);
INSERT INTO `detalle_movimiento` VALUES (5,95,55);
INSERT INTO `detalle_movimiento` VALUES (5,75,57);
INSERT INTO `detalle_movimiento` VALUES (5,76,59);
INSERT INTO `detalle_movimiento` VALUES (5,58,65);
INSERT INTO `detalle_movimiento` VALUES (5,101,66);
INSERT INTO `detalle_movimiento` VALUES (5,66,69);
INSERT INTO `detalle_movimiento` VALUES (5,76,75);
INSERT INTO `detalle_movimiento` VALUES (5,63,77);
INSERT INTO `detalle_movimiento` VALUES (5,85,78);
INSERT INTO `detalle_movimiento` VALUES (5,81,82);
INSERT INTO `detalle_movimiento` VALUES (5,59,83);
INSERT INTO `detalle_movimiento` VALUES (5,83,85);
INSERT INTO `detalle_movimiento` VALUES (5,53,88);
INSERT INTO `detalle_movimiento` VALUES (5,58,93);
INSERT INTO `detalle_movimiento` VALUES (5,86,96);
INSERT INTO `detalle_movimiento` VALUES (5,76,101);
INSERT INTO `detalle_movimiento` VALUES (5,97,104);
INSERT INTO `detalle_movimiento` VALUES (5,76,106);
INSERT INTO `detalle_movimiento` VALUES (5,82,108);
INSERT INTO `detalle_movimiento` VALUES (5,57,109);
INSERT INTO `detalle_movimiento` VALUES (5,62,113);
INSERT INTO `detalle_movimiento` VALUES (1,633,51);
INSERT INTO `detalle_movimiento` VALUES (1,126,272);
INSERT INTO `detalle_movimiento` VALUES (5,77,122);
INSERT INTO `detalle_movimiento` VALUES (5,91,124);
INSERT INTO `detalle_movimiento` VALUES (1,939,364);
INSERT INTO `detalle_movimiento` VALUES (1,40,236);
INSERT INTO `detalle_movimiento` VALUES (5,96,129);
INSERT INTO `detalle_movimiento` VALUES (5,92,130);
INSERT INTO `detalle_movimiento` VALUES (1,270,271);
INSERT INTO `detalle_movimiento` VALUES (5,92,133);
INSERT INTO `detalle_movimiento` VALUES (1,1195,173);
INSERT INTO `detalle_movimiento` VALUES (1,1510,43);
INSERT INTO `detalle_movimiento` VALUES (1,1016,57);
INSERT INTO `detalle_movimiento` VALUES (1,818,5);
INSERT INTO `detalle_movimiento` VALUES (5,82,140);
INSERT INTO `detalle_movimiento` VALUES (5,75,142);
INSERT INTO `detalle_movimiento` VALUES (1,346,283);
INSERT INTO `detalle_movimiento` VALUES (5,52,147);
INSERT INTO `detalle_movimiento` VALUES (5,98,149);
INSERT INTO `detalle_movimiento` VALUES (5,65,151);
INSERT INTO `detalle_movimiento` VALUES (1,1628,252);
INSERT INTO `detalle_movimiento` VALUES (5,90,156);
INSERT INTO `detalle_movimiento` VALUES (5,59,157);
INSERT INTO `detalle_movimiento` VALUES (5,78,162);
INSERT INTO `detalle_movimiento` VALUES (5,73,164);
INSERT INTO `detalle_movimiento` VALUES (1,362,175);
INSERT INTO `detalle_movimiento` VALUES (5,64,166);
INSERT INTO `detalle_movimiento` VALUES (5,89,167);
INSERT INTO `detalle_movimiento` VALUES (1,1635,246);
INSERT INTO `detalle_movimiento` VALUES (5,95,169);
INSERT INTO `detalle_movimiento` VALUES (1,656,75);
INSERT INTO `detalle_movimiento` VALUES (5,75,171);
INSERT INTO `detalle_movimiento` VALUES (5,99,173);
INSERT INTO `detalle_movimiento` VALUES (1,932,166);
INSERT INTO `detalle_movimiento` VALUES (5,84,175);
INSERT INTO `detalle_movimiento` VALUES (5,83,176);
INSERT INTO `detalle_movimiento` VALUES (5,75,184);
INSERT INTO `detalle_movimiento` VALUES (5,86,185);
INSERT INTO `detalle_movimiento` VALUES (5,61,187);
INSERT INTO `detalle_movimiento` VALUES (1,1019,359);
INSERT INTO `detalle_movimiento` VALUES (5,66,190);
INSERT INTO `detalle_movimiento` VALUES (1,187,164);
INSERT INTO `detalle_movimiento` VALUES (1,406,20);
INSERT INTO `detalle_movimiento` VALUES (5,76,196);
INSERT INTO `detalle_movimiento` VALUES (1,817,76);
INSERT INTO `detalle_movimiento` VALUES (1,444,106);
INSERT INTO `detalle_movimiento` VALUES (5,59,199);
INSERT INTO `detalle_movimiento` VALUES (5,57,200);
INSERT INTO `detalle_movimiento` VALUES (1,848,68);
INSERT INTO `detalle_movimiento` VALUES (1,752,396);
INSERT INTO `detalle_movimiento` VALUES (1,632,258);
INSERT INTO `detalle_movimiento` VALUES (5,68,206);
INSERT INTO `detalle_movimiento` VALUES (5,99,207);
INSERT INTO `detalle_movimiento` VALUES (5,66,208);
INSERT INTO `detalle_movimiento` VALUES (1,341,341);
INSERT INTO `detalle_movimiento` VALUES (1,1587,322);
INSERT INTO `detalle_movimiento` VALUES (5,69,212);
INSERT INTO `detalle_movimiento` VALUES (5,60,214);
INSERT INTO `detalle_movimiento` VALUES (5,70,216);
INSERT INTO `detalle_movimiento` VALUES (5,57,218);
INSERT INTO `detalle_movimiento` VALUES (5,72,220);
INSERT INTO `detalle_movimiento` VALUES (1,565,405);
INSERT INTO `detalle_movimiento` VALUES (5,97,225);
INSERT INTO `detalle_movimiento` VALUES (1,506,84);
INSERT INTO `detalle_movimiento` VALUES (1,1080,379);
INSERT INTO `detalle_movimiento` VALUES (5,81,231);
INSERT INTO `detalle_movimiento` VALUES (1,1298,337);
INSERT INTO `detalle_movimiento` VALUES (1,793,114);
INSERT INTO `detalle_movimiento` VALUES (1,83,108);
INSERT INTO `detalle_movimiento` VALUES (5,95,237);
INSERT INTO `detalle_movimiento` VALUES (5,75,238);
INSERT INTO `detalle_movimiento` VALUES (5,81,241);
INSERT INTO `detalle_movimiento` VALUES (5,99,244);
INSERT INTO `detalle_movimiento` VALUES (5,84,245);
INSERT INTO `detalle_movimiento` VALUES (5,96,252);
INSERT INTO `detalle_movimiento` VALUES (5,80,260);
INSERT INTO `detalle_movimiento` VALUES (5,84,264);
INSERT INTO `detalle_movimiento` VALUES (5,60,265);
INSERT INTO `detalle_movimiento` VALUES (5,91,267);
INSERT INTO `detalle_movimiento` VALUES (5,60,272);
INSERT INTO `detalle_movimiento` VALUES (5,58,280);
INSERT INTO `detalle_movimiento` VALUES (5,69,283);
INSERT INTO `detalle_movimiento` VALUES (5,88,285);
INSERT INTO `detalle_movimiento` VALUES (5,84,286);
INSERT INTO `detalle_movimiento` VALUES (5,86,287);
INSERT INTO `detalle_movimiento` VALUES (5,98,288);
INSERT INTO `detalle_movimiento` VALUES (5,97,292);
INSERT INTO `detalle_movimiento` VALUES (5,55,294);
INSERT INTO `detalle_movimiento` VALUES (5,91,296);
INSERT INTO `detalle_movimiento` VALUES (5,64,299);
INSERT INTO `detalle_movimiento` VALUES (5,68,301);
INSERT INTO `detalle_movimiento` VALUES (5,68,303);
INSERT INTO `detalle_movimiento` VALUES (5,93,312);
INSERT INTO `detalle_movimiento` VALUES (5,59,318);
INSERT INTO `detalle_movimiento` VALUES (5,67,320);
INSERT INTO `detalle_movimiento` VALUES (5,76,321);
INSERT INTO `detalle_movimiento` VALUES (5,69,325);
INSERT INTO `detalle_movimiento` VALUES (5,100,327);
INSERT INTO `detalle_movimiento` VALUES (5,61,331);
INSERT INTO `detalle_movimiento` VALUES (5,87,333);
INSERT INTO `detalle_movimiento` VALUES (5,82,336);
INSERT INTO `detalle_movimiento` VALUES (5,64,337);
INSERT INTO `detalle_movimiento` VALUES (5,79,340);
INSERT INTO `detalle_movimiento` VALUES (5,80,343);
INSERT INTO `detalle_movimiento` VALUES (5,62,345);
INSERT INTO `detalle_movimiento` VALUES (5,73,348);
INSERT INTO `detalle_movimiento` VALUES (5,90,352);
INSERT INTO `detalle_movimiento` VALUES (5,98,356);
INSERT INTO `detalle_movimiento` VALUES (5,100,357);
INSERT INTO `detalle_movimiento` VALUES (5,64,359);
INSERT INTO `detalle_movimiento` VALUES (5,84,363);
INSERT INTO `detalle_movimiento` VALUES (5,53,367);
INSERT INTO `detalle_movimiento` VALUES (5,79,372);
INSERT INTO `detalle_movimiento` VALUES (5,89,375);
INSERT INTO `detalle_movimiento` VALUES (5,89,378);
INSERT INTO `detalle_movimiento` VALUES (5,70,381);
INSERT INTO `detalle_movimiento` VALUES (5,96,386);
INSERT INTO `detalle_movimiento` VALUES (5,93,398);
INSERT INTO `detalle_movimiento` VALUES (5,59,400);
INSERT INTO `detalle_movimiento` VALUES (5,93,403);
INSERT INTO `detalle_movimiento` VALUES (5,73,405);
INSERT INTO `detalle_movimiento` VALUES (10,77,6);
INSERT INTO `detalle_movimiento` VALUES (10,59,14);
INSERT INTO `detalle_movimiento` VALUES (10,95,18);
INSERT INTO `detalle_movimiento` VALUES (10,94,24);
INSERT INTO `detalle_movimiento` VALUES (10,85,27);
INSERT INTO `detalle_movimiento` VALUES (10,64,28);
INSERT INTO `detalle_movimiento` VALUES (10,60,32);
INSERT INTO `detalle_movimiento` VALUES (10,97,33);
INSERT INTO `detalle_movimiento` VALUES (10,72,35);
INSERT INTO `detalle_movimiento` VALUES (10,85,36);
INSERT INTO `detalle_movimiento` VALUES (10,63,37);
INSERT INTO `detalle_movimiento` VALUES (10,51,41);
INSERT INTO `detalle_movimiento` VALUES (10,76,43);
INSERT INTO `detalle_movimiento` VALUES (10,88,44);
INSERT INTO `detalle_movimiento` VALUES (10,68,46);
INSERT INTO `detalle_movimiento` VALUES (10,78,49);
INSERT INTO `detalle_movimiento` VALUES (10,70,51);
INSERT INTO `detalle_movimiento` VALUES (10,62,52);
INSERT INTO `detalle_movimiento` VALUES (10,82,54);
INSERT INTO `detalle_movimiento` VALUES (10,54,55);
INSERT INTO `detalle_movimiento` VALUES (10,83,59);
INSERT INTO `detalle_movimiento` VALUES (10,101,65);
INSERT INTO `detalle_movimiento` VALUES (10,76,66);
INSERT INTO `detalle_movimiento` VALUES (10,62,67);
INSERT INTO `detalle_movimiento` VALUES (10,87,73);
INSERT INTO `detalle_movimiento` VALUES (10,58,75);
INSERT INTO `detalle_movimiento` VALUES (10,76,77);
INSERT INTO `detalle_movimiento` VALUES (10,98,78);
INSERT INTO `detalle_movimiento` VALUES (10,51,79);
INSERT INTO `detalle_movimiento` VALUES (10,56,82);
INSERT INTO `detalle_movimiento` VALUES (10,51,83);
INSERT INTO `detalle_movimiento` VALUES (10,70,84);
INSERT INTO `detalle_movimiento` VALUES (10,99,86);
INSERT INTO `detalle_movimiento` VALUES (10,96,90);
INSERT INTO `detalle_movimiento` VALUES (10,78,93);
INSERT INTO `detalle_movimiento` VALUES (10,89,101);
INSERT INTO `detalle_movimiento` VALUES (10,57,103);
INSERT INTO `detalle_movimiento` VALUES (10,62,104);
INSERT INTO `detalle_movimiento` VALUES (10,96,122);
INSERT INTO `detalle_movimiento` VALUES (10,93,127);
INSERT INTO `detalle_movimiento` VALUES (10,83,129);
INSERT INTO `detalle_movimiento` VALUES (10,94,130);
INSERT INTO `detalle_movimiento` VALUES (10,51,134);
INSERT INTO `detalle_movimiento` VALUES (10,88,136);
INSERT INTO `detalle_movimiento` VALUES (10,86,139);
INSERT INTO `detalle_movimiento` VALUES (10,53,140);
INSERT INTO `detalle_movimiento` VALUES (10,79,142);
INSERT INTO `detalle_movimiento` VALUES (1,173,59);
INSERT INTO `detalle_movimiento` VALUES (10,85,147);
INSERT INTO `detalle_movimiento` VALUES (1,429,65);
INSERT INTO `detalle_movimiento` VALUES (1,332,98);
INSERT INTO `detalle_movimiento` VALUES (10,69,155);
INSERT INTO `detalle_movimiento` VALUES (10,94,156);
INSERT INTO `detalle_movimiento` VALUES (10,61,157);
INSERT INTO `detalle_movimiento` VALUES (10,79,162);
INSERT INTO `detalle_movimiento` VALUES (1,1615,44);
INSERT INTO `detalle_movimiento` VALUES (10,96,165);
INSERT INTO `detalle_movimiento` VALUES (10,51,166);
INSERT INTO `detalle_movimiento` VALUES (1,1524,82);
INSERT INTO `detalle_movimiento` VALUES (1,875,306);
INSERT INTO `detalle_movimiento` VALUES (10,68,171);
INSERT INTO `detalle_movimiento` VALUES (1,406,202);
INSERT INTO `detalle_movimiento` VALUES (1,1041,77);
INSERT INTO `detalle_movimiento` VALUES (10,76,175);
INSERT INTO `detalle_movimiento` VALUES (1,134,131);
INSERT INTO `detalle_movimiento` VALUES (1,1179,212);
INSERT INTO `detalle_movimiento` VALUES (10,98,185);
INSERT INTO `detalle_movimiento` VALUES (1,1205,398);
INSERT INTO `detalle_movimiento` VALUES (10,82,189);
INSERT INTO `detalle_movimiento` VALUES (10,90,190);
INSERT INTO `detalle_movimiento` VALUES (10,97,191);
INSERT INTO `detalle_movimiento` VALUES (1,875,165);
INSERT INTO `detalle_movimiento` VALUES (1,1015,90);
INSERT INTO `detalle_movimiento` VALUES (1,584,216);
INSERT INTO `detalle_movimiento` VALUES (1,1646,144);
INSERT INTO `detalle_movimiento` VALUES (1,316,168);
INSERT INTO `detalle_movimiento` VALUES (1,1601,393);
INSERT INTO `detalle_movimiento` VALUES (1,1990,99);
INSERT INTO `detalle_movimiento` VALUES (10,90,203);
INSERT INTO `detalle_movimiento` VALUES (10,79,205);
INSERT INTO `detalle_movimiento` VALUES (10,54,207);
INSERT INTO `detalle_movimiento` VALUES (1,483,24);
INSERT INTO `detalle_movimiento` VALUES (10,98,209);
INSERT INTO `detalle_movimiento` VALUES (1,1170,191);
INSERT INTO `detalle_movimiento` VALUES (1,206,55);
INSERT INTO `detalle_movimiento` VALUES (10,82,214);
INSERT INTO `detalle_movimiento` VALUES (10,70,218);
INSERT INTO `detalle_movimiento` VALUES (10,85,225);
INSERT INTO `detalle_movimiento` VALUES (10,65,226);
INSERT INTO `detalle_movimiento` VALUES (10,88,228);
INSERT INTO `detalle_movimiento` VALUES (10,83,233);
INSERT INTO `detalle_movimiento` VALUES (10,65,234);
INSERT INTO `detalle_movimiento` VALUES (10,64,237);
INSERT INTO `detalle_movimiento` VALUES (10,69,238);
INSERT INTO `detalle_movimiento` VALUES (10,54,247);
INSERT INTO `detalle_movimiento` VALUES (10,72,251);
INSERT INTO `detalle_movimiento` VALUES (10,53,252);
INSERT INTO `detalle_movimiento` VALUES (10,59,256);
INSERT INTO `detalle_movimiento` VALUES (10,98,260);
INSERT INTO `detalle_movimiento` VALUES (10,85,264);
INSERT INTO `detalle_movimiento` VALUES (10,97,265);
INSERT INTO `detalle_movimiento` VALUES (10,67,271);
INSERT INTO `detalle_movimiento` VALUES (10,56,273);
INSERT INTO `detalle_movimiento` VALUES (10,59,280);
INSERT INTO `detalle_movimiento` VALUES (10,51,281);
INSERT INTO `detalle_movimiento` VALUES (10,53,283);
INSERT INTO `detalle_movimiento` VALUES (10,77,285);
INSERT INTO `detalle_movimiento` VALUES (10,65,286);
INSERT INTO `detalle_movimiento` VALUES (10,76,287);
INSERT INTO `detalle_movimiento` VALUES (10,68,290);
INSERT INTO `detalle_movimiento` VALUES (10,78,291);
INSERT INTO `detalle_movimiento` VALUES (10,70,298);
INSERT INTO `detalle_movimiento` VALUES (10,77,301);
INSERT INTO `detalle_movimiento` VALUES (10,53,307);
INSERT INTO `detalle_movimiento` VALUES (10,99,312);
INSERT INTO `detalle_movimiento` VALUES (10,64,320);
INSERT INTO `detalle_movimiento` VALUES (10,84,322);
INSERT INTO `detalle_movimiento` VALUES (10,85,323);
INSERT INTO `detalle_movimiento` VALUES (10,74,324);
INSERT INTO `detalle_movimiento` VALUES (10,54,337);
INSERT INTO `detalle_movimiento` VALUES (10,66,338);
INSERT INTO `detalle_movimiento` VALUES (10,76,340);
INSERT INTO `detalle_movimiento` VALUES (10,101,343);
INSERT INTO `detalle_movimiento` VALUES (10,93,345);
INSERT INTO `detalle_movimiento` VALUES (10,62,346);
INSERT INTO `detalle_movimiento` VALUES (10,59,351);
INSERT INTO `detalle_movimiento` VALUES (10,57,352);
INSERT INTO `detalle_movimiento` VALUES (10,88,356);
INSERT INTO `detalle_movimiento` VALUES (10,58,359);
INSERT INTO `detalle_movimiento` VALUES (10,80,361);
INSERT INTO `detalle_movimiento` VALUES (10,98,364);
INSERT INTO `detalle_movimiento` VALUES (10,81,389);
INSERT INTO `detalle_movimiento` VALUES (10,58,393);
INSERT INTO `detalle_movimiento` VALUES (10,60,395);
INSERT INTO `detalle_movimiento` VALUES (10,80,396);
INSERT INTO `detalle_movimiento` VALUES (10,82,397);
INSERT INTO `detalle_movimiento` VALUES (10,51,398);
INSERT INTO `detalle_movimiento` VALUES (10,84,403);
INSERT INTO `detalle_movimiento` VALUES (10,63,404);
INSERT INTO `detalle_movimiento` VALUES (10,51,405);
INSERT INTO `detalle_movimiento` VALUES (12,80,5);
INSERT INTO `detalle_movimiento` VALUES (12,55,9);
INSERT INTO `detalle_movimiento` VALUES (12,58,18);
INSERT INTO `detalle_movimiento` VALUES (12,79,32);
INSERT INTO `detalle_movimiento` VALUES (12,60,33);
INSERT INTO `detalle_movimiento` VALUES (12,89,41);
INSERT INTO `detalle_movimiento` VALUES (12,53,43);
INSERT INTO `detalle_movimiento` VALUES (12,77,44);
INSERT INTO `detalle_movimiento` VALUES (12,83,51);
INSERT INTO `detalle_movimiento` VALUES (12,66,55);
INSERT INTO `detalle_movimiento` VALUES (12,77,67);
INSERT INTO `detalle_movimiento` VALUES (12,66,69);
INSERT INTO `detalle_movimiento` VALUES (12,91,76);
INSERT INTO `detalle_movimiento` VALUES (12,90,77);
INSERT INTO `detalle_movimiento` VALUES (12,94,84);
INSERT INTO `detalle_movimiento` VALUES (12,73,87);
INSERT INTO `detalle_movimiento` VALUES (12,77,90);
INSERT INTO `detalle_movimiento` VALUES (12,91,99);
INSERT INTO `detalle_movimiento` VALUES (12,56,101);
INSERT INTO `detalle_movimiento` VALUES (12,89,108);
INSERT INTO `detalle_movimiento` VALUES (12,86,113);
INSERT INTO `detalle_movimiento` VALUES (12,96,114);
INSERT INTO `detalle_movimiento` VALUES (12,69,122);
INSERT INTO `detalle_movimiento` VALUES (12,72,129);
INSERT INTO `detalle_movimiento` VALUES (12,75,131);
INSERT INTO `detalle_movimiento` VALUES (12,74,136);
INSERT INTO `detalle_movimiento` VALUES (12,95,139);
INSERT INTO `detalle_movimiento` VALUES (12,101,162);
INSERT INTO `detalle_movimiento` VALUES (12,76,165);
INSERT INTO `detalle_movimiento` VALUES (12,97,168);
INSERT INTO `detalle_movimiento` VALUES (12,69,169);
INSERT INTO `detalle_movimiento` VALUES (12,82,184);
INSERT INTO `detalle_movimiento` VALUES (12,53,191);
INSERT INTO `detalle_movimiento` VALUES (12,52,197);
INSERT INTO `detalle_movimiento` VALUES (12,61,198);
INSERT INTO `detalle_movimiento` VALUES (12,67,205);
INSERT INTO `detalle_movimiento` VALUES (12,99,209);
INSERT INTO `detalle_movimiento` VALUES (12,56,214);
INSERT INTO `detalle_movimiento` VALUES (12,93,224);
INSERT INTO `detalle_movimiento` VALUES (12,54,228);
INSERT INTO `detalle_movimiento` VALUES (12,101,236);
INSERT INTO `detalle_movimiento` VALUES (12,63,237);
INSERT INTO `detalle_movimiento` VALUES (12,99,238);
INSERT INTO `detalle_movimiento` VALUES (12,87,242);
INSERT INTO `detalle_movimiento` VALUES (12,59,263);
INSERT INTO `detalle_movimiento` VALUES (12,63,264);
INSERT INTO `detalle_movimiento` VALUES (12,96,271);
INSERT INTO `detalle_movimiento` VALUES (12,79,272);
INSERT INTO `detalle_movimiento` VALUES (12,69,283);
INSERT INTO `detalle_movimiento` VALUES (12,84,292);
INSERT INTO `detalle_movimiento` VALUES (12,87,296);
INSERT INTO `detalle_movimiento` VALUES (12,79,303);
INSERT INTO `detalle_movimiento` VALUES (12,99,306);
INSERT INTO `detalle_movimiento` VALUES (12,99,320);
INSERT INTO `detalle_movimiento` VALUES (12,88,324);
INSERT INTO `detalle_movimiento` VALUES (12,66,325);
INSERT INTO `detalle_movimiento` VALUES (12,88,330);
INSERT INTO `detalle_movimiento` VALUES (12,71,337);
INSERT INTO `detalle_movimiento` VALUES (12,91,338);
INSERT INTO `detalle_movimiento` VALUES (12,72,343);
INSERT INTO `detalle_movimiento` VALUES (12,76,351);
INSERT INTO `detalle_movimiento` VALUES (12,56,359);
INSERT INTO `detalle_movimiento` VALUES (12,69,367);
INSERT INTO `detalle_movimiento` VALUES (12,71,378);
INSERT INTO `detalle_movimiento` VALUES (12,99,381);
INSERT INTO `detalle_movimiento` VALUES (12,60,393);
INSERT INTO `detalle_movimiento` VALUES (12,99,405);
INSERT INTO `detalle_movimiento` VALUES (13,91,4);
INSERT INTO `detalle_movimiento` VALUES (13,83,6);
INSERT INTO `detalle_movimiento` VALUES (13,56,9);
INSERT INTO `detalle_movimiento` VALUES (13,77,11);
INSERT INTO `detalle_movimiento` VALUES (13,90,13);
INSERT INTO `detalle_movimiento` VALUES (13,77,16);
INSERT INTO `detalle_movimiento` VALUES (13,98,18);
INSERT INTO `detalle_movimiento` VALUES (13,96,24);
INSERT INTO `detalle_movimiento` VALUES (13,99,25);
INSERT INTO `detalle_movimiento` VALUES (13,69,27);
INSERT INTO `detalle_movimiento` VALUES (13,93,28);
INSERT INTO `detalle_movimiento` VALUES (13,98,32);
INSERT INTO `detalle_movimiento` VALUES (13,79,41);
INSERT INTO `detalle_movimiento` VALUES (13,64,42);
INSERT INTO `detalle_movimiento` VALUES (13,69,49);
INSERT INTO `detalle_movimiento` VALUES (13,88,51);
INSERT INTO `detalle_movimiento` VALUES (13,56,52);
INSERT INTO `detalle_movimiento` VALUES (13,73,55);
INSERT INTO `detalle_movimiento` VALUES (13,52,57);
INSERT INTO `detalle_movimiento` VALUES (13,79,58);
INSERT INTO `detalle_movimiento` VALUES (13,55,65);
INSERT INTO `detalle_movimiento` VALUES (13,83,67);
INSERT INTO `detalle_movimiento` VALUES (13,77,69);
INSERT INTO `detalle_movimiento` VALUES (13,73,71);
INSERT INTO `detalle_movimiento` VALUES (13,66,76);
INSERT INTO `detalle_movimiento` VALUES (13,86,77);
INSERT INTO `detalle_movimiento` VALUES (13,101,79);
INSERT INTO `detalle_movimiento` VALUES (13,94,80);
INSERT INTO `detalle_movimiento` VALUES (13,80,81);
INSERT INTO `detalle_movimiento` VALUES (13,62,82);
INSERT INTO `detalle_movimiento` VALUES (13,66,83);
INSERT INTO `detalle_movimiento` VALUES (13,99,84);
INSERT INTO `detalle_movimiento` VALUES (13,100,86);
INSERT INTO `detalle_movimiento` VALUES (13,101,90);
INSERT INTO `detalle_movimiento` VALUES (13,73,93);
INSERT INTO `detalle_movimiento` VALUES (13,99,95);
INSERT INTO `detalle_movimiento` VALUES (13,56,99);
INSERT INTO `detalle_movimiento` VALUES (13,90,101);
INSERT INTO `detalle_movimiento` VALUES (13,53,108);
INSERT INTO `detalle_movimiento` VALUES (13,60,112);
INSERT INTO `detalle_movimiento` VALUES (13,64,114);
INSERT INTO `detalle_movimiento` VALUES (13,54,115);
INSERT INTO `detalle_movimiento` VALUES (13,52,127);
INSERT INTO `detalle_movimiento` VALUES (13,59,129);
INSERT INTO `detalle_movimiento` VALUES (13,75,131);
INSERT INTO `detalle_movimiento` VALUES (13,65,133);
INSERT INTO `detalle_movimiento` VALUES (13,71,134);
INSERT INTO `detalle_movimiento` VALUES (13,58,135);
INSERT INTO `detalle_movimiento` VALUES (13,57,140);
INSERT INTO `detalle_movimiento` VALUES (13,86,142);
INSERT INTO `detalle_movimiento` VALUES (13,62,143);
INSERT INTO `detalle_movimiento` VALUES (13,79,144);
INSERT INTO `detalle_movimiento` VALUES (13,52,146);
INSERT INTO `detalle_movimiento` VALUES (13,62,149);
INSERT INTO `detalle_movimiento` VALUES (13,66,151);
INSERT INTO `detalle_movimiento` VALUES (13,95,157);
INSERT INTO `detalle_movimiento` VALUES (13,98,158);
INSERT INTO `detalle_movimiento` VALUES (13,73,164);
INSERT INTO `detalle_movimiento` VALUES (13,52,165);
INSERT INTO `detalle_movimiento` VALUES (13,72,168);
INSERT INTO `detalle_movimiento` VALUES (13,93,171);
INSERT INTO `detalle_movimiento` VALUES (13,51,172);
INSERT INTO `detalle_movimiento` VALUES (13,89,175);
INSERT INTO `detalle_movimiento` VALUES (13,52,176);
INSERT INTO `detalle_movimiento` VALUES (13,51,179);
INSERT INTO `detalle_movimiento` VALUES (13,72,182);
INSERT INTO `detalle_movimiento` VALUES (13,73,184);
INSERT INTO `detalle_movimiento` VALUES (13,61,185);
INSERT INTO `detalle_movimiento` VALUES (13,99,187);
INSERT INTO `detalle_movimiento` VALUES (13,96,189);
INSERT INTO `detalle_movimiento` VALUES (13,90,193);
INSERT INTO `detalle_movimiento` VALUES (13,73,198);
INSERT INTO `detalle_movimiento` VALUES (13,97,200);
INSERT INTO `detalle_movimiento` VALUES (13,95,203);
INSERT INTO `detalle_movimiento` VALUES (13,57,205);
INSERT INTO `detalle_movimiento` VALUES (13,78,216);
INSERT INTO `detalle_movimiento` VALUES (13,92,217);
INSERT INTO `detalle_movimiento` VALUES (13,61,220);
INSERT INTO `detalle_movimiento` VALUES (13,85,222);
INSERT INTO `detalle_movimiento` VALUES (13,70,224);
INSERT INTO `detalle_movimiento` VALUES (13,67,225);
INSERT INTO `detalle_movimiento` VALUES (13,100,228);
INSERT INTO `detalle_movimiento` VALUES (13,86,232);
INSERT INTO `detalle_movimiento` VALUES (13,91,234);
INSERT INTO `detalle_movimiento` VALUES (13,89,236);
INSERT INTO `detalle_movimiento` VALUES (13,99,239);
INSERT INTO `detalle_movimiento` VALUES (13,75,241);
INSERT INTO `detalle_movimiento` VALUES (13,78,244);
INSERT INTO `detalle_movimiento` VALUES (13,81,245);
INSERT INTO `detalle_movimiento` VALUES (13,53,246);
INSERT INTO `detalle_movimiento` VALUES (13,99,252);
INSERT INTO `detalle_movimiento` VALUES (13,94,255);
INSERT INTO `detalle_movimiento` VALUES (13,51,256);
INSERT INTO `detalle_movimiento` VALUES (13,53,263);
INSERT INTO `detalle_movimiento` VALUES (13,68,265);
INSERT INTO `detalle_movimiento` VALUES (13,94,267);
INSERT INTO `detalle_movimiento` VALUES (13,52,281);
INSERT INTO `detalle_movimiento` VALUES (13,55,283);
INSERT INTO `detalle_movimiento` VALUES (13,73,286);
INSERT INTO `detalle_movimiento` VALUES (13,70,287);
INSERT INTO `detalle_movimiento` VALUES (13,71,294);
INSERT INTO `detalle_movimiento` VALUES (13,51,295);
INSERT INTO `detalle_movimiento` VALUES (13,54,298);
INSERT INTO `detalle_movimiento` VALUES (13,78,301);
INSERT INTO `detalle_movimiento` VALUES (13,71,303);
INSERT INTO `detalle_movimiento` VALUES (13,76,306);
INSERT INTO `detalle_movimiento` VALUES (13,97,308);
INSERT INTO `detalle_movimiento` VALUES (13,90,311);
INSERT INTO `detalle_movimiento` VALUES (13,76,313);
INSERT INTO `detalle_movimiento` VALUES (13,89,317);
INSERT INTO `detalle_movimiento` VALUES (13,100,318);
INSERT INTO `detalle_movimiento` VALUES (13,95,321);
INSERT INTO `detalle_movimiento` VALUES (13,101,322);
INSERT INTO `detalle_movimiento` VALUES (13,79,323);
INSERT INTO `detalle_movimiento` VALUES (13,91,329);
INSERT INTO `detalle_movimiento` VALUES (13,68,333);
INSERT INTO `detalle_movimiento` VALUES (13,78,334);
INSERT INTO `detalle_movimiento` VALUES (13,69,338);
INSERT INTO `detalle_movimiento` VALUES (13,97,339);
INSERT INTO `detalle_movimiento` VALUES (13,76,341);
INSERT INTO `detalle_movimiento` VALUES (13,58,342);
INSERT INTO `detalle_movimiento` VALUES (13,98,343);
INSERT INTO `detalle_movimiento` VALUES (13,74,349);
INSERT INTO `detalle_movimiento` VALUES (13,53,351);
INSERT INTO `detalle_movimiento` VALUES (13,72,357);
INSERT INTO `detalle_movimiento` VALUES (13,58,361);
INSERT INTO `detalle_movimiento` VALUES (13,81,371);
INSERT INTO `detalle_movimiento` VALUES (13,93,372);
INSERT INTO `detalle_movimiento` VALUES (13,98,373);
INSERT INTO `detalle_movimiento` VALUES (13,96,374);
INSERT INTO `detalle_movimiento` VALUES (13,70,377);
INSERT INTO `detalle_movimiento` VALUES (13,53,381);
INSERT INTO `detalle_movimiento` VALUES (13,57,385);
INSERT INTO `detalle_movimiento` VALUES (13,56,386);
INSERT INTO `detalle_movimiento` VALUES (13,71,389);
INSERT INTO `detalle_movimiento` VALUES (13,80,390);
INSERT INTO `detalle_movimiento` VALUES (13,84,393);
INSERT INTO `detalle_movimiento` VALUES (13,67,395);
INSERT INTO `detalle_movimiento` VALUES (13,82,400);
INSERT INTO `detalle_movimiento` VALUES (13,55,402);
INSERT INTO `detalle_movimiento` VALUES (13,99,405);
INSERT INTO `detalle_movimiento` VALUES (15,67,2);
INSERT INTO `detalle_movimiento` VALUES (15,100,4);
INSERT INTO `detalle_movimiento` VALUES (15,82,5);
INSERT INTO `detalle_movimiento` VALUES (15,89,9);
INSERT INTO `detalle_movimiento` VALUES (15,51,20);
INSERT INTO `detalle_movimiento` VALUES (15,92,33);
INSERT INTO `detalle_movimiento` VALUES (15,100,36);
INSERT INTO `detalle_movimiento` VALUES (15,59,40);
INSERT INTO `detalle_movimiento` VALUES (15,74,41);
INSERT INTO `detalle_movimiento` VALUES (15,60,50);
INSERT INTO `detalle_movimiento` VALUES (15,101,51);
INSERT INTO `detalle_movimiento` VALUES (15,63,52);
INSERT INTO `detalle_movimiento` VALUES (15,98,55);
INSERT INTO `detalle_movimiento` VALUES (15,72,58);
INSERT INTO `detalle_movimiento` VALUES (15,65,67);
INSERT INTO `detalle_movimiento` VALUES (15,76,73);
INSERT INTO `detalle_movimiento` VALUES (15,80,82);
INSERT INTO `detalle_movimiento` VALUES (15,77,90);
INSERT INTO `detalle_movimiento` VALUES (15,56,91);
INSERT INTO `detalle_movimiento` VALUES (15,89,101);
INSERT INTO `detalle_movimiento` VALUES (15,100,106);
INSERT INTO `detalle_movimiento` VALUES (15,79,108);
INSERT INTO `detalle_movimiento` VALUES (15,61,109);
INSERT INTO `detalle_movimiento` VALUES (15,92,114);
INSERT INTO `detalle_movimiento` VALUES (15,59,122);
INSERT INTO `detalle_movimiento` VALUES (15,52,131);
INSERT INTO `detalle_movimiento` VALUES (15,79,134);
INSERT INTO `detalle_movimiento` VALUES (15,77,136);
INSERT INTO `detalle_movimiento` VALUES (15,63,139);
INSERT INTO `detalle_movimiento` VALUES (15,84,144);
INSERT INTO `detalle_movimiento` VALUES (15,95,147);
INSERT INTO `detalle_movimiento` VALUES (15,59,155);
INSERT INTO `detalle_movimiento` VALUES (15,51,156);
INSERT INTO `detalle_movimiento` VALUES (15,75,162);
INSERT INTO `detalle_movimiento` VALUES (15,51,165);
INSERT INTO `detalle_movimiento` VALUES (15,62,166);
INSERT INTO `detalle_movimiento` VALUES (15,79,168);
INSERT INTO `detalle_movimiento` VALUES (15,79,169);
INSERT INTO `detalle_movimiento` VALUES (15,84,173);
INSERT INTO `detalle_movimiento` VALUES (15,56,184);
INSERT INTO `detalle_movimiento` VALUES (15,88,189);
INSERT INTO `detalle_movimiento` VALUES (15,89,190);
INSERT INTO `detalle_movimiento` VALUES (15,100,191);
INSERT INTO `detalle_movimiento` VALUES (15,100,198);
INSERT INTO `detalle_movimiento` VALUES (15,53,200);
INSERT INTO `detalle_movimiento` VALUES (15,68,202);
INSERT INTO `detalle_movimiento` VALUES (15,99,205);
INSERT INTO `detalle_movimiento` VALUES (15,84,207);
INSERT INTO `detalle_movimiento` VALUES (15,97,212);
INSERT INTO `detalle_movimiento` VALUES (15,79,216);
INSERT INTO `detalle_movimiento` VALUES (15,83,225);
INSERT INTO `detalle_movimiento` VALUES (15,75,241);
INSERT INTO `detalle_movimiento` VALUES (15,66,242);
INSERT INTO `detalle_movimiento` VALUES (15,78,246);
INSERT INTO `detalle_movimiento` VALUES (15,86,251);
INSERT INTO `detalle_movimiento` VALUES (15,81,252);
INSERT INTO `detalle_movimiento` VALUES (15,98,256);
INSERT INTO `detalle_movimiento` VALUES (15,79,258);
INSERT INTO `detalle_movimiento` VALUES (15,51,271);
INSERT INTO `detalle_movimiento` VALUES (15,54,273);
INSERT INTO `detalle_movimiento` VALUES (15,51,290);
INSERT INTO `detalle_movimiento` VALUES (15,97,299);
INSERT INTO `detalle_movimiento` VALUES (15,69,301);
INSERT INTO `detalle_movimiento` VALUES (15,55,306);
INSERT INTO `detalle_movimiento` VALUES (15,54,320);
INSERT INTO `detalle_movimiento` VALUES (15,69,321);
INSERT INTO `detalle_movimiento` VALUES (15,65,333);
INSERT INTO `detalle_movimiento` VALUES (15,92,338);
INSERT INTO `detalle_movimiento` VALUES (15,51,341);
INSERT INTO `detalle_movimiento` VALUES (15,63,343);
INSERT INTO `detalle_movimiento` VALUES (15,90,345);
INSERT INTO `detalle_movimiento` VALUES (15,90,356);
INSERT INTO `detalle_movimiento` VALUES (15,84,364);
INSERT INTO `detalle_movimiento` VALUES (15,68,381);
INSERT INTO `detalle_movimiento` VALUES (15,53,391);
INSERT INTO `detalle_movimiento` VALUES (15,59,393);
INSERT INTO `detalle_movimiento` VALUES (15,85,397);
INSERT INTO `detalle_movimiento` VALUES (15,87,398);
INSERT INTO `detalle_movimiento` VALUES (15,63,405);
INSERT INTO `detalle_movimiento` VALUES (17,51,1);
INSERT INTO `detalle_movimiento` VALUES (17,94,2);
INSERT INTO `detalle_movimiento` VALUES (17,86,5);
INSERT INTO `detalle_movimiento` VALUES (17,82,6);
INSERT INTO `detalle_movimiento` VALUES (17,83,9);
INSERT INTO `detalle_movimiento` VALUES (17,83,11);
INSERT INTO `detalle_movimiento` VALUES (17,57,14);
INSERT INTO `detalle_movimiento` VALUES (17,66,18);
INSERT INTO `detalle_movimiento` VALUES (17,63,20);
INSERT INTO `detalle_movimiento` VALUES (17,74,22);
INSERT INTO `detalle_movimiento` VALUES (17,78,27);
INSERT INTO `detalle_movimiento` VALUES (17,80,28);
INSERT INTO `detalle_movimiento` VALUES (17,84,29);
INSERT INTO `detalle_movimiento` VALUES (17,97,32);
INSERT INTO `detalle_movimiento` VALUES (17,82,33);
INSERT INTO `detalle_movimiento` VALUES (17,52,36);
INSERT INTO `detalle_movimiento` VALUES (17,77,37);
INSERT INTO `detalle_movimiento` VALUES (17,79,38);
INSERT INTO `detalle_movimiento` VALUES (17,78,43);
INSERT INTO `detalle_movimiento` VALUES (17,87,47);
INSERT INTO `detalle_movimiento` VALUES (17,71,52);
INSERT INTO `detalle_movimiento` VALUES (17,78,53);
INSERT INTO `detalle_movimiento` VALUES (17,87,54);
INSERT INTO `detalle_movimiento` VALUES (17,69,55);
INSERT INTO `detalle_movimiento` VALUES (17,92,62);
INSERT INTO `detalle_movimiento` VALUES (17,100,66);
INSERT INTO `detalle_movimiento` VALUES (17,93,67);
INSERT INTO `detalle_movimiento` VALUES (17,66,71);
INSERT INTO `detalle_movimiento` VALUES (17,96,76);
INSERT INTO `detalle_movimiento` VALUES (17,74,77);
INSERT INTO `detalle_movimiento` VALUES (17,90,83);
INSERT INTO `detalle_movimiento` VALUES (17,76,88);
INSERT INTO `detalle_movimiento` VALUES (17,56,89);
INSERT INTO `detalle_movimiento` VALUES (17,54,90);
INSERT INTO `detalle_movimiento` VALUES (17,90,93);
INSERT INTO `detalle_movimiento` VALUES (17,56,104);
INSERT INTO `detalle_movimiento` VALUES (17,57,109);
INSERT INTO `detalle_movimiento` VALUES (17,87,113);
INSERT INTO `detalle_movimiento` VALUES (17,99,118);
INSERT INTO `detalle_movimiento` VALUES (17,78,122);
INSERT INTO `detalle_movimiento` VALUES (17,58,125);
INSERT INTO `detalle_movimiento` VALUES (17,75,130);
INSERT INTO `detalle_movimiento` VALUES (17,54,131);
INSERT INTO `detalle_movimiento` VALUES (17,93,133);
INSERT INTO `detalle_movimiento` VALUES (17,56,136);
INSERT INTO `detalle_movimiento` VALUES (17,79,142);
INSERT INTO `detalle_movimiento` VALUES (17,99,143);
INSERT INTO `detalle_movimiento` VALUES (17,66,146);
INSERT INTO `detalle_movimiento` VALUES (17,82,149);
INSERT INTO `detalle_movimiento` VALUES (17,69,155);
INSERT INTO `detalle_movimiento` VALUES (17,89,161);
INSERT INTO `detalle_movimiento` VALUES (17,101,162);
INSERT INTO `detalle_movimiento` VALUES (17,82,166);
INSERT INTO `detalle_movimiento` VALUES (17,75,167);
INSERT INTO `detalle_movimiento` VALUES (17,93,168);
INSERT INTO `detalle_movimiento` VALUES (17,76,169);
INSERT INTO `detalle_movimiento` VALUES (17,85,170);
INSERT INTO `detalle_movimiento` VALUES (17,83,171);
INSERT INTO `detalle_movimiento` VALUES (17,62,184);
INSERT INTO `detalle_movimiento` VALUES (17,95,187);
INSERT INTO `detalle_movimiento` VALUES (17,52,193);
INSERT INTO `detalle_movimiento` VALUES (17,78,196);
INSERT INTO `detalle_movimiento` VALUES (17,55,197);
INSERT INTO `detalle_movimiento` VALUES (17,70,198);
INSERT INTO `detalle_movimiento` VALUES (17,88,202);
INSERT INTO `detalle_movimiento` VALUES (17,74,203);
INSERT INTO `detalle_movimiento` VALUES (17,79,206);
INSERT INTO `detalle_movimiento` VALUES (17,79,208);
INSERT INTO `detalle_movimiento` VALUES (17,93,209);
INSERT INTO `detalle_movimiento` VALUES (17,79,216);
INSERT INTO `detalle_movimiento` VALUES (17,99,220);
INSERT INTO `detalle_movimiento` VALUES (17,94,225);
INSERT INTO `detalle_movimiento` VALUES (17,57,228);
INSERT INTO `detalle_movimiento` VALUES (17,63,230);
INSERT INTO `detalle_movimiento` VALUES (17,99,231);
INSERT INTO `detalle_movimiento` VALUES (17,67,232);
INSERT INTO `detalle_movimiento` VALUES (17,67,234);
INSERT INTO `detalle_movimiento` VALUES (17,55,236);
INSERT INTO `detalle_movimiento` VALUES (17,59,239);
INSERT INTO `detalle_movimiento` VALUES (17,54,243);
INSERT INTO `detalle_movimiento` VALUES (17,52,244);
INSERT INTO `detalle_movimiento` VALUES (17,72,246);
INSERT INTO `detalle_movimiento` VALUES (17,74,248);
INSERT INTO `detalle_movimiento` VALUES (17,97,250);
INSERT INTO `detalle_movimiento` VALUES (17,75,252);
INSERT INTO `detalle_movimiento` VALUES (17,75,258);
INSERT INTO `detalle_movimiento` VALUES (17,74,263);
INSERT INTO `detalle_movimiento` VALUES (17,65,264);
INSERT INTO `detalle_movimiento` VALUES (17,63,265);
INSERT INTO `detalle_movimiento` VALUES (17,52,274);
INSERT INTO `detalle_movimiento` VALUES (17,93,276);
INSERT INTO `detalle_movimiento` VALUES (17,90,279);
INSERT INTO `detalle_movimiento` VALUES (17,85,282);
INSERT INTO `detalle_movimiento` VALUES (17,89,285);
INSERT INTO `detalle_movimiento` VALUES (17,51,286);
INSERT INTO `detalle_movimiento` VALUES (17,62,287);
INSERT INTO `detalle_movimiento` VALUES (17,82,288);
INSERT INTO `detalle_movimiento` VALUES (17,52,299);
INSERT INTO `detalle_movimiento` VALUES (17,101,304);
INSERT INTO `detalle_movimiento` VALUES (17,96,307);
INSERT INTO `detalle_movimiento` VALUES (17,99,315);
INSERT INTO `detalle_movimiento` VALUES (17,87,318);
INSERT INTO `detalle_movimiento` VALUES (17,60,320);
INSERT INTO `detalle_movimiento` VALUES (17,69,322);
INSERT INTO `detalle_movimiento` VALUES (17,56,324);
INSERT INTO `detalle_movimiento` VALUES (17,67,331);
INSERT INTO `detalle_movimiento` VALUES (17,76,333);
INSERT INTO `detalle_movimiento` VALUES (17,94,336);
INSERT INTO `detalle_movimiento` VALUES (17,83,348);
INSERT INTO `detalle_movimiento` VALUES (17,94,352);
INSERT INTO `detalle_movimiento` VALUES (17,76,353);
INSERT INTO `detalle_movimiento` VALUES (17,68,357);
INSERT INTO `detalle_movimiento` VALUES (17,90,361);
INSERT INTO `detalle_movimiento` VALUES (17,55,368);
INSERT INTO `detalle_movimiento` VALUES (17,96,371);
INSERT INTO `detalle_movimiento` VALUES (17,56,372);
INSERT INTO `detalle_movimiento` VALUES (17,90,373);
INSERT INTO `detalle_movimiento` VALUES (17,57,378);
INSERT INTO `detalle_movimiento` VALUES (17,100,379);
INSERT INTO `detalle_movimiento` VALUES (17,100,385);
INSERT INTO `detalle_movimiento` VALUES (17,80,386);
INSERT INTO `detalle_movimiento` VALUES (17,65,389);
INSERT INTO `detalle_movimiento` VALUES (17,72,390);
INSERT INTO `detalle_movimiento` VALUES (17,97,391);
INSERT INTO `detalle_movimiento` VALUES (17,89,392);
INSERT INTO `detalle_movimiento` VALUES (17,98,393);
INSERT INTO `detalle_movimiento` VALUES (17,86,395);
INSERT INTO `detalle_movimiento` VALUES (17,67,397);
INSERT INTO `detalle_movimiento` VALUES (17,96,398);
INSERT INTO `detalle_movimiento` VALUES (17,98,399);
INSERT INTO `detalle_movimiento` VALUES (17,97,400);
INSERT INTO `detalle_movimiento` VALUES (17,56,402);
INSERT INTO `detalle_movimiento` VALUES (17,66,403);
INSERT INTO `detalle_movimiento` VALUES (17,79,404);
INSERT INTO `detalle_movimiento` VALUES (18,66,3);
INSERT INTO `detalle_movimiento` VALUES (18,69,4);
INSERT INTO `detalle_movimiento` VALUES (18,54,9);
INSERT INTO `detalle_movimiento` VALUES (18,89,20);
INSERT INTO `detalle_movimiento` VALUES (18,62,24);
INSERT INTO `detalle_movimiento` VALUES (18,54,32);
INSERT INTO `detalle_movimiento` VALUES (18,68,33);
INSERT INTO `detalle_movimiento` VALUES (18,53,36);
INSERT INTO `detalle_movimiento` VALUES (18,67,43);
INSERT INTO `detalle_movimiento` VALUES (18,74,44);
INSERT INTO `detalle_movimiento` VALUES (18,59,46);
INSERT INTO `detalle_movimiento` VALUES (18,71,50);
INSERT INTO `detalle_movimiento` VALUES (18,63,55);
INSERT INTO `detalle_movimiento` VALUES (18,70,65);
INSERT INTO `detalle_movimiento` VALUES (18,52,67);
INSERT INTO `detalle_movimiento` VALUES (18,79,71);
INSERT INTO `detalle_movimiento` VALUES (18,73,73);
INSERT INTO `detalle_movimiento` VALUES (18,59,77);
INSERT INTO `detalle_movimiento` VALUES (18,51,84);
INSERT INTO `detalle_movimiento` VALUES (18,63,87);
INSERT INTO `detalle_movimiento` VALUES (18,64,90);
INSERT INTO `detalle_movimiento` VALUES (18,79,91);
INSERT INTO `detalle_movimiento` VALUES (18,96,114);
INSERT INTO `detalle_movimiento` VALUES (18,71,122);
INSERT INTO `detalle_movimiento` VALUES (18,56,134);
INSERT INTO `detalle_movimiento` VALUES (18,67,136);
INSERT INTO `detalle_movimiento` VALUES (18,59,142);
INSERT INTO `detalle_movimiento` VALUES (18,61,144);
INSERT INTO `detalle_movimiento` VALUES (18,61,155);
INSERT INTO `detalle_movimiento` VALUES (18,51,157);
INSERT INTO `detalle_movimiento` VALUES (18,83,164);
INSERT INTO `detalle_movimiento` VALUES (18,58,165);
INSERT INTO `detalle_movimiento` VALUES (18,54,171);
INSERT INTO `detalle_movimiento` VALUES (18,53,173);
INSERT INTO `detalle_movimiento` VALUES (18,78,189);
INSERT INTO `detalle_movimiento` VALUES (18,86,190);
INSERT INTO `detalle_movimiento` VALUES (18,91,191);
INSERT INTO `detalle_movimiento` VALUES (18,77,194);
INSERT INTO `detalle_movimiento` VALUES (18,55,197);
INSERT INTO `detalle_movimiento` VALUES (18,68,199);
INSERT INTO `detalle_movimiento` VALUES (18,100,202);
INSERT INTO `detalle_movimiento` VALUES (18,91,209);
INSERT INTO `detalle_movimiento` VALUES (18,74,212);
INSERT INTO `detalle_movimiento` VALUES (18,67,216);
INSERT INTO `detalle_movimiento` VALUES (18,53,231);
INSERT INTO `detalle_movimiento` VALUES (18,80,236);
INSERT INTO `detalle_movimiento` VALUES (18,93,241);
INSERT INTO `detalle_movimiento` VALUES (18,91,244);
INSERT INTO `detalle_movimiento` VALUES (18,57,272);
INSERT INTO `detalle_movimiento` VALUES (18,75,273);
INSERT INTO `detalle_movimiento` VALUES (18,97,280);
INSERT INTO `detalle_movimiento` VALUES (18,83,290);
INSERT INTO `detalle_movimiento` VALUES (18,62,291);
INSERT INTO `detalle_movimiento` VALUES (18,96,325);
INSERT INTO `detalle_movimiento` VALUES (18,83,343);
INSERT INTO `detalle_movimiento` VALUES (18,76,356);
INSERT INTO `detalle_movimiento` VALUES (18,67,359);
INSERT INTO `detalle_movimiento` VALUES (18,95,364);
INSERT INTO `detalle_movimiento` VALUES (18,53,380);
INSERT INTO `detalle_movimiento` VALUES (18,84,381);
INSERT INTO `detalle_movimiento` VALUES (18,69,392);
INSERT INTO `detalle_movimiento` VALUES (18,87,393);
INSERT INTO `detalle_movimiento` VALUES (19,68,2);
INSERT INTO `detalle_movimiento` VALUES (19,77,4);
INSERT INTO `detalle_movimiento` VALUES (19,68,10);
INSERT INTO `detalle_movimiento` VALUES (19,75,11);
INSERT INTO `detalle_movimiento` VALUES (19,53,18);
INSERT INTO `detalle_movimiento` VALUES (19,73,20);
INSERT INTO `detalle_movimiento` VALUES (19,55,25);
INSERT INTO `detalle_movimiento` VALUES (19,78,30);
INSERT INTO `detalle_movimiento` VALUES (19,80,36);
INSERT INTO `detalle_movimiento` VALUES (19,84,44);
INSERT INTO `detalle_movimiento` VALUES (19,58,50);
INSERT INTO `detalle_movimiento` VALUES (19,100,51);
INSERT INTO `detalle_movimiento` VALUES (19,93,54);
INSERT INTO `detalle_movimiento` VALUES (19,52,57);
INSERT INTO `detalle_movimiento` VALUES (19,68,58);
INSERT INTO `detalle_movimiento` VALUES (19,95,59);
INSERT INTO `detalle_movimiento` VALUES (19,65,65);
INSERT INTO `detalle_movimiento` VALUES (19,53,68);
INSERT INTO `detalle_movimiento` VALUES (19,101,69);
INSERT INTO `detalle_movimiento` VALUES (19,73,71);
INSERT INTO `detalle_movimiento` VALUES (19,59,73);
INSERT INTO `detalle_movimiento` VALUES (19,88,76);
INSERT INTO `detalle_movimiento` VALUES (19,75,77);
INSERT INTO `detalle_movimiento` VALUES (19,95,79);
INSERT INTO `detalle_movimiento` VALUES (19,80,86);
INSERT INTO `detalle_movimiento` VALUES (19,80,87);
INSERT INTO `detalle_movimiento` VALUES (19,59,88);
INSERT INTO `detalle_movimiento` VALUES (19,77,90);
INSERT INTO `detalle_movimiento` VALUES (19,84,108);
INSERT INTO `detalle_movimiento` VALUES (19,62,109);
INSERT INTO `detalle_movimiento` VALUES (19,86,114);
INSERT INTO `detalle_movimiento` VALUES (19,70,122);
INSERT INTO `detalle_movimiento` VALUES (19,87,124);
INSERT INTO `detalle_movimiento` VALUES (19,59,125);
INSERT INTO `detalle_movimiento` VALUES (19,53,129);
INSERT INTO `detalle_movimiento` VALUES (19,58,130);
INSERT INTO `detalle_movimiento` VALUES (19,72,131);
INSERT INTO `detalle_movimiento` VALUES (19,81,133);
INSERT INTO `detalle_movimiento` VALUES (19,93,136);
INSERT INTO `detalle_movimiento` VALUES (19,88,139);
INSERT INTO `detalle_movimiento` VALUES (19,55,140);
INSERT INTO `detalle_movimiento` VALUES (19,62,144);
INSERT INTO `detalle_movimiento` VALUES (19,62,156);
INSERT INTO `detalle_movimiento` VALUES (19,56,164);
INSERT INTO `detalle_movimiento` VALUES (19,84,171);
INSERT INTO `detalle_movimiento` VALUES (19,60,173);
INSERT INTO `detalle_movimiento` VALUES (19,71,174);
INSERT INTO `detalle_movimiento` VALUES (19,72,175);
INSERT INTO `detalle_movimiento` VALUES (19,85,176);
INSERT INTO `detalle_movimiento` VALUES (19,86,190);
INSERT INTO `detalle_movimiento` VALUES (19,75,206);
INSERT INTO `detalle_movimiento` VALUES (19,89,207);
INSERT INTO `detalle_movimiento` VALUES (19,100,214);
INSERT INTO `detalle_movimiento` VALUES (19,85,216);
INSERT INTO `detalle_movimiento` VALUES (19,94,218);
INSERT INTO `detalle_movimiento` VALUES (19,53,220);
INSERT INTO `detalle_movimiento` VALUES (19,99,224);
INSERT INTO `detalle_movimiento` VALUES (19,76,226);
INSERT INTO `detalle_movimiento` VALUES (19,66,228);
INSERT INTO `detalle_movimiento` VALUES (19,89,231);
INSERT INTO `detalle_movimiento` VALUES (19,95,236);
INSERT INTO `detalle_movimiento` VALUES (19,90,239);
INSERT INTO `detalle_movimiento` VALUES (19,60,242);
INSERT INTO `detalle_movimiento` VALUES (19,51,243);
INSERT INTO `detalle_movimiento` VALUES (19,79,244);
INSERT INTO `detalle_movimiento` VALUES (19,79,245);
INSERT INTO `detalle_movimiento` VALUES (19,99,247);
INSERT INTO `detalle_movimiento` VALUES (19,77,251);
INSERT INTO `detalle_movimiento` VALUES (19,83,252);
INSERT INTO `detalle_movimiento` VALUES (19,75,256);
INSERT INTO `detalle_movimiento` VALUES (19,58,264);
INSERT INTO `detalle_movimiento` VALUES (19,77,270);
INSERT INTO `detalle_movimiento` VALUES (19,91,271);
INSERT INTO `detalle_movimiento` VALUES (19,63,273);
INSERT INTO `detalle_movimiento` VALUES (19,98,280);
INSERT INTO `detalle_movimiento` VALUES (19,72,281);
INSERT INTO `detalle_movimiento` VALUES (19,73,287);
INSERT INTO `detalle_movimiento` VALUES (19,57,288);
INSERT INTO `detalle_movimiento` VALUES (19,85,290);
INSERT INTO `detalle_movimiento` VALUES (19,83,293);
INSERT INTO `detalle_movimiento` VALUES (19,74,294);
INSERT INTO `detalle_movimiento` VALUES (19,80,296);
INSERT INTO `detalle_movimiento` VALUES (19,91,298);
INSERT INTO `detalle_movimiento` VALUES (19,60,303);
INSERT INTO `detalle_movimiento` VALUES (19,59,307);
INSERT INTO `detalle_movimiento` VALUES (19,53,312);
INSERT INTO `detalle_movimiento` VALUES (19,69,318);
INSERT INTO `detalle_movimiento` VALUES (19,82,321);
INSERT INTO `detalle_movimiento` VALUES (19,90,322);
INSERT INTO `detalle_movimiento` VALUES (19,88,325);
INSERT INTO `detalle_movimiento` VALUES (19,51,330);
INSERT INTO `detalle_movimiento` VALUES (19,66,337);
INSERT INTO `detalle_movimiento` VALUES (19,96,338);
INSERT INTO `detalle_movimiento` VALUES (19,51,340);
INSERT INTO `detalle_movimiento` VALUES (19,87,342);
INSERT INTO `detalle_movimiento` VALUES (19,97,343);
INSERT INTO `detalle_movimiento` VALUES (19,92,352);
INSERT INTO `detalle_movimiento` VALUES (19,83,356);
INSERT INTO `detalle_movimiento` VALUES (19,55,363);
INSERT INTO `detalle_movimiento` VALUES (19,65,367);
INSERT INTO `detalle_movimiento` VALUES (19,60,371);
INSERT INTO `detalle_movimiento` VALUES (19,83,372);
INSERT INTO `detalle_movimiento` VALUES (19,72,375);
INSERT INTO `detalle_movimiento` VALUES (19,82,378);
INSERT INTO `detalle_movimiento` VALUES (19,85,381);
INSERT INTO `detalle_movimiento` VALUES (19,78,386);
INSERT INTO `detalle_movimiento` VALUES (19,63,390);
INSERT INTO `detalle_movimiento` VALUES (19,67,391);
INSERT INTO `detalle_movimiento` VALUES (19,96,393);
INSERT INTO `detalle_movimiento` VALUES (19,84,395);
INSERT INTO `detalle_movimiento` VALUES (19,89,397);
INSERT INTO `detalle_movimiento` VALUES (19,73,403);
INSERT INTO `detalle_movimiento` VALUES (19,54,404);
INSERT INTO `detalle_movimiento` VALUES (19,59,405);
INSERT INTO `detalle_movimiento` VALUES (20,75,2);
INSERT INTO `detalle_movimiento` VALUES (20,60,9);
INSERT INTO `detalle_movimiento` VALUES (20,88,20);
INSERT INTO `detalle_movimiento` VALUES (20,68,28);
INSERT INTO `detalle_movimiento` VALUES (20,84,29);
INSERT INTO `detalle_movimiento` VALUES (20,67,30);
INSERT INTO `detalle_movimiento` VALUES (20,77,32);
INSERT INTO `detalle_movimiento` VALUES (20,73,33);
INSERT INTO `detalle_movimiento` VALUES (20,80,35);
INSERT INTO `detalle_movimiento` VALUES (20,73,36);
INSERT INTO `detalle_movimiento` VALUES (20,99,37);
INSERT INTO `detalle_movimiento` VALUES (20,52,39);
INSERT INTO `detalle_movimiento` VALUES (20,59,40);
INSERT INTO `detalle_movimiento` VALUES (20,76,44);
INSERT INTO `detalle_movimiento` VALUES (20,54,49);
INSERT INTO `detalle_movimiento` VALUES (20,57,51);
INSERT INTO `detalle_movimiento` VALUES (20,91,57);
INSERT INTO `detalle_movimiento` VALUES (20,70,59);
INSERT INTO `detalle_movimiento` VALUES (20,52,65);
INSERT INTO `detalle_movimiento` VALUES (20,84,67);
INSERT INTO `detalle_movimiento` VALUES (20,95,69);
INSERT INTO `detalle_movimiento` VALUES (20,58,73);
INSERT INTO `detalle_movimiento` VALUES (20,78,75);
INSERT INTO `detalle_movimiento` VALUES (20,56,76);
INSERT INTO `detalle_movimiento` VALUES (20,59,77);
INSERT INTO `detalle_movimiento` VALUES (20,54,78);
INSERT INTO `detalle_movimiento` VALUES (20,83,82);
INSERT INTO `detalle_movimiento` VALUES (20,55,85);
INSERT INTO `detalle_movimiento` VALUES (20,53,86);
INSERT INTO `detalle_movimiento` VALUES (20,71,90);
INSERT INTO `detalle_movimiento` VALUES (20,84,93);
INSERT INTO `detalle_movimiento` VALUES (20,87,98);
INSERT INTO `detalle_movimiento` VALUES (20,53,99);
INSERT INTO `detalle_movimiento` VALUES (20,78,104);
INSERT INTO `detalle_movimiento` VALUES (20,59,106);
INSERT INTO `detalle_movimiento` VALUES (20,75,109);
INSERT INTO `detalle_movimiento` VALUES (20,98,113);
INSERT INTO `detalle_movimiento` VALUES (20,69,115);
INSERT INTO `detalle_movimiento` VALUES (20,60,118);
INSERT INTO `detalle_movimiento` VALUES (20,77,129);
INSERT INTO `detalle_movimiento` VALUES (20,57,131);
INSERT INTO `detalle_movimiento` VALUES (20,55,134);
INSERT INTO `detalle_movimiento` VALUES (20,84,136);
INSERT INTO `detalle_movimiento` VALUES (20,101,142);
INSERT INTO `detalle_movimiento` VALUES (20,92,149);
INSERT INTO `detalle_movimiento` VALUES (20,63,162);
INSERT INTO `detalle_movimiento` VALUES (20,101,165);
INSERT INTO `detalle_movimiento` VALUES (20,90,168);
INSERT INTO `detalle_movimiento` VALUES (20,75,171);
INSERT INTO `detalle_movimiento` VALUES (20,64,173);
INSERT INTO `detalle_movimiento` VALUES (20,95,176);
INSERT INTO `detalle_movimiento` VALUES (20,83,190);
INSERT INTO `detalle_movimiento` VALUES (20,70,191);
INSERT INTO `detalle_movimiento` VALUES (20,92,196);
INSERT INTO `detalle_movimiento` VALUES (20,64,200);
INSERT INTO `detalle_movimiento` VALUES (20,51,205);
INSERT INTO `detalle_movimiento` VALUES (20,54,207);
INSERT INTO `detalle_movimiento` VALUES (20,57,209);
INSERT INTO `detalle_movimiento` VALUES (20,57,212);
INSERT INTO `detalle_movimiento` VALUES (20,65,216);
INSERT INTO `detalle_movimiento` VALUES (20,92,226);
INSERT INTO `detalle_movimiento` VALUES (20,89,231);
INSERT INTO `detalle_movimiento` VALUES (20,91,236);
INSERT INTO `detalle_movimiento` VALUES (20,89,237);
INSERT INTO `detalle_movimiento` VALUES (20,72,241);
INSERT INTO `detalle_movimiento` VALUES (20,59,242);
INSERT INTO `detalle_movimiento` VALUES (20,74,244);
INSERT INTO `detalle_movimiento` VALUES (20,100,245);
INSERT INTO `detalle_movimiento` VALUES (20,87,251);
INSERT INTO `detalle_movimiento` VALUES (20,57,256);
INSERT INTO `detalle_movimiento` VALUES (20,92,260);
INSERT INTO `detalle_movimiento` VALUES (20,76,267);
INSERT INTO `detalle_movimiento` VALUES (20,77,271);
INSERT INTO `detalle_movimiento` VALUES (20,52,272);
INSERT INTO `detalle_movimiento` VALUES (20,87,273);
INSERT INTO `detalle_movimiento` VALUES (20,93,280);
INSERT INTO `detalle_movimiento` VALUES (20,51,281);
INSERT INTO `detalle_movimiento` VALUES (20,58,285);
INSERT INTO `detalle_movimiento` VALUES (20,62,287);
INSERT INTO `detalle_movimiento` VALUES (20,94,288);
INSERT INTO `detalle_movimiento` VALUES (20,84,292);
INSERT INTO `detalle_movimiento` VALUES (20,73,294);
INSERT INTO `detalle_movimiento` VALUES (20,76,312);
INSERT INTO `detalle_movimiento` VALUES (20,64,318);
INSERT INTO `detalle_movimiento` VALUES (20,91,322);
INSERT INTO `detalle_movimiento` VALUES (20,83,323);
INSERT INTO `detalle_movimiento` VALUES (20,88,324);
INSERT INTO `detalle_movimiento` VALUES (20,87,327);
INSERT INTO `detalle_movimiento` VALUES (20,78,333);
INSERT INTO `detalle_movimiento` VALUES (20,93,337);
INSERT INTO `detalle_movimiento` VALUES (20,95,343);
INSERT INTO `detalle_movimiento` VALUES (20,60,351);
INSERT INTO `detalle_movimiento` VALUES (20,89,356);
INSERT INTO `detalle_movimiento` VALUES (20,91,357);
INSERT INTO `detalle_movimiento` VALUES (20,90,363);
INSERT INTO `detalle_movimiento` VALUES (20,99,367);
INSERT INTO `detalle_movimiento` VALUES (20,58,371);
INSERT INTO `detalle_movimiento` VALUES (20,67,372);
INSERT INTO `detalle_movimiento` VALUES (20,56,378);
INSERT INTO `detalle_movimiento` VALUES (20,55,379);
INSERT INTO `detalle_movimiento` VALUES (20,98,381);
INSERT INTO `detalle_movimiento` VALUES (20,99,386);
INSERT INTO `detalle_movimiento` VALUES (20,80,389);
INSERT INTO `detalle_movimiento` VALUES (20,71,390);
INSERT INTO `detalle_movimiento` VALUES (20,66,395);
INSERT INTO `detalle_movimiento` VALUES (20,80,398);
INSERT INTO `detalle_movimiento` VALUES (20,83,404);
INSERT INTO `detalle_movimiento` VALUES (20,92,405);
INSERT INTO `detalle_movimiento` VALUES (24,54,2);
INSERT INTO `detalle_movimiento` VALUES (24,51,4);
INSERT INTO `detalle_movimiento` VALUES (24,67,9);
INSERT INTO `detalle_movimiento` VALUES (24,62,10);
INSERT INTO `detalle_movimiento` VALUES (24,57,20);
INSERT INTO `detalle_movimiento` VALUES (24,77,32);
INSERT INTO `detalle_movimiento` VALUES (24,86,33);
INSERT INTO `detalle_movimiento` VALUES (24,65,36);
INSERT INTO `detalle_movimiento` VALUES (24,94,50);
INSERT INTO `detalle_movimiento` VALUES (24,51,51);
INSERT INTO `detalle_movimiento` VALUES (24,69,52);
INSERT INTO `detalle_movimiento` VALUES (24,66,54);
INSERT INTO `detalle_movimiento` VALUES (24,87,66);
INSERT INTO `detalle_movimiento` VALUES (24,99,71);
INSERT INTO `detalle_movimiento` VALUES (24,93,73);
INSERT INTO `detalle_movimiento` VALUES (24,55,77);
INSERT INTO `detalle_movimiento` VALUES (24,71,82);
INSERT INTO `detalle_movimiento` VALUES (24,97,99);
INSERT INTO `detalle_movimiento` VALUES (24,72,108);
INSERT INTO `detalle_movimiento` VALUES (24,70,113);
INSERT INTO `detalle_movimiento` VALUES (24,87,122);
INSERT INTO `detalle_movimiento` VALUES (24,82,136);
INSERT INTO `detalle_movimiento` VALUES (24,80,139);
INSERT INTO `detalle_movimiento` VALUES (24,61,142);
INSERT INTO `detalle_movimiento` VALUES (24,62,144);
INSERT INTO `detalle_movimiento` VALUES (24,79,147);
INSERT INTO `detalle_movimiento` VALUES (24,52,157);
INSERT INTO `detalle_movimiento` VALUES (24,87,164);
INSERT INTO `detalle_movimiento` VALUES (24,81,165);
INSERT INTO `detalle_movimiento` VALUES (24,61,168);
INSERT INTO `detalle_movimiento` VALUES (24,76,169);
INSERT INTO `detalle_movimiento` VALUES (24,54,171);
INSERT INTO `detalle_movimiento` VALUES (24,83,173);
INSERT INTO `detalle_movimiento` VALUES (24,84,175);
INSERT INTO `detalle_movimiento` VALUES (24,81,184);
INSERT INTO `detalle_movimiento` VALUES (24,54,189);
INSERT INTO `detalle_movimiento` VALUES (24,74,199);
INSERT INTO `detalle_movimiento` VALUES (24,82,200);
INSERT INTO `detalle_movimiento` VALUES (24,55,202);
INSERT INTO `detalle_movimiento` VALUES (24,93,205);
INSERT INTO `detalle_movimiento` VALUES (24,63,209);
INSERT INTO `detalle_movimiento` VALUES (24,78,236);
INSERT INTO `detalle_movimiento` VALUES (24,72,237);
INSERT INTO `detalle_movimiento` VALUES (24,88,241);
INSERT INTO `detalle_movimiento` VALUES (24,80,242);
INSERT INTO `detalle_movimiento` VALUES (24,57,247);
INSERT INTO `detalle_movimiento` VALUES (24,82,258);
INSERT INTO `detalle_movimiento` VALUES (24,85,263);
INSERT INTO `detalle_movimiento` VALUES (24,63,264);
INSERT INTO `detalle_movimiento` VALUES (24,52,273);
INSERT INTO `detalle_movimiento` VALUES (24,55,279);
INSERT INTO `detalle_movimiento` VALUES (24,82,280);
INSERT INTO `detalle_movimiento` VALUES (24,101,283);
INSERT INTO `detalle_movimiento` VALUES (24,100,290);
INSERT INTO `detalle_movimiento` VALUES (24,62,292);
INSERT INTO `detalle_movimiento` VALUES (24,68,320);
INSERT INTO `detalle_movimiento` VALUES (24,56,321);
INSERT INTO `detalle_movimiento` VALUES (24,54,322);
INSERT INTO `detalle_movimiento` VALUES (24,63,324);
INSERT INTO `detalle_movimiento` VALUES (24,51,331);
INSERT INTO `detalle_movimiento` VALUES (24,57,333);
INSERT INTO `detalle_movimiento` VALUES (24,57,337);
INSERT INTO `detalle_movimiento` VALUES (24,97,338);
INSERT INTO `detalle_movimiento` VALUES (24,78,367);
INSERT INTO `detalle_movimiento` VALUES (24,51,380);
INSERT INTO `detalle_movimiento` VALUES (24,72,395);
INSERT INTO `detalle_movimiento` VALUES (24,81,396);
INSERT INTO `detalle_movimiento` VALUES (24,96,398);
INSERT INTO `detalle_movimiento` VALUES (26,65,1);
INSERT INTO `detalle_movimiento` VALUES (26,98,4);
INSERT INTO `detalle_movimiento` VALUES (26,76,5);
INSERT INTO `detalle_movimiento` VALUES (26,99,6);
INSERT INTO `detalle_movimiento` VALUES (26,89,14);
INSERT INTO `detalle_movimiento` VALUES (26,65,18);
INSERT INTO `detalle_movimiento` VALUES (26,97,20);
INSERT INTO `detalle_movimiento` VALUES (26,71,24);
INSERT INTO `detalle_movimiento` VALUES (26,94,25);
INSERT INTO `detalle_movimiento` VALUES (26,61,28);
INSERT INTO `detalle_movimiento` VALUES (26,76,32);
INSERT INTO `detalle_movimiento` VALUES (26,100,33);
INSERT INTO `detalle_movimiento` VALUES (26,100,37);
INSERT INTO `detalle_movimiento` VALUES (26,99,40);
INSERT INTO `detalle_movimiento` VALUES (26,85,41);
INSERT INTO `detalle_movimiento` VALUES (26,94,46);
INSERT INTO `detalle_movimiento` VALUES (26,76,49);
INSERT INTO `detalle_movimiento` VALUES (26,76,57);
INSERT INTO `detalle_movimiento` VALUES (26,95,58);
INSERT INTO `detalle_movimiento` VALUES (26,92,67);
INSERT INTO `detalle_movimiento` VALUES (26,58,68);
INSERT INTO `detalle_movimiento` VALUES (26,57,69);
INSERT INTO `detalle_movimiento` VALUES (26,85,71);
INSERT INTO `detalle_movimiento` VALUES (26,90,77);
INSERT INTO `detalle_movimiento` VALUES (26,54,79);
INSERT INTO `detalle_movimiento` VALUES (26,52,83);
INSERT INTO `detalle_movimiento` VALUES (26,90,87);
INSERT INTO `detalle_movimiento` VALUES (26,78,96);
INSERT INTO `detalle_movimiento` VALUES (26,88,98);
INSERT INTO `detalle_movimiento` VALUES (26,73,99);
INSERT INTO `detalle_movimiento` VALUES (26,72,101);
INSERT INTO `detalle_movimiento` VALUES (26,97,106);
INSERT INTO `detalle_movimiento` VALUES (26,90,108);
INSERT INTO `detalle_movimiento` VALUES (26,68,109);
INSERT INTO `detalle_movimiento` VALUES (26,82,113);
INSERT INTO `detalle_movimiento` VALUES (26,89,125);
INSERT INTO `detalle_movimiento` VALUES (26,64,130);
INSERT INTO `detalle_movimiento` VALUES (26,91,131);
INSERT INTO `detalle_movimiento` VALUES (26,95,133);
INSERT INTO `detalle_movimiento` VALUES (26,87,137);
INSERT INTO `detalle_movimiento` VALUES (26,93,139);
INSERT INTO `detalle_movimiento` VALUES (26,52,140);
INSERT INTO `detalle_movimiento` VALUES (26,87,142);
INSERT INTO `detalle_movimiento` VALUES (26,67,156);
INSERT INTO `detalle_movimiento` VALUES (26,78,162);
INSERT INTO `detalle_movimiento` VALUES (26,64,166);
INSERT INTO `detalle_movimiento` VALUES (26,57,174);
INSERT INTO `detalle_movimiento` VALUES (26,95,175);
INSERT INTO `detalle_movimiento` VALUES (26,52,184);
INSERT INTO `detalle_movimiento` VALUES (26,63,185);
INSERT INTO `detalle_movimiento` VALUES (26,95,190);
INSERT INTO `detalle_movimiento` VALUES (26,98,191);
INSERT INTO `detalle_movimiento` VALUES (26,94,196);
INSERT INTO `detalle_movimiento` VALUES (26,75,200);
INSERT INTO `detalle_movimiento` VALUES (26,61,205);
INSERT INTO `detalle_movimiento` VALUES (26,58,207);
INSERT INTO `detalle_movimiento` VALUES (26,60,209);
INSERT INTO `detalle_movimiento` VALUES (26,94,212);
INSERT INTO `detalle_movimiento` VALUES (26,85,214);
INSERT INTO `detalle_movimiento` VALUES (26,97,236);
INSERT INTO `detalle_movimiento` VALUES (26,96,237);
INSERT INTO `detalle_movimiento` VALUES (26,85,238);
INSERT INTO `detalle_movimiento` VALUES (26,89,242);
INSERT INTO `detalle_movimiento` VALUES (26,90,244);
INSERT INTO `detalle_movimiento` VALUES (26,63,246);
INSERT INTO `detalle_movimiento` VALUES (26,95,247);
INSERT INTO `detalle_movimiento` VALUES (26,94,251);
INSERT INTO `detalle_movimiento` VALUES (26,93,263);
INSERT INTO `detalle_movimiento` VALUES (26,60,264);
INSERT INTO `detalle_movimiento` VALUES (26,93,273);
INSERT INTO `detalle_movimiento` VALUES (26,63,279);
INSERT INTO `detalle_movimiento` VALUES (26,51,280);
INSERT INTO `detalle_movimiento` VALUES (26,60,283);
INSERT INTO `detalle_movimiento` VALUES (26,94,287);
INSERT INTO `detalle_movimiento` VALUES (26,93,288);
INSERT INTO `detalle_movimiento` VALUES (26,69,294);
INSERT INTO `detalle_movimiento` VALUES (26,92,301);
INSERT INTO `detalle_movimiento` VALUES (26,101,303);
INSERT INTO `detalle_movimiento` VALUES (26,59,320);
INSERT INTO `detalle_movimiento` VALUES (26,89,322);
INSERT INTO `detalle_movimiento` VALUES (26,68,323);
INSERT INTO `detalle_movimiento` VALUES (26,92,324);
INSERT INTO `detalle_movimiento` VALUES (26,75,327);
INSERT INTO `detalle_movimiento` VALUES (26,80,330);
INSERT INTO `detalle_movimiento` VALUES (26,99,331);
INSERT INTO `detalle_movimiento` VALUES (26,74,337);
INSERT INTO `detalle_movimiento` VALUES (26,54,338);
INSERT INTO `detalle_movimiento` VALUES (26,62,340);
INSERT INTO `detalle_movimiento` VALUES (26,66,342);
INSERT INTO `detalle_movimiento` VALUES (26,91,345);
INSERT INTO `detalle_movimiento` VALUES (26,88,346);
INSERT INTO `detalle_movimiento` VALUES (26,77,375);
INSERT INTO `detalle_movimiento` VALUES (26,51,381);
INSERT INTO `detalle_movimiento` VALUES (26,82,386);
INSERT INTO `detalle_movimiento` VALUES (26,83,391);
INSERT INTO `detalle_movimiento` VALUES (26,55,392);
INSERT INTO `detalle_movimiento` VALUES (26,100,395);
INSERT INTO `detalle_movimiento` VALUES (26,97,396);
INSERT INTO `detalle_movimiento` VALUES (26,75,403);
INSERT INTO `detalle_movimiento` VALUES (26,62,404);
INSERT INTO `detalle_movimiento` VALUES (28,99,43);
INSERT INTO `detalle_movimiento` VALUES (28,100,57);
INSERT INTO `detalle_movimiento` VALUES (28,76,236);
INSERT INTO `detalle_movimiento` VALUES (28,63,272);
INSERT INTO `detalle_movimiento` VALUES (29,71,4);
INSERT INTO `detalle_movimiento` VALUES (29,85,9);
INSERT INTO `detalle_movimiento` VALUES (29,51,20);
INSERT INTO `detalle_movimiento` VALUES (29,52,32);
INSERT INTO `detalle_movimiento` VALUES (29,70,33);
INSERT INTO `detalle_movimiento` VALUES (29,68,37);
INSERT INTO `detalle_movimiento` VALUES (29,73,41);
INSERT INTO `detalle_movimiento` VALUES (29,98,43);
INSERT INTO `detalle_movimiento` VALUES (29,55,50);
INSERT INTO `detalle_movimiento` VALUES (29,58,52);
INSERT INTO `detalle_movimiento` VALUES (29,95,55);
INSERT INTO `detalle_movimiento` VALUES (29,90,59);
INSERT INTO `detalle_movimiento` VALUES (29,91,65);
INSERT INTO `detalle_movimiento` VALUES (29,53,68);
INSERT INTO `detalle_movimiento` VALUES (29,84,71);
INSERT INTO `detalle_movimiento` VALUES (29,69,73);
INSERT INTO `detalle_movimiento` VALUES (29,95,84);
INSERT INTO `detalle_movimiento` VALUES (29,72,87);
INSERT INTO `detalle_movimiento` VALUES (29,78,98);
INSERT INTO `detalle_movimiento` VALUES (29,53,99);
INSERT INTO `detalle_movimiento` VALUES (29,92,104);
INSERT INTO `detalle_movimiento` VALUES (29,84,108);
INSERT INTO `detalle_movimiento` VALUES (29,56,109);
INSERT INTO `detalle_movimiento` VALUES (29,54,115);
INSERT INTO `detalle_movimiento` VALUES (29,56,122);
INSERT INTO `detalle_movimiento` VALUES (29,51,130);
INSERT INTO `detalle_movimiento` VALUES (29,77,136);
INSERT INTO `detalle_movimiento` VALUES (29,58,142);
INSERT INTO `detalle_movimiento` VALUES (29,66,147);
INSERT INTO `detalle_movimiento` VALUES (29,77,155);
INSERT INTO `detalle_movimiento` VALUES (29,66,157);
INSERT INTO `detalle_movimiento` VALUES (29,81,165);
INSERT INTO `detalle_movimiento` VALUES (29,56,169);
INSERT INTO `detalle_movimiento` VALUES (29,52,174);
INSERT INTO `detalle_movimiento` VALUES (29,54,175);
INSERT INTO `detalle_movimiento` VALUES (29,82,184);
INSERT INTO `detalle_movimiento` VALUES (29,54,189);
INSERT INTO `detalle_movimiento` VALUES (29,54,190);
INSERT INTO `detalle_movimiento` VALUES (29,88,191);
INSERT INTO `detalle_movimiento` VALUES (29,97,194);
INSERT INTO `detalle_movimiento` VALUES (29,65,198);
INSERT INTO `detalle_movimiento` VALUES (29,79,200);
INSERT INTO `detalle_movimiento` VALUES (29,78,202);
INSERT INTO `detalle_movimiento` VALUES (29,71,205);
INSERT INTO `detalle_movimiento` VALUES (29,82,207);
INSERT INTO `detalle_movimiento` VALUES (29,90,216);
INSERT INTO `detalle_movimiento` VALUES (29,89,231);
INSERT INTO `detalle_movimiento` VALUES (29,78,236);
INSERT INTO `detalle_movimiento` VALUES (29,86,237);
INSERT INTO `detalle_movimiento` VALUES (29,85,252);
INSERT INTO `detalle_movimiento` VALUES (29,67,258);
INSERT INTO `detalle_movimiento` VALUES (29,61,263);
INSERT INTO `detalle_movimiento` VALUES (29,98,272);
INSERT INTO `detalle_movimiento` VALUES (29,67,280);
INSERT INTO `detalle_movimiento` VALUES (29,59,283);
INSERT INTO `detalle_movimiento` VALUES (29,97,290);
INSERT INTO `detalle_movimiento` VALUES (29,57,299);
INSERT INTO `detalle_movimiento` VALUES (29,60,303);
INSERT INTO `detalle_movimiento` VALUES (29,72,321);
INSERT INTO `detalle_movimiento` VALUES (29,86,322);
INSERT INTO `detalle_movimiento` VALUES (29,60,330);
INSERT INTO `detalle_movimiento` VALUES (29,72,338);
INSERT INTO `detalle_movimiento` VALUES (29,57,341);
INSERT INTO `detalle_movimiento` VALUES (29,96,343);
INSERT INTO `detalle_movimiento` VALUES (29,65,346);
INSERT INTO `detalle_movimiento` VALUES (29,70,356);
INSERT INTO `detalle_movimiento` VALUES (29,100,359);
INSERT INTO `detalle_movimiento` VALUES (29,63,364);
INSERT INTO `detalle_movimiento` VALUES (29,74,367);
INSERT INTO `detalle_movimiento` VALUES (29,80,375);
INSERT INTO `detalle_movimiento` VALUES (29,85,380);
INSERT INTO `detalle_movimiento` VALUES (29,62,391);
INSERT INTO `detalle_movimiento` VALUES (33,60,2);
INSERT INTO `detalle_movimiento` VALUES (33,71,3);
INSERT INTO `detalle_movimiento` VALUES (33,93,6);
INSERT INTO `detalle_movimiento` VALUES (33,75,9);
INSERT INTO `detalle_movimiento` VALUES (33,96,10);
INSERT INTO `detalle_movimiento` VALUES (33,84,11);
INSERT INTO `detalle_movimiento` VALUES (33,62,12);
INSERT INTO `detalle_movimiento` VALUES (33,92,13);
INSERT INTO `detalle_movimiento` VALUES (33,55,20);
INSERT INTO `detalle_movimiento` VALUES (33,54,23);
INSERT INTO `detalle_movimiento` VALUES (33,59,27);
INSERT INTO `detalle_movimiento` VALUES (33,100,28);
INSERT INTO `detalle_movimiento` VALUES (33,55,29);
INSERT INTO `detalle_movimiento` VALUES (33,87,31);
INSERT INTO `detalle_movimiento` VALUES (33,100,36);
INSERT INTO `detalle_movimiento` VALUES (33,58,37);
INSERT INTO `detalle_movimiento` VALUES (33,86,39);
INSERT INTO `detalle_movimiento` VALUES (33,55,40);
INSERT INTO `detalle_movimiento` VALUES (33,68,42);
INSERT INTO `detalle_movimiento` VALUES (33,92,43);
INSERT INTO `detalle_movimiento` VALUES (33,63,44);
INSERT INTO `detalle_movimiento` VALUES (33,77,45);
INSERT INTO `detalle_movimiento` VALUES (33,85,46);
INSERT INTO `detalle_movimiento` VALUES (33,92,50);
INSERT INTO `detalle_movimiento` VALUES (33,101,51);
INSERT INTO `detalle_movimiento` VALUES (33,90,52);
INSERT INTO `detalle_movimiento` VALUES (33,55,55);
INSERT INTO `detalle_movimiento` VALUES (33,53,57);
INSERT INTO `detalle_movimiento` VALUES (33,92,59);
INSERT INTO `detalle_movimiento` VALUES (33,79,62);
INSERT INTO `detalle_movimiento` VALUES (33,90,64);
INSERT INTO `detalle_movimiento` VALUES (33,83,69);
INSERT INTO `detalle_movimiento` VALUES (33,75,71);
INSERT INTO `detalle_movimiento` VALUES (33,68,73);
INSERT INTO `detalle_movimiento` VALUES (33,95,74);
INSERT INTO `detalle_movimiento` VALUES (33,62,75);
INSERT INTO `detalle_movimiento` VALUES (33,98,76);
INSERT INTO `detalle_movimiento` VALUES (33,76,77);
INSERT INTO `detalle_movimiento` VALUES (33,59,79);
INSERT INTO `detalle_movimiento` VALUES (33,51,82);
INSERT INTO `detalle_movimiento` VALUES (33,51,83);
INSERT INTO `detalle_movimiento` VALUES (33,58,84);
INSERT INTO `detalle_movimiento` VALUES (33,73,85);
INSERT INTO `detalle_movimiento` VALUES (33,77,86);
INSERT INTO `detalle_movimiento` VALUES (33,66,87);
INSERT INTO `detalle_movimiento` VALUES (33,83,89);
INSERT INTO `detalle_movimiento` VALUES (33,74,91);
INSERT INTO `detalle_movimiento` VALUES (33,87,95);
INSERT INTO `detalle_movimiento` VALUES (33,75,96);
INSERT INTO `detalle_movimiento` VALUES (33,86,98);
INSERT INTO `detalle_movimiento` VALUES (33,62,99);
INSERT INTO `detalle_movimiento` VALUES (33,78,102);
INSERT INTO `detalle_movimiento` VALUES (33,69,103);
INSERT INTO `detalle_movimiento` VALUES (33,93,104);
INSERT INTO `detalle_movimiento` VALUES (33,76,105);
INSERT INTO `detalle_movimiento` VALUES (33,82,111);
INSERT INTO `detalle_movimiento` VALUES (33,66,114);
INSERT INTO `detalle_movimiento` VALUES (33,70,115);
INSERT INTO `detalle_movimiento` VALUES (33,64,117);
INSERT INTO `detalle_movimiento` VALUES (33,71,118);
INSERT INTO `detalle_movimiento` VALUES (33,57,120);
INSERT INTO `detalle_movimiento` VALUES (33,81,125);
INSERT INTO `detalle_movimiento` VALUES (33,92,127);
INSERT INTO `detalle_movimiento` VALUES (33,65,128);
INSERT INTO `detalle_movimiento` VALUES (33,68,130);
INSERT INTO `detalle_movimiento` VALUES (33,67,131);
INSERT INTO `detalle_movimiento` VALUES (33,51,133);
INSERT INTO `detalle_movimiento` VALUES (33,82,134);
INSERT INTO `detalle_movimiento` VALUES (33,71,136);
INSERT INTO `detalle_movimiento` VALUES (33,63,137);
INSERT INTO `detalle_movimiento` VALUES (33,71,139);
INSERT INTO `detalle_movimiento` VALUES (33,72,140);
INSERT INTO `detalle_movimiento` VALUES (33,79,143);
INSERT INTO `detalle_movimiento` VALUES (33,69,144);
INSERT INTO `detalle_movimiento` VALUES (33,54,146);
INSERT INTO `detalle_movimiento` VALUES (33,95,149);
INSERT INTO `detalle_movimiento` VALUES (33,77,151);
INSERT INTO `detalle_movimiento` VALUES (33,93,153);
INSERT INTO `detalle_movimiento` VALUES (33,72,155);
INSERT INTO `detalle_movimiento` VALUES (33,57,156);
INSERT INTO `detalle_movimiento` VALUES (33,90,157);
INSERT INTO `detalle_movimiento` VALUES (33,78,159);
INSERT INTO `detalle_movimiento` VALUES (33,70,161);
INSERT INTO `detalle_movimiento` VALUES (33,99,167);
INSERT INTO `detalle_movimiento` VALUES (33,54,169);
INSERT INTO `detalle_movimiento` VALUES (33,56,173);
INSERT INTO `detalle_movimiento` VALUES (33,84,174);
INSERT INTO `detalle_movimiento` VALUES (33,58,179);
INSERT INTO `detalle_movimiento` VALUES (33,89,184);
INSERT INTO `detalle_movimiento` VALUES (33,66,187);
INSERT INTO `detalle_movimiento` VALUES (33,92,190);
INSERT INTO `detalle_movimiento` VALUES (33,98,193);
INSERT INTO `detalle_movimiento` VALUES (33,96,194);
INSERT INTO `detalle_movimiento` VALUES (33,77,198);
INSERT INTO `detalle_movimiento` VALUES (33,81,199);
INSERT INTO `detalle_movimiento` VALUES (33,56,200);
INSERT INTO `detalle_movimiento` VALUES (33,58,201);
INSERT INTO `detalle_movimiento` VALUES (33,84,202);
INSERT INTO `detalle_movimiento` VALUES (33,97,206);
INSERT INTO `detalle_movimiento` VALUES (33,78,208);
INSERT INTO `detalle_movimiento` VALUES (33,54,215);
INSERT INTO `detalle_movimiento` VALUES (33,92,216);
INSERT INTO `detalle_movimiento` VALUES (33,64,217);
INSERT INTO `detalle_movimiento` VALUES (33,98,222);
INSERT INTO `detalle_movimiento` VALUES (33,96,224);
INSERT INTO `detalle_movimiento` VALUES (33,59,225);
INSERT INTO `detalle_movimiento` VALUES (33,78,227);
INSERT INTO `detalle_movimiento` VALUES (33,79,229);
INSERT INTO `detalle_movimiento` VALUES (33,83,231);
INSERT INTO `detalle_movimiento` VALUES (33,62,233);
INSERT INTO `detalle_movimiento` VALUES (33,101,235);
INSERT INTO `detalle_movimiento` VALUES (33,71,236);
INSERT INTO `detalle_movimiento` VALUES (33,81,238);
INSERT INTO `detalle_movimiento` VALUES (33,89,243);
INSERT INTO `detalle_movimiento` VALUES (33,74,244);
INSERT INTO `detalle_movimiento` VALUES (33,61,245);
INSERT INTO `detalle_movimiento` VALUES (33,91,246);
INSERT INTO `detalle_movimiento` VALUES (33,58,247);
INSERT INTO `detalle_movimiento` VALUES (33,88,253);
INSERT INTO `detalle_movimiento` VALUES (33,55,256);
INSERT INTO `detalle_movimiento` VALUES (33,63,258);
INSERT INTO `detalle_movimiento` VALUES (33,75,259);
INSERT INTO `detalle_movimiento` VALUES (33,76,260);
INSERT INTO `detalle_movimiento` VALUES (33,94,261);
INSERT INTO `detalle_movimiento` VALUES (33,60,263);
INSERT INTO `detalle_movimiento` VALUES (33,73,267);
INSERT INTO `detalle_movimiento` VALUES (33,59,270);
INSERT INTO `detalle_movimiento` VALUES (33,61,273);
INSERT INTO `detalle_movimiento` VALUES (33,52,274);
INSERT INTO `detalle_movimiento` VALUES (33,59,276);
INSERT INTO `detalle_movimiento` VALUES (33,74,288);
INSERT INTO `detalle_movimiento` VALUES (33,68,290);
INSERT INTO `detalle_movimiento` VALUES (33,70,294);
INSERT INTO `detalle_movimiento` VALUES (33,75,295);
INSERT INTO `detalle_movimiento` VALUES (33,66,296);
INSERT INTO `detalle_movimiento` VALUES (33,98,298);
INSERT INTO `detalle_movimiento` VALUES (33,68,303);
INSERT INTO `detalle_movimiento` VALUES (33,76,306);
INSERT INTO `detalle_movimiento` VALUES (33,82,307);
INSERT INTO `detalle_movimiento` VALUES (33,96,308);
INSERT INTO `detalle_movimiento` VALUES (33,75,309);
INSERT INTO `detalle_movimiento` VALUES (33,70,312);
INSERT INTO `detalle_movimiento` VALUES (33,52,313);
INSERT INTO `detalle_movimiento` VALUES (33,79,315);
INSERT INTO `detalle_movimiento` VALUES (33,85,317);
INSERT INTO `detalle_movimiento` VALUES (33,98,318);
INSERT INTO `detalle_movimiento` VALUES (33,59,319);
INSERT INTO `detalle_movimiento` VALUES (33,85,321);
INSERT INTO `detalle_movimiento` VALUES (33,67,322);
INSERT INTO `detalle_movimiento` VALUES (33,66,324);
INSERT INTO `detalle_movimiento` VALUES (33,88,325);
INSERT INTO `detalle_movimiento` VALUES (33,77,327);
INSERT INTO `detalle_movimiento` VALUES (33,96,328);
INSERT INTO `detalle_movimiento` VALUES (33,66,330);
INSERT INTO `detalle_movimiento` VALUES (33,57,332);
INSERT INTO `detalle_movimiento` VALUES (33,87,333);
INSERT INTO `detalle_movimiento` VALUES (33,55,340);
INSERT INTO `detalle_movimiento` VALUES (33,58,341);
INSERT INTO `detalle_movimiento` VALUES (33,77,342);
INSERT INTO `detalle_movimiento` VALUES (33,81,346);
INSERT INTO `detalle_movimiento` VALUES (33,87,348);
INSERT INTO `detalle_movimiento` VALUES (33,64,349);
INSERT INTO `detalle_movimiento` VALUES (33,89,351);
INSERT INTO `detalle_movimiento` VALUES (33,78,352);
INSERT INTO `detalle_movimiento` VALUES (33,92,356);
INSERT INTO `detalle_movimiento` VALUES (33,86,357);
INSERT INTO `detalle_movimiento` VALUES (33,52,358);
INSERT INTO `detalle_movimiento` VALUES (33,73,360);
INSERT INTO `detalle_movimiento` VALUES (33,90,364);
INSERT INTO `detalle_movimiento` VALUES (33,79,367);
INSERT INTO `detalle_movimiento` VALUES (33,62,368);
INSERT INTO `detalle_movimiento` VALUES (33,93,371);
INSERT INTO `detalle_movimiento` VALUES (33,62,374);
INSERT INTO `detalle_movimiento` VALUES (33,86,375);
INSERT INTO `detalle_movimiento` VALUES (33,93,377);
INSERT INTO `detalle_movimiento` VALUES (33,54,378);
INSERT INTO `detalle_movimiento` VALUES (33,65,381);
INSERT INTO `detalle_movimiento` VALUES (33,57,385);
INSERT INTO `detalle_movimiento` VALUES (33,91,387);
INSERT INTO `detalle_movimiento` VALUES (33,94,392);
INSERT INTO `detalle_movimiento` VALUES (33,88,393);
INSERT INTO `detalle_movimiento` VALUES (33,51,394);
INSERT INTO `detalle_movimiento` VALUES (33,60,395);
INSERT INTO `detalle_movimiento` VALUES (33,55,397);
INSERT INTO `detalle_movimiento` VALUES (33,96,398);
INSERT INTO `detalle_movimiento` VALUES (33,62,400);
INSERT INTO `detalle_movimiento` VALUES (33,101,401);
INSERT INTO `detalle_movimiento` VALUES (33,71,402);
INSERT INTO `detalle_movimiento` VALUES (33,89,404);
INSERT INTO `detalle_movimiento` VALUES (33,94,405);
INSERT INTO `detalle_movimiento` VALUES (34,59,1);
INSERT INTO `detalle_movimiento` VALUES (34,52,4);
INSERT INTO `detalle_movimiento` VALUES (34,80,11);
INSERT INTO `detalle_movimiento` VALUES (34,72,18);
INSERT INTO `detalle_movimiento` VALUES (34,63,24);
INSERT INTO `detalle_movimiento` VALUES (34,60,29);
INSERT INTO `detalle_movimiento` VALUES (34,85,31);
INSERT INTO `detalle_movimiento` VALUES (34,98,32);
INSERT INTO `detalle_movimiento` VALUES (34,65,40);
INSERT INTO `detalle_movimiento` VALUES (34,93,41);
INSERT INTO `detalle_movimiento` VALUES (34,71,42);
INSERT INTO `detalle_movimiento` VALUES (34,59,44);
INSERT INTO `detalle_movimiento` VALUES (34,94,45);
INSERT INTO `detalle_movimiento` VALUES (34,62,47);
INSERT INTO `detalle_movimiento` VALUES (34,60,51);
INSERT INTO `detalle_movimiento` VALUES (34,56,52);
INSERT INTO `detalle_movimiento` VALUES (34,87,53);
INSERT INTO `detalle_movimiento` VALUES (34,65,58);
INSERT INTO `detalle_movimiento` VALUES (34,96,59);
INSERT INTO `detalle_movimiento` VALUES (34,87,65);
INSERT INTO `detalle_movimiento` VALUES (34,68,66);
INSERT INTO `detalle_movimiento` VALUES (34,65,67);
INSERT INTO `detalle_movimiento` VALUES (34,72,69);
INSERT INTO `detalle_movimiento` VALUES (34,75,71);
INSERT INTO `detalle_movimiento` VALUES (34,86,73);
INSERT INTO `detalle_movimiento` VALUES (34,79,78);
INSERT INTO `detalle_movimiento` VALUES (34,74,80);
INSERT INTO `detalle_movimiento` VALUES (34,93,85);
INSERT INTO `detalle_movimiento` VALUES (34,79,91);
INSERT INTO `detalle_movimiento` VALUES (34,67,92);
INSERT INTO `detalle_movimiento` VALUES (34,67,93);
INSERT INTO `detalle_movimiento` VALUES (34,59,96);
INSERT INTO `detalle_movimiento` VALUES (34,70,98);
INSERT INTO `detalle_movimiento` VALUES (34,68,99);
INSERT INTO `detalle_movimiento` VALUES (34,99,103);
INSERT INTO `detalle_movimiento` VALUES (34,81,104);
INSERT INTO `detalle_movimiento` VALUES (34,73,106);
INSERT INTO `detalle_movimiento` VALUES (34,89,114);
INSERT INTO `detalle_movimiento` VALUES (34,51,117);
INSERT INTO `detalle_movimiento` VALUES (34,95,118);
INSERT INTO `detalle_movimiento` VALUES (34,95,122);
INSERT INTO `detalle_movimiento` VALUES (34,59,125);
INSERT INTO `detalle_movimiento` VALUES (34,69,129);
INSERT INTO `detalle_movimiento` VALUES (34,74,131);
INSERT INTO `detalle_movimiento` VALUES (34,60,136);
INSERT INTO `detalle_movimiento` VALUES (34,89,139);
INSERT INTO `detalle_movimiento` VALUES (34,90,143);
INSERT INTO `detalle_movimiento` VALUES (34,59,155);
INSERT INTO `detalle_movimiento` VALUES (34,88,156);
INSERT INTO `detalle_movimiento` VALUES (34,54,158);
INSERT INTO `detalle_movimiento` VALUES (34,61,162);
INSERT INTO `detalle_movimiento` VALUES (34,86,164);
INSERT INTO `detalle_movimiento` VALUES (34,52,165);
INSERT INTO `detalle_movimiento` VALUES (34,59,166);
INSERT INTO `detalle_movimiento` VALUES (34,85,167);
INSERT INTO `detalle_movimiento` VALUES (34,61,168);
INSERT INTO `detalle_movimiento` VALUES (34,69,169);
INSERT INTO `detalle_movimiento` VALUES (34,68,173);
INSERT INTO `detalle_movimiento` VALUES (34,55,179);
INSERT INTO `detalle_movimiento` VALUES (34,72,184);
INSERT INTO `detalle_movimiento` VALUES (34,75,187);
INSERT INTO `detalle_movimiento` VALUES (34,62,193);
INSERT INTO `detalle_movimiento` VALUES (34,59,198);
INSERT INTO `detalle_movimiento` VALUES (34,70,200);
INSERT INTO `detalle_movimiento` VALUES (34,92,203);
INSERT INTO `detalle_movimiento` VALUES (34,82,206);
INSERT INTO `detalle_movimiento` VALUES (34,73,207);
INSERT INTO `detalle_movimiento` VALUES (34,81,208);
INSERT INTO `detalle_movimiento` VALUES (34,95,214);
INSERT INTO `detalle_movimiento` VALUES (34,83,217);
INSERT INTO `detalle_movimiento` VALUES (34,64,218);
INSERT INTO `detalle_movimiento` VALUES (34,99,220);
INSERT INTO `detalle_movimiento` VALUES (34,95,224);
INSERT INTO `detalle_movimiento` VALUES (34,71,230);
INSERT INTO `detalle_movimiento` VALUES (34,65,233);
INSERT INTO `detalle_movimiento` VALUES (34,60,237);
INSERT INTO `detalle_movimiento` VALUES (34,51,239);
INSERT INTO `detalle_movimiento` VALUES (34,62,245);
INSERT INTO `detalle_movimiento` VALUES (34,60,246);
INSERT INTO `detalle_movimiento` VALUES (34,100,251);
INSERT INTO `detalle_movimiento` VALUES (34,101,252);
INSERT INTO `detalle_movimiento` VALUES (34,65,253);
INSERT INTO `detalle_movimiento` VALUES (34,62,256);
INSERT INTO `detalle_movimiento` VALUES (34,55,258);
INSERT INTO `detalle_movimiento` VALUES (34,54,260);
INSERT INTO `detalle_movimiento` VALUES (34,98,263);
INSERT INTO `detalle_movimiento` VALUES (34,77,264);
INSERT INTO `detalle_movimiento` VALUES (34,77,272);
INSERT INTO `detalle_movimiento` VALUES (34,73,273);
INSERT INTO `detalle_movimiento` VALUES (34,60,281);
INSERT INTO `detalle_movimiento` VALUES (34,62,283);
INSERT INTO `detalle_movimiento` VALUES (34,90,287);
INSERT INTO `detalle_movimiento` VALUES (34,58,288);
INSERT INTO `detalle_movimiento` VALUES (34,87,297);
INSERT INTO `detalle_movimiento` VALUES (34,54,298);
INSERT INTO `detalle_movimiento` VALUES (34,94,299);
INSERT INTO `detalle_movimiento` VALUES (34,63,303);
INSERT INTO `detalle_movimiento` VALUES (34,59,304);
INSERT INTO `detalle_movimiento` VALUES (34,58,306);
INSERT INTO `detalle_movimiento` VALUES (34,93,307);
INSERT INTO `detalle_movimiento` VALUES (34,54,308);
INSERT INTO `detalle_movimiento` VALUES (34,94,315);
INSERT INTO `detalle_movimiento` VALUES (34,79,318);
INSERT INTO `detalle_movimiento` VALUES (34,81,320);
INSERT INTO `detalle_movimiento` VALUES (34,91,323);
INSERT INTO `detalle_movimiento` VALUES (34,77,324);
INSERT INTO `detalle_movimiento` VALUES (34,64,325);
INSERT INTO `detalle_movimiento` VALUES (34,89,327);
INSERT INTO `detalle_movimiento` VALUES (34,93,331);
INSERT INTO `detalle_movimiento` VALUES (34,63,337);
INSERT INTO `detalle_movimiento` VALUES (34,60,339);
INSERT INTO `detalle_movimiento` VALUES (34,51,341);
INSERT INTO `detalle_movimiento` VALUES (34,97,342);
INSERT INTO `detalle_movimiento` VALUES (34,95,343);
INSERT INTO `detalle_movimiento` VALUES (34,87,345);
INSERT INTO `detalle_movimiento` VALUES (34,84,348);
INSERT INTO `detalle_movimiento` VALUES (34,95,351);
INSERT INTO `detalle_movimiento` VALUES (34,66,353);
INSERT INTO `detalle_movimiento` VALUES (34,93,357);
INSERT INTO `detalle_movimiento` VALUES (34,51,358);
INSERT INTO `detalle_movimiento` VALUES (34,91,363);
INSERT INTO `detalle_movimiento` VALUES (34,84,367);
INSERT INTO `detalle_movimiento` VALUES (34,81,368);
INSERT INTO `detalle_movimiento` VALUES (34,59,371);
INSERT INTO `detalle_movimiento` VALUES (34,81,377);
INSERT INTO `detalle_movimiento` VALUES (34,57,378);
INSERT INTO `detalle_movimiento` VALUES (34,94,380);
INSERT INTO `detalle_movimiento` VALUES (34,98,385);
INSERT INTO `detalle_movimiento` VALUES (34,52,386);
INSERT INTO `detalle_movimiento` VALUES (34,52,391);
INSERT INTO `detalle_movimiento` VALUES (34,100,393);
INSERT INTO `detalle_movimiento` VALUES (34,92,395);
INSERT INTO `detalle_movimiento` VALUES (34,92,397);
INSERT INTO `detalle_movimiento` VALUES (34,97,398);
INSERT INTO `detalle_movimiento` VALUES (34,95,400);
INSERT INTO `detalle_movimiento` VALUES (34,93,403);
INSERT INTO `detalle_movimiento` VALUES (36,97,2);
INSERT INTO `detalle_movimiento` VALUES (36,56,3);
INSERT INTO `detalle_movimiento` VALUES (36,61,4);
INSERT INTO `detalle_movimiento` VALUES (36,60,6);
INSERT INTO `detalle_movimiento` VALUES (36,91,11);
INSERT INTO `detalle_movimiento` VALUES (36,80,12);
INSERT INTO `detalle_movimiento` VALUES (36,87,13);
INSERT INTO `detalle_movimiento` VALUES (36,100,14);
INSERT INTO `detalle_movimiento` VALUES (36,52,15);
INSERT INTO `detalle_movimiento` VALUES (36,90,19);
INSERT INTO `detalle_movimiento` VALUES (36,93,24);
INSERT INTO `detalle_movimiento` VALUES (36,89,25);
INSERT INTO `detalle_movimiento` VALUES (36,86,26);
INSERT INTO `detalle_movimiento` VALUES (36,67,27);
INSERT INTO `detalle_movimiento` VALUES (36,58,30);
INSERT INTO `detalle_movimiento` VALUES (36,60,31);
INSERT INTO `detalle_movimiento` VALUES (36,58,38);
INSERT INTO `detalle_movimiento` VALUES (36,77,40);
INSERT INTO `detalle_movimiento` VALUES (36,78,42);
INSERT INTO `detalle_movimiento` VALUES (36,69,43);
INSERT INTO `detalle_movimiento` VALUES (36,72,48);
INSERT INTO `detalle_movimiento` VALUES (36,67,51);
INSERT INTO `detalle_movimiento` VALUES (36,81,52);
INSERT INTO `detalle_movimiento` VALUES (36,71,53);
INSERT INTO `detalle_movimiento` VALUES (36,86,54);
INSERT INTO `detalle_movimiento` VALUES (36,54,55);
INSERT INTO `detalle_movimiento` VALUES (36,88,56);
INSERT INTO `detalle_movimiento` VALUES (36,66,57);
INSERT INTO `detalle_movimiento` VALUES (36,82,59);
INSERT INTO `detalle_movimiento` VALUES (36,72,61);
INSERT INTO `detalle_movimiento` VALUES (36,65,62);
INSERT INTO `detalle_movimiento` VALUES (36,92,65);
INSERT INTO `detalle_movimiento` VALUES (36,96,66);
INSERT INTO `detalle_movimiento` VALUES (36,87,68);
INSERT INTO `detalle_movimiento` VALUES (36,92,69);
INSERT INTO `detalle_movimiento` VALUES (36,66,71);
INSERT INTO `detalle_movimiento` VALUES (36,56,73);
INSERT INTO `detalle_movimiento` VALUES (36,64,74);
INSERT INTO `detalle_movimiento` VALUES (36,56,75);
INSERT INTO `detalle_movimiento` VALUES (36,73,78);
INSERT INTO `detalle_movimiento` VALUES (36,77,79);
INSERT INTO `detalle_movimiento` VALUES (36,66,80);
INSERT INTO `detalle_movimiento` VALUES (36,66,81);
INSERT INTO `detalle_movimiento` VALUES (36,85,82);
INSERT INTO `detalle_movimiento` VALUES (36,75,84);
INSERT INTO `detalle_movimiento` VALUES (36,94,86);
INSERT INTO `detalle_movimiento` VALUES (36,68,88);
INSERT INTO `detalle_movimiento` VALUES (36,87,92);
INSERT INTO `detalle_movimiento` VALUES (36,93,93);
INSERT INTO `detalle_movimiento` VALUES (36,52,94);
INSERT INTO `detalle_movimiento` VALUES (36,57,95);
INSERT INTO `detalle_movimiento` VALUES (36,91,96);
INSERT INTO `detalle_movimiento` VALUES (36,63,99);
INSERT INTO `detalle_movimiento` VALUES (36,64,100);
INSERT INTO `detalle_movimiento` VALUES (36,92,103);
INSERT INTO `detalle_movimiento` VALUES (36,69,104);
INSERT INTO `detalle_movimiento` VALUES (36,65,105);
INSERT INTO `detalle_movimiento` VALUES (36,73,106);
INSERT INTO `detalle_movimiento` VALUES (36,88,108);
INSERT INTO `detalle_movimiento` VALUES (36,77,109);
INSERT INTO `detalle_movimiento` VALUES (36,74,110);
INSERT INTO `detalle_movimiento` VALUES (36,60,111);
INSERT INTO `detalle_movimiento` VALUES (36,100,115);
INSERT INTO `detalle_movimiento` VALUES (36,61,118);
INSERT INTO `detalle_movimiento` VALUES (36,80,119);
INSERT INTO `detalle_movimiento` VALUES (36,75,120);
INSERT INTO `detalle_movimiento` VALUES (36,97,123);
INSERT INTO `detalle_movimiento` VALUES (36,67,131);
INSERT INTO `detalle_movimiento` VALUES (36,82,132);
INSERT INTO `detalle_movimiento` VALUES (36,56,134);
INSERT INTO `detalle_movimiento` VALUES (36,98,135);
INSERT INTO `detalle_movimiento` VALUES (36,93,136);
INSERT INTO `detalle_movimiento` VALUES (36,63,137);
INSERT INTO `detalle_movimiento` VALUES (36,95,139);
INSERT INTO `detalle_movimiento` VALUES (36,98,140);
INSERT INTO `detalle_movimiento` VALUES (36,100,142);
INSERT INTO `detalle_movimiento` VALUES (36,95,143);
INSERT INTO `detalle_movimiento` VALUES (36,74,145);
INSERT INTO `detalle_movimiento` VALUES (36,51,146);
INSERT INTO `detalle_movimiento` VALUES (36,85,148);
INSERT INTO `detalle_movimiento` VALUES (36,95,149);
INSERT INTO `detalle_movimiento` VALUES (36,92,152);
INSERT INTO `detalle_movimiento` VALUES (36,98,155);
INSERT INTO `detalle_movimiento` VALUES (36,63,161);
INSERT INTO `detalle_movimiento` VALUES (36,70,162);
INSERT INTO `detalle_movimiento` VALUES (36,99,164);
INSERT INTO `detalle_movimiento` VALUES (36,96,168);
INSERT INTO `detalle_movimiento` VALUES (36,82,169);
INSERT INTO `detalle_movimiento` VALUES (36,71,170);
INSERT INTO `detalle_movimiento` VALUES (36,94,172);
INSERT INTO `detalle_movimiento` VALUES (36,63,173);
INSERT INTO `detalle_movimiento` VALUES (36,84,176);
INSERT INTO `detalle_movimiento` VALUES (36,68,178);
INSERT INTO `detalle_movimiento` VALUES (36,60,183);
INSERT INTO `detalle_movimiento` VALUES (36,67,184);
INSERT INTO `detalle_movimiento` VALUES (36,73,185);
INSERT INTO `detalle_movimiento` VALUES (36,81,187);
INSERT INTO `detalle_movimiento` VALUES (36,82,189);
INSERT INTO `detalle_movimiento` VALUES (36,66,193);
INSERT INTO `detalle_movimiento` VALUES (36,77,194);
INSERT INTO `detalle_movimiento` VALUES (36,54,197);
INSERT INTO `detalle_movimiento` VALUES (36,51,201);
INSERT INTO `detalle_movimiento` VALUES (36,78,203);
INSERT INTO `detalle_movimiento` VALUES (36,91,207);
INSERT INTO `detalle_movimiento` VALUES (36,82,208);
INSERT INTO `detalle_movimiento` VALUES (36,69,210);
INSERT INTO `detalle_movimiento` VALUES (36,64,211);
INSERT INTO `detalle_movimiento` VALUES (36,75,212);
INSERT INTO `detalle_movimiento` VALUES (36,79,214);
INSERT INTO `detalle_movimiento` VALUES (36,53,217);
INSERT INTO `detalle_movimiento` VALUES (36,58,218);
INSERT INTO `detalle_movimiento` VALUES (36,76,219);
INSERT INTO `detalle_movimiento` VALUES (36,55,221);
INSERT INTO `detalle_movimiento` VALUES (36,73,222);
INSERT INTO `detalle_movimiento` VALUES (36,71,224);
INSERT INTO `detalle_movimiento` VALUES (36,92,227);
INSERT INTO `detalle_movimiento` VALUES (36,72,228);
INSERT INTO `detalle_movimiento` VALUES (36,67,229);
INSERT INTO `detalle_movimiento` VALUES (36,70,230);
INSERT INTO `detalle_movimiento` VALUES (36,91,232);
INSERT INTO `detalle_movimiento` VALUES (36,84,233);
INSERT INTO `detalle_movimiento` VALUES (36,65,236);
INSERT INTO `detalle_movimiento` VALUES (36,75,240);
INSERT INTO `detalle_movimiento` VALUES (36,86,244);
INSERT INTO `detalle_movimiento` VALUES (36,63,245);
INSERT INTO `detalle_movimiento` VALUES (36,51,246);
INSERT INTO `detalle_movimiento` VALUES (36,54,247);
INSERT INTO `detalle_movimiento` VALUES (36,99,251);
INSERT INTO `detalle_movimiento` VALUES (36,57,253);
INSERT INTO `detalle_movimiento` VALUES (36,56,255);
INSERT INTO `detalle_movimiento` VALUES (36,51,256);
INSERT INTO `detalle_movimiento` VALUES (36,59,258);
INSERT INTO `detalle_movimiento` VALUES (36,53,259);
INSERT INTO `detalle_movimiento` VALUES (36,73,260);
INSERT INTO `detalle_movimiento` VALUES (36,90,261);
INSERT INTO `detalle_movimiento` VALUES (36,65,264);
INSERT INTO `detalle_movimiento` VALUES (36,80,269);
INSERT INTO `detalle_movimiento` VALUES (36,61,271);
INSERT INTO `detalle_movimiento` VALUES (36,77,272);
INSERT INTO `detalle_movimiento` VALUES (36,74,275);
INSERT INTO `detalle_movimiento` VALUES (36,77,277);
INSERT INTO `detalle_movimiento` VALUES (36,97,279);
INSERT INTO `detalle_movimiento` VALUES (36,87,280);
INSERT INTO `detalle_movimiento` VALUES (36,93,281);
INSERT INTO `detalle_movimiento` VALUES (36,81,282);
INSERT INTO `detalle_movimiento` VALUES (36,86,286);
INSERT INTO `detalle_movimiento` VALUES (36,64,288);
INSERT INTO `detalle_movimiento` VALUES (36,82,292);
INSERT INTO `detalle_movimiento` VALUES (36,81,295);
INSERT INTO `detalle_movimiento` VALUES (36,54,297);
INSERT INTO `detalle_movimiento` VALUES (36,73,299);
INSERT INTO `detalle_movimiento` VALUES (36,74,301);
INSERT INTO `detalle_movimiento` VALUES (36,61,304);
INSERT INTO `detalle_movimiento` VALUES (36,63,310);
INSERT INTO `detalle_movimiento` VALUES (36,81,312);
INSERT INTO `detalle_movimiento` VALUES (36,79,313);
INSERT INTO `detalle_movimiento` VALUES (36,101,319);
INSERT INTO `detalle_movimiento` VALUES (36,62,321);
INSERT INTO `detalle_movimiento` VALUES (36,82,323);
INSERT INTO `detalle_movimiento` VALUES (36,65,327);
INSERT INTO `detalle_movimiento` VALUES (36,81,329);
INSERT INTO `detalle_movimiento` VALUES (36,96,330);
INSERT INTO `detalle_movimiento` VALUES (36,86,333);
INSERT INTO `detalle_movimiento` VALUES (36,82,335);
INSERT INTO `detalle_movimiento` VALUES (36,54,336);
INSERT INTO `detalle_movimiento` VALUES (36,56,337);
INSERT INTO `detalle_movimiento` VALUES (36,71,339);
INSERT INTO `detalle_movimiento` VALUES (36,68,340);
INSERT INTO `detalle_movimiento` VALUES (36,95,346);
INSERT INTO `detalle_movimiento` VALUES (36,83,348);
INSERT INTO `detalle_movimiento` VALUES (36,78,349);
INSERT INTO `detalle_movimiento` VALUES (36,63,350);
INSERT INTO `detalle_movimiento` VALUES (36,67,351);
INSERT INTO `detalle_movimiento` VALUES (36,61,353);
INSERT INTO `detalle_movimiento` VALUES (36,77,357);
INSERT INTO `detalle_movimiento` VALUES (36,80,362);
INSERT INTO `detalle_movimiento` VALUES (36,79,363);
INSERT INTO `detalle_movimiento` VALUES (36,67,364);
INSERT INTO `detalle_movimiento` VALUES (36,51,368);
INSERT INTO `detalle_movimiento` VALUES (36,87,369);
INSERT INTO `detalle_movimiento` VALUES (36,84,371);
INSERT INTO `detalle_movimiento` VALUES (36,77,372);
INSERT INTO `detalle_movimiento` VALUES (36,70,373);
INSERT INTO `detalle_movimiento` VALUES (36,73,375);
INSERT INTO `detalle_movimiento` VALUES (36,72,378);
INSERT INTO `detalle_movimiento` VALUES (36,86,379);
INSERT INTO `detalle_movimiento` VALUES (36,76,380);
INSERT INTO `detalle_movimiento` VALUES (36,92,381);
INSERT INTO `detalle_movimiento` VALUES (36,98,383);
INSERT INTO `detalle_movimiento` VALUES (36,87,385);
INSERT INTO `detalle_movimiento` VALUES (36,98,391);
INSERT INTO `detalle_movimiento` VALUES (36,100,393);
INSERT INTO `detalle_movimiento` VALUES (36,51,395);
INSERT INTO `detalle_movimiento` VALUES (36,78,396);
INSERT INTO `detalle_movimiento` VALUES (36,69,397);
INSERT INTO `detalle_movimiento` VALUES (36,51,400);
INSERT INTO `detalle_movimiento` VALUES (36,87,401);
INSERT INTO `detalle_movimiento` VALUES (40,92,1);
INSERT INTO `detalle_movimiento` VALUES (40,59,3);
INSERT INTO `detalle_movimiento` VALUES (40,86,9);
INSERT INTO `detalle_movimiento` VALUES (40,84,14);
INSERT INTO `detalle_movimiento` VALUES (40,75,16);
INSERT INTO `detalle_movimiento` VALUES (40,75,21);
INSERT INTO `detalle_movimiento` VALUES (40,85,24);
INSERT INTO `detalle_movimiento` VALUES (40,93,25);
INSERT INTO `detalle_movimiento` VALUES (40,88,29);
INSERT INTO `detalle_movimiento` VALUES (40,69,31);
INSERT INTO `detalle_movimiento` VALUES (40,60,32);
INSERT INTO `detalle_movimiento` VALUES (40,94,33);
INSERT INTO `detalle_movimiento` VALUES (40,73,34);
INSERT INTO `detalle_movimiento` VALUES (40,62,35);
INSERT INTO `detalle_movimiento` VALUES (40,95,38);
INSERT INTO `detalle_movimiento` VALUES (40,52,39);
INSERT INTO `detalle_movimiento` VALUES (40,97,40);
INSERT INTO `detalle_movimiento` VALUES (40,96,42);
INSERT INTO `detalle_movimiento` VALUES (40,84,43);
INSERT INTO `detalle_movimiento` VALUES (40,75,45);
INSERT INTO `detalle_movimiento` VALUES (40,70,46);
INSERT INTO `detalle_movimiento` VALUES (40,69,47);
INSERT INTO `detalle_movimiento` VALUES (40,82,48);
INSERT INTO `detalle_movimiento` VALUES (40,79,49);
INSERT INTO `detalle_movimiento` VALUES (40,66,52);
INSERT INTO `detalle_movimiento` VALUES (40,95,54);
INSERT INTO `detalle_movimiento` VALUES (40,52,56);
INSERT INTO `detalle_movimiento` VALUES (40,85,57);
INSERT INTO `detalle_movimiento` VALUES (40,56,59);
INSERT INTO `detalle_movimiento` VALUES (40,94,65);
INSERT INTO `detalle_movimiento` VALUES (40,82,66);
INSERT INTO `detalle_movimiento` VALUES (40,64,67);
INSERT INTO `detalle_movimiento` VALUES (40,92,68);
INSERT INTO `detalle_movimiento` VALUES (40,81,71);
INSERT INTO `detalle_movimiento` VALUES (40,93,73);
INSERT INTO `detalle_movimiento` VALUES (40,66,80);
INSERT INTO `detalle_movimiento` VALUES (40,51,82);
INSERT INTO `detalle_movimiento` VALUES (40,76,85);
INSERT INTO `detalle_movimiento` VALUES (40,66,87);
INSERT INTO `detalle_movimiento` VALUES (40,64,89);
INSERT INTO `detalle_movimiento` VALUES (40,87,91);
INSERT INTO `detalle_movimiento` VALUES (40,98,92);
INSERT INTO `detalle_movimiento` VALUES (40,96,94);
INSERT INTO `detalle_movimiento` VALUES (40,67,96);
INSERT INTO `detalle_movimiento` VALUES (40,53,98);
INSERT INTO `detalle_movimiento` VALUES (40,84,99);
INSERT INTO `detalle_movimiento` VALUES (40,94,100);
INSERT INTO `detalle_movimiento` VALUES (40,99,101);
INSERT INTO `detalle_movimiento` VALUES (40,60,103);
INSERT INTO `detalle_movimiento` VALUES (40,78,105);
INSERT INTO `detalle_movimiento` VALUES (40,98,110);
INSERT INTO `detalle_movimiento` VALUES (40,58,112);
INSERT INTO `detalle_movimiento` VALUES (40,84,116);
INSERT INTO `detalle_movimiento` VALUES (40,91,121);
INSERT INTO `detalle_movimiento` VALUES (40,94,122);
INSERT INTO `detalle_movimiento` VALUES (40,71,124);
INSERT INTO `detalle_movimiento` VALUES (40,83,128);
INSERT INTO `detalle_movimiento` VALUES (40,51,131);
INSERT INTO `detalle_movimiento` VALUES (40,84,134);
INSERT INTO `detalle_movimiento` VALUES (40,61,140);
INSERT INTO `detalle_movimiento` VALUES (40,76,142);
INSERT INTO `detalle_movimiento` VALUES (40,68,144);
INSERT INTO `detalle_movimiento` VALUES (40,89,145);
INSERT INTO `detalle_movimiento` VALUES (40,86,146);
INSERT INTO `detalle_movimiento` VALUES (40,72,153);
INSERT INTO `detalle_movimiento` VALUES (40,62,154);
INSERT INTO `detalle_movimiento` VALUES (40,98,159);
INSERT INTO `detalle_movimiento` VALUES (40,92,162);
INSERT INTO `detalle_movimiento` VALUES (40,74,165);
INSERT INTO `detalle_movimiento` VALUES (40,64,166);
INSERT INTO `detalle_movimiento` VALUES (40,96,168);
INSERT INTO `detalle_movimiento` VALUES (40,80,169);
INSERT INTO `detalle_movimiento` VALUES (40,71,171);
INSERT INTO `detalle_movimiento` VALUES (40,80,175);
INSERT INTO `detalle_movimiento` VALUES (40,93,176);
INSERT INTO `detalle_movimiento` VALUES (40,66,183);
INSERT INTO `detalle_movimiento` VALUES (40,53,184);
INSERT INTO `detalle_movimiento` VALUES (40,59,185);
INSERT INTO `detalle_movimiento` VALUES (40,88,187);
INSERT INTO `detalle_movimiento` VALUES (40,61,190);
INSERT INTO `detalle_movimiento` VALUES (40,89,191);
INSERT INTO `detalle_movimiento` VALUES (40,68,192);
INSERT INTO `detalle_movimiento` VALUES (40,84,195);
INSERT INTO `detalle_movimiento` VALUES (40,66,198);
INSERT INTO `detalle_movimiento` VALUES (40,70,199);
INSERT INTO `detalle_movimiento` VALUES (40,93,201);
INSERT INTO `detalle_movimiento` VALUES (40,79,205);
INSERT INTO `detalle_movimiento` VALUES (40,66,206);
INSERT INTO `detalle_movimiento` VALUES (40,83,207);
INSERT INTO `detalle_movimiento` VALUES (40,80,209);
INSERT INTO `detalle_movimiento` VALUES (40,59,210);
INSERT INTO `detalle_movimiento` VALUES (40,99,212);
INSERT INTO `detalle_movimiento` VALUES (40,55,215);
INSERT INTO `detalle_movimiento` VALUES (40,96,216);
INSERT INTO `detalle_movimiento` VALUES (40,95,218);
INSERT INTO `detalle_movimiento` VALUES (40,54,222);
INSERT INTO `detalle_movimiento` VALUES (40,81,224);
INSERT INTO `detalle_movimiento` VALUES (40,93,227);
INSERT INTO `detalle_movimiento` VALUES (40,91,228);
INSERT INTO `detalle_movimiento` VALUES (40,62,232);
INSERT INTO `detalle_movimiento` VALUES (40,99,234);
INSERT INTO `detalle_movimiento` VALUES (40,72,237);
INSERT INTO `detalle_movimiento` VALUES (40,83,238);
INSERT INTO `detalle_movimiento` VALUES (40,100,240);
INSERT INTO `detalle_movimiento` VALUES (40,61,241);
INSERT INTO `detalle_movimiento` VALUES (40,78,242);
INSERT INTO `detalle_movimiento` VALUES (40,59,244);
INSERT INTO `detalle_movimiento` VALUES (40,98,246);
INSERT INTO `detalle_movimiento` VALUES (40,57,247);
INSERT INTO `detalle_movimiento` VALUES (40,95,248);
INSERT INTO `detalle_movimiento` VALUES (40,51,251);
INSERT INTO `detalle_movimiento` VALUES (40,51,252);
INSERT INTO `detalle_movimiento` VALUES (40,79,253);
INSERT INTO `detalle_movimiento` VALUES (40,55,254);
INSERT INTO `detalle_movimiento` VALUES (40,96,259);
INSERT INTO `detalle_movimiento` VALUES (40,71,260);
INSERT INTO `detalle_movimiento` VALUES (40,55,265);
INSERT INTO `detalle_movimiento` VALUES (40,81,270);
INSERT INTO `detalle_movimiento` VALUES (40,87,274);
INSERT INTO `detalle_movimiento` VALUES (40,96,275);
INSERT INTO `detalle_movimiento` VALUES (40,56,278);
INSERT INTO `detalle_movimiento` VALUES (40,86,279);
INSERT INTO `detalle_movimiento` VALUES (40,94,280);
INSERT INTO `detalle_movimiento` VALUES (40,54,282);
INSERT INTO `detalle_movimiento` VALUES (40,62,283);
INSERT INTO `detalle_movimiento` VALUES (40,91,285);
INSERT INTO `detalle_movimiento` VALUES (40,85,286);
INSERT INTO `detalle_movimiento` VALUES (40,76,287);
INSERT INTO `detalle_movimiento` VALUES (40,63,292);
INSERT INTO `detalle_movimiento` VALUES (40,98,293);
INSERT INTO `detalle_movimiento` VALUES (40,59,297);
INSERT INTO `detalle_movimiento` VALUES (40,64,299);
INSERT INTO `detalle_movimiento` VALUES (40,62,300);
INSERT INTO `detalle_movimiento` VALUES (40,70,301);
INSERT INTO `detalle_movimiento` VALUES (40,92,302);
INSERT INTO `detalle_movimiento` VALUES (40,90,305);
INSERT INTO `detalle_movimiento` VALUES (40,51,306);
INSERT INTO `detalle_movimiento` VALUES (40,97,307);
INSERT INTO `detalle_movimiento` VALUES (40,90,309);
INSERT INTO `detalle_movimiento` VALUES (40,81,310);
INSERT INTO `detalle_movimiento` VALUES (40,99,311);
INSERT INTO `detalle_movimiento` VALUES (40,89,317);
INSERT INTO `detalle_movimiento` VALUES (40,68,319);
INSERT INTO `detalle_movimiento` VALUES (40,99,320);
INSERT INTO `detalle_movimiento` VALUES (40,98,323);
INSERT INTO `detalle_movimiento` VALUES (40,92,332);
INSERT INTO `detalle_movimiento` VALUES (40,90,333);
INSERT INTO `detalle_movimiento` VALUES (40,97,334);
INSERT INTO `detalle_movimiento` VALUES (40,93,335);
INSERT INTO `detalle_movimiento` VALUES (40,78,337);
INSERT INTO `detalle_movimiento` VALUES (40,53,339);
INSERT INTO `detalle_movimiento` VALUES (40,96,342);
INSERT INTO `detalle_movimiento` VALUES (40,54,348);
INSERT INTO `detalle_movimiento` VALUES (40,54,349);
INSERT INTO `detalle_movimiento` VALUES (40,79,351);
INSERT INTO `detalle_movimiento` VALUES (40,55,353);
INSERT INTO `detalle_movimiento` VALUES (40,69,355);
INSERT INTO `detalle_movimiento` VALUES (40,99,360);
INSERT INTO `detalle_movimiento` VALUES (40,57,364);
INSERT INTO `detalle_movimiento` VALUES (40,65,366);
INSERT INTO `detalle_movimiento` VALUES (40,72,367);
INSERT INTO `detalle_movimiento` VALUES (40,83,368);
INSERT INTO `detalle_movimiento` VALUES (40,76,369);
INSERT INTO `detalle_movimiento` VALUES (40,83,370);
INSERT INTO `detalle_movimiento` VALUES (40,70,373);
INSERT INTO `detalle_movimiento` VALUES (40,78,377);
INSERT INTO `detalle_movimiento` VALUES (40,94,378);
INSERT INTO `detalle_movimiento` VALUES (40,77,381);
INSERT INTO `detalle_movimiento` VALUES (40,64,383);
INSERT INTO `detalle_movimiento` VALUES (40,87,384);
INSERT INTO `detalle_movimiento` VALUES (40,97,387);
INSERT INTO `detalle_movimiento` VALUES (40,86,389);
INSERT INTO `detalle_movimiento` VALUES (40,89,390);
INSERT INTO `detalle_movimiento` VALUES (40,81,391);
INSERT INTO `detalle_movimiento` VALUES (40,85,392);
INSERT INTO `detalle_movimiento` VALUES (40,59,396);
INSERT INTO `detalle_movimiento` VALUES (40,82,399);
INSERT INTO `detalle_movimiento` VALUES (40,97,400);
INSERT INTO `detalle_movimiento` VALUES (40,55,402);
INSERT INTO `detalle_movimiento` VALUES (40,66,405);
INSERT INTO `detalle_movimiento` VALUES (42,69,36);
INSERT INTO `detalle_movimiento` VALUES (42,93,84);
INSERT INTO `detalle_movimiento` VALUES (42,53,91);
INSERT INTO `detalle_movimiento` VALUES (42,71,99);
INSERT INTO `detalle_movimiento` VALUES (42,74,113);
INSERT INTO `detalle_movimiento` VALUES (42,95,114);
INSERT INTO `detalle_movimiento` VALUES (42,96,122);
INSERT INTO `detalle_movimiento` VALUES (42,60,130);
INSERT INTO `detalle_movimiento` VALUES (42,59,144);
INSERT INTO `detalle_movimiento` VALUES (42,83,157);
INSERT INTO `detalle_movimiento` VALUES (42,97,166);
INSERT INTO `detalle_movimiento` VALUES (42,88,168);
INSERT INTO `detalle_movimiento` VALUES (42,60,190);
INSERT INTO `detalle_movimiento` VALUES (42,56,199);
INSERT INTO `detalle_movimiento` VALUES (42,60,236);
INSERT INTO `detalle_movimiento` VALUES (42,82,241);
INSERT INTO `detalle_movimiento` VALUES (42,79,244);
INSERT INTO `detalle_movimiento` VALUES (42,58,256);
INSERT INTO `detalle_movimiento` VALUES (42,73,263);
INSERT INTO `detalle_movimiento` VALUES (42,87,272);
INSERT INTO `detalle_movimiento` VALUES (42,52,322);
INSERT INTO `detalle_movimiento` VALUES (42,76,337);
INSERT INTO `detalle_movimiento` VALUES (42,97,398);
INSERT INTO `detalle_movimiento` VALUES (43,64,36);
INSERT INTO `detalle_movimiento` VALUES (43,77,57);
INSERT INTO `detalle_movimiento` VALUES (43,80,84);
INSERT INTO `detalle_movimiento` VALUES (43,80,99);
INSERT INTO `detalle_movimiento` VALUES (43,92,101);
INSERT INTO `detalle_movimiento` VALUES (43,89,108);
INSERT INTO `detalle_movimiento` VALUES (43,57,130);
INSERT INTO `detalle_movimiento` VALUES (43,99,157);
INSERT INTO `detalle_movimiento` VALUES (43,53,184);
INSERT INTO `detalle_movimiento` VALUES (43,84,244);
INSERT INTO `detalle_movimiento` VALUES (43,51,272);
INSERT INTO `detalle_movimiento` VALUES (43,53,283);
INSERT INTO `detalle_movimiento` VALUES (43,71,337);
INSERT INTO `detalle_movimiento` VALUES (49,64,18);
INSERT INTO `detalle_movimiento` VALUES (49,80,24);
INSERT INTO `detalle_movimiento` VALUES (49,97,28);
INSERT INTO `detalle_movimiento` VALUES (49,58,32);
INSERT INTO `detalle_movimiento` VALUES (49,87,33);
INSERT INTO `detalle_movimiento` VALUES (49,65,37);
INSERT INTO `detalle_movimiento` VALUES (49,65,41);
INSERT INTO `detalle_movimiento` VALUES (49,77,43);
INSERT INTO `detalle_movimiento` VALUES (49,81,44);
INSERT INTO `detalle_movimiento` VALUES (49,76,49);
INSERT INTO `detalle_movimiento` VALUES (49,51,51);
INSERT INTO `detalle_movimiento` VALUES (49,81,52);
INSERT INTO `detalle_movimiento` VALUES (49,57,54);
INSERT INTO `detalle_movimiento` VALUES (49,65,55);
INSERT INTO `detalle_movimiento` VALUES (49,58,67);
INSERT INTO `detalle_movimiento` VALUES (49,84,68);
INSERT INTO `detalle_movimiento` VALUES (49,65,73);
INSERT INTO `detalle_movimiento` VALUES (49,84,76);
INSERT INTO `detalle_movimiento` VALUES (49,84,77);
INSERT INTO `detalle_movimiento` VALUES (49,61,79);
INSERT INTO `detalle_movimiento` VALUES (49,58,84);
INSERT INTO `detalle_movimiento` VALUES (49,98,90);
INSERT INTO `detalle_movimiento` VALUES (49,75,91);
INSERT INTO `detalle_movimiento` VALUES (49,82,98);
INSERT INTO `detalle_movimiento` VALUES (49,99,99);
INSERT INTO `detalle_movimiento` VALUES (49,52,104);
INSERT INTO `detalle_movimiento` VALUES (49,92,108);
INSERT INTO `detalle_movimiento` VALUES (49,71,124);
INSERT INTO `detalle_movimiento` VALUES (49,95,137);
INSERT INTO `detalle_movimiento` VALUES (49,97,139);
INSERT INTO `detalle_movimiento` VALUES (49,89,144);
INSERT INTO `detalle_movimiento` VALUES (49,65,157);
INSERT INTO `detalle_movimiento` VALUES (49,55,164);
INSERT INTO `detalle_movimiento` VALUES (49,60,165);
INSERT INTO `detalle_movimiento` VALUES (49,68,166);
INSERT INTO `detalle_movimiento` VALUES (49,94,168);
INSERT INTO `detalle_movimiento` VALUES (49,70,171);
INSERT INTO `detalle_movimiento` VALUES (49,68,173);
INSERT INTO `detalle_movimiento` VALUES (49,96,174);
INSERT INTO `detalle_movimiento` VALUES (49,77,184);
INSERT INTO `detalle_movimiento` VALUES (49,72,185);
INSERT INTO `detalle_movimiento` VALUES (49,70,187);
INSERT INTO `detalle_movimiento` VALUES (49,53,189);
INSERT INTO `detalle_movimiento` VALUES (49,81,190);
INSERT INTO `detalle_movimiento` VALUES (49,70,197);
INSERT INTO `detalle_movimiento` VALUES (49,90,198);
INSERT INTO `detalle_movimiento` VALUES (49,96,199);
INSERT INTO `detalle_movimiento` VALUES (49,58,200);
INSERT INTO `detalle_movimiento` VALUES (49,92,205);
INSERT INTO `detalle_movimiento` VALUES (49,86,207);
INSERT INTO `detalle_movimiento` VALUES (49,70,214);
INSERT INTO `detalle_movimiento` VALUES (49,98,216);
INSERT INTO `detalle_movimiento` VALUES (49,65,225);
INSERT INTO `detalle_movimiento` VALUES (49,78,228);
INSERT INTO `detalle_movimiento` VALUES (49,92,236);
INSERT INTO `detalle_movimiento` VALUES (49,85,237);
INSERT INTO `detalle_movimiento` VALUES (49,68,238);
INSERT INTO `detalle_movimiento` VALUES (49,87,242);
INSERT INTO `detalle_movimiento` VALUES (49,76,244);
INSERT INTO `detalle_movimiento` VALUES (49,100,246);
INSERT INTO `detalle_movimiento` VALUES (49,75,251);
INSERT INTO `detalle_movimiento` VALUES (49,96,252);
INSERT INTO `detalle_movimiento` VALUES (49,81,258);
INSERT INTO `detalle_movimiento` VALUES (49,75,263);
INSERT INTO `detalle_movimiento` VALUES (49,82,271);
INSERT INTO `detalle_movimiento` VALUES (49,62,272);
INSERT INTO `detalle_movimiento` VALUES (49,76,280);
INSERT INTO `detalle_movimiento` VALUES (49,71,283);
INSERT INTO `detalle_movimiento` VALUES (49,56,291);
INSERT INTO `detalle_movimiento` VALUES (49,90,292);
INSERT INTO `detalle_movimiento` VALUES (49,96,294);
INSERT INTO `detalle_movimiento` VALUES (49,96,296);
INSERT INTO `detalle_movimiento` VALUES (49,80,303);
INSERT INTO `detalle_movimiento` VALUES (49,92,312);
INSERT INTO `detalle_movimiento` VALUES (49,61,320);
INSERT INTO `detalle_movimiento` VALUES (49,75,321);
INSERT INTO `detalle_movimiento` VALUES (49,92,322);
INSERT INTO `detalle_movimiento` VALUES (49,78,323);
INSERT INTO `detalle_movimiento` VALUES (49,59,324);
INSERT INTO `detalle_movimiento` VALUES (49,86,325);
INSERT INTO `detalle_movimiento` VALUES (49,94,333);
INSERT INTO `detalle_movimiento` VALUES (49,97,337);
INSERT INTO `detalle_movimiento` VALUES (49,63,338);
INSERT INTO `detalle_movimiento` VALUES (49,73,343);
INSERT INTO `detalle_movimiento` VALUES (49,93,345);
INSERT INTO `detalle_movimiento` VALUES (49,70,346);
INSERT INTO `detalle_movimiento` VALUES (49,66,351);
INSERT INTO `detalle_movimiento` VALUES (49,97,356);
INSERT INTO `detalle_movimiento` VALUES (49,65,371);
INSERT INTO `detalle_movimiento` VALUES (49,97,375);
INSERT INTO `detalle_movimiento` VALUES (49,60,378);
INSERT INTO `detalle_movimiento` VALUES (49,54,392);
INSERT INTO `detalle_movimiento` VALUES (49,59,396);
INSERT INTO `detalle_movimiento` VALUES (49,51,397);
INSERT INTO `detalle_movimiento` VALUES (49,83,403);
INSERT INTO `detalle_movimiento` VALUES (51,82,1);
INSERT INTO `detalle_movimiento` VALUES (51,75,2);
INSERT INTO `detalle_movimiento` VALUES (51,57,4);
INSERT INTO `detalle_movimiento` VALUES (51,61,5);
INSERT INTO `detalle_movimiento` VALUES (51,67,9);
INSERT INTO `detalle_movimiento` VALUES (51,88,10);
INSERT INTO `detalle_movimiento` VALUES (51,87,11);
INSERT INTO `detalle_movimiento` VALUES (51,78,14);
INSERT INTO `detalle_movimiento` VALUES (51,79,18);
INSERT INTO `detalle_movimiento` VALUES (51,64,25);
INSERT INTO `detalle_movimiento` VALUES (51,77,27);
INSERT INTO `detalle_movimiento` VALUES (51,61,30);
INSERT INTO `detalle_movimiento` VALUES (51,77,32);
INSERT INTO `detalle_movimiento` VALUES (51,66,33);
INSERT INTO `detalle_movimiento` VALUES (51,83,35);
INSERT INTO `detalle_movimiento` VALUES (51,78,36);
INSERT INTO `detalle_movimiento` VALUES (51,63,37);
INSERT INTO `detalle_movimiento` VALUES (51,79,38);
INSERT INTO `detalle_movimiento` VALUES (51,93,41);
INSERT INTO `detalle_movimiento` VALUES (51,87,42);
INSERT INTO `detalle_movimiento` VALUES (51,55,44);
INSERT INTO `detalle_movimiento` VALUES (51,79,47);
INSERT INTO `detalle_movimiento` VALUES (51,59,49);
INSERT INTO `detalle_movimiento` VALUES (51,80,50);
INSERT INTO `detalle_movimiento` VALUES (51,57,54);
INSERT INTO `detalle_movimiento` VALUES (51,90,57);
INSERT INTO `detalle_movimiento` VALUES (51,72,59);
INSERT INTO `detalle_movimiento` VALUES (51,86,65);
INSERT INTO `detalle_movimiento` VALUES (51,59,66);
INSERT INTO `detalle_movimiento` VALUES (51,76,68);
INSERT INTO `detalle_movimiento` VALUES (51,53,73);
INSERT INTO `detalle_movimiento` VALUES (51,61,75);
INSERT INTO `detalle_movimiento` VALUES (51,82,76);
INSERT INTO `detalle_movimiento` VALUES (51,101,77);
INSERT INTO `detalle_movimiento` VALUES (51,91,78);
INSERT INTO `detalle_movimiento` VALUES (51,63,79);
INSERT INTO `detalle_movimiento` VALUES (51,80,82);
INSERT INTO `detalle_movimiento` VALUES (51,86,84);
INSERT INTO `detalle_movimiento` VALUES (51,62,85);
INSERT INTO `detalle_movimiento` VALUES (51,65,86);
INSERT INTO `detalle_movimiento` VALUES (51,66,87);
INSERT INTO `detalle_movimiento` VALUES (51,93,88);
INSERT INTO `detalle_movimiento` VALUES (51,59,89);
INSERT INTO `detalle_movimiento` VALUES (51,99,91);
INSERT INTO `detalle_movimiento` VALUES (51,101,92);
INSERT INTO `detalle_movimiento` VALUES (51,98,93);
INSERT INTO `detalle_movimiento` VALUES (51,59,98);
INSERT INTO `detalle_movimiento` VALUES (51,96,99);
INSERT INTO `detalle_movimiento` VALUES (51,62,101);
INSERT INTO `detalle_movimiento` VALUES (51,75,103);
INSERT INTO `detalle_movimiento` VALUES (51,63,113);
INSERT INTO `detalle_movimiento` VALUES (51,62,118);
INSERT INTO `detalle_movimiento` VALUES (51,95,122);
INSERT INTO `detalle_movimiento` VALUES (51,62,127);
INSERT INTO `detalle_movimiento` VALUES (51,75,130);
INSERT INTO `detalle_movimiento` VALUES (51,82,131);
INSERT INTO `detalle_movimiento` VALUES (51,63,133);
INSERT INTO `detalle_movimiento` VALUES (51,86,134);
INSERT INTO `detalle_movimiento` VALUES (51,55,140);
INSERT INTO `detalle_movimiento` VALUES (51,94,142);
INSERT INTO `detalle_movimiento` VALUES (51,53,143);
INSERT INTO `detalle_movimiento` VALUES (51,69,144);
INSERT INTO `detalle_movimiento` VALUES (51,61,147);
INSERT INTO `detalle_movimiento` VALUES (51,55,149);
INSERT INTO `detalle_movimiento` VALUES (51,57,156);
INSERT INTO `detalle_movimiento` VALUES (51,87,157);
INSERT INTO `detalle_movimiento` VALUES (51,98,167);
INSERT INTO `detalle_movimiento` VALUES (51,84,168);
INSERT INTO `detalle_movimiento` VALUES (51,63,173);
INSERT INTO `detalle_movimiento` VALUES (51,63,182);
INSERT INTO `detalle_movimiento` VALUES (51,97,185);
INSERT INTO `detalle_movimiento` VALUES (51,97,187);
INSERT INTO `detalle_movimiento` VALUES (51,69,189);
INSERT INTO `detalle_movimiento` VALUES (51,74,194);
INSERT INTO `detalle_movimiento` VALUES (51,94,197);
INSERT INTO `detalle_movimiento` VALUES (51,92,199);
INSERT INTO `detalle_movimiento` VALUES (51,92,200);
INSERT INTO `detalle_movimiento` VALUES (51,56,206);
INSERT INTO `detalle_movimiento` VALUES (51,52,208);
INSERT INTO `detalle_movimiento` VALUES (51,57,210);
INSERT INTO `detalle_movimiento` VALUES (51,61,214);
INSERT INTO `detalle_movimiento` VALUES (51,94,217);
INSERT INTO `detalle_movimiento` VALUES (51,99,220);
INSERT INTO `detalle_movimiento` VALUES (51,78,224);
INSERT INTO `detalle_movimiento` VALUES (51,85,225);
INSERT INTO `detalle_movimiento` VALUES (51,75,226);
INSERT INTO `detalle_movimiento` VALUES (51,95,231);
INSERT INTO `detalle_movimiento` VALUES (51,87,233);
INSERT INTO `detalle_movimiento` VALUES (51,94,234);
INSERT INTO `detalle_movimiento` VALUES (51,98,236);
INSERT INTO `detalle_movimiento` VALUES (51,85,238);
INSERT INTO `detalle_movimiento` VALUES (51,96,241);
INSERT INTO `detalle_movimiento` VALUES (51,75,248);
INSERT INTO `detalle_movimiento` VALUES (51,75,250);
INSERT INTO `detalle_movimiento` VALUES (51,83,253);
INSERT INTO `detalle_movimiento` VALUES (51,93,256);
INSERT INTO `detalle_movimiento` VALUES (51,70,260);
INSERT INTO `detalle_movimiento` VALUES (51,81,261);
INSERT INTO `detalle_movimiento` VALUES (51,61,264);
INSERT INTO `detalle_movimiento` VALUES (51,68,265);
INSERT INTO `detalle_movimiento` VALUES (51,85,271);
INSERT INTO `detalle_movimiento` VALUES (51,61,272);
INSERT INTO `detalle_movimiento` VALUES (51,51,274);
INSERT INTO `detalle_movimiento` VALUES (51,70,281);
INSERT INTO `detalle_movimiento` VALUES (51,58,282);
INSERT INTO `detalle_movimiento` VALUES (51,77,285);
INSERT INTO `detalle_movimiento` VALUES (51,90,288);
INSERT INTO `detalle_movimiento` VALUES (51,69,293);
INSERT INTO `detalle_movimiento` VALUES (51,96,294);
INSERT INTO `detalle_movimiento` VALUES (51,60,296);
INSERT INTO `detalle_movimiento` VALUES (51,69,299);
INSERT INTO `detalle_movimiento` VALUES (51,68,303);
INSERT INTO `detalle_movimiento` VALUES (51,51,306);
INSERT INTO `detalle_movimiento` VALUES (51,55,310);
INSERT INTO `detalle_movimiento` VALUES (51,72,311);
INSERT INTO `detalle_movimiento` VALUES (51,58,315);
INSERT INTO `detalle_movimiento` VALUES (51,90,320);
INSERT INTO `detalle_movimiento` VALUES (51,100,322);
INSERT INTO `detalle_movimiento` VALUES (51,65,324);
INSERT INTO `detalle_movimiento` VALUES (51,82,325);
INSERT INTO `detalle_movimiento` VALUES (51,97,327);
INSERT INTO `detalle_movimiento` VALUES (51,64,330);
INSERT INTO `detalle_movimiento` VALUES (51,96,337);
INSERT INTO `detalle_movimiento` VALUES (51,80,342);
INSERT INTO `detalle_movimiento` VALUES (51,86,343);
INSERT INTO `detalle_movimiento` VALUES (51,82,351);
INSERT INTO `detalle_movimiento` VALUES (51,71,352);
INSERT INTO `detalle_movimiento` VALUES (51,73,353);
INSERT INTO `detalle_movimiento` VALUES (51,94,356);
INSERT INTO `detalle_movimiento` VALUES (51,90,359);
INSERT INTO `detalle_movimiento` VALUES (51,87,363);
INSERT INTO `detalle_movimiento` VALUES (51,72,367);
INSERT INTO `detalle_movimiento` VALUES (51,92,368);
INSERT INTO `detalle_movimiento` VALUES (51,81,371);
INSERT INTO `detalle_movimiento` VALUES (51,90,372);
INSERT INTO `detalle_movimiento` VALUES (51,60,379);
INSERT INTO `detalle_movimiento` VALUES (51,57,380);
INSERT INTO `detalle_movimiento` VALUES (51,67,381);
INSERT INTO `detalle_movimiento` VALUES (51,89,386);
INSERT INTO `detalle_movimiento` VALUES (51,93,392);
INSERT INTO `detalle_movimiento` VALUES (51,75,395);
INSERT INTO `detalle_movimiento` VALUES (51,95,397);
INSERT INTO `detalle_movimiento` VALUES (51,90,398);
INSERT INTO `detalle_movimiento` VALUES (51,72,399);
INSERT INTO `detalle_movimiento` VALUES (51,69,402);
INSERT INTO `detalle_movimiento` VALUES (51,76,403);
INSERT INTO `detalle_movimiento` VALUES (51,84,404);
INSERT INTO `detalle_movimiento` VALUES (52,77,3);
INSERT INTO `detalle_movimiento` VALUES (52,60,24);
INSERT INTO `detalle_movimiento` VALUES (52,70,28);
INSERT INTO `detalle_movimiento` VALUES (52,69,33);
INSERT INTO `detalle_movimiento` VALUES (52,73,36);
INSERT INTO `detalle_movimiento` VALUES (52,62,41);
INSERT INTO `detalle_movimiento` VALUES (52,63,43);
INSERT INTO `detalle_movimiento` VALUES (52,83,51);
INSERT INTO `detalle_movimiento` VALUES (52,85,73);
INSERT INTO `detalle_movimiento` VALUES (52,74,77);
INSERT INTO `detalle_movimiento` VALUES (52,93,84);
INSERT INTO `detalle_movimiento` VALUES (52,65,87);
INSERT INTO `detalle_movimiento` VALUES (52,63,90);
INSERT INTO `detalle_movimiento` VALUES (52,83,91);
INSERT INTO `detalle_movimiento` VALUES (52,70,113);
INSERT INTO `detalle_movimiento` VALUES (52,51,131);
INSERT INTO `detalle_movimiento` VALUES (52,85,134);
INSERT INTO `detalle_movimiento` VALUES (52,63,136);
INSERT INTO `detalle_movimiento` VALUES (52,94,139);
INSERT INTO `detalle_movimiento` VALUES (52,84,142);
INSERT INTO `detalle_movimiento` VALUES (52,93,144);
INSERT INTO `detalle_movimiento` VALUES (52,99,147);
INSERT INTO `detalle_movimiento` VALUES (52,66,155);
INSERT INTO `detalle_movimiento` VALUES (52,98,157);
INSERT INTO `detalle_movimiento` VALUES (52,76,164);
INSERT INTO `detalle_movimiento` VALUES (52,101,166);
INSERT INTO `detalle_movimiento` VALUES (52,52,169);
INSERT INTO `detalle_movimiento` VALUES (52,69,171);
INSERT INTO `detalle_movimiento` VALUES (52,51,173);
INSERT INTO `detalle_movimiento` VALUES (52,80,184);
INSERT INTO `detalle_movimiento` VALUES (52,71,189);
INSERT INTO `detalle_movimiento` VALUES (52,82,191);
INSERT INTO `detalle_movimiento` VALUES (52,72,194);
INSERT INTO `detalle_movimiento` VALUES (52,53,199);
INSERT INTO `detalle_movimiento` VALUES (52,64,200);
INSERT INTO `detalle_movimiento` VALUES (52,60,209);
INSERT INTO `detalle_movimiento` VALUES (52,92,225);
INSERT INTO `detalle_movimiento` VALUES (52,52,236);
INSERT INTO `detalle_movimiento` VALUES (52,82,237);
INSERT INTO `detalle_movimiento` VALUES (52,90,241);
INSERT INTO `detalle_movimiento` VALUES (52,98,242);
INSERT INTO `detalle_movimiento` VALUES (52,54,244);
INSERT INTO `detalle_movimiento` VALUES (52,57,246);
INSERT INTO `detalle_movimiento` VALUES (52,97,247);
INSERT INTO `detalle_movimiento` VALUES (52,68,252);
INSERT INTO `detalle_movimiento` VALUES (52,98,271);
INSERT INTO `detalle_movimiento` VALUES (52,67,272);
INSERT INTO `detalle_movimiento` VALUES (52,84,280);
INSERT INTO `detalle_movimiento` VALUES (52,76,290);
INSERT INTO `detalle_movimiento` VALUES (52,62,291);
INSERT INTO `detalle_movimiento` VALUES (52,82,322);
INSERT INTO `detalle_movimiento` VALUES (52,67,324);
INSERT INTO `detalle_movimiento` VALUES (52,68,325);
INSERT INTO `detalle_movimiento` VALUES (52,85,330);
INSERT INTO `detalle_movimiento` VALUES (52,94,331);
INSERT INTO `detalle_movimiento` VALUES (52,87,333);
INSERT INTO `detalle_movimiento` VALUES (52,96,337);
INSERT INTO `detalle_movimiento` VALUES (52,65,338);
INSERT INTO `detalle_movimiento` VALUES (52,100,341);
INSERT INTO `detalle_movimiento` VALUES (52,88,356);
INSERT INTO `detalle_movimiento` VALUES (52,98,359);
INSERT INTO `detalle_movimiento` VALUES (52,77,396);
INSERT INTO `detalle_movimiento` VALUES (52,79,398);
INSERT INTO `detalle_movimiento` VALUES (52,87,405);
INSERT INTO `detalle_movimiento` VALUES (53,82,1);
INSERT INTO `detalle_movimiento` VALUES (53,75,2);
INSERT INTO `detalle_movimiento` VALUES (53,61,11);
INSERT INTO `detalle_movimiento` VALUES (53,56,14);
INSERT INTO `detalle_movimiento` VALUES (53,61,16);
INSERT INTO `detalle_movimiento` VALUES (53,68,22);
INSERT INTO `detalle_movimiento` VALUES (53,78,24);
INSERT INTO `detalle_movimiento` VALUES (53,99,29);
INSERT INTO `detalle_movimiento` VALUES (53,58,33);
INSERT INTO `detalle_movimiento` VALUES (53,82,35);
INSERT INTO `detalle_movimiento` VALUES (53,81,36);
INSERT INTO `detalle_movimiento` VALUES (53,72,37);
INSERT INTO `detalle_movimiento` VALUES (53,62,38);
INSERT INTO `detalle_movimiento` VALUES (53,83,39);
INSERT INTO `detalle_movimiento` VALUES (53,64,40);
INSERT INTO `detalle_movimiento` VALUES (53,76,41);
INSERT INTO `detalle_movimiento` VALUES (53,65,42);
INSERT INTO `detalle_movimiento` VALUES (53,99,46);
INSERT INTO `detalle_movimiento` VALUES (53,92,47);
INSERT INTO `detalle_movimiento` VALUES (53,89,49);
INSERT INTO `detalle_movimiento` VALUES (53,83,52);
INSERT INTO `detalle_movimiento` VALUES (53,64,54);
INSERT INTO `detalle_movimiento` VALUES (53,71,65);
INSERT INTO `detalle_movimiento` VALUES (53,51,67);
INSERT INTO `detalle_movimiento` VALUES (53,95,68);
INSERT INTO `detalle_movimiento` VALUES (53,84,71);
INSERT INTO `detalle_movimiento` VALUES (53,94,73);
INSERT INTO `detalle_movimiento` VALUES (53,69,77);
INSERT INTO `detalle_movimiento` VALUES (53,60,78);
INSERT INTO `detalle_movimiento` VALUES (53,64,80);
INSERT INTO `detalle_movimiento` VALUES (53,77,85);
INSERT INTO `detalle_movimiento` VALUES (53,56,90);
INSERT INTO `detalle_movimiento` VALUES (53,98,91);
INSERT INTO `detalle_movimiento` VALUES (53,85,101);
INSERT INTO `detalle_movimiento` VALUES (53,100,104);
INSERT INTO `detalle_movimiento` VALUES (53,59,108);
INSERT INTO `detalle_movimiento` VALUES (53,83,111);
INSERT INTO `detalle_movimiento` VALUES (53,90,112);
INSERT INTO `detalle_movimiento` VALUES (53,78,113);
INSERT INTO `detalle_movimiento` VALUES (53,77,117);
INSERT INTO `detalle_movimiento` VALUES (53,94,118);
INSERT INTO `detalle_movimiento` VALUES (53,70,122);
INSERT INTO `detalle_movimiento` VALUES (53,54,124);
INSERT INTO `detalle_movimiento` VALUES (53,82,125);
INSERT INTO `detalle_movimiento` VALUES (53,68,127);
INSERT INTO `detalle_movimiento` VALUES (53,93,130);
INSERT INTO `detalle_movimiento` VALUES (53,67,131);
INSERT INTO `detalle_movimiento` VALUES (53,74,134);
INSERT INTO `detalle_movimiento` VALUES (53,62,135);
INSERT INTO `detalle_movimiento` VALUES (53,61,140);
INSERT INTO `detalle_movimiento` VALUES (53,89,142);
INSERT INTO `detalle_movimiento` VALUES (53,81,144);
INSERT INTO `detalle_movimiento` VALUES (53,63,155);
INSERT INTO `detalle_movimiento` VALUES (53,73,156);
INSERT INTO `detalle_movimiento` VALUES (53,53,158);
INSERT INTO `detalle_movimiento` VALUES (53,70,162);
INSERT INTO `detalle_movimiento` VALUES (53,70,164);
INSERT INTO `detalle_movimiento` VALUES (53,92,166);
INSERT INTO `detalle_movimiento` VALUES (53,81,169);
INSERT INTO `detalle_movimiento` VALUES (53,97,170);
INSERT INTO `detalle_movimiento` VALUES (53,60,172);
INSERT INTO `detalle_movimiento` VALUES (53,84,173);
INSERT INTO `detalle_movimiento` VALUES (53,79,175);
INSERT INTO `detalle_movimiento` VALUES (53,76,177);
INSERT INTO `detalle_movimiento` VALUES (53,86,184);
INSERT INTO `detalle_movimiento` VALUES (53,90,196);
INSERT INTO `detalle_movimiento` VALUES (53,64,198);
INSERT INTO `detalle_movimiento` VALUES (53,81,202);
INSERT INTO `detalle_movimiento` VALUES (53,62,205);
INSERT INTO `detalle_movimiento` VALUES (53,67,206);
INSERT INTO `detalle_movimiento` VALUES (53,75,207);
INSERT INTO `detalle_movimiento` VALUES (53,95,208);
INSERT INTO `detalle_movimiento` VALUES (53,98,209);
INSERT INTO `detalle_movimiento` VALUES (53,84,214);
INSERT INTO `detalle_movimiento` VALUES (53,85,216);
INSERT INTO `detalle_movimiento` VALUES (53,77,217);
INSERT INTO `detalle_movimiento` VALUES (53,71,225);
INSERT INTO `detalle_movimiento` VALUES (53,63,226);
INSERT INTO `detalle_movimiento` VALUES (53,53,230);
INSERT INTO `detalle_movimiento` VALUES (53,84,237);
INSERT INTO `detalle_movimiento` VALUES (53,52,242);
INSERT INTO `detalle_movimiento` VALUES (53,82,244);
INSERT INTO `detalle_movimiento` VALUES (53,82,246);
INSERT INTO `detalle_movimiento` VALUES (53,54,248);
INSERT INTO `detalle_movimiento` VALUES (53,53,249);
INSERT INTO `detalle_movimiento` VALUES (53,89,250);
INSERT INTO `detalle_movimiento` VALUES (53,54,252);
INSERT INTO `detalle_movimiento` VALUES (53,68,253);
INSERT INTO `detalle_movimiento` VALUES (53,75,256);
INSERT INTO `detalle_movimiento` VALUES (53,91,258);
INSERT INTO `detalle_movimiento` VALUES (53,70,261);
INSERT INTO `detalle_movimiento` VALUES (53,95,265);
INSERT INTO `detalle_movimiento` VALUES (53,71,269);
INSERT INTO `detalle_movimiento` VALUES (53,96,270);
INSERT INTO `detalle_movimiento` VALUES (53,51,272);
INSERT INTO `detalle_movimiento` VALUES (53,86,274);
INSERT INTO `detalle_movimiento` VALUES (53,51,282);
INSERT INTO `detalle_movimiento` VALUES (53,64,283);
INSERT INTO `detalle_movimiento` VALUES (53,85,286);
INSERT INTO `detalle_movimiento` VALUES (53,76,287);
INSERT INTO `detalle_movimiento` VALUES (53,71,292);
INSERT INTO `detalle_movimiento` VALUES (53,53,294);
INSERT INTO `detalle_movimiento` VALUES (53,76,296);
INSERT INTO `detalle_movimiento` VALUES (53,73,297);
INSERT INTO `detalle_movimiento` VALUES (53,58,299);
INSERT INTO `detalle_movimiento` VALUES (53,66,301);
INSERT INTO `detalle_movimiento` VALUES (53,74,303);
INSERT INTO `detalle_movimiento` VALUES (53,51,307);
INSERT INTO `detalle_movimiento` VALUES (53,88,308);
INSERT INTO `detalle_movimiento` VALUES (53,96,315);
INSERT INTO `detalle_movimiento` VALUES (53,74,320);
INSERT INTO `detalle_movimiento` VALUES (53,58,322);
INSERT INTO `detalle_movimiento` VALUES (53,96,325);
INSERT INTO `detalle_movimiento` VALUES (53,82,329);
INSERT INTO `detalle_movimiento` VALUES (53,73,331);
INSERT INTO `detalle_movimiento` VALUES (53,65,334);
INSERT INTO `detalle_movimiento` VALUES (53,100,336);
INSERT INTO `detalle_movimiento` VALUES (53,100,339);
INSERT INTO `detalle_movimiento` VALUES (53,88,341);
INSERT INTO `detalle_movimiento` VALUES (53,85,342);
INSERT INTO `detalle_movimiento` VALUES (53,81,343);
INSERT INTO `detalle_movimiento` VALUES (53,56,345);
INSERT INTO `detalle_movimiento` VALUES (53,92,348);
INSERT INTO `detalle_movimiento` VALUES (53,93,356);
INSERT INTO `detalle_movimiento` VALUES (53,84,357);
INSERT INTO `detalle_movimiento` VALUES (53,54,359);
INSERT INTO `detalle_movimiento` VALUES (53,52,361);
INSERT INTO `detalle_movimiento` VALUES (53,86,367);
INSERT INTO `detalle_movimiento` VALUES (53,54,372);
INSERT INTO `detalle_movimiento` VALUES (53,74,373);
INSERT INTO `detalle_movimiento` VALUES (53,69,375);
INSERT INTO `detalle_movimiento` VALUES (53,60,378);
INSERT INTO `detalle_movimiento` VALUES (53,85,379);
INSERT INTO `detalle_movimiento` VALUES (53,79,381);
INSERT INTO `detalle_movimiento` VALUES (53,75,385);
INSERT INTO `detalle_movimiento` VALUES (53,99,390);
INSERT INTO `detalle_movimiento` VALUES (53,76,391);
INSERT INTO `detalle_movimiento` VALUES (53,76,393);
INSERT INTO `detalle_movimiento` VALUES (53,53,397);
INSERT INTO `detalle_movimiento` VALUES (53,84,398);
INSERT INTO `detalle_movimiento` VALUES (53,99,404);
INSERT INTO `detalle_movimiento` VALUES (55,67,1);
INSERT INTO `detalle_movimiento` VALUES (55,91,4);
INSERT INTO `detalle_movimiento` VALUES (55,68,9);
INSERT INTO `detalle_movimiento` VALUES (55,96,11);
INSERT INTO `detalle_movimiento` VALUES (55,73,24);
INSERT INTO `detalle_movimiento` VALUES (55,83,25);
INSERT INTO `detalle_movimiento` VALUES (55,75,28);
INSERT INTO `detalle_movimiento` VALUES (55,68,32);
INSERT INTO `detalle_movimiento` VALUES (55,71,33);
INSERT INTO `detalle_movimiento` VALUES (55,84,35);
INSERT INTO `detalle_movimiento` VALUES (55,73,36);
INSERT INTO `detalle_movimiento` VALUES (55,74,37);
INSERT INTO `detalle_movimiento` VALUES (55,87,39);
INSERT INTO `detalle_movimiento` VALUES (55,90,44);
INSERT INTO `detalle_movimiento` VALUES (55,89,52);
INSERT INTO `detalle_movimiento` VALUES (55,91,54);
INSERT INTO `detalle_movimiento` VALUES (55,100,55);
INSERT INTO `detalle_movimiento` VALUES (55,100,57);
INSERT INTO `detalle_movimiento` VALUES (55,65,62);
INSERT INTO `detalle_movimiento` VALUES (55,74,65);
INSERT INTO `detalle_movimiento` VALUES (55,54,66);
INSERT INTO `detalle_movimiento` VALUES (55,98,67);
INSERT INTO `detalle_movimiento` VALUES (55,66,68);
INSERT INTO `detalle_movimiento` VALUES (55,75,69);
INSERT INTO `detalle_movimiento` VALUES (55,93,71);
INSERT INTO `detalle_movimiento` VALUES (55,87,76);
INSERT INTO `detalle_movimiento` VALUES (55,94,77);
INSERT INTO `detalle_movimiento` VALUES (55,72,82);
INSERT INTO `detalle_movimiento` VALUES (55,59,85);
INSERT INTO `detalle_movimiento` VALUES (55,100,88);
INSERT INTO `detalle_movimiento` VALUES (55,70,90);
INSERT INTO `detalle_movimiento` VALUES (55,55,91);
INSERT INTO `detalle_movimiento` VALUES (55,73,92);
INSERT INTO `detalle_movimiento` VALUES (55,80,104);
INSERT INTO `detalle_movimiento` VALUES (55,100,108);
INSERT INTO `detalle_movimiento` VALUES (55,60,111);
INSERT INTO `detalle_movimiento` VALUES (55,88,118);
INSERT INTO `detalle_movimiento` VALUES (55,76,129);
INSERT INTO `detalle_movimiento` VALUES (55,88,130);
INSERT INTO `detalle_movimiento` VALUES (55,92,139);
INSERT INTO `detalle_movimiento` VALUES (55,94,140);
INSERT INTO `detalle_movimiento` VALUES (55,87,142);
INSERT INTO `detalle_movimiento` VALUES (55,75,144);
INSERT INTO `detalle_movimiento` VALUES (55,97,146);
INSERT INTO `detalle_movimiento` VALUES (55,93,147);
INSERT INTO `detalle_movimiento` VALUES (55,54,156);
INSERT INTO `detalle_movimiento` VALUES (55,90,158);
INSERT INTO `detalle_movimiento` VALUES (55,76,164);
INSERT INTO `detalle_movimiento` VALUES (55,67,166);
INSERT INTO `detalle_movimiento` VALUES (55,74,167);
INSERT INTO `detalle_movimiento` VALUES (55,77,172);
INSERT INTO `detalle_movimiento` VALUES (55,73,174);
INSERT INTO `detalle_movimiento` VALUES (55,66,176);
INSERT INTO `detalle_movimiento` VALUES (55,80,187);
INSERT INTO `detalle_movimiento` VALUES (55,68,190);
INSERT INTO `detalle_movimiento` VALUES (55,76,193);
INSERT INTO `detalle_movimiento` VALUES (55,81,194);
INSERT INTO `detalle_movimiento` VALUES (55,89,197);
INSERT INTO `detalle_movimiento` VALUES (55,89,198);
INSERT INTO `detalle_movimiento` VALUES (55,76,200);
INSERT INTO `detalle_movimiento` VALUES (55,64,202);
INSERT INTO `detalle_movimiento` VALUES (55,101,206);
INSERT INTO `detalle_movimiento` VALUES (55,99,209);
INSERT INTO `detalle_movimiento` VALUES (55,75,214);
INSERT INTO `detalle_movimiento` VALUES (55,92,218);
INSERT INTO `detalle_movimiento` VALUES (55,62,225);
INSERT INTO `detalle_movimiento` VALUES (55,64,226);
INSERT INTO `detalle_movimiento` VALUES (55,69,228);
INSERT INTO `detalle_movimiento` VALUES (55,84,234);
INSERT INTO `detalle_movimiento` VALUES (55,100,238);
INSERT INTO `detalle_movimiento` VALUES (55,63,239);
INSERT INTO `detalle_movimiento` VALUES (55,81,241);
INSERT INTO `detalle_movimiento` VALUES (55,80,242);
INSERT INTO `detalle_movimiento` VALUES (55,53,243);
INSERT INTO `detalle_movimiento` VALUES (55,51,244);
INSERT INTO `detalle_movimiento` VALUES (55,100,246);
INSERT INTO `detalle_movimiento` VALUES (55,99,248);
INSERT INTO `detalle_movimiento` VALUES (55,90,250);
INSERT INTO `detalle_movimiento` VALUES (55,94,251);
INSERT INTO `detalle_movimiento` VALUES (55,98,255);
INSERT INTO `detalle_movimiento` VALUES (55,70,258);
INSERT INTO `detalle_movimiento` VALUES (55,100,260);
INSERT INTO `detalle_movimiento` VALUES (55,66,261);
INSERT INTO `detalle_movimiento` VALUES (55,53,274);
INSERT INTO `detalle_movimiento` VALUES (55,66,279);
INSERT INTO `detalle_movimiento` VALUES (55,86,280);
INSERT INTO `detalle_movimiento` VALUES (55,69,281);
INSERT INTO `detalle_movimiento` VALUES (55,94,282);
INSERT INTO `detalle_movimiento` VALUES (55,80,286);
INSERT INTO `detalle_movimiento` VALUES (55,78,287);
INSERT INTO `detalle_movimiento` VALUES (55,85,288);
INSERT INTO `detalle_movimiento` VALUES (55,57,290);
INSERT INTO `detalle_movimiento` VALUES (55,75,293);
INSERT INTO `detalle_movimiento` VALUES (55,76,294);
INSERT INTO `detalle_movimiento` VALUES (55,55,296);
INSERT INTO `detalle_movimiento` VALUES (55,71,297);
INSERT INTO `detalle_movimiento` VALUES (55,99,301);
INSERT INTO `detalle_movimiento` VALUES (55,79,304);
INSERT INTO `detalle_movimiento` VALUES (55,52,307);
INSERT INTO `detalle_movimiento` VALUES (55,76,308);
INSERT INTO `detalle_movimiento` VALUES (55,63,310);
INSERT INTO `detalle_movimiento` VALUES (55,64,318);
INSERT INTO `detalle_movimiento` VALUES (55,93,321);
INSERT INTO `detalle_movimiento` VALUES (55,81,322);
INSERT INTO `detalle_movimiento` VALUES (55,78,325);
INSERT INTO `detalle_movimiento` VALUES (55,88,333);
INSERT INTO `detalle_movimiento` VALUES (55,90,336);
INSERT INTO `detalle_movimiento` VALUES (55,94,337);
INSERT INTO `detalle_movimiento` VALUES (55,78,338);
INSERT INTO `detalle_movimiento` VALUES (55,97,339);
INSERT INTO `detalle_movimiento` VALUES (55,99,343);
INSERT INTO `detalle_movimiento` VALUES (55,60,346);
INSERT INTO `detalle_movimiento` VALUES (55,79,348);
INSERT INTO `detalle_movimiento` VALUES (55,70,353);
INSERT INTO `detalle_movimiento` VALUES (55,76,357);
INSERT INTO `detalle_movimiento` VALUES (55,52,367);
INSERT INTO `detalle_movimiento` VALUES (55,58,368);
INSERT INTO `detalle_movimiento` VALUES (55,68,371);
INSERT INTO `detalle_movimiento` VALUES (55,88,373);
INSERT INTO `detalle_movimiento` VALUES (55,83,374);
INSERT INTO `detalle_movimiento` VALUES (55,59,375);
INSERT INTO `detalle_movimiento` VALUES (55,79,379);
INSERT INTO `detalle_movimiento` VALUES (55,88,381);
INSERT INTO `detalle_movimiento` VALUES (55,54,386);
INSERT INTO `detalle_movimiento` VALUES (55,70,393);
INSERT INTO `detalle_movimiento` VALUES (55,76,397);
INSERT INTO `detalle_movimiento` VALUES (55,67,398);
INSERT INTO `detalle_movimiento` VALUES (55,52,400);
INSERT INTO `detalle_movimiento` VALUES (55,88,403);
INSERT INTO `detalle_movimiento` VALUES (55,79,404);
INSERT INTO `detalle_movimiento` VALUES (57,95,1);
INSERT INTO `detalle_movimiento` VALUES (57,56,3);
INSERT INTO `detalle_movimiento` VALUES (57,85,5);
INSERT INTO `detalle_movimiento` VALUES (57,92,6);
INSERT INTO `detalle_movimiento` VALUES (57,56,9);
INSERT INTO `detalle_movimiento` VALUES (57,69,10);
INSERT INTO `detalle_movimiento` VALUES (57,96,14);
INSERT INTO `detalle_movimiento` VALUES (57,81,16);
INSERT INTO `detalle_movimiento` VALUES (57,72,22);
INSERT INTO `detalle_movimiento` VALUES (57,99,33);
INSERT INTO `detalle_movimiento` VALUES (57,84,34);
INSERT INTO `detalle_movimiento` VALUES (57,53,37);
INSERT INTO `detalle_movimiento` VALUES (57,80,40);
INSERT INTO `detalle_movimiento` VALUES (57,86,43);
INSERT INTO `detalle_movimiento` VALUES (57,85,44);
INSERT INTO `detalle_movimiento` VALUES (57,54,45);
INSERT INTO `detalle_movimiento` VALUES (57,56,46);
INSERT INTO `detalle_movimiento` VALUES (57,80,47);
INSERT INTO `detalle_movimiento` VALUES (57,59,49);
INSERT INTO `detalle_movimiento` VALUES (57,99,53);
INSERT INTO `detalle_movimiento` VALUES (57,78,58);
INSERT INTO `detalle_movimiento` VALUES (57,87,59);
INSERT INTO `detalle_movimiento` VALUES (57,97,61);
INSERT INTO `detalle_movimiento` VALUES (57,89,66);
INSERT INTO `detalle_movimiento` VALUES (57,101,68);
INSERT INTO `detalle_movimiento` VALUES (57,52,71);
INSERT INTO `detalle_movimiento` VALUES (57,86,75);
INSERT INTO `detalle_movimiento` VALUES (57,55,76);
INSERT INTO `detalle_movimiento` VALUES (57,56,77);
INSERT INTO `detalle_movimiento` VALUES (57,74,79);
INSERT INTO `detalle_movimiento` VALUES (57,84,80);
INSERT INTO `detalle_movimiento` VALUES (57,66,81);
INSERT INTO `detalle_movimiento` VALUES (57,81,83);
INSERT INTO `detalle_movimiento` VALUES (57,60,84);
INSERT INTO `detalle_movimiento` VALUES (57,91,85);
INSERT INTO `detalle_movimiento` VALUES (57,83,87);
INSERT INTO `detalle_movimiento` VALUES (57,66,89);
INSERT INTO `detalle_movimiento` VALUES (57,61,90);
INSERT INTO `detalle_movimiento` VALUES (57,53,91);
INSERT INTO `detalle_movimiento` VALUES (57,94,92);
INSERT INTO `detalle_movimiento` VALUES (57,58,96);
INSERT INTO `detalle_movimiento` VALUES (57,65,99);
INSERT INTO `detalle_movimiento` VALUES (57,66,101);
INSERT INTO `detalle_movimiento` VALUES (57,64,103);
INSERT INTO `detalle_movimiento` VALUES (57,88,109);
INSERT INTO `detalle_movimiento` VALUES (57,86,115);
INSERT INTO `detalle_movimiento` VALUES (57,58,116);
INSERT INTO `detalle_movimiento` VALUES (57,58,120);
INSERT INTO `detalle_movimiento` VALUES (57,78,125);
INSERT INTO `detalle_movimiento` VALUES (57,60,130);
INSERT INTO `detalle_movimiento` VALUES (57,71,136);
INSERT INTO `detalle_movimiento` VALUES (57,67,143);
INSERT INTO `detalle_movimiento` VALUES (57,56,144);
INSERT INTO `detalle_movimiento` VALUES (57,75,149);
INSERT INTO `detalle_movimiento` VALUES (57,78,151);
INSERT INTO `detalle_movimiento` VALUES (57,83,153);
INSERT INTO `detalle_movimiento` VALUES (57,82,155);
INSERT INTO `detalle_movimiento` VALUES (57,71,157);
INSERT INTO `detalle_movimiento` VALUES (57,67,158);
INSERT INTO `detalle_movimiento` VALUES (57,89,161);
INSERT INTO `detalle_movimiento` VALUES (57,78,162);
INSERT INTO `detalle_movimiento` VALUES (57,58,165);
INSERT INTO `detalle_movimiento` VALUES (57,91,169);
INSERT INTO `detalle_movimiento` VALUES (57,70,170);
INSERT INTO `detalle_movimiento` VALUES (57,71,172);
INSERT INTO `detalle_movimiento` VALUES (57,100,173);
INSERT INTO `detalle_movimiento` VALUES (57,92,175);
INSERT INTO `detalle_movimiento` VALUES (57,100,179);
INSERT INTO `detalle_movimiento` VALUES (57,55,182);
INSERT INTO `detalle_movimiento` VALUES (57,59,185);
INSERT INTO `detalle_movimiento` VALUES (57,81,191);
INSERT INTO `detalle_movimiento` VALUES (57,80,200);
INSERT INTO `detalle_movimiento` VALUES (57,61,203);
INSERT INTO `detalle_movimiento` VALUES (57,56,204);
INSERT INTO `detalle_movimiento` VALUES (57,56,205);
INSERT INTO `detalle_movimiento` VALUES (57,79,207);
INSERT INTO `detalle_movimiento` VALUES (57,65,208);
INSERT INTO `detalle_movimiento` VALUES (57,80,209);
INSERT INTO `detalle_movimiento` VALUES (57,53,211);
INSERT INTO `detalle_movimiento` VALUES (57,68,214);
INSERT INTO `detalle_movimiento` VALUES (57,76,216);
INSERT INTO `detalle_movimiento` VALUES (57,59,217);
INSERT INTO `detalle_movimiento` VALUES (57,78,226);
INSERT INTO `detalle_movimiento` VALUES (57,96,228);
INSERT INTO `detalle_movimiento` VALUES (57,76,230);
INSERT INTO `detalle_movimiento` VALUES (57,79,231);
INSERT INTO `detalle_movimiento` VALUES (57,88,238);
INSERT INTO `detalle_movimiento` VALUES (57,75,243);
INSERT INTO `detalle_movimiento` VALUES (57,98,246);
INSERT INTO `detalle_movimiento` VALUES (57,72,249);
INSERT INTO `detalle_movimiento` VALUES (57,71,251);
INSERT INTO `detalle_movimiento` VALUES (57,52,261);
INSERT INTO `detalle_movimiento` VALUES (57,52,270);
INSERT INTO `detalle_movimiento` VALUES (57,89,271);
INSERT INTO `detalle_movimiento` VALUES (57,56,276);
INSERT INTO `detalle_movimiento` VALUES (57,85,279);
INSERT INTO `detalle_movimiento` VALUES (57,88,281);
INSERT INTO `detalle_movimiento` VALUES (57,62,291);
INSERT INTO `detalle_movimiento` VALUES (57,100,292);
INSERT INTO `detalle_movimiento` VALUES (57,84,293);
INSERT INTO `detalle_movimiento` VALUES (57,76,296);
INSERT INTO `detalle_movimiento` VALUES (57,54,299);
INSERT INTO `detalle_movimiento` VALUES (57,94,301);
INSERT INTO `detalle_movimiento` VALUES (57,71,302);
INSERT INTO `detalle_movimiento` VALUES (57,55,305);
INSERT INTO `detalle_movimiento` VALUES (57,84,306);
INSERT INTO `detalle_movimiento` VALUES (57,64,308);
INSERT INTO `detalle_movimiento` VALUES (57,84,310);
INSERT INTO `detalle_movimiento` VALUES (57,96,311);
INSERT INTO `detalle_movimiento` VALUES (57,68,313);
INSERT INTO `detalle_movimiento` VALUES (57,59,320);
INSERT INTO `detalle_movimiento` VALUES (57,82,323);
INSERT INTO `detalle_movimiento` VALUES (57,94,325);
INSERT INTO `detalle_movimiento` VALUES (57,52,327);
INSERT INTO `detalle_movimiento` VALUES (57,91,331);
INSERT INTO `detalle_movimiento` VALUES (57,71,333);
INSERT INTO `detalle_movimiento` VALUES (57,90,336);
INSERT INTO `detalle_movimiento` VALUES (57,87,337);
INSERT INTO `detalle_movimiento` VALUES (57,100,339);
INSERT INTO `detalle_movimiento` VALUES (57,51,340);
INSERT INTO `detalle_movimiento` VALUES (57,83,345);
INSERT INTO `detalle_movimiento` VALUES (57,55,346);
INSERT INTO `detalle_movimiento` VALUES (57,84,348);
INSERT INTO `detalle_movimiento` VALUES (57,86,349);
INSERT INTO `detalle_movimiento` VALUES (57,51,356);
INSERT INTO `detalle_movimiento` VALUES (57,98,360);
INSERT INTO `detalle_movimiento` VALUES (57,59,361);
INSERT INTO `detalle_movimiento` VALUES (57,87,363);
INSERT INTO `detalle_movimiento` VALUES (57,84,364);
INSERT INTO `detalle_movimiento` VALUES (57,84,365);
INSERT INTO `detalle_movimiento` VALUES (57,86,371);
INSERT INTO `detalle_movimiento` VALUES (57,67,372);
INSERT INTO `detalle_movimiento` VALUES (57,72,374);
INSERT INTO `detalle_movimiento` VALUES (57,58,375);
INSERT INTO `detalle_movimiento` VALUES (57,59,379);
INSERT INTO `detalle_movimiento` VALUES (57,69,380);
INSERT INTO `detalle_movimiento` VALUES (57,82,381);
INSERT INTO `detalle_movimiento` VALUES (57,67,385);
INSERT INTO `detalle_movimiento` VALUES (57,65,392);
INSERT INTO `detalle_movimiento` VALUES (57,87,393);
INSERT INTO `detalle_movimiento` VALUES (57,97,394);
INSERT INTO `detalle_movimiento` VALUES (57,84,396);
INSERT INTO `detalle_movimiento` VALUES (57,59,397);
INSERT INTO `detalle_movimiento` VALUES (57,54,398);
INSERT INTO `detalle_movimiento` VALUES (57,93,399);
INSERT INTO `detalle_movimiento` VALUES (57,60,400);
INSERT INTO `detalle_movimiento` VALUES (57,83,402);
INSERT INTO `detalle_movimiento` VALUES (57,76,403);
INSERT INTO `detalle_movimiento` VALUES (57,72,404);
INSERT INTO `detalle_movimiento` VALUES (58,61,10);
INSERT INTO `detalle_movimiento` VALUES (58,57,20);
INSERT INTO `detalle_movimiento` VALUES (58,55,43);
INSERT INTO `detalle_movimiento` VALUES (58,69,52);
INSERT INTO `detalle_movimiento` VALUES (58,65,65);
INSERT INTO `detalle_movimiento` VALUES (58,92,66);
INSERT INTO `detalle_movimiento` VALUES (58,87,90);
INSERT INTO `detalle_movimiento` VALUES (58,100,91);
INSERT INTO `detalle_movimiento` VALUES (58,79,101);
INSERT INTO `detalle_movimiento` VALUES (58,62,108);
INSERT INTO `detalle_movimiento` VALUES (58,78,114);
INSERT INTO `detalle_movimiento` VALUES (58,54,136);
INSERT INTO `detalle_movimiento` VALUES (58,59,139);
INSERT INTO `detalle_movimiento` VALUES (58,88,155);
INSERT INTO `detalle_movimiento` VALUES (58,96,157);
INSERT INTO `detalle_movimiento` VALUES (58,84,168);
INSERT INTO `detalle_movimiento` VALUES (58,77,173);
INSERT INTO `detalle_movimiento` VALUES (58,86,174);
INSERT INTO `detalle_movimiento` VALUES (58,100,184);
INSERT INTO `detalle_movimiento` VALUES (58,79,189);
INSERT INTO `detalle_movimiento` VALUES (58,82,190);
INSERT INTO `detalle_movimiento` VALUES (58,71,216);
INSERT INTO `detalle_movimiento` VALUES (58,61,244);
INSERT INTO `detalle_movimiento` VALUES (58,82,252);
INSERT INTO `detalle_movimiento` VALUES (58,60,256);
INSERT INTO `detalle_movimiento` VALUES (58,71,291);
INSERT INTO `detalle_movimiento` VALUES (58,70,292);
INSERT INTO `detalle_movimiento` VALUES (58,74,296);
INSERT INTO `detalle_movimiento` VALUES (58,65,301);
INSERT INTO `detalle_movimiento` VALUES (58,76,322);
INSERT INTO `detalle_movimiento` VALUES (58,90,325);
INSERT INTO `detalle_movimiento` VALUES (58,51,337);
INSERT INTO `detalle_movimiento` VALUES (58,60,338);
INSERT INTO `detalle_movimiento` VALUES (58,82,396);
INSERT INTO `detalle_movimiento` VALUES (58,74,398);
INSERT INTO `detalle_movimiento` VALUES (58,88,405);
INSERT INTO `detalle_movimiento` VALUES (59,98,36);
INSERT INTO `detalle_movimiento` VALUES (59,95,99);
INSERT INTO `detalle_movimiento` VALUES (59,89,136);
INSERT INTO `detalle_movimiento` VALUES (59,82,236);
INSERT INTO `detalle_movimiento` VALUES (59,68,244);
INSERT INTO `detalle_movimiento` VALUES (60,52,20);
INSERT INTO `detalle_movimiento` VALUES (60,78,36);
INSERT INTO `detalle_movimiento` VALUES (60,96,43);
INSERT INTO `detalle_movimiento` VALUES (60,94,57);
INSERT INTO `detalle_movimiento` VALUES (60,56,90);
INSERT INTO `detalle_movimiento` VALUES (60,74,91);
INSERT INTO `detalle_movimiento` VALUES (60,77,99);
INSERT INTO `detalle_movimiento` VALUES (60,57,101);
INSERT INTO `detalle_movimiento` VALUES (60,90,113);
INSERT INTO `detalle_movimiento` VALUES (60,100,136);
INSERT INTO `detalle_movimiento` VALUES (60,90,157);
INSERT INTO `detalle_movimiento` VALUES (60,81,168);
INSERT INTO `detalle_movimiento` VALUES (60,91,174);
INSERT INTO `detalle_movimiento` VALUES (60,98,184);
INSERT INTO `detalle_movimiento` VALUES (60,81,241);
INSERT INTO `detalle_movimiento` VALUES (60,51,263);
INSERT INTO `detalle_movimiento` VALUES (60,99,272);
INSERT INTO `detalle_movimiento` VALUES (60,85,290);
INSERT INTO `detalle_movimiento` VALUES (60,52,341);
INSERT INTO `detalle_movimiento` VALUES (60,87,393);
INSERT INTO `detalle_movimiento` VALUES (60,75,405);
INSERT INTO `detalle_movimiento` VALUES (63,53,20);
INSERT INTO `detalle_movimiento` VALUES (63,94,36);
INSERT INTO `detalle_movimiento` VALUES (63,91,65);
INSERT INTO `detalle_movimiento` VALUES (63,58,84);
INSERT INTO `detalle_movimiento` VALUES (63,67,90);
INSERT INTO `detalle_movimiento` VALUES (63,92,101);
INSERT INTO `detalle_movimiento` VALUES (63,67,108);
INSERT INTO `detalle_movimiento` VALUES (63,59,113);
INSERT INTO `detalle_movimiento` VALUES (63,100,122);
INSERT INTO `detalle_movimiento` VALUES (63,80,130);
INSERT INTO `detalle_movimiento` VALUES (63,80,136);
INSERT INTO `detalle_movimiento` VALUES (63,78,165);
INSERT INTO `detalle_movimiento` VALUES (63,93,190);
INSERT INTO `detalle_movimiento` VALUES (63,52,236);
INSERT INTO `detalle_movimiento` VALUES (63,80,244);
INSERT INTO `detalle_movimiento` VALUES (63,69,256);
INSERT INTO `detalle_movimiento` VALUES (63,77,272);
INSERT INTO `detalle_movimiento` VALUES (63,68,290);
INSERT INTO `detalle_movimiento` VALUES (63,53,292);
INSERT INTO `detalle_movimiento` VALUES (63,67,341);
INSERT INTO `detalle_movimiento` VALUES (63,62,379);
INSERT INTO `detalle_movimiento` VALUES (64,86,2);
INSERT INTO `detalle_movimiento` VALUES (64,85,3);
INSERT INTO `detalle_movimiento` VALUES (64,61,10);
INSERT INTO `detalle_movimiento` VALUES (64,69,20);
INSERT INTO `detalle_movimiento` VALUES (64,75,24);
INSERT INTO `detalle_movimiento` VALUES (64,68,28);
INSERT INTO `detalle_movimiento` VALUES (64,87,33);
INSERT INTO `detalle_movimiento` VALUES (64,71,35);
INSERT INTO `detalle_movimiento` VALUES (64,89,36);
INSERT INTO `detalle_movimiento` VALUES (64,95,37);
INSERT INTO `detalle_movimiento` VALUES (64,84,43);
INSERT INTO `detalle_movimiento` VALUES (64,55,44);
INSERT INTO `detalle_movimiento` VALUES (64,65,46);
INSERT INTO `detalle_movimiento` VALUES (64,77,50);
INSERT INTO `detalle_movimiento` VALUES (64,66,51);
INSERT INTO `detalle_movimiento` VALUES (64,97,52);
INSERT INTO `detalle_movimiento` VALUES (64,53,55);
INSERT INTO `detalle_movimiento` VALUES (64,69,57);
INSERT INTO `detalle_movimiento` VALUES (64,78,66);
INSERT INTO `detalle_movimiento` VALUES (64,69,67);
INSERT INTO `detalle_movimiento` VALUES (64,80,73);
INSERT INTO `detalle_movimiento` VALUES (64,69,79);
INSERT INTO `detalle_movimiento` VALUES (64,58,82);
INSERT INTO `detalle_movimiento` VALUES (64,62,84);
INSERT INTO `detalle_movimiento` VALUES (64,53,85);
INSERT INTO `detalle_movimiento` VALUES (64,52,96);
INSERT INTO `detalle_movimiento` VALUES (64,73,98);
INSERT INTO `detalle_movimiento` VALUES (64,69,101);
INSERT INTO `detalle_movimiento` VALUES (64,91,104);
INSERT INTO `detalle_movimiento` VALUES (64,84,106);
INSERT INTO `detalle_movimiento` VALUES (64,58,114);
INSERT INTO `detalle_movimiento` VALUES (64,71,122);
INSERT INTO `detalle_movimiento` VALUES (64,83,137);
INSERT INTO `detalle_movimiento` VALUES (64,79,139);
INSERT INTO `detalle_movimiento` VALUES (64,70,142);
INSERT INTO `detalle_movimiento` VALUES (64,89,144);
INSERT INTO `detalle_movimiento` VALUES (64,78,147);
INSERT INTO `detalle_movimiento` VALUES (64,99,155);
INSERT INTO `detalle_movimiento` VALUES (64,65,162);
INSERT INTO `detalle_movimiento` VALUES (64,73,164);
INSERT INTO `detalle_movimiento` VALUES (64,93,168);
INSERT INTO `detalle_movimiento` VALUES (64,65,169);
INSERT INTO `detalle_movimiento` VALUES (64,99,171);
INSERT INTO `detalle_movimiento` VALUES (64,87,175);
INSERT INTO `detalle_movimiento` VALUES (64,51,184);
INSERT INTO `detalle_movimiento` VALUES (64,76,191);
INSERT INTO `detalle_movimiento` VALUES (64,55,194);
INSERT INTO `detalle_movimiento` VALUES (64,63,196);
INSERT INTO `detalle_movimiento` VALUES (64,95,197);
INSERT INTO `detalle_movimiento` VALUES (64,93,199);
INSERT INTO `detalle_movimiento` VALUES (64,51,200);
INSERT INTO `detalle_movimiento` VALUES (64,100,202);
INSERT INTO `detalle_movimiento` VALUES (64,59,205);
INSERT INTO `detalle_movimiento` VALUES (64,83,225);
INSERT INTO `detalle_movimiento` VALUES (64,82,231);
INSERT INTO `detalle_movimiento` VALUES (64,59,237);
INSERT INTO `detalle_movimiento` VALUES (64,96,242);
INSERT INTO `detalle_movimiento` VALUES (64,57,244);
INSERT INTO `detalle_movimiento` VALUES (64,81,246);
INSERT INTO `detalle_movimiento` VALUES (64,95,247);
INSERT INTO `detalle_movimiento` VALUES (64,60,252);
INSERT INTO `detalle_movimiento` VALUES (64,58,256);
INSERT INTO `detalle_movimiento` VALUES (64,70,265);
INSERT INTO `detalle_movimiento` VALUES (64,71,273);
INSERT INTO `detalle_movimiento` VALUES (64,95,279);
INSERT INTO `detalle_movimiento` VALUES (64,73,283);
INSERT INTO `detalle_movimiento` VALUES (64,60,290);
INSERT INTO `detalle_movimiento` VALUES (64,81,291);
INSERT INTO `detalle_movimiento` VALUES (64,77,296);
INSERT INTO `detalle_movimiento` VALUES (64,71,299);
INSERT INTO `detalle_movimiento` VALUES (64,97,303);
INSERT INTO `detalle_movimiento` VALUES (64,73,312);
INSERT INTO `detalle_movimiento` VALUES (64,97,321);
INSERT INTO `detalle_movimiento` VALUES (64,87,323);
INSERT INTO `detalle_movimiento` VALUES (64,52,333);
INSERT INTO `detalle_movimiento` VALUES (64,59,338);
INSERT INTO `detalle_movimiento` VALUES (64,93,364);
INSERT INTO `detalle_movimiento` VALUES (64,96,371);
INSERT INTO `detalle_movimiento` VALUES (64,93,379);
INSERT INTO `detalle_movimiento` VALUES (64,89,381);
INSERT INTO `detalle_movimiento` VALUES (64,58,392);
INSERT INTO `detalle_movimiento` VALUES (64,69,393);
INSERT INTO `detalle_movimiento` VALUES (64,91,395);
INSERT INTO `detalle_movimiento` VALUES (64,71,396);
INSERT INTO `detalle_movimiento` VALUES (64,69,397);
INSERT INTO `detalle_movimiento` VALUES (64,63,403);
INSERT INTO `detalle_movimiento` VALUES (64,90,405);
INSERT INTO `detalle_movimiento` VALUES (66,70,1);
INSERT INTO `detalle_movimiento` VALUES (66,88,3);
INSERT INTO `detalle_movimiento` VALUES (66,52,4);
INSERT INTO `detalle_movimiento` VALUES (66,94,5);
INSERT INTO `detalle_movimiento` VALUES (66,64,6);
INSERT INTO `detalle_movimiento` VALUES (66,69,9);
INSERT INTO `detalle_movimiento` VALUES (66,69,11);
INSERT INTO `detalle_movimiento` VALUES (66,72,18);
INSERT INTO `detalle_movimiento` VALUES (66,57,20);
INSERT INTO `detalle_movimiento` VALUES (66,78,25);
INSERT INTO `detalle_movimiento` VALUES (66,63,27);
INSERT INTO `detalle_movimiento` VALUES (66,87,28);
INSERT INTO `detalle_movimiento` VALUES (66,51,32);
INSERT INTO `detalle_movimiento` VALUES (66,93,35);
INSERT INTO `detalle_movimiento` VALUES (66,87,36);
INSERT INTO `detalle_movimiento` VALUES (66,75,37);
INSERT INTO `detalle_movimiento` VALUES (66,97,40);
INSERT INTO `detalle_movimiento` VALUES (66,68,41);
INSERT INTO `detalle_movimiento` VALUES (66,58,43);
INSERT INTO `detalle_movimiento` VALUES (66,55,47);
INSERT INTO `detalle_movimiento` VALUES (66,86,49);
INSERT INTO `detalle_movimiento` VALUES (66,68,51);
INSERT INTO `detalle_movimiento` VALUES (66,59,52);
INSERT INTO `detalle_movimiento` VALUES (66,78,62);
INSERT INTO `detalle_movimiento` VALUES (66,100,68);
INSERT INTO `detalle_movimiento` VALUES (66,93,76);
INSERT INTO `detalle_movimiento` VALUES (66,77,78);
INSERT INTO `detalle_movimiento` VALUES (66,92,79);
INSERT INTO `detalle_movimiento` VALUES (66,59,82);
INSERT INTO `detalle_movimiento` VALUES (66,75,83);
INSERT INTO `detalle_movimiento` VALUES (66,56,84);
INSERT INTO `detalle_movimiento` VALUES (66,71,87);
INSERT INTO `detalle_movimiento` VALUES (66,61,88);
INSERT INTO `detalle_movimiento` VALUES (66,90,89);
INSERT INTO `detalle_movimiento` VALUES (66,73,90);
INSERT INTO `detalle_movimiento` VALUES (66,77,99);
INSERT INTO `detalle_movimiento` VALUES (66,52,103);
INSERT INTO `detalle_movimiento` VALUES (66,87,108);
INSERT INTO `detalle_movimiento` VALUES (66,62,109);
INSERT INTO `detalle_movimiento` VALUES (66,71,115);
INSERT INTO `detalle_movimiento` VALUES (66,99,118);
INSERT INTO `detalle_movimiento` VALUES (66,80,122);
INSERT INTO `detalle_movimiento` VALUES (66,72,129);
INSERT INTO `detalle_movimiento` VALUES (66,64,131);
INSERT INTO `detalle_movimiento` VALUES (66,60,133);
INSERT INTO `detalle_movimiento` VALUES (66,71,134);
INSERT INTO `detalle_movimiento` VALUES (66,86,140);
INSERT INTO `detalle_movimiento` VALUES (66,58,142);
INSERT INTO `detalle_movimiento` VALUES (66,57,143);
INSERT INTO `detalle_movimiento` VALUES (66,76,144);
INSERT INTO `detalle_movimiento` VALUES (66,81,149);
INSERT INTO `detalle_movimiento` VALUES (66,92,151);
INSERT INTO `detalle_movimiento` VALUES (66,92,155);
INSERT INTO `detalle_movimiento` VALUES (66,87,156);
INSERT INTO `detalle_movimiento` VALUES (66,53,157);
INSERT INTO `detalle_movimiento` VALUES (66,57,161);
INSERT INTO `detalle_movimiento` VALUES (66,55,162);
INSERT INTO `detalle_movimiento` VALUES (66,69,164);
INSERT INTO `detalle_movimiento` VALUES (66,78,166);
INSERT INTO `detalle_movimiento` VALUES (66,81,167);
INSERT INTO `detalle_movimiento` VALUES (66,88,170);
INSERT INTO `detalle_movimiento` VALUES (66,86,171);
INSERT INTO `detalle_movimiento` VALUES (66,89,173);
INSERT INTO `detalle_movimiento` VALUES (66,78,174);
INSERT INTO `detalle_movimiento` VALUES (66,68,176);
INSERT INTO `detalle_movimiento` VALUES (66,90,187);
INSERT INTO `detalle_movimiento` VALUES (66,96,190);
INSERT INTO `detalle_movimiento` VALUES (66,100,191);
INSERT INTO `detalle_movimiento` VALUES (66,58,194);
INSERT INTO `detalle_movimiento` VALUES (66,78,196);
INSERT INTO `detalle_movimiento` VALUES (66,52,197);
INSERT INTO `detalle_movimiento` VALUES (66,97,199);
INSERT INTO `detalle_movimiento` VALUES (66,97,203);
INSERT INTO `detalle_movimiento` VALUES (66,54,206);
INSERT INTO `detalle_movimiento` VALUES (66,73,209);
INSERT INTO `detalle_movimiento` VALUES (66,85,210);
INSERT INTO `detalle_movimiento` VALUES (66,90,212);
INSERT INTO `detalle_movimiento` VALUES (66,76,214);
INSERT INTO `detalle_movimiento` VALUES (66,87,216);
INSERT INTO `detalle_movimiento` VALUES (66,66,226);
INSERT INTO `detalle_movimiento` VALUES (66,61,231);
INSERT INTO `detalle_movimiento` VALUES (66,93,233);
INSERT INTO `detalle_movimiento` VALUES (66,52,237);
INSERT INTO `detalle_movimiento` VALUES (66,74,239);
INSERT INTO `detalle_movimiento` VALUES (66,94,242);
INSERT INTO `detalle_movimiento` VALUES (66,71,243);
INSERT INTO `detalle_movimiento` VALUES (66,87,244);
INSERT INTO `detalle_movimiento` VALUES (66,62,247);
INSERT INTO `detalle_movimiento` VALUES (66,56,248);
INSERT INTO `detalle_movimiento` VALUES (66,99,250);
INSERT INTO `detalle_movimiento` VALUES (66,61,252);
INSERT INTO `detalle_movimiento` VALUES (66,86,253);
INSERT INTO `detalle_movimiento` VALUES (66,93,263);
INSERT INTO `detalle_movimiento` VALUES (66,85,265);
INSERT INTO `detalle_movimiento` VALUES (66,59,270);
INSERT INTO `detalle_movimiento` VALUES (66,51,271);
INSERT INTO `detalle_movimiento` VALUES (66,99,273);
INSERT INTO `detalle_movimiento` VALUES (66,63,274);
INSERT INTO `detalle_movimiento` VALUES (66,89,280);
INSERT INTO `detalle_movimiento` VALUES (66,77,281);
INSERT INTO `detalle_movimiento` VALUES (66,68,282);
INSERT INTO `detalle_movimiento` VALUES (66,85,283);
INSERT INTO `detalle_movimiento` VALUES (66,64,288);
INSERT INTO `detalle_movimiento` VALUES (66,88,292);
INSERT INTO `detalle_movimiento` VALUES (66,92,293);
INSERT INTO `detalle_movimiento` VALUES (66,89,297);
INSERT INTO `detalle_movimiento` VALUES (66,94,301);
INSERT INTO `detalle_movimiento` VALUES (66,80,303);
INSERT INTO `detalle_movimiento` VALUES (66,75,304);
INSERT INTO `detalle_movimiento` VALUES (66,68,308);
INSERT INTO `detalle_movimiento` VALUES (66,71,315);
INSERT INTO `detalle_movimiento` VALUES (66,93,318);
INSERT INTO `detalle_movimiento` VALUES (66,89,320);
INSERT INTO `detalle_movimiento` VALUES (66,70,322);
INSERT INTO `detalle_movimiento` VALUES (66,84,325);
INSERT INTO `detalle_movimiento` VALUES (66,72,329);
INSERT INTO `detalle_movimiento` VALUES (66,71,330);
INSERT INTO `detalle_movimiento` VALUES (66,97,331);
INSERT INTO `detalle_movimiento` VALUES (66,87,333);
INSERT INTO `detalle_movimiento` VALUES (66,86,341);
INSERT INTO `detalle_movimiento` VALUES (66,69,342);
INSERT INTO `detalle_movimiento` VALUES (66,72,343);
INSERT INTO `detalle_movimiento` VALUES (66,82,345);
INSERT INTO `detalle_movimiento` VALUES (66,58,346);
INSERT INTO `detalle_movimiento` VALUES (66,58,348);
INSERT INTO `detalle_movimiento` VALUES (66,67,353);
INSERT INTO `detalle_movimiento` VALUES (66,83,357);
INSERT INTO `detalle_movimiento` VALUES (66,60,361);
INSERT INTO `detalle_movimiento` VALUES (66,80,363);
INSERT INTO `detalle_movimiento` VALUES (66,54,367);
INSERT INTO `detalle_movimiento` VALUES (66,67,378);
INSERT INTO `detalle_movimiento` VALUES (66,54,380);
INSERT INTO `detalle_movimiento` VALUES (66,89,381);
INSERT INTO `detalle_movimiento` VALUES (66,89,386);
INSERT INTO `detalle_movimiento` VALUES (66,78,389);
INSERT INTO `detalle_movimiento` VALUES (66,77,390);
INSERT INTO `detalle_movimiento` VALUES (66,72,397);
INSERT INTO `detalle_movimiento` VALUES (66,55,398);
INSERT INTO `detalle_movimiento` VALUES (66,68,399);
INSERT INTO `detalle_movimiento` VALUES (66,75,402);
INSERT INTO `detalle_movimiento` VALUES (66,67,404);
INSERT INTO `detalle_movimiento` VALUES (66,55,405);
INSERT INTO `detalle_movimiento` VALUES (67,88,1);
INSERT INTO `detalle_movimiento` VALUES (67,58,4);
INSERT INTO `detalle_movimiento` VALUES (67,82,5);
INSERT INTO `detalle_movimiento` VALUES (67,92,9);
INSERT INTO `detalle_movimiento` VALUES (67,83,10);
INSERT INTO `detalle_movimiento` VALUES (67,97,27);
INSERT INTO `detalle_movimiento` VALUES (67,55,33);
INSERT INTO `detalle_movimiento` VALUES (67,98,39);
INSERT INTO `detalle_movimiento` VALUES (67,87,41);
INSERT INTO `detalle_movimiento` VALUES (67,87,44);
INSERT INTO `detalle_movimiento` VALUES (67,64,49);
INSERT INTO `detalle_movimiento` VALUES (67,71,51);
INSERT INTO `detalle_movimiento` VALUES (67,69,52);
INSERT INTO `detalle_movimiento` VALUES (67,73,54);
INSERT INTO `detalle_movimiento` VALUES (67,87,55);
INSERT INTO `detalle_movimiento` VALUES (67,96,59);
INSERT INTO `detalle_movimiento` VALUES (67,52,67);
INSERT INTO `detalle_movimiento` VALUES (67,82,68);
INSERT INTO `detalle_movimiento` VALUES (67,80,69);
INSERT INTO `detalle_movimiento` VALUES (67,56,71);
INSERT INTO `detalle_movimiento` VALUES (67,94,75);
INSERT INTO `detalle_movimiento` VALUES (67,59,76);
INSERT INTO `detalle_movimiento` VALUES (67,69,82);
INSERT INTO `detalle_movimiento` VALUES (67,99,83);
INSERT INTO `detalle_movimiento` VALUES (67,71,84);
INSERT INTO `detalle_movimiento` VALUES (67,53,90);
INSERT INTO `detalle_movimiento` VALUES (67,54,91);
INSERT INTO `detalle_movimiento` VALUES (67,64,98);
INSERT INTO `detalle_movimiento` VALUES (67,62,99);
INSERT INTO `detalle_movimiento` VALUES (67,91,108);
INSERT INTO `detalle_movimiento` VALUES (67,59,109);
INSERT INTO `detalle_movimiento` VALUES (67,59,113);
INSERT INTO `detalle_movimiento` VALUES (67,77,134);
INSERT INTO `detalle_movimiento` VALUES (67,89,136);
INSERT INTO `detalle_movimiento` VALUES (67,95,137);
INSERT INTO `detalle_movimiento` VALUES (67,91,155);
INSERT INTO `detalle_movimiento` VALUES (67,96,166);
INSERT INTO `detalle_movimiento` VALUES (67,87,171);
INSERT INTO `detalle_movimiento` VALUES (67,57,174);
INSERT INTO `detalle_movimiento` VALUES (67,72,175);
INSERT INTO `detalle_movimiento` VALUES (67,55,185);
INSERT INTO `detalle_movimiento` VALUES (67,63,187);
INSERT INTO `detalle_movimiento` VALUES (67,100,194);
INSERT INTO `detalle_movimiento` VALUES (67,93,198);
INSERT INTO `detalle_movimiento` VALUES (67,100,199);
INSERT INTO `detalle_movimiento` VALUES (67,100,207);
INSERT INTO `detalle_movimiento` VALUES (67,81,212);
INSERT INTO `detalle_movimiento` VALUES (67,60,218);
INSERT INTO `detalle_movimiento` VALUES (67,72,224);
INSERT INTO `detalle_movimiento` VALUES (67,51,225);
INSERT INTO `detalle_movimiento` VALUES (67,71,236);
INSERT INTO `detalle_movimiento` VALUES (67,95,237);
INSERT INTO `detalle_movimiento` VALUES (67,59,238);
INSERT INTO `detalle_movimiento` VALUES (67,88,246);
INSERT INTO `detalle_movimiento` VALUES (67,67,247);
INSERT INTO `detalle_movimiento` VALUES (67,77,256);
INSERT INTO `detalle_movimiento` VALUES (67,77,258);
INSERT INTO `detalle_movimiento` VALUES (67,89,263);
INSERT INTO `detalle_movimiento` VALUES (67,98,264);
INSERT INTO `detalle_movimiento` VALUES (67,61,273);
INSERT INTO `detalle_movimiento` VALUES (67,51,279);
INSERT INTO `detalle_movimiento` VALUES (67,86,283);
INSERT INTO `detalle_movimiento` VALUES (67,94,287);
INSERT INTO `detalle_movimiento` VALUES (67,66,291);
INSERT INTO `detalle_movimiento` VALUES (67,84,292);
INSERT INTO `detalle_movimiento` VALUES (67,89,296);
INSERT INTO `detalle_movimiento` VALUES (67,68,299);
INSERT INTO `detalle_movimiento` VALUES (67,79,301);
INSERT INTO `detalle_movimiento` VALUES (67,91,303);
INSERT INTO `detalle_movimiento` VALUES (67,89,320);
INSERT INTO `detalle_movimiento` VALUES (67,93,321);
INSERT INTO `detalle_movimiento` VALUES (67,65,324);
INSERT INTO `detalle_movimiento` VALUES (67,72,325);
INSERT INTO `detalle_movimiento` VALUES (67,80,330);
INSERT INTO `detalle_movimiento` VALUES (67,80,331);
INSERT INTO `detalle_movimiento` VALUES (67,54,333);
INSERT INTO `detalle_movimiento` VALUES (67,77,336);
INSERT INTO `detalle_movimiento` VALUES (67,59,340);
INSERT INTO `detalle_movimiento` VALUES (67,80,341);
INSERT INTO `detalle_movimiento` VALUES (67,97,342);
INSERT INTO `detalle_movimiento` VALUES (67,66,351);
INSERT INTO `detalle_movimiento` VALUES (67,61,359);
INSERT INTO `detalle_movimiento` VALUES (67,70,371);
INSERT INTO `detalle_movimiento` VALUES (67,58,375);
INSERT INTO `detalle_movimiento` VALUES (67,85,378);
INSERT INTO `detalle_movimiento` VALUES (67,52,391);
INSERT INTO `detalle_movimiento` VALUES (67,78,393);
INSERT INTO `detalle_movimiento` VALUES (67,71,396);
INSERT INTO `detalle_movimiento` VALUES (67,53,404);
INSERT INTO `detalle_movimiento` VALUES (68,90,1);
INSERT INTO `detalle_movimiento` VALUES (68,97,2);
INSERT INTO `detalle_movimiento` VALUES (68,68,3);
INSERT INTO `detalle_movimiento` VALUES (68,83,10);
INSERT INTO `detalle_movimiento` VALUES (68,86,11);
INSERT INTO `detalle_movimiento` VALUES (68,80,12);
INSERT INTO `detalle_movimiento` VALUES (68,91,13);
INSERT INTO `detalle_movimiento` VALUES (68,86,14);
INSERT INTO `detalle_movimiento` VALUES (68,86,18);
INSERT INTO `detalle_movimiento` VALUES (68,77,22);
INSERT INTO `detalle_movimiento` VALUES (68,61,25);
INSERT INTO `detalle_movimiento` VALUES (68,60,27);
INSERT INTO `detalle_movimiento` VALUES (68,79,28);
INSERT INTO `detalle_movimiento` VALUES (68,96,29);
INSERT INTO `detalle_movimiento` VALUES (68,59,30);
INSERT INTO `detalle_movimiento` VALUES (68,93,31);
INSERT INTO `detalle_movimiento` VALUES (68,69,34);
INSERT INTO `detalle_movimiento` VALUES (68,92,35);
INSERT INTO `detalle_movimiento` VALUES (68,90,37);
INSERT INTO `detalle_movimiento` VALUES (68,58,39);
INSERT INTO `detalle_movimiento` VALUES (68,72,41);
INSERT INTO `detalle_movimiento` VALUES (68,83,43);
INSERT INTO `detalle_movimiento` VALUES (68,77,44);
INSERT INTO `detalle_movimiento` VALUES (68,78,46);
INSERT INTO `detalle_movimiento` VALUES (68,91,47);
INSERT INTO `detalle_movimiento` VALUES (68,82,50);
INSERT INTO `detalle_movimiento` VALUES (68,92,51);
INSERT INTO `detalle_movimiento` VALUES (68,95,53);
INSERT INTO `detalle_movimiento` VALUES (68,59,55);
INSERT INTO `detalle_movimiento` VALUES (68,76,56);
INSERT INTO `detalle_movimiento` VALUES (68,78,57);
INSERT INTO `detalle_movimiento` VALUES (68,60,68);
INSERT INTO `detalle_movimiento` VALUES (68,58,71);
INSERT INTO `detalle_movimiento` VALUES (68,93,72);
INSERT INTO `detalle_movimiento` VALUES (68,99,73);
INSERT INTO `detalle_movimiento` VALUES (68,81,74);
INSERT INTO `detalle_movimiento` VALUES (68,89,76);
INSERT INTO `detalle_movimiento` VALUES (68,52,77);
INSERT INTO `detalle_movimiento` VALUES (68,56,79);
INSERT INTO `detalle_movimiento` VALUES (68,65,80);
INSERT INTO `detalle_movimiento` VALUES (68,90,86);
INSERT INTO `detalle_movimiento` VALUES (68,77,87);
INSERT INTO `detalle_movimiento` VALUES (68,76,88);
INSERT INTO `detalle_movimiento` VALUES (68,87,89);
INSERT INTO `detalle_movimiento` VALUES (68,90,90);
INSERT INTO `detalle_movimiento` VALUES (68,95,91);
INSERT INTO `detalle_movimiento` VALUES (68,68,94);
INSERT INTO `detalle_movimiento` VALUES (68,84,95);
INSERT INTO `detalle_movimiento` VALUES (68,79,96);
INSERT INTO `detalle_movimiento` VALUES (68,90,99);
INSERT INTO `detalle_movimiento` VALUES (68,97,101);
INSERT INTO `detalle_movimiento` VALUES (68,87,102);
INSERT INTO `detalle_movimiento` VALUES (68,93,104);
INSERT INTO `detalle_movimiento` VALUES (68,87,106);
INSERT INTO `detalle_movimiento` VALUES (68,94,109);
INSERT INTO `detalle_movimiento` VALUES (68,84,113);
INSERT INTO `detalle_movimiento` VALUES (68,77,114);
INSERT INTO `detalle_movimiento` VALUES (68,71,115);
INSERT INTO `detalle_movimiento` VALUES (68,57,116);
INSERT INTO `detalle_movimiento` VALUES (68,97,118);
INSERT INTO `detalle_movimiento` VALUES (68,83,119);
INSERT INTO `detalle_movimiento` VALUES (68,83,121);
INSERT INTO `detalle_movimiento` VALUES (68,71,122);
INSERT INTO `detalle_movimiento` VALUES (68,95,123);
INSERT INTO `detalle_movimiento` VALUES (68,100,124);
INSERT INTO `detalle_movimiento` VALUES (68,60,130);
INSERT INTO `detalle_movimiento` VALUES (68,82,131);
INSERT INTO `detalle_movimiento` VALUES (68,65,136);
INSERT INTO `detalle_movimiento` VALUES (68,92,142);
INSERT INTO `detalle_movimiento` VALUES (68,90,143);
INSERT INTO `detalle_movimiento` VALUES (68,98,151);
INSERT INTO `detalle_movimiento` VALUES (68,62,153);
INSERT INTO `detalle_movimiento` VALUES (68,64,154);
INSERT INTO `detalle_movimiento` VALUES (68,78,155);
INSERT INTO `detalle_movimiento` VALUES (68,80,156);
INSERT INTO `detalle_movimiento` VALUES (68,82,158);
INSERT INTO `detalle_movimiento` VALUES (68,63,159);
INSERT INTO `detalle_movimiento` VALUES (68,78,165);
INSERT INTO `detalle_movimiento` VALUES (68,67,171);
INSERT INTO `detalle_movimiento` VALUES (68,96,172);
INSERT INTO `detalle_movimiento` VALUES (68,60,173);
INSERT INTO `detalle_movimiento` VALUES (68,54,176);
INSERT INTO `detalle_movimiento` VALUES (68,61,179);
INSERT INTO `detalle_movimiento` VALUES (68,85,181);
INSERT INTO `detalle_movimiento` VALUES (68,70,184);
INSERT INTO `detalle_movimiento` VALUES (68,71,185);
INSERT INTO `detalle_movimiento` VALUES (68,96,190);
INSERT INTO `detalle_movimiento` VALUES (68,85,191);
INSERT INTO `detalle_movimiento` VALUES (68,65,195);
INSERT INTO `detalle_movimiento` VALUES (68,91,196);
INSERT INTO `detalle_movimiento` VALUES (68,92,197);
INSERT INTO `detalle_movimiento` VALUES (68,66,201);
INSERT INTO `detalle_movimiento` VALUES (68,70,203);
INSERT INTO `detalle_movimiento` VALUES (68,57,204);
INSERT INTO `detalle_movimiento` VALUES (68,86,205);
INSERT INTO `detalle_movimiento` VALUES (68,59,206);
INSERT INTO `detalle_movimiento` VALUES (68,63,209);
INSERT INTO `detalle_movimiento` VALUES (68,58,210);
INSERT INTO `detalle_movimiento` VALUES (68,68,211);
INSERT INTO `detalle_movimiento` VALUES (68,52,215);
INSERT INTO `detalle_movimiento` VALUES (68,66,218);
INSERT INTO `detalle_movimiento` VALUES (68,77,220);
INSERT INTO `detalle_movimiento` VALUES (68,67,221);
INSERT INTO `detalle_movimiento` VALUES (68,63,226);
INSERT INTO `detalle_movimiento` VALUES (68,100,235);
INSERT INTO `detalle_movimiento` VALUES (68,85,237);
INSERT INTO `detalle_movimiento` VALUES (68,57,238);
INSERT INTO `detalle_movimiento` VALUES (68,77,239);
INSERT INTO `detalle_movimiento` VALUES (68,67,242);
INSERT INTO `detalle_movimiento` VALUES (68,58,243);
INSERT INTO `detalle_movimiento` VALUES (68,58,244);
INSERT INTO `detalle_movimiento` VALUES (68,76,247);
INSERT INTO `detalle_movimiento` VALUES (68,75,249);
INSERT INTO `detalle_movimiento` VALUES (68,95,251);
INSERT INTO `detalle_movimiento` VALUES (68,60,252);
INSERT INTO `detalle_movimiento` VALUES (68,64,253);
INSERT INTO `detalle_movimiento` VALUES (68,64,256);
INSERT INTO `detalle_movimiento` VALUES (68,98,259);
INSERT INTO `detalle_movimiento` VALUES (68,66,260);
INSERT INTO `detalle_movimiento` VALUES (68,83,261);
INSERT INTO `detalle_movimiento` VALUES (68,51,265);
INSERT INTO `detalle_movimiento` VALUES (68,76,266);
INSERT INTO `detalle_movimiento` VALUES (68,78,267);
INSERT INTO `detalle_movimiento` VALUES (68,84,270);
INSERT INTO `detalle_movimiento` VALUES (68,66,272);
INSERT INTO `detalle_movimiento` VALUES (68,93,274);
INSERT INTO `detalle_movimiento` VALUES (68,98,281);
INSERT INTO `detalle_movimiento` VALUES (68,57,282);
INSERT INTO `detalle_movimiento` VALUES (68,58,283);
INSERT INTO `detalle_movimiento` VALUES (68,100,285);
INSERT INTO `detalle_movimiento` VALUES (68,56,286);
INSERT INTO `detalle_movimiento` VALUES (68,91,287);
INSERT INTO `detalle_movimiento` VALUES (68,101,291);
INSERT INTO `detalle_movimiento` VALUES (68,77,292);
INSERT INTO `detalle_movimiento` VALUES (68,56,293);
INSERT INTO `detalle_movimiento` VALUES (68,78,294);
INSERT INTO `detalle_movimiento` VALUES (68,96,295);
INSERT INTO `detalle_movimiento` VALUES (68,71,296);
INSERT INTO `detalle_movimiento` VALUES (68,80,297);
INSERT INTO `detalle_movimiento` VALUES (68,89,298);
INSERT INTO `detalle_movimiento` VALUES (68,61,299);
INSERT INTO `detalle_movimiento` VALUES (68,72,300);
INSERT INTO `detalle_movimiento` VALUES (68,86,308);
INSERT INTO `detalle_movimiento` VALUES (68,68,309);
INSERT INTO `detalle_movimiento` VALUES (68,93,311);
INSERT INTO `detalle_movimiento` VALUES (68,100,312);
INSERT INTO `detalle_movimiento` VALUES (68,77,315);
INSERT INTO `detalle_movimiento` VALUES (68,54,317);
INSERT INTO `detalle_movimiento` VALUES (68,70,318);
INSERT INTO `detalle_movimiento` VALUES (68,83,319);
INSERT INTO `detalle_movimiento` VALUES (68,53,321);
INSERT INTO `detalle_movimiento` VALUES (68,66,324);
INSERT INTO `detalle_movimiento` VALUES (68,83,325);
INSERT INTO `detalle_movimiento` VALUES (68,97,330);
INSERT INTO `detalle_movimiento` VALUES (68,60,331);
INSERT INTO `detalle_movimiento` VALUES (68,54,332);
INSERT INTO `detalle_movimiento` VALUES (68,98,333);
INSERT INTO `detalle_movimiento` VALUES (68,64,336);
INSERT INTO `detalle_movimiento` VALUES (68,89,338);
INSERT INTO `detalle_movimiento` VALUES (68,71,342);
INSERT INTO `detalle_movimiento` VALUES (68,65,343);
INSERT INTO `detalle_movimiento` VALUES (68,95,345);
INSERT INTO `detalle_movimiento` VALUES (68,97,346);
INSERT INTO `detalle_movimiento` VALUES (68,100,349);
INSERT INTO `detalle_movimiento` VALUES (68,92,351);
INSERT INTO `detalle_movimiento` VALUES (68,72,353);
INSERT INTO `detalle_movimiento` VALUES (68,77,355);
INSERT INTO `detalle_movimiento` VALUES (68,100,356);
INSERT INTO `detalle_movimiento` VALUES (68,63,358);
INSERT INTO `detalle_movimiento` VALUES (68,94,359);
INSERT INTO `detalle_movimiento` VALUES (68,86,360);
INSERT INTO `detalle_movimiento` VALUES (68,67,361);
INSERT INTO `detalle_movimiento` VALUES (68,61,363);
INSERT INTO `detalle_movimiento` VALUES (68,99,368);
INSERT INTO `detalle_movimiento` VALUES (68,89,369);
INSERT INTO `detalle_movimiento` VALUES (68,67,373);
INSERT INTO `detalle_movimiento` VALUES (68,76,374);
INSERT INTO `detalle_movimiento` VALUES (68,97,376);
INSERT INTO `detalle_movimiento` VALUES (68,90,377);
INSERT INTO `detalle_movimiento` VALUES (68,57,378);
INSERT INTO `detalle_movimiento` VALUES (68,88,379);
INSERT INTO `detalle_movimiento` VALUES (68,93,380);
INSERT INTO `detalle_movimiento` VALUES (68,82,389);
INSERT INTO `detalle_movimiento` VALUES (68,78,390);
INSERT INTO `detalle_movimiento` VALUES (68,84,392);
INSERT INTO `detalle_movimiento` VALUES (68,54,393);
INSERT INTO `detalle_movimiento` VALUES (68,55,395);
INSERT INTO `detalle_movimiento` VALUES (68,94,396);
INSERT INTO `detalle_movimiento` VALUES (68,72,397);
INSERT INTO `detalle_movimiento` VALUES (68,71,399);
INSERT INTO `detalle_movimiento` VALUES (68,61,401);
INSERT INTO `detalle_movimiento` VALUES (68,75,402);
INSERT INTO `detalle_movimiento` VALUES (68,51,404);
INSERT INTO `detalle_movimiento` VALUES (69,66,1);
INSERT INTO `detalle_movimiento` VALUES (69,55,2);
INSERT INTO `detalle_movimiento` VALUES (69,82,3);
INSERT INTO `detalle_movimiento` VALUES (69,69,4);
INSERT INTO `detalle_movimiento` VALUES (69,99,9);
INSERT INTO `detalle_movimiento` VALUES (69,89,14);
INSERT INTO `detalle_movimiento` VALUES (69,78,27);
INSERT INTO `detalle_movimiento` VALUES (69,62,33);
INSERT INTO `detalle_movimiento` VALUES (69,84,35);
INSERT INTO `detalle_movimiento` VALUES (69,99,37);
INSERT INTO `detalle_movimiento` VALUES (69,99,39);
INSERT INTO `detalle_movimiento` VALUES (69,66,40);
INSERT INTO `detalle_movimiento` VALUES (69,57,43);
INSERT INTO `detalle_movimiento` VALUES (69,93,49);
INSERT INTO `detalle_movimiento` VALUES (69,69,50);
INSERT INTO `detalle_movimiento` VALUES (69,91,51);
INSERT INTO `detalle_movimiento` VALUES (69,77,52);
INSERT INTO `detalle_movimiento` VALUES (69,52,57);
INSERT INTO `detalle_movimiento` VALUES (69,58,65);
INSERT INTO `detalle_movimiento` VALUES (69,79,67);
INSERT INTO `detalle_movimiento` VALUES (69,91,68);
INSERT INTO `detalle_movimiento` VALUES (69,77,71);
INSERT INTO `detalle_movimiento` VALUES (69,95,76);
INSERT INTO `detalle_movimiento` VALUES (69,54,82);
INSERT INTO `detalle_movimiento` VALUES (69,91,83);
INSERT INTO `detalle_movimiento` VALUES (69,67,84);
INSERT INTO `detalle_movimiento` VALUES (69,88,87);
INSERT INTO `detalle_movimiento` VALUES (69,90,90);
INSERT INTO `detalle_movimiento` VALUES (69,88,98);
INSERT INTO `detalle_movimiento` VALUES (69,55,99);
INSERT INTO `detalle_movimiento` VALUES (69,76,104);
INSERT INTO `detalle_movimiento` VALUES (69,86,106);
INSERT INTO `detalle_movimiento` VALUES (69,67,109);
INSERT INTO `detalle_movimiento` VALUES (69,58,115);
INSERT INTO `detalle_movimiento` VALUES (69,87,122);
INSERT INTO `detalle_movimiento` VALUES (69,96,130);
INSERT INTO `detalle_movimiento` VALUES (69,73,131);
INSERT INTO `detalle_movimiento` VALUES (69,69,134);
INSERT INTO `detalle_movimiento` VALUES (69,99,136);
INSERT INTO `detalle_movimiento` VALUES (69,99,137);
INSERT INTO `detalle_movimiento` VALUES (69,87,155);
INSERT INTO `detalle_movimiento` VALUES (69,51,157);
INSERT INTO `detalle_movimiento` VALUES (69,64,162);
INSERT INTO `detalle_movimiento` VALUES (69,99,165);
INSERT INTO `detalle_movimiento` VALUES (69,65,166);
INSERT INTO `detalle_movimiento` VALUES (69,62,169);
INSERT INTO `detalle_movimiento` VALUES (69,66,171);
INSERT INTO `detalle_movimiento` VALUES (69,85,173);
INSERT INTO `detalle_movimiento` VALUES (69,58,175);
INSERT INTO `detalle_movimiento` VALUES (69,55,185);
INSERT INTO `detalle_movimiento` VALUES (69,90,187);
INSERT INTO `detalle_movimiento` VALUES (69,55,197);
INSERT INTO `detalle_movimiento` VALUES (69,54,199);
INSERT INTO `detalle_movimiento` VALUES (69,91,200);
INSERT INTO `detalle_movimiento` VALUES (69,76,202);
INSERT INTO `detalle_movimiento` VALUES (69,59,209);
INSERT INTO `detalle_movimiento` VALUES (69,73,212);
INSERT INTO `detalle_movimiento` VALUES (69,76,228);
INSERT INTO `detalle_movimiento` VALUES (69,79,236);
INSERT INTO `detalle_movimiento` VALUES (69,71,237);
INSERT INTO `detalle_movimiento` VALUES (69,85,238);
INSERT INTO `detalle_movimiento` VALUES (69,85,241);
INSERT INTO `detalle_movimiento` VALUES (69,84,242);
INSERT INTO `detalle_movimiento` VALUES (69,93,244);
INSERT INTO `detalle_movimiento` VALUES (69,88,246);
INSERT INTO `detalle_movimiento` VALUES (69,77,251);
INSERT INTO `detalle_movimiento` VALUES (69,60,258);
INSERT INTO `detalle_movimiento` VALUES (69,87,263);
INSERT INTO `detalle_movimiento` VALUES (69,79,264);
INSERT INTO `detalle_movimiento` VALUES (69,81,271);
INSERT INTO `detalle_movimiento` VALUES (69,100,272);
INSERT INTO `detalle_movimiento` VALUES (69,79,279);
INSERT INTO `detalle_movimiento` VALUES (69,90,280);
INSERT INTO `detalle_movimiento` VALUES (69,74,283);
INSERT INTO `detalle_movimiento` VALUES (69,71,285);
INSERT INTO `detalle_movimiento` VALUES (69,72,287);
INSERT INTO `detalle_movimiento` VALUES (69,71,291);
INSERT INTO `detalle_movimiento` VALUES (69,94,296);
INSERT INTO `detalle_movimiento` VALUES (69,87,299);
INSERT INTO `detalle_movimiento` VALUES (69,86,301);
INSERT INTO `detalle_movimiento` VALUES (69,65,312);
INSERT INTO `detalle_movimiento` VALUES (69,53,321);
INSERT INTO `detalle_movimiento` VALUES (69,69,322);
INSERT INTO `detalle_movimiento` VALUES (69,99,323);
INSERT INTO `detalle_movimiento` VALUES (69,71,330);
INSERT INTO `detalle_movimiento` VALUES (69,78,337);
INSERT INTO `detalle_movimiento` VALUES (69,95,338);
INSERT INTO `detalle_movimiento` VALUES (69,56,340);
INSERT INTO `detalle_movimiento` VALUES (69,100,351);
INSERT INTO `detalle_movimiento` VALUES (69,51,356);
INSERT INTO `detalle_movimiento` VALUES (69,72,367);
INSERT INTO `detalle_movimiento` VALUES (69,99,374);
INSERT INTO `detalle_movimiento` VALUES (69,91,381);
INSERT INTO `detalle_movimiento` VALUES (69,72,392);
INSERT INTO `detalle_movimiento` VALUES (69,64,395);
INSERT INTO `detalle_movimiento` VALUES (69,97,397);
INSERT INTO `detalle_movimiento` VALUES (69,97,404);
INSERT INTO `detalle_movimiento` VALUES (69,95,405);
INSERT INTO `detalle_movimiento` VALUES (70,60,24);
INSERT INTO `detalle_movimiento` VALUES (70,92,28);
INSERT INTO `detalle_movimiento` VALUES (70,63,36);
INSERT INTO `detalle_movimiento` VALUES (70,100,43);
INSERT INTO `detalle_movimiento` VALUES (70,99,44);
INSERT INTO `detalle_movimiento` VALUES (70,84,46);
INSERT INTO `detalle_movimiento` VALUES (70,81,65);
INSERT INTO `detalle_movimiento` VALUES (70,59,71);
INSERT INTO `detalle_movimiento` VALUES (70,83,90);
INSERT INTO `detalle_movimiento` VALUES (70,84,108);
INSERT INTO `detalle_movimiento` VALUES (70,51,113);
INSERT INTO `detalle_movimiento` VALUES (70,61,114);
INSERT INTO `detalle_movimiento` VALUES (70,67,131);
INSERT INTO `detalle_movimiento` VALUES (70,88,136);
INSERT INTO `detalle_movimiento` VALUES (70,91,139);
INSERT INTO `detalle_movimiento` VALUES (70,97,144);
INSERT INTO `detalle_movimiento` VALUES (70,69,157);
INSERT INTO `detalle_movimiento` VALUES (70,53,165);
INSERT INTO `detalle_movimiento` VALUES (70,55,168);
INSERT INTO `detalle_movimiento` VALUES (70,54,173);
INSERT INTO `detalle_movimiento` VALUES (70,77,175);
INSERT INTO `detalle_movimiento` VALUES (70,66,184);
INSERT INTO `detalle_movimiento` VALUES (70,62,191);
INSERT INTO `detalle_movimiento` VALUES (70,64,199);
INSERT INTO `detalle_movimiento` VALUES (70,73,200);
INSERT INTO `detalle_movimiento` VALUES (70,68,205);
INSERT INTO `detalle_movimiento` VALUES (70,62,236);
INSERT INTO `detalle_movimiento` VALUES (70,86,241);
INSERT INTO `detalle_movimiento` VALUES (70,94,244);
INSERT INTO `detalle_movimiento` VALUES (70,83,252);
INSERT INTO `detalle_movimiento` VALUES (70,83,256);
INSERT INTO `detalle_movimiento` VALUES (70,92,258);
INSERT INTO `detalle_movimiento` VALUES (70,80,264);
INSERT INTO `detalle_movimiento` VALUES (70,82,271);
INSERT INTO `detalle_movimiento` VALUES (70,86,280);
INSERT INTO `detalle_movimiento` VALUES (70,90,291);
INSERT INTO `detalle_movimiento` VALUES (70,75,292);
INSERT INTO `detalle_movimiento` VALUES (70,57,296);
INSERT INTO `detalle_movimiento` VALUES (70,94,301);
INSERT INTO `detalle_movimiento` VALUES (70,52,306);
INSERT INTO `detalle_movimiento` VALUES (70,76,325);
INSERT INTO `detalle_movimiento` VALUES (70,99,338);
INSERT INTO `detalle_movimiento` VALUES (70,73,345);
INSERT INTO `detalle_movimiento` VALUES (70,61,356);
INSERT INTO `detalle_movimiento` VALUES (70,55,364);
INSERT INTO `detalle_movimiento` VALUES (70,75,367);
INSERT INTO `detalle_movimiento` VALUES (70,55,381);
INSERT INTO `detalle_movimiento` VALUES (70,69,392);
INSERT INTO `detalle_movimiento` VALUES (70,68,405);
INSERT INTO `detalle_movimiento` VALUES (71,95,10);
INSERT INTO `detalle_movimiento` VALUES (71,91,20);
INSERT INTO `detalle_movimiento` VALUES (71,52,24);
INSERT INTO `detalle_movimiento` VALUES (71,94,33);
INSERT INTO `detalle_movimiento` VALUES (71,85,46);
INSERT INTO `detalle_movimiento` VALUES (71,61,57);
INSERT INTO `detalle_movimiento` VALUES (71,89,66);
INSERT INTO `detalle_movimiento` VALUES (71,51,90);
INSERT INTO `detalle_movimiento` VALUES (71,82,99);
INSERT INTO `detalle_movimiento` VALUES (71,87,108);
INSERT INTO `detalle_movimiento` VALUES (71,85,114);
INSERT INTO `detalle_movimiento` VALUES (71,96,122);
INSERT INTO `detalle_movimiento` VALUES (71,68,136);
INSERT INTO `detalle_movimiento` VALUES (71,56,144);
INSERT INTO `detalle_movimiento` VALUES (71,99,157);
INSERT INTO `detalle_movimiento` VALUES (71,99,164);
INSERT INTO `detalle_movimiento` VALUES (71,51,165);
INSERT INTO `detalle_movimiento` VALUES (71,67,166);
INSERT INTO `detalle_movimiento` VALUES (71,75,168);
INSERT INTO `detalle_movimiento` VALUES (71,85,184);
INSERT INTO `detalle_movimiento` VALUES (71,73,199);
INSERT INTO `detalle_movimiento` VALUES (71,58,212);
INSERT INTO `detalle_movimiento` VALUES (71,52,236);
INSERT INTO `detalle_movimiento` VALUES (71,90,256);
INSERT INTO `detalle_movimiento` VALUES (71,72,263);
INSERT INTO `detalle_movimiento` VALUES (71,62,271);
INSERT INTO `detalle_movimiento` VALUES (71,77,272);
INSERT INTO `detalle_movimiento` VALUES (71,54,291);
INSERT INTO `detalle_movimiento` VALUES (71,73,292);
INSERT INTO `detalle_movimiento` VALUES (71,73,296);
INSERT INTO `detalle_movimiento` VALUES (71,69,303);
INSERT INTO `detalle_movimiento` VALUES (71,89,322);
INSERT INTO `detalle_movimiento` VALUES (71,87,324);
INSERT INTO `detalle_movimiento` VALUES (71,65,330);
INSERT INTO `detalle_movimiento` VALUES (71,84,338);
INSERT INTO `detalle_movimiento` VALUES (71,78,351);
INSERT INTO `detalle_movimiento` VALUES (71,75,359);
INSERT INTO `detalle_movimiento` VALUES (71,83,364);
INSERT INTO `detalle_movimiento` VALUES (74,69,4);
INSERT INTO `detalle_movimiento` VALUES (74,99,9);
INSERT INTO `detalle_movimiento` VALUES (74,86,10);
INSERT INTO `detalle_movimiento` VALUES (74,78,24);
INSERT INTO `detalle_movimiento` VALUES (74,70,28);
INSERT INTO `detalle_movimiento` VALUES (74,62,37);
INSERT INTO `detalle_movimiento` VALUES (74,57,40);
INSERT INTO `detalle_movimiento` VALUES (74,99,44);
INSERT INTO `detalle_movimiento` VALUES (74,54,54);
INSERT INTO `detalle_movimiento` VALUES (74,83,57);
INSERT INTO `detalle_movimiento` VALUES (74,61,58);
INSERT INTO `detalle_movimiento` VALUES (74,79,59);
INSERT INTO `detalle_movimiento` VALUES (74,81,65);
INSERT INTO `detalle_movimiento` VALUES (74,70,68);
INSERT INTO `detalle_movimiento` VALUES (74,67,76);
INSERT INTO `detalle_movimiento` VALUES (74,57,77);
INSERT INTO `detalle_movimiento` VALUES (74,79,82);
INSERT INTO `detalle_movimiento` VALUES (74,69,84);
INSERT INTO `detalle_movimiento` VALUES (74,68,98);
INSERT INTO `detalle_movimiento` VALUES (74,77,99);
INSERT INTO `detalle_movimiento` VALUES (74,67,114);
INSERT INTO `detalle_movimiento` VALUES (74,75,115);
INSERT INTO `detalle_movimiento` VALUES (74,88,139);
INSERT INTO `detalle_movimiento` VALUES (74,71,147);
INSERT INTO `detalle_movimiento` VALUES (74,60,155);
INSERT INTO `detalle_movimiento` VALUES (74,80,162);
INSERT INTO `detalle_movimiento` VALUES (74,91,164);
INSERT INTO `detalle_movimiento` VALUES (74,100,169);
INSERT INTO `detalle_movimiento` VALUES (74,59,191);
INSERT INTO `detalle_movimiento` VALUES (74,81,198);
INSERT INTO `detalle_movimiento` VALUES (74,97,200);
INSERT INTO `detalle_movimiento` VALUES (74,55,205);
INSERT INTO `detalle_movimiento` VALUES (74,63,207);
INSERT INTO `detalle_movimiento` VALUES (74,65,212);
INSERT INTO `detalle_movimiento` VALUES (74,94,216);
INSERT INTO `detalle_movimiento` VALUES (74,64,225);
INSERT INTO `detalle_movimiento` VALUES (74,74,228);
INSERT INTO `detalle_movimiento` VALUES (74,74,231);
INSERT INTO `detalle_movimiento` VALUES (74,89,251);
INSERT INTO `detalle_movimiento` VALUES (74,54,256);
INSERT INTO `detalle_movimiento` VALUES (74,99,258);
INSERT INTO `detalle_movimiento` VALUES (74,77,264);
INSERT INTO `detalle_movimiento` VALUES (74,70,271);
INSERT INTO `detalle_movimiento` VALUES (74,74,273);
INSERT INTO `detalle_movimiento` VALUES (74,96,279);
INSERT INTO `detalle_movimiento` VALUES (74,99,280);
INSERT INTO `detalle_movimiento` VALUES (74,101,283);
INSERT INTO `detalle_movimiento` VALUES (74,67,291);
INSERT INTO `detalle_movimiento` VALUES (74,75,292);
INSERT INTO `detalle_movimiento` VALUES (74,69,303);
INSERT INTO `detalle_movimiento` VALUES (74,65,312);
INSERT INTO `detalle_movimiento` VALUES (74,72,320);
INSERT INTO `detalle_movimiento` VALUES (74,54,321);
INSERT INTO `detalle_movimiento` VALUES (74,80,322);
INSERT INTO `detalle_movimiento` VALUES (74,98,324);
INSERT INTO `detalle_movimiento` VALUES (74,73,331);
INSERT INTO `detalle_movimiento` VALUES (74,93,333);
INSERT INTO `detalle_movimiento` VALUES (74,80,356);
INSERT INTO `detalle_movimiento` VALUES (74,94,364);
INSERT INTO `detalle_movimiento` VALUES (74,97,379);
INSERT INTO `detalle_movimiento` VALUES (74,55,381);
INSERT INTO `detalle_movimiento` VALUES (74,99,391);
INSERT INTO `detalle_movimiento` VALUES (74,85,392);
INSERT INTO `detalle_movimiento` VALUES (74,95,393);
INSERT INTO `detalle_movimiento` VALUES (74,84,405);
INSERT INTO `detalle_movimiento` VALUES (76,67,2);
INSERT INTO `detalle_movimiento` VALUES (76,64,20);
INSERT INTO `detalle_movimiento` VALUES (76,93,35);
INSERT INTO `detalle_movimiento` VALUES (76,92,41);
INSERT INTO `detalle_movimiento` VALUES (76,66,44);
INSERT INTO `detalle_movimiento` VALUES (76,92,54);
INSERT INTO `detalle_movimiento` VALUES (76,96,58);
INSERT INTO `detalle_movimiento` VALUES (76,87,65);
INSERT INTO `detalle_movimiento` VALUES (76,89,67);
INSERT INTO `detalle_movimiento` VALUES (76,99,68);
INSERT INTO `detalle_movimiento` VALUES (76,74,69);
INSERT INTO `detalle_movimiento` VALUES (76,73,77);
INSERT INTO `detalle_movimiento` VALUES (76,60,83);
INSERT INTO `detalle_movimiento` VALUES (76,79,84);
INSERT INTO `detalle_movimiento` VALUES (76,81,87);
INSERT INTO `detalle_movimiento` VALUES (76,81,91);
INSERT INTO `detalle_movimiento` VALUES (76,87,96);
INSERT INTO `detalle_movimiento` VALUES (76,73,108);
INSERT INTO `detalle_movimiento` VALUES (76,62,109);
INSERT INTO `detalle_movimiento` VALUES (76,84,114);
INSERT INTO `detalle_movimiento` VALUES (76,93,115);
INSERT INTO `detalle_movimiento` VALUES (76,84,125);
INSERT INTO `detalle_movimiento` VALUES (76,84,131);
INSERT INTO `detalle_movimiento` VALUES (76,100,134);
INSERT INTO `detalle_movimiento` VALUES (76,91,136);
INSERT INTO `detalle_movimiento` VALUES (76,70,137);
INSERT INTO `detalle_movimiento` VALUES (76,80,144);
INSERT INTO `detalle_movimiento` VALUES (76,63,147);
INSERT INTO `detalle_movimiento` VALUES (76,63,162);
INSERT INTO `detalle_movimiento` VALUES (76,60,164);
INSERT INTO `detalle_movimiento` VALUES (76,93,166);
INSERT INTO `detalle_movimiento` VALUES (76,75,173);
INSERT INTO `detalle_movimiento` VALUES (76,91,189);
INSERT INTO `detalle_movimiento` VALUES (76,64,190);
INSERT INTO `detalle_movimiento` VALUES (76,67,196);
INSERT INTO `detalle_movimiento` VALUES (76,51,197);
INSERT INTO `detalle_movimiento` VALUES (76,71,205);
INSERT INTO `detalle_movimiento` VALUES (76,85,207);
INSERT INTO `detalle_movimiento` VALUES (76,83,224);
INSERT INTO `detalle_movimiento` VALUES (76,95,236);
INSERT INTO `detalle_movimiento` VALUES (76,59,242);
INSERT INTO `detalle_movimiento` VALUES (76,81,244);
INSERT INTO `detalle_movimiento` VALUES (76,100,246);
INSERT INTO `detalle_movimiento` VALUES (76,57,247);
INSERT INTO `detalle_movimiento` VALUES (76,74,251);
INSERT INTO `detalle_movimiento` VALUES (76,78,252);
INSERT INTO `detalle_movimiento` VALUES (76,68,256);
INSERT INTO `detalle_movimiento` VALUES (76,92,258);
INSERT INTO `detalle_movimiento` VALUES (76,93,265);
INSERT INTO `detalle_movimiento` VALUES (76,75,271);
INSERT INTO `detalle_movimiento` VALUES (76,75,272);
INSERT INTO `detalle_movimiento` VALUES (76,99,273);
INSERT INTO `detalle_movimiento` VALUES (76,53,279);
INSERT INTO `detalle_movimiento` VALUES (76,80,287);
INSERT INTO `detalle_movimiento` VALUES (76,53,296);
INSERT INTO `detalle_movimiento` VALUES (76,86,299);
INSERT INTO `detalle_movimiento` VALUES (76,80,303);
INSERT INTO `detalle_movimiento` VALUES (76,58,312);
INSERT INTO `detalle_movimiento` VALUES (76,54,321);
INSERT INTO `detalle_movimiento` VALUES (76,70,323);
INSERT INTO `detalle_movimiento` VALUES (76,84,324);
INSERT INTO `detalle_movimiento` VALUES (76,57,325);
INSERT INTO `detalle_movimiento` VALUES (76,61,330);
INSERT INTO `detalle_movimiento` VALUES (76,91,331);
INSERT INTO `detalle_movimiento` VALUES (76,69,337);
INSERT INTO `detalle_movimiento` VALUES (76,53,338);
INSERT INTO `detalle_movimiento` VALUES (76,56,345);
INSERT INTO `detalle_movimiento` VALUES (76,71,351);
INSERT INTO `detalle_movimiento` VALUES (76,55,356);
INSERT INTO `detalle_movimiento` VALUES (76,78,364);
INSERT INTO `detalle_movimiento` VALUES (76,71,380);
INSERT INTO `detalle_movimiento` VALUES (76,84,390);
INSERT INTO `detalle_movimiento` VALUES (76,77,391);
INSERT INTO `detalle_movimiento` VALUES (76,77,393);
INSERT INTO `detalle_movimiento` VALUES (76,94,403);
INSERT INTO `detalle_movimiento` VALUES (76,87,405);
INSERT INTO `detalle_movimiento` VALUES (77,72,2);
INSERT INTO `detalle_movimiento` VALUES (77,71,3);
INSERT INTO `detalle_movimiento` VALUES (77,72,4);
INSERT INTO `detalle_movimiento` VALUES (77,73,28);
INSERT INTO `detalle_movimiento` VALUES (77,77,32);
INSERT INTO `detalle_movimiento` VALUES (77,58,35);
INSERT INTO `detalle_movimiento` VALUES (77,84,36);
INSERT INTO `detalle_movimiento` VALUES (77,90,41);
INSERT INTO `detalle_movimiento` VALUES (77,95,52);
INSERT INTO `detalle_movimiento` VALUES (77,72,55);
INSERT INTO `detalle_movimiento` VALUES (77,52,57);
INSERT INTO `detalle_movimiento` VALUES (77,66,65);
INSERT INTO `detalle_movimiento` VALUES (77,69,66);
INSERT INTO `detalle_movimiento` VALUES (77,77,69);
INSERT INTO `detalle_movimiento` VALUES (77,63,73);
INSERT INTO `detalle_movimiento` VALUES (77,94,75);
INSERT INTO `detalle_movimiento` VALUES (77,90,76);
INSERT INTO `detalle_movimiento` VALUES (77,55,79);
INSERT INTO `detalle_movimiento` VALUES (77,92,83);
INSERT INTO `detalle_movimiento` VALUES (77,95,85);
INSERT INTO `detalle_movimiento` VALUES (77,98,87);
INSERT INTO `detalle_movimiento` VALUES (77,86,96);
INSERT INTO `detalle_movimiento` VALUES (77,83,98);
INSERT INTO `detalle_movimiento` VALUES (77,61,109);
INSERT INTO `detalle_movimiento` VALUES (77,60,114);
INSERT INTO `detalle_movimiento` VALUES (77,55,122);
INSERT INTO `detalle_movimiento` VALUES (77,77,124);
INSERT INTO `detalle_movimiento` VALUES (77,93,125);
INSERT INTO `detalle_movimiento` VALUES (77,63,129);
INSERT INTO `detalle_movimiento` VALUES (77,67,130);
INSERT INTO `detalle_movimiento` VALUES (77,87,131);
INSERT INTO `detalle_movimiento` VALUES (77,56,137);
INSERT INTO `detalle_movimiento` VALUES (77,74,139);
INSERT INTO `detalle_movimiento` VALUES (77,69,144);
INSERT INTO `detalle_movimiento` VALUES (77,56,156);
INSERT INTO `detalle_movimiento` VALUES (77,94,162);
INSERT INTO `detalle_movimiento` VALUES (77,85,164);
INSERT INTO `detalle_movimiento` VALUES (77,76,165);
INSERT INTO `detalle_movimiento` VALUES (77,60,174);
INSERT INTO `detalle_movimiento` VALUES (77,94,189);
INSERT INTO `detalle_movimiento` VALUES (77,79,190);
INSERT INTO `detalle_movimiento` VALUES (77,66,191);
INSERT INTO `detalle_movimiento` VALUES (77,59,194);
INSERT INTO `detalle_movimiento` VALUES (77,56,196);
INSERT INTO `detalle_movimiento` VALUES (77,97,197);
INSERT INTO `detalle_movimiento` VALUES (77,70,200);
INSERT INTO `detalle_movimiento` VALUES (77,88,205);
INSERT INTO `detalle_movimiento` VALUES (77,56,228);
INSERT INTO `detalle_movimiento` VALUES (77,72,231);
INSERT INTO `detalle_movimiento` VALUES (77,85,237);
INSERT INTO `detalle_movimiento` VALUES (77,59,241);
INSERT INTO `detalle_movimiento` VALUES (77,70,242);
INSERT INTO `detalle_movimiento` VALUES (77,98,246);
INSERT INTO `detalle_movimiento` VALUES (77,81,247);
INSERT INTO `detalle_movimiento` VALUES (77,90,258);
INSERT INTO `detalle_movimiento` VALUES (77,91,264);
INSERT INTO `detalle_movimiento` VALUES (77,51,265);
INSERT INTO `detalle_movimiento` VALUES (77,93,271);
INSERT INTO `detalle_movimiento` VALUES (77,70,273);
INSERT INTO `detalle_movimiento` VALUES (77,83,279);
INSERT INTO `detalle_movimiento` VALUES (77,93,280);
INSERT INTO `detalle_movimiento` VALUES (77,91,283);
INSERT INTO `detalle_movimiento` VALUES (77,93,292);
INSERT INTO `detalle_movimiento` VALUES (77,86,294);
INSERT INTO `detalle_movimiento` VALUES (77,58,299);
INSERT INTO `detalle_movimiento` VALUES (77,51,312);
INSERT INTO `detalle_movimiento` VALUES (77,69,322);
INSERT INTO `detalle_movimiento` VALUES (77,59,324);
INSERT INTO `detalle_movimiento` VALUES (77,77,325);
INSERT INTO `detalle_movimiento` VALUES (77,60,337);
INSERT INTO `detalle_movimiento` VALUES (77,96,338);
INSERT INTO `detalle_movimiento` VALUES (77,95,356);
INSERT INTO `detalle_movimiento` VALUES (77,56,364);
INSERT INTO `detalle_movimiento` VALUES (77,62,367);
INSERT INTO `detalle_movimiento` VALUES (77,73,371);
INSERT INTO `detalle_movimiento` VALUES (77,51,374);
INSERT INTO `detalle_movimiento` VALUES (77,68,375);
INSERT INTO `detalle_movimiento` VALUES (77,82,378);
INSERT INTO `detalle_movimiento` VALUES (77,90,379);
INSERT INTO `detalle_movimiento` VALUES (77,67,380);
INSERT INTO `detalle_movimiento` VALUES (77,76,390);
INSERT INTO `detalle_movimiento` VALUES (77,51,391);
INSERT INTO `detalle_movimiento` VALUES (77,55,395);
INSERT INTO `detalle_movimiento` VALUES (77,59,396);
INSERT INTO `detalle_movimiento` VALUES (77,96,397);
INSERT INTO `detalle_movimiento` VALUES (79,93,1);
INSERT INTO `detalle_movimiento` VALUES (79,94,2);
INSERT INTO `detalle_movimiento` VALUES (79,75,3);
INSERT INTO `detalle_movimiento` VALUES (79,76,5);
INSERT INTO `detalle_movimiento` VALUES (79,84,6);
INSERT INTO `detalle_movimiento` VALUES (79,60,10);
INSERT INTO `detalle_movimiento` VALUES (79,85,11);
INSERT INTO `detalle_movimiento` VALUES (79,97,14);
INSERT INTO `detalle_movimiento` VALUES (79,100,20);
INSERT INTO `detalle_movimiento` VALUES (79,62,24);
INSERT INTO `detalle_movimiento` VALUES (79,93,25);
INSERT INTO `detalle_movimiento` VALUES (79,74,27);
INSERT INTO `detalle_movimiento` VALUES (79,57,35);
INSERT INTO `detalle_movimiento` VALUES (79,61,41);
INSERT INTO `detalle_movimiento` VALUES (79,86,43);
INSERT INTO `detalle_movimiento` VALUES (79,80,44);
INSERT INTO `detalle_movimiento` VALUES (79,65,46);
INSERT INTO `detalle_movimiento` VALUES (79,89,49);
INSERT INTO `detalle_movimiento` VALUES (79,74,51);
INSERT INTO `detalle_movimiento` VALUES (79,62,54);
INSERT INTO `detalle_movimiento` VALUES (79,63,57);
INSERT INTO `detalle_movimiento` VALUES (79,77,65);
INSERT INTO `detalle_movimiento` VALUES (79,82,68);
INSERT INTO `detalle_movimiento` VALUES (79,99,71);
INSERT INTO `detalle_movimiento` VALUES (79,55,75);
INSERT INTO `detalle_movimiento` VALUES (79,94,76);
INSERT INTO `detalle_movimiento` VALUES (79,86,78);
INSERT INTO `detalle_movimiento` VALUES (79,90,82);
INSERT INTO `detalle_movimiento` VALUES (79,72,84);
INSERT INTO `detalle_movimiento` VALUES (79,99,87);
INSERT INTO `detalle_movimiento` VALUES (79,90,91);
INSERT INTO `detalle_movimiento` VALUES (79,68,96);
INSERT INTO `detalle_movimiento` VALUES (79,57,98);
INSERT INTO `detalle_movimiento` VALUES (79,66,103);
INSERT INTO `detalle_movimiento` VALUES (79,69,104);
INSERT INTO `detalle_movimiento` VALUES (79,83,113);
INSERT INTO `detalle_movimiento` VALUES (79,67,114);
INSERT INTO `detalle_movimiento` VALUES (79,86,127);
INSERT INTO `detalle_movimiento` VALUES (79,87,133);
INSERT INTO `detalle_movimiento` VALUES (79,99,139);
INSERT INTO `detalle_movimiento` VALUES (79,62,140);
INSERT INTO `detalle_movimiento` VALUES (79,87,142);
INSERT INTO `detalle_movimiento` VALUES (79,75,147);
INSERT INTO `detalle_movimiento` VALUES (79,73,151);
INSERT INTO `detalle_movimiento` VALUES (79,72,155);
INSERT INTO `detalle_movimiento` VALUES (79,54,165);
INSERT INTO `detalle_movimiento` VALUES (79,99,166);
INSERT INTO `detalle_movimiento` VALUES (79,67,169);
INSERT INTO `detalle_movimiento` VALUES (79,82,171);
INSERT INTO `detalle_movimiento` VALUES (79,72,173);
INSERT INTO `detalle_movimiento` VALUES (79,63,187);
INSERT INTO `detalle_movimiento` VALUES (79,89,191);
INSERT INTO `detalle_movimiento` VALUES (79,57,194);
INSERT INTO `detalle_movimiento` VALUES (79,95,198);
INSERT INTO `detalle_movimiento` VALUES (79,80,199);
INSERT INTO `detalle_movimiento` VALUES (79,70,200);
INSERT INTO `detalle_movimiento` VALUES (79,61,202);
INSERT INTO `detalle_movimiento` VALUES (79,84,208);
INSERT INTO `detalle_movimiento` VALUES (79,60,209);
INSERT INTO `detalle_movimiento` VALUES (79,96,210);
INSERT INTO `detalle_movimiento` VALUES (79,64,212);
INSERT INTO `detalle_movimiento` VALUES (79,52,214);
INSERT INTO `detalle_movimiento` VALUES (79,74,216);
INSERT INTO `detalle_movimiento` VALUES (79,78,218);
INSERT INTO `detalle_movimiento` VALUES (79,73,224);
INSERT INTO `detalle_movimiento` VALUES (79,74,225);
INSERT INTO `detalle_movimiento` VALUES (79,51,226);
INSERT INTO `detalle_movimiento` VALUES (79,66,231);
INSERT INTO `detalle_movimiento` VALUES (79,84,238);
INSERT INTO `detalle_movimiento` VALUES (79,73,239);
INSERT INTO `detalle_movimiento` VALUES (79,52,245);
INSERT INTO `detalle_movimiento` VALUES (79,60,247);
INSERT INTO `detalle_movimiento` VALUES (79,100,251);
INSERT INTO `detalle_movimiento` VALUES (79,77,252);
INSERT INTO `detalle_movimiento` VALUES (79,61,256);
INSERT INTO `detalle_movimiento` VALUES (79,68,265);
INSERT INTO `detalle_movimiento` VALUES (79,75,280);
INSERT INTO `detalle_movimiento` VALUES (79,76,285);
INSERT INTO `detalle_movimiento` VALUES (79,86,298);
INSERT INTO `detalle_movimiento` VALUES (79,59,299);
INSERT INTO `detalle_movimiento` VALUES (79,54,301);
INSERT INTO `detalle_movimiento` VALUES (79,51,303);
INSERT INTO `detalle_movimiento` VALUES (79,52,312);
INSERT INTO `detalle_movimiento` VALUES (79,74,325);
INSERT INTO `detalle_movimiento` VALUES (79,100,327);
INSERT INTO `detalle_movimiento` VALUES (79,55,336);
INSERT INTO `detalle_movimiento` VALUES (79,68,337);
INSERT INTO `detalle_movimiento` VALUES (79,54,340);
INSERT INTO `detalle_movimiento` VALUES (79,62,341);
INSERT INTO `detalle_movimiento` VALUES (79,55,342);
INSERT INTO `detalle_movimiento` VALUES (79,78,343);
INSERT INTO `detalle_movimiento` VALUES (79,55,346);
INSERT INTO `detalle_movimiento` VALUES (79,91,352);
INSERT INTO `detalle_movimiento` VALUES (79,87,356);
INSERT INTO `detalle_movimiento` VALUES (79,90,363);
INSERT INTO `detalle_movimiento` VALUES (79,64,367);
INSERT INTO `detalle_movimiento` VALUES (79,98,371);
INSERT INTO `detalle_movimiento` VALUES (79,56,372);
INSERT INTO `detalle_movimiento` VALUES (79,60,375);
INSERT INTO `detalle_movimiento` VALUES (79,58,379);
INSERT INTO `detalle_movimiento` VALUES (79,85,380);
INSERT INTO `detalle_movimiento` VALUES (79,81,390);
INSERT INTO `detalle_movimiento` VALUES (79,56,391);
INSERT INTO `detalle_movimiento` VALUES (79,56,392);
INSERT INTO `detalle_movimiento` VALUES (79,94,393);
INSERT INTO `detalle_movimiento` VALUES (79,87,396);
INSERT INTO `detalle_movimiento` VALUES (79,76,397);
INSERT INTO `detalle_movimiento` VALUES (79,88,398);
INSERT INTO `detalle_movimiento` VALUES (79,54,405);
INSERT INTO `detalle_movimiento` VALUES (81,85,36);
INSERT INTO `detalle_movimiento` VALUES (81,93,43);
INSERT INTO `detalle_movimiento` VALUES (81,74,65);
INSERT INTO `detalle_movimiento` VALUES (81,88,84);
INSERT INTO `detalle_movimiento` VALUES (81,77,90);
INSERT INTO `detalle_movimiento` VALUES (81,81,99);
INSERT INTO `detalle_movimiento` VALUES (81,60,113);
INSERT INTO `detalle_movimiento` VALUES (81,99,130);
INSERT INTO `detalle_movimiento` VALUES (81,85,136);
INSERT INTO `detalle_movimiento` VALUES (81,70,144);
INSERT INTO `detalle_movimiento` VALUES (81,98,157);
INSERT INTO `detalle_movimiento` VALUES (81,60,184);
INSERT INTO `detalle_movimiento` VALUES (81,70,190);
INSERT INTO `detalle_movimiento` VALUES (81,71,191);
INSERT INTO `detalle_movimiento` VALUES (81,65,241);
INSERT INTO `detalle_movimiento` VALUES (81,96,256);
INSERT INTO `detalle_movimiento` VALUES (81,74,263);
INSERT INTO `detalle_movimiento` VALUES (81,88,290);
INSERT INTO `detalle_movimiento` VALUES (81,54,306);
INSERT INTO `detalle_movimiento` VALUES (81,91,337);
INSERT INTO `detalle_movimiento` VALUES (81,82,396);
INSERT INTO `detalle_movimiento` VALUES (82,79,2);
INSERT INTO `detalle_movimiento` VALUES (82,68,3);
INSERT INTO `detalle_movimiento` VALUES (82,91,5);
INSERT INTO `detalle_movimiento` VALUES (82,84,6);
INSERT INTO `detalle_movimiento` VALUES (82,76,9);
INSERT INTO `detalle_movimiento` VALUES (82,82,10);
INSERT INTO `detalle_movimiento` VALUES (82,88,11);
INSERT INTO `detalle_movimiento` VALUES (82,55,15);
INSERT INTO `detalle_movimiento` VALUES (82,58,20);
INSERT INTO `detalle_movimiento` VALUES (82,62,22);
INSERT INTO `detalle_movimiento` VALUES (82,84,23);
INSERT INTO `detalle_movimiento` VALUES (82,75,24);
INSERT INTO `detalle_movimiento` VALUES (82,54,25);
INSERT INTO `detalle_movimiento` VALUES (82,88,30);
INSERT INTO `detalle_movimiento` VALUES (82,100,33);
INSERT INTO `detalle_movimiento` VALUES (82,62,35);
INSERT INTO `detalle_movimiento` VALUES (82,51,38);
INSERT INTO `detalle_movimiento` VALUES (82,89,43);
INSERT INTO `detalle_movimiento` VALUES (82,91,44);
INSERT INTO `detalle_movimiento` VALUES (82,85,46);
INSERT INTO `detalle_movimiento` VALUES (82,86,49);
INSERT INTO `detalle_movimiento` VALUES (82,78,53);
INSERT INTO `detalle_movimiento` VALUES (82,53,54);
INSERT INTO `detalle_movimiento` VALUES (82,71,55);
INSERT INTO `detalle_movimiento` VALUES (82,94,56);
INSERT INTO `detalle_movimiento` VALUES (82,98,57);
INSERT INTO `detalle_movimiento` VALUES (82,82,61);
INSERT INTO `detalle_movimiento` VALUES (82,83,62);
INSERT INTO `detalle_movimiento` VALUES (82,77,64);
INSERT INTO `detalle_movimiento` VALUES (82,58,65);
INSERT INTO `detalle_movimiento` VALUES (82,99,71);
INSERT INTO `detalle_movimiento` VALUES (82,63,74);
INSERT INTO `detalle_movimiento` VALUES (82,84,76);
INSERT INTO `detalle_movimiento` VALUES (82,64,78);
INSERT INTO `detalle_movimiento` VALUES (82,84,82);
INSERT INTO `detalle_movimiento` VALUES (82,72,83);
INSERT INTO `detalle_movimiento` VALUES (82,69,85);
INSERT INTO `detalle_movimiento` VALUES (82,61,86);
INSERT INTO `detalle_movimiento` VALUES (82,67,87);
INSERT INTO `detalle_movimiento` VALUES (82,95,88);
INSERT INTO `detalle_movimiento` VALUES (82,72,89);
INSERT INTO `detalle_movimiento` VALUES (82,89,93);
INSERT INTO `detalle_movimiento` VALUES (82,93,94);
INSERT INTO `detalle_movimiento` VALUES (82,94,98);
INSERT INTO `detalle_movimiento` VALUES (82,60,99);
INSERT INTO `detalle_movimiento` VALUES (82,78,100);
INSERT INTO `detalle_movimiento` VALUES (82,74,102);
INSERT INTO `detalle_movimiento` VALUES (82,92,103);
INSERT INTO `detalle_movimiento` VALUES (82,55,109);
INSERT INTO `detalle_movimiento` VALUES (82,100,113);
INSERT INTO `detalle_movimiento` VALUES (82,78,115);
INSERT INTO `detalle_movimiento` VALUES (82,61,116);
INSERT INTO `detalle_movimiento` VALUES (82,98,118);
INSERT INTO `detalle_movimiento` VALUES (82,79,121);
INSERT INTO `detalle_movimiento` VALUES (82,83,122);
INSERT INTO `detalle_movimiento` VALUES (82,56,123);
INSERT INTO `detalle_movimiento` VALUES (82,97,128);
INSERT INTO `detalle_movimiento` VALUES (82,78,129);
INSERT INTO `detalle_movimiento` VALUES (82,76,130);
INSERT INTO `detalle_movimiento` VALUES (82,80,131);
INSERT INTO `detalle_movimiento` VALUES (82,94,133);
INSERT INTO `detalle_movimiento` VALUES (82,70,137);
INSERT INTO `detalle_movimiento` VALUES (82,81,138);
INSERT INTO `detalle_movimiento` VALUES (82,67,139);
INSERT INTO `detalle_movimiento` VALUES (82,53,140);
INSERT INTO `detalle_movimiento` VALUES (82,58,141);
INSERT INTO `detalle_movimiento` VALUES (82,54,144);
INSERT INTO `detalle_movimiento` VALUES (82,59,147);
INSERT INTO `detalle_movimiento` VALUES (82,100,151);
INSERT INTO `detalle_movimiento` VALUES (82,79,152);
INSERT INTO `detalle_movimiento` VALUES (82,79,153);
INSERT INTO `detalle_movimiento` VALUES (82,84,157);
INSERT INTO `detalle_movimiento` VALUES (82,52,161);
INSERT INTO `detalle_movimiento` VALUES (82,57,167);
INSERT INTO `detalle_movimiento` VALUES (82,71,172);
INSERT INTO `detalle_movimiento` VALUES (82,73,175);
INSERT INTO `detalle_movimiento` VALUES (82,60,177);
INSERT INTO `detalle_movimiento` VALUES (82,60,178);
INSERT INTO `detalle_movimiento` VALUES (82,53,179);
INSERT INTO `detalle_movimiento` VALUES (82,94,180);
INSERT INTO `detalle_movimiento` VALUES (82,65,181);
INSERT INTO `detalle_movimiento` VALUES (82,79,183);
INSERT INTO `detalle_movimiento` VALUES (82,82,189);
INSERT INTO `detalle_movimiento` VALUES (82,64,190);
INSERT INTO `detalle_movimiento` VALUES (82,90,194);
INSERT INTO `detalle_movimiento` VALUES (82,65,195);
INSERT INTO `detalle_movimiento` VALUES (82,91,196);
INSERT INTO `detalle_movimiento` VALUES (82,61,197);
INSERT INTO `detalle_movimiento` VALUES (82,85,198);
INSERT INTO `detalle_movimiento` VALUES (82,85,199);
INSERT INTO `detalle_movimiento` VALUES (82,76,200);
INSERT INTO `detalle_movimiento` VALUES (82,58,201);
INSERT INTO `detalle_movimiento` VALUES (82,99,202);
INSERT INTO `detalle_movimiento` VALUES (82,99,203);
INSERT INTO `detalle_movimiento` VALUES (82,91,204);
INSERT INTO `detalle_movimiento` VALUES (82,54,206);
INSERT INTO `detalle_movimiento` VALUES (82,84,207);
INSERT INTO `detalle_movimiento` VALUES (82,74,208);
INSERT INTO `detalle_movimiento` VALUES (82,80,210);
INSERT INTO `detalle_movimiento` VALUES (82,82,211);
INSERT INTO `detalle_movimiento` VALUES (82,71,212);
INSERT INTO `detalle_movimiento` VALUES (82,86,215);
INSERT INTO `detalle_movimiento` VALUES (82,73,216);
INSERT INTO `detalle_movimiento` VALUES (82,77,219);
INSERT INTO `detalle_movimiento` VALUES (82,95,220);
INSERT INTO `detalle_movimiento` VALUES (82,94,222);
INSERT INTO `detalle_movimiento` VALUES (82,94,226);
INSERT INTO `detalle_movimiento` VALUES (82,90,227);
INSERT INTO `detalle_movimiento` VALUES (82,87,228);
INSERT INTO `detalle_movimiento` VALUES (82,79,229);
INSERT INTO `detalle_movimiento` VALUES (82,83,231);
INSERT INTO `detalle_movimiento` VALUES (82,89,235);
INSERT INTO `detalle_movimiento` VALUES (82,101,237);
INSERT INTO `detalle_movimiento` VALUES (82,63,238);
INSERT INTO `detalle_movimiento` VALUES (82,52,239);
INSERT INTO `detalle_movimiento` VALUES (82,61,241);
INSERT INTO `detalle_movimiento` VALUES (82,58,242);
INSERT INTO `detalle_movimiento` VALUES (82,63,243);
INSERT INTO `detalle_movimiento` VALUES (82,93,244);
INSERT INTO `detalle_movimiento` VALUES (82,97,245);
INSERT INTO `detalle_movimiento` VALUES (82,51,246);
INSERT INTO `detalle_movimiento` VALUES (82,77,247);
INSERT INTO `detalle_movimiento` VALUES (82,52,248);
INSERT INTO `detalle_movimiento` VALUES (82,64,250);
INSERT INTO `detalle_movimiento` VALUES (82,97,253);
INSERT INTO `detalle_movimiento` VALUES (82,63,255);
INSERT INTO `detalle_movimiento` VALUES (82,73,256);
INSERT INTO `detalle_movimiento` VALUES (82,82,258);
INSERT INTO `detalle_movimiento` VALUES (82,81,259);
INSERT INTO `detalle_movimiento` VALUES (82,85,260);
INSERT INTO `detalle_movimiento` VALUES (82,96,263);
INSERT INTO `detalle_movimiento` VALUES (82,101,264);
INSERT INTO `detalle_movimiento` VALUES (82,67,265);
INSERT INTO `detalle_movimiento` VALUES (82,61,266);
INSERT INTO `detalle_movimiento` VALUES (82,76,268);
INSERT INTO `detalle_movimiento` VALUES (82,57,269);
INSERT INTO `detalle_movimiento` VALUES (82,66,270);
INSERT INTO `detalle_movimiento` VALUES (82,87,272);
INSERT INTO `detalle_movimiento` VALUES (82,73,273);
INSERT INTO `detalle_movimiento` VALUES (82,76,275);
INSERT INTO `detalle_movimiento` VALUES (82,77,277);
INSERT INTO `detalle_movimiento` VALUES (82,88,279);
INSERT INTO `detalle_movimiento` VALUES (82,74,281);
INSERT INTO `detalle_movimiento` VALUES (82,68,283);
INSERT INTO `detalle_movimiento` VALUES (82,69,285);
INSERT INTO `detalle_movimiento` VALUES (82,80,286);
INSERT INTO `detalle_movimiento` VALUES (82,67,288);
INSERT INTO `detalle_movimiento` VALUES (82,84,291);
INSERT INTO `detalle_movimiento` VALUES (82,95,292);
INSERT INTO `detalle_movimiento` VALUES (82,87,294);
INSERT INTO `detalle_movimiento` VALUES (82,58,295);
INSERT INTO `detalle_movimiento` VALUES (82,83,296);
INSERT INTO `detalle_movimiento` VALUES (82,80,297);
INSERT INTO `detalle_movimiento` VALUES (82,54,298);
INSERT INTO `detalle_movimiento` VALUES (82,82,299);
INSERT INTO `detalle_movimiento` VALUES (82,56,301);
INSERT INTO `detalle_movimiento` VALUES (82,52,302);
INSERT INTO `detalle_movimiento` VALUES (82,82,303);
INSERT INTO `detalle_movimiento` VALUES (82,53,304);
INSERT INTO `detalle_movimiento` VALUES (82,85,305);
INSERT INTO `detalle_movimiento` VALUES (82,53,306);
INSERT INTO `detalle_movimiento` VALUES (82,70,307);
INSERT INTO `detalle_movimiento` VALUES (82,66,308);
INSERT INTO `detalle_movimiento` VALUES (82,83,309);
INSERT INTO `detalle_movimiento` VALUES (82,89,310);
INSERT INTO `detalle_movimiento` VALUES (82,56,311);
INSERT INTO `detalle_movimiento` VALUES (82,53,312);
INSERT INTO `detalle_movimiento` VALUES (82,61,313);
INSERT INTO `detalle_movimiento` VALUES (82,84,317);
INSERT INTO `detalle_movimiento` VALUES (82,71,319);
INSERT INTO `detalle_movimiento` VALUES (82,74,320);
INSERT INTO `detalle_movimiento` VALUES (82,87,325);
INSERT INTO `detalle_movimiento` VALUES (82,52,327);
INSERT INTO `detalle_movimiento` VALUES (82,98,328);
INSERT INTO `detalle_movimiento` VALUES (82,53,331);
INSERT INTO `detalle_movimiento` VALUES (82,71,333);
INSERT INTO `detalle_movimiento` VALUES (82,55,334);
INSERT INTO `detalle_movimiento` VALUES (82,59,336);
INSERT INTO `detalle_movimiento` VALUES (82,71,338);
INSERT INTO `detalle_movimiento` VALUES (82,84,340);
INSERT INTO `detalle_movimiento` VALUES (82,82,341);
INSERT INTO `detalle_movimiento` VALUES (82,56,342);
INSERT INTO `detalle_movimiento` VALUES (82,78,343);
INSERT INTO `detalle_movimiento` VALUES (82,100,345);
INSERT INTO `detalle_movimiento` VALUES (82,72,348);
INSERT INTO `detalle_movimiento` VALUES (82,54,350);
INSERT INTO `detalle_movimiento` VALUES (82,98,352);
INSERT INTO `detalle_movimiento` VALUES (82,98,353);
INSERT INTO `detalle_movimiento` VALUES (82,70,355);
INSERT INTO `detalle_movimiento` VALUES (82,54,356);
INSERT INTO `detalle_movimiento` VALUES (82,66,357);
INSERT INTO `detalle_movimiento` VALUES (82,54,361);
INSERT INTO `detalle_movimiento` VALUES (82,79,362);
INSERT INTO `detalle_movimiento` VALUES (82,58,363);
INSERT INTO `detalle_movimiento` VALUES (82,86,366);
INSERT INTO `detalle_movimiento` VALUES (82,63,368);
INSERT INTO `detalle_movimiento` VALUES (82,56,369);
INSERT INTO `detalle_movimiento` VALUES (82,98,371);
INSERT INTO `detalle_movimiento` VALUES (82,91,375);
INSERT INTO `detalle_movimiento` VALUES (82,63,376);
INSERT INTO `detalle_movimiento` VALUES (82,78,377);
INSERT INTO `detalle_movimiento` VALUES (82,72,378);
INSERT INTO `detalle_movimiento` VALUES (82,52,384);
INSERT INTO `detalle_movimiento` VALUES (82,89,385);
INSERT INTO `detalle_movimiento` VALUES (82,58,386);
INSERT INTO `detalle_movimiento` VALUES (82,79,391);
INSERT INTO `detalle_movimiento` VALUES (82,70,393);
INSERT INTO `detalle_movimiento` VALUES (82,81,394);
INSERT INTO `detalle_movimiento` VALUES (82,89,396);
INSERT INTO `detalle_movimiento` VALUES (82,97,397);
INSERT INTO `detalle_movimiento` VALUES (82,65,398);
INSERT INTO `detalle_movimiento` VALUES (82,54,401);
INSERT INTO `detalle_movimiento` VALUES (82,56,402);
INSERT INTO `detalle_movimiento` VALUES (82,86,403);
INSERT INTO `detalle_movimiento` VALUES (82,87,404);
INSERT INTO `detalle_movimiento` VALUES (82,55,405);
INSERT INTO `detalle_movimiento` VALUES (85,83,1);
INSERT INTO `detalle_movimiento` VALUES (85,55,2);
INSERT INTO `detalle_movimiento` VALUES (85,100,3);
INSERT INTO `detalle_movimiento` VALUES (85,53,5);
INSERT INTO `detalle_movimiento` VALUES (85,85,6);
INSERT INTO `detalle_movimiento` VALUES (85,93,10);
INSERT INTO `detalle_movimiento` VALUES (85,65,20);
INSERT INTO `detalle_movimiento` VALUES (85,99,24);
INSERT INTO `detalle_movimiento` VALUES (85,87,27);
INSERT INTO `detalle_movimiento` VALUES (85,59,30);
INSERT INTO `detalle_movimiento` VALUES (85,92,35);
INSERT INTO `detalle_movimiento` VALUES (85,80,36);
INSERT INTO `detalle_movimiento` VALUES (85,87,39);
INSERT INTO `detalle_movimiento` VALUES (85,66,46);
INSERT INTO `detalle_movimiento` VALUES (85,71,50);
INSERT INTO `detalle_movimiento` VALUES (85,97,51);
INSERT INTO `detalle_movimiento` VALUES (85,88,52);
INSERT INTO `detalle_movimiento` VALUES (85,53,54);
INSERT INTO `detalle_movimiento` VALUES (85,72,55);
INSERT INTO `detalle_movimiento` VALUES (85,65,57);
INSERT INTO `detalle_movimiento` VALUES (85,79,66);
INSERT INTO `detalle_movimiento` VALUES (85,90,68);
INSERT INTO `detalle_movimiento` VALUES (85,86,71);
INSERT INTO `detalle_movimiento` VALUES (85,56,73);
INSERT INTO `detalle_movimiento` VALUES (85,98,77);
INSERT INTO `detalle_movimiento` VALUES (85,77,78);
INSERT INTO `detalle_movimiento` VALUES (85,56,82);
INSERT INTO `detalle_movimiento` VALUES (85,91,84);
INSERT INTO `detalle_movimiento` VALUES (85,75,87);
INSERT INTO `detalle_movimiento` VALUES (85,56,88);
INSERT INTO `detalle_movimiento` VALUES (85,58,96);
INSERT INTO `detalle_movimiento` VALUES (85,68,118);
INSERT INTO `detalle_movimiento` VALUES (85,63,124);
INSERT INTO `detalle_movimiento` VALUES (85,83,127);
INSERT INTO `detalle_movimiento` VALUES (85,52,129);
INSERT INTO `detalle_movimiento` VALUES (85,58,131);
INSERT INTO `detalle_movimiento` VALUES (85,92,136);
INSERT INTO `detalle_movimiento` VALUES (85,69,142);
INSERT INTO `detalle_movimiento` VALUES (85,60,144);
INSERT INTO `detalle_movimiento` VALUES (85,93,147);
INSERT INTO `detalle_movimiento` VALUES (85,71,149);
INSERT INTO `detalle_movimiento` VALUES (85,95,157);
INSERT INTO `detalle_movimiento` VALUES (85,73,162);
INSERT INTO `detalle_movimiento` VALUES (85,84,165);
INSERT INTO `detalle_movimiento` VALUES (85,61,171);
INSERT INTO `detalle_movimiento` VALUES (85,88,174);
INSERT INTO `detalle_movimiento` VALUES (85,92,175);
INSERT INTO `detalle_movimiento` VALUES (85,74,176);
INSERT INTO `detalle_movimiento` VALUES (85,79,184);
INSERT INTO `detalle_movimiento` VALUES (85,52,185);
INSERT INTO `detalle_movimiento` VALUES (85,79,190);
INSERT INTO `detalle_movimiento` VALUES (85,77,198);
INSERT INTO `detalle_movimiento` VALUES (85,59,199);
INSERT INTO `detalle_movimiento` VALUES (85,64,202);
INSERT INTO `detalle_movimiento` VALUES (85,55,203);
INSERT INTO `detalle_movimiento` VALUES (85,62,206);
INSERT INTO `detalle_movimiento` VALUES (85,56,208);
INSERT INTO `detalle_movimiento` VALUES (85,99,209);
INSERT INTO `detalle_movimiento` VALUES (85,75,212);
INSERT INTO `detalle_movimiento` VALUES (85,65,218);
INSERT INTO `detalle_movimiento` VALUES (85,82,225);
INSERT INTO `detalle_movimiento` VALUES (85,85,231);
INSERT INTO `detalle_movimiento` VALUES (85,90,234);
INSERT INTO `detalle_movimiento` VALUES (85,101,237);
INSERT INTO `detalle_movimiento` VALUES (85,53,239);
INSERT INTO `detalle_movimiento` VALUES (85,78,242);
INSERT INTO `detalle_movimiento` VALUES (85,83,244);
INSERT INTO `detalle_movimiento` VALUES (85,80,245);
INSERT INTO `detalle_movimiento` VALUES (85,81,246);
INSERT INTO `detalle_movimiento` VALUES (85,51,251);
INSERT INTO `detalle_movimiento` VALUES (85,80,252);
INSERT INTO `detalle_movimiento` VALUES (85,73,260);
INSERT INTO `detalle_movimiento` VALUES (85,65,264);
INSERT INTO `detalle_movimiento` VALUES (85,90,265);
INSERT INTO `detalle_movimiento` VALUES (85,65,270);
INSERT INTO `detalle_movimiento` VALUES (85,75,271);
INSERT INTO `detalle_movimiento` VALUES (85,60,272);
INSERT INTO `detalle_movimiento` VALUES (85,71,283);
INSERT INTO `detalle_movimiento` VALUES (85,74,288);
INSERT INTO `detalle_movimiento` VALUES (85,82,290);
INSERT INTO `detalle_movimiento` VALUES (85,53,291);
INSERT INTO `detalle_movimiento` VALUES (85,53,293);
INSERT INTO `detalle_movimiento` VALUES (85,85,294);
INSERT INTO `detalle_movimiento` VALUES (85,79,298);
INSERT INTO `detalle_movimiento` VALUES (85,66,299);
INSERT INTO `detalle_movimiento` VALUES (85,65,301);
INSERT INTO `detalle_movimiento` VALUES (85,88,307);
INSERT INTO `detalle_movimiento` VALUES (85,54,312);
INSERT INTO `detalle_movimiento` VALUES (85,75,320);
INSERT INTO `detalle_movimiento` VALUES (85,94,321);
INSERT INTO `detalle_movimiento` VALUES (85,72,322);
INSERT INTO `detalle_movimiento` VALUES (85,93,323);
INSERT INTO `detalle_movimiento` VALUES (85,63,324);
INSERT INTO `detalle_movimiento` VALUES (85,73,325);
INSERT INTO `detalle_movimiento` VALUES (85,51,331);
INSERT INTO `detalle_movimiento` VALUES (85,95,333);
INSERT INTO `detalle_movimiento` VALUES (85,62,342);
INSERT INTO `detalle_movimiento` VALUES (85,66,346);
INSERT INTO `detalle_movimiento` VALUES (85,56,348);
INSERT INTO `detalle_movimiento` VALUES (85,58,361);
INSERT INTO `detalle_movimiento` VALUES (85,83,363);
INSERT INTO `detalle_movimiento` VALUES (85,81,364);
INSERT INTO `detalle_movimiento` VALUES (85,57,367);
INSERT INTO `detalle_movimiento` VALUES (85,53,371);
INSERT INTO `detalle_movimiento` VALUES (85,80,372);
INSERT INTO `detalle_movimiento` VALUES (85,72,374);
INSERT INTO `detalle_movimiento` VALUES (85,62,378);
INSERT INTO `detalle_movimiento` VALUES (85,84,380);
INSERT INTO `detalle_movimiento` VALUES (85,67,386);
INSERT INTO `detalle_movimiento` VALUES (85,52,389);
INSERT INTO `detalle_movimiento` VALUES (85,73,391);
INSERT INTO `detalle_movimiento` VALUES (85,62,395);
INSERT INTO `detalle_movimiento` VALUES (85,93,396);
INSERT INTO `detalle_movimiento` VALUES (85,84,405);
INSERT INTO `detalle_movimiento` VALUES (88,63,6);
INSERT INTO `detalle_movimiento` VALUES (88,72,9);
INSERT INTO `detalle_movimiento` VALUES (88,90,14);
INSERT INTO `detalle_movimiento` VALUES (88,55,24);
INSERT INTO `detalle_movimiento` VALUES (88,59,29);
INSERT INTO `detalle_movimiento` VALUES (88,84,33);
INSERT INTO `detalle_movimiento` VALUES (88,65,35);
INSERT INTO `detalle_movimiento` VALUES (88,79,36);
INSERT INTO `detalle_movimiento` VALUES (88,95,40);
INSERT INTO `detalle_movimiento` VALUES (88,75,41);
INSERT INTO `detalle_movimiento` VALUES (88,81,42);
INSERT INTO `detalle_movimiento` VALUES (88,91,46);
INSERT INTO `detalle_movimiento` VALUES (88,75,51);
INSERT INTO `detalle_movimiento` VALUES (88,84,52);
INSERT INTO `detalle_movimiento` VALUES (88,54,58);
INSERT INTO `detalle_movimiento` VALUES (88,56,59);
INSERT INTO `detalle_movimiento` VALUES (88,90,65);
INSERT INTO `detalle_movimiento` VALUES (88,99,69);
INSERT INTO `detalle_movimiento` VALUES (88,60,71);
INSERT INTO `detalle_movimiento` VALUES (88,88,79);
INSERT INTO `detalle_movimiento` VALUES (88,71,82);
INSERT INTO `detalle_movimiento` VALUES (88,76,83);
INSERT INTO `detalle_movimiento` VALUES (88,55,84);
INSERT INTO `detalle_movimiento` VALUES (88,55,85);
INSERT INTO `detalle_movimiento` VALUES (88,60,87);
INSERT INTO `detalle_movimiento` VALUES (88,97,89);
INSERT INTO `detalle_movimiento` VALUES (88,59,90);
INSERT INTO `detalle_movimiento` VALUES (88,81,91);
INSERT INTO `detalle_movimiento` VALUES (88,65,92);
INSERT INTO `detalle_movimiento` VALUES (88,87,96);
INSERT INTO `detalle_movimiento` VALUES (88,58,98);
INSERT INTO `detalle_movimiento` VALUES (88,70,99);
INSERT INTO `detalle_movimiento` VALUES (88,62,101);
INSERT INTO `detalle_movimiento` VALUES (88,85,103);
INSERT INTO `detalle_movimiento` VALUES (88,86,104);
INSERT INTO `detalle_movimiento` VALUES (88,55,109);
INSERT INTO `detalle_movimiento` VALUES (88,75,113);
INSERT INTO `detalle_movimiento` VALUES (88,87,114);
INSERT INTO `detalle_movimiento` VALUES (88,59,115);
INSERT INTO `detalle_movimiento` VALUES (88,54,118);
INSERT INTO `detalle_movimiento` VALUES (88,99,122);
INSERT INTO `detalle_movimiento` VALUES (88,55,124);
INSERT INTO `detalle_movimiento` VALUES (88,84,125);
INSERT INTO `detalle_movimiento` VALUES (88,66,127);
INSERT INTO `detalle_movimiento` VALUES (88,83,131);
INSERT INTO `detalle_movimiento` VALUES (88,90,133);
INSERT INTO `detalle_movimiento` VALUES (88,91,134);
INSERT INTO `detalle_movimiento` VALUES (88,74,136);
INSERT INTO `detalle_movimiento` VALUES (88,81,139);
INSERT INTO `detalle_movimiento` VALUES (88,66,142);
INSERT INTO `detalle_movimiento` VALUES (88,92,147);
INSERT INTO `detalle_movimiento` VALUES (88,88,149);
INSERT INTO `detalle_movimiento` VALUES (88,81,155);
INSERT INTO `detalle_movimiento` VALUES (88,84,156);
INSERT INTO `detalle_movimiento` VALUES (88,56,157);
INSERT INTO `detalle_movimiento` VALUES (88,56,161);
INSERT INTO `detalle_movimiento` VALUES (88,58,165);
INSERT INTO `detalle_movimiento` VALUES (88,62,166);
INSERT INTO `detalle_movimiento` VALUES (88,82,169);
INSERT INTO `detalle_movimiento` VALUES (88,59,170);
INSERT INTO `detalle_movimiento` VALUES (88,91,171);
INSERT INTO `detalle_movimiento` VALUES (88,94,173);
INSERT INTO `detalle_movimiento` VALUES (88,93,174);
INSERT INTO `detalle_movimiento` VALUES (88,65,176);
INSERT INTO `detalle_movimiento` VALUES (88,100,182);
INSERT INTO `detalle_movimiento` VALUES (88,72,184);
INSERT INTO `detalle_movimiento` VALUES (88,71,185);
INSERT INTO `detalle_movimiento` VALUES (88,75,187);
INSERT INTO `detalle_movimiento` VALUES (88,80,189);
INSERT INTO `detalle_movimiento` VALUES (88,56,190);
INSERT INTO `detalle_movimiento` VALUES (88,98,196);
INSERT INTO `detalle_movimiento` VALUES (88,60,199);
INSERT INTO `detalle_movimiento` VALUES (88,89,200);
INSERT INTO `detalle_movimiento` VALUES (88,64,205);
INSERT INTO `detalle_movimiento` VALUES (88,74,206);
INSERT INTO `detalle_movimiento` VALUES (88,101,207);
INSERT INTO `detalle_movimiento` VALUES (88,85,208);
INSERT INTO `detalle_movimiento` VALUES (88,74,210);
INSERT INTO `detalle_movimiento` VALUES (88,65,216);
INSERT INTO `detalle_movimiento` VALUES (88,56,217);
INSERT INTO `detalle_movimiento` VALUES (88,76,224);
INSERT INTO `detalle_movimiento` VALUES (88,90,230);
INSERT INTO `detalle_movimiento` VALUES (88,97,231);
INSERT INTO `detalle_movimiento` VALUES (88,56,233);
INSERT INTO `detalle_movimiento` VALUES (88,93,234);
INSERT INTO `detalle_movimiento` VALUES (88,53,236);
INSERT INTO `detalle_movimiento` VALUES (88,64,237);
INSERT INTO `detalle_movimiento` VALUES (88,61,238);
INSERT INTO `detalle_movimiento` VALUES (88,64,239);
INSERT INTO `detalle_movimiento` VALUES (88,84,243);
INSERT INTO `detalle_movimiento` VALUES (88,100,251);
INSERT INTO `detalle_movimiento` VALUES (88,82,252);
INSERT INTO `detalle_movimiento` VALUES (88,84,258);
INSERT INTO `detalle_movimiento` VALUES (88,54,263);
INSERT INTO `detalle_movimiento` VALUES (88,62,264);
INSERT INTO `detalle_movimiento` VALUES (88,53,267);
INSERT INTO `detalle_movimiento` VALUES (88,86,270);
INSERT INTO `detalle_movimiento` VALUES (88,52,271);
INSERT INTO `detalle_movimiento` VALUES (88,84,273);
INSERT INTO `detalle_movimiento` VALUES (88,68,274);
INSERT INTO `detalle_movimiento` VALUES (88,60,282);
INSERT INTO `detalle_movimiento` VALUES (88,52,285);
INSERT INTO `detalle_movimiento` VALUES (88,97,286);
INSERT INTO `detalle_movimiento` VALUES (88,53,288);
INSERT INTO `detalle_movimiento` VALUES (88,60,293);
INSERT INTO `detalle_movimiento` VALUES (88,84,294);
INSERT INTO `detalle_movimiento` VALUES (88,74,296);
INSERT INTO `detalle_movimiento` VALUES (88,68,298);
INSERT INTO `detalle_movimiento` VALUES (88,84,299);
INSERT INTO `detalle_movimiento` VALUES (88,97,303);
INSERT INTO `detalle_movimiento` VALUES (88,86,304);
INSERT INTO `detalle_movimiento` VALUES (88,100,311);
INSERT INTO `detalle_movimiento` VALUES (88,80,315);
INSERT INTO `detalle_movimiento` VALUES (88,77,320);
INSERT INTO `detalle_movimiento` VALUES (88,81,323);
INSERT INTO `detalle_movimiento` VALUES (88,65,324);
INSERT INTO `detalle_movimiento` VALUES (88,64,325);
INSERT INTO `detalle_movimiento` VALUES (88,57,333);
INSERT INTO `detalle_movimiento` VALUES (88,75,336);
INSERT INTO `detalle_movimiento` VALUES (88,83,337);
INSERT INTO `detalle_movimiento` VALUES (88,98,342);
INSERT INTO `detalle_movimiento` VALUES (88,82,343);
INSERT INTO `detalle_movimiento` VALUES (88,98,348);
INSERT INTO `detalle_movimiento` VALUES (88,100,352);
INSERT INTO `detalle_movimiento` VALUES (88,81,353);
INSERT INTO `detalle_movimiento` VALUES (88,84,356);
INSERT INTO `detalle_movimiento` VALUES (88,54,358);
INSERT INTO `detalle_movimiento` VALUES (88,82,359);
INSERT INTO `detalle_movimiento` VALUES (88,64,363);
INSERT INTO `detalle_movimiento` VALUES (88,87,367);
INSERT INTO `detalle_movimiento` VALUES (88,99,368);
INSERT INTO `detalle_movimiento` VALUES (88,74,372);
INSERT INTO `detalle_movimiento` VALUES (88,82,373);
INSERT INTO `detalle_movimiento` VALUES (88,81,375);
INSERT INTO `detalle_movimiento` VALUES (88,65,377);
INSERT INTO `detalle_movimiento` VALUES (88,86,379);
INSERT INTO `detalle_movimiento` VALUES (88,98,380);
INSERT INTO `detalle_movimiento` VALUES (88,71,385);
INSERT INTO `detalle_movimiento` VALUES (88,93,386);
INSERT INTO `detalle_movimiento` VALUES (88,58,390);
INSERT INTO `detalle_movimiento` VALUES (88,85,392);
INSERT INTO `detalle_movimiento` VALUES (88,82,395);
INSERT INTO `detalle_movimiento` VALUES (88,61,396);
INSERT INTO `detalle_movimiento` VALUES (88,64,398);
INSERT INTO `detalle_movimiento` VALUES (88,89,399);
INSERT INTO `detalle_movimiento` VALUES (88,75,405);
INSERT INTO `detalle_movimiento` VALUES (91,53,5);
INSERT INTO `detalle_movimiento` VALUES (91,82,6);
INSERT INTO `detalle_movimiento` VALUES (91,61,9);
INSERT INTO `detalle_movimiento` VALUES (91,87,10);
INSERT INTO `detalle_movimiento` VALUES (91,88,11);
INSERT INTO `detalle_movimiento` VALUES (91,88,12);
INSERT INTO `detalle_movimiento` VALUES (91,60,14);
INSERT INTO `detalle_movimiento` VALUES (91,65,22);
INSERT INTO `detalle_movimiento` VALUES (91,95,24);
INSERT INTO `detalle_movimiento` VALUES (91,69,28);
INSERT INTO `detalle_movimiento` VALUES (91,54,31);
INSERT INTO `detalle_movimiento` VALUES (91,89,32);
INSERT INTO `detalle_movimiento` VALUES (91,82,33);
INSERT INTO `detalle_movimiento` VALUES (91,59,38);
INSERT INTO `detalle_movimiento` VALUES (91,59,41);
INSERT INTO `detalle_movimiento` VALUES (91,81,43);
INSERT INTO `detalle_movimiento` VALUES (91,67,44);
INSERT INTO `detalle_movimiento` VALUES (91,89,47);
INSERT INTO `detalle_movimiento` VALUES (91,64,50);
INSERT INTO `detalle_movimiento` VALUES (91,78,52);
INSERT INTO `detalle_movimiento` VALUES (91,85,53);
INSERT INTO `detalle_movimiento` VALUES (91,71,58);
INSERT INTO `detalle_movimiento` VALUES (91,51,65);
INSERT INTO `detalle_movimiento` VALUES (91,81,66);
INSERT INTO `detalle_movimiento` VALUES (91,56,68);
INSERT INTO `detalle_movimiento` VALUES (91,85,75);
INSERT INTO `detalle_movimiento` VALUES (91,87,77);
INSERT INTO `detalle_movimiento` VALUES (91,89,78);
INSERT INTO `detalle_movimiento` VALUES (91,90,79);
INSERT INTO `detalle_movimiento` VALUES (91,67,80);
INSERT INTO `detalle_movimiento` VALUES (91,79,81);
INSERT INTO `detalle_movimiento` VALUES (91,59,84);
INSERT INTO `detalle_movimiento` VALUES (91,66,86);
INSERT INTO `detalle_movimiento` VALUES (91,75,90);
INSERT INTO `detalle_movimiento` VALUES (91,65,91);
INSERT INTO `detalle_movimiento` VALUES (91,51,92);
INSERT INTO `detalle_movimiento` VALUES (91,81,93);
INSERT INTO `detalle_movimiento` VALUES (91,75,98);
INSERT INTO `detalle_movimiento` VALUES (91,58,99);
INSERT INTO `detalle_movimiento` VALUES (91,68,101);
INSERT INTO `detalle_movimiento` VALUES (91,70,102);
INSERT INTO `detalle_movimiento` VALUES (91,89,106);
INSERT INTO `detalle_movimiento` VALUES (91,66,108);
INSERT INTO `detalle_movimiento` VALUES (91,83,111);
INSERT INTO `detalle_movimiento` VALUES (91,71,113);
INSERT INTO `detalle_movimiento` VALUES (91,86,117);
INSERT INTO `detalle_movimiento` VALUES (91,82,120);
INSERT INTO `detalle_movimiento` VALUES (91,101,122);
INSERT INTO `detalle_movimiento` VALUES (91,88,124);
INSERT INTO `detalle_movimiento` VALUES (91,83,127);
INSERT INTO `detalle_movimiento` VALUES (91,68,129);
INSERT INTO `detalle_movimiento` VALUES (91,61,130);
INSERT INTO `detalle_movimiento` VALUES (91,70,131);
INSERT INTO `detalle_movimiento` VALUES (91,53,132);
INSERT INTO `detalle_movimiento` VALUES (91,89,133);
INSERT INTO `detalle_movimiento` VALUES (91,88,136);
INSERT INTO `detalle_movimiento` VALUES (91,86,137);
INSERT INTO `detalle_movimiento` VALUES (91,65,140);
INSERT INTO `detalle_movimiento` VALUES (91,51,144);
INSERT INTO `detalle_movimiento` VALUES (91,61,146);
INSERT INTO `detalle_movimiento` VALUES (91,79,147);
INSERT INTO `detalle_movimiento` VALUES (91,59,149);
INSERT INTO `detalle_movimiento` VALUES (91,69,158);
INSERT INTO `detalle_movimiento` VALUES (91,59,159);
INSERT INTO `detalle_movimiento` VALUES (91,63,162);
INSERT INTO `detalle_movimiento` VALUES (91,69,164);
INSERT INTO `detalle_movimiento` VALUES (91,66,165);
INSERT INTO `detalle_movimiento` VALUES (91,60,167);
INSERT INTO `detalle_movimiento` VALUES (91,69,168);
INSERT INTO `detalle_movimiento` VALUES (91,65,169);
INSERT INTO `detalle_movimiento` VALUES (91,97,170);
INSERT INTO `detalle_movimiento` VALUES (91,68,171);
INSERT INTO `detalle_movimiento` VALUES (91,95,173);
INSERT INTO `detalle_movimiento` VALUES (91,90,175);
INSERT INTO `detalle_movimiento` VALUES (91,81,182);
INSERT INTO `detalle_movimiento` VALUES (91,95,185);
INSERT INTO `detalle_movimiento` VALUES (91,63,189);
INSERT INTO `detalle_movimiento` VALUES (91,96,191);
INSERT INTO `detalle_movimiento` VALUES (91,80,196);
INSERT INTO `detalle_movimiento` VALUES (91,79,197);
INSERT INTO `detalle_movimiento` VALUES (91,84,201);
INSERT INTO `detalle_movimiento` VALUES (91,69,202);
INSERT INTO `detalle_movimiento` VALUES (91,82,205);
INSERT INTO `detalle_movimiento` VALUES (91,90,208);
INSERT INTO `detalle_movimiento` VALUES (91,98,210);
INSERT INTO `detalle_movimiento` VALUES (91,96,211);
INSERT INTO `detalle_movimiento` VALUES (91,66,218);
INSERT INTO `detalle_movimiento` VALUES (91,70,220);
INSERT INTO `detalle_movimiento` VALUES (91,91,222);
INSERT INTO `detalle_movimiento` VALUES (91,67,224);
INSERT INTO `detalle_movimiento` VALUES (91,68,225);
INSERT INTO `detalle_movimiento` VALUES (91,71,228);
INSERT INTO `detalle_movimiento` VALUES (91,99,230);
INSERT INTO `detalle_movimiento` VALUES (91,85,231);
INSERT INTO `detalle_movimiento` VALUES (91,88,232);
INSERT INTO `detalle_movimiento` VALUES (91,81,237);
INSERT INTO `detalle_movimiento` VALUES (91,70,238);
INSERT INTO `detalle_movimiento` VALUES (91,63,239);
INSERT INTO `detalle_movimiento` VALUES (91,85,241);
INSERT INTO `detalle_movimiento` VALUES (91,51,246);
INSERT INTO `detalle_movimiento` VALUES (91,83,247);
INSERT INTO `detalle_movimiento` VALUES (91,54,249);
INSERT INTO `detalle_movimiento` VALUES (91,97,252);
INSERT INTO `detalle_movimiento` VALUES (91,79,253);
INSERT INTO `detalle_movimiento` VALUES (91,86,256);
INSERT INTO `detalle_movimiento` VALUES (91,94,260);
INSERT INTO `detalle_movimiento` VALUES (91,51,263);
INSERT INTO `detalle_movimiento` VALUES (91,54,264);
INSERT INTO `detalle_movimiento` VALUES (91,66,265);
INSERT INTO `detalle_movimiento` VALUES (91,55,279);
INSERT INTO `detalle_movimiento` VALUES (91,84,285);
INSERT INTO `detalle_movimiento` VALUES (91,58,288);
INSERT INTO `detalle_movimiento` VALUES (91,81,292);
INSERT INTO `detalle_movimiento` VALUES (91,88,293);
INSERT INTO `detalle_movimiento` VALUES (91,71,294);
INSERT INTO `detalle_movimiento` VALUES (91,55,295);
INSERT INTO `detalle_movimiento` VALUES (91,95,296);
INSERT INTO `detalle_movimiento` VALUES (91,76,298);
INSERT INTO `detalle_movimiento` VALUES (91,99,301);
INSERT INTO `detalle_movimiento` VALUES (91,101,302);
INSERT INTO `detalle_movimiento` VALUES (91,73,303);
INSERT INTO `detalle_movimiento` VALUES (91,77,306);
INSERT INTO `detalle_movimiento` VALUES (91,85,307);
INSERT INTO `detalle_movimiento` VALUES (91,75,308);
INSERT INTO `detalle_movimiento` VALUES (91,81,311);
INSERT INTO `detalle_movimiento` VALUES (91,76,312);
INSERT INTO `detalle_movimiento` VALUES (91,67,313);
INSERT INTO `detalle_movimiento` VALUES (91,95,317);
INSERT INTO `detalle_movimiento` VALUES (91,61,323);
INSERT INTO `detalle_movimiento` VALUES (91,61,324);
INSERT INTO `detalle_movimiento` VALUES (91,99,325);
INSERT INTO `detalle_movimiento` VALUES (91,70,334);
INSERT INTO `detalle_movimiento` VALUES (91,91,336);
INSERT INTO `detalle_movimiento` VALUES (91,88,338);
INSERT INTO `detalle_movimiento` VALUES (91,68,340);
INSERT INTO `detalle_movimiento` VALUES (91,82,341);
INSERT INTO `detalle_movimiento` VALUES (91,82,343);
INSERT INTO `detalle_movimiento` VALUES (91,93,345);
INSERT INTO `detalle_movimiento` VALUES (91,62,348);
INSERT INTO `detalle_movimiento` VALUES (91,96,351);
INSERT INTO `detalle_movimiento` VALUES (91,81,357);
INSERT INTO `detalle_movimiento` VALUES (91,99,358);
INSERT INTO `detalle_movimiento` VALUES (91,78,359);
INSERT INTO `detalle_movimiento` VALUES (91,82,363);
INSERT INTO `detalle_movimiento` VALUES (91,66,365);
INSERT INTO `detalle_movimiento` VALUES (91,56,367);
INSERT INTO `detalle_movimiento` VALUES (91,61,368);
INSERT INTO `detalle_movimiento` VALUES (91,56,374);
INSERT INTO `detalle_movimiento` VALUES (91,92,375);
INSERT INTO `detalle_movimiento` VALUES (91,53,379);
INSERT INTO `detalle_movimiento` VALUES (91,74,385);
INSERT INTO `detalle_movimiento` VALUES (91,80,390);
INSERT INTO `detalle_movimiento` VALUES (91,77,391);
INSERT INTO `detalle_movimiento` VALUES (91,61,394);
INSERT INTO `detalle_movimiento` VALUES (91,75,395);
INSERT INTO `detalle_movimiento` VALUES (91,53,399);
INSERT INTO `detalle_movimiento` VALUES (91,70,401);
INSERT INTO `detalle_movimiento` VALUES (91,87,403);
INSERT INTO `detalle_movimiento` VALUES (91,58,404);
INSERT INTO `detalle_movimiento` VALUES (93,63,2);
INSERT INTO `detalle_movimiento` VALUES (93,96,3);
INSERT INTO `detalle_movimiento` VALUES (93,57,5);
INSERT INTO `detalle_movimiento` VALUES (93,89,6);
INSERT INTO `detalle_movimiento` VALUES (93,72,7);
INSERT INTO `detalle_movimiento` VALUES (93,51,11);
INSERT INTO `detalle_movimiento` VALUES (93,69,13);
INSERT INTO `detalle_movimiento` VALUES (93,93,14);
INSERT INTO `detalle_movimiento` VALUES (93,86,15);
INSERT INTO `detalle_movimiento` VALUES (93,70,18);
INSERT INTO `detalle_movimiento` VALUES (93,68,20);
INSERT INTO `detalle_movimiento` VALUES (93,96,24);
INSERT INTO `detalle_movimiento` VALUES (93,100,25);
INSERT INTO `detalle_movimiento` VALUES (93,61,27);
INSERT INTO `detalle_movimiento` VALUES (93,94,29);
INSERT INTO `detalle_movimiento` VALUES (93,83,31);
INSERT INTO `detalle_movimiento` VALUES (93,61,33);
INSERT INTO `detalle_movimiento` VALUES (93,56,35);
INSERT INTO `detalle_movimiento` VALUES (93,59,36);
INSERT INTO `detalle_movimiento` VALUES (93,59,38);
INSERT INTO `detalle_movimiento` VALUES (93,91,39);
INSERT INTO `detalle_movimiento` VALUES (93,62,40);
INSERT INTO `detalle_movimiento` VALUES (93,82,42);
INSERT INTO `detalle_movimiento` VALUES (93,73,45);
INSERT INTO `detalle_movimiento` VALUES (93,89,47);
INSERT INTO `detalle_movimiento` VALUES (93,54,48);
INSERT INTO `detalle_movimiento` VALUES (93,94,49);
INSERT INTO `detalle_movimiento` VALUES (93,92,52);
INSERT INTO `detalle_movimiento` VALUES (93,86,53);
INSERT INTO `detalle_movimiento` VALUES (93,76,54);
INSERT INTO `detalle_movimiento` VALUES (93,91,55);
INSERT INTO `detalle_movimiento` VALUES (93,89,58);
INSERT INTO `detalle_movimiento` VALUES (93,72,59);
INSERT INTO `detalle_movimiento` VALUES (93,73,60);
INSERT INTO `detalle_movimiento` VALUES (93,57,61);
INSERT INTO `detalle_movimiento` VALUES (93,65,65);
INSERT INTO `detalle_movimiento` VALUES (93,96,69);
INSERT INTO `detalle_movimiento` VALUES (93,56,71);
INSERT INTO `detalle_movimiento` VALUES (93,75,75);
INSERT INTO `detalle_movimiento` VALUES (93,90,79);
INSERT INTO `detalle_movimiento` VALUES (93,52,81);
INSERT INTO `detalle_movimiento` VALUES (93,57,82);
INSERT INTO `detalle_movimiento` VALUES (93,52,87);
INSERT INTO `detalle_movimiento` VALUES (93,72,88);
INSERT INTO `detalle_movimiento` VALUES (93,75,90);
INSERT INTO `detalle_movimiento` VALUES (93,88,92);
INSERT INTO `detalle_movimiento` VALUES (93,92,93);
INSERT INTO `detalle_movimiento` VALUES (93,61,96);
INSERT INTO `detalle_movimiento` VALUES (93,58,98);
INSERT INTO `detalle_movimiento` VALUES (93,91,99);
INSERT INTO `detalle_movimiento` VALUES (93,69,102);
INSERT INTO `detalle_movimiento` VALUES (93,70,105);
INSERT INTO `detalle_movimiento` VALUES (93,58,106);
INSERT INTO `detalle_movimiento` VALUES (93,63,108);
INSERT INTO `detalle_movimiento` VALUES (93,87,110);
INSERT INTO `detalle_movimiento` VALUES (93,85,113);
INSERT INTO `detalle_movimiento` VALUES (93,53,115);
INSERT INTO `detalle_movimiento` VALUES (93,68,116);
INSERT INTO `detalle_movimiento` VALUES (93,92,118);
INSERT INTO `detalle_movimiento` VALUES (93,99,120);
INSERT INTO `detalle_movimiento` VALUES (93,88,122);
INSERT INTO `detalle_movimiento` VALUES (93,61,124);
INSERT INTO `detalle_movimiento` VALUES (93,59,125);
INSERT INTO `detalle_movimiento` VALUES (93,55,134);
INSERT INTO `detalle_movimiento` VALUES (93,81,137);
INSERT INTO `detalle_movimiento` VALUES (93,90,139);
INSERT INTO `detalle_movimiento` VALUES (93,76,140);
INSERT INTO `detalle_movimiento` VALUES (93,60,143);
INSERT INTO `detalle_movimiento` VALUES (93,52,144);
INSERT INTO `detalle_movimiento` VALUES (93,64,147);
INSERT INTO `detalle_movimiento` VALUES (93,62,153);
INSERT INTO `detalle_movimiento` VALUES (93,52,156);
INSERT INTO `detalle_movimiento` VALUES (93,81,157);
INSERT INTO `detalle_movimiento` VALUES (93,68,158);
INSERT INTO `detalle_movimiento` VALUES (93,60,161);
INSERT INTO `detalle_movimiento` VALUES (93,74,165);
INSERT INTO `detalle_movimiento` VALUES (93,62,166);
INSERT INTO `detalle_movimiento` VALUES (93,95,167);
INSERT INTO `detalle_movimiento` VALUES (93,70,168);
INSERT INTO `detalle_movimiento` VALUES (93,53,169);
INSERT INTO `detalle_movimiento` VALUES (93,63,170);
INSERT INTO `detalle_movimiento` VALUES (93,99,171);
INSERT INTO `detalle_movimiento` VALUES (93,59,172);
INSERT INTO `detalle_movimiento` VALUES (93,62,173);
INSERT INTO `detalle_movimiento` VALUES (93,70,174);
INSERT INTO `detalle_movimiento` VALUES (93,66,176);
INSERT INTO `detalle_movimiento` VALUES (93,79,179);
INSERT INTO `detalle_movimiento` VALUES (93,55,181);
INSERT INTO `detalle_movimiento` VALUES (93,67,182);
INSERT INTO `detalle_movimiento` VALUES (93,82,190);
INSERT INTO `detalle_movimiento` VALUES (93,56,191);
INSERT INTO `detalle_movimiento` VALUES (93,60,193);
INSERT INTO `detalle_movimiento` VALUES (93,57,195);
INSERT INTO `detalle_movimiento` VALUES (93,61,196);
INSERT INTO `detalle_movimiento` VALUES (93,63,197);
INSERT INTO `detalle_movimiento` VALUES (93,73,198);
INSERT INTO `detalle_movimiento` VALUES (93,81,203);
INSERT INTO `detalle_movimiento` VALUES (93,56,206);
INSERT INTO `detalle_movimiento` VALUES (93,82,207);
INSERT INTO `detalle_movimiento` VALUES (93,75,209);
INSERT INTO `detalle_movimiento` VALUES (93,80,210);
INSERT INTO `detalle_movimiento` VALUES (93,53,211);
INSERT INTO `detalle_movimiento` VALUES (93,56,212);
INSERT INTO `detalle_movimiento` VALUES (93,88,215);
INSERT INTO `detalle_movimiento` VALUES (93,80,217);
INSERT INTO `detalle_movimiento` VALUES (93,85,218);
INSERT INTO `detalle_movimiento` VALUES (93,84,219);
INSERT INTO `detalle_movimiento` VALUES (93,82,220);
INSERT INTO `detalle_movimiento` VALUES (93,93,225);
INSERT INTO `detalle_movimiento` VALUES (93,58,226);
INSERT INTO `detalle_movimiento` VALUES (93,72,227);
INSERT INTO `detalle_movimiento` VALUES (93,98,228);
INSERT INTO `detalle_movimiento` VALUES (93,65,229);
INSERT INTO `detalle_movimiento` VALUES (93,64,230);
INSERT INTO `detalle_movimiento` VALUES (93,58,231);
INSERT INTO `detalle_movimiento` VALUES (93,82,233);
INSERT INTO `detalle_movimiento` VALUES (93,60,235);
INSERT INTO `detalle_movimiento` VALUES (93,60,236);
INSERT INTO `detalle_movimiento` VALUES (93,69,238);
INSERT INTO `detalle_movimiento` VALUES (93,98,239);
INSERT INTO `detalle_movimiento` VALUES (93,95,240);
INSERT INTO `detalle_movimiento` VALUES (93,70,244);
INSERT INTO `detalle_movimiento` VALUES (93,91,247);
INSERT INTO `detalle_movimiento` VALUES (93,67,248);
INSERT INTO `detalle_movimiento` VALUES (93,93,250);
INSERT INTO `detalle_movimiento` VALUES (93,82,255);
INSERT INTO `detalle_movimiento` VALUES (93,88,257);
INSERT INTO `detalle_movimiento` VALUES (93,80,258);
INSERT INTO `detalle_movimiento` VALUES (93,93,262);
INSERT INTO `detalle_movimiento` VALUES (93,81,263);
INSERT INTO `detalle_movimiento` VALUES (93,54,264);
INSERT INTO `detalle_movimiento` VALUES (93,89,265);
INSERT INTO `detalle_movimiento` VALUES (93,62,267);
INSERT INTO `detalle_movimiento` VALUES (93,73,268);
INSERT INTO `detalle_movimiento` VALUES (93,56,270);
INSERT INTO `detalle_movimiento` VALUES (93,74,271);
INSERT INTO `detalle_movimiento` VALUES (93,72,272);
INSERT INTO `detalle_movimiento` VALUES (93,71,273);
INSERT INTO `detalle_movimiento` VALUES (93,92,275);
INSERT INTO `detalle_movimiento` VALUES (93,59,276);
INSERT INTO `detalle_movimiento` VALUES (93,76,277);
INSERT INTO `detalle_movimiento` VALUES (93,73,279);
INSERT INTO `detalle_movimiento` VALUES (93,84,286);
INSERT INTO `detalle_movimiento` VALUES (93,58,291);
INSERT INTO `detalle_movimiento` VALUES (93,51,292);
INSERT INTO `detalle_movimiento` VALUES (93,68,293);
INSERT INTO `detalle_movimiento` VALUES (93,89,295);
INSERT INTO `detalle_movimiento` VALUES (93,92,299);
INSERT INTO `detalle_movimiento` VALUES (93,56,300);
INSERT INTO `detalle_movimiento` VALUES (93,91,307);
INSERT INTO `detalle_movimiento` VALUES (93,92,308);
INSERT INTO `detalle_movimiento` VALUES (93,68,315);
INSERT INTO `detalle_movimiento` VALUES (93,90,321);
INSERT INTO `detalle_movimiento` VALUES (93,84,322);
INSERT INTO `detalle_movimiento` VALUES (93,61,323);
INSERT INTO `detalle_movimiento` VALUES (93,68,324);
INSERT INTO `detalle_movimiento` VALUES (93,101,327);
INSERT INTO `detalle_movimiento` VALUES (93,81,328);
INSERT INTO `detalle_movimiento` VALUES (93,64,330);
INSERT INTO `detalle_movimiento` VALUES (93,89,331);
INSERT INTO `detalle_movimiento` VALUES (93,81,332);
INSERT INTO `detalle_movimiento` VALUES (93,88,333);
INSERT INTO `detalle_movimiento` VALUES (93,74,334);
INSERT INTO `detalle_movimiento` VALUES (93,86,335);
INSERT INTO `detalle_movimiento` VALUES (93,96,336);
INSERT INTO `detalle_movimiento` VALUES (93,78,337);
INSERT INTO `detalle_movimiento` VALUES (93,52,341);
INSERT INTO `detalle_movimiento` VALUES (93,61,343);
INSERT INTO `detalle_movimiento` VALUES (93,76,345);
INSERT INTO `detalle_movimiento` VALUES (93,68,346);
INSERT INTO `detalle_movimiento` VALUES (93,70,347);
INSERT INTO `detalle_movimiento` VALUES (93,68,348);
INSERT INTO `detalle_movimiento` VALUES (93,64,351);
INSERT INTO `detalle_movimiento` VALUES (93,92,353);
INSERT INTO `detalle_movimiento` VALUES (93,63,356);
INSERT INTO `detalle_movimiento` VALUES (93,80,358);
INSERT INTO `detalle_movimiento` VALUES (93,63,360);
INSERT INTO `detalle_movimiento` VALUES (93,80,361);
INSERT INTO `detalle_movimiento` VALUES (93,69,365);
INSERT INTO `detalle_movimiento` VALUES (93,90,366);
INSERT INTO `detalle_movimiento` VALUES (93,89,368);
INSERT INTO `detalle_movimiento` VALUES (93,97,369);
INSERT INTO `detalle_movimiento` VALUES (93,84,372);
INSERT INTO `detalle_movimiento` VALUES (93,64,375);
INSERT INTO `detalle_movimiento` VALUES (93,90,376);
INSERT INTO `detalle_movimiento` VALUES (93,88,380);
INSERT INTO `detalle_movimiento` VALUES (93,91,382);
INSERT INTO `detalle_movimiento` VALUES (93,87,383);
INSERT INTO `detalle_movimiento` VALUES (93,66,384);
INSERT INTO `detalle_movimiento` VALUES (93,64,385);
INSERT INTO `detalle_movimiento` VALUES (93,77,386);
INSERT INTO `detalle_movimiento` VALUES (93,70,388);
INSERT INTO `detalle_movimiento` VALUES (93,67,390);
INSERT INTO `detalle_movimiento` VALUES (93,84,392);
INSERT INTO `detalle_movimiento` VALUES (93,61,395);
INSERT INTO `detalle_movimiento` VALUES (93,82,396);
INSERT INTO `detalle_movimiento` VALUES (93,97,397);
INSERT INTO `detalle_movimiento` VALUES (93,63,398);
INSERT INTO `detalle_movimiento` VALUES (93,85,401);
INSERT INTO `detalle_movimiento` VALUES (93,71,405);
INSERT INTO `detalle_movimiento` VALUES (94,69,1);
INSERT INTO `detalle_movimiento` VALUES (94,83,3);
INSERT INTO `detalle_movimiento` VALUES (94,96,4);
INSERT INTO `detalle_movimiento` VALUES (94,88,11);
INSERT INTO `detalle_movimiento` VALUES (94,72,20);
INSERT INTO `detalle_movimiento` VALUES (94,91,22);
INSERT INTO `detalle_movimiento` VALUES (94,76,24);
INSERT INTO `detalle_movimiento` VALUES (94,76,25);
INSERT INTO `detalle_movimiento` VALUES (94,82,27);
INSERT INTO `detalle_movimiento` VALUES (94,66,29);
INSERT INTO `detalle_movimiento` VALUES (94,96,32);
INSERT INTO `detalle_movimiento` VALUES (94,76,38);
INSERT INTO `detalle_movimiento` VALUES (94,67,40);
INSERT INTO `detalle_movimiento` VALUES (94,54,44);
INSERT INTO `detalle_movimiento` VALUES (94,65,46);
INSERT INTO `detalle_movimiento` VALUES (94,51,53);
INSERT INTO `detalle_movimiento` VALUES (94,92,54);
INSERT INTO `detalle_movimiento` VALUES (94,71,62);
INSERT INTO `detalle_movimiento` VALUES (94,54,65);
INSERT INTO `detalle_movimiento` VALUES (94,101,67);
INSERT INTO `detalle_movimiento` VALUES (94,67,75);
INSERT INTO `detalle_movimiento` VALUES (94,81,77);
INSERT INTO `detalle_movimiento` VALUES (94,96,82);
INSERT INTO `detalle_movimiento` VALUES (94,69,89);
INSERT INTO `detalle_movimiento` VALUES (94,96,90);
INSERT INTO `detalle_movimiento` VALUES (94,84,91);
INSERT INTO `detalle_movimiento` VALUES (94,88,95);
INSERT INTO `detalle_movimiento` VALUES (94,54,101);
INSERT INTO `detalle_movimiento` VALUES (94,61,108);
INSERT INTO `detalle_movimiento` VALUES (94,93,113);
INSERT INTO `detalle_movimiento` VALUES (94,97,115);
INSERT INTO `detalle_movimiento` VALUES (94,65,117);
INSERT INTO `detalle_movimiento` VALUES (94,98,130);
INSERT INTO `detalle_movimiento` VALUES (94,67,133);
INSERT INTO `detalle_movimiento` VALUES (94,63,134);
INSERT INTO `detalle_movimiento` VALUES (94,92,135);
INSERT INTO `detalle_movimiento` VALUES (94,91,136);
INSERT INTO `detalle_movimiento` VALUES (94,93,137);
INSERT INTO `detalle_movimiento` VALUES (94,94,139);
INSERT INTO `detalle_movimiento` VALUES (94,77,142);
INSERT INTO `detalle_movimiento` VALUES (94,87,149);
INSERT INTO `detalle_movimiento` VALUES (94,63,151);
INSERT INTO `detalle_movimiento` VALUES (94,82,155);
INSERT INTO `detalle_movimiento` VALUES (94,77,158);
INSERT INTO `detalle_movimiento` VALUES (94,78,161);
INSERT INTO `detalle_movimiento` VALUES (94,85,162);
INSERT INTO `detalle_movimiento` VALUES (94,62,164);
INSERT INTO `detalle_movimiento` VALUES (94,84,165);
INSERT INTO `detalle_movimiento` VALUES (94,75,166);
INSERT INTO `detalle_movimiento` VALUES (94,81,171);
INSERT INTO `detalle_movimiento` VALUES (94,75,172);
INSERT INTO `detalle_movimiento` VALUES (94,51,176);
INSERT INTO `detalle_movimiento` VALUES (94,51,184);
INSERT INTO `detalle_movimiento` VALUES (94,82,185);
INSERT INTO `detalle_movimiento` VALUES (94,101,187);
INSERT INTO `detalle_movimiento` VALUES (94,84,189);
INSERT INTO `detalle_movimiento` VALUES (94,84,190);
INSERT INTO `detalle_movimiento` VALUES (94,90,191);
INSERT INTO `detalle_movimiento` VALUES (94,64,197);
INSERT INTO `detalle_movimiento` VALUES (94,66,198);
INSERT INTO `detalle_movimiento` VALUES (94,85,199);
INSERT INTO `detalle_movimiento` VALUES (94,90,200);
INSERT INTO `detalle_movimiento` VALUES (94,87,203);
INSERT INTO `detalle_movimiento` VALUES (94,51,205);
INSERT INTO `detalle_movimiento` VALUES (94,70,207);
INSERT INTO `detalle_movimiento` VALUES (94,82,208);
INSERT INTO `detalle_movimiento` VALUES (94,61,209);
INSERT INTO `detalle_movimiento` VALUES (94,96,210);
INSERT INTO `detalle_movimiento` VALUES (94,78,216);
INSERT INTO `detalle_movimiento` VALUES (94,72,218);
INSERT INTO `detalle_movimiento` VALUES (94,61,220);
INSERT INTO `detalle_movimiento` VALUES (94,67,225);
INSERT INTO `detalle_movimiento` VALUES (94,96,230);
INSERT INTO `detalle_movimiento` VALUES (94,80,231);
INSERT INTO `detalle_movimiento` VALUES (94,85,234);
INSERT INTO `detalle_movimiento` VALUES (94,84,236);
INSERT INTO `detalle_movimiento` VALUES (94,70,237);
INSERT INTO `detalle_movimiento` VALUES (94,51,248);
INSERT INTO `detalle_movimiento` VALUES (94,90,252);
INSERT INTO `detalle_movimiento` VALUES (94,73,256);
INSERT INTO `detalle_movimiento` VALUES (94,67,260);
INSERT INTO `detalle_movimiento` VALUES (94,81,269);
INSERT INTO `detalle_movimiento` VALUES (94,84,270);
INSERT INTO `detalle_movimiento` VALUES (94,78,271);
INSERT INTO `detalle_movimiento` VALUES (94,73,272);
INSERT INTO `detalle_movimiento` VALUES (94,93,276);
INSERT INTO `detalle_movimiento` VALUES (94,60,280);
INSERT INTO `detalle_movimiento` VALUES (94,66,281);
INSERT INTO `detalle_movimiento` VALUES (94,65,282);
INSERT INTO `detalle_movimiento` VALUES (94,91,285);
INSERT INTO `detalle_movimiento` VALUES (94,95,286);
INSERT INTO `detalle_movimiento` VALUES (94,95,291);
INSERT INTO `detalle_movimiento` VALUES (94,92,294);
INSERT INTO `detalle_movimiento` VALUES (94,54,298);
INSERT INTO `detalle_movimiento` VALUES (94,59,299);
INSERT INTO `detalle_movimiento` VALUES (94,96,302);
INSERT INTO `detalle_movimiento` VALUES (94,94,304);
INSERT INTO `detalle_movimiento` VALUES (94,73,306);
INSERT INTO `detalle_movimiento` VALUES (94,66,307);
INSERT INTO `detalle_movimiento` VALUES (94,65,310);
INSERT INTO `detalle_movimiento` VALUES (94,80,313);
INSERT INTO `detalle_movimiento` VALUES (94,90,318);
INSERT INTO `detalle_movimiento` VALUES (94,53,323);
INSERT INTO `detalle_movimiento` VALUES (94,55,324);
INSERT INTO `detalle_movimiento` VALUES (94,71,325);
INSERT INTO `detalle_movimiento` VALUES (94,68,327);
INSERT INTO `detalle_movimiento` VALUES (94,92,330);
INSERT INTO `detalle_movimiento` VALUES (94,91,331);
INSERT INTO `detalle_movimiento` VALUES (94,59,334);
INSERT INTO `detalle_movimiento` VALUES (94,93,337);
INSERT INTO `detalle_movimiento` VALUES (94,83,338);
INSERT INTO `detalle_movimiento` VALUES (94,54,340);
INSERT INTO `detalle_movimiento` VALUES (94,60,341);
INSERT INTO `detalle_movimiento` VALUES (94,71,343);
INSERT INTO `detalle_movimiento` VALUES (94,53,352);
INSERT INTO `detalle_movimiento` VALUES (94,71,357);
INSERT INTO `detalle_movimiento` VALUES (94,58,358);
INSERT INTO `detalle_movimiento` VALUES (94,52,359);
INSERT INTO `detalle_movimiento` VALUES (94,61,363);
INSERT INTO `detalle_movimiento` VALUES (94,51,364);
INSERT INTO `detalle_movimiento` VALUES (94,56,368);
INSERT INTO `detalle_movimiento` VALUES (94,96,371);
INSERT INTO `detalle_movimiento` VALUES (94,68,373);
INSERT INTO `detalle_movimiento` VALUES (94,75,375);
INSERT INTO `detalle_movimiento` VALUES (94,60,377);
INSERT INTO `detalle_movimiento` VALUES (94,75,378);
INSERT INTO `detalle_movimiento` VALUES (94,94,381);
INSERT INTO `detalle_movimiento` VALUES (94,93,385);
INSERT INTO `detalle_movimiento` VALUES (94,77,386);
INSERT INTO `detalle_movimiento` VALUES (94,55,389);
INSERT INTO `detalle_movimiento` VALUES (94,51,392);
INSERT INTO `detalle_movimiento` VALUES (94,90,393);
INSERT INTO `detalle_movimiento` VALUES (94,67,396);
INSERT INTO `detalle_movimiento` VALUES (94,64,397);
INSERT INTO `detalle_movimiento` VALUES (94,62,398);
INSERT INTO `detalle_movimiento` VALUES (94,93,399);
INSERT INTO `detalle_movimiento` VALUES (94,66,400);
INSERT INTO `detalle_movimiento` VALUES (94,78,403);
INSERT INTO `detalle_movimiento` VALUES (94,93,404);
INSERT INTO `detalle_movimiento` VALUES (95,78,20);
INSERT INTO `detalle_movimiento` VALUES (95,75,28);
INSERT INTO `detalle_movimiento` VALUES (95,74,40);
INSERT INTO `detalle_movimiento` VALUES (95,82,43);
INSERT INTO `detalle_movimiento` VALUES (95,52,44);
INSERT INTO `detalle_movimiento` VALUES (95,63,46);
INSERT INTO `detalle_movimiento` VALUES (95,65,65);
INSERT INTO `detalle_movimiento` VALUES (95,63,66);
INSERT INTO `detalle_movimiento` VALUES (95,65,71);
INSERT INTO `detalle_movimiento` VALUES (95,54,73);
INSERT INTO `detalle_movimiento` VALUES (95,81,84);
INSERT INTO `detalle_movimiento` VALUES (95,54,90);
INSERT INTO `detalle_movimiento` VALUES (95,71,99);
INSERT INTO `detalle_movimiento` VALUES (95,67,101);
INSERT INTO `detalle_movimiento` VALUES (95,61,130);
INSERT INTO `detalle_movimiento` VALUES (95,88,136);
INSERT INTO `detalle_movimiento` VALUES (95,58,144);
INSERT INTO `detalle_movimiento` VALUES (95,56,155);
INSERT INTO `detalle_movimiento` VALUES (95,57,156);
INSERT INTO `detalle_movimiento` VALUES (95,52,164);
INSERT INTO `detalle_movimiento` VALUES (95,86,165);
INSERT INTO `detalle_movimiento` VALUES (95,96,173);
INSERT INTO `detalle_movimiento` VALUES (95,75,174);
INSERT INTO `detalle_movimiento` VALUES (95,65,189);
INSERT INTO `detalle_movimiento` VALUES (95,56,190);
INSERT INTO `detalle_movimiento` VALUES (95,72,199);
INSERT INTO `detalle_movimiento` VALUES (95,89,200);
INSERT INTO `detalle_movimiento` VALUES (95,90,209);
INSERT INTO `detalle_movimiento` VALUES (95,92,216);
INSERT INTO `detalle_movimiento` VALUES (95,97,228);
INSERT INTO `detalle_movimiento` VALUES (95,97,236);
INSERT INTO `detalle_movimiento` VALUES (95,63,258);
INSERT INTO `detalle_movimiento` VALUES (95,58,263);
INSERT INTO `detalle_movimiento` VALUES (95,87,264);
INSERT INTO `detalle_movimiento` VALUES (95,100,272);
INSERT INTO `detalle_movimiento` VALUES (95,81,291);
INSERT INTO `detalle_movimiento` VALUES (95,92,292);
INSERT INTO `detalle_movimiento` VALUES (95,100,296);
INSERT INTO `detalle_movimiento` VALUES (95,80,301);
INSERT INTO `detalle_movimiento` VALUES (95,51,306);
INSERT INTO `detalle_movimiento` VALUES (95,88,324);
INSERT INTO `detalle_movimiento` VALUES (95,79,325);
INSERT INTO `detalle_movimiento` VALUES (95,91,330);
INSERT INTO `detalle_movimiento` VALUES (95,99,333);
INSERT INTO `detalle_movimiento` VALUES (95,75,341);
INSERT INTO `detalle_movimiento` VALUES (95,90,345);
INSERT INTO `detalle_movimiento` VALUES (95,93,356);
INSERT INTO `detalle_movimiento` VALUES (95,89,364);
INSERT INTO `detalle_movimiento` VALUES (95,74,367);
INSERT INTO `detalle_movimiento` VALUES (95,93,381);
INSERT INTO `detalle_movimiento` VALUES (95,56,392);
INSERT INTO `detalle_movimiento` VALUES (95,61,393);
INSERT INTO `detalle_movimiento` VALUES (95,96,405);
INSERT INTO `detalle_movimiento` VALUES (96,63,36);
INSERT INTO `detalle_movimiento` VALUES (96,67,57);
INSERT INTO `detalle_movimiento` VALUES (96,58,65);
INSERT INTO `detalle_movimiento` VALUES (96,70,84);
INSERT INTO `detalle_movimiento` VALUES (96,56,99);
INSERT INTO `detalle_movimiento` VALUES (96,72,130);
INSERT INTO `detalle_movimiento` VALUES (96,73,136);
INSERT INTO `detalle_movimiento` VALUES (96,68,157);
INSERT INTO `detalle_movimiento` VALUES (96,66,184);
INSERT INTO `detalle_movimiento` VALUES (96,75,236);
INSERT INTO `detalle_movimiento` VALUES (96,51,244);
INSERT INTO `detalle_movimiento` VALUES (96,72,263);
INSERT INTO `detalle_movimiento` VALUES (96,91,272);
INSERT INTO `detalle_movimiento` VALUES (96,60,283);
INSERT INTO `detalle_movimiento` VALUES (96,69,337);
INSERT INTO `detalle_movimiento` VALUES (96,96,341);
INSERT INTO `detalle_movimiento` VALUES (97,4,1);
INSERT INTO `detalle_movimiento` VALUES (97,4,1);
INSERT INTO `detalle_movimiento` VALUES (97,4,1);
INSERT INTO `detalle_movimiento` VALUES (97,4,1);
INSERT INTO `detalle_movimiento` VALUES (97,4,1);
INSERT INTO `detalle_movimiento` VALUES (97,4,1);
INSERT INTO `detalle_movimiento` VALUES (97,4,1);
INSERT INTO `detalle_movimiento` VALUES (97,4,1);
INSERT INTO `detalle_movimiento` VALUES (98,4,1);
INSERT INTO `detalle_movimiento` VALUES (98,4,1);
INSERT INTO `detalle_movimiento` VALUES (98,4,1);
INSERT INTO `detalle_movimiento` VALUES (98,4,1);
INSERT INTO `detalle_movimiento` VALUES (98,4,1);
INSERT INTO `detalle_movimiento` VALUES (98,4,1);
INSERT INTO `detalle_movimiento` VALUES (98,4,1);
INSERT INTO `detalle_movimiento` VALUES (98,4,1);
INSERT INTO `detalle_movimiento` VALUES (99,1,1);
INSERT INTO `detalle_movimiento` VALUES (99,1,1);
INSERT INTO `detalle_movimiento` VALUES (99,1,471);
INSERT INTO `detalle_movimiento` VALUES (99,1,472);
INSERT INTO `detalle_movimiento` VALUES (99,1,471);
INSERT INTO `detalle_movimiento` VALUES (99,1,471);
INSERT INTO `detalle_movimiento` VALUES (99,1,471);
INSERT INTO `detalle_movimiento` VALUES (99,1,472);
INSERT INTO `detalle_movimiento` VALUES (99,1,472);
INSERT INTO `detalle_movimiento` VALUES (99,2,1);
INSERT INTO `detalle_movimiento` VALUES (99,1,472);
INSERT INTO `detalle_movimiento` VALUES (99,1,472);
INSERT INTO `detalle_movimiento` VALUES (99,1,472);
INSERT INTO `detalle_movimiento` VALUES (99,1,471);
INSERT INTO `detalle_movimiento` VALUES (99,1,471);
INSERT INTO `detalle_movimiento` VALUES (99,1,472);
INSERT INTO `detalle_movimiento` VALUES (99,1,473);
INSERT INTO `detalle_movimiento` VALUES (104,4,1);
INSERT INTO `detalle_movimiento` VALUES (104,1,1);
INSERT INTO `detalle_movimiento` VALUES (104,1,2);
INSERT INTO `detalle_movimiento` VALUES (104,1,2);
INSERT INTO `detalle_movimiento` VALUES (104,1,2);
INSERT INTO `detalle_movimiento` VALUES (104,1,2);
INSERT INTO `detalle_movimiento` VALUES (104,1,2);
INSERT INTO `detalle_movimiento` VALUES (104,1,2);
INSERT INTO `detalle_movimiento` VALUES (104,1,2);
INSERT INTO `detalle_movimiento` VALUES (105,1,2);
INSERT INTO `detalle_movimiento` VALUES (105,1,2);
INSERT INTO `detalle_movimiento` VALUES (105,1,2);
INSERT INTO `detalle_movimiento` VALUES (105,1,2);
INSERT INTO `detalle_movimiento` VALUES (105,1,2);
INSERT INTO `detalle_movimiento` VALUES (106,1,2);
INSERT INTO `detalle_movimiento` VALUES (106,1,2);
INSERT INTO `detalle_movimiento` VALUES (106,1,2);
INSERT INTO `detalle_movimiento` VALUES (106,1,2);
INSERT INTO `detalle_movimiento` VALUES (109,1,2);
INSERT INTO `detalle_movimiento` VALUES (109,1,2);
INSERT INTO `detalle_movimiento` VALUES (109,3,1);
INSERT INTO `detalle_movimiento` VALUES (109,3,1);
INSERT INTO `detalle_movimiento` VALUES (109,3,1);
INSERT INTO `detalle_movimiento` VALUES (110,2,1);
INSERT INTO `detalle_movimiento` VALUES (110,2,1);
INSERT INTO `detalle_movimiento` VALUES (110,1,471);
INSERT INTO `detalle_movimiento` VALUES (110,1,472);
INSERT INTO `detalle_movimiento` VALUES (110,2,1);
INSERT INTO `detalle_movimiento` VALUES (111,4,1);
INSERT INTO `detalle_movimiento` VALUES (111,4,1);
INSERT INTO `detalle_movimiento` VALUES (111,4,1);
INSERT INTO `detalle_movimiento` VALUES (111,4,1);
INSERT INTO `detalle_movimiento` VALUES (111,2,1);
INSERT INTO `detalle_movimiento` VALUES (111,2,1);
INSERT INTO `detalle_movimiento` VALUES (111,2,1);
INSERT INTO `detalle_movimiento` VALUES (111,4,1);
INSERT INTO `detalle_movimiento` VALUES (111,2,471);
INSERT INTO `detalle_movimiento` VALUES (111,10,471);
INSERT INTO `detalle_movimiento` VALUES (111,1,471);
INSERT INTO `detalle_movimiento` VALUES (111,1,472);
INSERT INTO `detalle_movimiento` VALUES (111,1,471);
INSERT INTO `detalle_movimiento` VALUES (111,1,471);
INSERT INTO `detalle_movimiento` VALUES (111,1,471);
INSERT INTO `detalle_movimiento` VALUES (111,1,471);
INSERT INTO `detalle_movimiento` VALUES (111,1,471);
INSERT INTO `detalle_movimiento` VALUES (111,1,471);
INSERT INTO `detalle_movimiento` VALUES (111,2,1);
INSERT INTO `detalle_movimiento` VALUES (111,2,1);
INSERT INTO `detalle_movimiento` VALUES (114,1,471);
INSERT INTO `detalle_movimiento` VALUES (114,1,471);
INSERT INTO `detalle_movimiento` VALUES (130,1,471);
INSERT INTO `detalle_movimiento` VALUES (130,1,472);
INSERT INTO `detalle_movimiento` VALUES (130,1,472);
INSERT INTO `detalle_movimiento` VALUES (130,1,471);
INSERT INTO `detalle_movimiento` VALUES (132,3,1);
INSERT INTO `detalle_movimiento` VALUES (132,3,1);
INSERT INTO `detalle_movimiento` VALUES (132,3,1);
INSERT INTO `detalle_movimiento` VALUES (143,4,1);
INSERT INTO `detalle_movimiento` VALUES (143,4,1);
INSERT INTO `detalle_movimiento` VALUES (143,4,1);
INSERT INTO `detalle_movimiento` VALUES (144,1,471);
INSERT INTO `detalle_movimiento` VALUES (144,2,473);
INSERT INTO `detalle_movimiento` VALUES (144,1,471);
INSERT INTO `detalle_movimiento` VALUES (145,4,1);
INSERT INTO `detalle_movimiento` VALUES (145,4,1);
INSERT INTO `detalle_movimiento` VALUES (146,4,1);
INSERT INTO `detalle_movimiento` VALUES (146,4,1);
INSERT INTO `detalle_movimiento` VALUES (147,4,1);
INSERT INTO `detalle_movimiento` VALUES (148,4,1);
INSERT INTO `detalle_movimiento` VALUES (158,4,1);
INSERT INTO `detalle_movimiento` VALUES (158,4,1);
INSERT INTO `detalle_movimiento` VALUES (158,2,1);
INSERT INTO `detalle_movimiento` VALUES (158,2,1);
INSERT INTO `detalle_movimiento` VALUES (160,2,1);
INSERT INTO `detalle_movimiento` VALUES (160,2,1);
INSERT INTO `detalle_movimiento` VALUES (160,4,1);
INSERT INTO `detalle_movimiento` VALUES (165,2,1);
INSERT INTO `detalle_movimiento` VALUES (165,2,1);
INSERT INTO `detalle_movimiento` VALUES (165,2,1);
INSERT INTO `detalle_movimiento` VALUES (165,2,1);
INSERT INTO `detalle_movimiento` VALUES (166,2,1);
INSERT INTO `detalle_movimiento` VALUES (166,2,1);
INSERT INTO `detalle_movimiento` VALUES (166,2,1);
INSERT INTO `detalle_movimiento` VALUES (166,2,1);
INSERT INTO `detalle_movimiento` VALUES (167,2,1);
INSERT INTO `detalle_movimiento` VALUES (167,2,1);
INSERT INTO `detalle_movimiento` VALUES (167,2,1);
INSERT INTO `detalle_movimiento` VALUES (167,2,1);
INSERT INTO `detalle_movimiento` VALUES (169,1,1);
INSERT INTO `detalle_movimiento` VALUES (169,1,1);
INSERT INTO `detalle_movimiento` VALUES (169,1,1);
INSERT INTO `detalle_movimiento` VALUES (170,4,1);
INSERT INTO `detalle_movimiento` VALUES (170,4,1);
INSERT INTO `detalle_movimiento` VALUES (170,4,1);
INSERT INTO `detalle_movimiento` VALUES (171,2,1);
INSERT INTO `detalle_movimiento` VALUES (171,2,1);
INSERT INTO `detalle_movimiento` VALUES (172,1,471);
INSERT INTO `detalle_movimiento` VALUES (172,1,471);
INSERT INTO `detalle_movimiento` VALUES (172,1,471);
INSERT INTO `detalle_movimiento` VALUES (172,1,471);
INSERT INTO `detalle_movimiento` VALUES (172,1,471);
INSERT INTO `detalle_movimiento` VALUES (173,1,471);
INSERT INTO `detalle_movimiento` VALUES (173,1,471);
INSERT INTO `detalle_movimiento` VALUES (173,1,471);
INSERT INTO `detalle_movimiento` VALUES (174,1,471);
INSERT INTO `detalle_movimiento` VALUES (174,1,471);
INSERT INTO `detalle_movimiento` VALUES (175,2,1);
INSERT INTO `detalle_movimiento` VALUES (175,2,1);
INSERT INTO `detalle_movimiento` VALUES (175,2,2);
INSERT INTO `detalle_movimiento` VALUES (175,2,2);
INSERT INTO `detalle_movimiento` VALUES (175,2,1);
INSERT INTO `detalle_movimiento` VALUES (175,3,3);
INSERT INTO `detalle_movimiento` VALUES (175,4,1);
INSERT INTO `detalle_movimiento` VALUES (175,4,4);
INSERT INTO `detalle_movimiento` VALUES (176,2,1);
INSERT INTO `detalle_movimiento` VALUES (176,2,1);
INSERT INTO `detalle_movimiento` VALUES (176,2,2);
INSERT INTO `detalle_movimiento` VALUES (176,2,2);
INSERT INTO `detalle_movimiento` VALUES (176,2,1);
INSERT INTO `detalle_movimiento` VALUES (176,3,3);
INSERT INTO `detalle_movimiento` VALUES (176,4,1);
INSERT INTO `detalle_movimiento` VALUES (177,2,1);
INSERT INTO `detalle_movimiento` VALUES (177,2,1);
INSERT INTO `detalle_movimiento` VALUES (178,4,4);
INSERT INTO `detalle_movimiento` VALUES (178,2,4);
INSERT INTO `detalle_movimiento` VALUES (179,2,4);
INSERT INTO `detalle_movimiento` VALUES (179,2,1);
INSERT INTO `detalle_movimiento` VALUES (180,1,471);
INSERT INTO `detalle_movimiento` VALUES (180,1,472);
INSERT INTO `detalle_movimiento` VALUES (180,2,471);
INSERT INTO `detalle_movimiento` VALUES (181,3,471);
INSERT INTO `detalle_movimiento` VALUES (181,2,471);
INSERT INTO `detalle_movimiento` VALUES (181,4,472);
INSERT INTO `detalle_movimiento` VALUES (182,2,471);
INSERT INTO `detalle_movimiento` VALUES (183,1,471);
INSERT INTO `detalle_movimiento` VALUES (183,1,472);



DROP TABLE IF EXISTS `empleado`;

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `id_persona` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(128) NOT NULL,
  `foto_url` varchar(200) DEFAULT NULL,
  `estado` varchar(1) NOT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_empleado`),
  UNIQUE KEY `usuario_uq` (`usuario`),
  UNIQUE KEY `empleado_persona_uq` (`id_persona`),
  KEY `fk_id_tipo_usuario` (`id_tipo_usuario`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`),
  CONSTRAINT `fk_id_tipo_usuario` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id_tipo_usuario`)
);


INSERT INTO `empleado` VALUES (1,'2019-02-02',1,'mmarousek0','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','img360x360_2ac3a5.png','A',1);
INSERT INTO `empleado` VALUES (2,'2017-10-30',2,'kvokins1','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','A',1);
INSERT INTO `empleado` VALUES (3,'2014-08-10',3,'vsouza2','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','img360x360_1eeda6.png','A',2);
INSERT INTO `empleado` VALUES (4,'2014-12-31',4,'dforton3','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','I',1);
INSERT INTO `empleado` VALUES (5,'2005-10-06',5,'bderoeck4','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','I',2);
INSERT INTO `empleado` VALUES (6,'2006-05-14',6,'bberndsen5','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','I',2);
INSERT INTO `empleado` VALUES (7,'2014-07-18',7,'ggrowcock6','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','A',2);
INSERT INTO `empleado` VALUES (8,'2005-04-11',8,'rsenchenko7','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','A',2);
INSERT INTO `empleado` VALUES (9,'2006-10-05',9,'mbestwick8','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','A',2);
INSERT INTO `empleado` VALUES (10,'2000-02-02',10,'kamehouse','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','soy guapo, créanlo','I',1);
INSERT INTO `empleado` VALUES (11,'2011-02-09',11,'maxworthya','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','A',2);
INSERT INTO `empleado` VALUES (12,'2017-09-28',12,'fplantb','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','I',2);
INSERT INTO `empleado` VALUES (13,'2018-03-12',13,'twadesonc','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','I',2);
INSERT INTO `empleado` VALUES (14,'2013-09-24',14,'vjergd','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','I',2);
INSERT INTO `empleado` VALUES (15,'2006-04-29',15,'lwithnalle','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','I',2);
INSERT INTO `empleado` VALUES (16,'2007-06-24',16,'dgravestonef','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','I',2);
INSERT INTO `empleado` VALUES (17,'2007-02-23',17,'ecapellg','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','I',2);
INSERT INTO `empleado` VALUES (18,'2011-09-24',18,'nmaclaineh','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','A',2);
INSERT INTO `empleado` VALUES (19,'2008-12-26',19,'dglavisi','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','I',2);
INSERT INTO `empleado` VALUES (20,'2005-11-09',20,'ksidnellj','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','I',2);
INSERT INTO `empleado` VALUES (21,'2010-11-17',21,'mclingank','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','A',2);
INSERT INTO `empleado` VALUES (22,'2006-02-18',22,'esongerl','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','I',2);
INSERT INTO `empleado` VALUES (23,'2007-04-07',23,'tphillpotm','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','A',2);
INSERT INTO `empleado` VALUES (24,'2014-11-01',24,'ldufrayn','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','I',2);
INSERT INTO `empleado` VALUES (25,'2012-05-20',25,'jcaselicko','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','A',2);
INSERT INTO `empleado` VALUES (26,'2018-10-26',26,'jsiudap','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','I',2);
INSERT INTO `empleado` VALUES (27,'2011-09-10',27,'gheartq','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','I',2);
INSERT INTO `empleado` VALUES (28,'2018-03-24',28,'tkarolczykr','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','A',2);
INSERT INTO `empleado` VALUES (29,'2018-04-08',29,'bappletons','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','I',2);
INSERT INTO `empleado` VALUES (30,'2009-05-30',30,'kleprevostt','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','A',2);
INSERT INTO `empleado` VALUES (78,'2010-02-02',554,'Jpalma','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','A',1);
INSERT INTO `empleado` VALUES (79,'2019-02-07',555,'mmarousek05','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','A',2);
INSERT INTO `empleado` VALUES (80,'2017-02-01',556,'Ale16','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','women-profile.jpg','A',1);
INSERT INTO `empleado` VALUES (81,'2010-12-02',557,'WPalma','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','A',1);
INSERT INTO `empleado` VALUES (82,'2010-01-01',558,'JAguilar','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','','A',1);
INSERT INTO `empleado` VALUES (83,'2015-12-01',559,'prueba','3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','A',1);
INSERT INTO `empleado` VALUES (84,'2015-12-10',560,'pruebaaaaaaa','d98759adb903460098a30ad714c9b443c390c5ae9f3e485e43bedc6b8a67912cd7e99c9a828069ea2ea97832b154ab14e10834dfb16d85392a53329c6a28bdaf','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','A',2);
INSERT INTO `empleado` VALUES (85,'2010-02-02',561,'sudosu','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','I',1);
INSERT INTO `empleado` VALUES (86,'2015-10-01',562,'denisadonis95','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','I',1);
INSERT INTO `empleado` VALUES (87,'2010-02-01',563,'asd','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','I',1);
INSERT INTO `empleado` VALUES (88,'2000-03-30',564,'jose_aguilar','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','https://i.dailymail.co.uk/i/newpix/2018/07/19/14/2500C7CE00000578-5970623-Blackadder_and_Mr_Bean_star_Rowan_Atkinson_has_been_a_victim_of_-a-1_1532005278477.jpg','A',2);
INSERT INTO `empleado` VALUES (89,'2015-01-01',565,'super','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','','A',1);
INSERT INTO `empleado` VALUES (90,'2017-01-01',566,'amumu','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','','I',1);
INSERT INTO `empleado` VALUES (91,'2018-01-01',567,'asuperpipo','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','','I',1);
INSERT INTO `empleado` VALUES (92,'2002-02-03',570,'assfd','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','ASDFGHJKL.COM','I',2);
INSERT INTO `empleado` VALUES (98,'2002-02-03',571,'afasdsd','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','','I',2);
INSERT INTO `empleado` VALUES (99,'2002-02-03',572,'wil_smith','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','img360x360_1b969f.png','A',1);
INSERT INTO `empleado` VALUES (102,'2002-02-03',573,'SDFASDFASDF','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','ASDFGHJKL.COM','A',2);
INSERT INTO `empleado` VALUES (105,'2010-02-02',574,'mkdirarelsdf69','813d54c2131368b7503487411f8463f739281dc1db18caf99a1dc9222e2489cacf3e948c33284969cd61e1566dfd0c2183ba04641b1f8c55398df152c33f056e','http://found','A',1);
INSERT INTO `empleado` VALUES (108,'2010-01-01',575,'asdff','813d54c2131368b7503487411f8463f739281dc1db18caf99a1dc9222e2489cacf3e948c33284969cd61e1566dfd0c2183ba04641b1f8c55398df152c33f056e','http://found/petter','I',1);
INSERT INTO `empleado` VALUES (109,'2010-02-02',576,'mkdirarelsdf695','813d54c2131368b7503487411f8463f739281dc1db18caf99a1dc9222e2489cacf3e948c33284969cd61e1566dfd0c2183ba04641b1f8c55398df152c33f056e','http://found','A',1);
INSERT INTO `empleado` VALUES (110,'2010-02-02',577,'mkdirarelsdf695asd','813d54c2131368b7503487411f8463f739281dc1db18caf99a1dc9222e2489cacf3e948c33284969cd61e1566dfd0c2183ba04641b1f8c55398df152c33f056e','http://found','A',1);
INSERT INTO `empleado` VALUES (111,'2010-02-02',578,'mkdirarelsdf695asasdfd','813d54c2131368b7503487411f8463f739281dc1db18caf99a1dc9222e2489cacf3e948c33284969cd61e1566dfd0c2183ba04641b1f8c55398df152c33f056e','http://found','A',1);
INSERT INTO `empleado` VALUES (112,'2010-01-01',579,'salvita','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','','I',1);
INSERT INTO `empleado` VALUES (113,'2010-01-01',580,'salvitaa','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','','A',1);
INSERT INTO `empleado` VALUES (114,'2018-02-02',581,'asdfer','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','','I',1);
INSERT INTO `empleado` VALUES (115,'2018-02-02',582,'user1','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','','I',2);
INSERT INTO `empleado` VALUES (116,'2000-02-02',583,'A_Perez','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','','A',1);
INSERT INTO `empleado` VALUES (117,'2015-01-01',584,'Amigo','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','','I',1);
INSERT INTO `empleado` VALUES (118,'2019-03-03',585,'Ness41','07cd9005af02e9edeaaad5df903170199e4e411174f5e069553f7ac44139101ec554bc4046f31aa4bba5bdd985e0e94901f66ea961305d89d805d1128ecffc14','','A',1);

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;

CREATE TABLE `factura` (
  `id_factura` int(11) NOT NULL,
  `fecha_hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `coste_total` double NOT NULL,
  `observacion` varchar(250) DEFAULT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_forma_pago` int(11) NOT NULL,
  `id_farmacia` int(11) NOT NULL,
  PRIMARY KEY (`id_factura`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_forma_pago` (`id_forma_pago`),
  KEY `id_farmacia` (`id_farmacia`),
  CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`),
  CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `factura_ibfk_3` FOREIGN KEY (`id_forma_pago`) REFERENCES `forma_pago` (`id_forma_pago`),
  CONSTRAINT `factura_ibfk_4` FOREIGN KEY (`id_farmacia`) REFERENCES `farmacia` (`id_farmacia`)
);
 
--
-- Dumping data for table `factura`
--

INSERT INTO `factura` VALUES (1,'2018-06-22 06:00:00',38363.16,'',17,464,1,1);
INSERT INTO `factura` VALUES (2,'2018-02-03 06:00:00',619210.76,'',21,223,1,1);
INSERT INTO `factura` VALUES (3,'2017-08-22 06:00:00',1393008.06,'',26,97,1,1);
INSERT INTO `factura` VALUES (4,'2017-07-09 06:00:00',72717.57,'',17,261,1,1);
INSERT INTO `factura` VALUES (5,'2018-06-18 06:00:00',76545.95,'',23,345,1,1);
INSERT INTO `factura` VALUES (6,'2018-04-10 06:00:00',1053676.5,'',17,74,1,1);
INSERT INTO `factura` VALUES (7,'2017-06-21 06:00:00',392120.06,'',14,222,1,1);
INSERT INTO `factura` VALUES (8,'2018-02-21 06:00:00',383367.35,'',22,72,1,1);
INSERT INTO `factura` VALUES (9,'2018-07-06 06:00:00',788768.84,'',21,96,1,1);
INSERT INTO `factura` VALUES (10,'2017-04-08 06:00:00',715494.66,'',15,439,1,1);
INSERT INTO `factura` VALUES (11,'2018-03-02 06:00:00',112753.98,'',23,78,1,1);
INSERT INTO `factura` VALUES (12,'2018-07-19 06:00:00',173366.63,'',22,312,1,1);
INSERT INTO `factura` VALUES (13,'2017-11-08 06:00:00',400745.82,'',26,159,1,1);
INSERT INTO `factura` VALUES (14,'2018-05-13 06:00:00',226475.29,'',14,160,1,1);
INSERT INTO `factura` VALUES (15,'2018-02-19 06:00:00',1431.19,'',26,307,1,1);
INSERT INTO `factura` VALUES (16,'2017-12-03 06:00:00',1048406.82,'',14,302,1,1);
INSERT INTO `factura` VALUES (17,'2018-03-13 06:00:00',79219.67,'',22,117,1,1);
INSERT INTO `factura` VALUES (18,'2018-09-09 06:00:00',948262.69,'',14,432,1,1);
INSERT INTO `factura` VALUES (19,'2016-09-17 06:00:00',60142.21,'',19,136,1,1);
INSERT INTO `factura` VALUES (20,'2018-06-09 06:00:00',366791.71,'',9,76,1,1);
INSERT INTO `factura` VALUES (21,'2018-05-10 06:00:00',1230831.5,'',9,456,1,1);
INSERT INTO `factura` VALUES (22,'2018-05-01 06:00:00',379666.56,'',3,249,1,1);
INSERT INTO `factura` VALUES (23,'2017-07-19 06:00:00',1752037.96,'',30,221,1,1);
INSERT INTO `factura` VALUES (24,'2017-09-25 06:00:00',324321.89,'',22,276,1,1);
INSERT INTO `factura` VALUES (25,'2017-09-02 06:00:00',1230372.16,'',17,425,1,1);
INSERT INTO `factura` VALUES (26,'2016-11-23 06:00:00',227128.47,'',6,61,1,1);
INSERT INTO `factura` VALUES (27,'2018-03-01 06:00:00',598270.44,'',26,378,1,1);
INSERT INTO `factura` VALUES (28,'2017-12-03 06:00:00',210835.03,'',11,108,1,1);
INSERT INTO `factura` VALUES (29,'2017-04-18 06:00:00',35141.57,'',20,114,1,1);
INSERT INTO `factura` VALUES (30,'2017-04-12 06:00:00',1069520.44,'',10,200,1,1);
INSERT INTO `factura` VALUES (31,'2017-05-17 06:00:00',453686.64,'',7,106,1,1);
INSERT INTO `factura` VALUES (32,'2018-01-14 06:00:00',649997.61,'',8,17,1,1);
INSERT INTO `factura` VALUES (33,'2017-01-20 06:00:00',4267.07,'',25,309,1,1);
INSERT INTO `factura` VALUES (34,'2018-05-18 06:00:00',1183377.22,'',4,217,1,1);
INSERT INTO `factura` VALUES (35,'2017-07-06 06:00:00',2177834.4,'',10,387,1,1);
INSERT INTO `factura` VALUES (36,'2018-04-14 06:00:00',3993.09,'',17,301,1,1);
INSERT INTO `factura` VALUES (37,'2017-06-12 06:00:00',87064.32,'',20,428,1,1);
INSERT INTO `factura` VALUES (38,'2017-02-03 06:00:00',928376.97,'',29,74,1,1);
INSERT INTO `factura` VALUES (39,'2018-09-08 06:00:00',100634.69,'',27,367,1,1);
INSERT INTO `factura` VALUES (40,'2018-04-30 06:00:00',733482,'',17,26,1,1);
INSERT INTO `factura` VALUES (41,'2016-11-28 06:00:00',607033.63,'',24,82,1,1);
INSERT INTO `factura` VALUES (42,'2017-07-03 06:00:00',101870.45,'',7,90,1,1);
INSERT INTO `factura` VALUES (43,'2016-11-18 06:00:00',13509.37,'',11,459,1,1);
INSERT INTO `factura` VALUES (44,'2018-05-25 06:00:00',665455.41,'',29,43,1,1);
INSERT INTO `factura` VALUES (45,'2016-07-20 06:00:00',784916.5,'',20,120,1,1);
INSERT INTO `factura` VALUES (46,'2018-12-27 06:00:00',4986.24,'',20,306,1,1);
INSERT INTO `factura` VALUES (47,'2017-06-10 06:00:00',92812.55,'',23,266,1,1);
INSERT INTO `factura` VALUES (48,'2017-11-07 06:00:00',41543.92,'',1,394,1,1);
INSERT INTO `factura` VALUES (49,'2017-06-13 06:00:00',27538.52,'',26,129,1,1);
INSERT INTO `factura` VALUES (50,'2018-02-07 06:00:00',990626.65,'',1,230,1,1);
INSERT INTO `factura` VALUES (51,'2017-11-14 06:00:00',112714.4,'',19,118,1,1);
INSERT INTO `factura` VALUES (52,'2016-10-03 06:00:00',467041.78,'',14,427,1,1);
INSERT INTO `factura` VALUES (53,'2019-03-19 18:29:56',788.96,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (54,'2019-03-19 18:33:00',788.96,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (56,'2019-03-19 18:35:40',2303.63,'Obs',80,471,1,1);
INSERT INTO `factura` VALUES (65,'2019-03-19 22:07:53',8615.96,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (66,'2019-03-19 22:09:01',6066.2,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (67,'2019-03-19 22:11:41',4852.96,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (70,'2019-03-19 22:49:24',2648.3899999999994,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (71,'2019-03-19 22:50:11',462.93,'Obs',80,471,1,1);
INSERT INTO `factura` VALUES (72,'2019-03-19 22:50:38',3889.65,'Obs',1,471,1,1);
INSERT INTO `factura` VALUES (75,'2019-03-19 22:54:40',315,'Obs',1,471,1,1);
INSERT INTO `factura` VALUES (105,'2019-03-19 23:11:00',630,'Obs',1,471,1,1);
INSERT INTO `factura` VALUES (108,'2019-03-19 23:59:46',221.91,'Obs',1,471,1,1);
INSERT INTO `factura` VALUES (119,'2019-03-20 20:28:31',295.86,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (120,'2019-03-20 20:28:48',630,'Obs',80,471,1,1);
INSERT INTO `factura` VALUES (121,'2019-03-21 06:28:12',197.24,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (124,'2019-03-21 06:31:23',197.24,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (127,'2019-03-21 06:38:23',98.62,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (128,'2019-03-21 06:39:38',98.62,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (139,'2019-03-21 07:05:28',295.86,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (143,'2019-03-21 07:09:33',197.24,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (179,'2019-03-21 07:34:29',197.24,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (180,'2019-03-21 07:34:48',197.24,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (181,'2019-03-21 07:34:52',197.24,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (197,'2019-03-22 05:23:49',73.98,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (199,'2019-03-22 05:25:18',295.86,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (200,'2019-03-22 05:26:11',98.62,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (201,'2019-03-22 05:28:16',787.5,'Obs',80,471,1,1);
INSERT INTO `factura` VALUES (202,'2019-03-22 05:28:27',472.5,'Obs',80,471,1,1);
INSERT INTO `factura` VALUES (203,'2019-03-22 05:28:40',315,'Obs',80,471,1,1);
INSERT INTO `factura` VALUES (204,'2019-03-23 02:29:32',8219.44,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (205,'2019-03-23 02:29:38',6648.17,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (206,'2019-03-23 02:30:54',98.62,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (207,'2019-03-23 02:31:59',2356.91,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (208,'2019-03-23 02:34:02',834.95,'Obs',81,471,1,1);
INSERT INTO `factura` VALUES (209,'2019-03-23 04:33:50',630,'Obs',80,471,1,1);
INSERT INTO `factura` VALUES (210,'2019-03-23 05:09:39',1417.5,'Obs',80,471,1,1);
INSERT INTO `factura` VALUES (211,'2019-03-23 05:10:01',315,'Obs',80,471,1,1);
INSERT INTO `factura` VALUES (212,'2019-03-23 22:20:54',315,'Obs',1,471,1,1);

--
-- Table structure for table `farmacia`
--

DROP TABLE IF EXISTS `farmacia`;
 
 
CREATE TABLE `farmacia` (
  `id_farmacia` int(11) NOT NULL,
  `farmacia` varchar(100) NOT NULL,
  `propietario` varchar(100) NOT NULL,
  `rtn` varchar(14) NOT NULL,
  `fundada` date NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `estado` varchar(1) NOT NULL,
  PRIMARY KEY (`id_farmacia`),
  KEY `id_ciudad` (`id_ciudad`),
  CONSTRAINT `farmacia_ibfk_1` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`)
);
 
--
-- Dumping data for table `farmacia`
--

INSERT INTO `farmacia` VALUES (1,'Farmacia Esperanza','Juan Pérez','08011970123456','2018-09-18',1,'A');

--
-- Table structure for table `forma_pago`
--

DROP TABLE IF EXISTS `forma_pago`;
 
 
CREATE TABLE `forma_pago` (
  `id_forma_pago` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `estado` varchar(1) NOT NULL,
  PRIMARY KEY (`id_forma_pago`)
);
 
--
-- Dumping data for table `forma_pago`
--

INSERT INTO `forma_pago` VALUES (1,'Efectivo','A');

--
-- Table structure for table `impuesto`
--

DROP TABLE IF EXISTS `impuesto`;
 
 
CREATE TABLE `impuesto` (
  `id_impuesto` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `porcentaje` int(11) NOT NULL,
  `estado` varchar(1) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  PRIMARY KEY (`id_impuesto`)
);
 
--
-- Dumping data for table `impuesto`
--

INSERT INTO `impuesto` VALUES (1,'EXENTO',0,'A','2018-12-22',NULL);
INSERT INTO `impuesto` VALUES (2,'ISV15',15,'A','2018-12-22',NULL);
INSERT INTO `impuesto` VALUES (3,'ISV12',12,'A','2018-12-22',NULL);

--
-- Table structure for table `impuesto_producto`
--

DROP TABLE IF EXISTS `impuesto_producto`;
 
 
CREATE TABLE `impuesto_producto` (
  `id_impuesto` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  KEY `id_impuesto` (`id_impuesto`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `impuesto_producto_ibfk_1` FOREIGN KEY (`id_impuesto`) REFERENCES `impuesto` (`id_impuesto`),
  CONSTRAINT `impuesto_producto_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`)
);
 
--
-- Dumping data for table `impuesto_producto`
--

INSERT INTO `impuesto_producto` VALUES (3,193,'2000-02-04','2019-02-16','I');
INSERT INTO `impuesto_producto` VALUES (3,196,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,1,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,2,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,50,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,145,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,136,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,137,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,195,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,109,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,117,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,59,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,60,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,61,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,62,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,63,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,64,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,118,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,51,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,10,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,71,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,197,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,95,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,17,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,198,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,76,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,72,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,66,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,88,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,162,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,171,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,177,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,128,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,163,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,172,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,178,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,153,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,167,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,179,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,46,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,48,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,11,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,55,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,25,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,101,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,34,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,38,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,29,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,26,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,56,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,102,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,96,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,105,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,108,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,52,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,106,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,146,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,129,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,164,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,121,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,156,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,180,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,122,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,130,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,138,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,73,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,77,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,67,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,78,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,74,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,68,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,19,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,20,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,183,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,185,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,184,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,186,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,4,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,54,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,39,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,57,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,35,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,58,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,36,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,42,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,119,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,65,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,112,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,120,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,114,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,116,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,90,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,165,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,181,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,141,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,131,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,157,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,147,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,142,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,123,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,132,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,150,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,158,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,166,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,169,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,182,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,143,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,91,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,124,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,125,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,159,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,144,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,160,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,126,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,127,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,133,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,151,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,8,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,9,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,107,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,161,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,134,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,135,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,43,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,27,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,30,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,44,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,37,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,21,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,22,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,92,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,93,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,13,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,15,'2000-02-04',NULL,'I');
INSERT INTO `impuesto_producto` VALUES (3,16,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,23,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,24,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,79,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,81,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,82,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,12,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,86,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,188,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,191,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,170,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,45,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,33,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,87,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,189,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,192,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,97,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,85,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,83,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,98,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,104,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,100,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,193,'2019-02-17',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,2,'2000-02-04','2018-02-02','I');
INSERT INTO `impuesto_producto` VALUES (1,210,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,213,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,214,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,215,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,216,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,217,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,218,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,219,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,220,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,221,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,222,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,223,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,224,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,225,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,226,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,227,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,228,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,229,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,230,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,231,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,232,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,233,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,234,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,235,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,236,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,237,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,238,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,239,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,240,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,241,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,242,'2000-02-04',NULL,'I');
INSERT INTO `impuesto_producto` VALUES (1,243,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,244,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,245,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,246,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,247,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,248,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,249,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,250,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,251,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,252,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,253,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,254,'2000-02-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,255,'2019-03-03',NULL,'I');
INSERT INTO `impuesto_producto` VALUES (1,255,'2019-03-03',NULL,'I');
INSERT INTO `impuesto_producto` VALUES (2,255,'2019-03-04',NULL,'I');
INSERT INTO `impuesto_producto` VALUES (1,255,'2019-03-04',NULL,'I');
INSERT INTO `impuesto_producto` VALUES (2,255,'2019-03-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,256,'2019-03-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,257,'2019-03-04',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,15,'2019-03-05',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,258,'2019-03-13',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,259,'2019-03-13',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,260,'2019-03-13',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,261,'2019-03-13',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,262,'2019-03-14',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,263,'2019-03-14',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,242,'2019-03-14',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,264,'2019-03-15',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,265,'2019-03-15',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,266,'2019-03-15',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,267,'2019-03-15',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,268,'2019-03-15',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,269,'2019-03-15',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,270,'2019-03-15',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,271,'2019-03-15',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,272,'2019-03-15',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,273,'2019-03-15',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,274,'2019-03-15',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,275,'2019-03-16',NULL,'I');
INSERT INTO `impuesto_producto` VALUES (2,275,'2019-03-16',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,276,'2019-03-16',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,277,'2019-03-18',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (1,278,'2019-03-18',NULL,'I');
INSERT INTO `impuesto_producto` VALUES (2,278,'2019-03-18',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,279,'2019-03-19',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,280,'2019-03-19',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,281,'2019-03-19',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,282,'2019-03-19',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,283,'2019-03-19',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,284,'2019-03-20',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (3,285,'2019-03-20',NULL,'A');
INSERT INTO `impuesto_producto` VALUES (2,286,'2019-03-23',NULL,'A');

--
-- Table structure for table `laboratorio`
--

DROP TABLE IF EXISTS `laboratorio`;
 
 
CREATE TABLE `laboratorio` (
  `id_laboratorio` int(11) NOT NULL,
  `nombre_laboratorio` varchar(45) NOT NULL,
  `estado` varchar(1) NOT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono_laboratorio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_laboratorio`)
);
 
--
-- Dumping data for table `laboratorio`
--

INSERT INTO `laboratorio` VALUES (1,'LABORATORIOS ANDIFAR','A',NULL,'2233-4455');
INSERT INTO `laboratorio` VALUES (2,'DROGUERIA DEL PUEBLO','A','Col el hatilloasd','2233-3344');
INSERT INTO `laboratorio` VALUES (3,'DROGUERÍA NACIONAL','A',NULL,NULL);
INSERT INTO `laboratorio` VALUES (4,'LABORATORIOS FARSIMAN','A','col pinos',NULL);
INSERT INTO `laboratorio` VALUES (5,'LABORATORIOS FINLAY','A','col Kennedy','2223-7792');
INSERT INTO `laboratorio` VALUES (6,'LABORATORIOS FRANCELIA','A',NULL,NULL);
INSERT INTO `laboratorio` VALUES (7,'LABORATORIOS HENIE','A',NULL,NULL);
INSERT INTO `laboratorio` VALUES (8,'INFARMA','A',NULL,NULL);
INSERT INTO `laboratorio` VALUES (9,'LABORATORIOS KARNEL','A',NULL,NULL);
INSERT INTO `laboratorio` VALUES (10,'LABORATORIOS MC','A',NULL,NULL);
INSERT INTO `laboratorio` VALUES (11,'LABORATORIOS PHARMAÉTICA','A',NULL,NULL);
INSERT INTO `laboratorio` VALUES (12,'LABORATORIOS QUIMIFAR','A',NULL,NULL);
INSERT INTO `laboratorio` VALUES (28,'Lab Santi','A','col el pedregal','2233-4458');

--
-- Table structure for table `lote`
--

DROP TABLE IF EXISTS `lote`;
 
 
CREATE TABLE `lote` (
  `id_lote` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `lote` varchar(100) NOT NULL,
  `precio_costo_unidad` double NOT NULL,
  `precio_venta_unidad` double NOT NULL,
  `fecha_elaboracion` date NOT NULL,
  `fecha_vecimiento` date NOT NULL,
  `estado` varchar(1) NOT NULL,
  `existencia` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_lote`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `lote_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`)
);

--
-- Dumping data for table `lote`
--

INSERT INTO `lote` VALUES (1,1,'LOT8996',25.36,26.8,'2019-02-19','2019-03-20','A',1688);
INSERT INTO `lote` VALUES (2,1,'LOT-2017-05-23',985.06,1083.25,'2017-05-23','2019-10-06','A',1334);
INSERT INTO `lote` VALUES (3,1,'LOT-2017-07-04',456.29,460.91,'2017-07-04','2019-08-26','A',1219);
INSERT INTO `lote` VALUES (4,1,'LOT-2017-07-18',258.54,350.73,'2017-07-18','2020-03-04','A',1316);
INSERT INTO `lote` VALUES (5,2,'LOT-2017-08-16',190.07,216.79,'2017-08-16','2018-09-21','A',818);
INSERT INTO `lote` VALUES (6,4,'LOT-2018-01-12',658.49,734.5,'2018-01-12','2019-05-17','A',1137);
INSERT INTO `lote` VALUES (7,4,'LOT-2018-11-03',86.34,117.14,'2018-11-03','2021-06-24','A',72);
INSERT INTO `lote` VALUES (9,8,'LOT-2017-08-12',543.24,610.51,'2017-08-12','2020-06-24','A',1469);
INSERT INTO `lote` VALUES (10,9,'LOT-2017-03-14',504.23,514.24,'2017-03-14','2019-01-26','A',1255);
INSERT INTO `lote` VALUES (11,10,'LOT-2018-02-02',542.69,622.88,'2018-02-02','2020-04-07','A',1289);
INSERT INTO `lote` VALUES (12,11,'LOT-2018-06-25',5.11,84.07,'2018-06-25','2021-05-26','A',310);
INSERT INTO `lote` VALUES (13,11,'LOT-2018-07-15',546.28,616.36,'2018-07-15','2021-04-11','A',429);
INSERT INTO `lote` VALUES (14,11,'LOT-2017-12-17',609.08,693.09,'2017-12-17','2019-01-24','A',1197);
INSERT INTO `lote` VALUES (15,11,'LOT-2018-09-07',439.05,498.55,'2018-09-07','2019-11-03','A',193);
INSERT INTO `lote` VALUES (16,12,'LOT-2018-06-28',292.5,347.09,'2018-06-28','2021-01-09','A',294);
INSERT INTO `lote` VALUES (18,12,'LOT-2017-10-21',104.82,132.45,'2017-10-21','2020-10-13','A',878);
INSERT INTO `lote` VALUES (19,12,'LOT-2018-10-02',571.32,641.7,'2018-10-02','2021-03-16','A',90);
INSERT INTO `lote` VALUES (20,13,'LOT-2017-03-11',462.29,462.65,'2017-03-11','2018-11-12','A',406);
INSERT INTO `lote` VALUES (21,13,'LOT-2018-10-14',393.42,476.63,'2018-10-14','2021-09-13','A',75);
INSERT INTO `lote` VALUES (22,15,'LOT-2018-03-09',747.92,760.77,'2018-03-09','2019-03-25','A',579);
INSERT INTO `lote` VALUES (23,15,'LOT-2018-07-24',105.99,189.9,'2018-07-24','2020-12-08','A',138);
INSERT INTO `lote` VALUES (24,16,'LOT-2017-04-15',929.06,998.2,'2017-04-15','2018-08-01','A',483);
INSERT INTO `lote` VALUES (25,16,'LOT-2018-01-11',920.38,978.51,'2018-01-11','2020-01-02','A',1091);
INSERT INTO `lote` VALUES (26,17,'LOT-2018-12-07',730.74,815.54,'2018-12-07','2020-05-05','A',86);
INSERT INTO `lote` VALUES (27,19,'LOT-2017-11-15',391.59,447.71,'2017-11-15','2020-08-11','A',1037);
INSERT INTO `lote` VALUES (28,19,'LOT-2017-06-06',30.31,116.33,'2017-06-06','2020-01-14','A',1321);
INSERT INTO `lote` VALUES (29,19,'LOT-2018-01-14',214.08,226.07,'2018-01-14','2019-11-28','A',785);
INSERT INTO `lote` VALUES (30,19,'LOT-2018-01-27',110.77,154.43,'2018-01-27','2019-04-26','A',547);
INSERT INTO `lote` VALUES (31,20,'LOT-2018-06-03',492.71,517.89,'2018-06-03','2019-12-21','A',531);
INSERT INTO `lote` VALUES (32,20,'LOT-2017-08-10',1.13,7.14,'2017-08-10','2019-05-29','A',1427);
INSERT INTO `lote` VALUES (33,20,'LOT-2017-04-24',879.28,953.74,'2017-04-24','2019-03-11','A',1897);
INSERT INTO `lote` VALUES (34,21,'LOT-2018-07-18',268.72,305.37,'2018-07-18','2021-03-14','A',226);
INSERT INTO `lote` VALUES (35,22,'LOT-2017-10-02',876.1,882.13,'2017-10-02','2020-02-09','A',1338);
INSERT INTO `lote` VALUES (36,22,'LOT-2017-01-02',578.91,655.56,'2017-01-02','2019-11-25','A',2005);
INSERT INTO `lote` VALUES (37,22,'LOT-2017-09-23',701.66,743.51,'2017-09-23','2020-05-24','A',1267);
INSERT INTO `lote` VALUES (38,23,'LOT-2018-03-25',927.31,1010.07,'2018-03-25','2021-02-17','A',618);
INSERT INTO `lote` VALUES (39,24,'LOT-2017-12-04',939.37,982.76,'2017-12-04','2020-04-25','A',793);
INSERT INTO `lote` VALUES (40,24,'LOT-2017-06-19',286.11,325.5,'2017-06-19','2019-05-27','A',1239);
INSERT INTO `lote` VALUES (41,24,'LOT-2017-06-11',700.97,798.25,'2017-06-11','2019-07-03','A',1444);
INSERT INTO `lote` VALUES (42,24,'LOT-2018-04-19',897.96,997.19,'2018-04-19','2019-12-25','A',692);
INSERT INTO `lote` VALUES (43,25,'LOT-2017-01-08',128.89,130.9,'2017-01-08','2018-08-24','A',1510);
INSERT INTO `lote` VALUES (44,25,'LOT-2017-06-09',467.15,481.3,'2017-06-09','2018-11-22','A',1615);
INSERT INTO `lote` VALUES (45,25,'LOT-2018-05-17',203.23,227.28,'2018-05-17','2020-10-09','A',373);
INSERT INTO `lote` VALUES (46,26,'LOT-2017-04-13',163.26,243.8,'2017-04-13','2019-08-30','A',1278);
INSERT INTO `lote` VALUES (47,27,'LOT-2018-04-20',42.72,52.49,'2018-04-20','2019-05-23','A',793);
INSERT INTO `lote` VALUES (48,27,'LOT-2018-10-10',536.35,539.59,'2018-10-10','2020-04-24','A',208);
INSERT INTO `lote` VALUES (49,27,'LOT-2017-10-29',409.35,495.31,'2017-10-29','2020-08-22','A',1151);
INSERT INTO `lote` VALUES (50,27,'LOT-2017-07-30',261.22,264.29,'2017-07-30','2020-04-30','A',873);
INSERT INTO `lote` VALUES (51,29,'LOT-2017-07-22',971.24,1030.43,'2017-07-22','2018-11-06','A',633);
INSERT INTO `lote` VALUES (52,30,'LOT-2017-05-04',231.67,296.81,'2017-05-04','2019-10-26','A',1825);
INSERT INTO `lote` VALUES (53,30,'LOT-2018-03-31',865.41,899.2,'2018-03-31','2021-03-10','A',730);
INSERT INTO `lote` VALUES (54,30,'LOT-2017-07-22',120.44,204.01,'2017-07-22','2020-07-18','A',1333);
INSERT INTO `lote` VALUES (55,33,'LOT-2017-06-27',202.1,295.2,'2017-06-27','2018-12-29','A',206);
INSERT INTO `lote` VALUES (56,33,'LOT-2018-08-02',208.1,289.59,'2018-08-02','2019-12-13','A',310);
INSERT INTO `lote` VALUES (57,34,'LOT-2017-01-13',481.1,501.16,'2017-01-13','2018-05-18','A',1016);
INSERT INTO `lote` VALUES (58,34,'LOT-2017-08-28',110.91,175.17,'2017-08-28','2020-03-08','A',828);
INSERT INTO `lote` VALUES (59,34,'LOT-2017-09-30',673.99,684.41,'2017-09-30','2018-11-11','A',173);
INSERT INTO `lote` VALUES (60,34,'LOT-2018-10-20',997.67,1004.78,'2018-10-20','2021-09-11','A',73);
INSERT INTO `lote` VALUES (61,35,'LOT-2018-08-07',568.75,573.12,'2018-08-07','2021-06-14','A',308);
INSERT INTO `lote` VALUES (62,36,'LOT-2018-04-18',184.89,200.29,'2018-04-18','2020-02-13','A',533);
INSERT INTO `lote` VALUES (64,37,'LOT-2018-09-08',36.87,87.94,'2018-09-08','2021-05-12','A',167);
INSERT INTO `lote` VALUES (65,37,'LOT-2017-01-30',278.31,357.29,'2017-01-30','2018-12-09','A',429);
INSERT INTO `lote` VALUES (66,38,'LOT-2017-04-30',547.94,594.41,'2017-04-30','2020-02-25','A',1363);
INSERT INTO `lote` VALUES (67,38,'LOT-2017-07-22',144.05,196.82,'2017-07-22','2019-07-10','A',1334);
INSERT INTO `lote` VALUES (68,39,'LOT-2017-09-17',133.99,155.6,'2017-09-17','2019-01-10','A',848);
INSERT INTO `lote` VALUES (69,42,'LOT-2017-10-04',148.7,201.88,'2017-10-04','2019-10-13','A',1210);
INSERT INTO `lote` VALUES (71,43,'LOT-2017-06-20',370.61,405.01,'2017-06-20','2019-03-10','A',1800);
INSERT INTO `lote` VALUES (72,43,'LOT-2018-09-16',470.49,477.15,'2018-09-16','2020-11-28','A',93);
INSERT INTO `lote` VALUES (73,44,'LOT-2017-06-20',563.13,658.57,'2017-06-20','2020-02-12','A',1467);
INSERT INTO `lote` VALUES (74,44,'LOT-2018-10-04',416.81,431.05,'2018-10-04','2021-04-14','A',303);
INSERT INTO `lote` VALUES (75,45,'LOT-2017-10-30',526.18,531.93,'2017-10-30','2018-11-15','A',656);
INSERT INTO `lote` VALUES (76,45,'LOT-2017-09-30',477.67,544.61,'2017-09-30','2018-12-02','A',817);
INSERT INTO `lote` VALUES (77,46,'LOT-2017-07-21',204.12,293.91,'2017-07-21','2018-08-13','A',1041);
INSERT INTO `lote` VALUES (78,46,'LOT-2018-02-02',488.8,555.31,'2018-02-02','2021-01-29','A',933);
INSERT INTO `lote` VALUES (79,48,'LOT-2017-10-30',11.33,33.14,'2017-10-30','2020-10-21','A',1175);
INSERT INTO `lote` VALUES (80,48,'LOT-2018-03-22',586.86,616.52,'2018-03-22','2021-02-06','A',580);
INSERT INTO `lote` VALUES (81,48,'LOT-2018-06-16',803.59,847.72,'2018-06-16','2021-05-01','A',343);
INSERT INTO `lote` VALUES (82,50,'LOT-2017-05-18',58.84,60.85,'2017-05-18','2019-01-02','A',1524);
INSERT INTO `lote` VALUES (83,50,'LOT-2017-09-21',567.01,596.14,'2017-09-21','2020-06-29','A',1015);
INSERT INTO `lote` VALUES (84,50,'LOT-2017-01-21',602.85,630.78,'2017-01-21','2018-03-30','A',506);
INSERT INTO `lote` VALUES (85,50,'LOT-2017-10-24',41.34,75.22,'2017-10-24','2020-09-13','A',941);
INSERT INTO `lote` VALUES (86,51,'LOT-2017-12-31',120.22,171.01,'2017-12-31','2020-08-05','A',785);
INSERT INTO `lote` VALUES (87,51,'LOT-2017-07-18',293.45,353.4,'2017-07-18','2019-08-06','A',1492);
INSERT INTO `lote` VALUES (88,52,'LOT-2018-02-19',630.84,681.17,'2018-02-19','2019-10-29','A',809);
INSERT INTO `lote` VALUES (89,54,'LOT-2018-03-31',483.05,484.6,'2018-03-31','2020-01-13','A',743);
INSERT INTO `lote` VALUES (90,54,'LOT-2017-02-23',17.89,62.65,'2017-02-23','2019-01-12','A',1015);
INSERT INTO `lote` VALUES (91,54,'LOT-2017-02-05',950.49,1013.4,'2017-02-05','2020-01-31','A',1707);
INSERT INTO `lote` VALUES (92,54,'LOT-2018-03-28',87.16,172.99,'2018-03-28','2020-01-04','A',724);
INSERT INTO `lote` VALUES (93,55,'LOT-2018-01-24',653.25,718.77,'2018-01-24','2020-04-19','A',903);
INSERT INTO `lote` VALUES (94,55,'LOT-2018-08-25',733.03,736.53,'2018-08-25','2020-03-14','A',309);
INSERT INTO `lote` VALUES (95,55,'LOT-2018-06-19',185.78,213.67,'2018-06-19','2021-04-28','A',415);
INSERT INTO `lote` VALUES (96,55,'LOT-2017-10-04',308.05,398.01,'2017-10-04','2020-05-28','A',1092);
INSERT INTO `lote` VALUES (98,56,'LOT-2017-09-26',800.1,856.08,'2017-09-26','2018-10-12','A',332);
INSERT INTO `lote` VALUES (99,56,'LOT-2017-01-02',185.9,240.8,'2017-01-02','2018-02-15','A',1990);
INSERT INTO `lote` VALUES (100,56,'LOT-2018-09-03',482.32,556.8,'2018-09-03','2019-12-21','A',236);
INSERT INTO `lote` VALUES (101,57,'LOT-2017-01-29',250.43,327.67,'2017-01-29','2019-04-28','A',1521);
INSERT INTO `lote` VALUES (102,57,'LOT-2018-08-30',504.84,603.25,'2018-08-30','2020-03-26','A',378);
INSERT INTO `lote` VALUES (103,58,'LOT-2018-01-24',864.47,882.42,'2018-01-24','2019-08-22','A',811);
INSERT INTO `lote` VALUES (104,58,'LOT-2017-08-26',250.76,310.03,'2017-08-26','2019-04-17','A',1275);
INSERT INTO `lote` VALUES (105,58,'LOT-2018-09-01',612.03,710.76,'2018-09-01','2020-03-04','A',289);
INSERT INTO `lote` VALUES (106,58,'LOT-2017-07-26',715.1,747.7,'2017-07-26','2018-12-16','A',444);
INSERT INTO `lote` VALUES (108,59,'LOT-2017-01-30',581.46,639.3,'2017-01-30','2018-07-19','A',83);
INSERT INTO `lote` VALUES (109,59,'LOT-2017-08-30',864.29,923.68,'2017-08-30','2019-04-11','A',1116);
INSERT INTO `lote` VALUES (110,60,'LOT-2018-11-10',4.39,36.29,'2018-11-10','2021-08-31','A',259);
INSERT INTO `lote` VALUES (111,60,'LOT-2018-05-24',579.57,593.1,'2018-05-24','2020-03-16','A',368);
INSERT INTO `lote` VALUES (112,60,'LOT-2018-06-18',4.88,91.39,'2018-06-18','2020-06-19','A',208);
INSERT INTO `lote` VALUES (113,61,'LOT-2017-01-24',264.24,314.41,'2017-01-24','2019-05-09','A',1680);
INSERT INTO `lote` VALUES (114,61,'LOT-2017-03-24',456.55,551.2,'2017-03-24','2019-01-05','A',793);
INSERT INTO `lote` VALUES (115,61,'LOT-2017-09-28',814.84,889.62,'2017-09-28','2019-01-16','A',1088);
INSERT INTO `lote` VALUES (116,61,'LOT-2018-07-20',280.2,297.35,'2018-07-20','2021-04-08','A',328);
INSERT INTO `lote` VALUES (117,62,'LOT-2018-05-19',956.98,999.06,'2018-05-19','2019-09-01','A',343);
INSERT INTO `lote` VALUES (118,62,'LOT-2017-12-19',731.88,787,'2017-12-19','2020-04-10','A',1138);
INSERT INTO `lote` VALUES (119,62,'LOT-2018-11-04',480.46,526.61,'2018-11-04','2020-09-26','A',163);
INSERT INTO `lote` VALUES (120,62,'LOT-2018-06-23',316.99,365.01,'2018-06-23','2019-08-27','A',371);
INSERT INTO `lote` VALUES (121,63,'LOT-2018-10-22',960.39,1057.57,'2018-10-22','2020-03-07','A',253);
INSERT INTO `lote` VALUES (122,63,'LOT-2017-03-03',314.64,339.29,'2017-03-03','2019-06-08','A',2096);
INSERT INTO `lote` VALUES (123,63,'LOT-2018-09-29',26.67,47.52,'2018-09-29','2020-02-29','A',248);
INSERT INTO `lote` VALUES (124,63,'LOT-2017-10-30',612.82,638.55,'2017-10-30','2019-05-15','A',818);
INSERT INTO `lote` VALUES (125,64,'LOT-2017-10-22',461.81,540.53,'2017-10-22','2020-06-23','A',826);
INSERT INTO `lote` VALUES (127,64,'LOT-2018-01-03',41.24,75.04,'2018-01-03','2019-09-17','A',685);
INSERT INTO `lote` VALUES (128,65,'LOT-2018-09-07',534.51,570.24,'2018-09-07','2020-06-14','A',245);
INSERT INTO `lote` VALUES (129,65,'LOT-2017-09-28',205.19,288.46,'2017-09-28','2019-12-05','A',918);
INSERT INTO `lote` VALUES (130,66,'LOT-2017-01-28',620.77,631.95,'2017-01-28','2019-08-23','A',1767);
INSERT INTO `lote` VALUES (131,67,'LOT-2017-06-01',919.18,1009.89,'2017-06-01','2018-10-16','A',134);
INSERT INTO `lote` VALUES (132,67,'LOT-2018-08-18',535.87,558.7,'2018-08-18','2020-10-06','A',135);
INSERT INTO `lote` VALUES (133,67,'LOT-2018-01-14',963.33,1053.85,'2018-01-14','2019-08-26','A',1027);
INSERT INTO `lote` VALUES (134,68,'LOT-2017-07-18',38.99,132.2,'2017-07-18','2020-03-19','A',1305);
INSERT INTO `lote` VALUES (135,68,'LOT-2018-06-16',560.86,656.54,'2018-06-16','2020-03-10','A',310);
INSERT INTO `lote` VALUES (136,71,'LOT-2017-01-14',901.7,917.07,'2017-01-14','2019-02-07','A',2531);
INSERT INTO `lote` VALUES (137,72,'LOT-2017-10-04',598.08,664.2,'2017-10-04','2019-05-29','A',1041);
INSERT INTO `lote` VALUES (138,72,'LOT-2018-09-10',293.05,380.21,'2018-09-10','2021-06-22','A',81);
INSERT INTO `lote` VALUES (139,72,'LOT-2017-04-13',795.11,878.53,'2017-04-13','2019-05-08','A',1865);
INSERT INTO `lote` VALUES (140,72,'LOT-2017-12-26',123.41,202.84,'2017-12-26','2020-08-28','A',1082);
INSERT INTO `lote` VALUES (141,73,'LOT-2018-11-12',211.43,226.1,'2018-11-12','2021-07-10','A',58);
INSERT INTO `lote` VALUES (142,73,'LOT-2017-07-04',228.28,281.74,'2017-07-04','2019-02-25','A',1734);
INSERT INTO `lote` VALUES (143,73,'LOT-2018-04-21',835.26,875.24,'2018-04-21','2020-06-17','A',752);
INSERT INTO `lote` VALUES (144,73,'LOT-2017-02-19',981.53,1076.48,'2017-02-19','2018-08-19','A',1646);
INSERT INTO `lote` VALUES (145,74,'LOT-2018-11-15',290.3,305.6,'2018-11-15','2020-07-14','A',163);
INSERT INTO `lote` VALUES (146,74,'LOT-2018-05-06',485.59,529.48,'2018-05-06','2020-04-15','A',467);
INSERT INTO `lote` VALUES (147,74,'LOT-2017-06-06',993.08,1064.57,'2017-06-06','2019-09-09','A',1304);
INSERT INTO `lote` VALUES (148,74,'LOT-2018-11-16',349.2,393.85,'2018-11-16','2020-05-03','A',85);
INSERT INTO `lote` VALUES (149,76,'LOT-2018-01-05',697.12,708.47,'2018-01-05','2020-02-22','A',1040);
INSERT INTO `lote` VALUES (151,77,'LOT-2017-12-14',30.36,58.31,'2017-12-14','2019-08-09','A',712);
INSERT INTO `lote` VALUES (152,77,'LOT-2018-12-20',542.08,602.92,'2018-12-20','2020-01-11','A',171);
INSERT INTO `lote` VALUES (153,77,'LOT-2018-07-08',556.26,617.26,'2018-07-08','2019-11-29','A',451);
INSERT INTO `lote` VALUES (154,77,'LOT-2018-09-22',48.88,123.2,'2018-09-22','2021-04-11','A',126);
INSERT INTO `lote` VALUES (155,78,'LOT-2017-04-25',627.15,686.8,'2017-04-25','2019-02-04','A',1661);
INSERT INTO `lote` VALUES (156,78,'LOT-2017-06-04',944.28,974.82,'2017-06-04','2019-02-01','A',1109);
INSERT INTO `lote` VALUES (157,79,'LOT-2017-02-03',990.94,1053.8,'2017-02-03','2019-05-05','A',2005);
INSERT INTO `lote` VALUES (158,79,'LOT-2018-06-01',248.27,312.71,'2018-06-01','2021-01-28','A',658);
INSERT INTO `lote` VALUES (159,81,'LOT-2018-07-11',737.74,811.67,'2018-07-11','2020-10-22','A',298);
INSERT INTO `lote` VALUES (161,81,'LOT-2018-03-27',936.14,1032.41,'2018-03-27','2019-10-02','A',614);
INSERT INTO `lote` VALUES (162,82,'LOT-2017-08-28',671.96,682.67,'2017-08-28','2019-07-02','A',1588);
INSERT INTO `lote` VALUES (164,83,'LOT-2017-04-30',790.94,840.51,'2017-04-30','2018-12-08','A',187);
INSERT INTO `lote` VALUES (165,83,'LOT-2017-02-20',140.89,207.78,'2017-02-20','2018-08-19','A',875);
INSERT INTO `lote` VALUES (166,83,'LOT-2017-03-22',752.93,839.89,'2017-03-22','2018-07-07','A',932);
INSERT INTO `lote` VALUES (167,85,'LOT-2018-02-26',978.94,1005.03,'2018-02-26','2021-01-26','A',813);
INSERT INTO `lote` VALUES (168,85,'LOT-2017-02-27',49.52,146.04,'2017-02-27','2018-12-30','A',316);
INSERT INTO `lote` VALUES (169,85,'LOT-2017-06-11',346.31,441.25,'2017-06-11','2020-03-25','A',1454);
INSERT INTO `lote` VALUES (170,85,'LOT-2018-03-12',218.06,303.23,'2018-03-12','2020-09-16','A',630);
INSERT INTO `lote` VALUES (171,86,'LOT-2017-07-08',179.04,210.36,'2017-07-08','2020-04-30','A',1683);
INSERT INTO `lote` VALUES (172,86,'LOT-2018-06-08',273.42,351.47,'2018-06-08','2020-01-01','A',654);
INSERT INTO `lote` VALUES (173,86,'LOT-2017-04-03',30.83,47.54,'2017-04-03','2018-08-16','A',1195);
INSERT INTO `lote` VALUES (174,86,'LOT-2017-02-25',260.08,306.41,'2017-02-25','2019-10-19','A',1199);
INSERT INTO `lote` VALUES (175,87,'LOT-2017-06-15',938.28,962.63,'2017-06-15','2018-11-03','A',362);
INSERT INTO `lote` VALUES (176,88,'LOT-2017-12-31',174.6,218.61,'2017-12-31','2019-02-01','A',936);
INSERT INTO `lote` VALUES (177,88,'LOT-2018-06-10',938.29,967.89,'2018-06-10','2020-04-23','A',136);
INSERT INTO `lote` VALUES (178,88,'LOT-2018-08-30',890.83,902.05,'2018-08-30','2021-08-05','A',128);
INSERT INTO `lote` VALUES (179,88,'LOT-2018-05-13',769.39,808.9,'2018-05-13','2020-05-17','A',457);
INSERT INTO `lote` VALUES (180,90,'LOT-2018-07-21',407.39,411.18,'2018-07-21','2020-02-23','A',94);
INSERT INTO `lote` VALUES (181,90,'LOT-2018-08-28',4.2,58.79,'2018-08-28','2021-08-14','A',205);
INSERT INTO `lote` VALUES (182,90,'LOT-2018-04-02',38.66,76.87,'2018-04-02','2020-12-18','A',438);
INSERT INTO `lote` VALUES (183,91,'LOT-2018-12-10',735.51,752.08,'2018-12-10','2021-08-24','A',205);
INSERT INTO `lote` VALUES (184,91,'LOT-2017-02-03',905.64,973.95,'2017-02-03','2019-11-16','A',2006);
INSERT INTO `lote` VALUES (185,92,'LOT-2017-11-21',664.89,692.49,'2017-11-21','2020-03-28','A',1149);
INSERT INTO `lote` VALUES (187,93,'LOT-2017-11-20',154.14,251.59,'2017-11-20','2020-01-16','A',1294);
INSERT INTO `lote` VALUES (189,95,'LOT-2017-03-27',62.37,161.55,'2017-03-27','2020-01-11','A',1365);
INSERT INTO `lote` VALUES (190,95,'LOT-2017-02-19',831.3,841.5,'2017-02-19','2019-07-06','A',2104);
INSERT INTO `lote` VALUES (191,95,'LOT-2017-01-20',593.36,679.66,'2017-01-20','2018-02-03','A',1170);
INSERT INTO `lote` VALUES (192,96,'LOT-2018-11-06',602.19,628.12,'2018-11-06','2020-07-27','A',68);
INSERT INTO `lote` VALUES (193,96,'LOT-2018-04-03',750.17,809.68,'2018-04-03','2020-10-13','A',504);
INSERT INTO `lote` VALUES (194,97,'LOT-2017-07-20',238.71,257.36,'2017-07-20','2020-04-01','A',993);
INSERT INTO `lote` VALUES (195,97,'LOT-2018-10-09',704.06,794.38,'2018-10-09','2020-04-06','A',271);
INSERT INTO `lote` VALUES (196,98,'LOT-2017-10-09',134.87,175.05,'2017-10-09','2019-02-17','A',1115);
INSERT INTO `lote` VALUES (197,98,'LOT-2017-08-21',920.12,988.81,'2017-08-21','2019-08-13','A',1178);
INSERT INTO `lote` VALUES (198,98,'LOT-2017-08-19',197,206.93,'2017-08-19','2019-05-31','A',1384);
INSERT INTO `lote` VALUES (199,100,'LOT-2017-03-13',145.96,185.84,'2017-03-13','2019-02-18','A',1636);
INSERT INTO `lote` VALUES (200,100,'LOT-2017-06-05',573.36,672.43,'2017-06-05','2019-04-30','A',1799);
INSERT INTO `lote` VALUES (201,101,'LOT-2018-08-25',629.2,726.42,'2018-08-25','2020-04-08','A',410);
INSERT INTO `lote` VALUES (202,102,'LOT-2017-08-04',792.17,852.21,'2017-08-04','2018-08-27','A',406);
INSERT INTO `lote` VALUES (203,102,'LOT-2018-02-15',136.9,165.98,'2018-02-15','2019-07-18','A',979);
INSERT INTO `lote` VALUES (204,102,'LOT-2018-08-02',276.31,372.14,'2018-08-02','2019-12-31','A',204);
INSERT INTO `lote` VALUES (205,102,'LOT-2017-06-08',586.99,605.16,'2017-06-08','2019-09-19','A',1491);
INSERT INTO `lote` VALUES (206,104,'LOT-2018-03-01',769.52,776.84,'2018-03-01','2019-10-31','A',1050);
INSERT INTO `lote` VALUES (207,105,'LOT-2017-08-16',59.55,79.22,'2017-08-16','2020-06-08','A',1592);
INSERT INTO `lote` VALUES (208,105,'LOT-2018-01-26',468.09,472.44,'2018-01-26','2020-04-16','A',1069);
INSERT INTO `lote` VALUES (209,105,'LOT-2017-06-10',952.97,1033.7,'2017-06-10','2019-05-06','A',1558);
INSERT INTO `lote` VALUES (210,106,'LOT-2017-12-31',642.72,699.89,'2017-12-31','2020-12-10','A',852);
INSERT INTO `lote` VALUES (211,106,'LOT-2018-08-18',727.59,793.89,'2018-08-18','2020-04-06','A',416);
INSERT INTO `lote` VALUES (212,106,'LOT-2017-03-27',113.04,200.52,'2017-03-27','2018-07-25','A',1179);
INSERT INTO `lote` VALUES (214,107,'LOT-2017-10-17',910.84,926.86,'2017-10-17','2019-06-30','A',1043);
INSERT INTO `lote` VALUES (215,108,'LOT-2018-10-03',222.94,289.26,'2018-10-03','2020-11-08','A',335);
INSERT INTO `lote` VALUES (216,108,'LOT-2017-05-11',878.38,951.88,'2017-05-11','2018-06-10','A',584);
INSERT INTO `lote` VALUES (217,108,'LOT-2018-04-24',83.45,172.73,'2018-04-24','2020-07-19','A',658);
INSERT INTO `lote` VALUES (218,109,'LOT-2017-11-21',245.44,329.79,'2017-11-21','2020-10-20','A',1022);
INSERT INTO `lote` VALUES (219,109,'LOT-2018-11-20',638.56,643.33,'2018-11-20','2020-10-23','A',237);
INSERT INTO `lote` VALUES (220,109,'LOT-2017-11-20',716.93,786.19,'2017-11-20','2019-03-03','A',868);
INSERT INTO `lote` VALUES (221,109,'LOT-2018-10-05',50.36,94.9,'2018-10-05','2019-10-14','A',122);
INSERT INTO `lote` VALUES (222,112,'LOT-2018-07-09',760.75,798.8,'2018-07-09','2020-08-02','A',495);
INSERT INTO `lote` VALUES (224,114,'LOT-2017-10-23',900.3,936.86,'2017-10-23','2019-07-04','A',1054);
INSERT INTO `lote` VALUES (225,116,'LOT-2017-07-23',217.95,239.61,'2017-07-23','2020-02-10','A',1442);
INSERT INTO `lote` VALUES (226,117,'LOT-2018-02-06',234.63,295.57,'2018-02-06','2020-04-18','A',845);
INSERT INTO `lote` VALUES (227,117,'LOT-2018-07-29',226.89,237.84,'2018-07-29','2021-03-02','A',425);
INSERT INTO `lote` VALUES (228,117,'LOT-2017-06-29',660.61,675.92,'2017-06-29','2019-10-24','A',1330);
INSERT INTO `lote` VALUES (229,117,'LOT-2018-07-20',915.7,952.63,'2018-07-20','2020-09-17','A',290);
INSERT INTO `lote` VALUES (230,118,'LOT-2018-05-06',354.87,409.39,'2018-05-06','2020-02-20','A',682);
INSERT INTO `lote` VALUES (231,118,'LOT-2017-07-21',72.87,160.52,'2017-07-21','2020-01-03','A',1600);
INSERT INTO `lote` VALUES (232,118,'LOT-2018-03-26',455.3,497,'2018-03-26','2020-01-05','A',394);
INSERT INTO `lote` VALUES (233,119,'LOT-2018-02-10',19.04,65.78,'2018-02-10','2021-01-29','A',612);
INSERT INTO `lote` VALUES (234,120,'LOT-2018-01-23',709.22,762.72,'2018-01-23','2020-11-27','A',768);
INSERT INTO `lote` VALUES (235,121,'LOT-2018-08-23',93.88,185.54,'2018-08-23','2020-03-11','A',350);
INSERT INTO `lote` VALUES (236,121,'LOT-2017-01-03',852.2,925.95,'2017-01-03','2018-03-24','A',40);
INSERT INTO `lote` VALUES (237,122,'LOT-2017-04-19',282.98,323.74,'2017-04-19','2019-03-07','A',1813);
INSERT INTO `lote` VALUES (238,122,'LOT-2017-10-18',344.73,408.02,'2017-10-18','2019-01-28','A',1381);
INSERT INTO `lote` VALUES (239,122,'LOT-2017-12-30',35.56,90.45,'2017-12-30','2019-04-19','A',916);
INSERT INTO `lote` VALUES (240,123,'LOT-2018-11-22',882.25,978.72,'2018-11-22','2020-10-13','A',270);
INSERT INTO `lote` VALUES (241,123,'LOT-2017-03-02',679.36,768.95,'2017-03-02','2019-06-03','A',1416);
INSERT INTO `lote` VALUES (242,123,'LOT-2017-06-24',665.92,707.98,'2017-06-24','2020-03-16','A',1442);
INSERT INTO `lote` VALUES (243,123,'LOT-2018-02-27',82.29,148.99,'2018-02-27','2020-02-05','A',598);
INSERT INTO `lote` VALUES (244,124,'LOT-2017-01-15',245.52,336.6,'2017-01-15','2019-02-08','A',2269);
INSERT INTO `lote` VALUES (245,125,'LOT-2018-01-04',202.9,256.05,'2018-01-04','2019-07-02','A',759);
INSERT INTO `lote` VALUES (246,125,'LOT-2017-05-20',509.76,594.21,'2017-05-20','2019-01-07','A',1635);
INSERT INTO `lote` VALUES (247,125,'LOT-2017-08-04',676.36,732.55,'2017-08-04','2019-05-29','A',1320);
INSERT INTO `lote` VALUES (248,125,'LOT-2018-04-09',438.63,513.15,'2018-04-09','2020-07-05','A',623);
INSERT INTO `lote` VALUES (249,126,'LOT-2018-06-22',731.64,821.87,'2018-06-22','2019-08-04','A',254);
INSERT INTO `lote` VALUES (250,126,'LOT-2018-04-21',328.91,415.18,'2018-04-21','2019-12-26','A',607);
INSERT INTO `lote` VALUES (251,127,'LOT-2017-08-23',300.06,344.36,'2017-08-23','2020-03-07','A',1492);
INSERT INTO `lote` VALUES (252,127,'LOT-2017-03-19',461.11,474,'2017-03-19','2018-08-07','A',1628);
INSERT INTO `lote` VALUES (253,127,'LOT-2018-03-16',218.02,237.29,'2018-03-16','2020-06-14','A',766);
INSERT INTO `lote` VALUES (254,128,'LOT-2018-11-11',937.07,949.95,'2018-11-11','2021-05-25','A',55);
INSERT INTO `lote` VALUES (255,128,'LOT-2018-06-04',399.3,464.44,'2018-06-04','2019-07-30','A',393);
INSERT INTO `lote` VALUES (256,129,'LOT-2017-03-03',293.48,329.18,'2017-03-03','2020-02-11','A',1815);
INSERT INTO `lote` VALUES (257,129,'LOT-2018-10-09',567.02,604.53,'2018-10-09','2020-11-24','A',88);
INSERT INTO `lote` VALUES (258,130,'LOT-2017-05-12',858.7,911.89,'2017-05-12','2018-06-18','A',632);
INSERT INTO `lote` VALUES (259,130,'LOT-2018-09-04',182.33,223.24,'2018-09-04','2020-08-12','A',403);
INSERT INTO `lote` VALUES (260,130,'LOT-2018-02-01',247.72,296.98,'2018-02-01','2021-01-17','A',1099);
INSERT INTO `lote` VALUES (261,131,'LOT-2018-02-22',436.31,524.44,'2018-02-22','2020-09-11','A',536);
INSERT INTO `lote` VALUES (262,131,'LOT-2018-09-24',338.18,370.77,'2018-09-24','2021-08-13','A',93);
INSERT INTO `lote` VALUES (263,132,'LOT-2017-01-22',859.89,948.75,'2017-01-22','2019-03-11','A',1609);
INSERT INTO `lote` VALUES (264,133,'LOT-2017-04-01',731.11,767.38,'2017-04-01','2019-02-17','A',1529);
INSERT INTO `lote` VALUES (265,133,'LOT-2017-09-18',697.13,739.82,'2017-09-18','2020-05-25','A',1236);
INSERT INTO `lote` VALUES (266,134,'LOT-2018-09-08',185.81,201.29,'2018-09-08','2019-09-08','A',137);
INSERT INTO `lote` VALUES (267,134,'LOT-2018-02-15',379.83,464.57,'2018-02-15','2020-12-06','A',527);
INSERT INTO `lote` VALUES (268,135,'LOT-2018-10-20',185.93,261.8,'2018-10-20','2021-10-06','A',149);
INSERT INTO `lote` VALUES (269,135,'LOT-2018-06-07',459.83,528.19,'2018-06-07','2019-08-22','A',289);
INSERT INTO `lote` VALUES (270,135,'LOT-2018-02-17',512.11,541.77,'2018-02-17','2019-03-25','A',865);
INSERT INTO `lote` VALUES (271,136,'LOT-2017-04-05',33.08,68.07,'2017-04-05','2018-12-06','A',270);
INSERT INTO `lote` VALUES (272,136,'LOT-2017-01-08',253.94,347.24,'2017-01-08','2018-08-20','A',126);
INSERT INTO `lote` VALUES (273,137,'LOT-2017-08-16',118.58,193.15,'2017-08-16','2020-03-23','A',1316);
INSERT INTO `lote` VALUES (274,137,'LOT-2018-04-29',667.78,763.86,'2018-04-29','2021-02-26','A',605);
INSERT INTO `lote` VALUES (275,137,'LOT-2018-12-14',901.07,939.04,'2018-12-14','2021-12-04','A',338);
INSERT INTO `lote` VALUES (276,137,'LOT-2018-04-18',504.48,521.63,'2018-04-18','2019-06-11','A',360);
INSERT INTO `lote` VALUES (277,138,'LOT-2018-12-18',118.16,174.52,'2018-12-18','2021-05-04','A',230);
INSERT INTO `lote` VALUES (278,138,'LOT-2018-11-10',452.02,474.5,'2018-11-10','2021-03-01','A',56);
INSERT INTO `lote` VALUES (279,138,'LOT-2017-08-17',195.22,196.65,'2017-08-17','2019-08-21','A',1215);
INSERT INTO `lote` VALUES (280,141,'LOT-2017-06-23',796.54,819.78,'2017-06-23','2020-01-24','A',1624);
INSERT INTO `lote` VALUES (281,141,'LOT-2018-02-12',704.74,752.61,'2018-02-12','2019-11-25','A',921);
INSERT INTO `lote` VALUES (282,141,'LOT-2018-03-02',608.71,665.09,'2018-03-02','2020-04-09','A',673);
INSERT INTO `lote` VALUES (283,142,'LOT-2017-02-03',333.17,421.13,'2017-02-03','2018-02-25','A',346);
INSERT INTO `lote` VALUES (285,143,'LOT-2017-11-27',524.79,552.44,'2017-11-27','2020-07-27','A',1023);
INSERT INTO `lote` VALUES (286,143,'LOT-2018-02-18',483.62,526.35,'2018-02-18','2019-03-26','A',1021);
INSERT INTO `lote` VALUES (287,143,'LOT-2017-11-02',156.7,231.47,'2017-11-02','2019-06-16','A',1180);
INSERT INTO `lote` VALUES (288,144,'LOT-2018-01-13',70.82,77.41,'2018-01-13','2020-04-28','A',1111);
INSERT INTO `lote` VALUES (290,144,'LOT-2017-03-03',522.22,561.89,'2017-03-03','2019-05-19','A',1137);
INSERT INTO `lote` VALUES (291,144,'LOT-2017-03-26',166.49,209.82,'2017-03-26','2019-02-06','A',1292);
INSERT INTO `lote` VALUES (292,145,'LOT-2017-03-10',499.86,556.6,'2017-03-10','2019-05-26','A',1740);
INSERT INTO `lote` VALUES (293,145,'LOT-2018-02-24',181.29,207.41,'2018-02-24','2019-04-17','A',826);
INSERT INTO `lote` VALUES (294,145,'LOT-2017-10-02',932.83,967.48,'2017-10-02','2020-08-15','A',1316);
INSERT INTO `lote` VALUES (295,145,'LOT-2018-07-12',926.71,965.72,'2018-07-12','2019-09-10','A',505);
INSERT INTO `lote` VALUES (296,146,'LOT-2017-05-04',425.14,464.72,'2017-05-04','2019-11-27','A',1627);
INSERT INTO `lote` VALUES (297,146,'LOT-2018-03-23',635.02,728.26,'2018-03-23','2020-01-11','A',593);
INSERT INTO `lote` VALUES (298,146,'LOT-2018-01-13',481.05,558.32,'2018-01-13','2020-05-22','A',873);
INSERT INTO `lote` VALUES (299,147,'LOT-2017-08-27',652.08,697.14,'2017-08-27','2019-05-12','A',1555);
INSERT INTO `lote` VALUES (300,147,'LOT-2018-10-22',618.57,621.82,'2018-10-22','2020-12-14','A',190);
INSERT INTO `lote` VALUES (301,147,'LOT-2017-03-30',42.75,121.35,'2017-03-30','2019-06-01','A',1559);
INSERT INTO `lote` VALUES (302,147,'LOT-2018-06-22',764.84,785.85,'2018-06-22','2021-05-26','A',412);
INSERT INTO `lote` VALUES (303,150,'LOT-2017-05-01',130.16,195.49,'2017-05-01','2020-01-07','A',1581);
INSERT INTO `lote` VALUES (304,150,'LOT-2018-03-18',723.68,794.45,'2018-03-18','2019-12-03','A',608);
INSERT INTO `lote` VALUES (305,150,'LOT-2018-07-24',391.48,409.3,'2018-07-24','2020-09-23','A',230);
INSERT INTO `lote` VALUES (306,150,'LOT-2017-01-29',840.81,928.12,'2017-01-29','2018-08-01','A',875);
INSERT INTO `lote` VALUES (307,151,'LOT-2018-02-17',343.58,371.18,'2018-02-17','2019-11-27','A',983);
INSERT INTO `lote` VALUES (308,151,'LOT-2018-04-20',150.48,218.91,'2018-04-20','2020-06-10','A',862);
INSERT INTO `lote` VALUES (309,151,'LOT-2018-09-18',21.67,66.37,'2018-09-18','2021-05-03','A',316);
INSERT INTO `lote` VALUES (310,151,'LOT-2018-04-08',321.28,321.29,'2018-04-08','2019-05-21','A',500);
INSERT INTO `lote` VALUES (311,153,'LOT-2018-05-11',122.73,174.7,'2018-05-11','2021-03-29','A',687);
INSERT INTO `lote` VALUES (312,153,'LOT-2017-09-26',397.68,407.82,'2017-09-26','2019-01-30','A',1211);
INSERT INTO `lote` VALUES (313,153,'LOT-2018-06-09',539.9,634.72,'2018-06-09','2021-03-26','A',483);
INSERT INTO `lote` VALUES (315,156,'LOT-2018-03-19',659.19,698,'2018-03-19','2019-06-17','A',722);
INSERT INTO `lote` VALUES (317,156,'LOT-2018-06-24',82.55,159.39,'2018-06-24','2020-03-30','A',496);
INSERT INTO `lote` VALUES (318,157,'LOT-2018-01-24',264.89,287.18,'2018-01-24','2019-04-19','A',873);
INSERT INTO `lote` VALUES (319,157,'LOT-2018-09-14',998.11,1050.68,'2018-09-14','2020-02-10','A',382);
INSERT INTO `lote` VALUES (320,157,'LOT-2017-08-06',375.99,420.42,'2017-08-06','2019-10-09','A',1411);
INSERT INTO `lote` VALUES (321,158,'LOT-2017-08-02',677.13,717.87,'2017-08-02','2019-05-05','A',1353);
INSERT INTO `lote` VALUES (322,158,'LOT-2017-03-19',34.51,55.33,'2017-03-19','2018-06-20','A',1587);
INSERT INTO `lote` VALUES (323,158,'LOT-2017-11-02',197.9,220.4,'2017-11-02','2020-04-18','A',1351);
INSERT INTO `lote` VALUES (324,159,'LOT-2017-04-16',571.22,605.4,'2017-04-16','2020-01-10','A',1654);
INSERT INTO `lote` VALUES (325,160,'LOT-2017-05-13',364.09,370.52,'2017-05-13','2020-01-16','A',2061);
INSERT INTO `lote` VALUES (327,160,'LOT-2017-12-29',345.39,381.44,'2017-12-29','2020-02-02','A',963);
INSERT INTO `lote` VALUES (328,160,'LOT-2018-08-16',722.15,768.4,'2018-08-16','2021-05-27','A',275);
INSERT INTO `lote` VALUES (329,161,'LOT-2018-04-10',426.52,458.94,'2018-04-10','2021-01-25','A',326);
INSERT INTO `lote` VALUES (330,161,'LOT-2017-05-27',235.56,249.51,'2017-05-27','2020-04-03','A',1282);
INSERT INTO `lote` VALUES (331,162,'LOT-2017-06-13',554.46,573.99,'2017-06-13','2019-05-23','A',1314);
INSERT INTO `lote` VALUES (332,162,'LOT-2018-10-01',936.02,1035.79,'2018-10-01','2019-12-18','A',284);
INSERT INTO `lote` VALUES (333,162,'LOT-2017-03-27',35.82,91.71,'2017-03-27','2019-04-15','A',1828);
INSERT INTO `lote` VALUES (334,163,'LOT-2018-06-16',995.42,1053.41,'2018-06-16','2019-09-22','A',498);
INSERT INTO `lote` VALUES (335,163,'LOT-2018-10-05',901.18,990.13,'2018-10-05','2021-04-27','A',261);
INSERT INTO `lote` VALUES (336,163,'LOT-2017-12-01',13.27,98.62,'2017-12-01','2019-09-08','A',1027);
INSERT INTO `lote` VALUES (337,163,'LOT-2017-01-10',673.44,721.94,'2017-01-10','2018-07-28','A',1298);
INSERT INTO `lote` VALUES (338,164,'LOT-2017-03-29',393.25,395.05,'2017-03-29','2019-12-23','A',1720);
INSERT INTO `lote` VALUES (339,165,'LOT-2018-05-27',823.64,912.73,'2018-05-27','2020-10-06','A',578);
INSERT INTO `lote` VALUES (340,165,'LOT-2017-11-16',949.8,953.32,'2017-11-16','2020-04-11','A',817);
INSERT INTO `lote` VALUES (341,166,'LOT-2017-01-25',647.64,704.34,'2017-01-25','2018-04-12','A',341);
INSERT INTO `lote` VALUES (342,166,'LOT-2017-12-04',213.41,219.77,'2017-12-04','2019-05-17','A',1154);
INSERT INTO `lote` VALUES (343,166,'LOT-2017-07-09',749.19,806.32,'2017-07-09','2019-04-16','A',1808);
INSERT INTO `lote` VALUES (345,167,'LOT-2017-05-18',520.39,542.7,'2017-05-18','2019-12-12','A',1320);
INSERT INTO `lote` VALUES (346,169,'LOT-2017-09-17',678.11,738.88,'2017-09-17','2019-07-16','A',920);
INSERT INTO `lote` VALUES (347,169,'LOT-2018-10-08',674.17,729.67,'2018-10-08','2020-08-28','A',70);
INSERT INTO `lote` VALUES (348,170,'LOT-2018-03-10',597.08,654.71,'2018-03-10','2020-02-01','A',1133);
INSERT INTO `lote` VALUES (349,170,'LOT-2018-07-04',759.25,829.37,'2018-07-04','2020-10-12','A',456);
INSERT INTO `lote` VALUES (350,171,'LOT-2018-11-25',435.14,465.08,'2018-11-25','2020-07-20','A',117);
INSERT INTO `lote` VALUES (351,171,'LOT-2017-05-07',220.32,276.37,'2017-05-07','2019-06-30','A',1293);
INSERT INTO `lote` VALUES (352,172,'LOT-2017-11-07',823.66,886.86,'2017-11-07','2019-12-05','A',824);
INSERT INTO `lote` VALUES (353,172,'LOT-2018-04-25',233.53,284.32,'2018-04-25','2019-12-21','A',811);
INSERT INTO `lote` VALUES (355,172,'LOT-2018-09-30',83.65,94.85,'2018-09-30','2021-05-08','A',216);
INSERT INTO `lote` VALUES (356,177,'LOT-2017-05-07',79.82,105.37,'2017-05-07','2019-11-11','A',1932);
INSERT INTO `lote` VALUES (357,177,'LOT-2018-01-05',904.24,998.22,'2018-01-05','2020-10-23','A',1048);
INSERT INTO `lote` VALUES (358,177,'LOT-2018-05-12',13.48,91.4,'2018-05-12','2020-05-02','A',457);
INSERT INTO `lote` VALUES (359,178,'LOT-2017-05-14',407.74,445.2,'2017-05-14','2019-01-06','A',1019);
INSERT INTO `lote` VALUES (360,179,'LOT-2018-07-27',991.16,993.22,'2018-07-27','2021-05-17','A',419);
INSERT INTO `lote` VALUES (361,179,'LOT-2018-02-18',470.81,521.38,'2018-02-18','2020-12-15','A',658);
INSERT INTO `lote` VALUES (362,179,'LOT-2018-09-24',936.83,1013.98,'2018-09-24','2021-05-09','A',159);
INSERT INTO `lote` VALUES (363,179,'LOT-2017-11-08',160.25,167.85,'2017-11-08','2019-11-29','A',1152);
INSERT INTO `lote` VALUES (364,180,'LOT-2017-05-21',165.3,218.65,'2017-05-21','2018-07-03','A',939);
INSERT INTO `lote` VALUES (365,180,'LOT-2018-06-13',545.94,581.44,'2018-06-13','2019-10-21','A',219);
INSERT INTO `lote` VALUES (366,180,'LOT-2018-10-22',757.05,777.9,'2018-10-22','2020-08-26','A',241);
INSERT INTO `lote` VALUES (367,181,'LOT-2017-05-31',791.17,880.98,'2017-05-31','2020-01-27','A',1484);
INSERT INTO `lote` VALUES (368,181,'LOT-2018-04-28',218.68,314.26,'2018-04-28','2020-12-28','A',949);
INSERT INTO `lote` VALUES (369,181,'LOT-2018-09-01',719.28,742.83,'2018-09-01','2021-06-12','A',405);
INSERT INTO `lote` VALUES (370,182,'LOT-2018-08-13',478.88,511.76,'2018-08-13','2021-02-06','A',83);
INSERT INTO `lote` VALUES (371,182,'LOT-2017-10-15',115.84,196.27,'2017-10-15','2020-09-07','A',1415);
INSERT INTO `lote` VALUES (372,183,'LOT-2018-01-01',993.86,1026.09,'2018-01-01','2020-06-10','A',960);
INSERT INTO `lote` VALUES (373,184,'LOT-2018-04-06',400.8,468.11,'2018-04-06','2019-09-14','A',707);
INSERT INTO `lote` VALUES (374,184,'LOT-2017-10-23',955.36,1014.53,'2017-10-23','2019-08-29','A',667);
INSERT INTO `lote` VALUES (375,184,'LOT-2017-07-25',385.9,431.29,'2017-07-25','2020-04-22','A',1349);
INSERT INTO `lote` VALUES (376,185,'LOT-2018-07-27',47.55,127.06,'2018-07-27','2020-03-22','A',250);
INSERT INTO `lote` VALUES (377,185,'LOT-2018-05-16',783.29,836.45,'2018-05-16','2020-03-18','A',615);
INSERT INTO `lote` VALUES (378,185,'LOT-2017-09-10',182.59,209.94,'2017-09-10','2020-02-11','A',1252);
INSERT INTO `lote` VALUES (379,186,'LOT-2017-02-19',197.16,230.39,'2017-02-19','2018-07-07','A',1080);
INSERT INTO `lote` VALUES (380,186,'LOT-2017-08-18',913.93,1008.18,'2017-08-18','2019-10-30','A',1125);
INSERT INTO `lote` VALUES (381,186,'LOT-2017-06-09',641.67,714.24,'2017-06-09','2020-03-26','A',1724);
INSERT INTO `lote` VALUES (382,188,'LOT-2018-11-07',583.33,681.67,'2018-11-07','2019-11-23','A',91);
INSERT INTO `lote` VALUES (383,189,'LOT-2018-11-05',856.88,938.2,'2018-11-05','2020-05-10','A',249);
INSERT INTO `lote` VALUES (384,189,'LOT-2018-07-29',653.6,702.37,'2018-07-29','2021-05-13','A',205);
INSERT INTO `lote` VALUES (385,189,'LOT-2018-05-06',982.29,1055.98,'2018-05-06','2021-04-07','A',932);
INSERT INTO `lote` VALUES (386,191,'LOT-2018-01-21',815.54,821.2,'2018-01-21','2019-01-28','A',1147);
INSERT INTO `lote` VALUES (387,191,'LOT-2018-09-16',612.01,620.58,'2018-09-16','2020-05-27','A',188);
INSERT INTO `lote` VALUES (388,191,'LOT-2018-11-12',412.26,445.2,'2018-11-12','2020-08-30','A',70);
INSERT INTO `lote` VALUES (389,191,'LOT-2018-01-31',104.98,113.91,'2018-01-31','2019-03-03','A',650);
INSERT INTO `lote` VALUES (390,192,'LOT-2017-10-27',878.44,916.39,'2017-10-27','2019-02-23','A',1075);
INSERT INTO `lote` VALUES (391,192,'LOT-2017-07-30',212.43,231.17,'2017-07-30','2019-05-22','A',1233);
INSERT INTO `lote` VALUES (392,192,'LOT-2017-04-22',728.11,734.41,'2017-04-22','2019-12-06','A',1304);
INSERT INTO `lote` VALUES (393,193,'LOT-2017-03-08',35.09,77.81,'2017-03-08','2018-09-13','A',1601);
INSERT INTO `lote` VALUES (394,195,'LOT-2018-07-22',123.83,133.76,'2018-07-22','2020-04-30','A',290);
INSERT INTO `lote` VALUES (395,195,'LOT-2017-08-24',604.25,622.21,'2017-08-24','2020-02-17','A',1358);
INSERT INTO `lote` VALUES (396,195,'LOT-2017-02-15',954.54,1027.28,'2017-02-15','2018-08-18','A',752);
INSERT INTO `lote` VALUES (397,195,'LOT-2017-07-24',256,268.22,'2017-07-24','2020-07-17','A',1613);
INSERT INTO `lote` VALUES (398,196,'LOT-2017-03-21',208.15,232.42,'2017-03-21','2018-04-18','A',1205);
INSERT INTO `lote` VALUES (399,196,'LOT-2018-04-29',288.59,317.47,'2018-04-29','2020-12-07','A',719);
INSERT INTO `lote` VALUES (400,197,'LOT-2018-03-16',804.29,844.4,'2018-03-16','2021-01-29','A',721);
INSERT INTO `lote` VALUES (401,197,'LOT-2018-07-13',851.19,883.12,'2018-07-13','2020-07-09','A',458);
INSERT INTO `lote` VALUES (402,197,'LOT-2018-03-11',210.96,264.76,'2018-03-11','2019-07-03','A',595);
INSERT INTO `lote` VALUES (403,197,'LOT-2017-10-29',582.7,600.59,'2017-10-29','2020-03-04','A',1215);
INSERT INTO `lote` VALUES (404,198,'LOT-2017-06-14',886.57,956.82,'2017-06-14','2019-02-21','A',1270);
INSERT INTO `lote` VALUES (405,198,'LOT-2017-02-02',300.66,321.65,'2017-02-02','2018-09-12','A',565);
INSERT INTO `lote` VALUES (406,1,'paracetamol lot1',200,200,'2018-02-02','2018-02-02','A',0);
INSERT INTO `lote` VALUES (407,1,'paracetamol lot1',200,200,'2018-02-02','2018-02-02','A',0);
INSERT INTO `lote` VALUES (408,1,'paracetamol lot1',200,200,'2018-02-02','2018-02-02','A',0);
INSERT INTO `lote` VALUES (409,1,'paracetamol lot1',200,200,'2018-02-02','2018-02-02','A',0);
INSERT INTO `lote` VALUES (410,1,'paracetamol lot1',200,200,'2018-02-02','2018-02-02','A',0);
INSERT INTO `lote` VALUES (411,1,'S',200,200,'2018-02-02','2018-02-02','A',0);
INSERT INTO `lote` VALUES (412,1,'paracetamol lot1',200,200,'2018-02-02','2018-02-02','A',0);
INSERT INTO `lote` VALUES (414,1,'ABCDE2424',200,200,'2018-02-02','2018-02-02','A',0);
INSERT INTO `lote` VALUES (415,1,'lot01',100,200,'2018-02-02','2019-03-02','A',0);
INSERT INTO `lote` VALUES (416,1,'lot01',200,300,'2019-02-02','2019-03-02','A',1);
INSERT INTO `lote` VALUES (417,1,'lot01',200,300,'2019-02-02','2019-03-02','A',12);
INSERT INTO `lote` VALUES (418,1,'lot01',400,500,'2019-02-02','2019-04-02','A',1);
INSERT INTO `lote` VALUES (419,1,'lot01',400,500,'2019-02-02','2019-04-02','A',3);
INSERT INTO `lote` VALUES (420,1,'lots01',6,500,'2018-02-02','2019-03-02','A',32);
INSERT INTO `lote` VALUES (421,1,'lots01',6,500,'2018-02-02','2019-03-02','A',32);
INSERT INTO `lote` VALUES (422,1,'LOT12346',25.36,26.8,'2019-02-19','2019-03-20','A',1);
INSERT INTO `lote` VALUES (423,1,'LOT12346',25.36,26.8,'2019-02-19','2019-03-20','A',1);
INSERT INTO `lote` VALUES (424,2,'lots01',6,500,'2018-02-02','2019-03-02','A',32);
INSERT INTO `lote` VALUES (425,2,'SP1515',4,5,'2019-02-05','2019-03-10','A',5);
INSERT INTO `lote` VALUES (426,4,'Lot0101',5,8,'2019-02-02','2019-03-03','A',7);
INSERT INTO `lote` VALUES (427,8,'LOT010101',222,3333,'2019-02-02','2020-03-03','A',100);
INSERT INTO `lote` VALUES (428,4,'lottt',150,200,'2010-02-02','2020-03-03','A',100);
INSERT INTO `lote` VALUES (429,1,'lote0202002',200,700,'2010-02-02','2020-03-03','A',200);
INSERT INTO `lote` VALUES (430,9,'fasdfasdfasdf',9,88,'2010-02-02','2020-03-03','A',200);
INSERT INTO `lote` VALUES (431,12,'lotote02-09',9,88,'2010-02-02','2020-03-03','A',200);
INSERT INTO `lote` VALUES (432,8,'E-LLOTE',200,999,'2010-01-01','2020-02-02','A',200);
INSERT INTO `lote` VALUES (433,2,'ELLOT09',200,988,'2010-02-02','2020-02-02','A',200);
INSERT INTO `lote` VALUES (434,8,'lotu',200,999,'2010-02-02','2020-03-05','A',200);
INSERT INTO `lote` VALUES (435,8,'lot09-09-98',200,400,'2010-02-02','2019-10-10','A',40);
INSERT INTO `lote` VALUES (436,10,'SAPO',20,21.1,'2019-02-09','2019-03-10','A',3);
INSERT INTO `lote` VALUES (437,11,'SAO',20,22,'2019-02-10','2019-03-10','A',1);
INSERT INTO `lote` VALUES (438,1,'aaaLorem',10,100,'2015-01-01','2019-07-01','A',10);
INSERT INTO `lote` VALUES (439,2,'AAbb',10,100,'2015-01-01','2020-01-01','A',20);
INSERT INTO `lote` VALUES (440,11,'AACCA',10,100,'1995-01-01','2019-10-10','A',200);
INSERT INTO `lote` VALUES (441,1,'aaBurrito',200,300,'2015-01-01','2020-01-01','A',200);
INSERT INTO `lote` VALUES (442,2,'aaaBurrito2',100,1010,'2010-01-01','2200-01-01','I',200);
INSERT INTO `lote` VALUES (443,11,'aaChurrito',100,2000,'1995-01-01','2030-01-01','A',100);
INSERT INTO `lote` VALUES (444,11,'aaChurrito2',100,2000,'1995-01-01','2030-01-01','A',100);
INSERT INTO `lote` VALUES (445,11,'NuevoLote2',100,120,'1995-01-01','2020-11-01','A',200);
INSERT INTO `lote` VALUES (446,1,'aaNombre',200,300,'2015-01-01','2020-01-01','A',2200);
INSERT INTO `lote` VALUES (447,4,'LoteParacetamol',200,1000,'2000-11-01','2020-01-01','A',100);
INSERT INTO `lote` VALUES (448,2,'LOT123467',200,300,'2019-02-19','2019-03-20','A',200);
INSERT INTO `lote` VALUES (449,12,'aaqqqqq',200,300,'2015-01-01','2020-01-01','A',200);
INSERT INTO `lote` VALUES (450,13,'aasqwqwq',200,300,'2015-01-01','2020-01-01','A',200);
INSERT INTO `lote` VALUES (451,29,'aaaqqqqqqqq',100,200,'2015-01-01','2020-01-01','A',200);
INSERT INTO `lote` VALUES (452,4,'LOT16',20,20.89,'2019-02-25','2019-03-24','A',1);
INSERT INTO `lote` VALUES (453,1,'LOT8989',25.36,26.8,'2019-02-19','2019-03-20','A',1);
INSERT INTO `lote` VALUES (454,4,'LOT16898966',20,20.89,'2019-02-25','2019-03-24','A',1);
INSERT INTO `lote` VALUES (455,1,'LOT6666',25.36,26.8,'2019-02-19','2019-03-20','A',1);
INSERT INTO `lote` VALUES (456,1,'LOT6',25.36,26.8,'2019-02-19','2019-03-20','A',1);
INSERT INTO `lote` VALUES (457,1,'LOT69',25.36,26.8,'2019-02-19','2019-03-20','A',1);
INSERT INTO `lote` VALUES (458,2,'lots016',6,500,'2018-02-02','2019-03-02','A',32);
INSERT INTO `lote` VALUES (459,2,'lo89k6',6,500,'2018-02-02','2019-03-02','A',32);
INSERT INTO `lote` VALUES (460,1,'LOT89',25.36,26.8,'2019-02-19','2019-03-20','A',1);
INSERT INTO `lote` VALUES (461,55,'A979',26.36,50,'2019-02-25','2019-04-07','A',1);
INSERT INTO `lote` VALUES (463,55,'Akkk',26.36,50,'2019-02-25','2019-04-07','A',10);
INSERT INTO `lote` VALUES (464,1,'asssss',100,200,'2010-01-01','2020-01-01','A',100);
INSERT INTO `lote` VALUES (465,10,'K',20.63,28,'2019-02-25','2019-03-31','A',1);
INSERT INTO `lote` VALUES (466,2,'lo89k65',6,500,'2018-02-02','2019-03-03','A',32);
INSERT INTO `lote` VALUES (467,17,'abcqqqqqqq',100,200,'2015-01-01','2020-01-01','A',100);
INSERT INTO `lote` VALUES (468,13,'aaaaaaaaaaaaaaa',100,200,'2015-01-01','2020-01-01','A',100);
INSERT INTO `lote` VALUES (469,12,'aaLorem',10,200,'2019-03-01','2019-03-22','A',200);
INSERT INTO `lote` VALUES (470,250,'LoteDeA',100,200,'2019-03-04','2019-04-06','A',100);
INSERT INTO `lote` VALUES (471,259,'LoremIpsum',100,150,'2019-03-01','2019-03-31','A',183);
INSERT INTO `lote` VALUES (472,259,'LoremIpsum2',100,150,'2019-03-01','2019-03-31','A',207);
INSERT INTO `lote` VALUES (473,259,'LoremIpsum3',100,150,'2019-03-01','2019-03-31','A',313);

--
-- Table structure for table `loteexistencia`
--

DROP TABLE IF EXISTS `loteexistencia`;


CREATE TABLE `loteexistencia` (
  `id_lote` int(11) DEFAULT NULL,
  `existencia` decimal(33,0) DEFAULT NULL
);
 
--
-- Dumping data for table `loteexistencia`
--


--
-- Table structure for table `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
 
 
CREATE TABLE `medicamentos` (
  `id_medicamento` int(11) NOT NULL,
  `id_laboratorio` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `estado` varchar(1) NOT NULL,
  PRIMARY KEY (`id_medicamento`),
  UNIQUE KEY `medic_uq` (`id_producto`),
  KEY `id_laboratorio` (`id_laboratorio`),
  CONSTRAINT `medicamentos_ibfk_1` FOREIGN KEY (`id_laboratorio`) REFERENCES `laboratorio` (`id_laboratorio`),
  CONSTRAINT `medicamentos_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`)
);
 
--
-- Dumping data for table `medicamentos`
--

INSERT INTO `medicamentos` VALUES (1,3,193,'A');
INSERT INTO `medicamentos` VALUES (2,8,196,'A');
INSERT INTO `medicamentos` VALUES (3,5,145,'I');
INSERT INTO `medicamentos` VALUES (4,3,136,'A');
INSERT INTO `medicamentos` VALUES (5,8,137,'A');
INSERT INTO `medicamentos` VALUES (6,10,195,'I');
INSERT INTO `medicamentos` VALUES (7,11,109,'A');
INSERT INTO `medicamentos` VALUES (8,11,117,'A');
INSERT INTO `medicamentos` VALUES (9,1,59,'A');
INSERT INTO `medicamentos` VALUES (10,4,60,'A');
INSERT INTO `medicamentos` VALUES (11,8,61,'A');
INSERT INTO `medicamentos` VALUES (12,2,62,'A');
INSERT INTO `medicamentos` VALUES (13,11,63,'A');
INSERT INTO `medicamentos` VALUES (14,1,64,'A');
INSERT INTO `medicamentos` VALUES (15,7,118,'A');
INSERT INTO `medicamentos` VALUES (16,5,51,'A');
INSERT INTO `medicamentos` VALUES (17,6,10,'A');
INSERT INTO `medicamentos` VALUES (18,12,71,'A');
INSERT INTO `medicamentos` VALUES (19,7,197,'A');
INSERT INTO `medicamentos` VALUES (20,12,95,'A');
INSERT INTO `medicamentos` VALUES (21,1,17,'A');
INSERT INTO `medicamentos` VALUES (22,4,198,'A');
INSERT INTO `medicamentos` VALUES (23,6,1,'I');
INSERT INTO `medicamentos` VALUES (24,6,76,'A');
INSERT INTO `medicamentos` VALUES (25,12,72,'A');
INSERT INTO `medicamentos` VALUES (26,7,66,'A');
INSERT INTO `medicamentos` VALUES (27,7,88,'A');
INSERT INTO `medicamentos` VALUES (28,4,162,'A');
INSERT INTO `medicamentos` VALUES (29,8,171,'A');
INSERT INTO `medicamentos` VALUES (30,5,177,'A');
INSERT INTO `medicamentos` VALUES (31,10,128,'A');
INSERT INTO `medicamentos` VALUES (32,1,163,'A');
INSERT INTO `medicamentos` VALUES (33,9,172,'A');
INSERT INTO `medicamentos` VALUES (34,8,178,'A');
INSERT INTO `medicamentos` VALUES (35,11,153,'A');
INSERT INTO `medicamentos` VALUES (36,6,167,'A');
INSERT INTO `medicamentos` VALUES (37,9,179,'A');
INSERT INTO `medicamentos` VALUES (38,1,46,'A');
INSERT INTO `medicamentos` VALUES (39,1,48,'A');
INSERT INTO `medicamentos` VALUES (40,3,11,'A');
INSERT INTO `medicamentos` VALUES (41,10,55,'A');
INSERT INTO `medicamentos` VALUES (42,3,25,'A');
INSERT INTO `medicamentos` VALUES (43,12,101,'A');
INSERT INTO `medicamentos` VALUES (44,1,34,'A');
INSERT INTO `medicamentos` VALUES (45,3,38,'A');
INSERT INTO `medicamentos` VALUES (46,1,29,'A');
INSERT INTO `medicamentos` VALUES (47,8,26,'A');
INSERT INTO `medicamentos` VALUES (48,1,56,'A');
INSERT INTO `medicamentos` VALUES (49,2,102,'A');
INSERT INTO `medicamentos` VALUES (50,7,96,'A');
INSERT INTO `medicamentos` VALUES (51,5,105,'A');
INSERT INTO `medicamentos` VALUES (52,4,108,'A');
INSERT INTO `medicamentos` VALUES (53,6,52,'A');
INSERT INTO `medicamentos` VALUES (54,5,106,'A');
INSERT INTO `medicamentos` VALUES (55,4,146,'A');
INSERT INTO `medicamentos` VALUES (56,7,129,'A');
INSERT INTO `medicamentos` VALUES (57,9,164,'A');
INSERT INTO `medicamentos` VALUES (58,1,121,'A');
INSERT INTO `medicamentos` VALUES (59,1,156,'A');
INSERT INTO `medicamentos` VALUES (60,1,180,'A');
INSERT INTO `medicamentos` VALUES (61,2,122,'A');
INSERT INTO `medicamentos` VALUES (62,8,130,'A');
INSERT INTO `medicamentos` VALUES (63,8,138,'A');
INSERT INTO `medicamentos` VALUES (64,5,73,'A');
INSERT INTO `medicamentos` VALUES (65,10,77,'A');
INSERT INTO `medicamentos` VALUES (66,12,67,'A');
INSERT INTO `medicamentos` VALUES (67,6,78,'A');
INSERT INTO `medicamentos` VALUES (68,6,74,'A');
INSERT INTO `medicamentos` VALUES (69,11,50,'A');
INSERT INTO `medicamentos` VALUES (70,2,68,'A');
INSERT INTO `medicamentos` VALUES (71,12,19,'A');
INSERT INTO `medicamentos` VALUES (72,7,20,'A');
INSERT INTO `medicamentos` VALUES (73,7,183,'A');
INSERT INTO `medicamentos` VALUES (74,4,185,'A');
INSERT INTO `medicamentos` VALUES (75,11,184,'A');
INSERT INTO `medicamentos` VALUES (76,6,186,'A');
INSERT INTO `medicamentos` VALUES (77,7,4,'A');
INSERT INTO `medicamentos` VALUES (78,6,54,'A');
INSERT INTO `medicamentos` VALUES (79,10,39,'A');
INSERT INTO `medicamentos` VALUES (80,4,57,'A');
INSERT INTO `medicamentos` VALUES (81,5,35,'A');
INSERT INTO `medicamentos` VALUES (82,12,58,'A');
INSERT INTO `medicamentos` VALUES (83,6,36,'A');
INSERT INTO `medicamentos` VALUES (84,7,42,'A');
INSERT INTO `medicamentos` VALUES (85,5,119,'A');
INSERT INTO `medicamentos` VALUES (86,1,65,'A');
INSERT INTO `medicamentos` VALUES (87,3,112,'A');
INSERT INTO `medicamentos` VALUES (88,10,120,'A');
INSERT INTO `medicamentos` VALUES (89,6,114,'A');
INSERT INTO `medicamentos` VALUES (90,9,116,'A');
INSERT INTO `medicamentos` VALUES (91,4,2,'A');
INSERT INTO `medicamentos` VALUES (92,6,90,'A');
INSERT INTO `medicamentos` VALUES (93,3,165,'A');
INSERT INTO `medicamentos` VALUES (94,11,181,'A');
INSERT INTO `medicamentos` VALUES (95,7,141,'A');
INSERT INTO `medicamentos` VALUES (96,2,131,'A');
INSERT INTO `medicamentos` VALUES (97,2,157,'A');
INSERT INTO `medicamentos` VALUES (98,1,147,'A');
INSERT INTO `medicamentos` VALUES (99,12,142,'A');
INSERT INTO `medicamentos` VALUES (100,9,123,'A');
INSERT INTO `medicamentos` VALUES (101,6,132,'A');
INSERT INTO `medicamentos` VALUES (102,5,150,'A');
INSERT INTO `medicamentos` VALUES (103,6,158,'A');
INSERT INTO `medicamentos` VALUES (104,4,166,'A');
INSERT INTO `medicamentos` VALUES (105,11,169,'A');
INSERT INTO `medicamentos` VALUES (106,9,182,'A');
INSERT INTO `medicamentos` VALUES (107,11,143,'A');
INSERT INTO `medicamentos` VALUES (108,1,91,'A');
INSERT INTO `medicamentos` VALUES (109,9,124,'A');
INSERT INTO `medicamentos` VALUES (110,5,125,'A');
INSERT INTO `medicamentos` VALUES (111,9,159,'A');
INSERT INTO `medicamentos` VALUES (112,5,144,'A');
INSERT INTO `medicamentos` VALUES (113,10,160,'A');
INSERT INTO `medicamentos` VALUES (114,1,126,'A');
INSERT INTO `medicamentos` VALUES (115,7,127,'A');
INSERT INTO `medicamentos` VALUES (116,8,133,'A');
INSERT INTO `medicamentos` VALUES (117,8,151,'A');
INSERT INTO `medicamentos` VALUES (118,5,8,'I');
INSERT INTO `medicamentos` VALUES (119,11,9,'A');
INSERT INTO `medicamentos` VALUES (120,3,107,'A');
INSERT INTO `medicamentos` VALUES (121,5,161,'A');
INSERT INTO `medicamentos` VALUES (122,4,134,'A');
INSERT INTO `medicamentos` VALUES (123,6,135,'A');
INSERT INTO `medicamentos` VALUES (124,2,43,'A');
INSERT INTO `medicamentos` VALUES (125,7,27,'A');
INSERT INTO `medicamentos` VALUES (126,4,30,'A');
INSERT INTO `medicamentos` VALUES (127,9,44,'A');
INSERT INTO `medicamentos` VALUES (128,9,37,'A');
INSERT INTO `medicamentos` VALUES (129,4,21,'A');
INSERT INTO `medicamentos` VALUES (130,4,22,'A');
INSERT INTO `medicamentos` VALUES (131,9,92,'A');
INSERT INTO `medicamentos` VALUES (132,9,93,'A');
INSERT INTO `medicamentos` VALUES (133,3,13,'I');
INSERT INTO `medicamentos` VALUES (134,2,15,'A');
INSERT INTO `medicamentos` VALUES (135,8,16,'A');
INSERT INTO `medicamentos` VALUES (136,11,23,'A');
INSERT INTO `medicamentos` VALUES (137,9,24,'A');
INSERT INTO `medicamentos` VALUES (138,9,79,'A');
INSERT INTO `medicamentos` VALUES (139,8,81,'A');
INSERT INTO `medicamentos` VALUES (140,11,82,'A');
INSERT INTO `medicamentos` VALUES (141,7,12,'I');
INSERT INTO `medicamentos` VALUES (142,2,86,'A');
INSERT INTO `medicamentos` VALUES (143,12,188,'A');
INSERT INTO `medicamentos` VALUES (144,5,191,'A');
INSERT INTO `medicamentos` VALUES (145,11,170,'A');
INSERT INTO `medicamentos` VALUES (146,4,45,'A');
INSERT INTO `medicamentos` VALUES (147,1,33,'A');
INSERT INTO `medicamentos` VALUES (148,2,87,'A');
INSERT INTO `medicamentos` VALUES (149,8,189,'A');
INSERT INTO `medicamentos` VALUES (150,10,192,'A');
INSERT INTO `medicamentos` VALUES (151,1,97,'A');
INSERT INTO `medicamentos` VALUES (152,11,85,'A');
INSERT INTO `medicamentos` VALUES (153,3,83,'A');
INSERT INTO `medicamentos` VALUES (154,5,98,'A');
INSERT INTO `medicamentos` VALUES (155,6,104,'A');
INSERT INTO `medicamentos` VALUES (156,11,100,'A');
INSERT INTO `medicamentos` VALUES (158,1,202,'A');
INSERT INTO `medicamentos` VALUES (159,1,203,'A');
INSERT INTO `medicamentos` VALUES (160,9,215,'A');
INSERT INTO `medicamentos` VALUES (161,9,216,'A');
INSERT INTO `medicamentos` VALUES (163,1,255,'A');
INSERT INTO `medicamentos` VALUES (167,10,262,'A');
INSERT INTO `medicamentos` VALUES (179,9,274,'A');
INSERT INTO `medicamentos` VALUES (180,1,275,'A');
INSERT INTO `medicamentos` VALUES (181,1,277,'A');
INSERT INTO `medicamentos` VALUES (182,9,256,'I');
INSERT INTO `medicamentos` VALUES (183,10,250,'I');
INSERT INTO `medicamentos` VALUES (184,10,266,'A');
INSERT INTO `medicamentos` VALUES (185,1,278,'A');
INSERT INTO `medicamentos` VALUES (186,7,279,'A');
INSERT INTO `medicamentos` VALUES (187,9,281,'A');
INSERT INTO `medicamentos` VALUES (188,9,286,'A');
INSERT INTO `medicamentos` VALUES (189,9,282,'A');

--
-- Table structure for table `movimiento_producto`
--

DROP TABLE IF EXISTS `movimiento_producto`;
 
 
CREATE TABLE `movimiento_producto` (
  `id_movimiento` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `tipo_movimiento` varchar(1) DEFAULT 'A',
  PRIMARY KEY (`id_movimiento`),
  KEY `id_empleado` (`id_empleado`),
  CONSTRAINT `movimiento_producto_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`)
);
 
--
-- Dumping data for table `movimiento_producto`
--

INSERT INTO `movimiento_producto` VALUES (1,'2019-01-14',11,'R');
INSERT INTO `movimiento_producto` VALUES (4,'2017-03-18',8,'A');
INSERT INTO `movimiento_producto` VALUES (5,'2018-03-22',26,'A');
INSERT INTO `movimiento_producto` VALUES (10,'2018-02-21',27,'A');
INSERT INTO `movimiento_producto` VALUES (12,'2017-10-25',29,'A');
INSERT INTO `movimiento_producto` VALUES (13,'2018-07-16',20,'A');
INSERT INTO `movimiento_producto` VALUES (15,'2017-09-08',17,'A');
INSERT INTO `movimiento_producto` VALUES (17,'2018-05-06',6,'A');
INSERT INTO `movimiento_producto` VALUES (18,'2017-09-25',5,'A');
INSERT INTO `movimiento_producto` VALUES (19,'2018-03-08',29,'A');
INSERT INTO `movimiento_producto` VALUES (20,'2018-02-15',11,'A');
INSERT INTO `movimiento_producto` VALUES (24,'2017-08-26',15,'A');
INSERT INTO `movimiento_producto` VALUES (26,'2018-01-22',19,'A');
INSERT INTO `movimiento_producto` VALUES (28,'2017-01-22',28,'A');
INSERT INTO `movimiento_producto` VALUES (29,'2017-10-10',16,'A');
INSERT INTO `movimiento_producto` VALUES (33,'2018-10-06',26,'A');
INSERT INTO `movimiento_producto` VALUES (34,'2018-06-06',16,'A');
INSERT INTO `movimiento_producto` VALUES (36,'2018-12-22',22,'A');
INSERT INTO `movimiento_producto` VALUES (40,'2018-12-23',26,'A');
INSERT INTO `movimiento_producto` VALUES (42,'2017-03-26',11,'A');
INSERT INTO `movimiento_producto` VALUES (43,'2017-02-06',9,'A');
INSERT INTO `movimiento_producto` VALUES (49,'2017-11-24',21,'A');
INSERT INTO `movimiento_producto` VALUES (51,'2018-05-11',15,'A');
INSERT INTO `movimiento_producto` VALUES (52,'2017-08-05',28,'A');
INSERT INTO `movimiento_producto` VALUES (53,'2018-07-07',10,'A');
INSERT INTO `movimiento_producto` VALUES (55,'2018-06-08',27,'A');
INSERT INTO `movimiento_producto` VALUES (57,'2018-08-24',28,'A');
INSERT INTO `movimiento_producto` VALUES (58,'2017-05-14',8,'A');
INSERT INTO `movimiento_producto` VALUES (59,'2017-01-20',30,'A');
INSERT INTO `movimiento_producto` VALUES (60,'2017-03-11',26,'A');
INSERT INTO `movimiento_producto` VALUES (63,'2017-03-11',9,'A');
INSERT INTO `movimiento_producto` VALUES (64,'2017-11-04',29,'A');
INSERT INTO `movimiento_producto` VALUES (66,'2018-04-30',15,'A');
INSERT INTO `movimiento_producto` VALUES (67,'2017-12-25',8,'A');
INSERT INTO `movimiento_producto` VALUES (68,'2018-11-04',7,'A');
INSERT INTO `movimiento_producto` VALUES (69,'2017-12-20',21,'A');
INSERT INTO `movimiento_producto` VALUES (70,'2017-06-26',30,'A');
INSERT INTO `movimiento_producto` VALUES (71,'2017-05-27',20,'A');
INSERT INTO `movimiento_producto` VALUES (74,'2017-10-01',9,'A');
INSERT INTO `movimiento_producto` VALUES (76,'2017-11-06',25,'A');
INSERT INTO `movimiento_producto` VALUES (77,'2017-11-16',20,'A');
INSERT INTO `movimiento_producto` VALUES (79,'2018-02-07',19,'A');
INSERT INTO `movimiento_producto` VALUES (81,'2017-03-07',11,'A');
INSERT INTO `movimiento_producto` VALUES (82,'2018-12-20',29,'A');
INSERT INTO `movimiento_producto` VALUES (85,'2018-03-10',29,'A');
INSERT INTO `movimiento_producto` VALUES (88,'2018-05-16',22,'A');
INSERT INTO `movimiento_producto` VALUES (91,'2018-08-31',5,'A');
INSERT INTO `movimiento_producto` VALUES (93,'2018-12-18',27,'A');
INSERT INTO `movimiento_producto` VALUES (94,'2018-07-03',28,'A');
INSERT INTO `movimiento_producto` VALUES (95,'2017-07-08',18,'A');
INSERT INTO `movimiento_producto` VALUES (96,'2017-02-04',2,'A');
INSERT INTO `movimiento_producto` VALUES (97,'2019-03-19',81,'V');
INSERT INTO `movimiento_producto` VALUES (98,'2019-03-19',81,'V');
INSERT INTO `movimiento_producto` VALUES (99,'2019-03-19',80,'V');
INSERT INTO `movimiento_producto` VALUES (104,'2019-03-19',81,'V');
INSERT INTO `movimiento_producto` VALUES (105,'2019-03-19',81,'V');
INSERT INTO `movimiento_producto` VALUES (106,'2019-03-19',81,'V');
INSERT INTO `movimiento_producto` VALUES (109,'2019-03-19',81,'V');
INSERT INTO `movimiento_producto` VALUES (110,'2019-03-19',80,'V');
INSERT INTO `movimiento_producto` VALUES (111,'2019-03-19',1,'V');
INSERT INTO `movimiento_producto` VALUES (114,'2019-03-19',1,'V');
INSERT INTO `movimiento_producto` VALUES (130,'2019-03-19',1,'V');
INSERT INTO `movimiento_producto` VALUES (132,'2019-03-19',1,'V');
INSERT INTO `movimiento_producto` VALUES (143,'2019-03-20',81,'V');
INSERT INTO `movimiento_producto` VALUES (144,'2019-03-20',80,'V');
INSERT INTO `movimiento_producto` VALUES (145,'2019-03-21',81,'V');
INSERT INTO `movimiento_producto` VALUES (146,'2019-03-21',81,'V');
INSERT INTO `movimiento_producto` VALUES (147,'2019-03-21',81,'V');
INSERT INTO `movimiento_producto` VALUES (148,'2019-03-21',81,'V');
INSERT INTO `movimiento_producto` VALUES (158,'2019-03-21',81,'V');
INSERT INTO `movimiento_producto` VALUES (160,'2019-03-21',81,'V');
INSERT INTO `movimiento_producto` VALUES (165,'2019-03-21',81,'V');
INSERT INTO `movimiento_producto` VALUES (166,'2019-03-21',81,'V');
INSERT INTO `movimiento_producto` VALUES (167,'2019-03-21',81,'V');
INSERT INTO `movimiento_producto` VALUES (169,'2019-03-22',81,'V');
INSERT INTO `movimiento_producto` VALUES (170,'2019-03-22',81,'V');
INSERT INTO `movimiento_producto` VALUES (171,'2019-03-22',81,'V');
INSERT INTO `movimiento_producto` VALUES (172,'2019-03-22',80,'V');
INSERT INTO `movimiento_producto` VALUES (173,'2019-03-22',80,'V');
INSERT INTO `movimiento_producto` VALUES (174,'2019-03-22',80,'V');
INSERT INTO `movimiento_producto` VALUES (175,'2019-03-23',81,'V');
INSERT INTO `movimiento_producto` VALUES (176,'2019-03-23',81,'V');
INSERT INTO `movimiento_producto` VALUES (177,'2019-03-23',81,'V');
INSERT INTO `movimiento_producto` VALUES (178,'2019-03-23',81,'V');
INSERT INTO `movimiento_producto` VALUES (179,'2019-03-23',81,'V');
INSERT INTO `movimiento_producto` VALUES (180,'2019-03-23',80,'V');
INSERT INTO `movimiento_producto` VALUES (181,'2019-03-23',80,'V');
INSERT INTO `movimiento_producto` VALUES (182,'2019-03-23',80,'V');
INSERT INTO `movimiento_producto` VALUES (183,'2019-03-23',1,'V');

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
 
 
CREATE TABLE `municipio` (
  `id_municipio` varchar(4) NOT NULL,
  `municipio` varchar(100) NOT NULL,
  `id_departamento` varchar(2) NOT NULL,
  PRIMARY KEY (`id_municipio`),
  KEY `municipio_ibfk_1` (`id_departamento`),
  CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`)
);
 
--
-- Dumping data for table `municipio`
--

INSERT INTO `municipio` VALUES ('0101',' La Ceiba','01');
INSERT INTO `municipio` VALUES ('0102',' El Porvenir','01');
INSERT INTO `municipio` VALUES ('0103',' Esparta','01');
INSERT INTO `municipio` VALUES ('0104',' Jutiapa','01');
INSERT INTO `municipio` VALUES ('0105',' La Masica','01');
INSERT INTO `municipio` VALUES ('0106',' San Francisco','01');
INSERT INTO `municipio` VALUES ('0107',' Tela','01');
INSERT INTO `municipio` VALUES ('0108',' Arizona','01');
INSERT INTO `municipio` VALUES ('0201',' Trujillo','02');
INSERT INTO `municipio` VALUES ('0202',' Balfate','02');
INSERT INTO `municipio` VALUES ('0203',' Iriona','02');
INSERT INTO `municipio` VALUES ('0204',' Limón','02');
INSERT INTO `municipio` VALUES ('0205',' Sabá','02');
INSERT INTO `municipio` VALUES ('0206',' Santa Fe','02');
INSERT INTO `municipio` VALUES ('0207',' Sta. Rosa De Aguán','02');
INSERT INTO `municipio` VALUES ('0208',' Sonaguera','02');
INSERT INTO `municipio` VALUES ('0209',' Tocoa','02');
INSERT INTO `municipio` VALUES ('0210',' Bonito Oriental','02');
INSERT INTO `municipio` VALUES ('0301',' Comayagua','03');
INSERT INTO `municipio` VALUES ('0302',' Ajuterique','03');
INSERT INTO `municipio` VALUES ('0303',' El Rosario','03');
INSERT INTO `municipio` VALUES ('0304',' Esquías','03');
INSERT INTO `municipio` VALUES ('0305',' Humuya','03');
INSERT INTO `municipio` VALUES ('0306',' La Libertad','03');
INSERT INTO `municipio` VALUES ('0307',' Lamaní','03');
INSERT INTO `municipio` VALUES ('0308',' La Trinidad','03');
INSERT INTO `municipio` VALUES ('0309',' Lejamaní','03');
INSERT INTO `municipio` VALUES ('0310',' Meámbar','03');
INSERT INTO `municipio` VALUES ('0311',' Minas De Oro','03');
INSERT INTO `municipio` VALUES ('0312',' Ojos De Agua','03');
INSERT INTO `municipio` VALUES ('0313',' San Jerónimo','03');
INSERT INTO `municipio` VALUES ('0314',' S. José De Comayag.','03');
INSERT INTO `municipio` VALUES ('0315',' S. José Del Potrero','03');
INSERT INTO `municipio` VALUES ('0316',' San Luis','03');
INSERT INTO `municipio` VALUES ('0317',' San Sebastián','03');
INSERT INTO `municipio` VALUES ('0318',' Siguatepeque','03');
INSERT INTO `municipio` VALUES ('0319',' Villa De S. Antonio','03');
INSERT INTO `municipio` VALUES ('0320',' Lajas','03');
INSERT INTO `municipio` VALUES ('0321',' Taulabé','03');
INSERT INTO `municipio` VALUES ('0401',' Sta. Rosa De Copán','04');
INSERT INTO `municipio` VALUES ('0402',' Cabañas','04');
INSERT INTO `municipio` VALUES ('0403',' Concepción','04');
INSERT INTO `municipio` VALUES ('0404',' Copán Ruinas','04');
INSERT INTO `municipio` VALUES ('0405',' Corquín','04');
INSERT INTO `municipio` VALUES ('0406',' Cucuyagua','04');
INSERT INTO `municipio` VALUES ('0407',' Dolores','04');
INSERT INTO `municipio` VALUES ('0408',' Dulce Nombre','04');
INSERT INTO `municipio` VALUES ('0409',' El Paraíso','04');
INSERT INTO `municipio` VALUES ('0410',' Florida','04');
INSERT INTO `municipio` VALUES ('0411',' La Jigua','04');
INSERT INTO `municipio` VALUES ('0412',' La Unión','04');
INSERT INTO `municipio` VALUES ('0413',' Nueva Arcadia','04');
INSERT INTO `municipio` VALUES ('0414',' San Agustín','04');
INSERT INTO `municipio` VALUES ('0415',' San Antonio','04');
INSERT INTO `municipio` VALUES ('0416',' San Jerónimo','04');
INSERT INTO `municipio` VALUES ('0417',' San José','04');
INSERT INTO `municipio` VALUES ('0418',' San Juan De Opoa','04');
INSERT INTO `municipio` VALUES ('0419',' San Nicolás','04');
INSERT INTO `municipio` VALUES ('0420',' San Pedro','04');
INSERT INTO `municipio` VALUES ('0421',' Santa Rita','04');
INSERT INTO `municipio` VALUES ('0422',' Trinidad','04');
INSERT INTO `municipio` VALUES ('0423',' Veracruz','04');
INSERT INTO `municipio` VALUES ('0501',' San Pedro Sula','05');
INSERT INTO `municipio` VALUES ('0502',' Choloma','05');
INSERT INTO `municipio` VALUES ('0503',' Omoa','05');
INSERT INTO `municipio` VALUES ('0504',' Pimienta','05');
INSERT INTO `municipio` VALUES ('0505',' Potrerillos','05');
INSERT INTO `municipio` VALUES ('0506',' Puerto Cortés','05');
INSERT INTO `municipio` VALUES ('0507',' S. Antonio De Cortés','05');
INSERT INTO `municipio` VALUES ('0508',' San Fco. De Yojoa','05');
INSERT INTO `municipio` VALUES ('0509',' San Manuel','05');
INSERT INTO `municipio` VALUES ('0510',' Sta. Cruz De Yojoa','05');
INSERT INTO `municipio` VALUES ('0511',' Villanueva','05');
INSERT INTO `municipio` VALUES ('0512',' La Lima','05');
INSERT INTO `municipio` VALUES ('0601',' Choluteca','06');
INSERT INTO `municipio` VALUES ('0602',' Apacilagua','06');
INSERT INTO `municipio` VALUES ('0603',' Concepción De María','06');
INSERT INTO `municipio` VALUES ('0604',' Duyure','06');
INSERT INTO `municipio` VALUES ('0606',' El Triunfo','06');
INSERT INTO `municipio` VALUES ('0607',' Marcovia','06');
INSERT INTO `municipio` VALUES ('0608',' Morolica','06');
INSERT INTO `municipio` VALUES ('0609',' Namasigüe','06');
INSERT INTO `municipio` VALUES ('0610',' Orocuina','06');
INSERT INTO `municipio` VALUES ('0611',' Pespire','06');
INSERT INTO `municipio` VALUES ('0612',' S. Antonio De Flores','06');
INSERT INTO `municipio` VALUES ('0613',' San Isidro','06');
INSERT INTO `municipio` VALUES ('0614',' San José','06');
INSERT INTO `municipio` VALUES ('0615',' S. Marcos De Colón','06');
INSERT INTO `municipio` VALUES ('0616',' Sta. Ana De Yusguare','06');
INSERT INTO `municipio` VALUES ('0701',' Yuscarán','07');
INSERT INTO `municipio` VALUES ('0702',' Alauca','07');
INSERT INTO `municipio` VALUES ('0703',' Danlí','07');
INSERT INTO `municipio` VALUES ('0704',' El Paraíso','07');
INSERT INTO `municipio` VALUES ('0705',' Güinope','07');
INSERT INTO `municipio` VALUES ('0706',' Jacaleapa','07');
INSERT INTO `municipio` VALUES ('0707',' Liure','07');
INSERT INTO `municipio` VALUES ('0708',' Morocelí','07');
INSERT INTO `municipio` VALUES ('0709',' Oropolí','07');
INSERT INTO `municipio` VALUES ('0710',' Potrerillos','07');
INSERT INTO `municipio` VALUES ('0711',' S. Antonio De Flores','07');
INSERT INTO `municipio` VALUES ('0712',' San Lucas','07');
INSERT INTO `municipio` VALUES ('0713',' San Matías','07');
INSERT INTO `municipio` VALUES ('0714',' Soledad','07');
INSERT INTO `municipio` VALUES ('0715',' Teupasenti','07');
INSERT INTO `municipio` VALUES ('0716',' Texiguat','07');
INSERT INTO `municipio` VALUES ('0717',' Vado Ancho','07');
INSERT INTO `municipio` VALUES ('0718',' Yauyupe','07');
INSERT INTO `municipio` VALUES ('0719',' Trojes','07');
INSERT INTO `municipio` VALUES ('0801',' Distrito Central','08');
INSERT INTO `municipio` VALUES ('0802',' Alubarén','08');
INSERT INTO `municipio` VALUES ('0803',' Cedros','08');
INSERT INTO `municipio` VALUES ('0804',' Curarén','08');
INSERT INTO `municipio` VALUES ('0805',' El Provenir','08');
INSERT INTO `municipio` VALUES ('0806',' Guaimaca','08');
INSERT INTO `municipio` VALUES ('0807',' La Libertad','08');
INSERT INTO `municipio` VALUES ('0808',' La Venta','08');
INSERT INTO `municipio` VALUES ('0809',' Lepaterique','08');
INSERT INTO `municipio` VALUES ('0811',' Marale','08');
INSERT INTO `municipio` VALUES ('0812',' Nueva Aremnia','08');
INSERT INTO `municipio` VALUES ('0813',' Ojojona','08');
INSERT INTO `municipio` VALUES ('0814',' Orica','08');
INSERT INTO `municipio` VALUES ('0815',' Reitoca','08');
INSERT INTO `municipio` VALUES ('0816',' Sabanagrande','08');
INSERT INTO `municipio` VALUES ('0817',' S. Antonio De Oriente','08');
INSERT INTO `municipio` VALUES ('0818',' San Buenaventura','08');
INSERT INTO `municipio` VALUES ('0819',' San Ignacio','08');
INSERT INTO `municipio` VALUES ('0820',' San Juan De Flores','08');
INSERT INTO `municipio` VALUES ('0821',' San Miguelito','08');
INSERT INTO `municipio` VALUES ('0822',' Santa Ana','08');
INSERT INTO `municipio` VALUES ('0823',' Santa Lucía','08');
INSERT INTO `municipio` VALUES ('0824',' Talanga','08');
INSERT INTO `municipio` VALUES ('0825',' Tatumbla','08');
INSERT INTO `municipio` VALUES ('0826',' Valle De Ángeles','08');
INSERT INTO `municipio` VALUES ('0827',' Villa De San Francisco','08');
INSERT INTO `municipio` VALUES ('0828',' Vallecillo','08');
INSERT INTO `municipio` VALUES ('0901',' Puerto Lempira','09');
INSERT INTO `municipio` VALUES ('0902',' Brus Laguna','09');
INSERT INTO `municipio` VALUES ('0903',' Ahuas','09');
INSERT INTO `municipio` VALUES ('0904',' Juan Francisco Bulnes','09');
INSERT INTO `municipio` VALUES ('0905',' Villeda Morales','09');
INSERT INTO `municipio` VALUES ('0906',' Wampusirpe','09');
INSERT INTO `municipio` VALUES ('1001',' La Esperanza','10');
INSERT INTO `municipio` VALUES ('1002',' Camasca','10');
INSERT INTO `municipio` VALUES ('1003',' Colomoncagua','10');
INSERT INTO `municipio` VALUES ('1004',' Concepción','10');
INSERT INTO `municipio` VALUES ('1005',' Dolores','10');
INSERT INTO `municipio` VALUES ('1006',' Intibucá','10');
INSERT INTO `municipio` VALUES ('1007',' Jesú S De Otoro','10');
INSERT INTO `municipio` VALUES ('1008',' Magdalena','10');
INSERT INTO `municipio` VALUES ('1009',' Masaguara','10');
INSERT INTO `municipio` VALUES ('1010',' San Antonio','10');
INSERT INTO `municipio` VALUES ('1011',' San Isidro','10');
INSERT INTO `municipio` VALUES ('1012',' San Juan De Flores','10');
INSERT INTO `municipio` VALUES ('1013',' S. Marcos De La Sierra','10');
INSERT INTO `municipio` VALUES ('1014',' S. Miguel Guancapla','10');
INSERT INTO `municipio` VALUES ('1015',' Santa Lucía','10');
INSERT INTO `municipio` VALUES ('1017',' S. Francisco Opalaca','10');
INSERT INTO `municipio` VALUES ('1101',' Roatán','11');
INSERT INTO `municipio` VALUES ('1102',' Guanaja','11');
INSERT INTO `municipio` VALUES ('1103',' J. Santos Guardiola','11');
INSERT INTO `municipio` VALUES ('1104',' Utila','11');
INSERT INTO `municipio` VALUES ('1201',' La Paz','12');
INSERT INTO `municipio` VALUES ('1202',' Aguanqueterique','12');
INSERT INTO `municipio` VALUES ('1203',' Cabañas','12');
INSERT INTO `municipio` VALUES ('1204',' Cane','12');
INSERT INTO `municipio` VALUES ('1205',' Chinacla','12');
INSERT INTO `municipio` VALUES ('1206',' Guajiquiro','12');
INSERT INTO `municipio` VALUES ('1207',' Lauterique','12');
INSERT INTO `municipio` VALUES ('1208',' Marcala','12');
INSERT INTO `municipio` VALUES ('1209',' Mercedes De Oriente','12');
INSERT INTO `municipio` VALUES ('1210',' Opatoro','12');
INSERT INTO `municipio` VALUES ('1211',' S. Antonio Del Norte','12');
INSERT INTO `municipio` VALUES ('1212',' San José','12');
INSERT INTO `municipio` VALUES ('1213',' San Juan','12');
INSERT INTO `municipio` VALUES ('1214',' San Pedro De Tutule','12');
INSERT INTO `municipio` VALUES ('1215',' Santa Ana','12');
INSERT INTO `municipio` VALUES ('1216',' Santa Elena','12');
INSERT INTO `municipio` VALUES ('1217',' Santa María','12');
INSERT INTO `municipio` VALUES ('1218',' Santiago Puringla','12');
INSERT INTO `municipio` VALUES ('1219',' Yarula','12');
INSERT INTO `municipio` VALUES ('1301',' Gracias','13');
INSERT INTO `municipio` VALUES ('1302',' Belén','13');
INSERT INTO `municipio` VALUES ('1303',' Candelaria','13');
INSERT INTO `municipio` VALUES ('1304',' Cololaca','13');
INSERT INTO `municipio` VALUES ('1305',' Erandique','13');
INSERT INTO `municipio` VALUES ('1306',' Gualcinse','13');
INSERT INTO `municipio` VALUES ('1307',' Guarita','13');
INSERT INTO `municipio` VALUES ('1308',' La Campa','13');
INSERT INTO `municipio` VALUES ('1309',' La Iguala','13');
INSERT INTO `municipio` VALUES ('1310',' Las Flores','13');
INSERT INTO `municipio` VALUES ('1311',' La Unión','13');
INSERT INTO `municipio` VALUES ('1312',' La Virtud','13');
INSERT INTO `municipio` VALUES ('1313',' Lepaera','13');
INSERT INTO `municipio` VALUES ('1314',' Mapulaca','13');
INSERT INTO `municipio` VALUES ('1316',' San Andrés','13');
INSERT INTO `municipio` VALUES ('1317',' San Francisco','13');
INSERT INTO `municipio` VALUES ('1318',' San Juan Guarita','13');
INSERT INTO `municipio` VALUES ('1319',' San Manuel Colohete','13');
INSERT INTO `municipio` VALUES ('1320',' San Rafael','13');
INSERT INTO `municipio` VALUES ('1321',' San Sebastián','13');
INSERT INTO `municipio` VALUES ('1322',' Santa Cruz','13');
INSERT INTO `municipio` VALUES ('1323',' Talgua','13');
INSERT INTO `municipio` VALUES ('1324',' Tambla','13');
INSERT INTO `municipio` VALUES ('1325',' Tomala','13');
INSERT INTO `municipio` VALUES ('1326',' Valladolid','13');
INSERT INTO `municipio` VALUES ('1327',' Virginia','13');
INSERT INTO `municipio` VALUES ('1328',' S. Marcos De Caiquín','13');
INSERT INTO `municipio` VALUES ('1401',' Nueva Ocotepeque','14');
INSERT INTO `municipio` VALUES ('1402',' Belén Gualcho','14');
INSERT INTO `municipio` VALUES ('1403',' Concepción','14');
INSERT INTO `municipio` VALUES ('1404',' Dolores Merendón','14');
INSERT INTO `municipio` VALUES ('1405',' Fraternidad','14');
INSERT INTO `municipio` VALUES ('1406',' La Encarnación','14');
INSERT INTO `municipio` VALUES ('1407',' La Labor','14');
INSERT INTO `municipio` VALUES ('1408',' Lucerna','14');
INSERT INTO `municipio` VALUES ('1409',' Mercedes','14');
INSERT INTO `municipio` VALUES ('1410',' San Fernando','14');
INSERT INTO `municipio` VALUES ('1411',' S. Francisco Del Valle','14');
INSERT INTO `municipio` VALUES ('1412',' San Jorge','14');
INSERT INTO `municipio` VALUES ('1413',' San Marcos','14');
INSERT INTO `municipio` VALUES ('1414',' Santa Fe','14');
INSERT INTO `municipio` VALUES ('1415',' Sensenti','14');
INSERT INTO `municipio` VALUES ('1416',' Sinuapa','14');
INSERT INTO `municipio` VALUES ('1501',' Juticalpa','15');
INSERT INTO `municipio` VALUES ('1502',' Campamento','15');
INSERT INTO `municipio` VALUES ('1503',' Catacamas','15');
INSERT INTO `municipio` VALUES ('1504',' Concordia','15');
INSERT INTO `municipio` VALUES ('1505',' Dulce Nombre De Culmí','15');
INSERT INTO `municipio` VALUES ('1506',' El Rosario','15');
INSERT INTO `municipio` VALUES ('1507',' Esquipulas Del Norte','15');
INSERT INTO `municipio` VALUES ('1508',' Gualaco','15');
INSERT INTO `municipio` VALUES ('1509',' Guarizama','15');
INSERT INTO `municipio` VALUES ('1510',' Guata','15');
INSERT INTO `municipio` VALUES ('1512',' Jano','15');
INSERT INTO `municipio` VALUES ('1513',' La Unión','15');
INSERT INTO `municipio` VALUES ('1514',' Mangulile','15');
INSERT INTO `municipio` VALUES ('1515',' Manto','15');
INSERT INTO `municipio` VALUES ('1516',' Salamá','15');
INSERT INTO `municipio` VALUES ('1517',' San Esteban','15');
INSERT INTO `municipio` VALUES ('1518',' S. Francisco De Becerra','15');
INSERT INTO `municipio` VALUES ('1519',' S. Francisco De La Paz','15');
INSERT INTO `municipio` VALUES ('1520',' Santa María Del Real','15');
INSERT INTO `municipio` VALUES ('1521',' Silca','15');
INSERT INTO `municipio` VALUES ('1522',' Yocón','15');
INSERT INTO `municipio` VALUES ('1523',' Froylan Turcios','15');
INSERT INTO `municipio` VALUES ('1601',' Santa Bárbara','16');
INSERT INTO `municipio` VALUES ('1602',' Arada','16');
INSERT INTO `municipio` VALUES ('1603',' Atima','16');
INSERT INTO `municipio` VALUES ('1604',' Azacualpa','16');
INSERT INTO `municipio` VALUES ('1605',' Ceguaca','16');
INSERT INTO `municipio` VALUES ('1606',' Colinas','16');
INSERT INTO `municipio` VALUES ('1607',' Concepción Del Norte','16');
INSERT INTO `municipio` VALUES ('1608',' Conceppción Del Sur','16');
INSERT INTO `municipio` VALUES ('1609',' Chinda','16');
INSERT INTO `municipio` VALUES ('1610',' El Níspero','16');
INSERT INTO `municipio` VALUES ('1611',' Gualala','16');
INSERT INTO `municipio` VALUES ('1612',' Ilama','16');
INSERT INTO `municipio` VALUES ('1613',' Macuelizo','16');
INSERT INTO `municipio` VALUES ('1614',' Naranjito','16');
INSERT INTO `municipio` VALUES ('1615',' Nueva Celilac','16');
INSERT INTO `municipio` VALUES ('1616',' Petoa','16');
INSERT INTO `municipio` VALUES ('1617',' Protección','16');
INSERT INTO `municipio` VALUES ('1618',' Quimistán','16');
INSERT INTO `municipio` VALUES ('1619',' S. Francisco De Ojuera','16');
INSERT INTO `municipio` VALUES ('1620',' San Luis','16');
INSERT INTO `municipio` VALUES ('1621',' San Marcos','16');
INSERT INTO `municipio` VALUES ('1622',' San Nicolás','16');
INSERT INTO `municipio` VALUES ('1623',' San Pedro Zacapa','16');
INSERT INTO `municipio` VALUES ('1624',' Santa Rita','16');
INSERT INTO `municipio` VALUES ('1625',' S. Vicente Centenario','16');
INSERT INTO `municipio` VALUES ('1626',' Trinidad','16');
INSERT INTO `municipio` VALUES ('1627',' Las Vegas','16');
INSERT INTO `municipio` VALUES ('1628',' Nueva Frontera','16');
INSERT INTO `municipio` VALUES ('1701',' Nacaome','17');
INSERT INTO `municipio` VALUES ('1702',' Alianza','17');
INSERT INTO `municipio` VALUES ('1703',' Amapala','17');
INSERT INTO `municipio` VALUES ('1704',' Aramecina','17');
INSERT INTO `municipio` VALUES ('1705',' Caridad','17');
INSERT INTO `municipio` VALUES ('1706',' Goascorán','17');
INSERT INTO `municipio` VALUES ('1707',' Langue','17');
INSERT INTO `municipio` VALUES ('1708',' San Fco. De Coray','17');
INSERT INTO `municipio` VALUES ('1709',' San Lorenzo','17');
INSERT INTO `municipio` VALUES ('1801',' Yoro','18');
INSERT INTO `municipio` VALUES ('1802',' Arenal','18');
INSERT INTO `municipio` VALUES ('1803',' El Negrita','18');
INSERT INTO `municipio` VALUES ('1804',' El Progreso','18');
INSERT INTO `municipio` VALUES ('1805',' Jocón','18');
INSERT INTO `municipio` VALUES ('1806',' Morazán','18');
INSERT INTO `municipio` VALUES ('1807',' Olanchito','18');
INSERT INTO `municipio` VALUES ('1808',' Santa Rita','18');
INSERT INTO `municipio` VALUES ('1809',' Sulaco','18');
INSERT INTO `municipio` VALUES ('1810',' Victoria','18');
INSERT INTO `municipio` VALUES ('1811',' Yorito','18');

--
-- Table structure for table `pantalla`
--

DROP TABLE IF EXISTS `pantalla`;
 
 
CREATE TABLE `pantalla` (
  `id_pantalla` int(11) NOT NULL,
  `pantalla` varchar(45) NOT NULL,
  PRIMARY KEY (`id_pantalla`)
);
 
--
-- Dumping data for table `pantalla`
--

INSERT INTO `pantalla` VALUES (1,'buscar-factura');
INSERT INTO `pantalla` VALUES (2,'nueva-factura');
INSERT INTO `pantalla` VALUES (3,'catalogo-inventario');
INSERT INTO `pantalla` VALUES (4,'ver-inventario');
INSERT INTO `pantalla` VALUES (5,'gestionar-info-producto');
INSERT INTO `pantalla` VALUES (6,'nuevo-producto');
INSERT INTO `pantalla` VALUES (7,'registro-lote-producto');
INSERT INTO `pantalla` VALUES (8,'registro-lote-medicamento');
INSERT INTO `pantalla` VALUES (9,'descartar-productos');
INSERT INTO `pantalla` VALUES (10,'gestionar-laboratorios');
INSERT INTO `pantalla` VALUES (11,'registrar-cliente');
INSERT INTO `pantalla` VALUES (12,'listado-cliente');
INSERT INTO `pantalla` VALUES (13,'registrar-empleado');
INSERT INTO `pantalla` VALUES (14,'listado-empleado');
INSERT INTO `pantalla` VALUES (15,'reporte-producto');
INSERT INTO `pantalla` VALUES (16,'reporte-empleado');
INSERT INTO `pantalla` VALUES (17,'ver-perfil');
INSERT INTO `pantalla` VALUES (18,'index');

--
-- Table structure for table `pantalla_tipo_usuario`
--

DROP TABLE IF EXISTS `pantalla_tipo_usuario`;
 
 
CREATE TABLE `pantalla_tipo_usuario` (
  `id_pantalla` int(11) NOT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  KEY `id_pantalla` (`id_pantalla`),
  KEY `id_tipo_usuario` (`id_tipo_usuario`),
  CONSTRAINT `pantalla_tipo_usuario_ibfk_1` FOREIGN KEY (`id_pantalla`) REFERENCES `pantalla` (`id_pantalla`),
  CONSTRAINT `pantalla_tipo_usuario_ibfk_2` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id_tipo_usuario`)
);
 
--
-- Dumping data for table `pantalla_tipo_usuario`
--

INSERT INTO `pantalla_tipo_usuario` VALUES (1,1);
INSERT INTO `pantalla_tipo_usuario` VALUES (2,1);
INSERT INTO `pantalla_tipo_usuario` VALUES (3,1);
INSERT INTO `pantalla_tipo_usuario` VALUES (4,1);
INSERT INTO `pantalla_tipo_usuario` VALUES (5,1);
INSERT INTO `pantalla_tipo_usuario` VALUES (6,1);
INSERT INTO `pantalla_tipo_usuario` VALUES (7,1);
INSERT INTO `pantalla_tipo_usuario` VALUES (8,1);
INSERT INTO `pantalla_tipo_usuario` VALUES (9,1);
INSERT INTO `pantalla_tipo_usuario` VALUES (10,1);
INSERT INTO `pantalla_tipo_usuario` VALUES (11,1);
INSERT INTO `pantalla_tipo_usuario` VALUES (12,1);
INSERT INTO `pantalla_tipo_usuario` VALUES (13,1);
INSERT INTO `pantalla_tipo_usuario` VALUES (14,1);
INSERT INTO `pantalla_tipo_usuario` VALUES (15,1);
INSERT INTO `pantalla_tipo_usuario` VALUES (16,1);
INSERT INTO `pantalla_tipo_usuario` VALUES (17,1);
INSERT INTO `pantalla_tipo_usuario` VALUES (1,2);
INSERT INTO `pantalla_tipo_usuario` VALUES (2,2);
INSERT INTO `pantalla_tipo_usuario` VALUES (3,2);
INSERT INTO `pantalla_tipo_usuario` VALUES (4,2);
INSERT INTO `pantalla_tipo_usuario` VALUES (9,2);
INSERT INTO `pantalla_tipo_usuario` VALUES (11,2);
INSERT INTO `pantalla_tipo_usuario` VALUES (12,2);
INSERT INTO `pantalla_tipo_usuario` VALUES (15,2);
INSERT INTO `pantalla_tipo_usuario` VALUES (17,2);
INSERT INTO `pantalla_tipo_usuario` VALUES (18,1);
INSERT INTO `pantalla_tipo_usuario` VALUES (18,2);

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
 
 
CREATE TABLE `persona` (
  `id_persona` int(11) NOT NULL,
  `primer_nombre` varchar(50) NOT NULL,
  `segundo_nombre` varchar(50) DEFAULT NULL,
  `primer_apellido` varchar(50) NOT NULL,
  `segundo_apellido` varchar(50) DEFAULT NULL,
  `sexo` varchar(1) NOT NULL,
  `direccion` varchar(300) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  `numero_identidad` varchar(13) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `estado` varchar(1) NOT NULL,
  PRIMARY KEY (`id_persona`),
  UNIQUE KEY `identidad_uq` (`numero_identidad`)
);
 
--
-- Dumping data for table `persona`
--

INSERT INTO `persona` VALUES (1,'Alejandra','e ','Nuñez','e','F','adadfd','aleja@gmail.com.net','0801199022344','2019-03-11','A');
INSERT INTO `persona` VALUES (2,'Pedro','Petter','rodriguez','rodriguez','F','a','a_jjjj87@live.com','0801199707186','2012-12-12','A');
INSERT INTO `persona` VALUES (3,'Harri','Mae','Ordemann','Stroobant','F','8 American Center','harri_ordemann97@live.com','0302193781545','1937-05-19','A');
INSERT INTO `persona` VALUES (4,'Eward','Heywood','Abbiss','Stonman','M',NULL,'eward.abbiss9@gmail.com','0710195198104','1951-03-22','A');
INSERT INTO `persona` VALUES (5,'Perren','Ermin','Apple','Bernini','M','91 Hooker Circle','perren_apple@gmail.com','1215199416202','1994-09-23','A');
INSERT INTO `persona` VALUES (6,'Zorine','Fifi','Battlestone','Landeg','F',NULL,'zorine.battlestone@yahoo.com','1318199757407','1997-05-15','A');
INSERT INTO `persona` VALUES (7,'pedro','pedro','rodriguez','rodriguez','F','a','a_2345@gmail.com.hn','0106199609897','2012-03-13','A');
INSERT INTO `persona` VALUES (8,'Shelby','Adella','Gillbe','McTavish','F',NULL,'shelby.gillbe2@unah.hn','0410194085406','1940-08-17','A');
INSERT INTO `persona` VALUES (9,'Jodee','Janeta','Rome','Higgonet','F','1 Rigney Alley','jodee.rome@unah.hn','0202197316931','1973-08-05','A');
INSERT INTO `persona` VALUES (10,'Armando','Juan','Paredes','Perez','M','a','i_miss_spider@unah.hn.net','0801200015151','2000-02-02','A');
INSERT INTO `persona` VALUES (11,'Isadora',NULL,'Owlner',NULL,'F','93124 Havey Terrace','isadora.owlner9@unah.hn','1711199317976','1993-11-15','A');
INSERT INTO `persona` VALUES (12,'Alina','Dawna','O-Kelly','Matfin','F',NULL,'alina.o-kelly@live.com','0423200035393','2000-11-07','A');
INSERT INTO `persona` VALUES (13,'Morgan','Dennison','Extil','O- Mahony','M','2 Forest Run Parkway','morgan_extil9@gmail.com','0622198322687','1983-10-09','A');
INSERT INTO `persona` VALUES (14,'Silvain',NULL,'Caldero',NULL,'M',NULL,'silvain.caldero2@unah.hn','1414197641668','1976-07-02','A');
INSERT INTO `persona` VALUES (15,'Seward','Irwin','Bartell','Stowte','M',NULL,'seward_bartell56@unah.hn','0316196063335','1960-09-29','A');
INSERT INTO `persona` VALUES (16,'Jasun','Alphard','Tenman','Gyurkovics','M',NULL,'jasun.tenman40@live.com','0919193670198','1936-12-20','A');
INSERT INTO `persona` VALUES (17,'Hermon','Andrew','Ghion','Yedall','M',NULL,'hermon.ghion7@yahoo.com','0424198854813','1988-01-11','A');
INSERT INTO `persona` VALUES (18,'Davey',NULL,'Matous',NULL,'M',NULL,'davey_matous1@unah.hn','1704199545790','1995-12-04','A');
INSERT INTO `persona` VALUES (19,'Sollie',NULL,'Pigdon',NULL,'M','79 Montana Terrace','sollie.pigdon@unah.hn','0419199882821','1998-06-07','A');
INSERT INTO `persona` VALUES (20,'Katharina','Corella','Jezzard','Van der Kruijs','F',NULL,'katharina.jezzard3@unah.hn','1722193883100','1938-05-12','A');
INSERT INTO `persona` VALUES (21,'Melanie','Caril','Wyley','Ibanez','F',NULL,'melanie_wyley@live.com','1328195391141','1953-12-02','A');
INSERT INTO `persona` VALUES (22,'Joanna',NULL,'Amphlett',NULL,'F','633 Main Parkway','joanna_amphlett98@yahoo.com','0619199008001','1990-02-28','A');
INSERT INTO `persona` VALUES (23,'Wally','Karly','Hutchens','Newart','F',NULL,'wally_hutchens3@gmail.com','0325196463059','1964-02-01','A');
INSERT INTO `persona` VALUES (24,'Hestia','Vikki','Rubke','Moller','F',NULL,'hestia.rubke84@unah.hn','1113198580695','1985-05-03','A');
INSERT INTO `persona` VALUES (25,'Haskell','Morris','Crolla','Audus','M',NULL,'haskell_crolla54@gmail.com','0617195601456','1956-09-04','A');
INSERT INTO `persona` VALUES (26,'Melisent','Easter','Wanjek','Chiechio','F',NULL,'melisent_wanjek@unah.hn','0525195091532','1950-08-13','A');
INSERT INTO `persona` VALUES (27,'Quillan','Laughton','Ruprecht','Ashtonhurst','M','53182 Gale Road','quillan.ruprecht@yahoo.com','1806199057941','1990-01-18','A');
INSERT INTO `persona` VALUES (28,'Michel',NULL,'Livezey',NULL,'F',NULL,'michel.livezey49@gmail.com','0403193894736','1938-02-28','A');
INSERT INTO `persona` VALUES (29,'Otto','Judah','Sofe','Blades','M',NULL,'otto.sofe3@unah.hn','0503194088270','1940-05-24','A');
INSERT INTO `persona` VALUES (30,'Waylen',NULL,'Naulty',NULL,'M',NULL,'waylen_naulty6@live.com','0608199426216','1994-10-03','A');
INSERT INTO `persona` VALUES (31,'Ulrike','Neille','Bresnahan','Upfold','F',NULL,'ulrike.bresnahan8@unah.hn','1615197794544','1977-06-19','A');
INSERT INTO `persona` VALUES (32,'Celestine','Gilli','Yacobsohn','Dryden','F','489 Meadow Ridge Court','celestine.yacobsohn9@gmail.com','0808194476425','1944-11-27','A');
INSERT INTO `persona` VALUES (33,'Rhiamon','Keriann','Grevel','Long','F','1 Quincy Center','rhiamon.grevel02@unah.hn','1724193496817','1934-02-07','A');
INSERT INTO `persona` VALUES (34,'Amalle','Flor','Halsall','Kedslie','F',NULL,'amalle.halsall7@yahoo.com','0425196975892','1969-02-04','A');
INSERT INTO `persona` VALUES (35,'Abdel','Parsifal','Addey','Gannon','M',NULL,'abdel_addey90@unah.hn','0918199173767','1991-11-05','A');
INSERT INTO `persona` VALUES (36,'Darryl','Crichton','Dupre','Serrurier','M',NULL,'darryl.dupre55@live.com','1826196456042','1964-08-07','A');
INSERT INTO `persona` VALUES (37,'Lothario','Randy','Andrez','Gantz','M','3909 Northwestern Terrace','lothario.andrez39@unah.hn','1412199171675','1991-12-04','A');
INSERT INTO `persona` VALUES (38,'Orin','Eugene','Renney','Hardes','M','936 Briar Crest Park','orin_renney80@unah.hn','0112196592928','1965-03-24','A');
INSERT INTO `persona` VALUES (39,'Dyna','Lil','Inger','Folliss','F','58150 Crest Line Road','dyna_inger0@unah.hn','1624195195568','1951-08-02','A');
INSERT INTO `persona` VALUES (40,'Cynthia',NULL,'MacCarter',NULL,'F','68 Pierstorff Hill','cynthia.maccarter97@unah.hn','0716193221297','1932-06-25','A');
INSERT INTO `persona` VALUES (41,'Barnie',NULL,'Baxill',NULL,'M','76 Memorial Lane','barnie_baxill8@gmail.com','1115194882332','1948-10-09','A');
INSERT INTO `persona` VALUES (42,'Sergei','Wells','Ramalhete','Waggett','M',NULL,'sergei.ramalhete94@live.com','1827195912001','1959-10-03','A');
INSERT INTO `persona` VALUES (43,'Cassey',NULL,'Washington',NULL,'F','35937 American Ash Trail','cassey_washington2@live.com','1227197988654','1979-06-05','A');
INSERT INTO `persona` VALUES (44,'Zared','Dalis','Lukins','Cuttell','M',NULL,'zared_lukins@unah.hn','0317198229122','1982-01-11','A');
INSERT INTO `persona` VALUES (45,'Cassandra','Donnie','Liptrot','Hambric','F',NULL,'cassandra_liptrot2@unah.hn','1205197023863','1970-04-11','A');
INSERT INTO `persona` VALUES (46,'Lian','Lurette','Arons','Serris','F','89068 Porter Street','lian_arons9@live.com','0527197563754','1975-03-28','A');
INSERT INTO `persona` VALUES (47,'Brena',NULL,'Kirkbride',NULL,'F',NULL,'brena.kirkbride@unah.hn','0223193237935','1932-01-12','A');
INSERT INTO `persona` VALUES (48,'Pavia','Darlleen','Scotchforth','Sheaf','F','006 Crest Line Way','pavia_scotchforth45@yahoo.com','1112198794085','1987-09-24','A');
INSERT INTO `persona` VALUES (49,'Galen','Codi','Agron','Quinlan','M','9 Nelson Park','galen.agron6@unah.hn','0312194481264','1944-03-27','A');
INSERT INTO `persona` VALUES (50,'Chickie','Berton','Jimson','Bezant','M',NULL,'chickie_jimson@unah.hn','0406194431753','1944-06-13','A');
INSERT INTO `persona` VALUES (51,'Jory','Terencio','Santora','Bearcroft','M','89 Thierer Plaza','jory.santora43@live.com','0418197674431','1976-04-11','A');
INSERT INTO `persona` VALUES (52,'Matthew','Mordecai','MacLoughlin','Mouth','M',NULL,'matthew_macloughlin@live.com','1516194798176','1947-10-04','A');
INSERT INTO `persona` VALUES (53,'Filberto','Fitz','Johansen','Burdikin','M',NULL,'filberto.johansen@yahoo.com','0905199032657','1990-02-09','A');
INSERT INTO `persona` VALUES (54,'Jennifer','Jewel','Ainge','Coule','F',NULL,'jennifer_ainge45@yahoo.com','0925197762162','1977-02-20','A');
INSERT INTO `persona` VALUES (55,'Sawyer','Noah','Vela','Salaman','M','927 Forest Run Alley','sawyer_vela@unah.hn','0310194466163','1944-11-19','A');
INSERT INTO `persona` VALUES (56,'Kimbell',NULL,'Miskin',NULL,'M','74 Basil Place','kimbell.miskin93@unah.hn','1112195442005','1954-08-24','A');
INSERT INTO `persona` VALUES (57,'Rita',NULL,'Abramchik',NULL,'F','4706 Melrose Road','rita_abramchik@unah.hn','0614193401052','1934-10-07','A');
INSERT INTO `persona` VALUES (58,'Latia',NULL,'Niccolls',NULL,'F',NULL,'latia.niccolls83@unah.hn','1702198916711','1989-12-21','A');
INSERT INTO `persona` VALUES (59,'Clerissa','Marris','Lobell','Gatchell','F',NULL,'clerissa.lobell@gmail.com','1610193593070','1935-07-15','A');
INSERT INTO `persona` VALUES (60,'Bunni','Roselia','Catlin','Quayle','F',NULL,'bunni_catlin@unah.hn','0314194929580','1949-10-29','A');
INSERT INTO `persona` VALUES (61,'Sherwin',NULL,'Bartell',NULL,'M',NULL,'sherwin_bartell00@unah.hn','1406199562950','1995-01-12','A');
INSERT INTO `persona` VALUES (62,'Aleta',NULL,'Poynzer',NULL,'F',NULL,'aleta.poynzer@unah.hn','0607194093830','1940-08-09','A');
INSERT INTO `persona` VALUES (63,'Laughton','Isac','Rodden','Kitteringham','M',NULL,'laughton_rodden@unah.hn','1608194548297','1945-02-20','A');
INSERT INTO `persona` VALUES (64,'Evey',NULL,'Champkins',NULL,'F',NULL,'evey.champkins@unah.hn','0511196695712','1966-01-01','A');
INSERT INTO `persona` VALUES (65,'Enrika',NULL,'Kyngdon',NULL,'F','8461 Nelson Center','enrika.kyngdon54@live.com','0317199695192','1996-11-13','A');
INSERT INTO `persona` VALUES (66,'Vallie',NULL,'Cristobal',NULL,'F',NULL,'vallie.cristobal@unah.hn','0925193405491','1934-07-13','A');
INSERT INTO `persona` VALUES (67,'Alfonse','Lauritz','Lamartine','Castagno','M',NULL,'alfonse.lamartine22@unah.hn','1613199115006','1991-08-26','A');
INSERT INTO `persona` VALUES (68,'Derry','Dalli','Arp','Prothero','M',NULL,'derry_arp6@live.com','0404199056089','1990-01-19','A');
INSERT INTO `persona` VALUES (69,'Red','Killian','Clerke','Gotling','M','05152 Farmco Road','red.clerke49@unah.hn','0928195078129','1950-06-26','A');
INSERT INTO `persona` VALUES (70,'Filberto','Meredith','Gideon','Condy','M',NULL,'filberto.gideon11@unah.hn','1215195803451','1958-04-19','A');
INSERT INTO `persona` VALUES (71,'Bell','Cathie','Itskovitz','Scandwright','F',NULL,'bell_itskovitz@live.com','0221193672948','1936-12-07','A');
INSERT INTO `persona` VALUES (72,'Rabbi','Bart','Ing','Sainsbury-Brown','M',NULL,'rabbi.ing2@unah.hn','1412195041907','1950-06-21','A');
INSERT INTO `persona` VALUES (73,'Jamie',NULL,'Doone',NULL,'F','2 Hovde Trail','jamie.doone07@live.com','0315199470715','1994-04-23','A');
INSERT INTO `persona` VALUES (74,'Jerrie','Papagena','Jendrusch','Hamberstone','F',NULL,'jerrie_jendrusch98@gmail.com','0303197187618','1971-04-16','A');
INSERT INTO `persona` VALUES (75,'Giovanna','Patty','Kleinmintz','Swinney','F',NULL,'giovanna_kleinmintz42@unah.hn','0227195403673','1954-12-25','A');
INSERT INTO `persona` VALUES (76,'Phyllys','Candy','Gladwish','Gislebert','F',NULL,'phyllys_gladwish0@live.com','1005195114561','1951-09-21','A');
INSERT INTO `persona` VALUES (77,'Hersch',NULL,'Whittlesee',NULL,'M','6 Lakewood Circle','hersch.whittlesee17@unah.hn','1225195876823','1958-06-28','A');
INSERT INTO `persona` VALUES (78,'Orella','Tamarra','Shillinglaw','Wotherspoon','F','37824 Donald Plaza','orella.shillinglaw74@unah.hn','0127193322391','1933-05-16','A');
INSERT INTO `persona` VALUES (79,'Rosabelle','Elsey','Bosket','Beekman','F',NULL,'rosabelle_bosket90@unah.hn','1309193166277','1931-07-25','A');
INSERT INTO `persona` VALUES (80,'Anabella','Stevena','Spileman','Lapsley','F',NULL,'anabella.spileman@gmail.com','1302195437725','1954-09-11','A');
INSERT INTO `persona` VALUES (81,'Krysta',NULL,'Meys',NULL,'F',NULL,'krysta.meys@live.com','0403195145337','1951-12-20','A');
INSERT INTO `persona` VALUES (82,'Fulton','Myrvyn','Smellie','Brussels','M',NULL,'fulton.smellie@unah.hn','0601196139188','1961-08-03','A');
INSERT INTO `persona` VALUES (83,'Kinna','Vanessa','Souten','Ashton','F',NULL,'kinna.souten3@yahoo.com','0627199126435','1991-02-15','A');
INSERT INTO `persona` VALUES (84,'Goran',NULL,'Gaine',NULL,'M','1251 Blue Bill Park Point','goran.gaine5@unah.hn','1817199283091','1992-09-04','A');
INSERT INTO `persona` VALUES (85,'Ches','Daron','Wones','Baguley','M','0 Independence Court','ches_wones@unah.hn','1825195399954','1953-07-21','A');
INSERT INTO `persona` VALUES (86,'Nevsa','Emilia','Shane','Sparrowe','F','777 Green Point','nevsa.shane24@unah.hn','0926199825895','1998-07-09','A');
INSERT INTO `persona` VALUES (87,'Wanids','Antonie','Conor','Edmund','F',NULL,'wanids.conor96@unah.hn','0226199666370','1996-03-08','A');
INSERT INTO `persona` VALUES (88,'Khalil','Nicolis','Episcopio','Brimmacombe','M','37741 Porter Circle','khalil.episcopio65@live.com','1115199803810','1998-07-23','A');
INSERT INTO `persona` VALUES (89,'Mick','Hubey','Crocroft','Sodory','M',NULL,'mick.crocroft6@unah.hn','0205198721898','1987-03-04','A');
INSERT INTO `persona` VALUES (90,'Vlad',NULL,'Glyne',NULL,'M',NULL,'vlad_glyne@yahoo.com','0521196985173','1969-06-01','A');
INSERT INTO `persona` VALUES (91,'Sandy','Viva','Murrell','Hoodless','F',NULL,'sandy.murrell16@gmail.com','1023195842718','1958-11-02','A');
INSERT INTO `persona` VALUES (92,'Baxter','Dino','Penwright','Pail','M','6 Carpenter Hill','baxter.penwright18@unah.hn','1418195306807','1953-11-08','A');
INSERT INTO `persona` VALUES (93,'Kaleb','Culley','Jatczak','Eadmeades','M',NULL,'kaleb.jatczak1@live.com','1122194002403','1940-11-19','A');
INSERT INTO `persona` VALUES (94,'Tamera','Cordy','Linebarger','Cocker','F',NULL,'tamera.linebarger@unah.hn','1203195784260','1957-10-26','A');
INSERT INTO `persona` VALUES (95,'Alleen',NULL,'Farndell',NULL,'F','03 Westridge Terrace','alleen.farndell8@unah.hn','1313197329183','1973-11-20','A');
INSERT INTO `persona` VALUES (96,'Bradley','Rube','Cristofor','Epinoy','M',NULL,'bradley_cristofor@gmail.com','1710199836266','1998-02-12','A');
INSERT INTO `persona` VALUES (97,'Lin','Grace','Calderhead','Weedon','M','29652 Fordem Way','lin.calderhead0@yahoo.com','0821199935211','1999-02-25','A');
INSERT INTO `persona` VALUES (98,'Dickie','Stephan','Verrillo','Hilary','M',NULL,'dickie.verrillo@gmail.com','1315198112196','1981-05-17','A');
INSERT INTO `persona` VALUES (99,'Hayes','Gunner','Rainbird','Everley','M',NULL,'hayes.rainbird65@unah.hn','1528195048988','1950-12-23','A');
INSERT INTO `persona` VALUES (100,'Gennie',NULL,'Phinnis',NULL,'F','37 Manley Point','gennie.phinnis0@live.com','1527198925888','1989-05-29','A');
INSERT INTO `persona` VALUES (101,'Chryste','Mari','Redihough','Mansford','F',NULL,'chryste.redihough37@live.com','1103193814815','1938-08-04','A');
INSERT INTO `persona` VALUES (102,'Lemuel','Milt','Falco','Wesson','M',NULL,'lemuel.falco12@live.com','0922198811891','1988-05-29','A');
INSERT INTO `persona` VALUES (103,'Laurella','Ammamaria','Dobbinson','Hartle','F','95 Lakewood Gardens Trail','laurella_dobbinson97@yahoo.com','1026198244089','1982-08-30','A');
INSERT INTO `persona` VALUES (104,'Noach','Alessandro','Tuiller','Coppock.','M',NULL,'noach.tuiller7@live.com','0727197456470','1974-10-05','A');
INSERT INTO `persona` VALUES (105,'Blaine','Guillermo','Sollars','Titterington','M','5 Eagan Park','blaine_sollars8@unah.hn','1718194131517','1941-10-25','A');
INSERT INTO `persona` VALUES (106,'Dorie','Perceval','McLinden','MacGhee','M','7184 Lotheville Way','dorie.mclinden35@unah.hn','1204196141770','1961-07-05','A');
INSERT INTO `persona` VALUES (107,'Cross',NULL,'Cassley',NULL,'M','0750 Moose Park','cross.cassley@gmail.com','1010197767782','1977-04-11','A');
INSERT INTO `persona` VALUES (108,'Yorke',NULL,'Todarini',NULL,'M','776 Oakridge Road','yorke_todarini@live.com','0514198825336','1988-05-11','A');
INSERT INTO `persona` VALUES (109,'Glenden','Cece','Woodruff','Mallon','M',NULL,'glenden.woodruff3@gmail.com','1224194223912','1942-12-14','A');
INSERT INTO `persona` VALUES (110,'Darell','Lilith','Reynault','Pickersgill','F','620 Hermina Court','darell.reynault9@live.com','1323197060543','1970-05-29','A');
INSERT INTO `persona` VALUES (111,'Persis','Adrea','Crowder','Ronaghan','F',NULL,'persis.crowder81@unah.hn','0624193469466','1934-10-29','A');
INSERT INTO `persona` VALUES (112,'North','Kristoforo','Normansell','Baselli','M','1617 Bunting Court','north_normansell97@unah.hn','1807198724264','1987-06-21','A');
INSERT INTO `persona` VALUES (113,'Charlton','Murdoch','Harhoff','Everill','M',NULL,'charlton_harhoff38@unah.hn','1227196244011','1962-04-22','A');
INSERT INTO `persona` VALUES (114,'Carey','Hatty','Chaloner','Tutchings','F',NULL,'carey.chaloner@gmail.com','1321193197125','1931-06-15','A');
INSERT INTO `persona` VALUES (115,'Ebenezer',NULL,'Broadbridge',NULL,'M',NULL,'ebenezer.broadbridge77@unah.hn','0323194658013','1946-08-17','A');
INSERT INTO `persona` VALUES (116,'Hamnet','Horten','Guilder','Durrell','M',NULL,'hamnet.guilder@unah.hn','0826195393858','1953-10-10','A');
INSERT INTO `persona` VALUES (117,'Guglielma',NULL,'Piatkow',NULL,'F','11 Gale Alley','guglielma.piatkow@unah.hn','1327197867094','1978-05-17','A');
INSERT INTO `persona` VALUES (118,'Weber','Demetris','Ollier','Korejs','M','40970 Bobwhite Point','weber_ollier4@gmail.com','0819197491795','1974-06-10','A');
INSERT INTO `persona` VALUES (119,'Margarette',NULL,'Crosser',NULL,'F','7 Elmside Terrace','margarette.crosser@unah.hn','0215198660737','1986-03-22','A');
INSERT INTO `persona` VALUES (120,'Katusha',NULL,'Rishbrook',NULL,'F',NULL,'katusha.rishbrook66@unah.hn','0607194514476','1945-05-25','A');
INSERT INTO `persona` VALUES (121,'Rhodia','Jan','Fairholm','Trolley','F','65484 East Hill','rhodia.fairholm15@yahoo.com','1225196006810','1960-02-19','A');
INSERT INTO `persona` VALUES (122,'Ennis','Moe','Urry','Stilling','M',NULL,'ennis.urry47@yahoo.com','1321198502548','1985-08-19','A');
INSERT INTO `persona` VALUES (123,'Wye','Zacharia','Youngman','Grice','M',NULL,'wye.youngman@unah.hn','0802193929628','1939-12-01','A');
INSERT INTO `persona` VALUES (124,'Mayor','Arnoldo','Chaize','Bing','M',NULL,'mayor.chaize31@gmail.com','0521199498157','1994-11-21','A');
INSERT INTO `persona` VALUES (125,'Banky','Rudie','Spaice','Heatherington','M',NULL,'banky_spaice75@unah.hn','0216198273150','1982-08-30','A');
INSERT INTO `persona` VALUES (126,'Dita','Tabatha','Norheny','Kettoe','F','2007 Waywood Road','dita_norheny@live.com','1724198449074','1984-09-23','A');
INSERT INTO `persona` VALUES (127,'Phyllida','Maurita','Minchi','McKinney','F','00849 Dwight Hill','phyllida.minchi@live.com','1010195750637','1957-02-26','A');
INSERT INTO `persona` VALUES (128,'Drud','Nealy','Bourgeois','Simison','M','1912 Mendota Trail','drud_bourgeois5@unah.hn','0203193376407','1933-05-22','A');
INSERT INTO `persona` VALUES (129,'Hammad',NULL,'Greenstead',NULL,'M','5 Loomis Junction','hammad_greenstead49@unah.hn','0823195867459','1958-05-10','A');
INSERT INTO `persona` VALUES (130,'Emylee','Victoria','Cowndley','Thridgould','F','9270 Arkansas Circle','emylee.cowndley@unah.hn','0723196671355','1966-12-05','A');
INSERT INTO `persona` VALUES (131,'Nata','Gael','Rosbottom','Semper','F','24 Harper Plaza','nata.rosbottom59@unah.hn','0804194116671','1941-12-01','A');
INSERT INTO `persona` VALUES (132,'Gwenore','Lilla','Bastiman','Chipp','F',NULL,'gwenore.bastiman30@live.com','0216194525222','1945-03-05','A');
INSERT INTO `persona` VALUES (133,'Cortie','Alberik','Pennock','Crellin','M',NULL,'cortie_pennock57@yahoo.com','0626194721186','1947-04-28','A');
INSERT INTO `persona` VALUES (134,'Stanton','Bradan','McPeake','Sames','M','79452 Forest Crossing','stanton.mcpeake64@unah.hn','1521193525857','1935-04-08','A');
INSERT INTO `persona` VALUES (135,'Pepita','Eva','Gaitskill','Radborn','F',NULL,'pepita_gaitskill44@live.com','0514195678962','1956-06-16','A');
INSERT INTO `persona` VALUES (136,'Maddie',NULL,'Selbie',NULL,'F',NULL,'maddie.selbie63@unah.hn','1602197041395','1970-06-26','A');
INSERT INTO `persona` VALUES (137,'Page','Melvyn','Hudd','McClean','M','65 Red Cloud Park','page_hudd9@live.com','0623195898444','1958-12-06','A');
INSERT INTO `persona` VALUES (138,'Courtnay','Louie','Jerzak','Duffie','M',NULL,'courtnay_jerzak7@unah.hn','0308197311707','1973-07-31','A');
INSERT INTO `persona` VALUES (139,'Heywood','Benjy','Garrad','Hallwell','M',NULL,'heywood_garrad58@unah.hn','0419195384243','1953-12-28','A');
INSERT INTO `persona` VALUES (140,'Daryl','Norman','Hoogendorp','Vodden','M',NULL,'daryl_hoogendorp@unah.hn','0626197742747','1977-06-25','A');
INSERT INTO `persona` VALUES (141,'Lydie','Kyrstin','Antwis','Bartelli','F',NULL,'lydie_antwis5@unah.hn','0628196294529','1962-05-29','A');
INSERT INTO `persona` VALUES (142,'Sherman',NULL,'Maving',NULL,'M',NULL,'sherman_maving65@unah.hn','0906194517853','1945-01-16','A');
INSERT INTO `persona` VALUES (143,'Dreddy','Ezmeralda','Randal','Batman','F','3307 Merrick Way','dreddy_randal13@gmail.com','1512198857900','1988-10-21','A');
INSERT INTO `persona` VALUES (144,'Ted','Eugenio','Harbar','Caslin','M',NULL,'ted_harbar4@live.com','0906199589283','1995-12-05','A');
INSERT INTO `persona` VALUES (145,'Johann',NULL,'Denley',NULL,'M',NULL,'johann.denley@gmail.com','0204199720278','1997-02-19','A');
INSERT INTO `persona` VALUES (146,'Abbot',NULL,'Boxen',NULL,'M',NULL,'abbot_boxen@unah.hn','1227194046195','1940-11-04','A');
INSERT INTO `persona` VALUES (147,'Junette',NULL,'Hurnell',NULL,'F','745 Coolidge Junction','junette_hurnell@gmail.com','0617195281797','1952-03-05','A');
INSERT INTO `persona` VALUES (148,'Harlan',NULL,'Rickeard',NULL,'M',NULL,'harlan_rickeard70@gmail.com','1421197168629','1971-06-18','A');
INSERT INTO `persona` VALUES (149,'Julian','Hadley','Beaten','Desseine','M','9279 Kensington Hill','julian.beaten@unah.hn','1821198626250','1986-12-07','A');
INSERT INTO `persona` VALUES (150,'Hodge','Reginauld','Rapkins','Gregson','M','92 Shasta Street','hodge.rapkins8@yahoo.com','0602193139048','1931-01-10','A');
INSERT INTO `persona` VALUES (151,'Olenka','Alessandra','Little','Burling','F',NULL,'olenka.little@gmail.com','0802197405152','1974-03-02','A');
INSERT INTO `persona` VALUES (152,'Philomena','Meg','Ranken','Babcock','F','82 Hoffman Park','philomena_ranken66@unah.hn','1806193603554','1936-06-22','A');
INSERT INTO `persona` VALUES (153,'Merrill','Paxon','Billham','Woodnutt','M','874 Erie Parkway','merrill.billham6@live.com','1315198663022','1986-10-13','A');
INSERT INTO `persona` VALUES (154,'Adrien','Uriah','Karlik','Heare','M','69 Swallow Circle','adrien.karlik@unah.hn','1214193571571','1935-12-03','A');
INSERT INTO `persona` VALUES (155,'Laney','Trace','McEntee','Barefoot','M','3138 Merry Place','laney_mcentee39@gmail.com','1506197165561','1971-11-18','A');
INSERT INTO `persona` VALUES (156,'Elliot',NULL,'Brumfield',NULL,'M',NULL,'elliot_brumfield35@unah.hn','0715199160753','1991-06-09','A');
INSERT INTO `persona` VALUES (157,'Benedikta','Bernete','Dougill','Stagg','F',NULL,'benedikta.dougill75@yahoo.com','1013197364073','1973-02-28','A');
INSERT INTO `persona` VALUES (158,'Thane','Rip','Segoe','Rooms','M','25 Goodland Pass','thane.segoe@unah.hn','0526199608265','1996-08-19','A');
INSERT INTO `persona` VALUES (159,'Xaviera','Elsinore','Grewer','Eldered','F',NULL,'xaviera_grewer0@gmail.com','0217196888650','1968-07-23','A');
INSERT INTO `persona` VALUES (160,'Terrye',NULL,'Caraher',NULL,'F','80339 Lake View Trail','terrye.caraher9@yahoo.com','0412197572351','1975-02-27','A');
INSERT INTO `persona` VALUES (161,'Towny',NULL,'D-Emanuele',NULL,'M',NULL,'towny_d-emanuele@live.com','1824198227452','1982-01-15','A');
INSERT INTO `persona` VALUES (162,'Carmine','Briney','Cawker','Kerswell','F','405 Erie Avenue','carmine_cawker@unah.hn','0201193390307','1933-01-11','A');
INSERT INTO `persona` VALUES (163,'Camella','Allyn','Hubery','Moorman','F',NULL,'camella.hubery7@unah.hn','0321197082162','1970-03-21','A');
INSERT INTO `persona` VALUES (164,'Virginie',NULL,'Crimmins',NULL,'F',NULL,'virginie.crimmins1@unah.hn','1201195649583','1956-07-23','A');
INSERT INTO `persona` VALUES (165,'Gus','Welby','Yonnie','Stode','M',NULL,'gus_yonnie1@unah.hn','0126195340931','1953-10-20','A');
INSERT INTO `persona` VALUES (166,'Dougie',NULL,'Jakubovits',NULL,'M',NULL,'dougie.jakubovits@yahoo.com','0904197000781','1970-12-24','A');
INSERT INTO `persona` VALUES (167,'Bernelle','Mead','Veracruysse','Colles','F','28 Hovde Alley','bernelle_veracruysse22@unah.hn','0122197743957','1977-12-25','A');
INSERT INTO `persona` VALUES (168,'Livvy',NULL,'Tomaszynski',NULL,'F','1 Parkside Place','livvy_tomaszynski91@unah.hn','1026197996335','1979-11-11','A');
INSERT INTO `persona` VALUES (169,'Kordula','Valina','Ziemke','Seeds','F','01229 Kensington Point','kordula_ziemke@live.com','0211198961603','1989-10-31','A');
INSERT INTO `persona` VALUES (170,'Kenneth','Filberte','Meys','Abrahim','M','372 Stoughton Lane','kenneth.meys40@unah.hn','0413199253736','1992-03-28','A');
INSERT INTO `persona` VALUES (171,'Cortney','Arlena','Ebbett','Stormont','F','767 7th Street','cortney_ebbett@unah.hn','1127193619861','1936-01-22','A');
INSERT INTO `persona` VALUES (172,'Darelle','Ronda','Cristofari','Govey','F','1350 Mayer Junction','darelle.cristofari@unah.hn','0710196611739','1966-03-08','A');
INSERT INTO `persona` VALUES (173,'Timmy',NULL,'Berthon',NULL,'M',NULL,'timmy.berthon56@live.com','1226195114477','1951-09-17','A');
INSERT INTO `persona` VALUES (174,'Jarrid',NULL,'Berks',NULL,'M','90 Elka Pass','jarrid.berks78@live.com','1627193181520','1931-12-29','A');
INSERT INTO `persona` VALUES (175,'Mil','Chickie','Sebastian','Widd','F','859 4th Center','mil.sebastian@unah.hn','0913196414276','1964-11-09','A');
INSERT INTO `persona` VALUES (176,'Cristiano','Gianni','Cripps','Moorfield','M',NULL,'cristiano.cripps4@yahoo.com','0926198638658','1986-07-18','A');
INSERT INTO `persona` VALUES (177,'Rafa',NULL,'Titmuss',NULL,'F',NULL,'rafa.titmuss6@unah.hn','1425193806758','1938-01-01','A');
INSERT INTO `persona` VALUES (178,'Gaston','Gavin','Kinnen','Faers','M','530 Mcguire Trail','gaston.kinnen@live.com','0412199365446','1993-10-04','A');
INSERT INTO `persona` VALUES (179,'Reginald','Dennis','McConaghy','Crow','M','90847 Oxford Circle','reginald.mcconaghy78@unah.hn','1621195520300','1955-06-16','A');
INSERT INTO `persona` VALUES (180,'Gannie','Hieronymus','Truluck','McCormack','M','65744 Summerview Pass','gannie.truluck@unah.hn','0714198817119','1988-07-27','A');
INSERT INTO `persona` VALUES (181,'Starlin','Patience','Hambleton','Kimbrey','F',NULL,'starlin.hambleton@unah.hn','1515197550859','1975-01-08','A');
INSERT INTO `persona` VALUES (182,'Norma','Enrichetta','Worrall','Lehrian','F','32089 Northport Junction','norma.worrall04@live.com','0109199417788','1994-02-22','A');
INSERT INTO `persona` VALUES (183,'Vassily','Reinold','Dawtre','Clows','M','4914 Haas Pass','vassily_dawtre@unah.hn','1701193445825','1934-09-30','A');
INSERT INTO `persona` VALUES (184,'Angelia',NULL,'Mignot',NULL,'F',NULL,'angelia.mignot@live.com','1209193558440','1935-05-12','A');
INSERT INTO `persona` VALUES (185,'Juanita','Misty','Merrien','Hearsey','F',NULL,'juanita_merrien54@unah.hn','1119197466393','1974-11-19','A');
INSERT INTO `persona` VALUES (186,'Bradney','Julius','Cosgrove','Ing','M',NULL,'bradney.cosgrove@live.com','0110198541645','1985-09-03','A');
INSERT INTO `persona` VALUES (187,'Bendite',NULL,'McLardie',NULL,'F','11 Anhalt Junction','bendite.mclardie6@live.com','1822199448424','1994-11-30','A');
INSERT INTO `persona` VALUES (188,'Kellen','Herman','Burhill','Blaase','M',NULL,'kellen.burhill8@unah.hn','0401200010657','2000-01-10','A');
INSERT INTO `persona` VALUES (189,'Artair',NULL,'Littler',NULL,'M','8385 Anzinger Pass','artair_littler9@unah.hn','0205199808960','1998-10-11','A');
INSERT INTO `persona` VALUES (190,'Randa',NULL,'Madgett',NULL,'F',NULL,'randa_madgett02@yahoo.com','0718194590858','1945-11-25','A');
INSERT INTO `persona` VALUES (191,'Quinn','Vere','Week','Scripture','F','5 Derek Road','quinn.week38@unah.hn','0823194815203','1948-11-16','A');
INSERT INTO `persona` VALUES (192,'Herc','Giustino','Dericot','Cowtherd','M',NULL,'herc.dericot@unah.hn','1625198720124','1987-05-16','A');
INSERT INTO `persona` VALUES (193,'Dorie','My','Lademann','Isson','M',NULL,'dorie.lademann@live.com','0113193455246','1934-09-30','A');
INSERT INTO `persona` VALUES (194,'Yoko','Jsandye','Baldoni','Twiddle','F','28 Novick Place','yoko.baldoni9@unah.hn','1721194585425','1945-05-21','A');
INSERT INTO `persona` VALUES (195,'Terrell','Jeramie','Ablett','Yerill','M','183 Tomscot Terrace','terrell_ablett1@gmail.com','0913198654115','1986-02-24','A');
INSERT INTO `persona` VALUES (196,'Suellen',NULL,'Singleton',NULL,'F','72023 Dottie Plaza','suellen.singleton78@unah.hn','0611195360081','1953-06-06','A');
INSERT INTO `persona` VALUES (197,'Broddy','Neall','Danieli','Featenby','M',NULL,'broddy.danieli1@live.com','1714198957679','1989-08-24','A');
INSERT INTO `persona` VALUES (198,'Devlen','Hewet','Oats','Dulanty','M',NULL,'devlen_oats@unah.hn','1617194007263','1940-06-29','A');
INSERT INTO `persona` VALUES (199,'Diego','Tynan','Oxshott','Raithby','M',NULL,'diego_oxshott85@unah.hn','0107199359443','1993-03-14','A');
INSERT INTO `persona` VALUES (200,'Mitch','Raffaello','Andre','Reek','M',NULL,'mitch_andre52@unah.hn','0717199564345','1995-04-17','A');
INSERT INTO `persona` VALUES (201,'Caryl',NULL,'Heaslip',NULL,'M',NULL,'caryl_heaslip14@unah.hn','1205195916250','1959-10-02','A');
INSERT INTO `persona` VALUES (202,'Sephira','Tanya','Steynor','Sporle','F',NULL,'sephira_steynor@live.com','0806194194284','1941-12-09','A');
INSERT INTO `persona` VALUES (203,'Stafford','Dale','Blackney','Houseley','M',NULL,'stafford.blackney6@unah.hn','0424196609491','1966-04-28','A');
INSERT INTO `persona` VALUES (204,'Witty','Tulley','Addie','Coltart','M',NULL,'witty.addie4@unah.hn','0423193084422','1930-12-12','A');
INSERT INTO `persona` VALUES (205,'Rey','Hercule','Menier','Plumptre','M',NULL,'rey_menier@gmail.com','0915198360264','1983-10-17','A');
INSERT INTO `persona` VALUES (206,'Stefanie',NULL,'Zylberdik',NULL,'F','29 South Way','stefanie_zylberdik37@unah.hn','0909197226671','1972-10-18','A');
INSERT INTO `persona` VALUES (207,'Sharia',NULL,'Fairest',NULL,'F',NULL,'sharia.fairest5@unah.hn','1111195367785','1953-04-25','A');
INSERT INTO `persona` VALUES (208,'Tessa','Barbra','Schirok','Jiggle','F',NULL,'tessa.schirok@unah.hn','0508197515785','1975-01-05','A');
INSERT INTO `persona` VALUES (209,'Maryl','Lory','Billingham','Reilly','F',NULL,'maryl_billingham@unah.hn','1802196589709','1965-06-09','A');
INSERT INTO `persona` VALUES (210,'Traci','Lynelle','Phlippi','Orton','F','5 Myrtle Place','traci.phlippi21@unah.hn','1723199729397','1997-07-08','A');
INSERT INTO `persona` VALUES (211,'Penny',NULL,'Spiniello',NULL,'F','87549 Grayhawk Court','penny_spiniello47@gmail.com','0603195657423','1956-09-06','A');
INSERT INTO `persona` VALUES (212,'Antons','Cullin','George','Izkovitz','M',NULL,'antons.george@unah.hn','1118193796404','1937-10-02','A');
INSERT INTO `persona` VALUES (213,'Marlo','Daile','Marder','McPhelimey','F',NULL,'marlo.marder@unah.hn','1709193170159','1931-07-06','A');
INSERT INTO `persona` VALUES (214,'Larisa','Letta','Kennagh','Rubertis','F',NULL,'larisa.kennagh07@unah.hn','0416198992540','1989-02-02','A');
INSERT INTO `persona` VALUES (215,'Candice','Liliane','Dobbinson','Rodge','F',NULL,'candice_dobbinson4@live.com','1617194690078','1946-05-01','A');
INSERT INTO `persona` VALUES (216,'Germain','Elsinore','McLorinan','Riccioppo','F',NULL,'germain_mclorinan18@unah.hn','1319197785888','1977-03-23','A');
INSERT INTO `persona` VALUES (217,'Gwendolen','Adelaide','Spence','Gonnet','F',NULL,'gwendolen.spence92@unah.hn','1005193337310','1933-07-04','A');
INSERT INTO `persona` VALUES (218,'Giana','Jeralee','Dilliston','Langlais','F',NULL,'giana_dilliston@unah.hn','0910199775656','1997-12-06','A');
INSERT INTO `persona` VALUES (219,'Buck','Yancy','Bossons','Coners','M','05308 Boyd Point','buck_bossons@live.com','0203196366101','1963-05-22','A');
INSERT INTO `persona` VALUES (220,'Emmy','Tan','Crowcum','Woofinden','M','643 Di Loreto Court','emmy_crowcum1@unah.hn','0618194272978','1942-10-10','A');
INSERT INTO `persona` VALUES (221,'Flss','Ariana','Bellanger','Le Estut','F','62814 Schurz Alley','flss_bellanger@live.com','1722196191740','1961-09-06','A');
INSERT INTO `persona` VALUES (222,'Valentin','Barnard','Dummer','Glaum','M',NULL,'valentin.dummer@unah.hn','1826194344264','1943-01-13','A');
INSERT INTO `persona` VALUES (223,'Reynard','Napoleon','Haughton','Hartzog','M','087 Quincy Crossing','reynard_haughton80@unah.hn','1124199046722','1990-10-08','A');
INSERT INTO `persona` VALUES (224,'Edmund',NULL,'Worpole',NULL,'M','47801 Karstens Crossing','edmund_worpole33@yahoo.com','1421197409860','1974-03-08','A');
INSERT INTO `persona` VALUES (225,'Jeanette','Zsazsa','Spelman','Kesby','F','6617 Spaight Plaza','jeanette.spelman9@live.com','0621193732912','1937-12-17','A');
INSERT INTO `persona` VALUES (226,'Travers','Pietro','Guppy','Maytum','M','77905 Kipling Hill','travers.guppy1@unah.hn','0923199426076','1994-06-18','A');
INSERT INTO `persona` VALUES (227,'Basilio',NULL,'Tolwood',NULL,'M','0733 Spohn Drive','basilio_tolwood@unah.hn','0923195963238','1959-09-05','A');
INSERT INTO `persona` VALUES (228,'Cristabel','Ninnette','Ishak','Fero','F','9744 Evergreen Place','cristabel_ishak6@gmail.com','1624195659848','1956-09-10','A');
INSERT INTO `persona` VALUES (229,'Thadeus',NULL,'Bartke',NULL,'M','21399 Arapahoe Park','thadeus_bartke@live.com','0915196850223','1968-09-11','A');
INSERT INTO `persona` VALUES (230,'Cory','Hannis','McCalister','Labrow','F',NULL,'cory.mccalister@unah.hn','1501193963107','1939-07-04','A');
INSERT INTO `persona` VALUES (231,'Stanislaw','Eddy','Tomankiewicz','Celier','M','1 Anzinger Center','stanislaw_tomankiewicz3@unah.hn','0513197470842','1974-02-22','A');
INSERT INTO `persona` VALUES (232,'Rollie','Waverly','Drains','Kedge','M','0339 1st Place','rollie_drains@live.com','1621193023461','1930-09-08','A');
INSERT INTO `persona` VALUES (233,'Kellen','Angelo','Skerrett','Wisby','M','831 La Follette Plaza','kellen.skerrett@unah.hn','1010196404969','1964-03-13','A');
INSERT INTO `persona` VALUES (234,'Pablo','Evered','Minney','Lorincz','M',NULL,'pablo_minney6@yahoo.com','0512196091005','1960-10-27','A');
INSERT INTO `persona` VALUES (235,'Tillie','Brittan','Dray','Charke','F','81 Bunting Avenue','tillie.dray75@unah.hn','0402196986537','1969-07-25','A');
INSERT INTO `persona` VALUES (236,'Bunnie','Cassandry','Haydock','Tarbath','F','5 Corben Park','bunnie_haydock9@gmail.com','0502193959449','1939-04-11','A');
INSERT INTO `persona` VALUES (237,'Johanna','Margaux','Peacham','Rickell','F',NULL,'johanna.peacham33@unah.hn','0505198250358','1982-09-07','A');
INSERT INTO `persona` VALUES (238,'Flori','Doralynn','Gomby','Kennerknecht','F','52629 Pearson Alley','flori.gomby48@unah.hn','1217193419368','1934-06-02','A');
INSERT INTO `persona` VALUES (239,'Amelie',NULL,'Dana',NULL,'F','6128 Westend Way','amelie.dana@unah.hn','0812197008339','1970-08-26','A');
INSERT INTO `persona` VALUES (240,'Lorilee','Marina','Sarjeant','Reihill','F',NULL,'lorilee.sarjeant0@unah.hn','0309198063705','1980-09-02','A');
INSERT INTO `persona` VALUES (241,'Guinna','Loretta','Lovitt','Barnett','F','2 Manley Pass','guinna_lovitt26@unah.hn','1414194583592','1945-12-08','A');
INSERT INTO `persona` VALUES (242,'Rorke','Horace','Main','Zmitrovich','M',NULL,'rorke_main6@unah.hn','1427193780316','1937-04-23','A');
INSERT INTO `persona` VALUES (243,'Stacee','Kelly','Andor','Stratz','M','695 Arapahoe Crossing','stacee.andor5@yahoo.com','0307198379543','1983-11-13','A');
INSERT INTO `persona` VALUES (244,'Nicol','Tawsha','Bridge','Veldman','F',NULL,'nicol_bridge20@yahoo.com','0527197219370','1972-11-15','A');
INSERT INTO `persona` VALUES (245,'Marisa','Koral','Alldre','Quinnelly','F','73968 Hauk Hill','marisa_alldre2@unah.hn','0206198633970','1986-02-01','A');
INSERT INTO `persona` VALUES (246,'Jermain','Stan','Scarlet','Wythe','M',NULL,'jermain.scarlet@live.com','0216193026842','1930-08-31','A');
INSERT INTO `persona` VALUES (247,'Matt',NULL,'Losselyong',NULL,'M',NULL,'matt.losselyong09@live.com','1607194075372','1940-04-23','A');
INSERT INTO `persona` VALUES (248,'Reiko','Patience','Knoller','Parnell','F','2627 Kim Parkway','reiko.knoller@unah.hn','1224198041805','1980-06-10','A');
INSERT INTO `persona` VALUES (249,'Reidar','Sullivan','Medlin','Conibere','M','75720 Warrior Crossing','reidar.medlin0@unah.hn','1807196969331','1969-08-23','A');
INSERT INTO `persona` VALUES (250,'Base','Abbot','Balderston','Peirson','M',NULL,'base.balderston9@unah.hn','1513198911676','1989-05-31','A');
INSERT INTO `persona` VALUES (251,'Karola','Katlin','Leward','Gabbett','F',NULL,'karola.leward@live.com','1819194708398','1947-05-11','A');
INSERT INTO `persona` VALUES (252,'Bret',NULL,'Maybery',NULL,'M','3201 Westend Trail','bret_maybery@unah.hn','0310193951817','1939-01-08','A');
INSERT INTO `persona` VALUES (253,'Minni',NULL,'Shepstone',NULL,'F',NULL,'minni_shepstone@live.com','1228193481502','1934-02-06','A');
INSERT INTO `persona` VALUES (254,'Kurtis','Nappy','Skedgell','Bracher','M',NULL,'kurtis.skedgell6@gmail.com','1016198261554','1982-12-24','A');
INSERT INTO `persona` VALUES (255,'Noe','Aldin','Entwistle','Lissandri','M','9 Rowland Plaza','noe_entwistle@unah.hn','0105193119351','1931-11-12','A');
INSERT INTO `persona` VALUES (256,'Tera','Barry','Chappelow','Antosik','F',NULL,'tera.chappelow5@live.com','0624198480274','1984-01-06','A');
INSERT INTO `persona` VALUES (257,'Leila','Kathie','Landal','Graffin','F','2524 Pleasure Court','leila_landal32@unah.hn','0202193399895','1933-04-20','A');
INSERT INTO `persona` VALUES (258,'Kylie',NULL,'Gaze',NULL,'M','1368 Waywood Plaza','kylie_gaze33@live.com','0104194182730','1941-10-15','A');
INSERT INTO `persona` VALUES (259,'Jarid','Gail','Paulisch','Duprey','M',NULL,'jarid.paulisch1@unah.hn','0711193843132','1938-05-02','A');
INSERT INTO `persona` VALUES (260,'Whitney','Austin','Matejka','Mansour','M',NULL,'whitney.matejka4@gmail.com','1103195691441','1956-12-31','A');
INSERT INTO `persona` VALUES (261,'Marisa','Dorella','Pennington','Whitman','F','2564 Schiller Parkway','marisa_pennington@live.com','1409200003446','2000-12-28','A');
INSERT INTO `persona` VALUES (262,'Kit','Clement','McLaine','Ings','M','6 Warner Drive','kit.mclaine@unah.hn','1118193522971','1935-05-12','A');
INSERT INTO `persona` VALUES (263,'Elvera','Zulema','Borg-Bartolo','Eady','F','17040 Katie Avenue','elvera.borg-bartolo@unah.hn','1528195030606','1950-08-11','A');
INSERT INTO `persona` VALUES (264,'Jerad','Martainn','McKimmey','Goodsell','M',NULL,'jerad_mckimmey1@live.com','0116199625491','1996-12-11','A');
INSERT INTO `persona` VALUES (265,'Jane','Ashlie','Roseborough','Gyse','F',NULL,'jane.roseborough0@unah.hn','0921198210838','1982-12-30','A');
INSERT INTO `persona` VALUES (266,'Krisha','Miller','Oherlihy','Dixcey','M','91 Clove Terrace','krisha.oherlihy0@unah.hn','0926194898173','1948-01-25','A');
INSERT INTO `persona` VALUES (267,'Melicent','Valli','Brooks','Shooter','F',NULL,'melicent_brooks9@unah.hn','1121196782644','1967-12-20','A');
INSERT INTO `persona` VALUES (268,'Brendis',NULL,'Verbrugge',NULL,'M','05 Lakewood Gardens Court','brendis.verbrugge15@unah.hn','0806197041118','1970-01-26','A');
INSERT INTO `persona` VALUES (269,'Rustin','Parke','Osinin','Bottrill','M','963 Paget Alley','rustin.osinin57@unah.hn','1406198465725','1984-06-13','A');
INSERT INTO `persona` VALUES (270,'Nilson','Saxon','Stubs','Hebbes','M',NULL,'nilson_stubs@unah.hn','1523193572420','1935-01-27','A');
INSERT INTO `persona` VALUES (271,'Kane','Mord','Glewe','Haime','M',NULL,'kane.glewe@unah.hn','1810198120164','1981-07-10','A');
INSERT INTO `persona` VALUES (272,'Lock','Austen','Waplinton','Holliar','M','0333 Brown Center','lock.waplinton@live.com','0222193820383','1938-06-15','A');
INSERT INTO `persona` VALUES (273,'Arron',NULL,'Burghill',NULL,'M','0 Elka Point','arron_burghill4@gmail.com','0908197959146','1979-08-18','A');
INSERT INTO `persona` VALUES (274,'Blanch','Christian','Mooney','Klimpt','F',NULL,'blanch_mooney1@unah.hn','1114198735655','1987-06-28','A');
INSERT INTO `persona` VALUES (275,'Helen-elizabeth','Jacenta','Clemmens','Seago','F','28 Macpherson Road','helen-elizabeth_clemmens85@unah.hn','0707195442164','1954-04-08','A');
INSERT INTO `persona` VALUES (276,'Carolina','Sonnie','Gelderd','Wallman','F',NULL,'carolina.gelderd@yahoo.com','0616195658382','1956-10-06','A');
INSERT INTO `persona` VALUES (277,'Salli',NULL,'Sudddard',NULL,'F','86283 Di Loreto Park','salli_sudddard73@unah.hn','1627199122940','1991-11-19','A');
INSERT INTO `persona` VALUES (278,'Aleece','Leanor','Eggins','Le Frank','F',NULL,'aleece_eggins@unah.hn','0823196978512','1969-09-17','A');
INSERT INTO `persona` VALUES (279,'Victoir','Jeremie','Ashforth','Bohlmann','M',NULL,'victoir_ashforth@gmail.com','1411198975834','1989-06-06','A');
INSERT INTO `persona` VALUES (280,'Jolee','Paulie','Shirer','Woolmore','F',NULL,'jolee_shirer27@yahoo.com','1814198029812','1980-03-06','A');
INSERT INTO `persona` VALUES (281,'Trueman',NULL,'Clapson',NULL,'M','04720 Dahle Way','trueman_clapson74@gmail.com','0403194359585','1943-09-12','A');
INSERT INTO `persona` VALUES (282,'Darren','Benoit','Pablo','Galbreth','M','091 Bartillon Junction','darren.pablo@unah.hn','0621194052313','1940-08-08','A');
INSERT INTO `persona` VALUES (283,'Malvina','Concordia','Maier','Davidescu','F','62 Oneill Park','malvina_maier45@gmail.com','0711198580240','1985-07-15','A');
INSERT INTO `persona` VALUES (284,'Sherwin','Verne','Heathwood','Wick','M','180 Randy Court','sherwin_heathwood@unah.hn','1316197432182','1974-02-14','A');
INSERT INTO `persona` VALUES (285,'Tammy','Kean','Franciottoi','Capes','M',NULL,'tammy.franciottoi4@unah.hn','0702196846652','1968-12-19','A');
INSERT INTO `persona` VALUES (286,'Rikki','Maxy','Campa','Tabourier','F','6445 Meadow Ridge Court','rikki.campa@unah.hn','0411199383492','1993-12-24','A');
INSERT INTO `persona` VALUES (287,'Vassili',NULL,'Humbey',NULL,'M',NULL,'vassili_humbey23@gmail.com','0910199866907','1998-01-13','A');
INSERT INTO `persona` VALUES (288,'Keane','Malachi','Nozzolii','Fleote','M','8 Rieder Parkway','keane.nozzolii7@live.com','0126193936911','1939-12-24','A');
INSERT INTO `persona` VALUES (289,'Nicola','Gabriela','Milliken','Scroggins','F',NULL,'nicola.milliken@unah.hn','1803194791328','1947-03-02','A');
INSERT INTO `persona` VALUES (290,'Urbano','Mason','Ludee','Jess','M',NULL,'urbano.ludee9@unah.hn','0908199124708','1991-05-25','A');
INSERT INTO `persona` VALUES (291,'Geri','Ibrahim','Corck','Earney','M',NULL,'geri.corck06@unah.hn','0208193180252','1931-08-05','A');
INSERT INTO `persona` VALUES (292,'Ash','Halsey','Lamport','Luard','M','3422 Lien Plaza','ash.lamport1@unah.hn','1727196596901','1965-02-21','A');
INSERT INTO `persona` VALUES (293,'Livia','Deeyn','Braga','Imloch','F',NULL,'livia_braga5@unah.hn','1119199340252','1993-03-08','A');
INSERT INTO `persona` VALUES (294,'Coral','Drusie','Trenholm','Tease','F',NULL,'coral_trenholm74@live.com','1013198074376','1980-05-06','A');
INSERT INTO `persona` VALUES (295,'Berna','Onida','Bernardelli','Gerrelts','F',NULL,'berna.bernardelli@gmail.com','1516199270748','1992-09-02','A');
INSERT INTO `persona` VALUES (296,'Kaine',NULL,'Domican',NULL,'M',NULL,'kaine_domican50@unah.hn','1321195082297','1950-09-20','A');
INSERT INTO `persona` VALUES (297,'Jonell','Lyssa','Coulton','Durker','F','50 Nevada Plaza','jonell_coulton08@gmail.com','1508193418166','1934-07-13','A');
INSERT INTO `persona` VALUES (298,'Berkie','Elmer','Surcombe','Hynes','M',NULL,'berkie.surcombe@live.com','1415198643815','1986-01-13','A');
INSERT INTO `persona` VALUES (299,'Lorain','Bridget','Greves','Bollins','F','380 Cherokee Place','lorain_greves@unah.hn','1604196449227','1964-05-16','A');
INSERT INTO `persona` VALUES (300,'Reese','Rolfe','Cutajar','Tolhurst','M',NULL,'reese.cutajar79@unah.hn','1415199102233','1991-04-02','A');
INSERT INTO `persona` VALUES (301,'Cesaro','Joaquin','Demanche','Enever','M','4 Blackbird Court','cesaro_demanche30@unah.hn','0602196463501','1964-03-14','A');
INSERT INTO `persona` VALUES (302,'Shandeigh','Neda','Carthew','Kemmish','F','32 Clyde Gallagher Plaza','shandeigh_carthew90@live.com','0802197514907','1975-12-01','A');
INSERT INTO `persona` VALUES (303,'Betta','Ilene','Levy','McVitty','F','36903 Farwell Place','betta_levy@unah.hn','0413193461387','1934-10-19','A');
INSERT INTO `persona` VALUES (304,'Lucais','Julius','Benardette','Di Biaggi','M','2797 Talisman Street','lucais.benardette0@unah.hn','1104196746241','1967-06-08','A');
INSERT INTO `persona` VALUES (305,'Warde','Norby','Lippingwell','Goodwyn','M',NULL,'warde_lippingwell0@gmail.com','1705195976801','1959-06-10','A');
INSERT INTO `persona` VALUES (306,'Hermie','Boyce','Cheatle','Creighton','M',NULL,'hermie.cheatle70@unah.hn','1625198464495','1984-10-31','A');
INSERT INTO `persona` VALUES (307,'Ignace','Pall','Forsdike','Screech','M','27048 Sachtjen Alley','ignace.forsdike@yahoo.com','1009198199506','1981-01-27','A');
INSERT INTO `persona` VALUES (308,'Willette','Kirsti','Muge','Sutcliff','F','53989 Nobel Center','willette.muge83@live.com','1325193353621','1933-01-26','A');
INSERT INTO `persona` VALUES (309,'Bertha','Lauretta','Moscon','Farmery','F',NULL,'bertha_moscon5@unah.hn','0328196337135','1963-03-19','A');
INSERT INTO `persona` VALUES (310,'Yorgo',NULL,'Parrish',NULL,'M','6371 Weeping Birch Avenue','yorgo_parrish@live.com','0217193316184','1933-11-29','A');
INSERT INTO `persona` VALUES (311,'Elwyn',NULL,'Hazlegrove',NULL,'M','4564 Fuller Center','elwyn.hazlegrove8@unah.hn','1814195935303','1959-01-23','A');
INSERT INTO `persona` VALUES (312,'Horst',NULL,'Scrivens',NULL,'M','1866 South Place','horst_scrivens@gmail.com','1019193956476','1939-09-05','A');
INSERT INTO `persona` VALUES (313,'Brandtr','Agustin','Titcom','Barracks','M','1 Luster Crossing','brandtr_titcom8@live.com','0926198710385','1987-01-10','A');
INSERT INTO `persona` VALUES (314,'Fara','Zilvia','Emmert','Mattisssen','F','40 Fulton Lane','fara_emmert0@unah.hn','0917193570389','1935-05-12','A');
INSERT INTO `persona` VALUES (315,'Michell','Marquita','Bridgwater','Maron','F',NULL,'michell_bridgwater@gmail.com','1118193161701','1931-02-25','A');
INSERT INTO `persona` VALUES (316,'Edvard','Crichton','Braikenridge','Almey','M',NULL,'edvard.braikenridge2@unah.hn','0314194998064','1949-09-17','A');
INSERT INTO `persona` VALUES (317,'Alanna','Caprice','Hyndson','Naismith','F','6 Eagan Place','alanna_hyndson4@unah.hn','1319199309490','1993-06-30','A');
INSERT INTO `persona` VALUES (318,'Gibb','Phillipe','Kember','Halfpenny','M','33 Pleasure Trail','gibb.kember22@yahoo.com','1213198549336','1985-08-05','A');
INSERT INTO `persona` VALUES (319,'Kare','Kaitlyn','Morgan','Postles','F','212 Village Junction','kare.morgan49@unah.hn','0603195230811','1952-01-13','A');
INSERT INTO `persona` VALUES (320,'Maxie','Siana','Alliott','Gurling','F','7 Eagle Crest Terrace','maxie_alliott98@gmail.com','1515198620134','1986-08-05','A');
INSERT INTO `persona` VALUES (321,'Hugues','Gordie','Belding','Ensley','M','668 Rutledge Crossing','hugues_belding24@unah.hn','0623198942128','1989-05-01','A');
INSERT INTO `persona` VALUES (322,'Bendicty','Nat','Laidler','Bendin','M','98 Westerfield Circle','bendicty_laidler@unah.hn','1517199919829','1999-02-03','A');
INSERT INTO `persona` VALUES (323,'Mortimer',NULL,'VanBrugh',NULL,'M','80526 Shoshone Crossing','mortimer_vanbrugh9@unah.hn','0805198061457','1980-01-16','A');
INSERT INTO `persona` VALUES (324,'Marwin','Gustave','Deevey','Pagen','M','163 Dryden Alley','marwin.deevey7@live.com','0428198607760','1986-11-08','A');
INSERT INTO `persona` VALUES (325,'Garrott','Andris','Petriello','Fears','M','8 Becker Lane','garrott.petriello@unah.hn','0627197606759','1976-07-20','A');
INSERT INTO `persona` VALUES (326,'Nataniel','Zebadiah','Garlick','Annear','M','5 Summit Road','nataniel.garlick@gmail.com','0519197913425','1979-10-08','A');
INSERT INTO `persona` VALUES (327,'Saundra','Lemuel','Spore','Ferreira','M','5413 Erie Point','saundra_spore60@unah.hn','1502194021560','1940-01-11','A');
INSERT INTO `persona` VALUES (328,'Carney','Hubie','Lamburn','Yeliashev','M',NULL,'carney.lamburn9@live.com','0611194679247','1946-09-02','A');
INSERT INTO `persona` VALUES (329,'Guglielmo','Thomas','Kedwell','Stoddard','M',NULL,'guglielmo_kedwell2@unah.hn','1121197318506','1973-02-24','A');
INSERT INTO `persona` VALUES (330,'Arte','Noby','Fabri','Holbury','M',NULL,'arte_fabri@gmail.com','0128198513693','1985-09-11','A');
INSERT INTO `persona` VALUES (331,'Bank','Tobit','Battany','Maevela','M','90790 Arrowood Alley','bank_battany@unah.hn','0326193967329','1939-09-24','A');
INSERT INTO `persona` VALUES (332,'Maggy','Gwenette','Sidebottom','Spleving','F','3240 Schlimgen Pass','maggy_sidebottom@unah.hn','1502199214123','1992-09-18','A');
INSERT INTO `persona` VALUES (333,'Aveline','Jessy','Gounod','Dodridge','F','587 Twin Pines Terrace','aveline_gounod15@unah.hn','1111197078022','1970-03-10','A');
INSERT INTO `persona` VALUES (334,'Emmerich','Uriel','Brotheridge','Tweddell','M',NULL,'emmerich_brotheridge70@live.com','0125199390226','1993-02-24','A');
INSERT INTO `persona` VALUES (335,'Roma','Esme','Gaynesford','Bradane','M',NULL,'roma_gaynesford@gmail.com','1102195119061','1951-08-24','A');
INSERT INTO `persona` VALUES (336,'Phillis','Arleyne','Downey','Sheddan','F',NULL,'phillis.downey7@unah.hn','1111199160224','1991-08-01','A');
INSERT INTO `persona` VALUES (337,'Devan','Claude','Howis','Goch','F',NULL,'devan_howis67@unah.hn','1225194851812','1948-02-13','A');
INSERT INTO `persona` VALUES (338,'Kathryn','Tara','Normansell','Mannakee','F','892 Armistice Pass','kathryn.normansell56@live.com','1709196155984','1961-05-10','A');
INSERT INTO `persona` VALUES (339,'Sigismond',NULL,'Haresnape',NULL,'M','0763 Florence Park','sigismond.haresnape97@live.com','1811197783298','1977-08-06','A');
INSERT INTO `persona` VALUES (340,'Cilka','Magdaia','Sture','Timoney','F','7 American Hill','cilka_sture4@unah.hn','0621193597549','1935-08-03','A');
INSERT INTO `persona` VALUES (341,'Krisha','Irving','Carhart','Ullett','M',NULL,'krisha.carhart5@live.com','1512199267300','1992-04-21','A');
INSERT INTO `persona` VALUES (342,'Orson','Gonzales','Ansley','Drinkhill','M','11 Coleman Circle','orson.ansley@live.com','0925193681895','1936-12-12','A');
INSERT INTO `persona` VALUES (343,'Jannel','Danita','Hillam','Skewis','F',NULL,'jannel_hillam02@yahoo.com','1407198161313','1981-01-19','A');
INSERT INTO `persona` VALUES (344,'Clive',NULL,'Pharaoh',NULL,'M',NULL,'clive.pharaoh3@live.com','1623197880263','1978-10-16','A');
INSERT INTO `persona` VALUES (345,'Roxie','Betteanne','McBayne','McFarlan','F','4075 Sheridan Point','roxie_mcbayne4@yahoo.com','0519198339075','1983-10-30','A');
INSERT INTO `persona` VALUES (346,'Shaine','Lotte','Cancutt','Tolomelli','F','0576 Cascade Way','shaine_cancutt95@gmail.com','0311198495090','1984-03-19','A');
INSERT INTO `persona` VALUES (347,'Helaine','Corie','Ludman','Kedge','F','8 Homewood Circle','helaine.ludman1@yahoo.com','0822195041827','1950-05-18','A');
INSERT INTO `persona` VALUES (348,'Janeta','Stella','Melbury','Mucci','F','146 Gulseth Parkway','janeta.melbury@gmail.com','1427197214114','1972-07-01','A');
INSERT INTO `persona` VALUES (349,'Piggy','Pernell','Yeiles','Danelutti','M','79 Lawn Junction','piggy.yeiles39@unah.hn','1325198777972','1987-11-06','A');
INSERT INTO `persona` VALUES (350,'Esma','Joelynn','Twitchings','Bickardike','F',NULL,'esma_twitchings4@gmail.com','0322197206233','1972-10-03','A');
INSERT INTO `persona` VALUES (351,'Goran','Cosmo','Harlock','Ridding','M','06 Golf Course Junction','goran_harlock15@unah.hn','0416198545517','1985-08-05','A');
INSERT INTO `persona` VALUES (352,'Genovera','Edythe','McBeath','Anand','F',NULL,'genovera.mcbeath41@unah.hn','0501199355969','1993-08-13','A');
INSERT INTO `persona` VALUES (353,'Lay','Alexandros','Conibere','McClelland','M','6155 Nelson Point','lay_conibere5@unah.hn','0716199847583','1998-07-28','A');
INSERT INTO `persona` VALUES (354,'Catriona',NULL,'Filppetti',NULL,'F',NULL,'catriona.filppetti03@unah.hn','1408194454583','1944-10-10','A');
INSERT INTO `persona` VALUES (355,'Ruthie','Jessica','Yearsley','Bingle','F','013 Doe Crossing Way','ruthie.yearsley62@gmail.com','1810198983033','1989-06-12','A');
INSERT INTO `persona` VALUES (356,'Bernarr','Andris','Van Hesteren','Sanper','M',NULL,'bernarr_vanhesteren@unah.hn','1017193219360','1932-04-28','A');
INSERT INTO `persona` VALUES (357,'Candida','Edythe','Ledgard','Perassi','F','04271 Hanover Center','candida_ledgard42@unah.hn','1023193840269','1938-08-04','A');
INSERT INTO `persona` VALUES (358,'Kippy','Calli','Axel','Denk','F','62570 Reindahl Place','kippy.axel@yahoo.com','1127196731437','1967-07-22','A');
INSERT INTO `persona` VALUES (359,'Lorna','Ansley','Greenwell','Ellice','F',NULL,'lorna_greenwell@live.com','1412199423921','1994-11-30','A');
INSERT INTO `persona` VALUES (360,'Karl','Gabby','Duro','Ledstone','M',NULL,'karl.duro93@unah.hn','0227198498498','1984-10-20','A');
INSERT INTO `persona` VALUES (361,'Dawn','Karrie','Southon','Davidesco','F','363 Mallory Parkway','dawn.southon1@unah.hn','0106194624114','1946-10-19','A');
INSERT INTO `persona` VALUES (362,'Marilyn','Illa','Conaghan','Trigwell','F',NULL,'marilyn.conaghan56@live.com','1424195023398','1950-05-24','A');
INSERT INTO `persona` VALUES (363,'Staffard','Dillon','Berkeley','Lapsley','M',NULL,'staffard_berkeley@live.com','1324193471371','1934-01-31','A');
INSERT INTO `persona` VALUES (364,'Jordanna',NULL,'Bresnen',NULL,'F',NULL,'jordanna.bresnen4@gmail.com','0601199704612','1997-05-02','A');
INSERT INTO `persona` VALUES (365,'Terri','Orlan','Staniland','Van Salzberger','M',NULL,'terri_staniland@unah.hn','0922196043288','1960-07-24','A');
INSERT INTO `persona` VALUES (366,'Charlie','Raffaello','Kuhl','Darwen','M',NULL,'charlie_kuhl9@unah.hn','0727193930502','1939-12-02','A');
INSERT INTO `persona` VALUES (367,'Annie',NULL,'Galland',NULL,'F',NULL,'annie_galland6@unah.hn','0703198906037','1989-04-24','A');
INSERT INTO `persona` VALUES (368,'Junie','Rosalynd','Crilley','David','F',NULL,'junie.crilley5@live.com','1414196982451','1969-03-18','A');
INSERT INTO `persona` VALUES (369,'Cody','Lothario','Meegan','McNirlin','M','346 Dorton Center','cody_meegan4@unah.hn','0712199970753','1999-06-08','A');
INSERT INTO `persona` VALUES (370,'Erie',NULL,'Adamini',NULL,'M',NULL,'erie_adamini@yahoo.com','1017199222815','1992-04-01','A');
INSERT INTO `persona` VALUES (371,'Ivonne','Kerrin','Bloyes','Frances','F','3 Westerfield Point','ivonne_bloyes@gmail.com','0123194469563','1944-11-17','A');
INSERT INTO `persona` VALUES (372,'Gabriellia','Tonie','Bugg','Bakhrushkin','F','62236 Victoria Park','gabriellia_bugg61@gmail.com','0315193533693','1935-08-29','A');
INSERT INTO `persona` VALUES (373,'Orella','Wilhelmina','Choake','Screach','F',NULL,'orella.choake77@live.com','0502197375060','1973-02-12','A');
INSERT INTO `persona` VALUES (374,'Ryann',NULL,'Randleson',NULL,'F','012 Rusk Road','ryann_randleson31@live.com','0122193702255','1937-08-08','A');
INSERT INTO `persona` VALUES (375,'Major','Jory','Ambrozik','Turneux','M','9857 Hanson Court','major_ambrozik@unah.hn','0802198545037','1985-12-10','A');
INSERT INTO `persona` VALUES (376,'Odo',NULL,'Busse',NULL,'M',NULL,'odo_busse9@unah.hn','0317195666414','1956-10-18','A');
INSERT INTO `persona` VALUES (377,'Mufi',NULL,'Gagen',NULL,'F',NULL,'mufi_gagen1@live.com','1705194855607','1948-12-26','A');
INSERT INTO `persona` VALUES (378,'Ronnica','Addi','Traher','Torrans','F','7962 Rusk Hill','ronnica_traher0@live.com','1219199824459','1998-09-06','A');
INSERT INTO `persona` VALUES (379,'Lay',NULL,'Jacobi',NULL,'M','9134 Fallview Road','lay_jacobi75@yahoo.com','0116194141878','1941-12-30','A');
INSERT INTO `persona` VALUES (380,'Neils','Stearne','Shevell','Spalls','M','4269 Vermont Crossing','neils_shevell4@unah.hn','1802195766140','1957-10-23','A');
INSERT INTO `persona` VALUES (381,'Frannie','Filberto','Hanmer','Poulsum','M','9 Ridgeway Court','frannie.hanmer5@live.com','0918194260972','1942-12-06','A');
INSERT INTO `persona` VALUES (382,'Stillmann','Beniamino','Silcock','Tokell','M','5078 Goodland Street','stillmann.silcock@live.com','0127195951074','1959-09-10','A');
INSERT INTO `persona` VALUES (383,'Merridie','Ethel','Fogt','Desforges','F',NULL,'merridie.fogt@yahoo.com','0708197644172','1976-01-25','A');
INSERT INTO `persona` VALUES (384,'Arabella','Alix','Chaplyn','Baton','F','0996 Carpenter Trail','arabella.chaplyn4@unah.hn','0906194822980','1948-01-17','A');
INSERT INTO `persona` VALUES (385,'Abbe','Rudolfo','Brimelow','Willetts','M','548 Huxley Avenue','abbe.brimelow@unah.hn','0710194461516','1944-09-17','A');
INSERT INTO `persona` VALUES (386,'Aurora','Tove','McGrae','Delacoste','F','12 Meadow Valley Junction','aurora_mcgrae82@live.com','1415194695338','1946-11-15','A');
INSERT INTO `persona` VALUES (387,'Louis','Sidnee','Dowling','Grise','M','18788 Logan Junction','louis.dowling9@unah.hn','0810198566774','1985-09-16','A');
INSERT INTO `persona` VALUES (388,'Alexander','Brannon','Hoodless','Mattheeuw','M','4 Banding Lane','alexander.hoodless0@unah.hn','0323194080935','1940-10-31','A');
INSERT INTO `persona` VALUES (389,'Fowler','Eldon','Lycett','Shimwall','M',NULL,'fowler_lycett61@unah.hn','1526198475978','1984-08-15','A');
INSERT INTO `persona` VALUES (390,'Benedetta','Elizabeth','Youell','MattiCCI','F',NULL,'benedetta.youell6@unah.hn','1627194386056','1943-11-16','A');
INSERT INTO `persona` VALUES (391,'Dunn','Laurens','Stidworthy','Woolfall','M','9919 Namekagon Junction','dunn_stidworthy@gmail.com','0802199475614','1994-08-18','A');
INSERT INTO `persona` VALUES (392,'Giulietta','Zorine','Americi','Dumbreck','F',NULL,'giulietta_americi61@unah.hn','0514199059111','1990-07-18','A');
INSERT INTO `persona` VALUES (393,'Fidelity','Reta','Grimes','Fuzzey','F',NULL,'fidelity_grimes3@yahoo.com','1209196513485','1965-11-28','A');
INSERT INTO `persona` VALUES (394,'Debor',NULL,'Scobie',NULL,'F','472 Hoffman Lane','debor_scobie28@unah.hn','0228195774358','1957-07-31','A');
INSERT INTO `persona` VALUES (395,'Pascal','Haleigh','Newlin','Leheude','M','40927 Oneill Place','pascal.newlin59@live.com','0709193918333','1939-03-08','A');
INSERT INTO `persona` VALUES (396,'Yank','Gasper','Whatmough','Hugin','M','12 Union Pass','yank.whatmough43@unah.hn','1119197240178','1972-10-30','A');
INSERT INTO `persona` VALUES (397,'Ashleigh',NULL,'Norris',NULL,'F','753 Hauk Crossing','ashleigh_norris4@live.com','1523198186251','1981-11-27','A');
INSERT INTO `persona` VALUES (398,'Ashil','Britte','Verma','Beadon','F',NULL,'ashil_verma0@unah.hn','0611198722526','1987-08-26','A');
INSERT INTO `persona` VALUES (399,'Elias','Nikita','Struthers','Phython','M','6 Ridge Oak Alley','elias.struthers89@yahoo.com','1622199682866','1996-01-23','A');
INSERT INTO `persona` VALUES (400,'Karrie','Barbara','Mitchelmore','Dargavel','F','276 Rigney Crossing','karrie.mitchelmore30@yahoo.com','0327199698835','1996-11-05','A');
INSERT INTO `persona` VALUES (401,'Catrina','Teresina','Shoobridge','Portman','F',NULL,'catrina_shoobridge@live.com','1711197840999','1978-02-21','A');
INSERT INTO `persona` VALUES (402,'Brittani',NULL,'Cutmare',NULL,'F',NULL,'brittani.cutmare1@unah.hn','0814195138363','1951-01-23','A');
INSERT INTO `persona` VALUES (403,'Trescha','Marie-jeanne','Goymer','Basson','F','42809 Bayside Court','trescha.goymer3@live.com','0209196193293','1961-03-13','A');
INSERT INTO `persona` VALUES (404,'Jania','Filippa','Weldrick','Loughnan','F',NULL,'jania.weldrick79@live.com','1712197495212','1974-08-20','A');
INSERT INTO `persona` VALUES (405,'Frances','Marley','Keetch','Proud','F',NULL,'frances_keetch@live.com','0719197400470','1974-10-13','A');
INSERT INTO `persona` VALUES (406,'Caleb','Hernando','Iacobucci','Tidman','M',NULL,'caleb_iacobucci56@unah.hn','1723199519900','1995-10-26','A');
INSERT INTO `persona` VALUES (407,'Willyt','Jaymee','Coping','Bowler','F',NULL,'willyt_coping2@unah.hn','1824195534530','1955-07-03','A');
INSERT INTO `persona` VALUES (408,'Richart','Konrad','Kenford','Maior','M',NULL,'richart_kenford@unah.hn','1228193431571','1934-06-10','A');
INSERT INTO `persona` VALUES (409,'Konstantine','Reuven','Ferraro','Massimi','M','957 Marquette Alley','konstantine_ferraro9@live.com','1410193266628','1932-05-19','A');
INSERT INTO `persona` VALUES (410,'Dewey','Sloane','Colegrove','Gilluley','M','0 Oriole Trail','dewey_colegrove@live.com','0616198734167','1987-08-10','A');
INSERT INTO `persona` VALUES (411,'Jodee',NULL,'Rennick',NULL,'F',NULL,'jodee.rennick25@live.com','0624196719165','1967-01-02','A');
INSERT INTO `persona` VALUES (412,'Wilden','Sylvester','Sandbatch','O- Hern','M','1 Schiller Way','wilden.sandbatch@unah.hn','1103199151582','1991-09-29','A');
INSERT INTO `persona` VALUES (413,'Sly','Saxon','Floodgate','Zold','M',NULL,'sly.floodgate82@unah.hn','0314196692059','1966-09-13','A');
INSERT INTO `persona` VALUES (414,'Tony',NULL,'Jaquiss',NULL,'M',NULL,'tony.jaquiss@live.com','1207197722615','1977-06-23','A');
INSERT INTO `persona` VALUES (415,'Eberto','Jessie','Martinovic','Rolfi','M',NULL,'eberto_martinovic4@unah.hn','0515195976477','1959-07-06','A');
INSERT INTO `persona` VALUES (416,'Wilhelm','Town','Gunny','Seven','M','8036 Briar Crest Place','wilhelm_gunny03@yahoo.com','1410196526708','1965-11-26','A');
INSERT INTO `persona` VALUES (417,'Abbey',NULL,'Watmore',NULL,'F',NULL,'abbey.watmore22@unah.hn','1505199943905','1999-03-18','A');
INSERT INTO `persona` VALUES (418,'Lizzy','Miquela','ducarme','Dring','F',NULL,'lizzy_ducarme0@yahoo.com','1023194151973','1941-01-25','A');
INSERT INTO `persona` VALUES (419,'Loree',NULL,'Livermore',NULL,'F',NULL,'loree.livermore43@gmail.com','0327198113209','1981-12-06','A');
INSERT INTO `persona` VALUES (420,'Alphonso','Ludovico','Wooler','Granleese','M','86133 Del Mar Junction','alphonso_wooler6@unah.hn','0216194275972','1942-04-14','A');
INSERT INTO `persona` VALUES (421,'Ralf','Levy','Rigden','Heggs','M','2 Porter Circle','ralf.rigden4@unah.hn','1605198492390','1984-02-25','A');
INSERT INTO `persona` VALUES (422,'Glendon','Pasquale','Livezley','Ager','M','095 Muir Place','glendon.livezley4@unah.hn','1202196662276','1966-12-11','A');
INSERT INTO `persona` VALUES (423,'Noble',NULL,'Butchart',NULL,'M','9050 Cordelia Drive','noble_butchart6@unah.hn','1014196179612','1961-01-12','A');
INSERT INTO `persona` VALUES (424,'Ferne','Nisse','Kiernan','Chastan','F','7 Northport Point','ferne_kiernan@unah.hn','0628196768426','1967-07-07','A');
INSERT INTO `persona` VALUES (425,'Lilith','Prudi','Van Son','Dmitr','F','7 David Hill','lilith.vanson7@unah.hn','1327197791265','1977-12-22','A');
INSERT INTO `persona` VALUES (426,'Lola','Margie','Genthner','Tresise','F',NULL,'lola_genthner5@unah.hn','1828194642479','1946-01-22','A');
INSERT INTO `persona` VALUES (427,'Pooh','Baxy','Alfwy','Linke','M',NULL,'pooh_alfwy@unah.hn','0414199523851','1995-08-20','A');
INSERT INTO `persona` VALUES (428,'Ardith','Dian','Castro','Marcinkus','F','634 Memorial Terrace','ardith_castro91@yahoo.com','1312193582351','1935-03-28','A');
INSERT INTO `persona` VALUES (429,'Ignaz','Andrew','Chidlow','Ferrelli','M',NULL,'ignaz.chidlow0@yahoo.com','1022197266608','1972-08-21','A');
INSERT INTO `persona` VALUES (430,'Kiah',NULL,'Forsaith',NULL,'F',NULL,'kiah.forsaith9@unah.hn','0728195103122','1951-03-28','A');
INSERT INTO `persona` VALUES (431,'Jordanna','Auberta','Statton','Alldred','F',NULL,'jordanna.statton70@unah.hn','0425197779234','1977-10-03','A');
INSERT INTO `persona` VALUES (432,'Terry','Olag','Feenan','Elsip','M','6 Almo Terrace','terry_feenan21@unah.hn','1822197588282','1975-10-17','A');
INSERT INTO `persona` VALUES (433,'Kenyon','Eli','Foynes','Daud','M','8926 Dennis Center','kenyon.foynes@unah.hn','1427195109565','1951-08-27','A');
INSERT INTO `persona` VALUES (434,'Prince','Stanly','Kilbourn','Jahnisch','M',NULL,'prince.kilbourn57@unah.hn','1104198265588','1982-06-01','A');
INSERT INTO `persona` VALUES (435,'Jorie','Stormie','Vasilmanov','Bish','F',NULL,'jorie.vasilmanov71@unah.hn','1523194924237','1949-03-21','A');
INSERT INTO `persona` VALUES (436,'Margalo','Catriona','Barnwille','Koubek','F','660 Parkside Circle','margalo_barnwille@unah.hn','1502197310534','1973-07-20','A');
INSERT INTO `persona` VALUES (437,'Jenine','Vonni','Clemencon','Camel','F','67 Ronald Regan Hill','jenine.clemencon@unah.hn','1125197541456','1975-02-18','A');
INSERT INTO `persona` VALUES (438,'Jedd','Richard','Backshill','Symcock','M','7 Waubesa Point','jedd.backshill@gmail.com','0425197709253','1977-09-19','A');
INSERT INTO `persona` VALUES (439,'Ginny','Pen','Skillicorn','Pfaff','F',NULL,'ginny_skillicorn34@live.com','1105194978148','1949-09-02','A');
INSERT INTO `persona` VALUES (440,'Dore',NULL,'Hobbert',NULL,'F','7021 Shelley Alley','dore.hobbert@unah.hn','1618194642688','1946-09-30','A');
INSERT INTO `persona` VALUES (441,'Larina','Misha','Moncrefe','Kendall','F','876 Derek Way','larina.moncrefe@gmail.com','1714194146475','1941-01-03','A');
INSERT INTO `persona` VALUES (442,'Kingsly','Malchy','Cuttell','Ivan','M',NULL,'kingsly.cuttell7@unah.hn','1223196633868','1966-09-30','A');
INSERT INTO `persona` VALUES (443,'Margit','Val','Cosh','Gerrit','F','95996 Eliot Hill','margit.cosh82@live.com','0408197897310','1978-05-13','A');
INSERT INTO `persona` VALUES (444,'Berkie','Douglass','Grime','Python','M','4 Anhalt Plaza','berkie.grime34@unah.hn','0427196692053','1966-08-12','A');
INSERT INTO `persona` VALUES (445,'Krystalle','Ada','Snadden','Vineall','F','257 Cordelia Place','krystalle_snadden7@unah.hn','1314194235709','1942-08-18','A');
INSERT INTO `persona` VALUES (446,'Letizia','Lilia','Cossey','Galgey','F','47453 American Ash Lane','letizia.cossey86@unah.hn','1816199106630','1991-01-27','A');
INSERT INTO `persona` VALUES (447,'Ludwig','Tabbie','Gable','Muir','M',NULL,'ludwig_gable02@live.com','1418199189606','1991-01-03','A');
INSERT INTO `persona` VALUES (448,'Mylo','Kellby','Pearcehouse','Bleier','M',NULL,'mylo.pearcehouse@live.com','0606199431961','1994-09-13','A');
INSERT INTO `persona` VALUES (449,'Kipper','Gunther','Matches','O-Kelly','M',NULL,'kipper.matches@unah.hn','1314193182522','1931-01-16','A');
INSERT INTO `persona` VALUES (450,'Kirsten','Eadith','Greyes','Quinnette','F',NULL,'kirsten_greyes05@live.com','0606196077707','1960-12-02','A');
INSERT INTO `persona` VALUES (451,'Gillan','Editha','Brimner','Darville','F',NULL,'gillan.brimner8@gmail.com','1017194880914','1948-02-22','A');
INSERT INTO `persona` VALUES (452,'Justis','Dunstan','Limbourne','Leathwood','M',NULL,'justis_limbourne03@unah.hn','0825194635439','1946-06-15','A');
INSERT INTO `persona` VALUES (453,'Amy',NULL,'Calley',NULL,'F','9 Farwell Terrace','amy.calley0@unah.hn','1007199530961','1995-02-17','A');
INSERT INTO `persona` VALUES (454,'Bald',NULL,'Oswal',NULL,'M','4682 Rieder Point','bald.oswal6@gmail.com','0417196242290','1962-02-05','A');
INSERT INTO `persona` VALUES (455,'Cindie',NULL,'Cheatle',NULL,'F',NULL,'cindie_cheatle50@gmail.com','0904193778278','1937-05-02','A');
INSERT INTO `persona` VALUES (456,'Mechelle','Idaline','Gollard','Currum','F','7324 Lukken Plaza','mechelle.gollard9@unah.hn','1315198569692','1985-05-15','A');
INSERT INTO `persona` VALUES (457,'Noel','Claire','Bodemeaid','Stroder','M','97925 Butternut Place','noel_bodemeaid67@unah.hn','0515193611585','1936-04-17','A');
INSERT INTO `persona` VALUES (458,'Sergeant',NULL,'Dawidowicz',NULL,'M','652 Katie Plaza','sergeant_dawidowicz13@gmail.com','0402195461484','1954-05-22','A');
INSERT INTO `persona` VALUES (459,'Francklyn','Marmaduke','Esson','Braunlein','M',NULL,'francklyn_esson@live.com','1307197605664','1976-11-13','A');
INSERT INTO `persona` VALUES (460,'Babara','Karalynn','Curgenven','Knellen','F',NULL,'babara.curgenven99@unah.hn','1826198060052','1980-11-04','A');
INSERT INTO `persona` VALUES (461,'Kenton','Abram','Klass','Jehaes','M',NULL,'kenton.klass7@gmail.com','0215197646673','1976-10-01','A');
INSERT INTO `persona` VALUES (462,'Willi','Marylin','McDuffy','Craze','F',NULL,'willi_mcduffy1@unah.hn','0822193414359','1934-12-19','A');
INSERT INTO `persona` VALUES (463,'Vivi','Britni','Seefus','Vossing','F',NULL,'vivi.seefus6@live.com','0317193033094','1930-12-30','A');
INSERT INTO `persona` VALUES (464,'Ganny','Jose','Wimlett','Goodinson','M','2042 Sheridan Hill','ganny_wimlett4@live.com','0905193646947','1936-02-13','A');
INSERT INTO `persona` VALUES (465,'Heall','Osborn','Clowley','Bothen','M',NULL,'heall_clowley5@live.com','0407195260681','1952-10-19','A');
INSERT INTO `persona` VALUES (466,'Francis',NULL,'McCathy',NULL,'M',NULL,'francis_mccathy@unah.hn','1207193431267','1934-05-01','A');
INSERT INTO `persona` VALUES (467,'Ram','Gard','Gammidge','Jeans','M',NULL,'ram_gammidge60@unah.hn','0126196215516','1962-02-19','A');
INSERT INTO `persona` VALUES (468,'Ravid','Tobias','Fireman','Heppner','M','067 Forest Dale Alley','ravid.fireman@unah.hn','1727197066901','1970-02-10','A');
INSERT INTO `persona` VALUES (469,'Larry',NULL,'Kayzer',NULL,'M',NULL,'larry.kayzer@gmail.com','0223198780804','1987-09-21','A');
INSERT INTO `persona` VALUES (470,'Elenore','Alvinia','Bull','Wemm','F','05759 Jay Court','elenore_bull1@live.com','1218200027450','2000-03-09','A');
INSERT INTO `persona` VALUES (471,'Johnathon','Alphonse','Duckham','Harcarse','M',NULL,'johnathon_duckham@unah.hn','1822198849043','1988-09-27','A');
INSERT INTO `persona` VALUES (472,'Sabra','Bernadene','Lecointe','Sanger','F',NULL,'sabra_lecointe@unah.hn','0712198953699','1989-09-11','A');
INSERT INTO `persona` VALUES (473,'Rorke','Eziechiele','Wardley','Rathbourne','M',NULL,'rorke_wardley7@unah.hn','0424197559840','1975-08-30','A');
INSERT INTO `persona` VALUES (474,'Barris',NULL,'Wastell',NULL,'M','1 Fremont Hill','barris_wastell@live.com','0327198261732','1982-07-02','A');
INSERT INTO `persona` VALUES (475,'Corabella','Benita','Eamer','Astie','F',NULL,'corabella_eamer56@live.com','0111196140189','1961-10-18','A');
INSERT INTO `persona` VALUES (476,'Tome','Whit','Rouzet','Thresher','M',NULL,'tome.rouzet8@unah.hn','1127198681513','1986-09-07','A');
INSERT INTO `persona` VALUES (477,'Addi','Seana','Dorber','Ahrens','F','9737 Ridgeview Place','addi_dorber9@live.com','0909200083780','2000-01-20','A');
INSERT INTO `persona` VALUES (478,'Tamarra',NULL,'Beautyman',NULL,'F',NULL,'tamarra_beautyman44@unah.hn','0526194582520','1945-10-20','A');
INSERT INTO `persona` VALUES (479,'Marten','Bronnie','Pinke','Swalwel','M',NULL,'marten_pinke1@live.com','1302199096533','1990-01-01','A');
INSERT INTO `persona` VALUES (480,'Alexandr',NULL,'Dodgson',NULL,'M','2679 North Trail','alexandr_dodgson53@yahoo.com','0601194518787','1945-09-09','A');
INSERT INTO `persona` VALUES (481,'Noami','Jewel','De Cleen','Buxam','F',NULL,'noami_decleen09@unah.hn','1103198385172','1983-05-31','A');
INSERT INTO `persona` VALUES (482,'Addi','Carmina','Drinkwater','Vogeller','F',NULL,'addi_drinkwater@unah.hn','0804199972755','1999-11-03','A');
INSERT INTO `persona` VALUES (483,'Loree','Shel','Grafton','Ianni','F',NULL,'loree_grafton@gmail.com','1328197293027','1972-08-04','A');
INSERT INTO `persona` VALUES (484,'Saleem','Clemmie','Pensom','Belasco','M','76313 Pierstorff Crossing','saleem.pensom10@unah.hn','0127194554333','1945-02-20','A');
INSERT INTO `persona` VALUES (485,'Ursa',NULL,'Delacourt',NULL,'F',NULL,'ursa.delacourt@unah.hn','1321193760678','1937-12-17','A');
INSERT INTO `persona` VALUES (486,'Germana','Maryjo','Piatek','McFie','F',NULL,'germana.piatek5@unah.hn','1208197151409','1971-02-08','A');
INSERT INTO `persona` VALUES (487,'Deeann','Raquel','Ciraldo','Grattan','F',NULL,'deeann_ciraldo44@unah.hn','1212196516631','1965-08-31','A');
INSERT INTO `persona` VALUES (488,'Shawna','Allissa','Whitecross','Reford','F','29 Heath Terrace','shawna.whitecross@unah.hn','0414194773483','1947-10-15','A');
INSERT INTO `persona` VALUES (489,'Alfonso','Halsey','Curzey','Ellwood','M',NULL,'alfonso_curzey@unah.hn','0808194567075','1945-09-22','A');
INSERT INTO `persona` VALUES (490,'Delmor','Arthur','Hiddy','Jobe','M','030 Shoshone Pass','delmor.hiddy@live.com','1305193557609','1935-01-16','A');
INSERT INTO `persona` VALUES (491,'Kaile','Carrie','Adshead','Brimilcombe','F',NULL,'kaile.adshead46@live.com','1404193380096','1933-10-30','A');
INSERT INTO `persona` VALUES (492,'Kingsley','Linc','Gladdis','Gobel','M','385 Sommers Center','kingsley.gladdis@unah.hn','0124193730095','1937-09-20','A');
INSERT INTO `persona` VALUES (493,'Hercule','Willem','Middlemist','De Benedictis','M','48310 Elmside Terrace','hercule_middlemist@unah.hn','0602198682470','1986-04-03','A');
INSERT INTO `persona` VALUES (494,'Gallard','Marietta','Brixey','Layne','M',NULL,'gallard.brixey29@live.com','1328194449324','1944-07-02','A');
INSERT INTO `persona` VALUES (495,'Alaster','Symon','Griss','Punch','M',NULL,'alaster_griss@live.com','0908194641865','1946-07-20','A');
INSERT INTO `persona` VALUES (496,'Ode',NULL,'Worssam',NULL,'M',NULL,'ode.worssam2@unah.hn','1025196522250','1965-10-07','A');
INSERT INTO `persona` VALUES (497,'Torrin','Muhammad','Fitter','Agglio','M',NULL,'torrin_fitter59@live.com','1003197731075','1977-10-02','A');
INSERT INTO `persona` VALUES (498,'Leela','Almeta','Hatchette','Belderfield','F',NULL,'leela_hatchette9@unah.hn','1612196745143','1967-11-02','A');
INSERT INTO `persona` VALUES (499,'Odella','Isabel','Helliar','Parlor','F',NULL,'odella.helliar4@gmail.com','0926198949907','1989-06-08','A');
INSERT INTO `persona` VALUES (500,'Alisun','Maud','Muckle','Jesse','F','8 Waxwing Way','alisun_muckle22@unah.hn','1026195147611','1951-02-14','A');
INSERT INTO `persona` VALUES (522,'WIL','WIL','WIL','WIL','M','SAFDYS','WIL@GMAIL.COM','0801194513244','2002-02-03','A');
INSERT INTO `persona` VALUES (523,'WIL','WIL','WIL','WIL','M','SAFDYS','WILi@GMAIL.COM','0801190513244','2002-02-03','I');
INSERT INTO `persona` VALUES (524,'WIL','WIL','WIL','WIL','M','SAFDYS','WILiww@GMAIL.COM','0801192413244','2002-02-03','A');
INSERT INTO `persona` VALUES (525,'WIL','WIL','WIL','WIL','M','SAFDYS','WILiwlw@GMAIL.COM','0806192413244','2002-02-03','A');
INSERT INTO `persona` VALUES (526,'ss','WIL','WIL','WIL','M','SAFDYS','WILssi@GMAIL.COM','0801190613244','2002-02-03','A');
INSERT INTO `persona` VALUES (527,'Armando','a','g','a','f','a','i_miss_spider@unah.hn','0801200015150','2000-02-02','A');
INSERT INTO `persona` VALUES (530,'aa','WIL','WIL','WIL','M','SAFDYS','WILiddd@GMAIL.COM','0801199607186','2002-02-03','A');
INSERT INTO `persona` VALUES (531,'aa','WIL','WIL','WIL','M','SAFDYS','sWILiddd@GMAIL.COM','0801196071868','2002-02-03','A');
INSERT INTO `persona` VALUES (532,'aa','WIL','WIL','WIL','M','SAFDYS','sWILidddx@GMAIL.COM','0801197607186','2002-02-03','A');
INSERT INTO `persona` VALUES (533,'aa','WIL','WIL','WIL','M','SAFDYS','ss@GMAIL.COM','0801197607286','2002-02-03','A');
INSERT INTO `persona` VALUES (534,'Antonio','Jose','Aguilar','Aguilar','M','col firulais','ssdfdfs@GMAIL.COM','0801197605286','2018-02-02','A');
INSERT INTO `persona` VALUES (535,'pedro','pedro','rodriguez','rodriguez','M','dir','jjj1121j@gmail.com','0922267831234',NULL,'A');
INSERT INTO `persona` VALUES (536,'pedro','pedro','rodriguez','rodriguez','M','dir','jaguilar@gmail.com','0809267831234',NULL,'A');
INSERT INTO `persona` VALUES (537,'soripanta','pedro','rodriguez','rodriguez','f','dir','ale214829@gmail.com','0807267831234',NULL,'A');
INSERT INTO `persona` VALUES (538,'pedro','pedro','rodriguez','rodriguez','M','dir','jjj11DD21j@gmail.com','0922267837234',NULL,'A');
INSERT INTO `persona` VALUES (539,'pedro','pedro','rodriguez','rodriguez','M','dir','jj3321j@gmail.com','0922267837266',NULL,'A');
INSERT INTO `persona` VALUES (540,'pedro','pedro','rodriguez','rodriguez','M','dir','jj332yy1j@gmail.com','0822267837266',NULL,'A');
INSERT INTO `persona` VALUES (541,'pedro','pedro','rodriguez','rodriguez','M','dir','aleNu@gmail.com','0822267831234','2019-02-02','A');
INSERT INTO `persona` VALUES (542,'pedro','pedro','rodriguez','rodriguez','M','dir','aleNu11@gmail.com','0822267861234','2019-02-02','A');
INSERT INTO `persona` VALUES (543,'pedro','pedro','rodriguez','rodriguez','M','dir','aleNu1221@gmail.com','0801267971234','2019-02-02','A');
INSERT INTO `persona` VALUES (544,'aa','WIL','WIL','WIL','M','dir','sssw@GMAIL.COM','0801197607200','2002-02-03','A');
INSERT INTO `persona` VALUES (545,'Armando','a','g','a','f','a','i_miss_spider@unah.hotmail.net','0801200011111','2000-02-02','A');
INSERT INTO `persona` VALUES (546,'aa','WIL','WIL','WIL','M','dir','ssasw@GMAIL.COM','0801197667200','2002-02-03','A');
INSERT INTO `persona` VALUES (547,'aa','WIL','WIL','WIL','M','dir','s33asw@GMAIL.COM','0801197667000','2002-02-03','A');
INSERT INTO `persona` VALUES (548,'aa','WIL','WIL','WIL','M','dir','sssw69@GMAIL.COM','0801197606900','2002-02-03','A');
INSERT INTO `persona` VALUES (549,'Ariel','','Guardado','','M','col. trap','ariellos@gmail.com','0907199610985','1996-02-02','A');
INSERT INTO `persona` VALUES (550,'asdf','asdf','asdf','asdf','M','asdf','asdfasdf@gmail.com','0102199802345','2019-09-09','A');
INSERT INTO `persona` VALUES (551,'pedro','pedro','rodriguez','rodriguez','M','dir','aleNu12dd21@gmail.com','0909198119876','2019-02-02','A');
INSERT INTO `persona` VALUES (552,'Ariel','','Guardado','','M','col. trap','ariellowws@gmail.com','0801199776554','1996-02-02','A');
INSERT INTO `persona` VALUES (553,'asdfas','dfasdf','asdfasdasdf','asdf','F','asdfasdf','asdfasdfa33s@gmail.com','0808196518186','0002-02-22','A');
INSERT INTO `persona` VALUES (554,'Julio','Ariel','Guardado','Palma','M','Roble oeste','jAriel@gmail.com','0806199598765','1995-02-15','A');
INSERT INTO `persona` VALUES (555,'Armando','','Montero','','F','Desconocida','email@unah.hn','0801199900360','1999-02-23','A');
INSERT INTO `persona` VALUES (556,'Alejandra','','Nunez','','F','Col. El centro','alenunez@gmail.com','0801199809876','2019-02-01','A');
INSERT INTO `persona` VALUES (557,'Wilian','Rolando','Barahona','Palma','M','Col La Honduras','wilrbarahona@gmail.com','0801199798654','1997-03-03','A');
INSERT INTO `persona` VALUES (558,'Jose','Antonio','Aguilar','Aguilar','M','Col. Unah','jaguilar456@gmail.com','0807199698765','1992-02-02','A');
INSERT INTO `persona` VALUES (559,'Prueba1','Prueba2','Prueba2','Prueba2','M','Direccion','correo@gmail.com','0102199902180','1995-10-01','A');
INSERT INTO `persona` VALUES (560,'aaaasdffsdfs','dsdfsdfsdfs','asdasdads','asdadasda','F','Direccion','correo2222222222@gmail.com','0801199523451','1995-10-01','A');
INSERT INTO `persona` VALUES (561,'asd','asdf','asd','asdf','F','dir. ','perr@gmail.com','0101219002018','2010-02-02','A');
INSERT INTO `persona` VALUES (562,'Denis','Adonis','Henriquez','Maradiaga','M','Direccion Tegus','denis@gmail.com','1010199710102','1995-01-01','A');
INSERT INTO `persona` VALUES (563,'Ariel ','','Gurdado','','F','','persona2222@gmail.com','0101198716543','2022-02-02','A');
INSERT INTO `persona` VALUES (564,'Antonio','José','Aguilar','Mendoza','M','Prados Universitarios','jaguilar992@hotmail.net','0801199215163','1992-02-27','A');
INSERT INTO `persona` VALUES (565,'aber','aber','aber','aber','M','Direccion Unica dku','correounico@gmail.com','0107199502111','1955-01-01','A');
INSERT INTO `persona` VALUES (566,'Nuevo','nuevo','Nuevo','nuevo','M','Direccion','correcoo@gmail.com','0107199533554','1995-01-01','A');
INSERT INTO `persona` VALUES (567,'Amumu','Aamumu','Amumu','Amumu','M','direccion22233','coreeok@gmail.com','0101199520301','1995-01-01','A');
INSERT INTO `persona` VALUES (568,'pedro','pedro','rodriguez','rodriguez','M','dir','Nu1221@gmail.com','0801267071234','2019-02-02','A');
INSERT INTO `persona` VALUES (569,'pedro','pedro','rodriguez','rodriguez','M','dir','Nue1221@gmail.com','0802267071234','2019-02-02','A');
INSERT INTO `persona` VALUES (570,'petttter','','rodriguez','','M','dir','Nue12aa21@gmail.com','0101199708097','2012-12-12','A');
INSERT INTO `persona` VALUES (571,'Aasdf','WIL','WIL','WIL','M','dir','ssswASD@GMAIL.COM','0801197607299','2002-02-03','A');
INSERT INTO `persona` VALUES (572,'AA','WIL','WIL','WIL','M','dir','ssswAASDSD@GMAIL.COM','0801195607299','2002-02-03','A');
INSERT INTO `persona` VALUES (573,'aa','WIL','WIL','WIL','M','dir','ssswAASDSASDFD@GMAIL.COM','0802195607299','2002-02-03','A');
INSERT INTO `persona` VALUES (574,'Ariel','','Guardado','','M','col. trap','ariellowFASDFs@gmail.com','0801199776569','1996-02-02','A');
INSERT INTO `persona` VALUES (575,'Petter','','Rodriguez','','M','col. petter','petterrdz@gmail.com','0801199709087','1996-07-07','A');
INSERT INTO `persona` VALUES (576,'Ariel','aa','Guardado','aa','M','col. trap','ariellowhyFASDFs@gmail.com','0801199596569','1996-02-02','A');
INSERT INTO `persona` VALUES (577,'Ariel','aa','Guardado','aa','M','col. trap','ariellowahyFASDFs@gmail.com','0801199596989','1996-02-02','A');
INSERT INTO `persona` VALUES (578,'Ariel','','Guardado','','M','col. trap','ariellowasdahyFASDFs@gmail.com','0821199596989','1996-02-02','A');
INSERT INTO `persona` VALUES (579,'Salvita','','Nasrrala','','M','col. rodriguez','salvita@gmail.com','0101193209876','1932-02-02','A');
INSERT INTO `persona` VALUES (580,'Salvita','','Nasrrala','','M','col. rodriguez','salvitaa@gmail.com','0101193209870','1932-02-02','A');
INSERT INTO `persona` VALUES (581,'ss','','ss','','F','dad','aaasdfasdf@gmail.com','0101198765432','2010-02-02','A');
INSERT INTO `persona` VALUES (582,'asdfffff','','asdffff','','M','col','cor@gmail.com','0101196754321','2010-02-02','A');
INSERT INTO `persona` VALUES (583,'Armando','Juan','Paredes','Perez','M','Dirección','nuevocorreo22@unah.hn.net','0801200016151','2000-02-02','A');
INSERT INTO `persona` VALUES (584,'Azul','Verde','Celeste','Quelecueste','M','Direccion nueva xd','corregoo@gmail.com','0101199020201','2010-01-01','A');
INSERT INTO `persona` VALUES (585,'Hector','Alfredo','Bardales','Baquis','M','Col Los Pinos SEctor D','bardaleshector41@gmail.com','0801199706677','1997-03-14','A');
INSERT INTO `persona` VALUES (586,'Consumidor','','Final','','F','','','0801200012345','2019-03-19','A');

--
-- Table structure for table `presentacion`
--

DROP TABLE IF EXISTS `presentacion`;
 
 
CREATE TABLE `presentacion` (
  `id_presentacion` int(11) NOT NULL,
  `presentacion` varchar(50) NOT NULL,
  `estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_presentacion`)
);
 
--
-- Dumping data for table `presentacion`
--

INSERT INTO `presentacion` VALUES (2,'0,01% LOC X 60 ML2522','A');
INSERT INTO `presentacion` VALUES (30,'0,5 % GTASan X 1 X 5 ML','A');
INSERT INTO `presentacion` VALUES (51,'X 6000 CMPR.','I');
INSERT INTO `presentacion` VALUES (52,'1 GR X 16 CMPR.','A');
INSERT INTO `presentacion` VALUES (55,'1 GR X 8 CMPR.','A');
INSERT INTO `presentacion` VALUES (75,'1% UNG X 50 GRS','A');
INSERT INTO `presentacion` VALUES (100,'10 MG X 20 CMPR.','I');
INSERT INTO `presentacion` VALUES (107,'10 MG X 30 CMPR.','A');
INSERT INTO `presentacion` VALUES (112,'10 MG X 50 CMPR.','A');
INSERT INTO `presentacion` VALUES (125,'100 MG SOBRES X 14','A');
INSERT INTO `presentacion` VALUES (132,'100 MG X 100 CMPR.','A');
INSERT INTO `presentacion` VALUES (133,'100 MG X 14 COMP','A');
INSERT INTO `presentacion` VALUES (138,'100 MG X 20 CMPR','A');
INSERT INTO `presentacion` VALUES (140,'100 MG X 20 COMP','A');
INSERT INTO `presentacion` VALUES (142,'100 MG X 28 CMPR.','A');
INSERT INTO `presentacion` VALUES (147,'100 MG X 30 CMPR.','A');
INSERT INTO `presentacion` VALUES (153,'100 MG X 40 CMPR','A');
INSERT INTO `presentacion` VALUES (159,'100 MG X 50 COMP','A');
INSERT INTO `presentacion` VALUES (183,'1000 MG FCO AMP','A');
INSERT INTO `presentacion` VALUES (184,'1000 MG X 1 AMP','A');
INSERT INTO `presentacion` VALUES (185,'1000 MG X 16 CMPR.','A');
INSERT INTO `presentacion` VALUES (187,'1000 MG X 8 CMPR.','A');
INSERT INTO `presentacion` VALUES (222,'150 MG X 20 COMP','A');
INSERT INTO `presentacion` VALUES (301,'200 MG SOBRES X 14','A');
INSERT INTO `presentacion` VALUES (302,'200 MG SUSP X 20ML.','A');
INSERT INTO `presentacion` VALUES (307,'200 MG X 10 COMP','A');
INSERT INTO `presentacion` VALUES (310,'200 MG X 20 COMP','A');
INSERT INTO `presentacion` VALUES (311,'200 MG X 25 CMPR.','A');
INSERT INTO `presentacion` VALUES (312,'200 MG X 25 COMP','A');
INSERT INTO `presentacion` VALUES (315,'200 MG X 30 COMP','A');
INSERT INTO `presentacion` VALUES (317,'200 MG X 40 COMP','A');
INSERT INTO `presentacion` VALUES (319,'200 MG X 6 CMPR.','A');
INSERT INTO `presentacion` VALUES (321,'200 MG X 60 COMP','A');
INSERT INTO `presentacion` VALUES (328,'240 MG AMP X 5','A');
INSERT INTO `presentacion` VALUES (334,'25 MG X 100 COMP','A');
INSERT INTO `presentacion` VALUES (336,'25 MG X 20 CMPR.','A');
INSERT INTO `presentacion` VALUES (344,'25 MG X 50 CMPR.','A');
INSERT INTO `presentacion` VALUES (345,'25 MG X 50 COMP','A');
INSERT INTO `presentacion` VALUES (360,'250 MG X 100 ML','A');
INSERT INTO `presentacion` VALUES (362,'250 MG X 120 ML.','A');
INSERT INTO `presentacion` VALUES (374,'250 MG X 60 ML.','A');
INSERT INTO `presentacion` VALUES (377,'250 MG X 90 ML.','A');
INSERT INTO `presentacion` VALUES (378,'250 SUSP X 60 ML.','A');
INSERT INTO `presentacion` VALUES (415,'300 MG X 100 CMPR.','A');
INSERT INTO `presentacion` VALUES (420,'300 MG X 20 COMP','A');
INSERT INTO `presentacion` VALUES (422,'300 MG X 30 CMPR.','A');
INSERT INTO `presentacion` VALUES (426,'300 MG X 40 COMP','A');
INSERT INTO `presentacion` VALUES (427,'300 MG X 50 CMPR.','A');
INSERT INTO `presentacion` VALUES (428,'300 MG X 50 COMP','A');
INSERT INTO `presentacion` VALUES (438,'325 MG X 25 GRAG','A');
INSERT INTO `presentacion` VALUES (439,'325 MG X 50 GRAG','A');
INSERT INTO `presentacion` VALUES (442,'375 MG X 16 TAB','A');
INSERT INTO `presentacion` VALUES (443,'375 MG X 8 TAB','A');
INSERT INTO `presentacion` VALUES (447,'4 MG X 20 CMPR.','A');
INSERT INTO `presentacion` VALUES (477,'40 UI GEL FCO C/1 SOLV+JER','A');
INSERT INTO `presentacion` VALUES (486,'400 MG X 15 COMP','A');
INSERT INTO `presentacion` VALUES (489,'400 MG X 3 CMPR.','A');
INSERT INTO `presentacion` VALUES (495,'400 MG X 35 COMP','A');
INSERT INTO `presentacion` VALUES (498,'400 MG X 6 CMPR.','A');
INSERT INTO `presentacion` VALUES (509,'5 % CREMA X 5 GRS','A');
INSERT INTO `presentacion` VALUES (520,'5 MG X 20 CMPR.','A');
INSERT INTO `presentacion` VALUES (524,'5 MG X 30 CMPR.','A');
INSERT INTO `presentacion` VALUES (531,'5 MG. X 30 CMPR.','A');
INSERT INTO `presentacion` VALUES (558,'50 MG X 30 CMPR','A');
INSERT INTO `presentacion` VALUES (579,'500 MG FCO AMP X 2','A');
INSERT INTO `presentacion` VALUES (584,'500 MG X 1 AMP','A');
INSERT INTO `presentacion` VALUES (588,'500 MG X 105 ML','A');
INSERT INTO `presentacion` VALUES (590,'500 MG X 120 ML.','A');
INSERT INTO `presentacion` VALUES (591,'500 MG X 14 CMPR','A');
INSERT INTO `presentacion` VALUES (593,'500 MG X 15 COMP','A');
INSERT INTO `presentacion` VALUES (594,'500 MG X 16 CMPR.','A');
INSERT INTO `presentacion` VALUES (601,'500 MG X 21 COMP','A');
INSERT INTO `presentacion` VALUES (604,'500 MG X 25 COMP','A');
INSERT INTO `presentacion` VALUES (606,'500 MG X 30 CMPR DISP','A');
INSERT INTO `presentacion` VALUES (613,'500 MG X 60 ML.','A');
INSERT INTO `presentacion` VALUES (614,'500 MG X 75 ML','A');
INSERT INTO `presentacion` VALUES (615,'500 MG X 8 CMPR.','A');
INSERT INTO `presentacion` VALUES (616,'500 MG X 8 COMP','A');
INSERT INTO `presentacion` VALUES (619,'500 MG X 90 ML.','A');
INSERT INTO `presentacion` VALUES (655,'600 MG TAB EFERV. X 10','A');
INSERT INTO `presentacion` VALUES (656,'600 MG TAB EFERV. X 20','A');
INSERT INTO `presentacion` VALUES (682,'75 MG X 30 COMP','A');
INSERT INTO `presentacion` VALUES (683,'750 MG X 1 AMP','A');
INSERT INTO `presentacion` VALUES (684,'750 MG X 10 CMPR.','A');
INSERT INTO `presentacion` VALUES (685,'750 MG X 15 CMPR.','A');
INSERT INTO `presentacion` VALUES (697,'800 MG X 15 COMP','A');
INSERT INTO `presentacion` VALUES (698,'800 MG X 20 COMP','A');
INSERT INTO `presentacion` VALUES (699,'800 MG X 30 COMP','A');
INSERT INTO `presentacion` VALUES (700,'800 MG X 35 COMP','A');
INSERT INTO `presentacion` VALUES (702,'81 MG X 25 GRAG','A');
INSERT INTO `presentacion` VALUES (703,'81 MG X 50 GRAG','A');
INSERT INTO `presentacion` VALUES (732,'AMP X 3 X 10 ML','A');
INSERT INTO `presentacion` VALUES (737,'AMP X 6 X 10 ML','A');
INSERT INTO `presentacion` VALUES (814,'EFERV 100 MG X 20 COMP','A');
INSERT INTO `presentacion` VALUES (817,'EFERV 600 MG X 10 COMP','A');
INSERT INTO `presentacion` VALUES (818,'EFERV 600 MG X 20 COMP','A');
INSERT INTO `presentacion` VALUES (831,'F 650 MG X 25 GRAG','A');
INSERT INTO `presentacion` VALUES (832,'F 650 MG X 50 GRAG','A');
INSERT INTO `presentacion` VALUES (853,'GEL X 175 ML.','A');
INSERT INTO `presentacion` VALUES (857,'GEL X 350 ML.','A');
INSERT INTO `presentacion` VALUES (934,'JBE X 150 ML','A');
INSERT INTO `presentacion` VALUES (965,'MAALOX  SUSP X 175 ML.','A');
INSERT INTO `presentacion` VALUES (1008,'PDA X 30 GR','A');
INSERT INTO `presentacion` VALUES (1014,'PED 250 MG X 40 ML','A');
INSERT INTO `presentacion` VALUES (1085,'SUSP X 125 ML','A');
INSERT INTO `presentacion` VALUES (1104,'UNG X 10 GRS','A');
INSERT INTO `presentacion` VALUES (1111,'X 10 CMPR.','A');
INSERT INTO `presentacion` VALUES (1119,'X 12 SUPOSIT.','A');
INSERT INTO `presentacion` VALUES (1135,'X 20 CMPR.','A');
INSERT INTO `presentacion` VALUES (1144,'X 24 COMP','A');
INSERT INTO `presentacion` VALUES (1156,'X 30 CMPR.','A');
INSERT INTO `presentacion` VALUES (1171,'X 50 CMPR.','A');
INSERT INTO `presentacion` VALUES (1175,'X 60 CMPR.','A');
INSERT INTO `presentacion` VALUES (1178,'160g x 167','A');
INSERT INTO `presentacion` VALUES (1179,'0,01% LOC X 600 ML','A');
INSERT INTO `presentacion` VALUES (1180,'sobres de 3','A');
INSERT INTO `presentacion` VALUES (1181,'set','A');
INSERT INTO `presentacion` VALUES (1182,'setww','A');
INSERT INTO `presentacion` VALUES (1183,'160g x 167j','A');
INSERT INTO `presentacion` VALUES (1184,'asdfasdf','A');
INSERT INTO `presentacion` VALUES (1185,'asd','A');
INSERT INTO `presentacion` VALUES (1186,'hola','A');
INSERT INTO `presentacion` VALUES (1187,'sobres','A');
INSERT INTO `presentacion` VALUES (1188,'que onda','I');
INSERT INTO `presentacion` VALUES (1189,'Satches','A');

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
 
 
CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `codigo_barra` varchar(45) NOT NULL,
  `url_foto` varchar(500) DEFAULT NULL,
  `estado` varchar(1) NOT NULL,
  PRIMARY KEY (`id_producto`),
  UNIQUE KEY `chk_codigo` (`codigo_barra`),
  KEY `id_presentacion` (`id_presentacion`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_presentacion`) REFERENCES `presentacion` (`id_presentacion`)
);
 
--
-- Dumping data for table `producto`
--

INSERT INTO `producto` VALUES (1,51,'paracetamol','8141097547121','https://www.youtube.com/watch?v=l9kXym1doYA','A');
INSERT INTO `producto` VALUES (2,51,'paracetamol','8407293190364','https://www.youtube.com/watch?v=oQi28S1Unlo','A');
INSERT INTO `producto` VALUES (4,447,'SINTROM','1503315093129','https://www.youtube.com/watch?v=L_xc4YBmtOQ','A');
INSERT INTO `producto` VALUES (8,655,'ACEMUK','2321831990932','http://127.0.0.1/fotos/img360x360_00e5b7.png','A');
INSERT INTO `producto` VALUES (9,656,'ACEMUK','8363799871445','http://127.0.0.1/fotos/img360x360_01685c.png','A');
INSERT INTO `producto` VALUES (10,125,'FLUIMUCIL','6035039661926','http://127.0.0.1/fotos/img360x360_025bf2.png','A');
INSERT INTO `producto` VALUES (11,301,'FLUIMUCIL','3037566792251','http://127.0.0.1/fotos/img360x360_0362f9.png','A');
INSERT INTO `producto` VALUES (12,934,'ACC','9577025163788','http://127.0.0.1/fotos/img360x360_041baa.png','A');
INSERT INTO `producto` VALUES (13,814,'ACC','4314884271934','http://127.0.0.1/fotos/img360x360_041c62.png','A');
INSERT INTO `producto` VALUES (15,817,'ACC','3044447879338','','A');
INSERT INTO `producto` VALUES (16,818,'ACC','5408527841574','http://127.0.0.1/fotos/img360x360_09f2bf.png','A');
INSERT INTO `producto` VALUES (17,140,'CARDIOASPIRINA','7754113111667','http://127.0.0.1/fotos/img360x360_0b1fc8.png','A');
INSERT INTO `producto` VALUES (19,438,'ECOTRIN','4898378758229','http://127.0.0.1/fotos/img360x360_0c0cda.png','A');
INSERT INTO `producto` VALUES (20,439,'ECOTRIN','2706760687649','http://127.0.0.1/fotos/img360x360_0d7dca.png','A');
INSERT INTO `producto` VALUES (21,702,'ECOTRIN','7745529336874','http://127.0.0.1/fotos/img360x360_0ef71d.png','A');
INSERT INTO `producto` VALUES (22,703,'ECOTRIN','7303620357190','http://127.0.0.1/fotos/img360x360_0f6368.png','A');
INSERT INTO `producto` VALUES (23,831,'ECOTRIN','9931865970478','http://127.0.0.1/fotos/img360x360_0f9b96.png','A');
INSERT INTO `producto` VALUES (24,832,'ECOTRIN','3664186020190','http://127.0.0.1/fotos/img360x360_1052cf.png','A');
INSERT INTO `producto` VALUES (25,307,'ACICLOVIR FILAXIS','2996642476403','http://127.0.0.1/fotos/img360x360_10e60d.png','A');
INSERT INTO `producto` VALUES (26,317,'ACICLOVIR FILAXIS','8540105559949','http://127.0.0.1/fotos/img360x360_119039.png','A');
INSERT INTO `producto` VALUES (27,698,'ACICLOVIR FILAXIS','5566711435166','http://127.0.0.1/fotos/img360x360_126fd1.png','A');
INSERT INTO `producto` VALUES (29,315,'XICLOVIR','1108644364010','http://127.0.0.1/fotos/img360x360_12faba.png','A');
INSERT INTO `producto` VALUES (30,698,'XICLOVIR','7701954170216','http://127.0.0.1/fotos/img360x360_144290.png','A');
INSERT INTO `producto` VALUES (33,1104,'XICLOVIR','4620082536141','http://127.0.0.1/fotos/img360x360_1685ce.png','A');
INSERT INTO `producto` VALUES (34,311,'ACERPES','1711833785147','http://127.0.0.1/fotos/img360x360_173a39.png','A');
INSERT INTO `producto` VALUES (35,495,'ACERPES','5439059991017','http://127.0.0.1/fotos/img360x360_19694b.png','A');
INSERT INTO `producto` VALUES (36,509,'ACERPES','5468051216583','http://127.0.0.1/fotos/img360x360_199a2b.png','A');
INSERT INTO `producto` VALUES (37,700,'ACERPES','3926843327616','http://127.0.0.1/fotos/img360x360_1e9bc6.png','A');
INSERT INTO `producto` VALUES (38,312,'LIXAR','8471024945080','http://127.0.0.1/fotos/img360x360_20ed27.png','A');
INSERT INTO `producto` VALUES (39,486,'LIXAR','2800828672728','http://127.0.0.1/fotos/img360x360_240f5c.png','A');
INSERT INTO `producto` VALUES (42,509,'LIXAR','6201358309829','http://127.0.0.1/fotos/img360x360_2523dd.png','A');
INSERT INTO `producto` VALUES (43,697,'LIXAR','5646225378569','http://127.0.0.1/fotos/img360x360_26b971.png','A');
INSERT INTO `producto` VALUES (44,699,'LIXAR','8938538499459','http://127.0.0.1/fotos/img360x360_26c3d7.png','A');
INSERT INTO `producto` VALUES (45,1085,'LIXAR','9090924977251','http://127.0.0.1/fotos/img360x360_278d5b.png','A');
INSERT INTO `producto` VALUES (46,222,'SOLUTRAT','1373778743875','http://127.0.0.1/fotos/img360x360_28b616.png','A');
INSERT INTO `producto` VALUES (48,222,'DEXO','3430183495626','http://127.0.0.1/fotos/img360x360_291931.png','A');
INSERT INTO `producto` VALUES (50,51,'paracetamol','8272203169811','https://www.youtube.com/watch?v=l9kXym1doYA','A');
INSERT INTO `producto` VALUES (51,112,'NEOTIGASON','8247694362683','http://127.0.0.1/fotos/img360x360_2a1c33.png','A');
INSERT INTO `producto` VALUES (52,344,'NEOTIGASON','8947944254705','http://127.0.0.1/fotos/img360x360_2fd5a3.png','A');
INSERT INTO `producto` VALUES (54,477,'ACTHELEA 40 UI','7048580976950','http://127.0.0.1/fotos/img360x360_313ff0.png','A');
INSERT INTO `producto` VALUES (55,302,'VASTUS','2425709788925','http://127.0.0.1/fotos/img360x360_33a1e8.png','A');
INSERT INTO `producto` VALUES (56,319,'VASTUS','8160653695151','','A');
INSERT INTO `producto` VALUES (57,489,'VASTUS 400','6776446318026','http://127.0.0.1/fotos/img360x360_375e90.png','A');
INSERT INTO `producto` VALUES (58,498,'VASTUS 400','2983182144435','http://127.0.0.1/fotos/img360x360_3911de.png','A');
INSERT INTO `producto` VALUES (59,107,'ALENATO','9893672410939','http://127.0.0.1/fotos/img360x360_397441.png','A');
INSERT INTO `producto` VALUES (60,107,'ARENDAL','3743910300507','http://127.0.0.1/fotos/img360x360_39c9ba.png','A');
INSERT INTO `producto` VALUES (61,107,'LAFEDAN','6615096948378','http://127.0.0.1/fotos/img360x360_400017.png','A');
INSERT INTO `producto` VALUES (62,107,'REGENESIS','7904210496888','http://127.0.0.1/fotos/img360x360_41efbe.png','A');
INSERT INTO `producto` VALUES (63,107,'SILIDRAL','1548841340408','http://127.0.0.1/fotos/img360x360_434fd6.png','A');
INSERT INTO `producto` VALUES (64,107,'FINDECLIN','6249717787666','http://127.0.0.1/fotos/img360x360_4574d9.png','A');
INSERT INTO `producto` VALUES (65,524,'FINDECLIN','5438371169180','http://127.0.0.1/fotos/img360x360_46215a.png','A');
INSERT INTO `producto` VALUES (66,159,'ALLOBOXAL','8505078175022','http://127.0.0.1/fotos/img360x360_46d3ef.png','A');
INSERT INTO `producto` VALUES (67,420,'ALLOBOXAL','1494820979094','http://127.0.0.1/fotos/img360x360_47b06c.png','A');
INSERT INTO `producto` VALUES (68,428,'ALLOBOXAL','2183460480730','http://127.0.0.1/fotos/img360x360_47fce0.png','A');
INSERT INTO `producto` VALUES (71,132,'ALLOPURINOL PHOENIX','8010259681310','http://127.0.0.1/fotos/img360x360_48138b.png','A');
INSERT INTO `producto` VALUES (72,153,'ALLOPURINOL PHOENIX','1664216201836','http://127.0.0.1/fotos/img360x360_4849ee.png','A');
INSERT INTO `producto` VALUES (73,415,'ALLOPURINOL PHOENIX','4248297621911','http://127.0.0.1/fotos/img360x360_488514.png','A');
INSERT INTO `producto` VALUES (74,426,'ALLOPURINOL PHOENIX','1266101977040','http://127.0.0.1/fotos/img360x360_497660.png','A');
INSERT INTO `producto` VALUES (76,147,'GOTIR','3414866970556','http://127.0.0.1/fotos/img360x360_4c3bbe.png','A');
INSERT INTO `producto` VALUES (77,415,'GOTIR','7245918517636','http://127.0.0.1/fotos/img360x360_4db089.png','A');
INSERT INTO `producto` VALUES (78,422,'GOTIR','9237247490443','http://127.0.0.1/fotos/img360x360_4f732f.png','A');
INSERT INTO `producto` VALUES (79,853,'ALDROX','4279939541328','http://127.0.0.1/fotos/img360x360_50d68f.png','A');
INSERT INTO `producto` VALUES (81,853,'ALUDROX','4486814387517','http://127.0.0.1/fotos/img360x360_50ee4d.png','A');
INSERT INTO `producto` VALUES (82,857,'ALUDROX','1712367522062','http://127.0.0.1/fotos/img360x360_521d5f.png','A');
INSERT INTO `producto` VALUES (83,1156,'ALUDROX','7471973476483','http://127.0.0.1/fotos/img360x360_52cfd9.png','A');
INSERT INTO `producto` VALUES (85,1144,'MYLANTA SIMPLE','6138411346296','http://127.0.0.1/fotos/img360x360_552232.png','A');
INSERT INTO `producto` VALUES (86,965,'MAALOX ','6865853057250','http://127.0.0.1/fotos/img360x360_564c2b.png','A');
INSERT INTO `producto` VALUES (87,1111,'VIROSOL','6844799907157','http://127.0.0.1/fotos/img360x360_5653c2.png','A');
INSERT INTO `producto` VALUES (88,183,'BIKLIN','6402097474780','http://127.0.0.1/fotos/img360x360_580b01.png','A');
INSERT INTO `producto` VALUES (90,579,'BIKLIN','5487168011553','http://127.0.0.1/fotos/img360x360_586903.png','A');
INSERT INTO `producto` VALUES (91,604,'IPSILON','3322007974519','http://127.0.0.1/fotos/img360x360_58e9a1.png','A');
INSERT INTO `producto` VALUES (92,732,'AMINOFILINA NORTHIA','8946554038026','http://127.0.0.1/fotos/img360x360_59a088.png','A');
INSERT INTO `producto` VALUES (93,737,'AMINOFILINA NORTHIA','3909530649888','http://127.0.0.1/fotos/img360x360_59ab1c.png','A');
INSERT INTO `producto` VALUES (95,138,'AMINOFILINA RICHET','8206677452025','http://127.0.0.1/fotos/img360x360_59fd97.png','A');
INSERT INTO `producto` VALUES (96,328,'AMINOFILINA RICHET','8274811617647','http://127.0.0.1/fotos/img360x360_5bb89b.png','A');
INSERT INTO `producto` VALUES (97,1135,'ATLANSIL','7249807323001','http://127.0.0.1/fotos/img360x360_5caf9b.png','A');
INSERT INTO `producto` VALUES (98,1171,'ATLANSIL','7850011724357','http://127.0.0.1/fotos/img360x360_5d1454.png','A');
INSERT INTO `producto` VALUES (100,1175,'CORONOVO','2266695721844','http://127.0.0.1/fotos/img360x360_5de7dd.png','A');
INSERT INTO `producto` VALUES (101,310,'RITMOCARDYL','6433738283546','http://127.0.0.1/fotos/img360x360_5e1d02.png','A');
INSERT INTO `producto` VALUES (102,321,'RITMOCARDYL','5623632974300','http://127.0.0.1/fotos/img360x360_5f66f8.png','A');
INSERT INTO `producto` VALUES (104,1171,'ANGOTEN','5284934714560','http://127.0.0.1/fotos/img360x360_634890.png','A');
INSERT INTO `producto` VALUES (105,334,'TRYPTANOL','7224010015592','http://127.0.0.1/fotos/img360x360_67edd6.png','A');
INSERT INTO `producto` VALUES (106,345,'TRYPTANOL','6061871154104','http://127.0.0.1/fotos/img360x360_686108.png','A');
INSERT INTO `producto` VALUES (107,682,'TRYPTANOL','1816695383217','http://127.0.0.1/fotos/img360x360_68e5db.png','A');
INSERT INTO `producto` VALUES (108,336,'UXEN RETARD','3225579109955','http://127.0.0.1/fotos/img360x360_6938dc.png','A');
INSERT INTO `producto` VALUES (109,100,'AMLOC','3269303835338','http://127.0.0.1/fotos/img360x360_69513f.png','A');
INSERT INTO `producto` VALUES (112,524,'AMLOC','9805465356935','http://127.0.0.1/fotos/img360x360_69c541.png','A');
INSERT INTO `producto` VALUES (114,531,'ARTERIOSAN','5369376638398','http://127.0.0.1/fotos/img360x360_69ce4c.png','A');
INSERT INTO `producto` VALUES (116,531,'TERLOC','4979565835777','http://127.0.0.1/fotos/img360x360_6a8b00.png','A');
INSERT INTO `producto` VALUES (117,100,'ANEXA','9958910086748','http://127.0.0.1/fotos/img360x360_6acc4c.png','A');
INSERT INTO `producto` VALUES (118,107,'ANEXA','4537686189195','http://127.0.0.1/fotos/img360x360_6c10a3.png','A');
INSERT INTO `producto` VALUES (119,520,'ANEXA','8870600445035','http://127.0.0.1/fotos/img360x360_6c9410.png','A');
INSERT INTO `producto` VALUES (120,524,'ANEXA','1976155407829','http://127.0.0.1/fotos/img360x360_72518d.png','A');
INSERT INTO `producto` VALUES (121,374,'FULLCILINA','7665622410670','http://127.0.0.1/fotos/img360x360_72e0f3.png','A');
INSERT INTO `producto` VALUES (122,377,'FULLCILINA','2470984940803','http://127.0.0.1/fotos/img360x360_741db3.png','A');
INSERT INTO `producto` VALUES (123,594,'FULLCILINA','2730256901698','http://127.0.0.1/fotos/img360x360_768879.png','A');
INSERT INTO `producto` VALUES (124,606,'FULLCILINA','9949588770404','http://127.0.0.1/fotos/img360x360_76ab5d.png','A');
INSERT INTO `producto` VALUES (125,613,'FULLCILINA','2072687820385','http://127.0.0.1/fotos/img360x360_76f5d6.png','A');
INSERT INTO `producto` VALUES (126,616,'FULLCILINA','6204070672271','http://127.0.0.1/fotos/img360x360_782dd3.png','A');
INSERT INTO `producto` VALUES (127,619,'FULLCILINA','3479260164864','http://127.0.0.1/fotos/img360x360_7b99c8.png','A');
INSERT INTO `producto` VALUES (128,185,'GRINSIL','3601271241931','http://127.0.0.1/fotos/img360x360_7d2000.png','A');
INSERT INTO `producto` VALUES (129,362,'GRINSIL','4613808579027','http://127.0.0.1/fotos/img360x360_7d319d.png','A');
INSERT INTO `producto` VALUES (130,377,'GRINSIL','3757079033251','http://127.0.0.1/fotos/img360x360_7d95a6.png','A');
INSERT INTO `producto` VALUES (131,590,'GRINSIL','7387970547883','http://127.0.0.1/fotos/img360x360_7de2ec.png','A');
INSERT INTO `producto` VALUES (132,594,'GRINSIL','1462968695749','http://127.0.0.1/fotos/img360x360_7e4e08.png','A');
INSERT INTO `producto` VALUES (133,619,'GRINSIL','4214208693100','http://127.0.0.1/fotos/img360x360_7f2830.png','A');
INSERT INTO `producto` VALUES (134,684,'GRINSIL','5354284700886','http://127.0.0.1/fotos/img360x360_7fecd6.png','A');
INSERT INTO `producto` VALUES (135,685,'GRINSIL','9030393667789','http://127.0.0.1/fotos/img360x360_81055f.png','A');
INSERT INTO `producto` VALUES (136,52,'NOBACTAM','9634473179416','http://127.0.0.1/fotos/img360x360_8249e7.png','A');
INSERT INTO `producto` VALUES (137,55,'NOBACTAM','4863393495220','http://127.0.0.1/fotos/img360x360_853c84.png','A');
INSERT INTO `producto` VALUES (138,378,'NOBACTAM','4771809837260','http://127.0.0.1/fotos/img360x360_858e87.png','A');
INSERT INTO `producto` VALUES (141,588,'OXIMAR','8125539660586','http://127.0.0.1/fotos/img360x360_89fe38.png','A');
INSERT INTO `producto` VALUES (142,593,'OXIMAR','1937592804671','http://127.0.0.1/fotos/img360x360_8b8c39.png','A');
INSERT INTO `producto` VALUES (143,601,'OXIMAR','3359763215075','http://127.0.0.1/fotos/img360x360_8bb6e8.png','A');
INSERT INTO `producto` VALUES (144,614,'OXIMAR','2402065859148','http://127.0.0.1/fotos/img360x360_91352f.png','A');
INSERT INTO `producto` VALUES (145,51,'CLAVULOX','9186728820425','http://127.0.0.1/fotos/img360x360_91d61f.png','A');
INSERT INTO `producto` VALUES (146,360,'CLAVULOX','3220947227002','http://127.0.0.1/fotos/img360x360_9258ca.png','A');
INSERT INTO `producto` VALUES (147,591,'CLAVULOX','1828344342780','http://127.0.0.1/fotos/img360x360_9326f6.png','A');
INSERT INTO `producto` VALUES (150,594,'GRINSIL CLAVULANICO','2983156875013','http://127.0.0.1/fotos/img360x360_9519f1.png','A');
INSERT INTO `producto` VALUES (151,619,'GRINSIL CLAVULANICO','4702428193802','http://127.0.0.1/fotos/img360x360_9b129a.png','A');
INSERT INTO `producto` VALUES (153,187,'TRIFAMOX IBL','7239131571766','http://127.0.0.1/fotos/img360x360_9b3c33.png','A');
INSERT INTO `producto` VALUES (156,374,'TRIFAMOX IBL','6184052469931','http://127.0.0.1/fotos/img360x360_9d7ad7.png','A');
INSERT INTO `producto` VALUES (157,590,'TRIFAMOX IBL','1217274679590','http://127.0.0.1/fotos/img360x360_a0cd0d.png','A');
INSERT INTO `producto` VALUES (158,594,'TRIFAMOX IBL','9357620264055','http://127.0.0.1/fotos/img360x360_a34579.png','A');
INSERT INTO `producto` VALUES (159,613,'TRIFAMOX IBL','5215472143161','http://127.0.0.1/fotos/img360x360_a46f96.png','A');
INSERT INTO `producto` VALUES (160,615,'TRIFAMOX IBL','6135140618519','http://127.0.0.1/fotos/img360x360_a49cb6.png','A');
INSERT INTO `producto` VALUES (161,683,'TRIFAMOX IBL','8759153589000','http://127.0.0.1/fotos/img360x360_a4c494.png','A');
INSERT INTO `producto` VALUES (162,184,'GRAMPENIL','4644562740453','http://127.0.0.1/fotos/img360x360_a5aaa9.png','A');
INSERT INTO `producto` VALUES (163,185,'GRAMPENIL','7694922602966','http://127.0.0.1/fotos/img360x360_a6421a.png','A');
INSERT INTO `producto` VALUES (164,362,'GRAMPENIL','1367603471927','http://127.0.0.1/fotos/img360x360_a73150.png','A');
INSERT INTO `producto` VALUES (165,584,'GRAMPENIL','3480461382988','http://127.0.0.1/fotos/img360x360_a822af.png','A');
INSERT INTO `producto` VALUES (166,594,'GRAMPENIL','4659891140645','http://127.0.0.1/fotos/img360x360_a8b719.png','A');
INSERT INTO `producto` VALUES (167,187,'HISTOPEN','6358844004420','http://127.0.0.1/fotos/img360x360_a9440d.png','A');
INSERT INTO `producto` VALUES (169,594,'HISTOPEN','4145519375266','http://127.0.0.1/fotos/img360x360_a96059.png','A');
INSERT INTO `producto` VALUES (170,1014,'HISTOPEN','7838186702431','http://127.0.0.1/fotos/img360x360_a9762a.png','A');
INSERT INTO `producto` VALUES (171,184,'TRIFACILINA','6488722831333','http://127.0.0.1/fotos/img360x360_ae7894.png','A');
INSERT INTO `producto` VALUES (172,185,'TRIFACILINA','8391232459028','http://127.0.0.1/fotos/img360x360_afbcb5.png','A');
INSERT INTO `producto` VALUES (177,184,'TRIMICRO','3919141103143','http://127.0.0.1/fotos/img360x360_b135db.png','A');
INSERT INTO `producto` VALUES (178,185,'TRIMICRO','6527888506515','http://127.0.0.1/fotos/img360x360_b29f13.png','A');
INSERT INTO `producto` VALUES (179,187,'TRIMICRO','4760941431498','http://127.0.0.1/fotos/img360x360_b2b67b.png','A');
INSERT INTO `producto` VALUES (180,374,'TRIMICRO','1954178701285','http://127.0.0.1/fotos/img360x360_b40961.png','A');
INSERT INTO `producto` VALUES (181,584,'TRIMICRO','5171718602505','http://127.0.0.1/fotos/img360x360_b54425.png','A');
INSERT INTO `producto` VALUES (182,594,'TRIMICRO','8371081974217','http://127.0.0.1/fotos/img360x360_b565aa.png','A');
INSERT INTO `producto` VALUES (183,442,'SULTAMICILINA RICHET','7358387993624','http://127.0.0.1/fotos/img360x360_b5ca81.png','A');
INSERT INTO `producto` VALUES (184,443,'SULTAMICILINA RICHET','9157301042688','http://127.0.0.1/fotos/img360x360_b8a5bd.png','A');
INSERT INTO `producto` VALUES (185,442,'UNASYNA','5698389090122','http://127.0.0.1/fotos/img360x360_b8d572.png','A');
INSERT INTO `producto` VALUES (186,443,'UNASYNA','4444593199332','http://127.0.0.1/fotos/img360x360_b92342.png','A');
INSERT INTO `producto` VALUES (188,1008,'SCHERIPROCT','2906491019812','http://127.0.0.1/fotos/img360x360_ba0d31.png','A');
INSERT INTO `producto` VALUES (189,1119,'SCHERIPROCT','1559161027443','http://127.0.0.1/fotos/img360x360_bbbb86.png','A');
INSERT INTO `producto` VALUES (191,1008,'ULTRAPROCT','8658621220134','http://127.0.0.1/fotos/img360x360_c2e8fc.png','A');
INSERT INTO `producto` VALUES (192,1119,'ULTRAPROCT','4480309922825','http://127.0.0.1/fotos/img360x360_c32057.png','A');
INSERT INTO `producto` VALUES (193,2,'ANTRA-DERM','8877318980018','http://127.0.0.1/fotos/img360x360_c4a6f6.png','A');
INSERT INTO `producto` VALUES (195,75,'ANTRA-DERM','4247234323345','http://127.0.0.1/fotos/img360x360_c5731e.png','A');
INSERT INTO `producto` VALUES (196,30,'IOPIDINE 0','6499389586740','http://127.0.0.1/fotos/img360x360_c592d3.png','A');
INSERT INTO `producto` VALUES (197,133,'ATENOLOL GADOR','7992414419383','http://127.0.0.1/fotos/img360x360_c6343a.png','A');
INSERT INTO `producto` VALUES (198,142,'ATENOLOL GADOR','2460255577555','http://127.0.0.1/fotos/img360x360_c749e7.png','A');
INSERT INTO `producto` VALUES (199,2,'para','4552254013559','http://foto','A');
INSERT INTO `producto` VALUES (200,2,'parasetayu','8194026144076','http://foto','A');
INSERT INTO `producto` VALUES (201,2,'parasetayu','1458816986961','http://foto','A');
INSERT INTO `producto` VALUES (202,2,'parasetayu','9745874577630','http://foto','A');
INSERT INTO `producto` VALUES (203,2,'parasetayu','7010238358098','http://foto','A');
INSERT INTO `producto` VALUES (204,2,'parasetayu','4694651294206','http://foto','A');
INSERT INTO `producto` VALUES (205,2,'parasetayu','5612494028269','http://foto','A');
INSERT INTO `producto` VALUES (206,2,'paraseta','8691217782500','http://foto','A');
INSERT INTO `producto` VALUES (207,2,'paraseta','0233403468331','http://foto','A');
INSERT INTO `producto` VALUES (208,2,'parasedta','1034081185607','http://foto','A');
INSERT INTO `producto` VALUES (209,2,'paradsedta','7968350009674','http://foto','A');
INSERT INTO `producto` VALUES (210,2,'paradsedta','0299941148517','http://foto','A');
INSERT INTO `producto` VALUES (211,2,'paradsedta','3828287331245','http://foto','A');
INSERT INTO `producto` VALUES (212,2,'paradsedta','7102704566622','http://foto','A');
INSERT INTO `producto` VALUES (213,2,'paradsedta','7084026422988','http://foto','A');
INSERT INTO `producto` VALUES (214,2,'paradsedta','9164733688735','http://foto','A');
INSERT INTO `producto` VALUES (215,2,'paradsedta','5259754060012','http://foto','A');
INSERT INTO `producto` VALUES (216,2,'paradsedta','0956746031030','http://foto','A');
INSERT INTO `producto` VALUES (217,2,'Tapón','1234568950135','http://123.com','A');
INSERT INTO `producto` VALUES (218,2,'Tapón','4960578171570','http://123.com','A');
INSERT INTO `producto` VALUES (219,2,'Tapón','4518613417635','','A');
INSERT INTO `producto` VALUES (220,30,'Colgate','5123129207732','','A');
INSERT INTO `producto` VALUES (221,2,'Prod','4700745677081','','A');
INSERT INTO `producto` VALUES (222,2,'addd','0438605772686','','A');
INSERT INTO `producto` VALUES (223,2,'Prod2','8203039078121','','A');
INSERT INTO `producto` VALUES (224,30,'Prod1','5658830157842','','A');
INSERT INTO `producto` VALUES (225,30,'Prod','8423818817523','','A');
INSERT INTO `producto` VALUES (226,2,'Prod','9729071454666','','A');
INSERT INTO `producto` VALUES (227,2,'Prod','9308132680222','','A');
INSERT INTO `producto` VALUES (228,2,'Prod','6143707330880','','A');
INSERT INTO `producto` VALUES (229,2,'Prod','8484210536092','','A');
INSERT INTO `producto` VALUES (230,2,'Prod','1426231537983','','A');
INSERT INTO `producto` VALUES (231,2,'rtgrvtr','5007610153596','','A');
INSERT INTO `producto` VALUES (232,2,'rtgrvtr','7308676048849','','A');
INSERT INTO `producto` VALUES (233,2,'fd vdfvd','7338475093597','','A');
INSERT INTO `producto` VALUES (234,2,'fgbfbf','6965109670834','','A');
INSERT INTO `producto` VALUES (235,100,'sdfsdfs','5255675968222','','A');
INSERT INTO `producto` VALUES (236,2,'rgrvtr','5723657178711','','A');
INSERT INTO `producto` VALUES (237,51,'dfgdgdfgd','3033632328089','','A');
INSERT INTO `producto` VALUES (238,142,'Cocacoleichon','7907384914738','','A');
INSERT INTO `producto` VALUES (239,75,'Viagra','1772997496218','','A');
INSERT INTO `producto` VALUES (240,75,'Panadol','1360072863071','','A');
INSERT INTO `producto` VALUES (241,55,'Taaaa','3651528926487','','A');
INSERT INTO `producto` VALUES (242,125,'Paracetamol','4604638874826','','A');
INSERT INTO `producto` VALUES (243,55,'sdf','3521728881940','','A');
INSERT INTO `producto` VALUES (244,52,'sss','1522425771994','','A');
INSERT INTO `producto` VALUES (245,55,'sss','6294612919964','','A');
INSERT INTO `producto` VALUES (246,51,'ss','7283175270581','','A');
INSERT INTO `producto` VALUES (247,107,'ss','4944350738700','','A');
INSERT INTO `producto` VALUES (248,107,'cuaker','1828949819601','','A');
INSERT INTO `producto` VALUES (249,52,'asdf','1144923737984','','A');
INSERT INTO `producto` VALUES (250,2,'aaa','0795591035400','NULL','I');
INSERT INTO `producto` VALUES (251,2,'aaaa','1779725011828','','A');
INSERT INTO `producto` VALUES (252,319,'Acholocate','0646314160834','','A');
INSERT INTO `producto` VALUES (253,75,'aChocolate','4766669557984','','A');
INSERT INTO `producto` VALUES (254,100,'asssss','7221090188277','','A');
INSERT INTO `producto` VALUES (255,2,'Gazas','9351466291343','img360x360_2d6472.png','A');
INSERT INTO `producto` VALUES (256,100,'CEREBROFOS','2580715008778','','I');
INSERT INTO `producto` VALUES (257,132,'riko','4314884271989','','A');
INSERT INTO `producto` VALUES (258,112,'aaaaLorem','4633734624400','','I');
INSERT INTO `producto` VALUES (259,30,'aaaLorem2','7504800172101','','A');
INSERT INTO `producto` VALUES (260,112,'aaaaLorem','9548741823973','','A');
INSERT INTO `producto` VALUES (261,2,'aaaLorem','7305572446168','','A');
INSERT INTO `producto` VALUES (262,2,'paradsedta','4861665640835','http://foto','A');
INSERT INTO `producto` VALUES (263,315,'aaaLorem3','5122492836662','','A');
INSERT INTO `producto` VALUES (264,75,'aAaLorem23','6444796469254','','A');
INSERT INTO `producto` VALUES (265,112,'aaaaaLorem','8761568153820','','A');
INSERT INTO `producto` VALUES (266,112,'aaaLorem4','2872670487225','NULL','A');
INSERT INTO `producto` VALUES (267,112,'cacs','7162456136566','','A');
INSERT INTO `producto` VALUES (268,112,'cacsxv','3134638618317','','A');
INSERT INTO `producto` VALUES (269,112,'sdvsvds','8749501831660','','A');
INSERT INTO `producto` VALUES (270,125,'dcsvsdvs','7606544964285','','A');
INSERT INTO `producto` VALUES (271,55,'sdvsdvsd','6551952567706','','A');
INSERT INTO `producto` VALUES (272,125,'sdcsdcs','1589518319402','','A');
INSERT INTO `producto` VALUES (273,2,'aaaaLorem','6035434860153','','A');
INSERT INTO `producto` VALUES (274,2,'paradsedata','8225993617154','http://foto','A');
INSERT INTO `producto` VALUES (275,30,'Gazas','6831491928511','https://foto','A');
INSERT INTO `producto` VALUES (276,2,'paradsedta','7924968990841','http://foto','A');
INSERT INTO `producto` VALUES (277,51,'aaLorem2','5282547412149','','A');
INSERT INTO `producto` VALUES (278,30,'Gazas','1234rt5678','https://foto','A');
INSERT INTO `producto` VALUES (279,75,'dsdsd','dssds','','A');
INSERT INTO `producto` VALUES (280,112,'ayuwoki','ayuwoki','','A');
INSERT INTO `producto` VALUES (281,112,'a','A','','A');
INSERT INTO `producto` VALUES (282,112,'a','B','','A');
INSERT INTO `producto` VALUES (283,112,'Akk','Bccd','','A');
INSERT INTO `producto` VALUES (284,125,'asa','0101010010101','','A');
INSERT INTO `producto` VALUES (285,125,'aaaaaaaasa','01010100101010','','A');
INSERT INTO `producto` VALUES (286,125,'aaaaaaaaaaaaaaaaaLorem1','10558001010','vitamina.jpg','A');

--
-- Table structure for table `telefono`
--

DROP TABLE IF EXISTS `telefono`;
 
 
CREATE TABLE `telefono` (
  `id_telefono` int(11) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  PRIMARY KEY (`id_telefono`)
);
 
--
-- Dumping data for table `telefono`
--

INSERT INTO `telefono` VALUES (1,'3299-0082');
INSERT INTO `telefono` VALUES (2,'2951-2173');
INSERT INTO `telefono` VALUES (3,'2257-2228');
INSERT INTO `telefono` VALUES (4,'8559-5354');
INSERT INTO `telefono` VALUES (5,'9430-6636');
INSERT INTO `telefono` VALUES (6,'8753-7969');
INSERT INTO `telefono` VALUES (7,'9002-9656');
INSERT INTO `telefono` VALUES (8,'9348-9228');
INSERT INTO `telefono` VALUES (9,'9920-9788');
INSERT INTO `telefono` VALUES (10,'3299-0085');
INSERT INTO `telefono` VALUES (11,'9818-2211');
INSERT INTO `telefono` VALUES (12,'9213-1871');
INSERT INTO `telefono` VALUES (13,'9525-4287');
INSERT INTO `telefono` VALUES (14,'3872-2575');
INSERT INTO `telefono` VALUES (15,'9097-8567');
INSERT INTO `telefono` VALUES (16,'8946-7902');
INSERT INTO `telefono` VALUES (17,'9353-8345');
INSERT INTO `telefono` VALUES (18,'8806-8691');
INSERT INTO `telefono` VALUES (19,'3743-0320');
INSERT INTO `telefono` VALUES (20,'9346-1803');
INSERT INTO `telefono` VALUES (21,'8030-6338');
INSERT INTO `telefono` VALUES (22,'9572-7383');
INSERT INTO `telefono` VALUES (23,'9907-4351');
INSERT INTO `telefono` VALUES (24,'9754-6302');
INSERT INTO `telefono` VALUES (25,'9852-9236');
INSERT INTO `telefono` VALUES (26,'8791-9107');
INSERT INTO `telefono` VALUES (27,'8035-9926');
INSERT INTO `telefono` VALUES (28,'9484-0142');
INSERT INTO `telefono` VALUES (29,'8090-8495');
INSERT INTO `telefono` VALUES (30,'3116-1841');
INSERT INTO `telefono` VALUES (31,'9190-2856');
INSERT INTO `telefono` VALUES (32,'9122-0075');
INSERT INTO `telefono` VALUES (33,'9958-8212');
INSERT INTO `telefono` VALUES (34,'3369-1575');
INSERT INTO `telefono` VALUES (35,'9893-2603');
INSERT INTO `telefono` VALUES (36,'9819-8713');
INSERT INTO `telefono` VALUES (37,'8005-0640');
INSERT INTO `telefono` VALUES (38,'3141-2689');
INSERT INTO `telefono` VALUES (39,'9539-5136');
INSERT INTO `telefono` VALUES (40,'9627-6131');
INSERT INTO `telefono` VALUES (41,'8963-2372');
INSERT INTO `telefono` VALUES (42,'8848-7449');
INSERT INTO `telefono` VALUES (43,'9469-1808');
INSERT INTO `telefono` VALUES (44,'9694-3896');
INSERT INTO `telefono` VALUES (45,'9726-6932');
INSERT INTO `telefono` VALUES (46,'3608-7097');
INSERT INTO `telefono` VALUES (47,'9573-8638');
INSERT INTO `telefono` VALUES (48,'2802-6823');
INSERT INTO `telefono` VALUES (49,'9556-4083');
INSERT INTO `telefono` VALUES (50,'9663-3341');
INSERT INTO `telefono` VALUES (51,'9328-8850');
INSERT INTO `telefono` VALUES (52,'8033-5806');
INSERT INTO `telefono` VALUES (53,'8743-4605');
INSERT INTO `telefono` VALUES (54,'3756-2770');
INSERT INTO `telefono` VALUES (55,'8200-7092');
INSERT INTO `telefono` VALUES (56,'9711-5030');
INSERT INTO `telefono` VALUES (57,'3552-0096');
INSERT INTO `telefono` VALUES (58,'9105-2205');
INSERT INTO `telefono` VALUES (59,'2753-9902');
INSERT INTO `telefono` VALUES (60,'9906-2052');
INSERT INTO `telefono` VALUES (61,'9405-7640');
INSERT INTO `telefono` VALUES (62,'2339-5080');
INSERT INTO `telefono` VALUES (63,'9879-9207');
INSERT INTO `telefono` VALUES (64,'9366-0564');
INSERT INTO `telefono` VALUES (65,'9403-9419');
INSERT INTO `telefono` VALUES (66,'8188-7559');
INSERT INTO `telefono` VALUES (67,'2689-9584');
INSERT INTO `telefono` VALUES (68,'8591-5204');
INSERT INTO `telefono` VALUES (69,'2786-4135');
INSERT INTO `telefono` VALUES (70,'9245-9286');
INSERT INTO `telefono` VALUES (71,'2112-8050');
INSERT INTO `telefono` VALUES (72,'9627-3920');
INSERT INTO `telefono` VALUES (73,'2158-3768');
INSERT INTO `telefono` VALUES (74,'9701-3816');
INSERT INTO `telefono` VALUES (75,'8135-4204');
INSERT INTO `telefono` VALUES (76,'9156-7100');
INSERT INTO `telefono` VALUES (77,'9387-6512');
INSERT INTO `telefono` VALUES (78,'9831-7904');
INSERT INTO `telefono` VALUES (79,'9985-9138');
INSERT INTO `telefono` VALUES (80,'9262-4235');
INSERT INTO `telefono` VALUES (81,'9211-7016');
INSERT INTO `telefono` VALUES (82,'9638-7866');
INSERT INTO `telefono` VALUES (83,'9498-4756');
INSERT INTO `telefono` VALUES (84,'8258-6342');
INSERT INTO `telefono` VALUES (85,'9502-5844');
INSERT INTO `telefono` VALUES (86,'9725-7579');
INSERT INTO `telefono` VALUES (87,'9889-0408');
INSERT INTO `telefono` VALUES (88,'8074-4040');
INSERT INTO `telefono` VALUES (89,'9232-2546');
INSERT INTO `telefono` VALUES (90,'9754-2914');
INSERT INTO `telefono` VALUES (91,'9695-4411');
INSERT INTO `telefono` VALUES (92,'8271-3795');
INSERT INTO `telefono` VALUES (93,'2353-2306');
INSERT INTO `telefono` VALUES (94,'8988-3137');
INSERT INTO `telefono` VALUES (95,'8827-7747');
INSERT INTO `telefono` VALUES (96,'8031-9595');
INSERT INTO `telefono` VALUES (97,'9930-0630');
INSERT INTO `telefono` VALUES (98,'9452-8294');
INSERT INTO `telefono` VALUES (99,'2634-0099');
INSERT INTO `telefono` VALUES (100,'9538-7236');
INSERT INTO `telefono` VALUES (101,'8955-9304');
INSERT INTO `telefono` VALUES (102,'9559-0080');
INSERT INTO `telefono` VALUES (103,'2676-5116');
INSERT INTO `telefono` VALUES (104,'9714-3189');
INSERT INTO `telefono` VALUES (105,'9662-0002');
INSERT INTO `telefono` VALUES (106,'8554-6441');
INSERT INTO `telefono` VALUES (107,'9764-5919');
INSERT INTO `telefono` VALUES (108,'9872-7926');
INSERT INTO `telefono` VALUES (109,'9948-4679');
INSERT INTO `telefono` VALUES (110,'2350-6080');
INSERT INTO `telefono` VALUES (111,'9452-9830');
INSERT INTO `telefono` VALUES (112,'9056-6944');
INSERT INTO `telefono` VALUES (113,'9714-8297');
INSERT INTO `telefono` VALUES (114,'8006-9818');
INSERT INTO `telefono` VALUES (115,'2211-0536');
INSERT INTO `telefono` VALUES (116,'9695-4016');
INSERT INTO `telefono` VALUES (117,'9316-2359');
INSERT INTO `telefono` VALUES (118,'9120-1938');
INSERT INTO `telefono` VALUES (119,'9003-3833');
INSERT INTO `telefono` VALUES (120,'3561-2186');
INSERT INTO `telefono` VALUES (121,'9553-1290');
INSERT INTO `telefono` VALUES (122,'9401-7603');
INSERT INTO `telefono` VALUES (123,'8863-0042');
INSERT INTO `telefono` VALUES (124,'8916-1032');
INSERT INTO `telefono` VALUES (125,'9055-2931');
INSERT INTO `telefono` VALUES (126,'9795-3086');
INSERT INTO `telefono` VALUES (127,'8206-4904');
INSERT INTO `telefono` VALUES (128,'3977-4420');
INSERT INTO `telefono` VALUES (129,'8241-7485');
INSERT INTO `telefono` VALUES (130,'9452-9297');
INSERT INTO `telefono` VALUES (131,'2296-9159');
INSERT INTO `telefono` VALUES (132,'9933-7163');
INSERT INTO `telefono` VALUES (133,'9803-9311');
INSERT INTO `telefono` VALUES (134,'9081-1976');
INSERT INTO `telefono` VALUES (135,'9540-0859');
INSERT INTO `telefono` VALUES (136,'9965-1579');
INSERT INTO `telefono` VALUES (137,'2259-8825');
INSERT INTO `telefono` VALUES (138,'2796-4636');
INSERT INTO `telefono` VALUES (139,'9541-3967');
INSERT INTO `telefono` VALUES (140,'9563-6009');
INSERT INTO `telefono` VALUES (141,'9648-7546');
INSERT INTO `telefono` VALUES (142,'2387-7249');
INSERT INTO `telefono` VALUES (143,'9811-4041');
INSERT INTO `telefono` VALUES (144,'3037-2771');
INSERT INTO `telefono` VALUES (145,'9691-2232');
INSERT INTO `telefono` VALUES (146,'9799-7623');
INSERT INTO `telefono` VALUES (147,'8595-9931');
INSERT INTO `telefono` VALUES (148,'9245-1121');
INSERT INTO `telefono` VALUES (149,'8157-8976');
INSERT INTO `telefono` VALUES (150,'9109-4864');
INSERT INTO `telefono` VALUES (151,'9638-3655');
INSERT INTO `telefono` VALUES (152,'9845-7345');
INSERT INTO `telefono` VALUES (153,'2623-8334');
INSERT INTO `telefono` VALUES (154,'8225-8598');
INSERT INTO `telefono` VALUES (155,'2807-4750');
INSERT INTO `telefono` VALUES (156,'9679-0871');
INSERT INTO `telefono` VALUES (157,'9317-3367');
INSERT INTO `telefono` VALUES (158,'9492-9114');
INSERT INTO `telefono` VALUES (159,'3427-8222');
INSERT INTO `telefono` VALUES (160,'9477-7205');
INSERT INTO `telefono` VALUES (161,'3771-6908');
INSERT INTO `telefono` VALUES (162,'3546-5881');
INSERT INTO `telefono` VALUES (163,'9704-0277');
INSERT INTO `telefono` VALUES (164,'9370-6487');
INSERT INTO `telefono` VALUES (165,'9408-9699');
INSERT INTO `telefono` VALUES (166,'9056-5776');
INSERT INTO `telefono` VALUES (167,'9379-7113');
INSERT INTO `telefono` VALUES (168,'8729-4139');
INSERT INTO `telefono` VALUES (169,'9699-6497');
INSERT INTO `telefono` VALUES (170,'2061-6105');
INSERT INTO `telefono` VALUES (171,'9843-8914');
INSERT INTO `telefono` VALUES (172,'9900-8662');
INSERT INTO `telefono` VALUES (173,'8530-4911');
INSERT INTO `telefono` VALUES (174,'8819-5367');
INSERT INTO `telefono` VALUES (175,'9153-8835');
INSERT INTO `telefono` VALUES (176,'9015-9426');
INSERT INTO `telefono` VALUES (177,'8777-3046');
INSERT INTO `telefono` VALUES (178,'9283-4335');
INSERT INTO `telefono` VALUES (179,'8294-1187');
INSERT INTO `telefono` VALUES (180,'3870-5889');
INSERT INTO `telefono` VALUES (181,'3469-7906');
INSERT INTO `telefono` VALUES (182,'8229-3600');
INSERT INTO `telefono` VALUES (183,'8507-1430');
INSERT INTO `telefono` VALUES (184,'9368-8463');
INSERT INTO `telefono` VALUES (185,'9858-1028');
INSERT INTO `telefono` VALUES (186,'3376-1392');
INSERT INTO `telefono` VALUES (187,'8639-1952');
INSERT INTO `telefono` VALUES (188,'9992-6064');
INSERT INTO `telefono` VALUES (189,'9787-3307');
INSERT INTO `telefono` VALUES (190,'9354-1202');
INSERT INTO `telefono` VALUES (191,'9750-4123');
INSERT INTO `telefono` VALUES (192,'3508-2076');
INSERT INTO `telefono` VALUES (193,'9324-5742');
INSERT INTO `telefono` VALUES (194,'8927-7913');
INSERT INTO `telefono` VALUES (195,'9806-1750');
INSERT INTO `telefono` VALUES (196,'9418-3387');
INSERT INTO `telefono` VALUES (197,'8783-2205');
INSERT INTO `telefono` VALUES (198,'8977-5285');
INSERT INTO `telefono` VALUES (199,'9159-4456');
INSERT INTO `telefono` VALUES (200,'8781-3624');
INSERT INTO `telefono` VALUES (201,'8750-5760');
INSERT INTO `telefono` VALUES (202,'9424-9062');
INSERT INTO `telefono` VALUES (203,'2905-1356');
INSERT INTO `telefono` VALUES (204,'2662-3296');
INSERT INTO `telefono` VALUES (205,'9287-1508');
INSERT INTO `telefono` VALUES (206,'9736-0812');
INSERT INTO `telefono` VALUES (207,'9940-0250');
INSERT INTO `telefono` VALUES (208,'9842-7336');
INSERT INTO `telefono` VALUES (209,'3963-7305');
INSERT INTO `telefono` VALUES (210,'8300-8660');
INSERT INTO `telefono` VALUES (211,'9983-0682');
INSERT INTO `telefono` VALUES (212,'8741-1320');
INSERT INTO `telefono` VALUES (213,'9445-3742');
INSERT INTO `telefono` VALUES (214,'3871-3273');
INSERT INTO `telefono` VALUES (215,'3741-4731');
INSERT INTO `telefono` VALUES (216,'8730-1263');
INSERT INTO `telefono` VALUES (217,'9982-3883');
INSERT INTO `telefono` VALUES (218,'9549-2297');
INSERT INTO `telefono` VALUES (219,'8744-5033');
INSERT INTO `telefono` VALUES (220,'9851-0399');
INSERT INTO `telefono` VALUES (221,'9299-8873');
INSERT INTO `telefono` VALUES (222,'9787-9546');
INSERT INTO `telefono` VALUES (223,'3385-6830');
INSERT INTO `telefono` VALUES (224,'9139-5919');
INSERT INTO `telefono` VALUES (225,'8456-3080');
INSERT INTO `telefono` VALUES (226,'2152-5462');
INSERT INTO `telefono` VALUES (227,'3079-7205');
INSERT INTO `telefono` VALUES (228,'3135-1026');
INSERT INTO `telefono` VALUES (229,'9395-1911');
INSERT INTO `telefono` VALUES (230,'9187-0408');
INSERT INTO `telefono` VALUES (231,'9021-0702');
INSERT INTO `telefono` VALUES (232,'8907-5454');
INSERT INTO `telefono` VALUES (233,'3022-4122');
INSERT INTO `telefono` VALUES (234,'9757-5532');
INSERT INTO `telefono` VALUES (235,'8630-8628');
INSERT INTO `telefono` VALUES (236,'9860-0722');
INSERT INTO `telefono` VALUES (237,'9020-3214');
INSERT INTO `telefono` VALUES (238,'3092-7606');
INSERT INTO `telefono` VALUES (239,'2444-9893');
INSERT INTO `telefono` VALUES (240,'8601-8112');
INSERT INTO `telefono` VALUES (241,'9619-0825');
INSERT INTO `telefono` VALUES (242,'9827-1803');
INSERT INTO `telefono` VALUES (243,'9034-5082');
INSERT INTO `telefono` VALUES (244,'9154-8552');
INSERT INTO `telefono` VALUES (245,'9490-4406');
INSERT INTO `telefono` VALUES (246,'8038-3421');
INSERT INTO `telefono` VALUES (247,'9802-6377');
INSERT INTO `telefono` VALUES (248,'9355-4091');
INSERT INTO `telefono` VALUES (249,'3863-9082');
INSERT INTO `telefono` VALUES (250,'9292-6408');
INSERT INTO `telefono` VALUES (251,'3309-6106');
INSERT INTO `telefono` VALUES (252,'9854-6947');
INSERT INTO `telefono` VALUES (253,'9541-1576');
INSERT INTO `telefono` VALUES (254,'9917-0842');
INSERT INTO `telefono` VALUES (255,'8529-8244');
INSERT INTO `telefono` VALUES (256,'8464-4654');
INSERT INTO `telefono` VALUES (257,'9306-4892');
INSERT INTO `telefono` VALUES (258,'3540-8475');
INSERT INTO `telefono` VALUES (259,'3390-2809');
INSERT INTO `telefono` VALUES (260,'9449-2194');
INSERT INTO `telefono` VALUES (261,'9681-0213');
INSERT INTO `telefono` VALUES (262,'2218-6880');
INSERT INTO `telefono` VALUES (263,'3880-7775');
INSERT INTO `telefono` VALUES (264,'9921-3390');
INSERT INTO `telefono` VALUES (265,'9328-4777');
INSERT INTO `telefono` VALUES (266,'8375-8550');
INSERT INTO `telefono` VALUES (267,'9868-3232');
INSERT INTO `telefono` VALUES (268,'9775-3659');
INSERT INTO `telefono` VALUES (269,'8571-0402');
INSERT INTO `telefono` VALUES (270,'8233-1400');
INSERT INTO `telefono` VALUES (271,'9290-5382');
INSERT INTO `telefono` VALUES (272,'9793-0719');
INSERT INTO `telefono` VALUES (273,'9687-9880');
INSERT INTO `telefono` VALUES (274,'9906-3568');
INSERT INTO `telefono` VALUES (275,'9750-9707');
INSERT INTO `telefono` VALUES (276,'8006-3494');
INSERT INTO `telefono` VALUES (277,'3571-9654');
INSERT INTO `telefono` VALUES (278,'9338-8858');
INSERT INTO `telefono` VALUES (279,'3649-2316');
INSERT INTO `telefono` VALUES (280,'8369-7117');
INSERT INTO `telefono` VALUES (281,'9034-1022');
INSERT INTO `telefono` VALUES (282,'9941-3798');
INSERT INTO `telefono` VALUES (283,'9691-9663');
INSERT INTO `telefono` VALUES (284,'2352-0963');
INSERT INTO `telefono` VALUES (285,'8534-5351');
INSERT INTO `telefono` VALUES (286,'9486-1969');
INSERT INTO `telefono` VALUES (287,'9032-9742');
INSERT INTO `telefono` VALUES (288,'8435-1416');
INSERT INTO `telefono` VALUES (289,'8230-5909');
INSERT INTO `telefono` VALUES (290,'3192-4292');
INSERT INTO `telefono` VALUES (291,'2613-1621');
INSERT INTO `telefono` VALUES (292,'2712-9895');
INSERT INTO `telefono` VALUES (293,'9122-1317');
INSERT INTO `telefono` VALUES (294,'2738-2371');
INSERT INTO `telefono` VALUES (295,'8666-6787');
INSERT INTO `telefono` VALUES (296,'3820-3877');
INSERT INTO `telefono` VALUES (297,'9094-3871');
INSERT INTO `telefono` VALUES (298,'9330-4383');
INSERT INTO `telefono` VALUES (299,'9309-8922');
INSERT INTO `telefono` VALUES (300,'9270-9017');
INSERT INTO `telefono` VALUES (301,'9211-5317');
INSERT INTO `telefono` VALUES (302,'9858-7874');
INSERT INTO `telefono` VALUES (303,'3207-4426');
INSERT INTO `telefono` VALUES (304,'3368-8267');
INSERT INTO `telefono` VALUES (305,'9801-9487');
INSERT INTO `telefono` VALUES (306,'9283-9491');
INSERT INTO `telefono` VALUES (307,'9145-1781');
INSERT INTO `telefono` VALUES (308,'9866-1539');
INSERT INTO `telefono` VALUES (309,'2050-5718');
INSERT INTO `telefono` VALUES (310,'9612-2560');
INSERT INTO `telefono` VALUES (311,'9105-2424');
INSERT INTO `telefono` VALUES (312,'9944-0641');
INSERT INTO `telefono` VALUES (313,'8896-3829');
INSERT INTO `telefono` VALUES (314,'3754-1464');
INSERT INTO `telefono` VALUES (315,'9033-0435');
INSERT INTO `telefono` VALUES (316,'8260-7424');
INSERT INTO `telefono` VALUES (317,'9371-5857');
INSERT INTO `telefono` VALUES (318,'9059-4375');
INSERT INTO `telefono` VALUES (319,'8376-9313');
INSERT INTO `telefono` VALUES (320,'3639-9636');
INSERT INTO `telefono` VALUES (321,'8621-1991');
INSERT INTO `telefono` VALUES (322,'9219-1592');
INSERT INTO `telefono` VALUES (323,'9014-7042');
INSERT INTO `telefono` VALUES (324,'9809-0670');
INSERT INTO `telefono` VALUES (325,'9880-1868');
INSERT INTO `telefono` VALUES (326,'9425-7563');
INSERT INTO `telefono` VALUES (327,'8448-5199');
INSERT INTO `telefono` VALUES (328,'9187-5048');
INSERT INTO `telefono` VALUES (329,'8971-7429');
INSERT INTO `telefono` VALUES (330,'3661-1440');
INSERT INTO `telefono` VALUES (331,'9625-2947');
INSERT INTO `telefono` VALUES (332,'9827-9122');
INSERT INTO `telefono` VALUES (333,'9812-0979');
INSERT INTO `telefono` VALUES (334,'9621-3487');
INSERT INTO `telefono` VALUES (335,'8354-0086');
INSERT INTO `telefono` VALUES (336,'9681-6959');
INSERT INTO `telefono` VALUES (337,'8758-0135');
INSERT INTO `telefono` VALUES (338,'9481-6321');
INSERT INTO `telefono` VALUES (339,'9927-4316');
INSERT INTO `telefono` VALUES (340,'8982-3710');
INSERT INTO `telefono` VALUES (341,'9416-1748');
INSERT INTO `telefono` VALUES (342,'9734-8265');
INSERT INTO `telefono` VALUES (343,'3381-2184');
INSERT INTO `telefono` VALUES (344,'9104-5881');
INSERT INTO `telefono` VALUES (345,'9957-8521');
INSERT INTO `telefono` VALUES (346,'9768-1647');
INSERT INTO `telefono` VALUES (347,'8966-2347');
INSERT INTO `telefono` VALUES (348,'9112-8281');
INSERT INTO `telefono` VALUES (349,'9090-0405');
INSERT INTO `telefono` VALUES (350,'9415-4407');
INSERT INTO `telefono` VALUES (351,'9901-9520');
INSERT INTO `telefono` VALUES (352,'8923-4684');
INSERT INTO `telefono` VALUES (353,'8333-0616');
INSERT INTO `telefono` VALUES (354,'3395-0256');
INSERT INTO `telefono` VALUES (355,'9385-5839');
INSERT INTO `telefono` VALUES (356,'9463-4789');
INSERT INTO `telefono` VALUES (357,'8747-5342');
INSERT INTO `telefono` VALUES (358,'9817-8546');
INSERT INTO `telefono` VALUES (359,'9623-2200');
INSERT INTO `telefono` VALUES (360,'9428-5001');
INSERT INTO `telefono` VALUES (361,'9660-5162');
INSERT INTO `telefono` VALUES (362,'8322-7837');
INSERT INTO `telefono` VALUES (363,'8806-6784');
INSERT INTO `telefono` VALUES (364,'8041-3959');
INSERT INTO `telefono` VALUES (365,'9144-7889');
INSERT INTO `telefono` VALUES (366,'9516-3849');
INSERT INTO `telefono` VALUES (367,'8791-0371');
INSERT INTO `telefono` VALUES (368,'9461-7500');
INSERT INTO `telefono` VALUES (369,'9465-5516');
INSERT INTO `telefono` VALUES (370,'3508-7623');
INSERT INTO `telefono` VALUES (371,'9441-6689');
INSERT INTO `telefono` VALUES (372,'9615-5334');
INSERT INTO `telefono` VALUES (373,'8370-1426');
INSERT INTO `telefono` VALUES (374,'9142-4274');
INSERT INTO `telefono` VALUES (375,'9045-7956');
INSERT INTO `telefono` VALUES (376,'9144-3400');
INSERT INTO `telefono` VALUES (377,'9764-3650');
INSERT INTO `telefono` VALUES (378,'3738-4139');
INSERT INTO `telefono` VALUES (379,'8420-2684');
INSERT INTO `telefono` VALUES (380,'3767-8721');
INSERT INTO `telefono` VALUES (381,'3992-4207');
INSERT INTO `telefono` VALUES (382,'9426-4042');
INSERT INTO `telefono` VALUES (383,'8355-9934');
INSERT INTO `telefono` VALUES (384,'2844-6539');
INSERT INTO `telefono` VALUES (385,'9326-5515');
INSERT INTO `telefono` VALUES (386,'9687-8342');
INSERT INTO `telefono` VALUES (387,'3680-6924');
INSERT INTO `telefono` VALUES (388,'8856-3935');
INSERT INTO `telefono` VALUES (389,'9324-4316');
INSERT INTO `telefono` VALUES (390,'8806-7369');
INSERT INTO `telefono` VALUES (391,'8000-7807');
INSERT INTO `telefono` VALUES (392,'8899-0883');
INSERT INTO `telefono` VALUES (393,'8574-8972');
INSERT INTO `telefono` VALUES (394,'8298-4604');
INSERT INTO `telefono` VALUES (395,'9668-0064');
INSERT INTO `telefono` VALUES (396,'8977-5567');
INSERT INTO `telefono` VALUES (397,'9033-7889');
INSERT INTO `telefono` VALUES (398,'8558-4069');
INSERT INTO `telefono` VALUES (399,'2740-4798');
INSERT INTO `telefono` VALUES (400,'3766-2893');
INSERT INTO `telefono` VALUES (401,'3104-0165');
INSERT INTO `telefono` VALUES (402,'3955-0389');
INSERT INTO `telefono` VALUES (403,'9974-3315');
INSERT INTO `telefono` VALUES (404,'3597-3985');
INSERT INTO `telefono` VALUES (405,'8788-4117');
INSERT INTO `telefono` VALUES (406,'9144-0380');
INSERT INTO `telefono` VALUES (407,'8784-4485');
INSERT INTO `telefono` VALUES (408,'3851-5046');
INSERT INTO `telefono` VALUES (409,'9074-3802');
INSERT INTO `telefono` VALUES (410,'3000-3409');
INSERT INTO `telefono` VALUES (411,'9992-3080');
INSERT INTO `telefono` VALUES (412,'2359-2392');
INSERT INTO `telefono` VALUES (413,'2975-2946');
INSERT INTO `telefono` VALUES (414,'2128-7479');
INSERT INTO `telefono` VALUES (415,'3928-7160');
INSERT INTO `telefono` VALUES (416,'3389-6031');
INSERT INTO `telefono` VALUES (417,'2888-7312');
INSERT INTO `telefono` VALUES (418,'9851-4897');
INSERT INTO `telefono` VALUES (419,'9947-0390');
INSERT INTO `telefono` VALUES (420,'9151-8546');
INSERT INTO `telefono` VALUES (421,'8040-8313');
INSERT INTO `telefono` VALUES (422,'8877-3966');
INSERT INTO `telefono` VALUES (423,'8165-8585');
INSERT INTO `telefono` VALUES (424,'9129-2571');
INSERT INTO `telefono` VALUES (425,'9374-2745');
INSERT INTO `telefono` VALUES (426,'8799-5506');
INSERT INTO `telefono` VALUES (427,'8117-9148');
INSERT INTO `telefono` VALUES (428,'2481-6189');
INSERT INTO `telefono` VALUES (429,'2851-1835');
INSERT INTO `telefono` VALUES (430,'9083-7308');
INSERT INTO `telefono` VALUES (431,'8611-9652');
INSERT INTO `telefono` VALUES (432,'9330-1259');
INSERT INTO `telefono` VALUES (433,'9855-9637');
INSERT INTO `telefono` VALUES (434,'9165-5279');
INSERT INTO `telefono` VALUES (435,'9203-4606');
INSERT INTO `telefono` VALUES (436,'8713-5468');
INSERT INTO `telefono` VALUES (437,'8244-3210');
INSERT INTO `telefono` VALUES (438,'9089-7197');
INSERT INTO `telefono` VALUES (439,'9692-2799');
INSERT INTO `telefono` VALUES (440,'2601-5603');
INSERT INTO `telefono` VALUES (441,'9044-9622');
INSERT INTO `telefono` VALUES (442,'8447-2335');
INSERT INTO `telefono` VALUES (443,'8588-9974');
INSERT INTO `telefono` VALUES (444,'9112-8895');
INSERT INTO `telefono` VALUES (445,'9502-7057');
INSERT INTO `telefono` VALUES (446,'9627-7071');
INSERT INTO `telefono` VALUES (447,'2901-7775');
INSERT INTO `telefono` VALUES (448,'8694-3882');
INSERT INTO `telefono` VALUES (449,'8305-8344');
INSERT INTO `telefono` VALUES (450,'3453-7754');
INSERT INTO `telefono` VALUES (451,'9136-7656');
INSERT INTO `telefono` VALUES (452,'3977-4839');
INSERT INTO `telefono` VALUES (453,'2276-0627');
INSERT INTO `telefono` VALUES (454,'2568-1470');
INSERT INTO `telefono` VALUES (455,'9014-5490');
INSERT INTO `telefono` VALUES (456,'9419-6083');
INSERT INTO `telefono` VALUES (457,'9104-7200');
INSERT INTO `telefono` VALUES (458,'3042-4913');
INSERT INTO `telefono` VALUES (459,'8008-3028');
INSERT INTO `telefono` VALUES (460,'8766-6651');
INSERT INTO `telefono` VALUES (461,'8342-3664');
INSERT INTO `telefono` VALUES (462,'9362-0361');
INSERT INTO `telefono` VALUES (463,'9736-2929');
INSERT INTO `telefono` VALUES (464,'8503-5815');
INSERT INTO `telefono` VALUES (465,'2107-7235');
INSERT INTO `telefono` VALUES (466,'9939-9770');
INSERT INTO `telefono` VALUES (467,'2060-0942');
INSERT INTO `telefono` VALUES (468,'8035-8060');
INSERT INTO `telefono` VALUES (469,'3637-8777');
INSERT INTO `telefono` VALUES (470,'3622-2478');
INSERT INTO `telefono` VALUES (471,'9218-3269');
INSERT INTO `telefono` VALUES (472,'9259-6374');
INSERT INTO `telefono` VALUES (473,'9351-6920');
INSERT INTO `telefono` VALUES (474,'2184-3949');
INSERT INTO `telefono` VALUES (475,'9402-4371');
INSERT INTO `telefono` VALUES (476,'9273-0208');
INSERT INTO `telefono` VALUES (477,'8697-0222');
INSERT INTO `telefono` VALUES (478,'9213-3520');
INSERT INTO `telefono` VALUES (479,'8364-3319');
INSERT INTO `telefono` VALUES (480,'9287-2789');
INSERT INTO `telefono` VALUES (481,'9082-7143');
INSERT INTO `telefono` VALUES (482,'9565-7934');
INSERT INTO `telefono` VALUES (483,'9601-7319');
INSERT INTO `telefono` VALUES (484,'9070-0964');
INSERT INTO `telefono` VALUES (485,'9633-1975');
INSERT INTO `telefono` VALUES (486,'8038-7097');
INSERT INTO `telefono` VALUES (487,'2706-2759');
INSERT INTO `telefono` VALUES (488,'8204-2583');
INSERT INTO `telefono` VALUES (489,'9209-6383');
INSERT INTO `telefono` VALUES (490,'9758-5600');
INSERT INTO `telefono` VALUES (491,'9604-9038');
INSERT INTO `telefono` VALUES (492,'8437-4237');
INSERT INTO `telefono` VALUES (493,'9781-8728');
INSERT INTO `telefono` VALUES (494,'9153-0349');
INSERT INTO `telefono` VALUES (495,'9779-6822');
INSERT INTO `telefono` VALUES (496,'3562-0616');
INSERT INTO `telefono` VALUES (497,'3925-4350');
INSERT INTO `telefono` VALUES (498,'8529-1467');
INSERT INTO `telefono` VALUES (499,'8459-7546');
INSERT INTO `telefono` VALUES (500,'3896-6155');
INSERT INTO `telefono` VALUES (501,'23456799');
INSERT INTO `telefono` VALUES (502,'222222');
INSERT INTO `telefono` VALUES (503,'222222');
INSERT INTO `telefono` VALUES (504,'222222');
INSERT INTO `telefono` VALUES (505,'222222');
INSERT INTO `telefono` VALUES (506,'23456799');
INSERT INTO `telefono` VALUES (507,'23456799');
INSERT INTO `telefono` VALUES (508,'23456799');
INSERT INTO `telefono` VALUES (509,'23456799');
INSERT INTO `telefono` VALUES (510,'23456799');
INSERT INTO `telefono` VALUES (511,'23456799');
INSERT INTO `telefono` VALUES (512,'2340056799');
INSERT INTO `telefono` VALUES (513,'2221-2649');
INSERT INTO `telefono` VALUES (514,'8909-0987');
INSERT INTO `telefono` VALUES (515,'8909-0987');
INSERT INTO `telefono` VALUES (516,'8877-0910');
INSERT INTO `telefono` VALUES (517,'8877-0910');
INSERT INTO `telefono` VALUES (518,'8221-2649');
INSERT INTO `telefono` VALUES (519,'8909-0987');
INSERT INTO `telefono` VALUES (520,'8877-1010');
INSERT INTO `telefono` VALUES (521,'2801-1897');
INSERT INTO `telefono` VALUES (522,'3901-1987');
INSERT INTO `telefono` VALUES (523,'2222-2649');
INSERT INTO `telefono` VALUES (524,'3299-0082');
INSERT INTO `telefono` VALUES (525,'2522-2649');
INSERT INTO `telefono` VALUES (526,'3902-1987');
INSERT INTO `telefono` VALUES (527,'3801-1987');
INSERT INTO `telefono` VALUES (528,'9877-6541');
INSERT INTO `telefono` VALUES (529,'9898-0022');
INSERT INTO `telefono` VALUES (530,'2802-1897');
INSERT INTO `telefono` VALUES (531,'8798-0202');
INSERT INTO `telefono` VALUES (532,'2233-0909');
INSERT INTO `telefono` VALUES (533,'9877-0202');
INSERT INTO `telefono` VALUES (534,'3298-0082');
INSERT INTO `telefono` VALUES (535,'3321-2246');
INSERT INTO `telefono` VALUES (536,'9685-2675');
INSERT INTO `telefono` VALUES (537,'8866-0145');
INSERT INTO `telefono` VALUES (538,'9520-2020');
INSERT INTO `telefono` VALUES (539,'2015-5959');
INSERT INTO `telefono` VALUES (540,'8763-7612');
INSERT INTO `telefono` VALUES (541,'9520-5555');
INSERT INTO `telefono` VALUES (542,'9876-5433');
INSERT INTO `telefono` VALUES (543,'3299-0083');
INSERT INTO `telefono` VALUES (544,'9540-2020');
INSERT INTO `telefono` VALUES (545,'9530-2251');
INSERT INTO `telefono` VALUES (546,'9530-4040');
INSERT INTO `telefono` VALUES (547,'2522-2649');
INSERT INTO `telefono` VALUES (548,'2542-2649');
INSERT INTO `telefono` VALUES (549,'2543-2649');
INSERT INTO `telefono` VALUES (550,'2899-1897');
INSERT INTO `telefono` VALUES (551,'2244-4459');
INSERT INTO `telefono` VALUES (552,'3502-1987');
INSERT INTO `telefono` VALUES (553,'3502-8987');
INSERT INTO `telefono` VALUES (554,'3569-8987');
INSERT INTO `telefono` VALUES (555,'8798-0269');
INSERT INTO `telefono` VALUES (557,'3543-2649');
INSERT INTO `telefono` VALUES (558,'8798-1010');
INSERT INTO `telefono` VALUES (559,'8798-1012');
INSERT INTO `telefono` VALUES (560,'8778-1012');
INSERT INTO `telefono` VALUES (561,'2233-0910');
INSERT INTO `telefono` VALUES (562,'2233-0911');
INSERT INTO `telefono` VALUES (563,'2233-7654');
INSERT INTO `telefono` VALUES (564,'2298-0987');
INSERT INTO `telefono` VALUES (565,'9560-6020');
INSERT INTO `telefono` VALUES (566,'9895-2020');
INSERT INTO `telefono` VALUES (567,'3236-4307');

--
-- Table structure for table `telefono_persona`
--

DROP TABLE IF EXISTS `telefono_persona`;
 
 
CREATE TABLE `telefono_persona` (
  `id_persona` int(11) NOT NULL,
  `id_telefono` int(11) NOT NULL,
  `estado` varchar(1) DEFAULT NULL,
  KEY `id_persona` (`id_persona`),
  KEY `id_telefono` (`id_telefono`),
  CONSTRAINT `telefono_persona_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`),
  CONSTRAINT `telefono_persona_ibfk_2` FOREIGN KEY (`id_telefono`) REFERENCES `telefono` (`id_telefono`)
);
 
--
-- Dumping data for table `telefono_persona`
--

INSERT INTO `telefono_persona` VALUES (2,2,NULL);
INSERT INTO `telefono_persona` VALUES (3,3,NULL);
INSERT INTO `telefono_persona` VALUES (4,4,NULL);
INSERT INTO `telefono_persona` VALUES (5,5,NULL);
INSERT INTO `telefono_persona` VALUES (6,6,NULL);
INSERT INTO `telefono_persona` VALUES (7,7,NULL);
INSERT INTO `telefono_persona` VALUES (8,8,NULL);
INSERT INTO `telefono_persona` VALUES (9,9,NULL);
INSERT INTO `telefono_persona` VALUES (10,10,NULL);
INSERT INTO `telefono_persona` VALUES (11,11,NULL);
INSERT INTO `telefono_persona` VALUES (12,12,NULL);
INSERT INTO `telefono_persona` VALUES (13,13,NULL);
INSERT INTO `telefono_persona` VALUES (14,14,NULL);
INSERT INTO `telefono_persona` VALUES (15,15,NULL);
INSERT INTO `telefono_persona` VALUES (16,16,NULL);
INSERT INTO `telefono_persona` VALUES (17,17,NULL);
INSERT INTO `telefono_persona` VALUES (18,18,NULL);
INSERT INTO `telefono_persona` VALUES (19,19,NULL);
INSERT INTO `telefono_persona` VALUES (20,20,NULL);
INSERT INTO `telefono_persona` VALUES (21,21,NULL);
INSERT INTO `telefono_persona` VALUES (22,22,NULL);
INSERT INTO `telefono_persona` VALUES (23,23,NULL);
INSERT INTO `telefono_persona` VALUES (24,24,NULL);
INSERT INTO `telefono_persona` VALUES (25,25,NULL);
INSERT INTO `telefono_persona` VALUES (26,26,NULL);
INSERT INTO `telefono_persona` VALUES (27,27,NULL);
INSERT INTO `telefono_persona` VALUES (28,28,NULL);
INSERT INTO `telefono_persona` VALUES (29,29,NULL);
INSERT INTO `telefono_persona` VALUES (30,30,NULL);
INSERT INTO `telefono_persona` VALUES (31,31,NULL);
INSERT INTO `telefono_persona` VALUES (32,32,NULL);
INSERT INTO `telefono_persona` VALUES (33,33,NULL);
INSERT INTO `telefono_persona` VALUES (34,34,NULL);
INSERT INTO `telefono_persona` VALUES (35,35,NULL);
INSERT INTO `telefono_persona` VALUES (36,36,NULL);
INSERT INTO `telefono_persona` VALUES (37,37,NULL);
INSERT INTO `telefono_persona` VALUES (38,38,NULL);
INSERT INTO `telefono_persona` VALUES (39,39,NULL);
INSERT INTO `telefono_persona` VALUES (40,40,NULL);
INSERT INTO `telefono_persona` VALUES (41,41,NULL);
INSERT INTO `telefono_persona` VALUES (42,42,NULL);
INSERT INTO `telefono_persona` VALUES (43,43,NULL);
INSERT INTO `telefono_persona` VALUES (44,44,NULL);
INSERT INTO `telefono_persona` VALUES (45,45,NULL);
INSERT INTO `telefono_persona` VALUES (46,46,NULL);
INSERT INTO `telefono_persona` VALUES (47,47,NULL);
INSERT INTO `telefono_persona` VALUES (48,48,NULL);
INSERT INTO `telefono_persona` VALUES (49,49,NULL);
INSERT INTO `telefono_persona` VALUES (50,50,NULL);
INSERT INTO `telefono_persona` VALUES (51,51,NULL);
INSERT INTO `telefono_persona` VALUES (52,52,NULL);
INSERT INTO `telefono_persona` VALUES (53,53,NULL);
INSERT INTO `telefono_persona` VALUES (54,54,NULL);
INSERT INTO `telefono_persona` VALUES (55,55,NULL);
INSERT INTO `telefono_persona` VALUES (56,56,NULL);
INSERT INTO `telefono_persona` VALUES (57,57,NULL);
INSERT INTO `telefono_persona` VALUES (58,58,NULL);
INSERT INTO `telefono_persona` VALUES (59,59,NULL);
INSERT INTO `telefono_persona` VALUES (60,60,NULL);
INSERT INTO `telefono_persona` VALUES (61,61,NULL);
INSERT INTO `telefono_persona` VALUES (62,62,NULL);
INSERT INTO `telefono_persona` VALUES (63,63,NULL);
INSERT INTO `telefono_persona` VALUES (64,64,NULL);
INSERT INTO `telefono_persona` VALUES (65,65,NULL);
INSERT INTO `telefono_persona` VALUES (66,66,NULL);
INSERT INTO `telefono_persona` VALUES (67,67,NULL);
INSERT INTO `telefono_persona` VALUES (68,68,NULL);
INSERT INTO `telefono_persona` VALUES (69,69,NULL);
INSERT INTO `telefono_persona` VALUES (70,70,NULL);
INSERT INTO `telefono_persona` VALUES (71,71,NULL);
INSERT INTO `telefono_persona` VALUES (72,72,NULL);
INSERT INTO `telefono_persona` VALUES (73,73,NULL);
INSERT INTO `telefono_persona` VALUES (74,74,NULL);
INSERT INTO `telefono_persona` VALUES (75,75,NULL);
INSERT INTO `telefono_persona` VALUES (76,76,NULL);
INSERT INTO `telefono_persona` VALUES (77,77,NULL);
INSERT INTO `telefono_persona` VALUES (78,78,NULL);
INSERT INTO `telefono_persona` VALUES (79,79,NULL);
INSERT INTO `telefono_persona` VALUES (80,80,NULL);
INSERT INTO `telefono_persona` VALUES (81,81,NULL);
INSERT INTO `telefono_persona` VALUES (82,82,NULL);
INSERT INTO `telefono_persona` VALUES (83,83,NULL);
INSERT INTO `telefono_persona` VALUES (84,84,NULL);
INSERT INTO `telefono_persona` VALUES (85,85,NULL);
INSERT INTO `telefono_persona` VALUES (86,86,NULL);
INSERT INTO `telefono_persona` VALUES (87,87,NULL);
INSERT INTO `telefono_persona` VALUES (88,88,NULL);
INSERT INTO `telefono_persona` VALUES (89,89,NULL);
INSERT INTO `telefono_persona` VALUES (90,90,NULL);
INSERT INTO `telefono_persona` VALUES (91,91,NULL);
INSERT INTO `telefono_persona` VALUES (92,92,NULL);
INSERT INTO `telefono_persona` VALUES (93,93,NULL);
INSERT INTO `telefono_persona` VALUES (94,94,NULL);
INSERT INTO `telefono_persona` VALUES (95,95,NULL);
INSERT INTO `telefono_persona` VALUES (96,96,NULL);
INSERT INTO `telefono_persona` VALUES (97,97,NULL);
INSERT INTO `telefono_persona` VALUES (98,98,NULL);
INSERT INTO `telefono_persona` VALUES (99,99,NULL);
INSERT INTO `telefono_persona` VALUES (100,100,NULL);
INSERT INTO `telefono_persona` VALUES (101,101,NULL);
INSERT INTO `telefono_persona` VALUES (102,102,NULL);
INSERT INTO `telefono_persona` VALUES (103,103,NULL);
INSERT INTO `telefono_persona` VALUES (104,104,NULL);
INSERT INTO `telefono_persona` VALUES (105,105,NULL);
INSERT INTO `telefono_persona` VALUES (106,106,NULL);
INSERT INTO `telefono_persona` VALUES (107,107,NULL);
INSERT INTO `telefono_persona` VALUES (108,108,NULL);
INSERT INTO `telefono_persona` VALUES (109,109,NULL);
INSERT INTO `telefono_persona` VALUES (110,110,NULL);
INSERT INTO `telefono_persona` VALUES (111,111,NULL);
INSERT INTO `telefono_persona` VALUES (112,112,NULL);
INSERT INTO `telefono_persona` VALUES (113,113,NULL);
INSERT INTO `telefono_persona` VALUES (114,114,NULL);
INSERT INTO `telefono_persona` VALUES (115,115,NULL);
INSERT INTO `telefono_persona` VALUES (116,116,NULL);
INSERT INTO `telefono_persona` VALUES (117,117,NULL);
INSERT INTO `telefono_persona` VALUES (118,118,NULL);
INSERT INTO `telefono_persona` VALUES (119,119,NULL);
INSERT INTO `telefono_persona` VALUES (120,120,NULL);
INSERT INTO `telefono_persona` VALUES (121,121,NULL);
INSERT INTO `telefono_persona` VALUES (122,122,NULL);
INSERT INTO `telefono_persona` VALUES (123,123,NULL);
INSERT INTO `telefono_persona` VALUES (124,124,NULL);
INSERT INTO `telefono_persona` VALUES (125,125,NULL);
INSERT INTO `telefono_persona` VALUES (126,126,NULL);
INSERT INTO `telefono_persona` VALUES (127,127,NULL);
INSERT INTO `telefono_persona` VALUES (128,128,NULL);
INSERT INTO `telefono_persona` VALUES (129,129,NULL);
INSERT INTO `telefono_persona` VALUES (130,130,NULL);
INSERT INTO `telefono_persona` VALUES (131,131,NULL);
INSERT INTO `telefono_persona` VALUES (132,132,NULL);
INSERT INTO `telefono_persona` VALUES (133,133,NULL);
INSERT INTO `telefono_persona` VALUES (134,134,NULL);
INSERT INTO `telefono_persona` VALUES (135,135,NULL);
INSERT INTO `telefono_persona` VALUES (136,136,NULL);
INSERT INTO `telefono_persona` VALUES (137,137,NULL);
INSERT INTO `telefono_persona` VALUES (138,138,NULL);
INSERT INTO `telefono_persona` VALUES (139,139,NULL);
INSERT INTO `telefono_persona` VALUES (140,140,NULL);
INSERT INTO `telefono_persona` VALUES (141,141,NULL);
INSERT INTO `telefono_persona` VALUES (142,142,NULL);
INSERT INTO `telefono_persona` VALUES (143,143,NULL);
INSERT INTO `telefono_persona` VALUES (144,144,NULL);
INSERT INTO `telefono_persona` VALUES (145,145,NULL);
INSERT INTO `telefono_persona` VALUES (146,146,NULL);
INSERT INTO `telefono_persona` VALUES (147,147,NULL);
INSERT INTO `telefono_persona` VALUES (148,148,NULL);
INSERT INTO `telefono_persona` VALUES (149,149,NULL);
INSERT INTO `telefono_persona` VALUES (150,150,NULL);
INSERT INTO `telefono_persona` VALUES (151,151,NULL);
INSERT INTO `telefono_persona` VALUES (152,152,NULL);
INSERT INTO `telefono_persona` VALUES (153,153,NULL);
INSERT INTO `telefono_persona` VALUES (154,154,NULL);
INSERT INTO `telefono_persona` VALUES (155,155,NULL);
INSERT INTO `telefono_persona` VALUES (156,156,NULL);
INSERT INTO `telefono_persona` VALUES (157,157,NULL);
INSERT INTO `telefono_persona` VALUES (158,158,NULL);
INSERT INTO `telefono_persona` VALUES (159,159,NULL);
INSERT INTO `telefono_persona` VALUES (160,160,NULL);
INSERT INTO `telefono_persona` VALUES (161,161,NULL);
INSERT INTO `telefono_persona` VALUES (162,162,NULL);
INSERT INTO `telefono_persona` VALUES (163,163,NULL);
INSERT INTO `telefono_persona` VALUES (164,164,NULL);
INSERT INTO `telefono_persona` VALUES (165,165,NULL);
INSERT INTO `telefono_persona` VALUES (166,166,NULL);
INSERT INTO `telefono_persona` VALUES (167,167,NULL);
INSERT INTO `telefono_persona` VALUES (168,168,NULL);
INSERT INTO `telefono_persona` VALUES (169,169,NULL);
INSERT INTO `telefono_persona` VALUES (170,170,NULL);
INSERT INTO `telefono_persona` VALUES (171,171,NULL);
INSERT INTO `telefono_persona` VALUES (172,172,NULL);
INSERT INTO `telefono_persona` VALUES (173,173,NULL);
INSERT INTO `telefono_persona` VALUES (174,174,NULL);
INSERT INTO `telefono_persona` VALUES (175,175,NULL);
INSERT INTO `telefono_persona` VALUES (176,176,NULL);
INSERT INTO `telefono_persona` VALUES (177,177,NULL);
INSERT INTO `telefono_persona` VALUES (178,178,NULL);
INSERT INTO `telefono_persona` VALUES (179,179,NULL);
INSERT INTO `telefono_persona` VALUES (180,180,NULL);
INSERT INTO `telefono_persona` VALUES (181,181,NULL);
INSERT INTO `telefono_persona` VALUES (182,182,NULL);
INSERT INTO `telefono_persona` VALUES (183,183,NULL);
INSERT INTO `telefono_persona` VALUES (184,184,NULL);
INSERT INTO `telefono_persona` VALUES (185,185,NULL);
INSERT INTO `telefono_persona` VALUES (186,186,NULL);
INSERT INTO `telefono_persona` VALUES (187,187,NULL);
INSERT INTO `telefono_persona` VALUES (188,188,NULL);
INSERT INTO `telefono_persona` VALUES (189,189,NULL);
INSERT INTO `telefono_persona` VALUES (190,190,NULL);
INSERT INTO `telefono_persona` VALUES (191,191,NULL);
INSERT INTO `telefono_persona` VALUES (192,192,NULL);
INSERT INTO `telefono_persona` VALUES (193,193,NULL);
INSERT INTO `telefono_persona` VALUES (194,194,NULL);
INSERT INTO `telefono_persona` VALUES (195,195,NULL);
INSERT INTO `telefono_persona` VALUES (196,196,NULL);
INSERT INTO `telefono_persona` VALUES (197,197,NULL);
INSERT INTO `telefono_persona` VALUES (198,198,NULL);
INSERT INTO `telefono_persona` VALUES (199,199,NULL);
INSERT INTO `telefono_persona` VALUES (200,200,NULL);
INSERT INTO `telefono_persona` VALUES (201,201,NULL);
INSERT INTO `telefono_persona` VALUES (202,202,NULL);
INSERT INTO `telefono_persona` VALUES (203,203,NULL);
INSERT INTO `telefono_persona` VALUES (204,204,NULL);
INSERT INTO `telefono_persona` VALUES (205,205,NULL);
INSERT INTO `telefono_persona` VALUES (206,206,NULL);
INSERT INTO `telefono_persona` VALUES (207,207,NULL);
INSERT INTO `telefono_persona` VALUES (208,208,NULL);
INSERT INTO `telefono_persona` VALUES (209,209,NULL);
INSERT INTO `telefono_persona` VALUES (210,210,NULL);
INSERT INTO `telefono_persona` VALUES (211,211,NULL);
INSERT INTO `telefono_persona` VALUES (212,212,NULL);
INSERT INTO `telefono_persona` VALUES (213,213,NULL);
INSERT INTO `telefono_persona` VALUES (214,214,NULL);
INSERT INTO `telefono_persona` VALUES (215,215,NULL);
INSERT INTO `telefono_persona` VALUES (216,216,NULL);
INSERT INTO `telefono_persona` VALUES (217,217,NULL);
INSERT INTO `telefono_persona` VALUES (218,218,NULL);
INSERT INTO `telefono_persona` VALUES (219,219,NULL);
INSERT INTO `telefono_persona` VALUES (220,220,NULL);
INSERT INTO `telefono_persona` VALUES (221,221,NULL);
INSERT INTO `telefono_persona` VALUES (222,222,NULL);
INSERT INTO `telefono_persona` VALUES (223,223,NULL);
INSERT INTO `telefono_persona` VALUES (224,224,NULL);
INSERT INTO `telefono_persona` VALUES (225,225,NULL);
INSERT INTO `telefono_persona` VALUES (226,226,NULL);
INSERT INTO `telefono_persona` VALUES (227,227,NULL);
INSERT INTO `telefono_persona` VALUES (228,228,NULL);
INSERT INTO `telefono_persona` VALUES (229,229,NULL);
INSERT INTO `telefono_persona` VALUES (230,230,NULL);
INSERT INTO `telefono_persona` VALUES (231,231,NULL);
INSERT INTO `telefono_persona` VALUES (232,232,NULL);
INSERT INTO `telefono_persona` VALUES (233,233,NULL);
INSERT INTO `telefono_persona` VALUES (234,234,NULL);
INSERT INTO `telefono_persona` VALUES (235,235,NULL);
INSERT INTO `telefono_persona` VALUES (236,236,NULL);
INSERT INTO `telefono_persona` VALUES (237,237,NULL);
INSERT INTO `telefono_persona` VALUES (238,238,NULL);
INSERT INTO `telefono_persona` VALUES (239,239,NULL);
INSERT INTO `telefono_persona` VALUES (240,240,NULL);
INSERT INTO `telefono_persona` VALUES (241,241,NULL);
INSERT INTO `telefono_persona` VALUES (242,242,NULL);
INSERT INTO `telefono_persona` VALUES (243,243,NULL);
INSERT INTO `telefono_persona` VALUES (244,244,NULL);
INSERT INTO `telefono_persona` VALUES (245,245,NULL);
INSERT INTO `telefono_persona` VALUES (246,246,NULL);
INSERT INTO `telefono_persona` VALUES (247,247,NULL);
INSERT INTO `telefono_persona` VALUES (248,248,NULL);
INSERT INTO `telefono_persona` VALUES (249,249,NULL);
INSERT INTO `telefono_persona` VALUES (250,250,NULL);
INSERT INTO `telefono_persona` VALUES (251,251,NULL);
INSERT INTO `telefono_persona` VALUES (252,252,NULL);
INSERT INTO `telefono_persona` VALUES (253,253,NULL);
INSERT INTO `telefono_persona` VALUES (254,254,NULL);
INSERT INTO `telefono_persona` VALUES (255,255,NULL);
INSERT INTO `telefono_persona` VALUES (256,256,NULL);
INSERT INTO `telefono_persona` VALUES (257,257,NULL);
INSERT INTO `telefono_persona` VALUES (258,258,NULL);
INSERT INTO `telefono_persona` VALUES (259,259,NULL);
INSERT INTO `telefono_persona` VALUES (260,260,NULL);
INSERT INTO `telefono_persona` VALUES (261,261,NULL);
INSERT INTO `telefono_persona` VALUES (262,262,NULL);
INSERT INTO `telefono_persona` VALUES (263,263,NULL);
INSERT INTO `telefono_persona` VALUES (264,264,NULL);
INSERT INTO `telefono_persona` VALUES (265,265,NULL);
INSERT INTO `telefono_persona` VALUES (266,266,NULL);
INSERT INTO `telefono_persona` VALUES (267,267,NULL);
INSERT INTO `telefono_persona` VALUES (268,268,NULL);
INSERT INTO `telefono_persona` VALUES (269,269,NULL);
INSERT INTO `telefono_persona` VALUES (270,270,NULL);
INSERT INTO `telefono_persona` VALUES (271,271,NULL);
INSERT INTO `telefono_persona` VALUES (272,272,NULL);
INSERT INTO `telefono_persona` VALUES (273,273,NULL);
INSERT INTO `telefono_persona` VALUES (274,274,NULL);
INSERT INTO `telefono_persona` VALUES (275,275,NULL);
INSERT INTO `telefono_persona` VALUES (276,276,NULL);
INSERT INTO `telefono_persona` VALUES (277,277,NULL);
INSERT INTO `telefono_persona` VALUES (278,278,NULL);
INSERT INTO `telefono_persona` VALUES (279,279,NULL);
INSERT INTO `telefono_persona` VALUES (280,280,NULL);
INSERT INTO `telefono_persona` VALUES (281,281,NULL);
INSERT INTO `telefono_persona` VALUES (282,282,NULL);
INSERT INTO `telefono_persona` VALUES (283,283,NULL);
INSERT INTO `telefono_persona` VALUES (284,284,NULL);
INSERT INTO `telefono_persona` VALUES (285,285,NULL);
INSERT INTO `telefono_persona` VALUES (286,286,NULL);
INSERT INTO `telefono_persona` VALUES (287,287,NULL);
INSERT INTO `telefono_persona` VALUES (288,288,NULL);
INSERT INTO `telefono_persona` VALUES (289,289,NULL);
INSERT INTO `telefono_persona` VALUES (290,290,NULL);
INSERT INTO `telefono_persona` VALUES (291,291,NULL);
INSERT INTO `telefono_persona` VALUES (292,292,NULL);
INSERT INTO `telefono_persona` VALUES (293,293,NULL);
INSERT INTO `telefono_persona` VALUES (294,294,NULL);
INSERT INTO `telefono_persona` VALUES (295,295,NULL);
INSERT INTO `telefono_persona` VALUES (296,296,NULL);
INSERT INTO `telefono_persona` VALUES (297,297,NULL);
INSERT INTO `telefono_persona` VALUES (298,298,NULL);
INSERT INTO `telefono_persona` VALUES (299,299,NULL);
INSERT INTO `telefono_persona` VALUES (300,300,NULL);
INSERT INTO `telefono_persona` VALUES (301,301,NULL);
INSERT INTO `telefono_persona` VALUES (302,302,NULL);
INSERT INTO `telefono_persona` VALUES (303,303,NULL);
INSERT INTO `telefono_persona` VALUES (304,304,NULL);
INSERT INTO `telefono_persona` VALUES (305,305,NULL);
INSERT INTO `telefono_persona` VALUES (306,306,NULL);
INSERT INTO `telefono_persona` VALUES (307,307,NULL);
INSERT INTO `telefono_persona` VALUES (308,308,NULL);
INSERT INTO `telefono_persona` VALUES (309,309,NULL);
INSERT INTO `telefono_persona` VALUES (310,310,NULL);
INSERT INTO `telefono_persona` VALUES (311,311,NULL);
INSERT INTO `telefono_persona` VALUES (312,312,NULL);
INSERT INTO `telefono_persona` VALUES (313,313,NULL);
INSERT INTO `telefono_persona` VALUES (314,314,NULL);
INSERT INTO `telefono_persona` VALUES (315,315,NULL);
INSERT INTO `telefono_persona` VALUES (316,316,NULL);
INSERT INTO `telefono_persona` VALUES (317,317,NULL);
INSERT INTO `telefono_persona` VALUES (318,318,NULL);
INSERT INTO `telefono_persona` VALUES (319,319,NULL);
INSERT INTO `telefono_persona` VALUES (320,320,NULL);
INSERT INTO `telefono_persona` VALUES (321,321,NULL);
INSERT INTO `telefono_persona` VALUES (322,322,NULL);
INSERT INTO `telefono_persona` VALUES (323,323,NULL);
INSERT INTO `telefono_persona` VALUES (324,324,NULL);
INSERT INTO `telefono_persona` VALUES (325,325,NULL);
INSERT INTO `telefono_persona` VALUES (326,326,NULL);
INSERT INTO `telefono_persona` VALUES (327,327,NULL);
INSERT INTO `telefono_persona` VALUES (328,328,NULL);
INSERT INTO `telefono_persona` VALUES (329,329,NULL);
INSERT INTO `telefono_persona` VALUES (330,330,NULL);
INSERT INTO `telefono_persona` VALUES (331,331,NULL);
INSERT INTO `telefono_persona` VALUES (332,332,NULL);
INSERT INTO `telefono_persona` VALUES (333,333,NULL);
INSERT INTO `telefono_persona` VALUES (334,334,NULL);
INSERT INTO `telefono_persona` VALUES (335,335,NULL);
INSERT INTO `telefono_persona` VALUES (336,336,NULL);
INSERT INTO `telefono_persona` VALUES (337,337,NULL);
INSERT INTO `telefono_persona` VALUES (338,338,NULL);
INSERT INTO `telefono_persona` VALUES (339,339,NULL);
INSERT INTO `telefono_persona` VALUES (340,340,NULL);
INSERT INTO `telefono_persona` VALUES (341,341,NULL);
INSERT INTO `telefono_persona` VALUES (342,342,NULL);
INSERT INTO `telefono_persona` VALUES (343,343,NULL);
INSERT INTO `telefono_persona` VALUES (344,344,NULL);
INSERT INTO `telefono_persona` VALUES (345,345,NULL);
INSERT INTO `telefono_persona` VALUES (346,346,NULL);
INSERT INTO `telefono_persona` VALUES (347,347,NULL);
INSERT INTO `telefono_persona` VALUES (348,348,NULL);
INSERT INTO `telefono_persona` VALUES (349,349,NULL);
INSERT INTO `telefono_persona` VALUES (350,350,NULL);
INSERT INTO `telefono_persona` VALUES (351,351,NULL);
INSERT INTO `telefono_persona` VALUES (352,352,NULL);
INSERT INTO `telefono_persona` VALUES (353,353,NULL);
INSERT INTO `telefono_persona` VALUES (354,354,NULL);
INSERT INTO `telefono_persona` VALUES (355,355,NULL);
INSERT INTO `telefono_persona` VALUES (356,356,NULL);
INSERT INTO `telefono_persona` VALUES (357,357,NULL);
INSERT INTO `telefono_persona` VALUES (358,358,NULL);
INSERT INTO `telefono_persona` VALUES (359,359,NULL);
INSERT INTO `telefono_persona` VALUES (360,360,NULL);
INSERT INTO `telefono_persona` VALUES (361,361,NULL);
INSERT INTO `telefono_persona` VALUES (362,362,NULL);
INSERT INTO `telefono_persona` VALUES (363,363,NULL);
INSERT INTO `telefono_persona` VALUES (364,364,NULL);
INSERT INTO `telefono_persona` VALUES (365,365,NULL);
INSERT INTO `telefono_persona` VALUES (366,366,NULL);
INSERT INTO `telefono_persona` VALUES (367,367,NULL);
INSERT INTO `telefono_persona` VALUES (368,368,NULL);
INSERT INTO `telefono_persona` VALUES (369,369,NULL);
INSERT INTO `telefono_persona` VALUES (370,370,NULL);
INSERT INTO `telefono_persona` VALUES (371,371,NULL);
INSERT INTO `telefono_persona` VALUES (372,372,NULL);
INSERT INTO `telefono_persona` VALUES (373,373,NULL);
INSERT INTO `telefono_persona` VALUES (374,374,NULL);
INSERT INTO `telefono_persona` VALUES (375,375,NULL);
INSERT INTO `telefono_persona` VALUES (376,376,NULL);
INSERT INTO `telefono_persona` VALUES (377,377,NULL);
INSERT INTO `telefono_persona` VALUES (378,378,NULL);
INSERT INTO `telefono_persona` VALUES (379,379,NULL);
INSERT INTO `telefono_persona` VALUES (380,380,NULL);
INSERT INTO `telefono_persona` VALUES (381,381,NULL);
INSERT INTO `telefono_persona` VALUES (382,382,NULL);
INSERT INTO `telefono_persona` VALUES (383,383,NULL);
INSERT INTO `telefono_persona` VALUES (384,384,NULL);
INSERT INTO `telefono_persona` VALUES (385,385,NULL);
INSERT INTO `telefono_persona` VALUES (386,386,NULL);
INSERT INTO `telefono_persona` VALUES (387,387,NULL);
INSERT INTO `telefono_persona` VALUES (388,388,NULL);
INSERT INTO `telefono_persona` VALUES (389,389,NULL);
INSERT INTO `telefono_persona` VALUES (390,390,NULL);
INSERT INTO `telefono_persona` VALUES (391,391,NULL);
INSERT INTO `telefono_persona` VALUES (392,392,NULL);
INSERT INTO `telefono_persona` VALUES (393,393,NULL);
INSERT INTO `telefono_persona` VALUES (394,394,NULL);
INSERT INTO `telefono_persona` VALUES (395,395,NULL);
INSERT INTO `telefono_persona` VALUES (396,396,NULL);
INSERT INTO `telefono_persona` VALUES (397,397,NULL);
INSERT INTO `telefono_persona` VALUES (398,398,NULL);
INSERT INTO `telefono_persona` VALUES (399,399,NULL);
INSERT INTO `telefono_persona` VALUES (400,400,NULL);
INSERT INTO `telefono_persona` VALUES (401,401,NULL);
INSERT INTO `telefono_persona` VALUES (402,402,NULL);
INSERT INTO `telefono_persona` VALUES (403,403,NULL);
INSERT INTO `telefono_persona` VALUES (404,404,NULL);
INSERT INTO `telefono_persona` VALUES (405,405,NULL);
INSERT INTO `telefono_persona` VALUES (406,406,NULL);
INSERT INTO `telefono_persona` VALUES (407,407,NULL);
INSERT INTO `telefono_persona` VALUES (408,408,NULL);
INSERT INTO `telefono_persona` VALUES (409,409,NULL);
INSERT INTO `telefono_persona` VALUES (410,410,NULL);
INSERT INTO `telefono_persona` VALUES (411,411,NULL);
INSERT INTO `telefono_persona` VALUES (412,412,NULL);
INSERT INTO `telefono_persona` VALUES (413,413,NULL);
INSERT INTO `telefono_persona` VALUES (414,414,NULL);
INSERT INTO `telefono_persona` VALUES (415,415,NULL);
INSERT INTO `telefono_persona` VALUES (416,416,NULL);
INSERT INTO `telefono_persona` VALUES (417,417,NULL);
INSERT INTO `telefono_persona` VALUES (418,418,NULL);
INSERT INTO `telefono_persona` VALUES (419,419,NULL);
INSERT INTO `telefono_persona` VALUES (420,420,NULL);
INSERT INTO `telefono_persona` VALUES (421,421,NULL);
INSERT INTO `telefono_persona` VALUES (422,422,NULL);
INSERT INTO `telefono_persona` VALUES (423,423,NULL);
INSERT INTO `telefono_persona` VALUES (424,424,NULL);
INSERT INTO `telefono_persona` VALUES (425,425,NULL);
INSERT INTO `telefono_persona` VALUES (426,426,NULL);
INSERT INTO `telefono_persona` VALUES (427,427,NULL);
INSERT INTO `telefono_persona` VALUES (428,428,NULL);
INSERT INTO `telefono_persona` VALUES (429,429,NULL);
INSERT INTO `telefono_persona` VALUES (430,430,NULL);
INSERT INTO `telefono_persona` VALUES (431,431,NULL);
INSERT INTO `telefono_persona` VALUES (432,432,NULL);
INSERT INTO `telefono_persona` VALUES (433,433,NULL);
INSERT INTO `telefono_persona` VALUES (434,434,NULL);
INSERT INTO `telefono_persona` VALUES (435,435,NULL);
INSERT INTO `telefono_persona` VALUES (436,436,NULL);
INSERT INTO `telefono_persona` VALUES (437,437,NULL);
INSERT INTO `telefono_persona` VALUES (438,438,NULL);
INSERT INTO `telefono_persona` VALUES (439,439,NULL);
INSERT INTO `telefono_persona` VALUES (440,440,NULL);
INSERT INTO `telefono_persona` VALUES (441,441,NULL);
INSERT INTO `telefono_persona` VALUES (442,442,NULL);
INSERT INTO `telefono_persona` VALUES (443,443,NULL);
INSERT INTO `telefono_persona` VALUES (444,444,NULL);
INSERT INTO `telefono_persona` VALUES (445,445,NULL);
INSERT INTO `telefono_persona` VALUES (446,446,NULL);
INSERT INTO `telefono_persona` VALUES (447,447,NULL);
INSERT INTO `telefono_persona` VALUES (448,448,NULL);
INSERT INTO `telefono_persona` VALUES (449,449,NULL);
INSERT INTO `telefono_persona` VALUES (450,450,NULL);
INSERT INTO `telefono_persona` VALUES (451,451,NULL);
INSERT INTO `telefono_persona` VALUES (452,452,NULL);
INSERT INTO `telefono_persona` VALUES (453,453,NULL);
INSERT INTO `telefono_persona` VALUES (454,454,NULL);
INSERT INTO `telefono_persona` VALUES (455,455,NULL);
INSERT INTO `telefono_persona` VALUES (456,456,NULL);
INSERT INTO `telefono_persona` VALUES (457,457,NULL);
INSERT INTO `telefono_persona` VALUES (458,458,NULL);
INSERT INTO `telefono_persona` VALUES (459,459,NULL);
INSERT INTO `telefono_persona` VALUES (460,460,NULL);
INSERT INTO `telefono_persona` VALUES (461,461,NULL);
INSERT INTO `telefono_persona` VALUES (462,462,NULL);
INSERT INTO `telefono_persona` VALUES (463,463,NULL);
INSERT INTO `telefono_persona` VALUES (464,464,NULL);
INSERT INTO `telefono_persona` VALUES (465,465,NULL);
INSERT INTO `telefono_persona` VALUES (466,466,NULL);
INSERT INTO `telefono_persona` VALUES (467,467,NULL);
INSERT INTO `telefono_persona` VALUES (468,468,NULL);
INSERT INTO `telefono_persona` VALUES (469,469,NULL);
INSERT INTO `telefono_persona` VALUES (470,470,NULL);
INSERT INTO `telefono_persona` VALUES (471,471,NULL);
INSERT INTO `telefono_persona` VALUES (472,472,NULL);
INSERT INTO `telefono_persona` VALUES (473,473,NULL);
INSERT INTO `telefono_persona` VALUES (474,474,NULL);
INSERT INTO `telefono_persona` VALUES (475,475,NULL);
INSERT INTO `telefono_persona` VALUES (476,476,NULL);
INSERT INTO `telefono_persona` VALUES (477,477,NULL);
INSERT INTO `telefono_persona` VALUES (478,478,NULL);
INSERT INTO `telefono_persona` VALUES (479,479,NULL);
INSERT INTO `telefono_persona` VALUES (480,480,NULL);
INSERT INTO `telefono_persona` VALUES (481,481,NULL);
INSERT INTO `telefono_persona` VALUES (482,482,NULL);
INSERT INTO `telefono_persona` VALUES (483,483,NULL);
INSERT INTO `telefono_persona` VALUES (484,484,NULL);
INSERT INTO `telefono_persona` VALUES (485,485,NULL);
INSERT INTO `telefono_persona` VALUES (486,486,NULL);
INSERT INTO `telefono_persona` VALUES (487,487,NULL);
INSERT INTO `telefono_persona` VALUES (488,488,NULL);
INSERT INTO `telefono_persona` VALUES (489,489,NULL);
INSERT INTO `telefono_persona` VALUES (490,490,NULL);
INSERT INTO `telefono_persona` VALUES (491,491,NULL);
INSERT INTO `telefono_persona` VALUES (492,492,NULL);
INSERT INTO `telefono_persona` VALUES (493,493,NULL);
INSERT INTO `telefono_persona` VALUES (494,494,NULL);
INSERT INTO `telefono_persona` VALUES (495,495,NULL);
INSERT INTO `telefono_persona` VALUES (496,496,NULL);
INSERT INTO `telefono_persona` VALUES (497,497,NULL);
INSERT INTO `telefono_persona` VALUES (498,498,NULL);
INSERT INTO `telefono_persona` VALUES (499,499,NULL);
INSERT INTO `telefono_persona` VALUES (500,500,NULL);
INSERT INTO `telefono_persona` VALUES (10,2,NULL);
INSERT INTO `telefono_persona` VALUES (100,3,NULL);
INSERT INTO `telefono_persona` VALUES (101,4,NULL);
INSERT INTO `telefono_persona` VALUES (102,5,NULL);
INSERT INTO `telefono_persona` VALUES (103,6,NULL);
INSERT INTO `telefono_persona` VALUES (104,7,NULL);
INSERT INTO `telefono_persona` VALUES (105,8,NULL);
INSERT INTO `telefono_persona` VALUES (106,9,NULL);
INSERT INTO `telefono_persona` VALUES (107,10,NULL);
INSERT INTO `telefono_persona` VALUES (108,11,NULL);
INSERT INTO `telefono_persona` VALUES (109,12,NULL);
INSERT INTO `telefono_persona` VALUES (11,13,NULL);
INSERT INTO `telefono_persona` VALUES (110,14,NULL);
INSERT INTO `telefono_persona` VALUES (111,15,NULL);
INSERT INTO `telefono_persona` VALUES (112,16,NULL);
INSERT INTO `telefono_persona` VALUES (113,17,NULL);
INSERT INTO `telefono_persona` VALUES (114,18,NULL);
INSERT INTO `telefono_persona` VALUES (115,19,NULL);
INSERT INTO `telefono_persona` VALUES (116,20,NULL);
INSERT INTO `telefono_persona` VALUES (117,21,NULL);
INSERT INTO `telefono_persona` VALUES (118,22,NULL);
INSERT INTO `telefono_persona` VALUES (119,23,NULL);
INSERT INTO `telefono_persona` VALUES (12,24,NULL);
INSERT INTO `telefono_persona` VALUES (120,25,NULL);
INSERT INTO `telefono_persona` VALUES (121,26,NULL);
INSERT INTO `telefono_persona` VALUES (122,27,NULL);
INSERT INTO `telefono_persona` VALUES (123,28,NULL);
INSERT INTO `telefono_persona` VALUES (124,29,NULL);
INSERT INTO `telefono_persona` VALUES (125,30,NULL);
INSERT INTO `telefono_persona` VALUES (126,31,NULL);
INSERT INTO `telefono_persona` VALUES (127,32,NULL);
INSERT INTO `telefono_persona` VALUES (128,33,NULL);
INSERT INTO `telefono_persona` VALUES (129,34,NULL);
INSERT INTO `telefono_persona` VALUES (13,35,NULL);
INSERT INTO `telefono_persona` VALUES (130,36,NULL);
INSERT INTO `telefono_persona` VALUES (131,37,NULL);
INSERT INTO `telefono_persona` VALUES (132,38,NULL);
INSERT INTO `telefono_persona` VALUES (133,39,NULL);
INSERT INTO `telefono_persona` VALUES (134,40,NULL);
INSERT INTO `telefono_persona` VALUES (135,41,NULL);
INSERT INTO `telefono_persona` VALUES (136,42,NULL);
INSERT INTO `telefono_persona` VALUES (137,43,NULL);
INSERT INTO `telefono_persona` VALUES (138,44,NULL);
INSERT INTO `telefono_persona` VALUES (139,45,NULL);
INSERT INTO `telefono_persona` VALUES (14,46,NULL);
INSERT INTO `telefono_persona` VALUES (140,47,NULL);
INSERT INTO `telefono_persona` VALUES (141,48,NULL);
INSERT INTO `telefono_persona` VALUES (142,49,NULL);
INSERT INTO `telefono_persona` VALUES (143,50,NULL);
INSERT INTO `telefono_persona` VALUES (144,51,NULL);
INSERT INTO `telefono_persona` VALUES (145,52,NULL);
INSERT INTO `telefono_persona` VALUES (146,53,NULL);
INSERT INTO `telefono_persona` VALUES (147,54,NULL);
INSERT INTO `telefono_persona` VALUES (148,55,NULL);
INSERT INTO `telefono_persona` VALUES (149,56,NULL);
INSERT INTO `telefono_persona` VALUES (15,57,NULL);
INSERT INTO `telefono_persona` VALUES (150,58,NULL);
INSERT INTO `telefono_persona` VALUES (151,59,NULL);
INSERT INTO `telefono_persona` VALUES (152,60,NULL);
INSERT INTO `telefono_persona` VALUES (153,61,NULL);
INSERT INTO `telefono_persona` VALUES (154,62,NULL);
INSERT INTO `telefono_persona` VALUES (155,63,NULL);
INSERT INTO `telefono_persona` VALUES (156,64,NULL);
INSERT INTO `telefono_persona` VALUES (157,65,NULL);
INSERT INTO `telefono_persona` VALUES (158,66,NULL);
INSERT INTO `telefono_persona` VALUES (159,67,NULL);
INSERT INTO `telefono_persona` VALUES (16,68,NULL);
INSERT INTO `telefono_persona` VALUES (160,69,NULL);
INSERT INTO `telefono_persona` VALUES (161,70,NULL);
INSERT INTO `telefono_persona` VALUES (162,71,NULL);
INSERT INTO `telefono_persona` VALUES (163,72,NULL);
INSERT INTO `telefono_persona` VALUES (164,73,NULL);
INSERT INTO `telefono_persona` VALUES (165,74,NULL);
INSERT INTO `telefono_persona` VALUES (166,75,NULL);
INSERT INTO `telefono_persona` VALUES (167,76,NULL);
INSERT INTO `telefono_persona` VALUES (168,77,NULL);
INSERT INTO `telefono_persona` VALUES (169,78,NULL);
INSERT INTO `telefono_persona` VALUES (17,79,NULL);
INSERT INTO `telefono_persona` VALUES (170,80,NULL);
INSERT INTO `telefono_persona` VALUES (171,81,NULL);
INSERT INTO `telefono_persona` VALUES (172,82,NULL);
INSERT INTO `telefono_persona` VALUES (173,83,NULL);
INSERT INTO `telefono_persona` VALUES (174,84,NULL);
INSERT INTO `telefono_persona` VALUES (175,85,NULL);
INSERT INTO `telefono_persona` VALUES (176,86,NULL);
INSERT INTO `telefono_persona` VALUES (177,87,NULL);
INSERT INTO `telefono_persona` VALUES (178,88,NULL);
INSERT INTO `telefono_persona` VALUES (179,89,NULL);
INSERT INTO `telefono_persona` VALUES (18,90,NULL);
INSERT INTO `telefono_persona` VALUES (180,91,NULL);
INSERT INTO `telefono_persona` VALUES (181,92,NULL);
INSERT INTO `telefono_persona` VALUES (182,93,NULL);
INSERT INTO `telefono_persona` VALUES (183,94,NULL);
INSERT INTO `telefono_persona` VALUES (184,95,NULL);
INSERT INTO `telefono_persona` VALUES (185,96,NULL);
INSERT INTO `telefono_persona` VALUES (186,97,NULL);
INSERT INTO `telefono_persona` VALUES (187,98,NULL);
INSERT INTO `telefono_persona` VALUES (188,99,NULL);
INSERT INTO `telefono_persona` VALUES (189,100,NULL);
INSERT INTO `telefono_persona` VALUES (19,101,NULL);
INSERT INTO `telefono_persona` VALUES (190,102,NULL);
INSERT INTO `telefono_persona` VALUES (191,103,NULL);
INSERT INTO `telefono_persona` VALUES (192,104,NULL);
INSERT INTO `telefono_persona` VALUES (193,105,NULL);
INSERT INTO `telefono_persona` VALUES (194,106,NULL);
INSERT INTO `telefono_persona` VALUES (195,107,NULL);
INSERT INTO `telefono_persona` VALUES (196,108,NULL);
INSERT INTO `telefono_persona` VALUES (197,109,NULL);
INSERT INTO `telefono_persona` VALUES (198,110,NULL);
INSERT INTO `telefono_persona` VALUES (199,111,NULL);
INSERT INTO `telefono_persona` VALUES (2,112,NULL);
INSERT INTO `telefono_persona` VALUES (20,113,NULL);
INSERT INTO `telefono_persona` VALUES (200,114,NULL);
INSERT INTO `telefono_persona` VALUES (201,115,NULL);
INSERT INTO `telefono_persona` VALUES (202,116,NULL);
INSERT INTO `telefono_persona` VALUES (203,117,NULL);
INSERT INTO `telefono_persona` VALUES (204,118,NULL);
INSERT INTO `telefono_persona` VALUES (205,119,NULL);
INSERT INTO `telefono_persona` VALUES (206,120,NULL);
INSERT INTO `telefono_persona` VALUES (207,121,NULL);
INSERT INTO `telefono_persona` VALUES (208,122,NULL);
INSERT INTO `telefono_persona` VALUES (209,123,NULL);
INSERT INTO `telefono_persona` VALUES (21,124,NULL);
INSERT INTO `telefono_persona` VALUES (210,125,NULL);
INSERT INTO `telefono_persona` VALUES (211,126,NULL);
INSERT INTO `telefono_persona` VALUES (212,127,NULL);
INSERT INTO `telefono_persona` VALUES (213,128,NULL);
INSERT INTO `telefono_persona` VALUES (214,129,NULL);
INSERT INTO `telefono_persona` VALUES (215,130,NULL);
INSERT INTO `telefono_persona` VALUES (216,131,NULL);
INSERT INTO `telefono_persona` VALUES (217,132,NULL);
INSERT INTO `telefono_persona` VALUES (218,133,NULL);
INSERT INTO `telefono_persona` VALUES (219,134,NULL);
INSERT INTO `telefono_persona` VALUES (22,135,NULL);
INSERT INTO `telefono_persona` VALUES (220,136,NULL);
INSERT INTO `telefono_persona` VALUES (221,137,NULL);
INSERT INTO `telefono_persona` VALUES (222,138,NULL);
INSERT INTO `telefono_persona` VALUES (223,139,NULL);
INSERT INTO `telefono_persona` VALUES (224,140,NULL);
INSERT INTO `telefono_persona` VALUES (225,141,NULL);
INSERT INTO `telefono_persona` VALUES (226,142,NULL);
INSERT INTO `telefono_persona` VALUES (227,143,NULL);
INSERT INTO `telefono_persona` VALUES (228,144,NULL);
INSERT INTO `telefono_persona` VALUES (229,145,NULL);
INSERT INTO `telefono_persona` VALUES (23,146,NULL);
INSERT INTO `telefono_persona` VALUES (230,147,NULL);
INSERT INTO `telefono_persona` VALUES (231,148,NULL);
INSERT INTO `telefono_persona` VALUES (232,149,NULL);
INSERT INTO `telefono_persona` VALUES (233,150,NULL);
INSERT INTO `telefono_persona` VALUES (234,151,NULL);
INSERT INTO `telefono_persona` VALUES (235,152,NULL);
INSERT INTO `telefono_persona` VALUES (236,153,NULL);
INSERT INTO `telefono_persona` VALUES (237,154,NULL);
INSERT INTO `telefono_persona` VALUES (238,155,NULL);
INSERT INTO `telefono_persona` VALUES (239,156,NULL);
INSERT INTO `telefono_persona` VALUES (24,157,NULL);
INSERT INTO `telefono_persona` VALUES (240,158,NULL);
INSERT INTO `telefono_persona` VALUES (241,159,NULL);
INSERT INTO `telefono_persona` VALUES (242,160,NULL);
INSERT INTO `telefono_persona` VALUES (243,161,NULL);
INSERT INTO `telefono_persona` VALUES (244,162,NULL);
INSERT INTO `telefono_persona` VALUES (245,163,NULL);
INSERT INTO `telefono_persona` VALUES (246,164,NULL);
INSERT INTO `telefono_persona` VALUES (247,165,NULL);
INSERT INTO `telefono_persona` VALUES (248,166,NULL);
INSERT INTO `telefono_persona` VALUES (249,167,NULL);
INSERT INTO `telefono_persona` VALUES (25,168,NULL);
INSERT INTO `telefono_persona` VALUES (250,169,NULL);
INSERT INTO `telefono_persona` VALUES (251,170,NULL);
INSERT INTO `telefono_persona` VALUES (252,171,NULL);
INSERT INTO `telefono_persona` VALUES (253,172,NULL);
INSERT INTO `telefono_persona` VALUES (254,173,NULL);
INSERT INTO `telefono_persona` VALUES (255,174,NULL);
INSERT INTO `telefono_persona` VALUES (256,175,NULL);
INSERT INTO `telefono_persona` VALUES (257,176,NULL);
INSERT INTO `telefono_persona` VALUES (258,177,NULL);
INSERT INTO `telefono_persona` VALUES (259,178,NULL);
INSERT INTO `telefono_persona` VALUES (26,179,NULL);
INSERT INTO `telefono_persona` VALUES (260,180,NULL);
INSERT INTO `telefono_persona` VALUES (261,181,NULL);
INSERT INTO `telefono_persona` VALUES (262,182,NULL);
INSERT INTO `telefono_persona` VALUES (263,183,NULL);
INSERT INTO `telefono_persona` VALUES (264,184,NULL);
INSERT INTO `telefono_persona` VALUES (265,185,NULL);
INSERT INTO `telefono_persona` VALUES (266,186,NULL);
INSERT INTO `telefono_persona` VALUES (267,187,NULL);
INSERT INTO `telefono_persona` VALUES (268,188,NULL);
INSERT INTO `telefono_persona` VALUES (269,189,NULL);
INSERT INTO `telefono_persona` VALUES (27,190,NULL);
INSERT INTO `telefono_persona` VALUES (270,191,NULL);
INSERT INTO `telefono_persona` VALUES (271,192,NULL);
INSERT INTO `telefono_persona` VALUES (272,193,NULL);
INSERT INTO `telefono_persona` VALUES (273,194,NULL);
INSERT INTO `telefono_persona` VALUES (274,195,NULL);
INSERT INTO `telefono_persona` VALUES (275,196,NULL);
INSERT INTO `telefono_persona` VALUES (276,197,NULL);
INSERT INTO `telefono_persona` VALUES (277,198,NULL);
INSERT INTO `telefono_persona` VALUES (278,199,NULL);
INSERT INTO `telefono_persona` VALUES (279,200,NULL);
INSERT INTO `telefono_persona` VALUES (28,201,NULL);
INSERT INTO `telefono_persona` VALUES (280,202,NULL);
INSERT INTO `telefono_persona` VALUES (281,203,NULL);
INSERT INTO `telefono_persona` VALUES (282,204,NULL);
INSERT INTO `telefono_persona` VALUES (283,205,NULL);
INSERT INTO `telefono_persona` VALUES (284,206,NULL);
INSERT INTO `telefono_persona` VALUES (285,207,NULL);
INSERT INTO `telefono_persona` VALUES (286,208,NULL);
INSERT INTO `telefono_persona` VALUES (287,209,NULL);
INSERT INTO `telefono_persona` VALUES (288,210,NULL);
INSERT INTO `telefono_persona` VALUES (289,211,NULL);
INSERT INTO `telefono_persona` VALUES (29,212,NULL);
INSERT INTO `telefono_persona` VALUES (290,213,NULL);
INSERT INTO `telefono_persona` VALUES (291,214,NULL);
INSERT INTO `telefono_persona` VALUES (292,215,NULL);
INSERT INTO `telefono_persona` VALUES (293,216,NULL);
INSERT INTO `telefono_persona` VALUES (294,217,NULL);
INSERT INTO `telefono_persona` VALUES (295,218,NULL);
INSERT INTO `telefono_persona` VALUES (296,219,NULL);
INSERT INTO `telefono_persona` VALUES (297,220,NULL);
INSERT INTO `telefono_persona` VALUES (298,221,NULL);
INSERT INTO `telefono_persona` VALUES (299,222,NULL);
INSERT INTO `telefono_persona` VALUES (3,223,NULL);
INSERT INTO `telefono_persona` VALUES (30,224,NULL);
INSERT INTO `telefono_persona` VALUES (300,225,NULL);
INSERT INTO `telefono_persona` VALUES (301,226,NULL);
INSERT INTO `telefono_persona` VALUES (302,227,NULL);
INSERT INTO `telefono_persona` VALUES (303,228,NULL);
INSERT INTO `telefono_persona` VALUES (304,229,NULL);
INSERT INTO `telefono_persona` VALUES (305,230,NULL);
INSERT INTO `telefono_persona` VALUES (306,231,NULL);
INSERT INTO `telefono_persona` VALUES (307,232,NULL);
INSERT INTO `telefono_persona` VALUES (308,233,NULL);
INSERT INTO `telefono_persona` VALUES (309,234,NULL);
INSERT INTO `telefono_persona` VALUES (31,235,NULL);
INSERT INTO `telefono_persona` VALUES (310,236,NULL);
INSERT INTO `telefono_persona` VALUES (311,237,NULL);
INSERT INTO `telefono_persona` VALUES (312,238,NULL);
INSERT INTO `telefono_persona` VALUES (313,239,NULL);
INSERT INTO `telefono_persona` VALUES (314,240,NULL);
INSERT INTO `telefono_persona` VALUES (315,241,NULL);
INSERT INTO `telefono_persona` VALUES (316,242,NULL);
INSERT INTO `telefono_persona` VALUES (317,243,NULL);
INSERT INTO `telefono_persona` VALUES (318,244,NULL);
INSERT INTO `telefono_persona` VALUES (319,245,NULL);
INSERT INTO `telefono_persona` VALUES (32,246,NULL);
INSERT INTO `telefono_persona` VALUES (320,247,NULL);
INSERT INTO `telefono_persona` VALUES (321,248,NULL);
INSERT INTO `telefono_persona` VALUES (322,249,NULL);
INSERT INTO `telefono_persona` VALUES (323,250,NULL);
INSERT INTO `telefono_persona` VALUES (324,251,NULL);
INSERT INTO `telefono_persona` VALUES (325,252,NULL);
INSERT INTO `telefono_persona` VALUES (326,253,NULL);
INSERT INTO `telefono_persona` VALUES (327,254,NULL);
INSERT INTO `telefono_persona` VALUES (328,255,NULL);
INSERT INTO `telefono_persona` VALUES (329,256,NULL);
INSERT INTO `telefono_persona` VALUES (33,257,NULL);
INSERT INTO `telefono_persona` VALUES (330,258,NULL);
INSERT INTO `telefono_persona` VALUES (331,259,NULL);
INSERT INTO `telefono_persona` VALUES (332,260,NULL);
INSERT INTO `telefono_persona` VALUES (333,261,NULL);
INSERT INTO `telefono_persona` VALUES (334,262,NULL);
INSERT INTO `telefono_persona` VALUES (335,263,NULL);
INSERT INTO `telefono_persona` VALUES (336,264,NULL);
INSERT INTO `telefono_persona` VALUES (337,265,NULL);
INSERT INTO `telefono_persona` VALUES (338,266,NULL);
INSERT INTO `telefono_persona` VALUES (339,267,NULL);
INSERT INTO `telefono_persona` VALUES (34,268,NULL);
INSERT INTO `telefono_persona` VALUES (340,269,NULL);
INSERT INTO `telefono_persona` VALUES (341,270,NULL);
INSERT INTO `telefono_persona` VALUES (342,271,NULL);
INSERT INTO `telefono_persona` VALUES (343,272,NULL);
INSERT INTO `telefono_persona` VALUES (344,273,NULL);
INSERT INTO `telefono_persona` VALUES (345,274,NULL);
INSERT INTO `telefono_persona` VALUES (346,275,NULL);
INSERT INTO `telefono_persona` VALUES (347,276,NULL);
INSERT INTO `telefono_persona` VALUES (348,277,NULL);
INSERT INTO `telefono_persona` VALUES (349,278,NULL);
INSERT INTO `telefono_persona` VALUES (35,279,NULL);
INSERT INTO `telefono_persona` VALUES (350,280,NULL);
INSERT INTO `telefono_persona` VALUES (351,281,NULL);
INSERT INTO `telefono_persona` VALUES (352,282,NULL);
INSERT INTO `telefono_persona` VALUES (353,283,NULL);
INSERT INTO `telefono_persona` VALUES (354,284,NULL);
INSERT INTO `telefono_persona` VALUES (355,285,NULL);
INSERT INTO `telefono_persona` VALUES (356,286,NULL);
INSERT INTO `telefono_persona` VALUES (357,287,NULL);
INSERT INTO `telefono_persona` VALUES (358,288,NULL);
INSERT INTO `telefono_persona` VALUES (359,289,NULL);
INSERT INTO `telefono_persona` VALUES (36,290,NULL);
INSERT INTO `telefono_persona` VALUES (360,291,NULL);
INSERT INTO `telefono_persona` VALUES (361,292,NULL);
INSERT INTO `telefono_persona` VALUES (362,293,NULL);
INSERT INTO `telefono_persona` VALUES (363,294,NULL);
INSERT INTO `telefono_persona` VALUES (364,295,NULL);
INSERT INTO `telefono_persona` VALUES (365,296,NULL);
INSERT INTO `telefono_persona` VALUES (366,297,NULL);
INSERT INTO `telefono_persona` VALUES (367,298,NULL);
INSERT INTO `telefono_persona` VALUES (368,299,NULL);
INSERT INTO `telefono_persona` VALUES (369,300,NULL);
INSERT INTO `telefono_persona` VALUES (37,301,NULL);
INSERT INTO `telefono_persona` VALUES (370,302,NULL);
INSERT INTO `telefono_persona` VALUES (371,303,NULL);
INSERT INTO `telefono_persona` VALUES (372,304,NULL);
INSERT INTO `telefono_persona` VALUES (373,305,NULL);
INSERT INTO `telefono_persona` VALUES (374,306,NULL);
INSERT INTO `telefono_persona` VALUES (375,307,NULL);
INSERT INTO `telefono_persona` VALUES (376,308,NULL);
INSERT INTO `telefono_persona` VALUES (377,309,NULL);
INSERT INTO `telefono_persona` VALUES (378,310,NULL);
INSERT INTO `telefono_persona` VALUES (379,311,NULL);
INSERT INTO `telefono_persona` VALUES (38,312,NULL);
INSERT INTO `telefono_persona` VALUES (380,313,NULL);
INSERT INTO `telefono_persona` VALUES (381,314,NULL);
INSERT INTO `telefono_persona` VALUES (382,315,NULL);
INSERT INTO `telefono_persona` VALUES (383,316,NULL);
INSERT INTO `telefono_persona` VALUES (384,317,NULL);
INSERT INTO `telefono_persona` VALUES (385,318,NULL);
INSERT INTO `telefono_persona` VALUES (386,319,NULL);
INSERT INTO `telefono_persona` VALUES (387,320,NULL);
INSERT INTO `telefono_persona` VALUES (388,321,NULL);
INSERT INTO `telefono_persona` VALUES (389,322,NULL);
INSERT INTO `telefono_persona` VALUES (39,323,NULL);
INSERT INTO `telefono_persona` VALUES (390,324,NULL);
INSERT INTO `telefono_persona` VALUES (391,325,NULL);
INSERT INTO `telefono_persona` VALUES (392,326,NULL);
INSERT INTO `telefono_persona` VALUES (393,327,NULL);
INSERT INTO `telefono_persona` VALUES (394,328,NULL);
INSERT INTO `telefono_persona` VALUES (395,329,NULL);
INSERT INTO `telefono_persona` VALUES (396,330,NULL);
INSERT INTO `telefono_persona` VALUES (397,331,NULL);
INSERT INTO `telefono_persona` VALUES (398,332,NULL);
INSERT INTO `telefono_persona` VALUES (399,333,NULL);
INSERT INTO `telefono_persona` VALUES (4,334,NULL);
INSERT INTO `telefono_persona` VALUES (40,335,NULL);
INSERT INTO `telefono_persona` VALUES (400,336,NULL);
INSERT INTO `telefono_persona` VALUES (401,337,NULL);
INSERT INTO `telefono_persona` VALUES (402,338,NULL);
INSERT INTO `telefono_persona` VALUES (403,339,NULL);
INSERT INTO `telefono_persona` VALUES (404,340,NULL);
INSERT INTO `telefono_persona` VALUES (405,341,NULL);
INSERT INTO `telefono_persona` VALUES (406,342,NULL);
INSERT INTO `telefono_persona` VALUES (407,343,NULL);
INSERT INTO `telefono_persona` VALUES (408,344,NULL);
INSERT INTO `telefono_persona` VALUES (409,345,NULL);
INSERT INTO `telefono_persona` VALUES (41,346,NULL);
INSERT INTO `telefono_persona` VALUES (410,347,NULL);
INSERT INTO `telefono_persona` VALUES (411,348,NULL);
INSERT INTO `telefono_persona` VALUES (412,349,NULL);
INSERT INTO `telefono_persona` VALUES (413,350,NULL);
INSERT INTO `telefono_persona` VALUES (414,351,NULL);
INSERT INTO `telefono_persona` VALUES (415,352,NULL);
INSERT INTO `telefono_persona` VALUES (416,353,NULL);
INSERT INTO `telefono_persona` VALUES (417,354,NULL);
INSERT INTO `telefono_persona` VALUES (418,355,NULL);
INSERT INTO `telefono_persona` VALUES (419,356,NULL);
INSERT INTO `telefono_persona` VALUES (42,357,NULL);
INSERT INTO `telefono_persona` VALUES (420,358,NULL);
INSERT INTO `telefono_persona` VALUES (421,359,NULL);
INSERT INTO `telefono_persona` VALUES (422,360,NULL);
INSERT INTO `telefono_persona` VALUES (423,361,NULL);
INSERT INTO `telefono_persona` VALUES (424,362,NULL);
INSERT INTO `telefono_persona` VALUES (425,363,NULL);
INSERT INTO `telefono_persona` VALUES (426,364,NULL);
INSERT INTO `telefono_persona` VALUES (427,365,NULL);
INSERT INTO `telefono_persona` VALUES (428,366,NULL);
INSERT INTO `telefono_persona` VALUES (429,367,NULL);
INSERT INTO `telefono_persona` VALUES (43,368,NULL);
INSERT INTO `telefono_persona` VALUES (430,369,NULL);
INSERT INTO `telefono_persona` VALUES (431,370,NULL);
INSERT INTO `telefono_persona` VALUES (432,371,NULL);
INSERT INTO `telefono_persona` VALUES (433,372,NULL);
INSERT INTO `telefono_persona` VALUES (434,373,NULL);
INSERT INTO `telefono_persona` VALUES (435,374,NULL);
INSERT INTO `telefono_persona` VALUES (436,375,NULL);
INSERT INTO `telefono_persona` VALUES (437,376,NULL);
INSERT INTO `telefono_persona` VALUES (438,377,NULL);
INSERT INTO `telefono_persona` VALUES (439,378,NULL);
INSERT INTO `telefono_persona` VALUES (44,379,NULL);
INSERT INTO `telefono_persona` VALUES (440,380,NULL);
INSERT INTO `telefono_persona` VALUES (441,381,NULL);
INSERT INTO `telefono_persona` VALUES (442,382,NULL);
INSERT INTO `telefono_persona` VALUES (443,383,NULL);
INSERT INTO `telefono_persona` VALUES (444,384,NULL);
INSERT INTO `telefono_persona` VALUES (445,385,NULL);
INSERT INTO `telefono_persona` VALUES (446,386,NULL);
INSERT INTO `telefono_persona` VALUES (447,387,NULL);
INSERT INTO `telefono_persona` VALUES (448,388,NULL);
INSERT INTO `telefono_persona` VALUES (449,389,NULL);
INSERT INTO `telefono_persona` VALUES (45,390,NULL);
INSERT INTO `telefono_persona` VALUES (450,391,NULL);
INSERT INTO `telefono_persona` VALUES (451,392,NULL);
INSERT INTO `telefono_persona` VALUES (452,393,NULL);
INSERT INTO `telefono_persona` VALUES (453,394,NULL);
INSERT INTO `telefono_persona` VALUES (454,395,NULL);
INSERT INTO `telefono_persona` VALUES (455,396,NULL);
INSERT INTO `telefono_persona` VALUES (456,397,NULL);
INSERT INTO `telefono_persona` VALUES (457,398,NULL);
INSERT INTO `telefono_persona` VALUES (458,399,NULL);
INSERT INTO `telefono_persona` VALUES (459,400,NULL);
INSERT INTO `telefono_persona` VALUES (46,401,NULL);
INSERT INTO `telefono_persona` VALUES (460,402,NULL);
INSERT INTO `telefono_persona` VALUES (461,403,NULL);
INSERT INTO `telefono_persona` VALUES (462,404,NULL);
INSERT INTO `telefono_persona` VALUES (463,405,NULL);
INSERT INTO `telefono_persona` VALUES (464,406,NULL);
INSERT INTO `telefono_persona` VALUES (465,407,NULL);
INSERT INTO `telefono_persona` VALUES (466,408,NULL);
INSERT INTO `telefono_persona` VALUES (467,409,NULL);
INSERT INTO `telefono_persona` VALUES (468,410,NULL);
INSERT INTO `telefono_persona` VALUES (469,411,NULL);
INSERT INTO `telefono_persona` VALUES (47,412,NULL);
INSERT INTO `telefono_persona` VALUES (470,413,NULL);
INSERT INTO `telefono_persona` VALUES (471,414,NULL);
INSERT INTO `telefono_persona` VALUES (472,415,NULL);
INSERT INTO `telefono_persona` VALUES (473,416,NULL);
INSERT INTO `telefono_persona` VALUES (474,417,NULL);
INSERT INTO `telefono_persona` VALUES (475,418,NULL);
INSERT INTO `telefono_persona` VALUES (476,419,NULL);
INSERT INTO `telefono_persona` VALUES (477,420,NULL);
INSERT INTO `telefono_persona` VALUES (478,421,NULL);
INSERT INTO `telefono_persona` VALUES (479,422,NULL);
INSERT INTO `telefono_persona` VALUES (48,423,NULL);
INSERT INTO `telefono_persona` VALUES (480,424,NULL);
INSERT INTO `telefono_persona` VALUES (481,425,NULL);
INSERT INTO `telefono_persona` VALUES (482,426,NULL);
INSERT INTO `telefono_persona` VALUES (483,427,NULL);
INSERT INTO `telefono_persona` VALUES (484,428,NULL);
INSERT INTO `telefono_persona` VALUES (485,429,NULL);
INSERT INTO `telefono_persona` VALUES (486,430,NULL);
INSERT INTO `telefono_persona` VALUES (487,431,NULL);
INSERT INTO `telefono_persona` VALUES (488,432,NULL);
INSERT INTO `telefono_persona` VALUES (489,433,NULL);
INSERT INTO `telefono_persona` VALUES (49,434,NULL);
INSERT INTO `telefono_persona` VALUES (490,435,NULL);
INSERT INTO `telefono_persona` VALUES (491,436,NULL);
INSERT INTO `telefono_persona` VALUES (492,437,NULL);
INSERT INTO `telefono_persona` VALUES (493,438,NULL);
INSERT INTO `telefono_persona` VALUES (494,439,NULL);
INSERT INTO `telefono_persona` VALUES (495,440,NULL);
INSERT INTO `telefono_persona` VALUES (496,441,NULL);
INSERT INTO `telefono_persona` VALUES (497,442,NULL);
INSERT INTO `telefono_persona` VALUES (498,443,NULL);
INSERT INTO `telefono_persona` VALUES (499,444,NULL);
INSERT INTO `telefono_persona` VALUES (5,445,NULL);
INSERT INTO `telefono_persona` VALUES (50,446,NULL);
INSERT INTO `telefono_persona` VALUES (500,447,NULL);
INSERT INTO `telefono_persona` VALUES (51,448,NULL);
INSERT INTO `telefono_persona` VALUES (52,449,NULL);
INSERT INTO `telefono_persona` VALUES (53,450,NULL);
INSERT INTO `telefono_persona` VALUES (54,451,NULL);
INSERT INTO `telefono_persona` VALUES (55,452,NULL);
INSERT INTO `telefono_persona` VALUES (56,453,NULL);
INSERT INTO `telefono_persona` VALUES (57,454,NULL);
INSERT INTO `telefono_persona` VALUES (58,455,NULL);
INSERT INTO `telefono_persona` VALUES (59,456,NULL);
INSERT INTO `telefono_persona` VALUES (6,457,NULL);
INSERT INTO `telefono_persona` VALUES (60,458,NULL);
INSERT INTO `telefono_persona` VALUES (61,459,NULL);
INSERT INTO `telefono_persona` VALUES (62,460,NULL);
INSERT INTO `telefono_persona` VALUES (63,461,NULL);
INSERT INTO `telefono_persona` VALUES (64,462,NULL);
INSERT INTO `telefono_persona` VALUES (65,463,NULL);
INSERT INTO `telefono_persona` VALUES (66,464,NULL);
INSERT INTO `telefono_persona` VALUES (67,465,NULL);
INSERT INTO `telefono_persona` VALUES (68,466,NULL);
INSERT INTO `telefono_persona` VALUES (69,467,NULL);
INSERT INTO `telefono_persona` VALUES (7,468,NULL);
INSERT INTO `telefono_persona` VALUES (70,469,NULL);
INSERT INTO `telefono_persona` VALUES (71,470,NULL);
INSERT INTO `telefono_persona` VALUES (72,471,NULL);
INSERT INTO `telefono_persona` VALUES (73,472,NULL);
INSERT INTO `telefono_persona` VALUES (74,473,NULL);
INSERT INTO `telefono_persona` VALUES (75,474,NULL);
INSERT INTO `telefono_persona` VALUES (76,475,NULL);
INSERT INTO `telefono_persona` VALUES (77,476,NULL);
INSERT INTO `telefono_persona` VALUES (78,477,NULL);
INSERT INTO `telefono_persona` VALUES (79,478,NULL);
INSERT INTO `telefono_persona` VALUES (8,479,NULL);
INSERT INTO `telefono_persona` VALUES (80,480,NULL);
INSERT INTO `telefono_persona` VALUES (81,481,NULL);
INSERT INTO `telefono_persona` VALUES (82,482,NULL);
INSERT INTO `telefono_persona` VALUES (83,483,NULL);
INSERT INTO `telefono_persona` VALUES (84,484,NULL);
INSERT INTO `telefono_persona` VALUES (85,485,NULL);
INSERT INTO `telefono_persona` VALUES (86,486,NULL);
INSERT INTO `telefono_persona` VALUES (87,487,NULL);
INSERT INTO `telefono_persona` VALUES (88,488,NULL);
INSERT INTO `telefono_persona` VALUES (89,489,NULL);
INSERT INTO `telefono_persona` VALUES (9,490,NULL);
INSERT INTO `telefono_persona` VALUES (90,491,NULL);
INSERT INTO `telefono_persona` VALUES (91,492,NULL);
INSERT INTO `telefono_persona` VALUES (92,493,NULL);
INSERT INTO `telefono_persona` VALUES (93,494,NULL);
INSERT INTO `telefono_persona` VALUES (94,495,NULL);
INSERT INTO `telefono_persona` VALUES (95,496,NULL);
INSERT INTO `telefono_persona` VALUES (96,497,NULL);
INSERT INTO `telefono_persona` VALUES (97,498,NULL);
INSERT INTO `telefono_persona` VALUES (98,499,NULL);
INSERT INTO `telefono_persona` VALUES (99,500,NULL);
INSERT INTO `telefono_persona` VALUES (12,1,'I');
INSERT INTO `telefono_persona` VALUES (12,501,'I');
INSERT INTO `telefono_persona` VALUES (12,200,'I');
INSERT INTO `telefono_persona` VALUES (12,16,'I');
INSERT INTO `telefono_persona` VALUES (12,502,'I');
INSERT INTO `telefono_persona` VALUES (12,503,'I');
INSERT INTO `telefono_persona` VALUES (12,504,'I');
INSERT INTO `telefono_persona` VALUES (12,505,'I');
INSERT INTO `telefono_persona` VALUES (22,506,'I');
INSERT INTO `telefono_persona` VALUES (22,509,'I');
INSERT INTO `telefono_persona` VALUES (22,510,'I');
INSERT INTO `telefono_persona` VALUES (22,511,'I');
INSERT INTO `telefono_persona` VALUES (12,513,'I');
INSERT INTO `telefono_persona` VALUES (538,514,'A');
INSERT INTO `telefono_persona` VALUES (539,515,'A');
INSERT INTO `telefono_persona` VALUES (1,516,'A');
INSERT INTO `telefono_persona` VALUES (1,517,'A');
INSERT INTO `telefono_persona` VALUES (12,518,'I');
INSERT INTO `telefono_persona` VALUES (540,519,'A');
INSERT INTO `telefono_persona` VALUES (1,520,'A');
INSERT INTO `telefono_persona` VALUES (543,521,'A');
INSERT INTO `telefono_persona` VALUES (544,522,'A');
INSERT INTO `telefono_persona` VALUES (12,523,'I');
INSERT INTO `telefono_persona` VALUES (545,524,'A');
INSERT INTO `telefono_persona` VALUES (11,525,'I');
INSERT INTO `telefono_persona` VALUES (547,526,'A');
INSERT INTO `telefono_persona` VALUES (548,527,'A');
INSERT INTO `telefono_persona` VALUES (549,528,'A');
INSERT INTO `telefono_persona` VALUES (550,529,'A');
INSERT INTO `telefono_persona` VALUES (551,530,'A');
INSERT INTO `telefono_persona` VALUES (552,531,'A');
INSERT INTO `telefono_persona` VALUES (553,532,'A');
INSERT INTO `telefono_persona` VALUES (554,533,'A');
INSERT INTO `telefono_persona` VALUES (555,534,'A');
INSERT INTO `telefono_persona` VALUES (556,535,'A');
INSERT INTO `telefono_persona` VALUES (557,536,'A');
INSERT INTO `telefono_persona` VALUES (558,537,'A');
INSERT INTO `telefono_persona` VALUES (559,538,'A');
INSERT INTO `telefono_persona` VALUES (560,539,'A');
INSERT INTO `telefono_persona` VALUES (561,540,'A');
INSERT INTO `telefono_persona` VALUES (562,541,'A');
INSERT INTO `telefono_persona` VALUES (563,542,'A');
INSERT INTO `telefono_persona` VALUES (564,543,'A');
INSERT INTO `telefono_persona` VALUES (565,544,'A');
INSERT INTO `telefono_persona` VALUES (566,545,'A');
INSERT INTO `telefono_persona` VALUES (567,546,'A');
INSERT INTO `telefono_persona` VALUES (12,547,'I');
INSERT INTO `telefono_persona` VALUES (11,548,'I');
INSERT INTO `telefono_persona` VALUES (11,549,'A');
INSERT INTO `telefono_persona` VALUES (568,550,'A');
INSERT INTO `telefono_persona` VALUES (570,551,'A');
INSERT INTO `telefono_persona` VALUES (571,552,'A');
INSERT INTO `telefono_persona` VALUES (572,553,'A');
INSERT INTO `telefono_persona` VALUES (573,554,'A');
INSERT INTO `telefono_persona` VALUES (574,555,'A');
INSERT INTO `telefono_persona` VALUES (575,557,'A');
INSERT INTO `telefono_persona` VALUES (576,558,'A');
INSERT INTO `telefono_persona` VALUES (577,559,'A');
INSERT INTO `telefono_persona` VALUES (578,560,'A');
INSERT INTO `telefono_persona` VALUES (579,561,'A');
INSERT INTO `telefono_persona` VALUES (580,562,'A');
INSERT INTO `telefono_persona` VALUES (581,563,'A');
INSERT INTO `telefono_persona` VALUES (582,564,'A');
INSERT INTO `telefono_persona` VALUES (583,565,'A');
INSERT INTO `telefono_persona` VALUES (584,566,'A');
INSERT INTO `telefono_persona` VALUES (585,567,'A');
INSERT INTO `telefono_persona` VALUES (1,1,NULL);

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;

CREATE TABLE `tipo_usuario` (
  `id_tipo_usuario` int(11) NOT NULL,
  `tipo_usuario` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipo_usuario`)
);


--
-- Dumping data for table `tipo_usuario`
--

INSERT INTO `tipo_usuario` VALUES (1,'Administrador');
INSERT INTO `tipo_usuario` VALUES (2,'Cajero');













CREATE VIEW `DescuentosDisponibles` AS
    SELECT 
        `desc_lote`.`id_lote` AS `id_lote`,
        `d`.`id_descuento` AS `id_descuento`,
        `d`.`descripcion` AS `descripcion`,
        `d`.`porcentaje` AS `porcentaje`,
        `desc_lote`.`fecha_fin` AS `fecha_fin`,
        `desc_lote`.`fecha_inicio` AS `fecha_inicio`
    FROM
        (`descuento_lote` `desc_lote`
        JOIN `descuento` `d` ON ((`desc_lote`.`id_descuento` = `d`.`id_descuento`)))
    WHERE
        (((`desc_lote`.`estado` = 'I')
            AND (`desc_lote`.`fecha_inicio` <= CURDATE())
            AND (CURDATE() < `desc_lote`.`fecha_fin`))
            OR ((`desc_lote`.`estado` = 'A')
            AND (`desc_lote`.`fecha_inicio` <= CURDATE())));




 CREATE VIEW `IngresoLote` AS
    (SELECT 
        `dm`.`id_lote` AS `id_lote`,
        SUM(`dm`.`cantidad`) AS `total_ingresado`
    FROM
        (`detalle_movimiento` `dm`
        JOIN `movimiento_producto` `mp` ON ((`dm`.`id_movimiento` = `mp`.`id_movimiento`)))
    WHERE
        (`mp`.`tipo_movimiento` = 'A')
    GROUP BY `dm`.`id_lote`);



CREATE VIEW `VentaLote` AS
    (SELECT 
        `detalle_factura`.`id_lote` AS `id_lote`,
        SUM(`detalle_factura`.`cantidad`) AS `total_vendido`
    FROM
        `detalle_factura`
    GROUP BY `detalle_factura`.`id_lote`);

 

CREATE VIEW `VistaTelefonoCliente` AS
    SELECT 
        `c`.`id_cliente` AS `id_cliente`,
        `p`.`id_persona` AS `id_persona`,
        `tf`.`id_telefono` AS `id_telefono`,
        `tf`.`telefono` AS `telefono`
    FROM
        (((`telefono_persona` `tp`
        JOIN `persona` `p` ON ((`p`.`id_persona` = `tp`.`id_persona`)))
        JOIN `cliente` `c` ON ((`c`.`id_persona` = `p`.`id_persona`)))
        JOIN `telefono` `tf` ON ((`tf`.`id_telefono` = `tp`.`id_telefono`)))
    ORDER BY `c`.`id_cliente`;


CREATE VIEW `VistaTelefonoClienteAgrupado` AS
    SELECT 
        `VistaTelefonoCliente`.`id_cliente` AS `id_cliente`,
        (CASE COUNT(0)
            WHEN 1 THEN `VistaTelefonoCliente`.`telefono`
            ELSE GROUP_CONCAT(`VistaTelefonoCliente`.`telefono`, ' '
                SEPARATOR '/ ')
        END) AS `telefonos`
    FROM
        `VistaTelefonoCliente`
    GROUP BY `VistaTelefonoCliente`.`id_cliente`;




CREATE VIEW `VistaClientes` AS
    SELECT 
        `cli`.`id_cliente` AS `id_cliente`,
        `per`.`numero_identidad` AS `numero_identidad`,
        `per`.`primer_nombre` AS `primer_nombre`,
        `per`.`segundo_nombre` AS `segundo_nombre`,
        `per`.`primer_apellido` AS `primer_apellido`,
        `per`.`segundo_apellido` AS `segundo_apellido`,
        `per`.`sexo` AS `sexo`,
        `per`.`fecha_nacimiento` AS `fecha_nacimiento`,
        `cli`.`fecha_registro` AS `fecha_registro`,
        `cli`.`id_persona` AS `id_persona`,
        (CASE
            WHEN ISNULL(`per`.`direccion`) THEN ''
            ELSE `per`.`direccion`
        END) AS `direccion`,
        (SELECT 
                `VistaTelefonoClienteAgrupado`.`telefonos`
            FROM
                `VistaTelefonoClienteAgrupado`
            WHERE
                (`VistaTelefonoClienteAgrupado`.`id_cliente` = `cli`.`id_cliente`)) AS `telefonos`
    FROM
        (`cliente` `cli`
        JOIN `persona` `per` ON ((`cli`.`id_persona` = `per`.`id_persona`)))
    ORDER BY `cli`.`id_cliente`;


CREATE VIEW `VistaEmpleado` AS
    SELECT 
        `p`.`id_persona` AS `id_persona`,
        `e`.`id_empleado` AS `id_empleado`,
        `e`.`usuario` AS `usuario`,
        `p`.`correo_electronico` AS `correo_electronico`,
        `e`.`fecha_ingreso` AS `fecha_ingreso`,
        `p`.`sexo` AS `sexo`,
        `p`.`fecha_nacimiento` AS `fecha_nacimiento`,
        `p`.`numero_identidad` AS `numero_identidad`,
        `e`.`foto_url` AS `foto_url`,
        `e`.`estado` AS `estado`,
        `p`.`primer_nombre` AS `primer_nombre`,
        COALESCE(`p`.`segundo_nombre`, '') AS `segundo_nombre`,
        `p`.`primer_apellido` AS `primer_apellido`,
        COALESCE(`p`.`segundo_apellido`, '') AS `segundo_apellido`,
        `p`.`direccion` AS `direccion`,
        CONCAT(`p`.`primer_nombre`,
                (CASE
                    WHEN ISNULL(`p`.`segundo_nombre`) THEN ''
                    ELSE CONCAT(' ', `p`.`segundo_nombre`)
                END)) AS `nombres`,
        CONCAT(`p`.`primer_apellido`,
                (CASE
                    WHEN ISNULL(`p`.`segundo_apellido`) THEN ''
                    ELSE CONCAT(' ', `p`.`segundo_apellido`)
                END)) AS `apellidos`,
        CONCAT(CONCAT(`p`.`primer_nombre`,
                        (CASE
                            WHEN ISNULL(`p`.`segundo_nombre`) THEN ''
                            ELSE CONCAT(' ', `p`.`segundo_nombre`)
                        END)),
                ' ',
                CONCAT(`p`.`primer_apellido`,
                        (CASE
                            WHEN ISNULL(`p`.`segundo_apellido`) THEN ''
                            ELSE CONCAT(' ', `p`.`segundo_apellido`)
                        END))) AS `nombre_completo`,
        (SELECT 
                GROUP_CONCAT(`p`.`pantalla`
                        SEPARATOR ',')
            FROM
                (`pantalla_tipo_usuario` `ptu`
                JOIN `pantalla` `p` ON ((`ptu`.`id_pantalla` = `p`.`id_pantalla`)))
            WHERE
                (`ptu`.`id_tipo_usuario` = `e`.`id_tipo_usuario`)) AS `permisos`,
        `e`.`id_tipo_usuario` AS `id_tipo_usuario`,
        (SELECT 
                `tipo_usuario`.`tipo_usuario`
            FROM
                `tipo_usuario`
            WHERE
                (`tipo_usuario`.`id_tipo_usuario` = `e`.`id_tipo_usuario`)) AS `tipo_usuario`,
        (SELECT 
                GROUP_CONCAT(`t`.`telefono`, ''
                        SEPARATOR ',') AS `telefono`
            FROM
                (`telefono_persona` `tel_per`
                JOIN `telefono` `t` ON ((`tel_per`.`id_telefono` = `t`.`id_telefono`)))
            WHERE
                (`tel_per`.`id_persona` = `p`.`id_persona`)
            GROUP BY `tel_per`.`id_persona`) AS `telefono`
    FROM
        (`persona` `p`
        JOIN `empleado` `e` ON ((`p`.`id_persona` = `e`.`id_persona`)));






DELIMITER ;;
CREATE   FUNCTION `FN_Obtener_Impuesto`(

  pI_id_lote INT,

  pI_fecha_factura DATE

) RETURNS int(11)
SP:BEGIN

DECLARE var_id_impuesto INT;

SET var_id_impuesto := 0;



SELECT id_impuesto INTO var_id_impuesto FROM impuesto

  WHERE id_impuesto =  (

    SELECT

      id_impuesto

    FROM impuesto_producto

    WHERE

      (id_producto = (SELECT id_producto FROM lote WHERE id_lote = pI_id_lote))

      AND (

        (estado = 'I' AND fecha_inicio <= pI_fecha_factura AND pI_fecha_factura < fecha_fin )

        OR (estado = 'A' AND fecha_inicio <= pI_fecha_factura)

      )

);



RETURN var_id_impuesto;

END ;;
DELIMITER ;
CREATE VIEW `VistaDetalleFactura` AS
    SELECT 
        `f`.`id_farmacia` AS `id_farmacia`,
        `f`.`id_factura` AS `id_factura`,
        `f`.`fecha_hora` AS `fecha_hora`,
        `f`.`id_empleado` AS `id_empleado`,
        (SELECT 
                `VistaEmpleado`.`nombre_completo`
            FROM
                `VistaEmpleado`
            WHERE
                (`VistaEmpleado`.`id_empleado` = `f`.`id_empleado`)) AS `empleado`,
        `f`.`id_cliente` AS `id_cliente`,
        `f`.`id_forma_pago` AS `id_forma_pago`,
        (SELECT 
                `forma_pago`.`descripcion`
            FROM
                `forma_pago`
            WHERE
                (`forma_pago`.`id_forma_pago` = `f`.`id_forma_pago`)) AS `forma_pago`,
        CONCAT(`vcli`.`primer_nombre`,
                ' ',
                `vcli`.`primer_apellido`) AS `cliente`,
        `vcli`.`telefonos` AS `telefonos`,
        `vcli`.`numero_identidad` AS `numero_identidad`,
        (SELECT 
                `lote`.`id_producto`
            FROM
                `lote`
            WHERE
                (`lote`.`id_lote` = `det_fact`.`id_lote`)) AS `id_producto`,
        (SELECT 
                `producto`.`codigo_barra`
            FROM
                `producto`
            WHERE
                (`producto`.`id_producto` = (SELECT 
                        `lote`.`id_producto`
                    FROM
                        `lote`
                    WHERE
                        (`lote`.`id_lote` = `det_fact`.`id_lote`)))) AS `codigo_barra`,
        (SELECT 
                `producto`.`nombre`
            FROM
                `producto`
            WHERE
                (`producto`.`id_producto` = (SELECT 
                        `lote`.`id_producto`
                    FROM
                        `lote`
                    WHERE
                        (`lote`.`id_lote` = `det_fact`.`id_lote`)))) AS `nombre_producto`,
        (SELECT 
                `presentacion`.`presentacion`
            FROM
                `presentacion`
            WHERE
                (`presentacion`.`id_presentacion` = (SELECT 
                        `producto`.`id_presentacion`
                    FROM
                        `producto`
                    WHERE
                        (`producto`.`id_producto` = (SELECT 
                                `lote`.`id_producto`
                            FROM
                                `lote`
                            WHERE
                                (`lote`.`id_lote` = `det_fact`.`id_lote`)))))) AS `presentacion`,
        `l`.`id_lote` AS `id_lote`,
        `l`.`lote` AS `lote`,
        `det_fact`.`cantidad` AS `cantidad`,
        `l`.`precio_venta_unidad` AS `precio_unitario`,
        ROUND(((`det_fact`.`cantidad` * `l`.`precio_venta_unidad`) * (SELECT 
                        (`impuesto`.`porcentaje` / 100)
                    FROM
                        `impuesto`
                    WHERE
                        (`impuesto`.`id_impuesto` = (SELECT FN_OBTENER_IMPUESTO(`det_fact`.`id_lote`, `f`.`fecha_hora`))))),
                2) AS `impuesto`,
        (SELECT 
                `impuesto`.`porcentaje`
            FROM
                `impuesto`
            WHERE
                (`impuesto`.`id_impuesto` = (SELECT FN_OBTENER_IMPUESTO(`det_fact`.`id_lote`, `f`.`fecha_hora`)))) AS `porcentaje_impuesto`,
        ROUND((`det_fact`.`cantidad` * `l`.`precio_venta_unidad`),
                2) AS `sub_total`,
        `det_fact`.`id_descuento` AS `id_descuento`,
        COALESCE((SELECT 
                        `descuento`.`porcentaje`
                    FROM
                        `descuento`
                    WHERE
                        (`descuento`.`id_descuento` = `det_fact`.`id_descuento`)),
                0) AS `porcentaje_descuento`,
        ROUND(((((`det_fact`.`cantidad` * `l`.`precio_venta_unidad`) * (SELECT 
                        (1 + (`impuesto`.`porcentaje` / 100))
                    FROM
                        `impuesto`
                    WHERE
                        (`impuesto`.`id_impuesto` = (SELECT FN_OBTENER_IMPUESTO(`det_fact`.`id_lote`, `f`.`fecha_hora`))))) * (100 - COALESCE((SELECT 
                                `descuento`.`porcentaje`
                            FROM
                                `descuento`
                            WHERE
                                (`descuento`.`id_descuento` = `det_fact`.`id_descuento`)),
                        0))) / 100),
                2) AS `precio_total`,
        ROUND((((`det_fact`.`cantidad` * `l`.`precio_venta_unidad`) * COALESCE((SELECT 
                                `descuento`.`porcentaje`
                            FROM
                                `descuento`
                            WHERE
                                (`descuento`.`id_descuento` = `det_fact`.`id_descuento`)),
                        0)) / 100),
                2) AS `descuento`
    FROM
        (((`detalle_factura` `det_fact`
        JOIN `factura` `f` ON ((`det_fact`.`id_factura` = `f`.`id_factura`)))
        JOIN `lote` `l` ON ((`det_fact`.`id_lote` = `l`.`id_lote`)))
        JOIN `VistaClientes` `vcli` ON ((`f`.`id_cliente` = `vcli`.`id_cliente`)));









 CREATE VIEW `VistaFacturas` AS
    SELECT 
        `f`.`id_factura` AS `id_factura`,
        `f`.`fecha_hora` AS `fecha_factura`,
        `totales`.`total` AS `total`,
        `f`.`id_empleado` AS `id_empleado`,
        (SELECT 
                `VistaEmpleado`.`nombre_completo`
            FROM
                 `VistaEmpleado`
            WHERE
                (`VistaEmpleado`.`id_empleado` = `f`.`id_empleado`)) AS `empleado`,
        `f`.`id_cliente` AS `id_cliente`,
        (SELECT 
                CONCAT(`VistaClientes`.`primer_nombre`,
                            ' ',
                            `VistaClientes`.`primer_apellido`)
            FROM
                 `VistaClientes`
            WHERE
                (`VistaClientes`.`id_cliente` = `f`.`id_cliente`)) AS `cliente`,
        `f`.`id_forma_pago` AS `id_forma_pago`,
        (SELECT 
                 `forma_pago`.`descripcion`
            FROM
                 `forma_pago`
            WHERE
                (`f`.`id_forma_pago` =  `forma_pago`.`id_forma_pago`)) AS `forma_pago`
    FROM
        ( `factura` `f`
        JOIN (SELECT 
            `vdf`.`id_factura` AS `id_factura`,
                ROUND(SUM(`vdf`.`precio_total`), 2) AS `total`
        FROM
             `VistaDetalleFactura` `vdf`
        GROUP BY `vdf`.`id_factura`) `totales` ON ((`f`.`id_factura` = `totales`.`id_factura`)))
    ORDER BY `fecha_factura` DESC;

CREATE VIEW `VistaInventarioMercaderia` AS
    SELECT 
        `l`.`id_lote` AS `id_lote`,
        `l`.`id_producto` AS `id_producto`,
        `l`.`lote` AS `lote`,
        `l`.`precio_costo_unidad` AS `precio_costo_unidad`,
        `l`.`precio_venta_unidad` AS `precio_venta_unidad`,
        `l`.`fecha_elaboracion` AS `fecha_elaboracion`,
        `l`.`fecha_vecimiento` AS `fecha_vecimiento`,
        `l`.`estado` AS `estado_lote`,
        `l`.`existencia` AS `existencia`,
        `p`.`id_presentacion` AS `id_presentacion`,
        (SELECT 
                `pre`.`presentacion`
            FROM
                 `presentacion` `pre`
            WHERE
                (`p`.`id_presentacion` = `pre`.`id_presentacion`)) AS `presentacion`,
        `p`.`nombre` AS `nombre`,
        `p`.`codigo_barra` AS `codigo_barra`,
        `p`.`url_foto` AS `url_foto`,
        (SELECT 
                 `laboratorio`.`nombre_laboratorio`
            FROM
                 `laboratorio`
            WHERE
                ( `laboratorio`.`id_laboratorio` = (SELECT 
                        `m`.`id_laboratorio`
                    FROM
                         `medicamentos` `m`
                    WHERE
                        (`m`.`id_producto` = `l`.`id_producto`)))) AS `laboratorio`,
        (SELECT 
                GROUP_CONCAT( `categoria_producto`.`id_categoria`
                        SEPARATOR ',')
            FROM
                 `categoria_producto`
            WHERE
                ( `categoria_producto`.`id_producto` = `l`.`id_producto`)
            GROUP BY  `categoria_producto`.`id_producto`) AS `id_categoria`,
        (SELECT 
                 `laboratorio`.`id_laboratorio`
            FROM
                 `laboratorio`
            WHERE
                ( `laboratorio`.`id_laboratorio` = (SELECT 
                        `m`.`id_laboratorio`
                    FROM
                         `medicamentos` `m`
                    WHERE
                        (`m`.`id_producto` = `l`.`id_producto`)))) AS `id_laboratorio`,
        (SELECT 
                GROUP_CONCAT(`c`.`categoria`, ''
                        SEPARATOR ',') AS `categoria`
            FROM
                ( `categoria_producto` `cat_prod`
                JOIN  `categoria` `c` ON ((`cat_prod`.`id_categoria` = `c`.`id_categoria`)))
            WHERE
                (`cat_prod`.`id_producto` = `p`.`id_producto`)
            GROUP BY `cat_prod`.`id_producto`) AS `categoria`,
        `imp_disp`.`id_impuesto` AS `id_impuesto`,
        `imp_disp`.`descripcion` AS `descripcion_impuesto`,
        `imp_disp`.`porcentaje` AS `porcentaje_impuesto`,
        (SELECT 
                COUNT(0)
            FROM
                 `DescuentosDisponibles` `desc_disp`
            WHERE
                (`desc_disp`.`id_lote` = `l`.`id_lote`)) AS `tiene_descuento`,
        (SELECT 
                `desc_disp`.`id_descuento`
            FROM
                 `DescuentosDisponibles` `desc_disp`
            WHERE
                (`desc_disp`.`id_lote` = `l`.`id_lote`)) AS `id_descuento`,
        (SELECT 
                `desc_disp`.`descripcion`
            FROM
                 `DescuentosDisponibles` `desc_disp`
            WHERE
                (`desc_disp`.`id_lote` = `l`.`id_lote`)) AS `descripcion_descuento`,
        COALESCE((SELECT 
                        `desc_disp`.`porcentaje`
                    FROM
                         `DescuentosDisponibles` `desc_disp`
                    WHERE
                        (`desc_disp`.`id_lote` = `l`.`id_lote`)),
                0) AS `porcentaje_descuento`,
        (SELECT 
                `desc_disp`.`fecha_inicio`
            FROM
                 `DescuentosDisponibles` `desc_disp`
            WHERE
                (`desc_disp`.`id_lote` = `l`.`id_lote`)) AS `fecha_inicio_descuento`,
        (SELECT 
                `desc_disp`.`fecha_fin`
            FROM
                 `DescuentosDisponibles` `desc_disp`
            WHERE
                (`desc_disp`.`id_lote` = `l`.`id_lote`)) AS `fecha_fin_descuento`
    FROM
        (( `lote` `l`
        JOIN  `producto` `p` ON ((`l`.`id_producto` = `p`.`id_producto`)))
        JOIN (SELECT 
            `i`.`id_impuesto` AS `id_impuesto`,
                `i`.`descripcion` AS `descripcion`,
                `i`.`porcentaje` AS `porcentaje`,
                `imp_prod`.`id_producto` AS `id_producto`
        FROM
            ( `impuesto_producto` `imp_prod`
        JOIN  `impuesto` `i` ON ((`imp_prod`.`id_impuesto` = `i`.`id_impuesto`)))
        WHERE
            ((`imp_prod`.`fecha_inicio` <= CURDATE())
                AND (`imp_prod`.`estado` = 'A'))) `imp_disp` ON ((`imp_disp`.`id_producto` = `p`.`id_producto`)))
    WHERE
        (`l`.`estado` = 'A')
    ORDER BY `p`.`id_producto` , `l`.`id_lote`;


CREATE VIEW `VistaInventarioMercaderiaDinamica` AS
    SELECT 
        `p`.`codigo_barra` AS `codigo_barra`,
        `l`.`id_producto` AS `id_producto`,
        `l`.`id_lote` AS `id_lote`,
        `l`.`lote` AS `lote`,
        `le`.`existencia` AS `existencia`,
        `p`.`nombre` AS `producto`,
        `p2`.`presentacion` AS `presentacion`,
        `p`.`url_foto` AS `url_foto`,
        `l`.`precio_costo_unidad` AS `precio_costo_unidad`,
        `l`.`precio_venta_unidad` AS `precio_venta_unidad`,
        `l`.`fecha_elaboracion` AS `fecha_elaboracion`,
        `l`.`fecha_vecimiento` AS `fecha_vecimiento`
    FROM
        (((`LoteExistencia` `le`
        JOIN `lote` `l` ON ((`le`.`id_lote` = `l`.`id_lote`)))
        JOIN `producto` `p` ON ((`l`.`id_producto` = `p`.`id_producto`)))
        JOIN `presentacion` `p2` ON ((`p`.`id_presentacion` = `p2`.`id_presentacion`)))
    WHERE
        (`l`.`fecha_vecimiento` > CURDATE())
    ORDER BY `p`.`nombre` , `p2`.`presentacion` , `l`.`fecha_vecimiento`;



CREATE VIEW `VistaProducto` AS
    SELECT 
        `pro`.`id_producto` AS `id_producto`,
        `pro`.`id_presentacion` AS `id_presentacion`,
        `pro`.`nombre` AS `nombre`,
        `pro`.`codigo_barra` AS `codigo_barra`,
        `pro`.`url_foto` AS `url_foto`,
        `pro`.`estado` AS `estado`,
        `imp_disp`.`id_impuesto` AS `id_impuesto`,
        `imp_disp`.`descripcion` AS `descripcion`,
        `imp_disp`.`porcentaje` AS `porcentaje`,
        `imp_disp`.`producto` AS `producto`,
        (SELECT 
                 `presentacion`.`presentacion`
            FROM
                 `presentacion`
            WHERE
                (`pro`.`id_presentacion` =  `presentacion`.`id_presentacion`)) AS `presentacion`,
        (CASE
            WHEN
                (`pro`.`id_producto` IN (SELECT 
                         `medicamentos`.`id_producto`
                    FROM
                         `medicamentos`) = TRUE)
            THEN
                (SELECT 
                         `laboratorio`.`nombre_laboratorio`
                    FROM
                         `laboratorio`
                    WHERE
                        ( `laboratorio`.`id_laboratorio` = (SELECT 
                                 `medicamentos`.`id_laboratorio`
                            FROM
                                 `medicamentos`
                            WHERE
                                ( `medicamentos`.`id_producto` = `pro`.`id_producto`))))
            ELSE ''
        END) AS `laboratorio`,
        (CASE
            WHEN
                (`pro`.`id_producto` IN (SELECT 
                         `medicamentos`.`id_producto`
                    FROM
                         `medicamentos`) = TRUE)
            THEN
                (SELECT 
                         `laboratorio`.`id_laboratorio`
                    FROM
                         `laboratorio`
                    WHERE
                        ( `laboratorio`.`id_laboratorio` = (SELECT 
                                 `medicamentos`.`id_laboratorio`
                            FROM
                                 `medicamentos`
                            WHERE
                                ( `medicamentos`.`id_producto` = `pro`.`id_producto`))))
            ELSE ''
        END) AS `id_laboratorio`,
        (SELECT 
                GROUP_CONCAT(`cat_prod`.`id_categoria`, ''
                        SEPARATOR ',') AS `categoria`
            FROM
                 `categoria_producto` `cat_prod`
            WHERE
                (`cat_prod`.`id_producto` = `pro`.`id_producto`)
            GROUP BY `cat_prod`.`id_producto`) AS `categoria`,
        (CASE
            WHEN
                (SELECT 
                         `medicamentos`.`id_producto`
                    FROM
                         `medicamentos`
                    WHERE
                        ( `medicamentos`.`id_producto` = `pro`.`id_producto`))
            THEN
                'M'
            ELSE 'P'
        END) AS `es_medicamento`,
        `imp_disp`.`descripcion` AS `descripcion_impuesto`,
        `imp_disp`.`porcentaje` AS `porcentaje_impuesto`
    FROM
        ( `producto` `pro`
        JOIN (SELECT 
            `i`.`id_impuesto` AS `id_impuesto`,
                `i`.`descripcion` AS `descripcion`,
                `i`.`porcentaje` AS `porcentaje`,
                `imp_prod`.`id_producto` AS `producto`
        FROM
            ( `impuesto_producto` `imp_prod`
        JOIN  `impuesto` `i` ON ((`imp_prod`.`id_impuesto` = `i`.`id_impuesto`)))
        WHERE
            ((`imp_prod`.`fecha_inicio` <= CURDATE())
                AND (`imp_prod`.`estado` = 'A'))) `imp_disp` ON ((`imp_disp`.`producto` = `pro`.`id_producto`)));

DELIMITER ;;
CREATE  FUNCTION `FN_Split_Str`(
  x VARCHAR(255),
  delim VARCHAR(12),
  pos INT
) RETURNS varchar(255) CHARSET utf8
RETURN REPLACE(SUBSTRING(SUBSTRING_INDEX(x, delim, pos),
       LENGTH(SUBSTRING_INDEX(x, delim, pos -1)) + 1),
       delim, '');;

DELIMITER ;








CREATE VIEW `VistaProductosVencidos` AS
    SELECT 
        `p`.`codigo_barra` AS `codigo_barra`,
        `l`.`id_producto` AS `id_producto`,
        `l`.`id_lote` AS `id_lote`,
        `l`.`lote` AS `lote`,
        `le`.`existencia` AS `existencia`,
        `p`.`nombre` AS `producto`,
        `p2`.`presentacion` AS `presentacion`,
        `p`.`url_foto` AS `url_foto`,
        `l`.`precio_costo_unidad` AS `precio_costo_unidad`,
        `l`.`precio_venta_unidad` AS `precio_venta_unidad`,
        `l`.`fecha_elaboracion` AS `fecha_elaboracion`,
        `l`.`fecha_vecimiento` AS `fecha_vecimiento`
    FROM
        (((`LoteExistencia` `le`
        JOIN `lote` `l` ON ((`le`.`id_lote` = `l`.`id_lote`)))
        JOIN `producto` `p` ON ((`l`.`id_producto` = `p`.`id_producto`)))
        JOIN `presentacion` `p2` ON ((`p`.`id_presentacion` = `p2`.`id_presentacion`)))
    WHERE
        ((`l`.`fecha_vecimiento` <= CURDATE())
            AND (NOT (`le`.`id_lote` IN (SELECT 
                `dm`.`id_lote`
            FROM
                (`detalle_movimiento` `dm`
                JOIN `movimiento_producto` `mp` ON ((`dm`.`id_movimiento` = `mp`.`id_movimiento`)))
            WHERE
                (`mp`.`tipo_movimiento` = 'R')))));




DELIMITER ;;
CREATE   PROCEDURE `SP_Actualizar_Categoria`(
        IN pI_id_categoria INTEGER(11),
        IN pI_categoria VARCHAR(45),
        IN pI_estado VARCHAR(1),

        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN
)
SP:BEGIN
    -- Declaraciones
    DECLARE mensaje VARCHAR(255);
    DECLARE contador INTEGER;
    DECLARE error BOOLEAN;
    DECLARE uEstado VARCHAR(1);
    -- Inicializaciones
    SET mensaje='';
    SET contador = 0;
    SET error= FALSE;

    -- _______________________VALIDACION_____________________________________
    -- Verificaciones de campos obligatorios que no esten vacios
    IF pI_id_categoria='' OR pI_id_categoria IS NULL THEN 
      SET mensaje=CONCAT(mensaje, 'Identificador de categoria vacio, ');
    ELSE
      SELECT COUNT(*) INTO contador
      FROM categoria
      WHERE id_categoria= pI_id_categoria;

      IF contador=0 THEN
        SET mensaje = CONCAT(mensaje, 'La categoria no existe, ');
      END IF;
    END IF;

    IF pI_categoria='' OR pI_categoria IS NULL THEN 
      SET mensaje=CONCAT(mensaje, ' Categoria vacia, ');
    END IF;
    
    IF mensaje <> '' THEN
      SET error=TRUE;
      SET pO_mensaje=mensaje;
      SET pO_error=error;
      SELECT mensaje,error;
      LEAVE SP;
    END IF;  

    
    -- verificar categoria valida para actualizacion
    SELECT COUNT(*) INTO contador FROM categoria
    WHERE id_categoria=pI_id_categoria AND pI_categoria = categoria; 
    IF contador=0 THEN
      SELECT COUNT(*) INTO contador FROM categoria
      WHERE id_categoria<>pI_id_categoria AND pI_categoria = categoria; 
      IF contador>=1 THEN 
        SET mensaje=CONCAT(mensaje,'La categoria a actualizar ya existe, ');
      END IF;  
    END IF;

    IF NOT(pI_estado='' OR   pI_estado IS NULL) THEN
     IF NOT(pI_estado='A' OR pI_estado='I') THEN
       SET mensaje=CONCAT(mensaje, 'Estado Invalido, ');
     ELSE
       SET uEstado=pI_estado;
	   END IF;
   ELSE
       SELECT estado INTO uEstado FROM categoria WHERE id_categoria=pI_id_categoria;
   END IF;

    IF mensaje <> '' THEN
      SET error=TRUE;
      SET pO_mensaje=mensaje;
      SET pO_error=error;
      SELECT mensaje,error;
      LEAVE SP;
    END IF;  

    UPDATE categoria 
        SET 
            categoria = pI_categoria,
            estado =uEstado
        WHERE 
            id_categoria= pI_id_categoria;

    UPDATE categoria_producto SET estado=uEstado WHERE id_categoria=pI_id_categoria;
    COMMIT;
    SET mensaje= 'Actualización exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje,error;
END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Actualizar_Descuento`(
   pI_id_descuento INTEGER(11),
   pI_descripcion VARCHAR(45),
   pI_porcentaje INTEGER(11),
   pI_estado VARCHAR(1),
   -- pI_fecha_inicio DATE,
   pI_fecha_fin DATE,

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
SP:BEGIN

   -- Declaraciones
   DECLARE mensaje VARCHAR(1000);
   DECLARE error BOOLEAN;
   DECLARE contador INT;
   DECLARE uEstado VARCHAR(1);

   -- Inicializaciones
   SET AUTOCOMMIT=0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;
   -- _______________Validaciones__________________

   IF pI_id_descuento='' OR pI_id_descuento IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Codigo de descuento Vacio, ");
   ELSE 
     SELECT COUNT(*) INTO contador
     FROM descuento
     WHERE id_descuento= pI_id_descuento;

     IF contador=0 THEN 
       SET mensaje=CONCAT(mensaje,"Este descuento no existe, ");
     END IF;
   END IF;

   IF pI_descripcion='' OR pI_descripcion IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Descripcion vacia, ");
   END IF;

   IF pI_porcentaje='' OR pI_porcentaje IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Porcentaje de descuento Vacio",", ");
   END IF;

  --  IF pI_fecha_inicio='' OR pI_fecha_inicio IS NULL THEN
  --    SET mensaje=CONCAT(mensaje,"Fecha de inicio Vacia, ");
  --  END IF;

   IF pI_fecha_fin='' OR pI_fecha_fin IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Fecha fin vacia, ");
   END IF;
   
   
    -- ____________Mensaje de resultado____________
   IF mensaje <> '' THEN
     SET error=TRUE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
     LEAVE SP;
   END IF;

   -- _________Cuerpo del SP__________
   IF NOT(pI_estado='' OR   pI_estado IS NULL) THEN
     IF NOT(pI_estado='A' OR pI_estado='I') THEN
       SET mensaje=CONCAT(mensaje, 'Estado Invalido, ');
     ELSE
       SET uEstado=pI_estado;
	   END IF;
   ELSE
       SELECT estado INTO uEstado FROM descuento WHERE id_descuento=pI_id_descuento;
   END IF;

   IF pI_fecha_fin <= CURDATE() THEN
      SET mensaje=CONCAT(mensaje,'Fecha de fin invalida, fecha menor o igual que la actual, ');
   END IF;

  --  IF pI_fecha_inicio < CURDATE() THEN
  --     SET mensaje=CONCAT(mensaje,'Fecha de inicio invalida, fecha menor que la actual, ');
  --  END IF;

  --  IF pI_fecha_inicio >= pI_fecha_fin THEN
  --    SET mensaje = CONCAT(mensaje, 'Fecha de fin inválida, fecha inicio descuento mayor o igual que fecha de inicio, ');
  --  END IF;

   -- verificar descuento valido para actualizacion
    SELECT COUNT(*) INTO contador FROM descuento
    WHERE id_descuento=pI_id_descuento AND pI_descripcion = descripcion; 
    IF contador=0 THEN
      SELECT COUNT(*) INTO contador FROM descuento
      WHERE id_descuento<>pI_id_descuento AND pI_descripcion = descripcion; 
      IF contador>=1 THEN 
        SET mensaje=CONCAT(mensaje,'El descuento a actualizar ya existe, ');
      END IF;  
    END IF;

   -- ____________Mensaje de resultado____________
   IF mensaje <> '' THEN
     SET error=TRUE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
     LEAVE SP;
   END IF;

   -- _______________SQL Statements_______________
   UPDATE descuento
      SET
         descripcion = pI_descripcion,
         porcentaje = pI_porcentaje,
         estado = uEstado,
        --  fecha_inicio = pI_fecha_inicio,
         fecha_fin = pI_fecha_fin
      WHERE
         id_descuento=pI_id_descuento;
   COMMIT;

   SET mensaje= 'Actualización exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Actualizar_Empleado`(
    IN pI_id_empleado INTEGER(11),
    IN pI_primer_nombre VARCHAR(50),
    IN pI_segundo_nombre VARCHAR(50),
    IN pI_primer_apellido VARCHAR(50),
    IN pI_segundo_apellido VARCHAR(50),
    IN pI_sexo VARCHAR(1),
    IN pI_direccion VARCHAR(300),
    IN pI_correo_electronico VARCHAR(100),
    IN pI_numero_identidad VARCHAR(13),
    IN pI_fecha_nacimiento DATE,
    IN pI_telefono VARCHAR(50),
    IN pI_telefono_antiguo VARCHAR(50),
    -- employee fields
    IN pI_fecha_ingreso DATE,
    IN pI_usuario VARCHAR(50),
    -- IN pI_contrasena VARCHAR(128), --no borrar por si se ocupa en el futuro
    IN pI_foto_url VARCHAR(100),
    IN pI_estado VARCHAR(1),
    IN pI_id_tipo_usuario INT(11),
    
    OUT pO_mensaje VARCHAR(1000),
    OUT pO_error BOOLEAN
)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);
    DECLARE contador INTEGER(20);
    DECLARE error BOOLEAN;
    DECLARE idPersona INT(11);
    DECLARE uEstado VARCHAR(1);

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    SET mensaje = '';
    SET contador =0;
    SET error=FALSE;
    SET uEstado='A';
   -- ___________________________VALIDACIONES__________________________________________________________
   -- verificacion campos persona
   -- CALL SP_Actualizar_Persona(pI_id_persona, "pI_primer_nombre", "pI_segundo_nombre" ,"pI_primer_apellido" ,"pI_segundo_apellido ", "pI_sexo" ,
   --                            "pI_direccion" ,"pI_correo_electronico" ,"pI_numero_identidad" ,@mensaje, @error);
    
    -- Verificaciones de campos obligatorios que no esten vacios
    -- employee registers
    IF pI_id_empleado='' OR pI_id_empleado IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador de empleado vacio, ');
    END IF;
    IF pI_fecha_ingreso='' OR pI_fecha_ingreso IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Fecha de ingreso vacia, ');
    END IF;
    IF pI_usuario='' OR pI_usuario IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Usuario vacio, ');
    END IF;
    -- No borrar por si se ocupa en el futuro
    -- IF pI_contrasena='' OR pI_contrasena IS NULL THEN 
    --     SET mensaje=CONCAT(mensaje, 'contrasena, ');
    -- END IF;

     IF pI_direccion='' OR pI_direccion IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Direccion vacia, ');
     END IF;

     IF pI_correo_electronico='' OR pI_correo_electronico IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Correo electronico vacio, ');
     END IF;

     IF pI_fecha_nacimiento='' OR pI_fecha_nacimiento IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Fecha de nacimiento vacia, ');
     END IF;

    IF NOT(pI_estado='' OR pI_estado IS NULL) THEN 
        IF NOT( pI_estado = 'A' OR pI_estado = 'I' ) THEN
          SET mensaje=CONCAT(mensaje,'Estado invalido, ');
        ELSE
            SET uEstado=pI_estado;
        END IF;
    END IF;

    IF pI_telefono_antiguo='' OR pI_telefono_antiguo IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Telefono antiguo vacio, ');
    ELSE
       IF( pI_telefono_antiguo REGEXP'^(2|3|6|7|8|9){1}[0-9]{3}-[0-9]{4}$')=0 THEN
             SET mensaje=CONCAT(mensaje,'Formato del telefono antiguo invalido, ');
       END IF;
    END IF;

    IF pI_telefono='' OR pI_telefono IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Telefono a actualizar vacio, ');
    ELSE
       IF( pI_telefono REGEXP'^(2|3|6|7|8|9){1}[0-9]{3}-[0-9]{4}$')=0 THEN
             SET mensaje=CONCAT(mensaje,'Formato del telefono a actualizar invalido, ');
       END IF;
    END IF;
  
	-- _________________________CUERPO DEL PL___________________________________________
    -- update n Commit
	-- verify employee registers
    SELECT COUNT(*) INTO contador
    FROM empleado
    WHERE pI_id_empleado = empleado.id_empleado;

    IF contador=0 THEN  
        SET mensaje = CONCAT(mensaje, 'El empleado no existe, ');
    END IF;

	
    IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        -- SELECT mensaje, resultado;, usar para salida de parametros en caso de no utilizar
        -- parametros de salida
        LEAVE SP;
    END IF;


    IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        -- SELECT mensaje, resultado;, usar para salida de parametros en caso de no utilizar
        -- parametros de salida
        LEAVE SP;
    END IF;

    SELECT COUNT(*) INTO contador FROM empleado
    WHERE empleado.id_empleado=pI_id_empleado AND pI_usuario = empleado.usuario; 
    IF contador=0 THEN
      SELECT COUNT(*) INTO contador FROM empleado
      WHERE empleado.usuario=pI_usuario AND empleado.id_empleado<>pI_id_empleado;
      IF contador>=1 THEN
          SET mensaje='El usuario a actualizar ya existe';
          SET error=TRUE;
          SET pO_mensaje=mensaje;
          SET pO_error=error;
          SELECT mensaje,error;
          LEAVE SP;
      END IF;  
    END IF;

    IF NOT(pI_id_tipo_usuario='' OR pI_id_tipo_usuario IS NULL) THEN
      SELECT COUNT(*) INTO contador FROM tipo_usuario WHERE id_tipo_usuario=pI_id_tipo_usuario;
      IF contador=0 THEN
        SET mensaje='El tipo de usuario no existe';
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
      ELSE
        UPDATE empleado SET id_tipo_usuario=pI_id_tipo_usuario WHERE id_empleado=pI_id_empleado;
        COMMIT;
      END IF;
    END IF;

   SELECT id_persona INTO idPersona FROM empleado WHERE id_empleado=pI_id_empleado;
   CALL SP_Actualizar_Persona(idPersona,
                              pI_primer_nombre,
                              pI_segundo_nombre,
                              pI_primer_apellido,
                              pI_segundo_apellido,
                              pI_sexo,
                              pI_direccion,
                              pI_correo_electronico,
                              pI_numero_identidad,
                              pI_fecha_nacimiento,
                              pI_telefono,
                              pI_telefono_antiguo,
                              'A',
                              @mensajeActualizarPersonaEmpleado,
                              @errorActulizarPersonaEmpleado
                              );
   IF @errorActulizarPersonaEmpleado THEN
      SET mensaje=@mensajeActualizarPersonaEmpleado;
      SET error=TRUE;
      SET pO_mensaje=mensaje;
      SET pO_error=error;
      SELECT mensaje,error;
      LEAVE SP;
   END IF;


   UPDATE empleado 
     SET
         -- employee registers
         empleado.fecha_ingreso= pI_fecha_ingreso,           
         empleado.usuario= pI_usuario, 
         -- empleado.contrasena = pI_contrasena, -- no borrar por si se ocupa borrar en un futuro
         empleado.foto_url= pI_foto_url,
         empleado.estado = uEstado
    WHERE 
         empleado.id_empleado =pI_id_empleado;
    COMMIT;

    
    SET mensaje='Actualización exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje,error;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Actualizar_Impuesto`(
   pI_id_impuesto INT(11),
   pI_descripcion VARCHAR(45),
   pI_porcentaje INT(11),
   pI_estado VARCHAR(1),
  --  pI_fecha_inicio DATE,
   pI_fecha_fin DATE,

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
SP:BEGIN

   -- Declaraciones
   DECLARE mensaje VARCHAR(1000);
   DECLARE error BOOLEAN;
   DECLARE contador INT;
   DECLARE uEstado VARCHAR(1);
   DECLARE uFechaFin DATE;

   -- Inicializaciones
   SET AUTOCOMMIT=0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;
   
   -- _______________Validaciones__________________

   IF pI_id_impuesto='' OR pI_id_impuesto IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Codigo de impuesto vacio, ");
   ELSE
     SELECT COUNT(*) INTO contador FROM impuesto WHERE id_impuesto=pI_id_impuesto;
     IF contador=0 THEN
       SET mensaje=CONCAT(mensaje,"Este impuesto no existe, ");
     END IF;
   END IF;

   IF pI_descripcion='' OR pI_descripcion IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Descripcion vacia, ");
   END IF;

   IF pI_porcentaje='' OR pI_porcentaje IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Porcentaje vacio, ");
   END IF;

  --  IF pI_fecha_inicio='' OR pI_fecha_inicio IS NULL THEN
  --    SET mensaje=CONCAT(mensaje,"Fecha de inicio vacia, ");
  --  END IF;
  
    -- ____________Mensaje de resultado____________
   IF mensaje <> '' THEN
     SET error=TRUE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
     LEAVE SP;
   END IF;


   -- _________Cuerpo del SP__________
   IF NOT(pI_estado='' OR   pI_estado IS NULL) THEN
     IF NOT(pI_estado='A' OR pI_estado='I') THEN
       SET mensaje=CONCAT(mensaje, 'Estado Invalido, ');
     ELSE
       SET uEstado=pI_estado;
	   END IF;
   ELSE
       SELECT estado INTO uEstado FROM impuesto WHERE id_impuesto=pI_id_impuesto;
   END IF;

  IF NOT(pI_fecha_fin='' OR pI_fecha_fin IS NULL) THEN
     IF pI_fecha_fin <= CURDATE() THEN
         SET mensaje=CONCAT(mensaje,'Fecha de fin invalida, fecha menor o igual que la actual, ');
     ELSE
       SET uFechaFin=pI_fecha_fin;
     END IF;
    --  IF pI_fecha_inicio >= pI_fecha_fin THEN
    --   SET mensaje = CONCAT(mensaje, 'Fecha de fin inválida, fecha inicio de impuesto mayor o igual que fecha de inicio, ');
    --  END IF;
   ELSE
     SElECT fecha_fin INTO uFechaFin FROM impuesto WHERE id_impuesto=pI_id_impuesto;
   END IF;
  
  --  IF pI_fecha_inicio < CURDATE() THEN
  --     SET mensaje=CONCAT(mensaje,'Fecha de inicio invalida, fecha menor que la actual, ');
  --  END IF;
   
   -- verificar impuesto valido para actualizacion
    SELECT COUNT(*) INTO contador FROM impuesto
    WHERE id_impuesto=pI_id_impuesto AND pI_descripcion = descripcion; 
    IF contador=0 THEN
      SELECT COUNT(*) INTO contador FROM impuesto
      WHERE id_impuesto<>pI_id_impuesto AND pI_descripcion = descripcion; 
      IF contador>=1 THEN 
        SET mensaje=CONCAT(mensaje,'El impuesto a actualizar ya existe, ');
      END IF;  
    END IF;

   -- ____________Mensaje de resultado____________
   IF mensaje <> '' THEN
     SET error=TRUE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
     LEAVE SP;
   END IF;

   -- _______________SQL Statements_______________
  UPDATE impuesto
      SET
         descripcion = pI_descripcion,
         porcentaje = pI_porcentaje,
         estado = uEstado,
        --  fecha_inicio = pI_fecha_inicio,
         fecha_fin = uFechaFin
      WHERE 
         id_impuesto= pI_id_impuesto;

   COMMIT;

   SET mensaje= 'Actualización exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Actualizar_Laboratorio`(
   pI_id_laboratorio INTEGER(11),
   pI_nombre_laboratorio VARCHAR(45),
   pI_estado VARCHAR(1),
   pI_direccion VARCHAR(200),
   pI_telefono_laboratorio VARCHAR(50),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
SP:BEGIN

   -- Declaraciones
   DECLARE mensaje VARCHAR(1000);
   DECLARE error BOOLEAN;
   DECLARE contador INT;
   DECLARE uEstado VARCHAR(1);
   DECLARE uDireccion VARCHAR(200);
   DECLARE uTelefonoLaboratorio VARCHAR(50);

   -- Inicializaciones
   SET AUTOCOMMIT=0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;

   -- _______________Validaciones__________________

   IF pI_id_laboratorio='' OR pI_id_laboratorio IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Identificador de laboratorio vacio, ");
   ELSE
    SELECT COUNT(*) INTO contador 
      FROM laboratorio WHERE id_laboratorio=pI_id_laboratorio;
      
      IF contador =0 THEN
          SET mensaje=CONCAT(mensaje,"Este laboratorio no existe, ");
      END IF;
   END IF;

   IF pI_nombre_laboratorio='' OR pI_nombre_laboratorio IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Nombre del laboratorio vacio, ");
   END IF;

     -- ____________Mensaje de resultado____________
   IF mensaje <> '' THEN
     SET error=TRUE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
     LEAVE SP;
   END IF;

   -- _________Cuerpo del SP__________
    -- verificar laboratorio valido para actualizacion
    SELECT COUNT(*) INTO contador FROM laboratorio
    WHERE id_laboratorio=pI_id_laboratorio AND pI_nombre_laboratorio = nombre_laboratorio; 
    IF contador=0 THEN
      SELECT COUNT(*) INTO contador FROM laboratorio
      WHERE id_laboratorio<>pI_id_laboratorio AND pI_nombre_laboratorio = nombre_laboratorio; 
      IF contador>=1 THEN 
        SET mensaje=CONCAT(mensaje,'El laboratorio a actualizar ya existe, ');
      END IF;  
    END IF;

   IF pI_direccion='' OR pI_direccion IS NULL THEN
     SELECT direccion INTO uDireccion FROM laboratorio WHERE id_laboratorio=pI_id_laboratorio;
   ELSE
     SET uDireccion=pI_direccion;
   END IF;


  -- telefono
   IF NOT(pI_telefono_laboratorio='' OR pI_telefono_laboratorio IS NULL) THEN
     IF( pI_telefono_laboratorio REGEXP'^(2|3|6|7|8|9){1}[0-9]{3}-[0-9]{4}$')=0 THEN
          SET mensaje=CONCAT('Formato de telefono invalido, ');
      ELSE
          SET uTelefonoLaboratorio=pI_telefono_laboratorio;
          -- verificar telefono valido para actualizacion
          SELECT COUNT(*) INTO contador FROM laboratorio
          WHERE id_laboratorio=pI_id_laboratorio AND pI_telefono_laboratorio = telefono_laboratorio; 
          IF contador=0 THEN
            SELECT COUNT(*) INTO contador FROM laboratorio
            WHERE id_laboratorio<>pI_id_laboratorio AND pI_telefono_laboratorio = telefono_laboratorio; 
            IF contador>=1 THEN 
              SET mensaje=CONCAT(mensaje,'El telefono de laboratorio a actualizar ya existe, ');
            END IF;  
          END IF;
      END IF;
   ELSE
     SELECT telefono_laboratorio INTO uTelefonoLaboratorio FROM laboratorio WHERE id_laboratorio=pI_id_laboratorio;
   END IF;

   IF NOT(pI_estado='' OR   pI_estado IS NULL) THEN
     IF NOT(pI_estado='A' OR pI_estado='I') THEN
       SET mensaje=CONCAT(mensaje, 'Estado Invalido, ');
     ELSE
       SET uEstado=pI_estado;
	   END IF;
   ELSE
       SELECT estado INTO uEstado FROM laboratorio WHERE id_laboratorio=pI_id_laboratorio;
   END IF;

    
   -- ____________Mensaje de resultado____________
   IF mensaje <> '' THEN
     SET error=TRUE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
     LEAVE SP;
   END IF;

   -- _______________SQL Statements_______________
   UPDATE laboratorio
      SET
         id_laboratorio = pI_id_laboratorio,
         nombre_laboratorio = pI_nombre_laboratorio,
         estado = uEstado,
         direccion = uDireccion,
         telefono_laboratorio = uTelefonoLaboratorio
      WHERE
         id_laboratorio=pI_id_laboratorio;
   COMMIT;

   SET mensaje= 'Actualización exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Actualizar_Lote`(
        IN pI_id_lote INTEGER(11),
        IN pI_id_producto INTEGER(11),
        IN pI_lote VARCHAR(100),
        IN pI_precio_costo_unidad DOUBLE,
        IN pI_precio_venta_unidad DOUBLE,
        IN pI_fecha_elaboracion DATE,
        IN pI_fecha_vencimiento DATE,
        IN pI_estado VARCHAR(1),
        IN pI_existencia INT(10),
        IN pI_id_descuento INT(11),

        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(1000);
  DECLARE error BOOLEAN;
  DECLARE contador INTEGER;
  DECLARE uEstado VARCHAR(1);
  DECLARE fechaFin DATE;

  SET AUTOCOMMIT=0;
  START TRANSACTION;
-- Inicializaciones
  SET mensaje='';
  SET error = FALSE;
  SET contador = 0;
  SET uEstado= 'A';
  
   -- Verificaciones de campos obligatorios que no esten vacios
    IF pI_id_producto='' OR pI_id_producto IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador producto del vacio, ');
      ELSE
        SELECT COUNT(*) INTO contador FROM producto WHERE id_producto = pI_id_producto;
        IF contador=0 THEN
          SET mensaje=CONCAT(mensaje, 'Identificador producto no existe, ');
        END IF;
    END IF;

    IF pI_id_lote='' OR pI_id_lote IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador de lote del vacio, ');
      ELSE
        SELECT COUNT(*) INTO contador FROM lote WHERE lote.id_lote= pI_id_lote;
        IF contador=0 THEN
           SET mensaje=CONCAT(mensaje, 'Identificador lote no existe, ');
        END IF;
    END IF;

    IF pI_lote='' OR pI_lote IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'lote vacio, ');
    END IF;

    IF pI_precio_costo_unidad='' OR pI_precio_costo_unidad IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'precio costo vacio, ');
    END IF;

    IF pI_precio_venta_unidad='' OR pI_precio_venta_unidad IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'precio venta vacio, ');
    END IF;

    IF pI_fecha_elaboracion='' OR pI_fecha_elaboracion IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'fecha elaboracion vacia, ');
    END IF;

    IF pI_fecha_vencimiento='' OR pI_fecha_vencimiento IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'fecha vencimiento vacia, ');
    END IF;

    IF pI_existencia='' OR pI_existencia IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Existencia vacia, ');
    END IF;
    
    IF pI_id_descuento='' OR pI_id_descuento IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Descuento vacio, ');
      ELSE
        SELECT COUNT(*) INTO contador FROM descuento WHERE id_descuento=pI_id_descuento AND estado='A';
        IF contador=0 THEN
          SET mensaje=CONCAT(mensaje,'El descuento no existe');
      END IF;
    END IF;

    IF NOT(pI_estado='' OR pI_estado IS NULL) THEN 
        IF NOT( pI_estado = 'A' OR pI_estado = 'I' ) THEN
          SET mensaje=CONCAT(mensaje,'Estado invalido, ');
        ELSE
            SET uEstado=pI_estado;
        END IF;
    END IF;

   IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;

     SELECT COUNT(*) INTO contador FROM lote WHERE id_producto=pI_id_producto AND lote=pI_lote AND id_lote=pI_id_lote;
     IF contador=0 THEN 
        SELECT COUNT(*) INTO contador FROM lote WHERE id_producto=pI_id_producto AND lote=pI_lote AND id_lote<>pI_id_lote;
        IF contador>=1 THEN
          SET mensaje='Ya existe este lote, no se puede repetir el nombre del lote con el mismo producto ';
          SET error=TRUE;
          SET pO_mensaje=mensaje;
          SET pO_error=error;
          SELECT mensaje,error;
          LEAVE SP;
        END IF;  
     END IF;


   IF pI_fecha_elaboracion > CURDATE() THEN
     SET mensaje = CONCAT('Fecha de elaboración inválida, fecha mayor que la actual, ');
   END IF;

   IF pI_fecha_vencimiento < CURDATE() THEN
      SET mensaje=CONCAT(mensaje,'Fecha de vencimiento invalida, fecha menor que la actual, ');
   END IF;

   IF pI_fecha_elaboracion >= pI_fecha_vencimiento THEN
     SET mensaje = CONCAT('Fecha de vecimiento inválida, fecha elaboracion mayor o igual que fecha de vencimiento, ');
   END IF;

  -- validacion de datos no admitidos
   IF pI_precio_costo_unidad=0 THEN
      SET mensaje=CONCAT(mensaje,'Precio de costo invalido, no puede ser cero, ');
   END IF;

   IF pI_precio_venta_unidad=0 THEN
      SET mensaje=CONCAT(mensaje,'Precio venta invalido, no puede ser cero,');
   END IF;

   IF pI_existencia<=0 THEN
      SET mensaje=CONCAT(mensaje,'Existencia invalida, no puede ser menor o igual a cero,');
   END IF;

   IF NOT(pI_precio_venta_unidad=0 OR pI_precio_costo_unidad=0) THEN
      IF pI_precio_costo_unidad>=pI_precio_venta_unidad THEN
        SET mensaje=CONCAT(mensaje,'Precio de costo no puede ser mayor o igual que precio venta');
      END IF;
   END IF;

  IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;
   
   -- Contador=1 El descuento por Actualizar ya existe
   SELECT COUNT(*) INTO contador FROM descuento_lote 
   WHERE id_descuento=pI_id_descuento AND id_lote=pI_id_lote AND estado='A';

   IF contador=0 THEN
      UPDATE descuento_lote SET estado='I' WHERE id_lote=pI_id_lote; 
      SELECT fecha_fin INTO fechaFin FROM descuento WHERE id_descuento=pI_id_descuento;
    -- Insertar ImpuestoxProducto
    CALL SP_Insertar_Descuento_Lote(pI_id_lote, pI_id_descuento, CURDATE(),fechaFin, 'A',@mensajeActualizarDescuentoLote,@errorActualizarDescuentoLote);

    -- var => pO_error de =>CALL SP_Insertar_Impuesto
    IF @errorActualizarDescuentoLote THEN
        SET mensaje=@mensajeActualizarDescuentoLote;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
    END IF;

  END IF;

   UPDATE lote SET id_producto =pI_id_producto,
				           lote = pI_lote ,
				           precio_costo_unidad = pI_precio_costo_unidad ,
				           precio_venta_unidad =  pI_precio_venta_unidad ,
				           fecha_elaboracion = pI_fecha_elaboracion, 
				           fecha_vecimiento = pI_fecha_vencimiento ,
                   estado = uEstado ,
                   existencia = pI_existencia
                   WHERE 
                   id_lote=pI_id_lote;
			   


    COMMIT;
     SET mensaje='Actualización exitosa';
     SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje,error;
END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Actualizar_Perfil`(

    IN pI_id_empleado INTEGER(11)

    ,IN pI_correo_electronico VARCHAR(100)

    ,IN pI_cambiar_contrasena BOOLEAN

    ,IN pI_contrasena VARCHAR(128)

    ,IN pI_telefono_antiguo VARCHAR(50)

    ,IN pI_telefono_nuevo VARCHAR(50)

    ,IN pI_foto_url VARCHAR(50)



    ,OUT pO_mensaje VARCHAR(1000)

    ,OUT pO_error BOOLEAN

)
SP:BEGIN

    -- DECLARE

    DECLARE mensaje VARCHAR(1000);

    DECLARE contador INTEGER(20);

    DECLARE error BOOLEAN;

    DECLARE idTelefono INT;

    DECLARE idPersona INT;



     DECLARE EXIT HANDLER FOR SQLEXCEPTION

     BEGIN

		    ROLLBACK ;

		    SET mensaje = 'Error';

		    SET error = 1;

		    SELECT mensaje, error;

     END;



    -- Inicializaciones

    SET AUTOCOMMIT=0;

    START TRANSACTION;

    SET mensaje = '';

    SET contador = 0;

    SET error = FALSE;

    -- _______________________VALIDACION DE CAMPOS____________________________

    -- Verificaciones de campos obligatorios que no esten vacios

    IF pI_id_empleado='' OR pI_id_empleado IS NULL THEN

        SET mensaje=CONCAT('Identificador de empleado vacio, ');

    ELSE

        SELECT COUNT(*) INTO contador

        FROM empleado

        WHERE empleado.id_empleado = pI_id_empleado;



        IF contador=0 THEN

            SET mensaje ='El empleado no existe';

        END IF;

    END IF;



    IF pI_correo_electronico = '' OR pI_correo_electronico IS NULL THEN

        SET mensaje=CONCAT(mensaje, 'Correo electrónico vacío, ');

    END IF;



#     IF pI_cambiar_contrasena = TRUE OR pI_cambiar_contrasena IS NULL THEN

#         SET mensaje=CONCAT(mensaje, 'Cambiar contraseña vacío, ');

#     END IF;



    IF pI_contrasena = '' OR pI_contrasena IS NULL THEN

        SET mensaje=CONCAT(mensaje, 'Contraseña vacío, ');

    END IF;



    IF mensaje <> '' THEN

        SET mensaje=mensaje;

        SET error=TRUE;

        SET pO_mensaje=mensaje;

        SET pO_error=error;

        SELECT mensaje, error;

        LEAVE SP;

    END IF;



    IF pI_cambiar_contrasena = TRUE THEN

        UPDATE empleado SET

        contrasena = pI_contrasena

        WHERE id_empleado = pI_id_empleado;

    END IF;



    IF pI_foto_url != '' THEN

        UPDATE empleado SET

        foto_url = pI_foto_url

        WHERE

        id_empleado = pI_id_empleado

        AND estado = 'A'

        ;



    END IF;



    SELECT id_telefono INTO idTelefono FROM telefono WHERE telefono=pI_telefono_antiguo LIMIT 1;

    UPDATE telefono SET telefono= pI_telefono_nuevo WHERE id_telefono=idTelefono;



    SELECT id_persona INTO idPersona FROM empleado WHERE id_empleado = pI_id_empleado;

    UPDATE persona SET correo_electronico = pI_correo_electronico WHERE id_persona = idPersona;



    COMMIT;



    SET mensaje = 'Actualización de perfil correcta';

    SELECT

    *

    ,mensaje, error

    FROM VistaEmpleado

    WHERE id_empleado = pI_id_empleado;



    LEAVE SP;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Actualizar_Persona`(
    IN pI_id_persona INTEGER(11),
    IN pI_primer_nombre VARCHAR(50),
    IN pI_segundo_nombre VARCHAR(50),
    IN pI_primer_apellido VARCHAR(50),
    IN pI_segundo_apellido VARCHAR(50),
    IN pI_sexo VARCHAR(1),
    IN pI_direccion VARCHAR(300),
    IN pI_correo_electronico VARCHAR(100),
    IN pI_numero_identidad VARCHAR(13),
    IN pI_fecha_nacimiento DATE,
    IN pI_telefono VARCHAR(50),
    IN pI_telefono_antiguo VARCHAR(50),
    IN pI_estado VARCHAR(1),
    OUT pO_mensaje VARCHAR(1000),
    OUT pO_error BOOLEAN
)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);
    DECLARE error BOOLEAN;
    DECLARE contador INTEGER(20);
    DECLARE uEstado VARCHAR(1);
    DECLARE isTelefono BOOLEAN;
    DECLARE idTelefono INT;

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    SET mensaje = '';
    SET contador =0;
    SET error =FALSE;
    SET uEstado='A';
    SET isTelefono=FALSE;
    
    -- ___________________VALIDACIONES___________________________________
    IF pI_id_persona ='' OR pI_id_persona IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador de persona vacio, ');
    ELSE
        SELECT COUNT(*) INTO contador FROM persona
        WHERE pI_id_persona = persona.id_persona;

        IF contador=0 THEN
            SET mensaje = CONCAT(mensaje, 'La persona no existe, ');
        END IF;
        
    END IF;

    IF pI_primer_nombre='' OR pI_primer_nombre IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Primer nombre vacio, ');
    END IF; 

    IF pI_primer_apellido='' OR pI_primer_apellido IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'primer apellido vacio, ');
    END IF;
   
    IF pI_numero_identidad='' OR pI_numero_identidad IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Numero de identidad vacia, ');
    END IF; 

    IF pI_sexo='' OR pI_sexo IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Sexo vacio, ');
    ELSE
        IF NOT( pI_sexo = 'M' OR pI_sexo = 'F' OR pI_sexo='I' ) THEN
          SET mensaje=CONCAT(mensaje,'Sexo invalido, ');
        END IF;
    END IF;
  

    -- Otras Validaciones
    -- identidad
   IF NOT(pI_numero_identidad='' OR pI_numero_identidad IS NULL) THEN
        IF (pI_numero_identidad REGEXP '^(0[1-9]|1[0-8])(0[1-9]|1[0-9]|2[1-8])(19|2[0-9])[0-9]{2}[0-9]{5}$' ) = 0 THEN
            SET mensaje=CONCAT(mensaje,'Numero de identidad invalido, ');
        END IF;
   END IF;


    IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje, error;
        LEAVE SP;
    END IF;

      -- email
    IF NOT (pI_correo_electronico='' OR pI_correo_electronico IS NULL) THEN 
        IF (pI_correo_electronico  REGEXP '^[a-zA-Z0-9][a-zA-Z0-9._-]*@[a-zA-Z0-9][a-zA-Z0-9._-]*\\.[a-zA-Z]{2,4}$') = 0 THEN
            SET mensaje=CONCAT(mensaje, 'Correo electronico invalido, ');
        ELSE
             -- verificar email valido para actualizacion(Pertenesca a la misma persona o no este en la db)
            SELECT COUNT(*) INTO contador FROM persona
            WHERE persona.id_persona=pI_id_persona AND pI_correo_electronico = persona.correo_electronico; 
            IF contador=0 THEN
              SELECT COUNT(*) INTO contador FROM persona
              WHERE persona.correo_electronico=pI_correo_electronico AND persona.id_persona<>pI_id_persona;
              IF contador>=1 THEN 
                SET mensaje=CONCAT(mensaje,'El correo electronico a actualizar ya existe, ');
              END IF;  
            END IF;
        END IF;
    END IF;
    

  
    -- verificar numero de identidad valido para actualizacion(Pertenesca a la misma persona o no este en la db)
    SELECT COUNT(*) INTO contador FROM persona
    WHERE persona.id_persona=pI_id_persona AND pI_numero_identidad = persona.numero_identidad; 
    IF contador=0 THEN
      SELECT COUNT(*) INTO contador FROM persona
      WHERE persona.numero_identidad=pI_numero_identidad AND persona.id_persona<>pI_id_persona;
      IF contador>=1 THEN 
        SET mensaje=CONCAT(mensaje,'El numero de identidad a actualizar ya existe');
      END IF;  
    END IF;

    IF NOT(pI_telefono='' OR pI_telefono IS NULL) THEN
         IF( pI_telefono REGEXP'^(2|3|6|7|8|9){1}[0-9]{3}-[0-9]{4}$')=0 THEN
             SET mensaje=CONCAT(mensaje,'Formato del telefono invalido, ');
         ELSE
            SELECT COUNT(*) INTO contador FROM telefono_persona tp
            INNER JOIN telefono t ON  tp.id_telefono = t.id_telefono
            WHERE t.telefono=pI_telefono AND tp.id_persona=pI_id_persona;
            IF contador=0 THEN
              SELECT COUNT(*) INTO contador FROM telefono_persona tp
              INNER JOIN telefono t ON  tp.id_telefono = t.id_telefono
              WHERE t.telefono=pI_telefono AND tp.id_persona<>pI_id_persona;
              IF contador>=1 THEN 
                SET mensaje=CONCAT(mensaje,'El numero de telefono a actualizar ya existe');
              ELSE
                SET isTelefono=TRUE;
              END IF;  
            END IF;
         END IF;    
    END IF;

    IF isTelefono THEN
         IF pI_telefono_antiguo='' OR pI_telefono_antiguo IS NULL THEN
            SET mensaje=CONCAT(mensaje,'Telefono antiguo vacio, ');
         ELSE
            IF( pI_telefono_antiguo REGEXP'^(2|3|6|7|8|9){1}[0-9]{3}-[0-9]{4}$')=0 THEN
              SET mensaje=CONCAT(mensaje,'Formato del telefono antiguo invalido, ');
            ELSE
                SELECT COUNT(*) INTO contador FROM telefono_persona tp
                INNER JOIN telefono t ON  tp.id_telefono = t.id_telefono
                WHERE t.telefono=pI_telefono_antiguo AND tp.id_persona=pI_id_persona; 
                IF contador=0 THEN
                    SET mensaje=CONCAT(mensaje,'El numero de telefono antiguo para esta persona no existe, ');
                END IF;
            END IF;    
         END IF;
    END IF;

    IF NOT(pI_estado='' OR pI_estado IS NULL) THEN 
        IF NOT( pI_estado = 'A' OR pI_estado = 'I' ) THEN
          SET mensaje=CONCAT(mensaje,'Estado invalido, ');
        ELSE
            SET uEstado=pI_estado;
        END IF;
    END IF;

    IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error = TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje, error;
        LEAVE SP;
    END IF;

     UPDATE persona 
        SET
            persona.primer_nombre = pI_primer_nombre,
            persona.segundo_nombre = pI_segundo_nombre, 
            persona.primer_apellido = pI_primer_apellido, 
            persona.segundo_apellido = pI_segundo_apellido,
            persona.direccion = pI_direccion, 
            persona.correo_electronico = pI_correo_electronico,
            persona.numero_identidad = pI_numero_identidad, 
            persona.fecha_nacimiento = pI_fecha_nacimiento,
            persona.estado= uEstado
        WHERE
            persona.id_persona= pI_id_persona;
    COMMIT;


    -- UPDATE telefono
    IF isTelefono THEN
       SELECT id_telefono INTO idTelefono FROM telefono WHERE telefono=pI_telefono_antiguo;
       UPDATE telefono SET telefono=pI_telefono WHERE id_telefono=idTelefono;
       COMMIT;
    END IF;
   

    
    SET mensaje='Actualización exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje, error;
    
    
END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Actualizar_Presentacion`(
   pI_id_presentacion INTEGER(11),
   pI_presentacion VARCHAR(50),
   pI_estado VARCHAR(1),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
SP:BEGIN

   -- Declaraciones
   DECLARE mensaje VARCHAR(1000);
   DECLARE error BOOLEAN;
   DECLARE contador INT;
   DECLARE uEstado VARCHAR(1);

   -- Inicializaciones
   SET AUTOCOMMIT=0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;
   SET uEstado='A';

   -- _______________Validaciones__________________

   IF pI_id_presentacion='' OR pI_id_presentacion IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Identificador de presentacion vacio, ");
   ELSE
     SELECT COUNT(*) INTO contador
     FROM presentacion
     WHERE id_presentacion = pI_id_presentacion;

     IF contador=0 THEN
       SET mensaje=CONCAT(mensaje,"Esta presentacion no existe, "); 
     END IF;
   END IF;

   IF pI_presentacion='' OR pI_presentacion IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Presentacion vacia, ");
   END IF;
   
 
   -- ____________Mensaje de resultado____________
   IF mensaje <> '' THEN
     SET error=TRUE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
     LEAVE SP;
   END IF;

   -- _________Cuerpo del SP_________
   IF NOT(pI_estado='' OR   pI_estado IS NULL) THEN
     IF NOT(pI_estado='A' OR pI_estado='I') THEN
       SET mensaje=CONCAT(mensaje, 'Estado Invalido, ');
     ELSE
       SET uEstado=pI_estado;
	   END IF;
   ELSE
       SELECT estado INTO uEstado FROM presentacion WHERE id_presentacion=pI_id_presentacion;
   END IF;

      -- verificar presentacion valida para actualizacion
    SELECT COUNT(*) INTO contador FROM presentacion
    WHERE id_presentacion=pI_id_presentacion AND pI_presentacion = presentacion; 
    IF contador=0 THEN
      SELECT COUNT(*) INTO contador FROM presentacion
      WHERE id_presentacion<>pI_id_presentacion AND pI_presentacion = presentacion; 
      IF contador>=1 THEN 
        SET mensaje=CONCAT(mensaje,'La presentacio a actualizar ya existe, ');
      END IF;  
    END IF;

      -- ____________Mensaje de resultado____________
   IF mensaje <> '' THEN
     SET error=TRUE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
     LEAVE SP;
   END IF;

   -- _______________SQL Statements_______________
   UPDATE presentacion
      SET
         id_presentacion = pI_id_presentacion,
         presentacion = pI_presentacion,
         estado = uEstado
      WHERE
         id_presentacion = pI_id_presentacion ;
   COMMIT;

   SET mensaje= 'Actualización exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Actualizar_Producto`(
        IN pI_id_producto INTEGER(11),
        IN pI_id_presentacion INTEGER(11),
        IN pI_nombre VARCHAR(100),
        IN pI_codigo_barra VARCHAR(45),
        IN pI_url_foto VARCHAR(500),
        -- campos a insertar en tablas intermedias
        IN pI_ids_categorias VARCHAR(1000),
        IN pI_id_impuesto INT(11),
        -- Campo para medicamento
        IN pI_id_laboratorio INT(11),
        -- Estado, A=Activo, I=Inactivo
        IN pI_estado VARCHAR(1),

        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(1000);
  DECLARE contador INTEGER;
  DECLARE error BOOLEAN;
  DECLARE uEstado VARCHAR(1);
  DECLARE isMedicamento BOOLEAN;
  DECLARE isProducto BOOLEAN;
  DECLARE cadena VARCHAR(1000);
  DECLARE iterador INT;
  DECLARE idCategoria VARCHAR(100);
  DECLARE contadorDigitos INT;


-- Inicializaciones
  SET mensaje='';
  SET contador = 0;
  SET error= FALSE;
  SET isMedicamento=FALSE;
  SET isProducto=FALSE;
  SET cadena='';
  SET iterador=1;
  SET contadorDigitos=0;
  -- Borrar espacios, ids_categoria
  SET cadena  = REPLACE(pI_ids_categorias,' ','');

  -- ____________________VERIFICACIONES_________________________________
  IF pI_id_producto='' OR  pI_id_producto IS NULL THEN
    SET mensaje=CONCAT(mensaje,'Identificador de producto vacio, ');
  ELSE
     SELECT COUNT(*) INTO contador
     FROM producto
     WHERE id_producto= pI_id_producto;

     IF contador =0 THEN
      SET mensaje = CONCAT(mensaje, 'El produto no existe, ');
     END IF;
   
  END IF;

  IF pI_id_presentacion='' OR   pI_id_presentacion IS NULL THEN
    SET mensaje=CONCAT(mensaje,'Identificador de presentacion vacio , ');
  ELSE
      SELECT COUNT(*)  INTO contador
     FROM presentacion    
     WHERE  id_presentacion= pI_id_presentacion;
     
     IF contador =0 THEN
      SET mensaje = CONCAT(mensaje, 'La presentacion no existe, ');
     END IF;
  END IF;

  IF pI_nombre='' OR   pI_nombre IS NULL THEN
    SET mensaje=CONCAT(mensaje,'Nombre del producto vacio, ');
  END IF;

  IF pI_codigo_barra='' OR   pI_codigo_barra IS NULL THEN
    SET mensaje=CONCAT(mensaje,'Codigo de barra vacio, ');
  END IF;

  IF pI_ids_categorias='' OR   pI_ids_categorias IS NULL THEN
    SET mensaje=CONCAT(mensaje,'Categoria vacia, ');
  ELSE
      -- Contar candidad de comas en la cadena, luego sumarle 1 para establecer en numero de ids ingresados
     SET contadorDigitos = LENGTH(cadena) - LENGTH(REPLACE(cadena, ',', '')) + 1;

     -- FN_Split_Str recibe 3 argumentos(x , del , pos), x=> cadena ,
     -- del => delimitador(en este caso es ','), pos --> posicion a acceder , pos=1 => 11, pos=2 => 54;
     -- SELECT FN_Split_Str('11,54,3,4,55,6',  ',' ,7)

     
     -- Validacion de ids_categorias, todas deben de existir en la db
      WHILE iterador<=contadorDigitos DO
          SET idCategoria = FN_Split_Str(cadena, ',', iterador);
          IF NOT(idCategoria='' OR idCategoria IS NULL) THEN
           -- verificar que el idCategoria no sea vacio, dado que puede llegar una cadena=>"1,2,3,4,"
          -- la funcion Fn_SPlit_Str devolvera para el ulitmo elemento una cadena vacia ''
          -- si este fuera el caso, la consulta devolveria un error
            SELECT COUNT(*) INTO contador FROM categoria WHERE id_categoria=idCategoria;
            IF contador=0 THEN
              SET mensaje=CONCAT(mensaje,'La categoria no existe, ');
              SET error=TRUE;
              SET pO_mensaje=mensaje;
              SET pO_error=error;
              SELECT mensaje,error;
              LEAVE SP;
            END IF;
          END IF;

          SET iterador= iterador + 1;
      END WHILE;
  END IF;

  IF pI_id_impuesto='' OR   pI_id_impuesto IS NULL THEN
    SET mensaje=CONCAT(mensaje,'Identificador de impuesto vacio, ');
  ELSE
    SELECT COUNT(*) INTO contador FROM impuesto WHERE id_impuesto=pI_id_impuesto;
    IF contador=0 THEN
      SET mensaje=CONCAT(mensaje,'El impuesto no existe, ');
    END IF;
  END IF;


  IF NOT(pI_estado='' OR   pI_estado IS NULL) THEN
    IF NOT(pI_estado='A' OR pI_estado='I') THEN
      SET mensaje=CONCAT(mensaje, 'Estado Invalido, ');
    ELSE
      SET uEstado=pI_estado;
    END IF;
  ELSE
    SELECT estado INTO uEstado FROM producto WHERE id_producto=pI_id_producto;
  END IF;

  IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF; 



   SELECT COUNT(*)  INTO contador
   FROM producto    
   WHERE  id_producto= pI_id_producto AND codigo_barra= pI_codigo_barra;
   
  IF contador=0 THEN
     SELECT COUNT(*)  INTO contador
     FROM producto    
     WHERE  id_producto<> pI_id_producto AND codigo_barra= pI_codigo_barra;
        IF contador>=1 THEN 
          SET mensaje=CONCAT(mensaje,'El Codigo de barra ya existe, ');
        END IF;  
  END IF;

  SELECT COUNT(*) INTO contador FROM producto p 
  INNER JOIN medicamentos m ON p.id_producto=m.id_producto
  WHERE p.id_producto=pI_id_producto;

  IF contador>=1 THEN
    -- isMedicamento
    IF pI_id_laboratorio='' OR pI_id_laboratorio IS NULL THEN
      SET mensaje=CONCAT(mensaje, 'Identificador de laboratorio vacio, ');
    ELSE
      SELECT COUNT(*) INTO contador FROM laboratorio WHERE id_laboratorio=pI_id_laboratorio;
      IF contador=0 THEN
        SET mensaje=CONCAT(mensaje,'El laboratorio no existe, ');
      ELSE
        SET isMedicamento=TRUE;
      END IF;
    END IF;
  ELSE
  -- isProducto
    SET isProducto=TRUE;

  END IF;

  IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
  END IF; 

  DELETE FROM categoria_producto WHERE id_producto=pI_id_producto;


   SET iterador=1;
   WHILE iterador<=contadorDigitos DO
        SET idCategoria = FN_Split_Str(cadena, ',', iterador);
        IF NOT(idCategoria='' OR idCategoria IS NULL) THEN
           CALL SP_Insertar_Categoria_Producto(idCategoria, pI_id_producto, 'A',@mensajeActualizarCategoriaProducto, @errorActualizarCategoriaProducto);
             IF @errorActualizarCategoriaProducto THEN
                SET mensaje=@mensajeActualizarCategoriaProducto;
                SET error=TRUE;
                SET pO_mensaje=mensaje;
                SET pO_error=error;
                SELECT mensaje,error;
                LEAVE SP;
             END IF;
        END IF;

        SET iterador= iterador + 1;
    END WHILE;

  
   SELECT COUNT(*) INTO contador FROM impuesto_producto WHERE id_producto=pI_id_producto AND id_impuesto=pI_id_impuesto AND estado='A';
   IF contador=0 THEN
      UPDATE impuesto_producto SET estado='I' WHERE id_producto=pI_id_producto;

    -- Insertar ImpuestoxProducto
    CALL SP_Insertar_Impuesto_Producto(pI_id_impuesto, pI_id_producto, CURDATE(),NULL, 'A',@mensajeActualizarImpuestoProducto,@errorActualizarImpuestoProducto);

    -- var => pO_error de =>CALL SP_Insertar_Impuesto
    IF @errorActualizarImpuestoProducto THEN
        SET mensaje=@mensajeActualizarImpuestoProducto;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
    END IF;

  END IF;

   UPDATE producto
   SET
       producto.id_presentacion=pI_id_presentacion,
       producto.nombre=pI_nombre,
       producto.codigo_barra=pI_codigo_barra,
       producto.url_foto=pI_url_foto,
       producto.estado = uEstado
   WHERE
       producto.id_producto = pI_id_producto;
  

   IF isMedicamento THEN
      UPDATE medicamentos SET id_laboratorio=pI_id_laboratorio, estado=uEstado WHERE id_producto=pI_id_producto;
   END IF;

   IF isProducto THEN
     IF NOT(pI_id_laboratorio='' OR pI_id_laboratorio IS NULL) THEN
        SELECT COUNT(*) INTO contador FROM laboratorio WHERE id_laboratorio=pI_id_laboratorio;
        IF contador=0 THEN
          SET mensaje='El laboratorio no existe';
          SET error=TRUE;
          SET pO_mensaje=mensaje;
          SET pO_error=error;
          SELECT mensaje,error;
          LEAVE SP;
        ELSE
          INSERT INTO medicamentos (
                      id_laboratorio,
                      id_producto,
                      estado
                      )
                 VALUES (
                      pI_id_laboratorio,
                      pI_id_producto,
                      uEstado
                      );
        END IF;
      END IF;
     END IF;
   COMMIT;

   SET mensaje='Actualización exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;
END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Eliminar_Categoria`(
        IN pI_id_categoria INTEGER(11),
  
        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE contador INTEGER;
  DECLARE error BOOLEAN;
-- Inicializaciones
  SET mensaje='';
  SET contador = 0;
  SET error= FALSE;

  -- _______________________VALIDACION_____________________________________
   -- Verificaciones de campos obligatorios que no esten vacios

    IF pI_id_categoria='' OR pI_id_categoria IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador de categoria vacio, ');
    ELSE
       SELECT COUNT(*)  INTO contador
       FROM categoria    
       WHERE  id_categoria = pI_id_categoria;
      
       IF contador =0 THEN
         SET mensaje = CONCAT(mensaje, 'La categoria no existe, ');
       END IF;
    END IF;

 -- ______________________CUERPO__________________________________________
-- una categoria ya borrada no puede reincidirse.

   IF mensaje <> '' THEN
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;  
   
   CALL SP_Eliminar_Categoria_Producto(pI_id_categoria,@mensajeEliminarCategoriaProducto, @errorEliminarCategoriaProducto);

   IF @errorEliminarCategoriaProducto THEN
       SET mensaje=@mensajeEliminarCategoriaProducto;
       SET error=TRUE;
       SET pO_mensaje=mensaje;
       SET pO_error=error;
       SELECT mensaje,error;
       LEAVE SP;
   END IF;

  UPDATE categoria 
      SET
          categoria.estado = "I"
      WHERE
          categoria.id_categoria= pI_id_categoria;
   
  
 
     COMMIT;
     SET mensaje= 'Eliminación exitosa';
     SET error=FALSE;
     SET pO_mensaje=mensaje;
     SELECT mensaje,error;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Eliminar_Categoria_Producto`(
        IN pI_id_categoria INTEGER(11),
  
        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE contador INTEGER;
  DECLARE error BOOLEAN;
-- Inicializaciones
  SET mensaje='';
  SET contador = 0;
  SET error= FALSE;

  -- _______________________VALIDACION_____________________________________
   -- Verificaciones de campos obligatorios que no esten vacios

    IF pI_id_categoria='' OR pI_id_categoria IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador de categoria vacio, ');
    END IF;

 -- ______________________CUERPO__________________________________________

   IF mensaje <> '' THEN
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        LEAVE SP;
   END IF;   

     UPDATE categoria_producto 
         SET
             categoria_producto.estado = "I"
         WHERE
             categoria_producto.id_categoria= pI_id_categoria;

   
     COMMIT;
     SET mensaje= 'Eliminación exitosa';
     SET error=FALSE;
     SET pO_mensaje=mensaje;
END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Eliminar_Descuento`(
   pI_id_descuento INTEGER(11),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN
)
SP:BEGIN

   -- Declaraciones
   DECLARE mensaje VARCHAR(1000);
   DECLARE error BOOLEAN;
   DECLARE contador INT;

   -- Inicializaciones
   SET AUTOCOMMIT=0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;

   -- _______________Validaciones__________________

   IF pI_id_descuento='' OR pI_id_descuento IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Identificador de descuento vacio, ");
   ELSE
      SELECT COUNT(*) INTO contador FROM descuento WHERE id_descuento=pI_id_descuento;
      IF contador=0 THEN
         SET mensaje=CONCAT(mensaje,'Este descuento no existe, ');
      END IF;
   END IF;

   -- ____________Mensaje de resultado____________
   IF mensaje <> '' THEN
     SET error=TRUE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
     LEAVE SP;
   END IF;


   -- _______________SQL Statements_______________
   UPDATE descuento
      SET
         estado = 'I'
      WHERE
         id_descuento=pI_id_descuento;
   COMMIT;

   SET mensaje= 'Eliminación Exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Eliminar_Detalle_Factura`(
   pI_id_temporal INTEGER(11),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
SP:BEGIN

   -- Declaraciones
   DECLARE mensaje VARCHAR(1000);
   DECLARE error BOOLEAN;
   DECLARE contador INT;
   DECLARE cantidadProducto INT;
   DECLARE idEmpleado INT;
   DECLARE idLote INT;
   DECLARE totalImpuestoFactura DOUBLE;
   DECLARE totalDescuentoFactura DOUBLE;
   DECLARE subTotalFactura DOUBLE;
   DECLARE totalFactura DOUBLE;
   
   -- Inicializaciones
   SET AUTOCOMMIT=0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;
   SET totalImpuestoFactura =0;
   SET totalDescuentoFactura=0;
   SET subTotalFactura=0;
   SET totalFactura=0;
 

   -- _______________Validaciones__________________
   IF pI_id_temporal='' OR pI_id_temporal IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Identificador vacio, ");
   ELSE
      SELECT COUNT(*) INTO contador
      FROM detalle_factura_temp
      WHERE id_temporal = pI_id_temporal;

      IF contador=0 THEN
         SET mensaje=CONCAT(mensaje,"Codigo temporal inexistente, ");
      END IF;
   END IF;



   -- ____________Mensaje de resultado____________
   IF mensaje <> '' THEN
     SET error=TRUE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
     LEAVE SP;
   END IF;

   -- _______________SQL Statements_______________
   SELECT id_empleado INTO idEmpleado FROM detalle_factura_temp WHERE id_temporal=pI_id_temporal;

   DELETE 
   FROM detalle_factura_temp
   WHERE id_temporal= pI_id_temporal;

   
   COMMIT;

   SELECT SUM(total) INTO totalFactura FROM detalle_factura_temp WHERE id_empleado=idEmpleado;
   SELECT SUM(sub_total) INTO subTotalFactura FROM detalle_factura_temp WHERE id_empleado=idEmpleado;
   SELECT SUM(total_impuesto) INTO totalImpuestoFactura FROM detalle_factura_temp WHERE id_empleado=idEmpleado;
   SELECT SUM(total_descuento) INTO totalDescuentoFactura FROM detalle_factura_temp WHERE id_empleado=idEmpleado;

   SET totalFactura=ROUND(totalFactura,2);
   SET subTotalFactura=ROUND(subTotalFactura,2);
   SET totalImpuestoFactura=ROUND(totalImpuestoFactura,2);
   SET totalDescuentoFactura=ROUND(totalDescuentoFactura,2);

   SET mensaje= 'Eliminación exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;

   SELECT *,subTotalFactura,totalFactura,totalImpuestoFactura,totalDescuentoFactura,cantidadProducto,idLote,mensaje,error
   FROM detalle_factura_temp
   WHERE id_empleado=idEmpleado;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Eliminar_Empleado`(

    IN pI_id_empleado INTEGER(11),



    OUT pO_mensaje VARCHAR(1000),

    OUT pO_error BOOLEAN

)
SP:BEGIN

    -- DECLARE

    DECLARE mensaje VARCHAR(1000);

    DECLARE contador INTEGER(20);

    DECLARE error BOOLEAN;



    -- Inicializaciones

    SET AUTOCOMMIT=0;

    START TRANSACTION;

    SET mensaje = '';

    SET contador = 0;

    SET error = FALSE;

    -- _______________________VALIDACION DE CAMPOS____________________________

    -- Verificaciones de campos obligatorios que no esten vacios

    IF pI_id_empleado='' OR pI_id_empleado IS NULL THEN 

        SET mensaje=CONCAT('Identificador de empleado vacio, ');

    ELSE

        SELECT COUNT(*) INTO contador

        FROM empleado

        WHERE empleado.id_empleado = pI_id_empleado;

        

        IF contador=0 THEN  

            SET mensaje ='El empleado no existe';

        END IF;

    END IF;    

    

    IF mensaje <> '' THEN

        SET mensaje=mensaje;

        SET error=TRUE;

        SET pO_mensaje=mensaje;

        SET pO_error=error;

        SELECT mensaje, error;

        LEAVE SP;

    END IF;



    UPDATE empleado 

        SET

             empleado.estado = "I"

        WHERE 

            empleado.id_empleado = pI_id_empleado ;

    COMMIT;



    SET mensaje='Eliminación exitosa';

    SET error=FALSE;

    SET pO_mensaje=mensaje;

    SET pO_error=error;

    SELECT mensaje, error;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Eliminar_Factura`(
   pI_id_empleado INT(11),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
SP:BEGIN

   -- Declaraciones
   DECLARE mensaje VARCHAR(1000);
   DECLARE error BOOLEAN;
   DECLARE contador INT;

   -- Inicializaciones
   SET AUTOCOMMIT=0;
   SET SQL_SAFE_UPDATES = 0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;

   -- _______________Validaciones__________________

   IF pI_id_empleado='' OR pI_id_empleado IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Codigigo de empleado vacio, ");
   ELSE
     SELECT COUNT(*) INTO contador FROM detalle_factura_temp WHERE id_empleado=pI_id_empleado;
     IF contador=0 THEN
        SET mensaje=CONCAT(mensaje,"Usted no ha realizado ninguna factura");
     END IF;
   END IF;

   -- ____________Mensaje de resultado____________
   IF mensaje <> '' THEN
     SET error=TRUE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
     LEAVE SP;
   END IF;

   -- _______________SQL Statements_______________
    CALL SP_Eliminar_Filas_Detalle_Factura_Temp(pI_id_empleado,@mensajeEliminarFactura,@errorEliminarFactura);
    IF @errorEliminarFilas THEN
      SET mensaje=@mensajeEliminarFilas;
      SET error=@errorEliminarFilas;
      SET pO_mensaje=mensaje;
      SET pO_error=error;
      SELECT mensaje,error;
      LEAVE SP;
    END IF;

   SET mensaje= 'Cancelación de factura exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Eliminar_Filas_Detalle_Factura_Temp`(
	pI_id_empleado INT,
    
    pO_mensaje VARCHAR(1000),
    pO_error BOOLEAN
)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);
    DECLARE error BOOLEAN;
    DECLARE contador INT;
    DECLARE idMax INT;
    DECLARE idMin INT;

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    SET SQL_SAFE_UPDATES = 0;
    START TRANSACTION;
    SET mensaje = '';
    SET contador=0;
    SET error=FALSE;

	IF pI_id_empleado='' OR pI_id_empleado IS NULL THEN 
		SET mensaje='Codigo de empleado vacio';
	ELSE
		SELECT COUNT(*) INTO contador FROM detalle_factura_temp WHERE id_empleado=pI_id_empleado;
        IF contador=0 THEN
			SET mensaje='Este empleado no tiene facturas';
		END IF;
    END IF;
    -- ____________Mensaje de resultado____________
    IF mensaje <> '' THEN
      SET error=TRUE;
      SET pO_mensaje=mensaje;
      SET pO_error=error;
      LEAVE SP;
    END IF;
    
    -- Tabla temporal donde se guardaran los ids a eliminar
    CREATE TEMPORARY TABLE temp
	SELECT id_temporal,id_empleado FROM detalle_factura_temp 
	WHERE id_empleado=pI_id_empleado;
    
    -- Seleccionar el id_temporal maximo y minimo para eliminar por rangos
    SELECT MAX(id_temporal),MIN(id_temporal) INTO idMax,idMin FROM temp;
        
    -- Contador de cuantos registros seran eliminados, asignarse al liminte del delete
    SELECT COUNT(*) INTO contador FROM detalle_factura_temp WHERE id_empleado=pI_id_empleado;

    DELETE FROM detalle_factura_temp
    WHERE id_temporal BETWEEN idMin AND idMax
    ORDER BY id_temporal DESC
    LIMIT contador;
    
    -- Eliminar Tabla Temporal
    DROP TEMPORARY TABLE temp;
    
    COMMIT;
    
	SET mensaje='Eliminación Exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Eliminar_Impuesto`(
   pI_id_impuesto INT(11),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
SP:BEGIN

   -- Declaraciones
   DECLARE mensaje VARCHAR(1000);
   DECLARE error BOOLEAN;
   DECLARE contador INT;

   -- Inicializaciones
   SET AUTOCOMMIT=0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;

   -- _______________Validaciones__________________

   IF pI_id_impuesto='' OR pI_id_impuesto IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Identificador de impuesto vacio, ");
   ELSE 
      SELECT COUNT(*) INTO contador FROM impuesto WHERE id_impuesto=pI_id_impuesto;
      IF contador=0 THEN
         SET mensaje=CONCAT(mensaje,"Este impuesto no existe, ");
      END IF;
   END IF;

   -- ____________Mensaje de resultado____________
   IF mensaje <> '' THEN
     SET error=TRUE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
     LEAVE SP;
   END IF;

   -- _______________SQL Statements_______________
   UPDATE impuesto
      SET
         estado = 'I'
      WHERE
         id_impuesto=pI_id_impuesto;
   COMMIT;

   SET mensaje= 'Eliminación exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Eliminar_Laboratorio`(
   pI_id_laboratorio INTEGER(11),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
SP:BEGIN

   -- Declaraciones
   DECLARE mensaje VARCHAR(1000);
   DECLARE error BOOLEAN;
   DECLARE contador INT;

   -- Inicializaciones
   SET AUTOCOMMIT=0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;

   -- _______________Validaciones__________________

   IF pI_id_laboratorio='' OR pI_id_laboratorio IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Identificador de laboratorio vacio, ");
   ELSE
       SELECT COUNT(*) INTO contador FROM laboratorio
       WHERE id_laboratorio= pI_id_laboratorio;
       IF contador=0 THEN
           SET mensaje=CONCAT(mensaje,'Este laboratorio no existe, ');
       END IF;
   END IF;


   -- ____________Mensaje de resultado____________
   IF mensaje <> '' THEN
     SET error=TRUE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
     LEAVE SP;
   END IF;


   -- _______________SQL Statements_______________
   UPDATE laboratorio
      SET
         estado = "I"
      WHERE
         id_laboratorio=pI_id_laboratorio;
   COMMIT;

   SET mensaje= 'Eliminación exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Eliminar_Lote`(
        IN pI_id_lote INTEGER(11),
  
        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE contador INTEGER;
  DECLARE error BOOLEAN;
-- Inicializaciones
  SET mensaje='';
  SET contador = 0;
  SET error= FALSE;

  -- _______________________VALIDACION_____________________________________
   -- Verificaciones de campos obligatorios que no esten vacios

    IF pI_id_lote='' OR pI_id_lote IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'campo vacio: , ');
    ELSE
        SELECT COUNT(*)  INTO contador
        FROM lote    
        WHERE  id_lote= pI_id_lote;
        
        IF contador =0 THEN
        SET mensaje = CONCAT(mensaje, 'EL lote a eliminar no existe, ');
        END IF;
    END IF;


 -- ______________________CUERPO__________________________________________
   

   IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;   


     UPDATE lote 
         SET
             estado = "I"
         WHERE
             lote.id_lote= pI_id_lote;
   
     COMMIT;
     SET mensaje= 'Eliminación exitosa';
     SET error=FALSE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Eliminar_Medicamento`(
        IN pI_id_medicamento INTEGER(11),
  
        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE contador INTEGER;
  DECLARE error BOOLEAN;
-- Inicializaciones
  SET mensaje='';
  SET contador = 0;
  SET error= FALSE;

  -- _______________________VALIDACION_____________________________________
   -- Verificaciones de campos obligatorios que no esten vacios

    IF pI_id_medicamento='' OR pI_id_medicamento IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'id del medicamento, ');
    END IF;

 -- ______________________CUERPO__________________________________________
   


   SELECT COUNT(*)  INTO contador
   FROM medicamentos    
   WHERE  id_medicamento= pI_id_medicamento;
   
   IF contador =0 THEN
   SET mensaje = CONCAT(mensaje, 'el identificador no esta asignado a ningun medicamento, ');
   END IF;

   IF mensaje <> '' THEN
        SET mensaje=CONCAT('resultado: ', mensaje);
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;   


     UPDATE medicamentos 
         SET
             medicamentos.estado = "I"
         WHERE
             medicamentos.id_medicamento= pI_id_medicamento;
   
     COMMIT;
     SET mensaje= 'Eliminación exitosa';
     SET error=FALSE;
     SET pO_mensaje=mensaje;
     SELECT mensaje,error;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Eliminar_Persona`(
        IN pI_id_persona INT(11),
  
        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN
)
SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(1000);
  DECLARE error BOOLEAN;
  DECLARE contador INTEGER;
-- Inicializaciones
  SET mensaje='';
  SET error = FALSE;
  SET contador = 0;

  -- _______________________VALIDACION_____________________________________
   -- Verificaciones de campos obligatorios que no esten vacios

    IF pI_id_persona='' OR pI_id_persona IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador de persona vacio, ');
    ELSE
       SELECT COUNT(*)  INTO contador
       FROM persona    
       WHERE  id_persona= pI_id_persona;
       
       IF contador =0 THEN
        SET mensaje = CONCAT(mensaje,'La persona no existe');
       END IF;
    END IF;

 -- ______________________CUERPO__________________________________________
  
   IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje, error;
        LEAVE SP;
   END IF;


    UPDATE persona SET estado = "I"
    WHERE id_persona= pI_id_persona;
       
    COMMIT;

    SET mensaje='Eliminación exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje, error;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Eliminar_Presentacion`(
   pI_id_presentacion INTEGER(11),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
SP:BEGIN

   -- Declaraciones
   DECLARE mensaje VARCHAR(1000);
   DECLARE error BOOLEAN;
   DECLARE contador INT;

   -- Inicializaciones
   SET AUTOCOMMIT=0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;

   -- _______________Validaciones__________________

   IF pI_id_presentacion='' OR pI_id_presentacion IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Identificador de presentaicon vacio, ");
   ELSE
     SELECT COUNT(*) INTO contador
     FROM presentacion
     WHERE id_presentacion = pI_id_presentacion;
   
     IF contador=0 THEN
       SET mensaje=CONCAT(mensaje,"Esta presentación no existe, ");
     END IF;
   END IF;


   -- ____________Mensaje de resultado____________
   IF mensaje <> '' THEN
     SET error=TRUE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
     LEAVE SP;
   END IF;

   -- _______________SQL Statements_______________
   UPDATE presentacion
      SET
         estado = "I"
      WHERE
         id_presentacion=pI_id_presentacion;
   COMMIT;

   SET mensaje= 'Eliminación exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Eliminar_Producto`(
        IN pI_id_producto INTEGER(11),
  
        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE contador INTEGER;
  DECLARE error BOOLEAN;
-- Inicializaciones
  SET mensaje='';
  SET contador = 0;
  SET error= FALSE;

  -- _______________________VALIDACION_____________________________________
   -- Verificaciones de campos obligatorios que no esten vacios

    IF pI_id_producto='' OR pI_id_producto IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador del producto vacio, ');
    ELSE
        SELECT COUNT(*)  INTO contador
        FROM producto    
        WHERE  id_producto= pI_id_producto;
        
        IF contador =0 THEN
        SET mensaje = CONCAT(mensaje, 'EL producto a eliminar no existe, ');
        END IF;
    END IF;


 -- ______________________CUERPO__________________________________________
   

   IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;   

     UPDATE producto 
         SET
             estado = "I"
         WHERE
             producto.id_producto= pI_id_producto;
   
     COMMIT;

     SELECT COUNT(*) INTO contador FROM producto p 
     INNER JOIN medicamentos m ON p.id_producto= m.id_producto
     WHERE p.id_producto= pI_id_producto;

     IF contador>0 THEN
       SELECT id_medicamento INTO contador FROM producto p 
       INNER JOIN medicamentos m ON p.id_producto= m.id_producto
       WHERE p.id_producto= pI_id_producto;

        UPDATE medicamentos 
         SET
             estado = "I"
         WHERE
             medicamentos.id_medicamento= contador;
       COMMIT;
    END IF;
     SET mensaje= 'Eliminación exitosa';
     SET error=FALSE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Eliminar_temp`(
   pI_id_empleado INT(11)

)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);
    DECLARE error BOOLEAN;
    DECLARE contador INT;
    DECLARE var VARCHAR(100);

  
    -- Inicializaciones
    SET AUTOCOMMIT=0;
    SET SQL_SAFE_UPDATES = 0;
    START TRANSACTION;
    SET mensaje = '';
    SET contador=0;
    SET error=FALSE;
  
      -- _______________Validaciones__________________

    IF pI_id_empleado='' OR pI_id_empleado IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Codigo de empleado vacio, ');
    ELSE
      SELECT COUNT(*) INTO contador FROM detalle_factura_temp WHERE id_empleado=pI_id_empleado;
      IF contador=0 THEN
        SET mensaje=CONCAT(mensaje,'Este empleado no ha facturado productos');
      END IF;
    END IF;

    -- ____________Mensaje de resultado____________
    IF mensaje <> '' THEN
      SET error=TRUE;
      SELECT mensaje,error;
      LEAVE SP;
    END IF;


    -- Vaciar la factura temporal realizada por un empleado
    DROP TEMPORARY TABLE IF EXISTS temp;
    CREATE TEMPORARY TABLE temp AS
    SELECT id_temporal FROM detalle_factura_temp 
    WHERE id_empleado=pI_id_empleado;
    delete from detalle_factura_temp where id_temporal in (select id_temporal from temp);
	SET mensaje='ads';
    select mensaje;
END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Insertar_Categoria`(
  pI_categoria VARCHAR(45)
)
InsertarCategoria:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE contador INT;
  DECLARE error BOOLEAN;
  DECLARE ultimoID INT;

-- Inicializaciones
  SET mensaje='';
  SET error = TRUE;
  SET contador=0;
  SET ultimoId = 0;
-- _____________________VALIDACIONES_____________________________
  IF pI_categoria = '' OR pI_categoria IS NULL THEN
    SET mensaje = 'Categoria vacia';
    SELECT mensaje, error;
    LEAVE InsertarCategoria;
  END IF;

  SELECT count(*) INTO contador FROM categoria
  WHERE UPPER(categoria) LIKE UPPER(pI_categoria);
  IF contador > 0 THEN
    SET mensaje = CONCAT('La categoria ', pI_categoria, ' ya existe');
    SELECT mensaje, error;
    LEAVE InsertarCategoria;
  END IF;

  SET AUTOCOMMIT = 0;
  START TRANSACTION;
-- ____________________CUERPO DEL PL_______________________________
  INSERT INTO categoria (categoria, estado) VALUES (pI_categoria, "A");
  # SELECT LAST_INSERT_ID() INTO ultimoId;
  COMMIT;

  SET mensaje = 'Inserción exitosa';
  SET error = FALSE;
  
  SELECT mensaje, error;
END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Insertar_Categoria_Producto`(
        IN pI_id_categoria INTEGER(11),
        IN pI_id_producto INTEGER(11),
        IN pI_estado VARCHAR(1),

        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE error BOOLEAN;
  DECLARE contador INTEGER;


  SET AUTOCOMMIT=0;
  START TRANSACTION;
-- Inicializaciones
  SET mensaje='';
  SET error = FALSE;
  SET contador = 0;
  

  -- ________________VALIDACIONES________________________________________  
   -- Verificaciones de campos obligatorios que no esten vacios
    IF pI_id_categoria='' OR pI_id_categoria IS NULL THEN 
        SET mensaje=CONCAT(mensaje,'Identificador de  categoria  vacio, ');
    END IF;

    IF pI_id_producto='' OR pI_id_producto IS NULL THEN 
        SET mensaje=CONCAT(mensaje,'Identificador de producto vacio, ');
    END IF;

    IF pI_estado='' OR pI_estado IS NULL THEN 
        SET mensaje=CONCAT(mensaje,'Estado vacio , ');
    ELSE
       IF NOT( pI_estado = 'A' OR pI_estado = 'I' ) THEN
        SET mensaje=CONCAT(mensaje,'Estado invalido, ');
      END IF;
    END IF;

   IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        -- SELECT mensaje,error;
        LEAVE SP;
   END IF;
  -- _________________________CUERPO DEL PL_______________________________-
  
    
   SELECT COUNT(*) INTO contador FROM categoria WHERE id_categoria = pI_id_categoria;
   IF contador = 0 THEN
     SET mensaje=CONCAT('La categoria no existe ,', mensaje);
   END IF;

   SELECT COUNT(*) INTO contador FROM producto WHERE id_producto = pI_id_producto;
   IF contador = 0 THEN
     SET mensaje=CONCAT('El producto no existe  ,', mensaje);
   END IF;

   SELECT COUNT(*) INTO contador FROM categoria_producto WHERE id_categoria = pI_id_categoria and id_producto = pI_id_producto;
   IF contador >0  THEN
     SET mensaje=CONCAT('Esta categoria ya existe para este producto,', mensaje);
   END IF;

    IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        -- SELECT mensaje,error;
        LEAVE SP;
   END IF;

   INSERT INTO categoria_producto (id_categoria,
                                  id_producto, 
                                  estado)
			                    VALUES (pI_id_categoria,
                                  pI_id_producto,
			                        		pI_estado);
    COMMIT;
    SET mensaje='Incerción Exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    -- SELECT mensaje,error;
    
END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Insertar_Descuento`(

  pI_descripcion VARCHAR(45),

  pI_porcentaje INT(11),

  pI_fecha_fin DATE

)
InsertarImpuesto:BEGIN

-- Declaraciones

  DECLARE mensaje VARCHAR(255);

  DECLARE contador INT;

  DECLARE error BOOLEAN;





-- Inicializaciones

  SET mensaje='';

  SET error = TRUE;

  SET contador=0;



-- _________________VALIDACIONES________________________________

  IF pI_descripcion = '' OR pI_descripcion IS NULL THEN

    SET mensaje = CONCAT(mensaje, 'Nombre del descuento vacio, ');

  ELSE

    SELECT COUNT(*) INTO contador

    FROM descuento WHERE UPPER(descripcion) LIKE UPPER(pI_descripcion);



    IF contador>0 THEN

      SET mensaje =CONCAT(mensaje, 'El descuento ya existe, ');

    END IF;



  END IF;



  IF pI_porcentaje IS NULL OR pI_porcentaje = 0 OR pI_porcentaje = '' THEN

    SET mensaje = CONCAT(mensaje, 'El descuento debe ser mayor que cero, ');

  END IF;





  IF pI_fecha_fin IS NULL OR pI_fecha_fin <= CURDATE() THEN

    SET mensaje = 'Fecha de culminación es menor que la fecha actual';

  END IF;





  IF mensaje != '' THEN

    SELECT mensaje, error;

    LEAVE InsertarImpuesto;

  END IF;







  SET AUTOCOMMIT = 0;

  START TRANSACTION;



  INSERT INTO descuento (descripcion, porcentaje, estado, fecha_inicio, fecha_fin) VALUES

  (pI_descripcion, pI_porcentaje, 'A', CURDATE(), pI_fecha_fin);

  COMMIT;



  SET mensaje = 'Inserción exitosa';

  SET error = FALSE;

  SELECT mensaje, error;



END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Insertar_Descuento_Lote`(
        IN pI_id_lote INTEGER(11),
        IN pI_id_descuento INTEGER(11),
        IN pI_fecha_inicio DATE,
        IN pI_fecha_fin DATE,
        IN pI_estado VARCHAR(1),

        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE error BOOLEAN;
  DECLARE contador INTEGER;


  SET AUTOCOMMIT=0;
  START TRANSACTION;
-- Inicializaciones
  SET mensaje='';
  SET error = FALSE;
  SET contador = 0;
  

  -- ________________VALIDACIONES________________________________________  
   -- Verificaciones de campos obligatorios que no esten vacios
    IF pI_id_lote='' OR pI_id_lote IS NULL THEN 
        SET mensaje=CONCAT(mensaje , 'Identificador de lote vacio, ');
    END IF;

    IF pI_id_descuento='' OR pI_id_descuento IS NULL THEN 
        SET mensaje=CONCAT(mensaje , 'Identificador de descuento vacio, ');
    END IF;

    IF pI_fecha_inicio='' OR pI_fecha_inicio IS NULL THEN 
        SET mensaje=CONCAT(mensaje , 'Fecha de inicio vacia, ');
    END IF;

    IF pI_estado='' OR pI_estado IS NULL THEN 
        SET mensaje=CONCAT(mensaje , 'Estado vacio, ');
    ELSE
      IF NOT( pI_estado = 'A' OR pI_estado = 'I' ) THEN
          SET mensaje=CONCAT(mensaje,'Estado invalido, ');
      END IF;
    END IF;

   IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;
  -- _________________________CUERPO DEL PL_______________________________-
   
    
   SELECT COUNT(*) INTO contador FROM descuento WHERE id_descuento = pI_id_descuento;
   IF contador = 0 THEN
     SET mensaje=CONCAT(mensaje,'El descuento no existe ,');
   END IF;

   SELECT COUNT(*) INTO contador FROM lote WHERE id_lote = pI_id_lote;
   IF contador = 0 THEN
     SET mensaje=CONCAT(mensaje,'El lote no existe  ,');
   END IF;

   IF pI_fecha_inicio < CURDATE() THEN
     SET mensaje = CONCAT(mensaje,'Fecha de inicio inválida, no puede ser menor que la fecha actual, ');
   END IF;

   SELECT COUNT(*) INTO contador FROM descuento_lote WHERE id_lote = pI_id_lote and id_descuento = pI_id_descuento AND estado='A';
   IF contador >0  THEN
     SET mensaje=CONCAT(mensaje,'Este lote ya tiene este tipo de descuento,');
   END IF;


    IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;

   INSERT INTO descuento_lote (id_lote,
                              id_descuento, 
			                    		fecha_inicio,
			                    		fecha_fin,
                              estado)
			                    VALUES (pI_id_lote,
                              pI_id_descuento,
			                    		pI_fecha_inicio,
			                    		pI_fecha_fin,
			                    		pI_estado);
    COMMIT;
    SET mensaje='Inserción exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    # SELECT mensaje,error;
END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Insertar_Detalle_Factura`(
   pI_id_empleado INT(11),
   pI_cantidad INT(11),
   pI_id_lote INT(11),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);
    DECLARE error BOOLEAN;
    DECLARE contador INT;
    DECLARE idProducto INT;
    DECLARE idDescuento INT;
    DECLARE idImpuesto INT;
    DECLARE porcentajeDescuento INT;
    DECLARE porcentajeImpuesto INT;
    DECLARE precioVentaUnidad DOUBLE;
    DECLARE subTotalRow DOUBLE;
    DECLARE totalRow DOUBLE;
    DECLARE totalFactura DOUBLE;
    DECLARE subTotalFactura DOUBLE;
    DECLARE totalImpuestoFactura DOUBLE;
    DECLARE totalDescuentoFactura DOUBLE;
    DECLARE totalDescuentoRow DOUBLE;
    DECLARE totalImpuestoRow DOUBLE;
    DECLARE cantidadExistencia INT;
    DECLARE cantidadLote INT;
    DECLARE codigoBarraProducto VARCHAR(45);
    DECLARE descripcionProducto VARCHAR(100);


    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    SET mensaje = '';
    SET contador=0;
    SET error=FALSE;

    -- _______________Validaciones__________________

    IF pI_id_empleado='' OR pI_id_empleado IS NULL THEN
      SET mensaje=CONCAT(mensaje,"Codigo de empleado vacio, ");
    ELSE
      SELECT COUNT(*) INTO contador FROM empleado WHERE id_empleado=pI_id_empleado;
      IF contador=0 THEN
        SET mensaje=CONCAT(mensaje,"Este empleado no existe, ");
      END IF;
    END IF;

    IF pI_cantidad='' OR pI_cantidad IS NULL OR pI_cantidad=0 THEN
      SET mensaje=CONCAT(mensaje,"Cantidad de producto vacia, ");
    END IF;

    IF pI_id_lote='' OR pI_id_lote IS NULL THEN
      SET mensaje=CONCAT(mensaje,"Codigo de lote vacio, ");
    ELSE
      SELECT COUNT(*) INTO contador FROM lote WHERE id_lote=pI_id_lote;
      IF contador=0 THEN
        SET mensaje=CONCAT(mensaje,"Este lote(producto) no existe");
      END IF;
    END IF;

    -- ____________Mensaje de resultado____________
    IF mensaje <> '' THEN
      SET error=TRUE;
      SET pO_mensaje=mensaje;
      SET pO_error=error;
      SELECT mensaje,error;
      LEAVE SP;
    END IF;

    SELECT id_producto INTO idProducto FROM producto WHERE id_producto IN (SELECT id_producto FROM lote WHERE id_lote=pI_id_lote); 
    SELECT id_descuento INTO idDescuento FROM descuento_lote WHERE id_lote=pI_id_lote AND estado='A';
    SELECT id_impuesto INTO idImpuesto FROM impuesto_producto WHERE id_producto=idProducto AND estado='A';
    SELECT porcentaje INTO porcentajeDescuento FROM descuento WHERE id_descuento=idDescuento AND estado='A';
    SELECT porcentaje INTO porcentajeImpuesto FROM impuesto WHERE id_impuesto=idImpuesto AND estado='A';
    SELECT precio_venta_unidad INTO precioVentaUnidad FROM lote WHERE id_lote=pI_id_lote AND estado='A';

    SELECT p.codigo_barra,p.nombre INTO codigoBarraProducto, descripcionProducto
    FROM lote l
    INNER JOIN producto p on l.id_producto = p.id_producto
    WHERE id_lote=pI_id_lote;

    IF porcentajeDescuento IS NULL THEN
    SET porcentajeDescuento=0;
    END IF;

    IF porcentajeImpuesto IS NULL THEN 
      SET idImpuesto=1; -- Exento de impuesto
      SET porcentajeImpuesto=0;
    END IF;

    -- Verificaciones de existencia lote
    SELECT existencia INTO contador FROM lote WHERE id_lote=pI_id_lote;
    SELECT SUM(cantidad) INTO cantidadExistencia FROM detalle_factura_temp 
    WHERE id_lote=pI_id_lote;
    
    SET cantidadLote=contador-cantidadExistencia; -- Restar lote.existencia - SUM(cantidad) WHERE id_lote=pI_idlote
                                              -- Resultado los productos disponibles de ese lote

    IF cantidadLote<pI_cantidad THEN
      SET mensaje='Este lote no tiene suficiente existencia de productos para la venta';
      SET error=TRUE;
      SET pO_mensaje=mensaje;
      SET pO_error=error;
      SELECT mensaje,error;
      LEAVE SP;
    END IF;

    SET subTotalRow=(pI_cantidad*precioVentaUnidad);
    SET totalDescuentoRow=subTotalRow*(porcentajeDescuento/100);
    SET totalImpuestoRow=subTotalRow*(porcentajeImpuesto/100);
    SET totalRow=subTotalRow-totalDescuentoRow + totalImpuestoRow;

    SET subTotalRow=ROUND(subTotalRow,2);
    SET totalDescuentoRow=ROUND(totalDescuentoRow,2);
    SET totalImpuestoRow=ROUND(totalImpuestoRow,2);
    SET totalRow=ROUND(totalRow,2);

    --  -- _______________SQL Statements_______________
    INSERT INTO detalle_factura_temp(
                            id_empleado,
                            id_lote,
                            id_descuento,
                            id_impuesto,
                            codigo_barra,
                            cantidad,
                            descripcion,
                            total_descuento,
                            total_impuesto,
                            sub_total,
                            total)
                    VALUES (pI_id_empleado,
                            pI_id_lote,
                            idDescuento,
                            idImpuesto,
                            codigoBarraProducto,
                            pI_cantidad,
                            descripcionProducto,
                            totalDescuentoRow,
                            totalImpuestoRow,
                            subTotalRow,
                            totalRow);
    COMMIT;

    SELECT SUM(total) INTO totalFactura FROM detalle_factura_temp WHERE id_empleado=pI_id_empleado;
    SELECT SUM(sub_total) INTO subTotalFactura FROM detalle_factura_temp WHERE id_empleado=pI_id_empleado;
    SELECT SUM(total_impuesto) INTO totalImpuestoFactura FROM detalle_factura_temp WHERE id_empleado=pI_id_empleado;
    SELECT SUM(total_descuento) INTO totalDescuentoFactura FROM detalle_factura_temp WHERE id_empleado=pI_id_empleado;

    SET totalFactura=ROUND(totalFactura,2);
    SET subTotalFactura=ROUND(subTotalFactura,2);
    SET totalImpuestoFactura=ROUND(totalImpuestoFactura,2);
    SET totalDescuentoFactura=ROUND(totalDescuentoFactura,2);

    SET mensaje= 'Inserción exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT *,subTotalFactura,totalFactura,totalImpuestoFactura,totalDescuentoFactura
    FROM detalle_factura_temp
    WHERE id_empleado=pI_id_empleado;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Insertar_Empleado`(
  IN pI_primer_nombre VARCHAR(50),
    IN pI_segundo_nombre VARCHAR(50),
    IN pI_primer_apellido VARCHAR(50),
    IN pI_segundo_apellido VARCHAR(50),
    IN pI_sexo VARCHAR(1),
    IN pI_direccion VARCHAR(300),
    IN pI_correo_electronico VARCHAR(100),
    IN pI_numero_identidad VARCHAR(13),
    IN pI_fecha_nacimiento DATE,
    IN pI_telefono VARCHAR(50),
  -- campos empleado
    IN pI_fecha_ingreso DATE,
    IN pI_usuario VARCHAR(50),
    IN pI_contrasena VARCHAR(128),
    IN pI_foto_url VARCHAR(100),
    IN pI_id_tipo_usuario INT(11),
    OUT pO_mensaje VARCHAR(1000),
    OUT pO_error BOOLEAN

)
SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE error BOOLEAN;
  DECLARE contador INTEGER;
  DECLARE ultimoId INTEGER;

-- Inicializaciones
  SET AUTOCOMMIT=0;
  START TRANSACTION;
  SET mensaje='';
  SET contador = 0;
  SET error=FALSE;
  
   -- Verificaciones de campos obligatorios que no esten vacios
   -- __________________________VALIDACIONES___________________
    IF pI_usuario='' OR pI_usuario IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Usuario vacio, ');
    ELSE
        SELECT COUNT(*) INTO contador FROM empleado 
        WHERE usuario=pI_usuario;

        IF contador>=1 THEN
          SET mensaje = CONCAT(mensaje, 'El usuario ya existe');
        END IF;
    END IF;

    IF pI_fecha_ingreso='' OR pI_fecha_ingreso IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Fecha de ingreso vacia, ');
    END IF;

    IF pI_contrasena='' OR pI_contrasena IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Contraseña vacia, ');
    END IF;

    IF pI_id_tipo_usuario='' OR pI_id_tipo_usuario IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Tipo usuario vacio, ');
    ELSE
        SELECT COUNT(*) INTO contador FROM tipo_usuario WHERE id_tipo_usuario = pI_id_tipo_usuario;
        IF contador=0 THEN
          SET mensaje = CONCAT(mensaje, 'El tipo de usuario no existe');
        END IF;

    END IF;

    IF pI_telefono='' OR pI_telefono IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Telefono vacio, ');
    END IF;

    IF pI_fecha_nacimiento='' OR pI_fecha_nacimiento IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Fecha de nacimiento vacia, ');
    END IF;

     IF pI_direccion='' OR pI_direccion IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Direccion vacia, ');
    END IF;

     IF pI_correo_electronico='' OR pI_correo_electronico IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Correo electronico vacio, ');
    END IF;
   
   IF mensaje <> '' THEN
        SET error = TRUE;
        SET mensaje=mensaje;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;


    CALL SP_Insertar_Persona(pI_primer_nombre,
                             pI_segundo_nombre,
                             pI_primer_apellido,
                             pI_segundo_apellido,
                             pI_sexo,
                             pI_direccion,
                             pI_correo_electronico,
                             pI_numero_identidad,
                             pI_fecha_nacimiento,
                             pI_telefono,
                             @mensajeInsertarPersonaEmpleado,
                             @errorInsertarPesonaEmpleado
                             
    );
    
    IF @errorInsertarPesonaEmpleado THEN
        SET mensaje = @mensajeInsertarPersonaEmpleado;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
    END IF;
   -- utlimo id persona + insercion de empleado
    SELECT MAX(id_persona) INTO ultimoId FROM persona;

    INSERT INTO empleado(fecha_ingreso, 
                         id_persona, 
                         usuario, 
                         contrasena, 
                         foto_url, 
                         estado,
                         id_tipo_usuario) 
                  VALUES (pI_fecha_ingreso,
                          ultimoId,
                          pI_usuario,
                          pI_contrasena,
                          pI_foto_url,
                          'A',
                          pI_id_tipo_usuario
                         );
    COMMIT;

    SET mensaje='Inserción exitosa';
    SET error = FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje,error;


END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Insertar_Factura`(
   pI_id_empleado INT(11),
   pI_id_cliente INT(11),
   pI_id_farmacia INT(11),
   pI_id_forma_pago INT(11),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);
    DECLARE error BOOLEAN;
    DECLARE contador INT;
    DECLARE idCliente INT;
    DECLARE idFarmacia INT;
    DECLARE idFormaPago INT;
    DECLARE idFactura INT;
    DECLARE idMovimiento INT;

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    SET SQL_SAFE_UPDATES = 0;
    START TRANSACTION;
    SET mensaje = '';
    SET contador=0;
    SET error=FALSE;
    SET idFarmacia=1; -- Farmacia por defecto
    SET idFormaPago=1; -- Forma de pago por defecto (Efectivo)

    -- _______________Validaciones__________________

    IF pI_id_empleado='' OR pI_id_empleado IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Codigo de empleado vacio, ');
    ELSE
      SELECT COUNT(*) INTO contador FROM detalle_factura_temp WHERE id_empleado=pI_id_empleado;
      IF contador=0 THEN
        SET mensaje=CONCAT(mensaje,'Este empleado no ha facturado productos');
      END IF;
    END IF;

    IF NOT(pI_id_cliente='' OR pI_id_cliente IS NULL) THEN
      SELECT COUNT(*) INTO contador FROM cliente WHERE id_cliente=pI_id_cliente;
      IF contador=0 THEN
        SET mensaje=CONCAT(mensaje,'Este cliente no existe');
      ELSE
        SELECT id_cliente INTO idCliente FROM cliente WHERE idCliente=pI_id_cliente AND estado='A';
      END IF;
    ELSE
      SET idCliente=471;  -- id_cliente --> consumidor final
    END IF;

    -- ____________Mensaje de resultado____________
    IF mensaje <> '' THEN
      SET error=TRUE;
      SET pO_mensaje=mensaje;
      SET pO_error=error;
      SELECT mensaje,error;
      LEAVE SP;
    END IF;

   -- _______________SQL Statements_______________
   -- Consultas para insetar en las tablas de facturacion
   -- > Sintaxis: INSERT INTO Table1 SELECT * FROM Table2
   -- Insertar en factura
    INSERT INTO factura(
            fecha_hora,
            coste_total,
            observacion,
            id_empleado,
            id_cliente,
            id_forma_pago,
            id_farmacia)
    SELECT  NOW() as fecha_hora,
            SUM(total) as coste_total,
            'Obs' as observacion,
            id_empleado,
            idCliente as id_cliente,
            idFormaPago as id_forma_pago,
            idFarmacia as id_farmacia
    FROM detalle_factura_temp 
    WHERE id_empleado=pI_id_empleado;

    SET idFactura=LAST_INSERT_ID();  -- Ultimo id de factura ingresado

    -- Insertar en detalle_factura
    INSERT INTO detalle_factura(
                    id_factura,
                    cantidad,
                    id_lote,
                    id_descuento,
                    id_impuesto)
            SELECT  idFactura,
                    cantidad,
                    id_lote,
                    id_descuento,
                    id_impuesto
    FROM detalle_factura_temp
    WHERE id_empleado=pI_id_empleado;

    -- Insertar en movimiento_producto
    INSERT INTO movimiento_producto(fecha,id_empleado,tipo_movimiento)
           VALUES(CURDATE(),pI_id_empleado,'V');   -- > tipo_movimienot: A=Acreditacion, V=Venta, R=Retiro;
    
    SET idMovimiento=LAST_INSERT_ID(); -- Ultimo id_movimiento insertado
    INSERT INTO detalle_movimiento(
                          id_movimiento,
                          cantidad,
                          id_lote)
                  SELECT  idMovimiento,
                          cantidad,
                          id_lote
    FROM detalle_factura_temp
    WHERE id_empleado=pI_id_empleado;

    UPDATE (SELECT id_lote,SUM(cantidad) as cantidad FROM detalle_factura_temp 
    WHERE id_empleado=pI_id_empleado
    GROUP BY id_lote) as origen, lote as destino
    SET destino.existencia=destino.existencia-origen.cantidad
    WHERE destino.id_lote=origen.id_lote;

    CALL SP_Eliminar_Filas_Detalle_Factura_Temp(pI_id_empleado,@mensajeEliminarFilas,@errorEliminarFilas);
    IF @errorEliminarFilas THEN
      SET mensaje=@mensajeEliminarFilas;
      SET error=@errorEliminarFilas;
      SET pO_mensaje=mensaje;
      SET pO_error=error;
      SELECT mensaje,error;
      LEAVE SP;
    END IF;

 
    SET mensaje= 'Facturación exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT idFactura,mensaje,error;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Insertar_Impuesto`(
  par_impuesto VARCHAR(45)
  ,par_valor INT
)
InsertarImpuesto:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE contador INT;
  DECLARE error BOOLEAN;
  # DECLARE ultimoID INT;

-- Inicializaciones
  SET mensaje='';
  SET error = TRUE;
  SET contador=0;
  # SET ultimoId = 0;
-- _________________VALIDACIONES________________________________
  IF par_impuesto = '' OR par_impuesto IS NULL THEN
    SET mensaje = CONCAT(mensaje, 'Nombre de impuesto vacio, ');
  ELSE
    SELECT COUNT(*) INTO contador
    FROM impuesto WHERE UPPER(descripcion) LIKE UPPER(par_impuesto);

    IF contador>0 THEN
      SET mensaje =CONCAT(mensaje, 'El impuesto ya existe, ');
    END IF;

  END IF;

  IF par_valor IS NULL OR par_valor = 0 OR par_valor = '' THEN
    SET mensaje = CONCAT(mensaje, 'El impuesto debe ser mayor que cero, ');
  END IF;

  IF mensaje != '' THEN
    SELECT mensaje, error;
    LEAVE InsertarImpuesto;
  END IF;



  SET AUTOCOMMIT = 0;
  START TRANSACTION;

  INSERT INTO impuesto (descripcion, porcentaje, estado, fecha_inicio) VALUES
  (par_impuesto, par_valor, 'A', CURDATE());
  # SELECT LAST_INSERT_ID() INTO ultimoID;
  COMMIT;

  SET mensaje = 'Inserción exitosa';
  SET error = FALSE;
  SELECT mensaje, error;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Insertar_Impuesto_Producto`(
        IN pI_id_impuesto INTEGER(11),
        IN pI_id_producto INTEGER(11),
        IN pI_fecha_inicio DATE,
        IN pI_fecha_fin DATE,
        IN pI_estado VARCHAR(1),

        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE error BOOLEAN;
  DECLARE contador INTEGER;


  SET AUTOCOMMIT=0;
  START TRANSACTION;
-- Inicializaciones
  SET mensaje='';
  SET error = FALSE;
  SET contador = 0;
  

  -- ________________VALIDACIONES________________________________________  
   -- Verificaciones de campos obligatorios que no esten vacios
    IF pI_id_impuesto='' OR pI_id_impuesto IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador de lote vacio, ');
    END IF;

    IF pI_id_producto='' OR pI_id_producto IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador de producto vacio, ');
    END IF;

    IF pI_fecha_inicio='' OR pI_fecha_inicio IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Fecha de inicio vacia, ');
    END IF;

    IF pI_estado='' OR pI_estado IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Estado vacio ');
    ELSE
       IF NOT( pI_estado = 'A' OR pI_estado = 'I' ) THEN
          SET mensaje=CONCAT(mensaje,'Estado invalido, ');
      END IF;
    END IF;

   IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        -- SELECT mensaje,error;
        LEAVE SP;
   END IF;
  -- _________________________CUERPO DEL PL_______________________________-
  
    
   SELECT COUNT(*) INTO contador FROM impuesto WHERE id_impuesto = pI_id_impuesto;
   IF contador = 0 THEN
     SET mensaje=CONCAT('EL impuesto no existe ,', mensaje);
   END IF;

   SELECT COUNT(*) INTO contador FROM producto WHERE id_producto = pI_id_producto;
   IF contador = 0 THEN
     SET mensaje=CONCAT('El producto no existe  ,', mensaje);
   END IF;

   SELECT COUNT(*) INTO contador FROM impuesto_producto WHERE id_impuesto = pI_id_impuesto and id_producto = pI_id_producto AND estado='A';
   IF contador >0  THEN
     SET mensaje=CONCAT('Este producto ya posee este tipo de impuesto ,', mensaje);
   END IF;

   IF pI_fecha_inicio < CURDATE() THEN
     SET mensaje = CONCAT('Fecha de inicio inválida, no puede ser menor que la fecha actual');
   END IF;

    IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        -- SELECT mensaje,error;
        LEAVE SP;
   END IF;

   INSERT INTO impuesto_producto (id_impuesto,
                              id_producto, 
			                    		fecha_inicio,
			                    		fecha_fin,
                              estado)
			                    VALUES (pI_id_impuesto,
                              pI_id_producto,
			                    		pI_fecha_inicio,
			                    		pI_fecha_fin,
			                    		pI_estado);
    COMMIT;
    SET mensaje='Inserción exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    -- SELECT mensaje,error;
END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Insertar_Laboratorio`(
  pI_nombre_laboratorio VARCHAR(45),
  pI_direccion VARCHAR(200),
  pI_telefono_laboratorio VARCHAR(50)
)
InsertarLaboratorio:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE contador INT;
  DECLARE error BOOLEAN;
  DECLARE ultimoID INT;

-- Inicializaciones
  SET mensaje='';
  SET error = TRUE;
  SET contador=0;
  SET AUTOCOMMIT = 0;
  START TRANSACTION;

  -- __________________VALIDACIONES____________________________________
  IF pI_nombre_laboratorio = '' OR pI_nombre_laboratorio IS NULL THEN
    SET mensaje = 'Laboratorio vacio';
    SELECT mensaje, error;
    LEAVE InsertarLaboratorio;
  END IF;
-- __________________CUERPO DEL PL____________________________________
  SELECT count(*) INTO contador FROM laboratorio
  WHERE UPPER(nombre_laboratorio) LIKE UPPER(pI_nombre_laboratorio);
  IF contador > 0 THEN
    SET mensaje = CONCAT('El laboratorio ', pI_nombre_laboratorio,' ya existe');
    SELECT mensaje, error;
    LEAVE InsertarLaboratorio;
  END IF;

    -- telefono
   IF NOT(pI_telefono_laboratorio='' OR pI_telefono_laboratorio IS NULL) THEN
     IF( pI_telefono_laboratorio REGEXP'^(2|3|6|7|8|9){1}[0-9]{3}-[0-9]{4}$')=0 THEN
          SET mensaje='Formato de telefono invalido';
          SELECT mensaje, error;
          LEAVE InsertarLaboratorio;
      ELSE
          SELECT COUNT(*) INTO contador FROM laboratorio
          WHERE pI_telefono_laboratorio = telefono_laboratorio; 
          IF contador>0 THEN
            SET mensaje='El telefono del laboratorio ya existe, ';
            SELECT mensaje, error;
            LEAVE InsertarLaboratorio;
          END IF;
      END IF;
   END IF;


  INSERT INTO laboratorio (nombre_laboratorio, estado, direccion, telefono_laboratorio) 
  VALUES (pI_nombre_laboratorio, 'A', pI_direccion, pI_telefono_laboratorio);
  COMMIT;

  SET mensaje = 'Inserción exitosa';
  SET error = FALSE;
  SELECT mensaje, error;
END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Insertar_Lote`(
        IN pI_id_producto INT(11),
        IN pI_lote VARCHAR(100),
        IN pI_precio_costo_unidad DOUBLE,
        IN pI_precio_venta_unidad DOUBLE,
        IN pI_fecha_elaboracion DATE,
        IN pI_fecha_vencimiento DATE,
        IN pI_existencia INT(10),
        IN pI_id_descuento INT(11),

        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(1000);
  DECLARE error BOOLEAN;
  DECLARE contador INTEGER;
  DECLARE ultimoId INTEGER;
  DECLARE fechaFin DATE;

  SET AUTOCOMMIT=0;
  START TRANSACTION;
-- Inicializaciones
  SET mensaje='';
  SET error = FALSE;
  SET contador = 0;
   -- ___________________VALIDACIONES___________________________________
   -- Verificaciones de campos obligatorios que no esten vacios
    IF pI_id_producto='' OR pI_id_producto IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador de producto vacio, ');
    END IF;

    IF pI_lote='' OR pI_lote IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Nombre del lote vacio, ');
    END IF;

    IF pI_precio_costo_unidad='' OR pI_precio_costo_unidad IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Precio de costo vacio, ');
    END IF;

    IF pI_precio_venta_unidad='' OR pI_precio_venta_unidad IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Precio de venta vacio, ');
    END IF;

    IF pI_fecha_elaboracion=''  OR pI_fecha_elaboracion IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Fecha de elaboracion vacia, ');
    END IF;

    IF pI_fecha_vencimiento=''  OR pI_fecha_vencimiento IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Fecha de vencimiento vacia, ');
    END IF;

    IF pI_existencia=''  OR pI_existencia IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Existencia vacia, ');
    END IF;
    -- Las farmacias en el estado de HN están obligadas a otorgar el 25% de descuento a las personas mayores
    IF pI_id_descuento=''  OR pI_id_descuento IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Descuento vacio');
    END IF;
    
   IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;

    -- ___________________CUERPO DEL PL_________________________________

   SELECT COUNT(*) INTO contador FROM producto WHERE id_producto = pI_id_producto;
   IF contador = 0 THEN
     SET mensaje=CONCAT(mensaje, 'EL producto no existe, ');
   ELSE
     SELECT COUNT(*) INTO contador FROM lote WHERE id_producto=pI_id_producto AND lote=pI_lote;
     IF contador>=1 THEN 
        SET mensaje=CONCAT(mensaje,'Ya existe este lote, no se puede repetir el nombre del lote con el mismo producto, ');
     END IF;
   END IF;

    SELECT COUNT(*) INTO contador FROM descuento WHERE id_descuento=pI_id_descuento AND estado='A';
    IF contador=0 THEN
      SET mensaje=CONCAT(mensaje,'El descuento no existe');
    END IF;

   IF pI_fecha_elaboracion > CURDATE() THEN
     SET mensaje = CONCAT('Fecha de elaboración inválida, fecha mayor que la actual, ');
   END IF;

   IF pI_fecha_vencimiento < CURDATE() THEN
      SET mensaje=CONCAT(mensaje,'Fecha de vencimiento invalida, fecha menor que la actual, ');
   END IF;

   IF pI_fecha_elaboracion >= pI_fecha_vencimiento THEN
     SET mensaje = CONCAT('Fecha de vecimiento inválida, fecha elaboracion mayor o igual que fecha de vencimiento, ');
   END IF;

   IF pI_precio_costo_unidad=0 THEN
      SET mensaje=CONCAT(mensaje,'Precio de costo invalido, no puede ser cero, ');
   END IF;

   IF pI_precio_venta_unidad=0 THEN
      SET mensaje=CONCAT(mensaje,'Precio venta invalido, no puede ser cero,');
   END IF;

   IF pI_existencia<=0 THEN
      SET mensaje=CONCAT(mensaje,'Existencia invalida, no puede ser menor o igual a cero,');
   END IF;

   IF NOT(pI_precio_venta_unidad=0 OR pI_precio_costo_unidad=0) THEN
      IF pI_precio_costo_unidad>=pI_precio_venta_unidad THEN
        SET mensaje=CONCAT(mensaje,'Precio de costo no puede ser mayor o igual que precio venta');
      END IF;
   END IF;

   IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;



   INSERT INTO lote (id_producto, 
          					lote, 
          					precio_costo_unidad,
          					precio_venta_unidad,
          					fecha_elaboracion,
          					fecha_vecimiento,
          					estado,
          					existencia)
        		VALUES  (pI_id_producto,
          					 pI_lote,
          					 pI_precio_costo_unidad,
          					 pI_precio_venta_unidad,
          					 pI_fecha_elaboracion,
          					 pI_fecha_vencimiento,
                     'A',
                     pI_existencia);
    COMMIT;

 
    SELECT fecha_fin INTO fechaFin FROM descuento WHERE id_descuento=pI_id_descuento;

    SELECT MAX(id_lote) INTO ultimoId FROM lote;
    CALL SP_Insertar_Descuento_Lote(ultimoId, pI_id_descuento, CURDATE(), fechaFin,'A',@mensajeInsertarLoteDescuento,@errorInsertarLoteDescuento);
    IF @errorInsertarLoteDescuento THEN
      SET mensaje=@mensajeInsertarLoteDescuento;
      SET error=TRUE;
      SET pO_mensaje=mensaje;
      SET pO_error=error;
      SELECT mensaje,error;
      LEAVE SP;
    END IF;

    SET mensaje := 'Inserción exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje,error;
END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Insertar_Persona`(
    IN pI_primer_nombre VARCHAR(50),
    IN pI_segundo_nombre VARCHAR(50),
    IN pI_primer_apellido VARCHAR(50),
    IN pI_segundo_apellido VARCHAR(50),
    IN pI_sexo VARCHAR(1),
    IN pI_direccion VARCHAR(300),
    IN pI_correo_electronico VARCHAR(100),
    IN pI_numero_identidad VARCHAR(13),
    IN pI_fecha_nacimiento DATE,
    IN pI_telefono VARCHAR(50),
    
    OUT pO_mensaje VARCHAR(1000),
    OUT pO_error BOOLEAN
)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);
    DECLARE error BOOLEAN;
    DECLARE contador INT;
    DECLARE isTelefono BOOLEAN;
    DECLARE ultimoId INT;

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    SET mensaje = '';
    SET isTelefono=FALSE;

    -- ___________________VALIDACONES___________________________
    IF pI_primer_nombre='' OR pI_primer_nombre IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Primer nombre vacio, ');
    END IF; 
    IF pI_primer_apellido='' OR pI_primer_apellido IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Primer apellido vacio, ');
    END IF; 
    IF pI_sexo='' OR pI_sexo IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Sexo vacio, ');
    END IF;
     IF pI_numero_identidad='' OR pI_numero_identidad IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Numero de identidad vacia, ');
    END IF;

    
    -- Otras Validaciones
    -- email
    IF NOT (pI_correo_electronico='' OR pI_correo_electronico IS NULL) THEN 
        IF (pI_correo_electronico  REGEXP '^[a-zA-Z0-9][a-zA-Z0-9._-]*@[a-zA-Z0-9][a-zA-Z0-9._-]*\\.[a-zA-Z]{2,4}$') = 0 THEN
            SET mensaje=CONCAT(mensaje, 'Correo electronico invalido, ');
        END IF;
    END IF;
    -- genero
    IF NOT (pI_sexo='' OR pI_sexo IS NULL) THEN
        IF NOT( pI_sexo = 'M' OR pI_sexo = 'F' OR pI_sexo='I') THEN
         SET mensaje=CONCAT(mensaje,'Sexo invalido, ');
        END IF;
    END IF;

    -- identidad
    IF NOT (pI_numero_identidad='' OR pI_numero_identidad IS NULL) THEN
        IF (pI_numero_identidad REGEXP '^(0[1-9]|1[0-8])(0[1-9]|1[0-9]|2[1-8])(19|2[0-9])[0-9]{2}[0-9]{5}$' ) = 0 THEN
            SET mensaje=CONCAT(mensaje,'Numero de identidad invalido, ');
        END IF;
    END IF;

    -- telefono
     IF NOT(pI_telefono='' OR pI_telefono IS NULL) THEN
       IF( pI_telefono REGEXP'^(2|3|6|7|8|9){1}[0-9]{3}-[0-9]{4}$')=0 THEN
            SET mensaje=CONCAT('Formato de telefono invalido, ');
        ELSE
          SET isTelefono=TRUE;
          SELECT COUNT(*) INTO contador FROM telefono WHERE telefono=pI_telefono;
          IF contador>=1 THEN
            SET mensaje=CONCAT(mensaje,"El telefono ya existe, ");
          END IF;
        END IF;
    END IF;
    -- __________________________CUERPO DEL PL______________________________________________
    -- Validar que el numero de identidad no se repita 
    SELECT COUNT(*) INTO contador FROM persona WHERE numero_identidad = pI_numero_identidad;
    IF contador>=1 THEN
        SET mensaje = CONCAT(mensaje, 'El numero de identidad ya existe, ');
    END IF;

      -- Validar  correo unico
    SELECT COUNT(*) INTO contador FROM persona WHERE correo_electronico = pI_correo_electronico;
    IF contador>=1 THEN
        SET mensaje = CONCAT(mensaje, 'El correo electronico ya existe, ');
    END IF;

    IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error = TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        -- SELECT mensaje, resultado; --Hacer el mismo trabajo que las variables de salida
        -- se llama al procedimiento con call y devuelve los valores de salida mensaje y resultado
        -- siendo mensaje y resultado variable locales declare mensaje varchar(1000); 
        -- declare error BOOLEAN;
        LEAVE SP;
    END IF;

    -- Insert y Commit
    INSERT INTO persona (primer_nombre, 
                         segundo_nombre, 
                         primer_apellido, 
                         segundo_apellido,
                         sexo, 
                         direccion, 
                         correo_electronico,
                         numero_identidad, 
                         fecha_nacimiento,
                         estado)
                 VALUES (pI_primer_nombre,
                         pI_segundo_nombre,
                         pI_primer_apellido, 
                         pI_segundo_apellido,
                         pI_sexo, 
                         pI_direccion,
                         pI_correo_electronico, 
                         pI_numero_identidad, 
                         pI_fecha_nacimiento,
                         'A');
    COMMIT;
	IF isTelefono THEN
        SELECT MAX(id_persona) INTO ultimoId FROM persona;
        CALL SP_Insertar_Telefono_Persona (ultimoId,'A',pI_telefono,@mensajeInsertarTelefonoPersona,@errorInsertarTelefonoPersona);
        IF @errorInsertarTelefonoPersona THEN
            SET mensaje=@mensajeInsertarTelefonoPersona;
            SET error = TRUE;
            SET pO_mensaje=mensaje;
            SET pO_error=error;
            SELECT mensaje,error;
            LEAVE SP;
        END IF;
    END IF;
      
    SET mensaje='Inserción exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje, error;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Insertar_Presentacion`(
  pI_presentacion VARCHAR(45)
)
InsertarImpuesto:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE contador INT;
  DECLARE error BOOLEAN;
  # DECLARE ultimoID INT;

-- Inicializaciones
  SET mensaje='';
  SET error = TRUE;
  SET contador=0;

-- _________________VALIDACIONES________________________________
  IF pI_presentacion = '' OR pI_presentacion IS NULL THEN
    SET mensaje = CONCAT(mensaje, 'Nombre de la presentacion vacio, ');
  ELSE
    SELECT COUNT(*) INTO contador
    FROM presentacion WHERE UPPER(presentacion) LIKE UPPER(pI_presentacion);

    IF contador>0 THEN
      SET mensaje =CONCAT(mensaje, 'La presentacion ya existe, ');
    END IF;

  END IF;


  IF mensaje != '' THEN
    SELECT mensaje, error;
    LEAVE InsertarImpuesto;
  END IF;


  SET AUTOCOMMIT = 0;
  START TRANSACTION;

  INSERT INTO presentacion (presentacion,estado) VALUES
  (pI_presentacion,'A');
  COMMIT;

  SET mensaje = 'Inserción exitosa';
  SET error = FALSE;
  SELECT mensaje, error;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Insertar_Producto`(
        IN pI_id_presentacion INT(11),
        IN pI_nombre VARCHAR(100),
        IN pI_codigo_barra VARCHAR(45),
        IN pI_url_foto VARCHAR(500),
        -- campos a insertar en tablas intermedias
        IN pI_ids_categorias VARCHAR(1000),
        IN pI_id_impuesto INT(11),
        -- Campo para medicamento
        IN pI_id_laboratorio INT(11),
        -- opcion "P"=>Producto , opcion "M"=>Medicamento, parametro no null
        IN pI_opcion VARCHAR(1),

        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(1000);
  DECLARE contador INT;
  DECLARE error BOOLEAN;
  DECLARE cadena VARCHAR(1000);
  DECLARE iterador INT;
  DECLARE idCategoria VARCHAR(100);
  DECLARE contadorDigitos INT;
  DECLARE ultimoId INT;
  DECLARE id INT(11);
  

  -- Inicializaciones
  SET mensaje='';
  SET contador = 0;
  SET error= FALSE;
  SET cadena='';
  SET iterador=1;
  SET contadorDigitos=0;
  -- Borrar espacios, ids_categoria
  SET cadena  = REPLACE(pI_ids_categorias,' ','');
  -- _________________VERIFICACIONES_________________________________________
   -- Verificaciones de campos obligatorios que no esten vacios
    -- presentacion
    IF pI_id_presentacion='' OR pI_id_presentacion IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador de presentacion vacio, ');
    END IF;
    -- nombre
    IF pI_nombre='' OR pI_nombre IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Nombre del producto vacio, ');
    END IF;
    -- codigo de barra alfanumerico
    IF pI_codigo_barra='' OR pI_codigo_barra IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Codigo de barra vacio, ');
    END IF;

    IF pI_ids_categorias='' OR  cadena=',' OR pI_ids_categorias IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador de categoria vacio,');
    END IF;

     IF pI_id_impuesto='' OR pI_id_impuesto IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador de impuesto vacio, ');
    END IF;

    IF pI_opcion='' OR pI_opcion IS NULL THEN
        SET mensaje=CONCAT(mensaje, 'Opcion vacia, ');
    END IF;

    IF NOT(pI_opcion='M' OR pI_opcion='P') THEN
        SET mensaje=CONCAT(mensaje, 'Opcion invalida, ');
    END IF;

    -- validacion de codigo de barra numerico
    
    -- IF NOT (pI_codigo_barra='' OR pI_codigo_barra IS NULL) THEN 
    --   IF (pI_codigo_barra  REGEXP '^[0-9]+$') = 0 THEN
    --       SET mensaje=CONCAT(mensaje, 'codigo de barra invalido, ');
    --   END IF;
    -- END IF;
        

	 -- el campo de la foto de un producto puede ser null
   -- IF pI_url_foto='' OR pI_url_foto IS NULL THEN 
   --     SET mensaje=CONCAT(mensaje, 'foto del producto, ');
   -- END IF;

   -- Verificacion de parametros basicos   
   IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;

   -- _________________CUERPO DEL PL______________________________________
   -- validacion de que id_categoria exista
   SELECT COUNT(*)  INTO contador
   FROM presentacion    
   WHERE  id_presentacion= pI_id_presentacion;
   
   IF contador=0 THEN
      SET mensaje = CONCAT(mensaje, 'La presentacion no existe, ');
   END IF;
   
   SELECT COUNT(*) INTO contador
   FROM producto
   WHERE codigo_barra = pI_codigo_barra;
   
   IF contador >=1 THEN
     SET mensaje = CONCAT(mensaje, 'Codigo de barra asignado a otro producto, ');
   END IF;

   SELECT COUNT(*) INTO contador
   FROM impuesto 
   WHERE id_impuesto = pI_id_impuesto;

   IF contador=0 THEN
      SET mensaje = CONCAT(mensaje, 'El impuesto no existe, ');
   END IF;

   IF pI_opcion='M' THEN
      IF pI_id_laboratorio='' OR pI_id_laboratorio IS NULL THEN
          SET mensaje=CONCAT(mensaje, 'Identificador de laboratorio vacio,  ');
      ELSE
          SELECT COUNT(*) INTO contador FROM laboratorio WHERE id_laboratorio = pI_id_laboratorio;
          IF contador=0 THEN
             SET mensaje=CONCAT(mensaje,'El laboratorio no existe,');
          END IF;
      END IF;
   END IF;

   IF mensaje <> '' THEN
      SET mensaje=mensaje;
      SET error=TRUE;
      SET pO_mensaje=mensaje;
      SET pO_error=error;
      SELECT mensaje,error;
      LEAVE SP;
   END IF;


   -- Contar candidad de comas en la cadena, luego sumarle 1 para establecer en numero de ids ingresados
   SET contadorDigitos = LENGTH(cadena) - LENGTH(REPLACE(cadena, ',', '')) + 1;

   -- FN_Split_Str recibe 3 argumentos(x , del , pos), x=> cadena ,
   -- del => delimitador(en este caso es ','), pos --> posicion a acceder , pos=1 => 11, pos=2 => 54;
   -- SELECT FN_Split_Str('11,54,3,4,55,6',  ',' ,7)

   
   -- Validacion de ids_categorias, todas deben de existir en la db
    WHILE iterador<=contadorDigitos DO
        SET idCategoria = FN_Split_Str(cadena, ',', iterador);
        IF NOT(idCategoria='' OR idCategoria IS NULL) THEN
         -- verificar que el idCategoria no sea vacio, dado que puede llegar una cadena=>"1,2,3,4,"
        -- la funcion Fn_SPlit_Str devolvera para el ulitmo elemento una cadena vacia ''
        -- si este fuera el caso, la consulta devolveria un error
          SELECT COUNT(*) INTO contador FROM categoria WHERE id_categoria=idCategoria;
          IF contador=0 THEN
            SET mensaje=CONCAT('La categoria no existe');
            SET error=TRUE;
            SET pO_mensaje=mensaje;
            SET pO_error=error;
            SELECT mensaje,error;
            LEAVE SP;
          END IF;
        END IF;

        SET iterador= iterador + 1;
    END WHILE;

    IF pI_opcion='M' THEN
      SELECT COUNT(*) INTO contador FROM medicamentos m
      INNER JOIN producto p ON p.id_producto=m.id_producto
      WHERE p.nombre=pI_nombre AND m.id_laboratorio=pI_id_laboratorio AND p.id_presentacion=pI_id_presentacion;
      IF contador>=1 THEN
          SET mensaje=CONCAT('El medicamento con este laboratorio y presentacion ya esta registrado');
          SET error=TRUE;
          SET pO_mensaje=mensaje;
          SET pO_error=error;
          SELECT mensaje,error;
          LEAVE SP;
      END IF;
    END IF;


    -- Insertar Producto
    INSERT INTO producto (
                      id_presentacion,
                      nombre,
                      codigo_barra,
                      url_foto,
                      estado)
                 VALUES (
                      pI_id_presentacion,
                      pI_nombre,
                      pI_codigo_barra,
                      pI_url_foto,
                      'A');
    

   -- Insertar categoriaxproducto
   SET ultimoId=LAST_INSERT_ID();
   SET iterador=1;
   WHILE iterador<=contadorDigitos DO
        SET idCategoria = FN_Split_Str(cadena, ',', iterador);
        IF NOT(idCategoria='' OR idCategoria IS NULL) THEN
      		 CALL SP_Insertar_Categoria_Producto(idCategoria, ultimoId, 'A',@mensajeInsertarCategoriaProducto, @errorInsertarCategoriaProducto);
             IF @errorInsertarCategoriaProducto THEN
				SET mensaje=@mensajeInsertarCategoriaProducto;
                SET error=TRUE;
                SET pO_mensaje=mensaje;
                SET pO_error=error;
                SELECT mensaje,error;
                LEAVE SP;
             END IF;
        END IF;

        SET iterador= iterador + 1;
    END WHILE;


    -- Insertar ImpuestoxProducto
    CALL SP_Insertar_Impuesto_Producto(pI_id_impuesto, ultimoId, CURDATE(), DATE(''), 'A',@mensajeInsertarImpuestoProducto,@errorInsertarImpuestoProducto);

    -- var => pO_error de =>CALL SP_Insertar_Impuesto
    IF @errorInsertarImpuestoProducto THEN
        SET mensaje=@mensajeInsertarImpuestoProducto;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
    END IF;

    -- Insertar Medicamento
    IF pI_opcion="M" THEN
       INSERT INTO medicamentos(id_laboratorio, id_producto, estado)
           VALUES(pI_id_laboratorio,ultimoId,'A');
    END IF;

   COMMIT;
  -- Mensaje de salida, proceso exitoso
   SET mensaje='Inserción exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Insertar_Telefono_Persona`(
  IN pI_id_persona INTEGER(11),
  IN pI_estado VARCHAR(1),
  IN pI_telefono VARCHAR(50),
  OUT pO_mensaje VARCHAR(1000),
  OUT pO_error BOOLEAN

)
SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(1000);
  DECLARE contador INTEGER;
  DECLARE ultimoId INTEGER;
  DECLARE error BOOLEAN;

-- Inicializaciones
  SET AUTOCOMMIT=0;
  SET ultimoId=0;
  START TRANSACTION;
  SET mensaje='';
  SET contador = 0;
  SET error=FALSE;
  
   -- Verificaciones de campos obligatorios que no esten vacios
   -- __________________________VALIDACIONES___________________
    IF pI_id_persona='' OR pI_id_persona IS NULL THEN 
        SET mensaje=CONCAT('Identificador de persona vacio, ',mensaje);
    END IF;
    IF pI_estado='' OR pI_estado IS NULL THEN 
        SET mensaje=CONCAT('Identificador de telefono vacio, ',mensaje);
    END IF;
    IF pI_telefono='' OR pI_telefono IS NULL THEN
      SET mensaje=CONCAT('Telefono vacio, ',mensaje);
    ELSE
      IF( pI_telefono REGEXP'^(2|3|6|7|8|9){1}[0-9]{3}-[0-9]{4}$')=0 THEN
        SET mensaje=CONCAT(mensaje,'Formato del telefono invalido, ');
      END IF;
    END IF;
    -- _________________________CUERPO DEL PL_________________
    IF NOT( pI_estado = 'A' OR pI_estado = 'I' ) THEN
      SET mensaje=CONCAT(mensaje,'Estado invalido, ');
    END IF;

    SELECT COUNT(*) INTO contador FROM persona 
    WHERE id_persona=pI_id_persona;

    IF contador= 0 THEN
      SET mensaje = CONCAT(mensaje, 'La persona no existe ');
    END IF;

   SELECT COUNT(*) INTO contador FROM telefono 
    WHERE telefono= pI_telefono ;

    IF contador>0 THEN
      SET mensaje = CONCAT(mensaje, 'Este numero telefónico ya existe ');
    END IF;

   IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error = TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;

   SELECT COUNT(*) INTO contador FROM telefono_persona tp
   INNER JOIN telefono t ON  tp.id_telefono = t.id_telefono
   WHERE t.telefono=pI_telefono AND tp.id_persona=pI_id_persona;

   IF contador>0 THEN
      SET mensaje ='Este numero telefónico ya existe para esta persona';
      SET error = TRUE;
      SET pO_mensaje=mensaje;
      SET pO_error=error;
      SELECT mensaje,error;
      LEAVE SP;
   END IF;

   
     INSERT INTO telefono (telefono)
                VALUES(pI_telefono);
  
   SELECT MAX(id_telefono) INTO ultimoId FROM telefono;
-- utlimo id telefono  + insercion de telefono_persona
    INSERT INTO telefono_persona( 
                                id_persona, 
                                id_telefono,
                                estado) 
                         VALUES (pI_id_persona,
                                ultimoId,
                                pI_estado);
    
    COMMIT;
    SET mensaje='Inserción exitosa';
    SET error=FALSE;
    SET pO_mensaje = mensaje;
    SET pO_error = error;
    SELECT mensaje,error;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE   PROCEDURE `SP_Login`(

  par_usuario VARCHAR(50)

  ,par_contrasena VARCHAR(128)

)
Login:BEGIN

-- Declaraciones

  DECLARE mensaje VARCHAR(255);

  DECLARE contador INT;

  DECLARE resultado BOOLEAN;



-- Inicializaciones

  SET mensaje='';

  SET resultado = FALSE;

  SET contador=0;



  IF par_usuario = '' OR par_usuario IS NULL THEN

    SET mensaje = CONCAT('[usuario]',mensaje);

  END IF;

  IF par_contrasena = SHA2('', '512') OR par_contrasena IS NULL THEN

    SET mensaje = CONCAT('[contrasena]',mensaje);

  END IF;

  IF mensaje != '' THEN

    SET mensaje = CONCAT('Se necesitan los siguientes campos: ', mensaje);

    SELECT mensaje, resultado;

    LEAVE Login;

  END IF;



  SELECT count(*) into contador FROM empleado

  WHERE usuario = par_usuario

  AND contrasena = par_contrasena;



  IF contador = 1 THEN

    SET mensaje = 'Autenticado exitosamente';

    SET resultado = TRUE;

    SELECT

      ve.*, mensaje, resultado

    FROM VistaEmpleado ve

    INNER JOIN empleado e

      ON ve.id_empleado = e.id_empleado

    WHERE e.usuario = par_usuario

    AND   e.contrasena = par_contrasena

    AND e.estado = 'A';

    LEAVE Login;

  ELSE

    SET mensaje = 'Contraseña o usuario incorrecto';

    SET resultado = FALSE;

    SELECT mensaje, resultado;

    LEAVE Login;

  end if;



END ;;
DELIMITER ;

