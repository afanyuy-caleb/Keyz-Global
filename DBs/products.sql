-- Adminer 4.2.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `ai_techs`;
CREATE TABLE `ai_techs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `automobiles`;
CREATE TABLE `automobiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `cartoons`;
CREATE TABLE `cartoons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `picture` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `category` (`id`, `name`, `description`, `picture`) VALUES
(1,	'Fruit Store',	'Get high quality, Natural and fresh fruits at very affordable and minimal prices.',	'Fruits/Orange.jpg'),
(2,	'Action Room',	'Feel the warmth of relaxation with our high resolution and just in time Action movies.',	'movie-images/jumanji.jpg'),
(3,	'Cartoons',	'Time to be childish for once. Entertaining cartoons and Animes for both kids and adults at your disposal.',	'movie-images/cartoons/Moana.webp'),
(4,	'Automobiles',	'Dive into Motion with our Super fast and Powerful automobiles. The prices will shock you',	'Auto/car6.jpg'),
(5,	'Soul Lifting',	'Acquire spiritual Wisdom and Joy for your spirit from here',	'Soul-lifting/Apost_Josh_thumb.jpg'),
(6,	'Shoes',	'We provide you with Quality, strong, durable and just your-size shoes at extremely affordable prices',	'shoes/High_Nike.jpg'),
(7,	'Musicals',	'Enjoy comfort and rest for your soul, with the quality sound and feel that these bring',	'Instruments/accordion.jpg'),
(8,	'Fabric Designs',	'Get quality and just in-size design clothes at very affordable prices',	'Design/des14.jpg'),
(9,	'Wallpapers',	'Perfect Wallpapers of all categories for all your electronic Gadgets',	'Wallpapers/nat14.jpg'),
(10,	'Electronics',	'Assure the latest and most refined gadgets of your choice at super promo prices',	'elec gadgets/wireless phone charger.webp'),
(11,	'AI Tech',	'Get day to day updates on the evolving AI world and technology as a whole',	'AI/AI16.jpg');

DROP TABLE IF EXISTS `electronics`;
CREATE TABLE `electronics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pd_name_index` (`pd_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `electronics` (`id`, `pd_name`, `price`, `discount`, `image`) VALUES
(1,	'Headphone ',	6.79,	9.09,	'headphone.webp\r'),
(2,	'iphone 13 ',	118,	221,	'iphone 13.webp\r'),
(3,	'Acer slim laptop ',	70,	86,	'Acer slim laptop.jpg\r'),
(4,	'1TB_HDD ',	25,	32,	'1TB_HDD.webp\r'),
(5,	'Iphone11 New',	47,	53.26,	'cool iphone.webp\r'),
(6,	'23inches_slim_monitor',	15,	23,	'23inches_slim_monitor.webp\r'),
(7,	'smart Huawei ',	56,	64,	'smart Huawei.webp\r'),
(8,	'Apple Airpods',	23,	34,	'Apple Airpods.jpg\r'),
(9,	'DDR RAM ',	7.79,	9.08,	'DDR RAM.webp\r'),
(10,	'Macbook pro 17 ',	340,	500,	'tech17.webp\r'),
(11,	'Light_bulbs ',	22,	30,	'tech26.webp\r'),
(12,	'headphone ',	34,	50,	'headphone4.webp\r'),
(13,	'S30 mobile phone ',	145,	160,	'S30 mobile phone.webp\r'),
(14,	'Wireless Charger ',	102,	115,	'wireless phone charger.webp\r'),
(15,	'samsung_pad ',	32,	42,	'samsung_pad.webp\r'),
(16,	'Iphone 14 pro max',	90.12,	120.05,	'14 pro max.webp\r'),
(17,	'Laptop ',	230,	267,	'laptop1.jpg\r'),
(18,	'Iphone 13 pro max ',	230.22,	309,	'iphone 13 pro max.webp\r'),
(19,	'Watch ',	32,	67,	'watch2.jpg\r'),
(20,	'Playstation3 ',	89,	100,	'Playstation3.jpg\r'),
(21,	'Lenovo Legion ',	132,	150,	'Lenovo Legion.webp\r'),
(22,	'stand_for_company ',	123,	143,	'stand_for_company.webp\r'),
(23,	'hp gaming pc ',	115,	122.89,	'hp gaming pc.webp\r'),
(24,	'Iphone 14 pro',	97,	105,	'i14_pro.webp\r'),
(25,	'5G_modem',	12.45,	15.89,	'5G_modem.webp\r'),
(26,	'ssd ',	45,	80,	'ssd.jpg\r'),
(27,	'k2 mobile ',	11.87,	23.86,	'k2 mobile.webp\r'),
(28,	'2.2inch mobile phone',	78,	90,	'2.2inch mobile phone.webp\r'),
(29,	'Chordless_slim_mouse',	12.88,	17.92,	'chordless_slim_mouse.webp\r'),
(30,	'iPad 9th Gen ',	78.36,	90.25,	'iPad 9th Gen.jpg\r'),
(31,	'laptop_intelcore ',	207.16,	220,	'laptop_intelcore.webp\r'),
(32,	'webcam ',	43.07,	60.88,	'webcam.jpg\r'),
(33,	'smart watch ',	75,	90,	'smart watch.webp\r'),
(34,	'Telescope ',	90,	120,	'telescope.jpg\r'),
(35,	'Electric heater ',	115,	130.5,	'wheater.jpeg\r'),
(36,	'heart tied Headphone ',	12,	15,	'headphones.jpg\r'),
(37,	'VGA converter',	15,	22,	'VGA converter.webp'),
(38,	'Lenovo headphones ',	32,	45,	'Lenovoheadphones.webp\r'),
(39,	'Flat Screen ',	32,	54,	'flat_Screen.jpg\r'),
(40,	'transparent screen ',	112,	150,	'tech23.webp\r'),
(41,	'S23 ultra ',	112,	125,	'S23 ultra.webp\r'),
(42,	'LCD monitor ',	45,	67,	'LCDmonitor.webp\r'),
(43,	'4G-5G router',	9.8,	15,	'4G-5G router.webp\r'),
(44,	'Curved_monitor ',	76,	90,	'curved_monitor.webp\r'),
(45,	'Sandisk MC ',	23,	45.67,	'Sandisk MC.jpg\r'),
(46,	'TX9gaming_laptop ',	320,	400,	'TX9gaming_laptop.webp\r'),
(47,	'4G_lite router',	10.67,	14.23,	'4G_lite router.webp\r'),
(48,	'Redmi9 ',	74.32,	90.5,	'Redmi9.webp\r'),
(49,	'4G_modem',	5.89,	7.23,	'4G_modem.webp\r'),
(50,	'Samsung m7 monitor ',	90,	120,	'Samsung m& monitor.webp\r'),
(51,	'Laser printer ',	67,	90,	'printer.webp\r'),
(52,	'Airpod Super ',	15,	19,	'airport1.webp\r'),
(53,	'M7 smart watch ',	102,	115,	'M7 smart watch.webp\r'),
(54,	'P50 pro Android ',	90,	120,	'P50 pro Android.webp'),
(55,	'macboook pro ',	450,	515,	'macbook pro.jpg'),
(56,	'Smart Watch ',	23.46,	32,	'Applewatch.jpg\r'),
(57,	'Ipro cell phone ',	12.22,	32.54,	'Ipro cell phone.webp\r'),
(58,	'corei7 super PC ',	102,	115,	'corei7PC.webp\r'),
(59,	'wireless_powerbank ',	62.65,	78,	'wireless_powerbank.webp\r'),
(60,	'Mi 10T phone ',	56,	75,	'phone.jpg\r'),
(61,	'OneGx_proPC ',	112,	121,	'OneGx_proPC.webp\r'),
(62,	'Pure water filter ',	94,	112,	'wfilter2.jpeg\r'),
(63,	'Gaming Keyboard ',	17.73,	25.33,	'Keyboard.jpg\r'),
(64,	'Xiaomi pad ',	95.25,	105.65,	'Xiaomi pad.webp\r'),
(65,	'Laptop ',	320.12,	414.3,	'laptop4.jpg\r'),
(66,	'Headset ',	19,	24,	'Headset.jpg\r'),
(67,	'Macbook style ',	215,	275,	'tech21.jpeg\r'),
(68,	'Laptop ',	135.45,	152.67,	'laptop2.jpg\r'),
(69,	'Cool airpod',	16,	21,	'cool airport.webp\r'),
(70,	'Curved_monitor ',	66.76,	72.03,	'curved_monitor2.webp\r'),
(71,	'Water filter ',	68,	90,	'wfilter1.jpeg\r'),
(72,	'Macbook pro ',	230,	315,	'tech11.webp\r'),
(73,	'wireless_keyboard ',	55,	78,	'wireless_keyboard.webp\r'),
(74,	'Watch ',	24,	50,	'watch1.jpg\r'),
(75,	'hp_laserjet_printer ',	67,	90,	'hp_laserjet_printer.webp\r'),
(76,	'Apple watch ',	22,	43,	'apple watch.webp\r'),
(77,	'Headphone ',	16.45,	32.3,	'headphone.webp\r'),
(78,	'corei7gamer ',	56,	72,	'corei7gamer.webp\r'),
(79,	'Virtual glasses ',	12.56,	15,	'606fb78176a92b925db7eb9d9e394337.jpg\r'),
(80,	'SSD_Lenovo_notebook ',	120,	145,	'SSD_Lenovo_notebook.webp\r'),
(81,	'Macbook love ',	300,	350,	'tech29.webp\r'),
(82,	'500GB_hDD',	23,	32,	'500GB_hDD.webp\r'),
(83,	'Barcode_scanner ',	33.56,	43,	'barcode_scanner.webp\r'),
(84,	'wireless_sunglasses ',	43.24,	50.75,	'wireless_sunglasses.webp\r'),
(85,	'airpots ',	23,	50,	'wireless_airports.jpg\r'),
(86,	'mini pbs ',	86,	97,	'mini.jpg\r'),
(87,	'wireless_mouse ',	21,	30,	'wireless_mouse.webp\r'),
(88,	'S23_ultra ',	124,	130,	'S23_ultra.webp\r'),
(89,	'webcam ',	35,	60,	'webcam.jpeg\r'),
(90,	'Controller',	12,	15,	'controller.png\r'),
(91,	'mobile stand ',	15,	27,	'mobile stand.webp\r'),
(92,	'Smart watch ',	35.22,	0,	'watch4.jpg'),
(93,	'ssd2 ',	24,	50,	'ssd2.webp\r'),
(94,	'Laptop ',	106,	112,	'laptop3.jpg\r'),
(95,	'Acer_aspire laptop ',	112,	120,	'acer_aspire.jpg\r'),
(96,	'Headphone',	23.46,	30.77,	'headphone2.webp\r'),
(97,	'ipad ',	45.6,	78.32,	'ipad.webp\r'),
(98,	'LCD tablet ',	56.98,	75,	'LCD tablet.webp\r'),
(99,	'Samsung monitor ',	75,	90,	'Samsung monitor.webp\r'),
(100,	'S24 ultra ',	130,	152,	's24 ultra.webp\r'),
(101,	'Smart watch ',	34,	50,	'watch3.jpg\r'),
(102,	'mobile ',	65.22,	72,	'mobile.webp\r'),
(103,	'touch screen ',	123,	140,	'touch screen.webp\r'),
(104,	'Transparent Nokia',	115,	45,	'1878da40de5bf45741bd086a961c3d4b.jpg\r'),
(105,	'Flash drive ',	13.28,	16.78,	'Flash.webp\r'),
(106,	'64gbpendrive',	20,	23,	'64gbpendrive.webp\r'),
(107,	'solar power bank ',	43,	57,	'solar power bank.webp\r'),
(108,	'SSD ',	47,	80,	'SSD.webp');

