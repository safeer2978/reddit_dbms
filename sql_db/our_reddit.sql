CREATE DATABASE  IF NOT EXISTS `bdbhzpphkursjzj6asli` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bdbhzpphkursjzj6asli`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: bdbhzpphkursjzj6asli-mysql.services.clever-cloud.com    Database: bdbhzpphkursjzj6asli
-- ------------------------------------------------------
-- Server version	8.0.13-3

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'a05a675a-1414-11e9-9c82-cecd01b08c7e:1-477875761';

--
-- Table structure for table `about_section_entry`
--

DROP TABLE IF EXISTS `about_section_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `about_section_entry` (
  `about_id` int(11) NOT NULL,
  `date_added` date NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `links` varchar(300) DEFAULT NULL,
  `community_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`about_id`),
  KEY `community_id` (`community_id`),
  CONSTRAINT `about_section_entry_ibfk_1` FOREIGN KEY (`community_id`) REFERENCES `community` (`community_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_section_entry`
--

LOCK TABLES `about_section_entry` WRITE;
/*!40000 ALTER TABLE `about_section_entry` DISABLE KEYS */;
INSERT INTO `about_section_entry` VALUES (1,'2020-01-31','Overhold','enable holistic e-tailers','https://robohash.org/voluptatemetnulla.jpg?size=50x50&set=set1',2),(4,'2020-05-04','Y-Solowarm','matrix 24/365 infrastructures','https://robohash.org/earumsitqui.png?size=50x50&set=set1',7),(5,'2020-10-24','Flowdesk','enhance 24/7 vortals','https://robohash.org/sitsapienterecusandae.jpg?size=50x50&set=set1',10),(6,'2020-10-02','Andalax','leverage real-time mindshare','https://robohash.org/autemofficiacorporis.bmp?size=50x50&set=set1',3),(7,'2020-10-03','Biodex','utilize cross-media e-commerce','https://robohash.org/explicabodolorplaceat.png?size=50x50&set=set1',8),(8,'2020-09-28','Holdlamis','seize B2B ROI','https://robohash.org/voluptasquasearum.jpg?size=50x50&set=set1',5),(9,'2020-02-07','Toughjoyfax','monetize wireless systems','https://robohash.org/illoaperiamquia.png?size=50x50&set=set1',4),(10,'2020-03-20','Opela','envisioneer B2B action-items','https://robohash.org/officiissedillum.bmp?size=50x50&set=set1',9),(15,'2020-03-04','Overhold','implement synergistic portals','https://robohash.org/ullamvelomnis.png?size=50x50&set=set1',6),(17,'2020-05-26','Overhold','disintermediate e-business infrastructures','https://robohash.org/ipsamaioresvoluptas.jpg?size=50x50&set=set1',1);
/*!40000 ALTER TABLE `about_section_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `account_id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `image_link` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'crubinovici0@simplemachines.org','boswell0','0lqCAz2','http://dummyimage.com/130x236.bmp/cc0000/ffffff'),(2,'shaversum1@slashdot.org','sfawcitt1','lQLupEazI','http://dummyimage.com/218x180.jpg/dddddd/000000'),(3,'bshropsheir2@mac.com','cbrunetti2','KyZ0Ok6','http://dummyimage.com/236x156.jpg/5fa2dd/ffffff'),(4,'bauckland3@xing.com','nbenedick3','ibDP2VnXttH','http://dummyimage.com/120x176.png/dddddd/000000'),(5,'fdrew4@stanford.edu','vlassetter4','X3UpccDU','http://dummyimage.com/144x250.bmp/dddddd/000000'),(6,'broz5@nytimes.com','agibbons5','tPZhgzB8Z','http://dummyimage.com/208x215.png/cc0000/ffffff'),(7,'gmityushkin6@mayoclinic.com','sbezants6','v13sfcMtGR','http://dummyimage.com/178x220.jpg/ff4444/ffffff'),(8,'fjohnke7@geocities.jp','adomm7','pPVmeHLF6X','http://dummyimage.com/167x116.png/ff4444/ffffff'),(9,'kgoodier8@cnbc.com','fhalvorsen8','7RwECOIM2','http://dummyimage.com/124x156.bmp/5fa2dd/ffffff'),(10,'dhardy9@simplemachines.org','tchalke9','McYB7bNx','http://dummyimage.com/126x152.jpg/dddddd/000000'),(11,'sguillouda@istockphoto.com','bcosbeya','nx8tk4Yz','http://dummyimage.com/121x227.jpg/cc0000/ffffff'),(12,'jfranciottoib@g.co','dlanganb','M2HYkjO2cVMQ','http://dummyimage.com/148x227.jpg/dddddd/000000'),(13,'ffriedc@hibu.com','bwalburnc','G3wQYE207','http://dummyimage.com/210x180.jpg/dddddd/000000'),(14,'jmannad@yelp.com','spethickd','1CumaIHZj','http://dummyimage.com/177x224.png/5fa2dd/ffffff'),(15,'kperrene@yolasite.com','rdanforthe','Pn5H6hGWj001','http://dummyimage.com/221x170.png/cc0000/ffffff'),(16,'dsticklandf@webnode.com','plorrawayf','anZY0oTjJ8','http://dummyimage.com/146x226.png/cc0000/ffffff'),(17,'seversong@php.net','ckiddieg','UcCmch6wV','http://dummyimage.com/245x101.jpg/ff4444/ffffff'),(18,'jwoolfallh@123-reg.co.uk','kbeynh','W99RWKhAE','http://dummyimage.com/111x218.png/ff4444/ffffff'),(19,'kduffieldi@themeforest.net','jcristofori','h61U0JA8u9','http://dummyimage.com/139x216.png/cc0000/ffffff'),(20,'eessonj@netvibes.com','efrauloj','pWZ3Rvpi5e1','http://dummyimage.com/139x178.bmp/cc0000/ffffff'),(21,'sniesegenk@mtv.com','gbloyk','BCVohxxbO4c','http://dummyimage.com/219x149.jpg/5fa2dd/ffffff'),(22,'hmanlowl@yale.edu','agrevel','CXtu9g','http://dummyimage.com/144x239.png/ff4444/ffffff'),(23,'tkleinsteinm@webnode.com','pbunsonm','BJtjwvj','http://dummyimage.com/177x174.jpg/5fa2dd/ffffff'),(24,'spaveln@telegraph.co.uk','tkollaschekn','AEm0h8','http://dummyimage.com/225x100.png/5fa2dd/ffffff'),(25,'reldritto@usgs.gov','hpechao','r0wFiDT','http://dummyimage.com/101x167.png/cc0000/ffffff'),(26,'fdavorenp@pen.io','nbrattenp','JW6LR0ejr','http://dummyimage.com/221x202.bmp/cc0000/ffffff'),(27,'yeimq@skype.com','sjefferiesq','XJ7hn5Ud','http://dummyimage.com/237x232.jpg/dddddd/000000'),(28,'jmcclaryr@jalbum.net','tbatkinr','65x0ieaYi','http://dummyimage.com/224x172.png/5fa2dd/ffffff'),(29,'kblagdens@xinhuanet.com','gridgleys','RWzsJYrbpxD','http://dummyimage.com/109x190.bmp/dddddd/000000'),(30,'bpetrellot@senate.gov','abisett','hhGR1VHL','http://dummyimage.com/126x214.png/dddddd/000000'),(31,'rberthelu@google.com.hk','lwinsparu','U5w0cMIDMF35','http://dummyimage.com/186x128.bmp/dddddd/000000'),(32,'dprettymanv@opensource.org','marnauv','NYheVLNE6PX','http://dummyimage.com/150x204.jpg/ff4444/ffffff'),(33,'socahsedyw@cnet.com','alohmeyerw','eQr3QQk3jr','http://dummyimage.com/192x223.bmp/ff4444/ffffff'),(34,'agrahamex@wikipedia.org','ltrolleyx','MROji63','http://dummyimage.com/112x157.png/ff4444/ffffff'),(35,'jseabridgey@cdbaby.com','tshanahany','9A4BDdlf','http://dummyimage.com/108x153.bmp/5fa2dd/ffffff'),(36,'sstivez@nbcnews.com','crobillartz','8C6tXk7Opt','http://dummyimage.com/103x232.png/cc0000/ffffff'),(37,'bgulston10@discuz.net','alorans10','SPAdWhDzNJ4P','http://dummyimage.com/163x115.bmp/cc0000/ffffff'),(38,'msitch11@samsung.com','dasmus11','48HIQ8Njf','http://dummyimage.com/198x167.jpg/5fa2dd/ffffff'),(39,'owhimper12@sbwire.com','afrobisher12','9HQswa','http://dummyimage.com/151x163.png/dddddd/000000'),(40,'anaden13@google.com','pgallier13','7el02pOD','http://dummyimage.com/248x199.bmp/ff4444/ffffff');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_group`
--

DROP TABLE IF EXISTS `ad_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_group` (
  `ad_group_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `schedule` date DEFAULT NULL,
  `budget_id` int(11) DEFAULT NULL,
  `device_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ad_group_id`),
  KEY `budget_id` (`budget_id`),
  KEY `device_id` (`device_id`),
  KEY `campaign_id` (`campaign_id`),
  CONSTRAINT `ad_group_ibfk_1` FOREIGN KEY (`budget_id`) REFERENCES `budget` (`budget_id`),
  CONSTRAINT `ad_group_ibfk_2` FOREIGN KEY (`device_id`) REFERENCES `device` (`device_id`),
  CONSTRAINT `ad_group_ibfk_3` FOREIGN KEY (`campaign_id`) REFERENCES `campaign` (`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_group`
--

LOCK TABLES `ad_group` WRITE;
/*!40000 ALTER TABLE `ad_group` DISABLE KEYS */;
INSERT INTO `ad_group` VALUES (1,'Vagram','France','2020-02-19',2,1,1),(2,'Cardify','Italy','2020-01-15',2,1,2),(3,'Konklux','China','2019-12-10',1,5,3),(4,'Zathin','Comoros','2020-05-31',1,1,4),(5,'Toughjoyfax','Indonesia','2020-02-03',1,2,5),(6,'Rank','China','2019-12-14',1,2,6),(7,'Alpha','Argentina','2020-06-23',2,1,7),(8,'Cardify','Indonesia','2020-05-03',2,2,8),(9,'Sub-Ex','Russia','2020-02-04',2,4,9),(10,'Span','China','2020-02-27',1,1,10),(11,'Hatity','Indonesia','2020-03-04',2,5,11),(12,'Home Ing','Nigeria','2020-10-12',1,2,12),(13,'Treeflex','Indonesia','2020-07-13',2,3,13),(14,'Konklux','Indonesia','2020-11-05',2,2,14),(15,'Solarbreeze','Finland','2020-11-10',1,3,15),(16,'Stim','Nigeria','2020-11-30',1,4,16),(17,'Fixflex','Greece','2020-11-07',1,5,17),(18,'Holdlamis','Morocco','2020-10-13',1,3,18),(19,'Keylex','Indonesia','2019-12-23',1,4,19),(20,'Wrapsafe','Thailand','2020-12-03',2,5,20);
/*!40000 ALTER TABLE `ad_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_post`
--

DROP TABLE IF EXISTS `ad_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_post` (
  `ad_id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `ad_group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ad_id`),
  KEY `ad_group_id` (`ad_group_id`),
  CONSTRAINT `ad_post_ibfk_1` FOREIGN KEY (`ad_group_id`) REFERENCES `ad_group` (`ad_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_post`
--

LOCK TABLES `ad_post` WRITE;
/*!40000 ALTER TABLE `ad_post` DISABLE KEYS */;
INSERT INTO `ad_post` VALUES (1,'Muriel','http://dummyimage.com/100x121.bmp/dddddd/000000','Bitwolf',3),(2,'Myth of ','http://dummyimage.com/182x170.jpg/dddddd/000000','Subin',6),(3,'Mission to Moscow','http://dummyimage.com/243x180.png/ff4444/ffffff','Veribet',7),(4,'To Have, or Not (En avoir (ou pas))','http://dummyimage.com/126x143.png/5fa2dd/ffffff','Stim',19),(5,'W.E.','http://dummyimage.com/168x233.png/ff4444/ffffff','Sub-Ex',6),(6,'White Men Can\'t Jump','http://dummyimage.com/124x105.jpg/dddddd/000000','Stringtough',4),(7,'Thank You, Mr. Moto','http://dummyimage.com/164x189.jpg/5fa2dd/ffffff','Sub-Ex',7),(8,'Reign of Assassins','http://dummyimage.com/168x150.bmp/dddddd/000000','Tres-Zap',8),(9,'Divine Secrets of the Ya-Ya Sisterhood','http://dummyimage.com/119x111.bmp/dddddd/000000','It',17),(10,'Walking and Talking','http://dummyimage.com/185x140.png/cc0000/ffffff','Alphazap',16),(11,'Ellie Parker','http://dummyimage.com/207x227.jpg/ff4444/ffffff','Pannier',15),(12,'Secret Life of Zoey, The','http://dummyimage.com/236x237.bmp/5fa2dd/ffffff','Regrant',15),(13,'Adam & Steve','http://dummyimage.com/111x128.bmp/cc0000/ffffff','Alpha',16),(14,'Little World','http://dummyimage.com/242x203.bmp/ff4444/ffffff','Transcof',18),(15,'City Zero','http://dummyimage.com/116x114.bmp/ff4444/ffffff','Sonsing',16),(16,'Harry in Your Pocket','http://dummyimage.com/118x231.jpg/dddddd/000000','Viva',16),(17,'Daughters of Dolma','http://dummyimage.com/189x225.png/cc0000/ffffff','Flowdesk',18),(18,'True Crime','http://dummyimage.com/143x236.jpg/5fa2dd/ffffff','Cardify',10),(19,'Stoned','http://dummyimage.com/185x103.png/5fa2dd/ffffff','Flexidy',18),(20,'Three on a Match','http://dummyimage.com/135x127.jpg/cc0000/ffffff','Kanlam',10),(21,'Richard III','http://dummyimage.com/184x107.png/dddddd/000000','Kanlam',16),(22,'Land of the Dead','http://dummyimage.com/217x212.jpg/5fa2dd/ffffff','Sonsing',19),(23,'Big Hangover, The','http://dummyimage.com/197x114.jpg/5fa2dd/ffffff','Lotstring',16),(24,'Fat, Sick & Nearly Dead','http://dummyimage.com/154x187.png/dddddd/000000','Tres-Zap',14),(25,'Paradise Alley','http://dummyimage.com/144x186.png/dddddd/000000','Sonair',19),(26,'Dream Boy','http://dummyimage.com/241x135.jpg/ff4444/ffffff','Tempsoft',15),(27,'Nora\'s Will','http://dummyimage.com/206x128.bmp/dddddd/000000','Subin',14),(28,'Gainsbourg ','http://dummyimage.com/246x138.png/cc0000/ffffff','Tres-Zap',11),(29,'Small','http://dummyimage.com/137x216.png/dddddd/000000','Duobam',8),(30,'At Sword\'s Point','http://dummyimage.com/185x198.jpg/dddddd/000000','Biodex',16);
/*!40000 ALTER TABLE `ad_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Elnar','ebraund0@blogger.com','VZROR9y2qHn'),(2,'Gualterio','ggemlbett1@reverbnation.com','sOjtJnWwKCyf'),(3,'Quillan','qflatt2@scientificamerican.com','OUPgydZxN'),(4,'Timotheus','troddy3@furl.net','kPMkJPdmE'),(5,'Bernardo','bshacklady4@ucoz.ru','e41KDcWuHg7'),(6,'Gauthier','gtuiller5@discovery.com','dq6be1ll'),(7,'Kendall','kguiness6@foxnews.com','6944XDnYABv'),(8,'Northrup','ntrewinnard7@miitbeian.gov.cn','2uRVEPdc6'),(9,'Vance','vpaynton8@omniture.com','ENOOAoTrAml'),(10,'Filberto','fbrowse9@tmall.com','C2hpJH0'),(11,'Wyn','wharrowinga@zdnet.com','FBi1dj'),(12,'Gaylord','ggormallyb@wp.com','sEUe1u'),(13,'Josias','jlonsdalec@disqus.com','r3z8dfQqaJW'),(14,'Nobie','ntuffind@cbslocal.com','Fx4z1HtZ'),(15,'Davin','dbowdidgee@typepad.com','FuT2AGBn7'),(16,'Issiah','idwelleyf@un.org','P0G4gPLEkz'),(17,'Wain','wsloamg@seattletimes.com','bt7cDzPc'),(18,'Donny','dmcsorleyh@admin.ch','tJeWwNXFf'),(19,'Rolf','rtrickeri@admin.ch','aYq2fzge6ws'),(20,'Luther','lpennyj@gmpg.org','xf4jkalba4');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertisement_account`
--

DROP TABLE IF EXISTS `advertisement_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertisement_account` (
  `ad_account_id` int(11) NOT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ad_account_id`),
  UNIQUE KEY `uc_user_account` (`ad_account_id`,`account_id`),
  KEY `permission_id` (`permission_id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `advertisement_account_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`),
  CONSTRAINT `advertisement_account_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisement_account`
--

LOCK TABLES `advertisement_account` WRITE;
/*!40000 ALTER TABLE `advertisement_account` DISABLE KEYS */;
INSERT INTO `advertisement_account` VALUES (1,'Shark Cartilage','Business Services',3,32),(2,'Value Pharma','Electrical Products',1,33),(3,'Lucky Super Soft','Major Banks',3,34),(4,'Allopurinol','Savings Institutions',2,31),(5,'Allopurinol','Savings Institutions',3,35),(6,'health mart ibuprofen','Oil & Gas Production',3,36),(7,'Entacapone','Major Pharmaceuticals',2,37),(8,'health mart ibuprofen','Oil & Gas Production',3,38),(9,'Muscle Ease','Finance: Consumer Services',2,39),(10,'health mart ibuprofen','Oil & Gas Production',2,40),(11,'IXEMPRA','Major Banks',2,29),(12,'Shark Cartilage','Business Services',3,30),(13,'Enalapril Maleate','Multi-Sector Companies',3,25),(14,'Vicks VapoRub','Major Chemicals',2,24),(15,'Vicks VapoRub','Major Chemicals',1,23),(16,'Vicks VapoRub','Major Chemicals',1,21),(17,'Idamycin PFS','Coal Mining',3,22),(18,'Allopurinol','Savings Institutions',2,26),(19,'Midodrine HCl','Business Services',2,27),(20,'Shark Cartilage','Business Services',3,28);
/*!40000 ALTER TABLE `advertisement_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `award_transaction`
--

DROP TABLE IF EXISTS `award_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `award_transaction` (
  `award_transaction_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `appstore_ref` varchar(50) DEFAULT NULL,
  `award_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `contribution_id` int(11) DEFAULT NULL,
  UNIQUE KEY `uc_user_contribution_award` (`user_id`,`contribution_id`,`award_id`),
  KEY `award_id` (`award_id`),
  KEY `contribution_id` (`contribution_id`),
  CONSTRAINT `award_transaction_ibfk_1` FOREIGN KEY (`award_id`) REFERENCES `award_type` (`award_id`),
  CONSTRAINT `award_transaction_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `award_transaction_ibfk_3` FOREIGN KEY (`contribution_id`) REFERENCES `contribution` (`contribution_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award_transaction`
--

LOCK TABLES `award_transaction` WRITE;
/*!40000 ALTER TABLE `award_transaction` DISABLE KEYS */;
INSERT INTO `award_transaction` VALUES (1,'2020-08-22','45',1,12,36),(2,'2020-08-21','34',5,7,51),(3,'2020-07-27','38',5,11,8),(4,'2020-02-08','49',4,3,75),(5,'2020-04-26','53',1,1,55),(6,'2020-09-22','47',1,20,17),(7,'2020-10-06','36',4,1,48),(8,'2020-05-16','33',3,14,86),(9,'2020-01-29','32',1,14,69),(10,'2020-05-26','35',4,10,24),(11,'2020-05-26','56',5,8,73),(12,'2020-07-09','52',3,12,44),(13,'2020-04-04','57',5,5,5),(14,'2019-12-11','44',4,3,66),(15,'2019-12-24','60',1,18,66),(16,'2020-10-01','51',1,6,38),(17,'2020-12-03','59',1,1,57),(18,'2020-02-18','48',3,18,53),(19,'2020-04-12','39',3,4,23),(20,'2020-04-19','37',1,15,57),(21,'2020-05-03','42',4,9,61),(22,'2020-10-28','31',4,5,48),(23,'2020-02-04','55',2,20,39),(24,'2020-07-22','41',3,19,66),(25,'2020-10-03','50',3,16,88),(26,'2020-09-09','46',3,16,77),(27,'2020-08-19','58',5,6,44),(28,'2020-11-04','43',3,1,88),(29,'2020-10-10','54',2,2,64),(30,'2020-07-21','40',1,4,48),(31,'2020-09-24','45',5,13,58),(32,'2020-06-24','34',3,19,81),(33,'2020-06-22','38',5,1,48),(34,'2020-11-15','49',2,9,13),(35,'2020-02-03','53',4,17,45),(36,'2020-10-16','47',5,5,44),(37,'2020-01-28','36',2,11,75),(38,'2020-08-20','33',4,5,21),(39,'2020-09-01','32',1,4,84),(40,'2020-03-18','35',1,17,61),(41,'2020-02-11','56',3,18,38),(42,'2020-11-24','52',3,2,65),(43,'2020-03-11','57',1,10,56),(44,'2020-09-19','44',3,11,42),(46,'2020-11-04','51',5,13,78),(47,'2020-03-13','59',5,6,17),(48,'2020-07-17','48',1,1,10),(49,'2020-07-07','39',2,6,17),(50,'2020-03-25','37',1,20,8),(51,'2020-03-20','42',1,3,39),(52,'2020-05-05','31',2,12,58),(53,'2020-05-05','55',3,7,82),(54,'2020-05-28','41',1,4,25),(55,'2020-02-05','50',4,19,3),(56,'2020-06-21','46',3,1,7),(57,'2020-07-19','58',1,12,47),(58,'2020-02-08','43',5,13,22),(59,'2020-06-15','54',2,16,55),(60,'2020-04-04','40',1,14,37),(61,'2020-11-29','45',3,4,33),(62,'2020-06-03','34',5,14,32),(63,'2020-03-26','38',3,2,89),(64,'2020-05-04','49',2,3,19),(65,'2020-08-29','53',1,11,79),(66,'2020-10-04','47',3,7,30),(67,'2020-11-02','36',1,6,77),(68,'2020-05-11','33',2,3,44),(69,'2020-06-06','32',3,20,19),(70,'2020-04-16','35',5,9,75),(71,'2020-06-22','56',4,17,20),(72,'2020-01-06','52',1,7,78),(73,'2020-06-19','57',3,13,56),(74,'2020-07-02','44',3,16,85),(75,'2020-04-27','60',4,13,10);
/*!40000 ALTER TABLE `award_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `award_type`
--

DROP TABLE IF EXISTS `award_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `award_type` (
  `award_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `image_link` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`award_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award_type`
--

LOCK TABLES `award_type` WRITE;
/*!40000 ALTER TABLE `award_type` DISABLE KEYS */;
INSERT INTO `award_type` VALUES (1,'next generation','Cras pellentesque volutpat dui.Mauris viverra diam vitae quam.','57.38','http://dummyimage.com/149x155.png/dddddd/000000'),(2,'multimedia','Mauris lacinia sapien quis liberoaliquet.','160.86','http://dummyimage.com/201x132.jpg/ff4444/ffffff'),(3,'Synergized','Aenean lectus. Pellentesque eget nunc.. Phasellus sit amet erat.','128.22','http://dummyimage.com/209x225.jpg/dddddd/000000'),(4,'didactic','Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','165.75','http://dummyimage.com/129x102.bmp/dddddd/000000'),(5,'multimedia','Vivamus vel nulla eget eros elementum pellentesque.','51.99','http://dummyimage.com/150x141.png/ff4444/ffffff');
/*!40000 ALTER TABLE `award_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget`
--

DROP TABLE IF EXISTS `budget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budget` (
  `budget_id` int(11) NOT NULL,
  `budget_type` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`budget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget`
--

LOCK TABLES `budget` WRITE;
/*!40000 ALTER TABLE `budget` DISABLE KEYS */;
INSERT INTO `budget` VALUES (1,'Daily Budget'),(2,'Lifetime Budget');
/*!40000 ALTER TABLE `budget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign` (
  `campaign_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `funding_id` int(11) DEFAULT NULL,
  `ad_account_id` int(11) DEFAULT NULL,
  `objective_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`campaign_id`),
  KEY `funding_id` (`funding_id`),
  KEY `ad_account_id` (`ad_account_id`),
  KEY `objective_id` (`objective_id`),
  CONSTRAINT `campaign_ibfk_1` FOREIGN KEY (`funding_id`) REFERENCES `funding` (`funding_id`),
  CONSTRAINT `campaign_ibfk_2` FOREIGN KEY (`ad_account_id`) REFERENCES `advertisement_account` (`ad_account_id`),
  CONSTRAINT `campaign_ibfk_3` FOREIGN KEY (`objective_id`) REFERENCES `objective` (`objective_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign`
--

LOCK TABLES `campaign` WRITE;
/*!40000 ALTER TABLE `campaign` DISABLE KEYS */;
INSERT INTO `campaign` VALUES (1,'Jerry Springer: Ringmaster',1,14,2),(2,'Temp',1,2,4),(3,'Transcof',1,6,2),(4,'Alpha',2,2,3),(5,'Bamity',2,1,4),(6,'Keylex',1,13,3),(7,'Konklux',1,12,3),(8,'Subin',2,18,3),(9,'Voltsillam',1,6,5),(10,'Alphazap',1,18,3),(11,'Veribet',2,14,3),(12,'Subin',2,1,1),(13,'Quo Lux',1,19,3),(14,'Flowdesk',1,9,2),(15,'Regrant',1,7,1),(16,'Y-find',1,8,2),(17,'Span',1,11,1),(18,'Wrapsafe',2,13,2),(19,'Mat Lam Tam',2,14,4),(20,'Rank',1,13,1);
/*!40000 ALTER TABLE `campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_room`
--

DROP TABLE IF EXISTS `chat_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_room` (
  `room_id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`room_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `chat_room_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_room`
--

LOCK TABLES `chat_room` WRITE;
/*!40000 ALTER TABLE `chat_room` DISABLE KEYS */;
INSERT INTO `chat_room` VALUES (1,'Not Another Happy Ending','Curabitur gravida nisi at nibh.',16),(2,'Crawling Hand, The','Curabitur in libero ut massa volutpat convallis.',15),(3,'White Shadows in the South Seas','Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',4),(4,'Dad','Integer ac leo. Pellentesque ultrices mattis odio.',11),(5,'Dish, The','Proin eu mi.',20);
/*!40000 ALTER TABLE `chat_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_room_message`
--

DROP TABLE IF EXISTS `chat_room_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_room_message` (
  `cmessage_id` int(11) NOT NULL,
  `message` text,
  `date` date DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmessage_id`),
  KEY `room_id` (`room_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `chat_room_message_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `chat_room` (`room_id`),
  CONSTRAINT `chat_room_message_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_room_message`
--

LOCK TABLES `chat_room_message` WRITE;
/*!40000 ALTER TABLE `chat_room_message` DISABLE KEYS */;
INSERT INTO `chat_room_message` VALUES (1,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','2020-05-24',4,15),(2,'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','2020-09-19',2,8),(3,'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','2020-09-13',1,7),(4,'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.','2020-04-10',4,12),(5,'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','2020-08-06',3,8),(6,'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','2020-09-26',4,15),(7,'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','2020-06-14',5,4),(8,'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','2020-04-23',2,15),(9,'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','2019-12-25',5,4),(10,'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','2020-10-31',5,7),(11,'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','2020-05-30',1,4),(12,'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','2020-06-13',4,5),(13,'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','2020-07-12',5,12),(14,'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','2020-04-20',4,6),(15,'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.','2020-07-13',3,4),(16,'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','2020-03-14',1,2),(17,'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','2020-04-11',1,3),(18,'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','2020-05-10',5,9),(19,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','2020-09-12',2,11),(20,'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','2020-06-16',2,9);
/*!40000 ALTER TABLE `chat_room_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `points_to` int(11) DEFAULT NULL,
  `contribution_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  UNIQUE KEY `uc_comment_contribution` (`comment_id`,`contribution_id`),
  KEY `post_id` (`post_id`),
  KEY `contribution_id` (`contribution_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`comment_id`),
  CONSTRAINT `comment_ibfk_3` FOREIGN KEY (`contribution_id`) REFERENCES `contribution` (`contribution_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,3,NULL,45),(2,5,NULL,34),(3,3,NULL,38),(4,14,NULL,49),(5,10,NULL,53),(6,19,NULL,47),(7,1,NULL,36),(8,7,NULL,33),(9,12,NULL,32),(10,2,NULL,35),(11,15,NULL,56),(12,6,NULL,52),(13,28,NULL,57),(14,20,NULL,44),(15,26,NULL,60),(16,4,NULL,51),(17,24,NULL,59),(18,25,NULL,48),(19,13,NULL,39),(20,11,NULL,37),(21,23,NULL,42),(22,21,NULL,31),(23,29,NULL,55),(24,8,NULL,41),(25,27,NULL,50),(26,16,NULL,46),(27,18,NULL,58),(28,9,NULL,43),(29,22,NULL,54),(30,17,NULL,40),(31,3,45,72),(32,5,34,87),(33,3,38,63),(34,14,49,90),(35,10,53,70),(36,19,47,61),(37,1,36,74),(38,7,33,64),(39,12,32,71),(40,2,35,79),(41,15,56,88),(42,6,52,67),(43,28,57,78),(44,20,44,75),(45,26,60,76),(46,4,51,65),(47,24,59,69),(48,25,48,80),(49,13,39,85),(50,11,37,66),(51,23,42,62),(52,21,31,68),(53,29,55,73),(54,8,41,89),(55,27,50,86),(56,16,46,84),(57,18,58,83),(58,9,43,81),(59,22,54,82),(60,17,40,77);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `community`
--

DROP TABLE IF EXISTS `community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community` (
  `community_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `creation_date` date NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`community_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `community_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community`
--

LOCK TABLES `community` WRITE;
/*!40000 ALTER TABLE `community` DISABLE KEYS */;
INSERT INTO `community` VALUES (1,'Fashion','A subreddit for all fashion related news.','2020-05-06',16),(2,'Relationships','A subreddit for relationship advice','2020-10-24',12),(3,'Technology','A subreddit for old or new technologies.','2020-04-28',15),(4,'Games','A subreddit for all the gamers out there.','2020-01-28',5),(5,'Music','A subreddit specifically only to music.','2020-09-26',13),(6,'Movies and Tv','A subreddit for digital entertainment.','2020-05-24',5),(7,'Education','An educational subreddit.','2020-10-24',19),(8,'Politics','A subreddit for your political views','2020-07-28',2),(9,'Cars','A subreddit for all moto enthusiasts out there','2020-04-19',3),(10,'Memes','memers unite!','2020-11-13',16);
/*!40000 ALTER TABLE `community` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contribution`
--

DROP TABLE IF EXISTS `contribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contribution` (
  `contribution_id` int(11) NOT NULL,
  `text` text,
  `date_posted` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`contribution_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `contribution_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contribution`
--

LOCK TABLES `contribution` WRITE;
/*!40000 ALTER TABLE `contribution` DISABLE KEYS */;
INSERT INTO `contribution` VALUES (1,'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','2020-08-25',8),(2,'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','2020-07-20',3),(3,'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','2020-10-23',6),(4,'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','2020-07-17',7),(5,'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.','2020-12-01',7),(6,'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.','2020-06-02',14),(7,'Etiam justo. Etiam pretium iaculis justo.','2020-07-19',12),(8,'Praesent blandit. Nam nulla.','2020-09-05',6),(9,'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna.','2020-11-14',5),(10,'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.','2020-03-16',14),(11,'Proin eu mi.','2020-05-19',1),(12,'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','2020-01-09',17),(13,'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','2020-01-27',20),(14,'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.','2020-07-25',4),(15,'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.','2020-11-23',8),(16,'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.','2020-11-04',5),(17,'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.','2020-06-06',16),(18,'In hac habitasse platea dictumst.','2020-02-20',1),(19,'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','2020-11-12',17),(20,'Donec posuere metus vitae ipsum.','2020-01-14',12),(21,'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','2019-12-19',10),(22,'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','2020-08-29',17),(23,'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','2020-07-19',16),(24,'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus.','2020-08-10',17),(25,'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.','2020-06-21',17),(26,'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','2020-08-01',20),(27,'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.','2020-02-08',15),(28,'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.','2020-10-25',4),(29,'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.','2020-07-16',15),(30,'Fusce consequat. Nulla nisl. Nunc nisl.','2019-12-19',12),(31,'Donec dapibus.','2020-02-27',5),(32,'Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.','2020-10-09',12),(33,'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.','2019-12-28',10),(34,'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','2020-03-08',20),(35,'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.','2020-05-14',16),(36,'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.','2020-03-30',1),(37,'Morbi ut odio.','2020-09-29',16),(38,'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','2020-07-29',3),(39,'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.','2020-09-23',17),(40,'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.','2020-11-04',3),(41,'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.','2020-04-10',12),(42,'Phasellus id sapien in sapien iaculis congue.','2020-06-06',5),(43,'In hac habitasse platea dictumst.','2020-10-03',16),(44,'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','2020-10-25',7),(45,'Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst.','2020-11-24',5),(46,'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','2020-06-26',7),(47,'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc.','2020-10-09',16),(48,'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante.','2020-11-03',9),(49,'Nullam porttitor lacus at turpis.','2020-10-14',13),(50,'Donec posuere metus vitae ipsum.','2020-09-28',6),(51,'Nullam sit amet turpis elementum ligula vehicula consequat.','2020-06-16',8),(52,'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','2020-10-26',15),(53,'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.','2020-07-07',17),(54,'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.','2020-06-21',5),(55,'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','2020-09-22',6),(56,'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','2020-01-15',5),(57,'Nullam varius.','2020-08-27',20),(58,'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','2020-02-21',3),(59,'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.','2020-07-08',9),(60,'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.','2020-01-13',9),(61,'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','2020-11-03',7),(62,'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','2020-04-07',10),(63,'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante.','2020-04-18',9),(64,'Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.','2020-06-14',17),(65,'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','2020-03-21',1),(66,'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.','2020-10-10',8),(67,'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.','2020-08-01',7),(68,'In hac habitasse platea dictumst. Etiam faucibus cursus urna.','2020-07-14',5),(69,'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.','2020-06-23',4),(70,'Vivamus in felis eu sapien cursus vestibulum.','2020-02-09',13),(71,'Donec ut mauris eget massa tempor convallis.','2020-02-16',8),(72,'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.','2020-03-23',15),(73,'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','2020-05-01',12),(74,'Proin at turpis a pede posuere nonummy. Integer non velit.','2020-04-06',15),(75,'Aliquam erat volutpat.','2020-02-06',7),(76,'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.','2020-03-28',10),(77,'In congue. Etiam justo.','2020-08-23',10),(78,'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.','2020-11-23',6),(79,'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.','2020-03-23',14),(80,'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','2020-06-28',16),(81,'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.','2020-09-07',8),(82,'Nunc purus. Phasellus in felis. Donec semper sapien a libero.','2020-05-21',8),(83,'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.','2020-08-18',16),(84,'Aliquam sit amet diam in magna bibendum imperdiet.','2020-06-14',13),(85,'Fusce consequat. Nulla nisl.','2020-02-10',10),(86,'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.','2020-06-09',12),(87,'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','2020-03-30',3),(88,'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','2020-04-27',10),(89,'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','2020-10-29',3),(90,'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.','2020-02-06',6);
/*!40000 ALTER TABLE `contribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device` (
  `device_id` int(11) NOT NULL,
  `device_type` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES (1,'Android'),(2,'iOS'),(3,'Windows'),(4,'Mac'),(5,'All');
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direct_message`
--

DROP TABLE IF EXISTS `direct_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direct_message` (
  `dmessage_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `message` text NOT NULL,
  `user_one` int(11) DEFAULT NULL,
  `user_two` int(11) DEFAULT NULL,
  PRIMARY KEY (`dmessage_id`),
  KEY `user_one` (`user_one`),
  KEY `user_two` (`user_two`),
  CONSTRAINT `direct_message_ibfk_1` FOREIGN KEY (`user_one`) REFERENCES `user` (`user_id`),
  CONSTRAINT `direct_message_ibfk_2` FOREIGN KEY (`user_two`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direct_message`
--

LOCK TABLES `direct_message` WRITE;
/*!40000 ALTER TABLE `direct_message` DISABLE KEYS */;
INSERT INTO `direct_message` VALUES (1,'2020-08-10','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.',3,14),(2,'2019-12-16','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',14,1),(3,'2020-10-02','In congue. Etiam justo. Etiam pretium iaculis justo.',6,9),(4,'2020-06-19','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.',8,2),(5,'2020-03-01','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.',10,1),(6,'2020-02-28','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',15,10),(7,'2020-11-28','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',9,6),(8,'2020-10-05','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.',8,6),(9,'2020-01-01','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.',5,4),(10,'2020-09-03','Sed ante. Vivamus tortor. Duis mattis egestas metus.',15,14),(11,'2020-04-22','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.',15,12),(12,'2020-06-21','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.',11,10),(13,'2020-11-19','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.',11,4),(14,'2020-02-07','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.',10,15),(15,'2020-07-28','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.',9,3),(16,'2020-10-12','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.',7,10),(17,'2020-05-18','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.',1,2),(18,'2020-03-03','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.',10,15),(19,'2020-05-09','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.',8,9),(20,'2020-02-27','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.',1,15);
/*!40000 ALTER TABLE `direct_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follows_community`
--

DROP TABLE IF EXISTS `follows_community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follows_community` (
  `follows_community_id` int(11) NOT NULL,
  `community_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`follows_community_id`),
  UNIQUE KEY `followers` (`community_id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `follows_community_ibfk_1` FOREIGN KEY (`community_id`) REFERENCES `community` (`community_id`),
  CONSTRAINT `follows_community_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follows_community`
--

LOCK TABLES `follows_community` WRITE;
/*!40000 ALTER TABLE `follows_community` DISABLE KEYS */;
INSERT INTO `follows_community` VALUES (45,1,3),(71,1,4),(2,1,18),(36,2,2),(39,2,3),(61,2,5),(55,2,8),(11,2,9),(40,2,10),(57,2,13),(33,2,18),(48,2,19),(8,3,2),(69,3,3),(19,3,4),(43,3,7),(59,3,9),(9,3,10),(26,3,13),(62,4,9),(17,4,13),(38,4,16),(42,4,20),(1,5,2),(25,5,4),(13,5,6),(3,5,10),(44,5,11),(31,5,16),(46,5,17),(6,6,3),(5,6,4),(24,6,7),(54,6,9),(75,6,10),(12,6,11),(18,6,12),(4,6,13),(35,6,18),(27,6,19),(28,7,6),(37,7,7),(16,7,13),(50,7,14),(7,7,20),(34,8,1),(14,8,8),(47,8,10),(52,8,12),(58,8,13),(51,8,17),(64,8,19),(15,9,3),(70,9,6),(10,9,7),(21,9,13),(41,9,14),(20,9,15),(23,9,16),(74,9,17),(60,10,2),(66,10,3),(29,10,7),(67,10,8),(56,10,16);
/*!40000 ALTER TABLE `follows_community` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follows_user`
--

DROP TABLE IF EXISTS `follows_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follows_user` (
  `follow_id` int(11) NOT NULL,
  `user_id_follower` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`follow_id`),
  UNIQUE KEY `uc_follwer_user` (`user_id_follower`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `follows_user_ibfk_1` FOREIGN KEY (`user_id_follower`) REFERENCES `user` (`user_id`),
  CONSTRAINT `follows_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follows_user`
--

LOCK TABLES `follows_user` WRITE;
/*!40000 ALTER TABLE `follows_user` DISABLE KEYS */;
INSERT INTO `follows_user` VALUES (18,2,5),(7,3,17),(17,5,2),(16,5,15),(9,6,4),(14,10,3),(4,10,5),(20,10,13),(15,11,19),(12,12,13),(11,13,2),(6,15,10),(1,15,11),(13,15,13),(2,16,13),(3,16,19),(8,18,11),(19,20,2),(5,20,3),(10,20,8);
/*!40000 ALTER TABLE `follows_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funding`
--

DROP TABLE IF EXISTS `funding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funding` (
  `funding_id` int(11) NOT NULL,
  `funding_type` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`funding_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funding`
--

LOCK TABLES `funding` WRITE;
/*!40000 ALTER TABLE `funding` DISABLE KEYS */;
INSERT INTO `funding` VALUES (1,'Credit Card'),(2,'Debit Card');
/*!40000 ALTER TABLE `funding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `join_chatroom`
--

DROP TABLE IF EXISTS `join_chatroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `join_chatroom` (
  `join_id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`join_id`),
  UNIQUE KEY `uc_room_user` (`room_id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `join_chatroom_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `chat_room` (`room_id`),
  CONSTRAINT `join_chatroom_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `join_chatroom`
--

LOCK TABLES `join_chatroom` WRITE;
/*!40000 ALTER TABLE `join_chatroom` DISABLE KEYS */;
INSERT INTO `join_chatroom` VALUES (8,1,1),(7,1,3),(3,2,20),(6,3,2),(4,3,12),(20,5,3),(1,5,14),(2,5,18),(5,5,19);
/*!40000 ALTER TABLE `join_chatroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moderator`
--

DROP TABLE IF EXISTS `moderator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moderator` (
  `moderator_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `community_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`moderator_id`),
  UNIQUE KEY `uc_moderator` (`community_id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `moderator_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `moderator_ibfk_2` FOREIGN KEY (`community_id`) REFERENCES `community` (`community_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moderator`
--

LOCK TABLES `moderator` WRITE;
/*!40000 ALTER TABLE `moderator` DISABLE KEYS */;
INSERT INTO `moderator` VALUES (6,4,1),(12,14,1),(15,19,2),(11,5,3),(10,14,4),(5,3,5),(4,11,5),(8,7,6),(7,14,6),(14,14,7),(1,19,7),(13,2,8),(9,19,8),(3,20,9),(2,17,10);
/*!40000 ALTER TABLE `moderator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objective`
--

DROP TABLE IF EXISTS `objective`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `objective` (
  `objective_id` int(11) NOT NULL,
  `objective_type` varchar(23) DEFAULT NULL,
  `cost_type` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`objective_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objective`
--

LOCK TABLES `objective` WRITE;
/*!40000 ALTER TABLE `objective` DISABLE KEYS */;
INSERT INTO `objective` VALUES (1,'Brand Awareness & Reach','CPM'),(2,'Traffic','CPC'),(3,'Conversions','CPC'),(4,'Video Views','CPV'),(5,'App Install','CPC');
/*!40000 ALTER TABLE `objective` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL,
  `permission_level` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,'Administrator'),(2,'Creator'),(3,'Analyst');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` text,
  `link` varchar(250) DEFAULT NULL,
  `community_id` int(11) DEFAULT NULL,
  `contribution_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  UNIQUE KEY `uc_post_contribution` (`post_id`,`contribution_id`),
  KEY `community_id` (`community_id`),
  KEY `contribution_id` (`contribution_id`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`community_id`) REFERENCES `community` (`community_id`),
  CONSTRAINT `post_ibfk_2` FOREIGN KEY (`contribution_id`) REFERENCES `contribution` (`contribution_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'WALL·E','http://dummyimage.com/167x199.bmp/ff4444/ffffff',9,3),(2,'Tango','http://dummyimage.com/249x241.bmp/5fa2dd/ffffff',4,5),(3,'71: Into The Fire (Pohwasogeuro)','http://dummyimage.com/185x204.bmp/cc0000/ffffff',3,30),(4,'Somewhere Under the Broad Sky','http://dummyimage.com/169x245.bmp/dddddd/000000',4,14),(5,'Along the Ridge (Anche libero va bene)','http://dummyimage.com/169x192.jpg/5fa2dd/ffffff',5,10),(6,'Prick Up Your Ears','http://dummyimage.com/245x162.bmp/cc0000/ffffff',6,19),(7,'Lisbela e o Prisioneiro (Lisbela and the Prisoner)','http://dummyimage.com/139x151.bmp/ff4444/ffffff',6,1),(8,'Countess from Hong Kong, A','http://dummyimage.com/178x172.bmp/5fa2dd/ffffff',10,7),(9,'Metropolitan','http://dummyimage.com/117x197.jpg/5fa2dd/ffffff',3,12),(10,'Love and Pigeons','http://dummyimage.com/182x149.png/ff4444/ffffff',5,2),(11,'Soldier in the Rain','http://dummyimage.com/179x232.jpg/cc0000/ffffff',6,15),(12,'How Tasty Was My Little Frenchman (Como Era Gostoso o Meu Francês)','http://dummyimage.com/184x229.bmp/5fa2dd/ffffff',2,6),(13,'Johnny Dangerously','http://dummyimage.com/182x241.bmp/5fa2dd/ffffff',2,28),(14,'Buster','http://dummyimage.com/162x210.bmp/ff4444/ffffff',7,20),(15,'Newsies','http://dummyimage.com/134x149.jpg/ff4444/ffffff',3,26),(16,'Three Colors: White (Trzy kolory: Bialy)','http://dummyimage.com/216x144.bmp/5fa2dd/ffffff',7,4),(17,'Murphy\'s Law','http://dummyimage.com/122x202.png/cc0000/ffffff',7,24),(18,'Tibet: Cry of the Snow Lion','http://dummyimage.com/141x162.jpg/ff4444/ffffff',9,25),(19,'David Cross: Bigger & Blackerer','http://dummyimage.com/207x140.png/5fa2dd/ffffff',1,13),(20,'Hot Saturday','http://dummyimage.com/200x217.png/ff4444/ffffff',10,11),(21,'Pinchcliffe Grand Prix (Flåklypa Grand Prix)','http://dummyimage.com/170x144.jpg/cc0000/ffffff',10,23),(22,'See No Evil','http://dummyimage.com/245x147.bmp/cc0000/ffffff',8,21),(23,'We Were Here','http://dummyimage.com/213x187.bmp/dddddd/000000',8,29),(24,'Spy Game','http://dummyimage.com/165x250.bmp/dddddd/000000',4,8),(25,'House I Live In, The','http://dummyimage.com/234x220.jpg/dddddd/000000',4,27),(26,'Un vampiro para dos','http://dummyimage.com/124x137.bmp/5fa2dd/ffffff',2,16),(27,'Gett: The Trial of Viviane Amsalem','http://dummyimage.com/228x124.jpg/dddddd/000000',6,18),(28,'White Balloon, The (Badkonake sefid)','http://dummyimage.com/193x235.bmp/5fa2dd/ffffff',5,9),(29,'Whistle Blower, The','http://dummyimage.com/142x241.jpg/5fa2dd/ffffff',6,22),(30,'Perfect Family, The','http://dummyimage.com/226x179.bmp/cc0000/ffffff',9,17);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_can_have_tags`
--

DROP TABLE IF EXISTS `posts_can_have_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_can_have_tags` (
  `post_tag_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`post_tag_id`),
  UNIQUE KEY `uc_post_tag` (`post_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `posts_can_have_tags_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  CONSTRAINT `posts_can_have_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_can_have_tags`
--

LOCK TABLES `posts_can_have_tags` WRITE;
/*!40000 ALTER TABLE `posts_can_have_tags` DISABLE KEYS */;
INSERT INTO `posts_can_have_tags` VALUES (10,1,4),(1,1,5),(31,2,1),(37,2,5),(5,3,3),(11,3,5),(9,4,3),(41,5,1),(25,5,3),(35,5,4),(30,6,1),(20,6,5),(42,7,4),(13,8,2),(21,8,3),(16,8,5),(32,10,2),(22,10,5),(24,11,1),(29,13,1),(18,13,3),(28,14,2),(33,16,2),(39,16,4),(26,17,1),(8,17,3),(36,19,1),(43,20,2),(17,21,1),(7,21,5),(6,23,2),(45,23,3),(2,23,4),(12,23,5),(40,24,1),(23,26,1),(27,27,2),(19,28,5),(4,29,3),(3,30,4);
/*!40000 ALTER TABLE `posts_can_have_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `report_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text,
  `report_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `contribution_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`report_id`),
  UNIQUE KEY `uc_user_contribution` (`user_id`,`contribution_id`),
  KEY `report_type_id` (`report_type_id`),
  KEY `contribution_id` (`contribution_id`),
  CONSTRAINT `report_ibfk_1` FOREIGN KEY (`report_type_id`) REFERENCES `report_type` (`report_type_id`),
  CONSTRAINT `report_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `report_ibfk_3` FOREIGN KEY (`contribution_id`) REFERENCES `contribution` (`contribution_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,'2020-08-13','cultivate intuitive synergies','Duis consequat dui nec nisi volutpat eleifend.',4,3,9),(2,'2020-03-11','facilitate magnetic web services','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.',2,7,18),(3,'2019-12-10','reintermediate turn-key markets','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.',2,1,7),(4,'2020-01-05','reinvent cutting-edge web-readiness','Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.',4,14,7),(5,'2020-05-25','transition global mindshare','In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.',2,8,5),(6,'2020-09-04','transition seamless architectures','Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.',5,9,20),(7,'2020-07-11','innovate interactive initiatives','Nullam varius. Nulla facilisi.',3,10,5),(8,'2020-01-06','incentivize value-added infomediaries','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.',5,17,19),(9,'2020-08-10','synergize innovative channels','In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.',4,10,2),(10,'2020-02-06','integrate real-time infomediaries','Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',4,3,6),(11,'2020-04-05','embrace global mindshare','Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst.',5,2,18),(12,'2020-03-24','embrace 24/7 vortals','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.',1,2,7),(13,'2020-04-09','harness world-class markets','Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.',1,13,7),(14,'2020-11-11','enable holistic mindshare','Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',1,18,16),(15,'2020-09-24','engage seamless infomediaries','In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.',2,11,8),(16,'2020-12-01','reinvent cross-platform infomediaries','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.',1,17,18),(17,'2020-11-30','synthesize killer systems','In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.',3,4,6),(18,'2020-06-08','architect wireless eyeballs','Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.',2,19,4),(19,'2020-08-04','deliver dot-com metrics','Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.',5,12,5),(20,'2020-09-11','utilize intuitive synergies','Vestibulum rutrum rutrum neque.',2,11,18);
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_type`
--

DROP TABLE IF EXISTS `report_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_type` (
  `report_type_id` int(11) NOT NULL,
  `priority` int(11) DEFAULT NULL,
  `report_type_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`report_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_type`
--

LOCK TABLES `report_type` WRITE;
/*!40000 ALTER TABLE `report_type` DISABLE KEYS */;
INSERT INTO `report_type` VALUES (1,3,'Other'),(2,5,'Hate Speech'),(3,3,'guidelines violated'),(4,5,'Abuse'),(5,4,'Copyright Infirngment');
/*!40000 ALTER TABLE `report_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `contribution_removed` tinyint(1) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `report_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `admin_id` (`admin_id`),
  KEY `report_id` (`report_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`report_id`) REFERENCES `report` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'2020-11-01',0,6,8),(2,'2020-05-17',0,4,14),(3,'2020-09-11',1,9,10),(4,'2020-09-06',0,2,3),(5,'2020-11-23',0,1,20),(6,'2020-11-30',0,1,13),(7,'2020-03-05',1,2,14),(8,'2020-07-22',1,7,12),(9,'2020-06-10',1,9,17),(10,'2020-02-04',1,2,7),(11,'2020-08-24',0,3,7),(12,'2020-04-17',0,4,18),(13,'2020-07-24',0,8,11),(14,'2020-09-09',1,2,20),(15,'2020-03-08',1,1,9),(16,'2020-01-24',0,5,7),(17,'2019-12-11',0,6,16),(18,'2020-10-19',0,4,19),(19,'2020-08-18',0,3,19),(20,'2020-07-05',0,5,4);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `save`
--

DROP TABLE IF EXISTS `save`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `save` (
  `save_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `contribution_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`save_id`),
  UNIQUE KEY `uc_user_contribution` (`user_id`,`contribution_id`),
  KEY `contribution_id` (`contribution_id`),
  CONSTRAINT `save_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `save_ibfk_2` FOREIGN KEY (`contribution_id`) REFERENCES `contribution` (`contribution_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `save`
--

LOCK TABLES `save` WRITE;
/*!40000 ALTER TABLE `save` DISABLE KEYS */;
INSERT INTO `save` VALUES (2,'2020-04-07',12,45),(3,'2020-02-21',13,25),(4,'2020-04-26',14,31),(5,'2020-09-02',9,25),(6,'2020-05-06',12,2),(7,'2020-01-11',15,76),(8,'2020-05-10',7,49),(9,'2020-02-09',14,11),(11,'2020-04-06',17,35),(12,'2020-10-03',1,5),(13,'2020-10-15',17,17),(14,'2020-04-18',16,25),(15,'2020-06-30',2,39),(16,'2020-03-03',7,17),(17,'2020-01-05',11,9),(18,'2020-08-15',7,11),(19,'2019-12-20',4,36),(21,'2020-08-21',15,80),(22,'2020-06-02',6,24),(23,'2020-02-04',1,62),(24,'2020-05-13',4,26),(25,'2019-12-13',1,14),(26,'2020-05-11',6,25),(27,'2020-02-15',8,23),(28,'2020-06-01',12,90),(29,'2020-12-01',8,83),(30,'2020-10-01',19,56),(31,'2020-01-24',15,46),(32,'2020-03-26',14,85),(33,'2020-01-29',11,23),(34,'2020-04-09',19,33),(35,'2020-04-25',8,67),(36,'2020-09-25',14,89),(37,'2020-07-29',11,88),(38,'2020-08-24',11,73),(39,'2020-05-09',17,90),(40,'2020-08-06',7,16),(41,'2020-10-12',20,35),(42,'2020-09-27',15,90),(43,'2020-05-09',7,47),(44,'2019-12-21',11,47),(45,'2020-09-26',12,9),(46,'2019-12-19',16,78),(47,'2020-12-08',18,53),(48,'2020-11-30',17,58),(49,'2020-12-03',8,7),(50,'2020-02-05',1,44),(51,'2020-03-31',19,73),(52,'2020-06-23',3,19),(53,'2020-06-22',5,85),(54,'2020-04-21',19,45),(55,'2020-05-15',5,29),(56,'2020-03-05',13,83),(57,'2020-09-22',15,53),(58,'2020-03-21',17,65),(60,'2020-01-10',13,47),(61,'2020-06-08',11,75),(62,'2020-07-20',1,80),(63,'2020-03-27',3,38),(64,'2020-09-26',6,71),(65,'2020-07-04',3,90),(66,'2020-05-10',13,54),(67,'2020-10-04',2,78),(68,'2020-09-11',11,25),(69,'2020-06-15',14,59),(70,'2019-12-12',11,83),(71,'2020-06-01',3,70),(72,'2020-05-30',1,32),(73,'2020-11-28',19,9),(74,'2020-11-07',3,69),(75,'2020-01-02',20,28),(76,'2020-01-05',5,83),(77,'2020-08-01',4,11),(78,'2020-01-13',15,2),(79,'2020-08-11',7,79),(80,'2020-05-30',17,31),(81,'2020-06-07',4,15),(82,'2020-05-11',12,73),(83,'2019-12-29',17,12),(84,'2020-08-26',15,56),(85,'2020-08-17',17,66),(86,'2020-04-10',6,12),(87,'2020-02-04',13,86),(88,'2020-05-16',17,75),(89,'2020-07-19',5,39),(90,'2020-03-26',10,4),(91,'2020-09-20',8,56),(92,'2020-04-01',9,63),(93,'2020-05-08',3,10),(94,'2020-11-28',16,84),(95,'2020-06-01',14,86),(96,'2020-04-07',12,61),(97,'2020-10-01',6,51),(98,'2020-01-25',10,60),(99,'2020-07-05',5,14),(100,'2020-01-01',17,6),(101,'2020-09-28',4,58),(102,'2020-11-22',2,88),(103,'2020-11-07',4,34),(104,'2020-01-05',11,82),(105,'2020-02-22',8,40),(106,'2020-08-04',10,61),(107,'2020-04-18',18,50),(108,'2020-10-03',16,75),(109,'2020-11-27',14,54),(110,'2020-09-20',14,68),(111,'2020-02-21',3,11),(112,'2020-02-11',7,46),(113,'2020-11-14',19,32),(114,'2020-05-07',11,28),(115,'2020-08-03',14,74),(116,'2020-09-09',11,14),(117,'2020-04-07',17,86),(118,'2020-02-10',9,44),(119,'2020-08-24',1,17),(120,'2020-04-10',12,5),(121,'2020-01-26',8,3),(122,'2020-05-31',12,51),(123,'2020-06-12',10,6),(124,'2020-02-04',16,72),(125,'2020-10-08',2,52),(126,'2020-09-06',8,82),(127,'2020-04-26',1,21),(128,'2020-04-07',18,26),(129,'2020-08-12',7,18),(131,'2020-09-27',2,10),(132,'2020-11-24',11,10),(133,'2020-11-09',1,39),(134,'2020-01-22',3,62),(135,'2020-10-04',3,34),(136,'2020-01-31',20,42),(137,'2020-06-24',6,53),(138,'2020-04-09',8,12),(139,'2020-03-13',5,51),(140,'2020-09-29',15,75),(141,'2020-03-16',7,69),(142,'2020-03-30',20,26),(143,'2020-04-18',9,66),(144,'2019-12-24',16,32),(145,'2020-08-25',13,32),(146,'2020-06-29',6,48),(147,'2020-04-07',19,30),(148,'2020-07-01',16,1),(149,'2020-07-28',20,90),(150,'2020-11-23',19,77),(151,'2020-12-03',8,43),(152,'2020-01-24',13,72),(153,'2020-04-06',19,51),(154,'2020-09-26',16,67),(155,'2020-04-07',14,62),(156,'2020-07-22',7,25),(157,'2020-10-07',10,20),(158,'2020-07-26',15,17),(159,'2020-08-29',15,55),(160,'2020-05-22',4,25),(161,'2020-09-01',13,53),(162,'2020-01-06',9,58),(163,'2020-01-22',11,12),(164,'2020-06-04',1,81),(165,'2020-06-28',7,15),(166,'2020-03-03',5,82),(167,'2020-11-21',9,34),(168,'2020-03-07',6,44),(169,'2020-07-24',16,31),(170,'2020-03-13',16,65),(171,'2020-01-21',17,71),(172,'2020-07-10',18,41),(173,'2020-02-23',4,19),(174,'2020-10-01',5,52),(176,'2019-12-22',5,62),(177,'2020-09-30',2,81),(178,'2020-08-08',20,74),(179,'2020-10-14',8,20),(180,'2020-09-03',18,34),(181,'2020-04-15',1,56),(182,'2020-04-03',3,49),(183,'2020-11-20',8,46),(184,'2020-06-15',5,36),(185,'2020-08-22',1,76),(187,'2019-12-22',17,80),(188,'2020-10-20',11,54),(189,'2020-02-07',12,71),(192,'2020-10-27',4,89),(194,'2020-01-21',8,47),(195,'2020-01-14',3,82),(196,'2020-09-05',1,52),(197,'2020-01-05',7,77),(199,'2020-01-10',18,59),(200,'2020-05-26',3,20),(202,'2019-12-23',7,54),(203,'2020-07-20',12,22),(204,'2020-10-08',15,23),(205,'2020-07-08',1,65),(206,'2020-02-06',12,15),(207,'2020-11-22',9,48),(208,'2020-10-27',20,88),(209,'2020-08-24',2,6),(210,'2020-08-08',10,80),(211,'2020-06-23',2,15),(212,'2020-12-05',4,57),(213,'2020-04-04',16,80),(214,'2020-01-13',15,63),(216,'2020-04-10',5,73),(217,'2020-02-06',5,74),(218,'2020-09-23',12,18),(219,'2020-04-03',2,68),(220,'2020-09-30',6,8),(221,'2020-03-16',11,63),(224,'2020-09-17',17,84),(225,'2020-09-13',12,54),(226,'2020-05-17',12,83),(229,'2020-11-26',14,84),(230,'2020-07-08',14,78),(231,'2020-09-26',3,77),(232,'2020-01-22',3,85),(233,'2020-02-10',5,44),(234,'2020-06-26',13,13),(235,'2020-11-30',10,70),(236,'2020-03-14',14,2),(237,'2020-08-09',14,80),(238,'2020-10-05',17,56),(241,'2020-02-19',4,60),(243,'2020-03-18',5,59),(244,'2020-11-20',16,51),(246,'2019-12-31',10,21),(247,'2020-03-17',14,37),(248,'2020-02-24',19,89),(249,'2020-07-06',14,53),(251,'2020-03-12',18,32),(252,'2020-05-05',16,62),(253,'2019-12-18',16,79),(254,'2020-05-05',5,41),(255,'2020-05-01',16,86),(256,'2020-05-09',9,15),(257,'2020-07-19',8,34),(258,'2019-12-15',8,63),(259,'2019-12-25',3,40),(260,'2020-10-29',20,21),(261,'2020-05-25',9,18),(263,'2020-03-05',3,50),(264,'2020-06-06',17,7),(266,'2020-04-01',16,47),(267,'2020-12-08',9,28),(268,'2020-04-23',1,33),(269,'2020-11-09',19,75),(270,'2020-10-02',14,48),(271,'2020-03-05',20,52),(272,'2020-10-25',10,26),(273,'2020-12-06',10,53),(274,'2020-04-24',13,21),(275,'2020-11-29',2,60),(276,'2020-04-15',4,55),(277,'2020-07-25',10,34),(279,'2020-09-08',4,30),(280,'2020-04-06',5,42),(281,'2019-12-13',6,85),(282,'2020-11-24',1,51),(283,'2020-03-10',12,89),(285,'2020-09-06',12,30),(286,'2020-10-16',1,11),(287,'2019-12-19',17,29),(288,'2020-11-04',10,30),(289,'2020-10-08',11,70),(291,'2020-03-16',19,40),(292,'2020-10-28',15,16),(293,'2020-01-12',18,29),(294,'2019-12-25',15,79),(295,'2020-01-29',2,71),(296,'2020-06-01',16,5),(297,'2020-04-01',20,8),(298,'2020-07-27',10,79),(299,'2020-04-01',16,57),(300,'2020-03-23',11,74),(301,'2020-11-23',12,37),(303,'2020-03-29',1,84),(304,'2020-04-29',10,54),(305,'2020-01-13',3,45),(306,'2020-07-24',10,24),(308,'2020-02-06',13,42),(309,'2020-10-17',4,24),(310,'2020-08-11',3,8),(311,'2020-01-13',5,53),(312,'2020-03-14',13,49),(313,'2020-08-21',18,43),(314,'2020-09-11',7,44),(315,'2020-08-20',17,77),(316,'2020-03-23',19,22),(317,'2020-02-02',11,55),(318,'2020-04-15',1,29),(319,'2020-03-12',5,57),(320,'2020-05-22',4,31),(321,'2020-05-04',12,58),(322,'2020-04-25',12,53),(324,'2020-08-08',4,5),(325,'2020-02-26',1,23),(327,'2020-03-27',9,78),(328,'2020-03-12',8,8),(329,'2020-08-09',9,31),(332,'2020-11-30',10,8),(333,'2020-10-11',13,5),(334,'2020-04-04',3,61),(336,'2020-03-21',1,10),(337,'2020-08-26',19,16),(339,'2020-02-05',12,59),(341,'2020-04-08',4,65),(342,'2020-06-29',18,56),(343,'2020-02-26',18,80),(344,'2020-05-22',18,44),(345,'2020-07-22',6,11),(346,'2020-04-01',11,77),(347,'2020-01-21',3,75),(348,'2020-02-15',1,45),(350,'2020-06-27',17,59),(351,'2020-02-10',18,42),(353,'2020-02-14',19,67),(354,'2020-07-18',4,16),(355,'2020-05-13',19,39),(356,'2020-02-07',5,64),(357,'2020-02-16',3,58),(358,'2020-08-15',8,18),(359,'2020-06-19',12,82),(360,'2020-01-17',6,32),(361,'2020-09-05',10,31),(362,'2020-08-28',9,87),(363,'2019-12-16',19,88),(365,'2020-02-05',1,73),(366,'2020-09-10',1,12),(367,'2020-03-05',6,56),(368,'2020-03-19',14,22),(369,'2020-06-07',19,71),(370,'2020-11-19',3,32),(371,'2020-04-21',20,47),(372,'2020-11-10',6,76),(373,'2020-02-27',9,69),(374,'2020-06-16',18,61),(375,'2020-07-06',12,38),(376,'2020-10-25',11,84),(377,'2020-06-26',20,46),(378,'2020-01-02',1,38),(379,'2020-05-03',14,70),(380,'2020-08-20',5,20),(381,'2020-11-19',4,33),(382,'2020-03-17',19,35),(385,'2020-09-28',17,8),(386,'2019-12-21',13,19),(388,'2020-05-12',10,23),(389,'2020-05-18',19,78),(390,'2020-09-01',16,56),(391,'2020-05-14',11,26),(392,'2020-06-24',5,22),(394,'2020-09-19',19,19),(395,'2020-11-29',7,89),(396,'2020-04-27',20,10),(397,'2020-07-25',7,12),(398,'2020-06-24',1,66),(400,'2020-10-06',13,18);
/*!40000 ALTER TABLE `save` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription` (
  `sub_id` int(11) NOT NULL,
  `sub_type` int(11) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `payment_date` date NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`sub_id`),
  KEY `sub_type` (`sub_type`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `subscription_ibfk_1` FOREIGN KEY (`sub_type`) REFERENCES `subscription_plan` (`plan_id`),
  CONSTRAINT `subscription_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES (1,5,'2020-03-28','2020-09-28','2020-01-15',18),(2,2,'2019-12-27','2020-07-23','2020-01-19',8),(3,4,'2020-02-21','2020-08-21','2020-01-28',17),(4,2,'2020-01-12','2020-06-15','2019-12-21',20),(5,4,'2020-03-11','2020-09-25','2020-02-22',13),(6,2,'2020-01-11','2020-06-08','2019-12-23',18),(7,1,'2019-12-29','2020-08-21','2020-02-02',15),(8,1,'2020-01-14','2020-06-28','2020-01-20',11),(9,3,'2020-01-17','2020-05-06','2020-02-06',14),(10,4,'2019-12-23','2020-09-30','2020-02-08',17),(11,4,'2019-12-31','2020-02-20','2020-01-24',6),(12,3,'2020-02-08','2020-09-01','2020-02-12',17),(13,5,'2020-02-05','2020-07-13','2020-01-18',8),(14,4,'2020-03-19','2020-09-04','2020-01-22',12),(15,3,'2020-01-14','2020-06-25','2019-12-26',16),(16,1,'2020-01-20','2020-07-15','2020-01-26',18),(17,4,'2020-01-31','2020-02-23','2019-12-30',7),(18,5,'2020-01-02','2020-02-05','2020-02-06',16),(19,5,'2020-01-24','2020-06-03','2019-12-15',9),(20,2,'2020-03-31','2020-07-19','2020-02-23',13);
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_plan`
--

DROP TABLE IF EXISTS `subscription_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription_plan` (
  `plan_id` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_plan`
--

LOCK TABLES `subscription_plan` WRITE;
/*!40000 ALTER TABLE `subscription_plan` DISABLE KEYS */;
INSERT INTO `subscription_plan` VALUES (1,3,50),(2,6,90),(3,9,139),(4,12,180),(5,15,225);
/*!40000 ALTER TABLE `subscription_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `font` varchar(6) NOT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'LOL','BOLD'),(2,'SAD','STRONG'),(3,'EPIC','ITALIC'),(4,'NSFL','BOLD'),(5,'REAL','ITALIC');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `about` text,
  `display_name` varchar(50) DEFAULT NULL,
  `nsfw_flag` tinyint(1) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `uc_user_account` (`user_id`,`account_id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','Trueman',0,3),(2,'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.','Pris',0,2),(3,'Suspendisse accumsan tortor quis turpis.','Berke',0,5),(4,'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo.','Gus',0,18),(5,'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.','Tamiko',1,6),(6,'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.','Darlleen',1,20),(7,'Aenean fermentum.','Annadiane',1,15),(8,'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.','Corine',1,9),(9,'Praesent blandit. Nam nulla.','Essa',0,8),(10,'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.','Laughton',1,12),(11,'Curabitur gravida nisi at nibh.','Libbi',1,11),(12,'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','Tisha',1,16),(13,'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.','Susy',0,4),(14,'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.','Leoine',0,14),(15,'Pellentesque at nulla.','Violet',1,17),(16,'In eleifend quam a odio. In hac habitasse platea dictumst.','Tish',0,7),(17,'Proin risus. Praesent lectus.','Meg',1,19),(18,'Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.','Christoforo',1,13),(19,'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','Orson',1,1),(20,'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Leilah',1,10);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vote` (
  `vote_id` int(11) NOT NULL,
  `vote_date` date DEFAULT NULL,
  `vote_boolean` tinyint(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `contribution_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`vote_id`),
  UNIQUE KEY `uc_user_contribution` (`user_id`,`contribution_id`),
  KEY `contribution_id` (`contribution_id`),
  CONSTRAINT `vote_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `vote_ibfk_2` FOREIGN KEY (`contribution_id`) REFERENCES `contribution` (`contribution_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote`
--

LOCK TABLES `vote` WRITE;
/*!40000 ALTER TABLE `vote` DISABLE KEYS */;
INSERT INTO `vote` VALUES (2,'2020-06-26',0,10,75),(3,'2020-02-27',0,18,52),(4,'2020-03-16',0,12,88),(5,'2020-04-15',1,11,81),(6,'2019-12-27',0,10,60),(7,'2020-03-03',1,15,66),(8,'2020-10-21',0,17,41),(9,'2020-06-23',1,17,65),(10,'2020-07-13',1,4,82),(11,'2020-02-14',0,19,20),(12,'2020-02-02',0,20,69),(13,'2020-06-18',1,13,8),(14,'2020-11-27',1,6,8),(15,'2020-11-03',0,15,58),(16,'2020-06-07',1,14,15),(17,'2020-03-09',1,19,45),(18,'2020-09-23',1,15,2),(19,'2020-07-23',0,7,77),(20,'2020-03-18',1,11,56),(21,'2020-12-01',1,17,43),(22,'2020-03-01',0,10,51),(23,'2020-08-14',0,14,83),(24,'2020-03-29',1,14,33),(25,'2020-10-29',1,8,56),(26,'2020-06-19',1,7,16),(27,'2020-05-08',0,4,87),(28,'2020-01-19',1,11,10),(29,'2020-05-29',0,6,74),(30,'2020-10-09',1,9,15),(31,'2020-10-01',0,9,57),(32,'2020-08-16',1,16,71),(33,'2020-02-21',0,10,38),(34,'2020-03-01',1,17,27),(35,'2020-08-28',0,7,36),(36,'2020-05-08',1,12,57),(37,'2020-06-18',0,13,45),(38,'2020-07-12',0,9,51),(39,'2020-09-27',1,15,60),(40,'2020-09-29',0,18,4),(41,'2020-05-04',0,8,69),(42,'2019-12-14',1,9,30),(43,'2020-12-03',1,15,80),(44,'2020-10-24',0,9,78),(45,'2020-10-15',0,8,16),(46,'2020-01-22',1,11,20),(47,'2019-12-22',1,18,61),(48,'2020-09-10',0,13,47),(49,'2020-01-16',0,8,54),(50,'2020-05-29',0,6,19),(51,'2020-08-15',0,10,61),(52,'2020-04-21',1,3,22),(53,'2020-12-03',0,7,69),(54,'2020-10-09',1,18,15),(55,'2020-06-12',1,2,42),(56,'2020-11-10',1,18,38),(57,'2020-04-19',0,15,47),(59,'2019-12-30',0,11,72),(60,'2020-01-29',1,17,25),(61,'2020-11-11',1,3,28),(62,'2020-09-15',1,6,57),(63,'2020-09-09',1,9,81),(64,'2020-08-11',0,20,38),(65,'2020-08-22',1,20,18),(66,'2020-11-01',0,20,86),(67,'2019-12-26',0,5,41),(68,'2020-06-01',0,3,86),(69,'2020-12-06',0,9,55),(70,'2020-04-06',1,17,36),(71,'2020-09-08',1,13,70),(72,'2019-12-26',0,3,83),(73,'2020-02-14',0,5,12),(74,'2020-09-15',0,14,88),(75,'2020-08-04',1,20,75),(76,'2020-07-04',0,11,82),(77,'2020-03-28',0,16,76),(78,'2020-05-04',0,14,62),(79,'2020-06-11',1,5,82),(80,'2020-09-27',1,14,7),(81,'2020-09-10',0,9,27),(82,'2020-06-01',1,11,65),(83,'2020-04-04',1,17,84),(84,'2020-04-23',1,16,72),(85,'2020-05-24',0,3,30),(86,'2020-01-24',0,5,58),(87,'2020-11-06',0,13,20),(88,'2020-05-18',1,15,67),(89,'2020-03-11',0,12,68),(90,'2020-01-27',1,16,43),(91,'2020-10-18',1,6,73),(92,'2020-07-17',0,13,79),(93,'2020-06-14',1,6,15),(94,'2020-08-05',0,12,33),(95,'2020-10-19',0,18,84),(96,'2019-12-10',0,7,80),(97,'2020-06-01',1,20,60),(98,'2020-05-28',0,6,47),(99,'2020-11-10',0,1,85),(100,'2020-10-18',1,14,57),(101,'2020-05-30',0,12,37),(102,'2020-05-21',1,14,52),(103,'2020-04-17',0,17,57),(104,'2020-08-26',0,8,83),(105,'2020-04-26',1,11,71),(106,'2020-03-17',1,13,32),(107,'2020-08-26',1,2,40),(108,'2020-03-09',0,20,9),(109,'2020-01-21',1,5,50),(110,'2020-10-01',1,6,48),(111,'2020-04-19',1,12,5),(112,'2020-01-12',1,12,8),(113,'2020-08-24',1,14,16),(114,'2020-04-08',0,8,62),(115,'2020-12-02',0,1,41),(116,'2020-07-27',1,7,27),(117,'2020-03-27',0,16,65),(118,'2020-07-24',0,13,49),(119,'2020-12-01',0,16,38),(120,'2020-07-24',0,15,40),(121,'2019-12-09',1,7,35),(122,'2020-02-23',0,19,80),(123,'2020-11-21',0,2,21),(124,'2020-11-06',0,4,6),(125,'2020-03-11',0,1,27),(126,'2020-03-21',1,8,87),(127,'2020-02-16',0,16,26),(128,'2020-10-04',0,3,75),(129,'2020-10-27',1,20,46),(130,'2020-10-04',0,14,58),(131,'2020-08-31',0,3,74),(132,'2020-07-20',0,5,88),(133,'2020-03-15',1,13,31),(135,'2020-01-25',1,10,46),(136,'2020-05-19',0,10,85),(137,'2020-01-17',0,20,3),(138,'2020-10-24',0,5,46),(140,'2020-04-18',1,18,27),(141,'2020-01-07',0,10,31),(142,'2020-02-15',1,13,22),(143,'2020-11-16',1,10,73),(144,'2020-04-02',1,7,76),(145,'2020-06-08',1,15,3),(146,'2020-04-12',0,20,24),(147,'2020-11-27',0,13,57),(148,'2020-04-03',0,6,33),(149,'2020-04-07',0,14,87),(150,'2020-12-02',1,10,78),(151,'2020-03-26',0,4,76),(152,'2020-11-18',1,4,48),(153,'2019-12-24',0,2,61),(154,'2020-01-30',0,19,43),(155,'2020-07-19',1,16,67),(156,'2020-02-14',1,11,43),(157,'2019-12-11',1,18,19),(158,'2020-10-08',1,16,1),(159,'2020-09-20',1,19,14),(161,'2020-06-03',0,18,65),(162,'2020-02-09',1,7,88),(163,'2020-07-26',1,6,1),(164,'2020-09-15',1,18,55),(165,'2020-04-29',0,4,53),(166,'2020-07-20',1,12,60),(167,'2020-05-11',0,7,84),(168,'2020-11-27',1,5,29),(170,'2020-02-03',1,14,24),(171,'2020-10-02',0,15,15),(172,'2020-07-26',0,18,69),(173,'2020-11-14',0,10,69),(174,'2020-02-07',1,3,71),(175,'2020-08-08',0,2,64),(176,'2020-08-13',1,4,26),(177,'2020-04-24',1,16,48),(178,'2020-07-06',1,11,83),(179,'2020-01-15',0,13,6),(180,'2019-12-25',0,20,42),(181,'2020-06-12',0,12,17),(182,'2020-03-11',0,16,64),(183,'2020-07-02',1,19,86),(184,'2020-10-11',0,7,37),(185,'2020-08-25',1,6,36),(186,'2020-03-07',0,18,72),(187,'2020-04-11',0,15,86),(188,'2020-03-02',1,16,19),(189,'2020-03-02',1,17,88),(190,'2020-03-22',1,16,28),(191,'2019-12-19',1,11,40),(192,'2020-08-22',0,7,66),(193,'2019-12-20',1,3,3),(194,'2020-10-31',1,16,86),(195,'2020-08-23',1,2,90),(196,'2020-10-17',0,19,47),(197,'2020-10-14',0,19,10),(198,'2020-09-15',1,10,18),(199,'2020-03-19',1,4,15),(200,'2020-07-16',1,11,88),(201,'2020-04-14',1,5,33),(202,'2020-11-01',1,4,68),(203,'2020-09-11',1,9,23),(204,'2020-07-17',0,4,11),(205,'2020-10-31',1,3,50),(207,'2020-10-06',0,5,59),(208,'2020-07-26',0,15,90),(209,'2020-09-03',0,13,40),(210,'2020-10-01',0,14,31),(211,'2020-03-07',0,13,87),(212,'2020-08-23',0,1,31),(213,'2020-09-30',0,17,90),(216,'2020-06-25',1,14,28),(217,'2019-12-13',0,9,77),(218,'2020-03-07',1,5,51),(219,'2020-04-14',1,5,2),(220,'2019-12-27',0,11,41),(221,'2020-10-18',1,13,90),(222,'2019-12-17',1,18,79),(223,'2020-03-05',1,3,69),(224,'2020-11-10',0,7,46),(225,'2020-07-17',0,5,84),(226,'2020-04-26',0,4,4),(227,'2019-12-21',1,20,74),(228,'2020-01-18',1,16,17),(229,'2020-07-19',0,15,38),(230,'2020-02-27',1,5,23),(231,'2020-04-20',1,3,5),(232,'2020-02-09',1,18,35),(233,'2020-04-11',0,3,44),(236,'2020-08-27',1,10,70),(237,'2020-06-04',0,13,18),(238,'2020-01-21',0,20,67),(239,'2020-02-11',0,3,19),(240,'2020-03-01',0,2,59),(241,'2020-01-01',0,1,36),(242,'2020-06-29',1,15,10),(243,'2020-10-01',1,9,4),(244,'2020-01-13',0,18,45),(245,'2020-01-04',0,6,68),(246,'2020-03-14',0,2,51),(247,'2020-08-14',1,20,39),(248,'2020-10-12',0,5,79),(249,'2020-01-09',0,14,74),(250,'2020-05-14',1,15,81),(251,'2020-01-22',1,12,50),(252,'2020-05-20',1,10,13),(253,'2020-01-21',1,4,23),(254,'2020-08-03',1,4,51),(255,'2020-05-29',1,8,18),(256,'2020-11-02',0,6,20),(257,'2020-09-24',1,13,1),(258,'2020-07-03',0,13,68),(260,'2020-02-24',1,6,18),(261,'2020-01-07',0,2,27),(262,'2020-10-15',1,7,70),(263,'2020-01-26',1,15,7),(264,'2020-01-01',1,7,89),(265,'2020-02-13',0,17,81),(268,'2020-06-09',0,16,88),(269,'2020-05-31',0,6,87),(270,'2020-05-04',0,20,43),(271,'2020-07-27',1,20,12),(272,'2020-10-11',1,18,20),(273,'2020-11-09',1,5,66),(274,'2020-07-30',1,14,46),(275,'2020-03-04',1,6,55),(276,'2020-06-15',1,4,19),(277,'2019-12-25',0,18,12),(279,'2020-08-28',0,4,13),(281,'2020-05-24',0,6,17),(282,'2020-08-20',0,5,16),(284,'2020-10-24',1,12,79),(285,'2020-02-21',1,20,80),(286,'2020-06-18',1,17,26),(287,'2019-12-11',1,11,70),(288,'2020-02-25',0,16,10),(289,'2020-06-29',1,9,90),(290,'2020-05-13',0,13,54),(291,'2020-06-06',0,20,34),(292,'2020-07-01',0,14,12),(293,'2020-05-17',1,8,10),(294,'2020-01-02',0,19,51),(295,'2020-09-04',0,9,3),(296,'2020-06-23',1,12,6),(297,'2020-10-12',1,15,68),(299,'2020-11-01',1,6,64),(300,'2020-09-02',0,17,83),(303,'2020-07-25',0,19,56),(304,'2020-05-10',1,5,72),(305,'2020-11-28',0,1,84),(306,'2020-03-21',0,16,14),(307,'2020-08-15',0,19,30),(308,'2020-04-11',1,3,11),(309,'2020-05-10',1,15,4),(311,'2020-11-30',0,17,7),(312,'2020-09-26',1,11,89),(313,'2020-05-12',1,16,59),(314,'2020-02-26',0,19,40),(315,'2020-05-19',0,10,8),(316,'2020-06-04',1,16,24),(317,'2019-12-13',1,5,71),(318,'2020-08-02',1,3,80),(319,'2020-08-13',1,17,18),(320,'2020-06-11',1,12,77),(321,'2020-10-20',0,18,82),(322,'2020-08-20',1,14,40),(323,'2020-08-31',1,20,72),(324,'2020-12-08',0,13,66),(326,'2020-09-05',1,15,45),(327,'2020-05-17',1,19,22),(330,'2020-02-22',0,2,36),(331,'2020-03-12',0,8,50),(332,'2020-11-29',1,3,47),(333,'2020-08-28',0,12,3),(334,'2020-06-12',1,12,45),(338,'2020-01-12',1,15,23),(339,'2019-12-30',1,7,57),(340,'2020-09-25',1,16,68),(342,'2020-09-09',1,3,13),(343,'2020-06-23',1,10,1),(344,'2020-02-12',0,15,76),(345,'2020-07-14',1,4,12),(347,'2020-02-05',1,5,27),(348,'2019-12-31',1,17,53),(349,'2020-07-05',1,16,81),(352,'2020-10-17',1,9,71),(354,'2019-12-28',0,15,29),(355,'2020-03-24',0,6,26),(356,'2020-09-29',1,1,9),(357,'2020-02-11',0,14,20),(358,'2020-03-06',1,8,74),(359,'2020-05-08',0,2,70),(360,'2020-02-17',1,10,43),(361,'2020-08-20',1,17,2),(362,'2020-09-12',1,11,32),(363,'2020-08-19',0,6,89),(364,'2020-10-27',0,20,31),(365,'2020-07-31',1,16,56),(366,'2020-09-18',0,7,75),(367,'2020-01-22',0,20,14),(368,'2019-12-18',0,6,77),(369,'2020-04-04',0,15,20),(370,'2020-04-29',0,5,64),(371,'2020-02-19',1,14,13),(372,'2020-08-03',0,2,38),(373,'2020-02-19',0,1,80),(376,'2020-10-31',0,1,13),(377,'2020-07-14',1,19,7),(378,'2020-06-28',1,7,53),(379,'2019-12-18',0,7,59),(381,'2020-06-26',1,10,9),(382,'2020-07-24',1,15,8),(383,'2020-06-20',1,20,37),(384,'2019-12-20',0,2,9),(385,'2020-07-12',1,4,49),(386,'2020-11-24',0,8,4),(387,'2020-05-30',1,12,61),(388,'2020-10-12',1,7,55),(389,'2020-07-10',1,13,19),(390,'2020-05-24',0,6,32),(391,'2020-09-10',1,7,72),(392,'2019-12-11',1,6,37),(393,'2020-03-06',0,5,60),(394,'2020-04-13',1,17,20),(397,'2020-08-31',1,20,21),(399,'2020-02-10',0,10,53),(400,'2020-09-19',1,10,82);
/*!40000 ALTER TABLE `vote` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-11  1:25:30
