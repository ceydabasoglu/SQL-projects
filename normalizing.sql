CREATE DATABASE  IF NOT EXISTS `country_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `country_db`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: country_db
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS cities;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE cities (
  cityID int NOT NULL,
  CountryCode varchar(3) DEFAULT NULL,
  CapitalCityName text,
  CapitalPopulation int DEFAULT NULL,
  PRIMARY KEY (cityID),
  KEY CountryCode (CountryCode),
  CONSTRAINT cities_ibfk_1 FOREIGN KEY (CountryCode) REFERENCES countries (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

INSERT INTO cities VALUES (1,'ABW','Oranjestad',29034),(2,'AFG','Kabul',1780000),(3,'AIA','The Valley',595),(4,'ALB','Tirana',270000),(5,'AND','Andorra la Vella',21189),(6,'ANT','Willemstad',2345),(7,'ARE','Abu Dhabi',398695),(8,'ARG','Buenos Aires',2982146),(9,'ARM','Yerevan',1248700),(10,'ASM','Fagatogo',2323),(11,'ATG','Saint John?s',24000),(12,'AUS','Canberra',322723),(13,'AUT','Wien',1608144),(14,'AZE','Baku',1787800),(15,'BDI','Bujumbura',300000),(16,'BEL','Bruxelles [Brussel]',133859),(17,'BGD','Dhaka',3612850),(18,'BGR','Sofija',1122302),(19,'BHR','al-Manama',148000),(20,'BIH','Sarajevo',360000),(21,'BLR','Minsk',1674000),(22,'BLZ','Belmopan',7105),(23,'BMU','Hamilton',1200),(24,'BOL','La Paz',758141),(25,'BRA','Brasğlia',1969868),(26,'BRB','Bridgetown',6070),(27,'BRN','Bandar Seri Begawan',21484),(28,'BTN','Thimphu',22000),(29,'CAN','Ottawa',335277),(30,'CCK','West Island',167),(31,'CHE','Bern',122700),(32,'CHL','Santiago de Chile',4703954),(33,'CHN','Peking',7472000),(34,'COK','Avarua',11900),(35,'COL','Santaf? de Bogot˜',6260862),(36,'COM','Moroni',36000),(37,'CPV','Praia',94800),(38,'CRI','San Jos?',339131),(39,'CUB','La Habana',2256000),(40,'CXR','Flying Fish Cove',700),(41,'CYM','George Town',19600),(42,'CYP','Nicosia',195000),(43,'CZE','Praha',1181126),(44,'DEU','Berlin',3386667),(45,'DJI','Djibouti',383000),(46,'DNK','K?benhavn',495699),(47,'DOM','Santo Domingo de Guzm˜n',1609966),(48,'DZA','Alger',2168000),(49,'ECU','Quito',1573458),(50,'EGY','Cairo',6789479),(51,'ERI','Asmara',431000),(52,'ESH','El-Aai?n',169000),(53,'ESP','Madrid',2879052),(54,'EST','Tallinn',403981),(55,'FIN','Helsinki [Helsingfors]',555474),(56,'FJI','Suva',77366),(57,'FLK','Stanley',1636),(58,'FRA','Paris',2125246),(59,'FRO','T«rshavn',14542),(60,'GBR','London',7285000),(61,'GEO','Tbilisi',1235200),(62,'GIB','Gibraltar',27025),(63,'GLP','Basse-Terre',12433),(64,'GNB','Bissau',241000),(65,'GRC','Athenai',772072),(66,'GRL','Nuuk',13445),(67,'GTM','Ciudad de Guatemala',823301),(68,'GUM','AgaØa',1139),(69,'HKG','Hong Kong City',1312637),(70,'HND','Tegucigalpa',813900),(71,'HRV','Zagreb',706770),(72,'HTI','Port-au-Prince',884472),(73,'HUN','Budapest',1811552),(74,'IDN','Jakarta',9604900),(75,'IND','New Delhi',301297),(76,'IRL','Dublin',481854),(77,'IRN','Teheran',6758845),(78,'IRQ','Baghdad',4336000),(79,'ISL','Reykjavğk',109184),(80,'ISR','Jerusalem',633700),(81,'ITA','Roma',2643581),(82,'JOR','Amman',1000000),(83,'JPN','Tokyo',7980230),(84,'KAZ','Astana',311200),(85,'KGZ','Bishkek',589400),(86,'KHM','Phnom Penh',570155),(87,'KIR','Bairiki',2226),(88,'KNA','Basseterre',11600),(89,'KOR','Seoul',9981619),(90,'KWT','Kuwait',28859),(91,'LAO','Vientiane',531800),(92,'LBN','Beirut',1100000),(93,'LBY','Tripoli',1682000),(94,'LCA','Castries',2301),(95,'LIE','Vaduz',5043),(96,'LKA','Colombo',645000),(97,'LSO','Maseru',297000),(98,'LTU','Vilnius',577969),(99,'LUX','Luxembourg [Luxemburg/L?tzebuerg]',80700),(100,'LVA','Riga',764328),(101,'MAC','Macao',437500),(102,'MAR','Rabat',623457),(103,'MCO','Monaco-Ville',1234),(104,'MDA','Chisinau',719900),(105,'MDG','Antananarivo',675669),(106,'MDV','Male',71000),(107,'MEX','Ciudad de M?xico',8591309),(108,'MHL','Dalap-Uliga-Darrit',28000),(109,'MKD','Skopje',444299),(110,'MLT','Valletta',7073),(111,'MMR','Rangoon (Yangon)',3361700),(112,'MNG','Ulan Bator',773700),(113,'MNP','Garapan',9200),(114,'MSR','Plymouth',2000),(115,'MTQ','Fort-de-France',94050),(116,'MWI','Lilongwe',435964),(117,'MYS','Kuala Lumpur',1297526),(118,'MYT','Mamoutzou',12000),(119,'NCL','Noum?a',76293),(120,'NFK','Kingston',800),(121,'NIC','Managua',959000),(122,'NIU','Alofi',682),(123,'NLD','Amsterdam',731200),(124,'NOR','Oslo',508726),(125,'NPL','Kathmandu',591835),(126,'NRU','Yaren',559),(127,'NZL','Wellington',166700),(128,'OMN','Masqat',51969),(129,'PAK','Islamabad',524500),(130,'PAN','Ciudad de Panam˜',471373),(131,'PER','Lima',6464693),(132,'PHL','Manila',1581082),(133,'PLW','Koror',12000),(134,'POL','Warszawa',1615369),(135,'PRI','San Juan',434374),(136,'PRK','Pyongyang',2484000),(137,'PRT','Lisboa',563210),(138,'PRY','Asunci«n',557776),(139,'PYF','Papeete',25553),(140,'QAT','Doha',355000),(141,'ROM','Bucuresti',2016131),(142,'RUS','Moscow',8389200),(143,'RWA','Kigali',286000),(144,'SAU','Riyadh',3324000),(145,'SDN','Khartum',947483),(146,'SEN','Dakar',785071),(147,'SGP','Singapore',4017733),(148,'SHN','Jamestown',1500),(149,'SJM','Longyearbyen',1438),(150,'SLV','San Salvador',415346),(151,'SMR','San Marino',2294),(152,'SOM','Mogadishu',997000),(153,'SPM','Saint-Pierre',5808),(154,'SVK','Bratislava',448292),(155,'SVN','Ljubljana',270986),(156,'SWE','Stockholm',750348),(157,'SWZ','Mbabane',61000),(158,'SYC','Victoria',41000),(159,'SYR','Damascus',1347000),(160,'TCA','Cockburn Town',4800),(161,'TCD','N?Djam?na',530965),(162,'TGO','Lom?',375000),(163,'THA','Bangkok',6320174),(164,'TJK','Dushanbe',524000),(165,'TKL','Fakaofo',300),(166,'TKM','Ashgabat',540600),(167,'TMP','Dili',47900),(168,'TON','Nuku?alofa',22400),(169,'TUN','Tunis',690600),(170,'TUR','Ankara',3038159),(171,'TUV','Funafuti',4600),(172,'TWN','Taipei',2641312),(173,'TZA','Dodoma',189000),(174,'UKR','Kyiv',2624000),(175,'URY','Montevideo',1236000),(176,'USA','Washington',572059),(177,'UZB','Toskent',2117500),(178,'VAT','Citt? del Vaticano',455),(179,'VCT','Kingstown',17100),(180,'VEN','Caracas',1975294),(181,'VGB','Road Town',8000),(182,'VIR','Charlotte Amalie',13000),(183,'VNM','Hanoi',1410000),(184,'VUT','Port-Vila',33700),(185,'WSM','Apia',35900),(186,'YEM','Sanaa',503600),(187,'YUG','Beograd',1204000),(188,'ZAF','Pretoria',658630),(189,'ZWE','Harare',1410000);

--
-- Table structure for table `continent`
--

DROP TABLE IF EXISTS continent;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE continent (
  ContinentID int NOT NULL,
  ContinentName text,
  PRIMARY KEY (ContinentID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `continent`
--

INSERT INTO continent VALUES (1,'North America'),(2,'Asia'),(3,'Europe'),(4,'South America'),(5,'Oceania'),(6,'Africa');

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS countries;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE countries (
  `Code` varchar(3) NOT NULL,
  `Name` text,
  continentID int DEFAULT NULL,
  RegionID int DEFAULT NULL,
  langID int DEFAULT NULL,
  SurfaceArea int DEFAULT NULL,
  IndepYear text,
  Population int DEFAULT NULL,
  LifeExpectancy double DEFAULT NULL,
  GNP int DEFAULT NULL,
  GovernmentForm text,
  PRIMARY KEY (`Code`),
  KEY continentID (continentID),
  KEY RegionID (RegionID),
  KEY langID (langID),
  CONSTRAINT countries_ibfk_1 FOREIGN KEY (continentID) REFERENCES continent (ContinentID),
  CONSTRAINT countries_ibfk_2 FOREIGN KEY (RegionID) REFERENCES region (RegionID),
  CONSTRAINT countries_ibfk_3 FOREIGN KEY (langID) REFERENCES `language` (langID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

INSERT INTO countries VALUES ('ABW','Aruba',1,1,1,19300,NULL,103000,78.4,82800,'Nonmetropolitan Territory of The Netherlands'),('AFG','Afghanistan',2,2,2,65209000,'1919',22720000,45.9,597600,'Islamic Emirate'),('AIA','Anguilla',1,1,3,9600,NULL,8000,76.1,6320,'Dependent Territory of the UK'),('ALB','Albania',3,3,4,2874800,'1912',3401200,71.6,320500,'Republic'),('AND','Andorra',3,3,5,46800,'1278',78000,83.5,163000,'Parliamentary Coprincipality'),('ANT','Netherlands Antilles',1,1,1,80000,NULL,217000,74.7,194100,'Nonmetropolitan Territory of The Netherlands'),('ARE','United Arab Emirates',2,4,6,8360000,'1971',2441000,74.1,3796600,'Emirate Federation'),('ARG','Argentina',4,5,7,278040000,'1816',37032000,75.1,34023800,'Federal Republic'),('ARM','Armenia',2,4,8,2980000,'1991',3520000,66.4,181300,'Republic'),('ASM','American Samoa',5,6,3,19900,NULL,68000,75.1,33400,'US Territory'),('ATG','Antigua and Barbuda',1,1,3,44200,'1981',68000,70.5,61200,'Constitutional Monarchy'),('AUS','Australia',5,7,3,774122000,'1901',18886000,79.8,35118200,'Constitutional Monarchy, Federation'),('AUT','Austria',3,8,9,8385900,'1918',8091800,77.7,21186000,'Federal Republic'),('AZE','Azerbaijan',2,4,10,8660000,'1991',7734000,62.9,412700,'Federal Republic'),('BDI','Burundi',6,9,11,2783400,'1962',6695000,46.2,90300,'Republic'),('BEL','Belgium',3,8,1,3051800,'1830',10239000,77.8,24970400,'Constitutional Monarchy, Federation'),('BGD','Bangladesh',2,2,12,14399800,'1971',129155000,60.2,3285200,'Republic'),('BGR','Bulgaria',3,10,13,11099400,'1908',8190900,70.9,1217800,'Republic'),('BHR','Bahrain',2,4,6,69400,'1971',617000,73,636600,'Monarchy (Emirate)'),('BIH','Bosnia and Herzegovina',3,3,14,5119700,'1992',3972000,71.5,284100,'Federal Republic'),('BLR','Belarus',3,10,15,20760000,'1991',10236000,68,1371400,'Republic'),('BLZ','Belize',1,11,3,2269600,'1981',241000,70.9,63000,'Constitutional Monarchy'),('BMU','Bermuda',1,12,3,5300,NULL,65000,76.9,232800,'Dependent Territory of the UK'),('BOL','Bolivia',4,5,7,109858100,'1825',8329000,63.7,857100,'Republic'),('BRA','Brazil',4,5,16,854740300,'1822',170115000,62.9,77673900,'Federal Republic'),('BRB','Barbados',1,1,3,43000,'1966',270000,73,222300,'Constitutional Monarchy'),('BRN','Brunei',2,13,17,576500,'1984',328000,73.6,1170500,'Monarchy (Sultanate)'),('BTN','Bhutan',2,2,18,4700000,'1910',2124000,52.4,37200,'Monarchy'),('CAN','Canada',1,12,3,997061000,'1867',31147000,79.4,59886200,'Constitutional Monarchy, Federation'),('CCK','Cocos (Keeling) Islands',5,7,3,1400,NULL,600,NULL,0,'Territory of Australia'),('CHE','Switzerland',3,8,9,4128400,'1499',7160400,79.6,26447800,'Federation'),('CHL','Chile',4,5,7,75662600,'1810',15211000,75.7,7294900,'Republic'),('CHN','China',2,14,19,957290000,'-1523',1277558000,71.4,98226800,'People\'sRepublic'),('COK','Cook Islands',5,6,20,23600,NULL,20000,71.1,10000,'Nonmetropolitan Territory of New Zealand'),('COL','Colombia',4,5,7,113891400,'1810',42321000,70.3,10289600,'Republic'),('COM','Comoros',6,9,21,186200,'1975',578000,60,440100,'Republic'),('CPV','Cape Verde',6,15,16,403300,'1975',428000,68.9,43500,'Republic'),('CRI','Costa Rica',1,11,7,5110000,'1821',4023000,75.8,1022600,'Republic'),('CUB','Cuba',1,1,7,11086100,'1902',11201000,76.2,1784300,'Socialistic Republic'),('CXR','Christmas Island',5,7,3,13500,NULL,2500,NULL,0,'Territory of Australia'),('CYM','Cayman Islands',1,1,3,26400,NULL,38000,78.9,126300,'Dependent Territory of the UK'),('CYP','Cyprus',2,4,22,925100,'1960',754700,76.7,933300,'Republic'),('CZE','Czech Republic',3,10,23,7886600,'1993',10278100,74.5,5501700,'Republic'),('DEU','Germany',3,8,9,35702200,'1955',82164700,77.4,213336700,'Federal Republic'),('DJI','Djibouti',6,9,6,2320000,'1977',638000,50.8,38200,'Republic'),('DNK','Denmark',3,16,24,4309400,'800',5330000,76.5,17409900,'Constitutional Monarchy'),('DOM','Dominican Republic',1,1,7,4851100,'1844',8495000,73.2,1584600,'Republic'),('DZA','Algeria',6,17,6,238174100,'1962',31471000,69.7,4998200,'Republic'),('ECU','Ecuador',4,5,7,28356100,'1822',12646000,71.1,1977000,'Republic'),('EGY','Egypt',6,17,6,100144900,'1922',68470000,63.3,8271000,'Republic'),('ERI','Eritrea',6,9,25,11760000,'1993',3850000,55.8,65000,'Republic'),('ESH','Western Sahara',6,17,6,26600000,NULL,293000,49.8,6000,'Occupied by Marocco'),('ESP','Spain',3,3,7,50599200,'1492',39441700,78.8,55323300,'Constitutional Monarchy'),('EST','Estonia',3,18,26,4522700,'1991',1439200,69.5,532800,'Republic'),('FIN','Finland',3,16,27,33814500,'1917',5171300,77.4,12191400,'Republic'),('FJI','Fiji Islands',5,19,28,1827400,'1970',817000,67.9,153600,'Republic'),('FLK','Falkland Islands',4,5,3,1217300,NULL,2000,NULL,0,'Dependent Territory of the UK'),('FRA','France',3,8,11,55150000,'843',59225700,78.8,142428500,'Republic'),('FRO','Faroe Islands',3,16,29,139900,NULL,43000,78.4,0,'Part of Denmark'),('GBR','United Kingdom',3,20,3,24290000,'1066',59623400,77.7,137833000,'Constitutional Monarchy'),('GEO','Georgia',2,4,30,6970000,'1991',4968000,64.5,606400,'Republic'),('GIB','Gibraltar',3,3,3,600,NULL,25000,79,25800,'Dependent Territory of the UK'),('GLP','Guadeloupe',1,1,11,170500,NULL,456000,77,350100,'Overseas Department of France'),('GNB','Guinea-Bissau',6,15,16,3612500,'1974',1213000,49,29300,'Republic'),('GRC','Greece',3,3,22,13162600,'1830',10545700,78.4,12072400,'Republic'),('GRL','Greenland',1,12,31,216609000,NULL,56000,68.1,0,'Part of Denmark'),('GTM','Guatemala',1,11,7,10888900,'1821',11385000,66.2,1900800,'Republic'),('GUM','Guam',5,21,3,54900,NULL,168000,77.8,119700,'US Territory'),('HKG','Hong Kong',2,14,3,107500,NULL,6782000,79.5,16644800,'Special Administrative Region of China'),('HND','Honduras',1,11,7,11208800,'1838',6485000,69.9,533300,'Republic'),('HRV','Croatia',3,3,14,5653800,'1991',4473000,73.7,2020800,'Republic'),('HTI','Haiti',1,1,11,2775000,'1804',8222000,49.2,345900,'Republic'),('HUN','Hungary',3,10,32,9303000,'1918',10043200,71.4,4826700,'Republic'),('IDN','Indonesia',2,13,17,190456900,'1945',212107000,68,8498200,'Republic'),('IND','India',2,2,33,328726300,'1947',1013662000,62.5,44711400,'Federal Republic'),('IRL','Ireland',3,20,3,7027300,'1921',3775100,76.8,7592100,'Republic'),('IRN','Iran',2,2,34,164819500,'1906',67702000,69.7,19574600,'Islamic Republic'),('IRQ','Iraq',2,4,6,43831700,'1932',23115000,66.5,1150000,'Republic'),('ISL','Iceland',3,16,35,10300000,'1944',279000,79.4,825500,'Republic'),('ISR','Israel',2,4,36,2105600,'1948',6217000,78.6,9747700,'Republic'),('ITA','Italy',3,3,37,30131600,'1861',57680000,79,116175500,'Republic'),('JOR','Jordan',2,4,6,8894600,'1946',5083000,77.4,752600,'Constitutional Monarchy'),('JPN','Japan',2,14,38,37782900,'-660',126714000,80.7,378704200,'Constitutional Monarchy'),('KAZ','Kazakstan',2,2,39,272490000,'1991',16223000,63.2,2437500,'Republic'),('KGZ','Kyrgyzstan',2,2,40,19990000,'1991',4699000,63.4,162600,'Republic'),('KHM','Cambodia',2,13,41,18103500,'1953',11168000,56.5,512100,'Constitutional Monarchy'),('KIR','Kiribati',5,21,42,72600,'1979',83000,59.8,4070,'Republic'),('KNA','Saint Kitts and Nevis',1,1,3,26100,'1983',38000,70.7,29900,'Constitutional Monarchy'),('KOR','South Korea',2,14,43,9943400,'1948',46844000,74.4,32074900,'Republic'),('KWT','Kuwait',2,4,6,1781800,'1961',1972000,76.1,2703700,'Constitutional Monarchy (Emirate)'),('LAO','Laos',2,13,44,23680000,'1953',5433000,53.1,129200,'Republic'),('LBN','Lebanon',2,4,6,1040000,'1941',3282000,71.3,1712100,'Republic'),('LBY','Libyan Arab Jamahiriya',6,17,6,175954000,'1951',5605000,75.5,4480600,'Socialistic State'),('LCA','Saint Lucia',1,1,3,62200,'1979',154000,72.3,57100,'Constitutional Monarchy'),('LIE','Liechtenstein',3,8,9,16000,'1806',32300,78.8,111900,'Constitutional Monarchy'),('LKA','Sri Lanka',2,2,45,6561000,'1948',18827000,71.8,1570600,'Republic'),('LSO','Lesotho',6,22,3,3035500,'1966',2153000,50.8,106100,'Constitutional Monarchy'),('LTU','Lithuania',3,18,46,6530100,'1991',3698500,69.1,1069200,'Republic'),('LUX','Luxembourg',3,8,47,258600,'1867',435700,77.1,1632100,'Constitutional Monarchy'),('LVA','Latvia',3,18,48,6458900,'1991',2424200,68.4,639800,'Republic'),('MAC','Macao',2,14,16,1800,NULL,473000,81.6,574900,'Special Administrative Region of China'),('MAR','Morocco',6,17,6,44655000,'1956',28351000,69.1,3612400,'Constitutional Monarchy'),('MCO','Monaco',3,8,11,150,'1861',34000,78.8,77600,'Constitutional Monarchy'),('MDA','Moldova',3,10,49,3385100,'1991',4380000,64.5,157900,'Republic'),('MDG','Madagascar',6,9,50,58704100,'1960',15942000,55,375000,'Federal Republic'),('MDV','Maldives',2,2,51,29800,'1965',286000,62.2,19900,'Republic'),('MEX','Mexico',1,11,7,195820100,'1810',98881000,71.5,41497200,'Federal Republic'),('MHL','Marshall Islands',5,21,52,18100,'1990',64000,65.5,9700,'Republic'),('MKD','Macedonia',3,3,53,2571300,'1991',2024000,73.8,169400,'Republic'),('MLT','Malta',3,3,54,31600,'1964',380200,77.9,351200,'Republic'),('MMR','Myanmar',2,13,55,67657800,'1948',45611000,54.9,18037500,'Republic'),('MNG','Mongolia',2,14,56,156650000,'1921',2662000,67.3,104300,'Republic'),('MNP','Northern Mariana Islands',5,21,3,46400,NULL,78000,75.5,0,'Commonwealth of the US'),('MSR','Montserrat',1,1,3,10200,NULL,11000,78,10900,'Dependent Territory of the UK'),('MTQ','Martinique',1,1,11,110200,NULL,395000,78.3,273100,'Overseas Department of France'),('MWI','Malawi',6,9,57,11848400,'1964',10925000,37.6,168700,'Republic'),('MYS','Malaysia',2,13,17,32975800,'1957',22244000,70.8,6921300,'Constitutional Monarchy, Federation'),('MYT','Mayotte',6,9,11,37300,NULL,149000,59.5,0,'Territorial Collectivity of France'),('NCL','New Caledonia',5,19,11,1857500,NULL,214000,72.8,356300,'Nonmetropolitan Territory of France'),('NFK','Norfolk Island',5,7,3,3600,NULL,2000,NULL,0,'Territory of Australia'),('NIC','Nicaragua',1,11,7,13000000,'1838',5074000,68.7,198800,'Republic'),('NIU','Niue',5,6,3,26000,NULL,2000,NULL,0,'Nonmetropolitan Territory of New Zealand'),('NLD','Netherlands',3,8,1,4152600,'1581',15864000,78.3,37136200,'Constitutional Monarchy'),('NOR','Norway',3,16,58,32387700,'1905',4478500,78.7,14589500,'Constitutional Monarchy'),('NPL','Nepal',2,2,59,14718100,'1769',23930000,57.8,476800,'Constitutional Monarchy'),('NRU','Nauru',5,21,60,2100,'1968',12000,60.8,19700,'Republic'),('NZL','New Zealand',5,7,3,27053400,'1907',3862000,77.8,5466900,'Constitutional Monarchy'),('OMN','Oman',2,4,6,30950000,'1951',2542000,71.8,1690400,'Monarchy (Sultanate)'),('PAK','Pakistan',2,2,61,79609500,'1947',156483000,61.1,6128900,'Republic'),('PAN','Panama',1,11,7,7551700,'1903',2856000,75.5,913100,'Republic'),('PER','Peru',4,5,7,128521600,'1821',25662000,70,6414000,'Republic'),('PHL','Philippines',2,13,62,30000000,'1946',75967000,67.5,6510700,'Republic'),('PLW','Palau',5,21,63,45900,'1994',19000,68.6,10500,'Republic'),('POL','Poland',3,10,64,32325000,'1918',38653600,73.2,15169700,'Republic'),('PRI','Puerto Rico',1,1,7,887500,NULL,3869000,75.6,3410000,'Commonwealth of the US'),('PRK','North Korea',2,14,43,12053800,'1948',24039000,70.7,533200,'Socialistic Republic'),('PRT','Portugal',3,3,16,9198200,'1143',9997600,75.8,10595400,'Republic'),('PRY','Paraguay',4,5,7,40675200,'1811',5496000,73.7,844400,'Republic'),('PYF','French Polynesia',5,6,11,400000,NULL,235000,74.8,81800,'Nonmetropolitan Territory of France'),('QAT','Qatar',2,4,6,1100000,'1971',599000,72.4,947200,'Monarchy'),('ROM','Romania',3,10,49,23839100,'1878',22455500,69.9,3815800,'Republic'),('RUS','Russian Federation',3,10,15,1707540000,'1991',146934000,67.2,27660800,'Federal Republic'),('RWA','Rwanda',6,9,65,2633800,'1962',7733000,39.3,203600,'Republic'),('SAU','Saudi Arabia',2,4,6,214969000,'1932',21607000,67.8,13763500,'Monarchy'),('SDN','Sudan',6,17,6,250581300,'1956',29490000,56.6,1016200,'Islamic Republic'),('SEN','Senegal',6,15,66,19672200,'1960',9481000,62.2,478700,'Republic'),('SGP','Singapore',2,13,3,61800,'1965',3567000,80.1,8650300,'Republic'),('SHN','Saint Helena',6,15,3,31400,NULL,6000,76.8,0,'Dependent Territory of the UK'),('SJM','Svalbard and Jan Mayen',3,16,58,6242200,NULL,3200,NULL,0,'Dependent Territory of Norway'),('SLV','El Salvador',1,11,7,2104100,'1841',6276000,69.7,1186300,'Republic'),('SMR','San Marino',3,3,37,6100,'885',27000,81.1,51000,'Republic'),('SOM','Somalia',6,9,67,63765700,'1960',10097000,46.2,93500,'Republic'),('SPM','Saint Pierre and Miquelon',1,12,11,24200,NULL,7000,77.6,0,'Territorial Collectivity of France'),('SVK','Slovakia',3,10,68,4901200,'1993',5398700,73.7,2059400,'Republic'),('SVN','Slovenia',3,3,69,2025600,'1991',1987800,74.9,1975600,'Republic'),('SWE','Sweden',3,16,70,44996400,'836',8861400,79.6,22649200,'Constitutional Monarchy'),('SWZ','Swaziland',6,22,71,1736400,'1968',1008000,40.4,120600,'Monarchy'),('SYC','Seychelles',6,9,3,45500,'1976',77000,70.4,53600,'Republic'),('SYR','Syria',2,4,6,18518000,'1941',16125000,68.5,6598400,'Republic'),('TCA','Turks and Caicos Islands',1,1,3,43000,NULL,17000,73.3,9600,'Dependent Territory of the UK'),('TCD','Chad',6,23,6,128400000,'1960',7651000,50.5,120800,'Republic'),('TGO','Togo',6,15,72,5678500,'1960',4629000,54.7,144900,'Republic'),('THA','Thailand',2,13,73,51311500,'1350',61399000,68.6,11641600,'Constitutional Monarchy'),('TJK','Tajikistan',2,2,74,14310000,'1991',6188000,64.1,199000,'Republic'),('TKL','Tokelau',5,6,3,1200,NULL,2000,NULL,0,'Nonmetropolitan Territory of New Zealand'),('TKM','Turkmenistan',2,2,75,48810000,'1991',4459000,60.9,439700,'Republic'),('TMP','East Timor',2,13,16,1487400,NULL,885000,46,0,'Administrated by the UN'),('TON','Tonga',5,6,76,65000,'1970',99000,67.9,14600,'Monarchy'),('TUN','Tunisia',6,17,6,16361000,'1956',9586000,73.7,2002600,'Republic'),('TUR','Turkey',2,4,77,77481500,'1923',66591000,71,21072100,'Republic'),('TUV','Tuvalu',5,6,3,2600,'1978',12000,66.3,600,'Constitutional Monarchy'),('TWN','Taiwan',2,14,78,3618800,'1945',22256000,76.4,25625400,'Republic'),('TZA','Tanzania',6,9,79,88374900,'1961',33517000,52.3,800500,'Republic'),('UKR','Ukraine',3,10,80,60370000,'1991',50456000,66,4216800,'Republic'),('URY','Uruguay',4,5,7,17501600,'1828',3337000,75.2,2083100,'Republic'),('USA','United States',1,12,3,936352000,'1776',278357000,77.1,851070000,'Federal Republic'),('UZB','Uzbekistan',2,2,81,44740000,'1991',24318000,63.7,1419400,'Republic'),('VAT','Holy See (Vatican City State)',3,3,37,40,'1929',1000,NULL,900,'Independent Church State'),('VCT','Saint Vincent and the Grenadines',1,1,3,38800,'1979',114000,72.3,28500,'Constitutional Monarchy'),('VEN','Venezuela',4,5,7,91205000,'1811',24170000,73.1,9502300,'Federal Republic'),('VGB','Virgin Islands, British',1,1,3,15100,NULL,21000,75.4,61200,'Dependent Territory of the UK'),('VIR','Virgin Islands, U.S.',1,1,3,34700,NULL,93000,78.1,0,'US Territory'),('VNM','Vietnam',2,13,82,33168900,'1945',79832000,69.3,2192900,'Socialistic Republic'),('VUT','Vanuatu',5,19,83,1218900,'1980',190000,60.6,26100,'Republic'),('WSM','Samoa',5,6,3,283100,'1962',180000,69.2,14100,'Parlementary Monarchy'),('YEM','Yemen',2,4,6,52796800,'1918',18112000,59.8,604100,'Republic'),('YUG','Yugoslavia',3,3,14,10217300,'1918',10640000,72.4,1700000,'Federal Republic'),('ZAF','South Africa',6,22,3,122103700,'1910',40377000,51.1,11672900,'Republic'),('ZWE','Zimbabwe',6,9,3,39075700,'1980',11669000,37.8,595100,'Republic');

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS language;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  langID int NOT NULL AUTO_INCREMENT,
  LangName varchar(50) DEFAULT NULL,
  PRIMARY KEY (langID)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

INSERT INTO language VALUES (1,'Dutch'),(2,'Dari'),(3,'English'),(4,'Albaniana'),(5,'Catalan'),(6,'Arabic'),(7,'Spanish'),(8,'Armenian'),(9,'German'),(10,'Azerbaijani'),(11,'French'),(12,'Bengali'),(13,'Bulgariana'),(14,'Serbo-Croatian'),(15,'Russian'),(16,'Portuguese'),(17,'Malay'),(18,'Dzongkha'),(19,'Chinese'),(20,'Maori'),(21,'Comorian'),(22,'Greek'),(23,'Czech'),(24,'Danish'),(25,'Tigrinja'),(26,'Estonian'),(27,'Finnish'),(28,'Fijian'),(29,'Faroese'),(30,'Georgiana'),(31,'Greenlandic'),(32,'Hungarian'),(33,'Hindi'),(34,'Persian'),(35,'Icelandic'),(36,'Hebrew'),(37,'Italian'),(38,'Japanese'),(39,'Kazakh'),(40,'Kirgiz'),(41,'Khmer'),(42,'Kiribati'),(43,'Korean'),(44,'Lao'),(45,'Tamil'),(46,'Lithuanian'),(47,'Luxembourgish'),(48,'Latvian'),(49,'Romanian'),(50,'Malagasy'),(51,'Dhivehi'),(52,'Marshallese'),(53,'Macedonian'),(54,'Maltese'),(55,'Burmese'),(56,'Mongolian'),(57,'Chichewa'),(58,'Norwegian'),(59,'Nepali'),(60,'Nauru'),(61,'Urdu'),(62,'Pilipino'),(63,'Palau'),(64,'Polish'),(65,'Rwanda'),(66,'Wolof'),(67,'Somali'),(68,'Slovak'),(69,'Slovene'),(70,'Swedish'),(71,'Swazi'),(72,'Ewe'),(73,'Thai'),(74,'Tadzhik'),(75,'Turkmenian'),(76,'Tongan'),(77,'Turkish'),(78,'Mandarin Chinese'),(79,'Swahili'),(80,'Ukrainian'),(81,'Uzbek'),(82,'Vietnamese'),(83,'Bislama');

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS region;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE region (
  RegionID int NOT NULL,
  RegionName text,
  PRIMARY KEY (RegionID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

INSERT INTO region VALUES (1,'Caribbean'),(2,'Southern and Central Asia'),(3,'Southern Europe'),(4,'Middle East'),(5,'South America'),(6,'Polynesia'),(7,'Australia and New Zealand'),(8,'Western Europe'),(9,'Eastern Africa'),(10,'Eastern Europe'),(11,'Central America'),(12,'North America'),(13,'Southeast Asia'),(14,'Eastern Asia'),(15,'Western Africa'),(16,'Nordic Countries'),(17,'Northern Africa'),(18,'Baltic Countries'),(19,'Melanesia'),(20,'British Islands'),(21,'Micronesia'),(22,'Southern Africa'),(23,'Central Africa');

--
-- Dumping routines for database 'country_db'
--
/*!50003 DROP PROCEDURE IF EXISTS change_countries */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE change_countries()
begin
   drop table if exists tempTab; 
create table tempTab as 
(select region.*, language.*, continent.*, countries.*
FROM countries JOIN continent ON countries.Continent = continent.ContinentName
JOIN region ON countries.region = region.RegionName 
JOIN language ON countries.Language = language.LangName);

alter table tempTab drop CapitalCityName,  drop CapitalPopulation, drop Language, drop LangName, drop Region, drop RegionName, drop Continent, drop ContinentName;
 alter table tempTab modify continentID int after name;
 alter table tempTab modify RegionID int after continentID;
 alter table tempTab modify langID int after RegionID;
 drop table countries;
 alter table tempTab rename to countries;
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS create_cities */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE create_cities()
begin 
	drop table if exists cities;
	create table if not exists cities as (select distinct Code, CapitalCityName, CapitalPopulation from countries);
    alter table cities add cityID int auto_increment,
   add primary key (cityID);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS create_continent */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE create_continent()
begin
	drop table if exists continent;
    create table if not exists continent as (select distinct continent from countries);
    alter table continent add ContinentID int auto_increment,
    add primary key (ContinentID);
	ALTER TABLE continent MODIFY ContinentID int FIRST;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS create_lang */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE create_lang()
begin 
	 drop table if exists language;
	create table if not exists language as (select distinct language from countries);
  
    
    alter table language add langID int auto_increment,
   add primary key (langID);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS create_region */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE create_region()
begin
	drop table if exists region;
     create table if not exists region as (select distinct region from countries);
     alter table region add RegionID int auto_increment,
    add primary key (RegionID);
    ALTER TABLE region MODIFY RegionID int FIRST;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-18 18:48:39
