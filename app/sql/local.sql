-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES (90,'wpforms_email_summaries_fetch_info_blocks','complete','2023-05-27 13:10:40','2023-05-27 13:10:40','{\"tasks_meta_id\":null}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1685193040;s:18:\"\0*\0first_timestamp\";i:1682394900;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1685193040;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,1,'2023-05-28 16:46:09','2023-05-28 16:46:09',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (91,'wpforms_admin_addons_cache_update','complete','2023-05-27 13:10:41','2023-05-27 13:10:41','{\"tasks_meta_id\":2}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1685193041;s:18:\"\0*\0first_timestamp\";i:1683558380;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1685193041;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,1,'2023-05-28 16:46:09','2023-05-28 16:46:09',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (92,'wpforms_admin_builder_templates_cache_update','complete','2023-05-27 13:10:41','2023-05-27 13:10:41','{\"tasks_meta_id\":3}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1685193041;s:18:\"\0*\0first_timestamp\";i:1683558380;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1685193041;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,1,'2023-05-28 16:46:10','2023-05-28 16:46:10',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (97,'wpforms_builder_help_cache_update','complete','2023-05-29 12:08:13','2023-05-29 12:08:13','{\"tasks_meta_id\":14}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1685362093;s:18:\"\0*\0first_timestamp\";i:1685362093;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1685362093;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,1,'2023-05-30 07:19:38','2023-05-30 07:19:38',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (102,'wpforms_process_forms_locator_scan','complete','2023-05-26 07:32:36','2023-05-26 07:32:36','{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1685086356;s:18:\"\0*\0first_timestamp\";i:1682953562;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1685086356;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-05-26 08:00:12','2023-05-26 08:00:12',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (103,'wpforms_process_forms_locator_scan','complete','2023-05-27 08:00:12','2023-05-27 08:00:12','{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1685174412;s:18:\"\0*\0first_timestamp\";i:1682953562;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1685174412;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-05-28 16:46:09','2023-05-28 16:46:09',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (104,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":17}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-05-26 08:01:19','2023-05-26 08:01:19',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (105,'wpforms_process_forms_locator_scan','complete','2023-05-29 16:46:09','2023-05-29 16:46:09','{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1685378769;s:18:\"\0*\0first_timestamp\";i:1682953562;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1685378769;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-05-30 07:19:39','2023-05-30 07:19:39',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (106,'wpforms_email_summaries_fetch_info_blocks','complete','2023-06-04 16:46:09','2023-06-04 16:46:09','{\"tasks_meta_id\":null}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1685897169;s:18:\"\0*\0first_timestamp\";i:1682394900;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1685897169;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,1,'2023-06-04 16:52:44','2023-06-04 16:52:44',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (107,'wpforms_admin_addons_cache_update','complete','2023-06-04 16:46:09','2023-06-04 16:46:09','{\"tasks_meta_id\":2}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1685897169;s:18:\"\0*\0first_timestamp\";i:1683558380;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1685897169;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,1,'2023-06-04 16:52:45','2023-06-04 16:52:45',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (108,'wpforms_admin_builder_templates_cache_update','complete','2023-06-04 16:46:10','2023-06-04 16:46:10','{\"tasks_meta_id\":3}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1685897170;s:18:\"\0*\0first_timestamp\";i:1683558380;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1685897170;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,1,'2023-06-04 16:52:47','2023-06-04 16:52:47',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (109,'wpforms_builder_help_cache_update','complete','2023-06-06 07:19:38','2023-06-06 07:19:38','{\"tasks_meta_id\":14}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1686035978;s:18:\"\0*\0first_timestamp\";i:1685362093;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1686035978;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,1,'2023-06-06 08:58:09','2023-06-06 08:58:09',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (111,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":18}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-05-30 07:20:32','2023-05-30 07:20:32',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (113,'wpforms_process_forms_locator_scan','complete','2023-05-30 20:40:58','2023-05-30 20:40:58','{\"tasks_meta_id\":20}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1685479258;s:18:\"\0*\0first_timestamp\";i:1685479258;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1685479258;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-05-30 20:44:14','2023-05-30 20:44:14',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (114,'wpforms_process_forms_locator_scan','complete','2023-05-31 20:44:14','2023-05-31 20:44:14','{\"tasks_meta_id\":20}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1685565854;s:18:\"\0*\0first_timestamp\";i:1685479258;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1685565854;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-05-31 20:44:18','2023-05-31 20:44:18',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (115,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":21}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-05-31 07:50:44','2023-05-31 07:50:44',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (116,'wpforms_process_forms_locator_scan','complete','2023-06-01 20:44:18','2023-06-01 20:44:18','{\"tasks_meta_id\":20}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1685652258;s:18:\"\0*\0first_timestamp\";i:1685479258;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1685652258;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-01 20:48:20','2023-06-01 20:48:20',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (117,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":22}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-06-01 10:19:04','2023-06-01 10:19:04',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (118,'wpforms_process_forms_locator_scan','complete','2023-06-02 20:48:20','2023-06-02 20:48:20','{\"tasks_meta_id\":20}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1685738900;s:18:\"\0*\0first_timestamp\";i:1685479258;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1685738900;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-02 20:48:21','2023-06-02 20:48:21',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (119,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":23}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-06-02 11:10:36','2023-06-02 11:10:36',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (120,'wpforms_process_forms_locator_scan','complete','2023-06-03 20:48:21','2023-06-03 20:48:21','{\"tasks_meta_id\":20}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1685825301;s:18:\"\0*\0first_timestamp\";i:1685479258;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1685825301;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-03 20:51:34','2023-06-03 20:51:34',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (121,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":24}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-06-03 19:27:27','2023-06-03 19:27:27',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (122,'wpforms_process_forms_locator_scan','complete','2023-06-04 20:51:34','2023-06-04 20:51:34','{\"tasks_meta_id\":20}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1685911894;s:18:\"\0*\0first_timestamp\";i:1685479258;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1685911894;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-05 07:46:34','2023-06-05 07:46:34',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (123,'wpforms_email_summaries_fetch_info_blocks','complete','2023-06-11 16:52:44','2023-06-11 16:52:44','{\"tasks_meta_id\":null}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1686502364;s:18:\"\0*\0first_timestamp\";i:1682394900;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1686502364;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,1,'2023-06-12 07:32:42','2023-06-12 07:32:42',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (124,'wpforms_admin_addons_cache_update','complete','2023-06-11 16:52:45','2023-06-11 16:52:45','{\"tasks_meta_id\":2}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1686502365;s:18:\"\0*\0first_timestamp\";i:1683558380;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1686502365;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,1,'2023-06-12 07:32:42','2023-06-12 07:32:42',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (125,'wpforms_admin_builder_templates_cache_update','complete','2023-06-11 16:52:47','2023-06-11 16:52:47','{\"tasks_meta_id\":3}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1686502367;s:18:\"\0*\0first_timestamp\";i:1683558380;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1686502367;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,1,'2023-06-12 07:32:43','2023-06-12 07:32:43',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (126,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":25}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-06-04 19:31:06','2023-06-04 19:31:06',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (127,'wpforms_process_forms_locator_scan','complete','2023-06-06 07:46:34','2023-06-06 07:46:34','{\"tasks_meta_id\":20}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1686037594;s:18:\"\0*\0first_timestamp\";i:1685479258;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1686037594;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-06 08:58:09','2023-06-06 08:58:09',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (128,'wpforms_builder_help_cache_update','complete','2023-06-13 08:58:09','2023-06-13 08:58:09','{\"tasks_meta_id\":14}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1686646689;s:18:\"\0*\0first_timestamp\";i:1685362093;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1686646689;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,1,'2023-06-13 08:58:20','2023-06-13 08:58:20',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (130,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":26}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-06-06 09:01:05','2023-06-06 09:01:05',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (132,'wpforms_process_forms_locator_scan','complete','2023-06-06 13:16:20','2023-06-06 13:16:20','{\"tasks_meta_id\":28}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1686057380;s:18:\"\0*\0first_timestamp\";i:1686057380;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1686057380;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-06 13:16:24','2023-06-06 13:16:24',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (133,'wpforms_process_forms_locator_scan','complete','2023-06-07 13:16:24','2023-06-07 13:16:24','{\"tasks_meta_id\":28}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1686143784;s:18:\"\0*\0first_timestamp\";i:1686057380;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1686143784;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-08 07:46:24','2023-06-08 07:46:24',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (134,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":29}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-06-08 07:46:24','2023-06-08 07:46:24',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (135,'wpforms_process_forms_locator_scan','complete','2023-06-09 07:46:24','2023-06-09 07:46:24','{\"tasks_meta_id\":28}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1686296784;s:18:\"\0*\0first_timestamp\";i:1686057380;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1686296784;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-09 09:17:25','2023-06-09 09:17:25',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (136,'wpforms_process_forms_locator_scan','complete','2023-06-10 09:17:25','2023-06-10 09:17:25','{\"tasks_meta_id\":28}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1686388645;s:18:\"\0*\0first_timestamp\";i:1686057380;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1686388645;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-11 06:10:57','2023-06-11 06:10:57',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (137,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":30}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-06-09 09:21:40','2023-06-09 09:21:40',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (138,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":31}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-06-11 06:10:57','2023-06-11 06:10:57',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (139,'wpforms_process_forms_locator_scan','complete','2023-06-12 06:10:57','2023-06-12 06:10:57','{\"tasks_meta_id\":28}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1686550257;s:18:\"\0*\0first_timestamp\";i:1686057380;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1686550257;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-12 07:32:43','2023-06-12 07:32:43',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (140,'wpforms_email_summaries_fetch_info_blocks','complete','2023-06-19 07:32:42','2023-06-19 07:32:42','{\"tasks_meta_id\":null}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1687159962;s:18:\"\0*\0first_timestamp\";i:1682394900;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1687159962;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,1,'2023-06-19 07:37:13','2023-06-19 07:37:13',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (141,'wpforms_admin_addons_cache_update','complete','2023-06-19 07:32:42','2023-06-19 07:32:42','{\"tasks_meta_id\":2}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1687159962;s:18:\"\0*\0first_timestamp\";i:1683558380;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1687159962;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,1,'2023-06-19 07:37:14','2023-06-19 07:37:14',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (142,'wpforms_admin_builder_templates_cache_update','complete','2023-06-19 07:32:43','2023-06-19 07:32:43','{\"tasks_meta_id\":3}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1687159963;s:18:\"\0*\0first_timestamp\";i:1683558380;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1687159963;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,1,'2023-06-19 07:37:14','2023-06-19 07:37:14',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (143,'wpforms_process_forms_locator_scan','complete','2023-06-13 07:32:43','2023-06-13 07:32:43','{\"tasks_meta_id\":28}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1686641563;s:18:\"\0*\0first_timestamp\";i:1686057380;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1686641563;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-13 07:39:55','2023-06-13 07:39:55',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (144,'wpforms_process_forms_locator_scan','complete','2023-06-14 07:39:55','2023-06-14 07:39:55','{\"tasks_meta_id\":28}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1686728395;s:18:\"\0*\0first_timestamp\";i:1686057380;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1686728395;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-14 07:40:55','2023-06-14 07:40:55',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (145,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":32}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-06-13 08:42:31','2023-06-13 08:42:31',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (146,'wpforms_builder_help_cache_update','complete','2023-06-20 08:58:20','2023-06-20 08:58:20','{\"tasks_meta_id\":14}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1687251500;s:18:\"\0*\0first_timestamp\";i:1685362093;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1687251500;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,1,'2023-06-20 09:02:30','2023-06-20 09:02:30',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (147,'wpforms_process_forms_locator_scan','complete','2023-06-15 07:40:55','2023-06-15 07:40:55','{\"tasks_meta_id\":28}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1686814855;s:18:\"\0*\0first_timestamp\";i:1686057380;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1686814855;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-15 07:48:20','2023-06-15 07:48:20',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (148,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":33}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-06-14 08:43:06','2023-06-14 08:43:06',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (149,'wpforms_process_forms_locator_scan','complete','2023-06-16 07:48:20','2023-06-16 07:48:20','{\"tasks_meta_id\":28}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1686901700;s:18:\"\0*\0first_timestamp\";i:1686057380;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1686901700;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-16 07:49:50','2023-06-16 07:49:50',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (150,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":34}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-06-15 08:44:33','2023-06-15 08:44:33',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (151,'wpforms_process_forms_locator_scan','complete','2023-06-17 07:49:50','2023-06-17 07:49:50','{\"tasks_meta_id\":28}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1686988190;s:18:\"\0*\0first_timestamp\";i:1686057380;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1686988190;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-17 23:37:46','2023-06-17 23:37:46',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (152,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":35}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-06-16 08:45:29','2023-06-16 08:45:29',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (153,'wpforms_process_forms_locator_scan','complete','2023-06-18 23:37:46','2023-06-18 23:37:46','{\"tasks_meta_id\":28}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1687131466;s:18:\"\0*\0first_timestamp\";i:1686057380;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1687131466;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-19 07:30:46','2023-06-19 07:30:46',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (154,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":36}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-06-18 01:37:42','2023-06-18 01:37:42',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (155,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":37}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-06-19 07:30:46','2023-06-19 07:30:46',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (156,'wpforms_process_forms_locator_scan','complete','2023-06-20 07:30:46','2023-06-20 07:30:46','{\"tasks_meta_id\":28}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1687246246;s:18:\"\0*\0first_timestamp\";i:1686057380;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1687246246;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-20 07:49:58','2023-06-20 07:49:58',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (157,'wpforms_email_summaries_fetch_info_blocks','pending','2023-06-26 07:37:13','2023-06-26 07:37:13','{\"tasks_meta_id\":null}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1687765033;s:18:\"\0*\0first_timestamp\";i:1682394900;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1687765033;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (158,'wpforms_admin_addons_cache_update','pending','2023-06-26 07:37:14','2023-06-26 07:37:14','{\"tasks_meta_id\":2}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1687765034;s:18:\"\0*\0first_timestamp\";i:1683558380;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1687765034;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (159,'wpforms_admin_builder_templates_cache_update','pending','2023-06-26 07:37:14','2023-06-26 07:37:14','{\"tasks_meta_id\":3}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1687765034;s:18:\"\0*\0first_timestamp\";i:1683558380;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1687765034;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (160,'wpforms_process_forms_locator_scan','complete','2023-06-21 07:49:58','2023-06-21 07:49:58','{\"tasks_meta_id\":28}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1687333798;s:18:\"\0*\0first_timestamp\";i:1686057380;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1687333798;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-21 07:50:12','2023-06-21 07:50:12',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (161,'wpforms_builder_help_cache_update','pending','2023-06-27 09:02:30','2023-06-27 09:02:30','{\"tasks_meta_id\":14}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1687856550;s:18:\"\0*\0first_timestamp\";i:1685362093;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1687856550;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (162,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":38}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-06-20 10:05:14','2023-06-20 10:05:14',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (163,'wpforms_process_forms_locator_scan','complete','2023-06-22 07:50:12','2023-06-22 07:50:12','{\"tasks_meta_id\":28}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1687420212;s:18:\"\0*\0first_timestamp\";i:1686057380;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1687420212;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-22 12:36:13','2023-06-22 12:36:13',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (164,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":39}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-06-21 10:09:09','2023-06-21 10:09:09',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (165,'wpforms_process_forms_locator_scan','complete','2023-06-23 12:36:13','2023-06-23 12:36:13','{\"tasks_meta_id\":28}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1687523773;s:18:\"\0*\0first_timestamp\";i:1686057380;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1687523773;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-23 16:37:40','2023-06-23 16:37:40',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (166,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":40}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-06-23 08:00:02','2023-06-23 08:00:02',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (167,'wpforms_process_forms_locator_scan','complete','2023-06-24 16:37:40','2023-06-24 16:37:40','{\"tasks_meta_id\":28}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1687624660;s:18:\"\0*\0first_timestamp\";i:1686057380;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1687624660;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-24 20:09:39','2023-06-24 20:09:39',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (168,'wpforms_process_forms_locator_scan','complete','2023-06-25 20:09:39','2023-06-25 20:09:39','{\"tasks_meta_id\":28}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1687723779;s:18:\"\0*\0first_timestamp\";i:1686057380;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1687723779;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-06-25 20:16:38','2023-06-25 20:16:38',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (169,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":41}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-06-24 21:58:29','2023-06-24 21:58:29',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (170,'wpforms_process_forms_locator_scan','pending','2023-06-26 20:16:38','2023-06-26 20:16:38','{\"tasks_meta_id\":28}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1687810598;s:18:\"\0*\0first_timestamp\";i:1686057380;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1687810598;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=5252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES (1,'action-scheduler-migration');
INSERT INTO `wp_actionscheduler_groups` VALUES (2,'wpforms');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES (79,90,'action created','2023-05-20 13:10:40','2023-05-20 13:10:40');
INSERT INTO `wp_actionscheduler_logs` VALUES (82,91,'action created','2023-05-20 13:10:41','2023-05-20 13:10:41');
INSERT INTO `wp_actionscheduler_logs` VALUES (85,92,'action created','2023-05-20 13:10:41','2023-05-20 13:10:41');
INSERT INTO `wp_actionscheduler_logs` VALUES (98,97,'action created','2023-05-22 12:08:13','2023-05-22 12:08:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (113,102,'action created','2023-05-25 07:32:36','2023-05-25 07:32:36');
INSERT INTO `wp_actionscheduler_logs` VALUES (114,102,'action started via WP Cron','2023-05-26 08:00:12','2023-05-26 08:00:12');
INSERT INTO `wp_actionscheduler_logs` VALUES (115,102,'action complete via WP Cron','2023-05-26 08:00:12','2023-05-26 08:00:12');
INSERT INTO `wp_actionscheduler_logs` VALUES (116,103,'action created','2023-05-26 08:00:12','2023-05-26 08:00:12');
INSERT INTO `wp_actionscheduler_logs` VALUES (117,104,'action created','2023-05-26 08:01:09','2023-05-26 08:01:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (118,104,'action started via Async Request','2023-05-26 08:01:18','2023-05-26 08:01:18');
INSERT INTO `wp_actionscheduler_logs` VALUES (119,104,'action complete via Async Request','2023-05-26 08:01:19','2023-05-26 08:01:19');
INSERT INTO `wp_actionscheduler_logs` VALUES (120,103,'action started via WP Cron','2023-05-28 16:46:09','2023-05-28 16:46:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (121,103,'action complete via WP Cron','2023-05-28 16:46:09','2023-05-28 16:46:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (122,105,'action created','2023-05-28 16:46:09','2023-05-28 16:46:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (123,90,'action started via WP Cron','2023-05-28 16:46:09','2023-05-28 16:46:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (124,90,'action complete via WP Cron','2023-05-28 16:46:09','2023-05-28 16:46:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (125,106,'action created','2023-05-28 16:46:09','2023-05-28 16:46:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (126,91,'action started via WP Cron','2023-05-28 16:46:09','2023-05-28 16:46:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (127,91,'action complete via WP Cron','2023-05-28 16:46:09','2023-05-28 16:46:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (128,107,'action created','2023-05-28 16:46:09','2023-05-28 16:46:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (129,92,'action started via WP Cron','2023-05-28 16:46:09','2023-05-28 16:46:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (130,92,'action complete via WP Cron','2023-05-28 16:46:10','2023-05-28 16:46:10');
INSERT INTO `wp_actionscheduler_logs` VALUES (131,108,'action created','2023-05-28 16:46:10','2023-05-28 16:46:10');
INSERT INTO `wp_actionscheduler_logs` VALUES (132,97,'action started via WP Cron','2023-05-30 07:19:38','2023-05-30 07:19:38');
INSERT INTO `wp_actionscheduler_logs` VALUES (133,97,'action complete via WP Cron','2023-05-30 07:19:38','2023-05-30 07:19:38');
INSERT INTO `wp_actionscheduler_logs` VALUES (134,109,'action created','2023-05-30 07:19:38','2023-05-30 07:19:38');
INSERT INTO `wp_actionscheduler_logs` VALUES (135,105,'action started via WP Cron','2023-05-30 07:19:39','2023-05-30 07:19:39');
INSERT INTO `wp_actionscheduler_logs` VALUES (136,105,'action complete via WP Cron','2023-05-30 07:19:39','2023-05-30 07:19:39');
INSERT INTO `wp_actionscheduler_logs` VALUES (138,111,'action created','2023-05-30 07:19:46','2023-05-30 07:19:46');
INSERT INTO `wp_actionscheduler_logs` VALUES (139,111,'action started via WP Cron','2023-05-30 07:20:32','2023-05-30 07:20:32');
INSERT INTO `wp_actionscheduler_logs` VALUES (140,111,'action complete via WP Cron','2023-05-30 07:20:32','2023-05-30 07:20:32');
INSERT INTO `wp_actionscheduler_logs` VALUES (144,113,'action created','2023-05-30 20:40:58','2023-05-30 20:40:58');
INSERT INTO `wp_actionscheduler_logs` VALUES (145,113,'action started via WP Cron','2023-05-30 20:44:14','2023-05-30 20:44:14');
INSERT INTO `wp_actionscheduler_logs` VALUES (146,113,'action complete via WP Cron','2023-05-30 20:44:14','2023-05-30 20:44:14');
INSERT INTO `wp_actionscheduler_logs` VALUES (147,114,'action created','2023-05-30 20:44:14','2023-05-30 20:44:14');
INSERT INTO `wp_actionscheduler_logs` VALUES (148,115,'action created','2023-05-31 07:50:08','2023-05-31 07:50:08');
INSERT INTO `wp_actionscheduler_logs` VALUES (149,115,'action started via WP Cron','2023-05-31 07:50:44','2023-05-31 07:50:44');
INSERT INTO `wp_actionscheduler_logs` VALUES (150,115,'action complete via WP Cron','2023-05-31 07:50:44','2023-05-31 07:50:44');
INSERT INTO `wp_actionscheduler_logs` VALUES (151,114,'action started via WP Cron','2023-05-31 20:44:18','2023-05-31 20:44:18');
INSERT INTO `wp_actionscheduler_logs` VALUES (152,114,'action complete via WP Cron','2023-05-31 20:44:18','2023-05-31 20:44:18');
INSERT INTO `wp_actionscheduler_logs` VALUES (153,116,'action created','2023-05-31 20:44:18','2023-05-31 20:44:18');
INSERT INTO `wp_actionscheduler_logs` VALUES (154,117,'action created','2023-06-01 10:17:41','2023-06-01 10:17:41');
INSERT INTO `wp_actionscheduler_logs` VALUES (155,117,'action started via WP Cron','2023-06-01 10:19:04','2023-06-01 10:19:04');
INSERT INTO `wp_actionscheduler_logs` VALUES (156,117,'action complete via WP Cron','2023-06-01 10:19:04','2023-06-01 10:19:04');
INSERT INTO `wp_actionscheduler_logs` VALUES (157,116,'action started via WP Cron','2023-06-01 20:48:20','2023-06-01 20:48:20');
INSERT INTO `wp_actionscheduler_logs` VALUES (158,116,'action complete via WP Cron','2023-06-01 20:48:20','2023-06-01 20:48:20');
INSERT INTO `wp_actionscheduler_logs` VALUES (159,118,'action created','2023-06-01 20:48:20','2023-06-01 20:48:20');
INSERT INTO `wp_actionscheduler_logs` VALUES (160,119,'action created','2023-06-02 11:10:34','2023-06-02 11:10:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (161,119,'action started via WP Cron','2023-06-02 11:10:34','2023-06-02 11:10:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (162,119,'action complete via WP Cron','2023-06-02 11:10:36','2023-06-02 11:10:36');
INSERT INTO `wp_actionscheduler_logs` VALUES (163,118,'action started via WP Cron','2023-06-02 20:48:21','2023-06-02 20:48:21');
INSERT INTO `wp_actionscheduler_logs` VALUES (164,118,'action complete via WP Cron','2023-06-02 20:48:21','2023-06-02 20:48:21');
INSERT INTO `wp_actionscheduler_logs` VALUES (165,120,'action created','2023-06-02 20:48:21','2023-06-02 20:48:21');
INSERT INTO `wp_actionscheduler_logs` VALUES (166,121,'action created','2023-06-03 19:27:27','2023-06-03 19:27:27');
INSERT INTO `wp_actionscheduler_logs` VALUES (167,121,'action started via WP Cron','2023-06-03 19:27:27','2023-06-03 19:27:27');
INSERT INTO `wp_actionscheduler_logs` VALUES (168,121,'action complete via WP Cron','2023-06-03 19:27:27','2023-06-03 19:27:27');
INSERT INTO `wp_actionscheduler_logs` VALUES (169,120,'action started via WP Cron','2023-06-03 20:51:34','2023-06-03 20:51:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (170,120,'action complete via WP Cron','2023-06-03 20:51:34','2023-06-03 20:51:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (171,122,'action created','2023-06-03 20:51:34','2023-06-03 20:51:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (172,106,'action started via WP Cron','2023-06-04 16:52:43','2023-06-04 16:52:43');
INSERT INTO `wp_actionscheduler_logs` VALUES (173,106,'action complete via WP Cron','2023-06-04 16:52:44','2023-06-04 16:52:44');
INSERT INTO `wp_actionscheduler_logs` VALUES (174,123,'action created','2023-06-04 16:52:44','2023-06-04 16:52:44');
INSERT INTO `wp_actionscheduler_logs` VALUES (175,107,'action started via WP Cron','2023-06-04 16:52:44','2023-06-04 16:52:44');
INSERT INTO `wp_actionscheduler_logs` VALUES (176,107,'action complete via WP Cron','2023-06-04 16:52:45','2023-06-04 16:52:45');
INSERT INTO `wp_actionscheduler_logs` VALUES (177,124,'action created','2023-06-04 16:52:45','2023-06-04 16:52:45');
INSERT INTO `wp_actionscheduler_logs` VALUES (178,108,'action started via WP Cron','2023-06-04 16:52:45','2023-06-04 16:52:45');
INSERT INTO `wp_actionscheduler_logs` VALUES (179,108,'action complete via WP Cron','2023-06-04 16:52:46','2023-06-04 16:52:46');
INSERT INTO `wp_actionscheduler_logs` VALUES (180,125,'action created','2023-06-04 16:52:47','2023-06-04 16:52:47');
INSERT INTO `wp_actionscheduler_logs` VALUES (181,126,'action created','2023-06-04 19:31:06','2023-06-04 19:31:06');
INSERT INTO `wp_actionscheduler_logs` VALUES (182,126,'action started via WP Cron','2023-06-04 19:31:06','2023-06-04 19:31:06');
INSERT INTO `wp_actionscheduler_logs` VALUES (183,126,'action complete via WP Cron','2023-06-04 19:31:06','2023-06-04 19:31:06');
INSERT INTO `wp_actionscheduler_logs` VALUES (184,122,'action started via WP Cron','2023-06-05 07:46:34','2023-06-05 07:46:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (185,122,'action complete via WP Cron','2023-06-05 07:46:34','2023-06-05 07:46:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (186,127,'action created','2023-06-05 07:46:34','2023-06-05 07:46:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (187,109,'action started via WP Cron','2023-06-06 08:58:08','2023-06-06 08:58:08');
INSERT INTO `wp_actionscheduler_logs` VALUES (188,109,'action complete via WP Cron','2023-06-06 08:58:09','2023-06-06 08:58:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (189,128,'action created','2023-06-06 08:58:09','2023-06-06 08:58:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (190,127,'action started via WP Cron','2023-06-06 08:58:09','2023-06-06 08:58:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (191,127,'action complete via WP Cron','2023-06-06 08:58:09','2023-06-06 08:58:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (193,130,'action created','2023-06-06 08:59:48','2023-06-06 08:59:48');
INSERT INTO `wp_actionscheduler_logs` VALUES (194,130,'action started via WP Cron','2023-06-06 09:01:04','2023-06-06 09:01:04');
INSERT INTO `wp_actionscheduler_logs` VALUES (195,130,'action complete via WP Cron','2023-06-06 09:01:05','2023-06-06 09:01:05');
INSERT INTO `wp_actionscheduler_logs` VALUES (199,132,'action created','2023-06-06 13:16:20','2023-06-06 13:16:20');
INSERT INTO `wp_actionscheduler_logs` VALUES (200,132,'action started via WP Cron','2023-06-06 13:16:24','2023-06-06 13:16:24');
INSERT INTO `wp_actionscheduler_logs` VALUES (201,132,'action complete via WP Cron','2023-06-06 13:16:24','2023-06-06 13:16:24');
INSERT INTO `wp_actionscheduler_logs` VALUES (202,133,'action created','2023-06-06 13:16:24','2023-06-06 13:16:24');
INSERT INTO `wp_actionscheduler_logs` VALUES (203,134,'action created','2023-06-08 07:46:23','2023-06-08 07:46:23');
INSERT INTO `wp_actionscheduler_logs` VALUES (204,134,'action started via WP Cron','2023-06-08 07:46:23','2023-06-08 07:46:23');
INSERT INTO `wp_actionscheduler_logs` VALUES (205,134,'action complete via WP Cron','2023-06-08 07:46:24','2023-06-08 07:46:24');
INSERT INTO `wp_actionscheduler_logs` VALUES (206,133,'action started via WP Cron','2023-06-08 07:46:24','2023-06-08 07:46:24');
INSERT INTO `wp_actionscheduler_logs` VALUES (207,133,'action complete via WP Cron','2023-06-08 07:46:24','2023-06-08 07:46:24');
INSERT INTO `wp_actionscheduler_logs` VALUES (208,135,'action created','2023-06-08 07:46:24','2023-06-08 07:46:24');
INSERT INTO `wp_actionscheduler_logs` VALUES (209,135,'action started via WP Cron','2023-06-09 09:17:24','2023-06-09 09:17:24');
INSERT INTO `wp_actionscheduler_logs` VALUES (210,135,'action complete via WP Cron','2023-06-09 09:17:25','2023-06-09 09:17:25');
INSERT INTO `wp_actionscheduler_logs` VALUES (211,136,'action created','2023-06-09 09:17:26','2023-06-09 09:17:26');
INSERT INTO `wp_actionscheduler_logs` VALUES (212,137,'action created','2023-06-09 09:20:46','2023-06-09 09:20:46');
INSERT INTO `wp_actionscheduler_logs` VALUES (213,137,'action started via WP Cron','2023-06-09 09:21:40','2023-06-09 09:21:40');
INSERT INTO `wp_actionscheduler_logs` VALUES (214,137,'action complete via WP Cron','2023-06-09 09:21:40','2023-06-09 09:21:40');
INSERT INTO `wp_actionscheduler_logs` VALUES (215,138,'action created','2023-06-11 06:10:56','2023-06-11 06:10:56');
INSERT INTO `wp_actionscheduler_logs` VALUES (216,138,'action started via WP Cron','2023-06-11 06:10:56','2023-06-11 06:10:56');
INSERT INTO `wp_actionscheduler_logs` VALUES (217,138,'action complete via WP Cron','2023-06-11 06:10:57','2023-06-11 06:10:57');
INSERT INTO `wp_actionscheduler_logs` VALUES (218,136,'action started via WP Cron','2023-06-11 06:10:57','2023-06-11 06:10:57');
INSERT INTO `wp_actionscheduler_logs` VALUES (219,136,'action complete via WP Cron','2023-06-11 06:10:57','2023-06-11 06:10:57');
INSERT INTO `wp_actionscheduler_logs` VALUES (220,139,'action created','2023-06-11 06:10:57','2023-06-11 06:10:57');
INSERT INTO `wp_actionscheduler_logs` VALUES (221,123,'action started via WP Cron','2023-06-12 07:32:42','2023-06-12 07:32:42');
INSERT INTO `wp_actionscheduler_logs` VALUES (222,123,'action complete via WP Cron','2023-06-12 07:32:42','2023-06-12 07:32:42');
INSERT INTO `wp_actionscheduler_logs` VALUES (223,140,'action created','2023-06-12 07:32:42','2023-06-12 07:32:42');
INSERT INTO `wp_actionscheduler_logs` VALUES (224,124,'action started via WP Cron','2023-06-12 07:32:42','2023-06-12 07:32:42');
INSERT INTO `wp_actionscheduler_logs` VALUES (225,124,'action complete via WP Cron','2023-06-12 07:32:42','2023-06-12 07:32:42');
INSERT INTO `wp_actionscheduler_logs` VALUES (226,141,'action created','2023-06-12 07:32:42','2023-06-12 07:32:42');
INSERT INTO `wp_actionscheduler_logs` VALUES (227,125,'action started via WP Cron','2023-06-12 07:32:42','2023-06-12 07:32:42');
INSERT INTO `wp_actionscheduler_logs` VALUES (228,125,'action complete via WP Cron','2023-06-12 07:32:43','2023-06-12 07:32:43');
INSERT INTO `wp_actionscheduler_logs` VALUES (229,142,'action created','2023-06-12 07:32:43','2023-06-12 07:32:43');
INSERT INTO `wp_actionscheduler_logs` VALUES (230,139,'action started via WP Cron','2023-06-12 07:32:43','2023-06-12 07:32:43');
INSERT INTO `wp_actionscheduler_logs` VALUES (231,139,'action complete via WP Cron','2023-06-12 07:32:43','2023-06-12 07:32:43');
INSERT INTO `wp_actionscheduler_logs` VALUES (232,143,'action created','2023-06-12 07:32:43','2023-06-12 07:32:43');
INSERT INTO `wp_actionscheduler_logs` VALUES (233,143,'action started via WP Cron','2023-06-13 07:39:55','2023-06-13 07:39:55');
INSERT INTO `wp_actionscheduler_logs` VALUES (234,143,'action complete via WP Cron','2023-06-13 07:39:55','2023-06-13 07:39:55');
INSERT INTO `wp_actionscheduler_logs` VALUES (235,144,'action created','2023-06-13 07:39:55','2023-06-13 07:39:55');
INSERT INTO `wp_actionscheduler_logs` VALUES (236,145,'action created','2023-06-13 08:41:34','2023-06-13 08:41:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (237,145,'action started via WP Cron','2023-06-13 08:42:30','2023-06-13 08:42:30');
INSERT INTO `wp_actionscheduler_logs` VALUES (238,145,'action complete via WP Cron','2023-06-13 08:42:31','2023-06-13 08:42:31');
INSERT INTO `wp_actionscheduler_logs` VALUES (239,128,'action started via WP Cron','2023-06-13 08:58:19','2023-06-13 08:58:19');
INSERT INTO `wp_actionscheduler_logs` VALUES (240,128,'action complete via WP Cron','2023-06-13 08:58:20','2023-06-13 08:58:20');
INSERT INTO `wp_actionscheduler_logs` VALUES (241,146,'action created','2023-06-13 08:58:20','2023-06-13 08:58:20');
INSERT INTO `wp_actionscheduler_logs` VALUES (242,144,'action started via WP Cron','2023-06-14 07:40:55','2023-06-14 07:40:55');
INSERT INTO `wp_actionscheduler_logs` VALUES (243,144,'action complete via WP Cron','2023-06-14 07:40:55','2023-06-14 07:40:55');
INSERT INTO `wp_actionscheduler_logs` VALUES (244,147,'action created','2023-06-14 07:40:55','2023-06-14 07:40:55');
INSERT INTO `wp_actionscheduler_logs` VALUES (245,148,'action created','2023-06-14 08:43:05','2023-06-14 08:43:05');
INSERT INTO `wp_actionscheduler_logs` VALUES (246,148,'action started via WP Cron','2023-06-14 08:43:05','2023-06-14 08:43:05');
INSERT INTO `wp_actionscheduler_logs` VALUES (247,148,'action complete via WP Cron','2023-06-14 08:43:06','2023-06-14 08:43:06');
INSERT INTO `wp_actionscheduler_logs` VALUES (248,147,'action started via WP Cron','2023-06-15 07:48:20','2023-06-15 07:48:20');
INSERT INTO `wp_actionscheduler_logs` VALUES (249,147,'action complete via WP Cron','2023-06-15 07:48:20','2023-06-15 07:48:20');
INSERT INTO `wp_actionscheduler_logs` VALUES (250,149,'action created','2023-06-15 07:48:20','2023-06-15 07:48:20');
INSERT INTO `wp_actionscheduler_logs` VALUES (251,150,'action created','2023-06-15 08:44:00','2023-06-15 08:44:00');
INSERT INTO `wp_actionscheduler_logs` VALUES (252,150,'action started via WP Cron','2023-06-15 08:44:33','2023-06-15 08:44:33');
INSERT INTO `wp_actionscheduler_logs` VALUES (253,150,'action complete via WP Cron','2023-06-15 08:44:33','2023-06-15 08:44:33');
INSERT INTO `wp_actionscheduler_logs` VALUES (254,149,'action started via WP Cron','2023-06-16 07:49:50','2023-06-16 07:49:50');
INSERT INTO `wp_actionscheduler_logs` VALUES (255,149,'action complete via WP Cron','2023-06-16 07:49:50','2023-06-16 07:49:50');
INSERT INTO `wp_actionscheduler_logs` VALUES (256,151,'action created','2023-06-16 07:49:50','2023-06-16 07:49:50');
INSERT INTO `wp_actionscheduler_logs` VALUES (257,152,'action created','2023-06-16 08:45:29','2023-06-16 08:45:29');
INSERT INTO `wp_actionscheduler_logs` VALUES (258,152,'action started via WP Cron','2023-06-16 08:45:29','2023-06-16 08:45:29');
INSERT INTO `wp_actionscheduler_logs` VALUES (259,152,'action complete via WP Cron','2023-06-16 08:45:29','2023-06-16 08:45:29');
INSERT INTO `wp_actionscheduler_logs` VALUES (260,151,'action started via WP Cron','2023-06-17 23:37:46','2023-06-17 23:37:46');
INSERT INTO `wp_actionscheduler_logs` VALUES (261,151,'action complete via WP Cron','2023-06-17 23:37:46','2023-06-17 23:37:46');
INSERT INTO `wp_actionscheduler_logs` VALUES (262,153,'action created','2023-06-17 23:37:46','2023-06-17 23:37:46');
INSERT INTO `wp_actionscheduler_logs` VALUES (263,154,'action created','2023-06-18 01:36:48','2023-06-18 01:36:48');
INSERT INTO `wp_actionscheduler_logs` VALUES (264,154,'action started via WP Cron','2023-06-18 01:37:42','2023-06-18 01:37:42');
INSERT INTO `wp_actionscheduler_logs` VALUES (265,154,'action complete via WP Cron','2023-06-18 01:37:42','2023-06-18 01:37:42');
INSERT INTO `wp_actionscheduler_logs` VALUES (266,155,'action created','2023-06-19 07:30:46','2023-06-19 07:30:46');
INSERT INTO `wp_actionscheduler_logs` VALUES (267,155,'action started via WP Cron','2023-06-19 07:30:46','2023-06-19 07:30:46');
INSERT INTO `wp_actionscheduler_logs` VALUES (268,155,'action complete via WP Cron','2023-06-19 07:30:46','2023-06-19 07:30:46');
INSERT INTO `wp_actionscheduler_logs` VALUES (269,153,'action started via WP Cron','2023-06-19 07:30:46','2023-06-19 07:30:46');
INSERT INTO `wp_actionscheduler_logs` VALUES (270,153,'action complete via WP Cron','2023-06-19 07:30:46','2023-06-19 07:30:46');
INSERT INTO `wp_actionscheduler_logs` VALUES (271,156,'action created','2023-06-19 07:30:46','2023-06-19 07:30:46');
INSERT INTO `wp_actionscheduler_logs` VALUES (272,140,'action started via WP Cron','2023-06-19 07:37:13','2023-06-19 07:37:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (273,140,'action complete via WP Cron','2023-06-19 07:37:13','2023-06-19 07:37:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (274,157,'action created','2023-06-19 07:37:13','2023-06-19 07:37:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (275,141,'action started via WP Cron','2023-06-19 07:37:13','2023-06-19 07:37:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (276,141,'action complete via WP Cron','2023-06-19 07:37:14','2023-06-19 07:37:14');
INSERT INTO `wp_actionscheduler_logs` VALUES (277,158,'action created','2023-06-19 07:37:14','2023-06-19 07:37:14');
INSERT INTO `wp_actionscheduler_logs` VALUES (278,142,'action started via WP Cron','2023-06-19 07:37:14','2023-06-19 07:37:14');
INSERT INTO `wp_actionscheduler_logs` VALUES (279,142,'action complete via WP Cron','2023-06-19 07:37:14','2023-06-19 07:37:14');
INSERT INTO `wp_actionscheduler_logs` VALUES (280,159,'action created','2023-06-19 07:37:14','2023-06-19 07:37:14');
INSERT INTO `wp_actionscheduler_logs` VALUES (281,156,'action started via WP Cron','2023-06-20 07:49:58','2023-06-20 07:49:58');
INSERT INTO `wp_actionscheduler_logs` VALUES (282,156,'action complete via WP Cron','2023-06-20 07:49:58','2023-06-20 07:49:58');
INSERT INTO `wp_actionscheduler_logs` VALUES (283,160,'action created','2023-06-20 07:49:59','2023-06-20 07:49:59');
INSERT INTO `wp_actionscheduler_logs` VALUES (284,146,'action started via WP Cron','2023-06-20 09:02:30','2023-06-20 09:02:30');
INSERT INTO `wp_actionscheduler_logs` VALUES (285,146,'action complete via WP Cron','2023-06-20 09:02:30','2023-06-20 09:02:30');
INSERT INTO `wp_actionscheduler_logs` VALUES (286,161,'action created','2023-06-20 09:02:30','2023-06-20 09:02:30');
INSERT INTO `wp_actionscheduler_logs` VALUES (287,162,'action created','2023-06-20 10:03:59','2023-06-20 10:03:59');
INSERT INTO `wp_actionscheduler_logs` VALUES (288,162,'action started via WP Cron','2023-06-20 10:05:14','2023-06-20 10:05:14');
INSERT INTO `wp_actionscheduler_logs` VALUES (289,162,'action complete via WP Cron','2023-06-20 10:05:14','2023-06-20 10:05:14');
INSERT INTO `wp_actionscheduler_logs` VALUES (290,160,'action started via WP Cron','2023-06-21 07:50:12','2023-06-21 07:50:12');
INSERT INTO `wp_actionscheduler_logs` VALUES (291,160,'action complete via WP Cron','2023-06-21 07:50:12','2023-06-21 07:50:12');
INSERT INTO `wp_actionscheduler_logs` VALUES (292,163,'action created','2023-06-21 07:50:12','2023-06-21 07:50:12');
INSERT INTO `wp_actionscheduler_logs` VALUES (293,164,'action created','2023-06-21 10:09:07','2023-06-21 10:09:07');
INSERT INTO `wp_actionscheduler_logs` VALUES (294,164,'action started via WP Cron','2023-06-21 10:09:07','2023-06-21 10:09:07');
INSERT INTO `wp_actionscheduler_logs` VALUES (295,164,'action complete via WP Cron','2023-06-21 10:09:08','2023-06-21 10:09:08');
INSERT INTO `wp_actionscheduler_logs` VALUES (296,163,'action started via WP Cron','2023-06-22 12:36:13','2023-06-22 12:36:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (297,163,'action complete via WP Cron','2023-06-22 12:36:13','2023-06-22 12:36:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (298,165,'action created','2023-06-22 12:36:13','2023-06-22 12:36:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (299,166,'action created','2023-06-23 08:00:02','2023-06-23 08:00:02');
INSERT INTO `wp_actionscheduler_logs` VALUES (300,166,'action started via WP Cron','2023-06-23 08:00:02','2023-06-23 08:00:02');
INSERT INTO `wp_actionscheduler_logs` VALUES (301,166,'action complete via WP Cron','2023-06-23 08:00:02','2023-06-23 08:00:02');
INSERT INTO `wp_actionscheduler_logs` VALUES (302,165,'action started via WP Cron','2023-06-23 16:37:40','2023-06-23 16:37:40');
INSERT INTO `wp_actionscheduler_logs` VALUES (303,165,'action complete via WP Cron','2023-06-23 16:37:40','2023-06-23 16:37:40');
INSERT INTO `wp_actionscheduler_logs` VALUES (304,167,'action created','2023-06-23 16:37:40','2023-06-23 16:37:40');
INSERT INTO `wp_actionscheduler_logs` VALUES (305,167,'action started via WP Cron','2023-06-24 20:09:39','2023-06-24 20:09:39');
INSERT INTO `wp_actionscheduler_logs` VALUES (306,167,'action complete via WP Cron','2023-06-24 20:09:39','2023-06-24 20:09:39');
INSERT INTO `wp_actionscheduler_logs` VALUES (307,168,'action created','2023-06-24 20:09:39','2023-06-24 20:09:39');
INSERT INTO `wp_actionscheduler_logs` VALUES (308,169,'action created','2023-06-24 21:57:28','2023-06-24 21:57:28');
INSERT INTO `wp_actionscheduler_logs` VALUES (309,169,'action started via WP Cron','2023-06-24 21:58:29','2023-06-24 21:58:29');
INSERT INTO `wp_actionscheduler_logs` VALUES (310,169,'action complete via WP Cron','2023-06-24 21:58:29','2023-06-24 21:58:29');
INSERT INTO `wp_actionscheduler_logs` VALUES (311,168,'action started via WP Cron','2023-06-25 20:16:38','2023-06-25 20:16:38');
INSERT INTO `wp_actionscheduler_logs` VALUES (312,168,'action complete via WP Cron','2023-06-25 20:16:38','2023-06-25 20:16:38');
INSERT INTO `wp_actionscheduler_logs` VALUES (313,170,'action created','2023-06-25 20:16:38','2023-06-25 20:16:38');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2023-04-25 14:38:22','2023-04-25 14:38:22','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=6466 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:10048','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://localhost:10048','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','PHOTOGRAPHE EVENT','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:127:{s:8:\"photo/?$\";s:25:\"index.php?post_type=photo\";s:25:\"photo/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=photo&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:38:\"photo/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=photo&feed=$matches[1]\";s:33:\"photo/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=photo&feed=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"photo/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"photo/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"photo/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"photo/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"photo/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"photo/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"photo/([^/]+)/embed/?$\";s:38:\"index.php?photo=$matches[1]&embed=true\";s:26:\"photo/([^/]+)/trackback/?$\";s:32:\"index.php?photo=$matches[1]&tb=1\";s:46:\"photo/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?photo=$matches[1]&feed=$matches[2]\";s:41:\"photo/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?photo=$matches[1]&feed=$matches[2]\";s:34:\"photo/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?photo=$matches[1]&paged=$matches[2]\";s:41:\"photo/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?photo=$matches[1]&cpage=$matches[2]\";s:30:\"photo/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?photo=$matches[1]&page=$matches[2]\";s:22:\"photo/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"photo/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"photo/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"photo/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"photo/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"photo/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\"formats/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?formats=$matches[1]&feed=$matches[2]\";s:43:\"formats/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?formats=$matches[1]&feed=$matches[2]\";s:24:\"formats/([^/]+)/embed/?$\";s:40:\"index.php?formats=$matches[1]&embed=true\";s:36:\"formats/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?formats=$matches[1]&paged=$matches[2]\";s:18:\"formats/([^/]+)/?$\";s:29:\"index.php?formats=$matches[1]\";s:51:\"categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?categories=$matches[1]&feed=$matches[2]\";s:46:\"categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?categories=$matches[1]&feed=$matches[2]\";s:27:\"categories/([^/]+)/embed/?$\";s:43:\"index.php?categories=$matches[1]&embed=true\";s:39:\"categories/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?categories=$matches[1]&paged=$matches[2]\";s:21:\"categories/([^/]+)/?$\";s:32:\"index.php?categories=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:24:\"wpforms-lite/wpforms.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:2:{i:0;s:107:\"/Users/audrey/Desktop/Local Sites/photographe-event/app/public/wp-content/themes/photographeevent/style.css\";i:1;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','photographeevent','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','photographeevent','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','53496','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','6','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1697985502','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','1','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:11:{i:1687728444;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1687729102;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1687747102;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1687748730;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1687765523;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1687788000;a:1:{s:28:\"wpforms_email_summaries_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:30:\"wpforms_email_summaries_weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1687790302;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1687791930;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1687791931;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1687963102;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'nonce_key',']=,+oa~g;J~sk0m]t`eqY]uw3R*qbc3$Ma8R=.Vu/HK=9*Aq-V@LUC 9 lg=P6nf','no');
INSERT INTO `wp_options` VALUES (116,'nonce_salt','r JI#Ox|URZ,7yBN=<$BK~fM(mr*c:8dj1lWz{l~@:I,]MBFCq-IGekirrW!9NJ`','no');
INSERT INTO `wp_options` VALUES (117,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (123,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (124,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:28:\"La demande HTTPS a échoué.\";}}','yes');
INSERT INTO `wp_options` VALUES (132,'auth_key','&S>ObP<kwm;Z:~*;i<8nFCRYT[sAKPnPv<5mSMUxO9q8<)q4OvE6u]<CTr.qxcX`','no');
INSERT INTO `wp_options` VALUES (133,'auth_salt','|Oa1h*f;aUt1=fPVgjJF,Q3SldcFaTi@H@_,SF506%eJTqxfLs09;YG,xo.gS/G&','no');
INSERT INTO `wp_options` VALUES (134,'logged_in_key','~<?-(_Mue>L7,/v@&Y.u>Skigt>;SBZ_|}[UmS[1QSrRot=EmIF|8{RjXBd?E2k,','no');
INSERT INTO `wp_options` VALUES (135,'logged_in_salt','jwyv!x><-OOep8jVc{O*GQ.p9teY@>e.~hy3yXUa(pb6:(]cgbxz7_|)PS|3X8U8','no');
INSERT INTO `wp_options` VALUES (137,'theme_mods_twentytwentythree','a:4:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1682686441;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (146,'can_compress_scripts','0','no');
INSERT INTO `wp_options` VALUES (159,'WPLANG','fr_FR','yes');
INSERT INTO `wp_options` VALUES (160,'new_admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (163,'current_theme','Photographe event','yes');
INSERT INTO `wp_options` VALUES (164,'theme_mods_photographeevent','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:6:\"header\";i:0;s:9:\"principal\";i:0;s:6:\"footer\";i:5;s:4:\"main\";i:6;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1682672666;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (165,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (168,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (190,'_transient_health-check-site-status-result','{\"good\":13,\"recommended\":3,\"critical\":2}','yes');
INSERT INTO `wp_options` VALUES (228,'recovery_mode_email_last_sent','1687255706','yes');
INSERT INTO `wp_options` VALUES (232,'nav_menu_options','a:1:{s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (301,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (309,'action_scheduler_hybrid_store_demarkation','61','yes');
INSERT INTO `wp_options` VALUES (310,'schema-ActionScheduler_StoreSchema','6.0.1682953464','yes');
INSERT INTO `wp_options` VALUES (311,'schema-ActionScheduler_LoggerSchema','3.0.1682953464','yes');
INSERT INTO `wp_options` VALUES (312,'wpforms_version','1.8.1.2','yes');
INSERT INTO `wp_options` VALUES (313,'wpforms_version_lite','1.8.1.2','yes');
INSERT INTO `wp_options` VALUES (314,'wpforms_activated','a:1:{s:4:\"lite\";i:1682953464;}','yes');
INSERT INTO `wp_options` VALUES (319,'action_scheduler_lock_async-request-runner','1687728433','yes');
INSERT INTO `wp_options` VALUES (320,'wpforms_versions_lite','a:7:{s:5:\"1.5.9\";i:0;s:7:\"1.6.7.2\";i:0;s:5:\"1.6.8\";i:0;s:5:\"1.7.5\";i:0;s:7:\"1.7.5.1\";i:0;s:5:\"1.7.7\";i:0;s:7:\"1.8.1.2\";i:1682953464;}','yes');
INSERT INTO `wp_options` VALUES (321,'widget_wpforms-widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (324,'wpforms_settings','a:3:{s:13:\"modern-markup\";s:1:\"1\";s:20:\"modern-markup-is-set\";b:1;s:26:\"modern-markup-hide-setting\";b:1;}','yes');
INSERT INTO `wp_options` VALUES (326,'wpforms_admin_notices','a:2:{s:14:\"review_request\";a:2:{s:4:\"time\";i:1682953464;s:9:\"dismissed\";b:0;}s:19:\"review_lite_request\";a:2:{s:4:\"time\";i:1684833693;s:9:\"dismissed\";b:1;}}','yes');
INSERT INTO `wp_options` VALUES (327,'_transient_wpforms_htaccess_file','a:3:{s:4:\"size\";i:775;s:5:\"mtime\";i:1682953473;s:5:\"ctime\";i:1682953473;}','yes');
INSERT INTO `wp_options` VALUES (328,'wpforms_challenge','a:13:{s:6:\"status\";s:7:\"skipped\";s:4:\"step\";i:4;s:7:\"user_id\";i:1;s:7:\"form_id\";i:61;s:10:\"embed_page\";i:0;s:16:\"embed_page_title\";s:0:\"\";s:16:\"started_date_gmt\";s:19:\"2023-05-01 15:04:38\";s:17:\"finished_date_gmt\";s:19:\"2023-05-01 15:08:39\";s:13:\"seconds_spent\";i:0;s:12:\"seconds_left\";i:0;s:13:\"feedback_sent\";b:0;s:19:\"feedback_contact_me\";b:0;s:13:\"window_closed\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (329,'wpforms_builder_opened_date','1682953473','no');
INSERT INTO `wp_options` VALUES (330,'wpforms_forms_first_created','1682953500','no');
INSERT INTO `wp_options` VALUES (333,'wpforms_email_summaries_fetch_info_blocks_last_run','1687160233','yes');
INSERT INTO `wp_options` VALUES (339,'wpforms_notifications','a:4:{s:6:\"update\";i:1687643909;s:4:\"feed\";a:0:{}s:6:\"events\";a:6:{s:15:\"welcome-message\";a:6:{s:2:\"id\";s:15:\"welcome-message\";s:5:\"title\";s:19:\"Welcome to WPForms!\";s:7:\"content\";s:233:\"We’re grateful that you chose WPForms for your website! Now that you’ve installed the plugin, you’re less than 5 minutes away from publishing your first form. To make it easy, we’ve got 600+ form templates to get you started!\";s:4:\"btns\";a:2:{s:4:\"main\";a:2:{s:3:\"url\";s:62:\"http://localhost:10048/wp-admin/admin.php?page=wpforms-builder\";s:4:\"text\";s:14:\"Start Building\";}s:3:\"alt\";a:2:{s:3:\"url\";s:163:\"https://wpforms.com/docs/creating-first-form/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Welcome%20Read%20the%20Guide\";s:4:\"text\";s:14:\"Read the Guide\";}}s:4:\"type\";a:7:{i:0;s:4:\"lite\";i:1;s:5:\"basic\";i:2;s:4:\"plus\";i:3;s:3:\"pro\";i:4;s:6:\"agency\";i:5;s:5:\"elite\";i:6;s:8:\"ultimate\";}s:5:\"start\";s:19:\"2023-05-01 15:04:24\";}s:22:\"wp-mail-smtp-education\";a:5:{s:2:\"id\";s:22:\"wp-mail-smtp-education\";s:5:\"title\";s:43:\"Don’t Miss Your Form Notification Emails!\";s:7:\"content\";s:260:\"Did you know that many WordPress sites are not properly configured to send emails? With the free WP Mail SMTP plugin, you can easily optimize your site to send emails, avoid the spam folder, and make sure your emails land in the recipient’s inbox every time.\";s:4:\"btns\";a:2:{s:4:\"main\";a:2:{s:3:\"url\";s:59:\"http://localhost:10048/wp-admin/admin.php?page=wpforms-smtp\";s:4:\"text\";s:11:\"Install Now\";}s:3:\"alt\";a:2:{s:3:\"url\";s:195:\"https://wpforms.com/docs/how-to-set-up-smtp-using-the-wp-mail-smtp-plugin/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=WP%20Mail%20SMTP%20Learn%20More\";s:4:\"text\";s:10:\"Learn More\";}}s:5:\"start\";s:19:\"2023-05-04 15:04:24\";}s:15:\"join-vip-circle\";a:5:{s:2:\"id\";s:15:\"join-vip-circle\";s:5:\"title\";s:27:\"Want to Be a VIP? Join Now!\";s:7:\"content\";s:326:\"Running a WordPress site can be challenging. But help is just around the corner! Our Facebook group contains tons of tips and help to get your business growing! When you join our VIP Circle, you’ll get instant access to tips, tricks, and answers from a community of loyal WPForms users. Best of all, membership is 100% free!\";s:4:\"btns\";a:1:{s:4:\"main\";a:2:{s:3:\"url\";s:43:\"https://www.facebook.com/groups/wpformsvip/\";s:4:\"text\";s:8:\"Join Now\";}}s:5:\"start\";s:19:\"2023-05-31 15:04:24\";}s:14:\"survey-reports\";a:5:{s:2:\"id\";s:14:\"survey-reports\";s:5:\"title\";s:46:\"Want to Know What Your Customers Really Think?\";s:7:\"content\";s:334:\"Nothing beats real feedback from your customers and visitors. That’s why many small businesses love our awesome Surveys and Polls addon. Instantly unlock full survey reporting right in your WordPress dashboard. And don’t forget: building a survey is easy with our pre-made templates, so you could get started within a few minutes!\";s:4:\"btns\";a:2:{s:4:\"main\";a:1:{s:7:\"license\";a:5:{s:4:\"lite\";a:2:{s:3:\"url\";s:178:\"https://wpforms.com/lite-upgrade/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Surveys%20and%20Polls%20Upgrade%20Lite&utm_locale=fr_FR\";s:4:\"text\";s:11:\"Upgrade Now\";}s:5:\"basic\";a:2:{s:3:\"url\";s:166:\"https://wpforms.com/account/licenses/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Surveys%20and%20Polls%20Upgrade%20Basic\";s:4:\"text\";s:11:\"Upgrade Now\";}s:4:\"plus\";a:2:{s:3:\"url\";s:166:\"https://wpforms.com/account/licenses/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Surveys%20and%20Polls%20Upgrade%20Basic\";s:4:\"text\";s:11:\"Upgrade Now\";}s:3:\"pro\";a:2:{s:3:\"url\";s:61:\"http://localhost:10048/wp-admin/admin.php?page=wpforms-addons\";s:4:\"text\";s:11:\"Install Now\";}s:5:\"elite\";a:2:{s:3:\"url\";s:61:\"http://localhost:10048/wp-admin/admin.php?page=wpforms-addons\";s:4:\"text\";s:11:\"Install Now\";}}}s:3:\"alt\";a:2:{s:3:\"url\";s:202:\"https://wpforms.com/docs/how-to-install-and-use-the-surveys-and-polls-addon/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Surveys%20and%20Polls%20Learn%20More\";s:4:\"text\";s:10:\"Learn More\";}}s:5:\"start\";s:19:\"2023-06-15 15:04:24\";}s:16:\"form-abandonment\";a:5:{s:2:\"id\";s:16:\"form-abandonment\";s:5:\"title\";s:31:\"Get More Leads From Your Forms!\";s:7:\"content\";s:363:\"Are your forms converting fewer visitors than you hoped? Often, visitors quit forms partway through. That can prevent you from getting all the leads you deserve to capture. With our Form Abandonment addon, you can capture partial entries even if your visitor didn’t hit Submit! From there, it’s easy to follow up with leads and turn them into loyal customers.\";s:4:\"btns\";a:2:{s:4:\"main\";a:1:{s:7:\"license\";a:5:{s:4:\"lite\";a:2:{s:3:\"url\";s:175:\"https://wpforms.com/lite-upgrade/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Form%20Abandonment%20Upgrade%20Lite&utm_locale=fr_FR\";s:4:\"text\";s:11:\"Upgrade Now\";}s:5:\"basic\";a:2:{s:3:\"url\";s:163:\"https://wpforms.com/account/licenses/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Form%20Abandonment%20Upgrade%20Basic\";s:4:\"text\";s:11:\"Upgrade Now\";}s:4:\"plus\";a:2:{s:3:\"url\";s:163:\"https://wpforms.com/account/licenses/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Form%20Abandonment%20Upgrade%20Basic\";s:4:\"text\";s:11:\"Upgrade Now\";}s:3:\"pro\";a:2:{s:3:\"url\";s:61:\"http://localhost:10048/wp-admin/admin.php?page=wpforms-addons\";s:4:\"text\";s:11:\"Install Now\";}s:5:\"elite\";a:2:{s:3:\"url\";s:61:\"http://localhost:10048/wp-admin/admin.php?page=wpforms-addons\";s:4:\"text\";s:11:\"Install Now\";}}}s:3:\"alt\";a:2:{s:3:\"url\";s:201:\"https://wpforms.com/docs/how-to-install-and-use-form-abandonment-with-wpforms/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Form%20Abandonment%20Learn%20More\";s:4:\"text\";s:10:\"Learn More\";}}s:5:\"start\";s:19:\"2023-06-30 15:04:24\";}s:5:\"ideas\";a:5:{s:2:\"id\";s:5:\"ideas\";s:5:\"title\";s:36:\"What’s Your Dream WPForms Feature?\";s:7:\"content\";s:288:\"If you could add just one feature to WPForms, what would it be? We want to know! Our team is busy surveying valued customers like you as we plan the year ahead. We’d love to know which features would take your business to the next level! Do you have a second to share your idea with us?\";s:4:\"btns\";a:1:{s:4:\"main\";a:2:{s:3:\"url\";s:36:\"https://wpforms.com/share-your-idea/\";s:4:\"text\";s:15:\"Share Your Idea\";}}s:5:\"start\";s:19:\"2023-08-29 15:04:24\";}}s:9:\"dismissed\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (345,'wpforms_crypto_secret_key','aVqrJ9Obn/ZpouJtsypDtsZrYl5aYjNBoX5onIEbZ94=','yes');
INSERT INTO `wp_options` VALUES (357,'action_scheduler_migration_status','complete','yes');
INSERT INTO `wp_options` VALUES (586,'acf_version','6.1.5','yes');
INSERT INTO `wp_options` VALUES (594,'cptui_new_install','false','yes');
INSERT INTO `wp_options` VALUES (974,'cptui_post_types','a:1:{s:5:\"photo\";a:34:{s:4:\"name\";s:5:\"photo\";s:5:\"label\";s:6:\"Photos\";s:14:\"singular_label\";s:5:\"Photo\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:5:\"false\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";N;s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";i:2;s:13:\"custom-fields\";i:3;s:12:\"post-formats\";}s:10:\"taxonomies\";a:2:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}}','yes');
INSERT INTO `wp_options` VALUES (3848,'wpforms_process_forms_locator_status','completed','yes');
INSERT INTO `wp_options` VALUES (4937,'cptui_taxonomies','a:2:{s:7:\"formats\";a:28:{s:4:\"name\";s:7:\"formats\";s:5:\"label\";s:7:\"formats\";s:14:\"singular_label\";s:6:\"format\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:13:\"show_tagcloud\";s:5:\"false\";s:4:\"sort\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:6:\"labels\";a:23:{s:12:\"add_new_item\";s:25:\"Ajouter un nouveau format\";s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";s:22:\"name_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:5:\"photo\";}}s:10:\"categories\";a:28:{s:4:\"name\";s:10:\"categories\";s:5:\"label\";s:11:\"catégories\";s:14:\"singular_label\";s:10:\"catégorie\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:13:\"show_tagcloud\";s:5:\"false\";s:4:\"sort\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:6:\"labels\";a:23:{s:12:\"add_new_item\";s:32:\"ajouter une nouvelles catégorie\";s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";s:22:\"name_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:5:\"photo\";}}}','yes');
INSERT INTO `wp_options` VALUES (4977,'formats_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (5004,'categories_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (5029,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (5588,'ai1wm_secret_key','HSvq7h59maTs','yes');
INSERT INTO `wp_options` VALUES (5590,'ai1wm_status','a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:288:\"<a href=\"http://localhost:10048/wp-content/ai1wm-backups/localhost-20230619-074551-ea7z6o.wpress\" class=\"ai1wm-button-green ai1wm-emphasize ai1wm-button-download\" title=\"localhost\" download=\"localhost-20230619-074551-ea7z6o.wpress\"><span>Download localhost</span><em>Size: 121 Mo</em></a>\";}','yes');
INSERT INTO `wp_options` VALUES (5659,'_site_transient_ai1wm_last_check_for_updates','1687707289','no');
INSERT INTO `wp_options` VALUES (5660,'ai1wm_updater','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (5823,'_site_transient_timeout_browser_35dad70abc601e229e115d200cb9a0ba','1687899327','no');
INSERT INTO `wp_options` VALUES (5824,'_site_transient_browser_35dad70abc601e229e115d200cb9a0ba','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"112.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (6407,'_site_transient_timeout_theme_roots','1687709090','no');
INSERT INTO `wp_options` VALUES (6408,'_site_transient_theme_roots','a:4:{s:16:\"photographeevent\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (6410,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.2.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.2.2-partial-0.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:3:\"6.2\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.2.2-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-rollback-0.zip\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:3:\"6.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1687728372;s:15:\"version_checked\";s:3:\"6.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-05-10 09:29:31\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}','no');
INSERT INTO `wp_options` VALUES (6411,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1687708205;s:7:\"checked\";a:4:{s:16:\"photographeevent\";s:3:\"1.0\";s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.1.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:3:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentytwentyone\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:19:\"2022-03-12 17:37:27\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentytwentyone/1.0/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:17:\"twentytwentythree\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"1.1\";s:7:\"updated\";s:19:\"2022-10-31 13:01:24\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/theme/twentytwentythree/1.1/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentytwentytwo\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"1.4\";s:7:\"updated\";s:19:\"2023-03-29 20:32:39\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentytwentytwo/1.4/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}','no');
INSERT INTO `wp_options` VALUES (6412,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1687708206;s:8:\"response\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.1.6\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:3:\"5.6\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.13.6\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.13.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2744389\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2744389\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2744389\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2744389\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:3:\"5.6\";}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.8.2.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wpforms-lite.1.8.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:57:\"https://ps.w.org/wpforms-lite/assets/icon.svg?rev=2574198\";s:3:\"svg\";s:57:\"https://ps.w.org/wpforms-lite/assets/icon.svg?rev=2574198\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=2602491\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=2602491\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500-rtl.png?rev=2602491\";s:2:\"1x\";s:71:\"https://ps.w.org/wpforms-lite/assets/banner-772x250-rtl.png?rev=2602491\";}s:8:\"requires\";s:3:\"5.2\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.1.5\";s:7:\"updated\";s:19:\"2023-04-28 19:22:31\";s:7:\"package\";s:89:\"https://downloads.wordpress.org/translation/plugin/advanced-custom-fields/6.1.5/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:4:\"7.75\";s:7:\"updated\";s:19:\"2023-01-12 22:00:15\";s:7:\"package\";s:89:\"https://downloads.wordpress.org/translation/plugin/all-in-one-wp-migration/7.75/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:6:\"1.13.5\";s:7:\"updated\";s:19:\"2022-12-17 20:06:48\";s:7:\"package\";s:87:\"https://downloads.wordpress.org/translation/plugin/custom-post-type-ui/1.13.5/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:12:\"wpforms-lite\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:7:\"1.8.1.2\";s:7:\"updated\";s:19:\"2023-03-29 10:22:48\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/wpforms-lite/1.8.1.2/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.75\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.75.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2902233\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2902233\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}}s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.1.5\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"7.75\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:6:\"1.13.5\";s:24:\"wpforms-lite/wpforms.php\";s:7:\"1.8.1.2\";}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=787 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (6,6,'_edit_lock','1687364313:1');
INSERT INTO `wp_postmeta` VALUES (7,9,'_edit_lock','1686057614:1');
INSERT INTO `wp_postmeta` VALUES (8,11,'_edit_lock','1687165319:1');
INSERT INTO `wp_postmeta` VALUES (9,6,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (10,11,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (11,9,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (12,15,'_edit_lock','1685090730:1');
INSERT INTO `wp_postmeta` VALUES (13,15,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (42,22,'_wp_attached_file','2023/04/Logo.png');
INSERT INTO `wp_postmeta` VALUES (43,22,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:216;s:6:\"height\";i:14;s:4:\"file\";s:16:\"2023/04/Logo.png\";s:8:\"filesize\";i:1423;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"Logo-150x14.png\";s:5:\"width\";i:150;s:6:\"height\";i:14;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:947;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (87,3,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (88,3,'_edit_lock','1686057314:1');
INSERT INTO `wp_postmeta` VALUES (89,37,'_edit_lock','1682948082:1');
INSERT INTO `wp_postmeta` VALUES (90,37,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (91,40,'_edit_lock','1687164376:1');
INSERT INTO `wp_postmeta` VALUES (92,40,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (93,43,'_edit_lock','1686056948:1');
INSERT INTO `wp_postmeta` VALUES (94,43,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (218,70,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (219,70,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (220,70,'_menu_item_object_id','6');
INSERT INTO `wp_postmeta` VALUES (221,70,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (222,70,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (223,70,'_menu_item_classes','a:1:{i:0;s:12:\"accueil_item\";}');
INSERT INTO `wp_postmeta` VALUES (224,70,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (225,70,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (227,71,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (228,71,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (229,71,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (230,71,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (231,71,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (232,71,'_menu_item_classes','a:1:{i:0;s:12:\"apropos_item\";}');
INSERT INTO `wp_postmeta` VALUES (233,71,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (234,71,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (280,78,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (281,78,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (282,78,'_menu_item_object_id','40');
INSERT INTO `wp_postmeta` VALUES (283,78,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (284,78,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (285,78,'_menu_item_classes','a:1:{i:0;s:12:\"private-item\";}');
INSERT INTO `wp_postmeta` VALUES (286,78,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (287,78,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (288,79,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (289,79,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (290,79,'_menu_item_object_id','37');
INSERT INTO `wp_postmeta` VALUES (291,79,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (292,79,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (293,79,'_menu_item_classes','a:1:{i:0;s:13:\"mentions-item\";}');
INSERT INTO `wp_postmeta` VALUES (294,79,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (295,79,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (298,70,'_wp_old_date','2023-05-02');
INSERT INTO `wp_postmeta` VALUES (299,71,'_wp_old_date','2023-05-02');
INSERT INTO `wp_postmeta` VALUES (301,88,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (302,88,'_edit_lock','1687648809:1');
INSERT INTO `wp_postmeta` VALUES (306,98,'_wp_attached_file','2023/05/nathalie-0-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (307,98,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:30:\"2023/05/nathalie-0-scaled.jpeg\";s:8:\"filesize\";i:383842;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-0-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15577;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-0-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:89016;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-0-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7779;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-0-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58859;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-0-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:161718;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-0-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:257776;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-0.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (308,99,'_wp_attached_file','2023/05/nathalie-1-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (309,99,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:30:\"2023/05/nathalie-1-scaled.jpeg\";s:8:\"filesize\";i:635484;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-1-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20582;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-1-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:143513;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9035;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-1-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:91704;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-1-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:271676;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-1-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:433400;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-1.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (310,100,'_wp_attached_file','2023/05/nathalie-2-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (311,100,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1544;s:4:\"file\";s:30:\"2023/05/nathalie-2-scaled.jpeg\";s:8:\"filesize\";i:987261;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-2-300x181.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23005;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-2-1024x617.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:617;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:213068;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-2-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11454;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-2-768x463.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:127980;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"nathalie-2-1536x926.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:926;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:425430;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-2-2048x1235.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1235;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:687928;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-2.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (312,101,'_wp_attached_file','2023/05/nathalie-3-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (313,101,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:30:\"2023/05/nathalie-3-scaled.jpeg\";s:8:\"filesize\";i:259105;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-3-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10346;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-3-683x1024.jpeg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:60338;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-3-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5073;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-3-768x1152.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:70988;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-3-1024x1536.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:109658;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-3-1365x2048.jpeg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:174759;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-3.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (314,102,'_wp_attached_file','2023/05/nathalie-4-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (315,102,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1706;s:6:\"height\";i:2560;s:4:\"file\";s:30:\"2023/05/nathalie-4-scaled.jpeg\";s:8:\"filesize\";i:690006;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-4-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20304;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-4-683x1024.jpeg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:161114;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-4-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8705;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-4-768x1152.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:193527;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-4-1024x1536.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:305301;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-4-1365x2048.jpeg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:483142;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-4.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (316,103,'_wp_attached_file','2023/05/nathalie-5-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (317,103,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:30:\"2023/05/nathalie-5-scaled.jpeg\";s:8:\"filesize\";i:859235;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-5-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21480;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-5-683x1024.jpeg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:166386;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-5-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9199;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-5-768x1152.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:202006;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-5-1024x1536.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:332808;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-5-1365x2048.jpeg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:563029;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-5.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (318,104,'_wp_attached_file','2023/05/nathalie-6-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (319,104,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:2048;s:4:\"file\";s:30:\"2023/05/nathalie-6-scaled.jpeg\";s:8:\"filesize\";i:767139;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-6-300x240.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15914;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-6-1024x819.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:819;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:124579;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-6-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6546;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-6-768x614.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:73733;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-6-1536x1229.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1229;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:272553;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-6-2048x1638.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1638;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:488126;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-6.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (320,105,'_wp_attached_file','2023/05/nathalie-7-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (321,105,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1706;s:4:\"file\";s:30:\"2023/05/nathalie-7-scaled.jpeg\";s:8:\"filesize\";i:394948;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-7-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14768;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-7-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:95149;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-7-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6818;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-7-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:61632;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-7-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:175319;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-7-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:275678;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-7.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (322,106,'_wp_attached_file','2023/05/nathalie-8-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (323,106,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1709;s:6:\"height\";i:2560;s:4:\"file\";s:30:\"2023/05/nathalie-8-scaled.jpeg\";s:8:\"filesize\";i:449335;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-8-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18600;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-8-684x1024.jpeg\";s:5:\"width\";i:684;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:113100;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-8-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9472;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-8-768x1150.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:133854;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-8-1025x1536.jpeg\";s:5:\"width\";i:1025;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:205709;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-8-1367x2048.jpeg\";s:5:\"width\";i:1367;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:317098;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-8.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (324,107,'_wp_attached_file','2023/05/nathalie-9-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (325,107,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:30:\"2023/05/nathalie-9-scaled.jpeg\";s:8:\"filesize\";i:657940;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-9-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15798;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-9-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:122034;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-9-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7871;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-9-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:74277;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-9-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:249506;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-9-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:429181;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-9.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (326,108,'_wp_attached_file','2023/05/nathalie-10-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (327,108,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1920;s:4:\"file\";s:31:\"2023/05/nathalie-10-scaled.jpeg\";s:8:\"filesize\";i:1432134;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-10-300x225.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29059;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-10-1024x768.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:295754;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-10-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10358;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-10-768x576.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:172436;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"nathalie-10-1536x1152.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:612994;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"nathalie-10-2048x1536.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1000033;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"nathalie-10.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (328,109,'_wp_attached_file','2023/05/nathalie-11-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (329,109,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:31:\"2023/05/nathalie-11-scaled.jpeg\";s:8:\"filesize\";i:370177;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-11-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16132;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-11-1024x684.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:92120;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-11-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8022;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-11-768x513.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:61581;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"nathalie-11-1536x1025.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:164702;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"nathalie-11-2048x1367.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:255924;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"nathalie-11.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (330,110,'_wp_attached_file','2023/05/nathalie-12-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (331,110,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:31:\"2023/05/nathalie-12-scaled.jpeg\";s:8:\"filesize\";i:515578;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-12-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20379;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-12-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:131752;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-12-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10077;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-12-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:85556;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"nathalie-12-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:238018;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"nathalie-12-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:366040;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"nathalie-12.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (332,111,'_wp_attached_file','2023/05/nathalie-13-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (333,111,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:31:\"2023/05/nathalie-13-scaled.jpeg\";s:8:\"filesize\";i:289355;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-13-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10980;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-13-683x1024.jpeg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69270;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-13-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6066;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"nathalie-13-768x1152.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:82375;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"nathalie-13-1024x1536.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:127142;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"nathalie-13-1365x2048.jpeg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:199889;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"nathalie-13.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (334,112,'_wp_attached_file','2023/05/nathalie-14-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (335,112,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:31:\"2023/05/nathalie-14-scaled.jpeg\";s:8:\"filesize\";i:495816;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-14-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12244;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-14-683x1024.jpeg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:102916;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-14-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5935;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"nathalie-14-768x1152.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:125561;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"nathalie-14-1024x1536.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:206109;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"nathalie-14-1365x2048.jpeg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:338207;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"nathalie-14.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (336,113,'_wp_attached_file','2023/05/nathalie-15-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (337,113,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1709;s:6:\"height\";i:2560;s:4:\"file\";s:31:\"2023/05/nathalie-15-scaled.jpeg\";s:8:\"filesize\";i:684394;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-15-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21368;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-15-684x1024.jpeg\";s:5:\"width\";i:684;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:161960;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-15-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9107;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"nathalie-15-768x1150.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:194512;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"nathalie-15-1025x1536.jpeg\";s:5:\"width\";i:1025;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:309526;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"nathalie-15-1367x2048.jpeg\";s:5:\"width\";i:1367;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:483639;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"nathalie-15.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (338,114,'_edit_lock','1683472900:1');
INSERT INTO `wp_postmeta` VALUES (339,113,'_wp_attachment_image_alt','une mariée tenant des ballons avec ses demoiselles d\'honneurs');
INSERT INTO `wp_postmeta` VALUES (340,114,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (341,114,'fichier','15');
INSERT INTO `wp_postmeta` VALUES (342,114,'_fichier','field_6457aa9e56c44');
INSERT INTO `wp_postmeta` VALUES (343,114,'reference','bf2400');
INSERT INTO `wp_postmeta` VALUES (344,114,'_reference','field_6457a7dbdcf15');
INSERT INTO `wp_postmeta` VALUES (345,114,'categorie','Mariage');
INSERT INTO `wp_postmeta` VALUES (346,114,'_categorie','field_6457a88bdcf16');
INSERT INTO `wp_postmeta` VALUES (347,114,'annee','2022');
INSERT INTO `wp_postmeta` VALUES (348,114,'_annee','field_6457aa01dcf17');
INSERT INTO `wp_postmeta` VALUES (349,114,'format','Portrait');
INSERT INTO `wp_postmeta` VALUES (350,114,'_format','field_6457aa22dcf18');
INSERT INTO `wp_postmeta` VALUES (351,114,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (352,114,'_type','field_6457aa57dcf19');
INSERT INTO `wp_postmeta` VALUES (355,122,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (356,122,'_edit_lock','1685958200:1');
INSERT INTO `wp_postmeta` VALUES (357,123,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (358,123,'_edit_lock','1685958217:1');
INSERT INTO `wp_postmeta` VALUES (359,124,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (360,124,'fichier','15');
INSERT INTO `wp_postmeta` VALUES (361,124,'_fichier','field_6457aa9e56c44');
INSERT INTO `wp_postmeta` VALUES (362,124,'photo','');
INSERT INTO `wp_postmeta` VALUES (363,124,'_photo','field_6458bdcd3aa0e');
INSERT INTO `wp_postmeta` VALUES (364,124,'titre','BRIDE\'S MAID');
INSERT INTO `wp_postmeta` VALUES (365,124,'_titre','field_6458bf647e64c');
INSERT INTO `wp_postmeta` VALUES (366,124,'reference','bf2400');
INSERT INTO `wp_postmeta` VALUES (367,124,'_reference','field_6457a7dbdcf15');
INSERT INTO `wp_postmeta` VALUES (368,124,'categorie','Mariage');
INSERT INTO `wp_postmeta` VALUES (369,124,'_categorie','field_6457a88bdcf16');
INSERT INTO `wp_postmeta` VALUES (370,124,'format','Portrait');
INSERT INTO `wp_postmeta` VALUES (371,124,'_format','field_6457aa22dcf18');
INSERT INTO `wp_postmeta` VALUES (372,124,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (373,124,'_type','field_6457aa57dcf19');
INSERT INTO `wp_postmeta` VALUES (374,124,'annee','2022');
INSERT INTO `wp_postmeta` VALUES (375,124,'_annee','field_6457aa01dcf17');
INSERT INTO `wp_postmeta` VALUES (376,124,'_edit_lock','1686826730:1');
INSERT INTO `wp_postmeta` VALUES (377,127,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (378,127,'_edit_lock','1686826686:1');
INSERT INTO `wp_postmeta` VALUES (379,98,'_wp_attachment_image_alt','des invité de mariage lèvent leur flûte de champagne.');
INSERT INTO `wp_postmeta` VALUES (380,127,'fichier','0');
INSERT INTO `wp_postmeta` VALUES (381,127,'_fichier','field_6457aa9e56c44');
INSERT INTO `wp_postmeta` VALUES (382,127,'photo','');
INSERT INTO `wp_postmeta` VALUES (383,127,'_photo','field_6458bdcd3aa0e');
INSERT INTO `wp_postmeta` VALUES (384,127,'titre','LE TOAST');
INSERT INTO `wp_postmeta` VALUES (385,127,'_titre','field_6458bf647e64c');
INSERT INTO `wp_postmeta` VALUES (386,127,'reference','bf2385');
INSERT INTO `wp_postmeta` VALUES (387,127,'_reference','field_6457a7dbdcf15');
INSERT INTO `wp_postmeta` VALUES (388,127,'categorie','Réception');
INSERT INTO `wp_postmeta` VALUES (389,127,'_categorie','field_6457a88bdcf16');
INSERT INTO `wp_postmeta` VALUES (390,127,'format','Paysage');
INSERT INTO `wp_postmeta` VALUES (391,127,'_format','field_6457aa22dcf18');
INSERT INTO `wp_postmeta` VALUES (392,127,'type','Argentique');
INSERT INTO `wp_postmeta` VALUES (393,127,'_type','field_6457aa57dcf19');
INSERT INTO `wp_postmeta` VALUES (394,127,'annee','2019');
INSERT INTO `wp_postmeta` VALUES (395,127,'_annee','field_6457aa01dcf17');
INSERT INTO `wp_postmeta` VALUES (396,128,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (397,128,'_edit_lock','1686826672:1');
INSERT INTO `wp_postmeta` VALUES (398,128,'fichier','1');
INSERT INTO `wp_postmeta` VALUES (399,128,'_fichier','field_6457aa9e56c44');
INSERT INTO `wp_postmeta` VALUES (400,128,'photo','');
INSERT INTO `wp_postmeta` VALUES (401,128,'_photo','field_6458bdcd3aa0e');
INSERT INTO `wp_postmeta` VALUES (402,128,'titre','18 ANS');
INSERT INTO `wp_postmeta` VALUES (403,128,'_titre','field_6458bf647e64c');
INSERT INTO `wp_postmeta` VALUES (404,128,'reference','bf2386');
INSERT INTO `wp_postmeta` VALUES (405,128,'_reference','field_6457a7dbdcf15');
INSERT INTO `wp_postmeta` VALUES (406,128,'categorie','Mariage');
INSERT INTO `wp_postmeta` VALUES (407,128,'_categorie','field_6457a88bdcf16');
INSERT INTO `wp_postmeta` VALUES (408,128,'format','Paysage');
INSERT INTO `wp_postmeta` VALUES (409,128,'_format','field_6457aa22dcf18');
INSERT INTO `wp_postmeta` VALUES (410,128,'type','Argentique');
INSERT INTO `wp_postmeta` VALUES (411,128,'_type','field_6457aa57dcf19');
INSERT INTO `wp_postmeta` VALUES (412,128,'annee','2020');
INSERT INTO `wp_postmeta` VALUES (413,128,'_annee','field_6457aa01dcf17');
INSERT INTO `wp_postmeta` VALUES (414,99,'_wp_attachment_image_alt','le chiffre 18 est au centre de la photo en ballons doré');
INSERT INTO `wp_postmeta` VALUES (415,129,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (416,129,'_edit_lock','1686826661:1');
INSERT INTO `wp_postmeta` VALUES (417,100,'_wp_attachment_image_alt','Un lancé de confettis lors d\'un concert.');
INSERT INTO `wp_postmeta` VALUES (418,129,'fichier','2');
INSERT INTO `wp_postmeta` VALUES (419,129,'_fichier','field_6457aa9e56c44');
INSERT INTO `wp_postmeta` VALUES (420,129,'photo','');
INSERT INTO `wp_postmeta` VALUES (421,129,'_photo','field_6458bdcd3aa0e');
INSERT INTO `wp_postmeta` VALUES (422,129,'titre','CONFETTIS');
INSERT INTO `wp_postmeta` VALUES (423,129,'_titre','field_6458bf647e64c');
INSERT INTO `wp_postmeta` VALUES (424,129,'reference','bf2387');
INSERT INTO `wp_postmeta` VALUES (425,129,'_reference','field_6457a7dbdcf15');
INSERT INTO `wp_postmeta` VALUES (426,129,'categorie','Concert');
INSERT INTO `wp_postmeta` VALUES (427,129,'_categorie','field_6457a88bdcf16');
INSERT INTO `wp_postmeta` VALUES (428,129,'format','Paysage');
INSERT INTO `wp_postmeta` VALUES (429,129,'_format','field_6457aa22dcf18');
INSERT INTO `wp_postmeta` VALUES (430,129,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (431,129,'_type','field_6457aa57dcf19');
INSERT INTO `wp_postmeta` VALUES (432,129,'annee','2021');
INSERT INTO `wp_postmeta` VALUES (433,129,'_annee','field_6457aa01dcf17');
INSERT INTO `wp_postmeta` VALUES (434,130,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (435,130,'_edit_lock','1686826651:1');
INSERT INTO `wp_postmeta` VALUES (436,101,'_wp_attachment_image_alt','Décoration de table de mariage fleurie et blanche.');
INSERT INTO `wp_postmeta` VALUES (437,130,'fichier','3');
INSERT INTO `wp_postmeta` VALUES (438,130,'_fichier','field_6457aa9e56c44');
INSERT INTO `wp_postmeta` VALUES (439,130,'photo','');
INSERT INTO `wp_postmeta` VALUES (440,130,'_photo','field_6458bdcd3aa0e');
INSERT INTO `wp_postmeta` VALUES (441,130,'titre','TABLE FLEURIE');
INSERT INTO `wp_postmeta` VALUES (442,130,'_titre','field_6458bf647e64c');
INSERT INTO `wp_postmeta` VALUES (443,130,'reference','bf2388');
INSERT INTO `wp_postmeta` VALUES (444,130,'_reference','field_6457a7dbdcf15');
INSERT INTO `wp_postmeta` VALUES (445,130,'categorie','Mariage');
INSERT INTO `wp_postmeta` VALUES (446,130,'_categorie','field_6457a88bdcf16');
INSERT INTO `wp_postmeta` VALUES (447,130,'format','Portrait');
INSERT INTO `wp_postmeta` VALUES (448,130,'_format','field_6457aa22dcf18');
INSERT INTO `wp_postmeta` VALUES (449,130,'type','Argentique');
INSERT INTO `wp_postmeta` VALUES (450,130,'_type','field_6457aa57dcf19');
INSERT INTO `wp_postmeta` VALUES (451,130,'annee','2019');
INSERT INTO `wp_postmeta` VALUES (452,130,'_annee','field_6457aa01dcf17');
INSERT INTO `wp_postmeta` VALUES (453,131,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (454,131,'_edit_lock','1686826641:1');
INSERT INTO `wp_postmeta` VALUES (455,102,'_wp_attachment_image_alt','Décoration de cérémonie de mariage avec une coupole décorée de fleurs.');
INSERT INTO `wp_postmeta` VALUES (456,131,'fichier','4');
INSERT INTO `wp_postmeta` VALUES (457,131,'_fichier','field_6457aa9e56c44');
INSERT INTO `wp_postmeta` VALUES (458,131,'photo','');
INSERT INTO `wp_postmeta` VALUES (459,131,'_photo','field_6458bdcd3aa0e');
INSERT INTO `wp_postmeta` VALUES (460,131,'titre','LA CÉRÉMONIE');
INSERT INTO `wp_postmeta` VALUES (461,131,'_titre','field_6458bf647e64c');
INSERT INTO `wp_postmeta` VALUES (462,131,'reference','bf2389');
INSERT INTO `wp_postmeta` VALUES (463,131,'_reference','field_6457a7dbdcf15');
INSERT INTO `wp_postmeta` VALUES (464,131,'categorie','Mariage');
INSERT INTO `wp_postmeta` VALUES (465,131,'_categorie','field_6457a88bdcf16');
INSERT INTO `wp_postmeta` VALUES (466,131,'format','Portrait');
INSERT INTO `wp_postmeta` VALUES (467,131,'_format','field_6457aa22dcf18');
INSERT INTO `wp_postmeta` VALUES (468,131,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (469,131,'_type','field_6457aa57dcf19');
INSERT INTO `wp_postmeta` VALUES (470,131,'annee','2020');
INSERT INTO `wp_postmeta` VALUES (471,131,'_annee','field_6457aa01dcf17');
INSERT INTO `wp_postmeta` VALUES (472,132,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (473,132,'_edit_lock','1686826620:1');
INSERT INTO `wp_postmeta` VALUES (474,103,'_wp_attachment_image_alt','Des mariées sous les pétales et les sourires des convives.');
INSERT INTO `wp_postmeta` VALUES (475,132,'fichier','5');
INSERT INTO `wp_postmeta` VALUES (476,132,'_fichier','field_6457aa9e56c44');
INSERT INTO `wp_postmeta` VALUES (477,132,'photo','');
INSERT INTO `wp_postmeta` VALUES (478,132,'_photo','field_6458bdcd3aa0e');
INSERT INTO `wp_postmeta` VALUES (479,132,'titre','LES MARIÉS');
INSERT INTO `wp_postmeta` VALUES (480,132,'_titre','field_6458bf647e64c');
INSERT INTO `wp_postmeta` VALUES (481,132,'reference','bf2390');
INSERT INTO `wp_postmeta` VALUES (482,132,'_reference','field_6457a7dbdcf15');
INSERT INTO `wp_postmeta` VALUES (483,132,'categorie','Mariage');
INSERT INTO `wp_postmeta` VALUES (484,132,'_categorie','field_6457a88bdcf16');
INSERT INTO `wp_postmeta` VALUES (485,132,'format','Portrait');
INSERT INTO `wp_postmeta` VALUES (486,132,'_format','field_6457aa22dcf18');
INSERT INTO `wp_postmeta` VALUES (487,132,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (488,132,'_type','field_6457aa57dcf19');
INSERT INTO `wp_postmeta` VALUES (489,132,'annee','2021');
INSERT INTO `wp_postmeta` VALUES (490,132,'_annee','field_6457aa01dcf17');
INSERT INTO `wp_postmeta` VALUES (491,133,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (492,133,'_edit_lock','1686826610:1');
INSERT INTO `wp_postmeta` VALUES (493,104,'_wp_attachment_image_alt','Au centre un couple danse au milieu de la foule.');
INSERT INTO `wp_postmeta` VALUES (494,133,'fichier','6');
INSERT INTO `wp_postmeta` VALUES (495,133,'_fichier','field_6457aa9e56c44');
INSERT INTO `wp_postmeta` VALUES (496,133,'photo','');
INSERT INTO `wp_postmeta` VALUES (497,133,'_photo','field_6458bdcd3aa0e');
INSERT INTO `wp_postmeta` VALUES (498,133,'titre','SLOW');
INSERT INTO `wp_postmeta` VALUES (499,133,'_titre','field_6458bf647e64c');
INSERT INTO `wp_postmeta` VALUES (500,133,'reference','bf2391');
INSERT INTO `wp_postmeta` VALUES (501,133,'_reference','field_6457a7dbdcf15');
INSERT INTO `wp_postmeta` VALUES (502,133,'categorie','Mariage');
INSERT INTO `wp_postmeta` VALUES (503,133,'_categorie','field_6457a88bdcf16');
INSERT INTO `wp_postmeta` VALUES (504,133,'format','Portrait');
INSERT INTO `wp_postmeta` VALUES (505,133,'_format','field_6457aa22dcf18');
INSERT INTO `wp_postmeta` VALUES (506,133,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (507,133,'_type','field_6457aa57dcf19');
INSERT INTO `wp_postmeta` VALUES (508,133,'annee','2020');
INSERT INTO `wp_postmeta` VALUES (509,133,'_annee','field_6457aa01dcf17');
INSERT INTO `wp_postmeta` VALUES (510,134,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (511,134,'_edit_lock','1686826601:1');
INSERT INTO `wp_postmeta` VALUES (512,105,'_wp_attachment_image_alt','Une décoration de table de mariage blanche et dorée.');
INSERT INTO `wp_postmeta` VALUES (513,134,'fichier','7');
INSERT INTO `wp_postmeta` VALUES (514,134,'_fichier','field_6457aa9e56c44');
INSERT INTO `wp_postmeta` VALUES (515,134,'photo','');
INSERT INTO `wp_postmeta` VALUES (516,134,'_photo','field_6458bdcd3aa0e');
INSERT INTO `wp_postmeta` VALUES (517,134,'titre','TABLE');
INSERT INTO `wp_postmeta` VALUES (518,134,'_titre','field_6458bf647e64c');
INSERT INTO `wp_postmeta` VALUES (519,134,'reference','bf2392');
INSERT INTO `wp_postmeta` VALUES (520,134,'_reference','field_6457a7dbdcf15');
INSERT INTO `wp_postmeta` VALUES (521,134,'categorie','Mariage');
INSERT INTO `wp_postmeta` VALUES (522,134,'_categorie','field_6457a88bdcf16');
INSERT INTO `wp_postmeta` VALUES (523,134,'format','Paysage');
INSERT INTO `wp_postmeta` VALUES (524,134,'_format','field_6457aa22dcf18');
INSERT INTO `wp_postmeta` VALUES (525,134,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (526,134,'_type','field_6457aa57dcf19');
INSERT INTO `wp_postmeta` VALUES (527,134,'annee','2019');
INSERT INTO `wp_postmeta` VALUES (528,134,'_annee','field_6457aa01dcf17');
INSERT INTO `wp_postmeta` VALUES (529,135,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (530,135,'_edit_lock','1686826591:1');
INSERT INTO `wp_postmeta` VALUES (531,106,'_wp_attachment_image_alt','Un concert spectacle.');
INSERT INTO `wp_postmeta` VALUES (532,135,'fichier','8');
INSERT INTO `wp_postmeta` VALUES (533,135,'_fichier','field_6457aa9e56c44');
INSERT INTO `wp_postmeta` VALUES (534,135,'photo','');
INSERT INTO `wp_postmeta` VALUES (535,135,'_photo','field_6458bdcd3aa0e');
INSERT INTO `wp_postmeta` VALUES (536,135,'titre','SHOW');
INSERT INTO `wp_postmeta` VALUES (537,135,'_titre','field_6458bf647e64c');
INSERT INTO `wp_postmeta` VALUES (538,135,'reference','bf2393');
INSERT INTO `wp_postmeta` VALUES (539,135,'_reference','field_6457a7dbdcf15');
INSERT INTO `wp_postmeta` VALUES (540,135,'categorie','Concert');
INSERT INTO `wp_postmeta` VALUES (541,135,'_categorie','field_6457a88bdcf16');
INSERT INTO `wp_postmeta` VALUES (542,135,'format','Portrait');
INSERT INTO `wp_postmeta` VALUES (543,135,'_format','field_6457aa22dcf18');
INSERT INTO `wp_postmeta` VALUES (544,135,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (545,135,'_type','field_6457aa57dcf19');
INSERT INTO `wp_postmeta` VALUES (546,135,'annee','2021');
INSERT INTO `wp_postmeta` VALUES (547,135,'_annee','field_6457aa01dcf17');
INSERT INTO `wp_postmeta` VALUES (548,136,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (549,136,'_edit_lock','1686929685:1');
INSERT INTO `wp_postmeta` VALUES (550,107,'_wp_attachment_image_alt','Des mariés et leurs convives dansants.');
INSERT INTO `wp_postmeta` VALUES (551,136,'fichier','9');
INSERT INTO `wp_postmeta` VALUES (552,136,'_fichier','field_6457aa9e56c44');
INSERT INTO `wp_postmeta` VALUES (553,136,'photo','');
INSERT INTO `wp_postmeta` VALUES (554,136,'_photo','field_6458bdcd3aa0e');
INSERT INTO `wp_postmeta` VALUES (555,136,'titre','LA MACARENA');
INSERT INTO `wp_postmeta` VALUES (556,136,'_titre','field_6458bf647e64c');
INSERT INTO `wp_postmeta` VALUES (557,136,'reference','bf2394');
INSERT INTO `wp_postmeta` VALUES (558,136,'_reference','field_6457a7dbdcf15');
INSERT INTO `wp_postmeta` VALUES (559,136,'categorie','Mariage');
INSERT INTO `wp_postmeta` VALUES (560,136,'_categorie','field_6457a88bdcf16');
INSERT INTO `wp_postmeta` VALUES (561,136,'format','Portrait');
INSERT INTO `wp_postmeta` VALUES (562,136,'_format','field_6457aa22dcf18');
INSERT INTO `wp_postmeta` VALUES (563,136,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (564,136,'_type','field_6457aa57dcf19');
INSERT INTO `wp_postmeta` VALUES (565,136,'annee','2022');
INSERT INTO `wp_postmeta` VALUES (566,136,'_annee','field_6457aa01dcf17');
INSERT INTO `wp_postmeta` VALUES (567,137,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (568,137,'_edit_lock','1686826571:1');
INSERT INTO `wp_postmeta` VALUES (569,108,'_wp_attachment_image_alt','Dans un stade, des morceaux de prospectus volent.');
INSERT INTO `wp_postmeta` VALUES (570,137,'fichier','10');
INSERT INTO `wp_postmeta` VALUES (571,137,'_fichier','field_6457aa9e56c44');
INSERT INTO `wp_postmeta` VALUES (572,137,'photo','');
INSERT INTO `wp_postmeta` VALUES (573,137,'_photo','field_6458bdcd3aa0e');
INSERT INTO `wp_postmeta` VALUES (574,137,'titre','STADE');
INSERT INTO `wp_postmeta` VALUES (575,137,'_titre','field_6458bf647e64c');
INSERT INTO `wp_postmeta` VALUES (576,137,'reference','bf2395');
INSERT INTO `wp_postmeta` VALUES (577,137,'_reference','field_6457a7dbdcf15');
INSERT INTO `wp_postmeta` VALUES (578,137,'categorie','Télévision');
INSERT INTO `wp_postmeta` VALUES (579,137,'_categorie','field_6457a88bdcf16');
INSERT INTO `wp_postmeta` VALUES (580,137,'format','Paysage');
INSERT INTO `wp_postmeta` VALUES (581,137,'_format','field_6457aa22dcf18');
INSERT INTO `wp_postmeta` VALUES (582,137,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (583,137,'_type','field_6457aa57dcf19');
INSERT INTO `wp_postmeta` VALUES (584,137,'annee','2022');
INSERT INTO `wp_postmeta` VALUES (585,137,'_annee','field_6457aa01dcf17');
INSERT INTO `wp_postmeta` VALUES (586,138,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (587,138,'_edit_lock','1687333881:1');
INSERT INTO `wp_postmeta` VALUES (588,109,'_wp_attachment_image_alt','Une foule danse sous des guirlandes lumineuse.');
INSERT INTO `wp_postmeta` VALUES (589,138,'fichier','11');
INSERT INTO `wp_postmeta` VALUES (590,138,'_fichier','field_6457aa9e56c44');
INSERT INTO `wp_postmeta` VALUES (591,138,'photo','');
INSERT INTO `wp_postmeta` VALUES (592,138,'_photo','field_6458bdcd3aa0e');
INSERT INTO `wp_postmeta` VALUES (593,138,'titre','DANCE FLOOR');
INSERT INTO `wp_postmeta` VALUES (594,138,'_titre','field_6458bf647e64c');
INSERT INTO `wp_postmeta` VALUES (595,138,'reference','bf2396');
INSERT INTO `wp_postmeta` VALUES (596,138,'_reference','field_6457a7dbdcf15');
INSERT INTO `wp_postmeta` VALUES (597,138,'categorie','Concert');
INSERT INTO `wp_postmeta` VALUES (598,138,'_categorie','field_6457a88bdcf16');
INSERT INTO `wp_postmeta` VALUES (599,138,'format','Paysage');
INSERT INTO `wp_postmeta` VALUES (600,138,'_format','field_6457aa22dcf18');
INSERT INTO `wp_postmeta` VALUES (601,138,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (602,138,'_type','field_6457aa57dcf19');
INSERT INTO `wp_postmeta` VALUES (603,138,'annee','2022');
INSERT INTO `wp_postmeta` VALUES (604,138,'_annee','field_6457aa01dcf17');
INSERT INTO `wp_postmeta` VALUES (605,139,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (606,139,'_edit_lock','1687648662:1');
INSERT INTO `wp_postmeta` VALUES (607,110,'_wp_attachment_image_alt','Un couple se désaltère lors d\'un concert.');
INSERT INTO `wp_postmeta` VALUES (608,139,'fichier','12');
INSERT INTO `wp_postmeta` VALUES (609,139,'_fichier','field_6457aa9e56c44');
INSERT INTO `wp_postmeta` VALUES (610,139,'photo','');
INSERT INTO `wp_postmeta` VALUES (611,139,'_photo','field_6458bdcd3aa0e');
INSERT INTO `wp_postmeta` VALUES (612,139,'titre','CHILL');
INSERT INTO `wp_postmeta` VALUES (613,139,'_titre','field_6458bf647e64c');
INSERT INTO `wp_postmeta` VALUES (614,139,'reference','bf2397');
INSERT INTO `wp_postmeta` VALUES (615,139,'_reference','field_6457a7dbdcf15');
INSERT INTO `wp_postmeta` VALUES (616,139,'categorie','Concert');
INSERT INTO `wp_postmeta` VALUES (617,139,'_categorie','field_6457a88bdcf16');
INSERT INTO `wp_postmeta` VALUES (618,139,'format','Paysage');
INSERT INTO `wp_postmeta` VALUES (619,139,'_format','field_6457aa22dcf18');
INSERT INTO `wp_postmeta` VALUES (620,139,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (621,139,'_type','field_6457aa57dcf19');
INSERT INTO `wp_postmeta` VALUES (622,139,'annee','2022');
INSERT INTO `wp_postmeta` VALUES (623,139,'_annee','field_6457aa01dcf17');
INSERT INTO `wp_postmeta` VALUES (633,70,'_wp_old_date','2023-05-07');
INSERT INTO `wp_postmeta` VALUES (634,71,'_wp_old_date','2023-05-07');
INSERT INTO `wp_postmeta` VALUES (635,70,'_wp_old_date','2023-05-17');
INSERT INTO `wp_postmeta` VALUES (636,71,'_wp_old_date','2023-05-17');
INSERT INTO `wp_postmeta` VALUES (654,70,'_wp_old_date','2023-05-20');
INSERT INTO `wp_postmeta` VALUES (655,71,'_wp_old_date','2023-05-20');
INSERT INTO `wp_postmeta` VALUES (656,145,'_wp_attached_file','2023/05/contact.png');
INSERT INTO `wp_postmeta` VALUES (657,145,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:597;s:6:\"height\";i:107;s:4:\"file\";s:19:\"2023/05/contact.png\";s:8:\"filesize\";i:7877;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"contact-300x54.png\";s:5:\"width\";i:300;s:6:\"height\";i:54;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9937;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"contact-150x107.png\";s:5:\"width\";i:150;s:6:\"height\";i:107;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3716;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (659,6,'_wp_page_template','templates/template-home.php');
INSERT INTO `wp_postmeta` VALUES (660,70,'_wp_old_date','2023-05-22');
INSERT INTO `wp_postmeta` VALUES (661,71,'_wp_old_date','2023-05-22');
INSERT INTO `wp_postmeta` VALUES (662,151,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (663,151,'_edit_lock','1687373375:1');
INSERT INTO `wp_postmeta` VALUES (664,6,'hero','');
INSERT INTO `wp_postmeta` VALUES (665,6,'_hero','field_64706b3615050');
INSERT INTO `wp_postmeta` VALUES (666,6,'categories','Mariage');
INSERT INTO `wp_postmeta` VALUES (667,6,'_categories','field_64706dd55e4d3');
INSERT INTO `wp_postmeta` VALUES (668,6,'formats','Portrait');
INSERT INTO `wp_postmeta` VALUES (669,6,'_formats','field_64706e3e5e4d4');
INSERT INTO `wp_postmeta` VALUES (670,6,'trier_par','Nouveautés');
INSERT INTO `wp_postmeta` VALUES (671,6,'_trier_par','field_64706e6b5e4d5');
INSERT INTO `wp_postmeta` VALUES (672,150,'hero','');
INSERT INTO `wp_postmeta` VALUES (673,150,'_hero','field_64706b3615050');
INSERT INTO `wp_postmeta` VALUES (674,150,'categories','Mariage');
INSERT INTO `wp_postmeta` VALUES (675,150,'_categories','field_64706dd55e4d3');
INSERT INTO `wp_postmeta` VALUES (676,150,'formats','Portrait');
INSERT INTO `wp_postmeta` VALUES (677,150,'_formats','field_64706e3e5e4d4');
INSERT INTO `wp_postmeta` VALUES (678,150,'trier_par','Nouveautés');
INSERT INTO `wp_postmeta` VALUES (679,150,'_trier_par','field_64706e6b5e4d5');
INSERT INTO `wp_postmeta` VALUES (680,156,'hero','');
INSERT INTO `wp_postmeta` VALUES (681,156,'_hero','field_64706b3615050');
INSERT INTO `wp_postmeta` VALUES (682,156,'categories','Mariage');
INSERT INTO `wp_postmeta` VALUES (683,156,'_categories','field_64706dd55e4d3');
INSERT INTO `wp_postmeta` VALUES (684,156,'formats','Portrait');
INSERT INTO `wp_postmeta` VALUES (685,156,'_formats','field_64706e3e5e4d4');
INSERT INTO `wp_postmeta` VALUES (686,156,'trier_par','Nouveautés');
INSERT INTO `wp_postmeta` VALUES (687,156,'_trier_par','field_64706e6b5e4d5');
INSERT INTO `wp_postmeta` VALUES (688,11,'_wp_page_template','templates/template-home.php');
INSERT INTO `wp_postmeta` VALUES (689,11,'hero','');
INSERT INTO `wp_postmeta` VALUES (690,11,'_hero','field_64706b3615050');
INSERT INTO `wp_postmeta` VALUES (691,11,'categories','Mariage');
INSERT INTO `wp_postmeta` VALUES (692,11,'_categories','field_64706dd55e4d3');
INSERT INTO `wp_postmeta` VALUES (693,11,'formats','Portrait');
INSERT INTO `wp_postmeta` VALUES (694,11,'_formats','field_64706e3e5e4d4');
INSERT INTO `wp_postmeta` VALUES (695,11,'trier_par','Nouveautés');
INSERT INTO `wp_postmeta` VALUES (696,11,'_trier_par','field_64706e6b5e4d5');
INSERT INTO `wp_postmeta` VALUES (697,86,'hero','');
INSERT INTO `wp_postmeta` VALUES (698,86,'_hero','field_64706b3615050');
INSERT INTO `wp_postmeta` VALUES (699,86,'categories','Mariage');
INSERT INTO `wp_postmeta` VALUES (700,86,'_categories','field_64706dd55e4d3');
INSERT INTO `wp_postmeta` VALUES (701,86,'formats','Portrait');
INSERT INTO `wp_postmeta` VALUES (702,86,'_formats','field_64706e3e5e4d4');
INSERT INTO `wp_postmeta` VALUES (703,86,'trier_par','Nouveautés');
INSERT INTO `wp_postmeta` VALUES (704,86,'_trier_par','field_64706e6b5e4d5');
INSERT INTO `wp_postmeta` VALUES (705,157,'hero','');
INSERT INTO `wp_postmeta` VALUES (706,157,'_hero','field_64706b3615050');
INSERT INTO `wp_postmeta` VALUES (707,157,'categories','Mariage');
INSERT INTO `wp_postmeta` VALUES (708,157,'_categories','field_64706dd55e4d3');
INSERT INTO `wp_postmeta` VALUES (709,157,'formats','Portrait');
INSERT INTO `wp_postmeta` VALUES (710,157,'_formats','field_64706e3e5e4d4');
INSERT INTO `wp_postmeta` VALUES (711,157,'trier_par','Nouveautés');
INSERT INTO `wp_postmeta` VALUES (712,157,'_trier_par','field_64706e6b5e4d5');
INSERT INTO `wp_postmeta` VALUES (713,70,'_wp_old_date','2023-05-24');
INSERT INTO `wp_postmeta` VALUES (714,71,'_wp_old_date','2023-05-24');
INSERT INTO `wp_postmeta` VALUES (715,159,'hero','');
INSERT INTO `wp_postmeta` VALUES (716,159,'_hero','field_64706b3615050');
INSERT INTO `wp_postmeta` VALUES (717,159,'categories','Mariage');
INSERT INTO `wp_postmeta` VALUES (718,159,'_categories','field_64706dd55e4d3');
INSERT INTO `wp_postmeta` VALUES (719,159,'formats','Portrait');
INSERT INTO `wp_postmeta` VALUES (720,159,'_formats','field_64706e3e5e4d4');
INSERT INTO `wp_postmeta` VALUES (721,159,'trier_par','Nouveautés');
INSERT INTO `wp_postmeta` VALUES (722,159,'_trier_par','field_64706e6b5e4d5');
INSERT INTO `wp_postmeta` VALUES (723,160,'hero','109');
INSERT INTO `wp_postmeta` VALUES (724,160,'_hero','field_64706b3615050');
INSERT INTO `wp_postmeta` VALUES (725,160,'categories','Mariage');
INSERT INTO `wp_postmeta` VALUES (726,160,'_categories','field_64706dd55e4d3');
INSERT INTO `wp_postmeta` VALUES (727,160,'formats','Portrait');
INSERT INTO `wp_postmeta` VALUES (728,160,'_formats','field_64706e3e5e4d4');
INSERT INTO `wp_postmeta` VALUES (729,160,'trier_par','Nouveautés');
INSERT INTO `wp_postmeta` VALUES (730,160,'_trier_par','field_64706e6b5e4d5');
INSERT INTO `wp_postmeta` VALUES (731,78,'_wp_old_date','2023-05-02');
INSERT INTO `wp_postmeta` VALUES (732,79,'_wp_old_date','2023-05-02');
INSERT INTO `wp_postmeta` VALUES (733,139,'_thumbnail_id','110');
INSERT INTO `wp_postmeta` VALUES (734,138,'_thumbnail_id','109');
INSERT INTO `wp_postmeta` VALUES (735,137,'_thumbnail_id','108');
INSERT INTO `wp_postmeta` VALUES (736,124,'_thumbnail_id','113');
INSERT INTO `wp_postmeta` VALUES (737,127,'_thumbnail_id','98');
INSERT INTO `wp_postmeta` VALUES (738,128,'_thumbnail_id','99');
INSERT INTO `wp_postmeta` VALUES (739,129,'_thumbnail_id','100');
INSERT INTO `wp_postmeta` VALUES (740,130,'_thumbnail_id','101');
INSERT INTO `wp_postmeta` VALUES (741,131,'_thumbnail_id','102');
INSERT INTO `wp_postmeta` VALUES (742,132,'_thumbnail_id','103');
INSERT INTO `wp_postmeta` VALUES (743,133,'_thumbnail_id','104');
INSERT INTO `wp_postmeta` VALUES (744,134,'_thumbnail_id','105');
INSERT INTO `wp_postmeta` VALUES (745,135,'_thumbnail_id','106');
INSERT INTO `wp_postmeta` VALUES (746,136,'_thumbnail_id','107');
INSERT INTO `wp_postmeta` VALUES (747,79,'_wp_old_date','2023-05-31');
INSERT INTO `wp_postmeta` VALUES (748,78,'_wp_old_date','2023-05-31');
INSERT INTO `wp_postmeta` VALUES (749,43,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (750,40,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (760,9,'_wp_page_template','page.php');
INSERT INTO `wp_postmeta` VALUES (762,140,'_edit_lock','1686838284:1');
INSERT INTO `wp_postmeta` VALUES (763,140,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (776,11,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (777,11,'_wp_trash_meta_time','1687165350');
INSERT INTO `wp_postmeta` VALUES (778,11,'_wp_desired_post_slug','contact');
INSERT INTO `wp_postmeta` VALUES (779,172,'hero','');
INSERT INTO `wp_postmeta` VALUES (780,172,'_hero','field_64706b3615050');
INSERT INTO `wp_postmeta` VALUES (781,172,'categories','Mariage');
INSERT INTO `wp_postmeta` VALUES (782,172,'_categories','field_64706dd55e4d3');
INSERT INTO `wp_postmeta` VALUES (783,172,'formats','Portrait');
INSERT INTO `wp_postmeta` VALUES (784,172,'_formats','field_64706e3e5e4d4');
INSERT INTO `wp_postmeta` VALUES (785,172,'trier_par','Nouveautés');
INSERT INTO `wp_postmeta` VALUES (786,172,'_trier_par','field_64706e6b5e4d5');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2023-04-25 14:38:22','2023-04-25 14:38:22','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2023-04-25 14:38:22','2023-04-25 14:38:22','',0,'http://localhost:10048/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (3,1,'2023-04-25 14:38:22','2023-04-25 14:38:22','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10048.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','VIE PRIVÉE','','draft','closed','closed','','privacy-policy','','','2023-06-19 08:51:26','2023-06-19 08:51:26','',0,'http://localhost:10048/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2023-04-28 09:06:34','2023-04-28 09:06:34','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"></h2>\n<!-- /wp:heading -->','PHOTOGRAPHE EVENT','','draft','closed','closed','','accueil','','','2023-06-19 09:03:07','2023-06-19 09:03:07','',0,'http://localhost:10048/?page_id=6',0,'page','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2023-04-28 09:06:09','2023-04-28 09:06:09','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentythree','','','2023-04-28 09:06:09','2023-04-28 09:06:09','',0,'http://localhost:10048/wp-global-styles-twentytwentythree/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2023-04-28 09:06:34','2023-04-28 09:06:34','','Accueil','','inherit','closed','closed','','6-revision-v1','','','2023-04-28 09:06:34','2023-04-28 09:06:34','',6,'http://localhost:10048/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2023-04-28 09:06:55','2023-04-28 09:06:55','<!-- wp:paragraph -->\n<p>En cours de réalisation ...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','À PROPOS','','publish','closed','closed','','a-propos','','','2023-06-06 13:20:24','2023-06-06 13:20:24','',0,'http://localhost:10048/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2023-04-28 09:06:55','2023-04-28 09:06:55','','À PROPOS','','inherit','closed','closed','','9-revision-v1','','','2023-04-28 09:06:55','2023-04-28 09:06:55','',9,'http://localhost:10048/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2023-04-28 09:07:05','2023-04-28 09:07:05','','PHOTOGRAPHE EVENT','','trash','closed','closed','','contact__trashed','','','2023-06-19 09:02:30','2023-06-19 09:02:30','',0,'http://localhost:10048/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2023-04-28 09:07:05','2023-04-28 09:07:05','','CONTACT','','inherit','closed','closed','','11-revision-v1','','','2023-04-28 09:07:05','2023-04-28 09:07:05','',11,'http://localhost:10048/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2023-04-28 13:20:29','2023-04-28 13:20:29','','À propos','','inherit','closed','closed','','9-revision-v1','','','2023-04-28 13:20:29','2023-04-28 13:20:29','',9,'http://localhost:10048/?p=13',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2023-04-28 13:30:26','2023-04-28 13:30:26','','Contact','','inherit','closed','closed','','11-revision-v1','','','2023-04-28 13:30:26','2023-04-28 13:30:26','',11,'http://localhost:10048/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2023-04-28 13:30:35','2023-04-28 13:30:35','','Blog','','draft','closed','closed','','blog','','','2023-05-07 13:45:49','2023-05-07 13:45:49','',0,'http://localhost:10048/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2023-04-28 13:30:35','2023-04-28 13:30:35','','Blog','','inherit','closed','closed','','15-revision-v1','','','2023-04-28 13:30:35','2023-04-28 13:30:35','',15,'http://localhost:10048/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2023-04-28 16:13:39','2023-04-28 16:13:39','','Logo','','inherit','open','closed','','logo','','','2023-04-28 16:13:39','2023-04-28 16:13:39','',0,'http://localhost:10048/wp-content/uploads/2023/04/Logo.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (32,1,'2023-05-01 12:40:22','2023-05-01 12:40:22','','À PROPOS','','inherit','closed','closed','','9-revision-v1','','','2023-05-01 12:40:22','2023-05-01 12:40:22','',9,'http://localhost:10048/?p=32',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2023-05-01 12:40:37','2023-05-01 12:40:37','','ACCUEIL','','inherit','closed','closed','','6-revision-v1','','','2023-05-01 12:40:37','2023-05-01 12:40:37','',6,'http://localhost:10048/?p=33',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2023-05-01 12:40:46','2023-05-01 12:40:46','','CONTACT','','inherit','closed','closed','','11-revision-v1','','','2023-05-01 12:40:46','2023-05-01 12:40:46','',11,'http://localhost:10048/?p=34',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2023-05-01 13:33:43','2023-05-01 13:33:43','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10048.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2023-05-01 13:33:43','2023-05-01 13:33:43','',3,'http://localhost:10048/?p=36',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2023-05-01 13:34:11','2023-05-01 13:34:11','','MENTIONS LÉGALES','','publish','closed','closed','','mention-legales','','','2023-05-01 13:34:42','2023-05-01 13:34:42','',0,'http://localhost:10048/?page_id=37',0,'page','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2023-05-01 13:34:11','2023-05-01 13:34:11','','Mention Légales','','inherit','closed','closed','','37-revision-v1','','','2023-05-01 13:34:11','2023-05-01 13:34:11','',37,'http://localhost:10048/?p=38',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2023-05-01 13:34:42','2023-05-01 13:34:42','','MENTIONS LÉGALES','','inherit','closed','closed','','37-revision-v1','','','2023-05-01 13:34:42','2023-05-01 13:34:42','',37,'http://localhost:10048/?p=39',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2023-05-01 13:35:13','2023-05-01 13:35:13','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10048.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','VIE PRIVÉE','','publish','closed','closed','','vie-privee','','','2023-06-06 13:15:26','2023-06-06 13:15:26','',0,'http://localhost:10048/?page_id=40',0,'page','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2023-05-01 13:35:13','2023-05-01 13:35:13','','Vie privée','','inherit','closed','closed','','40-revision-v1','','','2023-05-01 13:35:13','2023-05-01 13:35:13','',40,'http://localhost:10048/?p=41',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2023-05-01 13:35:24','2023-05-01 13:35:24','','VIE PRIVÉE','','inherit','closed','closed','','40-revision-v1','','','2023-05-01 13:35:24','2023-05-01 13:35:24','',40,'http://localhost:10048/?p=42',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2023-05-01 13:35:42','2023-05-01 13:35:42','','TOUS DROITS RÉSERVÉS','','draft','closed','closed','','tous-droits-reserves','','','2023-06-19 08:51:24','2023-06-19 08:51:24','',0,'http://localhost:10048/?page_id=43',0,'page','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2023-05-01 13:35:42','2023-05-01 13:35:42','','Tous droits réservés','','inherit','closed','closed','','43-revision-v1','','','2023-05-01 13:35:42','2023-05-01 13:35:42','',43,'http://localhost:10048/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2023-05-01 13:36:04','2023-05-01 13:36:04','','TOUS DROITS RÉSERVÉS','','inherit','closed','closed','','43-revision-v1','','','2023-05-01 13:36:04','2023-05-01 13:36:04','',43,'http://localhost:10048/?p=45',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2023-05-01 15:05:00','2023-05-01 15:05:00','{\"fields\":{\"0\":{\"id\":\"0\",\"type\":\"name\",\"label\":\"NOM\",\"format\":\"simple\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"label\"},\"1\":{\"id\":\"1\",\"type\":\"email\",\"label\":\"E-MAIL\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"label\"},\"3\":{\"id\":\"3\",\"type\":\"email\",\"label\":\"R\\u00c9F. PHOTO\",\"description\":\"\",\"size\":\"large\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"label\"},\"2\":{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"MESSAGE\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"label\"}},\"id\":\"61\",\"field_id\":4,\"settings\":{\"form_title\":\"CONTACT\",\"form_desc\":\"\",\"submit_text\":\"Envoyer\",\"submit_text_processing\":\"Sending...\",\"form_class\":\"\",\"submit_class\":\"btn-CTA\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: CONTACT\",\"sender_name\":\"PHOTOGRAPHE EVENT\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"9\",\"redirect\":\"\"}},\"antispam\":\"1\",\"form_tags\":[]},\"meta\":{\"template\":\"simple-contact-form-template\"}}','CONTACT','','publish','closed','closed','','contact','','','2023-06-13 08:43:08','2023-06-13 08:43:08','',0,'http://localhost:10048/?post_type=wpforms&#038;p=61',0,'wpforms','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2023-05-01 15:05:02','2023-05-01 15:05:02','{\"fields\":[{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"\"},{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}],\"id\":\"61\",\"field_id\":3,\"settings\":{\"form_title\":\"CONTACT\",\"form_desc\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"form_class\":\"\",\"submit_class\":\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: CONTACT\",\"sender_name\":\"PHOTOGRAPHE EVENT\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"9\",\"redirect\":\"\"}},\"antispam\":\"1\",\"form_tags\":[]},\"meta\":{\"template\":\"simple-contact-form-template\"}}','CONTACT','','inherit','closed','closed','','61-revision-v1','','','2023-05-01 15:05:02','2023-05-01 15:05:02','',61,'http://localhost:10048/?p=62',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2023-05-01 15:08:22','2023-05-01 15:08:22','{\"fields\":{\"0\":{\"id\":\"0\",\"type\":\"name\",\"label\":\"NOM\",\"format\":\"simple\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"label\"},\"1\":{\"id\":\"1\",\"type\":\"email\",\"label\":\"E-MAIL\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"label\"},\"3\":{\"id\":\"3\",\"type\":\"email\",\"label\":\"R\\u00c9F. PHOTO\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"label\"},\"2\":{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"MESSAGE\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"label\"}},\"id\":\"61\",\"field_id\":4,\"settings\":{\"form_title\":\"CONTACT\",\"form_desc\":\"\",\"submit_text\":\"Envoyer\",\"submit_text_processing\":\"Sending...\",\"form_class\":\"\",\"submit_class\":\"button_envoyer\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: CONTACT\",\"sender_name\":\"PHOTOGRAPHE EVENT\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"9\",\"redirect\":\"\"}},\"antispam\":\"1\",\"form_tags\":[]},\"meta\":{\"template\":\"simple-contact-form-template\"}}','CONTACT','','inherit','closed','closed','','61-revision-v1','','','2023-05-01 15:08:22','2023-05-01 15:08:22','',61,'http://localhost:10048/?p=63',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2023-05-01 15:10:34','2023-05-01 15:10:34','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">CONTACT</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"clientId\":\"d96b0544-3cba-49c8-bdfe-9af816479450\",\"formId\":\"61\",\"copyPasteValue\":\"{\\u0022displayTitle\\u0022:false,\\u0022displayDesc\\u0022:false,\\u0022fieldSize\\u0022:\\u0022medium\\u0022,\\u0022fieldBorderRadius\\u0022:\\u00223px\\u0022,\\u0022fieldBackgroundColor\\u0022:\\u0022#ffffff\\u0022,\\u0022fieldBorderColor\\u0022:\\u0022rgba( 0, 0, 0, 0.25 )\\u0022,\\u0022fieldTextColor\\u0022:\\u0022rgba( 0, 0, 0, 0.7 )\\u0022,\\u0022labelSize\\u0022:\\u0022medium\\u0022,\\u0022labelColor\\u0022:\\u0022rgba( 0, 0, 0, 0.85 )\\u0022,\\u0022labelSublabelColor\\u0022:\\u0022rgba( 0, 0, 0, 0.55 )\\u0022,\\u0022labelErrorColor\\u0022:\\u0022#d63637\\u0022,\\u0022buttonSize\\u0022:\\u0022medium\\u0022,\\u0022buttonBorderRadius\\u0022:\\u00223px\\u0022,\\u0022buttonBackgroundColor\\u0022:\\u0022#066aab\\u0022,\\u0022buttonTextColor\\u0022:\\u0022#ffffff\\u0022}\"} /-->','CONTACT','','inherit','closed','closed','','11-revision-v1','','','2023-05-01 15:10:34','2023-05-01 15:10:34','',11,'http://localhost:10048/?p=65',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2023-05-01 19:56:12','2023-05-01 19:56:12','<!-- wp:paragraph -->\n<p>jfkfjkjefjefjeceijeijciecec</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>cefekf,ekekecece</p>\n<!-- /wp:paragraph -->','À PROPOS','','inherit','closed','closed','','9-revision-v1','','','2023-05-01 19:56:12','2023-05-01 19:56:12','',9,'http://localhost:10048/?p=66',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2023-05-01 20:13:12','2023-05-01 20:13:12','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">CONTACT</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"clientId\":\"5e3be3f3-1b63-4218-ac13-04f082feacf3\",\"formId\":\"61\",\"copyPasteValue\":\"{\\u0022displayTitle\\u0022:false,\\u0022displayDesc\\u0022:false,\\u0022fieldSize\\u0022:\\u0022medium\\u0022,\\u0022fieldBorderRadius\\u0022:\\u00223px\\u0022,\\u0022fieldBackgroundColor\\u0022:\\u0022#ffffff\\u0022,\\u0022fieldBorderColor\\u0022:\\u0022rgba( 0, 0, 0, 0.25 )\\u0022,\\u0022fieldTextColor\\u0022:\\u0022rgba( 0, 0, 0, 0.7 )\\u0022,\\u0022labelSize\\u0022:\\u0022medium\\u0022,\\u0022labelColor\\u0022:\\u0022rgba( 0, 0, 0, 0.85 )\\u0022,\\u0022labelSublabelColor\\u0022:\\u0022rgba( 0, 0, 0, 0.55 )\\u0022,\\u0022labelErrorColor\\u0022:\\u0022#d63637\\u0022,\\u0022buttonSize\\u0022:\\u0022medium\\u0022,\\u0022buttonBorderRadius\\u0022:\\u00223px\\u0022,\\u0022buttonBackgroundColor\\u0022:\\u0022#066aab\\u0022,\\u0022buttonTextColor\\u0022:\\u0022#ffffff\\u0022}\"} /-->','CONTACT','','inherit','closed','closed','','11-revision-v1','','','2023-05-01 20:13:12','2023-05-01 20:13:12','',11,'http://localhost:10048/?p=68',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2023-05-26 08:49:28','2023-05-02 08:42:56','','ACCUEIL','','publish','closed','closed','','70','','','2023-05-26 08:49:28','2023-05-26 08:49:28','',0,'http://localhost:10048/?p=70',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2023-05-26 08:49:28','2023-05-02 08:42:56',' ','','','publish','closed','closed','','71','','','2023-05-26 08:49:28','2023-05-26 08:49:28','',0,'http://localhost:10048/?p=71',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2023-06-06 13:15:52','2023-05-02 08:47:07',' ','','','publish','closed','closed','','78','','','2023-06-06 13:15:52','2023-06-06 13:15:52','',0,'http://localhost:10048/78/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2023-06-06 13:15:52','2023-05-02 08:47:07',' ','','','publish','closed','closed','','79','','','2023-06-06 13:15:52','2023-06-06 13:15:52','',0,'http://localhost:10048/79/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2023-05-02 09:59:47','2023-05-02 09:59:47','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">CONTACT</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"clientId\":\"47d37661-de66-4ca2-8ef8-0431d2ebbe3f\",\"formId\":\"61\",\"buttonTextColor\":\"#000000\",\"copyPasteValue\":\"{\\u0022displayTitle\\u0022:false,\\u0022displayDesc\\u0022:false,\\u0022fieldSize\\u0022:\\u0022medium\\u0022,\\u0022fieldBorderRadius\\u0022:\\u00223px\\u0022,\\u0022fieldBackgroundColor\\u0022:\\u0022#ffffff\\u0022,\\u0022fieldBorderColor\\u0022:\\u0022rgba( 0, 0, 0, 0.25 )\\u0022,\\u0022fieldTextColor\\u0022:\\u0022rgba( 0, 0, 0, 0.7 )\\u0022,\\u0022labelSize\\u0022:\\u0022medium\\u0022,\\u0022labelColor\\u0022:\\u0022rgba( 0, 0, 0, 0.85 )\\u0022,\\u0022labelSublabelColor\\u0022:\\u0022rgba( 0, 0, 0, 0.55 )\\u0022,\\u0022labelErrorColor\\u0022:\\u0022#d63637\\u0022,\\u0022buttonSize\\u0022:\\u0022medium\\u0022,\\u0022buttonBorderRadius\\u0022:\\u00223px\\u0022,\\u0022buttonTextColor\\u0022:\\u0022#000000\\u0022}\",\"className\":\"form_contact\"} /-->','CONTACT','','inherit','closed','closed','','11-revision-v1','','','2023-05-02 09:59:47','2023-05-02 09:59:47','',11,'http://localhost:10048/?p=80',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2023-05-02 10:03:58','2023-05-02 10:03:58','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">CONTACT</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"clientId\":\"9c12aab4-abf3-4753-987d-578590d2088c\",\"formId\":\"61\",\"fieldBorderColor\":\"#000000\",\"buttonTextColor\":\"#000000\",\"copyPasteValue\":\"{\\u0022displayTitle\\u0022:false,\\u0022displayDesc\\u0022:false,\\u0022fieldSize\\u0022:\\u0022medium\\u0022,\\u0022fieldBorderRadius\\u0022:\\u00223px\\u0022,\\u0022fieldBackgroundColor\\u0022:\\u0022#ffffff\\u0022,\\u0022fieldBorderColor\\u0022:\\u0022#000000\\u0022,\\u0022fieldTextColor\\u0022:\\u0022rgba( 0, 0, 0, 0.7 )\\u0022,\\u0022labelSize\\u0022:\\u0022medium\\u0022,\\u0022labelColor\\u0022:\\u0022rgba( 0, 0, 0, 0.85 )\\u0022,\\u0022labelSublabelColor\\u0022:\\u0022rgba( 0, 0, 0, 0.55 )\\u0022,\\u0022labelErrorColor\\u0022:\\u0022#d63637\\u0022,\\u0022buttonSize\\u0022:\\u0022medium\\u0022,\\u0022buttonBorderRadius\\u0022:\\u00223px\\u0022,\\u0022buttonBackgroundColor\\u0022:\\u0022#066aab\\u0022,\\u0022buttonTextColor\\u0022:\\u0022#000000\\u0022}\",\"className\":\"form_contact\"} /-->','CONTACT','','inherit','closed','closed','','11-revision-v1','','','2023-05-02 10:03:58','2023-05-02 10:03:58','',11,'http://localhost:10048/?p=81',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2023-05-02 10:04:16','2023-05-02 10:04:16','{\"fields\":{\"0\":{\"id\":\"0\",\"type\":\"name\",\"label\":\"NOM\",\"format\":\"simple\",\"description\":\"\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"label\"},\"1\":{\"id\":\"1\",\"type\":\"email\",\"label\":\"E-MAIL\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"label\"},\"3\":{\"id\":\"3\",\"type\":\"email\",\"label\":\"R\\u00c9F. PHOTO\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"label\"},\"2\":{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"MESSAGE\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"label\"}},\"id\":\"61\",\"field_id\":4,\"settings\":{\"form_title\":\"CONTACT\",\"form_desc\":\"\",\"submit_text\":\"Envoyer\",\"submit_text_processing\":\"Sending...\",\"form_class\":\"\",\"submit_class\":\"button_envoyer\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: CONTACT\",\"sender_name\":\"PHOTOGRAPHE EVENT\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"9\",\"redirect\":\"\"}},\"antispam\":\"1\",\"form_tags\":[]},\"meta\":{\"template\":\"simple-contact-form-template\"}}','CONTACT','','inherit','closed','closed','','61-revision-v1','','','2023-05-02 10:04:16','2023-05-02 10:04:16','',61,'http://localhost:10048/?p=82',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2023-05-02 10:05:47','2023-05-02 10:05:47','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">CONTACT</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"clientId\":\"2b22c5df-5f4b-4990-b36b-e8045d0e3ad5\",\"formId\":\"61\",\"displayTitle\":true,\"fieldBorderColor\":\"#000000\",\"buttonSize\":\"large\",\"buttonBorderRadius\":\"-6px\",\"buttonBackgroundColor\":\"#ffffff\",\"buttonTextColor\":\"#000000\",\"copyPasteValue\":\"{\\u0022displayTitle\\u0022:true,\\u0022displayDesc\\u0022:false,\\u0022fieldSize\\u0022:\\u0022medium\\u0022,\\u0022fieldBorderRadius\\u0022:\\u00223px\\u0022,\\u0022fieldBackgroundColor\\u0022:\\u0022#ffffff\\u0022,\\u0022fieldBorderColor\\u0022:\\u0022#000000\\u0022,\\u0022fieldTextColor\\u0022:\\u0022rgba( 0, 0, 0, 0.7 )\\u0022,\\u0022labelSize\\u0022:\\u0022medium\\u0022,\\u0022labelColor\\u0022:\\u0022rgba( 0, 0, 0, 0.85 )\\u0022,\\u0022labelSublabelColor\\u0022:\\u0022rgba( 0, 0, 0, 0.55 )\\u0022,\\u0022labelErrorColor\\u0022:\\u0022#d63637\\u0022,\\u0022buttonSize\\u0022:\\u0022large\\u0022,\\u0022buttonBorderRadius\\u0022:\\u0022-6px\\u0022,\\u0022buttonBackgroundColor\\u0022:\\u0022#ffffff\\u0022,\\u0022buttonTextColor\\u0022:\\u0022#000000\\u0022}\",\"className\":\"form_contact\"} /-->','CONTACT','','inherit','closed','closed','','11-revision-v1','','','2023-05-02 10:05:47','2023-05-02 10:05:47','',11,'http://localhost:10048/?p=84',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2023-05-02 10:08:44','2023-05-02 10:08:44','{\"fields\":{\"0\":{\"id\":\"0\",\"type\":\"name\",\"label\":\"NOM\",\"format\":\"simple\",\"description\":\"\",\"size\":\"large\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"label\"},\"1\":{\"id\":\"1\",\"type\":\"email\",\"label\":\"E-MAIL\",\"description\":\"\",\"size\":\"large\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"label\"},\"3\":{\"id\":\"3\",\"type\":\"email\",\"label\":\"R\\u00c9F. PHOTO\",\"description\":\"\",\"size\":\"large\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"label\"},\"2\":{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"MESSAGE\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"label\"}},\"id\":\"61\",\"field_id\":4,\"settings\":{\"form_title\":\"CONTACT\",\"form_desc\":\"\",\"submit_text\":\"Envoyer\",\"submit_text_processing\":\"Sending...\",\"form_class\":\"\",\"submit_class\":\"button_envoyer\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: CONTACT\",\"sender_name\":\"PHOTOGRAPHE EVENT\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"9\",\"redirect\":\"\"}},\"antispam\":\"1\",\"form_tags\":[]},\"meta\":{\"template\":\"simple-contact-form-template\"}}','CONTACT','','inherit','closed','closed','','61-revision-v1','','','2023-05-02 10:08:44','2023-05-02 10:08:44','',61,'http://localhost:10048/?p=85',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2023-05-02 11:42:10','2023-05-02 11:42:10','','CONTACT','','inherit','closed','closed','','11-revision-v1','','','2023-05-02 11:42:10','2023-05-02 11:42:10','',11,'http://localhost:10048/?p=86',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2023-05-07 13:41:22','2023-05-07 13:41:22','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"photo\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Informations sur la photo','informations-sur-la-photo','publish','closed','closed','','group_6457a7db8b1e1','','','2023-05-31 13:27:05','2023-05-31 13:27:05','',0,'http://localhost:10048/?post_type=acf-field-group&#038;p=88',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2023-05-07 13:41:22','2023-05-07 13:41:22','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Référence','reference','publish','closed','closed','','field_6457a7dbdcf15','','','2023-05-08 14:38:01','2023-05-08 14:38:01','',88,'http://localhost:10048/?post_type=acf-field&#038;p=89',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2023-05-07 13:41:22','2023-05-07 13:41:22','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Année','annee','publish','closed','closed','','field_6457aa01dcf17','','','2023-05-31 13:27:05','2023-05-31 13:27:05','',88,'http://localhost:10048/?post_type=acf-field&#038;p=91',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2023-05-07 13:41:22','2023-05-07 13:41:22','a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:8:\"Portrait\";s:8:\"Portrait\";s:7:\"Paysage\";s:7:\"Paysage\";}s:13:\"default_value\";b:0;s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','Format','format','publish','closed','closed','','field_6457aa22dcf18','','','2023-05-31 13:27:05','2023-05-31 13:27:05','',88,'http://localhost:10048/?post_type=acf-field&#038;p=92',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2023-05-07 13:41:22','2023-05-07 13:41:22','a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:10:\"Argentique\";s:10:\"Argentique\";s:10:\"Numérique\";s:10:\"Numérique\";}s:13:\"default_value\";b:0;s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','Type','type','publish','closed','closed','','field_6457aa57dcf19','','','2023-05-31 13:27:05','2023-05-31 13:27:05','',88,'http://localhost:10048/?post_type=acf-field&#038;p=93',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2023-05-07 13:44:16','2023-05-07 13:44:16','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:9:\"nathalie-\";s:6:\"append\";s:5:\".jpeg\";}','Fichier','fichier','publish','closed','closed','','field_6457aa9e56c44','','','2023-05-08 14:38:01','2023-05-08 14:38:01','',88,'http://localhost:10048/?post_type=acf-field&#038;p=94',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2023-05-07 14:39:38','2023-05-07 14:39:38','','nathalie-0','','inherit','open','closed','','nathalie-0','','','2023-05-11 15:55:58','2023-05-11 15:55:58','',127,'http://localhost:10048/wp-content/uploads/2023/05/nathalie-0.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (99,1,'2023-05-07 14:39:41','2023-05-07 14:39:41','','nathalie-1','','inherit','open','closed','','nathalie-1','','','2023-05-11 15:59:21','2023-05-11 15:59:21','',128,'http://localhost:10048/wp-content/uploads/2023/05/nathalie-1.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (100,1,'2023-05-07 14:39:44','2023-05-07 14:39:44','','nathalie-2','','inherit','open','closed','','nathalie-2','','','2023-05-11 16:01:11','2023-05-11 16:01:11','',129,'http://localhost:10048/wp-content/uploads/2023/05/nathalie-2.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (101,1,'2023-05-07 14:39:46','2023-05-07 14:39:46','','nathalie-3','','inherit','open','closed','','nathalie-3','','','2023-05-11 16:03:32','2023-05-11 16:03:32','',130,'http://localhost:10048/wp-content/uploads/2023/05/nathalie-3.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (102,1,'2023-05-07 14:39:48','2023-05-07 14:39:48','','nathalie-4','','inherit','open','closed','','nathalie-4','','','2023-05-11 16:06:09','2023-05-11 16:06:09','',131,'http://localhost:10048/wp-content/uploads/2023/05/nathalie-4.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (103,1,'2023-05-07 14:39:50','2023-05-07 14:39:50','','nathalie-5','','inherit','open','closed','','nathalie-5','','','2023-05-11 16:08:25','2023-05-11 16:08:25','',132,'http://localhost:10048/wp-content/uploads/2023/05/nathalie-5.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (104,1,'2023-05-07 14:39:53','2023-05-07 14:39:53','','nathalie-6','','inherit','open','closed','','nathalie-6','','','2023-05-11 16:09:54','2023-05-11 16:09:54','',133,'http://localhost:10048/wp-content/uploads/2023/05/nathalie-6.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (105,1,'2023-05-07 14:39:55','2023-05-07 14:39:55','','nathalie-7','','inherit','open','closed','','nathalie-7','','','2023-05-11 16:11:16','2023-05-11 16:11:16','',134,'http://localhost:10048/wp-content/uploads/2023/05/nathalie-7.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (106,1,'2023-05-07 14:39:57','2023-05-07 14:39:57','','nathalie-8','','inherit','open','closed','','nathalie-8','','','2023-05-11 16:13:47','2023-05-11 16:13:47','',135,'http://localhost:10048/wp-content/uploads/2023/05/nathalie-8.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (107,1,'2023-05-07 14:40:00','2023-05-07 14:40:00','','nathalie-9','','inherit','open','closed','','nathalie-9','','','2023-05-11 16:15:27','2023-05-11 16:15:27','',136,'http://localhost:10048/wp-content/uploads/2023/05/nathalie-9.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (108,1,'2023-05-07 14:40:02','2023-05-07 14:40:02','','nathalie-10','','inherit','open','closed','','nathalie-10','','','2023-05-11 16:24:14','2023-05-11 16:24:14','',137,'http://localhost:10048/wp-content/uploads/2023/05/nathalie-10.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (109,1,'2023-05-07 14:40:04','2023-05-07 14:40:04','','nathalie-11','','inherit','open','closed','','nathalie-11','','','2023-05-11 16:26:15','2023-05-11 16:26:15','',138,'http://localhost:10048/wp-content/uploads/2023/05/nathalie-11.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (110,1,'2023-05-07 14:40:06','2023-05-07 14:40:06','','nathalie-12','','inherit','open','closed','','nathalie-12','','','2023-05-11 16:31:22','2023-05-11 16:31:22','',139,'http://localhost:10048/wp-content/uploads/2023/05/nathalie-12.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (111,1,'2023-05-07 14:40:10','2023-05-07 14:40:10','','nathalie-13','','inherit','open','closed','','nathalie-13','','','2023-05-07 14:40:10','2023-05-07 14:40:10','',0,'http://localhost:10048/wp-content/uploads/2023/05/nathalie-13.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (112,1,'2023-05-07 14:40:13','2023-05-07 14:40:13','','nathalie-14','','inherit','open','closed','','nathalie-14','','','2023-05-07 14:40:13','2023-05-07 14:40:13','',0,'http://localhost:10048/wp-content/uploads/2023/05/nathalie-14.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (113,1,'2023-05-07 14:40:17','2023-05-07 14:40:17','','nathalie-15','','inherit','open','closed','','nathalie-15','','','2023-05-08 14:39:55','2023-05-08 14:39:55','',124,'http://localhost:10048/wp-content/uploads/2023/05/nathalie-15.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (114,1,'2023-05-07 15:21:40','2023-05-07 15:21:40','<!-- wp:image {\"id\":113,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:10048/wp-content/uploads/2023/05/nathalie-15-684x1024.jpeg\" alt=\"une mariée tenant des ballons avec ses demoiselles d\'honneurs\" class=\"wp-image-113\"/></figure>\n<!-- /wp:image -->','','','publish','closed','closed','','114','','','2023-05-07 15:21:40','2023-05-07 15:21:40','',0,'http://localhost:10048/?post_type=portfolio&#038;p=114',0,'portfolio','',0);
INSERT INTO `wp_posts` VALUES (118,1,'2023-05-08 09:17:09','2023-05-08 09:17:09','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','Photo','photo','publish','closed','closed','','field_6458bdcd3aa0e','','','2023-05-08 14:38:01','2023-05-08 14:38:01','',88,'http://localhost:10048/?post_type=acf-field&#038;p=118',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2023-05-08 09:23:43','2023-05-08 09:23:43','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Titre','titre','publish','closed','closed','','field_6458bf647e64c','','','2023-05-08 14:36:30','2023-05-08 14:36:30','',88,'http://localhost:10048/?post_type=acf-field&#038;p=120',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2023-05-08 12:56:51','2023-05-08 12:56:51','a:28:{s:8:\"taxonomy\";s:9:\"categorie\";s:11:\"object_type\";a:1:{i:0;s:5:\"photo\";}s:22:\"advanced_configuration\";i:0;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:25:{s:4:\"name\";s:11:\"Catégories\";s:13:\"singular_name\";s:10:\"Catégorie\";s:9:\"menu_name\";s:11:\"Catégories\";s:9:\"all_items\";s:15:\"All Catégories\";s:9:\"edit_item\";s:19:\"Modifier Catégorie\";s:9:\"view_item\";s:15:\"Voir Catégorie\";s:11:\"update_item\";s:17:\"Update Catégorie\";s:12:\"add_new_item\";s:18:\"Ajouter Catégorie\";s:13:\"new_item_name\";s:19:\"New Catégorie Name\";s:12:\"search_items\";s:18:\"Search Catégories\";s:13:\"popular_items\";s:19:\"Popular Catégories\";s:26:\"separate_items_with_commas\";s:32:\"Separate catégories with commas\";s:19:\"add_or_remove_items\";s:25:\"Add or remove catégories\";s:21:\"choose_from_most_used\";s:37:\"Choose from the most used catégories\";s:9:\"most_used\";s:0:\"\";s:9:\"not_found\";s:20:\"No catégories found\";s:8:\"no_terms\";s:14:\"No catégories\";s:22:\"name_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:21:\"items_list_navigation\";s:27:\"Catégories list navigation\";s:10:\"items_list\";s:16:\"Catégories list\";s:13:\"back_to_items\";s:21:\"← Go to catégories\";s:9:\"item_link\";s:15:\"Catégorie Link\";s:21:\"item_link_description\";s:22:\"A link to a catégorie\";}s:11:\"description\";s:0:\"\";s:6:\"public\";i:1;s:18:\"publicly_queryable\";i:1;s:12:\"hierarchical\";i:0;s:7:\"show_ui\";i:1;s:12:\"show_in_menu\";i:1;s:17:\"show_in_nav_menus\";i:1;s:12:\"show_in_rest\";i:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:13:\"show_tagcloud\";i:1;s:18:\"show_in_quick_edit\";i:1;s:17:\"show_admin_column\";i:0;s:7:\"rewrite\";a:3:{s:17:\"permalink_rewrite\";s:12:\"taxonomy_key\";s:10:\"with_front\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:12:\"default_term\";a:1:{s:20:\"default_term_enabled\";s:1:\"0\";}s:4:\"sort\";i:0;s:8:\"meta_box\";s:7:\"default\";s:11:\"meta_box_cb\";s:0:\"\";s:20:\"meta_box_sanitize_cb\";s:0:\"\";}','Catégories','categories','acf-disabled','closed','closed','','taxonomy_6458f16c38ee4','','','2023-06-05 09:46:46','2023-06-05 09:46:46','',0,'http://localhost:10048/?post_type=acf-taxonomy&#038;p=122',0,'acf-taxonomy','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2023-05-08 13:41:59','2023-05-08 13:41:59','a:28:{s:8:\"taxonomy\";s:6:\"format\";s:11:\"object_type\";a:1:{i:0;s:5:\"photo\";}s:22:\"advanced_configuration\";i:0;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:25:{s:4:\"name\";s:7:\"Formats\";s:13:\"singular_name\";s:6:\"Format\";s:9:\"menu_name\";s:7:\"Formats\";s:9:\"all_items\";s:11:\"All Formats\";s:9:\"edit_item\";s:15:\"Modifier Format\";s:9:\"view_item\";s:11:\"Voir Format\";s:11:\"update_item\";s:13:\"Update Format\";s:12:\"add_new_item\";s:14:\"Ajouter Format\";s:13:\"new_item_name\";s:15:\"New Format Name\";s:12:\"search_items\";s:14:\"Search Formats\";s:13:\"popular_items\";s:15:\"Popular Formats\";s:26:\"separate_items_with_commas\";s:28:\"Separate formats with commas\";s:19:\"add_or_remove_items\";s:21:\"Add or remove formats\";s:21:\"choose_from_most_used\";s:33:\"Choose from the most used formats\";s:9:\"most_used\";s:0:\"\";s:9:\"not_found\";s:16:\"No formats found\";s:8:\"no_terms\";s:10:\"No formats\";s:22:\"name_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:21:\"items_list_navigation\";s:23:\"Formats list navigation\";s:10:\"items_list\";s:12:\"Formats list\";s:13:\"back_to_items\";s:17:\"← Go to formats\";s:9:\"item_link\";s:11:\"Format Link\";s:21:\"item_link_description\";s:18:\"A link to a format\";}s:11:\"description\";s:0:\"\";s:6:\"public\";i:1;s:18:\"publicly_queryable\";i:1;s:12:\"hierarchical\";i:0;s:7:\"show_ui\";i:1;s:12:\"show_in_menu\";i:1;s:17:\"show_in_nav_menus\";i:1;s:12:\"show_in_rest\";i:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:13:\"show_tagcloud\";i:1;s:18:\"show_in_quick_edit\";i:1;s:17:\"show_admin_column\";i:0;s:7:\"rewrite\";a:3:{s:17:\"permalink_rewrite\";s:12:\"taxonomy_key\";s:10:\"with_front\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:12:\"default_term\";a:1:{s:20:\"default_term_enabled\";s:1:\"0\";}s:4:\"sort\";i:0;s:8:\"meta_box\";s:7:\"default\";s:11:\"meta_box_cb\";s:0:\"\";s:20:\"meta_box_sanitize_cb\";s:0:\"\";}','Formats','formats','acf-disabled','closed','closed','','taxonomy_6458fc129c782','','','2023-06-15 10:23:08','2023-06-15 10:23:08','',0,'http://localhost:10048/?post_type=acf-taxonomy&#038;p=123',0,'acf-taxonomy','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2023-05-08 14:39:55','2023-05-08 14:39:55','','BRIDE\'S MAID','','publish','closed','closed','','124','','','2023-06-15 11:00:45','2023-06-15 11:00:45','',0,'http://localhost:10048/?post_type=photo&#038;p=124',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (127,1,'2023-05-11 15:55:58','2023-05-11 15:55:58','','LE TOAST','','publish','closed','closed','','porter-un-toast','','','2023-06-15 11:00:27','2023-06-15 11:00:27','',0,'http://localhost:10048/?post_type=photo&#038;p=127',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (128,1,'2023-05-11 15:57:39','2023-05-11 15:57:39','','18 ANS','','publish','closed','closed','','18-ans-de-mariage','','','2023-06-15 11:00:15','2023-06-15 11:00:15','',0,'http://localhost:10048/?post_type=photo&#038;p=128',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (129,1,'2023-05-11 16:01:11','2023-05-11 16:01:11','','CONFETTIS','','publish','closed','closed','','lance-de-confettis','','','2023-06-15 11:00:03','2023-06-15 11:00:03','',0,'http://localhost:10048/?post_type=photo&#038;p=129',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (130,1,'2023-05-11 16:03:32','2023-05-11 16:03:32','','TABLE FLEURIE','','publish','closed','closed','','table-de-mariage-fleurie','','','2023-06-15 10:59:53','2023-06-15 10:59:53','',0,'http://localhost:10048/?post_type=photo&#038;p=130',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (131,1,'2023-05-11 16:06:09','2023-05-11 16:06:09','','LA CÉRÉMONIE','','publish','closed','closed','','une-coupole-pour-les-voeux','','','2023-06-15 10:59:34','2023-06-15 10:59:34','',0,'http://localhost:10048/?post_type=photo&#038;p=131',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (132,1,'2023-05-11 16:08:25','2023-05-11 16:08:25','','LES MARIÉS','','publish','closed','closed','','la-joie','','','2023-06-15 10:59:23','2023-06-15 10:59:23','',0,'http://localhost:10048/?post_type=photo&#038;p=132',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (133,1,'2023-05-11 16:09:54','2023-05-11 16:09:54','','SLOW','','publish','closed','closed','','en-piste','','','2023-06-15 10:59:13','2023-06-15 10:59:13','',0,'http://localhost:10048/?post_type=photo&#038;p=133',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (134,1,'2023-05-11 16:11:16','2023-05-11 16:11:16','','TABLE','','publish','closed','closed','','decoration-epuree','','','2023-06-15 10:59:03','2023-06-15 10:59:03','',0,'http://localhost:10048/?post_type=photo&#038;p=134',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (135,1,'2023-05-11 16:13:47','2023-05-11 16:13:47','','SHOW','','publish','closed','closed','','show','','','2023-06-15 10:58:54','2023-06-15 10:58:54','',0,'http://localhost:10048/?post_type=photo&#038;p=135',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (136,1,'2023-05-11 16:15:27','2023-05-11 16:15:27','','LA MACARENA','','publish','closed','closed','','la-macarena','','','2023-06-15 10:58:44','2023-06-15 10:58:44','',0,'http://localhost:10048/?post_type=photo&#038;p=136',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (137,1,'2023-05-11 16:24:14','2023-05-11 16:24:14','','STADE','','publish','closed','closed','','pluie-de-prospectus','','','2023-06-15 10:58:32','2023-06-15 10:58:32','',0,'http://localhost:10048/?post_type=photo&#038;p=137',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (138,1,'2023-05-11 16:26:15','2023-05-11 16:26:15','','DANCE FLOOR','','publish','closed','closed','','emporte-par-la-foule','','','2023-06-15 10:58:19','2023-06-15 10:58:19','',0,'http://localhost:10048/?post_type=photo&#038;p=138',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (139,1,'2023-05-11 16:31:22','2023-05-11 16:31:22','','CHILL','','publish','closed','closed','','pause-deshydratante','','','2023-06-18 01:37:43','2023-06-18 01:37:43','',0,'http://localhost:10048/?post_type=photo&#038;p=139',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (140,1,'2023-05-17 08:10:25','2023-05-17 08:10:25','a:34:{s:9:\"post_type\";s:5:\"photo\";s:22:\"advanced_configuration\";b:1;s:13:\"import_source\";s:5:\"cptui\";s:11:\"import_date\";i:1684311025;s:6:\"labels\";a:33:{s:4:\"name\";s:6:\"Photos\";s:13:\"singular_name\";s:5:\"Photo\";s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:14:\"filter_by_date\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";s:9:\"item_link\";s:0:\"\";s:21:\"item_link_description\";s:0:\"\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:0;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";i:2;s:13:\"custom-fields\";i:3;s:12:\"post-formats\";}s:10:\"taxonomies\";a:2:{i:0;s:7:\"formats\";i:1;s:10:\"categories\";}s:11:\"has_archive\";b:1;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:0;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";}','Photos','photos','publish','closed','closed','','post_type_64648bf11b2df','','','2023-06-15 13:00:30','2023-06-15 13:00:30','',0,'http://localhost:10048/?post_type=acf-post-type&#038;p=140',0,'acf-post-type','',0);
INSERT INTO `wp_posts` VALUES (144,1,'2023-05-22 12:08:32','2023-05-22 12:08:32','{\"fields\":{\"0\":{\"id\":\"0\",\"type\":\"name\",\"label\":\"NOM\",\"format\":\"simple\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"label\"},\"1\":{\"id\":\"1\",\"type\":\"email\",\"label\":\"E-MAIL\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"label\"},\"3\":{\"id\":\"3\",\"type\":\"email\",\"label\":\"R\\u00c9F. PHOTO\",\"description\":\"\",\"size\":\"large\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"label\"},\"2\":{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"MESSAGE\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"label\"}},\"id\":\"61\",\"field_id\":4,\"settings\":{\"form_title\":\"CONTACT\",\"form_desc\":\"\",\"submit_text\":\"Envoyer\",\"submit_text_processing\":\"Sending...\",\"form_class\":\"\",\"submit_class\":\"button_envoyer\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: CONTACT\",\"sender_name\":\"PHOTOGRAPHE EVENT\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"9\",\"redirect\":\"\"}},\"antispam\":\"1\",\"form_tags\":[]},\"meta\":{\"template\":\"simple-contact-form-template\"}}','CONTACT','','inherit','closed','closed','','61-revision-v1','','','2023-05-22 12:08:32','2023-05-22 12:08:32','',61,'http://localhost:10048/?p=144',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (145,1,'2023-05-22 12:20:57','2023-05-22 12:20:57','','contact','','inherit','open','closed','','contact-2','','','2023-05-22 12:20:57','2023-05-22 12:20:57','',0,'http://localhost:10048/wp-content/uploads/2023/05/contact.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (148,1,'2023-05-26 08:01:40','2023-05-26 08:01:40','','PHOTOGRAPHE EVENT','','inherit','closed','closed','','6-revision-v1','','','2023-05-26 08:01:40','2023-05-26 08:01:40','',6,'http://localhost:10048/?p=148',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (150,1,'2023-05-26 08:02:22','2023-05-26 08:02:22','','ACCUEIL','','inherit','closed','closed','','6-revision-v1','','','2023-05-26 08:02:22','2023-05-26 08:02:22','',6,'http://localhost:10048/?p=150',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (151,1,'2023-05-26 08:25:11','2023-05-26 08:25:11','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:27:\"templates/template-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Module accueil','module-accueil','publish','closed','closed','','group_64706b14281a7','','','2023-05-26 08:39:32','2023-05-26 08:39:32','',0,'http://localhost:10048/?post_type=acf-field-group&#038;p=151',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (152,1,'2023-05-26 08:25:11','2023-05-26 08:25:11','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:3:\"100\";s:5:\"class\";s:4:\"hero\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:12:\"medium_large\";}','hero','hero','publish','closed','closed','','field_64706b3615050','','','2023-05-26 08:25:54','2023-05-26 08:25:54','',151,'http://localhost:10048/?post_type=acf-field&#038;p=152',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (153,1,'2023-05-26 08:32:20','2023-05-26 08:32:20','a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{s:7:\"Mariage\";s:7:\"Mariage\";s:18:\"Soirée entreprise\";s:18:\"Soirée entreprise\";s:12:\"Anniversaire\";s:12:\"Anniversaire\";s:11:\"Évènement\";s:11:\"Évènement\";}s:13:\"default_value\";b:0;s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','CATÉGORIES','categories','publish','closed','closed','','field_64706dd55e4d3','','','2023-05-26 08:32:20','2023-05-26 08:32:20','',151,'http://localhost:10048/?post_type=acf-field&p=153',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (154,1,'2023-05-26 08:32:20','2023-05-26 08:32:20','a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{s:8:\"Portrait\";s:8:\"Portrait\";s:7:\"Paysage\";s:7:\"Paysage\";s:3:\"1/1\";s:3:\"1/1\";s:2:\"A4\";s:2:\"A4\";}s:13:\"default_value\";b:0;s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','FORMATS','formats','publish','closed','closed','','field_64706e3e5e4d4','','','2023-05-26 08:32:20','2023-05-26 08:32:20','',151,'http://localhost:10048/?post_type=acf-field&p=154',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (155,1,'2023-05-26 08:32:20','2023-05-26 08:32:20','a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:11:\"Nouveautés\";s:11:\"Nouveautés\";s:16:\"Les plus anciens\";s:16:\"Les plus anciens\";}s:13:\"default_value\";b:0;s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','TRIER PAR','trier_par','publish','closed','closed','','field_64706e6b5e4d5','','','2023-05-26 08:32:20','2023-05-26 08:32:20','',151,'http://localhost:10048/?post_type=acf-field&p=155',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (156,1,'2023-05-26 08:46:54','2023-05-26 08:46:54','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"></h2>\n<!-- /wp:heading -->','PHOTOGRAPHE EVENT','','inherit','closed','closed','','6-revision-v1','','','2023-05-26 08:46:54','2023-05-26 08:46:54','',6,'http://localhost:10048/?p=156',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (157,1,'2023-05-26 08:48:58','2023-05-26 08:48:58','','PHOTOGRAPHE EVENT','','inherit','closed','closed','','11-revision-v1','','','2023-05-26 08:48:58','2023-05-26 08:48:58','',11,'http://localhost:10048/?p=157',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (158,1,'2023-05-26 08:58:52','2023-05-26 08:58:52','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"></h2>\n<!-- /wp:heading -->','ACCUEIL','','inherit','closed','closed','','6-revision-v1','','','2023-05-26 08:58:52','2023-05-26 08:58:52','',6,'http://localhost:10048/?p=158',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (159,1,'2023-05-26 09:02:22','2023-05-26 09:02:22','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"></h2>\n<!-- /wp:heading -->','PHOTOGRAPHE EVENT','','inherit','closed','closed','','6-revision-v1','','','2023-05-26 09:02:22','2023-05-26 09:02:22','',6,'http://localhost:10048/?p=159',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (160,1,'2023-05-30 13:16:30','2023-05-30 13:16:30','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"></h2>\n<!-- /wp:heading -->','PHOTOGRAPHE EVENT','','inherit','closed','closed','','6-revision-v1','','','2023-05-30 13:16:30','2023-05-30 13:16:30','',6,'http://localhost:10048/?p=160',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (161,1,'2023-06-06 13:09:46','2023-06-06 13:09:46','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\" id=\"block-c2a89432-9b55-42d6-b9f2-d6fadfd69999\"><br>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p id=\"block-b1bb5d32-f053-4ed8-8de9-e49c77a94a76\"><strong>Suggested text: </strong>Our website address is: http://localhost:10048.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\" id=\"block-78cce639-8ffc-4756-a8e7-cc156a95304d\">Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p id=\"block-d8b3219c-2d6d-409f-b3f2-d6a2fbeb6de6\"><strong>Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id=\"block-1337084a-da81-4489-aa46-377046e07ad2\">An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\" id=\"block-778596c6-7e93-4b6c-87f3-8851ada188cd\">Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p id=\"block-59493788-e8ae-4cab-96ca-b41032616589\"><strong>Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\" id=\"block-adcbb2b1-7225-4c25-be0f-36d1c386c042\">Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p id=\"block-d9839d50-5f1d-47f3-b006-22456df7086c\"><strong>Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id=\"block-3ab91f22-9a74-4bb6-899a-4dd973428168\">If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id=\"block-e7113abc-284f-4638-9da0-f5695f9db363\">When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id=\"block-86785cc7-e0cd-4ef1-b2e0-83e660d886c3\">If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\" id=\"block-e6c760d6-cebc-4b0e-9dc8-3a0a6bdb2a4e\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p id=\"block-d7c77b7e-68be-464d-83c1-295fad99dc44\"><strong>Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id=\"block-71479fb6-2d7c-488c-bfce-36025881050b\">These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\" id=\"block-373cb736-1031-4d54-89cb-a232b0470b21\">Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p id=\"block-a7396c87-170c-46a6-957a-1fc5416b5ba8\"><strong>Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\" id=\"block-8d117f4c-004e-427a-b249-34209ba1a56f\">How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p id=\"block-5165375a-08b2-4303-85c4-36c688b24218\"><strong>Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id=\"block-b563a2a0-69f1-41c5-b2d5-0d4250019aac\">For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\" id=\"block-4fcfae82-6489-425a-a7a5-824470049bdc\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p id=\"block-5ac61378-c6de-4689-998d-87be31cbe6a4\"><strong>Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\" id=\"block-94033c9c-561d-4672-90ec-8d13fa74d4a5\">Where your data is sent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p id=\"block-52437ca8-ee7d-4d83-90b2-1917bc06327d\"><strong>Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>﻿</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Page</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Bloc</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Récapitulatif</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>VisibilitéPublique</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Publier25 avril 2023 14 h 38 UTC+0</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ModèleModèle par défaut</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>URLlocalhost:10048/privacy-policy/En attente de relectureAUTEUR/AUTRICEAudreyMettre à la corbeille</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Image mise en avant</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Définir l’image mise en avant</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Commentaires</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Attributs de page</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>PAGE PARENTE&nbsp;:ORDREOuvrir le panneau de publication</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Page</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->','VIE PRIVÉE','','inherit','closed','closed','','40-revision-v1','','','2023-06-06 13:09:46','2023-06-06 13:09:46','',40,'http://localhost:10048/?p=161',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (162,1,'2023-06-06 13:09:59','2023-06-06 13:09:59','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\" id=\"block-c2a89432-9b55-42d6-b9f2-d6fadfd69999\"><br>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p id=\"block-b1bb5d32-f053-4ed8-8de9-e49c77a94a76\"><strong>Suggested text: </strong>Our website address is: http://localhost:10048.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\" id=\"block-78cce639-8ffc-4756-a8e7-cc156a95304d\">Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p id=\"block-d8b3219c-2d6d-409f-b3f2-d6a2fbeb6de6\"><strong>Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id=\"block-1337084a-da81-4489-aa46-377046e07ad2\">An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\" id=\"block-778596c6-7e93-4b6c-87f3-8851ada188cd\">Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p id=\"block-59493788-e8ae-4cab-96ca-b41032616589\"><strong>Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\" id=\"block-adcbb2b1-7225-4c25-be0f-36d1c386c042\">Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p id=\"block-d9839d50-5f1d-47f3-b006-22456df7086c\"><strong>Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id=\"block-3ab91f22-9a74-4bb6-899a-4dd973428168\">If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id=\"block-e7113abc-284f-4638-9da0-f5695f9db363\">When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id=\"block-86785cc7-e0cd-4ef1-b2e0-83e660d886c3\">If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\" id=\"block-e6c760d6-cebc-4b0e-9dc8-3a0a6bdb2a4e\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p id=\"block-d7c77b7e-68be-464d-83c1-295fad99dc44\"><strong>Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id=\"block-71479fb6-2d7c-488c-bfce-36025881050b\">These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\" id=\"block-373cb736-1031-4d54-89cb-a232b0470b21\">Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p id=\"block-a7396c87-170c-46a6-957a-1fc5416b5ba8\"><strong>Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\" id=\"block-8d117f4c-004e-427a-b249-34209ba1a56f\">How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p id=\"block-5165375a-08b2-4303-85c4-36c688b24218\"><strong>Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id=\"block-b563a2a0-69f1-41c5-b2d5-0d4250019aac\">For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\" id=\"block-4fcfae82-6489-425a-a7a5-824470049bdc\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p id=\"block-5ac61378-c6de-4689-998d-87be31cbe6a4\"><strong>Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\" id=\"block-94033c9c-561d-4672-90ec-8d13fa74d4a5\">Where your data is sent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p id=\"block-52437ca8-ee7d-4d83-90b2-1917bc06327d\"><strong>Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','VIE PRIVÉE','','inherit','closed','closed','','40-revision-v1','','','2023-06-06 13:09:59','2023-06-06 13:09:59','',40,'http://localhost:10048/?p=162',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (163,1,'2023-06-06 13:11:27','2023-06-06 13:11:27','','VIE PRIVÉE','','inherit','closed','closed','','40-revision-v1','','','2023-06-06 13:11:27','2023-06-06 13:11:27','',40,'http://localhost:10048/?p=163',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (164,1,'2023-06-06 13:11:43','2023-06-06 13:11:43','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10048.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','VIE PRIVÉE','','inherit','closed','closed','','3-revision-v1','','','2023-06-06 13:11:43','2023-06-06 13:11:43','',3,'http://localhost:10048/?p=164',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (166,1,'2023-06-06 13:14:00','2023-06-06 13:14:00','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10048.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','VIE PRIVÉE','','inherit','closed','closed','','40-revision-v1','','','2023-06-06 13:14:00','2023-06-06 13:14:00','',40,'http://localhost:10048/?p=166',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (167,1,'2023-06-06 13:18:02','2023-06-06 13:18:02','<!-- wp:paragraph -->\n<p>En cours de réalisation ...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','À PROPOS','','inherit','closed','closed','','9-revision-v1','','','2023-06-06 13:18:02','2023-06-06 13:18:02','',9,'http://localhost:10048/?p=167',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (168,1,'2023-06-13 08:42:30','2023-06-13 08:42:30','{\"fields\":{\"0\":{\"id\":\"0\",\"type\":\"name\",\"label\":\"NOM\",\"format\":\"simple\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"label\"},\"1\":{\"id\":\"1\",\"type\":\"email\",\"label\":\"E-MAIL\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"label\"},\"3\":{\"id\":\"3\",\"type\":\"email\",\"label\":\"R\\u00c9F. PHOTO\",\"description\":\"\",\"size\":\"large\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"label\"},\"2\":{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"MESSAGE\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"label\"}},\"id\":\"61\",\"field_id\":4,\"settings\":{\"form_title\":\"CONTACT\",\"form_desc\":\"\",\"submit_text\":\"Envoyer\",\"submit_text_processing\":\"Sending...\",\"form_class\":\"\",\"submit_class\":\"button_envoyer btn-CTA\\\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: CONTACT\",\"sender_name\":\"PHOTOGRAPHE EVENT\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"9\",\"redirect\":\"\"}},\"antispam\":\"1\",\"form_tags\":[]},\"meta\":{\"template\":\"simple-contact-form-template\"}}','CONTACT','','inherit','closed','closed','','61-revision-v1','','','2023-06-13 08:42:30','2023-06-13 08:42:30','',61,'http://localhost:10048/?p=168',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (169,1,'2023-06-13 08:43:08','2023-06-13 08:43:08','{\"fields\":{\"0\":{\"id\":\"0\",\"type\":\"name\",\"label\":\"NOM\",\"format\":\"simple\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"label\"},\"1\":{\"id\":\"1\",\"type\":\"email\",\"label\":\"E-MAIL\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"label\"},\"3\":{\"id\":\"3\",\"type\":\"email\",\"label\":\"R\\u00c9F. PHOTO\",\"description\":\"\",\"size\":\"large\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"label\"},\"2\":{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"MESSAGE\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"label\"}},\"id\":\"61\",\"field_id\":4,\"settings\":{\"form_title\":\"CONTACT\",\"form_desc\":\"\",\"submit_text\":\"Envoyer\",\"submit_text_processing\":\"Sending...\",\"form_class\":\"\",\"submit_class\":\"btn-CTA\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: CONTACT\",\"sender_name\":\"PHOTOGRAPHE EVENT\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"9\",\"redirect\":\"\"}},\"antispam\":\"1\",\"form_tags\":[]},\"meta\":{\"template\":\"simple-contact-form-template\"}}','CONTACT','','inherit','closed','closed','','61-revision-v1','','','2023-06-13 08:43:08','2023-06-13 08:43:08','',61,'http://localhost:10048/?p=169',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (172,1,'2023-06-19 09:03:07','2023-06-19 09:03:07','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"></h2>\n<!-- /wp:heading -->','PHOTOGRAPHE EVENT','','inherit','closed','closed','','6-revision-v1','','','2023-06-19 09:03:07','2023-06-19 09:03:07','',6,'http://localhost:10048/?p=172',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (173,1,'2023-06-20 20:55:28','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','open','','','','','2023-06-20 20:55:28','0000-00-00 00:00:00','',0,'http://localhost:10048/?p=173',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (7,2,0);
INSERT INTO `wp_term_relationships` VALUES (70,6,0);
INSERT INTO `wp_term_relationships` VALUES (71,6,0);
INSERT INTO `wp_term_relationships` VALUES (78,5,0);
INSERT INTO `wp_term_relationships` VALUES (79,5,0);
INSERT INTO `wp_term_relationships` VALUES (124,1,0);
INSERT INTO `wp_term_relationships` VALUES (124,14,0);
INSERT INTO `wp_term_relationships` VALUES (124,18,0);
INSERT INTO `wp_term_relationships` VALUES (127,1,0);
INSERT INTO `wp_term_relationships` VALUES (127,15,0);
INSERT INTO `wp_term_relationships` VALUES (127,21,0);
INSERT INTO `wp_term_relationships` VALUES (128,1,0);
INSERT INTO `wp_term_relationships` VALUES (128,15,0);
INSERT INTO `wp_term_relationships` VALUES (128,21,0);
INSERT INTO `wp_term_relationships` VALUES (129,1,0);
INSERT INTO `wp_term_relationships` VALUES (129,15,0);
INSERT INTO `wp_term_relationships` VALUES (129,20,0);
INSERT INTO `wp_term_relationships` VALUES (130,1,0);
INSERT INTO `wp_term_relationships` VALUES (130,14,0);
INSERT INTO `wp_term_relationships` VALUES (130,18,0);
INSERT INTO `wp_term_relationships` VALUES (131,1,0);
INSERT INTO `wp_term_relationships` VALUES (131,14,0);
INSERT INTO `wp_term_relationships` VALUES (131,18,0);
INSERT INTO `wp_term_relationships` VALUES (132,1,0);
INSERT INTO `wp_term_relationships` VALUES (132,14,0);
INSERT INTO `wp_term_relationships` VALUES (132,18,0);
INSERT INTO `wp_term_relationships` VALUES (133,1,0);
INSERT INTO `wp_term_relationships` VALUES (133,14,0);
INSERT INTO `wp_term_relationships` VALUES (133,18,0);
INSERT INTO `wp_term_relationships` VALUES (134,1,0);
INSERT INTO `wp_term_relationships` VALUES (134,15,0);
INSERT INTO `wp_term_relationships` VALUES (134,18,0);
INSERT INTO `wp_term_relationships` VALUES (135,1,0);
INSERT INTO `wp_term_relationships` VALUES (135,14,0);
INSERT INTO `wp_term_relationships` VALUES (135,20,0);
INSERT INTO `wp_term_relationships` VALUES (136,1,0);
INSERT INTO `wp_term_relationships` VALUES (136,14,0);
INSERT INTO `wp_term_relationships` VALUES (136,18,0);
INSERT INTO `wp_term_relationships` VALUES (137,1,0);
INSERT INTO `wp_term_relationships` VALUES (137,15,0);
INSERT INTO `wp_term_relationships` VALUES (137,19,0);
INSERT INTO `wp_term_relationships` VALUES (138,1,0);
INSERT INTO `wp_term_relationships` VALUES (138,15,0);
INSERT INTO `wp_term_relationships` VALUES (138,20,0);
INSERT INTO `wp_term_relationships` VALUES (139,1,0);
INSERT INTO `wp_term_relationships` VALUES (139,11,0);
INSERT INTO `wp_term_relationships` VALUES (139,12,0);
INSERT INTO `wp_term_relationships` VALUES (139,15,0);
INSERT INTO `wp_term_relationships` VALUES (139,20,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,15);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'format','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'format','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'formats','',0,7);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'formats','',0,7);
INSERT INTO `wp_term_taxonomy` VALUES (16,16,'formats','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (17,17,'formats','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (18,18,'categories','',0,7);
INSERT INTO `wp_term_taxonomy` VALUES (19,19,'categories','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (20,20,'categories','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (21,21,'categories','',0,2);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'twentytwentythree','twentytwentythree',0);
INSERT INTO `wp_terms` VALUES (5,'menu footer','menu-footer',0);
INSERT INTO `wp_terms` VALUES (6,'main','main',0);
INSERT INTO `wp_terms` VALUES (11,'Paysage','paysage',0);
INSERT INTO `wp_terms` VALUES (12,'Portrait','portrait',0);
INSERT INTO `wp_terms` VALUES (14,'Portrait','portrait',0);
INSERT INTO `wp_terms` VALUES (15,'Paysage','paysage',0);
INSERT INTO `wp_terms` VALUES (16,'1 / 1','1-1',0);
INSERT INTO `wp_terms` VALUES (17,'1 / 4','1-4',0);
INSERT INTO `wp_terms` VALUES (18,'Mariages','mariages',0);
INSERT INTO `wp_terms` VALUES (19,'Télévision','television',0);
INSERT INTO `wp_terms` VALUES (20,'Concerts','concerts',0);
INSERT INTO `wp_terms` VALUES (21,'Réceptions','receptions',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Audrey');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"5ec424e1854b7d73128aa123fa34cf2a1709d33b57b3711289d58790c07da334\";a:4:{s:10:\"expiration\";i:1687816648;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36\";s:5:\"login\";i:1687643848;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_user-settings','libraryContent=browse&editor=tinymce&hidetb=1&posts_list_mode=excerpt&cats=pop');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings-time','1686833979');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_dashboard_quick_press_last_post_id','173');
INSERT INTO `wp_usermeta` VALUES (20,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";i:2;s:14:\"featured-image\";}}s:9:\"_modified\";s:24:\"2023-06-06T13:14:50.091Z\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'nav_menu_recently_edited','5');
INSERT INTO `wp_usermeta` VALUES (23,1,'managenav-menuscolumnshidden','a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}');
INSERT INTO `wp_usermeta` VALUES (24,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'wpforms_dismissed','a:1:{s:20:\"edu-edit-post-notice\";i:1682971985;}');
INSERT INTO `wp_usermeta` VALUES (26,1,'manageedit-acf-taxonomycolumnshidden','a:1:{i:0;s:7:\"acf-key\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'acf_user_settings','a:2:{s:20:\"taxonomies-first-run\";b:1;s:19:\"post-type-first-run\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (28,1,'closedpostboxes_acf-taxonomy','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (29,1,'metaboxhidden_acf-taxonomy','a:2:{i:0;s:21:\"acf-advanced-settings\";i:1;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (30,1,'meta-box-order_photo','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:76:\"submitdiv,categoriesdiv,formatsdiv,postimagediv,tagsdiv-post_tag,categorydiv\";s:6:\"normal\";s:31:\"acf-group_6457a7db8b1e1,slugdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (31,1,'screen_layout_photo','2');
INSERT INTO `wp_usermeta` VALUES (32,1,'closedpostboxes_photo','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (33,1,'metaboxhidden_photo','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (34,1,'edit_photo_per_page','20');
INSERT INTO `wp_usermeta` VALUES (35,1,'manageedit-acf-post-typecolumnshidden','a:1:{i:0;s:7:\"acf-key\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'Audrey','$P$BS5AVO.tTi.02AK8ltNLQhwMMOoTOo.','audrey','dev-email@flywheel.local','http://localhost:10048','2023-04-25 14:38:22','',0,'Audrey');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_tasks_meta`
--

DROP TABLE IF EXISTS `wp_wpforms_tasks_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforms_tasks_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_tasks_meta`
--

LOCK TABLES `wp_wpforms_tasks_meta` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_tasks_meta` DISABLE KEYS */;
INSERT INTO `wp_wpforms_tasks_meta` VALUES (1,'wpforms_process_forms_locator_scan','W10=','2023-05-01 15:06:02');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (2,'wpforms_admin_addons_cache_update','W10=','2023-05-01 15:06:20');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (3,'wpforms_admin_builder_templates_cache_update','W10=','2023-05-01 15:06:20');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (14,'wpforms_builder_help_cache_update','W10=','2023-05-22 12:08:13');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (19,'wpforms_process_forms_locator_scan','W10=','2023-05-30 20:40:52');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (20,'wpforms_process_forms_locator_scan','W10=','2023-05-30 20:40:58');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (27,'wpforms_process_forms_locator_scan','W10=','2023-06-06 13:16:16');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (28,'wpforms_process_forms_locator_scan','W10=','2023-06-06 13:16:20');
/*!40000 ALTER TABLE `wp_wpforms_tasks_meta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-25 23:26:44
