-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: supermarket_db
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add stores',7,'add_stores'),(26,'Can change stores',7,'change_stores'),(27,'Can delete stores',7,'delete_stores'),(28,'Can view stores',7,'view_stores'),(29,'Can add brands',8,'add_brands'),(30,'Can change brands',8,'change_brands'),(31,'Can delete brands',8,'delete_brands'),(32,'Can view brands',8,'view_brands'),(33,'Can add deals',9,'add_deals'),(34,'Can change deals',9,'change_deals'),(35,'Can delete deals',9,'delete_deals'),(36,'Can view deals',9,'view_deals'),(37,'Can add user',10,'add_user'),(38,'Can change user',10,'change_user'),(39,'Can delete user',10,'delete_user'),(40,'Can view user',10,'view_user'),(41,'Can add Token',11,'add_token'),(42,'Can change Token',11,'change_token'),(43,'Can delete Token',11,'delete_token'),(44,'Can view Token',11,'view_token');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$qnswk9dDqsWU$xAGWPZo76Crxs1GJwHS2J/B7USML+1IJzpsxQTG42h0=','2020-12-13 21:55:10.091445',1,'ejiny','','','ejiny@hi2.in',1,1,'2020-12-11 06:50:09.800255');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands_brands`
--

DROP TABLE IF EXISTS `brands_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands_brands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `logo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands_brands`
--

