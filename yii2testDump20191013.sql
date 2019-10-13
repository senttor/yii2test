-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: yii_db
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user_adress`
--

DROP TABLE IF EXISTS `user_adress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_adress` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `street` varchar(100) DEFAULT NULL,
  `country_id` int(10) DEFAULT '0',
  `city` varchar(50) DEFAULT NULL,
  `house` int(10) DEFAULT NULL,
  `office` int(10) DEFAULT NULL,
  `zip` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id_idx` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_adress`
--

LOCK TABLES `user_adress` WRITE;
/*!40000 ALTER TABLE `user_adress` DISABLE KEYS */;
INSERT INTO `user_adress` VALUES (1,3,'test street',2,'Fursy',1,0,NULL),(2,4,'test street2',1,'Fursy',2,1,NULL),(3,11,'26694 Pagac Tunnel',2,'Lake Lorena',53,53,NULL),(4,6,'20303 Considine Rapid',2,'Port Melyna',79,78,NULL),(5,3,'394 Hiram Parkways Suite 844',1,'Johnstonhaven',100,26,NULL),(6,10,'94862 Schroeder Dale',1,'Winstontown',20,108,NULL),(7,7,'252 Kuvalis Stravenue Apt. 190',1,'Port Orland',9,71,NULL),(8,4,'3316 Hintz Locks Suite 056',2,'Wilfridtown',72,34,NULL),(9,4,'8024 Felipe Forest',2,'West Kyra',25,141,NULL),(10,9,'287 Blanda Shore Apt. 050',2,'Bartonchester',75,76,NULL),(11,11,'3402 Helen Alley Suite 330',2,'Jacobsonland',78,115,NULL),(12,6,'16601 Fay Lodge Apt. 884',2,'Framishire',21,44,NULL),(13,10,'34396 Vergie Burg',2,'Uptontown',100,90,NULL),(14,10,'1819 Bernier Motorway',2,'Alishamouth',78,117,NULL),(15,12,'837 Kitty Lights',1,'East Cartertown',15,2,NULL),(16,7,'7602 Dannie Flats',1,'Port Nannie',71,142,NULL),(17,5,'45500 Abbott Alley Suite 424',1,'Port Gonzaloton',8,131,NULL),(18,7,'56889 Kulas Highway',1,'Lake Oceanefort',14,25,NULL),(19,12,'7809 Wilson Courts Apt. 513',2,'Romagueraport',50,22,NULL),(20,5,'50250 Clarabelle Drive',1,'Walshton',93,70,NULL),(21,3,'855 Gorczany Drive Suite 695',2,'Buckridgechester',5,86,NULL),(22,5,'7814 Upton Circle',1,'Kaylichester',32,41,NULL),(23,9,'263 Mosciski Mission Suite 939',2,'Clintonfort',5,1,NULL),(24,13,'75823 Austin Estate Apt. 535',1,'Jacobshaven',23,72,NULL),(28,41,'mystreet',1,'Kyiv',NULL,NULL,222);
/*!40000 ALTER TABLE `user_adress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `gender` enum('M','F') NOT NULL,
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `fk_gender` (`gender`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'testname','testlastname','testlogin','2222222222','test@mail.ua','F','2019-10-13 20:14:53.477568'),(4,'testname2','testlastname2','test2login','123456','test2@email.com','M','0000-00-00 00:00:00.000000'),(5,'Ned','Schroeder','cole.beatty','','hermann.torp@yahoo.com','F','0000-00-00 00:00:00.000000'),(6,'Friedrich','Fahey','xwisozk','','stuart87@yahoo.com','F','0000-00-00 00:00:00.000000'),(7,'Laney','Pagac','lueilwitz.janis','','ssatterfield@smith.com','F','0000-00-00 00:00:00.000000'),(8,'Maurice','Stokes','ariane.ankunding','','malvina.abbott@yahoo.com','F','0000-00-00 00:00:00.000000'),(9,'Trevor','Maggio','akihn','','mrunolfsson@wolf.info','F','0000-00-00 00:00:00.000000'),(10,'Anissa','Emmerich','frieda14','','lueilwitz.aniya@gmail.com','F','0000-00-00 00:00:00.000000'),(11,'Catherine','Franecki','marks.orie','','annetta.lesch@weissnat.com','M','0000-00-00 00:00:00.000000'),(12,'Tristin','Herman','caleb49','','ludwig75@rath.com','M','0000-00-00 00:00:00.000000'),(13,'Carolina','Quigley','jaden.strosin','','victor.dubuque@swift.com','M','0000-00-00 00:00:00.000000'),(41,'Test1','Test2','loginnn','123456','test111@mail.ua','M','2019-10-13 17:45:32.964473');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-13 23:27:39
