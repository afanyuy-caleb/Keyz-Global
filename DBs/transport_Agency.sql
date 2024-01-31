-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.2.3-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for travel
CREATE DATABASE IF NOT EXISTS `travel` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `travel`;

-- Dumping structure for table travel.cashier
CREATE TABLE IF NOT EXISTS `cashier` (
  `cash_Id` varchar(10) NOT NULL,
  `cash_name` varchar(15) DEFAULT NULL,
  `cash_Sname` varchar(25) DEFAULT NULL,
  `Cash_Age` int(4) DEFAULT NULL,
  `Password` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`cash_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table travel.driver_info
CREATE TABLE IF NOT EXISTS `driver_info` (
  `Driv_Lic_Nb` varchar(15) NOT NULL,
  `Driv_name` varchar(15) DEFAULT NULL,
  `Driv_Sname` varchar(25) DEFAULT NULL,
  `Driv_Age` int(4) DEFAULT NULL,
  PRIMARY KEY (`Driv_Lic_Nb`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table travel.packet_info
CREATE TABLE IF NOT EXISTS `packet_info` (
  `Pk_Id` varchar(10) NOT NULL,
  `Pk_content` varchar(15) DEFAULT NULL,
  `Del_price` int(11) DEFAULT NULL,
  `Del_date` date DEFAULT NULL,
  `Arrival_date` date DEFAULT NULL,
  `destination` varchar(15) DEFAULT NULL,
  `Pass_id` int(11) DEFAULT NULL,
  `Serial_Nb` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id`),
  KEY `Pass_id` (`Pass_id`),
  KEY `Serial_Nb` (`Serial_Nb`),
  CONSTRAINT `packet_info_ibfk_1` FOREIGN KEY (`Pass_id`) REFERENCES `passenger` (`Pass_Id`),
  CONSTRAINT `packet_info_ibfk_2` FOREIGN KEY (`Serial_Nb`) REFERENCES `trans_means` (`Serial_Nb`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table travel.passenger
CREATE TABLE IF NOT EXISTS `passenger` (
  `Pass_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Pass_Name` varchar(20) DEFAULT NULL,
  `Pass_Sname` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  PRIMARY KEY (`Pass_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table travel.ticket_info
CREATE TABLE IF NOT EXISTS `ticket_info` (
  `tick_Nb` int(2) NOT NULL AUTO_INCREMENT,
  `tick_price` int(11) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `Destination` varchar(20) DEFAULT NULL,
  `Pass_id` int(11) DEFAULT NULL,
  `Serial_Nb` varchar(15) DEFAULT NULL,
  `Cash_Id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`tick_Nb`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table travel.trans_means
CREATE TABLE IF NOT EXISTS `trans_means` (
  `Serial_Nb` varchar(12) NOT NULL,
  `Category` varchar(15) DEFAULT NULL,
  `capacity` int(5) DEFAULT NULL,
  `Driv_Lic_Nb` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Serial_Nb`),
  KEY `Driv_Lic_Nb` (`Driv_Lic_Nb`),
  CONSTRAINT `trans_means_ibfk_1` FOREIGN KEY (`Driv_Lic_Nb`) REFERENCES `driver_info` (`Driv_Lic_Nb`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
