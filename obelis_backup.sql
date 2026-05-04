/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.2.2-MariaDB, for Android (aarch64)
--
-- Host: localhost    Database: if0_41766184_obelis_db
-- ------------------------------------------------------
-- Server version	12.2.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) unsigned DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) unsigned DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject` (`subject_type`,`subject_id`),
  KEY `causer` (`causer_type`,`causer_id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` VALUES
(1,'lunar','created','staff',1,'created',NULL,NULL,'{\"attributes\":{\"id\":1,\"admin\":true,\"first_name\":\"obelis\",\"last_name\":\"admin\",\"email\":\"theobeliscorp@gmail.com\",\"email_verified_at\":null,\"password\":\"$2y$12$xyl0HeROpj90mIGkJk7E5OB4m0V9zF1tPk8tvngwv9O30WtM8qIHS\",\"two_factor_secret\":null,\"two_factor_recovery_codes\":null,\"two_factor_confirmed_at\":null,\"remember_token\":null,\"created_at\":\"2026-05-03T22:51:26.000000Z\",\"deleted_at\":null}}',NULL,'2026-05-04 03:51:26','2026-05-04 03:51:26'),
(2,'lunar','created','channel',1,'created',NULL,NULL,'{\"attributes\":{\"id\":1,\"name\":\"Webstore\",\"handle\":\"webstore\",\"default\":1,\"url\":\"http:\\/\\/localhost\",\"created_at\":\"2026-05-03T22:52:00.000000Z\",\"deleted_at\":null}}',NULL,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(3,'lunar','created','currency',1,'created',NULL,NULL,'{\"attributes\":{\"id\":1,\"code\":\"USD\",\"name\":\"US Dollar\",\"exchange_rate\":\"1.0000\",\"decimal_places\":2,\"enabled\":true,\"default\":true,\"sync_prices\":false,\"created_at\":\"2026-05-03T22:52:00.000000Z\"}}',NULL,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4,'lunar','created','customer_group',1,'created',NULL,NULL,'{\"attributes\":{\"id\":1,\"name\":\"Retail\",\"handle\":\"retail\",\"default\":1,\"attribute_data\":null,\"created_at\":\"2026-05-03T22:52:00.000000Z\"}}',NULL,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(5,'lunar','created','collection_group',1,'created',NULL,NULL,'{\"attributes\":{\"id\":1,\"name\":\"Main\",\"handle\":\"main\",\"created_at\":\"2026-05-03T22:52:00.000000Z\"}}',NULL,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(6,'lunar','created','tax_class',1,'created',NULL,NULL,'{\"attributes\":{\"id\":1,\"name\":\"Default Tax Class\",\"default\":1,\"created_at\":\"2026-05-03T22:52:00.000000Z\"}}',NULL,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(7,'lunar','created','tax_zone',1,'created',NULL,NULL,'{\"attributes\":{\"id\":1,\"name\":\"Default Tax Zone\",\"zone_type\":\"country\",\"price_display\":\"tax_exclusive\",\"active\":true,\"default\":true,\"created_at\":\"2026-05-03T22:52:00.000000Z\"}}',NULL,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(8,'lunar','created','attribute_group',1,'created',NULL,NULL,'{\"attributes\":{\"id\":1,\"attributable_type\":\"product\",\"name\":{\"en\":\"Details\"},\"handle\":\"details\",\"position\":1,\"created_at\":\"2026-05-03T22:52:01.000000Z\"}}',NULL,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(9,'lunar','created','attribute_group',2,'created',NULL,NULL,'{\"attributes\":{\"id\":2,\"attributable_type\":\"collection\",\"name\":{\"en\":\"Details\"},\"handle\":\"collection_details\",\"position\":1,\"created_at\":\"2026-05-03T22:52:01.000000Z\"}}',NULL,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(10,'lunar','created','product_type',1,'created',NULL,NULL,'{\"attributes\":{\"id\":1,\"name\":\"Stock\",\"created_at\":\"2026-05-03T22:52:01.000000Z\"}}',NULL,'2026-05-04 03:52:01','2026-05-04 03:52:01');
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` bigint(20) NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` bigint(20) NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` smallint(5) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES
(1,'default','{\"uuid\":\"e70d33a8-a656-4a74-a2f5-1a987a40b5f7\",\"displayName\":\"Lunar\\\\Jobs\\\\Currencies\\\\CreateCurrencyPrices\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Lunar\\\\Jobs\\\\Currencies\\\\CreateCurrencyPrices\",\"command\":\"O:42:\\\"Lunar\\\\Jobs\\\\Currencies\\\\CreateCurrencyPrices\\\":1:{s:8:\\\"currency\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"Lunar\\\\Models\\\\Currency\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\",\"batchId\":null},\"createdAt\":1777848720,\"delay\":null}',0,NULL,1777848720,1777848720);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_addresses`
--

DROP TABLE IF EXISTS `lunar_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `country_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `tax_identifier` varchar(255) DEFAULT NULL,
  `line_one` varchar(255) NOT NULL,
  `line_two` varchar(255) DEFAULT NULL,
  `line_three` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `delivery_instructions` varchar(1000) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `shipping_default` tinyint(1) NOT NULL DEFAULT 0,
  `billing_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_addresses_customer_id_foreign` (`customer_id`),
  KEY `lunar_addresses_country_id_foreign` (`country_id`),
  CONSTRAINT `lunar_addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `lunar_countries` (`id`),
  CONSTRAINT `lunar_addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `lunar_customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_addresses`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_addresses` WRITE;
