-- Adminer 4.2.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `real_pass`;
CREATE TABLE `real_pass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(80) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `real_pass` (`id`, `email`, `name`, `password`) VALUES
(1,	'keyz@gmail.com',	'Keyz',	'keyz123'),
(2,	'glory@gmail.com',	'Glory Keyz',	'glory123'),
(3,	'amaz@gmail.com',	'Amazing Grace',	'amaz123'),
(4,	'mag@gmail.com',	'Magenta',	'mag123'),
(5,	'mil@gmail.com',	'Afegenui Milton',	'mil123');

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(2) NOT NULL,
  `name` char(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `role` (`id`, `name`) VALUES
(1,	'Admin'),
(2,	'Manager'),
(3,	'Client');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `pass_hash` varchar(128) DEFAULT NULL,
  `occupation` char(30) DEFAULT NULL,
  `Country` char(30) DEFAULT 'Cameroon',
  `Tel` varchar(25) DEFAULT NULL,
  `Gender` enum('Male','Female') DEFAULT NULL,
  `role_id` int(2) DEFAULT 3,
  `pic` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `Tel` (`Tel`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `user` (`id`, `name`, `email`, `pass_hash`, `occupation`, `Country`, `Tel`, `Gender`, `role_id`, `pic`) VALUES
(1,	'Afanyuy Caleb',	'afanyuys@gmail.com',	'$2y$10$pFSOnmOM4RqmiUf3/44Y3ukVUdPgV4/mre.EL.gaJ/jUK1iSg5Gvu',	'Full stack Mobile Developer',	'Cameroon',	'+237 682980313',	'Male',	1,	'86e4ee73c94f40b19ff3901254624375.jpg'),
(3,	'Keyz',	'keyz@gmail.com',	'$2y$10$7GJG92fi/bRXk6w95qj3CeTPr7urfu57iFwlb5S64.cOprWmFb2bC',	'developer',	'Germany',	'+2234 7678',	'Male',	3,	NULL),
(4,	'Glory Keyz',	'glory@gmail.com',	'$2y$10$Ew.N8hKmenN0vOAOu.1qDOKvrTDJNSW.z9Hji/QUVK3d/K4RBWom6',	'Web designer',	'Congo',	'234567',	'Female',	3,	'1201.jpg'),
(9,	'Amazing Grace',	'amaz@gmail.com',	'$2y$10$iFjC/v5P6Mvyx/lhu74M5eYeO6D7exd1cN3/pebqS.4FAMIT7KZtO',	'Cook',	'Maimi',	'+347 542009',	'Female',	3,	'1201.jpg'),
(10,	'Magenta',	'mag@gmail.com',	'$2y$10$XAmnXRsjpXQU6gQopVT/WOBZTAOmlq1ndxcf85fq7.YQU1KgdmehW',	'Genator',	'England',	'8760912',	'Male',	3,	'BJCO6D1ZHI.jpg'),
(11,	'Afegenui Milton',	'mil@gmail.com',	'$2y$10$Dp/yIRibclq/kLtOyzqX0e9xuD8R/5gm88KvXTpEcUK48Fnp9EIRW',	'Game Developer',	'Spain',	'+098 16724',	'Male',	3,	'1668492758_1(1).jpg');

-- 2023-12-22 10:01:16
