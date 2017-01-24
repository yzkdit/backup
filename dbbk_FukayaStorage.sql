-- MySQL dump 10.13  Distrib 5.5.54, for Linux (x86_64)
--
-- Host: localhost    Database: FukayaStorage
-- ------------------------------------------------------
-- Server version	5.5.54

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
-- Table structure for table `T_history_seppen`
--

DROP TABLE IF EXISTS `T_history_seppen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_history_seppen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `storage_id` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_history_seppen`
--

LOCK TABLES `T_history_seppen` WRITE;
/*!40000 ALTER TABLE `T_history_seppen` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_history_seppen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_storage_in`
--

DROP TABLE IF EXISTS `T_storage_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_storage_in` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `storage_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_storage_in`
--

LOCK TABLES `T_storage_in` WRITE;
/*!40000 ALTER TABLE `T_storage_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_storage_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_storage_out`
--

DROP TABLE IF EXISTS `T_storage_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_storage_out` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `storage_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_storage_out`
--

LOCK TABLES `T_storage_out` WRITE;
/*!40000 ALTER TABLE `T_storage_out` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_storage_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant`
--

DROP TABLE IF EXISTS `merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchant` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `furigana` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `merchant_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant`
--

LOCK TABLES `merchant` WRITE;
/*!40000 ALTER TABLE `merchant` DISABLE KEYS */;
INSERT INTO `merchant` VALUES (1,'弘洋','コウヨウ',NULL),(2,'横浜テクニカ','ヨコハマテクニカ',NULL),(3,'矢崎化工','ヤザキカコウ',NULL),(4,'モテック','モテック',NULL),(5,'松浦製作所','マツウラセイサクショ',NULL),(6,'増田工業','マスダコウギョウ',NULL),(7,'フケン販売','フケンハンバイ',NULL),(8,'深谷製作所','フカヤセイサクショ',NULL),(9,'ファムテック','ファムテック',NULL),(10,'花澤製作所','ハナザワセイサクショ',NULL),(11,'ナカモク','ナカモク',NULL),(12,'エヌテック','エヌテック',NULL),(13,'MPA','MPA',NULL),(14,'大東機械','ダイトウキカイ',NULL),(15,'HIB専用機','HIBセンヨウキ',NULL),(16,'ISJ','ISJ',NULL),(17,'MKH','MKH',NULL),(18,'野中技研','ノナカギケン',NULL),(19,'NIM','NIM',NULL),(20,'OMP','OMP',NULL),(21,'SSN','SSN',NULL),(22,'TNS','TNS',NULL),(23,'TCS','TCS',NULL),(24,'植田部品','ウエダブヒン',NULL),(25,'湖西機工','コサイキコウ',NULL),(26,'佐野','サノ',NULL),(27,'WSZ','WSZ',NULL),(28,'先生鉄工所','センセイテッコウジョ',NULL),(29,'長野工業','ナガノコウギョウ',NULL);
/*!40000 ALTER TABLE `merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2016_09_13_145904_create_storage_table',1),('2016_09_27_131033_create_storage_in_table',1),('2016_09_29_092125_create_storage_out_table',1),('2017_01_16_125907_create_pic_table',1),('2017_01_16_151754_create_merchant_table',1),('2017_01_17_115942_create_seppen_history_table',1),('2017_01_23_092206_add_furigana_merchant_table',1),('2017_01_23_092211_add_furigana_pic_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pic`
--

DROP TABLE IF EXISTS `pic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `furigana` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pic_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pic`
--

LOCK TABLES `pic` WRITE;
/*!40000 ALTER TABLE `pic` DISABLE KEYS */;
INSERT INTO `pic` VALUES (1,'山下','ヤマシタ',NULL),(2,'太田','オオタ',NULL),(3,'大谷','オオタニ',NULL),(4,'大石','オオイシ',NULL),(5,'松村伸','マツムラノブ',NULL),(6,'半田','ハンダ',NULL),(7,'鶴','ツル',NULL),(8,'杉本','スギモト',NULL),(9,'花澤','ハナザワ',NULL),(10,'興津','オキツ',NULL),(11,'河原','カワハラ',NULL),(12,'鎌田','カマダ',NULL),(13,'野中','ノナカ',NULL),(14,'松村瞬','マツムラシュン',NULL),(15,'松本','マツモト',NULL),(16,'伊都','イト',NULL),(17,'髙岡','タカオカ',NULL);
/*!40000 ALTER TABLE `pic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage`
--

DROP TABLE IF EXISTS `storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hinban` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seppenfugou` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tanaban` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `af` tinyint(1) NOT NULL DEFAULT '0',
  `cf` tinyint(1) NOT NULL DEFAULT '0',
  `other` tinyint(1) NOT NULL DEFAULT '0',
  `chikouguhinban` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zuuban` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gyousha` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `shashu` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bui` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lock` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic` int(11) NOT NULL,
  `whq` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage`
--

LOCK TABLES `storage` WRITE;
/*!40000 ALTER TABLE `storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2y$10$aeDItqZKVx90yW872LEZ/O1Wpci/bip6c6DoHDITInV5BsEX8fkWy','管理者',NULL,'2017-01-22 15:00:00','2017-01-22 15:00:00',NULL),(2,'takaoka','$2y$10$Es1BHJOxP4S5yJejNGh2Vu/3UVDdRPf..zx4.YALDHb0n2mda1XPK','管理者',NULL,'2017-01-22 15:00:00','2017-01-22 15:00:00',NULL);
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

-- Dump completed on 2017-01-24  9:16:15
