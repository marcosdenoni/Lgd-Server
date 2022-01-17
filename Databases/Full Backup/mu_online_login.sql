/*
SQLyog Community v13.1.8 (64 bit)
MySQL - 8.0.27 : Database - mu_online_login
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `accounts` */

DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `guid` int unsigned NOT NULL AUTO_INCREMENT,
  `blocked` tinyint unsigned NOT NULL DEFAULT '0',
  `security_code` varchar(255) DEFAULT NULL,
  `golden_channel` bigint NOT NULL,
  `facebook_status` tinyint unsigned NOT NULL DEFAULT '0',
  `secured` tinyint unsigned NOT NULL,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `register` bigint NOT NULL,
  PRIMARY KEY (`guid`),
  UNIQUE KEY `account_UNIQUE` (`account`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

/*Data for the table `accounts` */

insert  into `accounts`(`guid`,`blocked`,`security_code`,`golden_channel`,`facebook_status`,`secured`,`account`,`password`,`email`,`register`) values 
(1,0,'12digitsphra',1500434821,0,0,'user','67eabbf39d1e39ae7fad930244949c85d12b72965795794c9d5b66e8d8595467','user@email.com',20210311111308),
(2,0,'12digitsphra',1500434821,0,0,'user2','ae471a7d82020498f9bab02f476d40e61bbdd985e1d625825a7ed603be8cb498','user2@email.com',20210312134729),
(4,0,'12digitsphra',1500434821,0,0,'test','0abf9601b8ad64ec7c88814ecb7b7ee6da1b54e74aaf6393c4e8ac37a91f2489','test@email.com',20210325202638),
(6,0,'12digitsphra',1500434821,0,0,'mdenoni','2979879df155ce67c8ede105f45f7622f6585c691ee180837c940fb33c5aa9ea','user2@email.com',20211230084902),
(8,0,'12digitsphra',1500434821,0,1,'demon1br','39c1218961f11089589c5c04d4e7ea704516edcaaf7e8b1a676eded1459bac40','igor@email.com',20211230135244);

/*Table structure for table `accounts_allowed` */

DROP TABLE IF EXISTS `accounts_allowed`;

CREATE TABLE `accounts_allowed` (
  `account_id` int unsigned NOT NULL,
  `guid` int unsigned NOT NULL,
  `server` smallint unsigned NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `accounts_allowed` */

/*Table structure for table `accounts_banned` */

DROP TABLE IF EXISTS `accounts_banned`;

CREATE TABLE `accounts_banned` (
  `account_id` int unsigned NOT NULL,
  `guid` int unsigned NOT NULL,
  `unban_date` bigint NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `accounts_banned` */

/*Table structure for table `accounts_disconnect` */

DROP TABLE IF EXISTS `accounts_disconnect`;

CREATE TABLE `accounts_disconnect` (
  `account_id` int unsigned NOT NULL,
  `server` smallint unsigned NOT NULL,
  `masive` tinyint unsigned NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `accounts_disconnect` */

/*Table structure for table `accounts_security` */

DROP TABLE IF EXISTS `accounts_security`;

CREATE TABLE `accounts_security` (
  `account_id` int unsigned NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `disk_serial` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `accounts_security` */

/*Table structure for table `accounts_status` */

DROP TABLE IF EXISTS `accounts_status`;

CREATE TABLE `accounts_status` (
  `account_id` int unsigned NOT NULL,
  `server_group` smallint unsigned NOT NULL,
  `current_server` smallint unsigned NOT NULL,
  `start_server` smallint unsigned NOT NULL,
  `dest_server` smallint NOT NULL,
  `dest_world` smallint NOT NULL,
  `dest_x` smallint NOT NULL,
  `dest_y` smallint NOT NULL,
  `warp_time` int unsigned NOT NULL,
  `warp_auth_1` int unsigned NOT NULL,
  `warp_auth_2` int unsigned NOT NULL,
  `warp_auth_3` int unsigned NOT NULL,
  `warp_auth_4` int unsigned NOT NULL,
  `last_ip` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `last_mac` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `last_online` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `online` tinyint unsigned NOT NULL,
  `disk_serial` int unsigned NOT NULL,
  `type` tinyint unsigned NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `accounts_status` */

insert  into `accounts_status`(`account_id`,`server_group`,`current_server`,`start_server`,`dest_server`,`dest_world`,`dest_x`,`dest_y`,`warp_time`,`warp_auth_1`,`warp_auth_2`,`warp_auth_3`,`warp_auth_4`,`last_ip`,`last_mac`,`last_online`,`online`,`disk_serial`,`type`) values 
(1,0,0,0,-1,-1,-1,-1,0,0,0,0,0,'192.168.1.60','B4:2E:99:C7:D5:A3','2021-03-13 10:08:32',0,1519512988,0),
(2,0,0,0,-1,-1,-1,-1,0,0,0,0,0,'192.168.1.60','B4:2E:99:C7:D5:A3','2021-03-12 13:49:34',0,1519512988,0);

/*Table structure for table `accounts_validation` */

DROP TABLE IF EXISTS `accounts_validation`;

CREATE TABLE `accounts_validation` (
  `account_id` int unsigned NOT NULL,
  `disk_serial` int unsigned NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `accounts_validation` */

insert  into `accounts_validation`(`account_id`,`disk_serial`) values 
(1,1519512988),
(2,1519512988),
(6,309029629),
(8,2163822015);

/*Table structure for table `accounts_warning` */

DROP TABLE IF EXISTS `accounts_warning`;

CREATE TABLE `accounts_warning` (
  `account_id` int unsigned NOT NULL,
  `disk_serial` int unsigned NOT NULL,
  `block_date` bigint NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `accounts_warning` */

/*Table structure for table `block_diskserial` */

DROP TABLE IF EXISTS `block_diskserial`;

CREATE TABLE `block_diskserial` (
  `disk_serial` int unsigned NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`disk_serial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `block_diskserial` */

/*Table structure for table `block_ip` */

DROP TABLE IF EXISTS `block_ip`;

CREATE TABLE `block_ip` (
  `ip` varchar(16) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `block_ip` */

/*Table structure for table `block_mac` */

DROP TABLE IF EXISTS `block_mac`;

CREATE TABLE `block_mac` (
  `mac` varchar(50) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `block_mac` */

/*Table structure for table `character_notification` */

DROP TABLE IF EXISTS `character_notification`;

CREATE TABLE `character_notification` (
  `server_group` smallint unsigned NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `notification_id` varchar(255) DEFAULT NULL,
  `notification_data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`server_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_notification` */

/*Table structure for table `item_serial` */

DROP TABLE IF EXISTS `item_serial`;

CREATE TABLE `item_serial` (
  `server` smallint unsigned NOT NULL,
  `serial` int unsigned NOT NULL,
  `serial_shop` int unsigned NOT NULL,
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `item_serial` */

insert  into `item_serial`(`server`,`serial`,`serial_shop`) values 
(0,2384,15);

/*Table structure for table `master_pc` */

DROP TABLE IF EXISTS `master_pc`;

CREATE TABLE `master_pc` (
  `disk_serial` int unsigned NOT NULL,
  `mac` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`disk_serial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `master_pc` */

/*Table structure for table `server_list` */

DROP TABLE IF EXISTS `server_list`;

CREATE TABLE `server_list` (
  `server` smallint unsigned NOT NULL AUTO_INCREMENT,
  `code` smallint unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `port` smallint unsigned NOT NULL,
  `ip` varchar(16) NOT NULL,
  `flag` tinyint unsigned NOT NULL,
  `online` tinyint unsigned NOT NULL,
  `default_world` smallint unsigned NOT NULL,
  `default_x` smallint NOT NULL,
  `default_y` smallint NOT NULL,
  `type` tinyint unsigned NOT NULL,
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `server_list` */

insert  into `server_list`(`server`,`code`,`name`,`port`,`ip`,`flag`,`online`,`default_world`,`default_x`,`default_y`,`type`) values 
(0,0,'Test',55509,'127.0.0.1',1,1,0,75,75,0);

/*Table structure for table `world_server` */

DROP TABLE IF EXISTS `world_server`;

CREATE TABLE `world_server` (
  `server` smallint unsigned NOT NULL,
  `world` smallint unsigned NOT NULL,
  PRIMARY KEY (`server`,`world`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `world_server` */

insert  into `world_server`(`server`,`world`) values 
(0,0),
(0,1),
(0,2),
(0,3),
(0,4),
(0,5),
(0,6),
(0,7),
(0,8),
(0,9),
(0,10),
(0,11),
(0,12),
(0,13),
(0,14),
(0,15),
(0,16),
(0,17),
(0,18),
(0,19),
(0,20),
(0,21),
(0,22),
(0,23),
(0,24),
(0,25),
(0,26),
(0,27),
(0,28),
(0,29),
(0,30),
(0,31),
(0,32),
(0,33),
(0,34),
(0,35),
(0,36),
(0,37),
(0,38),
(0,39),
(0,40),
(0,41),
(0,42),
(0,43),
(0,44),
(0,45),
(0,46),
(0,47),
(0,48),
(0,49),
(0,50),
(0,51),
(0,52),
(0,53),
(0,54),
(0,55),
(0,56),
(0,57),
(0,58),
(0,59),
(0,60),
(0,61),
(0,62),
(0,63),
(0,64),
(0,65),
(0,66),
(0,67),
(0,68),
(0,69),
(0,70),
(0,71),
(0,72),
(0,73),
(0,74),
(0,75),
(0,76),
(0,77),
(0,78),
(0,79),
(0,80),
(0,81),
(0,82),
(0,83),
(0,84),
(0,85),
(0,86),
(0,87),
(0,88),
(0,89),
(0,90),
(0,91),
(0,92),
(0,93),
(0,94),
(0,95),
(0,96),
(0,97),
(0,98),
(0,99),
(0,100),
(0,101),
(0,102),
(0,103),
(0,104),
(0,105),
(0,106),
(0,107),
(0,108),
(0,109),
(0,110),
(0,111),
(0,112),
(0,113),
(0,114),
(0,115),
(0,116),
(0,117),
(0,118),
(0,119),
(0,120),
(0,121),
(0,122),
(0,123),
(0,124),
(0,125),
(0,126),
(0,127),
(0,128),
(0,129),
(0,130),
(0,131),
(0,132),
(0,133);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