DROP TABLE IF EXISTS `fabrics`;
CREATE TABLE `fabrics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `fruits`;
CREATE TABLE `fruits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `musicals`;
CREATE TABLE `musicals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `shoes`;
CREATE TABLE `shoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `shoes` (`id`, `pd_name`, `price`, `discount`, `image`) VALUES
(1,	'Coolmax ',	23.67,	37.89,	'Coolmax.jpg\r'),
(2,	'Neon Blue Nike',	31.66,	45.09,	'DarkNike.jpg\r'),
(3,	'Dark_Nike',	47.87,	60,	'Dark_Nike.jpg\r'),
(4,	'Godas',	20.02,	43,	'Godas.jpg\r'),
(5,	'High_Nike',	39,	53,	'High_Nike.jpg\r'),
(6,	'Mcqueen ',	52,	67,	'Mcqueen.jpg\r'),
(7,	'Low Nike ',	26,	33,	'Shoe1.jpg\r'),
(8,	'Blue Nike',	51,	70,	'shoe10.jpg\r'),
(9,	'Dior ',	56,	67,	'shoe11.jpg\r'),
(10,	'Vuitton Sandals ',	25.32,	34,	'shoe12.jpg\r'),
(11,	'Givenchy Black ',	67,	90,	'shoe13.jpg\r'),
(12,	'Blank Nike ',	38,	43,	'shoe14.jpg\r'),
(13,	'Dark Mcqueen',	65,	82,	'shoe15.jpg\r'),
(14,	'Ladies Herm ',	23,	40,	'shoe16.jpg\r'),
(15,	'Blue Naked Wolfe',	50,	70,	'shoe17.jpg\r'),
(16,	'Green Bape',	43,	56,	'shoe2.jpg\r'),
(17,	'Vuitton Black',	35,	50,	'shoe3.jpg\r'),
(18,	'Alexander Mcqueen',	56,	70,	'shoe4.jpg\r'),
(19,	'Black Wolfe ',	47,	52,	'shoe5.jpg\r'),
(20,	'Green Nike',	31.27,	40,	'shoe6.jpg\r'),
(21,	'Low blue ',	27,	33,	'shoe7.jpg\r'),
(22,	'Naked Wolfe(Black)',	67,	75,	'shoe8.jpg\r'),
(23,	'Poppins ',	37,	43,	'shoe9.jpg\r'),
(24,	'Glassy Flow ',	42,	57,	'Supershoes.jpg\r'),
(25,	'Air Nike ',	57,	65,	'Super_spor.jpg\r'),
(26,	'Top-up',	40,	46.86,	'topup.jpg\r');