/*!40000 ALTER TABLE `lunar_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_addresses` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_assets`
--

DROP TABLE IF EXISTS `lunar_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_assets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_assets`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_assets` WRITE;
/*!40000 ALTER TABLE `lunar_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_assets` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_attributables`
--

DROP TABLE IF EXISTS `lunar_attributables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_attributables` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attributable_type` varchar(255) NOT NULL,
  `attributable_id` bigint(20) unsigned NOT NULL,
  `attribute_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_attributables_attributable_type_attributable_id_index` (`attributable_type`,`attributable_id`),
  KEY `lunar_attributables_attribute_id_foreign` (`attribute_id`),
  CONSTRAINT `lunar_attributables_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `lunar_attributes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_attributables`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_attributables` WRITE;
/*!40000 ALTER TABLE `lunar_attributables` DISABLE KEYS */;
INSERT INTO `lunar_attributables` VALUES
(1,'product_type',1,3,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(2,'product_type',1,1,'2026-05-04 03:52:01','2026-05-04 03:52:01');
/*!40000 ALTER TABLE `lunar_attributables` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_attribute_groups`
--

DROP TABLE IF EXISTS `lunar_attribute_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_attribute_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attributable_type` varchar(255) NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `handle` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lunar_attribute_groups_handle_unique` (`handle`),
  KEY `lunar_attribute_groups_attributable_type_index` (`attributable_type`),
  KEY `lunar_attribute_groups_position_index` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_attribute_groups`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_attribute_groups` WRITE;
/*!40000 ALTER TABLE `lunar_attribute_groups` DISABLE KEYS */;
INSERT INTO `lunar_attribute_groups` VALUES
(1,'product','{\"en\":\"Details\"}','details',1,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(2,'collection','{\"en\":\"Details\"}','collection_details',1,'2026-05-04 03:52:01','2026-05-04 03:52:01');
/*!40000 ALTER TABLE `lunar_attribute_groups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_attributes`
--

DROP TABLE IF EXISTS `lunar_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_type` varchar(255) NOT NULL,
  `attribute_group_id` bigint(20) unsigned NOT NULL,
  `position` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`)),
  `handle` varchar(255) NOT NULL,
  `section` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `configuration` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`configuration`)),
  `system` tinyint(1) NOT NULL,
  `validation_rules` varchar(255) DEFAULT NULL,
  `filterable` tinyint(1) NOT NULL DEFAULT 0,
  `searchable` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lunar_attributes_attribute_type_handle_unique` (`attribute_type`,`handle`),
  KEY `lunar_attributes_attribute_group_id_foreign` (`attribute_group_id`),
  KEY `lunar_attributes_attribute_type_index` (`attribute_type`),
  KEY `lunar_attributes_position_index` (`position`),
  KEY `lunar_attributes_type_index` (`type`),
  KEY `lunar_attributes_searchable_index` (`searchable`),
  KEY `lunar_attributes_filterable_index` (`filterable`),
  CONSTRAINT `lunar_attributes_attribute_group_id_foreign` FOREIGN KEY (`attribute_group_id`) REFERENCES `lunar_attribute_groups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_attributes`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_attributes` WRITE;
/*!40000 ALTER TABLE `lunar_attributes` DISABLE KEYS */;
INSERT INTO `lunar_attributes` VALUES
(1,'product',1,1,'{\"en\":\"Name\"}','{\"en\":\"\"}','name','main','Lunar\\FieldTypes\\TranslatedText',1,NULL,'{\"richtext\":false}',1,NULL,0,1,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(2,'collection',2,1,'{\"en\":\"Name\"}','{\"en\":\"\"}','name','main','Lunar\\FieldTypes\\TranslatedText',1,NULL,'{\"richtext\":false}',1,NULL,0,1,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(3,'product',1,2,'{\"en\":\"Description\"}','{\"en\":\"\"}','description','main','Lunar\\FieldTypes\\TranslatedText',0,NULL,'{\"richtext\":true}',0,NULL,0,1,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(4,'collection',2,2,'{\"en\":\"Description\"}','{\"en\":\"\"}','description','main','Lunar\\FieldTypes\\TranslatedText',0,NULL,'{\"richtext\":true}',0,NULL,0,1,'2026-05-04 03:52:01','2026-05-04 03:52:01');
/*!40000 ALTER TABLE `lunar_attributes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_brand_collection`
--

DROP TABLE IF EXISTS `lunar_brand_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_brand_collection` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `brand_id` bigint(20) unsigned NOT NULL,
  `collection_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_brand_collection_brand_id_foreign` (`brand_id`),
  KEY `lunar_brand_collection_collection_id_foreign` (`collection_id`),
  CONSTRAINT `lunar_brand_collection_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `lunar_brands` (`id`),
  CONSTRAINT `lunar_brand_collection_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `lunar_collections` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_brand_collection`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_brand_collection` WRITE;
/*!40000 ALTER TABLE `lunar_brand_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_brand_collection` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_brand_discount`
--

DROP TABLE IF EXISTS `lunar_brand_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_brand_discount` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `brand_id` bigint(20) unsigned NOT NULL,
  `discount_id` bigint(20) unsigned NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'limitation',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_brand_discount_brand_id_foreign` (`brand_id`),
  KEY `lunar_brand_discount_discount_id_foreign` (`discount_id`),
  CONSTRAINT `lunar_brand_discount_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `lunar_brands` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lunar_brand_discount_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `lunar_discounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_brand_discount`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_brand_discount` WRITE;
/*!40000 ALTER TABLE `lunar_brand_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_brand_discount` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_brands`
--

DROP TABLE IF EXISTS `lunar_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `attribute_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attribute_data`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_brands`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_brands` WRITE;
/*!40000 ALTER TABLE `lunar_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_brands` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_cart_addresses`
--

DROP TABLE IF EXISTS `lunar_cart_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_cart_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cart_id` bigint(20) unsigned NOT NULL,
  `country_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `tax_identifier` varchar(255) DEFAULT NULL,
  `line_one` varchar(255) DEFAULT NULL,
  `line_two` varchar(255) DEFAULT NULL,
  `line_three` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `delivery_instructions` varchar(1000) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'shipping',
  `shipping_option` varchar(255) DEFAULT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_cart_addresses_cart_id_foreign` (`cart_id`),
  KEY `lunar_cart_addresses_country_id_foreign` (`country_id`),
  KEY `lunar_cart_addresses_type_index` (`type`),
  CONSTRAINT `lunar_cart_addresses_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `lunar_carts` (`id`),
  CONSTRAINT `lunar_cart_addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `lunar_countries` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_cart_addresses`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_cart_addresses` WRITE;
/*!40000 ALTER TABLE `lunar_cart_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_cart_addresses` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_cart_line_discount`
--

DROP TABLE IF EXISTS `lunar_cart_line_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_cart_line_discount` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cart_line_id` bigint(20) unsigned NOT NULL,
  `discount_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_cart_line_discount_cart_line_id_foreign` (`cart_line_id`),
  KEY `lunar_cart_line_discount_discount_id_foreign` (`discount_id`),
  CONSTRAINT `lunar_cart_line_discount_cart_line_id_foreign` FOREIGN KEY (`cart_line_id`) REFERENCES `lunar_carts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lunar_cart_line_discount_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `lunar_discounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_cart_line_discount`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_cart_line_discount` WRITE;
/*!40000 ALTER TABLE `lunar_cart_line_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_cart_line_discount` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_cart_lines`
--

DROP TABLE IF EXISTS `lunar_cart_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_cart_lines` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cart_id` bigint(20) unsigned NOT NULL,
  `purchasable_type` varchar(255) NOT NULL,
  `purchasable_id` bigint(20) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_cart_lines_cart_id_foreign` (`cart_id`),
  KEY `lunar_cart_lines_purchasable_type_purchasable_id_index` (`purchasable_type`,`purchasable_id`),
  CONSTRAINT `lunar_cart_lines_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `lunar_carts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_cart_lines`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_cart_lines` WRITE;
/*!40000 ALTER TABLE `lunar_cart_lines` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_cart_lines` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_carts`
--

DROP TABLE IF EXISTS `lunar_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_carts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `merged_id` bigint(20) unsigned DEFAULT NULL,
  `currency_id` bigint(20) unsigned NOT NULL,
  `channel_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_carts_user_id_foreign` (`user_id`),
  KEY `lunar_carts_merged_id_foreign` (`merged_id`),
  KEY `lunar_carts_currency_id_foreign` (`currency_id`),
  KEY `lunar_carts_channel_id_foreign` (`channel_id`),
  KEY `lunar_carts_order_id_foreign` (`order_id`),
  KEY `lunar_carts_coupon_code_index` (`coupon_code`),
  KEY `lunar_carts_completed_at_index` (`completed_at`),
  KEY `lunar_carts_customer_id_foreign` (`customer_id`),
  CONSTRAINT `lunar_carts_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `lunar_channels` (`id`),
  CONSTRAINT `lunar_carts_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `lunar_currencies` (`id`),
  CONSTRAINT `lunar_carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `lunar_customers` (`id`),
  CONSTRAINT `lunar_carts_merged_id_foreign` FOREIGN KEY (`merged_id`) REFERENCES `lunar_carts` (`id`),
  CONSTRAINT `lunar_carts_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `lunar_orders` (`id`),
  CONSTRAINT `lunar_carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_carts`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_carts` WRITE;
/*!40000 ALTER TABLE `lunar_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_carts` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_channelables`
--

DROP TABLE IF EXISTS `lunar_channelables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_channelables` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `channel_id` bigint(20) unsigned NOT NULL,
  `channelable_type` varchar(255) NOT NULL,
  `channelable_id` bigint(20) unsigned NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_channelables_channel_id_foreign` (`channel_id`),
  KEY `lunar_channelables_channelable_type_channelable_id_index` (`channelable_type`,`channelable_id`),
  KEY `lunar_channelables_ends_at_index` (`ends_at`),
  KEY `lunar_channelables_enabled_index` (`enabled`),
  KEY `lunar_channelables_starts_at_index` (`starts_at`),
  CONSTRAINT `lunar_channelables_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `lunar_channels` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_channelables`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_channelables` WRITE;
/*!40000 ALTER TABLE `lunar_channelables` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_channelables` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_channels`
--

DROP TABLE IF EXISTS `lunar_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_channels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lunar_channels_handle_unique` (`handle`),
  KEY `lunar_channels_default_index` (`default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_channels`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_channels` WRITE;
/*!40000 ALTER TABLE `lunar_channels` DISABLE KEYS */;
INSERT INTO `lunar_channels` VALUES
(1,'Webstore','webstore',1,'http://localhost','2026-05-04 03:52:00','2026-05-04 03:52:00',NULL);
/*!40000 ALTER TABLE `lunar_channels` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_collection_customer_group`
--

DROP TABLE IF EXISTS `lunar_collection_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_collection_customer_group` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `collection_id` bigint(20) unsigned NOT NULL,
  `customer_group_id` bigint(20) unsigned NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `starts_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_collection_customer_group_collection_id_foreign` (`collection_id`),
  KEY `lunar_collection_customer_group_customer_group_id_foreign` (`customer_group_id`),
  KEY `lunar_collection_customer_group_enabled_index` (`enabled`),
  KEY `lunar_collection_customer_group_starts_at_index` (`starts_at`),
  KEY `lunar_collection_customer_group_ends_at_index` (`ends_at`),
  KEY `lunar_collection_customer_group_visible_index` (`visible`),
  CONSTRAINT `lunar_collection_customer_group_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `lunar_collections` (`id`),
  CONSTRAINT `lunar_collection_customer_group_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `lunar_customer_groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_collection_customer_group`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_collection_customer_group` WRITE;
/*!40000 ALTER TABLE `lunar_collection_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_collection_customer_group` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_collection_discount`
--

DROP TABLE IF EXISTS `lunar_collection_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_collection_discount` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discount_id` bigint(20) unsigned NOT NULL,
  `collection_id` bigint(20) unsigned NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'limitation',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_collection_discount_discount_id_foreign` (`discount_id`),
  KEY `lunar_collection_discount_collection_id_foreign` (`collection_id`),
  CONSTRAINT `lunar_collection_discount_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `lunar_collections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lunar_collection_discount_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `lunar_discounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_collection_discount`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_collection_discount` WRITE;
/*!40000 ALTER TABLE `lunar_collection_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_collection_discount` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_collection_groups`
--

DROP TABLE IF EXISTS `lunar_collection_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_collection_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lunar_collection_groups_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_collection_groups`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_collection_groups` WRITE;
/*!40000 ALTER TABLE `lunar_collection_groups` DISABLE KEYS */;
INSERT INTO `lunar_collection_groups` VALUES
(1,'Main','main','2026-05-04 03:52:00','2026-05-04 03:52:00');
/*!40000 ALTER TABLE `lunar_collection_groups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_collection_product`
--

DROP TABLE IF EXISTS `lunar_collection_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_collection_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `collection_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `position` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_collection_product_collection_id_foreign` (`collection_id`),
  KEY `lunar_collection_product_product_id_foreign` (`product_id`),
  KEY `lunar_collection_product_position_index` (`position`),
  CONSTRAINT `lunar_collection_product_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `lunar_collections` (`id`),
  CONSTRAINT `lunar_collection_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `lunar_products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_collection_product`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_collection_product` WRITE;
/*!40000 ALTER TABLE `lunar_collection_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_collection_product` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_collections`
--

DROP TABLE IF EXISTS `lunar_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_collections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `collection_group_id` bigint(20) unsigned NOT NULL,
  `_lft` int(10) unsigned NOT NULL DEFAULT 0,
  `_rgt` int(10) unsigned NOT NULL DEFAULT 0,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'static',
  `attribute_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`attribute_data`)),
  `sort` varchar(255) NOT NULL DEFAULT 'custom',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_collections_collection_group_id_foreign` (`collection_group_id`),
  KEY `lunar_collections__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`),
  KEY `lunar_collections_type_index` (`type`),
  KEY `lunar_collections_sort_index` (`sort`),
  CONSTRAINT `lunar_collections_collection_group_id_foreign` FOREIGN KEY (`collection_group_id`) REFERENCES `lunar_collection_groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_collections`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_collections` WRITE;
/*!40000 ALTER TABLE `lunar_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_collections` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_countries`
--

DROP TABLE IF EXISTS `lunar_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `iso3` varchar(255) NOT NULL,
  `iso2` varchar(255) DEFAULT NULL,
  `phonecode` varchar(255) NOT NULL,
  `capital` varchar(255) DEFAULT NULL,
  `currency` varchar(255) NOT NULL,
  `native` varchar(255) DEFAULT NULL,
  `emoji` varchar(255) NOT NULL,
  `emoji_u` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lunar_countries_iso3_unique` (`iso3`),
  UNIQUE KEY `lunar_countries_iso2_unique` (`iso2`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_countries`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_countries` WRITE;
/*!40000 ALTER TABLE `lunar_countries` DISABLE KEYS */;
INSERT INTO `lunar_countries` VALUES
(1,'Afghanistan','AFG','AF','93','Kabul','AFN','افغانستان','🇦🇫','U+1F1E6 U+1F1EB','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(2,'Aland Islands','ALA','AX','+358-18','Mariehamn','EUR','Åland','🇦🇽','U+1F1E6 U+1F1FD','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(3,'Albania','ALB','AL','355','Tirana','ALL','Shqipëria','🇦🇱','U+1F1E6 U+1F1F1','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(4,'Algeria','DZA','DZ','213','Algiers','DZD','الجزائر','🇩🇿','U+1F1E9 U+1F1FF','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(5,'American Samoa','ASM','AS','+1-684','Pago Pago','USD','American Samoa','🇦🇸','U+1F1E6 U+1F1F8','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(6,'Andorra','AND','AD','376','Andorra la Vella','EUR','Andorra','🇦🇩','U+1F1E6 U+1F1E9','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(7,'Angola','AGO','AO','244','Luanda','AOA','Angola','🇦🇴','U+1F1E6 U+1F1F4','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(8,'Anguilla','AIA','AI','+1-264','The Valley','XCD','Anguilla','🇦🇮','U+1F1E6 U+1F1EE','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(9,'Antarctica','ATA','AQ','672','','AAD','Antarctica','🇦🇶','U+1F1E6 U+1F1F6','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(10,'Antigua And Barbuda','ATG','AG','+1-268','St. John\'s','XCD','Antigua and Barbuda','🇦🇬','U+1F1E6 U+1F1EC','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(11,'Argentina','ARG','AR','54','Buenos Aires','ARS','Argentina','🇦🇷','U+1F1E6 U+1F1F7','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(12,'Armenia','ARM','AM','374','Yerevan','AMD','Հայաստան','🇦🇲','U+1F1E6 U+1F1F2','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(13,'Aruba','ABW','AW','297','Oranjestad','AWG','Aruba','🇦🇼','U+1F1E6 U+1F1FC','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(14,'Australia','AUS','AU','61','Canberra','AUD','Australia','🇦🇺','U+1F1E6 U+1F1FA','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(15,'Austria','AUT','AT','43','Vienna','EUR','Österreich','🇦🇹','U+1F1E6 U+1F1F9','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(16,'Azerbaijan','AZE','AZ','994','Baku','AZN','Azərbaycan','🇦🇿','U+1F1E6 U+1F1FF','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(17,'Bahamas The','BHS','BS','+1-242','Nassau','BSD','Bahamas','🇧🇸','U+1F1E7 U+1F1F8','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(18,'Bahrain','BHR','BH','973','Manama','BHD','‏البحرين','🇧🇭','U+1F1E7 U+1F1ED','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(19,'Bangladesh','BGD','BD','880','Dhaka','BDT','Bangladesh','🇧🇩','U+1F1E7 U+1F1E9','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(20,'Barbados','BRB','BB','+1-246','Bridgetown','BBD','Barbados','🇧🇧','U+1F1E7 U+1F1E7','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(21,'Belarus','BLR','BY','375','Minsk','BYN','Белару́сь','🇧🇾','U+1F1E7 U+1F1FE','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(22,'Belgium','BEL','BE','32','Brussels','EUR','België','🇧🇪','U+1F1E7 U+1F1EA','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(23,'Belize','BLZ','BZ','501','Belmopan','BZD','Belize','🇧🇿','U+1F1E7 U+1F1FF','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(24,'Benin','BEN','BJ','229','Porto-Novo','XOF','Bénin','🇧🇯','U+1F1E7 U+1F1EF','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(25,'Bermuda','BMU','BM','+1-441','Hamilton','BMD','Bermuda','🇧🇲','U+1F1E7 U+1F1F2','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(26,'Bhutan','BTN','BT','975','Thimphu','BTN','ʼbrug-yul','🇧🇹','U+1F1E7 U+1F1F9','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(27,'Bolivia','BOL','BO','591','Sucre','BOB','Bolivia','🇧🇴','U+1F1E7 U+1F1F4','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(28,'Bonaire, Sint Eustatius and Saba','BES','BQ','599','Kralendijk','USD','Caribisch Nederland','🇧🇶','U+1F1E7 U+1F1F6','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(29,'Bosnia and Herzegovina','BIH','BA','387','Sarajevo','BAM','Bosna i Hercegovina','🇧🇦','U+1F1E7 U+1F1E6','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(30,'Botswana','BWA','BW','267','Gaborone','BWP','Botswana','🇧🇼','U+1F1E7 U+1F1FC','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(31,'Bouvet Island','BVT','BV','0055','','NOK','Bouvetøya','🇧🇻','U+1F1E7 U+1F1FB','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(32,'Brazil','BRA','BR','55','Brasilia','BRL','Brasil','🇧🇷','U+1F1E7 U+1F1F7','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(33,'British Indian Ocean Territory','IOT','IO','246','Diego Garcia','USD','British Indian Ocean Territory','🇮🇴','U+1F1EE U+1F1F4','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(34,'Brunei','BRN','BN','673','Bandar Seri Begawan','BND','Negara Brunei Darussalam','🇧🇳','U+1F1E7 U+1F1F3','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(35,'Bulgaria','BGR','BG','359','Sofia','BGN','България','🇧🇬','U+1F1E7 U+1F1EC','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(36,'Burkina Faso','BFA','BF','226','Ouagadougou','XOF','Burkina Faso','🇧🇫','U+1F1E7 U+1F1EB','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(37,'Burundi','BDI','BI','257','Bujumbura','BIF','Burundi','🇧🇮','U+1F1E7 U+1F1EE','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(38,'Cambodia','KHM','KH','855','Phnom Penh','KHR','Kâmpŭchéa','🇰🇭','U+1F1F0 U+1F1ED','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(39,'Cameroon','CMR','CM','237','Yaounde','XAF','Cameroon','🇨🇲','U+1F1E8 U+1F1F2','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(40,'Canada','CAN','CA','1','Ottawa','CAD','Canada','🇨🇦','U+1F1E8 U+1F1E6','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(41,'Cape Verde','CPV','CV','238','Praia','CVE','Cabo Verde','🇨🇻','U+1F1E8 U+1F1FB','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(42,'Cayman Islands','CYM','KY','+1-345','George Town','KYD','Cayman Islands','🇰🇾','U+1F1F0 U+1F1FE','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(43,'Central African Republic','CAF','CF','236','Bangui','XAF','Ködörösêse tî Bêafrîka','🇨🇫','U+1F1E8 U+1F1EB','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(44,'Chad','TCD','TD','235','N\'Djamena','XAF','Tchad','🇹🇩','U+1F1F9 U+1F1E9','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(45,'Chile','CHL','CL','56','Santiago','CLP','Chile','🇨🇱','U+1F1E8 U+1F1F1','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(46,'China','CHN','CN','86','Beijing','CNY','中国','🇨🇳','U+1F1E8 U+1F1F3','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(47,'Christmas Island','CXR','CX','61','Flying Fish Cove','AUD','Christmas Island','🇨🇽','U+1F1E8 U+1F1FD','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(48,'Cocos (Keeling) Islands','CCK','CC','61','West Island','AUD','Cocos (Keeling) Islands','🇨🇨','U+1F1E8 U+1F1E8','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(49,'Colombia','COL','CO','57','Bogota','COP','Colombia','🇨🇴','U+1F1E8 U+1F1F4','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(50,'Comoros','COM','KM','269','Moroni','KMF','Komori','🇰🇲','U+1F1F0 U+1F1F2','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(51,'Congo','COG','CG','242','Brazzaville','XAF','République du Congo','🇨🇬','U+1F1E8 U+1F1EC','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(52,'Cook Islands','COK','CK','682','Avarua','NZD','Cook Islands','🇨🇰','U+1F1E8 U+1F1F0','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(53,'Costa Rica','CRI','CR','506','San Jose','CRC','Costa Rica','🇨🇷','U+1F1E8 U+1F1F7','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(54,'Cote D\'Ivoire (Ivory Coast)','CIV','CI','225','Yamoussoukro','XOF',NULL,'🇨🇮','U+1F1E8 U+1F1EE','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(55,'Croatia','HRV','HR','385','Zagreb','HRK','Hrvatska','🇭🇷','U+1F1ED U+1F1F7','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(56,'Cuba','CUB','CU','53','Havana','CUP','Cuba','🇨🇺','U+1F1E8 U+1F1FA','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(57,'Curaçao','CUW','CW','599','Willemstad','ANG','Curaçao','🇨🇼','U+1F1E8 U+1F1FC','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(58,'Cyprus','CYP','CY','357','Nicosia','EUR','Κύπρος','🇨🇾','U+1F1E8 U+1F1FE','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(59,'Czech Republic','CZE','CZ','420','Prague','CZK','Česká republika','🇨🇿','U+1F1E8 U+1F1FF','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(60,'Democratic Republic of the Congo','COD','CD','243','Kinshasa','CDF','République démocratique du Congo','🇨🇩','U+1F1E8 U+1F1E9','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(61,'Denmark','DNK','DK','45','Copenhagen','DKK','Danmark','🇩🇰','U+1F1E9 U+1F1F0','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(62,'Djibouti','DJI','DJ','253','Djibouti','DJF','Djibouti','🇩🇯','U+1F1E9 U+1F1EF','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(63,'Dominica','DMA','DM','+1-767','Roseau','XCD','Dominica','🇩🇲','U+1F1E9 U+1F1F2','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(64,'Dominican Republic','DOM','DO','+1-809 and 1-829','Santo Domingo','DOP','República Dominicana','🇩🇴','U+1F1E9 U+1F1F4','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(65,'East Timor','TLS','TL','670','Dili','USD','Timor-Leste','🇹🇱','U+1F1F9 U+1F1F1','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(66,'Ecuador','ECU','EC','593','Quito','USD','Ecuador','🇪🇨','U+1F1EA U+1F1E8','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(67,'Egypt','EGY','EG','20','Cairo','EGP','مصر‎','🇪🇬','U+1F1EA U+1F1EC','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(68,'El Salvador','SLV','SV','503','San Salvador','USD','El Salvador','🇸🇻','U+1F1F8 U+1F1FB','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(69,'Equatorial Guinea','GNQ','GQ','240','Malabo','XAF','Guinea Ecuatorial','🇬🇶','U+1F1EC U+1F1F6','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(70,'Eritrea','ERI','ER','291','Asmara','ERN','ኤርትራ','🇪🇷','U+1F1EA U+1F1F7','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(71,'Estonia','EST','EE','372','Tallinn','EUR','Eesti','🇪🇪','U+1F1EA U+1F1EA','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(72,'Ethiopia','ETH','ET','251','Addis Ababa','ETB','ኢትዮጵያ','🇪🇹','U+1F1EA U+1F1F9','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(73,'Falkland Islands','FLK','FK','500','Stanley','FKP','Falkland Islands','🇫🇰','U+1F1EB U+1F1F0','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(74,'Faroe Islands','FRO','FO','298','Torshavn','DKK','Føroyar','🇫🇴','U+1F1EB U+1F1F4','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(75,'Fiji Islands','FJI','FJ','679','Suva','FJD','Fiji','🇫🇯','U+1F1EB U+1F1EF','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(76,'Finland','FIN','FI','358','Helsinki','EUR','Suomi','🇫🇮','U+1F1EB U+1F1EE','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(77,'France','FRA','FR','33','Paris','EUR','France','🇫🇷','U+1F1EB U+1F1F7','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(78,'French Guiana','GUF','GF','594','Cayenne','EUR','Guyane française','🇬🇫','U+1F1EC U+1F1EB','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(79,'French Polynesia','PYF','PF','689','Papeete','XPF','Polynésie française','🇵🇫','U+1F1F5 U+1F1EB','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(80,'French Southern Territories','ATF','TF','262','Port-aux-Francais','EUR','Territoire des Terres australes et antarctiques fr','🇹🇫','U+1F1F9 U+1F1EB','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(81,'Gabon','GAB','GA','241','Libreville','XAF','Gabon','🇬🇦','U+1F1EC U+1F1E6','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(82,'Gambia The','GMB','GM','220','Banjul','GMD','Gambia','🇬🇲','U+1F1EC U+1F1F2','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(83,'Georgia','GEO','GE','995','Tbilisi','GEL','საქართველო','🇬🇪','U+1F1EC U+1F1EA','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(84,'Germany','DEU','DE','49','Berlin','EUR','Deutschland','🇩🇪','U+1F1E9 U+1F1EA','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(85,'Ghana','GHA','GH','233','Accra','GHS','Ghana','🇬🇭','U+1F1EC U+1F1ED','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(86,'Gibraltar','GIB','GI','350','Gibraltar','GIP','Gibraltar','🇬🇮','U+1F1EC U+1F1EE','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(87,'Greece','GRC','GR','30','Athens','EUR','Ελλάδα','🇬🇷','U+1F1EC U+1F1F7','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(88,'Greenland','GRL','GL','299','Nuuk','DKK','Kalaallit Nunaat','🇬🇱','U+1F1EC U+1F1F1','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(89,'Grenada','GRD','GD','+1-473','St. George\'s','XCD','Grenada','🇬🇩','U+1F1EC U+1F1E9','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(90,'Guadeloupe','GLP','GP','590','Basse-Terre','EUR','Guadeloupe','🇬🇵','U+1F1EC U+1F1F5','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(91,'Guam','GUM','GU','+1-671','Hagatna','USD','Guam','🇬🇺','U+1F1EC U+1F1FA','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(92,'Guatemala','GTM','GT','502','Guatemala City','GTQ','Guatemala','🇬🇹','U+1F1EC U+1F1F9','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(93,'Guernsey and Alderney','GGY','GG','+44-1481','St Peter Port','GBP','Guernsey','🇬🇬','U+1F1EC U+1F1EC','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(94,'Guinea','GIN','GN','224','Conakry','GNF','Guinée','🇬🇳','U+1F1EC U+1F1F3','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(95,'Guinea-Bissau','GNB','GW','245','Bissau','XOF','Guiné-Bissau','🇬🇼','U+1F1EC U+1F1FC','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(96,'Guyana','GUY','GY','592','Georgetown','GYD','Guyana','🇬🇾','U+1F1EC U+1F1FE','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(97,'Haiti','HTI','HT','509','Port-au-Prince','HTG','Haïti','🇭🇹','U+1F1ED U+1F1F9','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(98,'Heard Island and McDonald Islands','HMD','HM','672','','AUD','Heard Island and McDonald Islands','🇭🇲','U+1F1ED U+1F1F2','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(99,'Honduras','HND','HN','504','Tegucigalpa','HNL','Honduras','🇭🇳','U+1F1ED U+1F1F3','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(100,'Hong Kong S.A.R.','HKG','HK','852','Hong Kong','HKD','香港','🇭🇰','U+1F1ED U+1F1F0','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(101,'Hungary','HUN','HU','36','Budapest','HUF','Magyarország','🇭🇺','U+1F1ED U+1F1FA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(102,'Iceland','ISL','IS','354','Reykjavik','ISK','Ísland','🇮🇸','U+1F1EE U+1F1F8','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(103,'India','IND','IN','91','New Delhi','INR','भारत','🇮🇳','U+1F1EE U+1F1F3','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(104,'Indonesia','IDN','ID','62','Jakarta','IDR','Indonesia','🇮🇩','U+1F1EE U+1F1E9','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(105,'Iran','IRN','IR','98','Tehran','IRR','ایران','🇮🇷','U+1F1EE U+1F1F7','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(106,'Iraq','IRQ','IQ','964','Baghdad','IQD','العراق','🇮🇶','U+1F1EE U+1F1F6','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(107,'Ireland','IRL','IE','353','Dublin','EUR','Éire','🇮🇪','U+1F1EE U+1F1EA','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(108,'Israel','ISR','IL','972','Jerusalem','ILS','יִשְׂרָאֵל','🇮🇱','U+1F1EE U+1F1F1','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(109,'Italy','ITA','IT','39','Rome','EUR','Italia','🇮🇹','U+1F1EE U+1F1F9','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(110,'Jamaica','JAM','JM','+1-876','Kingston','JMD','Jamaica','🇯🇲','U+1F1EF U+1F1F2','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(111,'Japan','JPN','JP','81','Tokyo','JPY','日本','🇯🇵','U+1F1EF U+1F1F5','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(112,'Jersey','JEY','JE','+44-1534','Saint Helier','GBP','Jersey','🇯🇪','U+1F1EF U+1F1EA','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(113,'Jordan','JOR','JO','962','Amman','JOD','الأردن','🇯🇴','U+1F1EF U+1F1F4','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(114,'Kazakhstan','KAZ','KZ','7','Astana','KZT','Қазақстан','🇰🇿','U+1F1F0 U+1F1FF','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(115,'Kenya','KEN','KE','254','Nairobi','KES','Kenya','🇰🇪','U+1F1F0 U+1F1EA','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(116,'Kiribati','KIR','KI','686','Tarawa','AUD','Kiribati','🇰🇮','U+1F1F0 U+1F1EE','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(117,'Kosovo','XKX','XK','383','Pristina','EUR','Republika e Kosovës','🇽🇰','U+1F1FD U+1F1F0','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(118,'Kuwait','KWT','KW','965','Kuwait City','KWD','الكويت','🇰🇼','U+1F1F0 U+1F1FC','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(119,'Kyrgyzstan','KGZ','KG','996','Bishkek','KGS','Кыргызстан','🇰🇬','U+1F1F0 U+1F1EC','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(120,'Laos','LAO','LA','856','Vientiane','LAK','ສປປລາວ','🇱🇦','U+1F1F1 U+1F1E6','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(121,'Latvia','LVA','LV','371','Riga','EUR','Latvija','🇱🇻','U+1F1F1 U+1F1FB','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(122,'Lebanon','LBN','LB','961','Beirut','LBP','لبنان','🇱🇧','U+1F1F1 U+1F1E7','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(123,'Lesotho','LSO','LS','266','Maseru','LSL','Lesotho','🇱🇸','U+1F1F1 U+1F1F8','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(124,'Liberia','LBR','LR','231','Monrovia','LRD','Liberia','🇱🇷','U+1F1F1 U+1F1F7','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(125,'Libya','LBY','LY','218','Tripolis','LYD','‏ليبيا','🇱🇾','U+1F1F1 U+1F1FE','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(126,'Liechtenstein','LIE','LI','423','Vaduz','CHF','Liechtenstein','🇱🇮','U+1F1F1 U+1F1EE','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(127,'Lithuania','LTU','LT','370','Vilnius','EUR','Lietuva','🇱🇹','U+1F1F1 U+1F1F9','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(128,'Luxembourg','LUX','LU','352','Luxembourg','EUR','Luxembourg','🇱🇺','U+1F1F1 U+1F1FA','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(129,'Macau S.A.R.','MAC','MO','853','Macao','MOP','澳門','🇲🇴','U+1F1F2 U+1F1F4','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(130,'Macedonia','MKD','MK','389','Skopje','MKD','Северна Македонија','🇲🇰','U+1F1F2 U+1F1F0','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(131,'Madagascar','MDG','MG','261','Antananarivo','MGA','Madagasikara','🇲🇬','U+1F1F2 U+1F1EC','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(132,'Malawi','MWI','MW','265','Lilongwe','MWK','Malawi','🇲🇼','U+1F1F2 U+1F1FC','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(133,'Malaysia','MYS','MY','60','Kuala Lumpur','MYR','Malaysia','🇲🇾','U+1F1F2 U+1F1FE','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(134,'Maldives','MDV','MV','960','Male','MVR','Maldives','🇲🇻','U+1F1F2 U+1F1FB','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(135,'Mali','MLI','ML','223','Bamako','XOF','Mali','🇲🇱','U+1F1F2 U+1F1F1','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(136,'Malta','MLT','MT','356','Valletta','EUR','Malta','🇲🇹','U+1F1F2 U+1F1F9','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(137,'Man (Isle of)','IMN','IM','+44-1624','Douglas, Isle of Man','GBP','Isle of Man','🇮🇲','U+1F1EE U+1F1F2','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(138,'Marshall Islands','MHL','MH','692','Majuro','USD','M̧ajeļ','🇲🇭','U+1F1F2 U+1F1ED','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(139,'Martinique','MTQ','MQ','596','Fort-de-France','EUR','Martinique','🇲🇶','U+1F1F2 U+1F1F6','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(140,'Mauritania','MRT','MR','222','Nouakchott','MRO','موريتانيا','🇲🇷','U+1F1F2 U+1F1F7','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(141,'Mauritius','MUS','MU','230','Port Louis','MUR','Maurice','🇲🇺','U+1F1F2 U+1F1FA','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(142,'Mayotte','MYT','YT','262','Mamoudzou','EUR','Mayotte','🇾🇹','U+1F1FE U+1F1F9','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(143,'Mexico','MEX','MX','52','Mexico City','MXN','México','🇲🇽','U+1F1F2 U+1F1FD','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(144,'Micronesia','FSM','FM','691','Palikir','USD','Micronesia','🇫🇲','U+1F1EB U+1F1F2','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(145,'Moldova','MDA','MD','373','Chisinau','MDL','Moldova','🇲🇩','U+1F1F2 U+1F1E9','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(146,'Monaco','MCO','MC','377','Monaco','EUR','Monaco','🇲🇨','U+1F1F2 U+1F1E8','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(147,'Mongolia','MNG','MN','976','Ulan Bator','MNT','Монгол улс','🇲🇳','U+1F1F2 U+1F1F3','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(148,'Montenegro','MNE','ME','382','Podgorica','EUR','Црна Гора','🇲🇪','U+1F1F2 U+1F1EA','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(149,'Montserrat','MSR','MS','+1-664','Plymouth','XCD','Montserrat','🇲🇸','U+1F1F2 U+1F1F8','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(150,'Morocco','MAR','MA','212','Rabat','MAD','المغرب','🇲🇦','U+1F1F2 U+1F1E6','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(151,'Mozambique','MOZ','MZ','258','Maputo','MZN','Moçambique','🇲🇿','U+1F1F2 U+1F1FF','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(152,'Myanmar','MMR','MM','95','Nay Pyi Taw','MMK','မြန်မာ','🇲🇲','U+1F1F2 U+1F1F2','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(153,'Namibia','NAM','NA','264','Windhoek','NAD','Namibia','🇳🇦','U+1F1F3 U+1F1E6','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(154,'Nauru','NRU','NR','674','Yaren','AUD','Nauru','🇳🇷','U+1F1F3 U+1F1F7','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(155,'Nepal','NPL','NP','977','Kathmandu','NPR','नपल','🇳🇵','U+1F1F3 U+1F1F5','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(156,'Netherlands','NLD','NL','31','Amsterdam','EUR','Nederland','🇳🇱','U+1F1F3 U+1F1F1','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(157,'New Caledonia','NCL','NC','687','Noumea','XPF','Nouvelle-Calédonie','🇳🇨','U+1F1F3 U+1F1E8','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(158,'New Zealand','NZL','NZ','64','Wellington','NZD','New Zealand','🇳🇿','U+1F1F3 U+1F1FF','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(159,'Nicaragua','NIC','NI','505','Managua','NIO','Nicaragua','🇳🇮','U+1F1F3 U+1F1EE','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(160,'Niger','NER','NE','227','Niamey','XOF','Niger','🇳🇪','U+1F1F3 U+1F1EA','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(161,'Nigeria','NGA','NG','234','Abuja','NGN','Nigeria','🇳🇬','U+1F1F3 U+1F1EC','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(162,'Niue','NIU','NU','683','Alofi','NZD','Niuē','🇳🇺','U+1F1F3 U+1F1FA','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(163,'Norfolk Island','NFK','NF','672','Kingston','AUD','Norfolk Island','🇳🇫','U+1F1F3 U+1F1EB','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(164,'North Korea','PRK','KP','850','Pyongyang','KPW','북한','🇰🇵','U+1F1F0 U+1F1F5','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(165,'Northern Mariana Islands','MNP','MP','+1-670','Saipan','USD','Northern Mariana Islands','🇲🇵','U+1F1F2 U+1F1F5','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(166,'Norway','NOR','NO','47','Oslo','NOK','Norge','🇳🇴','U+1F1F3 U+1F1F4','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(167,'Oman','OMN','OM','968','Muscat','OMR','عمان','🇴🇲','U+1F1F4 U+1F1F2','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(168,'Pakistan','PAK','PK','92','Islamabad','PKR','Pakistan','🇵🇰','U+1F1F5 U+1F1F0','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(169,'Palau','PLW','PW','680','Melekeok','USD','Palau','🇵🇼','U+1F1F5 U+1F1FC','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(170,'Palestinian Territory Occupied','PSE','PS','970','East Jerusalem','ILS','فلسطين','🇵🇸','U+1F1F5 U+1F1F8','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(171,'Panama','PAN','PA','507','Panama City','PAB','Panamá','🇵🇦','U+1F1F5 U+1F1E6','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(172,'Papua new Guinea','PNG','PG','675','Port Moresby','PGK','Papua Niugini','🇵🇬','U+1F1F5 U+1F1EC','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(173,'Paraguay','PRY','PY','595','Asuncion','PYG','Paraguay','🇵🇾','U+1F1F5 U+1F1FE','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(174,'Peru','PER','PE','51','Lima','PEN','Perú','🇵🇪','U+1F1F5 U+1F1EA','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(175,'Philippines','PHL','PH','63','Manila','PHP','Pilipinas','🇵🇭','U+1F1F5 U+1F1ED','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(176,'Pitcairn Island','PCN','PN','870','Adamstown','NZD','Pitcairn Islands','🇵🇳','U+1F1F5 U+1F1F3','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(177,'Poland','POL','PL','48','Warsaw','PLN','Polska','🇵🇱','U+1F1F5 U+1F1F1','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(178,'Portugal','PRT','PT','351','Lisbon','EUR','Portugal','🇵🇹','U+1F1F5 U+1F1F9','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(179,'Puerto Rico','PRI','PR','+1-787 and 1-939','San Juan','USD','Puerto Rico','🇵🇷','U+1F1F5 U+1F1F7','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(180,'Qatar','QAT','QA','974','Doha','QAR','قطر','🇶🇦','U+1F1F6 U+1F1E6','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(181,'Reunion','REU','RE','262','Saint-Denis','EUR','La Réunion','🇷🇪','U+1F1F7 U+1F1EA','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(182,'Romania','ROU','RO','40','Bucharest','RON','România','🇷🇴','U+1F1F7 U+1F1F4','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(183,'Russia','RUS','RU','7','Moscow','RUB','Россия','🇷🇺','U+1F1F7 U+1F1FA','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(184,'Rwanda','RWA','RW','250','Kigali','RWF','Rwanda','🇷🇼','U+1F1F7 U+1F1FC','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(185,'Saint Helena','SHN','SH','290','Jamestown','SHP','Saint Helena','🇸🇭','U+1F1F8 U+1F1ED','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(186,'Saint Kitts And Nevis','KNA','KN','+1-869','Basseterre','XCD','Saint Kitts and Nevis','🇰🇳','U+1F1F0 U+1F1F3','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(187,'Saint Lucia','LCA','LC','+1-758','Castries','XCD','Saint Lucia','🇱🇨','U+1F1F1 U+1F1E8','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(188,'Saint Pierre and Miquelon','SPM','PM','508','Saint-Pierre','EUR','Saint-Pierre-et-Miquelon','🇵🇲','U+1F1F5 U+1F1F2','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(189,'Saint Vincent And The Grenadines','VCT','VC','+1-784','Kingstown','XCD','Saint Vincent and the Grenadines','🇻🇨','U+1F1FB U+1F1E8','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(190,'Saint-Barthelemy','BLM','BL','590','Gustavia','EUR','Saint-Barthélemy','🇧🇱','U+1F1E7 U+1F1F1','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(191,'Saint-Martin (French part)','MAF','MF','590','Marigot','EUR','Saint-Martin','🇲🇫','U+1F1F2 U+1F1EB','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(192,'Samoa','WSM','WS','685','Apia','WST','Samoa','🇼🇸','U+1F1FC U+1F1F8','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(193,'San Marino','SMR','SM','378','San Marino','EUR','San Marino','🇸🇲','U+1F1F8 U+1F1F2','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(194,'Sao Tome and Principe','STP','ST','239','Sao Tome','STD','São Tomé e Príncipe','🇸🇹','U+1F1F8 U+1F1F9','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(195,'Saudi Arabia','SAU','SA','966','Riyadh','SAR','المملكة العربية السعودية','🇸🇦','U+1F1F8 U+1F1E6','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(196,'Senegal','SEN','SN','221','Dakar','XOF','Sénégal','🇸🇳','U+1F1F8 U+1F1F3','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(197,'Serbia','SRB','RS','381','Belgrade','RSD','Србија','🇷🇸','U+1F1F7 U+1F1F8','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(198,'Seychelles','SYC','SC','248','Victoria','SCR','Seychelles','🇸🇨','U+1F1F8 U+1F1E8','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(199,'Sierra Leone','SLE','SL','232','Freetown','SLL','Sierra Leone','🇸🇱','U+1F1F8 U+1F1F1','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(200,'Singapore','SGP','SG','65','Singapur','SGD','Singapore','🇸🇬','U+1F1F8 U+1F1EC','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(201,'Sint Maarten (Dutch part)','SXM','SX','1721','Philipsburg','ANG','Sint Maarten','🇸🇽','U+1F1F8 U+1F1FD','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(202,'Slovakia','SVK','SK','421','Bratislava','EUR','Slovensko','🇸🇰','U+1F1F8 U+1F1F0','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(203,'Slovenia','SVN','SI','386','Ljubljana','EUR','Slovenija','🇸🇮','U+1F1F8 U+1F1EE','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(204,'Solomon Islands','SLB','SB','677','Honiara','SBD','Solomon Islands','🇸🇧','U+1F1F8 U+1F1E7','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(205,'Somalia','SOM','SO','252','Mogadishu','SOS','Soomaaliya','🇸🇴','U+1F1F8 U+1F1F4','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(206,'South Africa','ZAF','ZA','27','Pretoria','ZAR','South Africa','🇿🇦','U+1F1FF U+1F1E6','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(207,'South Georgia','SGS','GS','500','Grytviken','GBP','South Georgia','🇬🇸','U+1F1EC U+1F1F8','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(208,'South Korea','KOR','KR','82','Seoul','KRW','대한민국','🇰🇷','U+1F1F0 U+1F1F7','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(209,'South Sudan','SSD','SS','211','Juba','SSP','South Sudan','🇸🇸','U+1F1F8 U+1F1F8','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(210,'Spain','ESP','ES','34','Madrid','EUR','España','🇪🇸','U+1F1EA U+1F1F8','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(211,'Sri Lanka','LKA','LK','94','Colombo','LKR','śrī laṃkāva','🇱🇰','U+1F1F1 U+1F1F0','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(212,'Sudan','SDN','SD','249','Khartoum','SDG','السودان','🇸🇩','U+1F1F8 U+1F1E9','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(213,'Suriname','SUR','SR','597','Paramaribo','SRD','Suriname','🇸🇷','U+1F1F8 U+1F1F7','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(214,'Svalbard And Jan Mayen Islands','SJM','SJ','47','Longyearbyen','NOK','Svalbard og Jan Mayen','🇸🇯','U+1F1F8 U+1F1EF','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(215,'Swaziland','SWZ','SZ','268','Mbabane','SZL','Swaziland','🇸🇿','U+1F1F8 U+1F1FF','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(216,'Sweden','SWE','SE','46','Stockholm','SEK','Sverige','🇸🇪','U+1F1F8 U+1F1EA','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(217,'Switzerland','CHE','CH','41','Bern','CHF','Schweiz','🇨🇭','U+1F1E8 U+1F1ED','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(218,'Syria','SYR','SY','963','Damascus','SYP','سوريا','🇸🇾','U+1F1F8 U+1F1FE','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(219,'Taiwan','TWN','TW','886','Taipei','TWD','臺灣','🇹🇼','U+1F1F9 U+1F1FC','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(220,'Tajikistan','TJK','TJ','992','Dushanbe','TJS','Тоҷикистон','🇹🇯','U+1F1F9 U+1F1EF','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(221,'Tanzania','TZA','TZ','255','Dodoma','TZS','Tanzania','🇹🇿','U+1F1F9 U+1F1FF','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(222,'Thailand','THA','TH','66','Bangkok','THB','ประเทศไทย','🇹🇭','U+1F1F9 U+1F1ED','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(223,'Togo','TGO','TG','228','Lome','XOF','Togo','🇹🇬','U+1F1F9 U+1F1EC','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(224,'Tokelau','TKL','TK','690','','NZD','Tokelau','🇹🇰','U+1F1F9 U+1F1F0','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(225,'Tonga','TON','TO','676','Nuku\'alofa','TOP','Tonga','🇹🇴','U+1F1F9 U+1F1F4','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(226,'Trinidad And Tobago','TTO','TT','+1-868','Port of Spain','TTD','Trinidad and Tobago','🇹🇹','U+1F1F9 U+1F1F9','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(227,'Tunisia','TUN','TN','216','Tunis','TND','تونس','🇹🇳','U+1F1F9 U+1F1F3','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(228,'Turkey','TUR','TR','90','Ankara','TRY','Türkiye','🇹🇷','U+1F1F9 U+1F1F7','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(229,'Turkmenistan','TKM','TM','993','Ashgabat','TMT','Türkmenistan','🇹🇲','U+1F1F9 U+1F1F2','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(230,'Turks And Caicos Islands','TCA','TC','+1-649','Cockburn Town','USD','Turks and Caicos Islands','🇹🇨','U+1F1F9 U+1F1E8','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(231,'Tuvalu','TUV','TV','688','Funafuti','AUD','Tuvalu','🇹🇻','U+1F1F9 U+1F1FB','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(232,'Uganda','UGA','UG','256','Kampala','UGX','Uganda','🇺🇬','U+1F1FA U+1F1EC','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(233,'Ukraine','UKR','UA','380','Kiev','UAH','Україна','🇺🇦','U+1F1FA U+1F1E6','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(234,'United Arab Emirates','ARE','AE','971','Abu Dhabi','AED','دولة الإمارات العربية المتحدة','🇦🇪','U+1F1E6 U+1F1EA','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(235,'United Kingdom','GBR','GB','44','London','GBP','United Kingdom','🇬🇧','U+1F1EC U+1F1E7','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(236,'United States','USA','US','1','Washington','USD','United States','🇺🇸','U+1F1FA U+1F1F8','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(237,'United States Minor Outlying Islands','UMI','UM','1','','USD','United States Minor Outlying Islands','🇺🇲','U+1F1FA U+1F1F2','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(238,'Uruguay','URY','UY','598','Montevideo','UYU','Uruguay','🇺🇾','U+1F1FA U+1F1FE','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(239,'Uzbekistan','UZB','UZ','998','Tashkent','UZS','O‘zbekiston','🇺🇿','U+1F1FA U+1F1FF','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(240,'Vanuatu','VUT','VU','678','Port Vila','VUV','Vanuatu','🇻🇺','U+1F1FB U+1F1FA','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(241,'Vatican City State (Holy See)','VAT','VA','379','Vatican City','EUR','Vaticano','🇻🇦','U+1F1FB U+1F1E6','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(242,'Venezuela','VEN','VE','58','Caracas','VEF','Venezuela','🇻🇪','U+1F1FB U+1F1EA','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(243,'Vietnam','VNM','VN','84','Hanoi','VND','Việt Nam','🇻🇳','U+1F1FB U+1F1F3','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(244,'Virgin Islands (British)','VGB','VG','+1-284','Road Town','USD','British Virgin Islands','🇻🇬','U+1F1FB U+1F1EC','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(245,'Virgin Islands (US)','VIR','VI','+1-340','Charlotte Amalie','USD','United States Virgin Islands','🇻🇮','U+1F1FB U+1F1EE','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(246,'Wallis And Futuna Islands','WLF','WF','681','Mata Utu','XPF','Wallis et Futuna','🇼🇫','U+1F1FC U+1F1EB','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(247,'Western Sahara','ESH','EH','212','El-Aaiun','MAD','الصحراء الغربية','🇪🇭','U+1F1EA U+1F1ED','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(248,'Yemen','YEM','YE','967','Sanaa','YER','اليَمَن','🇾🇪','U+1F1FE U+1F1EA','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(249,'Zambia','ZMB','ZM','260','Lusaka','ZMW','Zambia','🇿🇲','U+1F1FF U+1F1F2','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(250,'Zimbabwe','ZWE','ZW','263','Harare','ZWL','Zimbabwe','🇿🇼','U+1F1FF U+1F1FC','2026-05-04 03:52:00','2026-05-04 03:52:00');
/*!40000 ALTER TABLE `lunar_countries` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_currencies`
--

DROP TABLE IF EXISTS `lunar_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `exchange_rate` decimal(10,4) NOT NULL,
  `decimal_places` int(11) NOT NULL DEFAULT 2,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `sync_prices` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lunar_currencies_code_unique` (`code`),
  KEY `lunar_currencies_decimal_places_index` (`decimal_places`),
  KEY `lunar_currencies_enabled_index` (`enabled`),
  KEY `lunar_currencies_default_index` (`default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_currencies`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_currencies` WRITE;
/*!40000 ALTER TABLE `lunar_currencies` DISABLE KEYS */;
INSERT INTO `lunar_currencies` VALUES
(1,'USD','US Dollar',1.0000,2,1,1,0,'2026-05-04 03:52:00','2026-05-04 03:52:00');
/*!40000 ALTER TABLE `lunar_currencies` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_customer_customer_group`
--

DROP TABLE IF EXISTS `lunar_customer_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_customer_customer_group` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `customer_group_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_customer_customer_group_customer_id_foreign` (`customer_id`),
  KEY `lunar_customer_customer_group_customer_group_id_foreign` (`customer_group_id`),
  CONSTRAINT `lunar_customer_customer_group_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `lunar_customer_groups` (`id`),
  CONSTRAINT `lunar_customer_customer_group_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `lunar_customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_customer_customer_group`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_customer_customer_group` WRITE;
/*!40000 ALTER TABLE `lunar_customer_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_customer_customer_group` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_customer_discount`
--

DROP TABLE IF EXISTS `lunar_customer_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_customer_discount` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discount_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_customer_discount_discount_id_foreign` (`discount_id`),
  KEY `lunar_customer_discount_customer_id_foreign` (`customer_id`),
  CONSTRAINT `lunar_customer_discount_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `lunar_customers` (`id`),
  CONSTRAINT `lunar_customer_discount_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `lunar_discounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_customer_discount`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_customer_discount` WRITE;
/*!40000 ALTER TABLE `lunar_customer_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_customer_discount` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_customer_group_discount`
--

DROP TABLE IF EXISTS `lunar_customer_group_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_customer_group_discount` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discount_id` bigint(20) unsigned NOT NULL,
  `customer_group_id` bigint(20) unsigned NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `starts_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_customer_group_discount_discount_id_foreign` (`discount_id`),
  KEY `lunar_customer_group_discount_customer_group_id_foreign` (`customer_group_id`),
  KEY `lunar_customer_group_discount_enabled_index` (`enabled`),
  KEY `lunar_customer_group_discount_starts_at_index` (`starts_at`),
  KEY `lunar_customer_group_discount_ends_at_index` (`ends_at`),
  KEY `lunar_customer_group_discount_visible_index` (`visible`),
  CONSTRAINT `lunar_customer_group_discount_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `lunar_customer_groups` (`id`),
  CONSTRAINT `lunar_customer_group_discount_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `lunar_discounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_customer_group_discount`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_customer_group_discount` WRITE;
/*!40000 ALTER TABLE `lunar_customer_group_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_customer_group_discount` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_customer_group_product`
--

DROP TABLE IF EXISTS `lunar_customer_group_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_customer_group_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_group_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `starts_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `purchasable` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_customer_group_product_customer_group_id_foreign` (`customer_group_id`),
  KEY `lunar_customer_group_product_product_id_foreign` (`product_id`),
  KEY `lunar_customer_group_product_enabled_index` (`enabled`),
  KEY `lunar_customer_group_product_starts_at_index` (`starts_at`),
  KEY `lunar_customer_group_product_ends_at_index` (`ends_at`),
  KEY `lunar_customer_group_product_visible_index` (`visible`),
  KEY `lunar_customer_group_product_purchasable_index` (`purchasable`),
  CONSTRAINT `lunar_customer_group_product_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `lunar_customer_groups` (`id`),
  CONSTRAINT `lunar_customer_group_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `lunar_products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_customer_group_product`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_customer_group_product` WRITE;
/*!40000 ALTER TABLE `lunar_customer_group_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_customer_group_product` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_customer_groups`
--

DROP TABLE IF EXISTS `lunar_customer_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_customer_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `attribute_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attribute_data`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lunar_customer_groups_handle_unique` (`handle`),
  KEY `lunar_customer_groups_default_index` (`default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_customer_groups`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_customer_groups` WRITE;
/*!40000 ALTER TABLE `lunar_customer_groups` DISABLE KEYS */;
INSERT INTO `lunar_customer_groups` VALUES
(1,'Retail','retail',1,NULL,'2026-05-04 03:52:00','2026-05-04 03:52:00');
/*!40000 ALTER TABLE `lunar_customer_groups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_customer_user`
--

DROP TABLE IF EXISTS `lunar_customer_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_customer_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_customer_user_customer_id_foreign` (`customer_id`),
  KEY `lunar_customer_user_user_id_foreign` (`user_id`),
  CONSTRAINT `lunar_customer_user_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `lunar_customers` (`id`),
  CONSTRAINT `lunar_customer_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_customer_user`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_customer_user` WRITE;
/*!40000 ALTER TABLE `lunar_customer_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_customer_user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_customers`
--

DROP TABLE IF EXISTS `lunar_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `tax_identifier` varchar(255) DEFAULT NULL,
  `account_ref` varchar(255) DEFAULT NULL,
  `attribute_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attribute_data`)),
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_customers_account_ref_index` (`account_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_customers`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_customers` WRITE;
/*!40000 ALTER TABLE `lunar_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_customers` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_discount_user`
--

DROP TABLE IF EXISTS `lunar_discount_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_discount_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discount_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_discount_user_discount_id_foreign` (`discount_id`),
  KEY `lunar_discount_user_user_id_foreign` (`user_id`),
  CONSTRAINT `lunar_discount_user_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `lunar_discounts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lunar_discount_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_discount_user`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_discount_user` WRITE;
/*!40000 ALTER TABLE `lunar_discount_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_discount_user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_discountables`
--

DROP TABLE IF EXISTS `lunar_discountables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_discountables` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discount_id` bigint(20) unsigned NOT NULL,
  `discountable_type` varchar(255) NOT NULL,
  `discountable_id` bigint(20) unsigned NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'condition',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_discount_purchasables_discount_id_foreign` (`discount_id`),
  KEY `purchasable_idx` (`discountable_type`,`discountable_id`),
  KEY `lunar_discount_purchasables_type_index` (`type`),
  CONSTRAINT `lunar_discount_purchasables_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `lunar_discounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_discountables`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_discountables` WRITE;
/*!40000 ALTER TABLE `lunar_discountables` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_discountables` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_discounts`
--

DROP TABLE IF EXISTS `lunar_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `coupon` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `starts_at` datetime NOT NULL,
  `ends_at` datetime DEFAULT NULL,
  `uses` int(10) unsigned NOT NULL DEFAULT 0,
  `max_uses` mediumint(8) unsigned DEFAULT NULL,
  `max_uses_per_user` mediumint(8) unsigned DEFAULT NULL,
  `priority` mediumint(8) unsigned NOT NULL DEFAULT 1,
  `stop` tinyint(1) NOT NULL DEFAULT 0,
  `restriction` varchar(255) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lunar_discounts_handle_unique` (`handle`),
  UNIQUE KEY `lunar_discounts_coupon_unique` (`coupon`),
  KEY `lunar_discounts_type_index` (`type`),
  KEY `lunar_discounts_starts_at_index` (`starts_at`),
  KEY `lunar_discounts_ends_at_index` (`ends_at`),
  KEY `lunar_discounts_uses_index` (`uses`),
  KEY `lunar_discounts_priority_index` (`priority`),
  KEY `lunar_discounts_stop_index` (`stop`),
  KEY `lunar_discounts_restriction_index` (`restriction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_discounts`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_discounts` WRITE;
/*!40000 ALTER TABLE `lunar_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_discounts` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_languages`
--

DROP TABLE IF EXISTS `lunar_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_languages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lunar_languages_code_unique` (`code`),
  KEY `lunar_languages_default_index` (`default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_languages`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_languages` WRITE;
/*!40000 ALTER TABLE `lunar_languages` DISABLE KEYS */;
INSERT INTO `lunar_languages` VALUES
(1,'en','English',1,'2026-05-04 03:52:00','2026-05-04 03:52:00');
/*!40000 ALTER TABLE `lunar_languages` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_media_product_variant`
--

DROP TABLE IF EXISTS `lunar_media_product_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_media_product_variant` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_id` bigint(20) unsigned NOT NULL,
  `product_variant_id` bigint(20) unsigned NOT NULL,
  `primary` tinyint(1) NOT NULL DEFAULT 0,
  `position` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_media_product_variant_media_id_foreign` (`media_id`),
  KEY `lunar_media_product_variant_product_variant_id_foreign` (`product_variant_id`),
  KEY `lunar_media_product_variant_primary_index` (`primary`),
  KEY `lunar_media_product_variant_position_index` (`position`),
  CONSTRAINT `lunar_media_product_variant_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lunar_media_product_variant_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `lunar_product_variants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_media_product_variant`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_media_product_variant` WRITE;
/*!40000 ALTER TABLE `lunar_media_product_variant` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_media_product_variant` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_order_addresses`
--

DROP TABLE IF EXISTS `lunar_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_order_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `country_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `tax_identifier` varchar(255) DEFAULT NULL,
  `line_one` varchar(255) DEFAULT NULL,
  `line_two` varchar(255) DEFAULT NULL,
  `line_three` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `delivery_instructions` varchar(1000) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'shipping',
  `shipping_option` varchar(255) DEFAULT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_order_addresses_order_id_foreign` (`order_id`),
  KEY `lunar_order_addresses_country_id_foreign` (`country_id`),
  KEY `lunar_order_addresses_type_index` (`type`),
  CONSTRAINT `lunar_order_addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `lunar_countries` (`id`),
  CONSTRAINT `lunar_order_addresses_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `lunar_orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_order_addresses`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_order_addresses` WRITE;
/*!40000 ALTER TABLE `lunar_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_order_lines`
--

DROP TABLE IF EXISTS `lunar_order_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_order_lines` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `purchasable_type` varchar(255) NOT NULL,
  `purchasable_id` bigint(20) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `option` varchar(255) DEFAULT NULL,
  `identifier` varchar(255) NOT NULL,
  `unit_price` bigint(20) unsigned NOT NULL,
  `unit_quantity` smallint(5) unsigned NOT NULL DEFAULT 1,
  `quantity` int(10) unsigned NOT NULL,
  `sub_total` bigint(20) unsigned NOT NULL,
  `discount_total` bigint(20) unsigned NOT NULL,
  `tax_breakdown` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`tax_breakdown`)),
  `tax_total` bigint(20) unsigned NOT NULL,
  `total` bigint(20) unsigned NOT NULL,
  `notes` text DEFAULT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_order_lines_order_id_foreign` (`order_id`),
  KEY `lunar_order_lines_purchasable_type_purchasable_id_index` (`purchasable_type`,`purchasable_id`),
  KEY `lunar_order_lines_type_index` (`type`),
  KEY `lunar_order_lines_identifier_index` (`identifier`),
  KEY `lunar_order_lines_unit_price_index` (`unit_price`),
  KEY `lunar_order_lines_unit_quantity_index` (`unit_quantity`),
  KEY `lunar_order_lines_sub_total_index` (`sub_total`),
  KEY `lunar_order_lines_discount_total_index` (`discount_total`),
  KEY `lunar_order_lines_tax_total_index` (`tax_total`),
  KEY `lunar_order_lines_total_index` (`total`),
  CONSTRAINT `lunar_order_lines_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `lunar_orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_order_lines`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_order_lines` WRITE;
/*!40000 ALTER TABLE `lunar_order_lines` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_order_lines` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_orders`
--

DROP TABLE IF EXISTS `lunar_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `cart_id` bigint(20) unsigned DEFAULT NULL,
  `channel_id` bigint(20) unsigned NOT NULL,
  `new_customer` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `customer_reference` varchar(255) DEFAULT NULL,
  `sub_total` bigint(20) unsigned NOT NULL,
  `discount_breakdown` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`discount_breakdown`)),
  `discount_total` bigint(20) unsigned NOT NULL,
  `shipping_breakdown` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`shipping_breakdown`)),
  `shipping_total` bigint(20) unsigned NOT NULL,
  `tax_breakdown` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`tax_breakdown`)),
  `tax_total` bigint(20) unsigned NOT NULL,
  `total` bigint(20) unsigned NOT NULL,
  `notes` text DEFAULT NULL,
  `currency_code` varchar(3) NOT NULL,
  `compare_currency_code` varchar(3) DEFAULT NULL,
  `exchange_rate` decimal(10,4) NOT NULL DEFAULT 1.0000,
  `placed_at` datetime DEFAULT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fingerprint` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lunar_orders_reference_unique` (`reference`),
  KEY `lunar_orders_user_id_foreign` (`user_id`),
  KEY `lunar_orders_channel_id_foreign` (`channel_id`),
  KEY `lunar_orders_status_index` (`status`),
  KEY `lunar_orders_sub_total_index` (`sub_total`),
  KEY `lunar_orders_discount_total_index` (`discount_total`),
  KEY `lunar_orders_shipping_total_index` (`shipping_total`),
  KEY `lunar_orders_tax_total_index` (`tax_total`),
  KEY `lunar_orders_total_index` (`total`),
  KEY `lunar_orders_placed_at_index` (`placed_at`),
  KEY `lunar_orders_customer_id_foreign` (`customer_id`),
  KEY `lunar_orders_new_customer_index` (`new_customer`),
  KEY `lunar_orders_cart_id_foreign` (`cart_id`),
  KEY `lunar_orders_fingerprint_index` (`fingerprint`),
  CONSTRAINT `lunar_orders_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `lunar_carts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `lunar_orders_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `lunar_channels` (`id`),
  CONSTRAINT `lunar_orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `lunar_customers` (`id`),
  CONSTRAINT `lunar_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_orders`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_orders` WRITE;
/*!40000 ALTER TABLE `lunar_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_orders` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_prices`
--

DROP TABLE IF EXISTS `lunar_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_prices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_group_id` bigint(20) unsigned DEFAULT NULL,
  `currency_id` bigint(20) unsigned NOT NULL,
  `priceable_type` varchar(255) NOT NULL,
  `priceable_id` bigint(20) unsigned NOT NULL,
  `price` bigint(20) unsigned NOT NULL,
  `compare_price` bigint(20) unsigned DEFAULT NULL,
  `min_quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_prices_customer_group_id_foreign` (`customer_group_id`),
  KEY `lunar_prices_currency_id_foreign` (`currency_id`),
  KEY `lunar_prices_priceable_type_priceable_id_index` (`priceable_type`,`priceable_id`),
  KEY `lunar_prices_price_index` (`price`),
  KEY `lunar_prices_tier_index` (`min_quantity`),
  CONSTRAINT `lunar_prices_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `lunar_currencies` (`id`),
  CONSTRAINT `lunar_prices_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `lunar_customer_groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_prices`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_prices` WRITE;
/*!40000 ALTER TABLE `lunar_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_prices` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_product_associations`
--

DROP TABLE IF EXISTS `lunar_product_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_product_associations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_parent_id` bigint(20) unsigned NOT NULL,
  `product_target_id` bigint(20) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_product_associations_product_parent_id_foreign` (`product_parent_id`),
  KEY `lunar_product_associations_product_target_id_foreign` (`product_target_id`),
  KEY `lunar_product_associations_type_index` (`type`),
  CONSTRAINT `lunar_product_associations_product_parent_id_foreign` FOREIGN KEY (`product_parent_id`) REFERENCES `lunar_products` (`id`),
  CONSTRAINT `lunar_product_associations_product_target_id_foreign` FOREIGN KEY (`product_target_id`) REFERENCES `lunar_products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_product_associations`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_product_associations` WRITE;
/*!40000 ALTER TABLE `lunar_product_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_product_associations` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_product_option_value_product_variant`
--

DROP TABLE IF EXISTS `lunar_product_option_value_product_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_product_option_value_product_variant` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` bigint(20) unsigned NOT NULL,
  `variant_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_product_option_value_product_variant_value_id_foreign` (`value_id`),
  KEY `lunar_product_option_value_product_variant_variant_id_foreign` (`variant_id`),
  CONSTRAINT `lunar_product_option_value_product_variant_value_id_foreign` FOREIGN KEY (`value_id`) REFERENCES `lunar_product_option_values` (`id`),
  CONSTRAINT `lunar_product_option_value_product_variant_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `lunar_product_variants` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_product_option_value_product_variant`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_product_option_value_product_variant` WRITE;
/*!40000 ALTER TABLE `lunar_product_option_value_product_variant` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_product_option_value_product_variant` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_product_option_values`
--

DROP TABLE IF EXISTS `lunar_product_option_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_product_option_values` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_option_id` bigint(20) unsigned NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `position` int(11) NOT NULL DEFAULT 0,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_product_option_values_product_option_id_foreign` (`product_option_id`),
  KEY `lunar_product_option_values_position_index` (`position`),
  CONSTRAINT `lunar_product_option_values_product_option_id_foreign` FOREIGN KEY (`product_option_id`) REFERENCES `lunar_product_options` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_product_option_values`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_product_option_values` WRITE;
/*!40000 ALTER TABLE `lunar_product_option_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_product_option_values` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_product_options`
--

DROP TABLE IF EXISTS `lunar_product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_product_options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `label` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`label`)),
  `handle` varchar(255) DEFAULT NULL,
  `shared` tinyint(1) NOT NULL DEFAULT 0,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_product_options_shared_index` (`shared`),
  KEY `lunar_product_options_handle_index` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_product_options`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_product_options` WRITE;
/*!40000 ALTER TABLE `lunar_product_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_product_options` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_product_product_option`
--

DROP TABLE IF EXISTS `lunar_product_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_product_product_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `product_option_id` bigint(20) unsigned NOT NULL,
  `position` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_product_product_option_product_id_foreign` (`product_id`),
  KEY `lunar_product_product_option_product_option_id_foreign` (`product_option_id`),
  KEY `lunar_product_product_option_position_index` (`position`),
  CONSTRAINT `lunar_product_product_option_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `lunar_products` (`id`),
  CONSTRAINT `lunar_product_product_option_product_option_id_foreign` FOREIGN KEY (`product_option_id`) REFERENCES `lunar_product_options` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_product_product_option`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_product_product_option` WRITE;
/*!40000 ALTER TABLE `lunar_product_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_product_product_option` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_product_types`
--

DROP TABLE IF EXISTS `lunar_product_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_product_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_product_types`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_product_types` WRITE;
/*!40000 ALTER TABLE `lunar_product_types` DISABLE KEYS */;
INSERT INTO `lunar_product_types` VALUES
(1,'Stock','2026-05-04 03:52:01','2026-05-04 03:52:01');
/*!40000 ALTER TABLE `lunar_product_types` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_product_variants`
--

DROP TABLE IF EXISTS `lunar_product_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_product_variants` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `tax_class_id` bigint(20) unsigned NOT NULL,
  `attribute_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attribute_data`)),
  `tax_ref` varchar(255) DEFAULT NULL,
  `unit_quantity` int(10) unsigned NOT NULL DEFAULT 1,
  `min_quantity` int(10) unsigned NOT NULL DEFAULT 1,
  `quantity_increment` int(10) unsigned NOT NULL DEFAULT 1,
  `sku` varchar(255) DEFAULT NULL,
  `gtin` varchar(255) DEFAULT NULL,
  `mpn` varchar(255) DEFAULT NULL,
  `ean` varchar(255) DEFAULT NULL,
  `length_value` decimal(10,4) DEFAULT 0.0000,
  `length_unit` varchar(255) DEFAULT 'mm',
  `width_value` decimal(10,4) DEFAULT 0.0000,
  `width_unit` varchar(255) DEFAULT 'mm',
  `height_value` decimal(10,4) DEFAULT 0.0000,
  `height_unit` varchar(255) DEFAULT 'mm',
  `weight_value` decimal(10,4) DEFAULT 0.0000,
  `weight_unit` varchar(255) DEFAULT 'mm',
  `volume_value` decimal(10,4) DEFAULT 0.0000,
  `volume_unit` varchar(255) DEFAULT 'mm',
  `shippable` tinyint(1) NOT NULL DEFAULT 1,
  `stock` int(11) NOT NULL DEFAULT 0,
  `backorder` int(11) NOT NULL DEFAULT 0,
  `purchasable` varchar(255) NOT NULL DEFAULT 'always',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_product_variants_product_id_foreign` (`product_id`),
  KEY `lunar_product_variants_tax_class_id_foreign` (`tax_class_id`),
  KEY `lunar_product_variants_tax_ref_index` (`tax_ref`),
  KEY `lunar_product_variants_unit_quantity_index` (`unit_quantity`),
  KEY `lunar_product_variants_sku_index` (`sku`),
  KEY `lunar_product_variants_gtin_index` (`gtin`),
  KEY `lunar_product_variants_mpn_index` (`mpn`),
  KEY `lunar_product_variants_ean_index` (`ean`),
  KEY `lunar_product_variants_length_value_index` (`length_value`),
  KEY `lunar_product_variants_width_value_index` (`width_value`),
  KEY `lunar_product_variants_height_value_index` (`height_value`),
  KEY `lunar_product_variants_weight_value_index` (`weight_value`),
  KEY `lunar_product_variants_volume_value_index` (`volume_value`),
  KEY `lunar_product_variants_shippable_index` (`shippable`),
  KEY `lunar_product_variants_stock_index` (`stock`),
  KEY `lunar_product_variants_backorder_index` (`backorder`),
  KEY `lunar_product_variants_purchasable_index` (`purchasable`),
  KEY `lunar_product_variants_quantity_increment_index` (`quantity_increment`),
  KEY `lunar_product_variants_min_quantity_index` (`min_quantity`),
  KEY `lunar_product_variants_deleted_at_index` (`deleted_at`),
  CONSTRAINT `lunar_product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `lunar_products` (`id`),
  CONSTRAINT `lunar_product_variants_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `lunar_tax_classes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_product_variants`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_product_variants` WRITE;
/*!40000 ALTER TABLE `lunar_product_variants` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_product_variants` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_products`
--

DROP TABLE IF EXISTS `lunar_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `brand_id` bigint(20) unsigned DEFAULT NULL,
  `product_type_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) NOT NULL,
  `attribute_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`attribute_data`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_products_product_type_id_foreign` (`product_type_id`),
  KEY `lunar_products_status_index` (`status`),
  KEY `lunar_products_brand_id_foreign` (`brand_id`),
  KEY `lunar_products_deleted_at_index` (`deleted_at`),
  CONSTRAINT `lunar_products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `lunar_brands` (`id`),
  CONSTRAINT `lunar_products_product_type_id_foreign` FOREIGN KEY (`product_type_id`) REFERENCES `lunar_product_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_products`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_products` WRITE;
/*!40000 ALTER TABLE `lunar_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_products` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_staff`
--

DROP TABLE IF EXISTS `lunar_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_staff` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lunar_staff_email_unique` (`email`),
  KEY `lunar_staff_admin_index` (`admin`),
  KEY `lunar_staff_firstname_index` (`first_name`),
  KEY `lunar_staff_lastname_index` (`last_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_staff`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_staff` WRITE;
/*!40000 ALTER TABLE `lunar_staff` DISABLE KEYS */;
INSERT INTO `lunar_staff` VALUES
(1,1,'obelis','admin','theobeliscorp@gmail.com',NULL,'$2y$12$xyl0HeROpj90mIGkJk7E5OB4m0V9zF1tPk8tvngwv9O30WtM8qIHS',NULL,NULL,NULL,NULL,'2026-05-04 03:51:26','2026-05-04 03:51:26',NULL);
/*!40000 ALTER TABLE `lunar_staff` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_states`
--

DROP TABLE IF EXISTS `lunar_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_states` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_states_country_id_foreign` (`country_id`),
  CONSTRAINT `lunar_states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `lunar_countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4889 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_states`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_states` WRITE;
/*!40000 ALTER TABLE `lunar_states` DISABLE KEYS */;
INSERT INTO `lunar_states` VALUES
(1,1,'Badakhshan','BDS','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(2,1,'Badghis','BDG','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(3,1,'Baghlan','BGL','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(4,1,'Balkh','BAL','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(5,1,'Bamyan','BAM','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(6,1,'Daykundi','DAY','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(7,1,'Farah','FRA','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(8,1,'Faryab','FYB','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(9,1,'Ghazni','GHA','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(10,1,'Ghōr','GHO','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(11,1,'Helmand','HEL','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(12,1,'Herat','HER','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(13,1,'Jowzjan','JOW','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(14,1,'Kabul','KAB','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(15,1,'Kandahar','KAN','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(16,1,'Kapisa','KAP','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(17,1,'Khost','KHO','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(18,1,'Kunar','KNR','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(19,1,'Kunduz Province','KDZ','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(20,1,'Laghman','LAG','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(21,1,'Logar','LOG','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(22,1,'Nangarhar','NAN','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(23,1,'Nimruz','NIM','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(24,1,'Nuristan','NUR','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(25,1,'Paktia','PIA','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(26,1,'Paktika','PKA','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(27,1,'Panjshir','PAN','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(28,1,'Parwan','PAR','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(29,1,'Samangan','SAM','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(30,1,'Sar-e Pol','SAR','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(31,1,'Takhar','TAK','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(32,1,'Urozgan','URU','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(33,1,'Zabul','ZAB','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(34,3,'Berat County','01','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(35,3,'Berat District','BR','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(36,3,'Bulqizë District','BU','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(37,3,'Delvinë District','DL','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(38,3,'Devoll District','DV','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(39,3,'Dibër County','09','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(40,3,'Dibër District','DI','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(41,3,'Durrës County','02','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(42,3,'Durrës District','DR','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(43,3,'Elbasan County','03','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(44,3,'Fier County','04','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(45,3,'Fier District','FR','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(46,3,'Gjirokastër County','05','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(47,3,'Gjirokastër District','GJ','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(48,3,'Gramsh District','GR','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(49,3,'Has District','HA','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(50,3,'Kavajë District','KA','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(51,3,'Kolonjë District','ER','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(52,3,'Korçë County','06','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(53,3,'Korçë District','KO','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(54,3,'Krujë District','KR','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(55,3,'Kuçovë District','KC','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(56,3,'Kukës County','07','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(57,3,'Kukës District','KU','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(58,3,'Kurbin District','KB','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(59,3,'Lezhë County','08','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(60,3,'Lezhë District','LE','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(61,3,'Librazhd District','LB','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(62,3,'Lushnjë District','LU','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(63,3,'Malësi e Madhe District','MM','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(64,3,'Mallakastër District','MK','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(65,3,'Mat District','MT','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(66,3,'Mirditë District','MR','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(67,3,'Peqin District','PQ','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(68,3,'Përmet District','PR','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(69,3,'Pogradec District','PG','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(70,3,'Pukë District','PU','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(71,3,'Sarandë District','SR','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(72,3,'Shkodër County','10','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(73,3,'Shkodër District','SH','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(74,3,'Skrapar District','SK','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(75,3,'Tepelenë District','TE','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(76,3,'Tirana County','11','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(77,3,'Tirana District','TR','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(78,3,'Tropojë District','TP','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(79,3,'Vlorë County','12','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(80,3,'Vlorë District','VL','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(81,4,'Adrar','01','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(82,4,'Aïn Defla','44','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(83,4,'Aïn Témouchent','46','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(84,4,'Algiers','16','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(85,4,'Annaba','23','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(86,4,'Batna','05','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(87,4,'Béchar','08','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(88,4,'Béjaïa','06','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(89,4,'Béni Abbès','53','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(90,4,'Biskra','07','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(91,4,'Blida','09','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(92,4,'Bordj Baji Mokhtar','52','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(93,4,'Bordj Bou Arréridj','34','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(94,4,'Bouïra','10','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(95,4,'Boumerdès','35','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(96,4,'Chlef','02','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(97,4,'Constantine','25','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(98,4,'Djanet','56','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(99,4,'Djelfa','17','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(100,4,'El Bayadh','32','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(101,4,'El M\'ghair','49','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(102,4,'El Menia','50','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(103,4,'El Oued','39','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(104,4,'El Tarf','36','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(105,4,'Ghardaïa','47','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(106,4,'Guelma','24','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(107,4,'Illizi','33','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(108,4,'In Guezzam','58','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(109,4,'In Salah','57','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(110,4,'Jijel','18','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(111,4,'Khenchela','40','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(112,4,'Laghouat','03','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(113,4,'M\'Sila','28','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(114,4,'Mascara','29','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(115,4,'Médéa','26','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(116,4,'Mila','43','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(117,4,'Mostaganem','27','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(118,4,'Naama','45','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(119,4,'Oran','31','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(120,4,'Ouargla','30','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(121,4,'Ouled Djellal','51','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(122,4,'Oum El Bouaghi','04','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(123,4,'Relizane','48','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(124,4,'Saïda','20','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(125,4,'Sétif','19','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(126,4,'Sidi Bel Abbès','22','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(127,4,'Skikda','21','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(128,4,'Souk Ahras','41','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(129,4,'Tamanghasset','11','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(130,4,'Tébessa','12','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(131,4,'Tiaret','14','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(132,4,'Timimoun','54','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(133,4,'Tindouf','37','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(134,4,'Tipasa','42','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(135,4,'Tissemsilt','38','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(136,4,'Tizi Ouzou','15','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(137,4,'Tlemcen','13','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(138,4,'Touggourt','55','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(139,6,'Andorra la Vella','07','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(140,6,'Canillo','02','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(141,6,'Encamp','03','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(142,6,'Escaldes-Engordany','08','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(143,6,'La Massana','04','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(144,6,'Ordino','05','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(145,6,'Sant Julià de Lòria','06','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(146,7,'Bengo Province','BGO','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(147,7,'Benguela Province','BGU','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(148,7,'Bié Province','BIE','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(149,7,'Cabinda Province','CAB','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(150,7,'Cuando Cubango Province','CCU','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(151,7,'Cuanza Norte Province','CNO','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(152,7,'Cuanza Sul','CUS','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(153,7,'Cunene Province','CNN','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(154,7,'Huambo Province','HUA','2026-05-04 03:51:31','2026-05-04 03:51:31'),
(155,7,'Huíla Province','HUI','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(156,7,'Luanda Province','LUA','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(157,7,'Lunda Norte Province','LNO','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(158,7,'Lunda Sul Province','LSU','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(159,7,'Malanje Province','MAL','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(160,7,'Moxico Province','MOX','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(161,7,'Uíge Province','UIG','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(162,7,'Zaire Province','ZAI','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(163,10,'Barbuda','10','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(164,10,'Redonda','11','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(165,10,'Saint George Parish','03','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(166,10,'Saint John Parish','04','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(167,10,'Saint Mary Parish','05','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(168,10,'Saint Paul Parish','06','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(169,10,'Saint Peter Parish','07','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(170,10,'Saint Philip Parish','08','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(171,11,'Autonomous City Of Buenos Aires','C','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(172,11,'Buenos Aires Province','B','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(173,11,'Catamarca Province','K','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(174,11,'Chaco Province','H','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(175,11,'Chubut Province','U','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(176,11,'Córdoba Province','X','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(177,11,'Corrientes','W','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(178,11,'Entre Ríos Province','E','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(179,11,'Formosa Province','P','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(180,11,'Jujuy Province','Y','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(181,11,'La Pampa','L','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(182,11,'La Rioja Province','F','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(183,11,'Mendoza','M','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(184,11,'Misiones Province','N','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(185,11,'Neuquén Province','Q','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(186,11,'Río Negro Province','R','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(187,11,'Salta Province','A','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(188,11,'San Juan Province','J','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(189,11,'San Luis Province','D','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(190,11,'Santa Cruz Province','Z','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(191,11,'Santa Fe Province','S','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(192,11,'Santiago del Estero Province','G','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(193,11,'Tierra del Fuego Province','V','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(194,11,'Tucumán Province','T','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(195,12,'Aragatsotn Region','AG','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(196,12,'Ararat Province','AR','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(197,12,'Armavir Region','AV','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(198,12,'Gegharkunik Province','GR','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(199,12,'Kotayk Region','KT','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(200,12,'Lori Region','LO','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(201,12,'Shirak Region','SH','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(202,12,'Syunik Province','SU','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(203,12,'Tavush Region','TV','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(204,12,'Vayots Dzor Region','VD','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(205,12,'Yerevan','ER','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(206,14,'Australian Capital Territory','ACT','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(207,14,'New South Wales','NSW','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(208,14,'Northern Territory','NT','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(209,14,'Queensland','QLD','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(210,14,'South Australia','SA','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(211,14,'Tasmania','TAS','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(212,14,'Victoria','VIC','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(213,14,'Western Australia','WA','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(214,15,'Burgenland','1','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(215,15,'Carinthia','2','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(216,15,'Lower Austria','3','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(217,15,'Salzburg','5','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(218,15,'Styria','6','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(219,15,'Tyrol','7','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(220,15,'Upper Austria','4','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(221,15,'Vienna','9','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(222,15,'Vorarlberg','8','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(223,16,'Absheron District','ABS','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(224,16,'Agdam District','AGM','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(225,16,'Agdash District','AGS','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(226,16,'Aghjabadi District','AGC','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(227,16,'Agstafa District','AGA','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(228,16,'Agsu District','AGU','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(229,16,'Astara District','AST','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(230,16,'Babek District','BAB','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(231,16,'Baku','BA','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(232,16,'Balakan District','BAL','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(233,16,'Barda District','BAR','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(234,16,'Beylagan District','BEY','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(235,16,'Bilasuvar District','BIL','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(236,16,'Dashkasan District','DAS','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(237,16,'Fizuli District','FUZ','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(238,16,'Ganja','GA','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(239,16,'Gədəbəy','GAD','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(240,16,'Gobustan District','QOB','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(241,16,'Goranboy District','GOR','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(242,16,'Goychay','GOY','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(243,16,'Goygol District','GYG','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(244,16,'Hajigabul District','HAC','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(245,16,'Imishli District','IMI','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(246,16,'Ismailli District','ISM','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(247,16,'Jabrayil District','CAB','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(248,16,'Jalilabad District','CAL','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(249,16,'Julfa District','CUL','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(250,16,'Kalbajar District','KAL','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(251,16,'Kangarli District','KAN','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(252,16,'Khachmaz District','XAC','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(253,16,'Khizi District','XIZ','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(254,16,'Khojali District','XCI','2026-05-04 03:51:32','2026-05-04 03:51:32'),
(255,16,'Kurdamir District','KUR','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(256,16,'Lachin District','LAC','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(257,16,'Lankaran','LAN','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(258,16,'Lankaran District','LA','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(259,16,'Lerik District','LER','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(260,16,'Martuni','XVD','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(261,16,'Masally District','MAS','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(262,16,'Mingachevir','MI','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(263,16,'Nakhchivan Autonomous Republic','NX','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(264,16,'Neftchala District','NEF','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(265,16,'Oghuz District','OGU','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(266,16,'Ordubad District','ORD','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(267,16,'Qabala District','QAB','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(268,16,'Qakh District','QAX','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(269,16,'Qazakh District','QAZ','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(270,16,'Quba District','QBA','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(271,16,'Qubadli District','QBI','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(272,16,'Qusar District','QUS','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(273,16,'Saatly District','SAT','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(274,16,'Sabirabad District','SAB','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(275,16,'Sadarak District','SAD','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(276,16,'Salyan District','SAL','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(277,16,'Samukh District','SMX','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(278,16,'Shabran District','SBN','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(279,16,'Shahbuz District','SAH','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(280,16,'Shaki','SA','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(281,16,'Shaki District','SAK','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(282,16,'Shamakhi District','SMI','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(283,16,'Shamkir District','SKR','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(284,16,'Sharur District','SAR','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(285,16,'Shirvan','SR','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(286,16,'Shusha District','SUS','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(287,16,'Siazan District','SIY','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(288,16,'Sumqayit','SM','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(289,16,'Tartar District','TAR','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(290,16,'Tovuz District','TOV','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(291,16,'Ujar District','UCA','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(292,16,'Yardymli District','YAR','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(293,16,'Yevlakh','YE','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(294,16,'Yevlakh District','YEV','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(295,16,'Zangilan District','ZAN','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(296,16,'Zaqatala District','ZAQ','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(297,16,'Zardab District','ZAR','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(298,17,'Acklins','AK','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(299,17,'Acklins and Crooked Islands','AC','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(300,17,'Berry Islands','BY','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(301,17,'Bimini','BI','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(302,17,'Black Point','BP','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(303,17,'Cat Island','CI','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(304,17,'Central Abaco','CO','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(305,17,'Central Andros','CS','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(306,17,'Central Eleuthera','CE','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(307,17,'Crooked Island','CK','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(308,17,'East Grand Bahama','EG','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(309,17,'Exuma','EX','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(310,17,'Freeport','FP','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(311,17,'Fresh Creek','FC','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(312,17,'Governor\'s Harbour','GH','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(313,17,'Grand Cay','GC','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(314,17,'Green Turtle Cay','GT','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(315,17,'Harbour Island','HI','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(316,17,'High Rock','HR','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(317,17,'Hope Town','HT','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(318,17,'Inagua','IN','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(319,17,'Kemps Bay','KB','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(320,17,'Long Island','LI','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(321,17,'Mangrove Cay','MC','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(322,17,'Marsh Harbour','MH','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(323,17,'Mayaguana District','MG','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(324,17,'New Providence','NP','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(325,17,'Nichollstown and Berry Islands','NB','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(326,17,'North Abaco','NO','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(327,17,'North Andros','NS','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(328,17,'North Eleuthera','NE','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(329,17,'Ragged Island','RI','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(330,17,'Rock Sound','RS','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(331,17,'Rum Cay District','RC','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(332,17,'San Salvador and Rum Cay','SR','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(333,17,'San Salvador Island','SS','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(334,17,'Sandy Point','SP','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(335,17,'South Abaco','SO','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(336,17,'South Andros','SA','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(337,17,'South Eleuthera','SE','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(338,17,'Spanish Wells','SW','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(339,17,'West Grand Bahama','WG','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(340,18,'Capital Governorate','13','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(341,18,'Central Governorate','16','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(342,18,'Muharraq Governorate','15','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(343,18,'Northern Governorate','17','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(344,18,'Southern Governorate','14','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(345,19,'Bagerhat District','05','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(346,19,'Bahadia','33','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(347,19,'Bandarban District','01','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(348,19,'Barguna District','02','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(349,19,'Barisal District','06','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(350,19,'Barisal Division','A','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(351,19,'Bhola District','07','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(352,19,'Bogra District','03','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(353,19,'Brahmanbaria District','04','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(354,19,'Chandpur District','09','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(355,19,'Chapai Nawabganj District','45','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(356,19,'Chittagong District','10','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(357,19,'Chittagong Division','B','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(358,19,'Chuadanga District','12','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(359,19,'Comilla District','08','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(360,19,'Cox\'s Bazar District','11','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(361,19,'Dhaka District','13','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(362,19,'Dhaka Division','C','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(363,19,'Dinajpur District','14','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(364,19,'Faridpur District','15','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(365,19,'Feni District','16','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(366,19,'Gaibandha District','19','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(367,19,'Gazipur District','18','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(368,19,'Gopalganj District','17','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(369,19,'Habiganj District','20','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(370,19,'Jamalpur District','21','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(371,19,'Jessore District','22','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(372,19,'Jhalokati District','25','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(373,19,'Jhenaidah District','23','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(374,19,'Joypurhat District','24','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(375,19,'Khagrachari District','29','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(376,19,'Khulna District','27','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(377,19,'Khulna Division','D','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(378,19,'Kishoreganj District','26','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(379,19,'Kurigram District','28','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(380,19,'Kushtia District','30','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(381,19,'Lakshmipur District','31','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(382,19,'Lalmonirhat District','32','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(383,19,'Madaripur District','36','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(384,19,'Meherpur District','39','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(385,19,'Moulvibazar District','38','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(386,19,'Munshiganj District','35','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(387,19,'Mymensingh District','34','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(388,19,'Mymensingh Division','H','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(389,19,'Naogaon District','48','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(390,19,'Narail District','43','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(391,19,'Narayanganj District','40','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(392,19,'Natore District','44','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(393,19,'Netrokona District','41','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(394,19,'Nilphamari District','46','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(395,19,'Noakhali District','47','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(396,19,'Pabna District','49','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(397,19,'Panchagarh District','52','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(398,19,'Patuakhali District','51','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(399,19,'Pirojpur District','50','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(400,19,'Rajbari District','53','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(401,19,'Rajshahi District','54','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(402,19,'Rajshahi Division','E','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(403,19,'Rangamati Hill District','56','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(404,19,'Rangpur District','55','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(405,19,'Rangpur Division','F','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(406,19,'Satkhira District','58','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(407,19,'Shariatpur District','62','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(408,19,'Sherpur District','57','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(409,19,'Sirajganj District','59','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(410,19,'Sunamganj District','61','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(411,19,'Sylhet District','60','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(412,19,'Sylhet Division','G','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(413,19,'Tangail District','63','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(414,19,'Thakurgaon District','64','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(415,20,'Christ Church','01','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(416,20,'Saint Andrew','02','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(417,20,'Saint George','03','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(418,20,'Saint James','04','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(419,20,'Saint John','05','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(420,20,'Saint Joseph','06','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(421,20,'Saint Lucy','07','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(422,20,'Saint Michael','08','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(423,20,'Saint Peter','09','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(424,20,'Saint Philip','10','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(425,20,'Saint Thomas','11','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(426,21,'Brest Region','BR','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(427,21,'Gomel Region','HO','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(428,21,'Grodno Region','HR','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(429,21,'Minsk','HM','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(430,21,'Minsk Region','MI','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(431,21,'Mogilev Region','MA','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(432,21,'Vitebsk Region','VI','2026-05-04 03:51:33','2026-05-04 03:51:33'),
(433,22,'Antwerp','VAN','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(434,22,'Brussels-Capital Region','BRU','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(435,22,'East Flanders','VOV','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(436,22,'Flanders','VLG','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(437,22,'Flemish Brabant','VBR','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(438,22,'Hainaut','WHT','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(439,22,'Liège','WLG','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(440,22,'Limburg','VLI','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(441,22,'Luxembourg','WLX','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(442,22,'Namur','WNA','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(443,22,'Wallonia','WAL','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(444,22,'Walloon Brabant','WBR','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(445,22,'West Flanders','VWV','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(446,23,'Belize District','BZ','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(447,23,'Cayo District','CY','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(448,23,'Corozal District','CZL','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(449,23,'Orange Walk District','OW','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(450,23,'Stann Creek District','SC','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(451,23,'Toledo District','TOL','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(452,24,'Alibori Department','AL','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(453,24,'Atakora Department','AK','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(454,24,'Atlantique Department','AQ','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(455,24,'Borgou Department','BO','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(456,24,'Collines Department','CO','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(457,24,'Donga Department','DO','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(458,24,'Kouffo Department','KO','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(459,24,'Littoral Department','LI','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(460,24,'Mono Department','MO','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(461,24,'Ouémé Department','OU','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(462,24,'Plateau Department','PL','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(463,24,'Zou Department','ZO','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(464,25,'Devonshire Parish','DEV','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(465,25,'Hamilton Municipality','HAM','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(466,25,'Hamilton Parish','HA','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(467,25,'Paget Parish','PAG','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(468,25,'Pembroke Parish','PEM','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(469,25,'Saint George\'s Municipality','SG','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(470,25,'Saint George\'s Parish','SGE','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(471,25,'Sandys Parish','SAN','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(472,25,'Smith\'s Parish,','SMI','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(473,25,'Southampton Parish','SOU','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(474,25,'Warwick Parish','WAR','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(475,26,'Bumthang District','33','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(476,26,'Chukha District','12','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(477,26,'Dagana District','22','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(478,26,'Gasa District','GA','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(479,26,'Haa District','13','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(480,26,'Lhuntse District','44','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(481,26,'Mongar District','42','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(482,26,'Paro District','11','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(483,26,'Pemagatshel District','43','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(484,26,'Punakha District','23','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(485,26,'Samdrup Jongkhar District','45','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(486,26,'Samtse District','14','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(487,26,'Sarpang District','31','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(488,26,'Thimphu District','15','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(489,26,'Trashigang District','41','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(490,26,'Trongsa District','32','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(491,26,'Tsirang District','21','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(492,26,'Wangdue Phodrang District','24','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(493,26,'Zhemgang District','34','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(494,27,'Beni Department','B','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(495,27,'Chuquisaca Department','H','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(496,27,'Cochabamba Department','C','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(497,27,'La Paz Department','L','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(498,27,'Oruro Department','O','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(499,27,'Pando Department','N','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(500,27,'Potosí Department','P','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(501,27,'Santa Cruz Department','S','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(502,27,'Tarija Department','T','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(503,29,'Bosnian Podrinje Canton','05','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(504,29,'Brčko District','BRC','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(505,29,'Canton 10','10','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(506,29,'Central Bosnia Canton','06','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(507,29,'Federation of Bosnia and Herzegovina','BIH','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(508,29,'Herzegovina-Neretva Canton','07','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(509,29,'Posavina Canton','02','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(510,29,'Republika Srpska','SRP','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(511,29,'Sarajevo Canton','09','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(512,29,'Tuzla Canton','03','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(513,29,'Una-Sana Canton','01','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(514,29,'West Herzegovina Canton','08','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(515,29,'Zenica-Doboj Canton','04','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(516,30,'Central District','CE','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(517,30,'Ghanzi District','GH','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(518,30,'Kgalagadi District','KG','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(519,30,'Kgatleng District','KL','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(520,30,'Kweneng District','KW','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(521,30,'Ngamiland','NG','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(522,30,'North-East District','NE','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(523,30,'North-West District','NW','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(524,30,'South-East District','SE','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(525,30,'Southern District','SO','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(526,32,'Acre','AC','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(527,32,'Alagoas','AL','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(528,32,'Amapá','AP','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(529,32,'Amazonas','AM','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(530,32,'Bahia','BA','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(531,32,'Ceará','CE','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(532,32,'Distrito Federal','DF','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(533,32,'Espírito Santo','ES','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(534,32,'Goiás','GO','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(535,32,'Maranhão','MA','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(536,32,'Mato Grosso','MT','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(537,32,'Mato Grosso do Sul','MS','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(538,32,'Minas Gerais','MG','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(539,32,'Pará','PA','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(540,32,'Paraíba','PB','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(541,32,'Paraná','PR','2026-05-04 03:51:34','2026-05-04 03:51:34'),
(542,32,'Pernambuco','PE','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(543,32,'Piauí','PI','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(544,32,'Rio de Janeiro','RJ','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(545,32,'Rio Grande do Norte','RN','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(546,32,'Rio Grande do Sul','RS','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(547,32,'Rondônia','RO','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(548,32,'Roraima','RR','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(549,32,'Santa Catarina','SC','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(550,32,'São Paulo','SP','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(551,32,'Sergipe','SE','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(552,32,'Tocantins','TO','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(553,34,'Belait District','BE','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(554,34,'Brunei-Muara District','BM','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(555,34,'Temburong District','TE','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(556,34,'Tutong District','TU','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(557,35,'Blagoevgrad Province','01','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(558,35,'Burgas Province','02','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(559,35,'Dobrich Province','08','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(560,35,'Gabrovo Province','07','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(561,35,'Haskovo Province','26','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(562,35,'Kardzhali Province','09','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(563,35,'Kyustendil Province','10','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(564,35,'Lovech Province','11','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(565,35,'Montana Province','12','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(566,35,'Pazardzhik Province','13','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(567,35,'Pernik Province','14','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(568,35,'Pleven Province','15','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(569,35,'Plovdiv Province','16','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(570,35,'Razgrad Province','17','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(571,35,'Ruse Province','18','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(572,35,'Shumen','27','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(573,35,'Silistra Province','19','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(574,35,'Sliven Province','20','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(575,35,'Smolyan Province','21','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(576,35,'Sofia City Province','22','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(577,35,'Sofia Province','23','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(578,35,'Stara Zagora Province','24','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(579,35,'Targovishte Province','25','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(580,35,'Varna Province','03','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(581,35,'Veliko Tarnovo Province','04','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(582,35,'Vidin Province','05','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(583,35,'Vratsa Province','06','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(584,35,'Yambol Province','28','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(585,36,'Balé Province','BAL','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(586,36,'Bam Province','BAM','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(587,36,'Banwa Province','BAN','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(588,36,'Bazèga Province','BAZ','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(589,36,'Boucle du Mouhoun Region','01','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(590,36,'Bougouriba Province','BGR','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(591,36,'Boulgou','BLG','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(592,36,'Cascades Region','02','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(593,36,'Centre','03','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(594,36,'Centre-Est Region','04','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(595,36,'Centre-Nord Region','05','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(596,36,'Centre-Ouest Region','06','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(597,36,'Centre-Sud Region','07','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(598,36,'Comoé Province','COM','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(599,36,'Est Region','08','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(600,36,'Ganzourgou Province','GAN','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(601,36,'Gnagna Province','GNA','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(602,36,'Gourma Province','GOU','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(603,36,'Hauts-Bassins Region','09','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(604,36,'Houet Province','HOU','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(605,36,'Ioba Province','IOB','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(606,36,'Kadiogo Province','KAD','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(607,36,'Kénédougou Province','KEN','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(608,36,'Komondjari Province','KMD','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(609,36,'Kompienga Province','KMP','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(610,36,'Kossi Province','KOS','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(611,36,'Koulpélogo Province','KOP','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(612,36,'Kouritenga Province','KOT','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(613,36,'Kourwéogo Province','KOW','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(614,36,'Léraba Province','LER','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(615,36,'Loroum Province','LOR','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(616,36,'Mouhoun','MOU','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(617,36,'Nahouri Province','NAO','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(618,36,'Namentenga Province','NAM','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(619,36,'Nayala Province','NAY','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(620,36,'Nord Region, Burkina Faso','10','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(621,36,'Noumbiel Province','NOU','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(622,36,'Oubritenga Province','OUB','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(623,36,'Oudalan Province','OUD','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(624,36,'Passoré Province','PAS','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(625,36,'Plateau-Central Region','11','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(626,36,'Poni Province','PON','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(627,36,'Sahel Region','12','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(628,36,'Sanguié Province','SNG','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(629,36,'Sanmatenga Province','SMT','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(630,36,'Séno Province','SEN','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(631,36,'Sissili Province','SIS','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(632,36,'Soum Province','SOM','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(633,36,'Sourou Province','SOR','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(634,36,'Sud-Ouest Region','13','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(635,36,'Tapoa Province','TAP','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(636,36,'Tuy Province','TUI','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(637,36,'Yagha Province','YAG','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(638,36,'Yatenga Province','YAT','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(639,36,'Ziro Province','ZIR','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(640,36,'Zondoma Province','ZON','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(641,36,'Zoundwéogo Province','ZOU','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(642,37,'Bubanza Province','BB','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(643,37,'Bujumbura Mairie Province','BM','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(644,37,'Bujumbura Rural Province','BL','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(645,37,'Bururi Province','BR','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(646,37,'Cankuzo Province','CA','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(647,37,'Cibitoke Province','CI','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(648,37,'Gitega Province','GI','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(649,37,'Karuzi Province','KR','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(650,37,'Kayanza Province','KY','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(651,37,'Kirundo Province','KI','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(652,37,'Makamba Province','MA','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(653,37,'Muramvya Province','MU','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(654,37,'Muyinga Province','MY','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(655,37,'Mwaro Province','MW','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(656,37,'Ngozi Province','NG','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(657,37,'Rumonge Province','RM','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(658,37,'Rutana Province','RT','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(659,37,'Ruyigi Province','RY','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(660,38,'Banteay Meanchey Province','1','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(661,38,'Battambang Province','2','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(662,38,'Kampong Cham Province','3','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(663,38,'Kampong Chhnang Province','4','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(664,38,'Kampong Speu Province','5','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(665,38,'Kampot Province','7','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(666,38,'Kandal Province','8','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(667,38,'Kep Province','23','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(668,38,'Koh Kong Province','9','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(669,38,'Kratié Province','10','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(670,38,'Mondulkiri Province','11','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(671,38,'Oddar Meanchey Province','22','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(672,38,'Pailin Province','24','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(673,38,'Phnom Penh','12','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(674,38,'Preah Vihear Province','13','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(675,38,'Prey Veng Province','14','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(676,38,'Pursat Province','15','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(677,38,'Ratanakiri Province','16','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(678,38,'Siem Reap Province','17','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(679,38,'Sihanoukville Province','18','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(680,38,'Stung Treng Province','19','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(681,38,'Svay Rieng Province','20','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(682,38,'Takéo Province','21','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(683,39,'Adamawa','AD','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(684,39,'Centre','CE','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(685,39,'East','ES','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(686,39,'Far North','EN','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(687,39,'Littoral','LT','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(688,39,'North','NO','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(689,39,'Northwest','NW','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(690,39,'South','SU','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(691,39,'Southwest','SW','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(692,39,'West','OU','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(693,40,'Alberta','AB','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(694,40,'British Columbia','BC','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(695,40,'Manitoba','MB','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(696,40,'New Brunswick','NB','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(697,40,'Newfoundland and Labrador','NL','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(698,40,'Northwest Territories','NT','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(699,40,'Nova Scotia','NS','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(700,40,'Nunavut','NU','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(701,40,'Ontario','ON','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(702,40,'Prince Edward Island','PE','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(703,40,'Quebec','QC','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(704,40,'Saskatchewan','SK','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(705,40,'Yukon','YT','2026-05-04 03:51:35','2026-05-04 03:51:35'),
(706,41,'Barlavento Islands','B','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(707,41,'Boa Vista','BV','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(708,41,'Brava','BR','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(709,41,'Maio Municipality','MA','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(710,41,'Mosteiros','MO','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(711,41,'Paul','PA','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(712,41,'Porto Novo','PN','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(713,41,'Praia','PR','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(714,41,'Ribeira Brava Municipality','RB','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(715,41,'Ribeira Grande','RG','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(716,41,'Ribeira Grande de Santiago','RS','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(717,41,'Sal','SL','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(718,41,'Santa Catarina','CA','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(719,41,'Santa Catarina do Fogo','CF','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(720,41,'Santa Cruz','CR','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(721,41,'São Domingos','SD','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(722,41,'São Filipe','SF','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(723,41,'São Lourenço dos Órgãos','SO','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(724,41,'São Miguel','SM','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(725,41,'São Vicente','SV','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(726,41,'Sotavento Islands','S','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(727,41,'Tarrafal','TA','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(728,41,'Tarrafal de São Nicolau','TS','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(729,43,'Bamingui-Bangoran Prefecture','BB','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(730,43,'Bangui','BGF','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(731,43,'Basse-Kotto Prefecture','BK','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(732,43,'Haut-Mbomou Prefecture','HM','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(733,43,'Haute-Kotto Prefecture','HK','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(734,43,'Kémo Prefecture','KG','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(735,43,'Lobaye Prefecture','LB','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(736,43,'Mambéré-Kadéï','HS','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(737,43,'Mbomou Prefecture','MB','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(738,43,'Nana-Grébizi Economic Prefecture','KB','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(739,43,'Nana-Mambéré Prefecture','NM','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(740,43,'Ombella-M\'Poko Prefecture','MP','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(741,43,'Ouaka Prefecture','UK','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(742,43,'Ouham Prefecture','AC','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(743,43,'Ouham-Pendé Prefecture','OP','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(744,43,'Sangha-Mbaéré','SE','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(745,43,'Vakaga Prefecture','VK','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(746,44,'Bahr el Gazel','BG','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(747,44,'Batha Region','BA','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(748,44,'Borkou','BO','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(749,44,'Ennedi Region','EN','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(750,44,'Ennedi-Est','EE','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(751,44,'Ennedi-Ouest','EO','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(752,44,'Guéra Region','GR','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(753,44,'Hadjer-Lamis','HL','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(754,44,'Kanem Region','KA','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(755,44,'Lac Region','LC','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(756,44,'Logone Occidental Region','LO','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(757,44,'Logone Oriental Region','LR','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(758,44,'Mandoul Region','MA','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(759,44,'Mayo-Kebbi Est Region','ME','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(760,44,'Mayo-Kebbi Ouest Region','MO','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(761,44,'Moyen-Chari Region','MC','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(762,44,'N\'Djamena','ND','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(763,44,'Ouaddaï Region','OD','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(764,44,'Salamat Region','SA','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(765,44,'Sila Region','SI','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(766,44,'Tandjilé Region','TA','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(767,44,'Tibesti Region','TI','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(768,44,'Wadi Fira Region','WF','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(769,45,'Aisén del General Carlos Ibañez del Campo','AI','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(770,45,'Antofagasta','AN','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(771,45,'Arica y Parinacota','AP','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(772,45,'Atacama','AT','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(773,45,'Biobío','BI','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(774,45,'Coquimbo','CO','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(775,45,'La Araucanía','AR','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(776,45,'Libertador General Bernardo O\'Higgins','LI','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(777,45,'Los Lagos','LL','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(778,45,'Los Ríos','LR','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(779,45,'Magallanes y de la Antártica Chilena','MA','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(780,45,'Maule','ML','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(781,45,'Ñuble','NB','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(782,45,'Región Metropolitana de Santiago','RM','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(783,45,'Tarapacá','TA','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(784,45,'Valparaíso','VS','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(785,46,'Anhui','AH','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(786,46,'Beijing','BJ','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(787,46,'Chongqing','CQ','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(788,46,'Fujian','FJ','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(789,46,'Gansu','GS','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(790,46,'Guangdong','GD','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(791,46,'Guangxi Zhuang Autonomous Region','GX','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(792,46,'Guizhou','GZ','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(793,46,'Hainan','HI','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(794,46,'Hebei','HE','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(795,46,'Heilongjiang','HL','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(796,46,'Henan','HA','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(797,46,'Hong Kong','HK','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(798,46,'Hubei','HB','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(799,46,'Hunan','HN','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(800,46,'Inner Mongolia','NM','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(801,46,'Jiangsu','JS','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(802,46,'Jiangxi','JX','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(803,46,'Jilin','JL','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(804,46,'Keelung','TW-KEE','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(805,46,'Liaoning','LN','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(806,46,'Macau','MO','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(807,46,'Ningxia Hui Autonomous Region','NX','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(808,46,'Qinghai','QH','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(809,46,'Shaanxi','SN','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(810,46,'Shandong','SD','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(811,46,'Shanghai','SH','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(812,46,'Shanxi','SX','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(813,46,'Sichuan','SC','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(814,46,'Taiwan Province, People\'s Republic of China','TW','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(815,46,'Tibet Autonomous Region','XZ','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(816,46,'Xinjiang','XJ','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(817,46,'Yunnan','YN','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(818,46,'Zhejiang','ZJ','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(819,49,'Amazonas','AMA','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(820,49,'Antioquia','ANT','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(821,49,'Arauca','ARA','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(822,49,'Atlántico','ATL','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(823,49,'Bogotá','DC','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(824,49,'Bolívar','BOL','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(825,49,'Boyacá','BOY','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(826,49,'Caldas','CAL','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(827,49,'Caquetá','CAQ','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(828,49,'Casanare','CAS','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(829,49,'Cauca','CAU','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(830,49,'Cesar','CES','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(831,49,'Chocó','CHO','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(832,49,'Córdoba','COR','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(833,49,'Cundinamarca','CUN','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(834,49,'Guainía','GUA','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(835,49,'Guaviare','GUV','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(836,49,'Huila','HUI','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(837,49,'La Guajira','LAG','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(838,49,'Magdalena','MAG','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(839,49,'Meta','MET','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(840,49,'Nariño','NAR','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(841,49,'Norte de Santander','NSA','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(842,49,'Putumayo','PUT','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(843,49,'Quindío','QUI','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(844,49,'Risaralda','RIS','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(845,49,'San Andrés, Providencia y Santa Catalina','SAP','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(846,49,'Santander','SAN','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(847,49,'Sucre','SUC','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(848,49,'Tolima','TOL','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(849,49,'Valle del Cauca','VAC','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(850,49,'Vaupés','VAU','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(851,49,'Vichada','VID','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(852,50,'Anjouan','A','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(853,50,'Grande Comore','G','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(854,50,'Mohéli','M','2026-05-04 03:51:36','2026-05-04 03:51:36'),
(855,51,'Bouenza Department','11','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(856,51,'Brazzaville','BZV','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(857,51,'Cuvette Department','8','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(858,51,'Cuvette-Ouest Department','15','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(859,51,'Kouilou Department','5','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(860,51,'Lékoumou Department','2','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(861,51,'Likouala Department','7','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(862,51,'Niari Department','9','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(863,51,'Plateaux Department','14','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(864,51,'Pointe-Noire','16','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(865,51,'Pool Department','12','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(866,51,'Sangha Department','13','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(867,53,'Alajuela Province','A','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(868,53,'Guanacaste Province','G','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(869,53,'Heredia Province','H','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(870,53,'Limón Province','L','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(871,53,'Provincia de Cartago','C','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(872,53,'Puntarenas Province','P','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(873,53,'San José Province','SJ','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(874,54,'Abidjan','AB','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(875,54,'Agnéby','16','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(876,54,'Bafing Region','17','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(877,54,'Bas-Sassandra District','BS','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(878,54,'Bas-Sassandra Region','09','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(879,54,'Comoé District','CM','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(880,54,'Denguélé District','DN','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(881,54,'Denguélé Region','10','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(882,54,'Dix-Huit Montagnes','06','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(883,54,'Fromager','18','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(884,54,'Gôh-Djiboua District','GD','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(885,54,'Haut-Sassandra','02','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(886,54,'Lacs District','LC','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(887,54,'Lacs Region','07','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(888,54,'Lagunes District','LG','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(889,54,'Lagunes region','01','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(890,54,'Marahoué Region','12','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(891,54,'Montagnes District','MG','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(892,54,'Moyen-Cavally','19','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(893,54,'Moyen-Comoé','05','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(894,54,'N\'zi-Comoé','11','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(895,54,'Sassandra-Marahoué District','SM','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(896,54,'Savanes Region','03','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(897,54,'Sud-Bandama','15','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(898,54,'Sud-Comoé','13','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(899,54,'Vallée du Bandama District','VB','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(900,54,'Vallée du Bandama Region','04','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(901,54,'Woroba District','WR','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(902,54,'Worodougou','14','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(903,54,'Yamoussoukro','YM','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(904,54,'Zanzan Region','ZZ','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(905,55,'Bjelovar-Bilogora County','07','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(906,55,'Brod-Posavina County','12','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(907,55,'Dubrovnik-Neretva County','19','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(908,55,'Istria County','18','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(909,55,'Koprivnica-Križevci County','06','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(910,55,'Krapina-Zagorje County','02','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(911,55,'Lika-Senj County','09','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(912,55,'Međimurje County','20','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(913,55,'Osijek-Baranja County','14','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(914,55,'Požega-Slavonia County','11','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(915,55,'Primorje-Gorski Kotar County','08','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(916,55,'Šibenik-Knin County','15','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(917,55,'Sisak-Moslavina County','03','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(918,55,'Split-Dalmatia County','17','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(919,55,'Varaždin County','05','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(920,55,'Virovitica-Podravina County','10','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(921,55,'Vukovar-Syrmia County','16','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(922,55,'Zadar County','13','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(923,55,'Zagreb','21','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(924,55,'Zagreb County','01','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(925,56,'Artemisa Province','15','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(926,56,'Camagüey Province','09','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(927,56,'Ciego de Ávila Province','08','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(928,56,'Cienfuegos Province','06','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(929,56,'Granma Province','12','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(930,56,'Guantánamo Province','14','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(931,56,'Havana Province','03','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(932,56,'Holguín Province','11','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(933,56,'Isla de la Juventud','99','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(934,56,'Las Tunas Province','10','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(935,56,'Matanzas Province','04','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(936,56,'Mayabeque Province','16','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(937,56,'Pinar del Río Province','01','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(938,56,'Sancti Spíritus Province','07','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(939,56,'Santiago de Cuba Province','13','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(940,56,'Villa Clara Province','05','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(941,58,'Famagusta District (Mağusa)','04','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(942,58,'Kyrenia District (Keryneia)','06','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(943,58,'Larnaca District (Larnaka)','03','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(944,58,'Limassol District (Leymasun)','02','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(945,58,'Nicosia District (Lefkoşa)','01','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(946,58,'Paphos District (Pafos)','05','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(947,59,'Benešov','201','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(948,59,'Beroun','202','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(949,59,'Blansko','641','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(950,59,'Břeclav','644','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(951,59,'Brno-město','642','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(952,59,'Brno-venkov','643','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(953,59,'Bruntál','801','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(954,59,'Česká Lípa','511','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(955,59,'České Budějovice','311','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(956,59,'Český Krumlov','312','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(957,59,'Cheb','411','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(958,59,'Chomutov','422','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(959,59,'Chrudim','531','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(960,59,'Děčín','421','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(961,59,'Domažlice','321','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(962,59,'Frýdek-Místek','802','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(963,59,'Havlíčkův Brod','631','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(964,59,'Hodonín','645','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(965,59,'Hradec Králové','521','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(966,59,'Jablonec nad Nisou','512','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(967,59,'Jeseník','711','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(968,59,'Jičín','522','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(969,59,'Jihlava','632','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(970,59,'Jihočeský kraj','31','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(971,59,'Jihomoravský kraj','64','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(972,59,'Jindřichův Hradec','313','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(973,59,'Karlovarský kraj','41','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(974,59,'Karlovy Vary','412','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(975,59,'Karviná','803','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(976,59,'Kladno','203','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(977,59,'Klatovy','322','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(978,59,'Kolín','204','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(979,59,'Kraj Vysočina','63','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(980,59,'Královéhradecký kraj','52','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(981,59,'Kroměříž','721','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(982,59,'Kutná Hora','205','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(983,59,'Liberec','513','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(984,59,'Liberecký kraj','51','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(985,59,'Litoměřice','423','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(986,59,'Louny','424','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(987,59,'Mělník','206','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(988,59,'Mladá Boleslav','207','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(989,59,'Moravskoslezský kraj','80','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(990,59,'Most','425','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(991,59,'Náchod','523','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(992,59,'Nový Jičín','804','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(993,59,'Nymburk','208','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(994,59,'Olomouc','712','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(995,59,'Olomoucký kraj','71','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(996,59,'Opava','805','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(997,59,'Ostrava-město','806','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(998,59,'Pardubice','532','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(999,59,'Pardubický kraj','53','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(1000,59,'Pelhřimov','633','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(1001,59,'Písek','314','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(1002,59,'Plzeň-jih','324','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(1003,59,'Plzeň-město','323','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(1004,59,'Plzeň-sever','325','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(1005,59,'Plzeňský kraj','32','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(1006,59,'Prachatice','315','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(1007,59,'Praha-východ','209','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(1008,59,'Praha-západ','20A','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(1009,59,'Praha, Hlavní město','10','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(1010,59,'Přerov','714','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(1011,59,'Příbram','20B','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(1012,59,'Prostějov','713','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(1013,59,'Rakovník','20C','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(1014,59,'Rokycany','326','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(1015,59,'Rychnov nad Kněžnou','524','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(1016,59,'Semily','514','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(1017,59,'Sokolov','413','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(1018,59,'Strakonice','316','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(1019,59,'Středočeský kraj','20','2026-05-04 03:51:37','2026-05-04 03:51:37'),
(1020,59,'Šumperk','715','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1021,59,'Svitavy','533','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1022,59,'Tábor','317','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1023,59,'Tachov','327','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1024,59,'Teplice','426','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1025,59,'Třebíč','634','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1026,59,'Trutnov','525','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1027,59,'Uherské Hradiště','722','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1028,59,'Ústecký kraj','42','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1029,59,'Ústí nad Labem','427','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1030,59,'Ústí nad Orlicí','534','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1031,59,'Vsetín','723','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1032,59,'Vyškov','646','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1033,59,'Žďár nad Sázavou','635','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1034,59,'Zlín','724','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1035,59,'Zlínský kraj','72','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1036,59,'Znojmo','647','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1037,60,'Bas-Uélé','BU','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1038,60,'Équateur','EQ','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1039,60,'Haut-Katanga','HK','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1040,60,'Haut-Lomami','HL','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1041,60,'Haut-Uélé','HU','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1042,60,'Ituri','IT','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1043,60,'Kasaï','KS','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1044,60,'Kasaï Central','KC','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1045,60,'Kasaï Oriental','KE','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1046,60,'Kinshasa','KN','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1047,60,'Kongo Central','BC','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1048,60,'Kwango','KG','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1049,60,'Kwilu','KL','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1050,60,'Lomami','LO','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1051,60,'Lualaba','LU','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1052,60,'Mai-Ndombe','MN','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1053,60,'Maniema','MA','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1054,60,'Mongala','MO','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1055,60,'Nord-Kivu','NK','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1056,60,'Nord-Ubangi','NU','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1057,60,'Sankuru','SA','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1058,60,'Sud-Kivu','SK','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1059,60,'Sud-Ubangi','SU','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1060,60,'Tanganyika','TA','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1061,60,'Tshopo','TO','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1062,60,'Tshuapa','TU','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1063,61,'Capital Region of Denmark','84','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1064,61,'Central Denmark Region','82','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1065,61,'North Denmark Region','81','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1066,61,'Region of Southern Denmark','83','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1067,61,'Region Zealand','85','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1068,62,'Ali Sabieh Region','AS','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1069,62,'Arta Region','AR','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1070,62,'Dikhil Region','DI','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1071,62,'Djibouti','DJ','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1072,62,'Obock Region','OB','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1073,62,'Tadjourah Region','TA','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1074,63,'Saint Andrew Parish','02','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1075,63,'Saint David Parish','03','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1076,63,'Saint George Parish','04','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1077,63,'Saint John Parish','05','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1078,63,'Saint Joseph Parish','06','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1079,63,'Saint Luke Parish','07','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1080,63,'Saint Mark Parish','08','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1081,63,'Saint Patrick Parish','09','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1082,63,'Saint Paul Parish','10','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1083,63,'Saint Peter Parish','11','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1084,64,'Azua Province','02','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1085,64,'Baoruco Province','03','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1086,64,'Barahona Province','04','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1087,64,'Dajabón Province','05','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1088,64,'Distrito Nacional','01','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1089,64,'Duarte Province','06','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1090,64,'El Seibo Province','08','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1091,64,'Espaillat Province','09','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1092,64,'Hato Mayor Province','30','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1093,64,'Hermanas Mirabal Province','19','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1094,64,'Independencia','10','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1095,64,'La Altagracia Province','11','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1096,64,'La Romana Province','12','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1097,64,'La Vega Province','13','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1098,64,'María Trinidad Sánchez Province','14','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1099,64,'Monseñor Nouel Province','28','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1100,64,'Monte Cristi Province','15','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1101,64,'Monte Plata Province','29','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1102,64,'Pedernales Province','16','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1103,64,'Peravia Province','17','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1104,64,'Puerto Plata Province','18','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1105,64,'Samaná Province','20','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1106,64,'San Cristóbal Province','21','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1107,64,'San José de Ocoa Province','31','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1108,64,'San Juan Province','22','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1109,64,'San Pedro de Macorís','23','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1110,64,'Sánchez Ramírez Province','24','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1111,64,'Santiago Province','25','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1112,64,'Santiago Rodríguez Province','26','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1113,64,'Santo Domingo Province','32','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1114,64,'Valverde Province','27','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1115,65,'Aileu municipality','AL','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1116,65,'Ainaro Municipality','AN','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1117,65,'Baucau Municipality','BA','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1118,65,'Bobonaro Municipality','BO','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1119,65,'Cova Lima Municipality','CO','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1120,65,'Dili municipality','DI','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1121,65,'Ermera District','ER','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1122,65,'Lautém Municipality','LA','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1123,65,'Liquiçá Municipality','LI','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1124,65,'Manatuto District','MT','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1125,65,'Manufahi Municipality','MF','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1126,65,'Viqueque Municipality','VI','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1127,66,'Azuay Province','A','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1128,66,'Bolívar Province','B','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1129,66,'Cañar Province','F','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1130,66,'Carchi Province','C','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1131,66,'Chimborazo Province','H','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1132,66,'Cotopaxi Province','X','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1133,66,'El Oro Province','O','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1134,66,'Esmeraldas','E','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1135,66,'Galápagos Province','W','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1136,66,'Guayas Province','G','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1137,66,'Imbabura Province','I','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1138,66,'Los Ríos Province','R','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1139,66,'Manabí Province','M','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1140,66,'Morona-Santiago Province','S','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1141,66,'Napo Province','N','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1142,66,'Orellana Province','D','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1143,66,'Pastaza Province','Y','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1144,66,'Pichincha Province','P','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1145,66,'Santa Elena Province','SE','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1146,66,'Santo Domingo de los Tsáchilas Province','SD','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1147,66,'Sucumbíos Province','U','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1148,66,'Tungurahua Province','T','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1149,66,'Zamora-Chinchipe Province','Z','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1150,67,'Alexandria Governorate','ALX','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1151,67,'Aswan Governorate','ASN','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1152,67,'Asyut Governorate','AST','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1153,67,'Beheira Governorate','BH','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1154,67,'Beni Suef Governorate','BNS','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1155,67,'Cairo Governorate','C','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1156,67,'Dakahlia Governorate','DK','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1157,67,'Damietta Governorate','DT','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1158,67,'Faiyum Governorate','FYM','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1159,67,'Gharbia Governorate','GH','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1160,67,'Giza Governorate','GZ','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1161,67,'Ismailia Governorate','IS','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1162,67,'Kafr el-Sheikh Governorate','KFS','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1163,67,'Luxor Governorate','LX','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1164,67,'Matrouh Governorate','MT','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1165,67,'Minya Governorate','MN','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1166,67,'Monufia Governorate','MNF','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1167,67,'New Valley Governorate','WAD','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1168,67,'North Sinai Governorate','SIN','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1169,67,'Port Said Governorate','PTS','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1170,67,'Qalyubia Governorate','KB','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1171,67,'Qena Governorate','KN','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1172,67,'Red Sea Governorate','BA','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1173,67,'Sohag Governorate','SHG','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1174,67,'South Sinai Governorate','JS','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1175,67,'Suez Governorate','SUZ','2026-05-04 03:51:38','2026-05-04 03:51:38'),
(1176,68,'Ahuachapán Department','AH','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1177,68,'Cabañas Department','CA','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1178,68,'Chalatenango Department','CH','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1179,68,'Cuscatlán Department','CU','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1180,68,'La Libertad Department','LI','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1181,68,'La Paz Department','PA','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1182,68,'La Unión Department','UN','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1183,68,'Morazán Department','MO','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1184,68,'San Miguel Department','SM','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1185,68,'San Salvador Department','SS','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1186,68,'San Vicente Department','SV','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1187,68,'Santa Ana Department','SA','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1188,68,'Sonsonate Department','SO','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1189,68,'Usulután Department','US','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1190,69,'Annobón Province','AN','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1191,69,'Bioko Norte Province','BN','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1192,69,'Bioko Sur Province','BS','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1193,69,'Centro Sur Province','CS','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1194,69,'Insular Region','I','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1195,69,'Kié-Ntem Province','KN','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1196,69,'Litoral Province','LI','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1197,69,'Río Muni','C','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1198,69,'Wele-Nzas Province','WN','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1199,70,'Anseba Region','AN','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1200,70,'Debub Region','DU','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1201,70,'Gash-Barka Region','GB','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1202,70,'Maekel Region','MA','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1203,70,'Northern Red Sea Region','SK','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1204,70,'Southern Red Sea Region','DK','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1205,71,'Harju County','37','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1206,71,'Hiiu County','39','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1207,71,'Ida-Viru County','44','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1208,71,'Järva County','51','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1209,71,'Jõgeva County','49','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1210,71,'Lääne County','57','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1211,71,'Lääne-Viru County','59','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1212,71,'Pärnu County','67','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1213,71,'Põlva County','65','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1214,71,'Rapla County','70','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1215,71,'Saare County','74','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1216,71,'Tartu County','78','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1217,71,'Valga County','82','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1218,71,'Viljandi County','84','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1219,71,'Võru County','86','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1220,72,'Addis Ababa','AA','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1221,72,'Afar Region','AF','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1222,72,'Amhara Region','AM','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1223,72,'Benishangul-Gumuz Region','BE','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1224,72,'Dire Dawa','DD','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1225,72,'Gambela Region','GA','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1226,72,'Harari Region','HA','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1227,72,'Oromia Region','OR','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1228,72,'Somali Region','SO','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1229,72,'Southern Nations, Nationalities, and Peoples\' Region','SN','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1230,72,'Tigray Region','TI','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1231,75,'Ba','01','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1232,75,'Bua','02','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1233,75,'Cakaudrove','03','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1234,75,'Central Division','C','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1235,75,'Eastern Division','E','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1236,75,'Kadavu','04','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1237,75,'Lau','05','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1238,75,'Lomaiviti','06','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1239,75,'Macuata','07','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1240,75,'Nadroga-Navosa','08','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1241,75,'Naitasiri','09','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1242,75,'Namosi','10','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1243,75,'Northern Division','N','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1244,75,'Ra','11','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1245,75,'Rewa','12','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1246,75,'Rotuma','R','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1247,75,'Serua','13','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1248,75,'Tailevu','14','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1249,75,'Western Division','W','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1250,76,'Åland Islands','01','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1251,76,'Central Finland','08','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1252,76,'Central Ostrobothnia','07','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1253,76,'Eastern Finland Province','IS','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1254,76,'Finland Proper','19','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1255,76,'Kainuu','05','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1256,76,'Kymenlaakso','09','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1257,76,'Lapland','LL','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1258,76,'North Karelia','13','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1259,76,'Northern Ostrobothnia','14','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1260,76,'Northern Savonia','15','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1261,76,'Ostrobothnia','12','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1262,76,'Oulu Province','OL','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1263,76,'Päijänne Tavastia','16','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1264,76,'Pirkanmaa','11','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1265,76,'Satakunta','17','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1266,76,'South Karelia','02','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1267,76,'Southern Ostrobothnia','03','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1268,76,'Southern Savonia','04','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1269,76,'Tavastia Proper','06','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1270,76,'Uusimaa','18','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1271,77,'Alo','WF-AL','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1272,77,'Alsace','A','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1273,77,'Aquitaine','B','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1274,77,'Auvergne','C','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1275,77,'Auvergne-Rhône-Alpes','ARA','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1276,77,'Bourgogne-Franche-Comté','BFC','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1277,77,'Brittany','BRE','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1278,77,'Burgundy','D','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1279,77,'Centre-Val de Loire','CVL','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1280,77,'Champagne-Ardenne','G','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1281,77,'Corsica','COR','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1282,77,'Franche-Comté','I','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1283,77,'French Guiana','GF','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1284,77,'French Polynesia','PF','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1285,77,'Grand Est','GES','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1286,77,'Guadeloupe','GP','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1287,77,'Hauts-de-France','HDF','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1288,77,'Île-de-France','IDF','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1289,77,'Languedoc-Roussillon','K','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1290,77,'Limousin','L','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1291,77,'Lorraine','M','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1292,77,'Lower Normandy','P','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1293,77,'Martinique','MQ','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1294,77,'Mayotte','YT','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1295,77,'Nord-Pas-de-Calais','O','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1296,77,'Normandy','NOR','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1297,77,'Nouvelle-Aquitaine','NAQ','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1298,77,'Occitania','OCC','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1299,77,'Paris','75','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1300,77,'Pays de la Loire','PDL','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1301,77,'Picardy','S','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1302,77,'Poitou-Charentes','T','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1303,77,'Provence-Alpes-Côte d\'Azur','PAC','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1304,77,'Réunion','RE','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1305,77,'Rhône-Alpes','V','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1306,77,'Saint Barthélemy','BL','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1307,77,'Saint Martin','MF','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1308,77,'Saint Pierre and Miquelon','PM','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1309,77,'Sigave','WF-SG','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1310,77,'Upper Normandy','Q','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1311,77,'Uvea','WF-UV','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1312,77,'Wallis and Futuna','WF','2026-05-04 03:51:39','2026-05-04 03:51:39'),
(1313,81,'Estuaire Province','1','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1314,81,'Haut-Ogooué Province','2','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1315,81,'Moyen-Ogooué Province','3','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1316,81,'Ngounié Province','4','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1317,81,'Nyanga Province','5','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1318,81,'Ogooué-Ivindo Province','6','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1319,81,'Ogooué-Lolo Province','7','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1320,81,'Ogooué-Maritime Province','8','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1321,81,'Woleu-Ntem Province','9','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1322,82,'Banjul','B','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1323,82,'Central River Division','M','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1324,82,'Lower River Division','L','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1325,82,'North Bank Division','N','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1326,82,'Upper River Division','U','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1327,82,'West Coast Division','W','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1328,83,'Adjara','AJ','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1329,83,'Autonomous Republic of Abkhazia','AB','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1330,83,'Guria','GU','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1331,83,'Imereti','IM','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1332,83,'Kakheti','KA','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1333,83,'Khelvachauri Municipality','29','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1334,83,'Kvemo Kartli','KK','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1335,83,'Mtskheta-Mtianeti','MM','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1336,83,'Racha-Lechkhumi and Kvemo Svaneti','RL','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1337,83,'Samegrelo-Zemo Svaneti','SZ','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1338,83,'Samtskhe-Javakheti','SJ','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1339,83,'Senaki Municipality','50','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1340,83,'Shida Kartli','SK','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1341,83,'Tbilisi','TB','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1342,84,'Baden-Württemberg','BW','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1343,84,'Bavaria','BY','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1344,84,'Berlin','BE','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1345,84,'Brandenburg','BB','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1346,84,'Bremen','HB','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1347,84,'Hamburg','HH','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1348,84,'Hesse','HE','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1349,84,'Lower Saxony','NI','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1350,84,'Mecklenburg-Vorpommern','MV','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1351,84,'North Rhine-Westphalia','NW','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1352,84,'Rhineland-Palatinate','RP','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1353,84,'Saarland','SL','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1354,84,'Saxony','SN','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1355,84,'Saxony-Anhalt','ST','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1356,84,'Schleswig-Holstein','SH','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1357,84,'Thuringia','TH','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1358,85,'Ahafo','AF','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1359,85,'Ashanti','AH','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1360,85,'Bono','BO','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1361,85,'Bono East','BE','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1362,85,'Central','CP','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1363,85,'Eastern','EP','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1364,85,'Greater Accra','AA','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1365,85,'North East','NE','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1366,85,'Northern','NP','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1367,85,'Oti','OT','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1368,85,'Savannah','SV','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1369,85,'Upper East','UE','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1370,85,'Upper West','UW','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1371,85,'Volta','TV','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1372,85,'Western','WP','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1373,85,'Western North','WN','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1374,87,'Achaea Regional Unit','13','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1375,87,'Aetolia-Acarnania Regional Unit','01','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1376,87,'Arcadia Prefecture','12','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1377,87,'Argolis Regional Unit','11','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1378,87,'Attica Region','I','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1379,87,'Boeotia Regional Unit','03','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1380,87,'Central Greece Region','H','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1381,87,'Central Macedonia','B','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1382,87,'Chania Regional Unit','94','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1383,87,'Corfu Prefecture','22','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1384,87,'Corinthia Regional Unit','15','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1385,87,'Crete Region','M','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1386,87,'Drama Regional Unit','52','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1387,87,'East Attica Regional Unit','A2','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1388,87,'East Macedonia and Thrace','A','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1389,87,'Epirus Region','D','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1390,87,'Euboea','04','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1391,87,'Grevena Prefecture','51','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1392,87,'Imathia Regional Unit','53','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1393,87,'Ioannina Regional Unit','33','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1394,87,'Ionian Islands Region','F','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1395,87,'Karditsa Regional Unit','41','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1396,87,'Kastoria Regional Unit','56','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1397,87,'Kefalonia Prefecture','23','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1398,87,'Kilkis Regional Unit','57','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1399,87,'Kozani Prefecture','58','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1400,87,'Laconia','16','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1401,87,'Larissa Prefecture','42','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1402,87,'Lefkada Regional Unit','24','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1403,87,'Pella Regional Unit','59','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1404,87,'Peloponnese Region','J','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1405,87,'Phthiotis Prefecture','06','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1406,87,'Preveza Prefecture','34','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1407,87,'Serres Prefecture','62','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1408,87,'South Aegean','L','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1409,87,'Thessaloniki Regional Unit','54','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1410,87,'West Greece Region','G','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1411,87,'West Macedonia Region','C','2026-05-04 03:51:40','2026-05-04 03:51:40'),
(1412,89,'Carriacou and Petite Martinique','10','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1413,89,'Saint Andrew Parish','01','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1414,89,'Saint David Parish','02','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1415,89,'Saint George Parish','03','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1416,89,'Saint John Parish','04','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1417,89,'Saint Mark Parish','05','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1418,89,'Saint Patrick Parish','06','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1419,92,'Alta Verapaz Department','AV','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1420,92,'Baja Verapaz Department','BV','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1421,92,'Chimaltenango Department','CM','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1422,92,'Chiquimula Department','CQ','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1423,92,'El Progreso Department','PR','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1424,92,'Escuintla Department','ES','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1425,92,'Guatemala Department','GU','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1426,92,'Huehuetenango Department','HU','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1427,92,'Izabal Department','IZ','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1428,92,'Jalapa Department','JA','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1429,92,'Jutiapa Department','JU','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1430,92,'Petén Department','PE','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1431,92,'Quetzaltenango Department','QZ','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1432,92,'Quiché Department','QC','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1433,92,'Retalhuleu Department','RE','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1434,92,'Sacatepéquez Department','SA','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1435,92,'San Marcos Department','SM','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1436,92,'Santa Rosa Department','SR','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1437,92,'Sololá Department','SO','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1438,92,'Suchitepéquez Department','SU','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1439,92,'Totonicapán Department','TO','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1440,94,'Beyla Prefecture','BE','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1441,94,'Boffa Prefecture','BF','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1442,94,'Boké Prefecture','BK','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1443,94,'Boké Region','B','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1444,94,'Conakry','C','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1445,94,'Coyah Prefecture','CO','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1446,94,'Dabola Prefecture','DB','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1447,94,'Dalaba Prefecture','DL','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1448,94,'Dinguiraye Prefecture','DI','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1449,94,'Dubréka Prefecture','DU','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1450,94,'Faranah Prefecture','FA','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1451,94,'Forécariah Prefecture','FO','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1452,94,'Fria Prefecture','FR','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1453,94,'Gaoual Prefecture','GA','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1454,94,'Guéckédou Prefecture','GU','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1455,94,'Kankan Prefecture','KA','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1456,94,'Kankan Region','K','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1457,94,'Kérouané Prefecture','KE','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1458,94,'Kindia Prefecture','KD','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1459,94,'Kindia Region','D','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1460,94,'Kissidougou Prefecture','KS','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1461,94,'Koubia Prefecture','KB','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1462,94,'Koundara Prefecture','KN','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1463,94,'Kouroussa Prefecture','KO','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1464,94,'Labé Prefecture','LA','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1465,94,'Labé Region','L','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1466,94,'Lélouma Prefecture','LE','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1467,94,'Lola Prefecture','LO','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1468,94,'Macenta Prefecture','MC','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1469,94,'Mali Prefecture','ML','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1470,94,'Mamou Prefecture','MM','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1471,94,'Mamou Region','M','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1472,94,'Mandiana Prefecture','MD','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1473,94,'Nzérékoré Prefecture','NZ','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1474,94,'Nzérékoré Region','N','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1475,94,'Pita Prefecture','PI','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1476,94,'Siguiri Prefecture','SI','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1477,94,'Télimélé Prefecture','TE','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1478,94,'Tougué Prefecture','TO','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1479,94,'Yomou Prefecture','YO','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1480,95,'Bafatá','BA','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1481,95,'Biombo Region','BM','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1482,95,'Bolama Region','BL','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1483,95,'Cacheu Region','CA','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1484,95,'Gabú Region','GA','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1485,95,'Leste Province','L','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1486,95,'Norte Province','N','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1487,95,'Oio Region','OI','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1488,95,'Quinara Region','QU','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1489,95,'Sul Province','S','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1490,95,'Tombali Region','TO','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1491,96,'Barima-Waini','BA','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1492,96,'Cuyuni-Mazaruni','CU','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1493,96,'Demerara-Mahaica','DE','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1494,96,'East Berbice-Corentyne','EB','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1495,96,'Essequibo Islands-West Demerara','ES','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1496,96,'Mahaica-Berbice','MA','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1497,96,'Pomeroon-Supenaam','PM','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1498,96,'Potaro-Siparuni','PT','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1499,96,'Upper Demerara-Berbice','UD','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1500,96,'Upper Takutu-Upper Essequibo','UT','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1501,97,'Artibonite','AR','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1502,97,'Centre','CE','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1503,97,'Grand\'Anse','GA','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1504,97,'Nippes','NI','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1505,97,'Nord','ND','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1506,97,'Nord-Est','NE','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1507,97,'Nord-Ouest','NO','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1508,97,'Ouest','OU','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1509,97,'Sud','SD','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1510,97,'Sud-Est','SE','2026-05-04 03:51:41','2026-05-04 03:51:41'),
(1511,99,'Atlántida Department','AT','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1512,99,'Bay Islands Department','IB','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1513,99,'Choluteca Department','CH','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1514,99,'Colón Department','CL','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1515,99,'Comayagua Department','CM','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1516,99,'Copán Department','CP','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1517,99,'Cortés Department','CR','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1518,99,'El Paraíso Department','EP','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1519,99,'Francisco Morazán Department','FM','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1520,99,'Gracias a Dios Department','GD','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1521,99,'Intibucá Department','IN','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1522,99,'La Paz Department','LP','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1523,99,'Lempira Department','LE','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1524,99,'Ocotepeque Department','OC','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1525,99,'Olancho Department','OL','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1526,99,'Santa Bárbara Department','SB','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1527,99,'Valle Department','VA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1528,99,'Yoro Department','YO','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1529,100,'Central and Western District','HCW','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1530,100,'Eastern','HEA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1531,100,'Islands District','NIS','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1532,100,'Kowloon City','KKC','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1533,100,'Kwai Tsing','NKT','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1534,100,'Kwun Tong','KKT','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1535,100,'North','NNO','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1536,100,'Sai Kung District','NSK','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1537,100,'Sha Tin','NST','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1538,100,'Sham Shui Po','KSS','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1539,100,'Southern','HSO','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1540,100,'Tai Po District','NTP','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1541,100,'Tsuen Wan District','NTW','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1542,100,'Tuen Mun','NTM','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1543,100,'Wan Chai','HWC','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1544,100,'Wong Tai Sin','KWT','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1545,100,'Yau Tsim Mong','KYT','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1546,100,'Yuen Long District','NYL','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1547,101,'Bács-Kiskun County','BK','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1548,101,'Baranya County','BA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1549,101,'Békés County','BE','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1550,101,'Békéscsaba','BC','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1551,101,'Borsod-Abaúj-Zemplén County','BZ','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1552,101,'Budapest','BU','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1553,101,'Csongrád County','CS','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1554,101,'Debrecen','DE','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1555,101,'Dunaújváros','DU','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1556,101,'Eger','EG','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1557,101,'Érd','ER','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1558,101,'Fejér County','FE','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1559,101,'Győr','GY','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1560,101,'Győr-Moson-Sopron County','GS','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1561,101,'Hajdú-Bihar County','HB','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1562,101,'Heves County','HE','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1563,101,'Hódmezővásárhely','HV','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1564,101,'Jász-Nagykun-Szolnok County','JN','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1565,101,'Kaposvár','KV','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1566,101,'Kecskemét','KM','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1567,101,'Miskolc','MI','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1568,101,'Nagykanizsa','NK','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1569,101,'Nógrád County','NO','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1570,101,'Nyíregyháza','NY','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1571,101,'Pécs','PS','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1572,101,'Pest County','PE','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1573,101,'Salgótarján','ST','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1574,101,'Somogy County','SO','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1575,101,'Sopron','SN','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1576,101,'Szabolcs-Szatmár-Bereg County','SZ','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1577,101,'Szeged','SD','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1578,101,'Székesfehérvár','SF','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1579,101,'Szekszárd','SS','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1580,101,'Szolnok','SK','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1581,101,'Szombathely','SH','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1582,101,'Tatabánya','TB','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1583,101,'Tolna County','TO','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1584,101,'Vas County','VA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1585,101,'Veszprém','VM','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1586,101,'Veszprém County','VE','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1587,101,'Zala County','ZA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1588,101,'Zalaegerszeg','ZE','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1589,102,'Capital Region','1','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1590,102,'Eastern Region','7','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1591,102,'Northeastern Region','6','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1592,102,'Northwestern Region','5','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1593,102,'Southern Peninsula Region','2','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1594,102,'Southern Region','8','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1595,102,'Western Region','3','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1596,102,'Westfjords','4','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1597,103,'Andaman and Nicobar Islands','AN','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1598,103,'Andhra Pradesh','AP','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1599,103,'Arunachal Pradesh','AR','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1600,103,'Assam','AS','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1601,103,'Bihar','BR','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1602,103,'Chandigarh','CH','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1603,103,'Chhattisgarh','CT','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1604,103,'Dadra and Nagar Haveli and Daman and Diu','DH','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1605,103,'Delhi','DL','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1606,103,'Goa','GA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1607,103,'Gujarat','GJ','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1608,103,'Haryana','HR','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1609,103,'Himachal Pradesh','HP','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1610,103,'Jammu and Kashmir','JK','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1611,103,'Jharkhand','JH','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1612,103,'Karnataka','KA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1613,103,'Kerala','KL','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1614,103,'Ladakh','LA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1615,103,'Lakshadweep','LD','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1616,103,'Madhya Pradesh','MP','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1617,103,'Maharashtra','MH','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1618,103,'Manipur','MN','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1619,103,'Meghalaya','ML','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1620,103,'Mizoram','MZ','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1621,103,'Nagaland','NL','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1622,103,'Odisha','OR','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1623,103,'Puducherry','PY','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1624,103,'Punjab','PB','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1625,103,'Rajasthan','RJ','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1626,103,'Sikkim','SK','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1627,103,'Tamil Nadu','TN','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1628,103,'Telangana','TG','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1629,103,'Tripura','TR','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1630,103,'Uttar Pradesh','UP','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1631,103,'Uttarakhand','UT','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1632,103,'West Bengal','WB','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1633,104,'Aceh','AC','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1634,104,'Bali','BA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1635,104,'Banten','BT','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1636,104,'Bengkulu','BE','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1637,104,'DI Yogyakarta','YO','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1638,104,'DKI Jakarta','JK','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1639,104,'Gorontalo','GO','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1640,104,'Jambi','JA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1641,104,'Jawa Barat','JB','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1642,104,'Jawa Tengah','JT','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1643,104,'Jawa Timur','JI','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1644,104,'Kalimantan Barat','KA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1645,104,'Kalimantan Selatan','KS','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1646,104,'Kalimantan Tengah','KT','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1647,104,'Kalimantan Timur','KI','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1648,104,'Kalimantan Utara','KU','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1649,104,'Kepulauan Bangka Belitung','BB','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1650,104,'Kepulauan Riau','KR','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1651,104,'Lampung','LA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1652,104,'Maluku','MA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1653,104,'Maluku Utara','MU','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1654,104,'Nusa Tenggara Barat','NB','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1655,104,'Nusa Tenggara Timur','NT','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1656,104,'Papua','PA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1657,104,'Papua Barat','PB','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1658,104,'Riau','RI','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1659,104,'Sulawesi Barat','SR','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1660,104,'Sulawesi Selatan','SN','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1661,104,'Sulawesi Tengah','ST','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1662,104,'Sulawesi Tenggara','SG','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1663,104,'Sulawesi Utara','SA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1664,104,'Sumatera Barat','SB','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1665,104,'Sumatera Selatan','SS','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1666,104,'Sumatera Utara','SU','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1667,105,'Alborz Province','30','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1668,105,'Ardabil Province','24','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1669,105,'Bushehr Province','18','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1670,105,'Chaharmahal and Bakhtiari Province','14','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1671,105,'East Azerbaijan Province','03','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1672,105,'Fars Province','07','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1673,105,'Gilan Province','01','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1674,105,'Golestan Province','27','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1675,105,'Hamadan Province','13','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1676,105,'Hormozgan Province','22','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1677,105,'Ilam Province','16','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1678,105,'Isfahan Province','10','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1679,105,'Kerman Province','08','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1680,105,'Kermanshah Province','05','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1681,105,'Khuzestan Province','06','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1682,105,'Kohgiluyeh and Boyer-Ahmad Province','17','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1683,105,'Kurdistan Province','12','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1684,105,'Lorestan Province','15','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1685,105,'Markazi Province','00','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1686,105,'Mazandaran Province','02','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1687,105,'North Khorasan Province','28','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1688,105,'Qazvin Province','26','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1689,105,'Qom Province','25','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1690,105,'Razavi Khorasan Province','09','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1691,105,'Semnan Province','20','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1692,105,'Sistan and Baluchestan','11','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1693,105,'South Khorasan Province','29','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1694,105,'Tehran Province','23','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1695,105,'West Azarbaijan Province','04','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1696,105,'Yazd Province','21','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1697,105,'Zanjan Province','19','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1698,106,'Al Anbar Governorate','AN','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1699,106,'Al Muthanna Governorate','MU','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1700,106,'Al-Qādisiyyah Governorate','QA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1701,106,'Babylon Governorate','BB','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1702,106,'Baghdad Governorate','BG','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1703,106,'Basra Governorate','BA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1704,106,'Dhi Qar Governorate','DQ','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1705,106,'Diyala Governorate','DI','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1706,106,'Dohuk Governorate','DA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1707,106,'Erbil Governorate','AR','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1708,106,'Karbala Governorate','KA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1709,106,'Kirkuk Governorate','KI','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1710,106,'Maysan Governorate','MA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1711,106,'Najaf Governorate','NA','2026-05-04 03:51:42','2026-05-04 03:51:42'),
(1712,106,'Nineveh Governorate','NI','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1713,106,'Saladin Governorate','SD','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1714,106,'Sulaymaniyah Governorate','SU','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1715,106,'Wasit Governorate','WA','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1716,107,'Connacht','C','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1717,107,'County Carlow','CW','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1718,107,'County Cavan','CN','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1719,107,'County Clare','CE','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1720,107,'County Cork','CO','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1721,107,'County Donegal','DL','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1722,107,'County Dublin','D','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1723,107,'County Galway','G','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1724,107,'County Kerry','KY','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1725,107,'County Kildare','KE','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1726,107,'County Kilkenny','KK','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1727,107,'County Laois','LS','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1728,107,'County Limerick','LK','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1729,107,'County Longford','LD','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1730,107,'County Louth','LH','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1731,107,'County Mayo','MO','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1732,107,'County Meath','MH','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1733,107,'County Monaghan','MN','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1734,107,'County Offaly','OY','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1735,107,'County Roscommon','RN','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1736,107,'County Sligo','SO','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1737,107,'County Tipperary','TA','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1738,107,'County Waterford','WD','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1739,107,'County Westmeath','WH','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1740,107,'County Wexford','WX','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1741,107,'County Wicklow','WW','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1742,107,'Leinster','L','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1743,107,'Munster','M','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1744,107,'Ulster','U','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1745,108,'Central District','M','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1746,108,'Haifa District','HA','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1747,108,'Jerusalem District','JM','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1748,108,'Northern District','Z','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1749,108,'Southern District','D','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1750,108,'Tel Aviv District','TA','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1751,109,'Abruzzo','65','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1752,109,'Aosta Valley','23','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1753,109,'Apulia','75','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1754,109,'Basilicata','77','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1755,109,'Benevento Province','BN','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1756,109,'Calabria','78','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1757,109,'Campania','72','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1758,109,'Emilia-Romagna','45','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1759,109,'Friuli–Venezia Giulia','36','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1760,109,'Lazio','62','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1761,109,'Libero consorzio comunale di Agrigento','AG','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1762,109,'Libero consorzio comunale di Caltanissetta','CL','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1763,109,'Libero consorzio comunale di Enna','EN','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1764,109,'Libero consorzio comunale di Ragusa','RG','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1765,109,'Libero consorzio comunale di Siracusa','SR','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1766,109,'Libero consorzio comunale di Trapani','TP','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1767,109,'Liguria','42','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1768,109,'Lombardy','25','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1769,109,'Marche','57','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1770,109,'Metropolitan City of Bari','BA','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1771,109,'Metropolitan City of Bologna','BO','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1772,109,'Metropolitan City of Cagliari','CA','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1773,109,'Metropolitan City of Catania','CT','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1774,109,'Metropolitan City of Florence','FI','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1775,109,'Metropolitan City of Genoa','GE','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1776,109,'Metropolitan City of Messina','ME','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1777,109,'Metropolitan City of Milan','MI','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1778,109,'Metropolitan City of Naples','NA','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1779,109,'Metropolitan City of Palermo','PA','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1780,109,'Metropolitan City of Reggio Calabria','RC','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1781,109,'Metropolitan City of Rome','RM','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1782,109,'Metropolitan City of Turin','TO','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1783,109,'Metropolitan City of Venice','VE','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1784,109,'Molise','67','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1785,109,'Pesaro and Urbino Province','PU','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1786,109,'Piedmont','21','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1787,109,'Province of Alessandria','AL','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1788,109,'Province of Ancona','AN','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1789,109,'Province of Ascoli Piceno','AP','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1790,109,'Province of Asti','AT','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1791,109,'Province of Avellino','AV','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1792,109,'Province of Barletta-Andria-Trani','BT','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1793,109,'Province of Belluno','BL','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1794,109,'Province of Bergamo','BG','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1795,109,'Province of Biella','BI','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1796,109,'Province of Brescia','BS','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1797,109,'Province of Brindisi','BR','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1798,109,'Province of Campobasso','CB','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1799,109,'Province of Carbonia-Iglesias','CI','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1800,109,'Province of Caserta','CE','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1801,109,'Province of Catanzaro','CZ','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1802,109,'Province of Chieti','CH','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1803,109,'Province of Como','CO','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1804,109,'Province of Cosenza','CS','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1805,109,'Province of Cremona','CR','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1806,109,'Province of Crotone','KR','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1807,109,'Province of Cuneo','CN','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1808,109,'Province of Fermo','FM','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1809,109,'Province of Ferrara','FE','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1810,109,'Province of Foggia','FG','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1811,109,'Province of Forlì-Cesena','FC','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1812,109,'Province of Frosinone','FR','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1813,109,'Province of Gorizia','GO','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1814,109,'Province of Grosseto','GR','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1815,109,'Province of Imperia','IM','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1816,109,'Province of Isernia','IS','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1817,109,'Province of L\'Aquila','AQ','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1818,109,'Province of La Spezia','SP','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1819,109,'Province of Latina','LT','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1820,109,'Province of Lecce','LE','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1821,109,'Province of Lecco','LC','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1822,109,'Province of Livorno','LI','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1823,109,'Province of Lodi','LO','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1824,109,'Province of Lucca','LU','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1825,109,'Province of Macerata','MC','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1826,109,'Province of Mantua','MN','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1827,109,'Province of Massa and Carrara','MS','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1828,109,'Province of Matera','MT','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1829,109,'Province of Medio Campidano','VS','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1830,109,'Province of Modena','MO','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1831,109,'Province of Monza and Brianza','MB','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1832,109,'Province of Novara','NO','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1833,109,'Province of Nuoro','NU','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1834,109,'Province of Ogliastra','OG','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1835,109,'Province of Olbia-Tempio','OT','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1836,109,'Province of Oristano','OR','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1837,109,'Province of Padua','PD','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1838,109,'Province of Parma','PR','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1839,109,'Province of Pavia','PV','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1840,109,'Province of Perugia','PG','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1841,109,'Province of Pescara','PE','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1842,109,'Province of Piacenza','PC','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1843,109,'Province of Pisa','PI','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1844,109,'Province of Pistoia','PT','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1845,109,'Province of Pordenone','PN','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1846,109,'Province of Potenza','PZ','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1847,109,'Province of Prato','PO','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1848,109,'Province of Ravenna','RA','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1849,109,'Province of Reggio Emilia','RE','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1850,109,'Province of Rieti','RI','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1851,109,'Province of Rimini','RN','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1852,109,'Province of Rovigo','RO','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1853,109,'Province of Salerno','SA','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1854,109,'Province of Sassari','SS','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1855,109,'Province of Savona','SV','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1856,109,'Province of Siena','SI','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1857,109,'Province of Sondrio','SO','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1858,109,'Province of Taranto','TA','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1859,109,'Province of Teramo','TE','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1860,109,'Province of Terni','TR','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1861,109,'Province of Treviso','TV','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1862,109,'Province of Trieste','TS','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1863,109,'Province of Udine','UD','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1864,109,'Province of Varese','VA','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1865,109,'Province of Verbano-Cusio-Ossola','VB','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1866,109,'Province of Vercelli','VC','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1867,109,'Province of Verona','VR','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1868,109,'Province of Vibo Valentia','VV','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1869,109,'Province of Vicenza','VI','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1870,109,'Province of Viterbo','VT','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1871,109,'Sardinia','88','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1872,109,'Sicily','82','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1873,109,'South Tyrol','BZ','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1874,109,'Trentino','TN','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1875,109,'Trentino-South Tyrol','32','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1876,109,'Tuscany','52','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1877,109,'Umbria','55','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1878,109,'Veneto','34','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1879,110,'Clarendon Parish','13','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1880,110,'Hanover Parish','09','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1881,110,'Kingston Parish','01','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1882,110,'Manchester Parish','12','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1883,110,'Portland Parish','04','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1884,110,'Saint Andrew','02','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1885,110,'Saint Ann Parish','06','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1886,110,'Saint Catherine Parish','14','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1887,110,'Saint Elizabeth Parish','11','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1888,110,'Saint James Parish','08','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1889,110,'Saint Mary Parish','05','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1890,110,'Saint Thomas Parish','03','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1891,110,'Trelawny Parish','07','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1892,110,'Westmoreland Parish','10','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1893,111,'Aichi Prefecture','23','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1894,111,'Akita Prefecture','05','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1895,111,'Aomori Prefecture','02','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1896,111,'Chiba Prefecture','12','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1897,111,'Ehime Prefecture','38','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1898,111,'Fukui Prefecture','18','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1899,111,'Fukuoka Prefecture','40','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1900,111,'Fukushima Prefecture','07','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1901,111,'Gifu Prefecture','21','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1902,111,'Gunma Prefecture','10','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1903,111,'Hiroshima Prefecture','34','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1904,111,'Hokkaidō Prefecture','01','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1905,111,'Hyōgo Prefecture','28','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1906,111,'Ibaraki Prefecture','08','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1907,111,'Ishikawa Prefecture','17','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1908,111,'Iwate Prefecture','03','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1909,111,'Kagawa Prefecture','37','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1910,111,'Kagoshima Prefecture','46','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1911,111,'Kanagawa Prefecture','14','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1912,111,'Kōchi Prefecture','39','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1913,111,'Kumamoto Prefecture','43','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1914,111,'Kyōto Prefecture','26','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1915,111,'Mie Prefecture','24','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1916,111,'Miyagi Prefecture','04','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1917,111,'Miyazaki Prefecture','45','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1918,111,'Nagano Prefecture','20','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1919,111,'Nagasaki Prefecture','42','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1920,111,'Nara Prefecture','29','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1921,111,'Niigata Prefecture','15','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1922,111,'Ōita Prefecture','44','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1923,111,'Okayama Prefecture','33','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1924,111,'Okinawa Prefecture','47','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1925,111,'Ōsaka Prefecture','27','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1926,111,'Saga Prefecture','41','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1927,111,'Saitama Prefecture','11','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1928,111,'Shiga Prefecture','25','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1929,111,'Shimane Prefecture','32','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1930,111,'Shizuoka Prefecture','22','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1931,111,'Tochigi Prefecture','09','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1932,111,'Tokushima Prefecture','36','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1933,111,'Tokyo','13','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1934,111,'Tottori Prefecture','31','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1935,111,'Toyama Prefecture','16','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1936,111,'Wakayama Prefecture','30','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1937,111,'Yamagata Prefecture','06','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1938,111,'Yamaguchi Prefecture','35','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1939,111,'Yamanashi Prefecture','19','2026-05-04 03:51:43','2026-05-04 03:51:43'),
(1940,113,'Ajloun Governorate','AJ','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1941,113,'Amman Governorate','AM','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1942,113,'Aqaba Governorate','AQ','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1943,113,'Balqa Governorate','BA','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1944,113,'Irbid Governorate','IR','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1945,113,'Jerash Governorate','JA','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1946,113,'Karak Governorate','KA','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1947,113,'Ma\'an Governorate','MN','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1948,113,'Madaba Governorate','MD','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1949,113,'Mafraq Governorate','MA','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1950,113,'Tafilah Governorate','AT','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1951,113,'Zarqa Governorate','AZ','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1952,114,'Akmola Region','AKM','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1953,114,'Aktobe Region','AKT','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1954,114,'Almaty','ALA','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1955,114,'Almaty Region','ALM','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1956,114,'Atyrau Region','ATY','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1957,114,'Baikonur','BAY','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1958,114,'East Kazakhstan Region','VOS','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1959,114,'Jambyl Region','ZHA','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1960,114,'Karaganda Region','KAR','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1961,114,'Kostanay Region','KUS','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1962,114,'Kyzylorda Region','KZY','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1963,114,'Mangystau Region','MAN','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1964,114,'North Kazakhstan Region','SEV','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1965,114,'Nur-Sultan','AST','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1966,114,'Pavlodar Region','PAV','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1967,114,'Turkestan Region','YUZ','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1968,114,'West Kazakhstan Province','ZAP','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1969,115,'Baringo County','01','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1970,115,'Bomet County','02','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1971,115,'Bungoma County','03','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1972,115,'Busia County','04','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1973,115,'Central Province','200','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1974,115,'Coast Province','300','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1975,115,'Eastern Province','400','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1976,115,'Elgeyo-Marakwet County','05','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1977,115,'Embu County','06','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1978,115,'Garissa County','07','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1979,115,'Homa Bay County','08','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1980,115,'Isiolo County','09','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1981,115,'Kajiado County','10','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1982,115,'Kakamega County','11','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1983,115,'Kericho County','12','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1984,115,'Kiambu County','13','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1985,115,'Kilifi County','14','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1986,115,'Kirinyaga County','15','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1987,115,'Kisii County','16','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1988,115,'Kisumu County','17','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1989,115,'Kitui County','18','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1990,115,'Kwale County','19','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1991,115,'Laikipia County','20','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1992,115,'Lamu County','21','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1993,115,'Machakos County','22','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1994,115,'Makueni County','23','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1995,115,'Mandera County','24','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1996,115,'Marsabit County','25','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1997,115,'Meru County','26','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1998,115,'Migori County','27','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(1999,115,'Mombasa County','28','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2000,115,'Muranga County','29','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2001,115,'Nairobi','110','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2002,115,'Nakuru County','31','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2003,115,'Nandi District','32','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2004,115,'Narok County','33','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2005,115,'North Eastern Province','500','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2006,115,'Nyamira County','34','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2007,115,'Nyandarua County','35','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2008,115,'Nyanza Province','600','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2009,115,'Nyeri County','36','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2010,115,'Rift Valley Province','700','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2011,115,'Samburu County','37','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2012,115,'Siaya County','38','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2013,115,'Taita–Taveta County','39','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2014,115,'Tana River County','40','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2015,115,'Tharaka Nithi County','41','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2016,115,'Trans-Nzoia District','42','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2017,115,'Turkana County','43','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2018,115,'Uasin Gishu','44','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2019,115,'Vihiga County','45','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2020,115,'Wajir County','46','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2021,115,'West Pokot County','47','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2022,115,'Western Province','800','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2023,116,'Gilbert Islands','G','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2024,116,'Line Islands','L','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2025,116,'Phoenix Islands','P','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2026,117,'Đakovica District (Gjakove)','XDG','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2027,117,'Gjilan District','XGJ','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2028,117,'Kosovska Mitrovica District','XKM','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2029,117,'Peć District','XPE','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2030,117,'Pristina (Priştine)','XPI','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2031,117,'Prizren District','XPR','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2032,117,'Uroševac District (Ferizaj)','XUF','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2033,118,'Al Ahmadi Governorate','AH','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2034,118,'Al Farwaniyah Governorate','FA','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2035,118,'Al Jahra Governorate','JA','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2036,118,'Capital Governorate','KU','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2037,118,'Hawalli Governorate','HA','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2038,118,'Mubarak Al-Kabeer Governorate','MU','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2039,119,'Batken Region','B','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2040,119,'Bishkek','GB','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2041,119,'Chuy Region','C','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2042,119,'Issyk-Kul Region','Y','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2043,119,'Jalal-Abad Region','J','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2044,119,'Naryn Region','N','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2045,119,'Osh','GO','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2046,119,'Osh Region','O','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2047,119,'Talas Region','T','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2048,120,'Attapeu Province','AT','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2049,120,'Bokeo Province','BK','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2050,120,'Bolikhamsai Province','BL','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2051,120,'Champasak Province','CH','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2052,120,'Houaphanh Province','HO','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2053,120,'Khammouane Province','KH','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2054,120,'Luang Namtha Province','LM','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2055,120,'Luang Prabang Province','LP','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2056,120,'Oudomxay Province','OU','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2057,120,'Phongsaly Province','PH','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2058,120,'Sainyabuli Province','XA','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2059,120,'Salavan Province','SL','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2060,120,'Savannakhet Province','SV','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2061,120,'Sekong Province','XE','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2062,120,'Vientiane Prefecture','VT','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2063,120,'Vientiane Province','VI','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2064,120,'Xaisomboun','XN','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2065,120,'Xaisomboun Province','XS','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2066,120,'Xiangkhouang Province','XI','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2067,121,'Aglona Municipality','001','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2068,121,'Aizkraukle Municipality','002','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2069,121,'Aizpute Municipality','003','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2070,121,'Aknīste Municipality','004','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2071,121,'Aloja Municipality','005','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2072,121,'Alsunga Municipality','006','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2073,121,'Alūksne Municipality','007','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2074,121,'Amata Municipality','008','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2075,121,'Ape Municipality','009','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2076,121,'Auce Municipality','010','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2077,121,'Babīte Municipality','012','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2078,121,'Baldone Municipality','013','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2079,121,'Baltinava Municipality','014','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2080,121,'Balvi Municipality','015','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2081,121,'Bauska Municipality','016','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2082,121,'Beverīna Municipality','017','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2083,121,'Brocēni Municipality','018','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2084,121,'Burtnieki Municipality','019','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2085,121,'Carnikava Municipality','020','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2086,121,'Cēsis Municipality','022','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2087,121,'Cesvaine Municipality','021','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2088,121,'Cibla Municipality','023','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2089,121,'Dagda Municipality','024','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2090,121,'Daugavpils','DGV','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2091,121,'Daugavpils Municipality','025','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2092,121,'Dobele Municipality','026','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2093,121,'Dundaga Municipality','027','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2094,121,'Durbe Municipality','028','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2095,121,'Engure Municipality','029','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2096,121,'Ērgļi Municipality','030','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2097,121,'Garkalne Municipality','031','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2098,121,'Grobiņa Municipality','032','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2099,121,'Gulbene Municipality','033','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2100,121,'Iecava Municipality','034','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2101,121,'Ikšķile Municipality','035','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2102,121,'Ilūkste Municipality','036','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2103,121,'Inčukalns Municipality','037','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2104,121,'Jaunjelgava Municipality','038','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2105,121,'Jaunpiebalga Municipality','039','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2106,121,'Jaunpils Municipality','040','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2107,121,'Jēkabpils','JKB','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2108,121,'Jēkabpils Municipality','042','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2109,121,'Jelgava','JEL','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2110,121,'Jelgava Municipality','041','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2111,121,'Jūrmala','JUR','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2112,121,'Kandava Municipality','043','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2113,121,'Kārsava Municipality','044','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2114,121,'Ķegums Municipality','051','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2115,121,'Ķekava Municipality','052','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2116,121,'Kocēni Municipality','045','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2117,121,'Koknese Municipality','046','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2118,121,'Krāslava Municipality','047','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2119,121,'Krimulda Municipality','048','2026-05-04 03:51:44','2026-05-04 03:51:44'),
(2120,121,'Krustpils Municipality','049','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2121,121,'Kuldīga Municipality','050','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2122,121,'Lielvārde Municipality','053','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2123,121,'Liepāja','LPX','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2124,121,'Līgatne Municipality','055','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2125,121,'Limbaži Municipality','054','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2126,121,'Līvāni Municipality','056','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2127,121,'Lubāna Municipality','057','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2128,121,'Ludza Municipality','058','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2129,121,'Madona Municipality','059','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2130,121,'Mālpils Municipality','061','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2131,121,'Mārupe Municipality','062','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2132,121,'Mazsalaca Municipality','060','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2133,121,'Mērsrags Municipality','063','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2134,121,'Naukšēni Municipality','064','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2135,121,'Nereta Municipality','065','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2136,121,'Nīca Municipality','066','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2137,121,'Ogre Municipality','067','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2138,121,'Olaine Municipality','068','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2139,121,'Ozolnieki Municipality','069','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2140,121,'Pārgauja Municipality','070','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2141,121,'Pāvilosta Municipality','071','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2142,121,'Pļaviņas Municipality','072','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2143,121,'Preiļi Municipality','073','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2144,121,'Priekule Municipality','074','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2145,121,'Priekuļi Municipality','075','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2146,121,'Rauna Municipality','076','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2147,121,'Rēzekne','REZ','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2148,121,'Rēzekne Municipality','077','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2149,121,'Riebiņi Municipality','078','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2150,121,'Riga','RIX','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2151,121,'Roja Municipality','079','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2152,121,'Ropaži Municipality','080','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2153,121,'Rucava Municipality','081','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2154,121,'Rugāji Municipality','082','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2155,121,'Rūjiena Municipality','084','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2156,121,'Rundāle Municipality','083','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2157,121,'Sala Municipality','085','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2158,121,'Salacgrīva Municipality','086','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2159,121,'Salaspils Municipality','087','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2160,121,'Saldus Municipality','088','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2161,121,'Saulkrasti Municipality','089','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2162,121,'Sēja Municipality','090','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2163,121,'Sigulda Municipality','091','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2164,121,'Skrīveri Municipality','092','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2165,121,'Skrunda Municipality','093','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2166,121,'Smiltene Municipality','094','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2167,121,'Stopiņi Municipality','095','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2168,121,'Strenči Municipality','096','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2169,121,'Talsi Municipality','097','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2170,121,'Tērvete Municipality','098','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2171,121,'Tukums Municipality','099','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2172,121,'Vaiņode Municipality','100','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2173,121,'Valka Municipality','101','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2174,121,'Valmiera','VMR','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2175,121,'Varakļāni Municipality','102','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2176,121,'Vārkava Municipality','103','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2177,121,'Vecpiebalga Municipality','104','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2178,121,'Vecumnieki Municipality','105','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2179,121,'Ventspils','VEN','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2180,121,'Ventspils Municipality','106','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2181,121,'Viesīte Municipality','107','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2182,121,'Viļaka Municipality','108','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2183,121,'Viļāni Municipality','109','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2184,121,'Zilupe Municipality','110','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2185,122,'Akkar Governorate','AK','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2186,122,'Baalbek-Hermel Governorate','BH','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2187,122,'Beirut Governorate','BA','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2188,122,'Beqaa Governorate','BI','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2189,122,'Mount Lebanon Governorate','JL','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2190,122,'Nabatieh Governorate','NA','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2191,122,'North Governorate','AS','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2192,122,'South Governorate','JA','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2193,123,'Berea District','D','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2194,123,'Butha-Buthe District','B','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2195,123,'Leribe District','C','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2196,123,'Mafeteng District','E','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2197,123,'Maseru District','A','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2198,123,'Mohale\'s Hoek District','F','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2199,123,'Mokhotlong District','J','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2200,123,'Qacha\'s Nek District','H','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2201,123,'Quthing District','G','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2202,123,'Thaba-Tseka District','K','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2203,124,'Bomi County','BM','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2204,124,'Bong County','BG','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2205,124,'Gbarpolu County','GP','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2206,124,'Grand Bassa County','GB','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2207,124,'Grand Cape Mount County','CM','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2208,124,'Grand Gedeh County','GG','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2209,124,'Grand Kru County','GK','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2210,124,'Lofa County','LO','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2211,124,'Margibi County','MG','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2212,124,'Maryland County','MY','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2213,124,'Montserrado County','MO','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2214,124,'Nimba','NI','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2215,124,'River Cess County','RI','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2216,124,'River Gee County','RG','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2217,124,'Sinoe County','SI','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2218,125,'Al Wahat District','WA','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2219,125,'Benghazi','BA','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2220,125,'Derna District','DR','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2221,125,'Ghat District','GT','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2222,125,'Jabal al Akhdar','JA','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2223,125,'Jabal al Gharbi District','JG','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2224,125,'Jafara','JI','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2225,125,'Jufra','JU','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2226,125,'Kufra District','KF','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2227,125,'Marj District','MJ','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2228,125,'Misrata District','MI','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2229,125,'Murqub','MB','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2230,125,'Murzuq District','MQ','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2231,125,'Nalut District','NL','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2232,125,'Nuqat al Khams','NQ','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2233,125,'Sabha District','SB','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2234,125,'Sirte District','SR','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2235,125,'Tripoli District','TB','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2236,125,'Wadi al Hayaa District','WD','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2237,125,'Wadi al Shatii District','WS','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2238,125,'Zawiya District','ZA','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2239,126,'Balzers','01','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2240,126,'Eschen','02','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2241,126,'Gamprin','03','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2242,126,'Mauren','04','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2243,126,'Planken','05','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2244,126,'Ruggell','06','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2245,126,'Schaan','07','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2246,126,'Schellenberg','08','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2247,126,'Triesen','09','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2248,126,'Triesenberg','10','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2249,126,'Vaduz','11','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2250,127,'Akmenė District Municipality','01','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2251,127,'Alytus City Municipality','02','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2252,127,'Alytus County','AL','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2253,127,'Alytus District Municipality','03','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2254,127,'Birštonas Municipality','05','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2255,127,'Biržai District Municipality','06','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2256,127,'Druskininkai municipality','07','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2257,127,'Elektrėnai municipality','08','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2258,127,'Ignalina District Municipality','09','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2259,127,'Jonava District Municipality','10','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2260,127,'Joniškis District Municipality','11','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2261,127,'Jurbarkas District Municipality','12','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2262,127,'Kaišiadorys District Municipality','13','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2263,127,'Kalvarija municipality','14','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2264,127,'Kaunas City Municipality','15','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2265,127,'Kaunas County','KU','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2266,127,'Kaunas District Municipality','16','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2267,127,'Kazlų Rūda municipality','17','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2268,127,'Kėdainiai District Municipality','18','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2269,127,'Kelmė District Municipality','19','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2270,127,'Klaipeda City Municipality','20','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2271,127,'Klaipėda County','KL','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2272,127,'Klaipėda District Municipality','21','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2273,127,'Kretinga District Municipality','22','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2274,127,'Kupiškis District Municipality','23','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2275,127,'Lazdijai District Municipality','24','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2276,127,'Marijampolė County','MR','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2277,127,'Marijampolė Municipality','25','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2278,127,'Mažeikiai District Municipality','26','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2279,127,'Molėtai District Municipality','27','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2280,127,'Neringa Municipality','28','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2281,127,'Pagėgiai municipality','29','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2282,127,'Pakruojis District Municipality','30','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2283,127,'Palanga City Municipality','31','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2284,127,'Panevėžys City Municipality','32','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2285,127,'Panevėžys County','PN','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2286,127,'Panevėžys District Municipality','33','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2287,127,'Pasvalys District Municipality','34','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2288,127,'Plungė District Municipality','35','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2289,127,'Prienai District Municipality','36','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2290,127,'Radviliškis District Municipality','37','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2291,127,'Raseiniai District Municipality','38','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2292,127,'Rietavas municipality','39','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2293,127,'Rokiškis District Municipality','40','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2294,127,'Šakiai District Municipality','41','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2295,127,'Šalčininkai District Municipality','42','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2296,127,'Šiauliai City Municipality','43','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2297,127,'Šiauliai County','SA','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2298,127,'Šiauliai District Municipality','44','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2299,127,'Šilalė District Municipality','45','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2300,127,'Šilutė District Municipality','46','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2301,127,'Širvintos District Municipality','47','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2302,127,'Skuodas District Municipality','48','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2303,127,'Švenčionys District Municipality','49','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2304,127,'Tauragė County','TA','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2305,127,'Tauragė District Municipality','50','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2306,127,'Telšiai County','TE','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2307,127,'Telšiai District Municipality','51','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2308,127,'Trakai District Municipality','52','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2309,127,'Ukmergė District Municipality','53','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2310,127,'Utena County','UT','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2311,127,'Utena District Municipality','54','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2312,127,'Varėna District Municipality','55','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2313,127,'Vilkaviškis District Municipality','56','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2314,127,'Vilnius City Municipality','57','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2315,127,'Vilnius County','VL','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2316,127,'Vilnius District Municipality','58','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2317,127,'Visaginas Municipality','59','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2318,127,'Zarasai District Municipality','60','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2319,128,'Canton of Capellen','CA','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2320,128,'Canton of Clervaux','CL','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2321,128,'Canton of Diekirch','DI','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2322,128,'Canton of Echternach','EC','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2323,128,'Canton of Esch-sur-Alzette','ES','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2324,128,'Canton of Grevenmacher','GR','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2325,128,'Canton of Luxembourg','LU','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2326,128,'Canton of Mersch','ME','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2327,128,'Canton of Redange','RD','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2328,128,'Canton of Remich','RM','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2329,128,'Canton of Vianden','VD','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2330,128,'Canton of Wiltz','WI','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2331,128,'Diekirch District','D','2026-05-04 03:51:45','2026-05-04 03:51:45'),
(2332,128,'Grevenmacher District','G','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2333,128,'Luxembourg District','L','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2334,130,'Aerodrom Municipality','01','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2335,130,'Aračinovo Municipality','02','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2336,130,'Berovo Municipality','03','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2337,130,'Bitola Municipality','04','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2338,130,'Bogdanci Municipality','05','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2339,130,'Bogovinje Municipality','06','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2340,130,'Bosilovo Municipality','07','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2341,130,'Brvenica Municipality','08','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2342,130,'Butel Municipality','09','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2343,130,'Čair Municipality','79','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2344,130,'Čaška Municipality','80','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2345,130,'Centar Municipality','77','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2346,130,'Centar Župa Municipality','78','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2347,130,'Češinovo-Obleševo Municipality','81','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2348,130,'Čučer-Sandevo Municipality','82','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2349,130,'Debarca Municipality','22','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2350,130,'Delčevo Municipality','23','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2351,130,'Demir Hisar Municipality','25','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2352,130,'Demir Kapija Municipality','24','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2353,130,'Dojran Municipality','26','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2354,130,'Dolneni Municipality','27','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2355,130,'Drugovo Municipality','28','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2356,130,'Gazi Baba Municipality','17','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2357,130,'Gevgelija Municipality','18','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2358,130,'Gjorče Petrov Municipality','29','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2359,130,'Gostivar Municipality','19','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2360,130,'Gradsko Municipality','20','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2361,130,'Greater Skopje','85','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2362,130,'Ilinden Municipality','34','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2363,130,'Jegunovce Municipality','35','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2364,130,'Karbinci','37','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2365,130,'Karpoš Municipality','38','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2366,130,'Kavadarci Municipality','36','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2367,130,'Kičevo Municipality','40','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2368,130,'Kisela Voda Municipality','39','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2369,130,'Kočani Municipality','42','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2370,130,'Konče Municipality','41','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2371,130,'Kratovo Municipality','43','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2372,130,'Kriva Palanka Municipality','44','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2373,130,'Krivogaštani Municipality','45','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2374,130,'Kruševo Municipality','46','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2375,130,'Kumanovo Municipality','47','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2376,130,'Lipkovo Municipality','48','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2377,130,'Lozovo Municipality','49','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2378,130,'Makedonska Kamenica Municipality','51','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2379,130,'Makedonski Brod Municipality','52','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2380,130,'Mavrovo and Rostuša Municipality','50','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2381,130,'Mogila Municipality','53','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2382,130,'Negotino Municipality','54','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2383,130,'Novaci Municipality','55','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2384,130,'Novo Selo Municipality','56','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2385,130,'Ohrid Municipality','58','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2386,130,'Oslomej Municipality','57','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2387,130,'Pehčevo Municipality','60','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2388,130,'Petrovec Municipality','59','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2389,130,'Plasnica Municipality','61','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2390,130,'Prilep Municipality','62','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2391,130,'Probištip Municipality','63','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2392,130,'Radoviš Municipality','64','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2393,130,'Rankovce Municipality','65','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2394,130,'Resen Municipality','66','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2395,130,'Rosoman Municipality','67','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2396,130,'Saraj Municipality','68','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2397,130,'Sopište Municipality','70','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2398,130,'Staro Nagoričane Municipality','71','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2399,130,'Štip Municipality','83','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2400,130,'Struga Municipality','72','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2401,130,'Strumica Municipality','73','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2402,130,'Studeničani Municipality','74','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2403,130,'Šuto Orizari Municipality','84','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2404,130,'Sveti Nikole Municipality','69','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2405,130,'Tearce Municipality','75','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2406,130,'Tetovo Municipality','76','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2407,130,'Valandovo Municipality','10','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2408,130,'Vasilevo Municipality','11','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2409,130,'Veles Municipality','13','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2410,130,'Vevčani Municipality','12','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2411,130,'Vinica Municipality','14','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2412,130,'Vraneštica Municipality','15','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2413,130,'Vrapčište Municipality','16','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2414,130,'Zajas Municipality','31','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2415,130,'Zelenikovo Municipality','32','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2416,130,'Želino Municipality','30','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2417,130,'Zrnovci Municipality','33','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2418,131,'Antananarivo Province','T','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2419,131,'Antsiranana Province','D','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2420,131,'Fianarantsoa Province','F','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2421,131,'Mahajanga Province','M','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2422,131,'Toamasina Province','A','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2423,131,'Toliara Province','U','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2424,132,'Balaka District','BA','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2425,132,'Blantyre District','BL','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2426,132,'Central Region','C','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2427,132,'Chikwawa District','CK','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2428,132,'Chiradzulu District','CR','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2429,132,'Chitipa district','CT','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2430,132,'Dedza District','DE','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2431,132,'Dowa District','DO','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2432,132,'Karonga District','KR','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2433,132,'Kasungu District','KS','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2434,132,'Likoma District','LK','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2435,132,'Lilongwe District','LI','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2436,132,'Machinga District','MH','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2437,132,'Mangochi District','MG','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2438,132,'Mchinji District','MC','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2439,132,'Mulanje District','MU','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2440,132,'Mwanza District','MW','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2441,132,'Mzimba District','MZ','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2442,132,'Nkhata Bay District','NB','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2443,132,'Nkhotakota District','NK','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2444,132,'Northern Region','N','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2445,132,'Nsanje District','NS','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2446,132,'Ntcheu District','NU','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2447,132,'Ntchisi District','NI','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2448,132,'Phalombe District','PH','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2449,132,'Rumphi District','RU','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2450,132,'Salima District','SA','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2451,132,'Southern Region','S','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2452,132,'Thyolo District','TH','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2453,132,'Zomba District','ZO','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2454,133,'Johor','01','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2455,133,'Kedah','02','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2456,133,'Kelantan','03','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2457,133,'Kuala Lumpur','14','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2458,133,'Labuan','15','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2459,133,'Malacca','04','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2460,133,'Negeri Sembilan','05','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2461,133,'Pahang','06','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2462,133,'Penang','07','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2463,133,'Perak','08','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2464,133,'Perlis','09','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2465,133,'Putrajaya','16','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2466,133,'Sabah','12','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2467,133,'Sarawak','13','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2468,133,'Selangor','10','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2469,133,'Terengganu','11','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2470,134,'Addu Atoll','01','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2471,134,'Alif Alif Atoll','02','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2472,134,'Alif Dhaal Atoll','00','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2473,134,'Central Province','CE','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2474,134,'Dhaalu Atoll','17','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2475,134,'Faafu Atoll','14','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2476,134,'Gaafu Alif Atoll','27','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2477,134,'Gaafu Dhaalu Atoll','28','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2478,134,'Gnaviyani Atoll','29','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2479,134,'Haa Alif Atoll','07','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2480,134,'Haa Dhaalu Atoll','23','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2481,134,'Kaafu Atoll','26','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2482,134,'Laamu Atoll','05','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2483,134,'Lhaviyani Atoll','03','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2484,134,'Malé','MLE','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2485,134,'Meemu Atoll','12','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2486,134,'Noonu Atoll','25','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2487,134,'North Central Province','NC','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2488,134,'North Province','NO','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2489,134,'Raa Atoll','13','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2490,134,'Shaviyani Atoll','24','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2491,134,'South Central Province','SC','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2492,134,'South Province','SU','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2493,134,'Thaa Atoll','08','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2494,134,'Upper South Province','US','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2495,134,'Vaavu Atoll','04','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2496,135,'Bamako','BKO','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2497,135,'Gao Region','7','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2498,135,'Kayes Region','1','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2499,135,'Kidal Region','8','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2500,135,'Koulikoro Region','2','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2501,135,'Ménaka Region','9','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2502,135,'Mopti Region','5','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2503,135,'Ségou Region','4','2026-05-04 03:51:46','2026-05-04 03:51:46'),
(2504,135,'Sikasso Region','3','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2505,135,'Taoudénit Region','10','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2506,135,'Tombouctou Region','6','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2507,136,'Attard','01','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2508,136,'Balzan','02','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2509,136,'Birgu','03','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2510,136,'Birkirkara','04','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2511,136,'Birżebbuġa','05','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2512,136,'Cospicua','06','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2513,136,'Dingli','07','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2514,136,'Fgura','08','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2515,136,'Floriana','09','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2516,136,'Fontana','10','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2517,136,'Għajnsielem','13','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2518,136,'Għarb','14','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2519,136,'Għargħur','15','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2520,136,'Għasri','16','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2521,136,'Għaxaq','17','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2522,136,'Gudja','11','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2523,136,'Gżira','12','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2524,136,'Ħamrun','18','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2525,136,'Iklin','19','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2526,136,'Kalkara','21','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2527,136,'Kerċem','22','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2528,136,'Kirkop','23','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2529,136,'Lija','24','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2530,136,'Luqa','25','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2531,136,'Marsa','26','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2532,136,'Marsaskala','27','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2533,136,'Marsaxlokk','28','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2534,136,'Mdina','29','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2535,136,'Mellieħa','30','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2536,136,'Mġarr','31','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2537,136,'Mosta','32','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2538,136,'Mqabba','33','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2539,136,'Msida','34','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2540,136,'Mtarfa','35','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2541,136,'Munxar','36','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2542,136,'Nadur','37','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2543,136,'Naxxar','38','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2544,136,'Paola','39','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2545,136,'Pembroke','40','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2546,136,'Pietà','41','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2547,136,'Qala','42','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2548,136,'Qormi','43','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2549,136,'Qrendi','44','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2550,136,'Rabat','46','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2551,136,'Saint Lawrence','50','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2552,136,'San Ġwann','49','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2553,136,'Sannat','52','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2554,136,'Santa Luċija','53','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2555,136,'Santa Venera','54','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2556,136,'Senglea','20','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2557,136,'Siġġiewi','55','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2558,136,'Sliema','56','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2559,136,'St. Julian\'s','48','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2560,136,'St. Paul\'s Bay','51','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2561,136,'Swieqi','57','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2562,136,'Ta\' Xbiex','58','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2563,136,'Tarxien','59','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2564,136,'Valletta','60','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2565,136,'Victoria','45','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2566,136,'Xagħra','61','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2567,136,'Xewkija','62','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2568,136,'Xgħajra','63','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2569,136,'Żabbar','64','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2570,136,'Żebbuġ Gozo','65','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2571,136,'Żebbuġ Malta','66','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2572,136,'Żejtun','67','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2573,136,'Żurrieq','68','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2574,138,'Ralik Chain','L','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2575,138,'Ratak Chain','T','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2576,140,'Adrar Region','07','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2577,140,'Assaba Region','03','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2578,140,'Brakna Region','05','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2579,140,'Dakhlet Nouadhibou','08','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2580,140,'Gorgol Region','04','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2581,140,'Guidimaka Region','10','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2582,140,'Hodh Ech Chargui Region','01','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2583,140,'Hodh El Gharbi Region','02','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2584,140,'Inchiri Region','12','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2585,140,'Nouakchott-Nord Region','14','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2586,140,'Nouakchott-Ouest Region','13','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2587,140,'Nouakchott-Sud Region','15','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2588,140,'Tagant Region','09','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2589,140,'Tiris Zemmour Region','11','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2590,140,'Trarza Region','06','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2591,141,'Agaléga','AG','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2592,141,'Beau Bassin-Rose Hill','BR','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2593,141,'Cargados Carajos','CC','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2594,141,'Curepipe','CU','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2595,141,'Flacq District','FL','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2596,141,'Grand Port District','GP','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2597,141,'Moka District','MO','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2598,141,'Pamplemousses District','PA','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2599,141,'Plaines Wilhems District','PW','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2600,141,'Port Louis','PU','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2601,141,'Port Louis District','PL','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2602,141,'Quatre Bornes','QB','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2603,141,'Rivière du Rempart District','RR','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2604,141,'Rivière Noire District','BL','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2605,141,'Rodrigues','RO','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2606,141,'Savanne District','SA','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2607,141,'Vacoas-Phoenix','VP','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2608,143,'Aguascalientes','AGU','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2609,143,'Baja California','BCN','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2610,143,'Baja California Sur','BCS','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2611,143,'Campeche','CAM','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2612,143,'Chiapas','CHP','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2613,143,'Chihuahua','CHH','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2614,143,'Coahuila','COA','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2615,143,'Colima','COL','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2616,143,'Durango','DUR','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2617,143,'Guanajuato','GUA','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2618,143,'Guerrero','GRO','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2619,143,'Hidalgo','HID','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2620,143,'Jalisco','JAL','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2621,143,'México','MEX','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2622,143,'Mexico City','CMX','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2623,143,'Michoacán','MIC','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2624,143,'Morelos','MOR','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2625,143,'Nayarit','NAY','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2626,143,'Nuevo León','NLE','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2627,143,'Oaxaca','OAX','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2628,143,'Puebla','PUE','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2629,143,'Querétaro','QUE','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2630,143,'Quintana Roo','ROO','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2631,143,'San Luis Potosí','SLP','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2632,143,'Sinaloa','SIN','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2633,143,'Sonora','SON','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2634,143,'Tabasco','TAB','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2635,143,'Tamaulipas','TAM','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2636,143,'Tlaxcala','TLA','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2637,143,'Veracruz','VER','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2638,143,'Yucatán','YUC','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2639,143,'Zacatecas','ZAC','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2640,144,'Chuuk State','TRK','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2641,144,'Kosrae State','KSA','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2642,144,'Pohnpei State','PNI','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2643,144,'Yap State','YAP','2026-05-04 03:51:47','2026-05-04 03:51:47'),
(2644,145,'Anenii Noi District','AN','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2645,145,'Bălți Municipality','BA','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2646,145,'Basarabeasca District','BS','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2647,145,'Bender Municipality','BD','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2648,145,'Briceni District','BR','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2649,145,'Cahul District','CA','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2650,145,'Călărași District','CL','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2651,145,'Cantemir District','CT','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2652,145,'Căușeni District','CS','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2653,145,'Chișinău Municipality','CU','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2654,145,'Cimișlia District','CM','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2655,145,'Criuleni District','CR','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2656,145,'Dondușeni District','DO','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2657,145,'Drochia District','DR','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2658,145,'Dubăsari District','DU','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2659,145,'Edineț District','ED','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2660,145,'Fălești District','FA','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2661,145,'Florești District','FL','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2662,145,'Gagauzia','GA','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2663,145,'Glodeni District','GL','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2664,145,'Hîncești District','HI','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2665,145,'Ialoveni District','IA','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2666,145,'Nisporeni District','NI','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2667,145,'Ocnița District','OC','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2668,145,'Orhei District','OR','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2669,145,'Rezina District','RE','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2670,145,'Rîșcani District','RI','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2671,145,'Sîngerei District','SI','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2672,145,'Șoldănești District','SD','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2673,145,'Soroca District','SO','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2674,145,'Ștefan Vodă District','SV','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2675,145,'Strășeni District','ST','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2676,145,'Taraclia District','TA','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2677,145,'Telenești District','TE','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2678,145,'Transnistria autonomous territorial unit','SN','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2679,145,'Ungheni District','UN','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2680,146,'La Colle','CL','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2681,146,'La Condamine','CO','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2682,146,'Moneghetti','MG','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2683,147,'Arkhangai Province','073','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2684,147,'Bayan-Ölgii Province','071','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2685,147,'Bayankhongor Province','069','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2686,147,'Bulgan Province','067','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2687,147,'Darkhan-Uul Province','037','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2688,147,'Dornod Province','061','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2689,147,'Dornogovi Province','063','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2690,147,'Dundgovi Province','059','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2691,147,'Govi-Altai Province','065','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2692,147,'Govisümber Province','064','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2693,147,'Khentii Province','039','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2694,147,'Khovd Province','043','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2695,147,'Khövsgöl Province','041','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2696,147,'Ömnögovi Province','053','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2697,147,'Orkhon Province','035','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2698,147,'Övörkhangai Province','055','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2699,147,'Selenge Province','049','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2700,147,'Sükhbaatar Province','051','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2701,147,'Töv Province','047','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2702,147,'Uvs Province','046','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2703,147,'Zavkhan Province','057','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2704,148,'Andrijevica Municipality','01','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2705,148,'Bar Municipality','02','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2706,148,'Berane Municipality','03','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2707,148,'Bijelo Polje Municipality','04','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2708,148,'Budva Municipality','05','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2709,148,'Danilovgrad Municipality','07','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2710,148,'Gusinje Municipality','22','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2711,148,'Kolašin Municipality','09','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2712,148,'Kotor Municipality','10','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2713,148,'Mojkovac Municipality','11','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2714,148,'Nikšić Municipality','12','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2715,148,'Old Royal Capital Cetinje','06','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2716,148,'Petnjica Municipality','23','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2717,148,'Plav Municipality','13','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2718,148,'Pljevlja Municipality','14','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2719,148,'Plužine Municipality','15','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2720,148,'Podgorica Municipality','16','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2721,148,'Rožaje Municipality','17','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2722,148,'Šavnik Municipality','18','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2723,148,'Tivat Municipality','19','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2724,148,'Ulcinj Municipality','20','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2725,148,'Žabljak Municipality','21','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2726,150,'Agadir-Ida-Ou-Tanane','AGD','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2727,150,'Al Haouz','HAO','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2728,150,'Al Hoceïma','HOC','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2729,150,'Aousserd (EH)','AOU','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2730,150,'Assa-Zag (EH-partial)','ASZ','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2731,150,'Azilal','AZI','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2732,150,'Béni Mellal','BEM','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2733,150,'Béni Mellal-Khénifra','05','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2734,150,'Benslimane','BES','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2735,150,'Berkane','BER','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2736,150,'Berrechid','BRR','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2737,150,'Boujdour (EH)','BOD','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2738,150,'Boulemane','BOM','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2739,150,'Casablanca','CAS','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2740,150,'Casablanca-Settat','06','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2741,150,'Chefchaouen','CHE','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2742,150,'Chichaoua','CHI','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2743,150,'Chtouka-Ait Baha','CHT','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2744,150,'Dakhla-Oued Ed-Dahab (EH)','12','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2745,150,'Drâa-Tafilalet','08','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2746,150,'Driouch','DRI','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2747,150,'El Hajeb','HAJ','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2748,150,'El Jadida','JDI','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2749,150,'El Kelâa des Sraghna','KES','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2750,150,'Errachidia','ERR','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2751,150,'Es-Semara (EH-partial)','ESM','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2752,150,'Essaouira','ESI','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2753,150,'Fahs-Anjra','FAH','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2754,150,'Fès','FES','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2755,150,'Fès-Meknès','03','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2756,150,'Figuig','FIG','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2757,150,'Fquih Ben Salah','FQH','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2758,150,'Guelmim','GUE','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2759,150,'Guelmim-Oued Noun (EH-partial)','10','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2760,150,'Guercif','GUF','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2761,150,'Ifrane','IFR','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2762,150,'Inezgane-Ait Melloul','INE','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2763,150,'Jerada','JRA','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2764,150,'Kénitra','KEN','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2765,150,'Khémisset','KHE','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2766,150,'Khénifra','KHN','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2767,150,'Khouribga','KHO','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2768,150,'L\'Oriental','02','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2769,150,'Laâyoune (EH)','LAA','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2770,150,'Laâyoune-Sakia El Hamra (EH-partial)','11','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2771,150,'Larache','LAR','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2772,150,'M’diq-Fnideq','MDF','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2773,150,'Marrakech','MAR','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2774,150,'Marrakesh-Safi','07','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2775,150,'Médiouna','MED','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2776,150,'Meknès','MEK','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2777,150,'Midelt','MID','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2778,150,'Mohammadia','MOH','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2779,150,'Moulay Yacoub','MOU','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2780,150,'Nador','NAD','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2781,150,'Nouaceur','NOU','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2782,150,'Ouarzazate','OUA','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2783,150,'Oued Ed-Dahab (EH)','OUD','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2784,150,'Ouezzane','OUZ','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2785,150,'Oujda-Angad','OUJ','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2786,150,'Rabat','RAB','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2787,150,'Rabat-Salé-Kénitra','04','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2788,150,'Rehamna','REH','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2789,150,'Safi','SAF','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2790,150,'Salé','SAL','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2791,150,'Sefrou','SEF','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2792,150,'Settat','SET','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2793,150,'Sidi Bennour','SIB','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2794,150,'Sidi Ifni','SIF','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2795,150,'Sidi Kacem','SIK','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2796,150,'Sidi Slimane','SIL','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2797,150,'Skhirate-Témara','SKH','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2798,150,'Souss-Massa','09','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2799,150,'Tan-Tan (EH-partial)','TNT','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2800,150,'Tanger-Assilah','TNG','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2801,150,'Tanger-Tétouan-Al Hoceïma','01','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2802,150,'Taounate','TAO','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2803,150,'Taourirt','TAI','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2804,150,'Tarfaya (EH-partial)','TAF','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2805,150,'Taroudannt','TAR','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2806,150,'Tata','TAT','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2807,150,'Taza','TAZ','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2808,150,'Tétouan','TET','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2809,150,'Tinghir','TIN','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2810,150,'Tiznit','TIZ','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2811,150,'Youssoufia','YUS','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2812,150,'Zagora','ZAG','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2813,151,'Cabo Delgado Province','P','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2814,151,'Gaza Province','G','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2815,151,'Inhambane Province','I','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2816,151,'Manica Province','B','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2817,151,'Maputo','MPM','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2818,151,'Maputo Province','L','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2819,151,'Nampula Province','N','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2820,151,'Niassa Province','A','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2821,151,'Sofala Province','S','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2822,151,'Tete Province','T','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2823,151,'Zambezia Province','Q','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2824,152,'Ayeyarwady Region','07','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2825,152,'Bago','02','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2826,152,'Chin State','14','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2827,152,'Kachin State','11','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2828,152,'Kayah State','12','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2829,152,'Kayin State','13','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2830,152,'Magway Region','03','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2831,152,'Mandalay Region','04','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2832,152,'Mon State','15','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2833,152,'Naypyidaw Union Territory','18','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2834,152,'Rakhine State','16','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2835,152,'Sagaing Region','01','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2836,152,'Shan State','17','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2837,152,'Tanintharyi Region','05','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2838,152,'Yangon Region','06','2026-05-04 03:51:48','2026-05-04 03:51:48'),
(2839,153,'Erongo Region','ER','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2840,153,'Hardap Region','HA','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2841,153,'Karas Region','KA','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2842,153,'Kavango East Region','KE','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2843,153,'Kavango West Region','KW','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2844,153,'Khomas Region','KH','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2845,153,'Kunene Region','KU','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2846,153,'Ohangwena Region','OW','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2847,153,'Omaheke Region','OH','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2848,153,'Omusati Region','OS','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2849,153,'Oshana Region','ON','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2850,153,'Oshikoto Region','OT','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2851,153,'Otjozondjupa Region','OD','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2852,153,'Zambezi Region','CA','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2853,154,'Aiwo District','01','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2854,154,'Anabar District','02','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2855,154,'Anetan District','03','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2856,154,'Anibare District','04','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2857,154,'Baiti District','05','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2858,154,'Boe District','06','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2859,154,'Buada District','07','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2860,154,'Denigomodu District','08','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2861,154,'Ewa District','09','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2862,154,'Ijuw District','10','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2863,154,'Meneng District','11','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2864,154,'Nibok District','12','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2865,154,'Uaboe District','13','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2866,154,'Yaren District','14','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2867,155,'Bagmati Zone','BA','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2868,155,'Bheri Zone','BH','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2869,155,'Central Region','1','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2870,155,'Dhaulagiri Zone','DH','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2871,155,'Eastern Development Region','4','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2872,155,'Far-Western Development Region','5','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2873,155,'Gandaki Zone','GA','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2874,155,'Janakpur Zone','JA','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2875,155,'Karnali Zone','KA','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2876,155,'Kosi Zone','KO','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2877,155,'Lumbini Zone','LU','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2878,155,'Mahakali Zone','MA','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2879,155,'Mechi Zone','ME','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2880,155,'Mid-Western Region','2','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2881,155,'Narayani Zone','NA','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2882,155,'Rapti Zone','RA','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2883,155,'Sagarmatha Zone','SA','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2884,155,'Seti Zone','SE','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2885,155,'Western Region','3','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2886,156,'Bonaire','BQ1','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2887,156,'Drenthe','DR','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2888,156,'Flevoland','FL','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2889,156,'Friesland','FR','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2890,156,'Gelderland','GE','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2891,156,'Groningen','GR','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2892,156,'Limburg','LI','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2893,156,'North Brabant','NB','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2894,156,'North Holland','NH','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2895,156,'Overijssel','OV','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2896,156,'Saba','BQ2','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2897,156,'Sint Eustatius','BQ3','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2898,156,'South Holland','ZH','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2899,156,'Utrecht','UT','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2900,156,'Zeeland','ZE','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2901,158,'Auckland Region','AUK','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2902,158,'Bay of Plenty Region','BOP','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2903,158,'Canterbury Region','CAN','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2904,158,'Chatham Islands','CIT','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2905,158,'Gisborne District','GIS','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2906,158,'Hawke\'s Bay Region','HKB','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2907,158,'Manawatu-Wanganui Region','MWT','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2908,158,'Marlborough Region','MBH','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2909,158,'Nelson Region','NSN','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2910,158,'Northland Region','NTL','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2911,158,'Otago Region','OTA','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2912,158,'Southland Region','STL','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2913,158,'Taranaki Region','TKI','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2914,158,'Tasman District','TAS','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2915,158,'Waikato Region','WKO','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2916,158,'Wellington Region','WGN','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2917,158,'West Coast Region','WTC','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2918,159,'Boaco','BO','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2919,159,'Carazo','CA','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2920,159,'Chinandega','CI','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2921,159,'Chontales','CO','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2922,159,'Estelí','ES','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2923,159,'Granada','GR','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2924,159,'Jinotega','JI','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2925,159,'León','LE','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2926,159,'Madriz','MD','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2927,159,'Managua','MN','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2928,159,'Masaya','MS','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2929,159,'Matagalpa','MT','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2930,159,'North Caribbean Coast','AN','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2931,159,'Nueva Segovia	','NS','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2932,159,'Río San Juan','SJ','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2933,159,'Rivas','RI','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2934,159,'South Caribbean Coast','AS','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2935,160,'Agadez Region','1','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2936,160,'Diffa Region','2','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2937,160,'Dosso Region','3','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2938,160,'Maradi Region','4','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2939,160,'Tahoua Region','5','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2940,160,'Tillabéri Region','6','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2941,160,'Zinder Region','7','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2942,161,'Abia','AB','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2943,161,'Abuja Federal Capital Territory','FC','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2944,161,'Adamawa','AD','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2945,161,'Akwa Ibom','AK','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2946,161,'Anambra','AN','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2947,161,'Bauchi','BA','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2948,161,'Bayelsa','BY','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2949,161,'Benue','BE','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2950,161,'Borno','BO','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2951,161,'Cross River','CR','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2952,161,'Delta','DE','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2953,161,'Ebonyi','EB','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2954,161,'Edo','ED','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2955,161,'Ekiti','EK','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2956,161,'Enugu','EN','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2957,161,'Gombe','GO','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2958,161,'Imo','IM','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2959,161,'Jigawa','JI','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2960,161,'Kaduna','KD','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2961,161,'Kano','KN','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2962,161,'Katsina','KT','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2963,161,'Kebbi','KE','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2964,161,'Kogi','KO','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2965,161,'Kwara','KW','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2966,161,'Lagos','LA','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2967,161,'Nasarawa','NA','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2968,161,'Niger','NI','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2969,161,'Ogun','OG','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2970,161,'Ondo','ON','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2971,161,'Osun','OS','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2972,161,'Oyo','OY','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2973,161,'Plateau','PL','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2974,161,'Rivers','RI','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2975,161,'Sokoto','SO','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2976,161,'Taraba','TA','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2977,161,'Yobe','YO','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2978,161,'Zamfara','ZA','2026-05-04 03:51:49','2026-05-04 03:51:49'),
(2979,164,'Chagang Province','04','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(2980,164,'Kangwon Province','07','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(2981,164,'North Hamgyong Province','09','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(2982,164,'North Hwanghae Province','06','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(2983,164,'North Pyongan Province','03','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(2984,164,'Pyongyang','01','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(2985,164,'Rason','13','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(2986,164,'Ryanggang Province','10','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(2987,164,'South Hamgyong Province','08','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(2988,164,'South Hwanghae Province','05','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(2989,164,'South Pyongan Province','02','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(2990,166,'Akershus','02','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(2991,166,'Buskerud','06','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(2992,166,'Finnmark','20','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(2993,166,'Hedmark','04','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(2994,166,'Hordaland','12','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(2995,166,'Jan Mayen','22','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(2996,166,'Møre og Romsdal','15','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(2997,166,'Nord-Trøndelag','17','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(2998,166,'Nordland','18','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(2999,166,'Oppland','05','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3000,166,'Oslo','03','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3001,166,'Østfold','01','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3002,166,'Rogaland','11','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3003,166,'Sogn og Fjordane','14','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3004,166,'Sør-Trøndelag','16','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3005,166,'Svalbard','21','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3006,166,'Telemark','08','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3007,166,'Troms','19','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3008,166,'Trøndelag','50','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3009,166,'Vest-Agder','10','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3010,166,'Vestfold','07','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3011,167,'Ad Dakhiliyah Governorate','DA','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3012,167,'Ad Dhahirah Governorate','ZA','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3013,167,'Al Batinah North Governorate','BS','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3014,167,'Al Batinah Region','BA','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3015,167,'Al Batinah South Governorate','BJ','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3016,167,'Al Buraimi Governorate','BU','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3017,167,'Al Wusta Governorate','WU','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3018,167,'Ash Sharqiyah North Governorate','SS','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3019,167,'Ash Sharqiyah Region','SH','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3020,167,'Ash Sharqiyah South Governorate','SJ','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3021,167,'Dhofar Governorate','ZU','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3022,167,'Musandam Governorate','MU','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3023,167,'Muscat Governorate','MA','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3024,168,'Azad Kashmir','JK','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3025,168,'Balochistan','BA','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3026,168,'Federally Administered Tribal Areas','TA','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3027,168,'Gilgit-Baltistan','GB','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3028,168,'Islamabad Capital Territory','IS','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3029,168,'Khyber Pakhtunkhwa','KP','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3030,168,'Punjab','PB','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3031,168,'Sindh','SD','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3032,169,'Aimeliik','002','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3033,169,'Airai','004','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3034,169,'Angaur','010','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3035,169,'Hatohobei','050','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3036,169,'Kayangel','100','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3037,169,'Koror','150','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3038,169,'Melekeok','212','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3039,169,'Ngaraard','214','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3040,169,'Ngarchelong','218','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3041,169,'Ngardmau','222','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3042,169,'Ngatpang','224','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3043,169,'Ngchesar','226','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3044,169,'Ngeremlengui','227','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3045,169,'Ngiwal','228','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3046,169,'Peleliu','350','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3047,169,'Sonsorol','370','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3048,171,'Bocas del Toro Province','1','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3049,171,'Chiriquí Province','4','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3050,171,'Coclé Province','2','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3051,171,'Colón Province','3','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3052,171,'Darién Province','5','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3053,171,'Emberá-Wounaan Comarca','EM','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3054,171,'Guna Yala','KY','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3055,171,'Herrera Province','6','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3056,171,'Los Santos Province','7','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3057,171,'Ngöbe-Buglé Comarca','NB','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3058,171,'Panamá Oeste Province','10','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3059,171,'Panamá Province','8','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3060,171,'Veraguas Province','9','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3061,172,'Bougainville','NSB','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3062,172,'Central Province','CPM','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3063,172,'Chimbu Province','CPK','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3064,172,'East New Britain','EBR','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3065,172,'Eastern Highlands Province','EHG','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3066,172,'Enga Province','EPW','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3067,172,'Gulf','GPK','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3068,172,'Hela','HLA','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3069,172,'Jiwaka Province','JWK','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3070,172,'Madang Province','MPM','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3071,172,'Manus Province','MRL','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3072,172,'Milne Bay Province','MBA','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3073,172,'Morobe Province','MPL','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3074,172,'New Ireland Province','NIK','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3075,172,'Oro Province','NPP','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3076,172,'Port Moresby','NCD','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3077,172,'Sandaun Province','SAN','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3078,172,'Southern Highlands Province','SHM','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3079,172,'West New Britain Province','WBK','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3080,172,'Western Highlands Province','WHM','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3081,172,'Western Province','WPD','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3082,173,'Alto Paraguay Department','16','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3083,173,'Alto Paraná Department','10','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3084,173,'Amambay Department','13','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3085,173,'Boquerón Department','19','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3086,173,'Caaguazú','5','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3087,173,'Caazapá','6','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3088,173,'Canindeyú','14','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3089,173,'Central Department','11','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3090,173,'Concepción Department','1','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3091,173,'Cordillera Department','3','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3092,173,'Guairá Department','4','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3093,173,'Itapúa','7','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3094,173,'Misiones Department','8','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3095,173,'Ñeembucú Department','12','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3096,173,'Paraguarí Department','9','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3097,173,'Presidente Hayes Department','15','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3098,173,'San Pedro Department','2','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3099,174,'Amazonas','AMA','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3100,174,'Áncash','ANC','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3101,174,'Apurímac','APU','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3102,174,'Arequipa','ARE','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3103,174,'Ayacucho','AYA','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3104,174,'Cajamarca','CAJ','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3105,174,'Callao','CAL','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3106,174,'Cusco','CUS','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3107,174,'Huancavelica','HUV','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3108,174,'Huanuco','HUC','2026-05-04 03:51:50','2026-05-04 03:51:50'),
(3109,174,'Ica','ICA','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3110,174,'Junín','JUN','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3111,174,'La Libertad','LAL','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3112,174,'Lambayeque','LAM','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3113,174,'Lima','LIM','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3114,174,'Loreto','LOR','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3115,174,'Madre de Dios','MDD','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3116,174,'Moquegua','MOQ','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3117,174,'Pasco','PAS','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3118,174,'Piura','PIU','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3119,174,'Puno','PUN','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3120,174,'San Martín','SAM','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3121,174,'Tacna','TAC','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3122,174,'Tumbes','TUM','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3123,174,'Ucayali','UCA','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3124,175,'Abra','ABR','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3125,175,'Agusan del Norte','AGN','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3126,175,'Agusan del Sur','AGS','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3127,175,'Aklan','AKL','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3128,175,'Albay','ALB','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3129,175,'Antique','ANT','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3130,175,'Apayao','APA','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3131,175,'Aurora','AUR','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3132,175,'Autonomous Region in Muslim Mindanao','14','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3133,175,'Basilan','BAS','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3134,175,'Bataan','BAN','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3135,175,'Batanes','BTN','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3136,175,'Batangas','BTG','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3137,175,'Benguet','BEN','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3138,175,'Bicol Region','05','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3139,175,'Biliran','BIL','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3140,175,'Bohol','BOH','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3141,175,'Bukidnon','BUK','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3142,175,'Bulacan','BUL','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3143,175,'Cagayan','CAG','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3144,175,'Cagayan Valley','02','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3145,175,'Calabarzon','40','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3146,175,'Camarines Norte','CAN','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3147,175,'Camarines Sur','CAS','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3148,175,'Camiguin','CAM','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3149,175,'Capiz','CAP','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3150,175,'Caraga','13','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3151,175,'Catanduanes','CAT','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3152,175,'Cavite','CAV','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3153,175,'Cebu','CEB','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3154,175,'Central Luzon','03','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3155,175,'Central Visayas','07','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3156,175,'Compostela Valley','COM','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3157,175,'Cordillera Administrative Region','15','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3158,175,'Cotabato','NCO','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3159,175,'Davao del Norte','DAV','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3160,175,'Davao del Sur','DAS','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3161,175,'Davao Occidental','DVO','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3162,175,'Davao Oriental','DAO','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3163,175,'Davao Region','11','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3164,175,'Dinagat Islands','DIN','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3165,175,'Eastern Samar','EAS','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3166,175,'Eastern Visayas','08','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3167,175,'Guimaras','GUI','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3168,175,'Ifugao','IFU','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3169,175,'Ilocos Norte','ILN','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3170,175,'Ilocos Region','01','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3171,175,'Ilocos Sur','ILS','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3172,175,'Iloilo','ILI','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3173,175,'Isabela','ISA','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3174,175,'Kalinga','KAL','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3175,175,'La Union','LUN','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3176,175,'Laguna','LAG','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3177,175,'Lanao del Norte','LAN','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3178,175,'Lanao del Sur','LAS','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3179,175,'Leyte','LEY','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3180,175,'Maguindanao','MAG','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3181,175,'Marinduque','MAD','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3182,175,'Masbate','MAS','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3183,175,'Metro Manila','NCR','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3184,175,'Mimaropa','41','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3185,175,'Misamis Occidental','MSC','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3186,175,'Misamis Oriental','MSR','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3187,175,'Mountain Province','MOU','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3188,175,'Negros Occidental','NEC','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3189,175,'Negros Oriental','NER','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3190,175,'Northern Mindanao','10','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3191,175,'Northern Samar','NSA','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3192,175,'Nueva Ecija','NUE','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3193,175,'Nueva Vizcaya','NUV','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3194,175,'Occidental Mindoro','MDC','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3195,175,'Oriental Mindoro','MDR','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3196,175,'Palawan','PLW','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3197,175,'Pampanga','PAM','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3198,175,'Pangasinan','PAN','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3199,175,'Quezon','QUE','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3200,175,'Quirino','QUI','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3201,175,'Rizal','RIZ','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3202,175,'Romblon','ROM','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3203,175,'Sarangani','SAR','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3204,175,'Siquijor','SIG','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3205,175,'Soccsksargen','12','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3206,175,'Sorsogon','SOR','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3207,175,'South Cotabato','SCO','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3208,175,'Southern Leyte','SLE','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3209,175,'Sultan Kudarat','SUK','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3210,175,'Sulu','SLU','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3211,175,'Surigao del Norte','SUN','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3212,175,'Surigao del Sur','SUR','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3213,175,'Tarlac','TAR','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3214,175,'Tawi-Tawi','TAW','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3215,175,'Western Visayas','06','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3216,175,'Zambales','ZMB','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3217,175,'Zamboanga del Norte','ZAN','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3218,175,'Zamboanga del Sur','ZAS','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3219,175,'Zamboanga Peninsula','09','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3220,175,'Zamboanga Sibugay','ZSI','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3221,177,'Greater Poland Voivodeship','WP','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3222,177,'Kuyavian-Pomeranian Voivodeship','KP','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3223,177,'Lesser Poland Voivodeship','MA','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3224,177,'Lower Silesian Voivodeship','DS','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3225,177,'Lublin Voivodeship','LU','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3226,177,'Lubusz Voivodeship','LB','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3227,177,'Łódź Voivodeship','LD','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3228,177,'Masovian Voivodeship','MZ','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3229,177,'Opole Voivodeship','OP','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3230,177,'Podkarpackie Voivodeship','PK','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3231,177,'Podlaskie Voivodeship','PD','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3232,177,'Pomeranian Voivodeship','PM','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3233,177,'Silesian Voivodeship','SL','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3234,177,'Świętokrzyskie Voivodeship','SK','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3235,177,'Warmian-Masurian Voivodeship','WN','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3236,177,'West Pomeranian Voivodeship','ZP','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3237,178,'Açores','20','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3238,178,'Aveiro','01','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3239,178,'Beja','02','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3240,178,'Braga','03','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3241,178,'Bragança','04','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3242,178,'Castelo Branco','05','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3243,178,'Coimbra','06','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3244,178,'Évora','07','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3245,178,'Faro','08','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3246,178,'Guarda','09','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3247,178,'Leiria','10','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3248,178,'Lisbon','11','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3249,178,'Madeira','30','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3250,178,'Portalegre','12','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3251,178,'Porto','13','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3252,178,'Santarém','14','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3253,178,'Setúbal','15','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3254,178,'Viana do Castelo','16','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3255,178,'Vila Real','17','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3256,178,'Viseu','18','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3257,180,'Al Daayen','ZA','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3258,180,'Al Khor','KH','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3259,180,'Al Rayyan Municipality','RA','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3260,180,'Al Wakrah','WA','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3261,180,'Al-Shahaniya','SH','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3262,180,'Doha','DA','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3263,180,'Madinat ash Shamal','MS','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3264,180,'Umm Salal Municipality','US','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3265,182,'Alba','AB','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3266,182,'Arad County','AR','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3267,182,'Arges','AG','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3268,182,'Bacău County','BC','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3269,182,'Bihor County','BH','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3270,182,'Bistrița-Năsăud County','BN','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3271,182,'Botoșani County','BT','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3272,182,'Braila','BR','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3273,182,'Brașov County','BV','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3274,182,'Bucharest','B','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3275,182,'Buzău County','BZ','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3276,182,'Călărași County','CL','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3277,182,'Caraș-Severin County','CS','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3278,182,'Cluj County','CJ','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3279,182,'Constanța County','CT','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3280,182,'Covasna County','CV','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3281,182,'Dâmbovița County','DB','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3282,182,'Dolj County','DJ','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3283,182,'Galați County','GL','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3284,182,'Giurgiu County','GR','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3285,182,'Gorj County','GJ','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3286,182,'Harghita County','HR','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3287,182,'Hunedoara County','HD','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3288,182,'Ialomița County','IL','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3289,182,'Iași County','IS','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3290,182,'Ilfov County','IF','2026-05-04 03:51:51','2026-05-04 03:51:51'),
(3291,182,'Maramureș County','MM','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3292,182,'Mehedinți County','MH','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3293,182,'Mureș County','MS','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3294,182,'Neamț County','NT','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3295,182,'Olt County','OT','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3296,182,'Prahova County','PH','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3297,182,'Sălaj County','SJ','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3298,182,'Satu Mare County','SM','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3299,182,'Sibiu County','SB','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3300,182,'Suceava County','SV','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3301,182,'Teleorman County','TR','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3302,182,'Timiș County','TM','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3303,182,'Tulcea County','TL','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3304,182,'Vâlcea County','VL','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3305,182,'Vaslui County','VS','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3306,182,'Vrancea County','VN','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3307,183,'Altai Krai','ALT','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3308,183,'Altai Republic','AL','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3309,183,'Amur Oblast','AMU','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3310,183,'Arkhangelsk','ARK','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3311,183,'Astrakhan Oblast','AST','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3312,183,'Belgorod Oblast','BEL','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3313,183,'Bryansk Oblast','BRY','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3314,183,'Chechen Republic','CE','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3315,183,'Chelyabinsk Oblast','CHE','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3316,183,'Chukotka Autonomous Okrug','CHU','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3317,183,'Chuvash Republic','CU','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3318,183,'Irkutsk','IRK','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3319,183,'Ivanovo Oblast','IVA','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3320,183,'Jewish Autonomous Oblast','YEV','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3321,183,'Kabardino-Balkar Republic','KB','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3322,183,'Kaliningrad','KGD','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3323,183,'Kaluga Oblast','KLU','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3324,183,'Kamchatka Krai','KAM','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3325,183,'Karachay-Cherkess Republic','KC','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3326,183,'Kemerovo Oblast','KEM','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3327,183,'Khabarovsk Krai','KHA','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3328,183,'Khanty-Mansi Autonomous Okrug','KHM','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3329,183,'Kirov Oblast','KIR','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3330,183,'Komi Republic','KO','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3331,183,'Kostroma Oblast','KOS','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3332,183,'Krasnodar Krai','KDA','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3333,183,'Krasnoyarsk Krai','KYA','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3334,183,'Kurgan Oblast','KGN','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3335,183,'Kursk Oblast','KRS','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3336,183,'Leningrad Oblast','LEN','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3337,183,'Lipetsk Oblast','LIP','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3338,183,'Magadan Oblast','MAG','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3339,183,'Mari El Republic','ME','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3340,183,'Moscow','MOW','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3341,183,'Moscow Oblast','MOS','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3342,183,'Murmansk Oblast','MUR','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3343,183,'Nenets Autonomous Okrug','NEN','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3344,183,'Nizhny Novgorod Oblast','NIZ','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3345,183,'Novgorod Oblast','NGR','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3346,183,'Novosibirsk','NVS','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3347,183,'Omsk Oblast','OMS','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3348,183,'Orenburg Oblast','ORE','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3349,183,'Oryol Oblast','ORL','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3350,183,'Penza Oblast','PNZ','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3351,183,'Perm Krai','PER','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3352,183,'Primorsky Krai','PRI','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3353,183,'Pskov Oblast','PSK','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3354,183,'Republic of Adygea','AD','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3355,183,'Republic of Bashkortostan','BA','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3356,183,'Republic of Buryatia','BU','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3357,183,'Republic of Dagestan','DA','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3358,183,'Republic of Ingushetia','IN','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3359,183,'Republic of Kalmykia','KL','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3360,183,'Republic of Karelia','KR','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3361,183,'Republic of Khakassia','KK','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3362,183,'Republic of Mordovia','MO','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3363,183,'Republic of North Ossetia-Alania','SE','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3364,183,'Republic of Tatarstan','TA','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3365,183,'Rostov Oblast','ROS','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3366,183,'Ryazan Oblast','RYA','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3367,183,'Saint Petersburg','SPE','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3368,183,'Sakha Republic','SA','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3369,183,'Sakhalin','SAK','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3370,183,'Samara Oblast','SAM','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3371,183,'Saratov Oblast','SAR','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3372,183,'Sevastopol','UA-40','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3373,183,'Smolensk Oblast','SMO','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3374,183,'Stavropol Krai','STA','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3375,183,'Sverdlovsk','SVE','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3376,183,'Tambov Oblast','TAM','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3377,183,'Tomsk Oblast','TOM','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3378,183,'Tula Oblast','TUL','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3379,183,'Tuva Republic','TY','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3380,183,'Tver Oblast','TVE','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3381,183,'Tyumen Oblast','TYU','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3382,183,'Udmurt Republic','UD','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3383,183,'Ulyanovsk Oblast','ULY','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3384,183,'Vladimir Oblast','VLA','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3385,183,'Volgograd Oblast','VGG','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3386,183,'Vologda Oblast','VLG','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3387,183,'Voronezh Oblast','VOR','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3388,183,'Yamalo-Nenets Autonomous Okrug','YAN','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3389,183,'Yaroslavl Oblast','YAR','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3390,183,'Zabaykalsky Krai','ZAB','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3391,184,'Eastern Province','02','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3392,184,'Kigali district','01','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3393,184,'Northern Province','03','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3394,184,'Southern Province','05','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3395,184,'Western Province','04','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3396,186,'Christ Church Nichola Town Parish','01','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3397,186,'Nevis','N','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3398,186,'Saint Anne Sandy Point Parish','02','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3399,186,'Saint George Gingerland Parish','04','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3400,186,'Saint James Windward Parish','05','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3401,186,'Saint John Capisterre Parish','06','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3402,186,'Saint John Figtree Parish','07','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3403,186,'Saint Kitts','K','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3404,186,'Saint Mary Cayon Parish','08','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3405,186,'Saint Paul Capisterre Parish','09','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3406,186,'Saint Paul Charlestown Parish','10','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3407,186,'Saint Peter Basseterre Parish','11','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3408,186,'Saint Thomas Lowland Parish','12','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3409,186,'Saint Thomas Middle Island Parish','13','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3410,186,'Trinity Palmetto Point Parish','15','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3411,187,'Anse la Raye Quarter','01','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3412,187,'Canaries','12','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3413,187,'Castries Quarter','02','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3414,187,'Choiseul Quarter','03','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3415,187,'Dauphin Quarter','04','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3416,187,'Dennery Quarter','05','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3417,187,'Gros Islet Quarter','06','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3418,187,'Laborie Quarter','07','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3419,187,'Micoud Quarter','08','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3420,187,'Praslin Quarter','09','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3421,187,'Soufrière Quarter','10','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3422,187,'Vieux Fort Quarter','11','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3423,189,'Charlotte Parish','01','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3424,189,'Grenadines Parish','06','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3425,189,'Saint Andrew Parish','02','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3426,189,'Saint David Parish','03','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3427,189,'Saint George Parish','04','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3428,189,'Saint Patrick Parish','05','2026-05-04 03:51:52','2026-05-04 03:51:52'),
(3429,192,'A\'ana','AA','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3430,192,'Aiga-i-le-Tai','AL','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3431,192,'Atua','AT','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3432,192,'Fa\'asaleleaga','FA','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3433,192,'Gaga\'emauga','GE','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3434,192,'Gaga\'ifomauga','GI','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3435,192,'Palauli','PA','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3436,192,'Satupa\'itea','SA','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3437,192,'Tuamasaga','TU','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3438,192,'Va\'a-o-Fonoti','VF','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3439,192,'Vaisigano','VS','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3440,193,'Acquaviva','01','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3441,193,'Borgo Maggiore','06','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3442,193,'Chiesanuova','02','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3443,193,'Domagnano','03','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3444,193,'Faetano','04','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3445,193,'Fiorentino','05','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3446,193,'Montegiardino','08','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3447,193,'San Marino','07','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3448,193,'Serravalle','09','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3449,194,'Príncipe Province','P','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3450,194,'São Tomé Province','S','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3451,195,'\'Asir','14','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3452,195,'Al Bahah','11','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3453,195,'Al Jawf','12','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3454,195,'Al Madinah','03','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3455,195,'Al-Qassim','05','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3456,195,'Eastern Province','04','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3457,195,'Ha\'il','06','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3458,195,'Jizan','09','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3459,195,'Makkah','02','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3460,195,'Najran','10','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3461,195,'Northern Borders','08','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3462,195,'Riyadh','01','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3463,195,'Tabuk','07','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3464,196,'Dakar','DK','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3465,196,'Diourbel Region','DB','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3466,196,'Fatick','FK','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3467,196,'Kaffrine','KA','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3468,196,'Kaolack','KL','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3469,196,'Kédougou','KE','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3470,196,'Kolda','KD','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3471,196,'Louga','LG','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3472,196,'Matam','MT','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3473,196,'Saint-Louis','SL','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3474,196,'Sédhiou','SE','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3475,196,'Tambacounda Region','TC','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3476,196,'Thiès Region','TH','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3477,196,'Ziguinchor','ZG','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3478,197,'Belgrade','00','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3479,197,'Bor District','14','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3480,197,'Braničevo District','11','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3481,197,'Central Banat District','02','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3482,197,'Jablanica District','23','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3483,197,'Kolubara District','09','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3484,197,'Mačva District','08','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3485,197,'Moravica District','17','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3486,197,'Nišava District','20','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3487,197,'North Bačka District','01','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3488,197,'North Banat District','03','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3489,197,'Pčinja District','24','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3490,197,'Pirot District','22','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3491,197,'Podunavlje District','10','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3492,197,'Pomoravlje District','13','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3493,197,'Rasina District','19','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3494,197,'Raška District','18','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3495,197,'South Bačka District','06','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3496,197,'South Banat District','04','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3497,197,'Srem District','07','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3498,197,'Šumadija District','12','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3499,197,'Toplica District','21','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3500,197,'Vojvodina','VO','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3501,197,'West Bačka District','05','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3502,197,'Zaječar District','15','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3503,197,'Zlatibor District','16','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3504,198,'Anse Boileau','02','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3505,198,'Anse Royale','05','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3506,198,'Anse-aux-Pins','01','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3507,198,'Au Cap','04','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3508,198,'Baie Lazare','06','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3509,198,'Baie Sainte Anne','07','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3510,198,'Beau Vallon','08','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3511,198,'Bel Air','09','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3512,198,'Bel Ombre','10','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3513,198,'Cascade','11','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3514,198,'Glacis','12','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3515,198,'Grand\'Anse Mahé','13','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3516,198,'Grand\'Anse Praslin','14','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3517,198,'La Digue','15','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3518,198,'La Rivière Anglaise','16','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3519,198,'Les Mamelles','24','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3520,198,'Mont Buxton','17','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3521,198,'Mont Fleuri','18','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3522,198,'Plaisance','19','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3523,198,'Pointe La Rue','20','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3524,198,'Port Glaud','21','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3525,198,'Roche Caiman','25','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3526,198,'Saint Louis','22','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3527,198,'Takamaka','23','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3528,199,'Eastern Province','E','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3529,199,'Northern Province','N','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3530,199,'Southern Province','S','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3531,199,'Western Area','W','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3532,200,'Central Singapore Community Development Council','01','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3533,200,'North East Community Development Council','02','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3534,200,'North West Community Development Council','03','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3535,200,'South East Community Development Council','04','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3536,200,'South West Community Development Council','05','2026-05-04 03:51:53','2026-05-04 03:51:53'),
(3537,202,'Banská Bystrica Region','BC','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3538,202,'Bratislava Region','BL','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3539,202,'Košice Region','KI','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3540,202,'Nitra Region','NI','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3541,202,'Prešov Region','PV','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3542,202,'Trenčín Region','TC','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3543,202,'Trnava Region','TA','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3544,202,'Žilina Region','ZI','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3545,203,'Ajdovščina Municipality','001','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3546,203,'Ankaran Municipality','213','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3547,203,'Beltinci Municipality','002','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3548,203,'Benedikt Municipality','148','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3549,203,'Bistrica ob Sotli Municipality','149','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3550,203,'Bled Municipality','003','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3551,203,'Bloke Municipality','150','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3552,203,'Bohinj Municipality','004','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3553,203,'Borovnica Municipality','005','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3554,203,'Bovec Municipality','006','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3555,203,'Braslovče Municipality','151','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3556,203,'Brda Municipality','007','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3557,203,'Brežice Municipality','009','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3558,203,'Brezovica Municipality','008','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3559,203,'Cankova Municipality','152','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3560,203,'Cerklje na Gorenjskem Municipality','012','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3561,203,'Cerknica Municipality','013','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3562,203,'Cerkno Municipality','014','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3563,203,'Cerkvenjak Municipality','153','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3564,203,'City Municipality of Celje','011','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3565,203,'City Municipality of Novo Mesto','085','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3566,203,'Črenšovci Municipality','015','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3567,203,'Črna na Koroškem Municipality','016','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3568,203,'Črnomelj Municipality','017','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3569,203,'Destrnik Municipality','018','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3570,203,'Divača Municipality','019','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3571,203,'Dobje Municipality','154','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3572,203,'Dobrepolje Municipality','020','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3573,203,'Dobrna Municipality','155','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3574,203,'Dobrova–Polhov Gradec Municipality','021','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3575,203,'Dobrovnik Municipality','156','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3576,203,'Dol pri Ljubljani Municipality','022','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3577,203,'Dolenjske Toplice Municipality','157','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3578,203,'Domžale Municipality','023','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3579,203,'Dornava Municipality','024','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3580,203,'Dravograd Municipality','025','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3581,203,'Duplek Municipality','026','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3582,203,'Gorenja Vas–Poljane Municipality','027','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3583,203,'Gorišnica Municipality','028','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3584,203,'Gorje Municipality','207','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3585,203,'Gornja Radgona Municipality','029','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3586,203,'Gornji Grad Municipality','030','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3587,203,'Gornji Petrovci Municipality','031','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3588,203,'Grad Municipality','158','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3589,203,'Grosuplje Municipality','032','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3590,203,'Hajdina Municipality','159','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3591,203,'Hoče–Slivnica Municipality','160','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3592,203,'Hodoš Municipality','161','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3593,203,'Horjul Municipality','162','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3594,203,'Hrastnik Municipality','034','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3595,203,'Hrpelje–Kozina Municipality','035','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3596,203,'Idrija Municipality','036','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3597,203,'Ig Municipality','037','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3598,203,'Ivančna Gorica Municipality','039','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3599,203,'Izola Municipality','040','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3600,203,'Jesenice Municipality','041','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3601,203,'Jezersko Municipality','163','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3602,203,'Juršinci Municipality','042','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3603,203,'Kamnik Municipality','043','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3604,203,'Kanal ob Soči Municipality','044','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3605,203,'Kidričevo Municipality','045','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3606,203,'Kobarid Municipality','046','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3607,203,'Kobilje Municipality','047','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3608,203,'Kočevje Municipality','048','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3609,203,'Komen Municipality','049','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3610,203,'Komenda Municipality','164','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3611,203,'Koper City Municipality','050','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3612,203,'Kostanjevica na Krki Municipality','197','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3613,203,'Kostel Municipality','165','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3614,203,'Kozje Municipality','051','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3615,203,'Kranj City Municipality','052','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3616,203,'Kranjska Gora Municipality','053','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3617,203,'Križevci Municipality','166','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3618,203,'Kungota','055','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3619,203,'Kuzma Municipality','056','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3620,203,'Laško Municipality','057','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3621,203,'Lenart Municipality','058','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3622,203,'Lendava Municipality','059','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3623,203,'Litija Municipality','060','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3624,203,'Ljubljana City Municipality','061','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3625,203,'Ljubno Municipality','062','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3626,203,'Ljutomer Municipality','063','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3627,203,'Log–Dragomer Municipality','208','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3628,203,'Logatec Municipality','064','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3629,203,'Loška Dolina Municipality','065','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3630,203,'Loški Potok Municipality','066','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3631,203,'Lovrenc na Pohorju Municipality','167','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3632,203,'Luče Municipality','067','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3633,203,'Lukovica Municipality','068','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3634,203,'Majšperk Municipality','069','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3635,203,'Makole Municipality','198','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3636,203,'Maribor City Municipality','070','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3637,203,'Markovci Municipality','168','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3638,203,'Medvode Municipality','071','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3639,203,'Mengeš Municipality','072','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3640,203,'Metlika Municipality','073','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3641,203,'Mežica Municipality','074','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3642,203,'Miklavž na Dravskem Polju Municipality','169','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3643,203,'Miren–Kostanjevica Municipality','075','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3644,203,'Mirna Municipality','212','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3645,203,'Mirna Peč Municipality','170','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3646,203,'Mislinja Municipality','076','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3647,203,'Mokronog–Trebelno Municipality','199','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3648,203,'Moravče Municipality','077','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3649,203,'Moravske Toplice Municipality','078','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3650,203,'Mozirje Municipality','079','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3651,203,'Municipality of Apače','195','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3652,203,'Municipality of Cirkulane','196','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3653,203,'Municipality of Ilirska Bistrica','038','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3654,203,'Municipality of Krško','054','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3655,203,'Municipality of Škofljica','123','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3656,203,'Murska Sobota City Municipality','080','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3657,203,'Muta Municipality','081','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3658,203,'Naklo Municipality','082','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3659,203,'Nazarje Municipality','083','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3660,203,'Nova Gorica City Municipality','084','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3661,203,'Odranci Municipality','086','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3662,203,'Oplotnica','171','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3663,203,'Ormož Municipality','087','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3664,203,'Osilnica Municipality','088','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3665,203,'Pesnica Municipality','089','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3666,203,'Piran Municipality','090','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3667,203,'Pivka Municipality','091','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3668,203,'Podčetrtek Municipality','092','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3669,203,'Podlehnik Municipality','172','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3670,203,'Podvelka Municipality','093','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3671,203,'Poljčane Municipality','200','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3672,203,'Polzela Municipality','173','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3673,203,'Postojna Municipality','094','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3674,203,'Prebold Municipality','174','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3675,203,'Preddvor Municipality','095','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3676,203,'Prevalje Municipality','175','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3677,203,'Ptuj City Municipality','096','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3678,203,'Puconci Municipality','097','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3679,203,'Rače–Fram Municipality','098','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3680,203,'Radeče Municipality','099','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3681,203,'Radenci Municipality','100','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3682,203,'Radlje ob Dravi Municipality','101','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3683,203,'Radovljica Municipality','102','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3684,203,'Ravne na Koroškem Municipality','103','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3685,203,'Razkrižje Municipality','176','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3686,203,'Rečica ob Savinji Municipality','209','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3687,203,'Renče–Vogrsko Municipality','201','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3688,203,'Ribnica Municipality','104','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3689,203,'Ribnica na Pohorju Municipality','177','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3690,203,'Rogaška Slatina Municipality','106','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3691,203,'Rogašovci Municipality','105','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3692,203,'Rogatec Municipality','107','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3693,203,'Ruše Municipality','108','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3694,203,'Šalovci Municipality','033','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3695,203,'Selnica ob Dravi Municipality','178','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3696,203,'Semič Municipality','109','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3697,203,'Šempeter–Vrtojba Municipality','183','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3698,203,'Šenčur Municipality','117','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3699,203,'Šentilj Municipality','118','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3700,203,'Šentjernej Municipality','119','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3701,203,'Šentjur Municipality','120','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3702,203,'Šentrupert Municipality','211','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3703,203,'Sevnica Municipality','110','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3704,203,'Sežana Municipality','111','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3705,203,'Škocjan Municipality','121','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3706,203,'Škofja Loka Municipality','122','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3707,203,'Slovenj Gradec City Municipality','112','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3708,203,'Slovenska Bistrica Municipality','113','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3709,203,'Slovenske Konjice Municipality','114','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3710,203,'Šmarje pri Jelšah Municipality','124','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3711,203,'Šmarješke Toplice Municipality','206','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3712,203,'Šmartno ob Paki Municipality','125','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3713,203,'Šmartno pri Litiji Municipality','194','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3714,203,'Sodražica Municipality','179','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3715,203,'Solčava Municipality','180','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3716,203,'Šoštanj Municipality','126','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3717,203,'Središče ob Dravi','202','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3718,203,'Starše Municipality','115','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3719,203,'Štore Municipality','127','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3720,203,'Straža Municipality','203','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3721,203,'Sveta Ana Municipality','181','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3722,203,'Sveta Trojica v Slovenskih Goricah Municipality','204','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3723,203,'Sveti Andraž v Slovenskih Goricah Municipality','182','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3724,203,'Sveti Jurij ob Ščavnici Municipality','116','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3725,203,'Sveti Jurij v Slovenskih Goricah Municipality','210','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3726,203,'Sveti Tomaž Municipality','205','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3727,203,'Tabor Municipality','184','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3728,203,'Tišina Municipality','010','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3729,203,'Tolmin Municipality','128','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3730,203,'Trbovlje Municipality','129','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3731,203,'Trebnje Municipality','130','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3732,203,'Trnovska Vas Municipality','185','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3733,203,'Tržič Municipality','131','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3734,203,'Trzin Municipality','186','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3735,203,'Turnišče Municipality','132','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3736,203,'Velika Polana Municipality','187','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3737,203,'Velike Lašče Municipality','134','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3738,203,'Veržej Municipality','188','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3739,203,'Videm Municipality','135','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3740,203,'Vipava Municipality','136','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3741,203,'Vitanje Municipality','137','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3742,203,'Vodice Municipality','138','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3743,203,'Vojnik Municipality','139','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3744,203,'Vransko Municipality','189','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3745,203,'Vrhnika Municipality','140','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3746,203,'Vuzenica Municipality','141','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3747,203,'Zagorje ob Savi Municipality','142','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3748,203,'Žalec Municipality','190','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3749,203,'Zavrč Municipality','143','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3750,203,'Železniki Municipality','146','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3751,203,'Žetale Municipality','191','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3752,203,'Žiri Municipality','147','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3753,203,'Žirovnica Municipality','192','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3754,203,'Zreče Municipality','144','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3755,203,'Žužemberk Municipality','193','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3756,204,'Central Province','CE','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3757,204,'Choiseul Province','CH','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3758,204,'Guadalcanal Province','GU','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3759,204,'Honiara','CT','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3760,204,'Isabel Province','IS','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3761,204,'Makira-Ulawa Province','MK','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3762,204,'Malaita Province','ML','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3763,204,'Rennell and Bellona Province','RB','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3764,204,'Temotu Province','TE','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3765,204,'Western Province','WE','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3766,205,'Awdal Region','AW','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3767,205,'Bakool','BK','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3768,205,'Banaadir','BN','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3769,205,'Bari','BR','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3770,205,'Bay','BY','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3771,205,'Galguduud','GA','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3772,205,'Gedo','GE','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3773,205,'Hiran','HI','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3774,205,'Lower Juba','JH','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3775,205,'Lower Shebelle','SH','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3776,205,'Middle Juba','JD','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3777,205,'Middle Shebelle','SD','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3778,205,'Mudug','MU','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3779,205,'Nugal','NU','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3780,205,'Sanaag Region','SA','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3781,205,'Togdheer Region','TO','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3782,206,'Eastern Cape','EC','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3783,206,'Free State','FS','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3784,206,'Gauteng','GP','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3785,206,'KwaZulu-Natal','KZN','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3786,206,'Limpopo','LP','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3787,206,'Mpumalanga','MP','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3788,206,'North West','NW','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3789,206,'Northern Cape','NC','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3790,206,'Western Cape','WC','2026-05-04 03:51:54','2026-05-04 03:51:54'),
(3791,208,'Busan','26','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3792,208,'Daegu','27','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3793,208,'Daejeon','30','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3794,208,'Gangwon Province','42','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3795,208,'Gwangju','29','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3796,208,'Gyeonggi Province','41','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3797,208,'Incheon','28','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3798,208,'Jeju','49','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3799,208,'North Chungcheong Province','43','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3800,208,'North Gyeongsang Province','47','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3801,208,'North Jeolla Province','45','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3802,208,'Sejong City','50','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3803,208,'Seoul','11','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3804,208,'South Chungcheong Province','44','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3805,208,'South Gyeongsang Province','48','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3806,208,'South Jeolla Province','46','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3807,208,'Ulsan','31','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3808,209,'Central Equatoria','EC','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3809,209,'Eastern Equatoria','EE','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3810,209,'Jonglei State','JG','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3811,209,'Lakes','LK','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3812,209,'Northern Bahr el Ghazal','BN','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3813,209,'Unity','UY','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3814,209,'Upper Nile','NU','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3815,209,'Warrap','WR','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3816,209,'Western Bahr el Ghazal','BW','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3817,209,'Western Equatoria','EW','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3818,210,'Andalusia','AN','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3819,210,'Aragon','AR','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3820,210,'Asturias','AS','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3821,210,'Ávila','AV','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3822,210,'Balearic Islands','PM','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3823,210,'Basque Country','PV','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3824,210,'Burgos Province','BU','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3825,210,'Canary Islands','CN','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3826,210,'Cantabria','CB','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3827,210,'Castile and León','CL','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3828,210,'Castilla La Mancha','CM','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3829,210,'Catalonia','CT','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3830,210,'Ceuta','CE','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3831,210,'Extremadura','EX','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3832,210,'Galicia','GA','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3833,210,'La Rioja','RI','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3834,210,'Léon','LE','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3835,210,'Madrid','MD','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3836,210,'Melilla','ML','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3837,210,'Murcia','MC','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3838,210,'Navarra','NC','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3839,210,'Palencia Province','P','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3840,210,'Salamanca Province','SA','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3841,210,'Segovia Province','SG','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3842,210,'Soria Province','SO','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3843,210,'Valencia','VC','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3844,210,'Valladolid Province','VA','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3845,210,'Zamora Province','ZA','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3846,211,'Ampara District','52','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3847,211,'Anuradhapura District','71','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3848,211,'Badulla District','81','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3849,211,'Batticaloa District','51','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3850,211,'Central Province','2','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3851,211,'Colombo District','11','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3852,211,'Eastern Province','5','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3853,211,'Galle District','31','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3854,211,'Gampaha District','12','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3855,211,'Hambantota District','33','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3856,211,'Jaffna District','41','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3857,211,'Kalutara District','13','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3858,211,'Kandy District','21','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3859,211,'Kegalle District','92','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3860,211,'Kilinochchi District','42','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3861,211,'Mannar District','43','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3862,211,'Matale District','22','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3863,211,'Matara District','32','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3864,211,'Monaragala District','82','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3865,211,'Mullaitivu District','45','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3866,211,'North Central Province','7','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3867,211,'North Western Province','6','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3868,211,'Northern Province','4','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3869,211,'Nuwara Eliya District','23','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3870,211,'Polonnaruwa District','72','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3871,211,'Puttalam District','62','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3872,211,'Ratnapura district','91','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3873,211,'Sabaragamuwa Province','9','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3874,211,'Southern Province','3','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3875,211,'Trincomalee District','53','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3876,211,'Uva Province','8','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3877,211,'Vavuniya District','44','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3878,211,'Western Province','1','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3879,212,'Al Jazirah','GZ','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3880,212,'Al Qadarif','GD','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3881,212,'Blue Nile','NB','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3882,212,'Central Darfur','DC','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3883,212,'East Darfur','DE','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3884,212,'Kassala','KA','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3885,212,'Khartoum','KH','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3886,212,'North Darfur','DN','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3887,212,'North Kordofan','KN','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3888,212,'Northern','NO','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3889,212,'Red Sea','RS','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3890,212,'River Nile','NR','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3891,212,'Sennar','SI','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3892,212,'South Darfur','DS','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3893,212,'South Kordofan','KS','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3894,212,'West Darfur','DW','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3895,212,'West Kordofan','GK','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3896,212,'White Nile','NW','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3897,213,'Brokopondo District','BR','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3898,213,'Commewijne District','CM','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3899,213,'Coronie District','CR','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3900,213,'Marowijne District','MA','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3901,213,'Nickerie District','NI','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3902,213,'Para District','PR','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3903,213,'Paramaribo District','PM','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3904,213,'Saramacca District','SA','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3905,213,'Sipaliwini District','SI','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3906,213,'Wanica District','WA','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3907,215,'Hhohho District','HH','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3908,215,'Lubombo District','LU','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3909,215,'Manzini District','MA','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3910,215,'Shiselweni District','SH','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3911,216,'Blekinge','K','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3912,216,'Dalarna County','W','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3913,216,'Gävleborg County','X','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3914,216,'Gotland County','I','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3915,216,'Halland County','N','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3916,216,'Jönköping County','F','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3917,216,'Kalmar County','H','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3918,216,'Kronoberg County','G','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3919,216,'Norrbotten County','BD','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3920,216,'Örebro County','T','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3921,216,'Östergötland County','E','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3922,216,'Skåne County','M','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3923,216,'Södermanland County','D','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3924,216,'Stockholm County','AB','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3925,216,'Uppsala County','C','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3926,216,'Värmland County','S','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3927,216,'Västerbotten County','AC','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3928,216,'Västernorrland County','Y','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3929,216,'Västmanland County','U','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3930,216,'Västra Götaland County','O','2026-05-04 03:51:55','2026-05-04 03:51:55'),
(3931,217,'Aargau','AG','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3932,217,'Appenzell Ausserrhoden','AR','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3933,217,'Appenzell Innerrhoden','AI','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3934,217,'Basel-Land','BL','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3935,217,'Basel-Stadt','BS','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3936,217,'Bern','BE','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3937,217,'Fribourg','FR','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3938,217,'Geneva','GE','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3939,217,'Glarus','GL','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3940,217,'Graubünden','GR','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3941,217,'Jura','JU','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3942,217,'Lucerne','LU','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3943,217,'Neuchâtel','NE','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3944,217,'Nidwalden','NW','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3945,217,'Obwalden','OW','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3946,217,'Schaffhausen','SH','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3947,217,'Schwyz','SZ','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3948,217,'Solothurn','SO','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3949,217,'St. Gallen','SG','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3950,217,'Thurgau','TG','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3951,217,'Ticino','TI','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3952,217,'Uri','UR','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3953,217,'Valais','VS','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3954,217,'Vaud','VD','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3955,217,'Zug','ZG','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3956,217,'Zürich','ZH','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3957,218,'Al-Hasakah Governorate','HA','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3958,218,'Al-Raqqah Governorate','RA','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3959,218,'Aleppo Governorate','HL','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3960,218,'As-Suwayda Governorate','SU','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3961,218,'Damascus Governorate','DI','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3962,218,'Daraa Governorate','DR','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3963,218,'Deir ez-Zor Governorate','DY','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3964,218,'Hama Governorate','HM','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3965,218,'Homs Governorate','HI','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3966,218,'Idlib Governorate','ID','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3967,218,'Latakia Governorate','LA','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3968,218,'Quneitra Governorate','QU','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3969,218,'Rif Dimashq Governorate','RD','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3970,218,'Tartus Governorate','TA','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3971,219,'Changhua County','CHA','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3972,219,'Chiayi City','CYQ','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3973,219,'Chiayi County','CYI','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3974,219,'Hsinchu','HSZ','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3975,219,'Hsinchu County','HSQ','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3976,219,'Hualien County','HUA','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3977,219,'Kaohsiung','KHH','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3978,219,'Kaohsiung County','KHQ','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3979,219,'Kinmen','KIN','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3980,219,'Lienchiang County','LIE','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3981,219,'Miaoli County','MIA','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3982,219,'Nantou County','NAN','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3983,219,'Penghu County','PEN','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3984,219,'Pingtung County','PIF','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3985,219,'Taichung','TXG','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3986,219,'Taichung County','TXQ','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3987,219,'Tainan','TNN','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3988,219,'Tainan County','TNQ','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3989,219,'Taipei','TPE','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3990,219,'Taitung County','TTT','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3991,219,'Taoyuan City','TAO','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3992,219,'Yilan County','ILA','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3993,219,'Yunlin County','YUN','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3994,220,'districts of Republican Subordination','RA','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3995,220,'Gorno-Badakhshan Autonomous Province','GB','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3996,220,'Khatlon Province','KT','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3997,220,'Sughd Province','SU','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3998,221,'Arusha','01','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(3999,221,'Dar es Salaam','02','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4000,221,'Dodoma','03','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4001,221,'Geita','27','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4002,221,'Iringa','04','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4003,221,'Kagera','05','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4004,221,'Katavi','28','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4005,221,'Kigoma','08','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4006,221,'Kilimanjaro','09','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4007,221,'Lindi','12','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4008,221,'Manyara','26','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4009,221,'Mara','13','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4010,221,'Mbeya','14','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4011,221,'Morogoro','16','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4012,221,'Mtwara','17','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4013,221,'Mwanza','18','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4014,221,'Njombe','29','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4015,221,'Pemba North','06','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4016,221,'Pemba South','10','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4017,221,'Pwani','19','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4018,221,'Rukwa','20','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4019,221,'Ruvuma','21','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4020,221,'Shinyanga','22','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4021,221,'Simiyu','30','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4022,221,'Singida','23','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4023,221,'Songwe','31','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4024,221,'Tabora','24','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4025,221,'Tanga','25','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4026,221,'Zanzibar North','07','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4027,221,'Zanzibar South','11','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4028,221,'Zanzibar West','15','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4029,222,'Amnat Charoen','37','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4030,222,'Ang Thong','15','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4031,222,'Bangkok','10','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4032,222,'Bueng Kan','38','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4033,222,'Buri Ram','31','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4034,222,'Chachoengsao','24','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4035,222,'Chai Nat','18','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4036,222,'Chaiyaphum','36','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4037,222,'Chanthaburi','22','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4038,222,'Chiang Mai','50','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4039,222,'Chiang Rai','57','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4040,222,'Chon Buri','20','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4041,222,'Chumphon','86','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4042,222,'Kalasin','46','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4043,222,'Kamphaeng Phet','62','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4044,222,'Kanchanaburi','71','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4045,222,'Khon Kaen','40','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4046,222,'Krabi','81','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4047,222,'Lampang','52','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4048,222,'Lamphun','51','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4049,222,'Loei','42','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4050,222,'Lop Buri','16','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4051,222,'Mae Hong Son','58','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4052,222,'Maha Sarakham','44','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4053,222,'Mukdahan','49','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4054,222,'Nakhon Nayok','26','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4055,222,'Nakhon Pathom','73','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4056,222,'Nakhon Phanom','48','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4057,222,'Nakhon Ratchasima','30','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4058,222,'Nakhon Sawan','60','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4059,222,'Nakhon Si Thammarat','80','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4060,222,'Nan','55','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4061,222,'Narathiwat','96','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4062,222,'Nong Bua Lam Phu','39','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4063,222,'Nong Khai','43','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4064,222,'Nonthaburi','12','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4065,222,'Pathum Thani','13','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4066,222,'Pattani','94','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4067,222,'Pattaya','S','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4068,222,'Phangnga','82','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4069,222,'Phatthalung','93','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4070,222,'Phayao','56','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4071,222,'Phetchabun','67','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4072,222,'Phetchaburi','76','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4073,222,'Phichit','66','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4074,222,'Phitsanulok','65','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4075,222,'Phra Nakhon Si Ayutthaya','14','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4076,222,'Phrae','54','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4077,222,'Phuket','83','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4078,222,'Prachin Buri','25','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4079,222,'Prachuap Khiri Khan','77','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4080,222,'Ranong','85','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4081,222,'Ratchaburi','70','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4082,222,'Rayong','21','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4083,222,'Roi Et','45','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4084,222,'Sa Kaeo','27','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4085,222,'Sakon Nakhon','47','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4086,222,'Samut Prakan','11','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4087,222,'Samut Sakhon','74','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4088,222,'Samut Songkhram','75','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4089,222,'Saraburi','19','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4090,222,'Satun','91','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4091,222,'Si Sa Ket','33','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4092,222,'Sing Buri','17','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4093,222,'Songkhla','90','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4094,222,'Sukhothai','64','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4095,222,'Suphan Buri','72','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4096,222,'Surat Thani','84','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4097,222,'Surin','32','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4098,222,'Tak','63','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4099,222,'Trang','92','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4100,222,'Trat','23','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4101,222,'Ubon Ratchathani','34','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4102,222,'Udon Thani','41','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4103,222,'Uthai Thani','61','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4104,222,'Uttaradit','53','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4105,222,'Yala','95','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4106,222,'Yasothon','35','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4107,223,'Centrale Region','C','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4108,223,'Kara Region','K','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4109,223,'Maritime','M','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4110,223,'Plateaux Region','P','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4111,223,'Savanes Region','S','2026-05-04 03:51:56','2026-05-04 03:51:56'),
(4112,225,'Haʻapai','02','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4113,225,'ʻEua','01','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4114,225,'Niuas','03','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4115,225,'Tongatapu','04','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4116,225,'Vavaʻu','05','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4117,226,'Arima','ARI','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4118,226,'Chaguanas','CHA','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4119,226,'Couva-Tabaquite-Talparo Regional Corporation','CTT','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4120,226,'Diego Martin Regional Corporation','DMN','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4121,226,'Eastern Tobago','ETO','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4122,226,'Penal-Debe Regional Corporation','PED','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4123,226,'Point Fortin','PTF','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4124,226,'Port of Spain','POS','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4125,226,'Princes Town Regional Corporation','PRT','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4126,226,'Rio Claro-Mayaro Regional Corporation','MRC','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4127,226,'San Fernando','SFO','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4128,226,'San Juan-Laventille Regional Corporation','SJL','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4129,226,'Sangre Grande Regional Corporation','SGE','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4130,226,'Siparia Regional Corporation','SIP','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4131,226,'Tunapuna-Piarco Regional Corporation','TUP','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4132,226,'Western Tobago','WTO','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4133,227,'Ariana Governorate','12','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4134,227,'Ben Arous Governorate','13','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4135,227,'Bizerte Governorate','23','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4136,227,'Gabès Governorate','81','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4137,227,'Gafsa Governorate','71','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4138,227,'Jendouba Governorate','32','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4139,227,'Kairouan Governorate','41','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4140,227,'Kasserine Governorate','42','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4141,227,'Kassrine','31','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4142,227,'Kebili Governorate','73','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4143,227,'Kef Governorate','33','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4144,227,'Mahdia Governorate','53','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4145,227,'Manouba Governorate','14','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4146,227,'Medenine Governorate','82','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4147,227,'Monastir Governorate','52','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4148,227,'Sfax Governorate','61','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4149,227,'Sidi Bouzid Governorate','43','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4150,227,'Siliana Governorate','34','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4151,227,'Sousse Governorate','51','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4152,227,'Tataouine Governorate','83','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4153,227,'Tozeur Governorate','72','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4154,227,'Tunis Governorate','11','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4155,227,'Zaghouan Governorate','22','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4156,228,'Adana','01','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4157,228,'Adıyaman','02','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4158,228,'Afyonkarahisar','03','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4159,228,'Ağrı','04','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4160,228,'Aksaray','68','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4161,228,'Amasya','05','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4162,228,'Ankara','06','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4163,228,'Antalya','07','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4164,228,'Ardahan','75','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4165,228,'Artvin','08','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4166,228,'Aydın','09','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4167,228,'Balıkesir','10','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4168,228,'Bartın','74','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4169,228,'Batman','72','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4170,228,'Bayburt','69','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4171,228,'Bilecik','11','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4172,228,'Bingöl','12','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4173,228,'Bitlis','13','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4174,228,'Bolu','14','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4175,228,'Burdur','15','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4176,228,'Bursa','16','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4177,228,'Çanakkale','17','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4178,228,'Çankırı','18','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4179,228,'Çorum','19','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4180,228,'Denizli','20','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4181,228,'Diyarbakır','21','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4182,228,'Düzce','81','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4183,228,'Edirne','22','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4184,228,'Elazığ','23','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4185,228,'Erzincan','24','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4186,228,'Erzurum','25','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4187,228,'Eskişehir','26','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4188,228,'Gaziantep','27','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4189,228,'Giresun','28','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4190,228,'Gümüşhane','29','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4191,228,'Hakkâri','30','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4192,228,'Hatay','31','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4193,228,'Iğdır','76','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4194,228,'Isparta','32','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4195,228,'Istanbul','34','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4196,228,'İzmir','35','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4197,228,'Kahramanmaraş','46','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4198,228,'Karabük','78','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4199,228,'Karaman','70','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4200,228,'Kars','36','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4201,228,'Kastamonu','37','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4202,228,'Kayseri','38','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4203,228,'Kilis','79','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4204,228,'Kırıkkale','71','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4205,228,'Kırklareli','39','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4206,228,'Kırşehir','40','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4207,228,'Kocaeli','41','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4208,228,'Konya','42','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4209,228,'Kütahya','43','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4210,228,'Malatya','44','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4211,228,'Manisa','45','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4212,228,'Mardin','47','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4213,228,'Mersin','33','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4214,228,'Muğla','48','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4215,228,'Muş','49','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4216,228,'Nevşehir','50','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4217,228,'Niğde','51','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4218,228,'Ordu','52','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4219,228,'Osmaniye','80','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4220,228,'Rize','53','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4221,228,'Sakarya','54','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4222,228,'Samsun','55','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4223,228,'Şanlıurfa','63','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4224,228,'Siirt','56','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4225,228,'Sinop','57','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4226,228,'Sivas','58','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4227,228,'Şırnak','73','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4228,228,'Tekirdağ','59','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4229,228,'Tokat','60','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4230,228,'Trabzon','61','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4231,228,'Tunceli','62','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4232,228,'Uşak','64','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4233,228,'Van','65','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4234,228,'Yalova','77','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4235,228,'Yozgat','66','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4236,228,'Zonguldak','67','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4237,229,'Ahal Region','A','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4238,229,'Ashgabat','S','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4239,229,'Balkan Region','B','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4240,229,'Daşoguz Region','D','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4241,229,'Lebap Region','L','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4242,229,'Mary Region','M','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4243,231,'Funafuti','FUN','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4244,231,'Nanumanga','NMG','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4245,231,'Nanumea','NMA','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4246,231,'Niutao Island Council','NIT','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4247,231,'Nui','NUI','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4248,231,'Nukufetau','NKF','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4249,231,'Nukulaelae','NKL','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4250,231,'Vaitupu','VAI','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4251,232,'Abim District','314','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4252,232,'Adjumani District','301','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4253,232,'Agago District','322','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4254,232,'Alebtong District','323','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4255,232,'Amolatar District','315','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4256,232,'Amudat District','324','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4257,232,'Amuria District','216','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4258,232,'Amuru District','316','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4259,232,'Apac District','302','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4260,232,'Arua District','303','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4261,232,'Budaka District','217','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4262,232,'Bududa District','218','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4263,232,'Bugiri District','201','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4264,232,'Buhweju District','420','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4265,232,'Buikwe District','117','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4266,232,'Bukedea District','219','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4267,232,'Bukomansimbi District','118','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4268,232,'Bukwo District','220','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4269,232,'Bulambuli District','225','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4270,232,'Buliisa District','416','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4271,232,'Bundibugyo District','401','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4272,232,'Bunyangabu District','430','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4273,232,'Bushenyi District','402','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4274,232,'Busia District','202','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4275,232,'Butaleja District','221','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4276,232,'Butambala District','119','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4277,232,'Butebo District','233','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4278,232,'Buvuma District','120','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4279,232,'Buyende District','226','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4280,232,'Central Region','C','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4281,232,'Dokolo District','317','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4282,232,'Eastern Region','E','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4283,232,'Gomba District','121','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4284,232,'Gulu District','304','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4285,232,'Ibanda District','417','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4286,232,'Iganga District','203','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4287,232,'Isingiro District','418','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4288,232,'Jinja District','204','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4289,232,'Kaabong District','318','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4290,232,'Kabale District','404','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4291,232,'Kabarole District','405','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4292,232,'Kaberamaido District','213','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4293,232,'Kagadi District','427','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4294,232,'Kakumiro District','428','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4295,232,'Kalangala District','101','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4296,232,'Kaliro District','222','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4297,232,'Kalungu District','122','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4298,232,'Kampala District','102','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4299,232,'Kamuli District','205','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4300,232,'Kamwenge District','413','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4301,232,'Kanungu District','414','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4302,232,'Kapchorwa District','206','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4303,232,'Kasese District','406','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4304,232,'Katakwi District','207','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4305,232,'Kayunga District','112','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4306,232,'Kibaale District','407','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4307,232,'Kiboga District','103','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4308,232,'Kibuku District','227','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4309,232,'Kiruhura District','419','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4310,232,'Kiryandongo District','421','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4311,232,'Kisoro District','408','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4312,232,'Kitgum District','305','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4313,232,'Koboko District','319','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4314,232,'Kole District','325','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4315,232,'Kotido District','306','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4316,232,'Kumi District','208','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4317,232,'Kween District','228','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4318,232,'Kyankwanzi District','123','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4319,232,'Kyegegwa District','422','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4320,232,'Kyenjojo District','415','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4321,232,'Kyotera District','125','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4322,232,'Lamwo District','326','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4323,232,'Lira District','307','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4324,232,'Luuka District','229','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4325,232,'Luwero District','104','2026-05-04 03:51:57','2026-05-04 03:51:57'),
(4326,232,'Lwengo District','124','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4327,232,'Lyantonde District','114','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4328,232,'Manafwa District','223','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4329,232,'Maracha District','320','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4330,232,'Masaka District','105','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4331,232,'Masindi District','409','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4332,232,'Mayuge District','214','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4333,232,'Mbale District','209','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4334,232,'Mbarara District','410','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4335,232,'Mitooma District','423','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4336,232,'Mityana District','115','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4337,232,'Moroto District','308','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4338,232,'Moyo District','309','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4339,232,'Mpigi District','106','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4340,232,'Mubende District','107','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4341,232,'Mukono District','108','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4342,232,'Nakapiripirit District','311','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4343,232,'Nakaseke District','116','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4344,232,'Nakasongola District','109','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4345,232,'Namayingo District','230','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4346,232,'Namisindwa District','234','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4347,232,'Namutumba District','224','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4348,232,'Napak District','327','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4349,232,'Nebbi District','310','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4350,232,'Ngora District','231','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4351,232,'Northern Region','N','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4352,232,'Ntoroko District','424','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4353,232,'Ntungamo District','411','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4354,232,'Nwoya District','328','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4355,232,'Omoro District','331','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4356,232,'Otuke District','329','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4357,232,'Oyam District','321','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4358,232,'Pader District','312','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4359,232,'Pakwach District','332','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4360,232,'Pallisa District','210','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4361,232,'Rakai District','110','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4362,232,'Rubanda District','429','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4363,232,'Rubirizi District','425','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4364,232,'Rukiga District','431','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4365,232,'Rukungiri District','412','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4366,232,'Sembabule District','111','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4367,232,'Serere District','232','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4368,232,'Sheema District','426','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4369,232,'Sironko District','215','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4370,232,'Soroti District','211','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4371,232,'Tororo District','212','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4372,232,'Wakiso District','113','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4373,232,'Western Region','W','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4374,232,'Yumbe District','313','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4375,232,'Zombo District','330','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4376,233,'Autonomous Republic of Crimea','43','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4377,233,'Cherkasy Oblast','71','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4378,233,'Chernihiv Oblast','74','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4379,233,'Chernivtsi Oblast','77','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4380,233,'Dnipropetrovsk Oblast','12','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4381,233,'Donetsk Oblast','14','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4382,233,'Ivano-Frankivsk Oblast','26','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4383,233,'Kharkiv Oblast','63','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4384,233,'Kherson Oblast','65','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4385,233,'Khmelnytsky Oblast','68','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4386,233,'Kiev','30','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4387,233,'Kirovohrad Oblast','35','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4388,233,'Kyiv Oblast','32','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4389,233,'Luhansk Oblast','09','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4390,233,'Lviv Oblast','46','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4391,233,'Mykolaiv Oblast','48','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4392,233,'Odessa Oblast','51','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4393,233,'Rivne Oblast','56','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4394,233,'Sumy Oblast','59','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4395,233,'Ternopil Oblast','61','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4396,233,'Vinnytsia Oblast','05','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4397,233,'Volyn Oblast','07','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4398,233,'Zakarpattia Oblast','21','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4399,233,'Zaporizhzhya Oblast','23','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4400,233,'Zhytomyr Oblast','18','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4401,234,'Abu Dhabi Emirate','AZ','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4402,234,'Ajman Emirate','AJ','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4403,234,'Dubai','DU','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4404,234,'Fujairah','FU','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4405,234,'Ras al-Khaimah','RK','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4406,234,'Sharjah Emirate','SH','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4407,234,'Umm al-Quwain','UQ','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4408,235,'Aberdeen','ABE','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4409,235,'Aberdeenshire','ABD','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4410,235,'Angus','ANS','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4411,235,'Antrim','ANT','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4412,235,'Antrim and Newtownabbey','ANN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4413,235,'Ards','ARD','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4414,235,'Ards and North Down','AND','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4415,235,'Argyll and Bute','AGB','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4416,235,'Armagh City and District Council','ARM','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4417,235,'Armagh, Banbridge and Craigavon','ABC','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4418,235,'Ascension Island','SH-AC','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4419,235,'Ballymena Borough','BLA','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4420,235,'Ballymoney','BLY','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4421,235,'Banbridge','BNB','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4422,235,'Barnsley','BNS','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4423,235,'Bath and North East Somerset','BAS','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4424,235,'Bedford','BDF','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4425,235,'Belfast district','BFS','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4426,235,'Birmingham','BIR','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4427,235,'Blackburn with Darwen','BBD','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4428,235,'Blackpool','BPL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4429,235,'Blaenau Gwent County Borough','BGW','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4430,235,'Bolton','BOL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4431,235,'Bournemouth','BMH','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4432,235,'Bracknell Forest','BRC','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4433,235,'Bradford','BRD','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4434,235,'Bridgend County Borough','BGE','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4435,235,'Brighton and Hove','BNH','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4436,235,'Buckinghamshire','BKM','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4437,235,'Bury','BUR','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4438,235,'Caerphilly County Borough','CAY','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4439,235,'Calderdale','CLD','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4440,235,'Cambridgeshire','CAM','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4441,235,'Carmarthenshire','CMN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4442,235,'Carrickfergus Borough Council','CKF','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4443,235,'Castlereagh','CSR','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4444,235,'Causeway Coast and Glens','CCG','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4445,235,'Central Bedfordshire','CBF','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4446,235,'Ceredigion','CGN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4447,235,'Cheshire East','CHE','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4448,235,'Cheshire West and Chester','CHW','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4449,235,'City and County of Cardiff','CRF','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4450,235,'City and County of Swansea','SWA','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4451,235,'City of Bristol','BST','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4452,235,'City of Derby','DER','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4453,235,'City of Kingston upon Hull','KHL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4454,235,'City of Leicester','LCE','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4455,235,'City of London','LND','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4456,235,'City of Nottingham','NGM','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4457,235,'City of Peterborough','PTE','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4458,235,'City of Plymouth','PLY','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4459,235,'City of Portsmouth','POR','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4460,235,'City of Southampton','STH','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4461,235,'City of Stoke-on-Trent','STE','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4462,235,'City of Sunderland','SND','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4463,235,'City of Westminster','WSM','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4464,235,'City of Wolverhampton','WLV','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4465,235,'City of York','YOR','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4466,235,'Clackmannanshire','CLK','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4467,235,'Coleraine Borough Council','CLR','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4468,235,'Conwy County Borough','CWY','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4469,235,'Cookstown District Council','CKT','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4470,235,'Cornwall','CON','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4471,235,'County Durham','DUR','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4472,235,'Coventry','COV','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4473,235,'Craigavon Borough Council','CGV','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4474,235,'Cumbria','CMA','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4475,235,'Darlington','DAL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4476,235,'Denbighshire','DEN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4477,235,'Derbyshire','DBY','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4478,235,'Derry City and Strabane','DRS','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4479,235,'Derry City Council','DRY','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4480,235,'Devon','DEV','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4481,235,'Doncaster','DNC','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4482,235,'Dorset','DOR','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4483,235,'Down District Council','DOW','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4484,235,'Dudley','DUD','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4485,235,'Dumfries and Galloway','DGY','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4486,235,'Dundee','DND','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4487,235,'Dungannon and South Tyrone Borough Council','DGN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4488,235,'East Ayrshire','EAY','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4489,235,'East Dunbartonshire','EDU','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4490,235,'East Lothian','ELN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4491,235,'East Renfrewshire','ERW','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4492,235,'East Riding of Yorkshire','ERY','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4493,235,'East Sussex','ESX','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4494,235,'Edinburgh','EDH','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4495,235,'England','ENG','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4496,235,'Essex','ESS','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4497,235,'Falkirk','FAL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4498,235,'Fermanagh and Omagh','FMO','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4499,235,'Fermanagh District Council','FER','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4500,235,'Fife','FIF','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4501,235,'Flintshire','FLN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4502,235,'Gateshead','GAT','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4503,235,'Glasgow','GLG','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4504,235,'Gloucestershire','GLS','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4505,235,'Gwynedd','GWN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4506,235,'Halton','HAL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4507,235,'Hampshire','HAM','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4508,235,'Hartlepool','HPL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4509,235,'Herefordshire','HEF','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4510,235,'Hertfordshire','HRT','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4511,235,'Highland','HLD','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4512,235,'Inverclyde','IVC','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4513,235,'Isle of Wight','IOW','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4514,235,'Isles of Scilly','IOS','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4515,235,'Kent','KEN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4516,235,'Kirklees','KIR','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4517,235,'Knowsley','KWL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4518,235,'Lancashire','LAN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4519,235,'Larne Borough Council','LRN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4520,235,'Leeds','LDS','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4521,235,'Leicestershire','LEC','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4522,235,'Limavady Borough Council','LMV','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4523,235,'Lincolnshire','LIN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4524,235,'Lisburn and Castlereagh','LBC','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4525,235,'Lisburn City Council','LSB','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4526,235,'Liverpool','LIV','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4527,235,'London Borough of Barking and Dagenham','BDG','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4528,235,'London Borough of Barnet','BNE','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4529,235,'London Borough of Bexley','BEX','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4530,235,'London Borough of Brent','BEN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4531,235,'London Borough of Bromley','BRY','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4532,235,'London Borough of Camden','CMD','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4533,235,'London Borough of Croydon','CRY','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4534,235,'London Borough of Ealing','EAL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4535,235,'London Borough of Enfield','ENF','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4536,235,'London Borough of Hackney','HCK','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4537,235,'London Borough of Hammersmith and Fulham','HMF','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4538,235,'London Borough of Haringey','HRY','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4539,235,'London Borough of Harrow','HRW','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4540,235,'London Borough of Havering','HAV','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4541,235,'London Borough of Hillingdon','HIL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4542,235,'London Borough of Hounslow','HNS','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4543,235,'London Borough of Islington','ISL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4544,235,'London Borough of Lambeth','LBH','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4545,235,'London Borough of Lewisham','LEW','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4546,235,'London Borough of Merton','MRT','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4547,235,'London Borough of Newham','NWM','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4548,235,'London Borough of Redbridge','RDB','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4549,235,'London Borough of Richmond upon Thames','RIC','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4550,235,'London Borough of Southwark','SWK','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4551,235,'London Borough of Sutton','STN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4552,235,'London Borough of Tower Hamlets','TWH','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4553,235,'London Borough of Waltham Forest','WFT','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4554,235,'London Borough of Wandsworth','WND','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4555,235,'Magherafelt District Council','MFT','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4556,235,'Manchester','MAN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4557,235,'Medway','MDW','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4558,235,'Merthyr Tydfil County Borough','MTY','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4559,235,'Metropolitan Borough of Wigan','WGN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4560,235,'Mid and East Antrim','MEA','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4561,235,'Mid Ulster','MUL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4562,235,'Middlesbrough','MDB','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4563,235,'Midlothian','MLN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4564,235,'Milton Keynes','MIK','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4565,235,'Monmouthshire','MON','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4566,235,'Moray','MRY','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4567,235,'Moyle District Council','MYL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4568,235,'Neath Port Talbot County Borough','NTL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4569,235,'Newcastle upon Tyne','NET','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4570,235,'Newport','NWP','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4571,235,'Newry and Mourne District Council','NYM','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4572,235,'Newry, Mourne and Down','NMD','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4573,235,'Newtownabbey Borough Council','NTA','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4574,235,'Norfolk','NFK','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4575,235,'North Ayrshire','NAY','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4576,235,'North Down Borough Council','NDN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4577,235,'North East Lincolnshire','NEL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4578,235,'North Lanarkshire','NLK','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4579,235,'North Lincolnshire','NLN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4580,235,'North Somerset','NSM','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4581,235,'North Tyneside','NTY','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4582,235,'North Yorkshire','NYK','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4583,235,'Northamptonshire','NTH','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4584,235,'Northern Ireland','NIR','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4585,235,'Northumberland','NBL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4586,235,'Nottinghamshire','NTT','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4587,235,'Oldham','OLD','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4588,235,'Omagh District Council','OMH','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4589,235,'Orkney Islands','ORK','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4590,235,'Outer Hebrides','ELS','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4591,235,'Oxfordshire','OXF','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4592,235,'Pembrokeshire','PEM','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4593,235,'Perth and Kinross','PKN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4594,235,'Poole','POL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4595,235,'Powys','POW','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4596,235,'Reading','RDG','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4597,235,'Redcar and Cleveland','RCC','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4598,235,'Renfrewshire','RFW','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4599,235,'Rhondda Cynon Taf','RCT','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4600,235,'Rochdale','RCH','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4601,235,'Rotherham','ROT','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4602,235,'Royal Borough of Greenwich','GRE','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4603,235,'Royal Borough of Kensington and Chelsea','KEC','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4604,235,'Royal Borough of Kingston upon Thames','KTT','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4605,235,'Rutland','RUT','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4606,235,'Saint Helena','SH-HL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4607,235,'Salford','SLF','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4608,235,'Sandwell','SAW','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4609,235,'Scotland','SCT','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4610,235,'Scottish Borders','SCB','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4611,235,'Sefton','SFT','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4612,235,'Sheffield','SHF','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4613,235,'Shetland Islands','ZET','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4614,235,'Shropshire','SHR','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4615,235,'Slough','SLG','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4616,235,'Solihull','SOL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4617,235,'Somerset','SOM','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4618,235,'South Ayrshire','SAY','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4619,235,'South Gloucestershire','SGC','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4620,235,'South Lanarkshire','SLK','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4621,235,'South Tyneside','STY','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4622,235,'Southend-on-Sea','SOS','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4623,235,'St Helens','SHN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4624,235,'Staffordshire','STS','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4625,235,'Stirling','STG','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4626,235,'Stockport','SKP','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4627,235,'Stockton-on-Tees','STT','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4628,235,'Strabane District Council','STB','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4629,235,'Suffolk','SFK','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4630,235,'Surrey','SRY','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4631,235,'Swindon','SWD','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4632,235,'Tameside','TAM','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4633,235,'Telford and Wrekin','TFW','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4634,235,'Thurrock','THR','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4635,235,'Torbay','TOB','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4636,235,'Torfaen','TOF','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4637,235,'Trafford','TRF','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4638,235,'United Kingdom','UKM','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4639,235,'Vale of Glamorgan','VGL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4640,235,'Wakefield','WKF','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4641,235,'Wales','WLS','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4642,235,'Walsall','WLL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4643,235,'Warrington','WRT','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4644,235,'Warwickshire','WAR','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4645,235,'West Berkshire','WBK','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4646,235,'West Dunbartonshire','WDU','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4647,235,'West Lothian','WLN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4648,235,'West Sussex','WSX','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4649,235,'Wiltshire','WIL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4650,235,'Windsor and Maidenhead','WNM','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4651,235,'Wirral','WRL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4652,235,'Wokingham','WOK','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4653,235,'Worcestershire','WOR','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4654,235,'Wrexham County Borough','WRX','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4655,236,'Alabama','AL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4656,236,'Alaska','AK','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4657,236,'American Samoa','AS','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4658,236,'Arizona','AZ','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4659,236,'Arkansas','AR','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4660,236,'Baker Island','UM-81','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4661,236,'California','CA','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4662,236,'Colorado','CO','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4663,236,'Connecticut','CT','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4664,236,'Delaware','DE','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4665,236,'District of Columbia','DC','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4666,236,'Florida','FL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4667,236,'Georgia','GA','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4668,236,'Guam','GU','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4669,236,'Hawaii','HI','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4670,236,'Howland Island','UM-84','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4671,236,'Idaho','ID','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4672,236,'Illinois','IL','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4673,236,'Indiana','IN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4674,236,'Iowa','IA','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4675,236,'Jarvis Island','UM-86','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4676,236,'Johnston Atoll','UM-67','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4677,236,'Kansas','KS','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4678,236,'Kentucky','KY','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4679,236,'Kingman Reef','UM-89','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4680,236,'Louisiana','LA','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4681,236,'Maine','ME','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4682,236,'Maryland','MD','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4683,236,'Massachusetts','MA','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4684,236,'Michigan','MI','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4685,236,'Midway Atoll','UM-71','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4686,236,'Minnesota','MN','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4687,236,'Mississippi','MS','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4688,236,'Missouri','MO','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4689,236,'Montana','MT','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4690,236,'Navassa Island','UM-76','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4691,236,'Nebraska','NE','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4692,236,'Nevada','NV','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4693,236,'New Hampshire','NH','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4694,236,'New Jersey','NJ','2026-05-04 03:51:58','2026-05-04 03:51:58'),
(4695,236,'New Mexico','NM','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4696,236,'New York','NY','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4697,236,'North Carolina','NC','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4698,236,'North Dakota','ND','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4699,236,'Northern Mariana Islands','MP','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4700,236,'Ohio','OH','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4701,236,'Oklahoma','OK','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4702,236,'Oregon','OR','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4703,236,'Palmyra Atoll','UM-95','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4704,236,'Pennsylvania','PA','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4705,236,'Puerto Rico','PR','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4706,236,'Rhode Island','RI','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4707,236,'South Carolina','SC','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4708,236,'South Dakota','SD','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4709,236,'Tennessee','TN','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4710,236,'Texas','TX','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4711,236,'United States Minor Outlying Islands','UM','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4712,236,'United States Virgin Islands','VI','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4713,236,'Utah','UT','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4714,236,'Vermont','VT','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4715,236,'Virginia','VA','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4716,236,'Wake Island','UM-79','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4717,236,'Washington','WA','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4718,236,'West Virginia','WV','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4719,236,'Wisconsin','WI','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4720,236,'Wyoming','WY','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4721,238,'Artigas Department','AR','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4722,238,'Canelones Department','CA','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4723,238,'Cerro Largo Department','CL','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4724,238,'Colonia Department','CO','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4725,238,'Durazno Department','DU','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4726,238,'Flores Department','FS','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4727,238,'Florida Department','FD','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4728,238,'Lavalleja Department','LA','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4729,238,'Maldonado Department','MA','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4730,238,'Montevideo Department','MO','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4731,238,'Paysandú Department','PA','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4732,238,'Río Negro Department','RN','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4733,238,'Rivera Department','RV','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4734,238,'Rocha Department','RO','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4735,238,'Salto Department','SA','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4736,238,'San José Department','SJ','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4737,238,'Soriano Department','SO','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4738,238,'Tacuarembó Department','TA','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4739,238,'Treinta y Tres Department','TT','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4740,239,'Andijan Region','AN','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4741,239,'Bukhara Region','BU','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4742,239,'Fergana Region','FA','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4743,239,'Jizzakh Region','JI','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4744,239,'Karakalpakstan','QR','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4745,239,'Namangan Region','NG','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4746,239,'Navoiy Region','NW','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4747,239,'Qashqadaryo Region','QA','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4748,239,'Samarqand Region','SA','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4749,239,'Sirdaryo Region','SI','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4750,239,'Surxondaryo Region','SU','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4751,239,'Tashkent','TK','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4752,239,'Tashkent Region','TO','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4753,239,'Xorazm Region','XO','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4754,240,'Malampa','MAP','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4755,240,'Penama','PAM','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4756,240,'Sanma','SAM','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4757,240,'Shefa','SEE','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4758,240,'Tafea','TAE','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4759,240,'Torba','TOB','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4760,242,'Amazonas','Z','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4761,242,'Anzoátegui','B','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4762,242,'Apure','C','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4763,242,'Aragua','D','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4764,242,'Barinas','E','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4765,242,'Bolívar','F','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4766,242,'Capital District','A','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4767,242,'Carabobo','G','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4768,242,'Cojedes','H','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4769,242,'Delta Amacuro','Y','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4770,242,'Falcón','I','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4771,242,'Federal Dependencies of Venezuela','W','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4772,242,'Guárico','J','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4773,242,'Lara','K','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4774,242,'Mérida','L','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4775,242,'Miranda','M','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4776,242,'Monagas','N','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4777,242,'Nueva Esparta','O','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4778,242,'Portuguesa','P','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4779,242,'Sucre','R','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4780,242,'Táchira','S','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4781,242,'Trujillo','T','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4782,242,'Vargas','X','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4783,242,'Yaracuy','U','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4784,242,'Zulia','V','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4785,243,'An Giang','44','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4786,243,'Bà Rịa-Vũng Tàu','43','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4787,243,'Bắc Giang','54','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4788,243,'Bắc Kạn','53','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4789,243,'Bạc Liêu','55','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4790,243,'Bắc Ninh','56','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4791,243,'Bến Tre','50','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4792,243,'Bình Dương','57','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4793,243,'Bình Định','31','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4794,243,'Bình Phước','58','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4795,243,'Bình Thuận','40','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4796,243,'Cà Mau','59','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4797,243,'Cần Thơ','CT','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4798,243,'Cao Bằng','04','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4799,243,'Đà Nẵng','DN','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4800,243,'Đắk Lắk','33','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4801,243,'Đắk Nông','72','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4802,243,'Điện Biên','71','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4803,243,'Đồng Nai','39','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4804,243,'Đồng Tháp','45','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4805,243,'Gia Lai','30','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4806,243,'Hà Giang','03','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4807,243,'Hà Nam','63','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4808,243,'Hà Nội','HN','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4809,243,'Hà Tĩnh','23','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4810,243,'Hải Dương','61','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4811,243,'Hải Phòng','HP','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4812,243,'Hậu Giang','73','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4813,243,'Hồ Chí Minh','SG','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4814,243,'Hòa Bình','14','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4815,243,'Hưng Yên','66','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4816,243,'Khánh Hòa','34','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4817,243,'Kiên Giang','47','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4818,243,'Kon Tum','28','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4819,243,'Lai Châu','01','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4820,243,'Lâm Đồng','35','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4821,243,'Lạng Sơn','09','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4822,243,'Lào Cai','02','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4823,243,'Long An','41','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4824,243,'Nam Định','67','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4825,243,'Nghệ An','22','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4826,243,'Ninh Bình','18','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4827,243,'Ninh Thuận','36','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4828,243,'Phú Thọ','68','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4829,243,'Phú Yên','32','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4830,243,'Quảng Bình','24','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4831,243,'Quảng Nam','27','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4832,243,'Quảng Ngãi','29','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4833,243,'Quảng Ninh','13','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4834,243,'Quảng Trị','25','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4835,243,'Sóc Trăng','52','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4836,243,'Sơn La','05','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4837,243,'Tây Ninh','37','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4838,243,'Thái Bình','20','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4839,243,'Thái Nguyên','69','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4840,243,'Thanh Hóa','21','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4841,243,'Thừa Thiên-Huế','26','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4842,243,'Tiền Giang','46','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4843,243,'Trà Vinh','51','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4844,243,'Tuyên Quang','07','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4845,243,'Vĩnh Long','49','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4846,243,'Vĩnh Phúc','70','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4847,243,'Yên Bái','06','2026-05-04 03:51:59','2026-05-04 03:51:59'),
(4848,248,'\'Adan Governorate','AD','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4849,248,'\'Amran Governorate','AM','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4850,248,'Abyan Governorate','AB','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4851,248,'Al Bayda\' Governorate','BA','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4852,248,'Al Hudaydah Governorate','HU','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4853,248,'Al Jawf Governorate','JA','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4854,248,'Al Mahrah Governorate','MR','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4855,248,'Al Mahwit Governorate','MW','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4856,248,'Dhamar Governorate','DH','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4857,248,'Hadhramaut Governorate','HD','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4858,248,'Hajjah Governorate','HJ','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4859,248,'Ibb Governorate','IB','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4860,248,'Lahij Governorate','LA','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4861,248,'Ma\'rib Governorate','MA','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4862,248,'Raymah Governorate','RA','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4863,248,'Saada Governorate','SD','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4864,248,'Sana\'a','SA','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4865,248,'Sana\'a Governorate','SN','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4866,248,'Shabwah Governorate','SH','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4867,248,'Socotra Governorate','SU','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4868,248,'Ta\'izz Governorate','TA','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4869,249,'Central Province','02','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4870,249,'Copperbelt Province','08','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4871,249,'Eastern Province','03','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4872,249,'Luapula Province','04','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4873,249,'Lusaka Province','09','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4874,249,'Muchinga Province','10','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4875,249,'Northern Province','05','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4876,249,'Northwestern Province','06','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4877,249,'Southern Province','07','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4878,249,'Western Province','01','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4879,250,'Bulawayo Province','BU','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4880,250,'Harare Province','HA','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4881,250,'Manicaland','MA','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4882,250,'Mashonaland Central Province','MC','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4883,250,'Mashonaland East Province','ME','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4884,250,'Mashonaland West Province','MW','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4885,250,'Masvingo Province','MV','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4886,250,'Matabeleland North Province','MN','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4887,250,'Matabeleland South Province','MS','2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4888,250,'Midlands Province','MI','2026-05-04 03:52:00','2026-05-04 03:52:00');
/*!40000 ALTER TABLE `lunar_states` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_taggables`
--

DROP TABLE IF EXISTS `lunar_taggables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_taggables` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL,
  `taggable_type` varchar(255) NOT NULL,
  `taggable_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_taggables_tag_id_foreign` (`tag_id`),
  KEY `lunar_taggables_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`),
  CONSTRAINT `lunar_taggables_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `lunar_tags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_taggables`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_taggables` WRITE;
/*!40000 ALTER TABLE `lunar_taggables` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_taggables` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_tags`
--

DROP TABLE IF EXISTS `lunar_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_tags_value_index` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_tags`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_tags` WRITE;
/*!40000 ALTER TABLE `lunar_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_tags` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_tax_classes`
--

DROP TABLE IF EXISTS `lunar_tax_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_tax_classes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_tax_classes_default_index` (`default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_tax_classes`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_tax_classes` WRITE;
/*!40000 ALTER TABLE `lunar_tax_classes` DISABLE KEYS */;
INSERT INTO `lunar_tax_classes` VALUES
(1,'Default Tax Class',1,'2026-05-04 03:52:00','2026-05-04 03:52:00');
/*!40000 ALTER TABLE `lunar_tax_classes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_tax_rate_amounts`
--

DROP TABLE IF EXISTS `lunar_tax_rate_amounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_tax_rate_amounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_class_id` bigint(20) unsigned DEFAULT NULL,
  `tax_rate_id` bigint(20) unsigned DEFAULT NULL,
  `percentage` decimal(7,3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_tax_rate_amounts_tax_class_id_foreign` (`tax_class_id`),
  KEY `lunar_tax_rate_amounts_tax_rate_id_foreign` (`tax_rate_id`),
  KEY `lunar_tax_rate_amounts_percentage_index` (`percentage`),
  CONSTRAINT `lunar_tax_rate_amounts_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `lunar_tax_classes` (`id`),
  CONSTRAINT `lunar_tax_rate_amounts_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `lunar_tax_rates` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_tax_rate_amounts`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_tax_rate_amounts` WRITE;
/*!40000 ALTER TABLE `lunar_tax_rate_amounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_tax_rate_amounts` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_tax_rates`
--

DROP TABLE IF EXISTS `lunar_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_tax_rates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_zone_id` bigint(20) unsigned DEFAULT NULL,
  `priority` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_tax_rates_tax_zone_id_foreign` (`tax_zone_id`),
  KEY `lunar_tax_rates_priority_index` (`priority`),
  CONSTRAINT `lunar_tax_rates_tax_zone_id_foreign` FOREIGN KEY (`tax_zone_id`) REFERENCES `lunar_tax_zones` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_tax_rates`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_tax_rates` WRITE;
/*!40000 ALTER TABLE `lunar_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_tax_zone_countries`
--

DROP TABLE IF EXISTS `lunar_tax_zone_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_tax_zone_countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_zone_id` bigint(20) unsigned DEFAULT NULL,
  `country_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_tax_zone_countries_tax_zone_id_foreign` (`tax_zone_id`),
  KEY `lunar_tax_zone_countries_country_id_foreign` (`country_id`),
  CONSTRAINT `lunar_tax_zone_countries_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `lunar_countries` (`id`),
  CONSTRAINT `lunar_tax_zone_countries_tax_zone_id_foreign` FOREIGN KEY (`tax_zone_id`) REFERENCES `lunar_tax_zones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_tax_zone_countries`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_tax_zone_countries` WRITE;
/*!40000 ALTER TABLE `lunar_tax_zone_countries` DISABLE KEYS */;
INSERT INTO `lunar_tax_zone_countries` VALUES
(1,1,1,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(2,1,2,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(3,1,3,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(4,1,4,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(5,1,5,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(6,1,6,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(7,1,7,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(8,1,8,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(9,1,9,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(10,1,10,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(11,1,11,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(12,1,12,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(13,1,13,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(14,1,14,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(15,1,15,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(16,1,16,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(17,1,17,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(18,1,18,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(19,1,19,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(20,1,20,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(21,1,21,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(22,1,22,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(23,1,23,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(24,1,24,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(25,1,25,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(26,1,26,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(27,1,27,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(28,1,28,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(29,1,29,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(30,1,30,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(31,1,31,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(32,1,32,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(33,1,33,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(34,1,34,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(35,1,35,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(36,1,36,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(37,1,37,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(38,1,38,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(39,1,39,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(40,1,40,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(41,1,41,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(42,1,42,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(43,1,43,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(44,1,44,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(45,1,45,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(46,1,46,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(47,1,47,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(48,1,48,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(49,1,49,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(50,1,50,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(51,1,51,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(52,1,52,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(53,1,53,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(54,1,54,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(55,1,55,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(56,1,56,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(57,1,57,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(58,1,58,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(59,1,59,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(60,1,60,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(61,1,61,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(62,1,62,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(63,1,63,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(64,1,64,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(65,1,65,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(66,1,66,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(67,1,67,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(68,1,68,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(69,1,69,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(70,1,70,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(71,1,71,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(72,1,72,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(73,1,73,'2026-05-04 03:52:00','2026-05-04 03:52:00'),
(74,1,74,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(75,1,75,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(76,1,76,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(77,1,77,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(78,1,78,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(79,1,79,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(80,1,80,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(81,1,81,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(82,1,82,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(83,1,83,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(84,1,84,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(85,1,85,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(86,1,86,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(87,1,87,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(88,1,88,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(89,1,89,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(90,1,90,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(91,1,91,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(92,1,92,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(93,1,93,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(94,1,94,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(95,1,95,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(96,1,96,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(97,1,97,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(98,1,98,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(99,1,99,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(100,1,100,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(101,1,101,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(102,1,102,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(103,1,103,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(104,1,104,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(105,1,105,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(106,1,106,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(107,1,107,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(108,1,108,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(109,1,109,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(110,1,110,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(111,1,111,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(112,1,112,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(113,1,113,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(114,1,114,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(115,1,115,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(116,1,116,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(117,1,117,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(118,1,118,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(119,1,119,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(120,1,120,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(121,1,121,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(122,1,122,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(123,1,123,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(124,1,124,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(125,1,125,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(126,1,126,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(127,1,127,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(128,1,128,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(129,1,129,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(130,1,130,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(131,1,131,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(132,1,132,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(133,1,133,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(134,1,134,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(135,1,135,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(136,1,136,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(137,1,137,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(138,1,138,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(139,1,139,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(140,1,140,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(141,1,141,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(142,1,142,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(143,1,143,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(144,1,144,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(145,1,145,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(146,1,146,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(147,1,147,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(148,1,148,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(149,1,149,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(150,1,150,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(151,1,151,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(152,1,152,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(153,1,153,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(154,1,154,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(155,1,155,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(156,1,156,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(157,1,157,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(158,1,158,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(159,1,159,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(160,1,160,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(161,1,161,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(162,1,162,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(163,1,163,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(164,1,164,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(165,1,165,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(166,1,166,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(167,1,167,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(168,1,168,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(169,1,169,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(170,1,170,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(171,1,171,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(172,1,172,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(173,1,173,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(174,1,174,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(175,1,175,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(176,1,176,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(177,1,177,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(178,1,178,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(179,1,179,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(180,1,180,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(181,1,181,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(182,1,182,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(183,1,183,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(184,1,184,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(185,1,185,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(186,1,186,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(187,1,187,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(188,1,188,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(189,1,189,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(190,1,190,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(191,1,191,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(192,1,192,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(193,1,193,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(194,1,194,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(195,1,195,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(196,1,196,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(197,1,197,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(198,1,198,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(199,1,199,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(200,1,200,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(201,1,201,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(202,1,202,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(203,1,203,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(204,1,204,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(205,1,205,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(206,1,206,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(207,1,207,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(208,1,208,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(209,1,209,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(210,1,210,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(211,1,211,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(212,1,212,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(213,1,213,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(214,1,214,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(215,1,215,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(216,1,216,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(217,1,217,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(218,1,218,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(219,1,219,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(220,1,220,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(221,1,221,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(222,1,222,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(223,1,223,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(224,1,224,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(225,1,225,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(226,1,226,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(227,1,227,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(228,1,228,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(229,1,229,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(230,1,230,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(231,1,231,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(232,1,232,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(233,1,233,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(234,1,234,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(235,1,235,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(236,1,236,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(237,1,237,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(238,1,238,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(239,1,239,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(240,1,240,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(241,1,241,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(242,1,242,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(243,1,243,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(244,1,244,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(245,1,245,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(246,1,246,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(247,1,247,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(248,1,248,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(249,1,249,'2026-05-04 03:52:01','2026-05-04 03:52:01'),
(250,1,250,'2026-05-04 03:52:01','2026-05-04 03:52:01');
/*!40000 ALTER TABLE `lunar_tax_zone_countries` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_tax_zone_customer_groups`
--

DROP TABLE IF EXISTS `lunar_tax_zone_customer_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_tax_zone_customer_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_zone_id` bigint(20) unsigned DEFAULT NULL,
  `customer_group_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_tax_zone_customer_groups_tax_zone_id_foreign` (`tax_zone_id`),
  KEY `lunar_tax_zone_customer_groups_customer_group_id_foreign` (`customer_group_id`),
  CONSTRAINT `lunar_tax_zone_customer_groups_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `lunar_customer_groups` (`id`),
  CONSTRAINT `lunar_tax_zone_customer_groups_tax_zone_id_foreign` FOREIGN KEY (`tax_zone_id`) REFERENCES `lunar_tax_zones` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_tax_zone_customer_groups`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_tax_zone_customer_groups` WRITE;
/*!40000 ALTER TABLE `lunar_tax_zone_customer_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_tax_zone_customer_groups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_tax_zone_postcodes`
--

DROP TABLE IF EXISTS `lunar_tax_zone_postcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_tax_zone_postcodes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_zone_id` bigint(20) unsigned DEFAULT NULL,
  `country_id` bigint(20) unsigned DEFAULT NULL,
  `postcode` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_tax_zone_postcodes_tax_zone_id_foreign` (`tax_zone_id`),
  KEY `lunar_tax_zone_postcodes_country_id_foreign` (`country_id`),
  KEY `lunar_tax_zone_postcodes_postcode_index` (`postcode`),
  CONSTRAINT `lunar_tax_zone_postcodes_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `lunar_countries` (`id`),
  CONSTRAINT `lunar_tax_zone_postcodes_tax_zone_id_foreign` FOREIGN KEY (`tax_zone_id`) REFERENCES `lunar_tax_zones` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_tax_zone_postcodes`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_tax_zone_postcodes` WRITE;
/*!40000 ALTER TABLE `lunar_tax_zone_postcodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_tax_zone_postcodes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_tax_zone_states`
--

DROP TABLE IF EXISTS `lunar_tax_zone_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_tax_zone_states` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_zone_id` bigint(20) unsigned DEFAULT NULL,
  `state_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_tax_zone_states_tax_zone_id_foreign` (`tax_zone_id`),
  KEY `lunar_tax_zone_states_state_id_foreign` (`state_id`),
  CONSTRAINT `lunar_tax_zone_states_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `lunar_states` (`id`),
  CONSTRAINT `lunar_tax_zone_states_tax_zone_id_foreign` FOREIGN KEY (`tax_zone_id`) REFERENCES `lunar_tax_zones` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_tax_zone_states`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_tax_zone_states` WRITE;
/*!40000 ALTER TABLE `lunar_tax_zone_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_tax_zone_states` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_tax_zones`
--

DROP TABLE IF EXISTS `lunar_tax_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_tax_zones` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `zone_type` varchar(255) NOT NULL,
  `price_display` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `default` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_tax_zones_zone_type_index` (`zone_type`),
  KEY `lunar_tax_zones_active_index` (`active`),
  KEY `lunar_tax_zones_default_index` (`default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_tax_zones`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_tax_zones` WRITE;
/*!40000 ALTER TABLE `lunar_tax_zones` DISABLE KEYS */;
INSERT INTO `lunar_tax_zones` VALUES
(1,'Default Tax Zone','country','tax_exclusive',1,1,'2026-05-04 03:52:00','2026-05-04 03:52:00');
/*!40000 ALTER TABLE `lunar_tax_zones` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_transactions`
--

DROP TABLE IF EXISTS `lunar_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_transaction_id` bigint(20) unsigned DEFAULT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `success` tinyint(1) NOT NULL,
  `type` enum('refund','intent','capture') NOT NULL DEFAULT 'capture',
  `driver` varchar(255) NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  `reference` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `card_type` varchar(25) NOT NULL,
  `last_four` varchar(255) DEFAULT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `captured_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_transactions_order_id_foreign` (`order_id`),
  KEY `lunar_transactions_success_index` (`success`),
  KEY `lunar_transactions_amount_index` (`amount`),
  KEY `lunar_transactions_reference_index` (`reference`),
  KEY `lunar_transactions_card_type_index` (`card_type`),
  KEY `lunar_transactions_parent_transaction_id_foreign` (`parent_transaction_id`),
  KEY `lunar_transactions_captured_at_index` (`captured_at`),
  KEY `lunar_transactions_type_index` (`type`),
  CONSTRAINT `lunar_transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `lunar_orders` (`id`),
  CONSTRAINT `lunar_transactions_parent_transaction_id_foreign` FOREIGN KEY (`parent_transaction_id`) REFERENCES `lunar_transactions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_transactions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_transactions` WRITE;
/*!40000 ALTER TABLE `lunar_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_transactions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lunar_urls`
--

DROP TABLE IF EXISTS `lunar_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_urls` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` bigint(20) unsigned NOT NULL,
  `element_type` varchar(255) NOT NULL,
  `element_id` bigint(20) unsigned NOT NULL,
  `slug` varchar(255) NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunar_urls_language_id_foreign` (`language_id`),
  KEY `lunar_urls_element_type_element_id_index` (`element_type`,`element_id`),
  KEY `lunar_urls_slug_index` (`slug`),
  KEY `lunar_urls_default_index` (`default`),
  CONSTRAINT `lunar_urls_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `lunar_languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_urls`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lunar_urls` WRITE;
/*!40000 ALTER TABLE `lunar_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunar_urls` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_uuid_unique` (`uuid`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'0001_01_01_000000_create_users_table',1),
(2,'0001_01_01_000001_create_cache_table',1),
(3,'0001_01_01_000002_create_jobs_table',1),
(4,'2021_07_29_100000_create_channels_table',1),
(5,'2021_07_29_100001_create_languages_table',1),
(6,'2021_07_29_100002_create_channelables_table',1),
(7,'2021_07_29_100003_create_currencies_table',1),
(8,'2021_07_29_100004_create_attribute_groups_table',1),
(9,'2021_07_29_100005_create_attributes_table',1),
(10,'2021_07_29_100006_create_attributables_table',1),
(11,'2021_07_29_100010_create_product_types_table',1),
(12,'2021_07_29_100011_create_tax_classes_table',1),
(13,'2021_07_29_100012_create_tax_zones_table',1),
(14,'2021_07_29_100020_create_products_table',1),
(15,'2021_07_29_100025_create_product_associations_table',1),
(16,'2021_07_29_100030_create_product_variants_table',1),
(17,'2021_07_29_100040_create_customer_groups_table',1),
(18,'2021_07_29_100041_create_customer_group_product_table',1),
(19,'2021_07_29_100041_create_customers_table',1),
(20,'2021_07_29_100042_create_customer_customer_group_table',1),
(21,'2021_07_29_100042_create_customer_user_table',1),
(22,'2021_07_29_100050_create_prices_table',1),
(23,'2021_07_30_100000_create_countries_table',1),
(24,'2021_07_30_100001_create_states_table',1),
(25,'2021_07_30_100002_create_addresses_table',1),
(26,'2021_07_30_100003_create_tax_zone_countries_table',1),
(27,'2021_07_30_100004_create_tax_zone_states_table',1),
(28,'2021_07_30_100005_create_tax_zone_postcodes_table',1),
(29,'2021_07_30_100006_create_tax_zone_customer_groups_table',1),
(30,'2021_07_30_100007_create_tax_rates_table',1),
(31,'2021_07_30_100008_create_tax_rate_amounts_table',1),
(32,'2021_08_10_101547_create_media_table',1),
(33,'2021_08_10_102000_create_collection_groups_table',1),
(34,'2021_08_10_103000_create_collections_table',1),
(35,'2021_08_10_103001_create_collection_product_table',1),
(36,'2021_08_10_103002_create_collection_customer_group_table',1),
(37,'2021_08_17_142630_create_activity_log_table',1),
(38,'2021_08_19_110000_create_staff_table',1),
(39,'2021_09_09_100000_create_product_options_table',1),
(40,'2021_09_09_100001_create_product_option_values_table',1),
(41,'2021_09_09_100010_create_product_option_value_product_variant_table',1),
(42,'2021_09_10_100000_create_tags_table',1),
(43,'2021_09_10_100001_create_taggables_table',1),
(44,'2021_09_29_100000_create_urls_table',1),
(45,'2021_10_01_090000_create_orders_table',1),
(46,'2021_10_01_090001_create_order_lines_table',1),
(47,'2021_10_01_090002_create_order_addresses_table',1),
(48,'2021_10_01_090003_create_transactions_table',1),
(49,'2021_10_01_100000_create_carts_table',1),
(50,'2021_10_01_100001_create_cart_addresses_table',1),
(51,'2021_10_01_100001_create_cart_lines_table',1),
(52,'2022_01_12_100000_add_columns_to_attributes_table',1),
(53,'2022_01_12_100001_add_attribute_data_to_product_variants_table',1),
(54,'2022_01_12_100002_add_default_column_to_tax_classes_table',1),
(55,'2022_01_18_100000_add_starts_ends_at_to_channelables_table',1),
(56,'2022_01_18_100001_add_customer_id_to_orders_table',1),
(57,'2022_03_11_100000_remove_formatting_columns_from_currencies_table',1),
(58,'2022_03_17_100000_add_fields_to_transactions_table',1),
(59,'2022_03_29_100000_update_quantity_on_cart_lines_table',1),
(60,'2022_03_30_100000_update_quantity_on_order_lines_table',1),
(61,'2022_05_10_100000_fix_last_four_on_transactions_table',1),
(62,'2022_05_19_100000_add_attributes_to_customers_table',1),
(63,'2022_06_29_100000_create_assets_table',1),
(64,'2022_07_15_100000_set_last_four_to_nullable_on_transactions',1),
(65,'2022_07_23_215417_add_handle_position_to_product_options_table',1),
(66,'2022_07_23_215418_add_position_to_product_option_values_table',1),
(67,'2022_08_09_100000_create_media_variant_table',1),
(68,'2022_08_09_100001_create_brands_table',1),
(69,'2022_08_09_100002_add_brand_id_to_products_table',1),
(70,'2022_09_05_100000_add_account_ref_to_customers_table',1),
(71,'2022_09_08_100000_add_position_to_media_product_variant_table',1),
(72,'2022_11_13_110447_update_prices_on_prices_table',1),
(73,'2022_11_13_111734_update_prices_on_orders_table',1),
(74,'2022_11_13_111744_update_prices_on_order_lines_table',1),
(75,'2022_11_18_100000_create_discounts_table',1),
(76,'2022_11_18_100005_create_cart_line_discount_table',1),
(77,'2022_11_18_100010_create_brand_discount_table',1),
(78,'2022_11_18_100015_create_customer_group_discount_table',1),
(79,'2022_11_18_100020_create_discount_collections_table',1),
(80,'2022_11_18_100030_create_discount_purchasables_table',1),
(81,'2022_12_09_100000_add_new_customer_flag_to_orders_table',1),
(82,'2023_03_03_100001_add_discount_breakdown_to_orders_table',1),
(83,'2023_03_03_100001_add_max_uses_per_user_to_discounts_table',1),
(84,'2023_03_13_100030_create_discount_user_table',1),
(85,'2023_04_19_100000_add_shipping_breakdown_to_orders_table',1),
(86,'2023_05_20_100000_add_customer_id_to_carts_table',1),
(87,'2023_05_26_100000_add_label_to_product_options_table',1),
(88,'2023_05_31_100000_create_permission_tables',1),
(89,'2023_06_07_100000_add_cart_id_to_orders_table',1),
(90,'2023_08_16_100013_add_attributes_to_brands_table',1),
(91,'2023_09_21_100000_set_section_to_nullable_on_attributes',1),
(92,'2023_10_06_100010_add_type_to_brand_discount_table',1),
(93,'2023_10_06_100010_add_type_to_collection_discount_table',1),
(94,'2023_12_18_100000_add_quantity_increment_min_quantity_to_product_variants_table',1),
(95,'2024_01_04_100013_add_attributes_to_customer_groups_table',1),
(96,'2024_01_11_100000_add_description_to_attributes_table',1),
(97,'2024_01_16_100000_create_product_product_option_table',1),
(98,'2024_01_16_100010_update_product_option_relations',1),
(99,'2024_01_16_100020_remove_position_from_product_options_table',1),
(100,'2024_01_16_100030_add_and_set_shared_to_product_options_table',1),
(101,'2024_01_24_100000_update_product_option_handle_fk',1),
(102,'2024_01_29_100000_update_nullable_currency_on_prices_table',1),
(103,'2024_01_31_100000_update_tier_to_min_quantity_on_prices_table',1),
(104,'2024_03_15_100000_remap_polymorphic_relations',1),
(105,'2024_03_26_100000_create_brand_collection_table',1),
(106,'2024_04_23_100000_add_soft_deletes_to_carts_table',1),
(107,'2024_05_25_100000_update_collection_group_handle_unique',1),
(108,'2024_07_23_100000_add_fingerprint_to_orders_table',1),
(109,'2024_11_25_110000_rename_firstname_column_on_staff_table',1),
(110,'2024_11_25_110001_rename_lastname_column_on_staff_table',1),
(111,'2025_02_07_100000_create_customer_discount_table',1),
(112,'2025_02_14_100000_add_tax_identifier_to_addresses_table',1),
(113,'2025_02_14_100010_add_tax_identifier_to_order_addresses_table',1),
(114,'2025_02_14_100020_add_tax_identifier_to_cart_addresses_table',1),
(115,'2025_02_14_100030_rename_vat_no_at_customers_table',1),
(116,'2025_04_28_100000_add_two_factor_columns_to_staff_table',1),
(117,'2025_06_18_100000_add_sync_prices_to_currencies_table',1),
(118,'2025_06_18_100000_rename_discount_purchasables_table',1),
(119,'2025_08_05_083800_update_delivery_instructions_columns',1),
(120,'2025_08_14_164000_switch_to_jsonb',1),
(121,'2025_10_29_084000_add_missing_indexes_to_tables',1),
(122,'2025_11_12_005200_add_meta_to_product_options',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES
(1,'settings','web','2026-05-04 03:50:06','2026-05-04 03:50:06'),
(2,'settings:core','web','2026-05-04 03:50:06','2026-05-04 03:50:06'),
(3,'settings:manage-staff','web','2026-05-04 03:50:06','2026-05-04 03:50:06'),
(4,'settings:manage-attributes','web','2026-05-04 03:50:06','2026-05-04 03:50:06'),
(5,'catalog:manage-products','web','2026-05-04 03:50:06','2026-05-04 03:50:06'),
(6,'catalog:manage-collections','web','2026-05-04 03:50:06','2026-05-04 03:50:06'),
(7,'sales:manage-orders','web','2026-05-04 03:50:06','2026-05-04 03:50:06'),
(8,'sales:manage-customers','web','2026-05-04 03:50:06','2026-05-04 03:50:06'),
(9,'sales:manage-discounts','web','2026-05-04 03:50:06','2026-05-04 03:50:06');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES
(1,'admin','web','2026-05-04 03:50:06','2026-05-04 03:50:06'),
(2,'staff','web','2026-05-04 03:50:06','2026-05-04 03:50:06');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES
('Ey6Ay0hEYAoz3Rcoi1VOBZGdrHODJCSb1tmlwsSB',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36','eyJfdG9rZW4iOiJNdkFXQldzYk1YT1VVaXlrY3JtR2NhMFdZS1dxUjVSaXR4MWFVSVc1IiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==',1777850964);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-05-03 19:52:49