LOCK TABLES `brands_brands` WRITE;
/*!40000 ALTER TABLE `brands_brands` DISABLE KEYS */;
INSERT INTO `brands_brands` VALUES (1,'Almacenes Exito','https://es.wikipedia.org/wiki/%C3%89xito_(supermercado)#/media/Archivo:Grupo_Exito_logo.svg');
/*!40000 ALTER TABLE `brands_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deals_deals`
--

DROP TABLE IF EXISTS `deals_deals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deals_deals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `store` int NOT NULL,
  `image` varchar(300) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deals_deals`
--

LOCK TABLES `deals_deals` WRITE;
/*!40000 ALTER TABLE `deals_deals` DISABLE KEYS */;
INSERT INTO `deals_deals` VALUES (1,'Bicicleta Roadmastaer Jumper 29 shimano Verde Menta',32,'https://exitocol.vtexassets.com/arquivos/ids/3791393-1200-auto?width=1200&height=auto&aspect=true',469900),(2,'Bicicleta Roadmastaer Jumper 29 shimano Negro Verde',1,'https://exitocol.vtexassets.com/arquivos/ids/3791393-1200-auto?width=1200&height=auto&aspect=true',679900);
/*!40000 ALTER TABLE `deals_deals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-12-11 07:30:44.701276','1','asda',1,'[{\"added\": {}}]',7,1),(2,'2020-12-11 07:31:38.933945','1','exito_parque_arboleda',2,'[{\"changed\": {\"fields\": [\"Brand\", \"Identifier\", \"Name\", \"Thumbnail\", \"Address\"]}}]',7,1),(3,'2020-12-11 23:52:55.139524','1','Almacenes Exito',1,'[{\"added\": {}}]',8,1),(4,'2020-12-12 00:17:57.799351','1','Bicicleta Roadmastaer Jumper 29 shimano Negro Nara',1,'[{\"added\": {}}]',9,1),(5,'2020-12-12 01:59:24.069532','1','Bicicleta Roadmastaer Jumper 29 shimano Negro Nara',3,'',9,1),(6,'2020-12-12 01:59:45.685041','2','asdas',1,'[{\"added\": {}}]',9,1),(7,'2020-12-12 02:01:47.115639','2','asdas',2,'[{\"changed\": {\"fields\": [\"Price\"]}}]',9,1),(8,'2020-12-12 04:33:47.705184','2','asdas',3,'',9,1),(9,'2020-12-12 04:56:08.638523','3','dsada',1,'[{\"added\": {}}]',9,1),(10,'2020-12-12 04:57:51.994292','3','dsada',2,'[{\"changed\": {\"fields\": [\"Price\"]}}]',9,1),(11,'2020-12-12 05:18:04.631760','3','Bicicleta Roadmastaer Jumper 29 shimano Verde Menta',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\", \"Price\"]}}]',9,1),(12,'2020-12-12 05:19:22.262245','4','Bicicleta Roadmastaer Jumper 29 shimano Negro Verde',1,'[{\"added\": {}}]',9,1),(13,'2020-12-13 06:24:43.956273','1','0',3,'',10,1),(14,'2020-12-14 01:03:41.025011','2','dadsadas',1,'[{\"added\": {}}]',10,1),(15,'2020-12-14 01:58:47.501460','3','664D2jPnF5bT4ZmZ5Qx2H7SNSos2',3,'',10,1),(16,'2020-12-14 01:58:47.695777','2','dadsadas',3,'',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(11,'authtoken','token'),(8,'brands','brands'),(5,'contenttypes','contenttype'),(9,'deals','deals'),(6,'sessions','session'),(7,'stores','stores'),(10,'users','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-12-11 02:26:25.751568'),(2,'auth','0001_initial','2020-12-11 02:32:09.675643'),(3,'admin','0001_initial','2020-12-11 02:51:07.126305'),(4,'admin','0002_logentry_remove_auto_add','2020-12-11 02:55:47.371698'),(5,'admin','0003_logentry_add_action_flag_choices','2020-12-11 02:55:56.293090'),(6,'contenttypes','0002_remove_content_type_name','2020-12-11 02:59:00.910739'),(7,'auth','0002_alter_permission_name_max_length','2020-12-11 03:01:06.460027'),(8,'auth','0003_alter_user_email_max_length','2020-12-11 03:01:24.524197'),(9,'auth','0004_alter_user_username_opts','2020-12-11 03:01:30.822019'),(10,'auth','0005_alter_user_last_login_null','2020-12-11 03:02:51.811880'),(11,'auth','0006_require_contenttypes_0002','2020-12-11 03:02:59.955939'),(12,'auth','0007_alter_validators_add_error_messages','2020-12-11 03:03:08.937800'),(13,'auth','0008_alter_user_username_max_length','2020-12-11 03:05:21.926731'),(14,'auth','0009_alter_user_last_name_max_length','2020-12-11 03:07:12.397167'),(15,'auth','0010_alter_group_name_max_length','2020-12-11 03:07:58.043381'),(16,'auth','0011_update_proxy_permissions','2020-12-11 03:08:04.491795'),(17,'auth','0012_alter_user_first_name_max_length','2020-12-11 03:10:41.818211'),(18,'sessions','0001_initial','2020-12-11 03:12:22.479148'),(19,'stores','0001_initial','2020-12-11 06:47:51.626629'),(20,'stores','0002_auto_20201211_0706','2020-12-11 07:19:10.362360'),(21,'brands','0001_initial','2020-12-11 23:49:48.475412'),(22,'deals','0001_initial','2020-12-12 00:13:26.549335'),(23,'deals','0002_auto_20201212_0142','2020-12-12 01:47:23.341930'),(24,'deals','0003_auto_20201212_0157','2020-12-12 01:57:41.751409'),(25,'deals','0004_auto_20201212_0158','2020-12-12 01:58:42.664190'),(26,'deals','0005_auto_20201212_0444','2020-12-12 04:49:12.299604'),(27,'authtoken','0001_initial','2020-12-13 05:05:07.644236'),(28,'authtoken','0002_auto_20160226_1747','2020-12-13 05:09:48.394702'),(29,'users','0001_initial','2020-12-13 05:10:49.093948'),(30,'users','0002_remove_user_email','2020-12-13 05:26:24.565986'),(31,'users','0003_remove_user_name','2020-12-13 05:37:36.021507'),(32,'users','0004_auto_20201213_0549','2020-12-13 05:50:00.229714'),(33,'users','0005_user_email','2020-12-13 06:23:29.850537'),(34,'users','0006_remove_user_email','2020-12-13 17:47:09.321802'),(35,'users','0007_auto_20201213_1751','2020-12-13 17:52:47.133850'),(36,'users','0005_auto_20201213_2230','2020-12-13 22:30:48.190393'),(37,'users','0006_user_email','2020-12-13 22:39:40.972811'),(38,'users','0007_auto_20201213_2252','2020-12-13 22:53:22.489273'),(39,'users','0002_auto_20201214_0011','2020-12-14 00:11:29.762215'),(40,'users','0002_auto_20201214_0149','2020-12-14 01:52:41.278913');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('lnocfkudp06jevgatbly9780vl89f2kv','.eJxVjDsOwjAQBe_iGlnrz4pASc8ZLHs_OIAcKU4qxN0hUgpo38y8l0l5XWpau8xpZHM2zhx-t5LpIW0DfM_tNlma2jKPxW6K3Wm314nledndv4Oae_3WJSIjRDoqAEYC1eAJVUVAC0jwjoNXOqE4D5whBC5DRGTnh4KezPsD7684DQ:1koKSU:oa_bsKaZv0fhY3rbnw90X-0jOksd54SdqAW07-_yenI','2020-12-27 06:02:14.769398'),('p4cl2a6ebip7oe1ix5fbrsq6gszlhtz7','.eJxVjDsOwjAQBe_iGlnrz4pASc8ZLHs_OIAcKU4qxN0hUgpo38y8l0l5XWpau8xpZHM2zhx-t5LpIW0DfM_tNlma2jKPxW6K3Wm314nledndv4Oae_3WJSIjRDoqAEYC1eAJVUVAC0jwjoNXOqE4D5whBC5DRGTnh4KezPsD7684DQ:1koZKg:SBRrw8foq8VvgXbxE41Sdp2KaJlk0aCeYYPxJwE_2XY','2020-12-27 21:55:10.136840'),('w41e0mkq1xo5c2fqpwsan5pfeyp0i2tj','.eJxVjDsOwjAQBe_iGlnrz4pASc8ZLHs_OIAcKU4qxN0hUgpo38y8l0l5XWpau8xpZHM2zhx-t5LpIW0DfM_tNlma2jKPxW6K3Wm314nledndv4Oae_3WJSIjRDoqAEYC1eAJVUVAC0jwjoNXOqE4D5whBC5DRGTnh4KezPsD7684DQ:1knsCF:jbm2gyXOGXabQ-OZUjMOg67VcG5XMnVq-X4FelX7ENU','2020-12-25 23:51:35.567478'),('y0hcvy0boyyd1t261xk9wrtnbtf6nzr0','.eJxVjDsOwjAQBe_iGlnrz4pASc8ZLHs_OIAcKU4qxN0hUgpo38y8l0l5XWpau8xpZHM2zhx-t5LpIW0DfM_tNlma2jKPxW6K3Wm314nledndv4Oae_3WJSIjRDoqAEYC1eAJVUVAC0jwjoNXOqE4D5whBC5DRGTnh4KezPsD7684DQ:1kncGI:9K3EtpRAxrMQ554ZM8sZaPTO-bgnm-8yUE1Ihz6GQzM','2020-12-25 06:50:42.298515');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores_stores`
--

DROP TABLE IF EXISTS `stores_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stores_stores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` int DEFAULT NULL,
  `identifier` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `thumbnail` varchar(45) NOT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores_stores`
--

LOCK TABLES `stores_stores` WRITE;
/*!40000 ALTER TABLE `stores_stores` DISABLE KEYS */;
INSERT INTO `stores_stores` VALUES (1,1,'exito_parque_arboleda','Exito Parque Arboleda','000','Cra. 14 #5-20, Pereira, Risaralda');
/*!40000 ALTER TABLE `stores_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user`
--

DROP TABLE IF EXISTS `users_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_fb` varchar(45) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user`
--

LOCK TABLES `users_user` WRITE;
/*!40000 ALTER TABLE `users_user` DISABLE KEYS */;
INSERT INTO `users_user` VALUES (4,'pLA8U25EVFSqQ3y7OKmGL5Y5I3o1','','',''),(5,'x6GRLHrBQHM5bAZsgPzhAQ4qP6r2','***','***','***'),(6,'664D2jPnF5bT4ZmZ5Qx2H7SNSos2','***','***','***');
/*!40000 ALTER TABLE `users_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-14 13:47:53
