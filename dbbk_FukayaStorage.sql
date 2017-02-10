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
INSERT INTO `merchant` VALUES (1,'弘洋','コウヨウ',NULL),(2,'横浜テクニカ','ヨコハマテクニカ',NULL),(3,'矢崎化工','ヤザキカコウ',NULL),(4,'モデック','モデック',NULL),(5,'松浦製作所','マツウラセイサクショ',NULL),(6,'増田工業','マスダコウギョウ',NULL),(7,'フケン販売','フケンハンバイ',NULL),(8,'深谷製作所','フカヤセイサクショ',NULL),(9,'ファムテック','ファムテック',NULL),(10,'花澤製作所','ハナザワセイサクショ',NULL),(11,'ナカモク','ナカモク',NULL),(12,'エヌテック','エヌテック',NULL),(13,'MPA','MPA',NULL),(14,'大東機械','ダイトウキカイ',NULL),(15,'HIB専用機','HIBセンヨウキ',NULL),(16,'ISJ','ISJ',NULL),(17,'MKH','MKH',NULL),(18,'野中技研','ノナカギケン',NULL),(19,'NIM','NIM',NULL),(20,'OMP','OMP',NULL),(21,'SSN','SSN',NULL),(22,'TNS','TNS',NULL),(23,'TCS','TCS',NULL),(24,'植田部品','ウエダブヒン',NULL),(25,'湖西機工','コサイキコウ',NULL),(26,'佐野','サノ',NULL),(27,'WSZ','WSZ',NULL),(28,'先生鉄工所','センセイテッコウジョ',NULL),(29,'長野工業','ナガノコウギョウ',NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2016_09_13_145904_create_storage_table',1),('2016_09_27_131033_create_storage_in_table',1),('2016_09_29_092125_create_storage_out_table',1),('2017_01_16_125907_create_pic_table',1),('2017_01_16_151754_create_merchant_table',1),('2017_01_17_115942_create_seppen_history_table',1),('2017_01_23_092206_add_furigana_merchant_table',1),('2017_01_23_092211_add_furigana_pic_table',1),('2017_02_09_143856_storage_whq_to_int',2);
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
INSERT INTO `pic` VALUES (1,'山下','ヤマシタ',NULL),(2,'太田','オオタ',NULL),(3,'大谷','オオタニ',NULL),(4,'大石','オオイシ',NULL),(5,'松村伸','マツムラノブ',NULL),(6,'半田','ハンダ',NULL),(7,'鶴','ツル',NULL),(8,'杉本','スギモト',NULL),(9,'花澤','ハナザワ',NULL),(10,'興津','オキツ',NULL),(11,'河原','カワハラ',NULL),(12,'鎌田','カマダ',NULL),(13,'野中','ノナカ',NULL),(14,'松村瞬','マツムラシュン',NULL),(15,'松本','マツモト',NULL),(16,'伊藤','イトウ',NULL),(17,'髙岡','タカオカ',NULL);
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
  `whq` int(11) DEFAULT NULL,
  `file1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `storage` VALUES (1,'22-3615','N','375 1P','1',0,1,0,'49HA024906','',24,9375,'','','','',0,11250,NULL,NULL,'2017-02-09 05:02:00','2017-02-09 05:02:00',NULL),(2,'23-3615','N','375 1P','1',0,1,0,'49HA022950','',15,12073,'','','R','',0,14488,NULL,NULL,'2017-02-09 05:03:11','2017-02-09 05:04:29',NULL),(3,'23-3615-U','N','375 1P','1',0,1,0,'49HA031634','',24,33840,'','','','',0,40608,NULL,NULL,'2017-02-09 05:04:04','2017-02-09 05:18:15',NULL),(4,'23-3617','N','HLC9.5 1P CONNECTOR','1',0,1,0,'49HA023822','WSZ4561',15,17096,'','','','',0,20515,NULL,NULL,'2017-02-09 05:06:04','2017-02-09 05:18:22',NULL),(5,'23-3617-D','N','HLC9.5 1P CONNECTOR','1',0,1,0,'49HA029402','DIT6777',15,19669,'071A','床下','D','',0,23603,NULL,NULL,'2017-02-09 05:08:08','2017-02-09 05:18:35',NULL),(6,'23-3617-U','N','C/F','1',0,1,0,'49HA030808','',15,0,'','','','',0,0,NULL,NULL,'2017-02-09 05:08:39','2017-02-09 05:20:55',NULL),(7,'23-6314-30','N','FORD 2PFK','1',0,1,0,'49HA007539','VX0097',15,11427,'5WSJ','PTC','','',0,13712,NULL,NULL,'2017-02-09 05:09:58','2017-02-09 05:21:03',NULL),(8,'23-6367(-40)','4','M06FW(-GY)-LC','1',0,1,0,'49HA014702','YG00057',21,27756,'L53E','BAT','','',0,33307,NULL,NULL,'2017-02-09 05:11:12','2017-02-09 05:21:12',NULL),(9,'25-5235-3W+25-5799-50-D','N','INLET OPEN L 5P F+リアホルダ検出治具','1',0,1,0,'49HA032987','YDU14015',24,42050,'570A','','','',9,50460,NULL,NULL,'2017-02-09 05:12:56','2017-02-09 05:18:06',NULL),(10,'25-5394','N','4.8 2P M','1',0,1,0,'49HA031663','HV7358',15,24121,'','','','',0,28945,NULL,NULL,'2017-02-09 05:23:25','2017-02-09 05:23:25',NULL),(11,'25-5395','N','4.8 2P F','1',0,1,0,'49HA031665','HV7360',15,19610,'','','','',0,23532,NULL,NULL,'2017-02-09 05:24:07','2017-02-09 05:24:07',NULL),(12,'25-5511-5W','N','BOX ASSY S/P','1',0,1,0,'49HA031455','T496',2,72355,'','','','(X41125-M053) 齊藤製作所',7,86826,NULL,NULL,'2017-02-09 05:25:26','2017-02-09 05:49:26',NULL),(13,'25-6017-D+25-5456','N','C/F','1',0,1,0,'49HA032265','DCF13001',20,29203,'594A','','','',9,35044,NULL,NULL,'2017-02-09 05:26:35','2017-02-09 05:26:35',NULL),(14,'25-6565B','N','C/F 1.0Ⅲ','1',0,1,0,'49HA028527','',22,30250,'071A','SUBWIRE','','',0,36300,NULL,NULL,'2017-02-09 05:27:44','2017-02-09 05:27:54',NULL),(15,'25-6565-L','N','1.0Ⅲ2P F','1',0,1,0,'49HA034041','',24,13430,'CD391','','','',7,16116,NULL,NULL,'2017-02-09 05:28:50','2017-02-09 05:28:50',NULL),(16,'25-6565B','N','040Ⅲ','1',0,1,0,'49HA028430','',22,39029,'071A','SUBWIRE','','',0,46835,NULL,NULL,'2017-02-09 05:29:59','2017-02-09 05:29:59',NULL),(17,'25-6566-L','N','1.0Ⅲ2P F','1',0,1,0,'49HA034042','',24,13430,'CD391','','','',7,16116,NULL,NULL,'2017-02-09 05:46:37','2017-02-09 05:46:37',NULL),(18,'25-5780','N','6.3 2P','1',0,1,0,'49HA033655','HV8194',15,26148,'629W','A/C','','(X4Y325-MAM5)',9,31378,NULL,NULL,'2017-02-09 05:48:40','2017-02-09 05:48:40',NULL),(19,'25-5395-R','N','','1',0,1,0,'49HA031806','',15,0,'','','','',0,0,NULL,NULL,'2017-02-09 05:50:17','2017-02-09 05:50:17',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `users` VALUES (1,'admin','$2y$10$m5hAWOR.PPdf4sA4SNW5ae9WvXFZNRVKn5/Eca.Vo1Yu7nJJSphV.','管理者','FkcIiKB7wozLILb9VGGcJhhLTo1ahKQF4wov6JVF263MnJcvcsQm6ODYe5ug','2017-02-02 15:00:00','2017-02-10 01:35:00',NULL),(2,'takaoka_a','$2y$10$4spcH852RUfu3TCzzamoXe.FWJ76CXxXFJ3thkuFpCLSX5oUFy11G','管理者','aPHOrGWlirRaUxZ27jKoVdTcMY0RVoFn693wU4DuC5mDJY0EObq6k1eAKVS1','2017-02-02 15:00:00','2017-02-10 01:35:47',NULL),(3,'ito_m','$2y$10$5TfNwP2wrEzigAhTZxbz4ecr1ySoDPYMH08PJ9RNoOuVrp6I.huiC','管理者',NULL,'2017-02-09 04:48:03','2017-02-09 04:53:27',NULL),(4,'yamashita_y','$2y$10$Ly5TGAagMSvjzqjgUUwuvOLGg0/UJmv/lsH69XRWHg9Nv5jB8zguG','管理者',NULL,'2017-02-09 04:48:56','2017-02-09 04:53:42',NULL),(5,'ota_k','$2y$10$pxWmieNphXI6P5.wkNItRuthqNQPUV/M5f4ZApfMnZVJD7iPvOxQq','ユーザー',NULL,'2017-02-09 04:49:23','2017-02-09 04:53:57',NULL),(6,'tsuru_t','$2y$10$/KhLIpuBSmhWH8BjyO3fl.6KFOQDOjp9.AbcalTa2g.2TF2rddDhS','ユーザー',NULL,'2017-02-09 04:49:54','2017-02-09 04:54:11',NULL),(7,'ohishi_a','$2y$10$Zx2PkCsM3NKpMzkM0MqUj.l2wlK1C3Ro7bNkVHTfY2lS2H7qJDicO','ユーザー',NULL,'2017-02-09 04:50:28','2017-02-09 04:54:31',NULL),(8,'otani_y','$2y$10$mw6XFAUC/r/Ccsl.t2sYb.lXDhqMcINFaOjgyKjwwV5Hq3NFGVT4S','ユーザー',NULL,'2017-02-09 04:50:50','2017-02-09 04:54:45',NULL),(9,'handa_k','$2y$10$fx4f4GFDgipeYoTGslykxeFgzHTqO.k6bdCuKdkIJ5L4RlJcsJboK','ユーザー',NULL,'2017-02-09 04:51:12','2017-02-09 04:54:58',NULL),(10,'matsumura_n','$2y$10$JdQQqbCwfYs0HfKGqZTNduMMiOyclpiuNwjhRyJd/2RUmHhN1hO3i','ユーザー',NULL,'2017-02-09 04:51:36','2017-02-09 04:55:10',NULL),(11,'kamada_h','$2y$10$XRSZIsHlwJQfhjFNGpL9JO8sG6ACDllruRV6G6GAFAwD6y/NZgYFW','ユーザー',NULL,'2017-02-09 04:55:31','2017-02-09 04:55:31',NULL),(12,'sugimoto_n','$2y$10$1kIm/39Bz5eW.t99IJMp.uANGtM7A0.6dEUByBmzVi3PCIa4cK2BK','ユーザー',NULL,'2017-02-09 04:55:51','2017-02-09 04:55:51',NULL),(13,'nonaka_d','$2y$10$ei6OWskzfKaFk2WwtiCoIuWBW3342VebSUE2z6TNLaX5AgwBzVAx6','ユーザー','ExX4NycJBTRovbMUW5OxWskEjPkEvXe49PAezIx2nCoHVOWOMQCSqCskvNeV','2017-02-09 04:56:08','2017-02-10 01:23:56',NULL),(14,'okitsu_t','$2y$10$/I7hhi2IL7Ctnb8thNXjo.a7E9FY6qGEOUUC5MHg6bfhGmGEhEkW2','ユーザー',NULL,'2017-02-09 04:56:27','2017-02-09 04:56:27',NULL),(15,'matsumoto_y','$2y$10$t2mKCeOPQKepvfM/QCg9UOGhAaGIEjUw/WjsdhJoDfLJ0WzGsiL4G','ユーザー',NULL,'2017-02-09 04:56:54','2017-02-09 04:56:54',NULL),(16,'matsumura_s','$2y$10$WYH9srfb1u/dVTYu40ST3eAHs6/bNMDLhF8YHXEzCbl2XXtFOhVwm','ユーザー',NULL,'2017-02-09 04:57:15','2017-02-09 04:57:15',NULL),(17,'kawahara_h','$2y$10$Ux264WEWJmW4YsTTp1mEFOYQL7D6Y2xTYZDrEz3o5lQeO9n2cDtG6','ユーザー',NULL,'2017-02-09 04:58:13','2017-02-09 04:58:13',NULL),(18,'hanazawa_s','$2y$10$.Uh6n5AUpMuWDLIijVbYfe7pd9O1RIhvMxkeawwTmtqWxnca3JdEK','ユーザー',NULL,'2017-02-09 04:58:35','2017-02-09 04:58:35',NULL);
