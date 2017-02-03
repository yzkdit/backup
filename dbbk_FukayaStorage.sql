/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_history_seppen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `storage_id` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
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
INSERT INTO `merchant` VALUES (1,'弘洋','コウヨウ',NULL),(2,'横浜テクニカ','ヨコハマテクニカ',NULL),(3,'矢崎化工','ヤザキカコウ',NULL),(4,'モテック','モテック',NULL),(5,'松浦製作所','マツウラセイサクショ',NULL),(6,'増田工業','マスダコウギョウ',NULL),(7,'フケン販売','フケンハンバイ',NULL),(8,'深谷製作所','フカヤセイサクショ',NULL),(9,'ファムテック','ファムテック',NULL),(10,'花澤製作所','ハナザワセイサクショ',NULL),(11,'ナカモク','ナカモク',NULL),(12,'エヌテック','エヌテック',NULL),(13,'MPA','MPA',NULL),(14,'大東機械','ダイトウキカイ',NULL),(15,'HIB専用機','HIBセンヨウキ',NULL),(16,'ISJ','ISJ',NULL),(17,'MKH','MKH',NULL),(18,'野中技研','ノナカギケン',NULL),(19,'NIM','NIM',NULL),(20,'OMP','OMP',NULL),(21,'SSN','SSN',NULL),(22,'TNS','TNS',NULL),(23,'TCS','TCS',NULL),(24,'植田部品','ウエダブヒン',NULL),(25,'湖西機工','コサイキコウ',NULL),(26,'佐野','サノ',NULL),(27,'WSZ','WSZ',NULL),(28,'先生鉄工所','センセイテッコウジョ',NULL),(29,'長野工業','ナガノコウギョウ',NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2016_09_13_145904_create_storage_table',1),('2016_09_27_131033_create_storage_in_table',1),('2016_09_29_092125_create_storage_out_table',1),('2017_01_16_125907_create_pic_table',1),('2017_01_16_151754_create_merchant_table',1),('2017_01_17_115942_create_seppen_history_table',1),('2017_01_23_092206_add_furigana_merchant_table',1),('2017_01_23_092211_add_furigana_pic_table',1);
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
INSERT INTO `pic` VALUES (1,'山下','ヤマシタ',NULL),(2,'太田','オオタ',NULL),(3,'大谷','オオタニ',NULL),(4,'大石','オオイシ',NULL),(5,'松村伸','マツムラノブ',NULL),(6,'半田','ハンダ',NULL),(7,'鶴','ツル',NULL),(8,'杉本','スギモト',NULL),(9,'花澤','ハナザワ',NULL),(10,'興津','オキツ',NULL),(11,'河原','カワハラ',NULL),(12,'鎌田','カマダ',NULL),(13,'野中','ノナカ',NULL),(14,'松村瞬','マツムラシュン',NULL),(15,'松本','マツモト',NULL),(16,'伊都','イト',NULL),(17,'髙岡','タカオカ',NULL);
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
INSERT INTO `users` VALUES (1,'admin','$2y$10$m5hAWOR.PPdf4sA4SNW5ae9WvXFZNRVKn5/Eca.Vo1Yu7nJJSphV.','管理者','lxyd59ZkyechaNKezFyuktP7jaMpfJBeXEwBn0Z8JGvhKjjLkWwwhKKCwdwW','2017-02-02 15:00:00','2017-02-03 06:59:48',NULL),(2,'takaoka','$2y$10$bmC66NEN/TKl8FpzFO23ou1AJ/oIgSxAZ9MJXfXasFI08Ix.1WjXC','管理者',NULL,'2017-02-02 15:00:00','2017-02-02 15:00:00',NULL);
