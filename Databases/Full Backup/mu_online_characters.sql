/*
SQLyog Community v13.1.8 (64 bit)
MySQL - 8.0.27 : Database - mu_online_characters
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `account_buff` */

DROP TABLE IF EXISTS `account_buff`;

CREATE TABLE `account_buff` (
  `account_id` int unsigned NOT NULL,
  `buff` smallint unsigned NOT NULL,
  `effect_1` tinyint unsigned NOT NULL,
  `value_1` int NOT NULL,
  `effect_2` tinyint unsigned NOT NULL,
  `value_2` int NOT NULL,
  `effect_3` tinyint unsigned NOT NULL,
  `value_3` int NOT NULL,
  `duration` bigint NOT NULL,
  `flags` tinyint unsigned NOT NULL,
  PRIMARY KEY (`account_id`,`buff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `account_buff` */

/*Table structure for table `account_cash_shop_gift` */

DROP TABLE IF EXISTS `account_cash_shop_gift`;

CREATE TABLE `account_cash_shop_gift` (
  `account_id` int unsigned NOT NULL,
  `product` int unsigned NOT NULL,
  `option` int unsigned NOT NULL,
  `serial` int unsigned NOT NULL,
  `serial_cash_shop` int unsigned NOT NULL,
  `server` smallint unsigned NOT NULL,
  `date` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `account_cash_shop_gift` */

/*Table structure for table `account_cash_shop_item` */

DROP TABLE IF EXISTS `account_cash_shop_item`;

CREATE TABLE `account_cash_shop_item` (
  `account_id` int unsigned NOT NULL,
  `product` int unsigned NOT NULL,
  `option` int unsigned NOT NULL,
  `serial` int unsigned NOT NULL,
  `serial_cash_shop` int unsigned NOT NULL,
  `server` smallint unsigned NOT NULL,
  `gift` tinyint unsigned NOT NULL,
  `date` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `account_cash_shop_item` */

/*Table structure for table `account_data` */

DROP TABLE IF EXISTS `account_data`;

CREATE TABLE `account_data` (
  `account_id` int unsigned NOT NULL,
  `vip_status` int NOT NULL,
  `vip_duration` bigint NOT NULL,
  `expanded_warehouse` tinyint unsigned NOT NULL,
  `expanded_warehouse_time` bigint NOT NULL,
  `special_character` smallint unsigned NOT NULL,
  `credits` int unsigned NOT NULL,
  `web_credits` int unsigned NOT NULL,
  `current_character` int unsigned NOT NULL,
  `current_type` tinyint unsigned NOT NULL,
  `current_ip` varchar(16) DEFAULT NULL,
  `current_mac` varchar(50) DEFAULT NULL,
  `current_diskserial` int unsigned NOT NULL,
  `current_server` smallint unsigned NOT NULL,
  `cash_shop_discount_wc` tinyint unsigned NOT NULL,
  `cash_shop_discount_gp` tinyint unsigned NOT NULL,
  `cash_shop_discount_date` bigint NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `account_data` */

insert  into `account_data`(`account_id`,`vip_status`,`vip_duration`,`expanded_warehouse`,`expanded_warehouse_time`,`special_character`,`credits`,`web_credits`,`current_character`,`current_type`,`current_ip`,`current_mac`,`current_diskserial`,`current_server`,`cash_shop_discount_wc`,`cash_shop_discount_gp`,`cash_shop_discount_date`) values 
(1,-1,0,1,0,0,98222,0,5,0,'192.168.0.193','60:45:CB:9B:2E:50',309029629,0,0,0,0),
(2,-1,0,0,0,0,0,0,6,0,'192.168.1.60','B4:2E:99:C7:D5:A3',1519512988,0,0,0,0);

/*Table structure for table `account_warehouse` */

DROP TABLE IF EXISTS `account_warehouse`;

CREATE TABLE `account_warehouse` (
  `account_id` int unsigned NOT NULL,
  `money` int unsigned NOT NULL,
  `password` smallint unsigned NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `account_warehouse` */

insert  into `account_warehouse`(`account_id`,`money`,`password`) values 
(1,0,0),
(2,0,0);

/*Table structure for table `arka_war_data` */

DROP TABLE IF EXISTS `arka_war_data`;

CREATE TABLE `arka_war_data` (
  `id` tinyint unsigned NOT NULL,
  `guild` int unsigned NOT NULL,
  `attribute` tinyint unsigned NOT NULL,
  PRIMARY KEY (`id`,`guild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `arka_war_data` */

/*Table structure for table `castle_siege_data` */

DROP TABLE IF EXISTS `castle_siege_data`;

CREATE TABLE `castle_siege_data` (
  `owner` int unsigned NOT NULL,
  `status` tinyint unsigned NOT NULL,
  `tax_hunt` int NOT NULL,
  `tax_chaos` tinyint unsigned NOT NULL,
  `tax_store` tinyint unsigned NOT NULL,
  `hunt_allowed` tinyint NOT NULL,
  `money` bigint unsigned NOT NULL,
  PRIMARY KEY (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `castle_siege_data` */

insert  into `castle_siege_data`(`owner`,`status`,`tax_hunt`,`tax_chaos`,`tax_store`,`hunt_allowed`,`money`) values 
(0,0,0,0,0,0,0);

/*Table structure for table `castle_siege_guild` */

DROP TABLE IF EXISTS `castle_siege_guild`;

CREATE TABLE `castle_siege_guild` (
  `guild` int unsigned NOT NULL,
  `side` tinyint unsigned NOT NULL,
  `score` int NOT NULL,
  PRIMARY KEY (`guild`,`side`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `castle_siege_guild` */

/*Table structure for table `castle_siege_npc` */

DROP TABLE IF EXISTS `castle_siege_npc`;

CREATE TABLE `castle_siege_npc` (
  `npc` smallint unsigned NOT NULL,
  `id` tinyint unsigned NOT NULL,
  `defense_level` tinyint unsigned NOT NULL,
  `regen_level` tinyint unsigned NOT NULL,
  `life_level` tinyint unsigned NOT NULL,
  `life` int NOT NULL,
  PRIMARY KEY (`npc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `castle_siege_npc` */

/*Table structure for table `castle_siege_registered_guild` */

DROP TABLE IF EXISTS `castle_siege_registered_guild`;

CREATE TABLE `castle_siege_registered_guild` (
  `guild` int unsigned NOT NULL,
  `marks` int unsigned NOT NULL,
  `register_id` int unsigned NOT NULL,
  `level` smallint unsigned NOT NULL,
  `level_master` smallint unsigned NOT NULL,
  PRIMARY KEY (`guild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `castle_siege_registered_guild` */

/*Table structure for table `chaos_castle_survival_hall_of_fame` */

DROP TABLE IF EXISTS `chaos_castle_survival_hall_of_fame`;

CREATE TABLE `chaos_castle_survival_hall_of_fame` (
  `char_id` int unsigned NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `score` int NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `chaos_castle_survival_hall_of_fame` */

/*Table structure for table `chaos_castle_survival_ranking` */

DROP TABLE IF EXISTS `chaos_castle_survival_ranking`;

CREATE TABLE `chaos_castle_survival_ranking` (
  `char_id` int unsigned NOT NULL,
  `score` bigint NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `chaos_castle_survival_ranking` */

/*Table structure for table `character_buff` */

DROP TABLE IF EXISTS `character_buff`;

CREATE TABLE `character_buff` (
  `char_id` int unsigned NOT NULL,
  `buff` smallint unsigned NOT NULL,
  `effect_1` tinyint unsigned NOT NULL,
  `value_1` int NOT NULL,
  `effect_2` tinyint unsigned NOT NULL,
  `value_2` int NOT NULL,
  `effect_3` tinyint unsigned NOT NULL,
  `value_3` int NOT NULL,
  `duration` bigint NOT NULL,
  `flags` tinyint unsigned NOT NULL,
  PRIMARY KEY (`char_id`,`buff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_buff` */

/*Table structure for table `character_chat_block` */

DROP TABLE IF EXISTS `character_chat_block`;

CREATE TABLE `character_chat_block` (
  `char_id` int unsigned NOT NULL,
  `blocked` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_chat_block` */

/*Table structure for table `character_date` */

DROP TABLE IF EXISTS `character_date`;

CREATE TABLE `character_date` (
  `char_id` int unsigned NOT NULL,
  `id` int unsigned NOT NULL,
  `date` bigint NOT NULL,
  PRIMARY KEY (`char_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_date` */

insert  into `character_date`(`char_id`,`id`,`date`) values 
(5,0,1640214493);

/*Table structure for table `character_deleted` */

DROP TABLE IF EXISTS `character_deleted`;

CREATE TABLE `character_deleted` (
  `account_id` int unsigned NOT NULL,
  `char_id` int unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`account_id`,`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_deleted` */

insert  into `character_deleted`(`account_id`,`char_id`,`name`) values 
(1,1,'test'),
(1,2,'test2'),
(1,3,'test3');

/*Table structure for table `character_event_count` */

DROP TABLE IF EXISTS `character_event_count`;

CREATE TABLE `character_event_count` (
  `char_id` int unsigned NOT NULL,
  `event_id` tinyint unsigned NOT NULL,
  `count` tinyint unsigned NOT NULL,
  `day` tinyint unsigned NOT NULL,
  PRIMARY KEY (`char_id`,`event_id`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_event_count` */

/*Table structure for table `character_friend` */

DROP TABLE IF EXISTS `character_friend`;

CREATE TABLE `character_friend` (
  `char_id` int unsigned NOT NULL,
  `friend_name` varchar(255) NOT NULL,
  PRIMARY KEY (`char_id`,`friend_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_friend` */

/*Table structure for table `character_gameoption` */

DROP TABLE IF EXISTS `character_gameoption`;

CREATE TABLE `character_gameoption` (
  `char_id` int unsigned NOT NULL,
  `game_option` tinyint unsigned NOT NULL,
  `chat_window` tinyint unsigned NOT NULL,
  `q_key` tinyint unsigned NOT NULL,
  `w_key` tinyint unsigned NOT NULL,
  `e_key` tinyint unsigned NOT NULL,
  `r_key` tinyint unsigned NOT NULL,
  `qwer_level` int NOT NULL,
  `skill_bind_0` smallint unsigned NOT NULL,
  `skill_bind_1` smallint unsigned NOT NULL,
  `skill_bind_2` smallint unsigned NOT NULL,
  `skill_bind_3` smallint unsigned NOT NULL,
  `skill_bind_4` smallint unsigned NOT NULL,
  `skill_bind_5` smallint unsigned NOT NULL,
  `skill_bind_6` smallint unsigned NOT NULL,
  `skill_bind_7` smallint unsigned NOT NULL,
  `skill_bind_8` smallint unsigned NOT NULL,
  `skill_bind_9` smallint unsigned NOT NULL,
  `extra_data` bigint unsigned NOT NULL,
  `change_skin` tinyint unsigned NOT NULL,
  `additional_options` smallint unsigned NOT NULL,
  `button_bind_1` tinyint unsigned NOT NULL,
  `button_bind_2` tinyint unsigned NOT NULL,
  `button_bind_3` tinyint unsigned NOT NULL,
  `button_bind_4` tinyint unsigned NOT NULL,
  `button_bind_5` tinyint unsigned NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_gameoption` */

insert  into `character_gameoption`(`char_id`,`game_option`,`chat_window`,`q_key`,`w_key`,`e_key`,`r_key`,`qwer_level`,`skill_bind_0`,`skill_bind_1`,`skill_bind_2`,`skill_bind_3`,`skill_bind_4`,`skill_bind_5`,`skill_bind_6`,`skill_bind_7`,`skill_bind_8`,`skill_bind_9`,`extra_data`,`change_skin`,`additional_options`,`button_bind_1`,`button_bind_2`,`button_bind_3`,`button_bind_4`,`button_bind_5`) values 
(0,0,0,3,3,3,3,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,1,778,0,10,11,8,1),
(4,29,0,255,255,255,255,0,65535,22,42,41,43,65535,65535,65535,65535,65535,0,1,778,0,10,11,8,1),
(5,1,0,255,255,255,255,0,65535,9,14,65535,65535,65535,65535,65535,65535,65535,0,1,778,0,10,11,8,1),
(6,0,0,255,255,255,255,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,1,778,0,10,11,8,1),
(7,0,0,3,3,3,3,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,1,778,0,10,11,8,1),
(8,0,0,3,3,3,3,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,1,778,0,10,11,8,1),
(9,0,0,3,3,3,3,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,1,778,0,10,11,8,1);

/*Table structure for table `character_gens` */

DROP TABLE IF EXISTS `character_gens`;

CREATE TABLE `character_gens` (
  `char_id` int unsigned NOT NULL,
  `family` tinyint unsigned NOT NULL,
  `level` tinyint unsigned NOT NULL,
  `contribution` int NOT NULL,
  `reward_date` bigint NOT NULL,
  `join_date` bigint NOT NULL,
  `left_date` bigint NOT NULL,
  PRIMARY KEY (`char_id`,`family`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_gens` */

insert  into `character_gens`(`char_id`,`family`,`level`,`contribution`,`reward_date`,`join_date`,`left_date`) values 
(4,0,14,0,0,0,0),
(5,1,14,0,0,1640623105,0),
(6,0,14,0,0,0,0),
(7,0,14,0,0,0,0),
(8,0,14,0,0,0,0),
(9,0,14,0,0,0,0),
(10,0,14,0,0,0,0);

/*Table structure for table `character_gens_kill` */

DROP TABLE IF EXISTS `character_gens_kill`;

CREATE TABLE `character_gens_kill` (
  `char_id` int unsigned NOT NULL,
  `killed_id` int unsigned NOT NULL,
  `count` int unsigned NOT NULL,
  `date` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_gens_kill` */

/*Table structure for table `character_helper` */

DROP TABLE IF EXISTS `character_helper`;

CREATE TABLE `character_helper` (
  `char_id` int unsigned NOT NULL,
  `option_flag_1` int unsigned NOT NULL,
  `option_flag_2` int unsigned NOT NULL,
  `item_pick_flag` tinyint unsigned NOT NULL,
  `hunting_range` tinyint unsigned NOT NULL,
  `item_pick_range` tinyint unsigned NOT NULL,
  `distance` smallint unsigned NOT NULL,
  `attack_skill_1` smallint unsigned NOT NULL,
  `attack_sec_skill_1` smallint unsigned NOT NULL,
  `attack_sec_skill_2` smallint unsigned NOT NULL,
  `attack_sec_delay_1` smallint unsigned NOT NULL,
  `attack_sec_delay_2` smallint unsigned NOT NULL,
  `buff_skill_1` smallint unsigned NOT NULL,
  `buff_skill_2` smallint unsigned NOT NULL,
  `buff_skill_3` smallint unsigned NOT NULL,
  `time_space_casting` smallint unsigned NOT NULL,
  `percent_autopot` tinyint unsigned NOT NULL,
  `percent_autoheal` tinyint unsigned NOT NULL,
  `percent_partyheal` tinyint unsigned NOT NULL,
  `percent_drainlife` tinyint unsigned NOT NULL,
  `item_list` smallint unsigned NOT NULL,
  `buff_item_1` smallint unsigned NOT NULL,
  `buff_item_2` smallint unsigned NOT NULL,
  `buff_item_3` smallint unsigned NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_helper` */

insert  into `character_helper`(`char_id`,`option_flag_1`,`option_flag_2`,`item_pick_flag`,`hunting_range`,`item_pick_range`,`distance`,`attack_skill_1`,`attack_sec_skill_1`,`attack_sec_skill_2`,`attack_sec_delay_1`,`attack_sec_delay_2`,`buff_skill_1`,`buff_skill_2`,`buff_skill_3`,`time_space_casting`,`percent_autopot`,`percent_autoheal`,`percent_partyheal`,`percent_drainlife`,`item_list`,`buff_item_1`,`buff_item_2`,`buff_item_3`) values 
(4,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,50,50,50,50,0,65535,65535,65535),
(5,3221225488,24,0,8,1,10,0,0,0,0,0,0,0,0,0,50,50,50,50,0,65535,65535,65535),
(6,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,50,50,50,50,0,65535,65535,65535),
(7,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,50,50,50,50,0,65535,65535,65535),
(8,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,50,50,50,50,0,65535,65535,65535),
(9,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,50,50,50,50,0,65535,65535,65535),
(10,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,50,50,50,50,0,65535,65535,65535);

/*Table structure for table `character_hunting_record` */

DROP TABLE IF EXISTS `character_hunting_record`;

CREATE TABLE `character_hunting_record` (
  `char_id` int unsigned NOT NULL,
  `world` smallint unsigned NOT NULL,
  `year` smallint unsigned NOT NULL,
  `month` tinyint unsigned NOT NULL,
  `day` tinyint unsigned NOT NULL,
  `level` int unsigned NOT NULL,
  `duration` int unsigned NOT NULL,
  `damage` bigint unsigned NOT NULL,
  `elemental_damage` bigint unsigned NOT NULL,
  `healing` int unsigned NOT NULL,
  `killed_count` int unsigned NOT NULL,
  `earned_experience` bigint unsigned NOT NULL,
  PRIMARY KEY (`char_id`,`world`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_hunting_record` */

insert  into `character_hunting_record`(`char_id`,`world`,`year`,`month`,`day`,`level`,`duration`,`damage`,`elemental_damage`,`healing`,`killed_count`,`earned_experience`) values 
(5,3,2021,12,23,1300,17,52958,0,0,9,0),
(5,7,2021,12,23,1300,589,391441,0,0,36,0);

/*Table structure for table `character_info` */

DROP TABLE IF EXISTS `character_info`;

CREATE TABLE `character_info` (
  `guid` int unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int unsigned NOT NULL,
  `authority` tinyint unsigned NOT NULL DEFAULT '0',
  `race` tinyint unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slot` tinyint NOT NULL,
  `level` smallint NOT NULL,
  `level_master` smallint NOT NULL DEFAULT '0',
  `level_majestic` smallint NOT NULL DEFAULT '0',
  `experience` bigint NOT NULL DEFAULT '0',
  `experience_master` bigint NOT NULL DEFAULT '0',
  `experience_majestic` bigint NOT NULL DEFAULT '0',
  `points` int NOT NULL,
  `points_master` int NOT NULL DEFAULT '0',
  `points_majestic` int NOT NULL DEFAULT '0',
  `strength` int unsigned NOT NULL,
  `agility` int unsigned NOT NULL,
  `vitality` int unsigned NOT NULL,
  `energy` int unsigned NOT NULL,
  `leadership` int unsigned NOT NULL,
  `world` smallint unsigned NOT NULL,
  `world_x` smallint NOT NULL,
  `world_y` smallint NOT NULL,
  `direction` tinyint unsigned NOT NULL DEFAULT '0',
  `money` int unsigned NOT NULL DEFAULT '0',
  `life` int NOT NULL,
  `mana` int NOT NULL,
  `shield` int NOT NULL DEFAULT '0',
  `stamina` int NOT NULL DEFAULT '0',
  `add_fruit_points` int NOT NULL DEFAULT '0',
  `dec_fruit_points` int NOT NULL DEFAULT '0',
  `expanded_inventory` tinyint unsigned NOT NULL DEFAULT '0',
  `mute_time` bigint NOT NULL DEFAULT '0',
  `admin_flags` int unsigned NOT NULL DEFAULT '0',
  `pk_level` tinyint unsigned NOT NULL DEFAULT '3',
  `pk_count` int NOT NULL DEFAULT '0',
  `pk_points` int NOT NULL DEFAULT '0',
  `first_time` tinyint unsigned NOT NULL DEFAULT '1',
  `santa_claus_gift` bigint NOT NULL DEFAULT '0',
  `personal_store_name` varchar(255) DEFAULT NULL,
  `personal_store_open` tinyint NOT NULL DEFAULT '0',
  `goblin_points` int unsigned NOT NULL DEFAULT '0',
  `last_use` bigint NOT NULL DEFAULT '0',
  `kick_time` bigint NOT NULL DEFAULT '0',
  `post_count` int NOT NULL DEFAULT '0',
  `post_day` tinyint unsigned NOT NULL DEFAULT '0',
  `post_month` tinyint unsigned NOT NULL DEFAULT '0',
  `ruud_money` int unsigned NOT NULL DEFAULT '0',
  `hunting_log_visible` tinyint unsigned NOT NULL DEFAULT '0',
  `create_date` bigint NOT NULL DEFAULT '0',
  `online` tinyint unsigned NOT NULL DEFAULT '0',
  `server_code` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_info` */

insert  into `character_info`(`guid`,`account_id`,`authority`,`race`,`name`,`slot`,`level`,`level_master`,`level_majestic`,`experience`,`experience_master`,`experience_majestic`,`points`,`points_master`,`points_majestic`,`strength`,`agility`,`vitality`,`energy`,`leadership`,`world`,`world_x`,`world_y`,`direction`,`money`,`life`,`mana`,`shield`,`stamina`,`add_fruit_points`,`dec_fruit_points`,`expanded_inventory`,`mute_time`,`admin_flags`,`pk_level`,`pk_count`,`pk_points`,`first_time`,`santa_claus_gift`,`personal_store_name`,`personal_store_open`,`goblin_points`,`last_use`,`kick_time`,`post_count`,`post_day`,`post_month`,`ruud_money`,`hunting_log_visible`,`create_date`,`online`,`server_code`) values 
(4,1,0,23,'test',0,400,400,400,0,0,0,20,0,0,32000,32000,32000,32000,0,0,168,127,7,249891972,98433,32609,0,52800,0,0,0,0,0,3,0,0,0,0,'U2VsbCBpdGVtcwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=',0,0,1640608670,1615473057,0,0,0,0,0,0,0,65535),
(5,1,0,7,'grow',1,400,400,500,0,0,18982190300,0,0,100,32000,32000,32000,32000,0,51,54,241,1,1800602872,66063,67290,218135,35219,0,0,2,0,0,3,0,0,0,0,'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=',0,0,1640840576,1615503467,0,0,0,500,0,0,0,65535),
(6,1,0,39,'guntest',2,400,400,400,0,0,0,0,0,0,32000,32000,32000,32000,0,0,145,137,0,250000000,100,80,0,9631,0,0,0,0,0,0,0,0,0,0,'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=',0,0,1640608550,1615546185,0,0,0,0,0,0,0,65535),
(7,1,0,64,'dltest',3,1,0,0,0,0,0,0,0,0,26,20,20,15,25,0,148,120,3,0,90,40,129,23,0,0,0,0,0,3,0,0,0,0,'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=',0,0,1640608733,1616710393,0,0,0,0,0,0,0,65535),
(8,1,0,48,'mgtest',4,1,0,0,0,0,0,0,0,0,26,26,26,26,0,0,140,122,5,0,110,60,130,23,0,0,0,0,0,3,0,0,0,0,'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=',0,0,1616710520,1616710497,0,0,0,0,0,0,0,65535),
(9,1,0,160,'guntest2',5,1,0,0,0,0,0,0,0,0,20,18,20,25,0,51,54,225,2,0,100,80,103,31,0,0,0,0,0,3,0,0,0,0,'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=',0,0,1640611565,1616710620,0,0,0,0,0,0,0,65535),
(10,1,0,64,'dlzud',6,1,0,0,0,0,0,0,0,0,26,20,20,15,25,0,138,129,1,0,90,40,129,23,0,0,0,0,0,3,0,0,0,0,'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=',0,0,1640609274,1640609271,0,0,0,0,0,0,0,65535);

/*Table structure for table `character_item_delay` */

DROP TABLE IF EXISTS `character_item_delay`;

CREATE TABLE `character_item_delay` (
  `char_id` int unsigned NOT NULL,
  `item` smallint unsigned NOT NULL,
  `date` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_item_delay` */

/*Table structure for table `character_jewel_bingo` */

DROP TABLE IF EXISTS `character_jewel_bingo`;

CREATE TABLE `character_jewel_bingo` (
  `char_id` int unsigned NOT NULL,
  `state` tinyint unsigned NOT NULL,
  `box` tinyint unsigned NOT NULL,
  `count` tinyint unsigned NOT NULL,
  `jewel` tinyint unsigned NOT NULL,
  `score1` int NOT NULL,
  `score2` int NOT NULL,
  `score3` int NOT NULL,
  `date` bigint NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_jewel_bingo` */

insert  into `character_jewel_bingo`(`char_id`,`state`,`box`,`count`,`jewel`,`score1`,`score2`,`score3`,`date`) values 
(4,0,0,0,0,0,0,0,0),
(5,0,0,0,0,0,0,0,0),
(6,0,0,0,0,0,0,0,0),
(7,0,0,0,0,0,0,0,0),
(8,0,0,0,0,0,0,0,0),
(9,0,0,0,0,0,0,0,0),
(10,0,0,0,0,0,0,0,0);

/*Table structure for table `character_jewel_bingo_grid` */

DROP TABLE IF EXISTS `character_jewel_bingo_grid`;

CREATE TABLE `character_jewel_bingo_grid` (
  `char_id` int unsigned NOT NULL,
  `type` tinyint unsigned NOT NULL,
  `slot` tinyint unsigned NOT NULL,
  `value` tinyint unsigned NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_jewel_bingo_grid` */

/*Table structure for table `character_kick` */

DROP TABLE IF EXISTS `character_kick`;

CREATE TABLE `character_kick` (
  `char_id` int unsigned NOT NULL,
  `character_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_kick` */

/*Table structure for table `character_labyrinth` */

DROP TABLE IF EXISTS `character_labyrinth`;

CREATE TABLE `character_labyrinth` (
  `char_id` int unsigned NOT NULL,
  `stage` tinyint unsigned NOT NULL,
  `id` tinyint unsigned NOT NULL,
  `level` smallint unsigned NOT NULL,
  `status` tinyint unsigned NOT NULL,
  `killed_monsters` int NOT NULL,
  `earned_experience` bigint NOT NULL,
  `completed_missions` int NOT NULL,
  `date` bigint NOT NULL,
  `goblin_state` tinyint unsigned NOT NULL,
  `day_first` tinyint unsigned NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_labyrinth` */

insert  into `character_labyrinth`(`char_id`,`stage`,`id`,`level`,`status`,`killed_monsters`,`earned_experience`,`completed_missions`,`date`,`goblin_state`,`day_first`) values 
(4,0,255,0,0,0,0,0,0,0,0),
(5,0,255,0,0,0,0,0,0,0,0),
(6,0,255,0,0,0,0,0,0,0,0),
(7,0,255,0,0,0,0,0,0,0,0),
(8,0,255,0,0,0,0,0,0,0,0),
(9,0,255,0,0,0,0,0,0,0,0),
(10,0,255,0,0,0,0,0,0,0,0);

/*Table structure for table `character_labyrinth_level` */

DROP TABLE IF EXISTS `character_labyrinth_level`;

CREATE TABLE `character_labyrinth_level` (
  `char_id` int unsigned NOT NULL,
  `level` smallint unsigned NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_labyrinth_level` */

/*Table structure for table `character_labyrinth_zone` */

DROP TABLE IF EXISTS `character_labyrinth_zone`;

CREATE TABLE `character_labyrinth_zone` (
  `char_id` int unsigned NOT NULL,
  `idx` tinyint unsigned NOT NULL,
  `subidx` tinyint unsigned NOT NULL,
  `mission_id_1` tinyint unsigned NOT NULL,
  `mission_id_2` tinyint unsigned NOT NULL,
  `mission_id_3` tinyint unsigned NOT NULL,
  `mission_id_4` tinyint unsigned NOT NULL,
  `mission_id_5` tinyint unsigned NOT NULL,
  `mission_count_1` int NOT NULL,
  `mission_count_2` int NOT NULL,
  `mission_count_3` int NOT NULL,
  `mission_count_4` int NOT NULL,
  `mission_count_5` int NOT NULL,
  PRIMARY KEY (`char_id`,`idx`,`subidx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_labyrinth_zone` */

/*Table structure for table `character_mail` */

DROP TABLE IF EXISTS `character_mail`;

CREATE TABLE `character_mail` (
  `id` int unsigned NOT NULL,
  `char_id` int unsigned NOT NULL,
  `from_id` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `direction` tinyint unsigned NOT NULL,
  `action` tinyint unsigned NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `window_guid` int unsigned NOT NULL,
  `date` bigint NOT NULL,
  `opened` tinyint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_mail` */

/*Table structure for table `character_majestic_stats` */

DROP TABLE IF EXISTS `character_majestic_stats`;

CREATE TABLE `character_majestic_stats` (
  `char_id` int unsigned NOT NULL,
  `id` tinyint unsigned NOT NULL,
  `level` smallint unsigned NOT NULL,
  PRIMARY KEY (`char_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_majestic_stats` */

insert  into `character_majestic_stats`(`char_id`,`id`,`level`) values 
(4,0,0),
(4,1,0),
(4,2,0),
(4,3,0),
(5,0,0),
(5,1,0),
(5,2,0),
(5,3,0),
(6,0,0),
(6,1,0),
(6,2,0),
(6,3,0),
(7,0,0),
(7,1,0),
(7,2,0),
(7,3,0),
(8,0,0),
(8,1,0),
(8,2,0),
(8,3,0),
(9,0,0),
(9,1,0),
(9,2,0),
(9,3,0),
(10,0,0),
(10,1,0),
(10,2,0),
(10,3,0);

/*Table structure for table `character_majestic_tree` */

DROP TABLE IF EXISTS `character_majestic_tree`;

CREATE TABLE `character_majestic_tree` (
  `char_id` int unsigned NOT NULL,
  `type` tinyint unsigned NOT NULL,
  `section` tinyint unsigned NOT NULL,
  `id` smallint unsigned NOT NULL,
  `level` tinyint unsigned NOT NULL,
  PRIMARY KEY (`char_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_majestic_tree` */

/*Table structure for table `character_mini_bomb` */

DROP TABLE IF EXISTS `character_mini_bomb`;

CREATE TABLE `character_mini_bomb` (
  `char_id` int unsigned NOT NULL,
  `state` tinyint unsigned NOT NULL,
  `score` smallint unsigned NOT NULL,
  `total_score` int NOT NULL,
  `cdate` bigint NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_mini_bomb` */

insert  into `character_mini_bomb`(`char_id`,`state`,`score`,`total_score`,`cdate`) values 
(4,1,0,0,1640608664),
(5,1,0,0,1640211715),
(6,1,0,0,1640608544),
(7,1,0,0,1640608728),
(8,1,0,0,0),
(9,1,0,0,1640608514),
(10,1,0,0,0);

/*Table structure for table `character_mini_bomb_grid` */

DROP TABLE IF EXISTS `character_mini_bomb_grid`;

CREATE TABLE `character_mini_bomb_grid` (
  `char_id` int unsigned NOT NULL,
  `cell` tinyint unsigned NOT NULL,
  `value` tinyint unsigned NOT NULL,
  `status` tinyint unsigned NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_mini_bomb_grid` */

/*Table structure for table `character_monster_soul` */

DROP TABLE IF EXISTS `character_monster_soul`;

CREATE TABLE `character_monster_soul` (
  `char_id` int unsigned NOT NULL,
  `type` int unsigned NOT NULL,
  `id` int unsigned NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`char_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_monster_soul` */

/*Table structure for table `character_mu_roomy` */

DROP TABLE IF EXISTS `character_mu_roomy`;

CREATE TABLE `character_mu_roomy` (
  `char_id` int unsigned NOT NULL,
  `playing` tinyint unsigned NOT NULL,
  `type` tinyint unsigned NOT NULL,
  `score` smallint unsigned NOT NULL,
  `card_count` tinyint unsigned NOT NULL,
  `special_card_count` tinyint unsigned NOT NULL,
  `date` bigint NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_mu_roomy` */

insert  into `character_mu_roomy`(`char_id`,`playing`,`type`,`score`,`card_count`,`special_card_count`,`date`) values 
(4,0,0,0,0,0,1640608664),
(5,0,0,0,0,0,1640211715),
(6,0,0,0,0,0,1640608544),
(7,0,0,0,0,0,1640608728),
(8,0,0,0,0,0,1616710497),
(9,0,0,0,0,0,1640608514),
(10,0,0,0,0,0,1640609271);

/*Table structure for table `character_mu_roomy_deck` */

DROP TABLE IF EXISTS `character_mu_roomy_deck`;

CREATE TABLE `character_mu_roomy_deck` (
  `char_id` int unsigned NOT NULL,
  `type` tinyint unsigned NOT NULL,
  `slot` tinyint unsigned NOT NULL,
  `color` tinyint unsigned NOT NULL,
  `number` tinyint unsigned NOT NULL,
  `state` tinyint unsigned NOT NULL,
  `play_slot` tinyint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_mu_roomy_deck` */

/*Table structure for table `character_numeric_baseball` */

DROP TABLE IF EXISTS `character_numeric_baseball`;

CREATE TABLE `character_numeric_baseball` (
  `char_id` int unsigned NOT NULL,
  `state` tinyint unsigned NOT NULL,
  `score` int NOT NULL,
  `number_1` tinyint unsigned NOT NULL,
  `number_2` tinyint unsigned NOT NULL,
  `number_3` tinyint unsigned NOT NULL,
  `numbers` varchar(255) DEFAULT NULL,
  `strikes` varchar(255) DEFAULT NULL,
  `balls` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_numeric_baseball` */

insert  into `character_numeric_baseball`(`char_id`,`state`,`score`,`number_1`,`number_2`,`number_3`,`numbers`,`strikes`,`balls`) values 
(4,0,0,255,255,255,'255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 ','0 0 0 0 0 ','0 0 0 0 0 '),
(5,0,0,255,255,255,'255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 ','0 0 0 0 0 ','0 0 0 0 0 '),
(6,0,0,255,255,255,'255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 ','0 0 0 0 0 ','0 0 0 0 0 '),
(7,0,0,255,255,255,'255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 ','0 0 0 0 0 ','0 0 0 0 0 '),
(8,0,0,255,255,255,'255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 ','0 0 0 0 0 ','0 0 0 0 0 '),
(9,0,0,255,255,255,'255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 ','0 0 0 0 0 ','0 0 0 0 0 '),
(10,0,0,255,255,255,'255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 ','0 0 0 0 0 ','0 0 0 0 0 ');

/*Table structure for table `character_quest_evo` */

DROP TABLE IF EXISTS `character_quest_evo`;

CREATE TABLE `character_quest_evo` (
  `char_id` int unsigned NOT NULL,
  `id` tinyint unsigned NOT NULL,
  `state` tinyint unsigned NOT NULL,
  `kill_count_1` int NOT NULL,
  `kill_count_2` int NOT NULL,
  `kill_count_3` int NOT NULL,
  `kill_count_4` int NOT NULL,
  `kill_count_5` int NOT NULL,
  PRIMARY KEY (`char_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_quest_evo` */

insert  into `character_quest_evo`(`char_id`,`id`,`state`,`kill_count_1`,`kill_count_2`,`kill_count_3`,`kill_count_4`,`kill_count_5`) values 
(4,0,2,0,0,0,0,0),
(4,1,2,0,0,0,0,0),
(4,2,2,0,0,0,0,0),
(4,3,2,0,0,0,0,0),
(4,4,2,0,0,0,0,0),
(4,5,2,0,0,0,0,0),
(4,6,2,0,0,0,0,0),
(4,7,2,0,0,0,0,0),
(4,8,2,0,0,0,0,0),
(4,9,2,0,0,0,0,0),
(5,0,2,0,0,0,0,0),
(5,1,2,0,0,0,0,0),
(5,2,2,0,0,0,0,0),
(5,3,2,0,0,0,0,0),
(5,4,2,0,0,0,0,0),
(5,5,2,0,0,0,0,0),
(5,6,2,0,0,0,0,0),
(5,7,2,0,0,0,0,0),
(5,8,2,0,0,0,0,0),
(5,9,2,0,0,0,0,0),
(6,0,2,0,0,0,0,0),
(6,1,2,0,0,0,0,0),
(6,2,2,0,0,0,0,0),
(6,3,2,0,0,0,0,0),
(6,4,2,0,0,0,0,0),
(6,5,2,0,0,0,0,0),
(6,6,2,0,0,0,0,0),
(6,7,2,0,0,0,0,0),
(6,8,2,0,0,0,0,0),
(6,9,2,0,0,0,0,0),
(7,0,3,0,0,0,0,0),
(7,1,3,0,0,0,0,0),
(7,2,3,0,0,0,0,0),
(7,3,3,0,0,0,0,0),
(7,4,3,0,0,0,0,0),
(7,5,3,0,0,0,0,0),
(7,6,3,0,0,0,0,0),
(7,7,3,0,0,0,0,0),
(7,8,3,0,0,0,0,0),
(7,9,3,0,0,0,0,0),
(9,0,3,0,0,0,0,0),
(9,1,3,0,0,0,0,0),
(9,2,3,0,0,0,0,0),
(9,3,3,0,0,0,0,0),
(9,4,3,0,0,0,0,0),
(9,5,3,0,0,0,0,0),
(9,6,3,0,0,0,0,0),
(9,7,3,0,0,0,0,0),
(9,8,3,0,0,0,0,0),
(9,9,3,0,0,0,0,0),
(10,0,3,0,0,0,0,0),
(10,1,3,0,0,0,0,0),
(10,2,3,0,0,0,0,0),
(10,3,3,0,0,0,0,0),
(10,4,3,0,0,0,0,0),
(10,5,3,0,0,0,0,0),
(10,6,3,0,0,0,0,0),
(10,7,3,0,0,0,0,0),
(10,8,3,0,0,0,0,0),
(10,9,3,0,0,0,0,0);

/*Table structure for table `character_quest_guided` */

DROP TABLE IF EXISTS `character_quest_guided`;

CREATE TABLE `character_quest_guided` (
  `char_id` int unsigned NOT NULL,
  `quest` smallint unsigned NOT NULL,
  `count` int NOT NULL,
  `state` tinyint unsigned NOT NULL,
  `date` bigint NOT NULL,
  PRIMARY KEY (`char_id`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_quest_guided` */

insert  into `character_quest_guided`(`char_id`,`quest`,`count`,`state`,`date`) values 
(4,11,0,1,0),
(5,11,0,3,0),
(5,14,0,3,0),
(5,17,0,3,0),
(5,20,0,3,0),
(5,23,0,3,0),
(5,26,0,3,0),
(5,29,0,3,0),
(5,32,0,3,0),
(5,35,0,3,0),
(5,38,0,3,0),
(5,41,0,3,0),
(5,44,0,3,0),
(5,45,0,3,0),
(5,46,0,3,0),
(5,47,0,3,0),
(5,48,0,3,0),
(5,49,0,3,0),
(5,50,0,3,0),
(5,51,0,3,0),
(5,52,0,3,0),
(5,53,0,3,0),
(5,54,0,3,0),
(5,55,0,3,0),
(5,56,0,3,0),
(5,57,0,3,0),
(5,58,0,3,0),
(5,59,0,3,0),
(5,60,0,3,0),
(5,61,0,3,0),
(5,62,0,3,0),
(5,63,0,3,0),
(5,64,0,3,0),
(5,65,0,3,0),
(5,66,0,3,0),
(5,67,0,3,0),
(5,68,0,3,0),
(5,69,0,3,0),
(5,70,0,3,0),
(5,71,0,3,0),
(5,72,0,3,0),
(5,73,0,3,0),
(5,74,0,3,0),
(5,75,0,3,0),
(5,76,0,3,0),
(5,77,0,3,0),
(5,78,0,3,0),
(5,79,0,3,0),
(5,80,0,3,0),
(5,81,0,3,0),
(5,82,0,3,0),
(5,83,0,3,0),
(5,84,0,3,1640642816),
(5,85,0,3,0),
(5,86,0,3,0),
(5,87,0,3,0),
(5,88,0,3,0),
(5,89,0,3,1640642827),
(5,90,0,3,0),
(5,91,0,3,1640642830),
(5,92,0,3,0),
(5,93,0,3,0),
(5,94,0,3,0),
(5,95,0,3,0),
(5,96,0,3,0),
(5,97,0,3,0),
(5,98,0,3,0),
(5,99,0,3,1640642834),
(5,100,0,3,0),
(5,101,0,3,0),
(5,102,0,3,0),
(5,103,0,3,0),
(5,104,0,3,0),
(5,105,0,3,0),
(5,106,0,3,1640642837),
(5,107,0,3,0),
(5,108,0,3,0),
(5,109,0,3,0),
(5,110,0,3,0),
(5,111,0,3,0),
(5,112,0,3,0),
(5,113,0,3,0),
(5,114,0,3,0),
(5,115,0,3,0),
(5,116,0,3,0),
(5,117,0,3,0),
(5,118,0,3,0),
(5,119,0,3,0),
(5,120,0,3,0),
(5,121,0,3,0),
(5,122,0,3,0),
(5,123,0,3,0),
(5,124,0,3,0),
(5,125,0,3,0),
(5,126,0,3,0),
(5,127,0,3,0),
(5,128,0,3,0),
(5,129,0,3,0),
(5,130,0,3,0),
(5,131,0,3,0),
(5,132,0,3,0),
(5,133,0,3,0),
(5,134,0,3,0),
(5,135,0,3,0),
(5,136,0,3,0),
(5,137,0,3,0),
(5,138,0,3,0),
(5,139,0,3,0),
(5,140,0,3,0),
(5,141,0,3,0),
(5,142,0,3,0),
(5,143,0,3,0),
(5,144,0,3,0),
(5,145,0,3,0),
(5,146,0,3,0),
(5,147,0,3,0),
(5,148,0,3,0),
(5,149,0,3,0),
(5,150,0,3,0),
(5,151,0,3,0),
(5,152,0,3,0),
(5,153,0,3,0),
(5,154,0,3,0),
(5,155,0,3,0),
(5,156,0,3,0),
(5,157,0,3,0),
(5,158,0,3,0),
(5,159,0,3,0),
(5,160,0,3,0),
(5,161,0,3,0),
(5,162,0,3,0),
(5,163,0,3,0),
(5,164,0,3,0),
(5,165,0,3,0),
(5,166,0,3,0),
(5,167,0,3,0),
(5,168,0,3,0),
(5,169,0,3,0),
(5,170,0,3,1640642850),
(5,171,0,3,0),
(5,172,0,3,0),
(5,173,0,3,0),
(5,174,0,3,0),
(5,175,0,3,0),
(5,176,0,3,0),
(5,177,0,3,0),
(5,178,0,3,0),
(5,179,0,3,0),
(5,180,0,3,0),
(5,181,0,3,0),
(5,182,0,3,0),
(5,183,0,3,0),
(5,184,0,3,0),
(5,185,0,3,0),
(5,186,0,3,0),
(5,187,0,3,0),
(5,188,0,3,0),
(5,189,0,3,0),
(5,190,0,3,0),
(5,191,0,3,0),
(5,192,0,3,0),
(5,193,0,3,0),
(5,194,0,3,0),
(5,195,0,3,0),
(5,196,0,3,0),
(5,197,0,3,0),
(5,198,0,3,0),
(5,199,0,3,0),
(5,200,0,3,0),
(5,201,0,3,0),
(5,202,0,3,0),
(5,203,0,3,0),
(5,204,0,3,0),
(5,205,0,3,0),
(5,206,0,3,0),
(5,207,0,3,0),
(5,208,0,3,0),
(5,209,0,3,0),
(5,210,0,3,0),
(5,211,0,3,0),
(5,212,0,3,0),
(5,213,0,3,0),
(5,214,0,3,0),
(5,215,0,3,0),
(5,216,0,3,0),
(5,217,0,3,0),
(6,13,0,1,0),
(7,11,0,1,0),
(8,11,0,1,0),
(9,13,0,1,0),
(10,11,0,1,0);

/*Table structure for table `character_quest_mu` */

DROP TABLE IF EXISTS `character_quest_mu`;

CREATE TABLE `character_quest_mu` (
  `char_id` int unsigned NOT NULL,
  `quest_id` smallint unsigned NOT NULL,
  `state` tinyint unsigned NOT NULL,
  `objective` smallint unsigned NOT NULL,
  `date` bigint NOT NULL,
  PRIMARY KEY (`char_id`,`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_quest_mu` */

insert  into `character_quest_mu`(`char_id`,`quest_id`,`state`,`objective`,`date`) values 
(4,18,1,0,1640608664),
(4,88,1,0,1640608664),
(4,200,1,0,1640608664),
(4,201,1,0,1640608664),
(4,202,1,0,1640608664),
(4,203,1,0,1640608664),
(4,217,1,0,1640608664),
(4,219,1,0,1640608664),
(4,223,1,0,1640608664),
(4,227,1,0,1640608664),
(4,231,1,0,1640608664),
(4,235,1,0,1640608664),
(4,239,1,0,1640608664),
(4,243,1,0,1640608664),
(4,247,1,0,1640608664),
(4,251,1,0,1640608664),
(4,255,1,0,1640608664),
(4,259,1,0,1640608664),
(4,263,1,0,1640608664),
(4,267,1,0,1640608664),
(4,271,1,0,1640608664),
(4,275,1,0,1640608664),
(4,279,1,0,1640608664),
(4,511,1,0,1640608664),
(4,546,1,0,1640608664),
(5,18,1,0,1640214396),
(5,88,1,0,1640214396),
(5,200,1,0,1640214396),
(5,201,1,0,1640214396),
(5,202,1,0,1640214396),
(5,203,1,0,1640214396),
(5,217,1,0,1640214396),
(5,220,1,0,1640214396),
(5,224,1,0,1640214396),
(5,228,1,0,1640214396),
(5,232,1,0,1640214396),
(5,236,1,0,1640214396),
(5,240,1,0,1640214396),
(5,244,1,0,1640214396),
(5,248,1,0,1640214396),
(5,252,1,0,1640214396),
(5,256,1,0,1640214396),
(5,260,1,36,1640214396),
(5,264,1,36,1640214396),
(5,268,1,36,1640214396),
(5,272,1,36,1640214396),
(5,276,1,36,1640214396),
(5,280,1,36,1640214396),
(5,511,1,0,1640214396),
(5,552,1,0,1640214396),
(6,18,1,0,1640608544),
(6,88,1,0,1640608544),
(6,200,1,0,1640608544),
(6,201,1,0,1640608544),
(6,202,1,0,1640608544),
(6,203,1,0,1640608544),
(6,217,1,0,1640608544),
(6,221,1,0,1640608544),
(6,225,1,0,1640608544),
(6,229,1,0,1640608544),
(6,233,1,0,1640608544),
(6,237,1,0,1640608544),
(6,241,1,0,1640608544),
(6,245,1,0,1640608544),
(6,249,1,0,1640608544),
(6,253,1,0,1640608544),
(6,257,1,0,1640608544),
(6,261,1,0,1640608544),
(6,265,1,0,1640608544),
(6,269,1,0,1640608544),
(6,273,1,0,1640608544),
(6,277,1,0,1640608544),
(6,281,1,0,1640608544),
(6,511,1,0,1640608544),
(6,546,1,0,1640608544);

/*Table structure for table `character_restriction` */

DROP TABLE IF EXISTS `character_restriction`;

CREATE TABLE `character_restriction` (
  `char_id` int unsigned NOT NULL,
  `restriction` int unsigned NOT NULL,
  `time` bigint NOT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_restriction` */

/*Table structure for table `character_score` */

DROP TABLE IF EXISTS `character_score`;

CREATE TABLE `character_score` (
  `char_id` int unsigned NOT NULL,
  `type` tinyint unsigned NOT NULL,
  `level` int NOT NULL,
  `score` int NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_score` */

/*Table structure for table `character_skill` */

DROP TABLE IF EXISTS `character_skill`;

CREATE TABLE `character_skill` (
  `char_id` int unsigned NOT NULL,
  `type` tinyint unsigned NOT NULL,
  `skill` smallint unsigned NOT NULL,
  `skill_level` tinyint unsigned NOT NULL,
  PRIMARY KEY (`char_id`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_skill` */

insert  into `character_skill`(`char_id`,`type`,`skill`,`skill_level`) values 
(4,0,41,0),
(4,0,42,0),
(4,0,43,0),
(4,0,44,0),
(4,0,47,0),
(4,0,48,0),
(4,0,67,0),
(4,0,68,0),
(4,0,69,0),
(4,0,70,0),
(4,0,71,0),
(4,0,72,0),
(5,0,5,0),
(5,0,8,0),
(5,0,9,0),
(5,0,10,0),
(5,0,12,0),
(5,0,13,0),
(5,0,14,0),
(5,0,15,0),
(5,0,16,0),
(5,0,17,0),
(5,0,38,0),
(5,0,39,0),
(5,0,40,0),
(5,0,45,0),
(5,0,67,0),
(5,0,68,0),
(5,0,69,0),
(5,0,70,0),
(5,0,71,0),
(5,0,72,0),
(6,0,46,0),
(6,0,67,0),
(6,0,68,0),
(6,0,69,0),
(6,0,70,0),
(6,0,71,0),
(6,0,72,0),
(6,0,77,0),
(7,0,60,0),
(7,0,67,0),
(7,0,68,0),
(7,0,69,0),
(7,0,70,0),
(7,0,71,0),
(7,0,72,0),
(7,0,74,0),
(8,0,57,0),
(8,0,67,0),
(8,0,68,0),
(8,0,69,0),
(8,0,70,0),
(8,0,71,0),
(8,0,72,0),
(8,0,73,0),
(10,0,60,0),
(10,0,67,0),
(10,0,68,0),
(10,0,69,0),
(10,0,70,0),
(10,0,71,0),
(10,0,72,0),
(10,0,74,0);

/*Table structure for table `character_statistics` */

DROP TABLE IF EXISTS `character_statistics`;

CREATE TABLE `character_statistics` (
  `char_id` int unsigned NOT NULL,
  `statistic_id` int unsigned NOT NULL,
  `count` bigint unsigned NOT NULL,
  PRIMARY KEY (`char_id`,`statistic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_statistics` */

/*Table structure for table `character_warp_favorite_list` */

DROP TABLE IF EXISTS `character_warp_favorite_list`;

CREATE TABLE `character_warp_favorite_list` (
  `char_id` int unsigned NOT NULL,
  `slot` tinyint unsigned NOT NULL,
  `data` smallint unsigned NOT NULL,
  `warp_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `character_warp_favorite_list` */

insert  into `character_warp_favorite_list`(`char_id`,`slot`,`data`,`warp_id`) values 
(4,0,65535,65535),
(5,0,4,3),
(6,0,65535,65535),
(7,0,65535,65535),
(8,0,65535,65535),
(9,0,65535,65535),
(10,0,65535,65535);

/*Table structure for table `crywolf_data` */

DROP TABLE IF EXISTS `crywolf_data`;

CREATE TABLE `crywolf_data` (
  `state` tinyint unsigned NOT NULL,
  PRIMARY KEY (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `crywolf_data` */

insert  into `crywolf_data`(`state`) values 
(0);

/*Table structure for table `event_arka_war_kill` */

DROP TABLE IF EXISTS `event_arka_war_kill`;

CREATE TABLE `event_arka_war_kill` (
  `char_id` int unsigned NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_rank` tinyint unsigned NOT NULL,
  `player_data_01` varchar(255) DEFAULT NULL,
  `guild_id_01` int unsigned NOT NULL,
  `guild_name_01` varchar(255) DEFAULT NULL,
  `killer_id` int unsigned NOT NULL,
  `killer_name` varchar(255) DEFAULT NULL,
  `killer_rank` tinyint unsigned NOT NULL,
  `player_data_02` varchar(255) DEFAULT NULL,
  `guild_id_02` int unsigned NOT NULL,
  `guild_name_02` varchar(255) DEFAULT NULL,
  `world` smallint unsigned NOT NULL,
  `world_x` smallint NOT NULL,
  `world_y` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `event_arka_war_kill` */

/*Table structure for table `event_arka_war_ranking` */

DROP TABLE IF EXISTS `event_arka_war_ranking`;

CREATE TABLE `event_arka_war_ranking` (
  `guild_id_01` int unsigned NOT NULL,
  `guild_name_01` varchar(255) DEFAULT NULL,
  `guild_id_02` int unsigned NOT NULL,
  `guild_name_02` varchar(255) DEFAULT NULL,
  `character_count` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `event_arka_war_ranking` */

/*Table structure for table `event_castle_siege_kill` */

DROP TABLE IF EXISTS `event_castle_siege_kill`;

CREATE TABLE `event_castle_siege_kill` (
  `char_id` int unsigned NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_rank` tinyint unsigned NOT NULL,
  `state` tinyint unsigned NOT NULL,
  `player_data_01` varchar(255) DEFAULT NULL,
  `guild_id_01` int unsigned NOT NULL,
  `guild_name_01` varchar(255) DEFAULT NULL,
  `killer_id` int unsigned NOT NULL,
  `killer_name` varchar(255) DEFAULT NULL,
  `killer_rank` tinyint unsigned NOT NULL,
  `player_data_02` varchar(255) DEFAULT NULL,
  `guild_id_02` int unsigned NOT NULL,
  `guild_name_02` varchar(255) DEFAULT NULL,
  `world` smallint unsigned NOT NULL,
  `world_x` smallint NOT NULL,
  `world_y` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `event_castle_siege_kill` */

/*Table structure for table `event_castle_siege_ranking` */

DROP TABLE IF EXISTS `event_castle_siege_ranking`;

CREATE TABLE `event_castle_siege_ranking` (
  `guild_id` int unsigned NOT NULL,
  `guild_name` varchar(255) DEFAULT NULL,
  `character_count` int NOT NULL,
  PRIMARY KEY (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `event_castle_siege_ranking` */

/*Table structure for table `event_castle_siege_time` */

DROP TABLE IF EXISTS `event_castle_siege_time`;

CREATE TABLE `event_castle_siege_time` (
  `char_id` int unsigned NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_rank` tinyint unsigned NOT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `guild_id` int unsigned NOT NULL,
  `guild_name` varchar(255) DEFAULT NULL,
  `type` tinyint unsigned NOT NULL,
  `time` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `event_castle_siege_time` */

/*Table structure for table `event_dungeon_instance` */

DROP TABLE IF EXISTS `event_dungeon_instance`;

CREATE TABLE `event_dungeon_instance` (
  `char_id` int unsigned NOT NULL,
  `id` tinyint unsigned NOT NULL,
  `time` bigint NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `event_dungeon_instance` */

/*Table structure for table `event_jewel_bingo_ranking` */

DROP TABLE IF EXISTS `event_jewel_bingo_ranking`;

CREATE TABLE `event_jewel_bingo_ranking` (
  `char_id` int unsigned NOT NULL,
  `type` tinyint unsigned NOT NULL,
  `score1` int NOT NULL,
  `score2` int NOT NULL,
  `score3` int NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `event_jewel_bingo_ranking` */

/*Table structure for table `event_labyrinth_league` */

DROP TABLE IF EXISTS `event_labyrinth_league`;

CREATE TABLE `event_labyrinth_league` (
  `category` tinyint unsigned NOT NULL,
  `char_id` int unsigned NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_class` tinyint unsigned NOT NULL,
  `score` int NOT NULL,
  `league_score` int NOT NULL,
  `time` bigint NOT NULL,
  PRIMARY KEY (`char_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `event_labyrinth_league` */

/*Table structure for table `event_labyrinth_schedule` */

DROP TABLE IF EXISTS `event_labyrinth_schedule`;

CREATE TABLE `event_labyrinth_schedule` (
  `server` smallint unsigned NOT NULL,
  `state` tinyint unsigned NOT NULL,
  `start_date` bigint NOT NULL,
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `event_labyrinth_schedule` */

/*Table structure for table `event_mini_bomb_ranking` */

DROP TABLE IF EXISTS `event_mini_bomb_ranking`;

CREATE TABLE `event_mini_bomb_ranking` (
  `char_id` int unsigned NOT NULL,
  `state` tinyint unsigned NOT NULL,
  `score` smallint unsigned NOT NULL,
  `bombs_founded` tinyint unsigned NOT NULL,
  `bombs_failed` tinyint unsigned NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `event_mini_bomb_ranking` */

/*Table structure for table `event_mu_roomy_ranking` */

DROP TABLE IF EXISTS `event_mu_roomy_ranking`;

CREATE TABLE `event_mu_roomy_ranking` (
  `char_id` int unsigned NOT NULL,
  `type` tinyint unsigned NOT NULL,
  `score` smallint unsigned NOT NULL,
  `remain_card` tinyint unsigned NOT NULL,
  `remain_special_card` tinyint unsigned NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `event_mu_roomy_ranking` */

/*Table structure for table `event_numeric_baseball_ranking` */

DROP TABLE IF EXISTS `event_numeric_baseball_ranking`;

CREATE TABLE `event_numeric_baseball_ranking` (
  `char_id` int unsigned NOT NULL,
  `score` int NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `event_numeric_baseball_ranking` */

/*Table structure for table `event_race_ranking` */

DROP TABLE IF EXISTS `event_race_ranking`;

CREATE TABLE `event_race_ranking` (
  `char_id` int unsigned NOT NULL,
  `race` varchar(255) NOT NULL,
  `start` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `event_race_ranking` */

/*Table structure for table `event_ranking` */

DROP TABLE IF EXISTS `event_ranking`;

CREATE TABLE `event_ranking` (
  `event_id` tinyint unsigned NOT NULL,
  `event_ground` tinyint unsigned NOT NULL,
  `char_id` int unsigned NOT NULL,
  `score` bigint NOT NULL,
  PRIMARY KEY (`event_id`,`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `event_ranking` */

/*Table structure for table `event_ranking_labyrinth` */

DROP TABLE IF EXISTS `event_ranking_labyrinth`;

CREATE TABLE `event_ranking_labyrinth` (
  `char_id` int unsigned NOT NULL,
  `level` smallint unsigned NOT NULL,
  `stage` tinyint unsigned NOT NULL,
  `index` tinyint unsigned NOT NULL,
  `killed_monsters` int NOT NULL,
  `earned_experience` bigint NOT NULL,
  `completed_missions` int NOT NULL,
  `score` int NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `event_ranking_labyrinth` */

/*Table structure for table `event_scramble_ranking` */

DROP TABLE IF EXISTS `event_scramble_ranking`;

CREATE TABLE `event_scramble_ranking` (
  `char_id` int unsigned NOT NULL,
  `word` varchar(255) DEFAULT NULL,
  `shuffle_word` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `event_scramble_ranking` */

/*Table structure for table `event_stage` */

DROP TABLE IF EXISTS `event_stage`;

CREATE TABLE `event_stage` (
  `event_id` tinyint unsigned NOT NULL,
  `stage` tinyint unsigned NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `event_stage` */

insert  into `event_stage`(`event_id`,`stage`) values 
(16,0);

/*Table structure for table `gen_ranking` */

DROP TABLE IF EXISTS `gen_ranking`;

CREATE TABLE `gen_ranking` (
  `family` tinyint unsigned NOT NULL,
  `level` tinyint unsigned NOT NULL,
  `type` tinyint unsigned NOT NULL,
  `score` int NOT NULL,
  `ranking` int NOT NULL,
  `char_id` int unsigned NOT NULL,
  PRIMARY KEY (`family`,`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `gen_ranking` */

/*Table structure for table `guild_list` */

DROP TABLE IF EXISTS `guild_list`;

CREATE TABLE `guild_list` (
  `guid` int unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `emblem` varchar(255) DEFAULT NULL,
  `hostil` int unsigned NOT NULL,
  `alliance` int unsigned NOT NULL,
  `notice` varchar(255) DEFAULT NULL,
  `score` int NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `guild_list` */

insert  into `guild_list`(`guid`,`name`,`emblem`,`hostil`,`alliance`,`notice`,`score`) values 
(5,'VFVSQk8AAAA=','0 0 0 0 5 85 85 80 5 85 85 80 0 5 80 0 0 5 80 0 0 5 80 0 0 5 80 0 0 0 0 0 ',0,0,NULL,0);

/*Table structure for table `guild_matching` */

DROP TABLE IF EXISTS `guild_matching`;

CREATE TABLE `guild_matching` (
  `guild_id` int unsigned NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `interest_type` tinyint unsigned NOT NULL,
  `level_range` tinyint unsigned NOT NULL,
  `class_type` smallint unsigned NOT NULL,
  `board_number` int unsigned NOT NULL,
  PRIMARY KEY (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `guild_matching` */

/*Table structure for table `guild_members` */

DROP TABLE IF EXISTS `guild_members`;

CREATE TABLE `guild_members` (
  `guild_id` int unsigned NOT NULL,
  `char_id` int unsigned NOT NULL,
  `id` tinyint unsigned NOT NULL,
  `ranking` tinyint unsigned NOT NULL,
  PRIMARY KEY (`guild_id`,`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `guild_members` */

insert  into `guild_members`(`guild_id`,`char_id`,`id`,`ranking`) values 
(5,5,0,128);

/*Table structure for table `guild_score` */

DROP TABLE IF EXISTS `guild_score`;

CREATE TABLE `guild_score` (
  `guild_id` int unsigned NOT NULL,
  `score` bigint NOT NULL,
  PRIMARY KEY (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `guild_score` */

/*Table structure for table `item_data` */

DROP TABLE IF EXISTS `item_data`;

CREATE TABLE `item_data` (
  `id` int unsigned NOT NULL,
  `box` tinyint unsigned NOT NULL,
  `slot` int unsigned NOT NULL,
  `entry` smallint unsigned NOT NULL,
  `server` smallint unsigned NOT NULL,
  `serial` int unsigned NOT NULL,
  `serial_cash_shop` int unsigned NOT NULL,
  `level` tinyint unsigned NOT NULL,
  `durability` tinyint unsigned NOT NULL,
  `durability_state` int NOT NULL DEFAULT '0',
  `skill` tinyint unsigned NOT NULL,
  `luck` tinyint unsigned NOT NULL,
  `option` tinyint unsigned NOT NULL,
  `excellent` tinyint unsigned NOT NULL,
  `ancient` tinyint unsigned NOT NULL,
  `option_380` tinyint unsigned NOT NULL,
  `harmony` tinyint unsigned NOT NULL,
  `socket_1` smallint unsigned NOT NULL,
  `socket_2` smallint unsigned NOT NULL,
  `socket_3` smallint unsigned NOT NULL,
  `socket_4` smallint unsigned NOT NULL,
  `socket_5` smallint unsigned NOT NULL,
  `socket_bonus` tinyint unsigned NOT NULL,
  `locked` tinyint unsigned NOT NULL,
  `data_1` int NOT NULL DEFAULT '0',
  `data_2` int NOT NULL DEFAULT '0',
  `data_3` int NOT NULL DEFAULT '0',
  `personal_store_price` int unsigned NOT NULL DEFAULT '0',
  `personal_store_job` smallint unsigned NOT NULL DEFAULT '0',
  `personal_store_jos` smallint unsigned NOT NULL DEFAULT '0',
  `personal_store_joc` smallint unsigned NOT NULL DEFAULT '0',
  `expire_date` bigint NOT NULL DEFAULT '0',
  `flags` int unsigned NOT NULL,
  PRIMARY KEY (`id`,`box`,`slot`) USING BTREE,
  UNIQUE KEY `DupeInv` (`server`,`serial`,`serial_cash_shop`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `box` (`box`) USING BTREE,
  KEY `slot` (`slot`) USING BTREE,
  KEY `idx_id_and_box` (`id`,`box`) USING BTREE,
  KEY `idx_id_and_box_and_slot` (`id`,`box`,`slot`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `item_data` */

insert  into `item_data`(`id`,`box`,`slot`,`entry`,`server`,`serial`,`serial_cash_shop`,`level`,`durability`,`durability_state`,`skill`,`luck`,`option`,`excellent`,`ancient`,`option_380`,`harmony`,`socket_1`,`socket_2`,`socket_3`,`socket_4`,`socket_5`,`socket_bonus`,`locked`,`data_1`,`data_2`,`data_3`,`personal_store_price`,`personal_store_job`,`personal_store_jos`,`personal_store_joc`,`expire_date`,`flags`) values 
(1,2,2,6658,0,174,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,3,6154,0,162,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,4,7635,0,413,0,0,1,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,5,7636,0,414,0,0,35,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,6,7645,0,393,0,0,49,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,7,7635,0,408,0,0,50,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,10,7635,0,403,0,0,5,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,11,7381,0,147,0,0,1,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,12,7059,0,420,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,14,7636,0,416,0,0,50,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,15,7636,0,415,0,0,50,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,16,7636,0,418,0,0,50,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,17,6659,0,175,0,0,255,0,1,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,18,7635,0,412,0,0,50,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,19,7635,0,411,0,0,50,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,22,7635,0,409,0,0,50,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,23,7635,0,410,0,0,50,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,24,7184,0,406,0,0,35,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,25,7184,0,407,0,0,50,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,26,7181,0,404,0,0,45,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,27,7554,0,432,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,29,7554,0,429,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,31,7182,0,458,0,0,50,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,32,7554,0,430,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,34,7182,0,459,0,0,50,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,39,7181,0,454,0,0,50,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,42,7554,0,431,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,44,4707,0,449,0,0,120,0,0,0,0,0,5,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,46,7509,0,426,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,48,7181,0,453,0,0,50,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,49,7182,0,460,0,0,50,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,56,7181,0,455,0,0,50,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,57,7181,0,456,0,0,50,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,58,7509,0,427,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,60,7509,0,425,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,62,7509,0,428,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,64,3683,0,450,0,0,120,0,0,0,0,0,9,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,75,4195,0,448,0,3,123,0,0,0,0,0,5,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,77,5219,0,447,0,6,128,0,0,0,0,0,5,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(1,2,80,2601,0,424,0,0,100,0,0,1,0,37,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(4,1,0,29,0,25,0,0,80,0,1,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(4,1,1,36,0,26,0,0,90,0,1,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(4,1,2,3630,0,21,0,0,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(4,1,3,4142,0,20,0,0,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(4,1,4,4654,0,23,0,0,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(4,1,5,5166,0,24,0,0,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(4,1,6,5678,0,22,0,0,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(4,1,17,6188,0,32,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,1,0,2609,0,514,0,9,196,0,0,1,0,46,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,1,1,3096,0,523,0,0,90,0,0,1,0,0,0,0,0,236,211,237,65534,65534,255,0,0,0,0,0,0,0,0,0,0),
(5,1,2,3636,0,46,0,0,86,11,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,1,3,4148,0,47,0,0,86,8,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,1,4,4660,0,50,0,0,86,6,0,1,4,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,1,5,5172,0,51,0,0,86,12,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,1,6,5684,0,524,0,0,86,0,0,1,0,0,0,0,0,214,65534,65534,65534,65534,255,0,0,0,0,0,0,0,0,0,0),
(5,1,8,6720,0,489,6,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1640890143,0),
(5,1,10,6733,0,488,5,0,89,202,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,1,12,6693,0,130,0,0,249,0,1,0,0,4,0,0,0,65535,65535,65535,65535,65535,255,1,0,0,0,0,0,0,0,0,0),
(5,1,17,6615,0,405,0,15,0,0,0,0,0,0,0,0,0,3,65535,65535,65535,4,255,0,0,0,0,0,0,0,0,0,0),
(5,1,18,6405,0,487,0,0,0,0,0,0,0,0,0,0,0,3,3,3,65535,65535,17,0,0,0,0,0,0,0,0,0,0),
(5,1,22,7181,0,451,0,0,22,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,1,23,6736,0,505,9,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,1,24,7182,0,462,0,0,48,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,1,28,6272,0,526,0,2,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,1,29,7190,0,495,0,0,16,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,1,31,7182,0,457,0,0,37,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,1,32,6159,0,535,0,0,46,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,1,33,6159,0,536,0,0,50,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,1,34,6405,0,486,0,0,0,0,0,0,0,0,0,0,0,1,2,2,65535,65535,17,0,0,0,0,0,0,0,0,0,0),
(5,1,38,6270,0,528,0,4,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,1,39,6270,0,529,0,4,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,1,46,6270,0,530,0,2,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,1,47,6268,0,531,0,3,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,1,50,6272,0,534,0,1,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,1,236,6452,0,485,0,0,5,0,0,0,0,0,0,0,0,65534,65534,65534,65534,65534,19,0,0,0,0,0,0,0,0,0,0),
(5,1,237,6601,0,287,0,0,130,125,0,0,0,0,0,0,0,77,138,115,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,1,238,6593,0,288,0,0,130,125,0,0,0,0,0,0,0,134,188,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(5,12,0,3092,0,49,0,0,51,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,68300,0,0,0,1640728169,0),
(5,12,1,5684,0,48,0,9,100,7,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,407200,0,0,0,1640728185,0),
(5,12,2,6560,0,307,0,0,220,0,0,0,0,0,0,0,0,83,65535,65535,65535,65535,255,0,0,0,0,29899100,0,0,0,1640706093,0),
(5,12,3,7184,0,200,0,0,10,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,50000000,0,0,0,1640705543,0),
(5,12,4,7184,0,185,0,0,50,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,250000000,0,0,0,1640705546,0),
(7,1,0,1,0,59,0,0,22,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(7,1,1,3072,0,60,0,0,22,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(7,1,2,3610,0,78,0,5,62,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(7,1,3,4122,0,79,0,5,62,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(7,1,4,4634,0,80,0,5,62,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(7,1,5,5146,0,81,0,5,62,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(7,1,6,5658,0,82,0,5,62,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(7,1,17,7171,0,67,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(7,1,18,7171,0,68,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(7,1,19,7171,0,69,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(7,1,20,7171,0,70,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(7,1,21,7171,0,71,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(7,1,22,7174,0,72,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(7,1,23,7174,0,73,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(7,1,24,7174,0,74,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(7,1,25,7174,0,75,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(7,1,26,7174,0,76,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(7,1,27,7454,0,77,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(8,1,0,1,0,83,0,0,22,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(8,1,1,3072,0,84,0,0,22,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(8,1,3,4111,0,102,0,5,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(8,1,4,4623,0,103,0,5,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(8,1,5,5135,0,104,0,5,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(8,1,6,5647,0,105,0,5,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(8,1,7,6278,0,90,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142497,0),
(8,1,12,6732,0,85,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142497,0),
(8,1,13,6736,0,86,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142497,0),
(8,1,14,6763,0,87,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142497,0),
(8,1,15,6778,0,88,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142497,0),
(8,1,16,6779,0,89,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142497,0),
(8,1,17,7171,0,91,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(8,1,18,7171,0,92,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(8,1,19,7171,0,93,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(8,1,20,7171,0,94,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(8,1,21,7171,0,95,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(8,1,22,7174,0,96,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(8,1,23,7174,0,97,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(8,1,24,7174,0,98,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(8,1,25,7174,0,99,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(8,1,26,7174,0,100,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(8,1,27,7454,0,101,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(9,1,0,2090,0,106,0,0,70,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(9,1,1,2090,0,107,0,0,70,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(9,1,2,3792,0,108,0,5,48,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(9,1,3,4304,0,109,0,5,48,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(9,1,4,4816,0,110,0,5,48,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(9,1,5,5328,0,111,0,5,48,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(9,1,6,5840,0,112,0,5,48,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(9,1,17,7171,0,119,0,0,10,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(9,1,18,7171,0,120,0,0,10,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(9,1,19,7171,0,121,0,0,10,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(9,1,20,7171,0,122,0,0,10,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(9,1,21,7171,0,123,0,0,10,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(9,1,22,7174,0,124,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(9,1,23,7174,0,125,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(9,1,24,7174,0,126,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(9,1,25,7174,0,127,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(9,1,26,7174,0,128,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(9,1,27,7454,0,129,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(10,1,0,1,0,221,0,0,22,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(10,1,1,3072,0,222,0,0,22,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(10,1,2,3610,0,240,0,5,62,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(10,1,3,4122,0,241,0,5,62,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(10,1,4,4634,0,242,0,5,62,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(10,1,5,5146,0,243,0,5,62,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(10,1,6,5658,0,244,0,5,62,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(10,1,7,6274,0,228,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1641041271,0),
(10,1,12,6732,0,223,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1641041271,0),
(10,1,13,6736,0,224,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1641041271,0),
(10,1,14,6763,0,225,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1641041271,0),
(10,1,15,6778,0,226,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1641041271,0),
(10,1,16,6779,0,227,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1641041271,0),
(10,1,17,7171,0,229,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(10,1,18,7171,0,230,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(10,1,19,7171,0,231,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(10,1,20,7171,0,232,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(10,1,21,7171,0,233,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(10,1,22,7174,0,234,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(10,1,23,7174,0,235,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(10,1,24,7174,0,236,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(10,1,25,7174,0,237,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(10,1,26,7174,0,238,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),
(10,1,27,7454,0,239,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0);

/*Table structure for table `item_data_my` */

DROP TABLE IF EXISTS `item_data_my`;

CREATE TABLE `item_data_my` (
  `id` int unsigned NOT NULL,
  `box` tinyint unsigned NOT NULL,
  `slot` int unsigned NOT NULL,
  `entry` smallint unsigned NOT NULL,
  `server` smallint unsigned NOT NULL,
  `serial` int unsigned NOT NULL,
  `serial_cash_shop` int unsigned NOT NULL,
  `level` tinyint unsigned NOT NULL,
  `durability` tinyint unsigned NOT NULL,
  `durability_state` int NOT NULL,
  `skill` tinyint unsigned NOT NULL,
  `luck` tinyint unsigned NOT NULL,
  `option` tinyint unsigned NOT NULL,
  `excellent` tinyint unsigned NOT NULL,
  `ancient` tinyint unsigned NOT NULL,
  `option_380` tinyint unsigned NOT NULL,
  `harmony` tinyint unsigned NOT NULL,
  `socket_1` smallint unsigned NOT NULL,
  `socket_2` smallint unsigned NOT NULL,
  `socket_3` smallint unsigned NOT NULL,
  `socket_4` smallint unsigned NOT NULL,
  `socket_5` smallint unsigned NOT NULL,
  `socket_bonus` tinyint unsigned NOT NULL,
  `locked` tinyint unsigned NOT NULL,
  `data_1` int NOT NULL,
  `data_2` int NOT NULL,
  `data_3` int NOT NULL,
  `personal_store_price` int unsigned NOT NULL,
  `personal_store_job` smallint unsigned NOT NULL,
  `personal_store_jos` smallint unsigned NOT NULL,
  `personal_store_joc` smallint unsigned NOT NULL,
  `expire_date` bigint NOT NULL,
  `flags` int unsigned NOT NULL,
  PRIMARY KEY (`id`,`box`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `item_data_my` */

/*Table structure for table `item_pentagram_data` */

DROP TABLE IF EXISTS `item_pentagram_data`;

CREATE TABLE `item_pentagram_data` (
  `id` int unsigned NOT NULL,
  `type` tinyint unsigned NOT NULL,
  `index` tinyint unsigned NOT NULL,
  `attribute` tinyint unsigned NOT NULL,
  `item_type` tinyint unsigned NOT NULL,
  `item_index` smallint unsigned NOT NULL,
  `item_level` tinyint unsigned NOT NULL,
  `option_index_rank_1` tinyint unsigned NOT NULL,
  `option_level_rank_1` tinyint unsigned NOT NULL,
  `option_index_rank_2` tinyint unsigned NOT NULL,
  `option_level_rank_2` tinyint unsigned NOT NULL,
  `option_index_rank_3` tinyint unsigned NOT NULL,
  `option_level_rank_3` tinyint unsigned NOT NULL,
  `option_index_rank_4` tinyint unsigned NOT NULL,
  `option_level_rank_4` tinyint unsigned NOT NULL,
  `option_index_rank_5` tinyint unsigned NOT NULL,
  `option_level_rank_5` tinyint unsigned NOT NULL,
  `serial_server` smallint unsigned NOT NULL,
  `serial` int unsigned NOT NULL,
  `flags` int unsigned NOT NULL,
  `data_1` int NOT NULL,
  `data_2` int NOT NULL,
  `data_3` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `item_pentagram_data` */

/*Table structure for table `item_recovery` */

DROP TABLE IF EXISTS `item_recovery`;

CREATE TABLE `item_recovery` (
  `char_id` int unsigned NOT NULL,
  `item` smallint unsigned NOT NULL,
  `level` tinyint unsigned NOT NULL,
  `durability` tinyint unsigned NOT NULL,
  `skill` tinyint unsigned NOT NULL,
  `luck` tinyint unsigned NOT NULL,
  `option` tinyint unsigned NOT NULL,
  `excellent` tinyint unsigned NOT NULL,
  `ancient` tinyint unsigned NOT NULL,
  `harmony` tinyint unsigned NOT NULL,
  `option_380` tinyint unsigned NOT NULL,
  `socket_1` smallint unsigned NOT NULL,
  `socket_2` smallint unsigned NOT NULL,
  `socket_3` smallint unsigned NOT NULL,
  `socket_4` smallint unsigned NOT NULL,
  `socket_5` smallint unsigned NOT NULL,
  `socket_bonus` tinyint unsigned NOT NULL,
  `data_1` int NOT NULL,
  `data_2` int NOT NULL,
  `data_3` int NOT NULL,
  `serial_server` smallint unsigned NOT NULL,
  `serial` int unsigned NOT NULL,
  `serial_cash_shop` int unsigned NOT NULL,
  `flags` int unsigned NOT NULL,
  `id` int unsigned NOT NULL,
  PRIMARY KEY (`char_id`,`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `item_recovery` */

/*Table structure for table `monster_respawn` */

DROP TABLE IF EXISTS `monster_respawn`;

CREATE TABLE `monster_respawn` (
  `server` smallint unsigned NOT NULL,
  `guid` smallint unsigned NOT NULL,
  `date` bigint NOT NULL,
  PRIMARY KEY (`server`,`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `monster_respawn` */

/*Table structure for table `party` */

DROP TABLE IF EXISTS `party`;

CREATE TABLE `party` (
  `guid` smallint unsigned NOT NULL,
  `server` smallint unsigned NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `party` */

/*Table structure for table `party_member` */

DROP TABLE IF EXISTS `party_member`;

CREATE TABLE `party_member` (
  `server` smallint unsigned NOT NULL,
  `party` smallint unsigned NOT NULL,
  `member` int unsigned NOT NULL,
  `position` tinyint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `party_member` */

/*Table structure for table `serial_check` */

DROP TABLE IF EXISTS `serial_check`;

CREATE TABLE `serial_check` (
  `server` smallint unsigned NOT NULL,
  `serial` int unsigned NOT NULL,
  `type` tinyint unsigned NOT NULL,
  `account_id` int unsigned NOT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `disk_serial` int unsigned NOT NULL,
  PRIMARY KEY (`serial`,`server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `serial_check` */

/*Table structure for table `server_signal` */

DROP TABLE IF EXISTS `server_signal`;

CREATE TABLE `server_signal` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `server` smallint unsigned NOT NULL,
  `signal` smallint unsigned NOT NULL,
  `data_1` int NOT NULL,
  `data_2` int NOT NULL,
  `data_3` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `server_signal` */

/*Table structure for table `tormented_square_survival_hall_of_fame` */

DROP TABLE IF EXISTS `tormented_square_survival_hall_of_fame`;

CREATE TABLE `tormented_square_survival_hall_of_fame` (
  `char_id_1` int unsigned NOT NULL,
  `char_name_1` varchar(255) DEFAULT NULL,
  `char_id_2` int unsigned NOT NULL,
  `char_name_2` varchar(255) DEFAULT NULL,
  `score` int NOT NULL,
  PRIMARY KEY (`char_id_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `tormented_square_survival_hall_of_fame` */

/*Table structure for table `tormented_square_survival_ranking` */

DROP TABLE IF EXISTS `tormented_square_survival_ranking`;

CREATE TABLE `tormented_square_survival_ranking` (
  `type` tinyint unsigned NOT NULL,
  `ranking` int NOT NULL,
  `char_id_1` int unsigned NOT NULL,
  `char_name_1` varchar(255) DEFAULT NULL,
  `char_id_2` int unsigned NOT NULL,
  `char_name_2` varchar(255) DEFAULT NULL,
  `score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `tormented_square_survival_ranking` */

/*Table structure for table `tormented_square_survival_team` */

DROP TABLE IF EXISTS `tormented_square_survival_team`;

CREATE TABLE `tormented_square_survival_team` (
  `char_id_1` int unsigned NOT NULL,
  `char_id_2` int unsigned NOT NULL,
  `score` int NOT NULL,
  `type` tinyint unsigned NOT NULL,
  `enter_count` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `tormented_square_survival_team` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