DROP TABLE IF EXISTS `soul`;
CREATE TABLE `soul` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `trainings`;
CREATE TABLE `trainings` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `title` char(30) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `icon` (`icon`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `trainings` (`id`, `title`, `icon`, `description`) VALUES
(1,	'Web Development',	'bx bx-code-alt',	'Become a professional frontend and backend Web Developer from our complete web dev\'t courses with full certifications and job authentication!!'),
(7,	'Digital Marketing',	'bx bx-bar-chart-alt',	'Grow up your potential to becoming a grand digital marketer today!!'),
(8,	'Robotics',	'bx bx-chip',	'Become a high level Robotics Engineer from our complete robotics courses with full certifications and job authentication services!!'),
(9,	'Programming',	'bx bx-code-curly',	'Develop your skills in all programming languages(C, C++, Java, etc) with our complete programming languages tutorials!!'),
(10,	'Sql and Database',	'bx bx-data',	'Become a Database Administrator today, via our step by step approach to databases and Database lessons!!'),
(11,	'Graphics Design',	'bx bx-paint',	'Boost up your Graphics designing skills or take off from scratch, as we take you step by step and become a remarkable Graphics designer!!');

DROP TABLE IF EXISTS `wallpaper`;
CREATE TABLE `wallpaper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pd_name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- 2023-12-22 10:01:41
