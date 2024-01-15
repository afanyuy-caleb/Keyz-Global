-- Adminer 4.2.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id_comment` int(10) NOT NULL,
  `id_commenter` int(11) DEFAULT NULL,
  `id_post` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `commented_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `fk_id_commenter` (`id_commenter`),
  KEY `fk_id_post` (`id_post`),
  CONSTRAINT `fk_id_commenter` FOREIGN KEY (`id_commenter`) REFERENCES `user` (`id_user`),
  CONSTRAINT `fk_id_post` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `comment` (`id_comment`, `id_commenter`, `id_post`, `comment`, `commented_at`) VALUES
(1,	1,	1,	'wow',	'2020-10-02 10:25:00'),
(2,	2,	2,	'nice',	'2020-11-04 10:00:00'),
(3,	3,	3,	'great',	'2011-11-04 10:00:00'),
(4,	4,	4,	'super',	'2000-02-04 11:00:00'),
(5,	5,	5,	'keep up',	'2000-02-15 11:40:00');

DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `id_follower` int(20) DEFAULT NULL,
  `id_following` int(20) DEFAULT NULL,
  KEY `f_follow` (`id_follower`),
  KEY `f_following` (`id_following`),
  CONSTRAINT `f_follow` FOREIGN KEY (`id_follower`) REFERENCES `user` (`id_user`),
  CONSTRAINT `f_following` FOREIGN KEY (`id_following`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id_image` varchar(50) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `path` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id_post` int(20) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `content` tinytext DEFAULT NULL,
  PRIMARY KEY (`id_post`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `post` (`id_post`, `creation`, `content`) VALUES
(1,	'2020-10-07 02:00:00',	'lebronking'),
(2,	'2021-11-08 03:00:00',	'currychef'),
(3,	'2004-05-05 01:05:00',	'jokicjoker'),
(4,	'2011-11-08 03:40:00',	'giannisfreak'),
(5,	'2001-02-08 12:12:00',	'goodday');

DROP TABLE IF EXISTS `post_like`;
CREATE TABLE `post_like` (
  `id_post_like` int(10) NOT NULL,
  `id_post` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `reaction` blob DEFAULT NULL,
  PRIMARY KEY (`id_post_like`),
  KEY `fk_id_user` (`id_user`),
  KEY `fk_id_post2` (`id_post`),
  CONSTRAINT `fk_id_post2` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`),
  CONSTRAINT `fk_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id_user` int(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `user` (`id_user`, `name`, `email`, `password`) VALUES
(1,	'lionel',	'lionel@gamil.com',	'100one'),
(2,	'steph',	'steph@gamil.com',	'200two'),
(3,	'ally',	'ally@gamil.com',	'300three'),
(4,	'sam',	'sam@gamil.com',	'400four'),
(5,	'alex',	'alex@gamil.com',	'500five');

-- 2023-12-01 12:03:51
