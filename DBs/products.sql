-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: products
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ai_techs`
--

DROP TABLE IF EXISTS `ai_techs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_techs` (
  `id` varchar(60) NOT NULL,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  `total_purchases` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_techs`
--

LOCK TABLES `ai_techs` WRITE;
/*!40000 ALTER TABLE `ai_techs` DISABLE KEYS */;
INSERT INTO `ai_techs` VALUES ('067p2je9g','download (7) ',487,503,'download (7).jpeg\r',NULL),('07cp2j7hg2ee','tech27 ',332,377,'tech27.jpeg\r',NULL),('1jAI2255pg','AI2 ',269,309,'AI2.jpg\r',NULL),('1je25p8g14','images (15) ',420,454,'images (15).jpeg\r',NULL),('1pe367g5j7','images (17) ',320,363,'images (17).jpeg\r',NULL),('28e86g7jp','images (7) ',34,49,'images (7).jpeg\r',NULL),('2gje9593p8','images (23) ',99,149,'images (23).jpeg\r',NULL),('2gjump177es3','mus1 ',442,466,'mus1.jpeg\r',NULL),('33jasrefif64mg','gamers ',60,105,'gamers.jpg',NULL),('3e2505gpj','images (5) ',265,313,'images (5).jpeg\r',NULL),('408gpej90','images (4) ',114,129,'images (4).jpeg\r',NULL),('41g127jp','images (1) ',116,119,'images (1).jpg\r',1),('41g6j33ep9','images (16) ',76,88,'images (16).jpeg\r',NULL),('4cew15b7hp2e','tech12 ',110,134,'tech12.webp\r',NULL),('52836gjAp1I','AI16 ',290,328,'AI16.jpg\r',NULL),('5j07ge85p','download (5) ',276,301,'download (5).jpeg\r',NULL),('74jeA4pI155g','AI14 ',377,390,'AI14.jpeg\r',NULL),('7g2ispajg9em4','images ',78,112,'images.jpg',NULL),('A64gIp54j','AI ',295,331,'AI.jpg\r',NULL),('abri9o3f7ov1','robot ',471,487,'robot.avif\r',NULL),('bce7pew519h00','tech10 ',257,260,'tech10.webp\r',NULL),('bphew77e6c5','tech7 ',212,228,'tech7.webp\r',NULL),('cee6p52b4w15h','tech16 ',479,529,'tech16.webp\r',NULL),('cg6eje1h8p1','tech6 ',317,354,'tech6.jpeg\r',NULL),('e0g80j9p4','images (9) ',130,147,'images (9).jpeg\r',NULL),('e1gp60032j','images (12) ',256,280,'images (12).jpeg\r',NULL),('e1jp385g12','images (13) ',147,176,'images (13).jpeg\r',NULL),('e27j62pg9','images (2) ',50,81,'images (2).jpeg\r',NULL),('e5136pj24g','images (21) ',193,242,'images (21).jpeg\r',NULL),('e8j09g6p8','images (8) ',181,192,'images (8).jpeg\r',NULL),('e98g624jp','download (2) ',301,307,'download (2).jpeg\r',NULL),('e9j8pghce162','tech9 ',246,268,'tech9.jpeg\r',NULL),('eb113e4whpc6','tech4 ',448,467,'tech4.webp\r',NULL),('eh21wb544p1ec','tech15 ',474,491,'tech15.webp\r',NULL),('ejp454g292','images (22) ',302,325,'images (22).jpeg\r',NULL),('fobrva006i71o','robot1 ',64,84,'robot1.avif\r',NULL),('g19ep5412j','images (14) ',145,170,'images (14).jpeg\r',NULL),('g2p5287j','images (2) ',154,170,'images (2).jpg\r',NULL),('g56p1e88j','download (1) ',175,189,'download (1).jpeg\r',NULL),('g926j5e11p','images (11) ',37,66,'images (11).jpeg\r',NULL),('g9pe384j','download (3) ',293,338,'download (3).jpeg\r',NULL),('gj83e7p54','images (3) ',60,71,'images (3).jpeg\r',NULL),('j11g8p4IA55','AI15 ',139,147,'AI15.jpg\r',NULL),('j25ip95ng','ni ',367,399,'ni.jpg\r',NULL),('j3pg5e16','images (6) ',101,145,'images (6).jpeg\r',NULL),('j76peg551','download (6) ',259,267,'download (6).jpeg\r',NULL),('jg43p0e541','images (10) ',141,191,'images (10).jpeg\r',NULL),('jg4e7p3','download (4) ',186,204,'download (4).jpeg\r',NULL),('jp164g76AI6','AI17 ',168,194,'AI17.jpg\r',NULL),('moncuugp4ef016rp','comp-future ',405,440,'comp-future.png\r',NULL),('OAS60D6MpNgIOAH5_j','HONDA_ASIMO ',188,223,'HONDA_ASIMO.jpg\r',NULL),('p0g5j07e81','images (18) ',444,477,'images (18).jpeg\r',NULL),('p6e2g2c572hej','tech22 ',34,64,'tech22.jpeg\r',NULL),('p9e9g9j211','images (19) ',20,35,'images (19).jpeg\r',NULL),('pA3I391j3g1','AI13 ',286,305,'AI13.jpg\r',NULL),('pe117j6g1','images (1) ',339,348,'images (1).jpeg\r',NULL),('pg1j92908e','images (20) ',248,277,'images (20).jpeg\r',NULL),('pmjge29asig0e1','images ',29,45,'images.jpeg\r',NULL),('pweeh2c42b58','tech5 ',310,313,'tech5.webp\r',NULL),('rf0ppe_5a8ueelp6ugj','apple_future ',185,227,'apple_future.jpeg\r',NULL),('wj5ndgdloa79o1ep','download ',42,59,'download.jpeg\r',3);
/*!40000 ALTER TABLE `ai_techs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `automobiles`
--

DROP TABLE IF EXISTS `automobiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `automobiles` (
  `id` varchar(60) NOT NULL,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  `total_purchases` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automobiles`
--

LOCK TABLES `automobiles` WRITE;
/*!40000 ALTER TABLE `automobiles` DISABLE KEYS */;
INSERT INTO `automobiles` VALUES ('1003car26jpg','Lamborghini(Red) ',27000,32000,'car26.jpg\r',0),('1183car30jpg','Processing Tokyan ',23000,30000,'car30.jpg\r',0),('135car22jpg','Thailand Racer(Orange) ',34000,37000,'car22.jpg\r',0),('1572car6jpg','super Car(Black) ',17000,23000,'car6.jpg\r',0),('1944car21jpg','Fast and Furious(Black) ',21000,26000,'car21.jpg\r',0),('2340plane3jpg','In motion jet ',230000,270000,'plane3.jpg\r',0),('2521car28jpg','Automated(Grey) ',45000,60000,'car28.jpg\r',0),('2646bike1jpg','Sport bike ',980,1200,'bike1.jpg\r',0),('3312skaejpg','Student skate ',32000,41000,'skate.jpg\r',0),('3314car8jpg','Frontal Traveller ',23000,27000,'car8.jpg\r',0),('3395car24jpg','Pickup Honda ',120000,150000,'car24.jpg\r',0),('3400car7jpg','Traveller ',34000,37000,'car7.jpg\r',0),('4157car20jpg','Neon Racer ',17000,22000,'car20.jpg\r',0),('4299car11jpg','Majestic(White) ',17000,19000,'car11.jpg\r',0),('4427bus1jpg','Ultra Neon Bus ',5500,8000,'bus1.jpg\r',0),('4452Merdejpg','Beaded Racer ',23000,32000,'Merde.jpg\r',0),('4626bike9jpg','Super bike ',122,160,'bike9.jpg\r',0),('4646plane1jpg','Golden Private Jet ',200000,250000,'plane1.jpg\r',0),('485carpng','Transparent Upbring ',15000,17000,'car.png\r',0),('4871Lamborghinijpg','Lamborghini(Black) ',56000,63000,'Lamborghini.jpg\r',0),('4916car3jpg','Modest Ranger(Blue) ',70000,90000,'car3.jpg\r',0),('5244car19jpg','Modest row(Violet) ',32000,38500,'car19.jpg\r',0),('5481car23jpg','Star Wars(Dark) ',56000,63000,'car23.jpg\r',0),('550plane4jpg','Helicopter ',190000,210000,'plane4.jpg\r',0),('5674plane5jpg','Practice plane(Red) ',120000,170000,'plane5.jpg\r',0),('5827bike10jpg','Mail bike ',230,250,'bike10.jpg\r',0),('6078bike12jpg','Factory Racing ',500,700,'bike12.jpg\r',0),('6203bike7jpg','Floater bike ',48,59,'bike7.jpg\r',0),('6268(2)jpg','Model guini ',12000,14000,'car (2).jpg\r',0),('6531car9jpg','Noen Litted ',47000,58000,'car9.jpg\r',0),('6588car12jpg','Foreground Car ',15000,17000,'car12.jpg\r',0),('6589jedurjpg','Jetdur ',22000,25000,'jetdur.jpg\r',0),('6745car5jpg','F&F(Black) ',34000,54000,'car5.jpg\r',0),('6951bike8jpg','Cowboy Ride ',130,150,'bike8.jpg\r',0),('7003bike11jpg','Honda Racing Bike ',660,920,'bike11.jpg\r',0),('7093bike4jpg','Single-tyred bike ',1320,1500,'bike4.jpg\r',0),('7129bike3jpg','Super Racing Bike ',1500,1700,'bike3.jpg\r',0),('7333car25jpg','Beach Racer(Green) ',17500,19000,'car25.jpg\r',0),('7430bike5jpg','Low bicycle ',70,90,'bike5.jpg',0),('7432car17jpg','Boss Baby(Black) ',17000,22000,'car17.jpg',0),('7443Carjpg','White Lamborghini ',17500,22000,'Car.jpg\r',0),('7590Epicjpg','Epic Racer ',15000,18500,'Epic.jpg\r',0),('7610car13jpg','Black Neon ',23000,25000,'car13.jpg\r',0),('7626car18jpg','Modest Racer(Grey) ',27000,33000,'car18.jpg\r',2),('7628car29jpg','Next Generation Transparent ',150000,170000,'car29.jpg\r',0),('7711skae2jpg','Student skate ',32000,41000,'skate2.jpg\r',0),('7860Super_Labjpg','Low Lamborghini ',230000,300000,'Super_Lab.jpg\r',0),('7890car4jpg','Neon Lighted Ranger ',65000,72000,'car4.jpg\r',1),('800car10jpg','Super Racing(Blue) ',21000,25000,'car10.jpg\r',0),('8498bike6jpg','Low Bicycle(Neon Blue) ',120,135,'bike6.jpg\r',0),('8663car27jpg','Planetary(Upbring) ',23000,32000,'car27.jpg\r',0),('9043plane2jpg','Conas Trainee jet ',170000,195000,'plane2.jpg\r',0),('9298car16jpg','NFS Premium ',32000,35000,'car16.jpg\r',0);
/*!40000 ALTER TABLE `automobiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartoons`
--

DROP TABLE IF EXISTS `cartoons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartoons` (
  `id` varchar(60) NOT NULL,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  `total_downloads` int DEFAULT '0',
  `total_streams` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartoons`
--

LOCK TABLES `cartoons` WRITE;
/*!40000 ALTER TABLE `cartoons` DISABLE KEYS */;
INSERT INTO `cartoons` VALUES ('19u2apjfdpunag531k0gn5','kungfu-panda(2019) ',433,435,'kungfu-panda(2019).jpg\r',0,0),('1dr6pS84l2oxwMese2S6r6s0i1rApie2dVenepwbh03cddroea7oa3ns','Spider-Man-Across-the-Spider-V',477,523,'Spider-Man-Across-the-Spider-Verse-2023-download-683x1024.webp\r',0,0),('1eshrmrlo6o_pe2d4ain61ewjgn','sword-art-online-theme_11 ',376,424,'sword-art-online-theme_11.jpg\r',0,0),('1gojIZoa11Iop8pi','Zootopia-II ',99,115,'Zootopia-II.jpg\r',0,0),('22i9h0pmaj51imwag72a','i-am-what-i-am(2021) ',31,51,'i-am-what-i-am(2021).jpg\r',0,0),('23a8bwMoea6np','Moana ',278,301,'Moana.webp\r',0,0),('43p8nejnfe9u1_gmkgpd4ahua','kung-fu-panda-3-theme_9 ',185,233,'kung-fu-panda-3-theme_9.jpg\r',0,0),('4d1ajBugs25ypge','Bad-guys ',268,276,'Bad-guys.jpeg\r',0,0),('5p8o0sgpsjuni9sbo','puss-in-boots ',432,444,'puss-in-boots.jpg\r',0,0),('7aen52gjo0enphpc','encanto-ph ',220,242,'encanto-ph.jpeg\r',0,0),('9ae7nm7pbaw4b','bat-man ',189,220,'bat-man.webp\r',0,0),('9i6ooa_m35goee4hzpjp','zootopia-theme_5 ',406,433,'zootopia-theme_5.jpg\r',0,0),('eluors5e8h7oepnisggfpor6j','legion-of-super-heros ',143,190,'legion-of-super-heros.jpg\r',0,0),('hg5y4opj5iobl0Dpn','Dolphin-boy ',493,543,'Dolphin-boy.jpg\r',0,0),('I9f2g3Irnj3eopze','frozenII ',250,272,'frozenII.jpeg\r',0,0),('j46p3ag1gyn','yang ',111,133,'yang.jpg\r',0,0),('jr9e9ignpm5o6icsp','sonic-prime ',362,385,'sonic-prime.jpg\r',0,0),('mg9apgr4i2nOj0e','animeOrg ',357,402,'animeOrg.jpg\r',0,0),('n26npgaeE9cjo9','Encanto ',212,214,'Encanto.jpeg\r',0,0),('ngepz7f19j7reo5','frozen1 ',386,392,'frozen1.jpeg\r',0,0),('o5na4rcxos52','cartoons ',486,525,'cartoons.txt\r',0,0),('oaeg5o0jp43oipz','zootopia ',453,469,'zootopia.jpeg\r',0,0),('ooen70o5rgdarpkjrg3afrc','record-of-ragnarok ',177,189,'record-of-ragnarok.jpg\r',0,0),('p73pg5d18sjs','sds-pt1 ',101,148,'sds-pt1.jpg\r',0,0),('pg28asra6swj2r','star-wars ',322,344,'star-wars.jpg\r',0,0),('ponj3i27s7cg','sonic ',411,441,'sonic.jpg\r',0,0),('r_ee85drmp9ojnohgeeke6ahf1gl','the-legend-of-korra-theme_6 ',226,269,'the-legend-of-korra-theme_6.jpg\r',0,0),('sehu9ajgadp46mnmbgi_ls','sds_game-thumbnail ',124,140,'sds_game-thumbnail.jpg\r',0,0),('sp3a2gk5je9rr','star-trek ',68,97,'star-trek.jpg\r',0,0),('yaOe7rvsldin7bb4ovaa4rranpew','transylvania-Overboard ',465,497,'transylvania-Overboard.webp\r',0,0),('_dmaeejng898upap4gkf23uhn','kung-fu-panda-3-theme_4 ',31,34,'kung-fu-panda-3-theme_4.jpg\r',0,0);
/*!40000 ALTER TABLE `cartoons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` char(20) DEFAULT NULL,
  `description` text,
  `picture` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Fruit Store','Get high quality, Natural and fresh fruits at very affordable and minimal prices.','Fruits/Orange.jpg'),(2,'Action Room','Feel the warmth of relaxation with our high resolution and just in time Action movies.','movie-images/jumanji.jpg'),(3,'Cartoons','Time to be childish for once. Entertaining cartoons and Animes for both kids and adults at your disposal.','movie-images/cartoons/Moana.webp'),(4,'Automobiles','Dive into Motion with our Super fast and Powerful automobiles. The prices will shock you','Auto/car6.jpg'),(5,'Soul Lifting','Acquire spiritual Wisdom and Joy for your spirit from here','Soul-lifting/Apost_Josh_thumb.jpg'),(6,'Shoes','We provide you with Quality, strong, durable and just your-size shoes at extremely affordable prices','shoes/High_Nike.jpg'),(7,'Musicals','Enjoy comfort and rest for your soul, with the quality sound and feel that these bring','Instruments/accordion.jpg'),(8,'Fabric Designs','Get quality and just in-size design clothes at very affordable prices','Design/des14.jpg'),(9,'Wallpapers','Perfect Wallpapers of all categories for all your electronic Gadgets','Wallpapers/nat14.jpg'),(10,'Electronics','Assure the latest and most refined gadgets of your choice at super promo prices','elec gadgets/wireless phone charger.webp'),(11,'AI Tech','Get day to day updates on the evolving AI world and technology as a whole','AI/AI16.jpg');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electronics`
--

DROP TABLE IF EXISTS `electronics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electronics` (
  `id` varchar(60) NOT NULL,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  `total_purchases` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pd_name_index` (`pd_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electronics`
--

LOCK TABLES `electronics` WRITE;
/*!40000 ALTER TABLE `electronics` DISABLE KEYS */;
INSERT INTO `electronics` VALUES ('005w_9B025D0230GhD5BD3_b2ehGpD','500GB_hDD',23,32,'500GB_hDD.webp\r',1),('04pMC4gj3','Sandisk MC ',23,45.67,'Sandisk MC.jpg\r',0),('0o22g04lappjp','Laptop ',320.12,414.3,'laptop4.jpg\r',0),('1n3i8rore_8pwawelebbkwpses','wireless_powerbank ',62.65,78,'wireless_powerbank.webp\r',0),('1njaPp4ysgoi3l3a','Playstation3 ',89,100,'Playstation3.jpg\r',0),('22ofjpf1i7r','macboook pro ',450,515,'macbook pro.jpg',0),('2319dp11H','Headset',19,24,'Headset.jpg',0),('2ca5w4phj27g','Watch ',32,67,'watch2.jpg\r',0),('2eonrcwrbeve40p0','VGA converter',15,22,'VGA converter.webp',0),('2pjl2p','Smart Watch',23.46,32,'Applewatch.jpg',0),('2pp2p2jog91al','Laptop ',135.45,152.67,'laptop2.jpg\r',1),('2w1hbpe168c4e','Macbook pro ',230,315,'tech11.webp\r',0),('362jfpl_reS5e47agnc','Flat Screen ',32,54,'flat_Screen.jpg\r',0),('3bpa4w5i80de06270p3','ipad ',45.6,78.32,'ipad.webp\r',0),('446aeuwbpr9l','S23 ultra ',112,125,'S23 ultra.webp\r',0),('48e1em4_22bde1mo5d4mp7G9Go_wm3','4G_modem',5.89,7.23,'4G_modem.webp\r',0),('4bj5i54da16501361da58b9e34fd7c841N0bk457','Transparent Nokia',115,45,'1878da40de5bf45741bd086a961c3d4b.jpg\r',0),('4cwpb17pe8','hp gaming pc ',115,122.89,'hp gaming pc.webp\r',0),('4nro9ernrgpo5lo2r1l1nl1eC9ocl','Controller',12,15,'controller.png\r',3),('574ogpja91ppl','Laptop ',230,267,'laptop1.jpg\r',0),('58p5Gn2jge','iPad 9th Gen ',78.36,90.25,'iPad 9th Gen.jpg\r',0),('5es133b5er_n6conwd3racebp4a06','Barcode_scanner ',33.56,43,'barcode_scanner.webp\r',0),('5hnw3a2hboepeped4','Headphone ',6.79,9.09,'headphone.webp\r',0),('5we8b1h03c2ep','transparent screen ',112,150,'tech23.webp\r',0),('6bp4eorrwi3a3p','Cool airpod',16,21,'cool airport.webp\r',0),('6obmnfor7a7_ep2ydwpsc_an','stand_for_company ',123,143,'stand_for_company.webp\r',0),('72eibe5pHwaw2u','smart Huawei ',56,64,'smart Huawei.webp\r',0),('7i3p5ebssmuwwel_rso9ee','wireless_mouse ',21,30,'wireless_mouse.webp\r',0),('7ppjArsg9oid17','Apple Airpods',23,34,'Apple Airpods.jpg\r',0),('7re5e4giwl1pjf9','Water filter ',68,90,'wfilter1.jpeg\r',0),('7weh81b03721p62s8al0F','Flash drive ',13.28,16.78,'Flash.webp\r',0),('8a6p4wcbe9hw','smart watch ',75,90,'smart watch.webp\r',0),('8S_9lp1ubrwe327a','S23_ultra ',124,130,'S23_ultra.webp\r',0),('8w8eo6rburep9','4G-5G router',9.8,15,'4G-5G router.webp\r',0),('8ww50h9pcbea','M7 smart watch ',102,115,'M7 smart watch.webp\r',0),('9875jeb7052','Virtual glasses',12.56,15,'606fb78176a92b925db7eb9d9e394337.jpg',0),('9bw5Sp65SeD','SSD ',47,80,'SSD.webp',0),('a2wppd4eb18','Xiaomi pad ',95.25,105.65,'Xiaomi pad.webp\r',0),('ab2w2r1ulep2','S24 ultra ',130,152,'s24 ultra.webp\r',0),('aneeowe0p9hd7223761o44hpen73eHapdhb','Headphone',23.46,30.77,'headphone2.webp\r',0),('asg1pr2js_rpswlee4iiro4','airpots ',23,50,'wireless_airports.jpg\r',0),('b42ce06w3p2he','Light_bulbs ',22,30,'tech26.webp\r',0),('b8bew3p9o8ielm','mobile ',65.22,72,'mobile.webp\r',0),('b8wg5ip9pTm4_n8lpXaoaeg','TX9gaming_laptop ',320,400,'TX9gaming_laptop.webp\r',0),('bcha2e1wpw74','Apple watch ',22,43,'apple watch.webp\r',0),('be5ew185m1_G_','25G_modem',12.45,15.89,'5G_modem.webp\r',0),('beR45di9mwp3e6','Redmi9 ',74.32,90.5,'Redmi9.webp\r',0),('bmaewsgpp8as94d_n6u','samsung_pad ',32,42,'samsung_pad.webp\r',0),('c1h18a6jpwg6','Watch ',24,50,'watch1.jpg\r',0),('d4pg51sjs5','2ssd ',45,80,'ssd.jpg\r',0),('de3o_eb7piarssk5l6ybwweer','wireless_keyboard ',55,78,'wireless_keyboard.webp\r',0),('dicw729obr063eue422_m77','Curved Monitor',66.76,72.03,'curved_monitor2.webp',0),('du9nr_2b0cropeomie706v97w','Curved_monitor ',76,90,'curved_monitor.webp\r',0),('e26g6enpsh5oa7dj','heart tied Headphone ',12,15,'headphones.jpg\r',0),('e2p9_Oobnp4GCewP1rx','OneGx_proPC ',112,121,'OneGx_proPC.webp\r',0),('e5bwpr1ionmo22','Samsung m7 monitor ',90,120,'Samsung m& monitor.webp\r',0),('e6b5m52waxp','Iphone 14 pro max',90.12,120.05,'14 pro max.webp\r',0),('e9be96h6wc9p2','Macbook love ',300,350,'tech29.webp\r',0),('ee9p5bm0gj4acw','webcam ',35,60,'webcam.jpeg\r',0),('ees7_28sohs_mrse2m7u1lsbiow1lhi9csroeu_d','Chordless_slim_mouse',12.88,17.92,'chordless_slim_mouse.webp\r',0),('ehej9g403wrpea','Electric heater ',115,130.5,'wheater.jpeg\r',0),('epl4ae93wb4b','LCD tablet ',56.98,75,'LCD tablet.webp\r',0),('er0pwh_75er_6ajrni1bpspl19e4e','hp_laserjet_printer ',67,90,'hp_laserjet_printer.webp\r',0),('erApon1idb4dw45','P50 pro Android ',90,120,'P50 pro Android.webp\r',0),('ern9b4s0eepwc','touch screen ',123,140,'touch screen.webp\r',0),('esrce92o3sh2obr2_imi51sws5onc0m_','23inches_slim_monitor',15,23,'23inches_slim_monitor.webp\r',0),('g1c1b6e8pwajm','webcam ',43.07,60.88,'webcam.jpg\r',0),('g3ijn90ipm6minipbs','Mini laptops',86,97,'mini.jpg',0),('g3lcs7opje16eep','Telescope ',90,120,'telescope.jpg\r',0),('hc54eew791bp7','Macbook pro 17 ',340,500,'tech17.webp\r',0),('hcj1p402ge30e','Macbook style ',215,275,'tech21.jpeg\r',0),('hgca53pwj5','Smart watch ',34,50,'watch3.jpg\r',0),('hperwg52arecb7','Wireless Charger ',102,115,'wireless phone charger.webp\r',0),('imCpno1rbw71o4LeD','LCD monitor ',45,67,'LCDmonitor.webp\r',0),('ipp1ebn53rwe2r','Laser printer ',67,90,'printer.webp\r',0),('jb8o79gy9edarpK','Gaming Keyboard ',17.73,25.33,'Keyboard.jpg\r',0),('kba165nebp2w','solar power bank ',43,57,'solar power bank.webp\r',0),('l9op9mb5eiebw6','k2 mobile ',11.87,23.86,'k2 mobile.webp\r',0),('lnlusews98aesgisswe4pe2_rsb','wireless_sunglasses ',43.24,50.75,'wireless_sunglasses.webp\r',0),('lo6gp42pa3pj','Laptop ',106,112,'laptop3.jpg\r',0),('n1e7p3sawdb2','mobile stand ',15,27,'mobile stand.webp\r',0),('n7ee74owppbh2','Ipro cell phone ',12.22,32.54,'Ipro cell phone.webp\r',0),('ne9iwmorb3p3o8','Samsung monitor ',75,90,'Samsung monitor.webp\r',0),('newkDvSp_noo6e0Seob7_bLo9o','SSD_Lenovo_notebook ',120,145,'SSD_Lenovo_notebook.webp\r',0),('nhe4we8e5doahpp14b','headphone ',34,50,'headphone4.webp\r',0),('nhibe3p87p4oew','Iphone11 New',47,53.26,'cool iphone.webp\r',0),('oe1he5p9wnbp','S30 mobile phone ',145,160,'S30 mobile phone.webp\r',0),('oi4wbgpe8e2n9L','Lenovo Legion ',132,150,'Lenovo Legion.webp\r',0),('oje0n00gp5hp','Mi 10T phone ',56,75,'phone.jpg\r',0),('orib31pe_56pw41','2Iphone 14 pro',97,105,'i14_pro.webp\r',0),('p1w34e274b','iphone 13 ',118,221,'iphone 13.webp\r',0),('p8MAbweR127','DDR RAM ',7.79,9.08,'DDR RAM.webp\r',0),('PbCwp89ir1ee8o7c','corei7 super PC ',102,115,'corei7PC.webp\r',0),('pe9bxw05am','Iphone 13 pro max ',230.22,309,'iphone 13 pro max.webp\r',0),('pelj0if92wrge31','Pure water filter ',94,112,'wfilter2.jpeg\r',0),('pl776pgoa7jp','Acer slim laptop ',70,86,'Acer slim laptop.jpg\r',0),('poe36b0w9ephn','2.2inch mobile phone',78,90,'2.2inch mobile phone.webp\r',0),('pw0r5r11ebpa9io58','Airpod Super',15,19,'airport1.webp',0),('pwe9odben7p71heha','Headphone ',16.45,32.3,'headphone.webp\r',0),('rigervdde54pp6neeeibbv206n52w26b43gp','64gbpendrive',20,23,'64gbpendrive.webp\r',0),('rpwpop_6ceiela96lno2eb','laptop_intelcore ',207.16,220,'laptop_intelcore.webp\r',0),('s86s2b7epdw','ssd2 ',24,50,'ssd2.webp\r',0),('se88p6pra_rcag6iej','Acer_aspire laptop ',112,120,'acer_aspire.jpg\r',0),('ve98oa7nwhpeobeopehnL8ds','Lenovo headphones ',32,45,'Lenovoheadphones.webp\r',0),('w9oerur49epb6','4G_lite router',10.67,14.23,'4G_lite router.webp\r',0),('wa13g47pchj3','Smart watch ',29.05,35.22,'watch4.jpg',0),('wHbeDpB15T_103D','1TB_HDD ',25,32,'1TB_HDD.webp\r',0);
/*!40000 ALTER TABLE `electronics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabrics`
--

DROP TABLE IF EXISTS `fabrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fabrics` (
  `id` varchar(60) NOT NULL,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  `total_purchases` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabrics`
--

LOCK TABLES `fabrics` WRITE;
/*!40000 ALTER TABLE `fabrics` DISABLE KEYS */;
INSERT INTO `fabrics` VALUES ('0ll4g5pjpu97','pull5 ',258,292,'pull5.jpg\r',0),('221jgs5d26ep','des12 ',406,455,'des12.jpg\r',0),('2ll4ppjug','pull2 ',84,123,'pull2.jpg\r',1),('33esg8dp2j8','des3 ',466,474,'des3.jpg\r',1),('43413g1depjs','des13 ',481,523,'des13.jpg\r',2),('5192gpdj1es5','des11 ',309,328,'des11.jpg\r',0),('5e6g34p4jds','des6 ',240,254,'des6.jpg\r',0),('5gds814p9je','des4 ',370,381,'des4.jpg\r',0),('5gjowpu8dpn558','up-down5 ',499,522,'up-down5.jpg\r',0),('6geo9m3nwp11j','women1 ',488,534,'women1.jpg\r',4),('6jg0p59pl6lu','pull6 ',346,370,'pull6.jpg\r',0),('8j10g11d8pes','des10 ',391,427,'des10.jpg\r',0),('8pgd9025ejs','des9 ',138,160,'des9.jpg\r',0),('9j5m7op4enw4g','women4 ',485,528,'women4.jpg\r',0),('d83076sgepj','des7 ',96,127,'des7.jpg\r',1),('d9jg40es51p3','des14 ',318,347,'des14.jpg\r',0),('de12pj1e0gs1','des1 ',47,53,'des1.jpeg\r',0),('dpnp9ojwgu586','up-down ',475,522,'up-down.jpg\r',0),('ggi_8j2ODpnsne8e8','Design_One ',90,97,'Design_One.jpg\r',0),('j031pp5ugl7l','pull3 ',265,276,'pull3.jpg\r',0),('jl7p460pl4gu','pull7 ',262,269,'pull7.jpg\r',0),('m245wgnop02ej','women2 ',203,225,'women2.jpg\r',0),('nd9o58ugpj27pw','up-down2 ',242,267,'up-down2.jpg\r',1),('o4j8un6gppd1w','up-down4 ',253,275,'up-down4.jpg\r',0),('on4dpp0jgw9u68','up-down6 ',23,24,'up-down6.jpg\r',1),('p51gdj51s8e','des8 ',437,438,'des8.jpg\r',0),('p6nupj3og64dw','up-down3 ',431,477,'up-down3.jpg\r',0),('pg7l2u4pj2l','pull4 ',195,213,'pull4.jpg\r',0),('ppj6lgul94','pull ',197,243,'pull.jpg\r',0),('s08g8e5p9jd','des5 ',396,413,'des5.jpg\r',0),('sj82pgde353','des2 ',407,429,'des2.jpg\r',0),('w13peg9n0j4om','women3 ',401,429,'women3.jpg\r',0);
/*!40000 ALTER TABLE `fabrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fruits`
--

DROP TABLE IF EXISTS `fruits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fruits` (
  `id` varchar(60) NOT NULL,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  `total_purchases` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fruits`
--

LOCK TABLES `fruits` WRITE;
/*!40000 ALTER TABLE `fruits` DISABLE KEYS */;
INSERT INTO `fruits` VALUES ('3o6joRo3rpdegw9','Retrowood ',5.57,9.85,'Retrowood.jpg\r',2),('53c046c6c69fg50b2j7cap68675a6809e5440ed','Balanced Diet ',23.1,27,'b7c78a45405c60086f2aedc663e569c0.jpg\r',0),('5mo2eg4Wneal0jpr','Watermelon ',1.75,4.25,'Watermelon.jpg\r',1),('5r37p1juefig4','Mixture ',22.5,31.3,'fruit1.jpeg\r',1),('6agpe4j1nrOg','Oranges ',12,15,'Orange.jpg\r',16),('6jgop48em2Ln','Lemon ',6,10,'Lemon.jpg\r',0),('7aehp9P5gcj5','Peach ',4,6,'Peach.jpg\r',0),('7pel4p3ingjp4aep','Pineapple ',9.75,12.8,'pineapple.jpg\r',0),('8agjp22P4er','Pear ',5.35,8.5,'Pear.jpg\r',0),('asg5n4ajnB49ap','Bananas ',7,9,'Bananas.jpg\r',1),('cgoo9cup881jn','Coconut ',13,15,'coconut.jpg\r',0),('g1b7y0waepjsrrr2','Strawberries ',8.25,13.75,'strawberry.jpg\r',0),('h2ii8mppcj77gnae','Minipeach ',3,7,'minipeach.jpg\r',0),('je0mp8o83ga','Tomatoes ',8.25,11.3,'tomate.jpg\r',3),('l0pep244pjgA','Apple ',6.5,8.23,'Apple.jpg\r',0),('n9opga2jMg','Mango ',2,5,'Mango.jpg\r',0),('ppea2j5gr2G9','Grapes ',12,16,'Grape.jpg\r',0),('preP6j1pe1p0g','Pepper ',12.75,15.05,'Pepper.jpg\r',0),('rarbg6yp3k0cejlb9','Blackberry ',11,15,'blackberry.jpg\r',0),('S66ipk4pygj2','Spiky ',13,15,'Spiky.jpg\r',0),('w9P3pwa1jp2ag','Pawpaw ',7,11,'Pawpaw.jpg\r',0);
/*!40000 ALTER TABLE `fruits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` varchar(60) NOT NULL,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  `total_downloads` int DEFAULT '0',
  `total_streams` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musicals`
--

DROP TABLE IF EXISTS `musicals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `musicals` (
  `id` varchar(60) NOT NULL,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  `total_purchases` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musicals`
--

LOCK TABLES `musicals` WRITE;
/*!40000 ALTER TABLE `musicals` DISABLE KEYS */;
INSERT INTO `musicals` VALUES ('1gdp54n1ajss','liquid key stands ',15,30,'liquid key stands.jpg\r',0),('2118pdgheja','Evans bass drum head ',67,90,'Evans bass drum head.jpg\r',0),('2arG0dj9p5gn','Yamaha White Grand ',2000,2100,'Yamaha White Grand.jpg\r',0),('2gi1pj7V2loni','Wood fiddle Violin ',45,60,'Wood fiddle Violin.jpg\r',1),('38pxjs3ag31','Red-Golden Saxophone',115,120,'sax3.jpg',0),('3cy3mab7lpg5j','20 inches ping cymbal ',27,33,'20 inches ping cymbal.jpg\r',0),('48hxnpop7oey9jlg','Wooden xylophone ',200,250,'wooden xylophone.jpg\r',0),('4g2j1pudrm52','Electric Drum Kit ',300,315,'drum1.jpg\r',0),('5erpjg98g9ui','Acoustic guiter ',100,115,'Acoustic guiter.jpg\r',1),('6Fgl262ujpe','Walnut Flute ',67,80,'Walnut Flute.jpg\r',0),('6gd6ppaj0','Digital practice pad ',37,45,'Digital practice pad.jpg\r',0),('7anop2i7pgn40','Yamaha Motif XF6 ',3700,4000,'piano7.png\r',0),('7l87DTkpgaurmjg1in','TalkingDrum ',44,60,'TalkingDrum.jpg\r',0),('8c7gdcpooaj97irn','Accordion ',76,76,'accordion.jpg\r',0),('8g45jdre2m0up','Drum kit ',400,450,'drum2.jpeg\r',0),('9i6g7po4vlijn','Cremona violin ',56,70,'Cremona violin.jpg\r',0),('9sj1pgi1n8ks','snare skins ',25,40,'snare skins.jpg\r',0),('9x22gpj1sa7','Dark-Golden Saxophone ',78,92,'sax1.jpg\r',1),('9y88zagrpehnj5Jnssapieese_','Japanese_synthesizer ',20,40,'Japanese_synthesizer.jpg\r',0),('a_mmgrskap9iablj43','smart_kalimba ',115,130,'smart_kalimba.jpg\r',0),('dc63prrojg7ee9r','Soprano recorder ',15,22,'Soprano recorder.jpg\r',0),('dg13r3umj8p','Electric Drum kit ',700,770,'drum3.jpg\r',0),('egplh430esw1j','stand with wheels ',45,60,'stand with wheels.jpg\r',0),('eppl67agd9j1','sustain pedal ',35,42,'sustain pedal.jpg\r',0),('Fluep3gj996','Plated Flute ',60,67,'Plated Flute.jpg\r',0),('ge2p9sj97','Pyle drum set ',320,350,'Pyle drum set.jpg\r',0),('ge48Fpjul63','Blue Metallic Flute ',37,45,'Blue Metallic Flute.jpg\r',0),('gkp782i1j','Pacific drum center kit ',265.75,280,'Pacific drum center kit.jpg\r',0),('gn65o3pi3jpa4','Nord Stage 3(b) ',3700,4000,'piano3.jpg\r',0),('go1i0jCa6sp','61-key portable Casio ',202,215,'61-key portable Casio.jpg\r',0),('gpjk2i','One thumb kit ',215,250,'one thumb kit.jpg\r',0),('i20r5n6gsgp1sj','6-strings Bass ',87,102,'6-strings.jpg\r',0),('i3jgowMp948nd','Pearl Midtown Drum kit(white) ',215,270,'Pearl Midtown.jpg\r',0),('iap27pnjo148g','Nord Electro 5',3000,3500,'piano1.jpg\r',0),('ip4er1rg4ggj6','Drum trigger ',40,45,'Drum trigger.jpg\r',0),('j8p7g7pad','Drum pratice pad ',62,65,'Drum pratice pad.jpg\r',0),('js7g38ep1','Music alley kids drum set ',117,125,'Music alley kids drum set.jpg\r',0),('l9ej9p0uFg6','Three-toned Flute ',67,90,'Three-toned Flute.jpg\r',0),('n9i6psj%gr8gs7','sapphire blue 6-strings ',102,115,'sapphire.jpg',0),('nojg9api34p1','Yamaha Motif 8 ',2800,3200,'piano4.jpg\r',0),('ojwhd7_7uos9gme6cirl_bpe','double_row_chimes ',45,55,'double_row_chimes.jpg\r',0),('oPp7i5ang35j','Grand Piano(Black) ',1020,1500,'Grand Piano.jpg\r',0),('p09a2375n50p4j','Yamaha Motif',3200,3500,'piano5.jpg',0),('p25j4sg1sa9b','Thick String bass ',117,120,'bass2.jpg\r',0),('P2n841p2agjoi','Nord stage 3',4050,4475,'Piano2.jpg',0),('p2rykg1jebo57ad','USB midi keyboard ',600,800,'USB midi keyboard.jpg\r',0),('p3k6g29ij','mini drum kit ',120,160,'Electric drum kit.jpg\r',0),('p4pe416agi2njo','Yamaha Motif XF6 ',3700,4000,'piano6.jpeg\r',0),('p89gkcp1aj1','Drum Accessory pack ',55,70,'Accessory pack.jpg\r',0),('pc19j1i7sgsk','hammer wood sticks ',30,50,'hammer wood sticks.jpg\r',0),('r89najh0gicomp3a','Harmonica ',27,35,'harmonica.jpg\r',0),('sa27jp0d1nrdag','61-key standard ',115,150,'61-key standard.jpg\r',0),('sbasj2501gp1','Rock Bass ',77,90,'bass1.jpg\r',0),('sc026igj8kps','Pro drum sticks ',35,45,'Pro drum sticks.jpg\r',0),('sohjegeap53nhpd1','V-drum headphones ',34,60,'V-drum headphones.jpg\r',0),('x2g4s167paj','Dark-Golden Saxophone ',78,92,'sax2.jpg\r',0);
/*!40000 ALTER TABLE `musicals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoes`
--

DROP TABLE IF EXISTS `shoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoes` (
  `id` varchar(60) NOT NULL,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  `total_purchases` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoes`
--

LOCK TABLES `shoes` WRITE;
/*!40000 ALTER TABLE `shoes` DISABLE KEYS */;
INSERT INTO `shoes` VALUES ('00fgl27eo1p7jh577Wo','Blue Naked Wolfe',50,70,'shoe17.jpg\r',0),('0e5i472N7181jhpg','Blue Nike',51,70,'shoe10.jpg\r',0),('0hoj36921egs89p','Givenchy Black ',67,90,'shoe13.jpg\r',3),('24epB732p7ga0o6sjhe5','Green Bape',43,56,'shoe2.jpg\r',0),('27gu070enpe9qc56Mj','Mcqueen ',52,67,'Mcqueen.jpg\r',0),('28gpj6u1op643p7','Top-up',40,46.86,'topup.jpg\r',0),('3gh9332gNHhiipiHkk1_jegNei75_','High_Nike',39,53,'High_Nike.jpg\r',1),('55us6jo1peMe2ne5c58hq1g8','Dark Mcqueen',65,82,'shoe15.jpg\r',1),('5e7o1jhg86336p','Dior ',56,67,'shoe11.jpg\r',0),('5fljWak57hle7768cgs8eooB8','Naked Wolfe(Black)',67,75,'shoe8.jpg\r',2),('5j1oh6gp65e6s','Ladies Herm ',23,40,'shoe16.jpg\r',0),('9pueogSp_59rp0jr6s7','Air Nike ',57,65,'Super_spor.jpg\r',0),('Daeri55p2kN07keg66j34k091','Neon Blue Nike',31.66,45.09,'DarkNike.jpg\r',0),('G00p52a3ga49ods0Gd2s5jo','Godas',20.02,43,'Godas.jpg\r',0),('g27olpo3jm9aCx','Coolmax ',23.67,37.89,'Coolmax.jpg\r',0),('h0sgp5ej37o3','Low blue ',27,33,'shoe7.jpg\r',0),('je654p521sgoh','Vuitton Sandals ',25.32,34,'shoe12.jpg\r',0),('k_7erk3pi7N_D34081ek7ra','Dark_Nike',47.87,60,'Dark_Nike.jpg',1),('o19j4ge3sp98h3','Poppins ',37,43,'shoe9.jpg\r',0),('o5ph54sj92e1g5','Black Wolfe ',47,52,'shoe5.jpg\r',0),('oagk56hjl357cB30e7sp0','Vuitton Black',35,50,'shoe3.jpg\r',0),('p2hj20eg314so','Blank Nike ',38,43,'shoe14.jpg\r',0),('p7ejo1921S836h3g','Low Nike ',26,33,'Shoe1.jpg\r',0),('s04peh6j58go','Green Nike',31.27,40,'shoe6.jpg\r',0),('spsrj19ehp7g1u5eoS1','Glassy Flow ',42,57,'Supershoes.jpg\r',0);
/*!40000 ALTER TABLE `shoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soul`
--

DROP TABLE IF EXISTS `soul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soul` (
  `id` varchar(60) NOT NULL,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  `total_downloads` int DEFAULT '0',
  `total_streams` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soul`
--

LOCK TABLES `soul` WRITE;
/*!40000 ALTER TABLE `soul` DISABLE KEYS */;
INSERT INTO `soul` VALUES ('083jgp45e','Steve Crown (You are Great) ',264,284,'download (4).jpeg\r',0,0),('149415j8B1p7581G6_93g0I2806FM_2','Minister GUC_God of Vengeance ',17,67,'FB_IMG_16354862188149090.jpg\r',0,0),('194je7g11p','Deborah Lukaulu _Mungu wa ',210,254,'images (11).jpeg\r',0,0),('1g0pe1j77','Pst Nathaniel Bassey(_Take the',302,308,'images (1).jpeg\r',0,0),('31p3j16F2501GM26_Bg684247563_3I','The koinonia Experience(Koinon',41,45,'FB_IMG_16362366182471430.jpg\r',0,0),('3n48w2eodlodpagj','Mercy Chinwo(Excess Love) ',399,433,'download.jpeg\r',0,0),('4002pnpe10r2i3o2p1_06670ib_3gw21eng1s28xo83e1a','Moses Bliss(Too Faithful) ',224,237,'2023-01-21_16_top-20-nigerian-gospe-1-1024x730.webp\r',0,0),('433120MGB433p81_83I866_53602jFg','Papa and Tim Godfrey ',335,371,'FB_IMG_16358823036364201.jpg\r',0,0),('4pj96ge44','Sinach _Precious Jesus ',347,351,'images (6).jpeg\r',0,0),('5j4ge840p','Mercy is blessed ',169,185,'images (5).jpeg\r',0,0),('613506g05IFj5GB9M106817p39309__','Bible Study(Joshua Selman) ',425,456,'FB_IMG_16355969008510330.jpg\r',0,0),('625g799_8F5j091G84p_I0B04M2','Discipline(Koinonia experience',221,247,'FB_IMG_1672590098095.jpg\r',0,0),('6F412G1I802gB19p3M8958j__030276','Panam Percy Paul_Open my eyes ',425,433,'FB_IMG_16354862293189100.jpg\r',0,0),('6pI1_jF93381M33_55334165Bg587G1','More than Gold(Judith Kay) ',213,227,'FB_IMG_16355198513343178.jpg\r',0,0),('7e2163gjp0','Minister GUC(All that matters)',350,360,'images (10).jpeg\r',0,0),('7p6eg05j6','Obinigwe _@GUC ',445,446,'images (7).jpeg\r',0,0),('7_p0a1ap6gPj','Bishop David(Discipline for su',122,156,'Papa_.jpg\r',0,0),('8a2c1dmhp3j9ngii','chidinma(Protocol Breaker) ',215,249,'chidinma-1.jpg',0,0),('9ej7g038p','Frank Edward (End of the world',294,341,'images (3).jpeg\r',0,0),('9e_plpo_h1nsrofj78gJpiA','Apst_Johnson Suleman(The power',273,302,'Apst_John_profile.jpg\r',0,0),('9F76g23IMG538j_06519914B8p846_0','Decisions Decide Destiny ',197,247,'FB_IMG_16354863828050917.jpg\r',0,0),('C_729a2nelp873l4I008j_60322g343g02o','All that matters(GUC feat Merc',498,542,'InCollage_20230328_200739824.jpg\r',0,0),('e4p81g10j','Obinasom__@mercychinwo ',333,366,'images (4).jpeg\r',0,0),('G076M826B_F14I_gj993p3454639535','Wisdom for Living(Johnson Sule',485,509,'FB_IMG_16354863942993546.jpg\r',0,0),('g41j23ep37','Deborah _Ma consolation ',190,208,'images (12).jpeg\r',0,0),('g85j62ep','Joe praize _Unchangeable ',298,331,'images (8).jpeg\r',0,0),('g872e6pj3','Ada Ehi_Testimony  ',200,244,'download (2).jpeg\r',0,0),('i1_vp017agjadapPD','Papa_David (Shiloh) ',168,180,'Papa_David.jpg\r',0,0),('I67713Mg91_6_p51149046GB5jF48','Ministers Without Blemish(John',470,505,'FB_IMG_16355199016184647.jpg\r',0,0),('je764g3p3','Eben _Victory ',448,471,'download (3).jpeg\r',0,0),('j_632G61873_92M608312p585B6Fg6I','The power of words ',409,454,'FB_IMG_16362366358287192.jpg\r',0,0),('M8B23IgF7_41368Gj9p031656_01581','Ceremony of Dancing ',288,314,'FB_IMG_16358818015794310.jpg\r',0,0),('p2g2j58e4','Mercy Chinwo (_Amazing God) ',224,238,'images (2).jpeg\r',0,0),('p9g5j51e9','Daddy wey dey pamper _@blissTV',59,101,'images (9).jpeg\r',0,0),('peg529j12','Minister GUC (Through Eternity',424,453,'download (1).jpeg\r',0,0),('s0p9ggmea8i9je','Sinach _way maker ',86,132,'images.jpeg\r',0,0),('sies4rp7_2fj_JAlogPhp7o','Apst_Joshua Selman_(The high p',361,378,'Apst_Josh_Profile.jpg\r',0,0),('smpph9_4s5jo_b6JuAohg','Apost_Joshua Selman(This Grace',367,410,'Apost_Josh_thumb.jpg\r',0,0),('u_74Jn_2bj3psohgpAhm','Apst_Johnson suleman(Ministers',392,424,'Apst_John_thumb.jpg\r',0,0),('_33_5j41372Ig3M3Fp8885666G732B4','Grand finale ',318,347,'FB_IMG_16354862465827333.jpg\r',0,0);
/*!40000 ALTER TABLE `soul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainings`
--

DROP TABLE IF EXISTS `trainings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` char(30) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `description` text,
  `link` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `icon` (`icon`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainings`
--

LOCK TABLES `trainings` WRITE;
/*!40000 ALTER TABLE `trainings` DISABLE KEYS */;
INSERT INTO `trainings` VALUES (1,'Web Development','bx bx-code-alt','Become a professional frontend and backend Web Developer from our complete web dev\'t courses with full certifications and job authentication!!','https://www.w3schools.com/'),(7,'Digital Marketing','bx bx-bar-chart-alt','Grow up your potential to becoming a grand digital marketer today!!','https://www.coursera.org/courses?query=digital%20marketing/'),(8,'Robotics','bx bx-chip','Become a high level Robotics Engineer from our complete robotics courses with full certifications and job authentication services!!','https://www.learnrobotics.org/'),(9,'Programming','bx bx-code-curly','Develop your skills in all programming languages(C, C++, Java, etc) with our complete programming languages tutorials!!','https://www.geeksforgeeks.org/'),(10,'Sql and Database','bx bx-data','Become a Database Administrator today, via our step by step approach to databases and Database lessons!!','https://www.freecodecamp.org/news/dbms-and-sql-basics/'),(11,'Graphics Design','bx bx-paint','Boost up your Graphics designing skills or take off from scratch, as we take you step by step and become a remarkable Graphics designer!!','https://www.coursera.org/articles/how-to-learn-graphic-design/');
/*!40000 ALTER TABLE `trainings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallpaper`
--

DROP TABLE IF EXISTS `wallpaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallpaper` (
  `id` varchar(60) NOT NULL,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  `total_downloads` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallpaper`
--

LOCK TABLES `wallpaper` WRITE;
/*!40000 ALTER TABLE `wallpaper` DISABLE KEYS */;
INSERT INTO `wallpaper` VALUES ('02!l9N0G86240G0p1006v1be0Gp20y6d0N08Uw0!z61C30049s5dp_1O','O1CN01yv15Np1Gztl0GdGUd_!!6000',NULL,NULL,NULL,0),('08g1j4219p9897','1891298.jpg\r',NULL,NULL,NULL,0),('0an070j19gep','nat10.jpeg\r',NULL,NULL,NULL,0),('0rir2eljpwpS09gp96araVs11R7r0e8oWe5lpaxac','Sportscar-Rear-View-1920x1080.',NULL,NULL,NULL,0),('149pb1ewan9','nat1.webp\r',NULL,NULL,NULL,0),('180sh4wD906v0aL8010yi0o10f6sp!04W1QNO9!0_62Gv0wCO2618Mn20','O1CN01hGwsQ91vWwynDoOLM_!!6000',NULL,NULL,NULL,0),('1jg7a743pn7','nat14.jpg\r',NULL,NULL,NULL,0),('1ljgepph1snbnoedahrjnashscawesiagyeemglnulrafn2uaraopluj5r','scarlett-johansson-jungle-fant',NULL,NULL,NULL,0),('2a17n6pegj6','nat2.jpeg\r',NULL,NULL,NULL,0),('2olea1rHFPfpgj6LaKWr4_eRs3iB6','aerial-forest_FHPBKR6LW2.jpg\r',NULL,NULL,NULL,0),('2p7en9a3w6b','nat3.webp\r',NULL,NULL,NULL,0),('341bpnagc44k','back3.png\r',NULL,NULL,NULL,0),('3gjapp49po5l','laptop.jpg\r',NULL,NULL,NULL,0),('3n84e7jg5pa','nat4.jpeg\r',NULL,NULL,NULL,0),('45gc20ra9jp','car2.jpg\r',NULL,NULL,NULL,0),('46na5j68pg','nat6.jpg\r',NULL,NULL,NULL,0),('4gopp9l89jape','laptop4.jpeg\r',NULL,NULL,NULL,0),('4PeaFHag1paricvBkarrpl42lU5DjerK93l9wpiareW','Ferrari-499P-Back-view-4K-Ultr',NULL,NULL,NULL,0),('4yp6p86mxldoi3s3dd75ejgm1eei5rv7','pexels-dmitry-demidov-3784566.',NULL,NULL,NULL,0),('5g63ap51jn3','nat15.jpg\r',NULL,NULL,NULL,0),('623ag9jmLpb','Lamb.jpg\r',NULL,NULL,NULL,0),('6egp83nrp4j14reakdsol0s6a9nexuws11aek60i8msglp109ilcmm2puai1','1169610-3840x2160-desktop-4k-m',NULL,NULL,NULL,0),('70np9g6ej6a','nat6.jpeg\r',NULL,NULL,NULL,0),('763g5852j667p','655682.jpg\r',NULL,NULL,NULL,0),('77a681pg1nj','nat17.jpg\r',NULL,NULL,NULL,0),('7j8p61nage6','nat7.jpeg\r',NULL,NULL,NULL,0),('8162287g5n48p','887628.png\r',NULL,NULL,NULL,0),('88pben625aw','nat8.webp\r',NULL,NULL,NULL,0),('938gajp0n1','nat19.jpg\r',NULL,NULL,NULL,0),('9age2nj70p4','nat9.jpeg\r',NULL,NULL,NULL,0),('a00v4p3opa1if4l','laptop10.avif\r',NULL,NULL,NULL,0),('a0sd7e21im4puios0bbelwom','ds-automobiles-m.i.-21.webp\r',NULL,NULL,NULL,0),('a4eb66p17rcw','car6.webp\r',NULL,NULL,NULL,0),('a5ppo43l62pgj','laptop3.jpg\r',NULL,NULL,NULL,0),('a6o2rorLniagp9mhAe1ngvjbdi','Lamborghini-Aventador.jpg\r',NULL,NULL,NULL,0),('a8n71g2p3j6','nat13.jpg\r',NULL,NULL,NULL,0),('acLrMn84CPo1e1psapgr1rjs','MCLaren-P1-sports-car.jpg\r',NULL,NULL,NULL,0),('akjpg48b6c9','back4.jpg\r',NULL,NULL,NULL,0),('B4pHo0rn6jgSd2aerD','Brand-DS-Hero.jpg\r',NULL,NULL,NULL,0),('bp6w439p3w91762e8','wp9982436.webp\r',NULL,NULL,NULL,0),('cgj29a984rp','car4.jpg\r',NULL,NULL,NULL,0),('cn3ocginijuei5oaicu3ienprg2fylhliilssgfceenacrcelie','artificial-intelligence-techno',NULL,NULL,NULL,0),('el4fc0n1mpn29wpao8a5ilf21n96ecd0cc1er5brueir9spa6eea02le6eg1','action-nature-green-smile-wall',NULL,NULL,NULL,0),('feinj7fce41r','resting center.jfif\r',NULL,NULL,NULL,0),('g1a9nje53p42','nat12.jpeg\r',NULL,NULL,NULL,0),('g5olnp6g27o','logo.png\r',NULL,NULL,NULL,0),('g644npe55aj','nat5.jpeg\r',NULL,NULL,NULL,0),('gc930apr50j','car3.jpg\r',NULL,NULL,NULL,0),('gprSHMe4NWar7o5e7l95Wx20imdy18appnaaeploj6','Spider-Man-No-Way-Home-Wallpap',NULL,NULL,NULL,0),('igvpweasrlgwlreahacrl4ocoralnsspea0Tlparannmog7ufll1ogblnnAr','1116570-digital-art-fantasy-ar',NULL,NULL,NULL,0),('iooai3nuonelpdbrwbeglaw1p68c','robotic-welding-auto-plant.web',NULL,NULL,NULL,0),('iurlra0oiaecs7scgi9aoalnld1apnalwjp3qri3apflrpeira1il4epnlee','papers.co-aq01-ai-artificial-i',NULL,NULL,NULL,0),('j40a3opl8pg7p','laptop7.jpg\r',NULL,NULL,NULL,0),('ja2cpg369bk','back2.jpg\r',NULL,NULL,NULL,0),('jSci1pno2379g','Sonic1.jpg\r',NULL,NULL,NULL,0),('jup1ms4g44','mus.jpg\r',NULL,NULL,NULL,0),('jy32ridlsemepivx83op784e3ddg25m1','pexels-dmitry-demidov-3784221.',NULL,NULL,NULL,0),('lxaw5a56rpel6p','wallpaper.txt\r',NULL,NULL,NULL,0),('m148eug5jps1','mus1.jpeg\r',NULL,NULL,NULL,0),('m645jpsg9u2','mus4.jpg\r',NULL,NULL,NULL,0),('mnVg2aihpo5n3onbgiLj3ere','Lamborghini-Veneno.jpg\r',NULL,NULL,NULL,0),('mu0g4j5ps7','mus5.jpg\r',NULL,NULL,NULL,0),('ne1ba90w5p1','nat11.webp\r',NULL,NULL,NULL,0),('npa1289j21g','nat18.jpg\r',NULL,NULL,NULL,0),('o6agl3p8jpp38','laptop6.jpg\r',NULL,NULL,NULL,0),('odwowea2lob2lanrp9dpcp37','laptop9.webp.crdownload\r',NULL,NULL,NULL,0),('ojp8gp6a45l2p','laptop8.jpg\r',NULL,NULL,NULL,0),('OMe77wp1ZA1b59XPQU','QX9O1AZUPM.webp\r',NULL,NULL,NULL,0),('or1wopdymeif3m2relb27c28e516np8kny10so3ei4y6l5wn','empty-floor-modern-city-skylin',NULL,NULL,NULL,0),('p56pj6a5p0olg','laptop5.jpg\r',NULL,NULL,NULL,0),('p764g1aj91n','nat16.jpg\r',NULL,NULL,NULL,0),('p7k7b1c8gj7a','back1.jpg\r',NULL,NULL,NULL,0),('p9WHpPD9Ur3gr54ep6iareaFl3lajlr4rKa','Ferrari-499P-4K-Ultra-HD-Wallp',NULL,NULL,NULL,0),('pb31ne74wa5','nat7.webp\r',NULL,NULL,NULL,0),('pja23g85rc','car.jpg\r',NULL,NULL,NULL,0),('pm3jgs1753u','mus3.jpg\r',NULL,NULL,NULL,0),('pp35jaop24g7l','laptop2.jpg\r',NULL,NULL,NULL,0),('rb8p4c5ae3w0','car5.webp\r',NULL,NULL,NULL,0),('rw2ooi6ry89c5es30n1r7ek4n1en6n7swnidecn0m72wbeeioolwcp','modern-city-wireless-network-c',NULL,NULL,NULL,0),('ry6pagadafoc52pewrccdk46i28eneofj16blrepa2ien0glynu4r8lc4r0w','digital-art-artwork-cyber-cybe',NULL,NULL,NULL,0),('s85mugp656j','mus6.jpg\r',NULL,NULL,NULL,0),('sce18jagoehzkir850sieehdiums3e7n1pnhrspyw4s4','17808-headphones-synthesizer-w',NULL,NULL,NULL,0),('u9m28s2ng6p','mus2.png\r',NULL,NULL,NULL,0),('wlxiohsedS7ogh7a2llhg516ir1agenpeeehsjc0u6e4ppo','Sonic-the-hedgehog-silhouette-',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `wallpaper` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-09 18:54:55
