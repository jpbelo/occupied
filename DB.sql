# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.20)
# Database: occupied
# Generation Time: 2019-07-10 00:02:13 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table bookings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bookings`;

CREATE TABLE `bookings` (
  `id` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `room_id` int(3) unsigned zerofill DEFAULT NULL,
  `date` varchar(8) DEFAULT NULL,
  `weekday` varchar(100) DEFAULT NULL,
  `repeats` varchar(255) DEFAULT NULL,
  `time_start` time DEFAULT NULL,
  `time_end` time DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `booked_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;

INSERT INTO `bookings` (`id`, `room_id`, `date`, `weekday`, `repeats`, `time_start`, `time_end`, `title`, `description`, `booked_by`)
VALUES
	(001,001,'20190709','Tuesday','ALL','10:00:00','10:20:00','Waitrose Standup','Daily standup for WTR - FE',NULL),
	(002,001,'20190703','Wednesday','WEEK','10:00:00','11:00:00','Waitrose Scrum','Refinement OR Planning',NULL),
	(003,001,'20190703','Wednesday','WEEK','14:00:00','16:00:00','Waitrose Scrum','Refinement OR Planning',NULL);

/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table rooms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rooms`;

CREATE TABLE `rooms` (
  `id` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `room_code` varchar(11) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `conference` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;

INSERT INTO `rooms` (`id`, `name`, `room_code`, `seats`, `conference`)
VALUES
	(001,'Waitrose','119',8,1),
	(002,'106','106',6,0),
	(003,'203 - Small','203_A',3,0),
	(004,'203 - Big','203_B',10,1),
	(005,'Bike','408',10,0),
	(006,'Type','409_A',8,1),
	(007,'Poker','409_B',6,0);

/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
