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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `merchant` VALUES (1,'弘洋','コウヨウ',NULL),(2,'横浜テクニカ','ヨコハマテクニカ',NULL),(3,'矢崎化工','ヤザキカコウ',NULL),(4,'モデック','モデック',NULL),(5,'松浦製作所','マツウラセイサクショ',NULL),(6,'増田工業','マスダコウギョウ',NULL),(7,'フケン販売','フケンハンバイ',NULL),(8,'深谷製作所','フカヤセイサクショ',NULL),(9,'ファムテック','ファムテック',NULL),(10,'花澤製作所','ハナザワセイサクショ',NULL),(11,'ナカモク','ナカモク',NULL),(12,'エヌテック','エヌテック',NULL),(13,'MPA','MPA',NULL),(14,'大東機械','ダイトウキカイ',NULL),(15,'HIB専用機','HIBセンヨウキ',NULL),(16,'ISJ','ISJ',NULL),(17,'MKH','MKH',NULL),(18,'野中技研','ノナカギケン',NULL),(19,'NIM','NIM',NULL),(20,'OMP','OMP',NULL),(21,'SSN','SSN',NULL),(22,'TNS','TNS',NULL),(23,'TCS','TCS',NULL),(24,'植田部品','ウエダブヒン',NULL),(25,'湖西機工','コサイキコウ',NULL),(26,'佐野','サノ',NULL),(27,'WSZ','WSZ',NULL),(28,'先生鉄工所','センセイテッコウジョ',NULL),(29,'長野工業','ナガノコウギョウ',NULL),(30,'保土沢','ホドサワ',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `storage` VALUES (1,'22-3615','N','375 1P','1',0,1,0,'49HA024906','',24,9375,'','','','',0,11250,NULL,NULL,'2017-02-09 05:02:00','2017-02-09 05:02:00',NULL),(2,'23-3615','N','375 1P','1',0,1,0,'49HA022950','',15,12073,'','','R','',0,14488,NULL,NULL,'2017-02-09 05:03:11','2017-02-09 05:04:29',NULL),(3,'23-3615-U','N','375 1P','1',0,1,0,'49HA031634','',24,33840,'','','','',0,40608,NULL,NULL,'2017-02-09 05:04:04','2017-02-09 05:18:15',NULL),(4,'23-3617','N','HLC9.5 1P CONNECTOR','1',0,1,0,'49HA023822','WSZ4561',15,17096,'','','','',0,20515,NULL,NULL,'2017-02-09 05:06:04','2017-02-09 05:18:22',NULL),(5,'23-3617-D','N','HLC9.5 1P CONNECTOR','1',0,1,0,'49HA029402','DIT6777',15,19669,'071A','床下','D','',0,23603,NULL,NULL,'2017-02-09 05:08:08','2017-02-09 05:18:35',NULL),(6,'23-3617-U','N','C/F','1',0,1,0,'49HA030808','',15,0,'','','','',0,0,NULL,NULL,'2017-02-09 05:08:39','2017-02-09 05:20:55',NULL),(7,'23-6314-30','N','FORD 2PFK','1',0,1,0,'49HA007539','VX0097',15,11427,'5WSJ','PTC','','',0,13712,NULL,NULL,'2017-02-09 05:09:58','2017-02-09 05:21:03',NULL),(8,'23-6367(-40)','4','M06FW(-GY)-LC','1',0,1,0,'49HA014702','YG00057',21,27756,'L53E','BAT','','',0,33307,NULL,NULL,'2017-02-09 05:11:12','2017-02-09 05:21:12',NULL),(9,'25-5235-3W+25-5799-50-D','N','INLET OPEN L 5P F+リアホルダ検出治具','1',0,1,0,'49HA032987','YDU14015',24,42050,'570A','','','',9,50460,NULL,NULL,'2017-02-09 05:12:56','2017-02-09 05:18:06',NULL),(10,'25-5394','N','4.8 2P M','1',0,1,0,'49HA031663','HV7358',15,24121,'','','','',0,28945,NULL,NULL,'2017-02-09 05:23:25','2017-02-09 05:23:25',NULL),(11,'25-5395','N','4.8 2P F','1',0,1,0,'49HA031665','HV7360',15,19610,'','','','',0,23532,NULL,NULL,'2017-02-09 05:24:07','2017-02-09 05:24:07',NULL),(12,'25-5511-5W','N','BOX ASSY S/P','1',0,1,0,'49HA031455','T496',2,72355,'','','','(X41125-M053) 齊藤製作所',7,86826,NULL,NULL,'2017-02-09 05:25:26','2017-02-09 05:49:26',NULL),(13,'25-6017-D+25-5456','N','C/F','1',0,1,0,'49HA032265','DCF13001',20,29203,'594A','','','',9,35044,NULL,NULL,'2017-02-09 05:26:35','2017-02-09 05:26:35',NULL),(14,'25-6565B','N','C/F 1.0Ⅲ','1',0,1,0,'49HA028527','',22,30250,'071A','SUBWIRE','','',0,36300,NULL,NULL,'2017-02-09 05:27:44','2017-02-09 05:27:54',NULL),(15,'25-6565-L','N','1.0Ⅲ2P F','1',0,1,0,'49HA034041','',24,13430,'CD391','','','',7,16116,NULL,NULL,'2017-02-09 05:28:50','2017-02-09 05:28:50',NULL),(16,'25-6565B','N','040Ⅲ','1',0,1,0,'49HA028430','',22,39029,'071A','SUBWIRE','','',0,46835,NULL,NULL,'2017-02-09 05:29:59','2017-02-09 05:29:59',NULL),(17,'25-6566-L','N','1.0Ⅲ2P F','1',0,1,0,'49HA034042','',24,13430,'CD391','','','',7,16116,NULL,NULL,'2017-02-09 05:46:37','2017-02-09 05:46:37',NULL),(18,'25-5780','N','6.3 2P','1',0,1,0,'49HA033655','HV8194',15,26148,'629W','A/C','','(X4Y325-MAM5)',9,31378,NULL,NULL,'2017-02-09 05:48:40','2017-02-09 05:48:40',NULL),(19,'25-5395-R','N','','1',0,1,0,'49HA031806','',15,0,'','','','',0,0,NULL,NULL,'2017-02-09 05:50:17','2017-02-09 05:50:17',NULL),(20,'100B-UNDERPRT-1','N','プロテクタ組立治具','',1,0,0,'49CB006023','NAF-17-015',8,0,'100B','床下','','',9,0,NULL,NULL,'2017-02-13 04:18:29','2017-02-13 04:18:29',NULL),(21,'100B-UNDERPRT-2','N','プロテクタ組立治具','',1,0,0,'49CB006024','NAF-17-016',8,0,'100B','床下','','',9,0,NULL,NULL,'2017-02-13 04:19:38','2017-02-13 04:19:38',NULL),(22,'BANDO-UKE','N','結束バンド受け','',1,0,0,'49FA000683','YDU17014',24,1500,'S1','MOTOR','','NAF-17-017',11,1800,NULL,NULL,'2017-02-13 06:43:04','2017-03-16 01:13:33',NULL),(23,'COT-D22-AUTO','N','コルゲート取付指定治具','',1,0,0,'49DB000176','',9,0,'577W','MOTOR','','',10,0,NULL,NULL,'2017-02-14 06:37:58','2017-02-14 06:39:53',NULL),(24,'COT-D22-AUTO-UP/DN-R','N','コルゲート取付指定治具','',1,0,0,'49DB000177','',9,0,'577W','MOTOR','','',10,0,NULL,NULL,'2017-02-14 06:42:00','2017-02-14 06:42:00',NULL),(25,'COT-D19-AUTO-UP/DN-R','N','コルゲート取付指定治具','',1,0,0,'49DB000178','',9,0,'577W','MOTOR','','',10,0,NULL,NULL,'2017-02-14 06:43:09','2017-02-14 06:43:09',NULL),(26,'7009-9562D','1','LA端子受け治具','',1,0,0,'49BC002716','22-6027',22,3702,'629W','','カシメ下','検査、組立共用',15,4442,NULL,NULL,'2017-02-15 00:43:35','2017-02-15 00:43:35',NULL),(27,'7354-0005+C112 L','N','FB 4P L','',0,1,0,'49HA037195','KIK8874',15,32202,'677W','ソーラー','L','7147-8748',15,38642,NULL,NULL,'2017-02-15 00:46:18','2017-03-08 23:14:22',NULL),(28,'7289-5476-51 ATUNYUH GAGE','N','圧入治具ゲージ','',0,0,1,'49YC003691','NAF-17-014',1,0,'09PL','床下','','',2,0,NULL,NULL,'2017-02-15 23:37:38','2017-02-15 23:37:38',NULL),(29,'7325-6585-D','N','9.5 2P D','1',0,1,0,'49HA032218','HV7571',15,29544,'','','','',0,35453,NULL,NULL,'2017-02-16 02:27:02','2017-02-16 02:27:02',NULL),(30,'7325-6585-D+7184-9700-50','N','9.5 W/P 2P+プロテクタ','1',0,1,0,'49HA032963','YDU14040',24,48690,'580A','床下','','',0,58428,NULL,NULL,'2017-02-16 02:28:59','2017-02-16 02:32:41',NULL),(31,'7325-6585-D+7384-8803-50','N','外観検査用検出治具','1',0,1,0,'49HA033654','YDU14245',24,36580,'577W/620W','床下','','',0,43896,NULL,NULL,'2017-02-16 02:30:38','2017-02-16 02:31:56',NULL),(32,'7325-6585-R-T','N','9.5 W/P 2P F 耐電圧試験','1',0,1,0,'49HG000007','YDU14067',24,34440,'','','R','',0,41328,NULL,NULL,'2017-02-16 02:34:01','2017-02-16 02:48:28',NULL),(33,'7225-6819-51-D','1','187 W/P 2P(4P) F','1',0,1,0,'49HA031482','YDU12189',24,16860,'L53H','','','',13,20232,NULL,NULL,'2017-02-16 02:35:16','2017-02-16 02:48:53',NULL),(34,'7225-6877-51-L','N','INV 2P F','1',0,1,0,'49HA033002','',2,0,'','','L','',7,0,NULL,NULL,'2017-02-16 02:36:56','2017-02-16 02:49:11',NULL),(35,'7225-8338-51-U','N','コネクタ','1',0,1,0,'49HA031395','',24,13460,'J6AE','','','',0,16152,NULL,NULL,'2017-02-16 02:38:02','2017-02-16 02:49:28',NULL),(36,'7325-8397.5875-T','3','耐電圧','1',0,1,0,'49HG000004','',18,47938,'','','','※単価は3台以上価格',0,57526,NULL,NULL,'2017-02-17 01:15:16','2017-02-17 01:15:16',NULL),(37,'25-8397.5875-U+7284-9058','4','INV 2P-M+ｶﾊﾞｰ','1',0,1,0,'49HA031355','',18,51438,'','','U','X412843015　※単価は3台以上価格',9,0,NULL,NULL,'2017-02-17 01:17:34','2017-02-17 01:20:44',NULL),(38,'7325-8398-0W','12','INV A/C CONNECTOR','1',0,1,0,'49HA030108','YDU13101',24,37920,'','','','自動解放用バルブ込価格@48,680',0,45504,NULL,NULL,'2017-02-17 01:19:55','2017-02-17 01:19:55',NULL),(39,'7325-8398-INL','12','インライン C/F+プロテクタ受け一体','1',0,1,0,'49CK000002','YDU13010',24,63830,'','','','自動解放用バルブ込',0,76596,NULL,NULL,'2017-02-17 01:23:04','2017-02-17 01:23:04',NULL),(40,'7325-8415-R','N','INV  W/P 3P M (EV)','1',0,1,0,'49HA033177','YDU14091',24,55460,'751A','MTR','R','',10,66552,NULL,NULL,'2017-02-17 01:26:13','2017-02-17 01:26:13',NULL),(41,'7325-8415-R-A','1','エアリーク検出治具','1',0,1,0,'49HF000422','YDU13377',24,55590,'751A','','R','',0,66708,NULL,NULL,'2017-02-17 01:27:28','2017-02-17 01:27:28',NULL),(42,'7325-8578-0W R','2','TOYOTA 8..0 2P F HLC','1',0,1,0,'49HA029658','EV6833',15,28802,'071A','A/C','R','',0,34562,NULL,NULL,'2017-02-17 01:28:53','2017-02-17 01:28:53',NULL),(43,'7325-8578-0W-U','N','TOYOTA 8..0 2P F HLC','1',0,1,0,'49HA031072','HV7181',15,28064,'523W.432A.402A','A/C','U','',0,33677,NULL,NULL,'2017-02-17 01:30:05','2017-02-17 01:30:05',NULL),(44,'7325-8627+T','N','25-8627+サーミスタ','2',0,1,0,'49HA031170','YDU11032',24,107300,'RDCA','','','',0,128760,NULL,NULL,'2017-02-17 01:31:14','2017-02-17 01:31:14',NULL),(45,'7325-8628','N','','2',0,1,0,'49HA031166','',24,0,'','','','25-5360,5396,5560,5961,5962,5236,5238,8626,5268共用',0,0,NULL,NULL,'2017-02-17 01:32:54','2017-02-17 01:32:54',NULL),(46,'25-8631-51','2','594A 9.5 3P F','2',0,1,0,'49HA031618','',18,43150,'594A','床下','','',9,51780,NULL,NULL,'2017-02-17 01:33:59','2017-02-17 01:33:59',NULL),(47,'25-8646-3W(8728-5W)+25-8685-30','2','導通確認+ｸﾞﾛﾒｯﾄ位置確認治具','2',0,1,0,'49KB001680','',24,26420,'X12G','普通充電','U','',13,31704,NULL,NULL,'2017-02-17 01:35:22','2017-02-17 01:35:22',NULL),(48,'7225-8646-3W.8728-5W-TA','N','INLET 5P 耐電圧検出治具','2',0,1,0,'49HA031600','',24,54150,'X12G','普通充電','U','',0,64980,NULL,NULL,'2017-02-17 01:36:26','2017-02-17 01:36:26',NULL),(49,'7225-8646-3W+TD','N','C/F サーミスタ','2',0,1,0,'49HA031167','',2,31745,'','','','',0,38094,NULL,NULL,'2017-02-17 01:37:23','2017-02-17 01:37:23',NULL),(50,'7325-8647-3W+7325-8685-30','N','導通確認+グロメット位置確認','2',0,1,0,'49HA031593','YDU12157',24,61370,'','','','',13,73644,NULL,NULL,'2017-02-17 01:38:26','2017-02-17 01:38:26',NULL),(51,'7225-8647-3W+TD','N','C/F','2',0,1,0,'49HA031168','',2,31745,'','','','',0,38094,NULL,NULL,'2017-02-17 01:39:24','2017-02-17 01:39:24',NULL),(52,'X41172-M134-U','1','','2',0,1,0,'49HA030636','HV7100',15,18993,'','','','25-8955-51-U(X41172-M134-U)',13,22792,NULL,NULL,'2017-02-17 01:41:28','2017-02-17 01:41:28',NULL),(53,'X41172-M137-D','N','','2',0,1,0,'49HA030650','HV7103',15,18993,'','','','25-8956-51-D(X41172-M137-D)',13,22792,NULL,NULL,'2017-02-17 01:42:32','2017-02-17 01:42:32',NULL),(54,'X41172-M137-U','1','','2',0,1,0,'49HA030649','HV7102',15,18993,'','','','25-8956-51-U(X41172-M137-U)',13,22792,NULL,NULL,'2017-02-17 01:43:28','2017-02-17 01:43:28',NULL),(55,'7387-1237L-BL','N','9.5 1P F HLC','2',0,1,0,'49HA027960','WSZ6445',15,24942,'','','L','',0,29930,NULL,NULL,'2017-02-20 02:04:21','2017-02-20 02:04:21',NULL),(56,'7387-1237R-BL','N','9.5 1P F HLC','2',0,1,0,'49HA026136','CD05955',15,19700,'','','R','',0,23640,NULL,NULL,'2017-02-20 02:06:25','2017-02-20 02:06:25',NULL),(57,'7387-1237-U-BL','N','9.5 1P F HLC','2',0,1,0,'49HA029859','',15,23737,'','','','',0,28484,NULL,NULL,'2017-02-20 02:07:11','2017-02-20 02:07:11',NULL),(58,'7387-1769-BL','N','9.5 HLC 1P ','2',0,1,0,'49HA026423','CD05994',15,24565,'','','R','丹心工業から購入時@38,389',0,29478,NULL,NULL,'2017-02-20 02:08:48','2017-02-20 02:08:48',NULL),(59,'7387-1769-U-BL','N','9.5 HLC 1P ','2',0,1,0,'49HA029860','DIT6870',15,24473,'','','U','',0,0,NULL,NULL,'2017-02-20 02:09:43','2017-02-20 02:09:43',NULL),(60,'87-2831B.4097B','N','1.58Ｆ(ﾘﾃｰﾅ検知ﾀｲﾌﾟ)','2',0,1,0,'49HA027690','',22,49472,'395A','電池パック','R','',0,59366,NULL,NULL,'2017-02-20 02:13:01','2017-02-20 02:13:01',NULL),(61,'7387-2998-BL','N','','2',0,1,0,'49HA027259','CD06254',15,24733,'','','R','',0,29680,NULL,NULL,'2017-02-20 02:13:50','2017-02-20 02:13:50',NULL),(62,'7387-2998-L','N','HLC 9.5 1P','2',0,1,0,'49HA029401','DIT6776',15,25131,'071A','床下','L','',0,30157,NULL,NULL,'2017-02-20 02:14:59','2017-02-20 02:14:59',NULL),(63,'7387-2998-U-BL','N','9.5 HLC1P F','2',0,1,0,'49HA029916','WSZ6894',15,25558,'','','U','',0,30670,NULL,NULL,'2017-02-20 02:16:02','2017-02-20 02:16:02',NULL),(64,'7387-2998-U-BL-R','N','432A 9.5HLC 1P (F)','2',0,1,0,'49HA031310','HV7304',15,29884,'432A','床下','R','',0,35861,NULL,NULL,'2017-02-20 02:17:07','2017-02-20 02:17:07',NULL),(65,'87-3302','N','1.5 4P F','2',0,1,0,'49HA028128','',15,12982,'620W','床下','','',0,15578,NULL,NULL,'2017-02-20 02:18:18','2017-02-20 02:18:18',NULL),(66,'7187-3435','2','GT8E-3S-HU  （ｼｬﾌﾄｽﾄｯﾌﾟ式）','2',0,1,0,'49HA032961','',24,11490,'','','','',1,13788,NULL,NULL,'2017-02-20 02:19:06','2017-02-20 02:19:06',NULL),(67,'7387-5357-51-U','N','HLC 9.5 1P','2',0,1,0,'49HA030347','HV6982',15,20193,'','','U','',0,24232,NULL,NULL,'2017-02-20 02:20:03','2017-02-20 02:20:03',NULL),(68,'7387-5357-BL','N','HLC 9.5 1P','2',0,1,0,'49HA028873','EV6640',15,21231,'523W','電池パック','','',0,25477,NULL,NULL,'2017-02-20 02:21:16','2017-02-20 02:21:16',NULL),(69,'7387-5357-BL-R','N','HLC C/F　ﾛｯｸ右','2',0,1,0,'49HA031046','HV7214',15,26556,'400A','床下','R','',8,31867,NULL,NULL,'2017-02-20 02:22:54','2017-02-20 02:23:23',NULL),(70,'7387-5358-51-U-BL-R','N','432A 9.5HLC 1P (F)','2',0,1,0,'49HA031309','HV7303',15,29884,'432A','床下','R','',0,35861,NULL,NULL,'2017-02-20 02:24:21','2017-02-20 02:24:21',NULL),(71,'7387-5358-BL','N','HLC 9.5 1P','2',0,1,0,'49HA028874','EV6641',15,21231,'','','R','',0,25477,NULL,NULL,'2017-02-20 02:25:38','2017-02-20 02:25:38',NULL),(72,'7387-5358-L','N','HLC 9.5 1P','2',0,1,0,'49HA029400','DIT6775',15,25131,'071A','床下','L','',0,30157,NULL,NULL,'2017-02-20 02:26:45','2017-02-20 02:26:45',NULL),(73,'7387-5358-U BL','N','HLC 9.5 1P','2',0,1,0,'49HA029917','DIT6900',15,25637,'','','U','',0,30764,NULL,NULL,'2017-02-20 02:27:40','2017-02-20 02:27:40',NULL),(74,'7387-7116B','N','0.64Ⅱ 8P F (ﾘﾃｰﾅ検知ﾀｲﾌﾟ）','2',0,1,0,'49HA029421','',22,29518,'','','','',0,35422,NULL,NULL,'2017-02-20 02:28:33','2017-02-20 02:28:33',NULL),(75,'7387-7163-30','1','9.5 1P HLC','2',0,1,0,'49HA029618','CD06751',15,23866,'071A','床下','R','',0,28639,NULL,NULL,'2017-02-20 02:29:30','2017-02-20 02:29:30',NULL),(76,'7387-7163-D','N','9.5 1P HLC F','2',0,1,0,'49HA030162','',24,20180,'071A','','D','C/F@17,720　ゲージ@2,460',0,24216,NULL,NULL,'2017-02-20 02:31:07','2017-02-20 02:31:07',NULL),(77,'7387-7419-30','N','JST 025.24P-F','2',0,1,0,'49HA030185','',24,26469,'','','','専用脚付き',0,31763,NULL,NULL,'2017-02-20 02:32:02','2017-02-20 02:32:02',NULL),(78,'7387-7420-30','N','TOYOTA JST 20PF','2',0,1,0,'49HA030186','',24,23345,'','','','専用脚付き\r\n',0,28014,NULL,NULL,'2017-02-20 02:32:58','2017-02-20 02:32:58',NULL),(79,'7287-7566-30-SW','N','TH(025) 24P F 検出治具','2',0,1,0,'49HA031283','YDU12155',24,22709,'X12G','','','',10,27251,NULL,NULL,'2017-02-20 02:34:44','2017-02-20 02:34:44',NULL),(80,'7387-8129 U','N','9.5 HLC','2',0,1,0,'49HA030342','DIT6961',15,17613,'','','L','',0,21136,NULL,NULL,'2017-02-20 02:35:37','2017-02-20 02:35:37',NULL),(81,'7387-8845','1','060 2P','2',0,1,0,'49HA030871','CD07199',15,18033,'5WMA','','','',0,21640,NULL,NULL,'2017-02-20 02:36:28','2017-02-20 02:36:28',NULL),(82,'89-3097B (87-7004B)','1','0.64Ⅲ16P F (ﾘﾃｰﾅ検知ﾀｲﾌﾟ)','2',0,1,0,'49HA029355','',22,34003,'','','','',0,40804,NULL,NULL,'2017-02-20 02:37:16','2017-02-20 02:37:16',NULL),(83,'X41684-3D81','N','プロテクタ組立治具','',1,0,0,'49CB006028','NAF-17-021',24,0,'100B','床下','','',9,0,NULL,NULL,'2017-02-22 02:28:08','2017-02-22 02:28:08',NULL),(84,'7325-6878-51(HLC)','','C/F','',0,1,0,'','',0,0,'','','','',0,0,NULL,NULL,'2017-02-23 07:04:10','2017-02-23 07:04:34','2017-02-23 07:04:34'),(85,'21-9687(23-1424)','','レジスタ嵌合','1',0,1,0,'','',18,0,'','','','2009/10/14試作⇒量産実績なし',0,0,NULL,'file2_85.jpeg','2017-02-23 07:21:02','2017-02-23 07:40:44',NULL),(86,'7276-1030.82Z6P-310B1','N','プロテクタ組立治具','',0,0,0,'49CB006032','NAF-17-018',24,0,'15PL','A/C','','',10,0,NULL,NULL,'2017-02-24 00:59:05','2017-02-24 00:59:05',NULL),(87,'82Z6P-310B2-U','N','プロテクタ組立治具','',1,0,0,'49CB006033','NAF-17-019',24,0,'15PL','A/C','','',10,0,NULL,NULL,'2017-02-24 01:01:30','2017-02-24 01:01:30',NULL),(88,'82Z6P-310B2-R','N','プロテクタ組立治具','',1,0,0,'49CB006034','NAF-17-020',24,0,'15PL','A/C','','',10,0,NULL,NULL,'2017-02-24 01:02:26','2017-02-24 01:02:26',NULL),(89,'7325-5335-51-A','','エアリーク','1',0,1,0,'','',0,0,'RDC','','','',0,0,NULL,'file2_89.jpeg','2017-02-27 04:17:25','2017-02-27 04:25:54',NULL),(90,'25-6789-51+7158-4979','2','2P(M)+ｼｰﾙﾄﾞ回路導通治具','1',0,1,0,'','F654',21,36000,'','','','作製業者：横浜テクニカ',0,43200,NULL,'file2_90.jpeg','2017-02-27 04:20:57','2017-02-27 04:25:30',NULL),(91,'7125-8414','N','C/F','1',0,1,0,'','',30,52790,'430W,751A','モーター','','作製業者：植田部品',0,63348,NULL,'file2_91.jpeg','2017-02-27 04:24:58','2017-02-27 04:24:58',NULL),(92,'25-8415','N','C/F','1',0,1,0,'','',30,44400,'430W,751A','モーター','','作製業者：植田部品',0,53280,NULL,'file2_92.jpeg','2017-02-27 04:27:01','2017-02-27 04:27:01',NULL),(93,'BBM-LOCK-NO-KAKU-SW','N','BBM外観プレートロック無し確認治具','',1,0,0,'49AD000086','NAF-17-022',1,0,'629W','BBM','','',5,0,NULL,NULL,'2017-03-02 07:35:07','2017-03-02 07:35:07',NULL),(94,'7284-5111.5131+5129','N','プロテクタ組立治具','',1,0,0,'49CB006045','NAF-17-024',16,0,'478W,888A','床下','','',6,0,NULL,NULL,'2017-03-03 04:16:31','2017-03-03 04:16:31',NULL),(95,'7289-5594-U+R/H','N','9.5 1P F','',0,1,0,'49HA037391','DPE-3J-2303',1,0,'456B','','U','',14,0,NULL,NULL,'2017-03-07 01:54:20','2017-03-07 01:54:20',NULL),(96,'7225 8969-S-L','N','コネクタ組立治具','',1,0,0,'49BB033246','NAF-17-026',16,0,'577W','MTR','L','',10,0,NULL,NULL,'2017-03-08 00:11:15','2017-03-08 00:11:15',NULL),(97,'36CELL-BBP-GAI-1','N','BBP外観受け治具','',1,0,0,'49AD000087','NAF-17-027',8,0,'6C2A','BBP','','',13,0,NULL,NULL,'2017-03-08 23:52:37','2017-03-08 23:52:37',NULL),(98,'36CELL-BBP-GAI-2','N','BBP外観受け治具','',1,0,0,'49AD000088','NAF-17-028',8,0,'6C2A','BBP','','',13,0,NULL,NULL,'2017-03-08 23:53:37','2017-03-08 23:53:37',NULL),(99,'7225 5780-SK-L','N','コネクタ組立治具','',1,0,0,'49BB033253','NAF-17-029',24,0,'15PL','A/C','L','',10,0,NULL,NULL,'2017-03-09 23:13:44','2017-03-09 23:13:44',NULL),(100,'SUB7187-2316-HOS-H-CL-J','N','引張・光誘導・上限管理機能付サブ作製治具','',0,1,0,'49HE000202','DPE-3J-2297',1,0,'667W','低圧サブ','','',5,0,NULL,NULL,'2017-03-10 05:36:33','2017-03-10 05:36:33',NULL),(101,'SUB7187-3423-HOS-H-CL-J','N','引張・光誘導・上限管理機能付サブ作製治具','',0,1,0,'49HE000203','DPE-3J-2297',1,0,'667W','低圧サブ','','',5,0,NULL,NULL,'2017-03-10 05:49:46','2017-03-10 05:49:46',NULL),(102,'SUB7187-2393-HOS-H-CL-J','N','引張・光誘導・上限管理機能付サブ作製治具','',0,1,0,'49HE000204','DPE-3J-2297',1,0,'667W','低圧サブ','','',5,0,NULL,NULL,'2017-03-10 05:50:07','2017-03-10 05:51:58',NULL),(103,'SUB7187-2315-30-HOS-H-CL-J','N','引張・光誘導・上限管理機能付サブ作製治具','',0,1,0,'49HE000205','DPE-3J-2298',1,0,'667W','低圧サブ','','',5,0,NULL,NULL,'2017-03-10 05:56:02','2017-03-10 05:56:02',NULL),(104,'SUB7187-2317-30-HOS-H-CL-J','N','引張・光誘導・上限管理機能付サブ作製治具','',0,1,0,'49HE000206','DPE-3J-2298',1,0,'667W','低圧サブ','','',5,0,NULL,NULL,'2017-03-10 05:57:39','2017-03-10 05:57:39',NULL),(105,'SUB7187-3424-30-HOS-H-CL-J','N','引張・光誘導・上限管理機能付サブ作製治具','',0,1,0,'49HE000207','DPE-3J-2298',1,0,'667W','低圧サブ','','',5,0,NULL,NULL,'2017-03-10 05:59:08','2017-03-10 05:59:08',NULL),(106,'SUB7187-3828-HOS-H-CL-J','N','引張・光誘導・上限管理機能付サブ作製治具','',0,1,0,'49HE000208','DPE-3J-2299',1,0,'667W','低圧サブ','','',5,0,NULL,NULL,'2017-03-10 06:00:33','2017-03-10 06:00:33',NULL),(107,'SUB7187-3830-HOS-H-CL-J','N','引張・光誘導・上限管理機能付サブ作製治具','',0,1,0,'49HE000209','DPE-3J-2299',1,0,'667W','低圧サブ','','',5,0,NULL,NULL,'2017-03-10 06:13:38','2017-03-10 06:13:38',NULL),(108,'EVO9SP-SW','N','バンド結束機使用確認治具','',0,1,0,'49MA001372','NAF-17-031',24,0,'ALL','ALL','','',4,0,NULL,NULL,'2017-03-10 06:14:57','2017-03-10 06:14:57',NULL),(109,'A/C LINE JIG','N','ライン引き治具','',1,0,0,'49FA000696','NAF-17-024',24,0,'700W . 220B','A/C','','',6,0,NULL,NULL,'2017-03-13 04:30:29','2017-03-13 04:30:29',NULL),(110,'7387-0138-LPC','N','レバー位置確認治具','',0,1,0,'49HA037403','DPE-3J-2304',24,0,'ジャトコ','','U','',3,0,NULL,NULL,'2017-03-14 01:59:01','2017-03-14 01:59:01',NULL),(111,'7125-5214-PUSH JIG','N','防水栓押し込み治具','',0,0,1,'49YB001463','NAF-17-030',24,0,'X12G','Q/C','','',11,0,NULL,NULL,'2017-03-14 02:45:44','2017-03-14 02:45:44',NULL),(112,'7289 4035 51-SK-U','N','コネクタ組立治具','',1,0,0,'49BB033275','NAF-17-036',24,0,'220B','床下','','',14,0,NULL,NULL,'2017-03-15 04:14:41','2017-03-15 04:14:41',NULL),(113,'7125-8840-620W','N','旗端子組立導通治具','',1,0,0,'49BK000139','NAF-17-034',24,0,'620W','床下','','',10,0,NULL,NULL,'2017-03-16 02:29:54','2017-03-16 02:29:54',NULL),(114,'7125-8841-620W','N','旗端子組立導通治具','',1,0,0,'49BK000140','NAF-17-035',24,0,'620W','床下','','',10,0,NULL,NULL,'2017-03-16 02:30:18','2017-03-16 02:30:18',NULL),(115,'7125 8398-2-SK','N','コネクタ組立治具','',1,0,0,'49BB033285','NAF-17-037',24,0,'550W','A/C','','',10,0,NULL,NULL,'2017-03-16 02:31:02','2017-03-16 02:32:11',NULL),(116,'697W-539W-GAI1','N','外観誘導用アクリル保護板','',1,0,0,'49AD000089','',24,0,'697W/539W','床下','','',5,0,NULL,NULL,'2017-03-20 23:54:01','2017-03-20 23:54:01',NULL),(117,'697W-539W-GAI2','N','外観誘導用アクリル保護板','',1,0,0,'49AD000090','',24,0,'697W/539W','床下','','',5,0,NULL,NULL,'2017-03-20 23:54:20','2017-03-20 23:54:20',NULL),(118,'697W-539W-GAI3','N','外観誘導用アクリル保護板','',1,0,0,'49AD000091','',24,0,'697W/539W','床下','','',5,0,NULL,NULL,'2017-03-20 23:54:37','2017-03-20 23:54:37',NULL),(119,'641-OSIKOMIJIG','N','ゴム栓押し込み治具','',0,0,1,'49YB001468','',24,0,'641L','MOTOR','','',11,0,NULL,NULL,'2017-03-21 00:58:54','2017-03-21 00:58:54',NULL);
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
INSERT INTO `users` VALUES (1,'admin','$2y$10$m5hAWOR.PPdf4sA4SNW5ae9WvXFZNRVKn5/Eca.Vo1Yu7nJJSphV.','管理者','CEUMozTCKmQPgVKBLt1zBtCYQuLmAX2OEcFbMwycom4wwgRVegI0seOBA05o','2017-02-02 15:00:00','2017-03-13 23:18:45',NULL),(2,'takaoka_a','$2y$10$4spcH852RUfu3TCzzamoXe.FWJ76CXxXFJ3thkuFpCLSX5oUFy11G','管理者','aPHOrGWlirRaUxZ27jKoVdTcMY0RVoFn693wU4DuC5mDJY0EObq6k1eAKVS1','2017-02-02 15:00:00','2017-02-10 01:35:47',NULL),(3,'ito_m','$2y$10$5TfNwP2wrEzigAhTZxbz4ecr1ySoDPYMH08PJ9RNoOuVrp6I.huiC','管理者','gnFLn63wP4qXJNfoyK0lylBc0fdCAI5pPNguIdPB3BQU0sXUEO0Kfqbk8N47','2017-02-09 04:48:03','2017-03-21 00:58:59',NULL),(4,'yamashita_y','$2y$10$Ly5TGAagMSvjzqjgUUwuvOLGg0/UJmv/lsH69XRWHg9Nv5jB8zguG','管理者',NULL,'2017-02-09 04:48:56','2017-02-09 04:53:42',NULL),(5,'ota_k','$2y$10$pxWmieNphXI6P5.wkNItRuthqNQPUV/M5f4ZApfMnZVJD7iPvOxQq','ユーザー',NULL,'2017-02-09 04:49:23','2017-02-09 04:53:57',NULL),(6,'tsuru_t','$2y$10$/KhLIpuBSmhWH8BjyO3fl.6KFOQDOjp9.AbcalTa2g.2TF2rddDhS','ユーザー',NULL,'2017-02-09 04:49:54','2017-02-09 04:54:11',NULL),(7,'ohishi_a','$2y$10$Zx2PkCsM3NKpMzkM0MqUj.l2wlK1C3Ro7bNkVHTfY2lS2H7qJDicO','ユーザー',NULL,'2017-02-09 04:50:28','2017-02-09 04:54:31',NULL),(8,'otani_y','$2y$10$mw6XFAUC/r/Ccsl.t2sYb.lXDhqMcINFaOjgyKjwwV5Hq3NFGVT4S','ユーザー',NULL,'2017-02-09 04:50:50','2017-02-09 04:54:45',NULL),(9,'handa_k','$2y$10$fx4f4GFDgipeYoTGslykxeFgzHTqO.k6bdCuKdkIJ5L4RlJcsJboK','ユーザー',NULL,'2017-02-09 04:51:12','2017-02-09 04:54:58',NULL),(10,'matsumura_n','$2y$10$JdQQqbCwfYs0HfKGqZTNduMMiOyclpiuNwjhRyJd/2RUmHhN1hO3i','ユーザー',NULL,'2017-02-09 04:51:36','2017-02-09 04:55:10',NULL),(11,'kamada_h','$2y$10$XRSZIsHlwJQfhjFNGpL9JO8sG6ACDllruRV6G6GAFAwD6y/NZgYFW','ユーザー',NULL,'2017-02-09 04:55:31','2017-02-09 04:55:31',NULL),(12,'sugimoto_n','$2y$10$1kIm/39Bz5eW.t99IJMp.uANGtM7A0.6dEUByBmzVi3PCIa4cK2BK','ユーザー',NULL,'2017-02-09 04:55:51','2017-02-09 04:55:51',NULL),(13,'nonaka_d','$2y$10$ei6OWskzfKaFk2WwtiCoIuWBW3342VebSUE2z6TNLaX5AgwBzVAx6','ユーザー','ExX4NycJBTRovbMUW5OxWskEjPkEvXe49PAezIx2nCoHVOWOMQCSqCskvNeV','2017-02-09 04:56:08','2017-02-10 01:23:56',NULL),(14,'okitsu_t','$2y$10$/I7hhi2IL7Ctnb8thNXjo.a7E9FY6qGEOUUC5MHg6bfhGmGEhEkW2','ユーザー',NULL,'2017-02-09 04:56:27','2017-02-09 04:56:27',NULL),(15,'matsumoto_y','$2y$10$t2mKCeOPQKepvfM/QCg9UOGhAaGIEjUw/WjsdhJoDfLJ0WzGsiL4G','ユーザー',NULL,'2017-02-09 04:56:54','2017-02-09 04:56:54',NULL),(16,'matsumura_s','$2y$10$WYH9srfb1u/dVTYu40ST3eAHs6/bNMDLhF8YHXEzCbl2XXtFOhVwm','ユーザー',NULL,'2017-02-09 04:57:15','2017-02-09 04:57:15',NULL),(17,'kawahara_h','$2y$10$Ux264WEWJmW4YsTTp1mEFOYQL7D6Y2xTYZDrEz3o5lQeO9n2cDtG6','ユーザー',NULL,'2017-02-09 04:58:13','2017-02-09 04:58:13',NULL),(18,'hanazawa_s','$2y$10$.Uh6n5AUpMuWDLIijVbYfe7pd9O1RIhvMxkeawwTmtqWxnca3JdEK','ユーザー',NULL,'2017-02-09 04:58:35','2017-02-09 04:58:35',NULL);
