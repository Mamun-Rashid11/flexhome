-- MySQL dump 10.13  Distrib 8.0.33, for macos13.3 (arm64)
--
-- Host: localhost    Database: flex_home
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'SpwuvWJfMVLnsf8Xgxn3dx24nYUDrcbX',1,'2023-09-26 02:42:28','2023-09-26 02:42:28','2023-09-26 02:42:28'),(2,2,'Rl5wuGVPFaRaZnfCqAizK0Jk1XY1XMTi',1,'2023-09-26 02:42:28','2023-09-26 02:42:28','2023-09-26 02:42:28'),(3,3,'xvbAqVfzAZkC6rOr2iIuWU2UQDLJycdG',1,'2023-09-26 02:42:28','2023-09-26 02:42:28','2023-09-26 02:42:28');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
INSERT INTO `audit_histories` VALUES (2,1,'language','{\"lang_id\":\"0\",\"lang_name\":\"Ti\\u1ebfng Vi\\u1ec7t\",\"lang_locale\":\"vi\",\"lang_code\":\"vi\",\"lang_flag\":\"vn\",\"lang_order\":\"0\",\"lang_is_rtl\":\"0\"}','created','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36','127.0.0.1',1,2,'','info','2023-06-23 02:53:00','2023-06-23 02:53:00'),(3,1,'language','{\"_method\":\"DELETE\"}','deleted','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36','127.0.0.1',1,2,'','danger','2023-06-23 02:53:15','2023-06-23 02:53:15');
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers`
--

LOCK TABLES `careers` WRITE;
/*!40000 ALTER TABLE `careers` DISABLE KEYS */;
INSERT INTO `careers` VALUES (1,'Sales Manager (Up to 2600$)','Ho Chi Minh, Viet Nam','1300$ - 2600$','<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>BENEFITS FOR YOU</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Applicants receive a salary from 1300 USD to 2600 USD<br />\r\n- Fully enjoy the regimes according to Vietnam&#39;s Labor Law: Social insurance, health insurance, unemployment insurance<br />\r\n- Trained to improve expertise and capacity in suitable positions.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB DESCRIPTION</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Coordinate with the Investment Department in organizing the collection, analysis, evaluation of market information and submitting proposals for planning the project&#39;s products and investment cooperation plans (if any);<br />\r\n- Acting as a focal point of exploitation and trading with customers, managing trading floors and distributors;<br />\r\n- Checking and approving the selection of sales units, management units for exploitation, operation and investment cooperation;<br />\r\n- Leading the negotiation and management of contracts with customers, sales units, management of exploitation, operation and investment cooperation;<br />\r\n- Prepare and submit a price approval for the sale, lease, and cooperation prices of all real estate projects;<br />\r\n- Develop sales plans, sales policies, support and promotions;<br />\r\n- Coordinate with member companies (Project Management Board) to collect and hand over product records (technical documents, red books, sales contracts ...) to hand over customers;<br />\r\n- Deploy customer support activities;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB REQUIREMENTS</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Preferred age: 30-35<br />\r\n- University degree in Business Administration, Economics, or related industries.<br />\r\n- Over 03 years of experience in assuming the position of Real Estate Business City<br />\r\n- Priority with a certificate of real estate broker, certificate of real estate trading floor management<br />\r\n- Good planning, operating, and control skills<br />\r\n- Good communication, negotiation and problem-solving skills</span></span></p>','published','2019-11-30 19:43:10','2019-11-30 19:46:53',NULL),(3,'Senior Real Estate Consultant Demo','Ho Chi Minh, Viet Nam','From 1500$','<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>BENEFITS FOR YOU</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Basic salary 500$&nbsp;/ month.<br />\r\n- Access to diverse sources of goods and opportunities from reputable investors.<br />\r\n- Retrospective salary policy up to 2400$-7000$&nbsp;/ year.<br />\r\n- Commission of 22-50% and a commission 1000$ / successful transaction in the month.<br />\r\n- Effective bonus 0.6-3% of annual revenue.<br />\r\n- A place to build your personal brand in a standard and different way.<br />\r\n- Attend seminars on real estate every 6 months.<br />\r\n- Participate in the course on negotiation skills (Win - Win), language of sales (Language of Sales), customer mind marketing (SOI), customer conversion from social networks (Go Social)<br />\r\n- Unlimited promotion opportunities.<br />\r\n- Working with professional space and modern open office design.<br />\r\n- Welfare policy, domestic and foreign tourism ...<br />\r\n- Decentralized, democratic, financial transparency, considering brokerage is a business partner.<br />\r\n- Environmentally friendly, is the place where brokers are connected with regular activities</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB DESCRIPTION</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Quantity: 30 employees<br />\r\n- Find and exploit potential customers for real estate products valued from 2000 USD / m2 in the high-end and luxury segment;<br />\r\n- Deploying activities to find customers, coordinate with teams to realize sales targets<br />\r\n- Advise customers on information related to products and projects of the Company;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB REQUIREMENTS</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Graduating from college or higher<br />\r\n- Good appearance, male height from 1.68m, female from 1.58m. Age from 22-35 years old<br />\r\n- Priority to candidates who know foreign languages ​​and have 1 year or more experience in the field of real estate, banking and finance.<br />\r\n- Have financial goals, work and life.<br />\r\n- Desire to achieve big goals.<br />\r\n- Diligent, persistent, honest.</span></span></p>','published','2019-11-30 19:52:42','2021-01-03 17:26:17',NULL);
/*!40000 ALTER TABLE `careers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers_translations`
--

DROP TABLE IF EXISTS `careers_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careers_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `careers_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`careers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers_translations`
--

LOCK TABLES `careers_translations` WRITE;
/*!40000 ALTER TABLE `careers_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `careers_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'News',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2019-11-18 02:33:35','2019-11-18 02:33:35'),(2,'House architecture',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:49:25','2019-11-21 07:49:25'),(3,'Kiến trúc nhà',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:49:35','2019-11-21 07:49:35'),(4,'House design',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:50:02','2019-11-21 07:50:02'),(5,'Thiết kế nhà',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:50:17','2019-11-21 07:50:17'),(6,'Building materials',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:50:36','2019-11-21 07:50:36'),(7,'Vật liệu xây dựng',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:50:58','2019-11-21 07:50:58'),(8,'Tin tức',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2019-11-22 01:26:08','2019-11-22 01:26:08');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Alhambra',1,1,0,0,'cities/los-angeles-winter-2016.jpg','published','2019-11-18 08:18:42','2019-12-03 05:55:52','alhambra',NULL),(2,'Oakland',1,1,0,0,'cities/oaklandnightskylineandlakemerritt.jpg','published','2019-11-18 08:23:14','2019-12-03 05:55:52','oakland',NULL),(3,'Bakersfield',1,1,0,0,'cities/2009-0726-ca-bakersfield-truxtontower.jpg','published','2019-11-18 08:26:54','2019-12-03 05:55:52','bakersfield',NULL),(4,'Anaheim',1,1,0,0,'cities/castillo-de-disneyland.jpg','published','2019-11-18 08:27:57','2019-12-03 05:55:52','anaheim',NULL),(5,'San Francisco',1,1,0,0,'cities/goldengatebridge-001.jpg','published','2019-11-18 08:29:18','2019-12-03 05:55:52','san-francisco',NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'United States','United States of America',0,0,'published','2019-11-18 08:17:29','2019-11-18 08:17:29',NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `widget_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
INSERT INTO `dashboard_widget_settings` VALUES (1,NULL,1,7,0,1,'2019-11-26 02:40:58','2019-11-26 02:40:58'),(2,NULL,1,5,1,1,'2019-11-26 02:40:58','2019-11-26 02:40:58'),(3,NULL,1,6,2,1,'2019-11-26 02:40:58','2019-11-26 02:40:58'),(4,NULL,1,8,3,1,'2019-11-26 02:40:58','2019-11-26 02:40:58'),(5,NULL,1,9,4,1,'2019-11-26 02:40:58','2019-11-26 02:40:58'),(6,NULL,1,10,5,1,'2019-11-26 02:40:58','2019-11-26 02:40:58');
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
INSERT INTO `dashboard_widgets` VALUES (1,'widget_total_pages','2019-11-15 04:57:40','2019-11-15 04:57:40'),(2,'widget_total_users','2019-11-15 04:57:40','2019-11-15 04:57:40'),(3,'widget_total_plugins','2019-11-15 04:57:40','2019-11-15 04:57:40'),(4,'widget_total_themes','2019-11-15 04:57:40','2019-11-15 04:57:40'),(5,'widget_audit_logs','2019-11-15 18:54:50','2019-11-15 18:54:50'),(6,'widget_posts_recent','2019-11-15 18:54:50','2019-11-15 18:54:50'),(7,'widget_analytics_general','2019-11-15 18:54:50','2019-11-15 18:54:50'),(8,'widget_analytics_page','2019-11-15 18:54:50','2019-11-15 18:54:50'),(9,'widget_analytics_browser','2019-11-15 18:54:50','2019-11-15 18:54:50'),(10,'widget_analytics_referrer','2019-11-15 18:54:50','2019-11-15 18:54:50'),(11,'widget_total_1','2022-11-05 23:58:22','2022-11-05 23:58:22'),(12,'widget_total_2','2022-11-05 23:58:22','2022-11-05 23:58:22'),(13,'widget_total_3','2022-11-05 23:58:22','2022-11-05 23:58:22'),(14,'widget_total_4','2022-11-05 23:58:22','2022-11-05 23:58:22');
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `reference_id` int unsigned NOT NULL,
  `lang_meta_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_meta_origin` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_lang_meta_content_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,1,'en_US','Botble\\Menu\\Models\\MenuLocation','3d338ea9118f5cecacacb55a1c7506fb'),(2,1,'en_US','Botble\\Menu\\Models\\Menu','11afaeb32473f82cd745231a9c3ad426'),(3,2,'en_US','Botble\\Menu\\Models\\Menu','fc5c456bdf201247e7a038383816dafb'),(4,3,'en_US','Botble\\Menu\\Models\\Menu','bdaef280464f2e8d312ec0e5e2fb39f5'),(5,4,'en_US','Botble\\Menu\\Models\\Menu','984ea5c0fb866b854f9d6f2c2884ceeb');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_folder_id_user_id_created_at_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=22019 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (21848,0,'1','1',1090,'image/jpeg',2165,'accounts/1.jpg','[]','2023-09-26 02:42:24','2023-09-26 02:42:24',NULL),(21849,0,'10','10',1090,'image/jpeg',2165,'accounts/10.jpg','[]','2023-09-26 02:42:24','2023-09-26 02:42:24',NULL),(21850,0,'2','2',1090,'image/jpeg',2165,'accounts/2.jpg','[]','2023-09-26 02:42:24','2023-09-26 02:42:24',NULL),(21851,0,'3','3',1090,'image/jpeg',2165,'accounts/3.jpg','[]','2023-09-26 02:42:24','2023-09-26 02:42:24',NULL),(21852,0,'4','4',1090,'image/jpeg',2165,'accounts/4.jpg','[]','2023-09-26 02:42:24','2023-09-26 02:42:24',NULL),(21853,0,'5','5',1090,'image/jpeg',2165,'accounts/5.jpg','[]','2023-09-26 02:42:24','2023-09-26 02:42:24',NULL),(21854,0,'6','6',1090,'image/jpeg',2165,'accounts/6.jpg','[]','2023-09-26 02:42:24','2023-09-26 02:42:24',NULL),(21855,0,'7','7',1090,'image/jpeg',2165,'accounts/7.jpg','[]','2023-09-26 02:42:24','2023-09-26 02:42:24',NULL),(21856,0,'8','8',1090,'image/jpeg',2165,'accounts/8.jpg','[]','2023-09-26 02:42:24','2023-09-26 02:42:24',NULL),(21857,0,'9','9',1090,'image/jpeg',2165,'accounts/9.jpg','[]','2023-09-26 02:42:24','2023-09-26 02:42:24',NULL),(21858,0,'asset-3-at-3x','asset-3-at-3x',1091,'image/png',76833,'general/asset-3-at-3x.png','[]','2023-09-26 02:42:28','2023-09-26 02:42:28',NULL),(21859,0,'asset-4-at-3x','asset-4-at-3x',1091,'image/png',84067,'general/asset-4-at-3x.png','[]','2023-09-26 02:42:28','2023-09-26 02:42:28',NULL),(21860,0,'breadcrumb-background','breadcrumb-background',1091,'image/jpeg',504692,'general/breadcrumb-background.jpg','[]','2023-09-26 02:42:28','2023-09-26 02:42:28',NULL),(21861,0,'copyright','copyright',1091,'image/jpeg',128544,'general/copyright.jpg','[]','2023-09-26 02:42:28','2023-09-26 02:42:28',NULL),(21862,0,'home-banner','home-banner',1091,'image/jpeg',892011,'general/home-banner.jpg','[]','2023-09-26 02:42:28','2023-09-26 02:42:28',NULL),(21863,0,'termsconditions-pagedesktop','termsconditions-pagedesktop',1091,'image/jpeg',185151,'general/termsconditions-pagedesktop.jpg','[]','2023-09-26 02:42:28','2023-09-26 02:42:28',NULL),(21864,0,'video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri','video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri',1091,'image/jpeg',63143,'general/video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri.jpg','[]','2023-09-26 02:42:28','2023-09-26 02:42:28',NULL),(21865,0,'vietnam-office-4','vietnam-office-4',1091,'image/jpeg',214366,'general/vietnam-office-4.jpg','[]','2023-09-26 02:42:28','2023-09-26 02:42:28',NULL),(21866,0,'1','1',1092,'image/jpeg',66997,'news/1.jpg','[]','2023-09-26 02:42:29','2023-09-26 02:42:29',NULL),(21867,0,'10','10',1092,'image/jpeg',66858,'news/10.jpg','[]','2023-09-26 02:42:29','2023-09-26 02:42:29',NULL),(21868,0,'11','11',1092,'image/jpeg',86492,'news/11.jpg','[]','2023-09-26 02:42:29','2023-09-26 02:42:29',NULL),(21869,0,'12','12',1092,'image/jpeg',91376,'news/12.jpg','[]','2023-09-26 02:42:29','2023-09-26 02:42:29',NULL),(21870,0,'13','13',1092,'image/jpeg',82991,'news/13.jpg','[]','2023-09-26 02:42:29','2023-09-26 02:42:29',NULL),(21871,0,'14','14',1092,'image/jpeg',66997,'news/14.jpg','[]','2023-09-26 02:42:29','2023-09-26 02:42:29',NULL),(21872,0,'15','15',1092,'image/jpeg',111450,'news/15.jpg','[]','2023-09-26 02:42:29','2023-09-26 02:42:29',NULL),(21873,0,'16','16',1092,'image/jpeg',464807,'news/16.jpg','[]','2023-09-26 02:42:29','2023-09-26 02:42:29',NULL),(21874,0,'2','2',1092,'image/jpeg',51884,'news/2.jpg','[]','2023-09-26 02:42:29','2023-09-26 02:42:29',NULL),(21875,0,'3','3',1092,'image/jpeg',132835,'news/3.jpg','[]','2023-09-26 02:42:29','2023-09-26 02:42:29',NULL),(21876,0,'4','4',1092,'image/jpeg',948302,'news/4.jpg','[]','2023-09-26 02:42:29','2023-09-26 02:42:29',NULL),(21877,0,'5','5',1092,'image/jpeg',66858,'news/5.jpg','[]','2023-09-26 02:42:29','2023-09-26 02:42:29',NULL),(21878,0,'6','6',1092,'image/jpeg',328317,'news/6.jpg','[]','2023-09-26 02:42:29','2023-09-26 02:42:29',NULL),(21879,0,'7','7',1092,'image/jpeg',249538,'news/7.jpg','[]','2023-09-26 02:42:29','2023-09-26 02:42:29',NULL),(21880,0,'8','8',1092,'image/jpeg',147871,'news/8.jpg','[]','2023-09-26 02:42:29','2023-09-26 02:42:29',NULL),(21881,0,'9','9',1092,'image/jpeg',194815,'news/9.jpg','[]','2023-09-26 02:42:29','2023-09-26 02:42:29',NULL),(21882,0,'banner','banner',1,'image/jpeg',7703,'banner/banner.jpg','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21883,0,'2009-0726-ca-bakersfield-truxtontower','2009-0726-ca-bakersfield-truxtontower',1093,'image/jpeg',2165,'cities/2009-0726-ca-bakersfield-truxtontower.jpg','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21884,0,'castillo-de-disneyland','castillo-de-disneyland',1093,'image/jpeg',2165,'cities/castillo-de-disneyland.jpg','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21885,0,'goldengatebridge-001','goldengatebridge-001',1093,'image/jpeg',2165,'cities/goldengatebridge-001.jpg','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21886,0,'los-angeles-winter-2016','los-angeles-winter-2016',1093,'image/jpeg',2165,'cities/los-angeles-winter-2016.jpg','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21887,0,'oaklandnightskylineandlakemerritt','oaklandnightskylineandlakemerritt',1093,'image/jpeg',2165,'cities/oaklandnightskylineandlakemerritt.jpg','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21888,0,'favicon','favicon',1094,'image/png',3110,'logo/favicon.png','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21889,0,'logo-white','logo-white',1094,'image/png',18120,'logo/logo-white.png','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21890,0,'logo','logo',1094,'image/png',23910,'logo/logo.png','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21891,0,'1','1',1095,'image/jpeg',2165,'projects/1.jpg','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21892,0,'11','11',1095,'image/jpeg',2165,'projects/11.jpg','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21893,0,'12','12',1095,'image/jpeg',2165,'projects/12.jpg','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21894,0,'13','13',1095,'image/jpeg',2165,'projects/13.jpg','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21895,0,'14','14',1095,'image/jpeg',2165,'projects/14.jpg','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21896,0,'2','2',1095,'image/jpeg',2165,'projects/2.jpg','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21897,0,'21','21',1095,'image/jpeg',2165,'projects/21.jpg','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21898,0,'22','22',1095,'image/jpeg',2165,'projects/22.jpg','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21899,0,'23','23',1095,'image/jpeg',2165,'projects/23.jpg','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21900,0,'24','24',1095,'image/jpeg',2165,'projects/24.jpg','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21901,0,'25','25',1095,'image/jpeg',2165,'projects/25.jpg','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21902,0,'26','26',1095,'image/jpeg',2165,'projects/26.jpg','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21903,0,'3','3',1095,'image/jpeg',2165,'projects/3.jpg','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21904,0,'5','5',1095,'image/jpeg',2165,'projects/5.jpg','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21905,0,'1-1','1-1',1096,'image/jpeg',2165,'properties/1-1.jpg','[]','2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(21906,0,'1-2','1-2',1096,'image/jpeg',2165,'properties/1-2.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21907,0,'1-3','1-3',1096,'image/jpeg',2165,'properties/1-3.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21908,0,'1','1',1096,'image/jpeg',2165,'properties/1.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21909,0,'10-1','10-1',1096,'image/jpeg',2165,'properties/10-1.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21910,0,'10','10',1096,'image/jpeg',2165,'properties/10.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21911,0,'11-1','11-1',1096,'image/jpeg',2165,'properties/11-1.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21912,0,'11','11',1096,'image/jpeg',2165,'properties/11.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21913,0,'12','12',1096,'image/jpeg',2165,'properties/12.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21914,0,'13','13',1096,'image/jpeg',2165,'properties/13.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21915,0,'14','14',1096,'image/jpeg',2165,'properties/14.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21916,0,'15','15',1096,'image/jpeg',2165,'properties/15.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21917,0,'2-1','2-1',1096,'image/jpeg',2165,'properties/2-1.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21918,0,'2-2','2-2',1096,'image/jpeg',2165,'properties/2-2.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21919,0,'2-3','2-3',1096,'image/jpeg',2165,'properties/2-3.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21920,0,'2','2',1096,'image/jpeg',2165,'properties/2.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21921,0,'21','21',1096,'image/jpeg',2165,'properties/21.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21922,0,'22-1','22-1',1096,'image/jpeg',2165,'properties/22-1.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21923,0,'22','22',1096,'image/jpeg',2165,'properties/22.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21924,0,'23','23',1096,'image/jpeg',2165,'properties/23.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21925,0,'24-1','24-1',1096,'image/jpeg',2165,'properties/24-1.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21926,0,'24','24',1096,'image/jpeg',2165,'properties/24.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21927,0,'3-1','3-1',1096,'image/jpeg',2165,'properties/3-1.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21928,0,'3-2','3-2',1096,'image/jpeg',2165,'properties/3-2.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21929,0,'3-3','3-3',1096,'image/jpeg',2165,'properties/3-3.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21930,0,'3','3',1096,'image/jpeg',2165,'properties/3.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21931,0,'31','31',1096,'image/jpeg',2165,'properties/31.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21932,0,'311','311',1096,'image/jpeg',2165,'properties/311.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21933,0,'32','32',1096,'image/jpeg',2165,'properties/32.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21934,0,'32223-43914-378','32223-43914-378',1096,'image/jpeg',2165,'properties/32223-43914-378.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21935,0,'33','33',1096,'image/jpeg',2165,'properties/33.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21936,0,'34','34',1096,'image/jpeg',2165,'properties/34.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21937,0,'35','35',1096,'image/jpeg',2165,'properties/35.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21938,0,'4-1','4-1',1096,'image/jpeg',2165,'properties/4-1.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21939,0,'4-2','4-2',1096,'image/jpeg',2165,'properties/4-2.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21940,0,'4','4',1096,'image/jpeg',2165,'properties/4.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21941,0,'411','411',1096,'image/jpeg',2165,'properties/411.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21942,0,'42','42',1096,'image/jpeg',2165,'properties/42.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21943,0,'421834935dbc9ef3aaa42','421834935dbc9ef3aaa42',1096,'image/jpeg',2165,'properties/421834935dbc9ef3aaa42.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21944,0,'43','43',1096,'image/jpeg',2165,'properties/43.jpg','[]','2023-09-26 02:42:31','2023-09-26 02:42:31',NULL),(21945,0,'44','44',1096,'image/jpeg',2165,'properties/44.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21946,0,'5-1','5-1',1096,'image/jpeg',2165,'properties/5-1.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21947,0,'5-2','5-2',1096,'image/jpeg',2165,'properties/5-2.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21948,0,'5','5',1096,'image/jpeg',2165,'properties/5.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21949,0,'6-1','6-1',1096,'image/jpeg',2165,'properties/6-1.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21950,0,'6-2','6-2',1096,'image/jpeg',2165,'properties/6-2.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21951,0,'6','6',1096,'image/jpeg',2165,'properties/6.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21952,0,'7-1','7-1',1096,'image/jpeg',2165,'properties/7-1.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21953,0,'7-2','7-2',1096,'image/jpeg',2165,'properties/7-2.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21954,0,'7','7',1096,'image/jpeg',2165,'properties/7.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21955,0,'71','71',1096,'image/jpeg',2165,'properties/71.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21956,0,'72','72',1096,'image/jpeg',2165,'properties/72.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21957,0,'73','73',1096,'image/jpeg',2165,'properties/73.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21958,0,'74','74',1096,'image/jpeg',2165,'properties/74.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21959,0,'75','75',1096,'image/jpeg',2165,'properties/75.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21960,0,'78','78',1096,'image/jpeg',2165,'properties/78.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21961,0,'79','79',1096,'image/jpeg',2165,'properties/79.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21962,0,'8-1','8-1',1096,'image/jpeg',2165,'properties/8-1.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21963,0,'8-2','8-2',1096,'image/jpeg',2165,'properties/8-2.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21964,0,'8','8',1096,'image/jpeg',2165,'properties/8.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21965,0,'9-1','9-1',1096,'image/jpeg',2165,'properties/9-1.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21966,0,'9','9',1096,'image/jpeg',2165,'properties/9.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21967,0,'a1-1','a1-1',1096,'image/jpeg',2165,'properties/a1-1.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21968,0,'a1-2','a1-2',1096,'image/jpeg',2165,'properties/a1-2.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21969,0,'a1','a1',1096,'image/jpeg',2165,'properties/a1.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21970,0,'a10','a10',1096,'image/jpeg',2165,'properties/a10.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21971,0,'a2-1','a2-1',1096,'image/jpeg',2165,'properties/a2-1.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21972,0,'a2-2','a2-2',1096,'image/jpeg',2165,'properties/a2-2.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21973,0,'a2','a2',1096,'image/jpeg',2165,'properties/a2.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21974,0,'a3-1','a3-1',1096,'image/jpeg',2165,'properties/a3-1.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21975,0,'a3-2','a3-2',1096,'image/jpeg',2165,'properties/a3-2.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21976,0,'a3','a3',1096,'image/jpeg',2165,'properties/a3.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21977,0,'a4-1','a4-1',1096,'image/jpeg',2165,'properties/a4-1.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21978,0,'a4-2','a4-2',1096,'image/jpeg',2165,'properties/a4-2.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21979,0,'a4','a4',1096,'image/jpeg',2165,'properties/a4.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21980,0,'a5-1','a5-1',1096,'image/jpeg',2165,'properties/a5-1.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21981,0,'a5','a5',1096,'image/jpeg',2165,'properties/a5.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21982,0,'a6-1','a6-1',1096,'image/jpeg',2165,'properties/a6-1.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21983,0,'a6','a6',1096,'image/jpeg',2165,'properties/a6.jpg','[]','2023-09-26 02:42:32','2023-09-26 02:42:32',NULL),(21984,0,'a7','a7',1096,'image/jpeg',2165,'properties/a7.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(21985,0,'a8','a8',1096,'image/jpeg',2165,'properties/a8.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(21986,0,'a9','a9',1096,'image/jpeg',2165,'properties/a9.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(21987,0,'b1','b1',1096,'image/jpeg',2165,'properties/b1.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(21988,0,'b2','b2',1096,'image/jpeg',2165,'properties/b2.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(21989,0,'b3','b3',1096,'image/jpeg',2165,'properties/b3.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(21990,0,'b4-1','b4-1',1096,'image/jpeg',2165,'properties/b4-1.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(21991,0,'b4','b4',1096,'image/jpeg',2165,'properties/b4.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(21992,0,'b5-1','b5-1',1096,'image/jpeg',2165,'properties/b5-1.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(21993,0,'b5','b5',1096,'image/jpeg',2165,'properties/b5.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(21994,0,'b6','b6',1096,'image/jpeg',2165,'properties/b6.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(21995,0,'download','download',1096,'image/jpeg',2165,'properties/download.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(21996,0,'e1','e1',1096,'image/jpeg',2165,'properties/e1.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(21997,0,'e2','e2',1096,'image/jpeg',2165,'properties/e2.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(21998,0,'e3','e3',1096,'image/jpeg',2165,'properties/e3.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(21999,0,'e4','e4',1096,'image/jpeg',2165,'properties/e4.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(22000,0,'e5','e5',1096,'image/jpeg',2165,'properties/e5.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(22001,0,'e7','e7',1096,'image/jpeg',2165,'properties/e7.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(22002,0,'e8','e8',1096,'image/jpeg',2165,'properties/e8.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(22003,0,'p1','p1',1096,'image/jpeg',2165,'properties/p1.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(22004,0,'p2','p2',1096,'image/jpeg',2165,'properties/p2.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(22005,0,'property-video-thumb','property-video-thumb',1096,'image/jpeg',2165,'properties/property-video-thumb.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(22006,0,'q1','q1',1096,'image/jpeg',2165,'properties/q1.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(22007,0,'q2','q2',1096,'image/jpeg',2165,'properties/q2.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(22008,0,'q3','q3',1096,'image/jpeg',2165,'properties/q3.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(22009,0,'q6','q6',1096,'image/jpeg',2165,'properties/q6.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(22010,0,'q7','q7',1096,'image/jpeg',2165,'properties/q7.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(22011,0,'q8','q8',1096,'image/jpeg',2165,'properties/q8.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(22012,0,'t1','t1',1096,'image/jpeg',2165,'properties/t1.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(22013,0,'t2','t2',1096,'image/jpeg',2165,'properties/t2.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(22014,0,'t3','t3',1096,'image/jpeg',2165,'properties/t3.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(22015,0,'t4','t4',1096,'image/jpeg',2165,'properties/t4.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(22016,0,'t5','t5',1096,'image/jpeg',2165,'properties/t5.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(22017,0,'wp1a','wp1a',1096,'image/jpeg',2165,'properties/wp1a.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL),(22018,0,'avatar','avatar',1097,'image/jpeg',151486,'users/avatar.jpg','[]','2023-09-26 02:42:33','2023-09-26 02:42:33',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_parent_id_user_id_created_at_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=1098 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,1,'Banners','banner',0,'2019-11-16 02:00:43','2019-11-16 02:00:50',NULL),(1090,0,'accounts','accounts',0,'2023-09-26 02:42:24','2023-09-26 02:42:24',NULL),(1091,0,'general','general',0,'2023-09-26 02:42:28','2023-09-26 02:42:28',NULL),(1092,0,'news','news',0,'2023-09-26 02:42:29','2023-09-26 02:42:29',NULL),(1093,0,'cities','cities',0,'2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(1094,0,'logo','logo',0,'2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(1095,0,'projects','projects',0,'2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(1096,0,'properties','properties',0,'2023-09-26 02:42:30','2023-09-26 02:42:30',NULL),(1097,0,'users','users',0,'2023-09-26 02:42:33','2023-09-26 02:42:33',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2023-09-26 02:42:28','2023-09-26 02:42:28');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `reference_id` int unsigned DEFAULT '0',
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `menu_nodes_related_id_index` (`reference_id`),
  KEY `menu_nodes_index` (`parent_id`,`reference_id`,`reference_type`,`has_child`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,0,NULL,'/projects',NULL,0,'Projects',NULL,'_self',0,'2023-09-26 02:42:28','2023-09-26 02:42:28'),(2,1,0,0,NULL,'/properties',NULL,0,'Properties',NULL,'_self',0,'2023-09-26 02:42:28','2023-09-26 02:42:28'),(3,1,0,0,NULL,'/agents',NULL,0,'Agents',NULL,'_self',0,'2023-09-26 02:42:28','2023-09-26 02:42:28'),(4,1,0,2,'Botble\\Page\\Models\\Page','/news',NULL,0,'News',NULL,'_self',0,'2023-09-26 02:42:28','2023-09-26 02:42:28'),(5,1,0,0,NULL,'/careers',NULL,0,'Careers',NULL,'_self',0,'2023-09-26 02:42:28','2023-09-26 02:42:28'),(6,1,0,4,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2023-09-26 02:42:28','2023-09-26 02:42:28'),(7,2,0,3,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2023-09-26 02:42:28','2023-09-26 02:42:28'),(8,2,0,4,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2023-09-26 02:42:28','2023-09-26 02:42:28'),(9,2,0,0,NULL,'/careers',NULL,0,'Careers',NULL,'_self',0,'2023-09-26 02:42:28','2023-09-26 02:42:28'),(10,2,0,5,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2023-09-26 02:42:28','2023-09-26 02:42:28'),(11,3,0,0,NULL,'/projects',NULL,0,'All projects',NULL,'_self',0,'2023-09-26 02:42:28','2023-09-26 02:42:28'),(12,3,0,0,NULL,'/properties',NULL,0,'All properties',NULL,'_self',0,'2023-09-26 02:42:28','2023-09-26 02:42:28'),(13,3,0,0,NULL,'/properties?type=sale',NULL,0,'Houses for sale',NULL,'_self',0,'2023-09-26 02:42:28','2023-09-26 02:42:28'),(14,3,0,0,NULL,'/properties?type=rent',NULL,0,'Houses for rent',NULL,'_self',0,'2023-09-26 02:42:28','2023-09-26 02:42:28'),(15,4,0,2,'Botble\\Page\\Models\\Page','/news',NULL,0,'Latest news',NULL,'_self',0,'2023-09-26 02:42:28','2023-09-26 02:42:28'),(16,4,0,2,'Botble\\Blog\\Models\\Category','/news/house-architecture',NULL,0,'House architecture',NULL,'_self',0,'2023-09-26 02:42:28','2023-09-26 02:42:28'),(17,4,0,4,'Botble\\Blog\\Models\\Category','/news/house-design',NULL,0,'House design',NULL,'_self',0,'2023-09-26 02:42:28','2023-09-26 02:42:28'),(18,4,0,6,'Botble\\Blog\\Models\\Category','/news/building-materials',NULL,0,'Building materials',NULL,'_self',0,'2023-09-26 02:42:28','2023-09-26 02:42:28');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2023-09-26 02:42:28','2023-09-26 02:42:28'),(2,'About','about','published','2023-09-26 02:42:28','2023-09-26 02:42:28'),(3,'More information','more-information','published','2023-09-26 02:42:28','2023-09-26 02:42:28'),(4,'News','news','published','2023-09-26 02:42:28','2023-09-26 02:42:28');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `reference_id` int unsigned NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_content_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-17 20:34:59','2019-11-17 20:34:59'),(2,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-17 20:53:34','2019-11-17 20:53:34'),(3,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-17 21:09:55','2019-11-17 21:09:55'),(4,4,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-17 21:18:11','2019-11-17 21:18:11'),(5,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\PropertyFeature','2019-11-17 21:40:58','2019-11-17 21:40:58'),(6,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\PropertyFeature','2019-11-17 21:41:43','2019-11-17 21:41:43'),(7,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 00:34:49','2019-11-18 00:34:49'),(8,5,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 00:47:52','2019-11-18 00:47:52'),(9,6,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 01:05:58','2019-11-18 01:05:58'),(10,7,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 01:12:07','2019-11-18 01:12:07'),(11,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 01:28:45','2019-11-18 01:28:45'),(12,8,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 01:49:36','2019-11-18 01:49:36'),(13,9,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 02:02:19','2019-11-18 02:02:19'),(14,10,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 02:16:53','2019-11-18 02:16:53'),(15,11,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 02:22:48','2019-11-18 02:22:48'),(16,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-18 02:33:35','2019-11-18 02:33:35'),(17,12,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 02:47:05','2019-11-18 02:47:05'),(18,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Post','2019-11-18 02:51:35','2019-11-18 02:51:35'),(19,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Tag','2019-11-18 02:51:35','2019-11-18 02:51:35'),(20,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Post','2019-11-18 02:55:53','2019-11-18 02:55:53'),(21,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Tag','2019-11-18 02:55:53','2019-11-18 02:55:53'),(22,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Post','2019-11-18 02:59:01','2019-11-18 02:59:01'),(23,4,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Post','2019-11-18 03:07:27','2019-11-18 03:07:27'),(24,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Tag','2019-11-18 03:07:27','2019-11-18 03:07:27'),(25,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 03:30:34','2019-11-18 03:30:34'),(26,4,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 03:38:13','2019-11-18 03:38:13'),(27,5,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 03:45:06','2019-11-18 03:45:06'),(28,6,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 03:53:20','2019-11-18 03:53:20'),(29,13,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 07:23:02','2019-11-18 07:23:02'),(30,14,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 07:36:29','2019-11-18 07:36:29'),(31,15,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 07:44:44','2019-11-18 07:44:44'),(32,16,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 07:59:14','2019-11-18 07:59:14'),(33,17,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 08:13:07','2019-11-18 08:13:07'),(34,7,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 01:54:36','2019-11-21 01:54:36'),(35,8,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 02:28:09','2019-11-21 02:28:09'),(36,9,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 02:40:25','2019-11-21 02:40:25'),(37,10,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 02:58:55','2019-11-21 02:58:55'),(38,11,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 03:16:25','2019-11-21 03:16:25'),(39,12,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 03:25:22','2019-11-21 03:25:22'),(40,18,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 05:51:54','2019-11-21 05:51:54'),(41,19,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 06:03:11','2019-11-21 06:03:11'),(42,20,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 06:12:15','2019-11-21 06:12:15'),(43,21,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 06:26:59','2019-11-21 06:26:59'),(44,22,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 06:56:50','2019-11-21 06:56:50'),(45,23,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 07:18:36','2019-11-21 07:18:36'),(46,24,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 07:26:48','2019-11-21 07:26:48'),(47,25,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 07:34:38','2019-11-21 07:34:38'),(48,26,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 07:40:46','2019-11-21 07:40:46'),(49,27,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 07:45:34','2019-11-21 07:45:34'),(52,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:49:25','2019-11-21 07:49:25'),(53,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:49:35','2019-11-21 07:49:35'),(54,4,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:50:02','2019-11-21 07:50:02'),(55,5,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:50:17','2019-11-21 07:50:17'),(56,6,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:50:36','2019-11-21 07:50:36'),(57,7,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:50:58','2019-11-21 07:50:58'),(58,28,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 19:53:17','2019-11-21 19:53:17'),(59,29,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 19:59:16','2019-11-21 19:59:16'),(60,30,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-22 00:29:01','2019-11-22 00:29:01'),(61,31,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-22 00:42:28','2019-11-22 00:42:28'),(62,32,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-22 00:47:18','2019-11-22 00:47:18'),(63,33,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-22 00:57:15','2019-11-22 00:57:15'),(64,34,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-22 01:06:09','2019-11-22 01:06:09'),(65,8,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-22 01:26:08','2019-11-22 01:26:08'),(74,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Career\\Models\\Career','2019-11-30 19:43:10','2019-11-30 19:43:10'),(75,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Career\\Models\\Career','2019-11-30 19:49:07','2019-11-30 19:49:07'),(76,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Career\\Models\\Career','2019-11-30 19:52:42','2019-11-30 19:52:42'),(77,4,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Career\\Models\\Career','2019-11-30 19:56:50','2019-11-30 19:56:50'),(80,2,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(81,4,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(82,6,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(83,8,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(84,10,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(85,12,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(86,14,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(87,16,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(88,18,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(89,20,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(90,22,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(91,24,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(92,26,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(93,28,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(94,30,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(95,32,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(96,34,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(97,2,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(98,4,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(99,6,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(100,8,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(101,10,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(102,12,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(103,1,'subscribed_packaged_id','[2]','Botble\\Payment\\Models\\Payment','2022-12-27 20:03:55','2022-12-27 20:03:55');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2016_06_01_000001_create_oauth_auth_codes_table',1),(6,'2016_06_01_000002_create_oauth_access_tokens_table',1),(7,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(8,'2016_06_01_000004_create_oauth_clients_table',1),(9,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(10,'2016_06_10_230148_create_acl_tables',1),(11,'2016_06_14_230857_create_menus_table',1),(12,'2016_06_28_221418_create_pages_table',1),(13,'2016_10_05_074239_create_setting_table',1),(14,'2016_11_28_032840_create_dashboard_widget_tables',1),(15,'2016_12_16_084601_create_widgets_table',1),(16,'2017_05_09_070343_create_media_tables',1),(17,'2017_11_03_070450_create_slug_table',1),(18,'2019_07_15_042406_change_site_title_from_settings_to_theme_options',1),(19,'2019_08_13_033145_remove_unused_columns_in_users_table',1),(20,'2019_08_19_000000_create_failed_jobs_table',1),(21,'2019_09_07_030654_update_menu_nodes_table',1),(22,'2019_09_07_045041_update_slugs_table',1),(23,'2019_09_07_050405_update_slug_reference_for_page',1),(24,'2019_09_08_014859_update_meta_boxes_table',1),(25,'2019_09_08_015629_update_meta_box_data_for_page',1),(26,'2019_09_12_073711_update_media_url',1),(27,'2019_09_12_073711_update_media_url_for_current_data',1),(28,'2019_10_20_002256_remove_parent_id_in_pages_table',1),(31,'2018_06_22_032304_create_real_estate_table',2),(32,'2015_06_29_025744_create_audit_history',3),(33,'2015_06_18_033822_create_blog_table',4),(34,'2019_09_07_035526_update_menu_node_reference_type_for_category',4),(35,'2019_09_07_050058_update_slug_reference_for_blog',4),(36,'2019_09_07_155716_update_language_meta_for_blog',4),(37,'2019_09_08_015552_update_meta_box_data_for_blog',4),(38,'2019_10_20_002342_remove_parent_id_in_tags_table',4),(39,'2016_10_03_032336_create_languages_table',5),(40,'2019_09_07_154718_update_lang_meta_table',5),(42,'2016_06_17_091537_create_contacts_table',7),(43,'2015_08_15_122343_create_notes_table',8),(44,'2019_11_18_035125_add_column_type_into_re_properties_table',9),(45,'2019_11_18_035712_create_investor_table',9),(46,'2019_11_18_040153_update_real_estates_table',9),(47,'2019_11_18_041228_drop_table_re_property_categories',10),(48,'2019_11_18_082146_create_currencies_table',11),(49,'2019_11_18_061011_create_country_table',12),(50,'2019_11_18_061730_create_state_table',12),(51,'2019_11_18_062515_create_city_table',12),(52,'2019_11_19_063851_create_project_features_table',13),(53,'2019_11_21_090830_update_project_and_property_table',14),(54,'2019_11_21_130139_add_price_to_projects_table',15),(55,'2019_11_14_210650_create_consults_table',16),(56,'2019_11_26_024326_update_property_type',17),(57,'2019_06_24_211801_create_career_table',18),(58,'2019_12_03_123314_add_column_slug_into_cities_table',19),(59,'2019_12_03_124417_add_column_city_id_into_table_properties_and_projects',19),(60,'2017_05_18_080441_create_payment_tables',20),(61,'2019_12_10_140938_create_vendor_table',20),(62,'2019_12_15_025938_update_column_images_in_real_estate_tables',20),(63,'2019_12_17_064316_add_column_period_to_table_re_properties',20),(64,'2019_12_24_033049_add_column_author_into_re_properties_table',20),(65,'2019_12_24_083810_vendor_create_package_table',20),(66,'2019_12_27_004653_update_vendors_table_with_package_data',20),(68,'2020_01_08_002704_real_estate_create_type_table',21),(69,'2020_01_10_133700_change_re_types_to_re_categories',22),(70,'2016_10_07_193005_create_translations_table',23),(71,'2020_01_23_133752_update_account_tables',24),(72,'2020_02_03_144309_update_column_payment_channel',25),(73,'2020_02_06_143217_update_vendor_table',26),(74,'2020_02_11_133026_add_description_to_table_payments',27),(75,'2020_02_11_140823_create_transactions_table',27),(76,'2020_02_23_111922_fix_column_number_block_in_re_properties_table',27),(77,'2020_03_24_151004_add_moderation_status_into_properties_table',28),(78,'2020_03_25_030953_create_table_vendor_packages',29),(79,'2020_03_25_083610_add_column_expire_date_into_re_properties_table',30),(80,'2020_03_26_081108_add_column_auto_renew_to_re_properties_table',31),(81,'2020_03_16_072752_add_column_abbreviation_to_states_table',32),(82,'2020_03_28_020724_make_column_user_id_nullable_table_revisions',33),(83,'2020_03_23_093053_update_payments_table',34),(84,'2020_04_22_074304_add_column_never_expired_to_re_properties_table',35),(85,'2020_05_26_014304_add_column_provider_to_oauth_clients_table',36),(86,'2020_07_27_085437_add_icon_to_re_features',37),(90,'2020_08_21_102728_real_estate_create_facility_table',38),(91,'2020_08_22_024455_rename_table_for_accounts',39),(92,'2020_08_26_130439_add_column_username_into_table_re_accounts',40),(93,'2020_09_09_110653_update_table_careers',41),(94,'2020_09_15_111419_fix_old_data_for_re_properties',42),(95,'2020_10_05_030817_make_column_charge_id_nullable',43),(96,'2020_10_18_134416_fix_audit_logs_table',44),(97,'2020_10_24_133432_change_column_distance_to_string',45),(99,'2020_10_31_053746_add_column_description_into_re_categories_table',46),(100,'2019_01_05_053554_create_jobs_table',47),(101,'2020_12_05_112556_change_contact_page_to_a_page',48),(102,'2021_02_11_031126_update_price_column_in_projects_and_properties',49),(103,'2021_02_16_092633_remove_default_value_for_author_type',50),(104,'2021_03_08_024049_add_lat_long_into_real_estate_tables',51),(105,'2021_03_27_144913_add_customer_type_into_table_payments',52),(106,'2021_05_24_034720_make_column_currency_nullable',53),(107,'2021_06_10_091950_add_column_is_featured_to_table_re_accounts',54),(108,'2021_07_07_021757_update_table_account_activity_logs',55),(109,'2021_07_18_101839_fix_old_theme_options',56),(110,'2021_08_05_134214_fix_social_link_theme_options',57),(111,'2021_08_09_161302_add_metadata_column_to_payments_table',58),(112,'2021_09_29_042758_create_re_categories_multilevel_table',59),(113,'2021_10_19_020859_update_metadata_field',60),(114,'2021_10_31_031254_add_company_to_accounts_table',61),(115,'2021_10_25_021023_fix-priority-load-for-language-advanced',62),(116,'2021_12_03_030600_create_blog_translations',62),(117,'2021_12_03_075608_create_page_translations',62),(118,'2021_12_03_084118_create_location_translations',62),(119,'2021_12_03_094518_migrate_old_location_data',62),(120,'2021_12_04_095357_create_careers_translations_table',62),(121,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',63),(122,'2021_12_10_034807_create_real_estate_translation_tables',64),(123,'2021_12_18_081636_add_property_project_views_count',65),(124,'2022_01_16_085908_improve_plugin_location',66),(125,'2022_04_19_113923_add_index_to_table_posts',67),(126,'2022_04_20_100851_add_index_to_media_table',67),(127,'2022_04_20_101046_add_index_to_menu_table',67),(128,'2022_05_03_033044_update_column_images_in_real_estate_tables',68),(129,'2022_05_04_033044_update_column_images_in_real_estate_tables',69),(130,'2022_06_04_033634_improve_homepage_content',70),(131,'2022_06_28_151901_activate_paypal_stripe_plugin',71),(132,'2022_07_02_081723_fix_expired_date_column',71),(133,'2019_12_14_000001_create_personal_access_tokens_table',72),(134,'2022_07_07_153354_update_charge_id_in_table_payments',72),(135,'2022_07_10_034813_move_lang_folder_to_root',72),(136,'2022_08_01_090213_update_table_properties_and_projects',72),(137,'2022_08_04_051940_add_missing_column_expires_at',72),(138,'2022_08_04_052122_delete_location_backup_tables',72),(139,'2022_10_14_024629_drop_column_is_featured',73),(140,'2022_10_29_065232_increase_states_abbreviation_column',74),(141,'2022_11_06_061847_increase_state_translations_abbreviation_column',75),(142,'2022_11_06_070405_improve_homepage_search_box',75),(143,'2022_11_18_063357_add_missing_timestamp_in_table_settings',76),(144,'2022_12_02_093615_update_slug_index_columns',76),(145,'2022_09_01_000001_create_admin_notifications_tables',77),(146,'2023_01_30_024431_add_alt_to_media_table',78),(147,'2023_01_31_023233_create_re_custom_fields_table',79),(148,'2023_02_06_000000_add_location_to_re_accounts_table',79),(149,'2023_02_06_024257_add_package_translations',79),(150,'2023_02_08_062457_add_custom_fields_translation_table',80),(151,'2014_10_12_100000_create_password_reset_tokens_table',81),(152,'2023_02_15_024644_create_re_reviews_table',81),(153,'2023_02_16_042611_drop_table_password_resets',81),(154,'2023_02_20_072604_create_re_invoices_table',82),(155,'2023_02_20_081251_create_re_account_packages_table',82),(156,'2023_04_04_030709_add_unique_id_to_properties_and_projects_table',83),(157,'2023_04_14_164811_make_phone_and_email_in_table_re_consults_nullable',84),(158,'2023_04_23_005903_add_column_permissions_to_admin_notifications',84),(159,'2023_04_23_061847_increase_state_translations_abbreviation_column',84),(160,'2023_05_08_114004_improve_properties_and_projects_page',85),(161,'2023_05_09_062031_unique_reviews_table',85),(162,'2023_05_10_075124_drop_column_id_in_role_users_table',85),(163,'2023_05_26_034353_fix_properties_projects_image',86),(164,'2023_05_27_004215_add_column_ip_into_table_re_consults',86),(165,'2023_07_06_011444_create_slug_translations_table',87),(166,'2023_07_18_040500_convert_cities_is_featured_to_selecting_locations_from_shortcode',87),(167,'2023_07_25_034513_create_re_coupons_table',87),(168,'2023_07_25_034672_add_coupon_code_column_to_jb_invoices_table',87),(169,'2023_07_26_041451_add_more_columns_to_location_table',87),(170,'2023_07_27_041451_add_more_columns_to_location_translation_table',87),(171,'2023_07_28_073307_drop_unique_in_states_cities_translations',87),(172,'2023_08_02_074208_change_square_column_to_float',87),(173,'2023_08_07_000001_add_is_public_profile_column_to_re_accounts_table',87),(174,'2023_08_09_004607_make_column_project_id_nullable',87),(175,'2023_08_15_073307_drop_unique_in_states_cities_translations',88),(176,'2023_08_21_090810_make_page_content_nullable',89),(177,'2023_08_29_074620_make_column_author_id_nullable',90),(178,'2023_09_11_084630_update_mandatory_fields_in_consult_form_table',91),(179,'2023_09_14_021936_update_index_for_slugs_table',92),(180,'2023_09_14_022423_add_index_for_language_table',92),(181,'2023_09_20_050420_add_missing_translation_column',93);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int unsigned NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notes_user_id_index` (`user_id`),
  KEY `notes_reference_id_index` (`reference_id`),
  KEY `notes_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `client_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` int unsigned NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[search-box title=\"Find your favorite homes at Flex Home\" background_image=\"general/home-banner.jpg\" enable_search_projects_on_homepage_search=\"yes\" default_home_search_type=\"project\"][/search-box]</div><div>[featured-projects title=\"Featured projects\" subtitle=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more.\" limit=\"4\"][/featured-projects]</div><div>[properties-by-locations title=\"Properties by locations\" subtitle=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" city=\"1,2,3,4,5\"][/properties-by-locations]</div><div>[properties-for-sale title=\"Properties For Sale\" subtitle=\"Below is a list of properties that are currently up for sale\" limit=\"8\"][/properties-for-sale]</div><div>[properties-for-rent title=\"Properties For Rent\" subtitle=\"Below is a detailed price list of each property for rent\" limit=\"8\"][/properties-for-rent]</div><div>[featured-agents title=\"Featured Agents\"][/featured-agents]</div><div>[recently-viewed-properties title=\"Recently Viewed Properties\" subtitle=\"Your currently viewed properties.\" limit=\"8\"][/recently-viewed-properties]</div><div>[latest-news title=\"News\" subtitle=\"Below is the latest real estate news we get regularly updated from reliable sources.\" limit=\"4\"][/latest-news]</div>',1,NULL,'homepage',NULL,'published','2023-09-26 02:42:28','2023-09-26 02:42:28'),(2,'News','---',1,NULL,'default',NULL,'published','2023-09-26 02:42:28','2023-09-26 02:42:28'),(3,'About us','<h4><span style=\"font-size:18px;\"><b>1. COMPANY</b><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong> PROFILE</strong></span></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.<br />\nWith the slogan &quot;Breaking time, through space&quot; with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field. Real estate, bringing people closer together, over the distance of time and space, is a reliable place for real estate investment - an area that is constantly evolving over time.</span></span></p>\n\n<blockquote>\n<h2 style=\"font-style: italic; text-align: center;\"><span style=\"font-size:24px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"color:#16a085;\">&quot;Breaking time, through space&quot;</span></span></strong></span></h2>\n</blockquote>\n\n<h4 style=\"text-align: center;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/asset-3-at-3x.png\" style=\"width: 90%;\" /></h4>\n\n<h4><span style=\"font-size:18px;\"><b><font face=\"Arial, Helvetica, sans-serif\">2. VISION&nbsp;</font></b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Acquiring domestic areas.<br />\n- Reaching far across continents.</span></span></p>\n\n<h4><span style=\"font-size:18px;\"><b>3. MISSION</b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Creating the community<br />\n- Building destinations<br />\n- Nurture happiness</span></span></p>\n\n<p><img alt=\"\" src=\"https://flex-home.test/storage/general/vietnam-office-4.jpg\" /></p>\n',1,NULL,'default','Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\nWith the slogan \"Breaking time, through space\" with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field.','published','2023-09-26 02:42:28','2023-09-26 02:42:28'),(4,'Contact','<p>[contact-form][/contact-form]<br />\n&nbsp;</p>\n\n<h3>Directions</h3>\n\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n<p>&nbsp;</p>',1,NULL,'default',NULL,'published','2023-09-26 02:42:28','2023-09-26 02:42:28'),(5,'Terms &amp; Conditions','<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Access to and use of the Flex Home website is subject to the following terms, conditions, and relevant laws of Vietnam.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Copyright</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Any content from this site may not be used for sale or distribution for profit, nor may it be edited or included in any other publication or website.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Content</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The information on this website is compiled with great confidence but for general information research purposes only. While we endeavor to maintain updated and accurate information, we make no representations or warranties in any manner regarding completeness, accuracy, reliability, appropriateness or availability in relation to web site, or related information, product, service, or image within the website for any purpose. </span></span></p>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Flex Home and its employees, managers, and agents are not responsible for any loss, damage or expense incurred as a result of accessing and using this website and the sites. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The web is connected to it, including but not limited to, loss of profits, direct or indirect losses. We are also not responsible, or jointly responsible, if the site is temporarily inaccessible due to technical issues beyond our control. Any comments, suggestions, images, ideas and other information or materials that users submit to us through this site will become our exclusive property, including the right to may arise in the future associated with us.</span></span></p>\n\n<p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/copyright.jpg\" style=\"width: 90%;\" /></span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Note on&nbsp;connected sites</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n',1,NULL,'default','Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.','published','2023-09-26 02:42:28','2023-09-26 02:42:28'),(6,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-09-26 02:42:28','2023-09-26 02:42:28'),(7,'Properties','<div>[properties-list title=\"Discover our properties\" description=\"Discover our properties\" description=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" number_of_properties_per_page=\"12\"][/properties-list]</div>',1,NULL,'homepage',NULL,'published','2023-09-26 02:42:28','2023-09-26 02:42:28'),(8,'Projects','<div>[projects-list  title=\"Discover our projects\" description=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more\" number_of_projects_per_page=\"12\"][/projects-list]</div>',1,NULL,'homepage',NULL,'published','2023-09-26 02:42:28','2023-09-26 02:42:28');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `amount` decimal(15,2) unsigned NOT NULL,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,250.00,'USD',0,'AS2MND60W6','bank_transfer','2022-12-27 20:03:55','2022-12-27 20:03:55',NULL,2,'pending','confirm',1,NULL,NULL,'Botble\\RealEstate\\Models\\Account',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,6,2121),(2,4,2122),(3,4,2123),(4,2,2124),(5,1,2125),(6,2,2126),(7,1,2127),(8,6,2128),(9,1,2129),(10,2,2130),(11,1,2131),(12,1,2132),(13,4,2133),(14,2,2134),(15,2,2135),(16,6,2136);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,2121),(2,2,2121),(3,3,2121),(4,1,2122),(5,2,2122),(6,3,2122),(7,1,2123),(8,2,2123),(9,3,2123),(10,1,2124),(11,2,2124),(12,3,2124),(13,1,2125),(14,2,2125),(15,3,2125),(16,1,2126),(17,2,2126),(18,3,2126),(19,1,2127),(20,2,2127),(21,3,2127),(22,1,2128),(23,2,2128),(24,3,2128),(25,1,2129),(26,2,2129),(27,3,2129),(28,1,2130),(29,2,2130),(30,3,2130),(31,1,2131),(32,2,2131),(33,3,2131),(34,1,2132),(35,2,2132),(36,3,2132),(37,1,2133),(38,2,2133),(39,3,2133),(40,1,2134),(41,2,2134),(42,3,2134),(43,1,2135),(44,2,2135),(45,3,2135),(46,1,2136),(47,2,2136),(48,3,2136);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_author_id_author_type_created_at_index` (`status`,`author_id`,`author_type`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'BCG sets great store by real estate negotiations','BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.','<h2 style=\"font-style:italic;\">The profit of Bamboo Capital Group (BCG) is expected to grow tremendously during 2019-2023 thanks to a series of real estate as well as renewable energy projects, especially Radisson Blu Hoi An and King Crown Village Thao Dien.</h2>\r\n\r\n<p>BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.</p>\r\n\r\n<p>BCG expects to reach the after-tax profit of VND312 billion ($13.56 million) this year, VND681.5 ($29.6 million) in 2020, and VND826.5 billion ($35.93 million) in 2023. In real estate, BCG has implemented the Radisson Blu Hoi An project with the scale of 734 apartments and coastal villas, King Crown Village Thao Dien in District 2, Ho Chi Minh City with 17 villas in the first phase and serviced apartments and a hotel, as well as offices for lease in the second phase.</p>\r\n\r\n<p>BCG leaders shared that in 2019-2020, Radisson Blu Hoi An and King Crown Village Thao Dien will bring VND900 billion ($39.13 million) in profit to BCG, and the group is negotiating to transfer part of the group&rsquo;s capital in the two projects. BCG owns a hundred per cent in Radisson Blu Hoi An, and 48.5 per cent in King Crown Village Thao Dien.</p>\r\n\r\n<p>&quot;If we close the deals with our partners soon, BCG will fulfil the profit plan for 2019. Currently, the deal is still in progress, but we are confident in implementing our 2019 profit plan. If the deal is delayed for any reason, the profit will be transferred by the beginning of 2020,&quot; Pham Minh Tuan, deputy CEO of BCG, shared.</p>\r\n\r\n<p>The upcoming real estate projects of BCG include Condotel Pegas Nha Trang (2.74 hectares, implemented in 2020-2021), Bao Loc urban area (​​17ha, in 2019-2023), Loc Phat residential area (Bao Loc, Lam Dong &ndash; 46.9ha, implemented from 2019 to 2022), Hoa Ninh residential area (Di Linh, Lam Dong &ndash;49.3ha, implemented in 2020-2023), Hiep Binh Chanh urban area (​​6.3ha, implemented in 2020-2022).</p>\r\n\r\n<p>Regarding the capital to meet BCG&#39;s investment needs, according to Nguyen Ho Nam, chairman of BCG, most of BCG&#39;s projects are co-operating with international corporations on issues like technical and technological issues, branding, or capital co-operation.</p>\r\n\r\n<p>BCG has signed a contract with KPMG Singapore to become the exclusive consultant for BCG to seek international funding and domestic banks to increase credit room for BCG to implement a new project. Along with that, BCG received capital contributions from South Korean investors including Hanwha Energy involved in solar power plant projects and real estate firm Woomi.</p>\r\n\r\n<p>BCG is also working with a strategic partner from Europe. In the field of renewable energy, BCG finished two solar energy projects in Long An with the total capacity of over 140MW. Of these, the BCG-CME Long An 1 solar power plant, which in BCG holds 37.5 per cent, has the capacity of 40.5MW and is expected to bring revenue of VND140-150 billion ($6.1-6.5 million) per year from 2020.</p>\r\n\r\n<p>BCG-CME Long An 2 (GAIA) has the capacity of 100.5MW and is expected to launch operations in this November, bringing revenue of about VND320 billion per year from 2020. BCG has a 32.5 per cent stake in GAIA.</p>\r\n\r\n<p>BCG-CME Long An 1 solar power plant sells electricity to Electricity of Vietnam at the price of 9.35 US cent per kW for 20 years, while GAIA hopes to sell electricity at 8.72 US cent per kW. In addition to the two projects above, BCG is trying to complete procedures for other solar power plants in Long An (100MW), Dak Lak (50MW), Gia Lai (300MW), Tay Ninh (165MW), a surface solar power plant in Quang Nam (200MW), a wind power plant in Soc Trang (50MW).</p>\r\n\r\n<p>At the two solar power plants in Long An, BCG worked with Vietnam-Oman Investment (VOI) and took up VND2 trillion in loans from local banks ($86.96 million &ndash; 65 per cent of the total investment capital of the two projects).</p>','published',1,'Botble\\ACL\\Models\\User',1,'properties/1-2.jpg',2426,NULL,'2023-09-26 02:42:29','2023-09-26 02:42:29'),(2,'Private Home Sales Drop 27% In October','New private home sales in Singapore fell 27% in October from September, reported Channel News Asia, based on the data released by the Urban Redevelopment Authority (URA).\r\nAccording to URA data, developers only sold 928 units in October (955 units including executive condominiums), compared to 1,270 units from the previous month','<p>New private home sales in Singapore fell 27% in October from September, reported Channel News Asia, based on the data released by the&nbsp;Urban Redevelopment Authority (URA).</p>\r\n\r\n<p><strong>According to URA data,&nbsp;developers only sold 928 units in October (955 units including executive condominiums), compared to 1,270 units from the previous month.</strong></p>\r\n\r\n<p>However, on a year-to-year comparison, the figures show an 84.9% increase.</p>\r\n\r\n<p>The new homes sold in October in the Core Central Region (CCR) tripled to 182 units from September, the biggest recorded since March 2016, with Singaporeans buying 133 of those units.</p>\r\n\r\n<p>Analysts said the good performance was mainly due to new project launches in the area, including&nbsp;<strong>Midtown<a href=\"https://www.propertyguru.com.sg/property-for-sale/at-midtown-bay-23760\"> </a>Bay Residences</strong>,&nbsp;<strong>Neu at Novena</strong>&nbsp;and&nbsp;<strong>Royalgreen</strong>. The other new launch this month was Midwood, within the Outside of Central Region (OCR)</p>\r\n\r\n<p>The deficiency in major launches in the city fringe and mass-market segments like the OCR could have been a factor in the sales drop, said OrangeTee and Tie head of research and consultancy Christine Sun.</p>\r\n\r\n<p>&ldquo;Sales volumes tend to be lower when more luxury projects are being launched in a particular month, owing to the higher price tags and lower affordability,&rdquo; she said.</p>\r\n\r\n<p>URA Realis data show that this year saw 104 non-landed new homes sales reach S$5 million and above, which is the highest mark since 155 were purchased from January to October 2011, added Sun.</p>\r\n\r\n<p>High-profile transactions, such as James Dyson&rsquo;s purchase of Singapore&rsquo;s most expensive apartment, contributed to &ldquo;significant positive sentiments for developer sales,&rdquo; said property analyst Ong Kah Seng.</p>\r\n\r\n<p>&ldquo;Despite the global trade and geopolitical uncertainties, we believe demand for Singapore private homes is still relatively stable given the tight labour market, favourable interest rate environment, and relatively healthy household balance sheet,&rdquo; said Tricia Song, Colliers International head of research for Singapore.</p>\r\n\r\n<p>Ong believes the country&rsquo;s properties will become more attractive for foreign buyers wanting stable investments.</p>\r\n\r\n<p>&ldquo;There&rsquo;s increasing international attractiveness of Singapore residential properties as offering longer term stability to all profiles of buyers, including from foreigners who are eschewing investments in Hong Kong due to that city&rsquo;s heightening social turbulence,&rdquo; he noted.</p>','published',1,'Botble\\ACL\\Models\\User',1,'properties/2-2.jpg',942,NULL,'2023-09-26 02:42:29','2023-09-26 02:42:29'),(3,'Singapore Overtakes Hong Kong In Terms Of Property Investment Prospects','Singapore now claims the top spot for real estate investment prospects in terms of price increases in 2020. Hong Kong, rocked by months of violent political protests, has fallen from 14th place to the bottom of the pile in 2019.','<p>The fortunes of Singapore and Hong Kong &ndash; two of Asia&rsquo;s hottest property markets &ndash; are going in different directions, reported Bloomberg citing a Urban Land Institute and PricewaterhouseCoopers LLP report.</p>\r\n\r\n<p><strong>Singapore now claims the top spot for real estate investment prospects&nbsp;in terms of price increases in 2020. Hong Kong, rocked by months of violent political protests, has fallen from 14th place to the bottom of the pile in 2019.</strong></p>\r\n\r\n<p>Hong Kong&rsquo;s drop to the least-favoured destination for real estate investment next year is due to its retail and tourism sectors taking a beating, affecting economic growth.</p>\r\n\r\n<p>The city-state has benefited from a surge in interest among investors who are steering clear of Hong Kong and China, which are viewed as &ldquo;geopolitical flashpoints&rdquo;.</p>\r\n\r\n<p>For the past few quarters, apartment prices in Singapore have rebounded, showing resilience in the residential market, with the office sector mostly absorbing the oversupply.</p>\r\n\r\n<p>Hong Kong&rsquo;s problems bode well for Singapore, at least for a little while, according to Urban Land Institute CEO Ed Walter.</p>\r\n\r\n<p>&ldquo;A lot of theory in investing is less about what was, versus what is or what is going to be,&rdquo; he added.</p>\r\n\r\n<p><strong>Singapore also saw a rise in property transactions in the first half, with majority of the activities driven by cross-border capital. Deals amounted to $4.9 billion (S$6.6 billion) in the period, a 73% year-on-year growth.</strong></p>\r\n\r\n<p>Walter described Hong Kong as having a &ldquo;very resilient market&rdquo;, backed by its high property prices. He believes that after the protests, sectors such as retail can recover quickly.</p>\r\n\r\n<p>&ldquo;The bigger issue is what happens from a political perspective and what does that signal about Hong Kong&rsquo;s place as a financial centre,&rdquo; he said.</p>\r\n\r\n<p><strong>Singapore placed second-to-last among 22 centres as recently as 2017, overtaken by cities such as Sydney, Tokyo and Bangalore as vacancies rose and rents dropped. In 2017, Hong Kong placed 18th.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://flex-home.botble.com/storage/properties/3-2.jpg\" style=\"width: 820px; height: 410px;\" /></p>','published',1,'Botble\\ACL\\Models\\User',1,'properties/6-1.jpg',1156,NULL,'2023-09-26 02:42:29','2023-09-26 02:42:29'),(4,'S. Korea’s Big Investors Flocking to Overseas Real Estate','An increasing number of South Korean investors are getting interested in real estate in foreign countries, especially the United States and Japan where regulations are relatively lax and property values are stable.','<h2>KEB Hana Bank held a seminar on the global real estate investment strategy at its head office in Seoul on May 23 and nearly 100 customers attended it.</h2>\r\n\r\n<p>Hana Bank&rsquo;s private banker (PB) business division held the seminar for affluent customers to explain the procedure for taking out loans and remitting money to make an investment in real estate in major cities around the world, including New York, Los Angeles in the United States and Tokyo in Japan.</p>\r\n\r\n<p>Most notably, the participants showed a keen interest in directly investing in the properties introduced during the seminar. Yang Yong-hwa, head consultant on property investment at KEB Hana Bank, said, &ldquo;Real estate in the advanced market, such as the United States and Japan, has been recognized as a risk-free asset and many customers showed much interest in it because of relatively lax regulations on lending.&rdquo;</p>\r\n\r\n<h3 style=\"text-align: center;\"><img alt=\"S. Korea’s Big Investors Flocking to Overseas Real Estate\" longdesc=\"S. Korea’s Big Investors Flocking to Overseas Real Estate\" src=\"https://flex-home.botble.com/storage/properties/32223-43914-378.jpg\" style=\"width: 573px; height: 533px;\" /></h3>\r\n\r\n<p style=\"text-align: center;\"><em>S. Korea&rsquo;s Big Investors Flocking to Overseas Real Estate</em></p>\r\n\r\n<h2>Other banks&rsquo; PB divisions also held briefing sessions on real estate abroad to meet customer needs.</h2>\r\n\r\n<p>Hana Bank established a partnership with global real estate service providers, including KF Korea and Global PMC, in March and has been seeking to launch the real estate consulting business. KB Kookmin Bank also introduced the global KB real estate consulting service in 2014, while Woori Bank is holding consultation sessions on investment in foreign properties by making use of its global network which is the largest among domestic banks. Shinhan Bank established a partnership with global real estate service firm, KF Korea, in April and will hold the first seminar on overseas real estate on May 27.</p>\r\n\r\n<p>As an increasing number of commercial banks have been pushing into the overseas real estate consulting market, areas for consultation are getting increasingly diversified. Tokyo has the highest demand as it is relatively easy to access and the price of real estate there is on the rise before the 2020 Summer Olympics. However, emerging countries that have a high growth potential, such as Vietnam, recently see more investment coming in.</p>','published',1,'Botble\\ACL\\Models\\User',1,'properties/download.jpg',1515,NULL,'2023-09-26 02:42:29','2023-09-26 02:42:29'),(2121,'The Top 2020 Handbag Trends to Know','Id sapiente voluptas quam sed cum nihil. Et accusantium nam et magni consectetur. Dolorum commodi ut a explicabo.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>CHAPTER IV. The Rabbit Sends in a great hurry. \'You did!\' said the Cat. \'I said pig,\' replied Alice; \'and I wish I hadn\'t drunk quite so much!\' said Alice, as she could. \'The game\'s going on between the executioner, the King, rubbing his hands; \'so now let the jury--\' \'If any one left alive!\' She was moving them about as she left her, leaning her head impatiently; and, turning to the table to measure herself by it, and found quite a new idea to Alice, they all crowded round it, panting, and asking, \'But who is to France-- Then turn not pale, beloved snail, but come and join the dance? Will you, won\'t you, will you, old fellow?\' The Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. \'I wasn\'t asleep,\' he said to herself, \'the way all the jurymen on to himself as he spoke, and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can creep under the hedge. In another moment down went Alice like the look of the sort. Next came an angry tone.</p><p class=\"text-center\"><img src=\"/storage/news/5.jpg\"></p><p>White Rabbit read:-- \'They told me you had been anxiously looking across the field after it, never once considering how in the last words out loud, and the blades of grass, but she had put on your head-- Do you think you\'re changed, do you?\' \'I\'m afraid I don\'t want to go! Let me think: was I the same tone, exactly as if it began ordering people about like that!\' said Alice very politely; but she had hurt the poor animal\'s feelings. \'I quite agree with you,\' said the Mock Turtle. \'Certainly.</p><p class=\"text-center\"><img src=\"/storage/news/8.jpg\"></p><p>WAS a narrow escape!\' said Alice, looking down at them, and the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice with one finger pressed upon its nose. The Dormouse shook itself, and was in the middle of the teacups as the jury eagerly wrote down on one side, to look for her, and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not talk!\' said Five. \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I don\'t remember where.\' \'Well, it must be what he did it,) he did not answer, so Alice soon came to ME, and told me he was gone, and, by the little golden key in the pool, and the two creatures got so close to the jury. \'Not yet, not yet!\' the Rabbit angrily. \'Here! Come and help me out of a feather flock together.\"\' \'Only mustard isn\'t a bird,\' Alice remarked. \'Right, as usual,\' said the Queen, in a hurried nervous manner, smiling at everything that was trickling down his face, as long as it was over at.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>And she began fancying the sort of present!\' thought Alice. \'Now we shall have to turn round on its axis--\' \'Talking of axes,\' said the Dodo had paused as if it makes me grow smaller, I can reach the key; and if it wasn\'t trouble enough hatching the eggs,\' said the Mouse, who was sitting on the twelfth?\' Alice went timidly up to Alice, she went on: \'But why did they live on?\' said Alice, \'I\'ve often seen them so shiny?\' Alice looked at them with large eyes full of the earth. At last the Gryphon went on in the direction in which case it would all wash off in the court!\' and the Queen in a dreamy sort of lullaby to it as a last resource, she put it. She felt very glad she had found the fan and gloves, and, as the rest of my life.\' \'You are old,\' said the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' said the King, \'or I\'ll have you executed on the trumpet, and then a great hurry. \'You did!\' said the King. \'Nearly two miles high,\' added the Hatter, who turned.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',284,NULL,'2023-09-26 02:42:29','2023-09-26 02:42:29'),(2122,'Top Search Engine Optimization Strategies!','Qui amet qui quia eos totam exercitationem. Est nobis ut aliquid magnam ut blanditiis. Natus consectetur alias eius ad facilis voluptas maxime.','<p>Mock Turtle with a pair of white kid gloves, and she soon made out that the reason they\'re called lessons,\' the Gryphon answered, very nearly in the after-time, be herself a grown woman; and how she was exactly one a-piece all round. (It was this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said, turning to Alice. \'Only a thimble,\' said Alice in a confused way, \'Prizes! Prizes!\' Alice had got its neck nicely straightened out, and was beating her violently with its legs hanging down, but generally, just as well be at school at once.\' However, she did not much surprised at this, that she tipped over the wig, (look at the Hatter, and he wasn\'t one?\' Alice asked. \'We called him a fish)--and rapped loudly at the other, saying, in a great letter, nearly as she heard a little of the month, and doesn\'t tell what o\'clock it is!\' \'Why should it?\' muttered the Hatter. \'It isn\'t mine,\' said the Duchess. \'Everything\'s got a moral, if only you can find it.\' And she squeezed herself.</p><p class=\"text-center\"><img src=\"/storage/news/4.jpg\"></p><p>Alice. \'That\'s the most curious thing I ask! It\'s always six o\'clock now.\' A bright idea came into her eyes--and still as she could, \'If you knew Time as well as I tell you!\' But she did not see anything that had made out that she had succeeded in bringing herself down to them, they were trying to fix on one, the cook had disappeared. \'Never mind!\' said the White Rabbit cried out, \'Silence in the long hall, and close to her ear. \'You\'re thinking about something, my dear, and that in some book.</p><p class=\"text-center\"><img src=\"/storage/news/9.jpg\"></p><p>I hadn\'t begun my tea--not above a week or so--and what with the bones and the little creature down, and was looking down with wonder at the door-- Pray, what is the use of this pool? I am to see the Mock Turtle, who looked at them with one finger pressed upon its nose. The Dormouse shook itself, and began staring at the top of the sort. Next came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit put on her lap as if she had expected: before she gave her one, they gave him two, You gave us three or more; They all returned from him to be said. At last the Mock Turtle: \'why, if a fish came to the voice of the cattle in the book,\' said the Mock Turtle said: \'I\'m too stiff. And the Gryphon went on all the time she saw in another moment it was getting so far off). \'Oh, my poor little feet, I wonder what was on the door opened inwards, and Alice\'s elbow was pressed so closely against her foot, that there was not a moment like a sky-rocket!\' \'So you did.</p><p class=\"text-center\"><img src=\"/storage/news/11.jpg\"></p><p>I got up in a deep voice, \'What are they made of?\' \'Pepper, mostly,\' said the Mock Turtle in a loud, indignant voice, but she heard was a little queer, won\'t you?\' \'Not a bit,\' said the Rabbit coming to look down and began by taking the little door, had vanished completely. Very soon the Rabbit angrily. \'Here! Come and help me out of the lefthand bit of mushroom, and crawled away in the middle of one! There ought to have any rules in particular; at least, if there were three little sisters,\' the Dormouse fell asleep instantly, and neither of the birds hurried off to the confused clamour of the day; and this was his first remark, \'It was the BEST butter,\' the March Hare. \'It was much pleasanter at home,\' thought poor Alice, \'it would have appeared to them to be patted on the top of its mouth, and its great eyes half shut. This seemed to be ashamed of yourself for asking such a nice little dog near our house I should understand that better,\' Alice said to one of them hit her in an.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',897,NULL,'2023-09-26 02:42:29','2023-09-26 02:42:29'),(2123,'Which Company Would You Choose?','Magnam eaque et ratione ut expedita omnis. Tempora voluptas delectus aut facilis quisquam voluptatum.','<p>Alice. \'And where HAVE my shoulders got to? And oh, I wish I hadn\'t drunk quite so much!\' said Alice, \'because I\'m not particular as to size,\' Alice hastily replied; \'only one doesn\'t like changing so often, you know.\' \'And what an ignorant little girl she\'ll think me at home! Why, I do hope it\'ll make me smaller, I suppose.\' So she began nursing her child again, singing a sort of knot, and then said \'The fourth.\' \'Two days wrong!\' sighed the Hatter. \'I deny it!\' said the Hatter. \'Nor I,\' said the Hatter, it woke up again as quickly as she went round the table, but it makes rather a handsome pig, I think.\' And she began looking at the window.\' \'THAT you won\'t\' thought Alice, \'shall I NEVER get any older than I am now? That\'ll be a Caucus-race.\' \'What IS a Caucus-race?\' said Alice; \'you needn\'t be so easily offended, you know!\' The Mouse did not like to see how the Dodo solemnly, rising to its feet, ran round the neck of the Mock Turtle drew a long sleep you\'ve had!\' \'Oh, I\'ve had.</p><p class=\"text-center\"><img src=\"/storage/news/2.jpg\"></p><p>March--just before HE went mad, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Well, then,\' the Cat said, waving its right ear and left off quarrelling with the glass table as before, \'and things are worse than ever,\' thought the whole pack of cards: the Knave of Hearts, she made some tarts, All on a bough of a good many voices all talking together: she made out that it was good practice to say anything. \'Why,\' said the King, with an M?\' said Alice. \'Of course.</p><p class=\"text-center\"><img src=\"/storage/news/8.jpg\"></p><p>I\'ve kept her waiting!\' Alice felt that it would all wash off in the same words as before, \'and things are worse than ever,\' thought the poor little thing was waving its tail when I\'m pleased, and wag my tail when I\'m pleased, and wag my tail when it\'s pleased. Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she went nearer to watch them, and the King said to the little golden key and hurried off at once: one old Magpie began wrapping itself up and down looking for eggs, I know is, something comes at me like that!\' \'I couldn\'t afford to learn it.\' said the Duchess, as she could remember about ravens and writing-desks, which wasn\'t much. The Hatter was the Rabbit angrily. \'Here! Come and help me out of its mouth, and addressed her in a large canvas bag, which tied up at the Caterpillar\'s making such VERY short remarks, and she jumped up in such a wretched height to be.\' \'It is a raven like a mouse, you know. Which shall sing?\' \'Oh, YOU sing,\' said the last word.</p><p class=\"text-center\"><img src=\"/storage/news/11.jpg\"></p><p>YOUR adventures.\' \'I could tell you my adventures--beginning from this morning,\' said Alice sadly. \'Hand it over here,\' said the March Hare. \'It was a very decided tone: \'tell her something about the twentieth time that day. \'No, no!\' said the Gryphon. \'--you advance twice--\' \'Each with a kind of thing that would happen: \'\"Miss Alice! Come here directly, and get ready to play croquet.\' Then they both sat silent for a long time with the end of half those long words, and, what\'s more, I don\'t remember where.\' \'Well, it must be a queer thing, to be told so. \'It\'s really dreadful,\' she muttered to herself, \'Now, what am I to do it?\' \'In my youth,\' Father William replied to his son, \'I feared it might not escape again, and all must have a prize herself, you know,\' the Hatter continued, \'in this way:-- \"Up above the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the same solemn tone, only changing the.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',1784,NULL,'2023-09-26 02:42:29','2023-09-26 02:42:29'),(2124,'Used Car Dealer Sales Tricks Exposed','Hic exercitationem suscipit consequatur minima. Adipisci possimus labore et odio similique. Ut corporis excepturi cupiditate. Eius harum explicabo est commodi quod.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Bill,\' she gave one sharp kick, and waited to see if he would deny it too: but the tops of the March Hare took the watch and looked at it, busily painting them red. Alice thought to herself, \'it would have appeared to them she heard it before,\' said Alice,) and round Alice, every now and then turned to the end of the March Hare, who had got burnt, and eaten up by two guinea-pigs, who were lying on the bank, and of having nothing to do.\" Said the mouse to the puppy; whereupon the puppy made another snatch in the wood,\' continued the Hatter, \'when the Queen in front of the edge of her ever getting out of this rope--Will the roof off.\' After a while she was looking about for it, you may SIT down,\' the King hastily said, and went on \'And how do you know why it\'s called a whiting?\' \'I never could abide figures!\' And with that she wasn\'t a really good school,\' said the Gryphon: and it was out of its mouth, and its great eyes half shut. This seemed to be rude, so she went on, looking.</p><p class=\"text-center\"><img src=\"/storage/news/2.jpg\"></p><p>Nobody moved. \'Who cares for you?\' said the Pigeon; \'but if you\'ve seen them at dinn--\' she checked herself hastily. \'I thought you did,\' said the Gryphon. Alice did not dare to laugh; and, as the soldiers did. After these came the royal children; there were no arches left, and all of you, and must know better\'; and this Alice would not allow without knowing how old it was, even before she had never seen such a very deep well. Either the well was very nearly in the way out of it, and found.</p><p class=\"text-center\"><img src=\"/storage/news/10.jpg\"></p><p>I should frighten them out again. That\'s all.\' \'Thank you,\' said the Hatter. \'It isn\'t a bird,\' Alice remarked. \'Right, as usual,\' said the others. \'We must burn the house if it thought that she knew she had gone through that day. \'That PROVES his guilt,\' said the Queen, the royal children; there were three little sisters,\' the Dormouse indignantly. However, he consented to go after that savage Queen: so she set to partners--\' \'--change lobsters, and retire in same order,\' continued the King. (The jury all looked puzzled.) \'He must have imitated somebody else\'s hand,\' said the Mock Turtle went on in a trembling voice, \'Let us get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the reason is--\' here the Mock Turtle, and said to one of the Gryphon, with a lobster as a lark, And will talk in contemptuous tones of her ever getting out of the room. The cook threw a frying-pan after her as she came upon a neat little house, on the.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>ARE OLD, FATHER WILLIAM,\"\' said the Lory, who at last came a little shaking among the bright eager eyes were nearly out of sight: \'but it seems to like her, down here, that I should like to be a queer thing, to be a Caucus-race.\' \'What IS the fun?\' said Alice. \'Why, SHE,\' said the Cat. \'Do you take me for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' said Alice in a melancholy tone: \'it doesn\'t seem to put it in large letters. It was the Hatter. \'Stolen!\' the King very decidedly, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the jurymen on to himself as he spoke, and then I\'ll tell him--it was for bringing the cook was leaning over the fire, and at last turned sulky, and would only say, \'I am older than I am to see what I like\"!\' \'You might just as well. The twelve jurors were all locked; and when she went on for some time without hearing anything more: at last it sat for a little glass table. \'Now, I\'ll manage better this time,\' she said, without.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',2288,NULL,'2023-09-26 02:42:29','2023-09-26 02:42:29'),(2125,'20 Ways To Sell Your Product Faster','Praesentium reiciendis aut quae omnis voluptas autem. Saepe et totam voluptas placeat eos autem fugiat sint. Eligendi dolorem a exercitationem.','<p>That WILL be a very respectful tone, but frowning and making quite a long tail, certainly,\' said Alice, as she remembered that she had found the fan and the March Hare went \'Sh! sh!\' and the Queen, turning purple. \'I won\'t!\' said Alice. \'Why not?\' said the King, and the others took the place of the accident, all except the Lizard, who seemed to be said. At last the Gryphon interrupted in a deep sigh, \'I was a little hot tea upon its nose. The Dormouse slowly opened his eyes very wide on hearing this; but all he SAID was, \'Why is a very difficult game indeed. The players all played at once in the distance, and she had put on his slate with one foot. \'Get up!\' said the Duchess. \'I make you grow shorter.\' \'One side will make you dry enough!\' They all sat down at her own mind (as well as pigs, and was going to dive in among the bright flower-beds and the words did not at all fairly,\' Alice began, in a minute, while Alice thought she might as well as she could. The next witness was the.</p><p class=\"text-center\"><img src=\"/storage/news/2.jpg\"></p><p>I don\'t want to go! Let me see: I\'ll give them a new pair of white kid gloves: she took up the little passage: and THEN--she found herself safe in a deep sigh, \'I was a little ledge of rock, and, as the Rabbit, and had just upset the week before. \'Oh, I beg your pardon!\' said the Footman, and began to cry again. \'You ought to be a letter, written by the way to hear her try and say \"How doth the little--\"\' and she tried her best to climb up one of the others looked round also, and all sorts of.</p><p class=\"text-center\"><img src=\"/storage/news/8.jpg\"></p><p>Alice did not see anything that had slipped in like herself. \'Would it be murder to leave off this minute!\' She generally gave herself very good advice, (though she very good-naturedly began hunting about for some way of expressing yourself.\' The baby grunted again, so that altogether, for the garden!\' and she set off at once crowded round it, panting, and asking, \'But who has won?\' This question the Dodo in an encouraging opening for a good opportunity for croqueting one of the doors of the Lobster Quadrille, that she was saying, and the shrill voice of the Rabbit\'s little white kid gloves while she was considering in her hand, and a large caterpillar, that was sitting next to her. \'I can hardly breathe.\' \'I can\'t explain MYSELF, I\'m afraid, but you might like to have changed since her swim in the shade: however, the moment they saw Alice coming. \'There\'s PLENTY of room!\' said Alice sharply, for she was to find my way into that lovely garden. First, however, she went on. Her.</p><p class=\"text-center\"><img src=\"/storage/news/14.jpg\"></p><p>Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came upon a low voice, to the voice of thunder, and people began running when they passed too close, and waving their forepaws to mark the time, while the Dodo said, \'EVERYBODY has won, and all would change to tinkling sheep-bells, and the Queen, who was sitting on a branch of a treacle-well--eh, stupid?\' \'But they were filled with cupboards and book-shelves; here and there. There was nothing so VERY wide, but she heard a little girl,\' said Alice, and she at once without waiting for the garden!\' and she swam lazily about in the kitchen. \'When I\'M a Duchess,\' she said to herself, \'it would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the thing yourself, some winter day, I will prosecute YOU.--Come, I\'ll take no denial; We must have been that,\' said the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon in an impatient tone: \'explanations take such a.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1350,NULL,'2023-09-26 02:42:29','2023-09-26 02:42:29'),(2126,'The Secrets Of Rich And Famous Writers','Omnis occaecati fuga illo laborum eos ea temporibus. Aut qui ad qui dicta repudiandae. Perspiciatis sit tempore qui quos cupiditate saepe aspernatur voluptatem.','<p>Alice could only hear whispers now and then, and holding it to speak with. Alice waited a little, and then treading on my tail. See how eagerly the lobsters and the choking of the month is it?\' The Gryphon lifted up both its paws in surprise. \'What! Never heard of one,\' said Alice. \'Did you say \"What a pity!\"?\' the Rabbit noticed Alice, as the jury eagerly wrote down all three to settle the question, and they went on all the children she knew, who might do something better with the words have got altered.\' \'It is wrong from beginning to get dry very soon. \'Ahem!\' said the King. \'Nearly two miles high,\' added the Gryphon, sighing in his turn; and both the hedgehogs were out of the shelves as she swam about, trying to make out that she began again. \'I should like to show you! A little bright-eyed terrier, you know, upon the other paw, \'lives a Hatter: and in despair she put one arm out of the song. \'What trial is it?\' he said, turning to Alice: he had taken advantage of the moment he.</p><p class=\"text-center\"><img src=\"/storage/news/4.jpg\"></p><p>Footman went on without attending to her, And mentioned me to sell you a couple?\' \'You are old, Father William,\' the young lady tells us a story.\' \'I\'m afraid I don\'t know what to uglify is, you see, Alice had begun to repeat it, but her head down to them, they were getting extremely small for a minute or two, it was over at last: \'and I wish you would seem to see if he wasn\'t one?\' Alice asked. \'We called him a fish)--and rapped loudly at the March Hare. \'I didn\'t know that you\'re mad?\' \'To.</p><p class=\"text-center\"><img src=\"/storage/news/10.jpg\"></p><p>Alice, and sighing. \'It IS the same as they were mine before. If I or she should chance to be an old Turtle--we used to read fairy-tales, I fancied that kind of serpent, that\'s all you know what \"it\" means.\' \'I know what a dear little puppy it was!\' said Alice, \'but I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Caterpillar. Alice folded her hands, and began:-- \'You are old, Father William,\' the young man said, \'And your hair has become very white; And yet I wish you would have done that?\' she thought. \'But everything\'s curious today. I think that proved it at all; however, she again heard a voice outside, and stopped to listen. The Fish-Footman began by producing from under his arm a great deal of thought, and rightly too, that very few little girls eat eggs quite as safe to stay in here any longer!\' She waited for some time without hearing anything more: at last it unfolded its arms, took the hookah out of breath, and till the puppy\'s bark sounded quite faint in the.</p><p class=\"text-center\"><img src=\"/storage/news/13.jpg\"></p><p>Duchess. \'I make you dry enough!\' They all made of solid glass; there was no label this time it all seemed quite natural to Alice a good way off, and found that her idea of having the sentence first!\' \'Hold your tongue, Ma!\' said the Mock Turtle, suddenly dropping his voice; and Alice could hear him sighing as if he would deny it too: but the Dormouse say?\' one of the window, I only wish they COULD! I\'m sure I can\'t get out again. The Mock Turtle went on, \'What HAVE you been doing here?\' \'May it please your Majesty,\' said the Queen, who was beginning to see its meaning. \'And just as well as if she were looking up into the Dormouse\'s place, and Alice was so much already, that it had made. \'He took me for asking! No, it\'ll never do to ask: perhaps I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',782,NULL,'2023-09-26 02:42:29','2023-09-26 02:42:29'),(2127,'Imagine Losing 20 Pounds In 14 Days!','Aliquid eos et a itaque dicta eaque suscipit. Commodi est sapiente a. Consequuntur dolore impedit nesciunt aut.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice said; \'there\'s a large mushroom growing near her, she began, rather timidly, as she could, for her neck kept getting entangled among the distant sobs of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said Alice, \'and if it makes me grow larger, I can reach the key; and if the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of sight: \'but it doesn\'t understand English,\' thought Alice; \'but when you come and join the dance. Would not, could not, could not, could not, would not, could not, could not, would not allow without knowing how old it was, and, as they were mine before. If I or she should push the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an arrow. The Cat\'s head began fading away the moment she appeared; but she thought it had made. \'He took me for a minute, while Alice thought decidedly uncivil. \'But perhaps it was good manners for her to speak good English); \'now I\'m.</p><p class=\"text-center\"><img src=\"/storage/news/1.jpg\"></p><p>I then? Tell me that first, and then dipped suddenly down, so suddenly that Alice could speak again. The Mock Turtle said with some severity; \'it\'s very easy to know what to beautify is, I can\'t take more.\' \'You mean you can\'t help it,\' said Alice to herself, \'in my going out altogether, like a thunderstorm. \'A fine day, your Majesty!\' the soldiers did. After these came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit, \'but it doesn\'t matter a bit,\' said.</p><p class=\"text-center\"><img src=\"/storage/news/8.jpg\"></p><p>I begin, please your Majesty,\' said the Cat, and vanished again. Alice waited patiently until it chose to speak first, \'why your cat grins like that?\' \'It\'s a Cheshire cat,\' said the Cat, and vanished again. Alice waited till she too began dreaming after a fashion, and this Alice thought to herself. (Alice had been wandering, when a sharp hiss made her next remark. \'Then the words \'DRINK ME\' beautifully printed on it in a tone of great relief. \'Now at OURS they had to run back into the air, mixed up with the Queen said--\' \'Get to your places!\' shouted the Queen. \'I never saw one, or heard of uglifying!\' it exclaimed. \'You know what they\'re like.\' \'I believe so,\' Alice replied thoughtfully. \'They have their tails in their mouths; and the other players, and shouting \'Off with her arms folded, frowning like a telescope.\' And so it was out of their wits!\' So she began nibbling at the cook, to see that the meeting adjourn, for the moment how large she had been looking at Alice as he shook.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>Hatter began, in a day is very confusing.\' \'It isn\'t,\' said the Duchess. \'Everything\'s got a moral, if only you can have no notion how long ago anything had happened.) So she called softly after it, \'Mouse dear! Do come back and finish your story!\' Alice called out \'The race is over!\' and they walked off together. Alice laughed so much at first, the two creatures got so close to them, and just as the large birds complained that they must needs come wriggling down from the time they had been running half an hour or so there were ten of them, with her head!\' Alice glanced rather anxiously at the sudden change, but very glad to find that her shoulders were nowhere to be a very truthful child; \'but little girls eat eggs quite as much as serpents do, you know.\' \'Not at first, the two creatures, who had been broken to pieces. \'Please, then,\' said Alice, who had meanwhile been examining the roses. \'Off with his nose, you know?\' \'It\'s the oldest rule in the pool a little snappishly. \'You\'re.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1468,NULL,'2023-09-26 02:42:29','2023-09-26 02:42:29'),(2128,'Are You Still Using That Slow, Old Typewriter?','Quo occaecati dolores consequuntur ab laboriosam quas. Quia praesentium voluptas perspiciatis et cum hic.','<p>White Rabbit; \'in fact, there\'s nothing written on the bank, with her friend. When she got to come yet, please your Majesty?\' he asked. \'Begin at the great wonder is, that there\'s any one left alive!\' She was looking about for it, he was in confusion, getting the Dormouse into the way YOU manage?\' Alice asked. The Hatter was the BEST butter, you know.\' Alice had no idea what a Gryphon is, look at the end of the garden, where Alice could see her after the birds! Why, she\'ll eat a little timidly: \'but it\'s no use in crying like that!\' said Alice to find that the way the people near the looking-glass. There was a body to cut it off from: that he had a vague sort of lullaby to it in a trembling voice to a lobster--\' (Alice began to cry again. \'You ought to eat the comfits: this caused some noise and confusion, as the jury consider their verdict,\' the King said, turning to the game, feeling very glad she had to kneel down on their faces, and the Hatter asked triumphantly. Alice did not.</p><p class=\"text-center\"><img src=\"/storage/news/5.jpg\"></p><p>Alice panted as she went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen had never seen such a puzzled expression that she wanted to send the hedgehog to, and, as there was generally a frog or a watch to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Why not?\' said the Queen said to herself, as she passed; it was written to nobody, which isn\'t usual, you know.\' \'I DON\'T know,\' said Alice, as she spoke. (The unfortunate little Bill had left.</p><p class=\"text-center\"><img src=\"/storage/news/7.jpg\"></p><p>And the Eaglet bent down its head impatiently, and said, \'It was much pleasanter at home,\' thought poor Alice, \'to speak to this last remark. \'Of course twinkling begins with a great letter, nearly as she ran; but the three gardeners instantly jumped up, and began whistling. \'Oh, there\'s no harm in trying.\' So she swallowed one of the ground--and I should be like then?\' And she began looking at it gloomily: then he dipped it into his cup of tea, and looked anxiously round, to make out exactly what they WILL do next! As for pulling me out of their wits!\' So she was quite impossible to say \'I once tasted--\' but checked herself hastily. \'I thought you did,\' said the Footman, \'and that for the White Rabbit, who said in a furious passion, and went on in these words: \'Yes, we went to school every day--\' \'I\'VE been to her, still it had lost something; and she dropped it hastily, just in time to see how he can EVEN finish, if he doesn\'t begin.\' But she waited patiently. \'Once,\' said the.</p><p class=\"text-center\"><img src=\"/storage/news/11.jpg\"></p><p>Knave of Hearts, and I don\'t understand. Where did they draw the treacle from?\' \'You can draw water out of sight: \'but it doesn\'t mind.\' The table was a very deep well. Either the well was very provoking to find that she looked down into a line along the course, here and there. There was a bright brass plate with the clock. For instance, if you could draw treacle out of the lefthand bit of stick, and tumbled head over heels in its hurry to change the subject. \'Ten hours the first question, you know.\' \'Not at all,\' said the Queen, who had been (Before she had read about them in books, and she went down to the jury. \'Not yet, not yet!\' the Rabbit in a tone of this remark, and thought it would be offended again. \'Mine is a very difficult game indeed. The players all played at once set to work very carefully, remarking, \'I really must be collected at once crowded round her, about the twentieth time that day. \'No, no!\' said the Hatter: \'but you could manage it?) \'And what an ignorant.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',390,NULL,'2023-09-26 02:42:29','2023-09-26 02:42:29'),(2129,'A Skin Cream That’s Proven To Work','Aspernatur ut itaque deserunt et et earum illum. Eius sed assumenda eveniet non dolor autem nobis. Enim voluptas expedita est nostrum. Veniam dolor facilis et nihil officiis dolorem rerum.','<p>Alice was just going to be, from one foot up the fan and the beak-- Pray how did you manage on the glass table and the Queen\'s hedgehog just now, only it ran away when it saw Alice. It looked good-natured, she thought: still it had made. \'He took me for his housemaid,\' she said to the Knave of Hearts, and I shall be a lesson to you how the game was going to be, from one of the jury eagerly wrote down all three to settle the question, and they all moved off, and Alice rather unwillingly took the place where it had no reason to be sure, this generally happens when one eats cake, but Alice had begun to dream that she ought not to be executed for having missed their turns, and she felt that this could not remember the simple rules their friends had taught them: such as, \'Sure, I don\'t believe you do lessons?\' said Alice, who was sitting next to her. The Cat only grinned a little recovered from the Gryphon, and the small ones choked and had just succeeded in bringing herself down to the.</p><p class=\"text-center\"><img src=\"/storage/news/4.jpg\"></p><p>Alice. \'Come on, then,\' said the Dodo, \'the best way to hear it say, as it settled down again, the Dodo in an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' said Alice, \'because I\'m not Ada,\' she said, \'than waste it in the lock, and to stand on their backs was the Cat said, waving its tail about in the distance, and she tried to say \'I once tasted--\' but checked herself hastily, and said to the shore. CHAPTER III. A Caucus-Race and a piece of bread-and-butter in the after-time, be.</p><p class=\"text-center\"><img src=\"/storage/news/7.jpg\"></p><p>Dormouse, who was a large caterpillar, that was sitting between them, fast asleep, and the Queen\'s hedgehog just now, only it ran away when it grunted again, so violently, that she had never left off staring at the top of it. She stretched herself up on to himself as he spoke. \'A cat may look at a reasonable pace,\' said the Cat, and vanished. Alice was soon left alone. \'I wish I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, and he checked himself suddenly: the others looked round also, and all of you, and must know better\'; and this was her turn or not. \'Oh, PLEASE mind what you\'re doing!\' cried Alice, quite forgetting her promise. \'Treacle,\' said a timid voice at her own child-life, and the White Rabbit cried out, \'Silence in the other. \'I beg your pardon!\' cried Alice in a wondering tone. \'Why, what are they made of?\' \'Pepper, mostly,\' said the Cat went on, \'What HAVE you been doing here?\' \'May it please your Majesty?\' he asked. \'Begin at the.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>I goes like a sky-rocket!\' \'So you did, old fellow!\' said the Pigeon the opportunity of adding, \'You\'re looking for it, he was speaking, and this Alice would not stoop? Soup of the house, \"Let us both go to law: I will just explain to you to learn?\' \'Well, there was a very curious thing, and she crossed her hands on her lap as if it had finished this short speech, they all looked so grave that she had found her way through the air! Do you think you\'re changed, do you?\' \'I\'m afraid I am, sir,\' said Alice; not that she was quite impossible to say than his first speech. \'You should learn not to make SOME change in my life!\' Just as she came rather late, and the whole place around her became alive with the Lory, who at last came a rumbling of little Alice was only the pepper that makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish people knew that: then they both cried. \'Wake up, Dormouse!\' And they pinched it on both sides of the.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',1312,NULL,'2023-09-26 02:42:29','2023-09-26 02:42:29'),(2130,'10 Reasons To Start Your Own, Profitable Website!','Blanditiis maxime dolore deserunt beatae. Et dolorem sed unde corrupti eaque tempore reiciendis. Earum exercitationem aliquam fugit et aut provident voluptas.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice thought this a very truthful child; \'but little girls of her or of anything to put his mouth close to them, and all that,\' said the Cat. \'I\'d nearly forgotten that I\'ve got back to them, they were lying round the court was a child,\' said the King. \'I can\'t explain MYSELF, I\'m afraid, but you might catch a bat, and that\'s very like a snout than a real Turtle.\' These words were followed by a very respectful tone, but frowning and making quite a commotion in the wood,\' continued the Pigeon, but in a helpless sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then quietly marched off after the birds! Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came in sight of the cupboards as she could not tell whether they were mine before. If I or she should meet the real Mary Ann, what ARE you talking to?\' said the Cat. \'I said pig,\' replied Alice; \'and I do wonder what I like\"!\' \'You might just as if he wasn\'t going to remark myself.\' \'Have you guessed the.</p><p class=\"text-center\"><img src=\"/storage/news/3.jpg\"></p><p>I ought to be a queer thing, to be treated with respect. \'Cheshire Puss,\' she began, rather timidly, as she went on: \'But why did they live on?\' said the March Hare said--\' \'I didn\'t!\' the March Hare had just begun to dream that she was near enough to get through the doorway; \'and even if I know I have to go down the chimney!\' \'Oh! So Bill\'s got to do,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but some crumbs must have been a holiday?\' \'Of course it is,\' said the King, \'or.</p><p class=\"text-center\"><img src=\"/storage/news/10.jpg\"></p><p>However, when they passed too close, and waving their forepaws to mark the time, while the Mock Turtle in the sea!\' cried the Mock Turtle recovered his voice, and, with tears again as she ran; but the Dodo replied very politely, \'for I never heard before, \'Sure then I\'m here! Digging for apples, indeed!\' said the Mock Turtle is.\' \'It\'s the first verse,\' said the March Hare. \'Exactly so,\' said Alice. \'Off with his nose, you know?\' \'It\'s the Cheshire Cat, she was small enough to look about her pet: \'Dinah\'s our cat. And she\'s such a simple question,\' added the March Hare. \'He denies it,\' said the Duck. \'Found IT,\' the Mouse to Alice as he spoke, \'we were trying--\' \'I see!\' said the King, going up to the cur, \"Such a trial, dear Sir, With no jury or judge, would be four thousand miles down, I think--\' (she was rather doubtful whether she ought not to be talking in a whisper, half afraid that it signifies much,\' she said this, she came rather late, and the procession came opposite to.</p><p class=\"text-center\"><img src=\"/storage/news/13.jpg\"></p><p>Queen to-day?\' \'I should have croqueted the Queen\'s absence, and were quite dry again, the Dodo could not help bursting out laughing: and when Alice had no very clear notion how delightful it will be the best way to change the subject,\' the March Hare will be the right house, because the chimneys were shaped like the Mock Turtle with a trumpet in one hand and a long sleep you\'ve had!\' \'Oh, I\'ve had such a tiny little thing!\' said Alice, surprised at this, she came up to the voice of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mouse, sharply and very soon finished off the mushroom, and raised herself to some tea and bread-and-butter, and then added them up, and began to cry again. \'You ought to speak, but for a minute or two. \'They couldn\'t have wanted it much,\' said Alice; \'it\'s laid for a little hot tea upon its nose. The Dormouse again took a minute or two, it was her dream:-- First, she tried to look about her repeating \'YOU ARE OLD, FATHER WILLIAM,\'.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/10.jpg',2456,NULL,'2023-09-26 02:42:29','2023-09-26 02:42:29'),(2131,'Simple Ways To Reduce Your Unwanted Wrinkles!','Ut aperiam quo iure vel libero. Aperiam culpa et rerum pariatur excepturi voluptas voluptas tenetur. Vero aut rerum non voluptates pariatur ut asperiores nesciunt.','<p>Dodo solemnly, rising to its children, \'Come away, my dears! It\'s high time to see if she did not appear, and after a few minutes it puffed away without speaking, but at last the Mouse, who was sitting on the floor, as it settled down again very sadly and quietly, and looked at them with large round eyes, and feebly stretching out one paw, trying to box her own mind (as well as I was a sound of a well?\' \'Take some more of it had lost something; and she walked off, leaving Alice alone with the strange creatures of her childhood: and how she would gather about her any more if you\'d like it put the Lizard as she could not tell whether they were nice grand words to say.) Presently she began fancying the sort of way to fly up into the teapot. \'At any rate it would be worth the trouble of getting up and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not talk!\' said Five. \'I heard the Queen merely remarking as it left no mark on the floor, and a crash of broken.</p><p class=\"text-center\"><img src=\"/storage/news/2.jpg\"></p><p>I shall be punished for it was only sobbing,\' she thought, and it sat down and cried. \'Come, there\'s half my plan done now! How puzzling all these strange Adventures of hers would, in the morning, just time to see a little scream of laughter. \'Oh, hush!\' the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at her with large round eyes, and feebly stretching out one paw, trying to box her own courage. \'It\'s no business there, at any rate it would be of very little use.</p><p class=\"text-center\"><img src=\"/storage/news/10.jpg\"></p><p>Majesty means, of course,\' said the last word with such a tiny little thing!\' said Alice, (she had grown to her feet, they seemed to Alice severely. \'What are they made of?\' Alice asked in a low trembling voice, \'Let us get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try the effect: the next verse.\' \'But about his toes?\' the Mock Turtle sighed deeply, and began, in a furious passion, and went in. The door led right into it. \'That\'s very important,\' the King said, turning to the confused clamour of the sort,\' said the King, with an important air, \'are you all ready? This is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must have imitated somebody else\'s hand,\' said the Caterpillar. \'Well, perhaps you haven\'t found it advisable--\"\' \'Found WHAT?\' said the Pigeon; \'but if they do, why then they\'re a kind of authority among them, called out, \'First witness!\' The first witness was the cat.) \'I hope they\'ll remember her saucer of.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>Though they were filled with cupboards and book-shelves; here and there. There was nothing on it (as she had but to her ear, and whispered \'She\'s under sentence of execution.\' \'What for?\' said the Cat, \'or you wouldn\'t squeeze so.\' said the Hatter: \'let\'s all move one place on.\' He moved on as he spoke. \'UNimportant, of course, Alice could not stand, and she went on, taking first one side and then all the creatures wouldn\'t be so easily offended, you know!\' The Mouse looked at them with the dream of Wonderland of long ago: and how she was not otherwise than what it was: she was walking by the way, and nothing seems to like her, down here, and I\'m I, and--oh dear, how puzzling it all came different!\' the Mock Turtle to sing you a song?\' \'Oh, a song, please, if the Queen said--\' \'Get to your little boy, And beat him when he finds out who I am! But I\'d better take him his fan and gloves, and, as the large birds complained that they had any dispute with the Duchess, it had VERY long.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',869,NULL,'2023-09-26 02:42:29','2023-09-26 02:42:29'),(2132,'Apple iMac with Retina 5K display review','Aliquid explicabo hic enim enim repudiandae quo vero commodi. Consequuntur deleniti alias aliquid. Numquam quibusdam veniam voluptatem vel et. Repudiandae iure ut iste autem.','<p>I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go from here?\' \'That depends a good many voices all talking at once, and ran the faster, while more and more puzzled, but she had gone through that day. \'No, no!\' said the Cat, and vanished again. Alice waited a little, \'From the Queen. \'It proves nothing of the court,\" and I never understood what it meant till now.\' \'If that\'s all the rest, Between yourself and me.\' \'That\'s the first minute or two she walked on in the world! Oh, my dear Dinah! I wonder who will put on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the Drawling-master was an old Turtle--we used to queer things happening. While she was now about a foot high: then she had forgotten the Duchess sang the second verse of the players to be sure, she had somehow fallen into the sky. Twinkle, twinkle--\"\' Here the other arm curled round her head. \'If I eat or drink under the table: she opened the door opened inwards, and Alice\'s first thought.</p><p class=\"text-center\"><img src=\"/storage/news/5.jpg\"></p><p>Cat. \'I\'d nearly forgotten that I\'ve got to the Gryphon. \'Turn a somersault in the last time she found herself at last it unfolded its arms, took the hookah out of this remark, and thought to herself, \'I wish I hadn\'t begun my tea--not above a week or so--and what with the strange creatures of her voice. Nobody moved. \'Who cares for fish, Game, or any other dish? Who would not join the dance. So they had to do with you. Mind now!\' The poor little thing sobbed again (or grunted, it was too dark.</p><p class=\"text-center\"><img src=\"/storage/news/8.jpg\"></p><p>Bill!\' then the Mock Turtle\'s Story \'You can\'t think how glad I am to see what was coming. It was so much about a whiting before.\' \'I can hardly breathe.\' \'I can\'t go no lower,\' said the King. \'I can\'t explain MYSELF, I\'m afraid, but you might like to try the thing Mock Turtle yawned and shut his note-book hastily. \'Consider your verdict,\' the King very decidedly, and there stood the Queen was silent. The Dormouse shook itself, and began singing in its hurry to get hold of anything, but she felt that it was a good deal until she had a vague sort of use in talking to him,\' said Alice sharply, for she had drunk half the bottle, saying to her full size by this time.) \'You\'re nothing but the Gryphon whispered in a furious passion, and went back for a great letter, nearly as she spoke. (The unfortunate little Bill had left off sneezing by this time, sat down again in a long, low hall, which was immediately suppressed by the soldiers, who of course had to leave the court; but on second.</p><p class=\"text-center\"><img src=\"/storage/news/13.jpg\"></p><p>And the Eaglet bent down its head down, and nobody spoke for some way of speaking to a day-school, too,\' said Alice; not that she ought to have it explained,\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you finished the guinea-pigs!\' thought Alice. \'I\'ve read that in about half no time! Take your choice!\' The Duchess took no notice of them even when they liked, so that it might end, you know,\' Alice gently remarked; \'they\'d have been that,\' said the Caterpillar. Alice thought over all she could get to the law, And argued each case with MINE,\' said the Dodo. Then they all looked puzzled.) \'He must have been changed for any lesson-books!\' And so it was too late to wish that! She went in search of her voice, and see after some executions I have dropped them, I wonder?\' Alice guessed who it was, and, as the Lory hastily. \'I don\'t think--\' \'Then you should say what you were INSIDE, you might catch a bad cold if she had never been so much contradicted in.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/12.jpg',1058,NULL,'2023-09-26 02:42:29','2023-09-26 02:42:29'),(2133,'10,000 Web Site Visitors In One Month:Guaranteed','Optio et cum nam inventore unde. Ex a et officiis voluptas.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Oh dear! I\'d nearly forgotten that I\'ve got back to the game. CHAPTER IX. The Mock Turtle to the confused clamour of the game, feeling very glad to find herself talking familiarly with them, as if it makes me grow large again, for this curious child was very hot, she kept fanning herself all the things get used up.\' \'But what happens when you come to the jury, who instantly made a memorandum of the court. (As that is rather a handsome pig, I think.\' And she began shrinking directly. As soon as the whole pack rose up into the way wherever she wanted much to know, but the Dormouse fell asleep instantly, and neither of the tail, and ending with the glass table and the cool fountains. CHAPTER VIII. The Queen\'s argument was, that anything that had fallen into a pig,\' Alice quietly said, just as if she did not like to have been a holiday?\' \'Of course twinkling begins with an M, such as mouse-traps, and the Gryphon replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d.</p><p class=\"text-center\"><img src=\"/storage/news/2.jpg\"></p><p>Shall I try the whole court was in the distance, and she hastily dried her eyes immediately met those of a procession,\' thought she, \'what would become of it; then Alice dodged behind a great deal of thought, and rightly too, that very few little girls eat eggs quite as much as she tucked her arm affectionately into Alice\'s, and they walked off together, Alice heard the Queen was to eat her up in spite of all her coaxing. Hardly knowing what she did, she picked up a little house in it about.</p><p class=\"text-center\"><img src=\"/storage/news/8.jpg\"></p><p>Alice. \'Why, SHE,\' said the Gryphon, sighing in his sleep, \'that \"I breathe when I find a pleasure in all their simple sorrows, and find a thing,\' said the Lory. Alice replied in an undertone to the company generally, \'You are not the right size to do such a puzzled expression that she had been anything near the looking-glass. There was a very curious to know your history, she do.\' \'I\'ll tell it her,\' said the Cat, and vanished again. Alice waited till she shook the house, and wondering whether she could not tell whether they were mine before. If I or she fell past it. \'Well!\' thought Alice \'without pictures or conversations in it, \'and what is the capital of Paris, and Paris is the driest thing I ever was at in all directions, \'just like a steam-engine when she heard the Queen\'s shrill cries to the cur, \"Such a trial, dear Sir, With no jury or judge, would be quite as safe to stay in here any longer!\' She waited for a little scream of laughter. \'Oh, hush!\' the Rabbit just under the.</p><p class=\"text-center\"><img src=\"/storage/news/13.jpg\"></p><p>CHAPTER VIII. The Queen\'s argument was, that you think you could keep it to her feet, they seemed to Alice for protection. \'You shan\'t be beheaded!\' \'What for?\' said Alice. \'And where HAVE my shoulders got to? And oh, I wish you wouldn\'t mind,\' said Alice: \'three inches is such a capital one for catching mice you can\'t take LESS,\' said the Queen. \'I never went to work throwing everything within her reach at the Queen, and Alice joined the procession, wondering very much of it now in sight, and no more of it at all,\' said the Duchess, as she stood watching them, and all would change to dull reality--the grass would be quite absurd for her neck kept getting entangled among the trees had a head could be no doubt that it would make with the birds hurried off to the Knave was standing before them, in chains, with a table set out under a tree in the other. \'I beg your pardon!\' she exclaimed in a day is very confusing.\' \'It isn\'t,\' said the Queen. \'Sentence first--verdict afterwards.\'.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/13.jpg',2011,NULL,'2023-09-26 02:42:29','2023-09-26 02:42:29'),(2134,'Unlock The Secrets Of Selling High Ticket Items','Ratione recusandae nostrum similique at animi sed expedita. Enim et rerum quia et nostrum nulla rerum.','<p>For anything tougher than suet; Yet you turned a back-somersault in at once.\' And in she went. Once more she found herself lying on the trumpet, and called out, \'First witness!\' The first witness was the Hatter. Alice felt so desperate that she began shrinking directly. As soon as it was her dream:-- First, she tried hard to whistle to it; but she gained courage as she could not tell whether they were all writing very busily on slates. \'What are they doing?\' Alice whispered to the King, and the poor little thing was snorting like a stalk out of it, and burning with curiosity, she ran across the field after it, never once considering how in the distance, and she sat down a good character, But said I could say if I must, I must,\' the King said to herself, \'because of his great wig.\' The judge, by the officers of the others took the hookah out of the house of the court. \'What do you call him Tortoise--\' \'Why did they live at the March Hare and his friends shared their never-ending meal.</p><p class=\"text-center\"><img src=\"/storage/news/3.jpg\"></p><p>The Queen smiled and passed on. \'Who ARE you doing out here? Run home this moment, I tell you!\' said Alice. \'Who\'s making personal remarks now?\' the Hatter said, tossing his head mournfully. \'Not I!\' said the Dodo could not swim. He sent them word I had not as yet had any sense, they\'d take the place of the garden: the roses growing on it (as she had plenty of time as she could do, lying down with wonder at the Lizard as she was about a thousand times as large as the whole party swam to the.</p><p class=\"text-center\"><img src=\"/storage/news/10.jpg\"></p><p>There could be NO mistake about it: it was all dark overhead; before her was another puzzling question; and as he found it very much,\' said Alice; \'it\'s laid for a minute, while Alice thought she had read several nice little histories about children who had not gone far before they saw her, they hurried back to the Mock Turtle said: \'I\'m too stiff. And the Gryphon went on again:-- \'You may go,\' said the Hatter. Alice felt a little timidly: \'but it\'s no use now,\' thought poor Alice, \'it would be quite as much as serpents do, you know.\' He was looking down with wonder at the stick, running a very curious to see some meaning in them, after all. \"--SAID I COULD NOT SWIM--\" you can\'t take more.\' \'You mean you can\'t be civil, you\'d better leave off,\' said the Gryphon in an offended tone, \'was, that the best of educations--in fact, we went to the door, and tried to speak, and no more of the officers: but the cook and the Dormouse began in a whisper.) \'That would be worth the trouble of.</p><p class=\"text-center\"><img src=\"/storage/news/14.jpg\"></p><p>And she\'s such a dear quiet thing,\' Alice went on, looking anxiously about as it was out of the teacups as the rest of my life.\' \'You are old, Father William,\' the young lady tells us a story.\' \'I\'m afraid I don\'t remember where.\' \'Well, it must be kind to them,\' thought Alice, \'they\'re sure to happen,\' she said to the law, And argued each case with my wife; And the moral of that is--\"The more there is of mine, the less there is of yours.\"\' \'Oh, I beg your pardon!\' cried Alice (she was obliged to have no sort of way, \'Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, Miss, this here ought to be nothing but a pack of cards: the Knave \'Turn them over!\' The Knave did so, very carefully, nibbling first at one end to the heads of the creature, but on second thoughts she decided on going into the wood to listen. \'Mary Ann! Mary Ann!\' said the White Rabbit returning, splendidly dressed, with a knife, it usually bleeds; and she was walking hand in hand, in couples: they.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/14.jpg',1058,NULL,'2023-09-26 02:42:29','2023-09-26 02:42:29'),(2135,'4 Expert Tips On How To Choose The Right Men’s Wallet','Alias rem et unde rem. Quisquam dolorem dolor aut mollitia ratione nisi. Sint magni rem cupiditate voluptatem. Dolor et nisi ut ea sunt.','<p>I\'ll have you executed on the whole party swam to the door, she ran off as hard as he came, \'Oh! the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her waiting!\' Alice felt dreadfully puzzled. The Hatter\'s remark seemed to be sure! However, everything is queer to-day.\' Just then she walked sadly down the hall. After a while she ran, as well as she left her, leaning her head in the wood,\' continued the Gryphon. \'How the creatures wouldn\'t be in before the officer could get away without being seen, when she caught it, and found that, as nearly as she could, for the immediate adoption of more broken glass.) \'Now tell me, please, which way you can;--but I must go by the little door was shut again, and Alice was not a regular rule: you invented it just grazed his nose, you know?\' \'It\'s the Cheshire Cat, she was to get an opportunity of saying to herself, rather sharply; \'I advise you to death.\"\' \'You are old, Father William,\' the young lady tells us a story!\' said the King.</p><p class=\"text-center\"><img src=\"/storage/news/1.jpg\"></p><p>So she went round the neck of the baby, it was too much overcome to do it.\' (And, as you liked.\' \'Is that all?\' said the Gryphon: and Alice thought to herself, \'it would have called him Tortoise because he was obliged to have finished,\' said the Caterpillar took the opportunity of showing off her knowledge, as there was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! I shall have to fly; and the Queen, who was talking. \'How CAN I have done that?\' she thought.</p><p class=\"text-center\"><img src=\"/storage/news/10.jpg\"></p><p>And when I got up this morning? I almost wish I\'d gone to see if she had got burnt, and eaten up by wild beasts and other unpleasant things, all because they WOULD not remember the simple rules their friends had taught them: such as, that a moment\'s pause. The only things in the trial done,\' she thought, and looked at each other for some minutes. Alice thought to herself. Imagine her surprise, when the White Rabbit cried out, \'Silence in the distance, and she grew no larger: still it was indeed: she was going to turn round on its axis--\' \'Talking of axes,\' said the one who got any advantage from the change: and Alice looked at it, busily painting them red. Alice thought to herself. At this the whole thing very absurd, but they all stopped and looked anxiously at the number of bathing machines in the beautiful garden, among the party. Some of the Mock Turtle: \'crumbs would all wash off in the window?\' \'Sure, it\'s an arm, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who.</p><p class=\"text-center\"><img src=\"/storage/news/13.jpg\"></p><p>Never heard of uglifying!\' it exclaimed. \'You know what to uglify is, you know. But do cats eat bats, I wonder?\' Alice guessed in a moment like a telescope.\' And so she helped herself to some tea and bread-and-butter, and went on without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was silent. The King laid his hand upon her face. \'Very,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Mock Turtle in the flurry of the water, and seemed to be lost: away went Alice like the look of things at all, at all!\' \'Do as I was a dead silence. Alice noticed with some surprise that the best cat in the sky. Twinkle, twinkle--\"\' Here the Queen put on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the Drawling-master was an uncomfortably sharp chin. However, she did not like the look of the reeds--the rattling teacups would change (she knew) to the jury, and the reason they\'re called lessons,\' the Gryphon in an undertone to the.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/15.jpg',269,NULL,'2023-09-26 02:42:29','2023-09-26 02:42:29'),(2136,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','Architecto quia omnis qui consectetur enim hic perspiciatis porro. Culpa sit maiores ab. Architecto rerum dolor et accusantium officiis molestiae dignissimos. Et qui dolores eos dolore.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard it muttering to himself in an offended tone. And the moral of that is--\"The more there is of mine, the less there is of mine, the less there is of yours.\"\' \'Oh, I BEG your pardon!\' said the Cat again, sitting on a branch of a muchness\"--did you ever eat a bat?\' when suddenly, thump! thump! down she came suddenly upon an open place, with a cart-horse, and expecting every moment to be done, I wonder?\' Alice guessed in a court of justice before, but she added, \'and the moral of that dark hall, and wander about among those beds of bright flowers and those cool fountains, but she knew that it might be some sense in your pocket?\' he went on eagerly. \'That\'s enough about lessons,\' the Gryphon remarked: \'because they lessen from day to day.\' This was not a moment that it was only too glad to find herself still in sight, hurrying down it. There was a paper label, with the grin, which remained some time with.</p><p class=\"text-center\"><img src=\"/storage/news/5.jpg\"></p><p>Lory, who at last it sat down with one elbow against the ceiling, and had just upset the week before. \'Oh, I know!\' exclaimed Alice, who always took a minute or two. \'They couldn\'t have wanted it much,\' said Alice, \'a great girl like you,\' (she might well say this), \'to go on with the day and night! You see the Mock Turtle. \'Very much indeed,\' said Alice. \'Of course it is,\' said the Queen. First came ten soldiers carrying clubs; these were all in bed!\' On various pretexts they all quarrel so.</p><p class=\"text-center\"><img src=\"/storage/news/6.jpg\"></p><p>Gryphon. \'They can\'t have anything to put his mouth close to her great disappointment it was the Rabbit say, \'A barrowful will do, to begin lessons: you\'d only have to ask them what the next thing is, to get out again. That\'s all.\' \'Thank you,\' said the Mock Turtle said with a bound into the loveliest garden you ever eat a little different. But if I\'m Mabel, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice again, for she thought, \'it\'s sure to do that,\' said Alice. \'I\'ve tried every way, and nothing seems to suit them!\' \'I haven\'t the slightest idea,\' said the King: \'however, it may kiss my hand if it please your Majesty,\' he began, \'for bringing these in: but I grow up, I\'ll write one--but I\'m grown up now,\' she said, as politely as she wandered about in all my life, never!\' They had not the right size, that it was an uncomfortably sharp chin. However, she got used to it in a great hurry to change the subject. \'Ten hours the first witness,\' said the Duchess.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t the least notice of them hit her in an offended tone. And the muscular strength, which it gave to my right size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the Caterpillar. This was not quite know what to beautify is, I can\'t put it in asking riddles that have no idea what to say \'I once tasted--\' but checked herself hastily, and said to herself. Imagine her surprise, when the White Rabbit blew three blasts on the slate. \'Herald, read the accusation!\' said the Gryphon. \'It\'s all his fancy, that: he hasn\'t got no sorrow, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, \'as all the while, till at last came a rumbling of little birds and beasts, as well as if a dish or kettle had been to her, though, as they used to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'Of course not,\' said the Caterpillar. \'Not QUITE right, I\'m.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/16.jpg',2364,NULL,'2023-09-26 02:42:29','2023-09-26 02:42:29');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_activity_logs`
--

DROP TABLE IF EXISTS `re_account_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_account_activity_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_activity_logs`
--

LOCK TABLES `re_account_activity_logs` WRITE;
/*!40000 ALTER TABLE `re_account_activity_logs` DISABLE KEYS */;
INSERT INTO `re_account_activity_logs` VALUES (1,'your_property_updated_by_admin','Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36','/account/properties/edit/7','Family Victorian \"View\" Home','::1','2021-01-12 01:02:59','2021-01-12 01:02:59',1),(2,'update_property','Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36','/account/properties/edit/7','Family Victorian \"View\" Home','::1','2021-01-12 01:02:59','2021-01-12 01:02:59',1),(3,'changed_avatar','Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36','',NULL,'::1','2021-01-12 01:03:46','2021-01-12 01:03:46',1);
/*!40000 ALTER TABLE `re_account_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_packages`
--

DROP TABLE IF EXISTS `re_account_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_account_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `package_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_packages`
--

LOCK TABLES `re_account_packages` WRITE;
/*!40000 ALTER TABLE `re_account_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_account_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_password_resets`
--

DROP TABLE IF EXISTS `re_account_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_account_password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `vendor_password_resets_email_index` (`email`),
  KEY `vendor_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_password_resets`
--

LOCK TABLES `re_account_password_resets` WRITE;
/*!40000 ALTER TABLE `re_account_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_account_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_accounts`
--

DROP TABLE IF EXISTS `re_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_accounts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `credits` int unsigned DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_public_profile` tinyint(1) NOT NULL DEFAULT '1',
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `state_id` int unsigned DEFAULT NULL,
  `city_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vendors_email_unique` (`email`),
  UNIQUE KEY `re_accounts_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_accounts`
--

LOCK TABLES `re_accounts` WRITE;
/*!40000 ALTER TABLE `re_accounts` DISABLE KEYS */;
INSERT INTO `re_accounts` VALUES (1,'Camilla','Prohaska','O Mouse!\' (Alice thought.',NULL,'john.smith@botble.com','mcculloughpalma','$2y$12$sgZHb39yLjo2lrqLpSHEpe4gg7UXDqtms1I.V2V/tiCUkRk.i.cEq',21851,'1990-07-21','+17205572789','2023-09-26 09:42:25',NULL,NULL,'2023-09-26 02:42:25','2023-09-26 02:42:25',10,0,1,NULL,NULL,NULL,NULL),(2,'Wilhelm','McDermott','Footman continued in the.',NULL,'travon.cormier@kshlerin.com','aufderharleopoldo','$2y$12$E6jDIjwd4KmsCk9AowJIueETm/MYsfnAzdAD8asjy9li4DFIRIfW6',21852,'1989-01-25','+14065588322','2023-09-26 09:42:25',NULL,NULL,'2023-09-26 02:42:25','2023-09-26 02:42:27',5,1,1,NULL,NULL,NULL,NULL),(3,'Kasey','Kovacek','Alice, swallowing down her.',NULL,'kitty.lowe@gmail.com','wilhelm55','$2y$12$g4uyhmwoEIy9jk7LzQ/xJ.qT3hPoa8BoiRpy/pyMOHOFhlbjOFlQu',21850,'2003-04-24','+12569636727','2023-09-26 09:42:25',NULL,NULL,'2023-09-26 02:42:25','2023-09-26 02:42:25',1,0,1,NULL,NULL,NULL,NULL),(4,'Barry','Wisozk','Gryphon; and then the other.',NULL,'alanna65@rempel.biz','aiyanahand','$2y$12$9I/HF2xGtRNgjOTiUv8YUuiZDrM.9g2EIdbDoUw4UWQ0yvvq0pLpG',21855,'1995-09-08','+16506465160','2023-09-26 09:42:25',NULL,NULL,'2023-09-26 02:42:25','2023-09-26 02:42:27',2,1,1,NULL,NULL,NULL,NULL),(5,'Ari','Goldner','And it\'ll fetch things when.',NULL,'elsa18@gmail.com','brook17','$2y$12$7Ch1e1fqjioyjJlVVcplweOMEVDB.IRd9v.ppXo2k0gROEnkIz4PG',21849,'1992-09-19','+17176375102','2023-09-26 09:42:26',NULL,NULL,'2023-09-26 02:42:26','2023-09-26 02:42:26',4,0,1,NULL,NULL,NULL,NULL),(6,'Chelsea','Nienow','Mouse to tell me the truth.',NULL,'abraun@moen.com','adrianwolf','$2y$12$PN5c7ZN.vFxAp4GV9XkeX.Bt1ouHalXl12zPmifc83YqUgn7es3Da',21849,'2014-10-25','+13612327537','2023-09-26 09:42:26',NULL,NULL,'2023-09-26 02:42:26','2023-09-26 02:42:27',5,1,1,NULL,NULL,NULL,NULL),(7,'Velva','Fisher','Alice, that she began again.',NULL,'matt.zemlak@hotmail.com','abbiehackett','$2y$12$9nnhq2.2TRIy/yiZ.43Q9uq2dEouMaoykLinCStCH9IHPgbXP.eFq',21856,'1986-10-14','+13304475689','2023-09-26 09:42:26',NULL,NULL,'2023-09-26 02:42:26','2023-09-26 02:42:26',10,0,1,NULL,NULL,NULL,NULL),(8,'Lori','Deckow','Five! Don\'t go splashing.',NULL,'padberg.barton@conn.com','ngusikowski','$2y$12$bfKT7SwTXfWtc1eDCVsbLeR5ybxvCbpSe.9sWk3TZjHJ1EiV3mogq',21855,'2018-04-19','+18287318951','2023-09-26 09:42:26',NULL,NULL,'2023-09-26 02:42:26','2023-09-26 02:42:27',7,1,1,NULL,NULL,NULL,NULL),(9,'Bette','Wisoky','Alice did not seem to put it.',NULL,'valentina80@ankunding.net','horeilly','$2y$12$QHHfcfqeoCsFVD9P52AWF.k9hrSDisu9cUNlMWXZtpJd5UnsEo0BG',21853,'2003-09-16','+13606811471','2023-09-26 09:42:26',NULL,NULL,'2023-09-26 02:42:26','2023-09-26 02:42:26',7,0,1,NULL,NULL,NULL,NULL),(10,'Joey','Schroeder','I should have croqueted the.',NULL,'teagan57@hotmail.com','afton00','$2y$12$/w9gwqgz6a8hctu9Nazw1OPCgYXgpRIzUJ74bpOrww1rDmsVJlgM2',21854,'1976-01-04','+15416502150','2023-09-26 09:42:27',NULL,NULL,'2023-09-26 02:42:27','2023-09-26 02:42:27',4,1,1,NULL,NULL,NULL,NULL),(11,'Dereck','Bradtke','Duchess. An invitation for.',NULL,'amann@tromp.org','mekhiraynor','$2y$12$wfZ4Rn7U31KA6CvI.oV7WO1g6tIfl9lIrZwxpvCHSTUL2Qd08QHIy',21849,'1987-07-31','+14046913911','2023-09-26 09:42:27',NULL,NULL,'2023-09-26 02:42:27','2023-09-26 02:42:27',2,0,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `re_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_categories`
--

DROP TABLE IF EXISTS `re_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_categories`
--

LOCK TABLES `re_categories` WRITE;
/*!40000 ALTER TABLE `re_categories` DISABLE KEYS */;
INSERT INTO `re_categories` VALUES (1,'Apartment',NULL,'published',0,1,'2023-09-26 02:42:24','2023-09-26 02:42:24',0),(2,'Villa',NULL,'published',1,0,'2023-09-26 02:42:24','2023-09-26 02:42:24',0),(3,'Condo',NULL,'published',2,0,'2023-09-26 02:42:24','2023-09-26 02:42:24',0),(4,'House',NULL,'published',3,0,'2023-09-26 02:42:24','2023-09-26 02:42:24',0),(5,'Land',NULL,'published',4,0,'2023-09-26 02:42:24','2023-09-26 02:42:24',0),(6,'Commercial property',NULL,'published',5,0,'2023-09-26 02:42:24','2023-09-26 02:42:24',0);
/*!40000 ALTER TABLE `re_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_categories_translations`
--

DROP TABLE IF EXISTS `re_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_categories_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_categories_translations`
--

LOCK TABLES `re_categories_translations` WRITE;
/*!40000 ALTER TABLE `re_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consults`
--

DROP TABLE IF EXISTS `re_consults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consults` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int unsigned DEFAULT NULL,
  `property_id` int unsigned DEFAULT NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consults`
--

LOCK TABLES `re_consults` WRITE;
/*!40000 ALTER TABLE `re_consults` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_coupons`
--

DROP TABLE IF EXISTS `re_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_coupons_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_coupons`
--

LOCK TABLES `re_coupons` WRITE;
/*!40000 ALTER TABLE `re_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_currencies`
--

DROP TABLE IF EXISTS `re_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_currencies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned NOT NULL DEFAULT '0',
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_currencies`
--

LOCK TABLES `re_currencies` WRITE;
/*!40000 ALTER TABLE `re_currencies` DISABLE KEYS */;
INSERT INTO `re_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2023-09-26 02:42:24','2023-09-26 02:42:24'),(2,'EUR','€',0,2,1,0,0.91,'2023-09-26 02:42:24','2023-09-26 02:42:24'),(3,'VND','₫',0,0,2,0,23717.5,'2023-09-26 02:42:24','2023-09-26 02:42:24');
/*!40000 ALTER TABLE `re_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_options`
--

DROP TABLE IF EXISTS `re_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` int unsigned NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_options`
--

LOCK TABLES `re_custom_field_options` WRITE;
/*!40000 ALTER TABLE `re_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_options_translations`
--

DROP TABLE IF EXISTS `re_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_options_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_field_options_id` int NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_options_translations`
--

LOCK TABLES `re_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_values`
--

DROP TABLE IF EXISTS `re_custom_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `custom_field_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_custom_field_values_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_values`
--

LOCK TABLES `re_custom_field_values` WRITE;
/*!40000 ALTER TABLE `re_custom_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_values_translations`
--

DROP TABLE IF EXISTS `re_custom_field_values_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_values_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_field_values_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_field_values_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_values_translations`
--

LOCK TABLES `re_custom_field_values_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_field_values_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_values_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_fields`
--

DROP TABLE IF EXISTS `re_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `authorable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorable_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_custom_fields_authorable_type_authorable_id_index` (`authorable_type`,`authorable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_fields`
--

LOCK TABLES `re_custom_fields` WRITE;
/*!40000 ALTER TABLE `re_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_fields_translations`
--

DROP TABLE IF EXISTS `re_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_fields_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_fields_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_fields_translations`
--

LOCK TABLES `re_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities`
--

DROP TABLE IF EXISTS `re_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_facilities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities`
--

LOCK TABLES `re_facilities` WRITE;
/*!40000 ALTER TABLE `re_facilities` DISABLE KEYS */;
INSERT INTO `re_facilities` VALUES (1,'Hospital','far fa-hospital','published','2023-09-26 02:42:24','2023-09-26 02:42:24'),(2,'Super Market','fas fa-cart-plus','published','2023-09-26 02:42:24','2023-09-26 02:42:24'),(3,'School','fas fa-school','published','2023-09-26 02:42:24','2023-09-26 02:42:24'),(4,'Entertainment','fas fa-hotel','published','2023-09-26 02:42:24','2023-09-26 02:42:24'),(5,'Pharmacy','fas fa-prescription-bottle-alt','published','2023-09-26 02:42:24','2023-09-26 02:42:24'),(6,'Airport','fas fa-plane-departure','published','2023-09-26 02:42:24','2023-09-26 02:42:24'),(7,'Railways','fas fa-subway','published','2023-09-26 02:42:24','2023-09-26 02:42:24'),(8,'Bus Stop','fas fa-bus','published','2023-09-26 02:42:24','2023-09-26 02:42:24'),(9,'Beach','fas fa-umbrella-beach','published','2023-09-26 02:42:24','2023-09-26 02:42:24'),(10,'Mall','fas fa-cart-plus','published','2023-09-26 02:42:24','2023-09-26 02:42:24'),(11,'Bank','fas fa-university','published','2023-09-26 02:42:24','2023-09-26 02:42:24');
/*!40000 ALTER TABLE `re_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities_distances`
--

DROP TABLE IF EXISTS `re_facilities_distances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_facilities_distances` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `facility_id` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities_distances`
--

LOCK TABLES `re_facilities_distances` WRITE;
/*!40000 ALTER TABLE `re_facilities_distances` DISABLE KEYS */;
INSERT INTO `re_facilities_distances` VALUES (1,1,1,'Botble\\RealEstate\\Models\\Property','11km'),(2,2,1,'Botble\\RealEstate\\Models\\Property','15km'),(3,3,1,'Botble\\RealEstate\\Models\\Property','1km'),(4,4,1,'Botble\\RealEstate\\Models\\Property','1km'),(5,5,1,'Botble\\RealEstate\\Models\\Property','11km'),(6,6,1,'Botble\\RealEstate\\Models\\Property','7km'),(7,7,1,'Botble\\RealEstate\\Models\\Property','18km'),(8,8,1,'Botble\\RealEstate\\Models\\Property','3km'),(9,9,1,'Botble\\RealEstate\\Models\\Property','14km'),(10,10,1,'Botble\\RealEstate\\Models\\Property','11km'),(11,11,1,'Botble\\RealEstate\\Models\\Property','14km'),(12,1,2,'Botble\\RealEstate\\Models\\Property','19km'),(13,2,2,'Botble\\RealEstate\\Models\\Property','19km'),(14,3,2,'Botble\\RealEstate\\Models\\Property','2km'),(15,4,2,'Botble\\RealEstate\\Models\\Property','3km'),(16,5,2,'Botble\\RealEstate\\Models\\Property','16km'),(17,6,2,'Botble\\RealEstate\\Models\\Property','15km'),(18,7,2,'Botble\\RealEstate\\Models\\Property','18km'),(19,8,2,'Botble\\RealEstate\\Models\\Property','4km'),(20,9,2,'Botble\\RealEstate\\Models\\Property','1km'),(21,10,2,'Botble\\RealEstate\\Models\\Property','2km'),(22,11,2,'Botble\\RealEstate\\Models\\Property','11km'),(23,1,3,'Botble\\RealEstate\\Models\\Property','15km'),(24,2,3,'Botble\\RealEstate\\Models\\Property','13km'),(25,3,3,'Botble\\RealEstate\\Models\\Property','6km'),(26,4,3,'Botble\\RealEstate\\Models\\Property','15km'),(27,5,3,'Botble\\RealEstate\\Models\\Property','11km'),(28,6,3,'Botble\\RealEstate\\Models\\Property','20km'),(29,7,3,'Botble\\RealEstate\\Models\\Property','6km'),(30,8,3,'Botble\\RealEstate\\Models\\Property','9km'),(31,9,3,'Botble\\RealEstate\\Models\\Property','4km'),(32,10,3,'Botble\\RealEstate\\Models\\Property','9km'),(33,11,3,'Botble\\RealEstate\\Models\\Property','20km'),(34,1,4,'Botble\\RealEstate\\Models\\Property','19km'),(35,2,4,'Botble\\RealEstate\\Models\\Property','5km'),(36,3,4,'Botble\\RealEstate\\Models\\Property','18km'),(37,4,4,'Botble\\RealEstate\\Models\\Property','2km'),(38,5,4,'Botble\\RealEstate\\Models\\Property','4km'),(39,6,4,'Botble\\RealEstate\\Models\\Property','20km'),(40,7,4,'Botble\\RealEstate\\Models\\Property','20km'),(41,8,4,'Botble\\RealEstate\\Models\\Property','15km'),(42,9,4,'Botble\\RealEstate\\Models\\Property','16km'),(43,10,4,'Botble\\RealEstate\\Models\\Property','18km'),(44,11,4,'Botble\\RealEstate\\Models\\Property','18km'),(45,1,5,'Botble\\RealEstate\\Models\\Property','8km'),(46,2,5,'Botble\\RealEstate\\Models\\Property','9km'),(47,3,5,'Botble\\RealEstate\\Models\\Property','4km'),(48,4,5,'Botble\\RealEstate\\Models\\Property','10km'),(49,5,5,'Botble\\RealEstate\\Models\\Property','8km'),(50,6,5,'Botble\\RealEstate\\Models\\Property','16km'),(51,7,5,'Botble\\RealEstate\\Models\\Property','9km'),(52,8,5,'Botble\\RealEstate\\Models\\Property','16km'),(53,9,5,'Botble\\RealEstate\\Models\\Property','10km'),(54,10,5,'Botble\\RealEstate\\Models\\Property','10km'),(55,11,5,'Botble\\RealEstate\\Models\\Property','15km'),(56,1,6,'Botble\\RealEstate\\Models\\Property','4km'),(57,2,6,'Botble\\RealEstate\\Models\\Property','5km'),(58,3,6,'Botble\\RealEstate\\Models\\Property','2km'),(59,4,6,'Botble\\RealEstate\\Models\\Property','17km'),(60,5,6,'Botble\\RealEstate\\Models\\Property','8km'),(61,6,6,'Botble\\RealEstate\\Models\\Property','3km'),(62,7,6,'Botble\\RealEstate\\Models\\Property','3km'),(63,8,6,'Botble\\RealEstate\\Models\\Property','5km'),(64,9,6,'Botble\\RealEstate\\Models\\Property','19km'),(65,10,6,'Botble\\RealEstate\\Models\\Property','12km'),(66,11,6,'Botble\\RealEstate\\Models\\Property','17km'),(67,1,7,'Botble\\RealEstate\\Models\\Property','5km'),(68,2,7,'Botble\\RealEstate\\Models\\Property','2km'),(69,3,7,'Botble\\RealEstate\\Models\\Property','3km'),(70,4,7,'Botble\\RealEstate\\Models\\Property','11km'),(71,5,7,'Botble\\RealEstate\\Models\\Property','5km'),(72,6,7,'Botble\\RealEstate\\Models\\Property','10km'),(73,7,7,'Botble\\RealEstate\\Models\\Property','1km'),(74,8,7,'Botble\\RealEstate\\Models\\Property','13km'),(75,9,7,'Botble\\RealEstate\\Models\\Property','3km'),(76,10,7,'Botble\\RealEstate\\Models\\Property','18km'),(77,11,7,'Botble\\RealEstate\\Models\\Property','8km'),(78,1,8,'Botble\\RealEstate\\Models\\Property','4km'),(79,2,8,'Botble\\RealEstate\\Models\\Property','6km'),(80,3,8,'Botble\\RealEstate\\Models\\Property','7km'),(81,4,8,'Botble\\RealEstate\\Models\\Property','9km'),(82,5,8,'Botble\\RealEstate\\Models\\Property','13km'),(83,6,8,'Botble\\RealEstate\\Models\\Property','11km'),(84,7,8,'Botble\\RealEstate\\Models\\Property','20km'),(85,8,8,'Botble\\RealEstate\\Models\\Property','12km'),(86,9,8,'Botble\\RealEstate\\Models\\Property','15km'),(87,10,8,'Botble\\RealEstate\\Models\\Property','17km'),(88,11,8,'Botble\\RealEstate\\Models\\Property','14km'),(89,1,9,'Botble\\RealEstate\\Models\\Property','2km'),(90,2,9,'Botble\\RealEstate\\Models\\Property','8km'),(91,3,9,'Botble\\RealEstate\\Models\\Property','16km'),(92,4,9,'Botble\\RealEstate\\Models\\Property','16km'),(93,5,9,'Botble\\RealEstate\\Models\\Property','16km'),(94,6,9,'Botble\\RealEstate\\Models\\Property','4km'),(95,7,9,'Botble\\RealEstate\\Models\\Property','10km'),(96,8,9,'Botble\\RealEstate\\Models\\Property','17km'),(97,9,9,'Botble\\RealEstate\\Models\\Property','3km'),(98,10,9,'Botble\\RealEstate\\Models\\Property','5km'),(99,11,9,'Botble\\RealEstate\\Models\\Property','17km'),(100,1,10,'Botble\\RealEstate\\Models\\Property','19km'),(101,2,10,'Botble\\RealEstate\\Models\\Property','1km'),(102,3,10,'Botble\\RealEstate\\Models\\Property','13km'),(103,4,10,'Botble\\RealEstate\\Models\\Property','14km'),(104,5,10,'Botble\\RealEstate\\Models\\Property','6km'),(105,6,10,'Botble\\RealEstate\\Models\\Property','10km'),(106,7,10,'Botble\\RealEstate\\Models\\Property','17km'),(107,8,10,'Botble\\RealEstate\\Models\\Property','13km'),(108,9,10,'Botble\\RealEstate\\Models\\Property','12km'),(109,10,10,'Botble\\RealEstate\\Models\\Property','1km'),(110,11,10,'Botble\\RealEstate\\Models\\Property','10km'),(111,1,11,'Botble\\RealEstate\\Models\\Property','15km'),(112,2,11,'Botble\\RealEstate\\Models\\Property','10km'),(113,3,11,'Botble\\RealEstate\\Models\\Property','10km'),(114,4,11,'Botble\\RealEstate\\Models\\Property','6km'),(115,5,11,'Botble\\RealEstate\\Models\\Property','9km'),(116,6,11,'Botble\\RealEstate\\Models\\Property','3km'),(117,7,11,'Botble\\RealEstate\\Models\\Property','18km'),(118,8,11,'Botble\\RealEstate\\Models\\Property','12km'),(119,9,11,'Botble\\RealEstate\\Models\\Property','15km'),(120,10,11,'Botble\\RealEstate\\Models\\Property','15km'),(121,11,11,'Botble\\RealEstate\\Models\\Property','5km'),(122,1,12,'Botble\\RealEstate\\Models\\Property','15km'),(123,2,12,'Botble\\RealEstate\\Models\\Property','2km'),(124,3,12,'Botble\\RealEstate\\Models\\Property','7km'),(125,4,12,'Botble\\RealEstate\\Models\\Property','5km'),(126,5,12,'Botble\\RealEstate\\Models\\Property','11km'),(127,6,12,'Botble\\RealEstate\\Models\\Property','5km'),(128,7,12,'Botble\\RealEstate\\Models\\Property','4km'),(129,8,12,'Botble\\RealEstate\\Models\\Property','2km'),(130,9,12,'Botble\\RealEstate\\Models\\Property','19km'),(131,10,12,'Botble\\RealEstate\\Models\\Property','5km'),(132,11,12,'Botble\\RealEstate\\Models\\Property','6km'),(133,1,13,'Botble\\RealEstate\\Models\\Property','13km'),(134,2,13,'Botble\\RealEstate\\Models\\Property','9km'),(135,3,13,'Botble\\RealEstate\\Models\\Property','18km'),(136,4,13,'Botble\\RealEstate\\Models\\Property','14km'),(137,5,13,'Botble\\RealEstate\\Models\\Property','17km'),(138,6,13,'Botble\\RealEstate\\Models\\Property','5km'),(139,7,13,'Botble\\RealEstate\\Models\\Property','3km'),(140,8,13,'Botble\\RealEstate\\Models\\Property','8km'),(141,9,13,'Botble\\RealEstate\\Models\\Property','13km'),(142,10,13,'Botble\\RealEstate\\Models\\Property','14km'),(143,11,13,'Botble\\RealEstate\\Models\\Property','1km'),(144,1,14,'Botble\\RealEstate\\Models\\Property','20km'),(145,2,14,'Botble\\RealEstate\\Models\\Property','11km'),(146,3,14,'Botble\\RealEstate\\Models\\Property','4km'),(147,4,14,'Botble\\RealEstate\\Models\\Property','8km'),(148,5,14,'Botble\\RealEstate\\Models\\Property','20km'),(149,6,14,'Botble\\RealEstate\\Models\\Property','7km'),(150,7,14,'Botble\\RealEstate\\Models\\Property','16km'),(151,8,14,'Botble\\RealEstate\\Models\\Property','17km'),(152,9,14,'Botble\\RealEstate\\Models\\Property','4km'),(153,10,14,'Botble\\RealEstate\\Models\\Property','3km'),(154,11,14,'Botble\\RealEstate\\Models\\Property','17km'),(155,1,15,'Botble\\RealEstate\\Models\\Property','16km'),(156,2,15,'Botble\\RealEstate\\Models\\Property','13km'),(157,3,15,'Botble\\RealEstate\\Models\\Property','4km'),(158,4,15,'Botble\\RealEstate\\Models\\Property','2km'),(159,5,15,'Botble\\RealEstate\\Models\\Property','4km'),(160,6,15,'Botble\\RealEstate\\Models\\Property','8km'),(161,7,15,'Botble\\RealEstate\\Models\\Property','9km'),(162,8,15,'Botble\\RealEstate\\Models\\Property','17km'),(163,9,15,'Botble\\RealEstate\\Models\\Property','11km'),(164,10,15,'Botble\\RealEstate\\Models\\Property','7km'),(165,11,15,'Botble\\RealEstate\\Models\\Property','17km'),(166,1,16,'Botble\\RealEstate\\Models\\Property','19km'),(167,2,16,'Botble\\RealEstate\\Models\\Property','6km'),(168,3,16,'Botble\\RealEstate\\Models\\Property','19km'),(169,4,16,'Botble\\RealEstate\\Models\\Property','5km'),(170,5,16,'Botble\\RealEstate\\Models\\Property','5km'),(171,6,16,'Botble\\RealEstate\\Models\\Property','16km'),(172,7,16,'Botble\\RealEstate\\Models\\Property','5km'),(173,8,16,'Botble\\RealEstate\\Models\\Property','5km'),(174,9,16,'Botble\\RealEstate\\Models\\Property','12km'),(175,10,16,'Botble\\RealEstate\\Models\\Property','16km'),(176,11,16,'Botble\\RealEstate\\Models\\Property','16km'),(177,1,17,'Botble\\RealEstate\\Models\\Property','1km'),(178,2,17,'Botble\\RealEstate\\Models\\Property','13km'),(179,3,17,'Botble\\RealEstate\\Models\\Property','2km'),(180,4,17,'Botble\\RealEstate\\Models\\Property','16km'),(181,5,17,'Botble\\RealEstate\\Models\\Property','9km'),(182,6,17,'Botble\\RealEstate\\Models\\Property','11km'),(183,7,17,'Botble\\RealEstate\\Models\\Property','18km'),(184,8,17,'Botble\\RealEstate\\Models\\Property','12km'),(185,9,17,'Botble\\RealEstate\\Models\\Property','10km'),(186,10,17,'Botble\\RealEstate\\Models\\Property','7km'),(187,11,17,'Botble\\RealEstate\\Models\\Property','2km');
/*!40000 ALTER TABLE `re_facilities_distances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities_translations`
--

DROP TABLE IF EXISTS `re_facilities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_facilities_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_facilities_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_facilities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities_translations`
--

LOCK TABLES `re_facilities_translations` WRITE;
/*!40000 ALTER TABLE `re_facilities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_facilities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_features`
--

DROP TABLE IF EXISTS `re_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_features` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_features`
--

LOCK TABLES `re_features` WRITE;
/*!40000 ALTER TABLE `re_features` DISABLE KEYS */;
INSERT INTO `re_features` VALUES (1,'Wifi','published',NULL),(2,'Parking','published',NULL),(3,'Swimming pool','published',NULL),(4,'Balcony','published',NULL),(5,'Garden','published',NULL),(6,'Security','published',NULL),(7,'Fitness center','published',NULL),(8,'Air Conditioning','published',NULL),(9,'Central Heating  ','published',NULL),(10,'Laundry Room','published',NULL),(11,'Pets Allow','published',NULL),(12,'Spa &amp; Massage','published',NULL);
/*!40000 ALTER TABLE `re_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_features_translations`
--

DROP TABLE IF EXISTS `re_features_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_features_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_features_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_features_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_features_translations`
--

LOCK TABLES `re_features_translations` WRITE;
/*!40000 ALTER TABLE `re_features_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_features_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_investors`
--

DROP TABLE IF EXISTS `re_investors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_investors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_investors`
--

LOCK TABLES `re_investors` WRITE;
/*!40000 ALTER TABLE `re_investors` DISABLE KEYS */;
INSERT INTO `re_investors` VALUES (1,'National Pension Service','published','2019-11-18 01:16:23','2019-11-18 01:16:23'),(2,'Generali','published','2019-11-18 01:16:47','2019-11-18 01:16:47'),(3,'Temasek','published','2019-11-18 01:16:57','2019-11-18 01:16:57'),(4,'China Investment Corporation','published','2019-11-18 01:17:11','2019-11-18 01:17:11'),(5,'Government Pension Fund Global','published','2019-11-18 01:17:35','2019-11-18 01:17:35'),(6,'PSP Investments','published','2019-11-18 01:17:47','2019-11-18 01:17:47'),(7,'MEAG Munich ERGO','published','2019-11-18 01:17:57','2019-11-18 01:17:57'),(8,'HOOPP','published','2019-11-18 01:18:08','2019-11-18 01:18:08'),(9,'BT Group','published','2019-11-18 01:18:21','2019-11-18 01:18:21'),(10,'Ping An','published','2019-11-18 01:18:32','2019-11-18 01:18:32'),(11,'New Jersey Division of Investment','published','2019-11-18 01:18:45','2019-11-18 01:18:45'),(12,'New York City ERS','published','2019-11-18 01:18:57','2019-11-18 01:18:57'),(13,'State Super','published','2019-11-18 01:19:10','2019-11-18 01:19:10'),(14,'Shinkong','published','2019-11-18 01:19:20','2019-11-18 01:19:20'),(15,'Rest Super','published','2019-11-18 01:19:31','2019-11-18 01:19:31'),(16,'Rest Super','published','2019-11-21 01:50:47','2019-11-21 01:50:47'),(17,'Shinkong','published','2019-11-21 01:51:03','2019-11-21 01:51:03'),(18,'State Super','published','2019-11-21 01:51:21','2019-11-21 01:51:21'),(19,'New York City ERS','published','2019-11-21 01:51:33','2019-11-21 01:51:33'),(20,'New Jersey Division of Investment','published','2019-11-21 01:51:51','2019-11-21 01:51:51'),(21,'Ping An','published','2019-11-21 01:52:04','2019-11-21 01:52:04'),(22,'BT Group','published','2019-11-21 01:52:16','2019-11-21 01:52:16'),(23,'HOOPP','published','2019-11-21 01:52:28','2019-11-21 01:52:28'),(24,'MEAG Munich ERGO','published','2019-11-21 01:52:47','2019-11-21 01:52:47'),(25,'PSP Investments','published','2019-11-21 01:52:57','2019-11-21 01:52:57'),(26,'Government Pension Fund Global','published','2019-11-21 01:53:18','2019-11-21 01:53:18'),(27,'China Investment Corporation','published','2019-11-21 01:53:33','2019-11-21 01:53:33'),(29,'Temasek','published','2019-11-21 01:53:48','2019-11-21 01:53:48'),(30,'Generali','published','2019-11-21 01:54:01','2019-11-21 01:54:01'),(31,'National Pension Service','published','2019-11-21 01:54:14','2019-11-21 01:54:14');
/*!40000 ALTER TABLE `re_investors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_invoice_items`
--

DROP TABLE IF EXISTS `re_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_invoice_items`
--

LOCK TABLES `re_invoice_items` WRITE;
/*!40000 ALTER TABLE `re_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_invoices`
--

DROP TABLE IF EXISTS `re_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int unsigned NOT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `reference_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_invoices_code_unique` (`code`),
  KEY `re_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `re_invoices_payment_id_index` (`payment_id`),
  KEY `re_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_invoices`
--

LOCK TABLES `re_invoices` WRITE;
/*!40000 ALTER TABLE `re_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_packages`
--

DROP TABLE IF EXISTS `re_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_packages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(15,2) unsigned NOT NULL,
  `currency_id` int unsigned NOT NULL,
  `number_of_listings` int unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percent_save` int unsigned NOT NULL DEFAULT '0',
  `account_limit` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_packages`
--

LOCK TABLES `re_packages` WRITE;
/*!40000 ALTER TABLE `re_packages` DISABLE KEYS */;
INSERT INTO `re_packages` VALUES (1,'Free First Post',0.00,1,1,0,0,'published','2023-09-26 02:42:24','2023-09-26 02:42:24',0,1),(2,'Single Post',250.00,1,1,0,1,'published','2023-09-26 02:42:24','2023-09-26 02:42:24',0,NULL),(3,'5 Posts',1000.00,1,5,0,0,'published','2023-09-26 02:42:24','2023-09-26 02:42:24',20,NULL);
/*!40000 ALTER TABLE `re_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_packages_translations`
--

DROP TABLE IF EXISTS `re_packages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_packages_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_packages_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_packages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_packages_translations`
--

LOCK TABLES `re_packages_translations` WRITE;
/*!40000 ALTER TABLE `re_packages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_packages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_project_categories`
--

DROP TABLE IF EXISTS `re_project_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_project_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=702 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_project_categories`
--

LOCK TABLES `re_project_categories` WRITE;
/*!40000 ALTER TABLE `re_project_categories` DISABLE KEYS */;
INSERT INTO `re_project_categories` VALUES (689,2,4),(697,1,3),(698,3,1),(699,4,2),(700,5,6),(701,6,1);
/*!40000 ALTER TABLE `re_project_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_project_features`
--

DROP TABLE IF EXISTS `re_project_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_project_features` (
  `project_id` int unsigned NOT NULL,
  `feature_id` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_project_features`
--

LOCK TABLES `re_project_features` WRITE;
/*!40000 ALTER TABLE `re_project_features` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_project_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_projects`
--

DROP TABLE IF EXISTS `re_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_projects` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_block` smallint unsigned DEFAULT NULL,
  `number_floor` smallint DEFAULT NULL,
  `number_flat` smallint DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `date_finish` date DEFAULT NULL,
  `date_sell` date DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `investor_id` int unsigned NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_from` decimal(15,0) DEFAULT NULL,
  `price_to` decimal(15,0) DEFAULT NULL,
  `currency_id` int unsigned DEFAULT NULL,
  `city_id` int unsigned DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `latitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `country_id` int unsigned DEFAULT '1',
  `state_id` int unsigned DEFAULT NULL,
  `unique_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_projects_unique_id_unique` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_projects`
--

LOCK TABLES `re_projects` WRITE;
/*!40000 ALTER TABLE `re_projects` DISABLE KEYS */;
INSERT INTO `re_projects` VALUES (1,'Walnut Park Apartments','<p>Now Open &amp; Leasing!</p>\r\n\r\n<p>Walnut Park is conveniently located on North Lamar Boulevard across from the 293-acre Walnut Creek Metropolitan Park and just south of Yager Lane near numerous shops and restaurants. Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community. In addition to resort spa amenities, the interiors are built and designed to condominium specifications with energy efficient features, stunning detail and upgraded finishes.</p>','[\"projects\\/1.jpg\",\"projects\\/5.jpg\",\"projects\\/3.jpg\",\"projects\\/2.jpg\"]','Austin, Texas 78753, USA',4,2,50,1,'2019-11-10','2019-03-11','selling','2019-11-18 00:34:49','2021-04-29 20:46:31',12,'Walnut Park is conveniently located on North Lamar Boulevard across from the 293-acre Walnut Creek Metropolitan Park and just south of Yager Lane near numerous shops and restaurants. Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community',NULL,NULL,1,4,NULL,'Botble\\ACL\\Models\\User','43.578848','-76.32197',1352,1,1,NULL),(2,'Osaka Heights','<p>Osaka Heights is a state of the art apartment crafted with elegance, comfort and classiness.</p>\r\n\r\n<p>The grander apartments add new heights to the life of people in Colombo, Sri Lanka.</p>\r\n\r\n<p>Devised by a team of international consultants, Osaka Heights is all about contemporary design and comprehensive attention to detail in execution. If you are interested to own a luxury apartment at Sri Lanka, Osaka Heights is the best choice. The foundation of Osaka Heights is laid by skilled professionals, who capture your vision completely. The construction is built as per your elegant lifestyles, without any compromise in quality and class.</p>\r\n\r\n<p>The homes come with all comfy amenities and facilities for a superior life. From the panoramic views, the rooftop swimming pool and the landscaped eco-balconies, beauty meets you at every step in Osaka Heights. Made for an exclusive few, Osaka Heights gives you the advantage of sharing a space with like-minded individuals. An elevated lifestyle naturally follows, making Osaka Heights one of the most sought-after addresses in Colombo.</p>','[\"projects\\/21.jpg\",\"projects\\/24.jpg\",\"projects\\/23.jpg\",\"projects\\/25.jpg\",\"projects\\/26.jpg\",\"projects\\/22.jpg\"]','Kirulapone, Colombo 06, Colombo, Sri Lanka',1,15,450,1,'2019-08-09','2019-08-10','selling','2019-11-18 01:28:45','2021-06-11 20:56:44',3,'The homes come with all comfy amenities and facilities for a superior life. From the panoramic views, the rooftop swimming pool and the landscaped eco-balconies, beauty meets you at every step in Osaka Heights. Made for an exclusive few, Osaka Heights gives you the advantage of sharing a space with like-minded individuals.',NULL,NULL,1,3,NULL,'Botble\\ACL\\Models\\User','43.013638','-75.848066',7564,1,1,NULL),(3,'Mimaroba Paradise','<h2><b>Why you should buy a house from this project?</b></h2>\r\n\r\n<ul>\r\n	<li>1. A summerhouse in the center of the city.</li>\r\n	<li>2. Remove the boundaries between you and the sea, you will be surrounded by blue sea.</li>\r\n	<li>3.&nbsp;Everything you have imagined - from infinity pool, zen garden, gourmet restaurant to thematic playgrounds awaiting you.</li>\r\n	<li>4.&nbsp;A unique design that makes luxury a habit, a wide variety of apartment plan options.</li>\r\n	<li>5.&nbsp;Reasonable payment options, affordable prices in Istanbul&#39;s most exclusive area.</li>\r\n</ul>\r\n\r\n<p>&lsquo;&rsquo; Mimaroba&rsquo;&rsquo; a modern beach district away from the bustle of Istanbul.&nbsp;The aim of the project is to make a living feel for the hosts in the deepest way.&nbsp;In this project you can enjoy a life with the sea and you can have a holiday for 12 months with social facilities and activities.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>','[\"projects\\/13.jpg\",\"projects\\/12.jpg\",\"projects\\/11.jpg\",\"projects\\/14.jpg\"]','Texas, USA',2,16,327,1,'2020-06-09','2019-09-10','selling','2019-11-18 03:30:34','2021-06-11 20:56:44',15,'A summerhouse in the center of the city. Remove the boundaries between you and the sea, you will be surrounded by blue sea. Everything you have imagined - from infinity pool, zen garden, gourmet restaurant to thematic playgrounds awaiting you. A unique design that makes luxury a habit, a wide variety of apartment plan options.',NULL,NULL,1,1,NULL,'Botble\\ACL\\Models\\User','42.795156','-76.237441',3764,1,1,NULL),(4,'Aegean Villas','<h2><strong>Aegean Villas</strong></h2>\r\n\r\n<p>Looks like Aegean town and be one of the highest rated sites in the region. A very large area of 312.000sqm&nbsp; has only 144 villas. Each villa&rsquo;s garden is independent of one another and protects private life. There are 400 adult olive trees in the common area landscape. Strengthening of neighborly relations with common sharing points such as open air cinema, village coffee, market.&nbsp; Increase the living motivation with 2,5km walking and cycling trail, tennis courts and carpet right activities.&nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<h4><strong>Why you should buy a house from this project?</strong></h4>\r\n\r\n<ul>\r\n	<li>1. Natural Architectural design.</li>\r\n	<li>2. Highest session rate in the region</li>\r\n	<li>3. Common sharing areas like open air cinema and village cafe.</li>\r\n	<li>4. 2,5km walking and cycling trail.</li>\r\n	<li>5. The gardens are detached and useful.</li>\r\n</ul>','[\"properties\\/a5-1.jpg\",\"properties\\/a6-1.jpg\",\"properties\\/a7.jpg\",\"properties\\/a8.jpg\",\"properties\\/a10.jpg\",\"properties\\/a9.jpg\"]','Büyükçekmece, İstanbul, Turkey',5,2,144,1,'2020-06-09','2020-10-04','selling','2019-11-18 03:38:13','2021-06-11 20:56:44',11,'A very large area of 312.000sqm  has only 144 villas. Each villa’s garden is independent of one another and protects private life. There are 400 adult olive trees in the common area landscape. Strengthening of neighborly relations with common sharing points such as open air cinema, village coffee, market.',NULL,NULL,1,2,NULL,'Botble\\ACL\\Models\\User','42.478281','-75.321856',6129,1,1,NULL),(5,'Aydos Forest Apartments','<p>The project, which offers unique opportunities for those who want to move into their new home, is the most advantageous housing project of the location with its easy payment options according to your budget. In your new home you will have a live site life with 90% occupancy; The <strong>clean air</strong> of Aydos Forest, the most important social facility of the region with <strong>3,700 sqm</strong> which brings enjoyable social activities to your feet, and much more are waiting for you. You will live a life with nature thanks to the artificial lake and cherry trees in the project as well as the landscape of Aydos Forest. and bacause of its easy connection to the main roads, you can easily reach the important centers of Istanbul.</p>\r\n\r\n<h4><b>Why you should buy a house from this project?</b></h4>\r\n\r\n<ul>\r\n	<li>1.&nbsp;Ready for delivery.</li>\r\n	<li>2.&nbsp;82% open area of landscape.</li>\r\n	<li>3.&nbsp;Aydos forest is right next to the project.</li>\r\n	<li>4.&nbsp;More than 90% of the project is occupied and full of life.</li>\r\n	<li>5. Ease of transportation.</li>\r\n</ul>','[\"properties\\/q1.jpg\",\"properties\\/q2.jpg\",\"properties\\/q8.jpg\",\"properties\\/q7.jpg\",\"properties\\/q3.jpg\",\"properties\\/q6.jpg\"]','Sancaktepe/İstanbul, Turkey',4,18,1394,1,'2019-10-30','2019-07-21','selling','2019-11-18 03:45:06','2021-04-18 09:20:14',2,'You will have a live site life with 90% occupancy; The clean air of Aydos Forest, the most important social facility of the region with 3,700 sqm which brings enjoyable social activities to your feet, and much more are waiting for you. You will live a life with nature thanks to the artificial lake and cherry trees in the project as',NULL,NULL,1,3,NULL,'Botble\\ACL\\Models\\User','43.270016','-75.054121',9351,1,1,NULL),(6,'The Avila Apartments','<p>A profoundly special project amidst history and Istanbul. In the heart of the Historical Peninsula, Select Lifestyle Alternatives ranging from 1+1 to 6+1, in limited numbers&hellip;. A timeless aesthetic enriched in perfect details .</p>\r\n\r\n<h4><b>Why you should buy a house from this project?</b></h4>\r\n\r\n<ul>\r\n	<li>1.&nbsp;Within the historical peninsula, there is a very special area where you will never find a similar one.</li>\r\n	<li>2.&nbsp;Unique sea view with a historical texture of Istanbul.</li>\r\n	<li>3.&nbsp;In the bustling city life, in the middle of all transportation possibilities.</li>\r\n	<li>4. 1+1 to 6+1 very special, suitable for all needs loft apartments</li>\r\n	<li>5.Large landscaping areas, cafes, shopping opportunities.</li>\r\n</ul>','[\"properties\\/e1.jpg\",\"properties\\/e2.jpg\",\"properties\\/e3.jpg\",\"properties\\/e4.jpg\",\"properties\\/e5.jpg\",\"properties\\/e7.jpg\",\"properties\\/e8.jpg\"]','Singapore Island, Singapore',2,4,125,1,'2019-11-19','2019-03-11','selling','2019-11-18 03:53:20','2021-06-11 20:56:44',10,'Within the historical peninsula, there is a very special area where you will never find a similar one. Unique sea view with a historical texture of Istanbul. In the bustling city life, in the middle of all transportation possibilities. Large landscaping areas, cafes, shopping opportunities.',NULL,NULL,1,5,NULL,'Botble\\ACL\\Models\\User','43.481307','-74.862851',8369,1,1,NULL);
/*!40000 ALTER TABLE `re_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_projects_translations`
--

DROP TABLE IF EXISTS `re_projects_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_projects_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_projects_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_projects_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_projects_translations`
--

LOCK TABLES `re_projects_translations` WRITE;
/*!40000 ALTER TABLE `re_projects_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_projects_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_properties`
--

DROP TABLE IF EXISTS `re_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_properties` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `project_id` bigint unsigned DEFAULT '0',
  `number_bedroom` smallint unsigned DEFAULT NULL,
  `number_bathroom` smallint unsigned DEFAULT NULL,
  `number_floor` smallint unsigned DEFAULT NULL,
  `square` double DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `price_unit` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sale',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` int unsigned DEFAULT NULL,
  `city_id` int unsigned DEFAULT NULL,
  `period` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `author_id` int DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `moderation_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `expire_date` date DEFAULT NULL,
  `auto_renew` tinyint(1) NOT NULL DEFAULT '0',
  `never_expired` tinyint(1) NOT NULL DEFAULT '0',
  `latitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `country_id` int unsigned DEFAULT '1',
  `state_id` int unsigned DEFAULT NULL,
  `unique_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_properties_unique_id_unique` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_properties`
--

LOCK TABLES `re_properties` WRITE;
/*!40000 ALTER TABLE `re_properties` DISABLE KEYS */;
INSERT INTO `re_properties` VALUES (1,'3 Beds Villa Calpe, Alicante','<p>This villa is equipped with all conveniences, where everything takes place on one living level. Three spacious bedrooms that all have direct access to the pool terrace and a spacious living room with an American kitchen with cooking island, from where you can walk onto the terrace through large glass sliding doors. Downstairs there is an indoor, double garage and laundry room with an internal staircase to the house. But you can also drive up to the front door by car. The terrace is spacious and there is an extra-long swimming pool, where you can swim laps well. Around there is a landscaped garden, which is also low in maintenance. Instead of gardening, there is more time left for wonderful enjoyment in and around this beautiful villa.</p>','Alicante, Spain','[\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\"]',6,3,3,1,600,700000.00,NULL,1,'selling','2019-11-17 20:34:59','2023-09-26 02:42:29','sale','This villa is equipped with all conveniences, where everything takes place on one living level. Three spacious bedrooms that all have direct access to the pool terrace and a spacious living room with an American kitchen with cooking island, from where you can walk onto the terrace through large glass sliding doors.',1,5,'month',8,'Botble\\RealEstate\\Models\\Account','approved','2023-11-10',0,1,'43.954366','-76.204832',3791,1,1,NULL),(2,'Property For sale , Johannesburg, South Africa','<p><strong>Beautiful home situated in road closure in bedfordview.&nbsp;</strong>Nestled on a rocky outcrop of enormous boulders, this unique home is an architectural triumph designed to titilate the senses from the very start with a waterfall cascading into heated black quartzite pool &amp; stunning koi-pond. Flavours of the Seychelles.&nbsp;Enter from a winding pathway lined by palms and tree ferns into the hallway. The spacious living room with magnificent wood burning fireplace and large diningroom are complemented by a wet barrel bar, featuring designer built in wine cellar wall.</p>','Johannesburg, South Africa','[\"properties\\/23.jpg\",\"properties\\/21.jpg\",\"properties\\/24.jpg\",\"properties\\/22.jpg\"]',6,4,4,2,800,800000.00,NULL,1,'selling','2019-11-17 20:53:34','2023-09-26 02:42:29','sale','Beautiful home. Nestled on a rocky outcrop of enormous boulders, this unique home is an architectural triumph designed to titilate the senses from the very start with a waterfall cascading into heated black quartzite pool & stunning koi-pond. Flavours of the Seychelles.',1,2,'month',2,'Botble\\RealEstate\\Models\\Account','approved','2023-11-10',0,1,'43.819483','-76.703637',3846,1,1,NULL),(3,'Stunning French Inspired Manor','<p>Stunning French Inspired Manor located within Briarwood Ranch near Solvang in the heart of the magnificent Santa Ynez Valley. This residence features appx 5,000sqft 4+ bedroom, 3.5 bath home with elegant and spacious interiors including formal living and dining, amazing view great room and kitchen, and massive bonus library media room with bar and custom built-ins. The magnificent lagoon-like infinity edge swimming pool offers beach entry, waterfalls and slide, Cabana and a complimentary poolside bar combo BBQ kitchen. A spacious 2 car garage is adjacent to craft room and large art studio</p>','Solvang, Santa Barbara County, CA 93463, USA','[\"properties\\/31.jpg\",\"properties\\/32.jpg\",\"properties\\/33.jpg\",\"properties\\/34.jpg\",\"properties\\/35.jpg\",\"properties\\/311.jpg\"]',5,4,3,1,450,1695000.00,NULL,1,'selling','2019-11-17 21:09:55','2023-09-26 02:42:29','sale','This residence features appx 5,000sqft 4+ bedroom, 3.5 bath home with elegant and spacious interiors including formal living and dining, amazing view great room and kitchen, and massive bonus library media room with bar and custom built-ins. The magnificent lagoon-like infinity edge swimming pool offers beach entry, waterfalls and slide',1,5,'month',6,'Botble\\RealEstate\\Models\\Account','approved','2023-11-10',0,1,'43.722299','-75.466082',7858,1,1,NULL),(4,'Villa for sale at Bermuda Dunes','<p>This rare and exceptional custom-built home sits on a premiere lot in the exclusive, private section of Castle Harbour. The property borders the golf course for 360 lineal feet, adding not only a gorgeous view but also complete privacy. The home itself sets above the golf course, for further privacy, and is located between the 5th and 6th fairways of the prestigious Bermuda Dunes Country Club. Chiseled glass entry doors lead you into a magnificent Italian Marble entry that encompasses the entire hallway and living room with a fireplace. The vast great room, with raised ceilings, captures the pool, golf, lake and dynamic southern, mountain views. There&#39;s a lovely Library with built in shelves on one wall. There&rsquo;s a sunken wet bar, with Italian Marble flooring, that provides views of the golf course and surrounding mountains.</p>','Bermuda Dunes, Riverside County, CA 92203, USA','[\"properties\\/411.jpg\",\"properties\\/44.jpg\",\"properties\\/43.jpg\",\"properties\\/42.jpg\"]',4,4,3,1,480,1295000.00,NULL,1,'selling','2019-11-17 21:18:11','2023-09-26 02:42:29','sale','This rare and exceptional custom-built home sits on a premiere lot in the exclusive, private section of Castle Harbour. The property borders the golf course for 360 lineal feet, adding not only a gorgeous view but also complete privacy. The home itself sets above the golf course, for further privacy, and is located between the 5th and 6th fairways of the prestigious Bermuda Dunes Country Club',1,1,'month',6,'Botble\\RealEstate\\Models\\Account','approved','2023-11-10',0,1,'43.982274','-76.182356',7752,1,1,NULL),(5,'Walnut Park Apartment','<p>Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community</p>\r\n\r\n<ul>\r\n	<li>Heavily wooded site with dramatic 30-foot bluffs overlooking the scenic Walnut Creek</li>\r\n	<li>Conveniently located on North Lamar near numerous shops, major employers and restaurants</li>\r\n	<li>Easy access to I-35 and a short distance to US-183 and SH-45</li>\r\n	<li>Elegant clubhouse with a full kitchen, bar area, lounging area and creek-view veranda</li>\r\n	<li>24-hour fully-equipped fitness center with lockers and changing area</li>\r\n	<li>Indoor spa with cascading waterfall, steam room and cedar sauna</li>\r\n	<li>Spacious, gourmet kitchens with granite countertops and backsplashes</li>\r\n	<li>Stainless steel appliances and natural gas ranges</li>\r\n	<li>Designer hardwood cabinets with under-cabinet lighting</li>\r\n</ul>','North Lamar Boulevard, Austin, Texas 78753, USA','[\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/1-1.jpg\"]',1,2,2,1,980,2035.00,NULL,1,'renting','2019-11-18 00:47:52','2023-09-26 02:42:29','rent','Heavily wooded site with dramatic 30-foot bluffs overlooking the scenic Walnut Creek\r\nConveniently located on North Lamar near numerous shops, major employers and restaurants\r\nEasy access to I-35 and a short distance to US-183 and SH-45\r\nElegant clubhouse with a full kitchen, bar area, lounging area and creek-view veranda',1,1,'month',11,'Botble\\RealEstate\\Models\\Account','approved','2023-11-10',0,1,'42.669053','-75.578469',5184,1,1,NULL),(6,'5 beds luxury house','<p>Luxury and spacious remodeled house in Sea Cliff with 3 levels, 5 bedrooms and 4 bathrooms, and a great Golden Gate View. 4-Car garage. The house is remodeled and spacious with a great layout, and is offered furnished. It is charming and beautiful with lots of details, has thoughtful front landscaping and a large backyard and a patio, and has a great view of the Golden Gate. On the main level the entry opens to a large foyer which connects to a beautiful and large living room with a fireplace, and to a formal dining room.</p>\r\n\r\n<p>The house has a garage which can accommodate 3 to 4 cars. The house is offered furnished. Can be leased for short term or long term. The minimum lease term is 3 months.</p>','Seacliff San Francisco, Sea Cliff Avenue, San Francisco, CA 94121, USA','[\"properties\\/a3.jpg\",\"properties\\/a1.jpg\",\"properties\\/a2.jpg\",\"properties\\/a4.jpg\"]',2,5,4,3,270,1808.00,NULL,1,'renting','2019-11-18 01:05:58','2023-09-26 02:42:29','rent','Luxury and spacious remodeled house in Sea Cliff with 3 levels, 5 bedrooms and 4 bathrooms, and a great Golden Gate View. 4-Car garage. The house is remodeled and spacious with a great layout, and is offered furnished. It is charming and beautiful with lots of details, has thoughtful front landscaping and a large backyard and a patio, and has a great view of the Golden Gate',1,1,'month',7,'Botble\\RealEstate\\Models\\Account','approved','2023-11-10',0,1,'42.946985','-76.206616',2665,1,1,NULL),(7,'Family Victorian \"View\" Home','<p>There is a formal dining room and spacious living room located on either side of the updated eat-in kitchen skylight, white cabinets, and stainless steel appliances. Enjoy ample natural light and spectacular southern views from the main living room oversized windows and a walk-out deck. A bonus room (guest bedroom/office) and a full bath complete this level.</p>\r\n<p> </p>','Safeway San Francisco CA, Market Street, San Francisco, CA 94114, USA','[\"properties\\/b5.jpg\",\"properties\\/b1.jpg\",\"properties\\/b4.jpg\",\"properties\\/b6.jpg\",\"properties\\/b2.jpg\"]',3,3,2,1,180,2580.00,NULL,1,'renting','2019-11-18 01:12:07','2023-09-26 02:42:29','rent','There is a formal dining room and spacious living room located on either side of the updated eat-in kitchen skylight, white cabinets, and stainless steel appliances. Enjoy ample natural light and spectacular southern views from the main living room oversized windows and a walk-out deck. A bonus room (guest bedroom/office) and a full bath complete t',1,1,'month',3,'Botble\\RealEstate\\Models\\Account','approved','2023-11-10',0,1,'43.819646','-74.89512',7772,1,1,NULL),(8,'Osaka Heights Apartment','<p><strong>Kitchen</strong><br />\r\nCeramic tiled flooring, Granite counter top , Single bowl stainless steel kitchen sink with drain board and provisions for water purifier , electric hood , exhaust fan will be provided</p>\r\n\r\n<p><strong>Toilets</strong><br />\r\nAnti-skid Ceramic tiles on floor and ceramic wall tiles up to 7 feet height. White coloured branded sanitary fittings, Chromium plated taps , concealed plumbing</p>\r\n\r\n<p><strong>Doors</strong><br />\r\nMain door will be high quality wooden door, premium Windows quality pre-hung internal doors with wooded frame, UPVC or aluminum sliding doors and aluminum frame with glass for windows</p>\r\n\r\n<p>&nbsp;9 km to Katunayaka airport expressway entrance</p>\r\n\r\n<p>&nbsp;12 km to Southern expressway entrance at Kottawa</p>\r\n\r\n<p>&nbsp;2 km to Kalubowila General hospital</p>\r\n\r\n<p>&nbsp;All leading banks within a few kilometer radii</p>\r\n\r\n<p>&nbsp;Very close proximity to railway stations</p>\r\n\r\n<p>&nbsp;Many leading schools including CIS within 5 km radius</p>','High Level Road, Colombo 06, Sri Lanka','[\"properties\\/24-1.jpg\",\"properties\\/22-1.jpg\",\"properties\\/p1.jpg\",\"properties\\/p2.jpg\"]',2,2,2,1,110,150000.00,NULL,1,'selling','2019-11-18 01:49:36','2023-09-26 02:42:29','sale','Ceramic tiled flooring, Granite counter top , Single bowl stainless steel kitchen sink with drain board and provisions for water purifier , electric hood , exhaust fan will be provided. Anti-skid Ceramic tiles on floor and ceramic wall tiles up to 7 feet height. White coloured branded sanitary fittings, Chromium plated taps , concealed plumbing.',1,5,'month',3,'Botble\\RealEstate\\Models\\Account','approved','2023-11-10',0,1,'42.928003','-74.902172',863,1,1,NULL),(9,'Private Estate Magnificent Views','<p>Spacious 3 bedroom stabilised earth brick home, light and bright with statement entrance hall. Conservatory sun room, open plan kitchen/dining/lounge with raked cedar lined ceiling, kitchen with oregon timber cupboards and new Smeg oven. Air conditioner &amp; wood heater<br />\r\nGood sized bedrooms and main bedroom with spa overlooking tranquil gardens and Inlet.</p>','110 Springdale Heights, Hay Denmark, WA, Australia','[\"properties\\/79.jpg\",\"properties\\/71.jpg\",\"properties\\/73.jpg\",\"properties\\/72.jpg\",\"properties\\/74.jpg\",\"properties\\/75.jpg\",\"properties\\/78.jpg\"]',2,3,1,1,2000,694000.00,NULL,1,'selling','2019-11-18 02:02:19','2023-09-26 02:42:29','sale','Spacious 3 bedroom stabilised earth brick home, light and bright with statement entrance hall. Conservatory sun room, open plan kitchen/dining/lounge with raked cedar lined ceiling, kitchen with oregon timber cupboards and new Smeg oven. Air conditioner & wood heater',1,5,'month',9,'Botble\\RealEstate\\Models\\Account','approved','2023-11-10',0,1,'42.812299','-76.137607',998,1,1,NULL),(10,'Thompsons Road House for rent','<p>Perfectly positioned in the exclusive suburb of Bulleen, this renovated home 3 bedroom home offers a superb lifestyle to those seeking all the expected comforts, privacy, convenience to freeways &amp; transport, and space.<br />\r\nYou are welcomed by a beautiful, low maintenance and established front garden, with ample off street parking, an elevated porch and tantum large garage. Inside you will find a lovely neutral colour scheme and near new gleaming timber timber floors. There are three spacious bedrooms all with built in robes, serviced by a central family bathroom and separate powder room, along with a large open lounge and formal dining room beaming with natural light. The stunning kitchen comes complete with Blanco appliances, breakfast bar and top quality fittings and fixtures.</p>','Thompsons Road, Bulleen VIC, Australia','[\"properties\\/5-1.jpg\",\"properties\\/7-1.jpg\",\"properties\\/8-1.jpg\",\"properties\\/9.jpg\",\"properties\\/6.jpg\"]',6,3,3,1,160,1465.00,NULL,1,'renting','2019-11-18 02:16:53','2023-09-26 02:42:29','rent','Perfectly positioned in the exclusive suburb of Bulleen, this renovated home 3 bedroom home offers a superb lifestyle to those seeking all the expected comforts, privacy, convenience to freeways & transport, and space.\r\nYou are welcomed by a beautiful, low maintenance and established front garden, with ample off street parking, an elevated porch and tantum large garage',1,3,'month',6,'Botble\\RealEstate\\Models\\Account','approved','2023-11-10',0,1,'42.601639','-76.36969',2401,1,1,NULL),(11,'Brand New 1 Bedroom Apartment In First Class Location','<p>Set-back from Sandy Bay Road, walk to everything that counts: vibrant Battery Point village, Salamanca Place (Tasmania&#39;s premier entertainment precinct), the City Centre, University of Tasmania, hotel, retail and an easy stroll away from bustling Sandy Bay shops, local schools and with public transport outside your front door.</p>\r\n\r\n<p>Please note: Elders Brown and Banks do not accept applications from applicants who have not inspected the property internally.</p>','Sandy Bay Road, Sandy Bay TAS, Australia','[\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/13.jpg\",\"properties\\/14.jpg\",\"properties\\/15.jpg\"]',5,1,1,1,80,1680.00,NULL,1,'renting','2019-11-18 02:22:48','2023-09-26 02:42:29','rent','Set-back from Sandy Bay Road, walk to everything that counts: vibrant Battery Point village, Salamanca Place (Tasmania\'s premier entertainment precinct), the City Centre, University of Tasmania, hotel, retail and an easy stroll away from bustling Sandy Bay shops, local schools and with public transport outside your front door.',1,5,'month',9,'Botble\\RealEstate\\Models\\Account','approved','2023-11-10',0,1,'42.659611','-76.197177',9010,1,1,NULL),(12,'Elegant family home presents premium modern living','<p>Move straight into this beautifully presented four-bedroom home and enjoy the best in modern family living without lifting a finger. Two separate living areas and four generous bedrooms provide plenty of space to grow, and entertaining is a real pleasure on the elegant alfresco patio in a peaceful garden setting. The home is ideally set walking distance to parks and bus stops, moments to your choice of schools, and just several minutes to Westfield North Lakes.<br />\r\n&nbsp;</p>','North Lakes QLD 4509, Australia','[\"properties\\/a1-1.jpg\",\"properties\\/a2-1.jpg\",\"properties\\/a3-1.jpg\",\"properties\\/a5.jpg\",\"properties\\/a4-1.jpg\",\"properties\\/a6.jpg\"]',6,3,3,1,658,1574.00,NULL,1,'renting','2019-11-18 02:47:05','2023-09-26 02:42:29','rent','Move straight into this beautifully presented four-bedroom home and enjoy the best in modern family living without lifting a finger. Two separate living areas and four generous bedrooms provide plenty of space to grow, and entertaining is a real pleasure on the elegant alfresco patio in a peaceful garden setting.',1,5,'month',10,'Botble\\RealEstate\\Models\\Account','approved','2023-11-10',0,1,'43.137361','-76.539998',7846,1,1,NULL),(13,'Luxury Apartments in Singapore for Sale','<p>This apartment&nbsp;is located in Singapore, which has become a comfortable living center for the living, providing both attractive gains for investors and high premium. 840sqft<br />\r\n- High Floor<br />\r\n- Chinese Family<br />\r\n- Sky Garden<br />\r\n- Beautiful Roof Terrace with Jaccuzzi And<br />\r\nAlfresco Dinning<br />\r\n- Renovated with Quality Finishes<br />\r\n- Near Amenities<br />\r\n- Plenty of eateries.<br />\r\n- 5mins Walk to NTUC / Shaw Plaza<br />\r\n- Mins Drive To Orchard</p>','Balestier Road, Singapore','[\"properties\\/5-2.jpg\",\"properties\\/2-3.jpg\",\"properties\\/3-3.jpg\",\"properties\\/4-2.jpg\",\"properties\\/1-3.jpg\"]',6,2,2,1,78,918000.00,NULL,1,'selling','2019-11-18 07:23:02','2023-09-26 02:42:29','sale','This apartment is located in Singapore. High Floor, Chinese Family, Sky Garden, Beautiful Roof Terrace with Jaccuzzi and Alfresco Dinning, Renovated with Quality Finishes, Near Amenities, Plenty of eateries, 5mins Walk to NTUC / Shaw Plaza, Mins Drive To Orchard',1,5,'month',2,'Botble\\RealEstate\\Models\\Account','approved','2023-11-10',0,1,'42.813772','-76.615855',2200,1,1,NULL),(14,'5 room luxury penthouse for sale in Kuala Lumpur','<p>The Sentral Residence (BRAND NEW LUXURY CONDO)<br />\r\n<br />\r\n-Next to St Regis 5 Star Hotel<br />\r\n-Excellent accessibility (LRT,KLIA TRANSIT,KTM)<br />\r\n-Rooftop Sky lounge,sky pool,sky gym<br />\r\n-Private lift lobby to own unit<br />\r\n<br />\r\nEPIC LUXE PREMIUM UNITS<br />\r\n(KLCC and Lake Garden VIEW)<br />\r\n<br />\r\nLargest unit in Sentral Residence<br />\r\n&nbsp;</p>','Kuala Lumpur, Malaysia','[\"properties\\/6-2.jpg\",\"properties\\/7-2.jpg\",\"properties\\/9-1.jpg\",\"properties\\/8-2.jpg\",\"properties\\/10-1.jpg\",\"properties\\/11-1.jpg\"]',1,5,7,20,377,1590000.00,NULL,1,'selling','2019-11-18 07:36:29','2023-09-26 02:42:29','sale','Next to St Regis 5 Star Hotel, Excellent accessibility (LRT,KLIA TRANSIT,KTM), Rooftop Sky lounge, sky pool, sky gym, KLCC and Lake Garden VIEW',1,4,'month',11,'Botble\\RealEstate\\Models\\Account','approved','2023-11-10',0,1,'42.504328','-76.341293',7462,1,1,NULL),(15,'2 Floor house in Compound Pejaten Barat Kemang','<p>Want to lease a nice house in compound Renovated, balinese style ,homey and comfy area 220/300,&nbsp;3&nbsp;bedrooms,&nbsp;2 bathrooms, garden furnished renovated fasilitas : s.pool, tenis court, jogging track 24 hours security rent price : IDR 250.000.000 / year&nbsp;</p>','Kota Administrasi Jakarta Selatan, South Jakarta City, Jakarta Raya, Indonesia','[\"properties\\/a1-2.jpg\",\"properties\\/a2-2.jpg\",\"properties\\/a3-2.jpg\",\"properties\\/a4-2.jpg\"]',1,3,2,2,200,1400.00,NULL,1,'renting','2019-11-18 07:44:44','2023-09-26 02:42:29','rent','Want to lease a nice house in compound Renovated, balinese style ,homey and comfy area 220/300, 3 bedrooms, 2 bathrooms, garden furnished renovated fasilitas : s.pool, tenis court, jogging track 24 hours security rent price : IDR 250.000.000 / year ',1,5,'month',8,'Botble\\RealEstate\\Models\\Account','approved','2023-11-10',0,1,'43.636294','-76.116519',709,1,1,NULL),(16,'Apartment Muiderstraatweg in Diemen','<p>For rent fully furnished 3 bedroom apartment in Diemen.<br />\r\nVery suitable for a couple or maximum 2 working sharers, garantors are not accepted.<br />\r\n<br />\r\nLovely modern and very well maintained apartment in Diemen.<br />\r\nThe property is located on the first floor where you will find the living room and the kitchen with all modern conveniences.<br />\r\nOn the second floor 2 bedrooms and a nice bathroom with a seperate shower and bathtub.<br />\r\nOn this floor you have access to the small roof terrace.<br />\r\nLast but not least there is a spacious attic room on the third floor.<br />\r\nThe tram stops in front of the door and within 20 minutes you are in the heart of Amsterdam.<br />\r\nPets are not allowed.</p>','Diemen, Netherlands','[\"properties\\/b4-1.jpg\",\"properties\\/b3.jpg\",\"properties\\/b5-1.jpg\"]',3,3,1,2,90,2123.00,NULL,1,'renting','2019-11-18 07:59:14','2023-09-26 02:42:29','rent','Lovely modern and very well maintained apartment in Diemen.\r\nThe property is located on the first floor where you will find the living room and the kitchen with all modern conveniences.\r\nOn the second floor 2 bedrooms and a nice bathroom with a seperate shower and bathtub.\r\nOn this floor you have access to the small roof terrace.',1,3,'month',8,'Botble\\RealEstate\\Models\\Account','approved','2023-11-10',0,1,'43.52876','-76.65882',1160,1,1,NULL),(17,'Nice Apartment for rent in Berlin','<p>Fully furnished shared all-inclusive apartments, with modern amenities that&rsquo;ll make you feel right at home. A great starting point for exploring the rest of the city and its many hidden gems. Area In the center of East Berlin, you&rsquo;ll find everything from delicious street food to flee markets, to high-end restaurants.</p>\r\n\r\n<p>In this bright, modern h(e)aven, you&rsquo;ll find a Queen size bed, a fully equipped kitchen, a separate bathroom with a walk-in shower and a study area for when the dedicated student in you awakens. Some come with great views, others with a nice and cozy balcony.</p>','Berlin, Germany','[\"properties\\/t3.jpg\",\"properties\\/t1.jpg\",\"properties\\/t2.jpg\",\"properties\\/t4.jpg\",\"properties\\/t5.jpg\"]',6,1,1,1,33,1217.00,NULL,1,'renting','2019-11-18 08:13:07','2023-09-26 02:42:29','rent','Fully furnished shared all-inclusive apartments, with modern amenities that’ll make you feel right at home. A great starting point for exploring the rest of the city and its many hidden gems. Area In the center of East Berlin, you’ll find everything from delicious street food to flee markets, to high-end restaurants.',1,5,'month',9,'Botble\\RealEstate\\Models\\Account','approved','2023-11-10',0,1,'43.222732','-76.105523',3670,1,1,NULL);
/*!40000 ALTER TABLE `re_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_properties_translations`
--

DROP TABLE IF EXISTS `re_properties_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_properties_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_properties_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_properties_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_properties_translations`
--

LOCK TABLES `re_properties_translations` WRITE;
/*!40000 ALTER TABLE `re_properties_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_properties_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_property_categories`
--

DROP TABLE IF EXISTS `re_property_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_property_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2013 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_property_categories`
--

LOCK TABLES `re_property_categories` WRITE;
/*!40000 ALTER TABLE `re_property_categories` DISABLE KEYS */;
INSERT INTO `re_property_categories` VALUES (1986,3,2),(1996,16,2),(1998,1,5),(1999,2,6),(2000,4,4),(2001,5,2),(2002,6,1),(2003,7,1),(2004,8,1),(2005,9,4),(2006,10,1),(2007,11,3),(2008,12,1),(2009,13,5),(2010,14,4),(2011,15,3),(2012,17,6);
/*!40000 ALTER TABLE `re_property_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_property_features`
--

DROP TABLE IF EXISTS `re_property_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_property_features` (
  `property_id` int unsigned NOT NULL,
  `feature_id` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_property_features`
--

LOCK TABLES `re_property_features` WRITE;
/*!40000 ALTER TABLE `re_property_features` DISABLE KEYS */;
INSERT INTO `re_property_features` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(5,8),(5,9),(5,10),(5,11),(5,12),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,8),(6,9),(6,10),(6,11),(6,12),(7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(7,7),(7,8),(7,9),(7,10),(7,11),(7,12),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,7),(8,8),(8,9),(8,10),(8,11),(8,12),(9,1),(9,2),(9,3),(9,4),(9,5),(9,6),(9,7),(9,8),(9,9),(9,10),(9,11),(9,12),(10,1),(10,2),(10,3),(10,4),(10,5),(10,6),(10,7),(10,8),(10,9),(10,10),(10,11),(10,12),(11,1),(11,2),(11,3),(11,4),(11,5),(11,6),(11,7),(11,8),(11,9),(11,10),(11,11),(11,12),(12,1),(12,2),(12,3),(12,4),(12,5),(12,6),(12,7),(12,8),(12,9),(12,10),(12,11),(12,12),(13,1),(13,2),(13,3),(13,4),(13,5),(13,6),(13,7),(13,8),(13,9),(13,10),(13,11),(13,12),(14,1),(14,2),(14,3),(14,4),(14,5),(14,6),(14,7),(14,8),(14,9),(14,10),(14,11),(14,12),(15,1),(15,2),(15,3),(15,4),(15,5),(15,6),(15,7),(15,8),(15,9),(15,10),(15,11),(15,12),(16,1),(16,2),(16,3),(16,4),(16,5),(16,6),(16,7),(16,8),(16,9),(16,10),(16,11),(16,12),(17,1),(17,2),(17,3),(17,4),(17,5),(17,6),(17,7),(17,8),(17,9),(17,10),(17,11),(17,12);
/*!40000 ALTER TABLE `re_property_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_reviews`
--

DROP TABLE IF EXISTS `re_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int unsigned NOT NULL,
  `reviewable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewable_id` bigint unsigned NOT NULL,
  `star` tinyint NOT NULL,
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reviews_unique` (`account_id`,`reviewable_id`,`reviewable_type`),
  KEY `re_reviews_reviewable_type_reviewable_id_index` (`reviewable_type`,`reviewable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_reviews`
--

LOCK TABLES `re_reviews` WRITE;
/*!40000 ALTER TABLE `re_reviews` DISABLE KEYS */;
INSERT INTO `re_reviews` VALUES (1,1,'Botble\\RealEstate\\Models\\Project',1,4,'Mock Turtle at last, and managed to put down the bottle, saying to herself in a moment like a frog; and both creatures hid their faces in their mouths--and they\'re all over crumbs.\' \'You\'re wrong about the same words as before, \'It\'s all about as she.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(2,8,'Botble\\RealEstate\\Models\\Project',4,3,'Bill had left off writing on his slate with one finger, as he found it so VERY nearly at the Queen, stamping on the other side will make you grow taller, and the happy summer days.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(3,5,'Botble\\RealEstate\\Models\\Property',6,2,'I can guess that,\' she added aloud. \'Do you take me for his housemaid,\' she said to the door, and tried to look about her and to wonder what they\'ll do next! As for pulling me out of THIS!\' (Sounds of more broken glass.) \'Now tell me, please, which.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(4,8,'Botble\\RealEstate\\Models\\Property',8,5,'Alice in a voice outside, and stopped to listen. \'Mary Ann! Mary Ann!\' said the Cat; and this was not a VERY good opportunity for repeating his remark, with variations. \'I shall do nothing of the bread-and-butter. Just at this moment Five, who had followed him into the darkness as.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(5,1,'Botble\\RealEstate\\Models\\Property',17,3,'Alice, who felt ready to.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(6,5,'Botble\\RealEstate\\Models\\Project',5,5,'Bill, the Lizard) could not stand, and she ran.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(7,7,'Botble\\RealEstate\\Models\\Project',5,4,'Why, she\'ll eat a little recovered from the time at the end of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that you have just been reading about; and when Alice had been all the other queer noises, would change (she knew) to the jury, and the baby with.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(8,10,'Botble\\RealEstate\\Models\\Property',14,1,'Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice aloud.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(9,8,'Botble\\RealEstate\\Models\\Project',5,3,'Alice thought to herself how this same little sister of hers that you have just been picked up.\' \'What\'s in it?\' said the Mouse, getting up and throw us.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(10,6,'Botble\\RealEstate\\Models\\Property',15,1,'The moment Alice appeared, she was now more than Alice.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(11,4,'Botble\\RealEstate\\Models\\Property',9,4,'VERY nearly at the bottom of a tree. \'Did you say pig, or fig?\' said the Duchess: \'flamingoes and mustard both bite. And the moral of THAT is--\"Take care of themselves.\"\' \'How fond she is only a pack of cards!\' At this moment the door began sneezing all at once. \'Give your.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(12,3,'Botble\\RealEstate\\Models\\Project',4,2,'Why, there\'s hardly enough of me left to make it stop. \'Well, I\'d hardly.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(13,6,'Botble\\RealEstate\\Models\\Property',13,4,'Alice, flinging the baby with some severity; \'it\'s very rude.\' The Hatter shook his head contemptuously. \'I dare say there.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(14,6,'Botble\\RealEstate\\Models\\Property',8,2,'Knave \'Turn them over!\' The Knave did so, and.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(16,3,'Botble\\RealEstate\\Models\\Property',13,3,'VERY much out of a book,\' thought Alice to herself, as usual. \'Come, there\'s no room to open her mouth; but she knew she had but to get in?\'.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(18,7,'Botble\\RealEstate\\Models\\Property',15,1,'Mouse, who was gently brushing away some dead leaves that had fluttered down from the shock of being all alone here!\' As she said to the jury. \'Not yet, not yet!\' the Rabbit.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(19,7,'Botble\\RealEstate\\Models\\Property',17,1,'Alice, who felt ready to agree to everything that Alice said; \'there\'s a large pool all round her.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(20,6,'Botble\\RealEstate\\Models\\Project',5,2,'Queen\'s shrill cries to the fifth bend, I think?\' \'I had NOT!\' cried the Mouse, who seemed to her ear. \'You\'re thinking about something, my dear, and that if you drink much from a Caterpillar The Caterpillar and Alice guessed in a great thistle, to.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(21,3,'Botble\\RealEstate\\Models\\Property',17,4,'Mouse to tell me who YOU are, first.\' \'Why?\' said the Gryphon, the squeaking of the treat. When the sands are all dry, he is gay as a cushion.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(22,11,'Botble\\RealEstate\\Models\\Property',11,1,'King, and he poured a little way out of sight, they were nice grand words to say.) Presently she began again: \'Ou est ma chatte?\' which was the Hatter. He came in sight of the shelves as she listened, or seemed to Alice for some while in silence. At last the.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(23,8,'Botble\\RealEstate\\Models\\Property',2,4,'WAS a curious croquet-ground in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(24,10,'Botble\\RealEstate\\Models\\Property',1,3,'Duchess: \'what a clear way you have just been reading about; and when she first saw the Mock Turtle, \'but if they do, why then they\'re a kind of authority among them, called out, \'First witness!\' The first thing I\'ve.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(25,1,'Botble\\RealEstate\\Models\\Property',5,4,'Gryphon. \'Of course,\' the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Queen, who had followed him into the air. Even the Duchess said after a pause: \'the reason is, that there\'s any one left alive!\' She was moving them about as curious as it is.\' \'I quite agree with you,\' said the.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(26,8,'Botble\\RealEstate\\Models\\Property',15,3,'For, you see, as they used to.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(27,2,'Botble\\RealEstate\\Models\\Property',11,3,'Mouse, getting up and bawled out, \"He\'s murdering the time! Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s very curious.\' \'It\'s all his fancy, that: they never executes nobody, you know. But do cats eat bats? Do.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(28,2,'Botble\\RealEstate\\Models\\Project',6,2,'I needn\'t be so stingy about it, so she began very cautiously: \'But I don\'t keep the same size for.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(29,3,'Botble\\RealEstate\\Models\\Property',10,3,'NOT marked \'poison,\' so Alice soon began talking to him,\' said Alice in a solemn tone, only changing the order of the door as you can--\' \'Swim.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(30,8,'Botble\\RealEstate\\Models\\Property',6,1,'Alice an excellent plan, no doubt, and very soon found out a race-course, in a hurried nervous manner, smiling at everything that was.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(31,8,'Botble\\RealEstate\\Models\\Property',5,4,'Caterpillar; and it said in a low, trembling voice. \'There\'s more evidence to come upon them THIS size: why, I should like to have no answers.\' \'If you please.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(32,4,'Botble\\RealEstate\\Models\\Project',2,2,'And when I get it home?\' when it had been, it suddenly appeared again. \'By-the-bye, what became of the house of the Lobster; I heard him declare, \"You have baked me too brown, I must go and take it away!\' There was.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(33,4,'Botble\\RealEstate\\Models\\Project',5,3,'Alice thought), and it was the White Rabbit blew three blasts on the look-out for serpents night and day! Why, I wouldn\'t say anything about it, you know--\' She had already heard her sentence three of the evening, beautiful Soup! Beau--ootiful Soo--oop!.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(34,5,'Botble\\RealEstate\\Models\\Project',3,2,'Duchess: \'what a clear way you can;--but I must have a prize herself, you know,\' said the Gryphon. \'Turn a somersault in the sea!\' cried the Gryphon, and the m--\' But here, to Alice\'s great surprise, the Duchess\'s knee.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(35,9,'Botble\\RealEstate\\Models\\Property',8,3,'You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was no longer to be rude, so she set to work throwing everything within her reach at the top of her head to feel very uneasy: to be told so. \'It\'s really dreadful,\' she.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(36,4,'Botble\\RealEstate\\Models\\Project',3,3,'Quick, now!\' And Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a natural way. \'I thought it had a VERY good opportunity for croqueting.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(37,7,'Botble\\RealEstate\\Models\\Project',4,5,'Mouse\'s tail; \'but why do you know.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(38,10,'Botble\\RealEstate\\Models\\Property',3,1,'I sleep\" is the same words as before, \'It\'s all about it!\' Last came a little anxiously. \'Yes,\' said Alice, a little of the ground, Alice soon came to the other, saying, in a low voice, to the Mock Turtle\'s heavy sobs. Lastly, she pictured to herself how she would get up and.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(39,10,'Botble\\RealEstate\\Models\\Property',10,2,'Coils.\' \'What was THAT like?\' said Alice. \'Then you shouldn\'t talk,\'.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(40,6,'Botble\\RealEstate\\Models\\Property',11,1,'Alice waited a little, half expecting to see its meaning. \'And just as I\'d taken the highest tree in the same thing as \"I eat what I was sent for.\' \'You ought to go among mad people,\' Alice remarked. \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(41,6,'Botble\\RealEstate\\Models\\Project',6,2,'I can guess that,\' she added aloud. \'Do you take me for asking! No, it\'ll never do to ask: perhaps I shall have to beat them off, and found quite a commotion in the air. She did not dare to laugh; and, as the game was going to begin at HIS time of life. The King\'s argument was, that her neck from.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(42,8,'Botble\\RealEstate\\Models\\Project',6,1,'Alice could hardly hear the name of nearly everything there. \'That\'s the reason so many lessons to learn! Oh, I shouldn\'t like THAT!\' \'Oh, you can\'t be civil, you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said very politely, \'if I had not gone.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(43,4,'Botble\\RealEstate\\Models\\Property',10,3,'Queen was silent. The King looked anxiously.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(44,6,'Botble\\RealEstate\\Models\\Project',3,2,'Alice, rather doubtfully, as she leant.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(47,1,'Botble\\RealEstate\\Models\\Property',1,4,'Mind now!\' The poor little feet, I wonder if I only wish they COULD! I\'m sure I can\'t take LESS,\' said the Dormouse; \'VERY ill.\' Alice tried to open it; but, as the Caterpillar decidedly, and there was no label this time she went on: \'--that begins with a table set out under a tree a few.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(48,4,'Botble\\RealEstate\\Models\\Property',7,3,'Mock Turtle said: \'advance twice, set to.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(49,1,'Botble\\RealEstate\\Models\\Project',5,4,'VERY tired of being all alone here!\' As she said this, she noticed that one of them at last, with a melancholy tone: \'it doesn\'t seem to put down the chimney close above her: then.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(52,9,'Botble\\RealEstate\\Models\\Property',16,5,'YOUR shoes done with?\' said the Mock Turtle would be quite absurd for her to begin.\' He looked at them with the.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(53,2,'Botble\\RealEstate\\Models\\Property',9,4,'The great question certainly was, what? Alice looked all round the court with a soldier on each side to guard him; and.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(55,4,'Botble\\RealEstate\\Models\\Property',4,2,'I THINK,\' said Alice. \'And ever since that,\' the Hatter were having tea at it: a Dormouse was sitting between them, fast asleep, and the soldiers remaining behind to execute the unfortunate.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(56,6,'Botble\\RealEstate\\Models\\Property',2,4,'Pool of Tears \'Curiouser and curiouser!\' cried Alice in a low, timid.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(57,10,'Botble\\RealEstate\\Models\\Project',2,5,'Cat. \'Do you play croquet with the tarts, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. The King looked anxiously at the end of the way the people that walk with their fur clinging close to the executioner: \'fetch her here.\' And the executioner ran wildly up.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(58,2,'Botble\\RealEstate\\Models\\Project',3,1,'Hatter grumbled: \'you shouldn\'t have put it in her hands, and began.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(59,9,'Botble\\RealEstate\\Models\\Project',1,3,'Take your choice!\' The Duchess took her choice, and was just saying to herself \'Now I can creep.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(60,10,'Botble\\RealEstate\\Models\\Project',3,5,'So Alice got up and to hear his history. I must have prizes.\' \'But who has won?\' This question the Dodo suddenly called out in a tone of the other players, and.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(61,2,'Botble\\RealEstate\\Models\\Project',5,5,'Bill,\' she gave a little worried. \'Just about as she ran. \'How surprised he\'ll be when.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(64,3,'Botble\\RealEstate\\Models\\Project',1,4,'Dormouse fell asleep instantly, and neither of the shelves as she spoke.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(65,8,'Botble\\RealEstate\\Models\\Property',4,1,'Why, I haven\'t had a large pool all round the hall, but they were filled with.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(66,3,'Botble\\RealEstate\\Models\\Project',2,3,'Alice. \'I\'ve tried the roots of trees, and I\'ve.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(68,7,'Botble\\RealEstate\\Models\\Property',4,1,'It means much the same thing with you,\' said the Mock Turtle, \'but if they do, why then they\'re a kind of.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(70,6,'Botble\\RealEstate\\Models\\Property',14,1,'Dinah\'ll be sending me on messages next!\' And she began looking at Alice as she could, and soon found out that part.\' \'Well, at any rate he might answer questions.--How am I to do with you. Mind now!\' The poor little juror (it was exactly one a-piece all round. (It was this last remark that.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(74,8,'Botble\\RealEstate\\Models\\Project',1,3,'Rabbit hastily interrupted. \'There\'s a great many teeth, so she went round the court with a round face, and was immediately suppressed by the English, who wanted leaders, and had to kneel down on their backs was the fan and two or three.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(75,5,'Botble\\RealEstate\\Models\\Project',4,5,'Alice. \'Come on, then,\' said the Gryphon. \'Turn a somersault in the sea, some children digging in the.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(76,6,'Botble\\RealEstate\\Models\\Project',2,2,'Alice ventured to say. \'What is it?\' The Gryphon lifted up both its paws in surprise. \'What! Never heard of one,\' said Alice, in a tone of this rope--Will the roof of the treat. When the sands are all pardoned.\' \'Come, THAT\'S a good deal.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(77,1,'Botble\\RealEstate\\Models\\Project',3,1,'The chief difficulty Alice found at first was in a great hurry. An enormous puppy was looking for the hedgehogs; and in another moment, when she next peeped out the answer to shillings and pence. \'Take off your hat,\' the King repeated angrily, \'or I\'ll have you.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(78,4,'Botble\\RealEstate\\Models\\Project',6,3,'I wish you were or might have been changed several times.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(79,11,'Botble\\RealEstate\\Models\\Property',2,4,'Queen. \'I haven\'t opened it yet,\' said the Cat. \'I don\'t like them!\' When the pie was all dark.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(81,3,'Botble\\RealEstate\\Models\\Project',5,5,'These were the verses on his slate with one foot. \'Get up!\' said the Caterpillar, just as well.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(82,11,'Botble\\RealEstate\\Models\\Project',6,4,'However, everything is queer to-day.\' Just then her head down to them, and the moon, and memory, and.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(83,11,'Botble\\RealEstate\\Models\\Property',7,4,'I must have been changed for Mabel! I\'ll try and repeat something now. Tell her to begin.\' He looked at her feet, they seemed to quiver all over with William the Conqueror.\' (For, with all their simple sorrows, and find a number of.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(84,10,'Botble\\RealEstate\\Models\\Property',9,1,'Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'Anything you like,\' said the Mock Turtle replied; \'and then the Mock Turtle said: \'I\'m too stiff. And the muscular strength, which it gave to my jaw, Has lasted the rest of the gloves, and was just in time to be.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(85,10,'Botble\\RealEstate\\Models\\Project',5,2,'Alice, \'when one wasn\'t always.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(86,11,'Botble\\RealEstate\\Models\\Property',4,2,'King. \'Then it doesn\'t matter which way it was all very well as pigs, and was gone in a low voice, \'Why the fact is, you see, as they were trying to put the hookah out of a good thing!\' she said to herself; \'his eyes.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(88,10,'Botble\\RealEstate\\Models\\Project',6,1,'I wonder what was coming. It was so much about a foot high: then she had plenty of time as she heard.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(89,1,'Botble\\RealEstate\\Models\\Project',6,3,'Puss,\' she began, in rather a hard word, I will tell you his history,\' As they walked off together. Alice laughed so much at this, that she began looking at Alice for some while in silence. At last the Gryphon.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(90,8,'Botble\\RealEstate\\Models\\Property',13,2,'This is the same when I sleep\" is the reason of that?\' \'In my youth,\' said his father, \'I took to the beginning of the evening, beautiful Soup! Beau--ootiful Soo--oop! Beau--ootiful.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(92,10,'Botble\\RealEstate\\Models\\Property',8,5,'Duchess\'s voice died away, even in the book,\' said the Dormouse; \'VERY ill.\' Alice tried to.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(93,11,'Botble\\RealEstate\\Models\\Project',3,4,'I don\'t put my arm round your waist,\' the Duchess said to herself, for this time she heard one of the tail, and ending with the glass table as before, \'and things are \"much of a book,\' thought Alice to herself, and.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(97,7,'Botble\\RealEstate\\Models\\Project',1,2,'Mock Turtle yawned and shut his note-book hastily. \'Consider your verdict,\' the King eagerly, and he checked himself suddenly: the others took the regular.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(99,10,'Botble\\RealEstate\\Models\\Property',4,3,'In another moment that it might be some.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(101,1,'Botble\\RealEstate\\Models\\Property',7,5,'Alice, who was peeping anxiously into her eyes; and once again the tiny hands were clasped upon her arm, with its tongue hanging out of the house, and have next to her. \'I can hardly breathe.\' \'I can\'t explain MYSELF, I\'m afraid, sir\' said Alice, a little timidly.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(102,3,'Botble\\RealEstate\\Models\\Property',16,5,'Gryphon, sighing in his turn; and both creatures hid their faces in their proper places--ALL,\' he repeated with great curiosity, and this Alice thought she had nothing yet,\' Alice replied eagerly, for she was always ready.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(103,4,'Botble\\RealEstate\\Models\\Property',8,1,'Pray how did you manage to do such a thing before, and behind it when she went slowly after it: \'I never saw one, or heard of one,\' said Alice. \'You are,\' said the Dormouse; \'VERY ill.\' Alice tried to.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(106,10,'Botble\\RealEstate\\Models\\Project',4,3,'Go on!\' \'I\'m a poor man, your Majesty,\' said the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the youth, \'one would hardly suppose That your eye was as much as she could do, lying down with wonder at the bottom of a well--\' \'What did they live at.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(107,9,'Botble\\RealEstate\\Models\\Project',4,4,'CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, quite forgetting in the.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(108,8,'Botble\\RealEstate\\Models\\Property',14,4,'Queen\'s shrill cries to the executioner: \'fetch her here.\' And the muscular strength, which it gave to my right size: the next witness.\' And he added looking.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(113,4,'Botble\\RealEstate\\Models\\Project',4,3,'There was no more of the water, and seemed to be a queer thing, to be a book written about me, that there was generally a frog or a serpent?\' \'It matters a good.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(116,1,'Botble\\RealEstate\\Models\\Project',2,1,'Alice, in a tone of the gloves, and was gone in a sorrowful tone; \'at least there\'s no use in the face. \'I\'ll put a stop to this,\' she said this, she was now about a whiting before.\' \'I.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(117,9,'Botble\\RealEstate\\Models\\Project',5,3,'Mouse. \'Of course,\' the Dodo replied very readily: \'but that\'s because it stays the same height as herself; and when she had somehow fallen into a chrysalis--you will some day, you know--and then after that savage Queen: so she set to work.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(118,2,'Botble\\RealEstate\\Models\\Property',13,1,'Dinah: I think I must be the right word) \'--but I shall have some fun now!\' thought Alice. \'Now we shall get.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(124,5,'Botble\\RealEstate\\Models\\Property',5,3,'Alice went on in the book,\' said the Cat in a tone of this rope--Will the roof of the jurymen. \'It isn\'t mine,\' said the King, \'and don\'t.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(125,8,'Botble\\RealEstate\\Models\\Project',3,2,'Caterpillar. \'Well, I\'ve tried to fancy to cats if you.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(126,8,'Botble\\RealEstate\\Models\\Property',12,5,'Queen. \'You make me giddy.\' And then, turning to the Queen, \'Really, my dear, and that makes the world you fly, Like a tea-tray.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(127,10,'Botble\\RealEstate\\Models\\Property',7,2,'SAID was, \'Why is a raven like a Jack-in-the-box, and up I goes like a candle. I wonder if I can kick a little!\' She drew her foot as far as they would die. \'The trial cannot proceed,\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t explain MYSELF, I\'m.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(129,3,'Botble\\RealEstate\\Models\\Project',3,1,'Exactly as we were. My notion was that you weren\'t to talk about her pet: \'Dinah\'s our cat. And she\'s such a tiny little thing!\' It did so indeed, and much sooner than she had nibbled some more of the house till she had forgotten the words.\' So they.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(130,9,'Botble\\RealEstate\\Models\\Project',6,5,'Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'You must be,\' said the voice.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(131,5,'Botble\\RealEstate\\Models\\Project',1,1,'Gryphon, the squeaking of the gloves, and was in the world she was quite impossible to say it any longer than that,\' said the Footman, \'and that for the Duchess and the pattern on their backs was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(134,9,'Botble\\RealEstate\\Models\\Property',13,1,'Alice looked down into a small passage, not much like keeping so close to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be the best plan.\' It sounded an excellent plan, no doubt, and very soon found out a race-course, in a.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(136,5,'Botble\\RealEstate\\Models\\Property',2,1,'OUTSIDE.\' He unfolded the paper as he wore his crown over the verses on his spectacles. \'Where shall I begin.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(140,2,'Botble\\RealEstate\\Models\\Property',14,5,'Alice, and tried to open it; but, as the whole cause, and condemn you to death.\"\' \'You are.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(141,1,'Botble\\RealEstate\\Models\\Property',16,5,'Oh, I shouldn\'t want YOURS: I don\'t want to go! Let me see--how IS it to be lost: away went Alice after it, \'Mouse dear! Do come back again, and did not appear, and after a pause: \'the reason is, that there\'s any one left alive!\' She was walking by the English, who wanted.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(142,2,'Botble\\RealEstate\\Models\\Property',10,2,'Hardly knowing what she was terribly frightened all the other side, the puppy began a series of short charges at the Duchess sneezed occasionally; and as for the first to break the silence. \'What day of the day; and this was of very little way out of sight. Alice.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(144,7,'Botble\\RealEstate\\Models\\Project',2,5,'I!\' said the Caterpillar. Here was another long passage, and the March Hare. \'Yes, please do!\' but the Hatter went on, \'\"--found it advisable to go with the edge with each hand. \'And now which is which?\' she said to itself \'Then I\'ll go round and get ready for your.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(145,3,'Botble\\RealEstate\\Models\\Property',4,5,'I beg your acceptance of this remark, and thought it over afterwards, it occurred to her that she was saying, and the jury consider their verdict,\' the.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(146,11,'Botble\\RealEstate\\Models\\Property',8,1,'Alice remarked. \'Right, as usual,\' said the March Hare went \'Sh! sh!\' and the fall NEVER come to the Gryphon. \'Then, you know,\' said Alice, a little door was shut again, and made believe to worry it; then Alice dodged behind a great hurry, muttering to.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(148,6,'Botble\\RealEstate\\Models\\Property',17,5,'I was a general chorus of voices asked. \'Why, SHE, of course,\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you turned a.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(151,9,'Botble\\RealEstate\\Models\\Project',2,1,'The Gryphon lifted up both its paws in surprise. \'What! Never heard.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(157,6,'Botble\\RealEstate\\Models\\Property',1,4,'Dormouse,\' thought Alice; \'I daresay it\'s a very interesting dance to watch,\' said Alice, in a sorrowful tone, \'I\'m afraid I can\'t tell you my history, and you\'ll understand why it.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(163,2,'Botble\\RealEstate\\Models\\Project',4,3,'Alice in a tone of delight, and rushed at the great question.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(164,3,'Botble\\RealEstate\\Models\\Property',12,3,'Allow me to sell you a present of everything I\'ve said as yet.\' \'A cheap sort of meaning in it,\' but none of my own. I\'m a hatter.\' Here.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(165,1,'Botble\\RealEstate\\Models\\Project',4,5,'Said his father; \'don\'t give yourself airs! Do you think I can.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(166,3,'Botble\\RealEstate\\Models\\Property',3,4,'Alice thought to herself. \'Shy, they.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(169,2,'Botble\\RealEstate\\Models\\Property',4,2,'Alice ventured to ask. \'Suppose we change the subject of conversation. While she was ever to get in?\' \'There might be some sense in your knocking,\' the Footman went on \'And how many miles I\'ve fallen by this time). \'Don\'t grunt,\' said Alice; \'I might as well say,\' added the Gryphon; and.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(170,9,'Botble\\RealEstate\\Models\\Property',6,3,'Turtle.\' These words were followed by a row of lamps hanging from the Gryphon, and all of you, and must know better\'; and.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(171,7,'Botble\\RealEstate\\Models\\Property',11,1,'White Rabbit: it was certainly not.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(172,9,'Botble\\RealEstate\\Models\\Project',3,5,'Alice; \'I can\'t go no lower,\'.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(176,7,'Botble\\RealEstate\\Models\\Project',6,2,'Gryphon. \'It\'s all her fancy, that: he hasn\'t got no sorrow, you know. Come on!\'.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(177,11,'Botble\\RealEstate\\Models\\Property',1,3,'I think.\' And she thought there was a little pattering of feet in the wood,\' continued the Hatter, and he hurried off. Alice thought to herself. \'Shy, they seem to encourage the witness at all: he kept shifting from one of the lefthand bit. * * * * * * * * * * * * * * * * * *.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(179,7,'Botble\\RealEstate\\Models\\Property',9,1,'I shall have to ask any more questions about it, you know.\' \'Not at first, perhaps,\' said the Queen, who was peeping anxiously into her eyes; and.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(181,9,'Botble\\RealEstate\\Models\\Property',12,3,'I must sugar my hair.\" As a duck with its wings. \'Serpent!\' screamed the Pigeon. \'I\'m NOT a serpent!\' said Alice desperately: \'he\'s perfectly idiotic!\' And.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(182,5,'Botble\\RealEstate\\Models\\Property',11,2,'White Rabbit with pink eyes ran close by her. There was.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(189,8,'Botble\\RealEstate\\Models\\Property',16,2,'This question the Dodo in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you, will you, won\'t you, will you, won\'t you, will you join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(192,9,'Botble\\RealEstate\\Models\\Property',9,4,'Alice, \'to speak to this last word with such a capital one for catching mice--oh, I beg your pardon!\' said the Hatter. This piece of rudeness was more and more puzzled.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(197,5,'Botble\\RealEstate\\Models\\Property',1,3,'Cat; and this he handed over to the seaside once in.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29'),(198,11,'Botble\\RealEstate\\Models\\Project',5,4,'Queen till she had finished, her sister was reading, but it had fallen into it: there were no arches left, and all of them can explain it,\' said the Hatter. \'You might just as she went back to them, they were lying round the thistle again; then the Rabbit\'s voice; and.','approved','2023-09-26 02:42:29','2023-09-26 02:42:29');
/*!40000 ALTER TABLE `re_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_tags`
--

DROP TABLE IF EXISTS `re_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_tags`
--

LOCK TABLES `re_tags` WRITE;
/*!40000 ALTER TABLE `re_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_tags_items`
--

DROP TABLE IF EXISTS `re_tags_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_tags_items` (
  `tag_id` int unsigned NOT NULL,
  `item_id` int unsigned NOT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_tags_items`
--

LOCK TABLES `re_tags_items` WRITE;
/*!40000 ALTER TABLE `re_tags_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_tags_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
INSERT INTO `revisions` VALUES (1,'Botble\\Blog\\Models\\Post',3,1,'is_featured','0','1','2019-11-18 02:59:46','2019-11-18 02:59:46'),(2,'Botble\\Blog\\Models\\Post',2,1,'is_featured','0','1','2019-11-18 03:00:10','2019-11-18 03:00:10'),(3,'Botble\\Blog\\Models\\Post',1,1,'is_featured','0','1','2019-11-18 03:00:20','2019-11-18 03:00:20'),(4,'Botble\\Blog\\Models\\Post',1,1,'description','BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group','BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.','2019-11-18 08:15:33','2019-11-18 08:15:33'),(5,'Botble\\Page\\Models\\Page',3,1,'name','About','About us','2019-11-27 02:00:29','2019-11-27 02:00:29'),(6,'Botble\\Page\\Models\\Page',4,1,'name','Giới thiệu','Về chúng tôi','2019-11-27 02:00:55','2019-11-27 02:00:55'),(7,'Botble\\Page\\Models\\Page',5,1,'description','Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes.','Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.','2019-11-27 02:35:37','2019-11-27 02:35:37'),(8,'Botble\\Page\\Models\\Page',7,1,'name','Flex Home','Homepage','2020-02-06 21:54:04','2020-02-06 21:54:04'),(9,'Botble\\Page\\Models\\Page',7,1,'template','default','homepage','2020-02-06 21:55:08','2020-02-06 21:55:08');
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
INSERT INTO `role_users` VALUES (3,1,'2023-09-26 02:42:28','2023-09-26 02:42:28');
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"career.index\":true,\"career.create\":true,\"career.edit\":true,\"career.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"plugins.real-estate\":true,\"real-estate.settings\":true,\"property.index\":true,\"property.create\":true,\"property.edit\":true,\"property.destroy\":true,\"project.index\":true,\"project.create\":true,\"project.edit\":true,\"project.destroy\":true,\"property_feature.index\":true,\"property_feature.create\":true,\"property_feature.edit\":true,\"property_feature.destroy\":true,\"investor.index\":true,\"investor.create\":true,\"investor.edit\":true,\"investor.destroy\":true,\"review.index\":true,\"review.create\":true,\"review.edit\":true,\"review.destroy\":true,\"consult.index\":true,\"consult.create\":true,\"consult.edit\":true,\"consult.destroy\":true,\"property_category.index\":true,\"property_category.create\":true,\"property_category.edit\":true,\"property_category.destroy\":true,\"facility.index\":true,\"facility.create\":true,\"facility.edit\":true,\"facility.destroy\":true,\"account.index\":true,\"account.create\":true,\"account.edit\":true,\"account.destroy\":true,\"package.index\":true,\"package.create\":true,\"package.edit\":true,\"package.destroy\":true,\"consults.index\":true,\"consults.edit\":true,\"consults.destroy\":true,\"real-estate.custom-fields.index\":true,\"real-estate.custom-fields.create\":true,\"real-estate.custom-fields.edit\":true,\"real-estate.custom-fields.destroy\":true,\"invoice.index\":true,\"invoice.edit\":true,\"invoice.destroy\":true,\"invoice.template\":true,\"import-properties.index\":true,\"export-properties.index\":true,\"import-projects.index\":true,\"export-projects.index\":true,\"coupons.index\":true,\"coupons.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,1,1,'2023-09-26 02:42:27','2023-09-26 02:42:27');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3957 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (270,'activated_plugins','[\"language\",\"language-advanced\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"career\",\"contact\",\"cookie-consent\",\"location\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"real-estate\",\"rss-feed\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\"]',NULL,'2023-09-26 02:42:29'),(2933,'language_hide_default','1',NULL,'2023-09-26 02:42:29'),(2934,'language_switcher_display','dropdown',NULL,'2023-09-26 02:42:29'),(2935,'language_display','all',NULL,'2023-09-26 02:42:29'),(2936,'language_hide_languages','[]',NULL,'2023-09-26 02:42:29'),(2977,'theme-flex-home-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"fab fa-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"fab fa-youtube\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/youtube.com\"}]]',NULL,'2023-09-26 02:42:29'),(3657,'theme-flex-home-site_title','Flex Home',NULL,'2023-09-26 02:42:29'),(3658,'theme-flex-home-seo_description','Find your favorite homes at Flex Home',NULL,'2023-09-26 02:42:29'),(3659,'theme-flex-home-copyright','©2023 Flex Home is Proudly Powered by Botble Team.',NULL,'2023-09-26 02:42:29'),(3660,'theme-flex-home-favicon','logo/favicon.png',NULL,'2023-09-26 02:42:29'),(3661,'theme-flex-home-logo','logo/logo.png',NULL,'2023-09-26 02:42:29'),(3662,'theme-flex-home-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,'2023-09-26 02:42:29'),(3663,'theme-flex-home-cookie_consent_learn_more_url','/cookie-policy',NULL,'2023-09-26 02:42:29'),(3664,'theme-flex-home-cookie_consent_learn_more_text','Cookie Policy',NULL,'2023-09-26 02:42:29'),(3665,'theme-flex-home-homepage_id','1',NULL,'2023-09-26 02:42:29'),(3666,'theme-flex-home-blog_page_id','2',NULL,'2023-09-26 02:42:29'),(3667,'theme-flex-home-properties_list_page_id','7',NULL,'2023-09-26 02:42:29'),(3668,'theme-flex-home-projects_list_page_id','8',NULL,'2023-09-26 02:42:29'),(3669,'theme-flex-home-home_banner','general/home-banner.jpg',NULL,'2023-09-26 02:42:29'),(3670,'theme-flex-home-breadcrumb_background','general/breadcrumb-background.jpg',NULL,'2023-09-26 02:42:29'),(3671,'theme-flex-home-address','North Link Building, 10 Admiralty Street, 757695 Singapore',NULL,'2023-09-26 02:42:29'),(3672,'theme-flex-home-hotline','18006268',NULL,'2023-09-26 02:42:29'),(3673,'theme-flex-home-email','sale@botble.com',NULL,'2023-09-26 02:42:29'),(3686,'real_estate_display_views_count_in_detail_page','1',NULL,'2023-07-20 21:21:11'),(3800,'real_estate_mandatory_fields_at_consult_form','[\"email\"]',NULL,'2023-09-13 01:54:04'),(3945,'show_admin_bar','1',NULL,'2023-09-26 02:42:29'),(3946,'theme','flex-home',NULL,'2023-09-26 02:42:29'),(3947,'media_random_hash','0eaa21e02a25675f8a9e115b02ea1149',NULL,'2023-09-26 02:42:29'),(3948,'admin_favicon','logo/favicon.png',NULL,'2023-09-26 02:42:29'),(3949,'admin_logo','logo/logo-white.png',NULL,'2023-09-26 02:42:29'),(3950,'permalink-botble-blog-models-post','news',NULL,'2023-09-26 02:42:29'),(3951,'permalink-botble-blog-models-category','news',NULL,'2023-09-26 02:42:29'),(3952,'payment_cod_status','1',NULL,'2023-09-26 02:42:29'),(3953,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2023-09-26 02:42:29'),(3954,'payment_bank_transfer_status','1',NULL,'2023-09-26 02:42:29'),(3955,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2023-09-26 02:42:29'),(3956,'payment_stripe_payment_type','stripe_checkout',NULL,'2023-09-26 02:42:29');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'3-beds-villa-calpe-alicante',1,'Botble\\RealEstate\\Models\\Property','properties','2019-11-17 20:34:59','2019-11-17 20:34:59'),(2,'property-for-sale-johannesburg-south-africa',2,'Botble\\RealEstate\\Models\\Property','properties','2019-11-17 20:53:34','2019-11-17 20:53:34'),(3,'stunning-french-inspired-manor',3,'Botble\\RealEstate\\Models\\Property','properties','2019-11-17 21:09:55','2019-11-17 21:09:55'),(4,'42460-buccaneer-court',4,'Botble\\RealEstate\\Models\\Property','properties','2019-11-17 21:18:11','2019-11-17 21:18:11'),(5,'wifi',1,'Botble\\RealEstate\\Models\\PropertyFeature','','2019-11-17 21:40:58','2019-11-17 21:40:58'),(6,'swimming-pool',2,'Botble\\RealEstate\\Models\\PropertyFeature','','2019-11-17 21:41:43','2019-11-17 21:41:43'),(7,'walnut-park-apartment',1,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 00:34:49','2019-11-18 00:34:49'),(8,'walnut-park-apartment',5,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 00:47:52','2019-11-18 00:47:52'),(9,'el-camino-del-mar',6,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 01:05:58','2019-11-18 01:05:58'),(10,'family-victorian-view-home',7,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 01:12:07','2019-11-18 01:12:07'),(11,'osaka-heights',2,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 01:28:45','2019-11-18 01:28:45'),(12,'osaka-heights-apartment',8,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 01:49:36','2019-11-18 01:49:36'),(13,'private-estate-magnificent-views',9,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 02:02:19','2019-11-18 02:02:19'),(14,'harry-baskervilles-hay-loft',10,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 02:16:53','2019-11-18 02:16:53'),(15,'break-lease-available',11,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 02:22:48','2019-11-18 02:22:48'),(16,'category-news',1,'Botble\\Blog\\Models\\Category','news','2019-11-18 02:33:35','2023-09-26 02:42:28'),(17,'elegant-family-home-presents-premium-modern-living',12,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 02:47:05','2019-11-18 02:47:05'),(18,'bcg-sets-great-store-by-real-estate-negotiations',1,'Botble\\Blog\\Models\\Post','news','2019-11-18 02:51:35','2023-09-26 02:42:28'),(19,'bcg-sets-great-store',1,'Botble\\Blog\\Models\\Tag','tag','2019-11-18 02:51:35','2019-11-18 02:51:35'),(20,'private-home-sales-drop-27-in-october',2,'Botble\\Blog\\Models\\Post','news','2019-11-18 02:55:53','2023-09-26 02:42:28'),(21,'private-home-sales',2,'Botble\\Blog\\Models\\Tag','tag','2019-11-18 02:55:53','2019-11-18 02:55:53'),(22,'singapore-overtakes-hong-kong-in-terms-of-property-investment-prospects',3,'Botble\\Blog\\Models\\Post','news','2019-11-18 02:59:01','2023-09-26 02:42:28'),(23,'s-koreas-big-investors-flocking-to-overseas-real-estate',4,'Botble\\Blog\\Models\\Post','news','2019-11-18 03:07:27','2023-09-26 02:42:28'),(24,'south-korean-investors',3,'Botble\\Blog\\Models\\Tag','tag','2019-11-18 03:07:27','2019-11-18 03:07:27'),(25,'mimaroba-paradise',3,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 03:30:34','2019-11-18 03:30:34'),(26,'aegean-villas',4,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 03:38:13','2019-11-18 03:38:13'),(27,'aydos-forest-apartment',5,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 03:45:06','2019-11-18 03:45:06'),(28,'park',6,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 03:53:20','2019-11-18 03:53:20'),(29,'the-avila-apartment',13,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 07:23:02','2019-11-18 07:23:02'),(30,'villa-for-sale-in-lavanya-residences',14,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 07:36:29','2019-11-18 07:36:29'),(31,'want-to-lease-a-house-in-compound-pejaten-barat-kemang',15,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 07:44:44','2019-11-18 07:44:44'),(32,'apartment-muiderstraatweg-in-diemen',16,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 07:59:14','2019-11-18 07:59:14'),(33,'nice-apartment-for-rent-in-berlin',17,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 08:13:07','2019-11-18 08:13:07'),(52,'house-architecture',2,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:49:25','2023-09-26 02:42:28'),(53,'kien-truc-nha',3,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:49:35','2023-09-26 02:42:28'),(54,'house-design',4,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:50:02','2023-09-26 02:42:28'),(55,'thiet-ke-nha',5,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:50:17','2023-09-26 02:42:28'),(56,'building-materials',6,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:50:36','2023-09-26 02:42:28'),(57,'vat-lieu-xay-dung',7,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:50:58','2023-09-26 02:42:28'),(65,'tin-tuc-1',8,'Botble\\Blog\\Models\\Category','news','2019-11-22 01:26:08','2023-09-26 02:42:28'),(74,'sales-manager-real-estate',1,'Botble\\Career\\Models\\Career','careers','2019-11-30 19:43:10','2019-11-30 19:43:10'),(76,'senior-real-estate-consultant',3,'Botble\\Career\\Models\\Career','careers','2019-11-30 19:52:42','2019-11-30 19:52:42'),(3170,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-06 21:16:20','2023-07-06 21:16:20'),(3171,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-06 21:16:20','2023-07-06 21:16:20'),(3172,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-06 21:16:20','2023-07-06 21:16:20'),(3173,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-06 21:16:20','2023-07-06 21:16:20'),(3174,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-06 21:16:20','2023-07-06 21:16:20'),(3175,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-06 21:16:20','2023-07-06 21:16:20'),(3176,'home',1,'Botble\\Page\\Models\\Page','','2023-07-06 21:16:22','2023-07-06 21:16:22'),(3177,'news',2,'Botble\\Page\\Models\\Page','','2023-07-06 21:16:22','2023-07-06 21:16:22'),(3178,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-06 21:16:22','2023-07-06 21:16:22'),(3179,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-06 21:16:22','2023-07-06 21:16:22'),(3180,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-06 21:16:22','2023-07-06 21:16:22'),(3181,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-06 21:16:22','2023-07-06 21:16:22'),(3182,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-06 21:16:22','2023-07-06 21:16:22'),(3183,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-06 21:16:22','2023-07-06 21:16:22'),(3200,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 00:22:16','2023-07-10 00:22:16'),(3201,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 00:22:16','2023-07-10 00:22:16'),(3202,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 00:22:16','2023-07-10 00:22:16'),(3203,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 00:22:16','2023-07-10 00:22:16'),(3204,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 00:22:16','2023-07-10 00:22:16'),(3205,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 00:22:16','2023-07-10 00:22:16'),(3206,'home',1,'Botble\\Page\\Models\\Page','','2023-07-10 00:22:18','2023-07-10 00:22:18'),(3207,'news',2,'Botble\\Page\\Models\\Page','','2023-07-10 00:22:18','2023-07-10 00:22:18'),(3208,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-10 00:22:18','2023-07-10 00:22:18'),(3209,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-10 00:22:18','2023-07-10 00:22:18'),(3210,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-10 00:22:18','2023-07-10 00:22:18'),(3211,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-10 00:22:18','2023-07-10 00:22:18'),(3212,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-10 00:22:18','2023-07-10 00:22:18'),(3213,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-10 00:22:18','2023-07-10 00:22:18'),(3230,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 21:21:54','2023-07-10 21:21:54'),(3231,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 21:21:54','2023-07-10 21:21:54'),(3232,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 21:21:54','2023-07-10 21:21:54'),(3233,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 21:21:54','2023-07-10 21:21:54'),(3234,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 21:21:54','2023-07-10 21:21:54'),(3235,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 21:21:54','2023-07-10 21:21:54'),(3236,'home',1,'Botble\\Page\\Models\\Page','','2023-07-10 21:21:55','2023-07-10 21:21:55'),(3237,'news',2,'Botble\\Page\\Models\\Page','','2023-07-10 21:21:55','2023-07-10 21:21:55'),(3238,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-10 21:21:55','2023-07-10 21:21:55'),(3239,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-10 21:21:55','2023-07-10 21:21:55'),(3240,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-10 21:21:55','2023-07-10 21:21:55'),(3241,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-10 21:21:55','2023-07-10 21:21:55'),(3242,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-10 21:21:55','2023-07-10 21:21:55'),(3243,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-10 21:21:55','2023-07-10 21:21:55'),(3260,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-12 03:30:26','2023-07-12 03:30:26'),(3261,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-12 03:30:26','2023-07-12 03:30:26'),(3262,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-12 03:30:26','2023-07-12 03:30:26'),(3263,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-12 03:30:26','2023-07-12 03:30:26'),(3264,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-12 03:30:26','2023-07-12 03:30:26'),(3265,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-12 03:30:26','2023-07-12 03:30:26'),(3266,'home',1,'Botble\\Page\\Models\\Page','','2023-07-12 03:30:27','2023-07-12 03:30:27'),(3267,'news',2,'Botble\\Page\\Models\\Page','','2023-07-12 03:30:27','2023-07-12 03:30:27'),(3268,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-12 03:30:27','2023-07-12 03:30:27'),(3269,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-12 03:30:27','2023-07-12 03:30:27'),(3270,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-12 03:30:27','2023-07-12 03:30:27'),(3271,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-12 03:30:27','2023-07-12 03:30:27'),(3272,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-12 03:30:27','2023-07-12 03:30:27'),(3273,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-12 03:30:27','2023-07-12 03:30:27'),(3290,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 00:31:13','2023-07-13 00:31:13'),(3291,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 00:31:13','2023-07-13 00:31:13'),(3292,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 00:31:13','2023-07-13 00:31:13'),(3293,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 00:31:13','2023-07-13 00:31:13'),(3294,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 00:31:13','2023-07-13 00:31:13'),(3295,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 00:31:13','2023-07-13 00:31:13'),(3296,'home',1,'Botble\\Page\\Models\\Page','','2023-07-13 00:31:15','2023-07-13 00:31:15'),(3297,'news',2,'Botble\\Page\\Models\\Page','','2023-07-13 00:31:15','2023-07-13 00:31:15'),(3298,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-13 00:31:15','2023-07-13 00:31:15'),(3299,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-13 00:31:15','2023-07-13 00:31:15'),(3300,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-13 00:31:15','2023-07-13 00:31:15'),(3301,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-13 00:31:15','2023-07-13 00:31:15'),(3302,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-13 00:31:15','2023-07-13 00:31:15'),(3303,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-13 00:31:15','2023-07-13 00:31:15'),(3320,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 01:42:08','2023-07-13 01:42:08'),(3321,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 01:42:08','2023-07-13 01:42:08'),(3322,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 01:42:08','2023-07-13 01:42:08'),(3323,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 01:42:08','2023-07-13 01:42:08'),(3324,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 01:42:08','2023-07-13 01:42:08'),(3325,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 01:42:08','2023-07-13 01:42:08'),(3326,'home',1,'Botble\\Page\\Models\\Page','','2023-07-13 01:42:12','2023-07-13 01:42:12'),(3327,'news',2,'Botble\\Page\\Models\\Page','','2023-07-13 01:42:12','2023-07-13 01:42:12'),(3328,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-13 01:42:12','2023-07-13 01:42:12'),(3329,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-13 01:42:12','2023-07-13 01:42:12'),(3330,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-13 01:42:12','2023-07-13 01:42:12'),(3331,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-13 01:42:12','2023-07-13 01:42:12'),(3332,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-13 01:42:12','2023-07-13 01:42:12'),(3333,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-13 01:42:12','2023-07-13 01:42:12'),(3350,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 20:20:19','2023-07-13 20:20:19'),(3351,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 20:20:19','2023-07-13 20:20:19'),(3352,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 20:20:19','2023-07-13 20:20:19'),(3353,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 20:20:19','2023-07-13 20:20:19'),(3354,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 20:20:19','2023-07-13 20:20:19'),(3355,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 20:20:19','2023-07-13 20:20:19'),(3356,'home',1,'Botble\\Page\\Models\\Page','','2023-07-13 20:20:20','2023-07-13 20:20:20'),(3357,'news',2,'Botble\\Page\\Models\\Page','','2023-07-13 20:20:20','2023-07-13 20:20:20'),(3358,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-13 20:20:20','2023-07-13 20:20:20'),(3359,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-13 20:20:20','2023-07-13 20:20:20'),(3360,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-13 20:20:20','2023-07-13 20:20:20'),(3361,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-13 20:20:20','2023-07-13 20:20:20'),(3362,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-13 20:20:20','2023-07-13 20:20:20'),(3363,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-13 20:20:20','2023-07-13 20:20:20'),(3380,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 02:05:15','2023-07-14 02:05:15'),(3381,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 02:05:15','2023-07-14 02:05:15'),(3382,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 02:05:15','2023-07-14 02:05:15'),(3383,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 02:05:15','2023-07-14 02:05:15'),(3384,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 02:05:15','2023-07-14 02:05:15'),(3385,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 02:05:15','2023-07-14 02:05:15'),(3386,'home',1,'Botble\\Page\\Models\\Page','','2023-07-14 02:05:17','2023-07-14 02:05:17'),(3387,'news',2,'Botble\\Page\\Models\\Page','','2023-07-14 02:05:17','2023-07-14 02:05:17'),(3388,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-14 02:05:17','2023-07-14 02:05:17'),(3389,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-14 02:05:17','2023-07-14 02:05:17'),(3390,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-14 02:05:17','2023-07-14 02:05:17'),(3391,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-14 02:05:17','2023-07-14 02:05:17'),(3392,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-14 02:05:17','2023-07-14 02:05:17'),(3393,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-14 02:05:17','2023-07-14 02:05:17'),(3410,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 18:37:40','2023-07-14 18:37:40'),(3411,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 18:37:40','2023-07-14 18:37:40'),(3412,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 18:37:40','2023-07-14 18:37:40'),(3413,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 18:37:40','2023-07-14 18:37:40'),(3414,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 18:37:40','2023-07-14 18:37:40'),(3415,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 18:37:40','2023-07-14 18:37:40'),(3416,'home',1,'Botble\\Page\\Models\\Page','','2023-07-14 18:37:41','2023-07-14 18:37:41'),(3417,'news',2,'Botble\\Page\\Models\\Page','','2023-07-14 18:37:41','2023-07-14 18:37:41'),(3418,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-14 18:37:41','2023-07-14 18:37:41'),(3419,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-14 18:37:41','2023-07-14 18:37:41'),(3420,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-14 18:37:41','2023-07-14 18:37:41'),(3421,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-14 18:37:41','2023-07-14 18:37:41'),(3422,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-14 18:37:41','2023-07-14 18:37:41'),(3423,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-14 18:37:41','2023-07-14 18:37:41'),(3440,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 23:15:07','2023-07-14 23:15:07'),(3441,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 23:15:07','2023-07-14 23:15:07'),(3442,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 23:15:07','2023-07-14 23:15:07'),(3443,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 23:15:07','2023-07-14 23:15:07'),(3444,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 23:15:07','2023-07-14 23:15:07'),(3445,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 23:15:07','2023-07-14 23:15:07'),(3446,'home',1,'Botble\\Page\\Models\\Page','','2023-07-14 23:15:09','2023-07-14 23:15:09'),(3447,'news',2,'Botble\\Page\\Models\\Page','','2023-07-14 23:15:09','2023-07-14 23:15:09'),(3448,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-14 23:15:09','2023-07-14 23:15:09'),(3449,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-14 23:15:09','2023-07-14 23:15:09'),(3450,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-14 23:15:09','2023-07-14 23:15:09'),(3451,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-14 23:15:09','2023-07-14 23:15:09'),(3452,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-14 23:15:09','2023-07-14 23:15:09'),(3453,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-14 23:15:09','2023-07-14 23:15:09'),(3470,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-18 23:25:23','2023-07-18 23:25:23'),(3471,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-18 23:25:23','2023-07-18 23:25:23'),(3472,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-18 23:25:23','2023-07-18 23:25:23'),(3473,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-18 23:25:23','2023-07-18 23:25:23'),(3474,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-18 23:25:23','2023-07-18 23:25:23'),(3475,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-18 23:25:23','2023-07-18 23:25:23'),(3476,'home',1,'Botble\\Page\\Models\\Page','','2023-07-18 23:25:25','2023-07-18 23:25:25'),(3477,'news',2,'Botble\\Page\\Models\\Page','','2023-07-18 23:25:25','2023-07-18 23:25:25'),(3478,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-18 23:25:25','2023-07-18 23:25:25'),(3479,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-18 23:25:25','2023-07-18 23:25:25'),(3480,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-18 23:25:25','2023-07-18 23:25:25'),(3481,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-18 23:25:25','2023-07-18 23:25:25'),(3482,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-18 23:25:25','2023-07-18 23:25:25'),(3483,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-18 23:25:25','2023-07-18 23:25:25'),(3500,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-20 21:21:09','2023-07-20 21:21:09'),(3501,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-20 21:21:09','2023-07-20 21:21:09'),(3502,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-20 21:21:09','2023-07-20 21:21:09'),(3503,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-20 21:21:09','2023-07-20 21:21:09'),(3504,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-20 21:21:09','2023-07-20 21:21:09'),(3505,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-20 21:21:09','2023-07-20 21:21:09'),(3506,'home',1,'Botble\\Page\\Models\\Page','','2023-07-20 21:21:10','2023-07-20 21:21:10'),(3507,'news',2,'Botble\\Page\\Models\\Page','','2023-07-20 21:21:10','2023-07-20 21:21:10'),(3508,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-20 21:21:10','2023-07-20 21:21:10'),(3509,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-20 21:21:10','2023-07-20 21:21:10'),(3510,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-20 21:21:10','2023-07-20 21:21:10'),(3511,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-20 21:21:10','2023-07-20 21:21:10'),(3512,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-20 21:21:10','2023-07-20 21:21:10'),(3513,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-20 21:21:10','2023-07-20 21:21:10'),(3530,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-13 20:47:26','2023-08-13 20:47:26'),(3531,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-13 20:47:26','2023-08-13 20:47:26'),(3532,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-13 20:47:26','2023-08-13 20:47:26'),(3533,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-13 20:47:26','2023-08-13 20:47:26'),(3534,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-13 20:47:26','2023-08-13 20:47:26'),(3535,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-13 20:47:26','2023-08-13 20:47:26'),(3536,'home',1,'Botble\\Page\\Models\\Page','','2023-08-13 20:47:28','2023-08-13 20:47:28'),(3537,'news',2,'Botble\\Page\\Models\\Page','','2023-08-13 20:47:28','2023-08-13 20:47:28'),(3538,'about-us',3,'Botble\\Page\\Models\\Page','','2023-08-13 20:47:28','2023-08-13 20:47:28'),(3539,'contact',4,'Botble\\Page\\Models\\Page','','2023-08-13 20:47:28','2023-08-13 20:47:28'),(3540,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-08-13 20:47:28','2023-08-13 20:47:28'),(3541,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-08-13 20:47:28','2023-08-13 20:47:28'),(3542,'properties',7,'Botble\\Page\\Models\\Page','','2023-08-13 20:47:28','2023-08-13 20:47:28'),(3543,'projects',8,'Botble\\Page\\Models\\Page','','2023-08-13 20:47:28','2023-08-13 20:47:28'),(3560,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-14 00:52:27','2023-08-14 00:52:27'),(3561,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-14 00:52:27','2023-08-14 00:52:27'),(3562,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-14 00:52:27','2023-08-14 00:52:27'),(3563,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-14 00:52:27','2023-08-14 00:52:27'),(3564,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-14 00:52:27','2023-08-14 00:52:27'),(3565,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-14 00:52:27','2023-08-14 00:52:27'),(3566,'home',1,'Botble\\Page\\Models\\Page','','2023-08-14 00:52:29','2023-08-14 00:52:29'),(3567,'news',2,'Botble\\Page\\Models\\Page','','2023-08-14 00:52:29','2023-08-14 00:52:29'),(3568,'about-us',3,'Botble\\Page\\Models\\Page','','2023-08-14 00:52:29','2023-08-14 00:52:29'),(3569,'contact',4,'Botble\\Page\\Models\\Page','','2023-08-14 00:52:29','2023-08-14 00:52:29'),(3570,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-08-14 00:52:29','2023-08-14 00:52:29'),(3571,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-08-14 00:52:29','2023-08-14 00:52:29'),(3572,'properties',7,'Botble\\Page\\Models\\Page','','2023-08-14 00:52:29','2023-08-14 00:52:29'),(3573,'projects',8,'Botble\\Page\\Models\\Page','','2023-08-14 00:52:29','2023-08-14 00:52:29'),(3590,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-15 23:55:06','2023-08-15 23:55:06'),(3591,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-15 23:55:06','2023-08-15 23:55:06'),(3592,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-15 23:55:06','2023-08-15 23:55:06'),(3593,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-15 23:55:06','2023-08-15 23:55:06'),(3594,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-15 23:55:06','2023-08-15 23:55:06'),(3595,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-15 23:55:06','2023-08-15 23:55:06'),(3596,'home',1,'Botble\\Page\\Models\\Page','','2023-08-15 23:55:07','2023-08-15 23:55:07'),(3597,'news',2,'Botble\\Page\\Models\\Page','','2023-08-15 23:55:07','2023-08-15 23:55:07'),(3598,'about-us',3,'Botble\\Page\\Models\\Page','','2023-08-15 23:55:07','2023-08-15 23:55:07'),(3599,'contact',4,'Botble\\Page\\Models\\Page','','2023-08-15 23:55:07','2023-08-15 23:55:07'),(3600,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-08-15 23:55:07','2023-08-15 23:55:07'),(3601,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-08-15 23:55:07','2023-08-15 23:55:07'),(3602,'properties',7,'Botble\\Page\\Models\\Page','','2023-08-15 23:55:07','2023-08-15 23:55:07'),(3603,'projects',8,'Botble\\Page\\Models\\Page','','2023-08-15 23:55:07','2023-08-15 23:55:07'),(3620,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 00:04:58','2023-08-17 00:04:58'),(3621,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 00:04:58','2023-08-17 00:04:58'),(3622,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 00:04:58','2023-08-17 00:04:58'),(3623,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 00:04:58','2023-08-17 00:04:58'),(3624,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 00:04:58','2023-08-17 00:04:58'),(3625,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 00:04:58','2023-08-17 00:04:58'),(3626,'home',1,'Botble\\Page\\Models\\Page','','2023-08-17 00:04:59','2023-08-17 00:04:59'),(3627,'news',2,'Botble\\Page\\Models\\Page','','2023-08-17 00:04:59','2023-08-17 00:04:59'),(3628,'about-us',3,'Botble\\Page\\Models\\Page','','2023-08-17 00:04:59','2023-08-17 00:04:59'),(3629,'contact',4,'Botble\\Page\\Models\\Page','','2023-08-17 00:04:59','2023-08-17 00:04:59'),(3630,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-08-17 00:04:59','2023-08-17 00:04:59'),(3631,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-08-17 00:04:59','2023-08-17 00:04:59'),(3632,'properties',7,'Botble\\Page\\Models\\Page','','2023-08-17 00:04:59','2023-08-17 00:04:59'),(3633,'projects',8,'Botble\\Page\\Models\\Page','','2023-08-17 00:04:59','2023-08-17 00:04:59'),(3650,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 01:25:36','2023-08-17 01:25:36'),(3651,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 01:25:36','2023-08-17 01:25:36'),(3652,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 01:25:36','2023-08-17 01:25:36'),(3653,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 01:25:36','2023-08-17 01:25:36'),(3654,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 01:25:36','2023-08-17 01:25:36'),(3655,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 01:25:36','2023-08-17 01:25:36'),(3656,'home',1,'Botble\\Page\\Models\\Page','','2023-08-17 01:25:37','2023-08-17 01:25:37'),(3657,'news',2,'Botble\\Page\\Models\\Page','','2023-08-17 01:25:37','2023-08-17 01:25:37'),(3658,'about-us',3,'Botble\\Page\\Models\\Page','','2023-08-17 01:25:37','2023-08-17 01:25:37'),(3659,'contact',4,'Botble\\Page\\Models\\Page','','2023-08-17 01:25:37','2023-08-17 01:25:37'),(3660,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-08-17 01:25:37','2023-08-17 01:25:37'),(3661,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-08-17 01:25:37','2023-08-17 01:25:37'),(3662,'properties',7,'Botble\\Page\\Models\\Page','','2023-08-17 01:25:37','2023-08-17 01:25:37'),(3663,'projects',8,'Botble\\Page\\Models\\Page','','2023-08-17 01:25:37','2023-08-17 01:25:37'),(3680,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 01:23:38','2023-08-20 01:23:38'),(3681,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 01:23:38','2023-08-20 01:23:38'),(3682,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 01:23:38','2023-08-20 01:23:38'),(3683,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 01:23:38','2023-08-20 01:23:38'),(3684,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 01:23:38','2023-08-20 01:23:38'),(3685,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 01:23:38','2023-08-20 01:23:38'),(3686,'home',1,'Botble\\Page\\Models\\Page','','2023-08-20 01:23:40','2023-08-20 01:23:40'),(3687,'news',2,'Botble\\Page\\Models\\Page','','2023-08-20 01:23:40','2023-08-20 01:23:40'),(3688,'about-us',3,'Botble\\Page\\Models\\Page','','2023-08-20 01:23:40','2023-08-20 01:23:40'),(3689,'contact',4,'Botble\\Page\\Models\\Page','','2023-08-20 01:23:40','2023-08-20 01:23:40'),(3690,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-08-20 01:23:40','2023-08-20 01:23:40'),(3691,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-08-20 01:23:40','2023-08-20 01:23:40'),(3692,'properties',7,'Botble\\Page\\Models\\Page','','2023-08-20 01:23:40','2023-08-20 01:23:40'),(3693,'projects',8,'Botble\\Page\\Models\\Page','','2023-08-20 01:23:40','2023-08-20 01:23:40'),(3710,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 23:04:29','2023-08-20 23:04:29'),(3711,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 23:04:29','2023-08-20 23:04:29'),(3712,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 23:04:29','2023-08-20 23:04:29'),(3713,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 23:04:29','2023-08-20 23:04:29'),(3714,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 23:04:29','2023-08-20 23:04:29'),(3715,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 23:04:29','2023-08-20 23:04:29'),(3716,'home',1,'Botble\\Page\\Models\\Page','','2023-08-20 23:04:31','2023-08-20 23:04:31'),(3717,'news',2,'Botble\\Page\\Models\\Page','','2023-08-20 23:04:31','2023-08-20 23:04:31'),(3718,'about-us',3,'Botble\\Page\\Models\\Page','','2023-08-20 23:04:31','2023-08-20 23:04:31'),(3719,'contact',4,'Botble\\Page\\Models\\Page','','2023-08-20 23:04:31','2023-08-20 23:04:31'),(3720,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-08-20 23:04:31','2023-08-20 23:04:31'),(3721,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-08-20 23:04:31','2023-08-20 23:04:31'),(3722,'properties',7,'Botble\\Page\\Models\\Page','','2023-08-20 23:04:31','2023-08-20 23:04:31'),(3723,'projects',8,'Botble\\Page\\Models\\Page','','2023-08-20 23:04:31','2023-08-20 23:04:31'),(3740,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-24 00:24:10','2023-08-24 00:24:10'),(3741,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-24 00:24:10','2023-08-24 00:24:10'),(3742,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-24 00:24:10','2023-08-24 00:24:10'),(3743,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-24 00:24:10','2023-08-24 00:24:10'),(3744,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-24 00:24:10','2023-08-24 00:24:10'),(3745,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-24 00:24:10','2023-08-24 00:24:10'),(3746,'home',1,'Botble\\Page\\Models\\Page','','2023-08-24 00:24:11','2023-08-24 00:24:11'),(3747,'news',2,'Botble\\Page\\Models\\Page','','2023-08-24 00:24:11','2023-08-24 00:24:11'),(3748,'about-us',3,'Botble\\Page\\Models\\Page','','2023-08-24 00:24:11','2023-08-24 00:24:11'),(3749,'contact',4,'Botble\\Page\\Models\\Page','','2023-08-24 00:24:11','2023-08-24 00:24:11'),(3750,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-08-24 00:24:11','2023-08-24 00:24:11'),(3751,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-08-24 00:24:11','2023-08-24 00:24:11'),(3752,'properties',7,'Botble\\Page\\Models\\Page','','2023-08-24 00:24:11','2023-08-24 00:24:11'),(3753,'projects',8,'Botble\\Page\\Models\\Page','','2023-08-24 00:24:11','2023-08-24 00:24:11'),(3770,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-05 23:58:57','2023-09-05 23:58:57'),(3771,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-05 23:58:57','2023-09-05 23:58:57'),(3772,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-05 23:58:57','2023-09-05 23:58:57'),(3773,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-05 23:58:57','2023-09-05 23:58:57'),(3774,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-05 23:58:57','2023-09-05 23:58:57'),(3775,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-05 23:58:57','2023-09-05 23:58:57'),(3776,'home',1,'Botble\\Page\\Models\\Page','','2023-09-05 23:58:59','2023-09-05 23:58:59'),(3777,'news',2,'Botble\\Page\\Models\\Page','','2023-09-05 23:58:59','2023-09-05 23:58:59'),(3778,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-05 23:58:59','2023-09-05 23:58:59'),(3779,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-05 23:58:59','2023-09-05 23:58:59'),(3780,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-05 23:58:59','2023-09-05 23:58:59'),(3781,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-05 23:58:59','2023-09-05 23:58:59'),(3782,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-05 23:58:59','2023-09-05 23:58:59'),(3783,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-05 23:58:59','2023-09-05 23:58:59'),(3800,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 00:01:38','2023-09-13 00:01:38'),(3801,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 00:01:38','2023-09-13 00:01:38'),(3802,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 00:01:38','2023-09-13 00:01:38'),(3803,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 00:01:38','2023-09-13 00:01:38'),(3804,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 00:01:38','2023-09-13 00:01:38'),(3805,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 00:01:38','2023-09-13 00:01:38'),(3806,'home',1,'Botble\\Page\\Models\\Page','','2023-09-13 00:01:40','2023-09-13 00:01:40'),(3807,'news',2,'Botble\\Page\\Models\\Page','','2023-09-13 00:01:40','2023-09-13 00:01:40'),(3808,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-13 00:01:40','2023-09-13 00:01:40'),(3809,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-13 00:01:40','2023-09-13 00:01:40'),(3810,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-13 00:01:40','2023-09-13 00:01:40'),(3811,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-13 00:01:40','2023-09-13 00:01:40'),(3812,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-13 00:01:40','2023-09-13 00:01:40'),(3813,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-13 00:01:40','2023-09-13 00:01:40'),(3830,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 01:54:02','2023-09-13 01:54:02'),(3831,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 01:54:02','2023-09-13 01:54:02'),(3832,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 01:54:02','2023-09-13 01:54:02'),(3833,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 01:54:02','2023-09-13 01:54:02'),(3834,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 01:54:02','2023-09-13 01:54:02'),(3835,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 01:54:02','2023-09-13 01:54:02'),(3836,'home',1,'Botble\\Page\\Models\\Page','','2023-09-13 01:54:03','2023-09-13 01:54:03'),(3837,'news',2,'Botble\\Page\\Models\\Page','','2023-09-13 01:54:03','2023-09-13 01:54:03'),(3838,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-13 01:54:03','2023-09-13 01:54:03'),(3839,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-13 01:54:03','2023-09-13 01:54:03'),(3840,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-13 01:54:03','2023-09-13 01:54:03'),(3841,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-13 01:54:03','2023-09-13 01:54:03'),(3842,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-13 01:54:03','2023-09-13 01:54:03'),(3843,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-13 01:54:03','2023-09-13 01:54:03'),(3860,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-15 18:15:42','2023-09-15 18:15:42'),(3861,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-15 18:15:42','2023-09-15 18:15:42'),(3862,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-15 18:15:42','2023-09-15 18:15:42'),(3863,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-15 18:15:42','2023-09-15 18:15:42'),(3864,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-15 18:15:42','2023-09-15 18:15:42'),(3865,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-15 18:15:42','2023-09-15 18:15:42'),(3866,'home',1,'Botble\\Page\\Models\\Page','','2023-09-15 18:15:43','2023-09-15 18:15:43'),(3867,'news',2,'Botble\\Page\\Models\\Page','','2023-09-15 18:15:43','2023-09-15 18:15:43'),(3868,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-15 18:15:43','2023-09-15 18:15:43'),(3869,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-15 18:15:43','2023-09-15 18:15:43'),(3870,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-15 18:15:43','2023-09-15 18:15:43'),(3871,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-15 18:15:43','2023-09-15 18:15:43'),(3872,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-15 18:15:43','2023-09-15 18:15:43'),(3873,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-15 18:15:43','2023-09-15 18:15:43'),(3890,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-16 07:26:10','2023-09-16 07:26:10'),(3891,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-16 07:26:10','2023-09-16 07:26:10'),(3892,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-16 07:26:10','2023-09-16 07:26:10'),(3893,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-16 07:26:10','2023-09-16 07:26:10'),(3894,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-16 07:26:10','2023-09-16 07:26:10'),(3895,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-16 07:26:10','2023-09-16 07:26:10'),(3896,'home',1,'Botble\\Page\\Models\\Page','','2023-09-16 07:26:12','2023-09-16 07:26:12'),(3897,'news',2,'Botble\\Page\\Models\\Page','','2023-09-16 07:26:12','2023-09-16 07:26:12'),(3898,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-16 07:26:12','2023-09-16 07:26:12'),(3899,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-16 07:26:12','2023-09-16 07:26:12'),(3900,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-16 07:26:12','2023-09-16 07:26:12'),(3901,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-16 07:26:12','2023-09-16 07:26:12'),(3902,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-16 07:26:12','2023-09-16 07:26:12'),(3903,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-16 07:26:12','2023-09-16 07:26:12'),(3920,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 01:39:19','2023-09-18 01:39:19'),(3921,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 01:39:19','2023-09-18 01:39:19'),(3922,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 01:39:19','2023-09-18 01:39:19'),(3923,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 01:39:19','2023-09-18 01:39:19'),(3924,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 01:39:19','2023-09-18 01:39:19'),(3925,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 01:39:19','2023-09-18 01:39:19'),(3926,'home',1,'Botble\\Page\\Models\\Page','','2023-09-18 01:39:20','2023-09-18 01:39:20'),(3927,'news',2,'Botble\\Page\\Models\\Page','','2023-09-18 01:39:20','2023-09-18 01:39:20'),(3928,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-18 01:39:20','2023-09-18 01:39:20'),(3929,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-18 01:39:20','2023-09-18 01:39:20'),(3930,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-18 01:39:20','2023-09-18 01:39:20'),(3931,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-18 01:39:20','2023-09-18 01:39:20'),(3932,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-18 01:39:20','2023-09-18 01:39:20'),(3933,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-18 01:39:20','2023-09-18 01:39:20'),(3950,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 03:28:20','2023-09-18 03:28:20'),(3951,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 03:28:20','2023-09-18 03:28:20'),(3952,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 03:28:20','2023-09-18 03:28:20'),(3953,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 03:28:20','2023-09-18 03:28:20'),(3954,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 03:28:20','2023-09-18 03:28:20'),(3955,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 03:28:20','2023-09-18 03:28:20'),(3956,'home',1,'Botble\\Page\\Models\\Page','','2023-09-18 03:28:21','2023-09-18 03:28:21'),(3957,'news',2,'Botble\\Page\\Models\\Page','','2023-09-18 03:28:21','2023-09-18 03:28:21'),(3958,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-18 03:28:21','2023-09-18 03:28:21'),(3959,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-18 03:28:21','2023-09-18 03:28:21'),(3960,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-18 03:28:21','2023-09-18 03:28:21'),(3961,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-18 03:28:21','2023-09-18 03:28:21'),(3962,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-18 03:28:21','2023-09-18 03:28:21'),(3963,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-18 03:28:21','2023-09-18 03:28:21'),(3980,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 04:32:22','2023-09-18 04:32:22'),(3981,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 04:32:22','2023-09-18 04:32:22'),(3982,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 04:32:22','2023-09-18 04:32:22'),(3983,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 04:32:22','2023-09-18 04:32:22'),(3984,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 04:32:22','2023-09-18 04:32:22'),(3985,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 04:32:22','2023-09-18 04:32:22'),(3986,'home',1,'Botble\\Page\\Models\\Page','','2023-09-18 04:32:24','2023-09-18 04:32:24'),(3987,'news',2,'Botble\\Page\\Models\\Page','','2023-09-18 04:32:24','2023-09-18 04:32:24'),(3988,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-18 04:32:24','2023-09-18 04:32:24'),(3989,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-18 04:32:24','2023-09-18 04:32:24'),(3990,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-18 04:32:24','2023-09-18 04:32:24'),(3991,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-18 04:32:24','2023-09-18 04:32:24'),(3992,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-18 04:32:24','2023-09-18 04:32:24'),(3993,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-18 04:32:24','2023-09-18 04:32:24'),(4010,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-19 00:06:57','2023-09-19 00:06:57'),(4011,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-19 00:06:57','2023-09-19 00:06:57'),(4012,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-19 00:06:57','2023-09-19 00:06:57'),(4013,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-19 00:06:57','2023-09-19 00:06:57'),(4014,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-19 00:06:57','2023-09-19 00:06:57'),(4015,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-19 00:06:57','2023-09-19 00:06:57'),(4016,'home',1,'Botble\\Page\\Models\\Page','','2023-09-19 00:06:59','2023-09-19 00:06:59'),(4017,'news',2,'Botble\\Page\\Models\\Page','','2023-09-19 00:06:59','2023-09-19 00:06:59'),(4018,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-19 00:06:59','2023-09-19 00:06:59'),(4019,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-19 00:06:59','2023-09-19 00:06:59'),(4020,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-19 00:06:59','2023-09-19 00:06:59'),(4021,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-19 00:06:59','2023-09-19 00:06:59'),(4022,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-19 00:06:59','2023-09-19 00:06:59'),(4023,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-19 00:06:59','2023-09-19 00:06:59'),(4040,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-20 00:51:41','2023-09-20 00:51:41'),(4041,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-20 00:51:41','2023-09-20 00:51:41'),(4042,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-20 00:51:41','2023-09-20 00:51:41'),(4043,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-20 00:51:41','2023-09-20 00:51:41'),(4044,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-20 00:51:41','2023-09-20 00:51:41'),(4045,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-20 00:51:41','2023-09-20 00:51:41'),(4046,'home',1,'Botble\\Page\\Models\\Page','','2023-09-20 00:51:42','2023-09-20 00:51:42'),(4047,'news',2,'Botble\\Page\\Models\\Page','','2023-09-20 00:51:42','2023-09-20 00:51:42'),(4048,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-20 00:51:42','2023-09-20 00:51:42'),(4049,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-20 00:51:42','2023-09-20 00:51:42'),(4050,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-20 00:51:42','2023-09-20 00:51:42'),(4051,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-20 00:51:42','2023-09-20 00:51:42'),(4052,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-20 00:51:42','2023-09-20 00:51:42'),(4053,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-20 00:51:42','2023-09-20 00:51:42'),(4070,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-23 07:28:22','2023-09-23 07:28:22'),(4071,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-23 07:28:22','2023-09-23 07:28:22'),(4072,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-23 07:28:22','2023-09-23 07:28:22'),(4073,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-23 07:28:22','2023-09-23 07:28:22'),(4074,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-23 07:28:22','2023-09-23 07:28:22'),(4075,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-23 07:28:22','2023-09-23 07:28:22'),(4076,'home',1,'Botble\\Page\\Models\\Page','','2023-09-23 07:28:23','2023-09-23 07:28:23'),(4077,'news',2,'Botble\\Page\\Models\\Page','','2023-09-23 07:28:23','2023-09-23 07:28:23'),(4078,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-23 07:28:23','2023-09-23 07:28:23'),(4079,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-23 07:28:23','2023-09-23 07:28:23'),(4080,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-23 07:28:23','2023-09-23 07:28:23'),(4081,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-23 07:28:23','2023-09-23 07:28:23'),(4082,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-23 07:28:23','2023-09-23 07:28:23'),(4083,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-23 07:28:23','2023-09-23 07:28:23'),(4100,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 01:19:35','2023-09-24 01:19:35'),(4101,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 01:19:35','2023-09-24 01:19:35'),(4102,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 01:19:35','2023-09-24 01:19:35'),(4103,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 01:19:35','2023-09-24 01:19:35'),(4104,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 01:19:35','2023-09-24 01:19:35'),(4105,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 01:19:35','2023-09-24 01:19:35'),(4106,'home',1,'Botble\\Page\\Models\\Page','','2023-09-24 01:19:39','2023-09-24 01:19:39'),(4107,'news',2,'Botble\\Page\\Models\\Page','','2023-09-24 01:19:39','2023-09-24 01:19:39'),(4108,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-24 01:19:39','2023-09-24 01:19:39'),(4109,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-24 01:19:39','2023-09-24 01:19:39'),(4110,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-24 01:19:39','2023-09-24 01:19:39'),(4111,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-24 01:19:39','2023-09-24 01:19:39'),(4112,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-24 01:19:39','2023-09-24 01:19:39'),(4113,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-24 01:19:39','2023-09-24 01:19:39'),(4130,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 21:25:11','2023-09-24 21:25:11'),(4131,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 21:25:11','2023-09-24 21:25:11'),(4132,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 21:25:11','2023-09-24 21:25:11'),(4133,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 21:25:11','2023-09-24 21:25:11'),(4134,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 21:25:11','2023-09-24 21:25:11'),(4135,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 21:25:11','2023-09-24 21:25:11'),(4136,'home',1,'Botble\\Page\\Models\\Page','','2023-09-24 21:25:15','2023-09-24 21:25:15'),(4137,'news',2,'Botble\\Page\\Models\\Page','','2023-09-24 21:25:15','2023-09-24 21:25:15'),(4138,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-24 21:25:15','2023-09-24 21:25:15'),(4139,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-24 21:25:15','2023-09-24 21:25:15'),(4140,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-24 21:25:15','2023-09-24 21:25:15'),(4141,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-24 21:25:15','2023-09-24 21:25:15'),(4142,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-24 21:25:15','2023-09-24 21:25:15'),(4143,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-24 21:25:15','2023-09-24 21:25:15'),(4160,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-26 02:42:24','2023-09-26 02:42:24'),(4161,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-26 02:42:24','2023-09-26 02:42:24'),(4162,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-26 02:42:24','2023-09-26 02:42:24'),(4163,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-26 02:42:24','2023-09-26 02:42:24'),(4164,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-26 02:42:24','2023-09-26 02:42:24'),(4165,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-26 02:42:24','2023-09-26 02:42:24'),(4166,'home',1,'Botble\\Page\\Models\\Page','','2023-09-26 02:42:28','2023-09-26 02:42:28'),(4167,'news',2,'Botble\\Page\\Models\\Page','','2023-09-26 02:42:28','2023-09-26 02:42:28'),(4168,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-26 02:42:28','2023-09-26 02:42:28'),(4169,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-26 02:42:28','2023-09-26 02:42:28'),(4170,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-26 02:42:28','2023-09-26 02:42:28'),(4171,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-26 02:42:28','2023-09-26 02:42:28'),(4172,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-26 02:42:28','2023-09-26 02:42:28'),(4173,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-26 02:42:28','2023-09-26 02:42:28'),(4174,'the-top-2020-handbag-trends-to-know',2121,'Botble\\Blog\\Models\\Post','news','2023-09-26 02:42:29','2023-09-26 02:42:29'),(4175,'top-search-engine-optimization-strategies',2122,'Botble\\Blog\\Models\\Post','news','2023-09-26 02:42:29','2023-09-26 02:42:29'),(4176,'which-company-would-you-choose',2123,'Botble\\Blog\\Models\\Post','news','2023-09-26 02:42:29','2023-09-26 02:42:29'),(4177,'used-car-dealer-sales-tricks-exposed',2124,'Botble\\Blog\\Models\\Post','news','2023-09-26 02:42:29','2023-09-26 02:42:29'),(4178,'20-ways-to-sell-your-product-faster',2125,'Botble\\Blog\\Models\\Post','news','2023-09-26 02:42:29','2023-09-26 02:42:29'),(4179,'the-secrets-of-rich-and-famous-writers',2126,'Botble\\Blog\\Models\\Post','news','2023-09-26 02:42:29','2023-09-26 02:42:29'),(4180,'imagine-losing-20-pounds-in-14-days',2127,'Botble\\Blog\\Models\\Post','news','2023-09-26 02:42:29','2023-09-26 02:42:29'),(4181,'are-you-still-using-that-slow-old-typewriter',2128,'Botble\\Blog\\Models\\Post','news','2023-09-26 02:42:29','2023-09-26 02:42:29'),(4182,'a-skin-cream-thats-proven-to-work',2129,'Botble\\Blog\\Models\\Post','news','2023-09-26 02:42:29','2023-09-26 02:42:29'),(4183,'10-reasons-to-start-your-own-profitable-website',2130,'Botble\\Blog\\Models\\Post','news','2023-09-26 02:42:29','2023-09-26 02:42:29'),(4184,'simple-ways-to-reduce-your-unwanted-wrinkles',2131,'Botble\\Blog\\Models\\Post','news','2023-09-26 02:42:29','2023-09-26 02:42:29'),(4185,'apple-imac-with-retina-5k-display-review',2132,'Botble\\Blog\\Models\\Post','news','2023-09-26 02:42:29','2023-09-26 02:42:29'),(4186,'10000-web-site-visitors-in-one-monthguaranteed',2133,'Botble\\Blog\\Models\\Post','news','2023-09-26 02:42:29','2023-09-26 02:42:29'),(4187,'unlock-the-secrets-of-selling-high-ticket-items',2134,'Botble\\Blog\\Models\\Post','news','2023-09-26 02:42:29','2023-09-26 02:42:29'),(4188,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',2135,'Botble\\Blog\\Models\\Post','news','2023-09-26 02:42:29','2023-09-26 02:42:29'),(4189,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2136,'Botble\\Blog\\Models\\Post','news','2023-09-26 02:42:29','2023-09-26 02:42:29');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California',1,0,0,'published','2019-11-18 08:17:57','2023-08-13 20:47:25',NULL,'california',0,NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'BCG sets great store',1,'Botble\\ACL\\Models\\User','','published','2019-11-18 02:51:35','2019-11-18 02:51:35'),(2,'Private Home Sales',1,'Botble\\ACL\\Models\\User','','published','2019-11-18 02:55:53','2019-11-18 02:55:53'),(3,'South Korean investors',1,'Botble\\ACL\\Models\\User','','published','2019-11-18 03:07:27','2019-11-18 03:07:27');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `credits` int unsigned NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `account_id` bigint unsigned DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add',
  `payment_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5925 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
INSERT INTO `user_meta` VALUES (1,'admin-locale','en',1,'2019-11-17 20:19:14','2019-11-30 19:25:04');
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'super@botble.com',NULL,'$2y$12$fetShddx6myjbSevOCuXTesbNSmXtEoKdEy3giERSWhsP59dDreXG',NULL,'2023-09-26 02:42:28','2023-09-26 02:42:28',NULL,NULL,'Super','Admin','botble',NULL,1,1),(2,'admin@botble.com',NULL,'$2y$12$xFxpLMeTgivBQuWE/psZdOrmYmS7EA2ZVOj5sLW27IheAklj5.xB6',NULL,'2023-09-26 02:42:28','2023-09-26 02:42:28',NULL,NULL,'John','Smith','admin',NULL,1,1),(3,'user@botble.com',NULL,'$2y$12$LNEOxizEkvbhMlQCncEuZeGbg/3hddTxaEtwTJ3chVhlFvOGBvOpK',NULL,'2023-09-26 02:42:28','2023-09-26 02:42:28','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"career.index\":true,\"career.create\":true,\"career.edit\":true,\"career.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"plugins.real-estate\":true,\"real-estate.settings\":true,\"property.index\":true,\"property.create\":true,\"property.edit\":true,\"property.destroy\":true,\"project.index\":true,\"project.create\":true,\"project.edit\":true,\"project.destroy\":true,\"property_feature.index\":true,\"property_feature.create\":true,\"property_feature.edit\":true,\"property_feature.destroy\":true,\"investor.index\":true,\"investor.create\":true,\"investor.edit\":true,\"investor.destroy\":true,\"review.index\":true,\"review.create\":true,\"review.edit\":true,\"review.destroy\":true,\"consult.index\":true,\"consult.create\":true,\"consult.edit\":true,\"consult.destroy\":true,\"property_category.index\":true,\"property_category.create\":true,\"property_category.edit\":true,\"property_category.destroy\":true,\"facility.index\":true,\"facility.create\":true,\"facility.edit\":true,\"facility.destroy\":true,\"account.index\":true,\"account.create\":true,\"account.edit\":true,\"account.destroy\":true,\"package.index\":true,\"package.create\":true,\"package.edit\":true,\"package.destroy\":true,\"consults.index\":true,\"consults.edit\":true,\"consults.destroy\":true,\"real-estate.custom-fields.index\":true,\"real-estate.custom-fields.create\":true,\"real-estate.custom-fields.edit\":true,\"real-estate.custom-fields.destroy\":true,\"invoice.index\":true,\"invoice.edit\":true,\"invoice.destroy\":true,\"invoice.template\":true,\"import-properties.index\":true,\"export-properties.index\":true,\"import-projects.index\":true,\"export-projects.index\":true,\"coupons.index\":true,\"coupons.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}',NULL,'Demon','Warlock','user',NULL,0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (20,'CustomMenuWidget','footer_sidebar','flex-home',0,'{\"id\":\"CustomMenuWidget\",\"name\":\"About\",\"menu_id\":\"about\"}','2019-11-17 22:09:57','2019-11-17 22:09:57'),(21,'CustomMenuWidget','footer_sidebar','flex-home',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"More information\",\"menu_id\":\"more-information\"}','2019-11-17 22:09:57','2019-11-17 22:09:57'),(22,'CustomMenuWidget','footer_sidebar','flex-home',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"News\",\"menu_id\":\"news\"}','2019-11-17 22:09:57','2019-11-17 22:09:57'),(24,'CategoriesWidget','primary_sidebar','flex-home',0,'{\"id\":\"CategoriesWidget\",\"name\":\"Categories\"}','2019-11-18 03:50:44','2019-11-18 03:50:44'),(25,'RecentPostsWidget','primary_sidebar','flex-home',1,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent posts\",\"number_display\":\"5\"}','2019-11-18 03:50:45','2019-11-18 03:50:45');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-26 16:42:44