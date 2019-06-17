-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: agents
-- ------------------------------------------------------
-- Server version	5.5.57-0ubuntu0.14.04.1

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add agent',7,'add_agent'),(20,'Can change agent',7,'change_agent'),(21,'Can delete agent',7,'delete_agent'),(22,'Can add organization',8,'add_organization'),(23,'Can change organization',8,'change_organization'),(24,'Can delete organization',8,'delete_organization'),(25,'Can add service',9,'add_service'),(26,'Can change service',9,'change_service'),(27,'Can delete service',9,'delete_service'),(28,'Can add phone number',10,'add_phonenumber'),(29,'Can change phone number',10,'change_phonenumber'),(30,'Can delete phone number',10,'delete_phonenumber');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$Of2tsPSeq4oz$Mkx4QPtTVmY8QAZGZLjOQu1NNi9J5GNBPAyrC8jRfPk=','2017-09-11 19:20:39',1,'dayo@incisia.com','','','dayo@incisia.com',1,1,'2017-09-11 19:20:07');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_agent`
--

DROP TABLE IF EXISTS `core_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_agent_organization_id_cbe9028d_fk_core_organization_id` (`organization_id`),
  CONSTRAINT `core_agent_organization_id_cbe9028d_fk_core_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `core_organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_agent`
--

LOCK TABLES `core_agent` WRITE;
/*!40000 ALTER TABLE `core_agent` DISABLE KEYS */;
INSERT INTO `core_agent` VALUES (7,'2017-09-14 15:40:31','Dayo','Osikoya',10,1);
/*!40000 ALTER TABLE `core_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_organization`
--

DROP TABLE IF EXISTS `core_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime NOT NULL,
  `name` varchar(25) NOT NULL,
  `service_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `core_organization_service_id_d1a544e4_fk_core_service_id` (`service_id`),
  CONSTRAINT `core_organization_service_id_d1a544e4_fk_core_service_id` FOREIGN KEY (`service_id`) REFERENCES `core_service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_organization`
--

LOCK TABLES `core_organization` WRITE;
/*!40000 ALTER TABLE `core_organization` DISABLE KEYS */;
INSERT INTO `core_organization` VALUES (10,'2017-09-14 15:39:55','Gold Street',1,1);
/*!40000 ALTER TABLE `core_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_phonenumber`
--

DROP TABLE IF EXISTS `core_phonenumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_phonenumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(10) NOT NULL,
  `agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number` (`number`),
  KEY `core_phonenumber_agent_id_332a35fc_fk_core_agent_id` (`agent_id`),
  CONSTRAINT `core_phonenumber_agent_id_332a35fc_fk_core_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `core_agent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_phonenumber`
--

LOCK TABLES `core_phonenumber` WRITE;
/*!40000 ALTER TABLE `core_phonenumber` DISABLE KEYS */;
INSERT INTO `core_phonenumber` VALUES (2,'0542751610',7);
/*!40000 ALTER TABLE `core_phonenumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_service`
--

DROP TABLE IF EXISTS `core_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime NOT NULL,
  `name` varchar(25) NOT NULL,
  `description` varchar(50) NOT NULL,
  `url` varchar(200) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_service`
--

LOCK TABLES `core_service` WRITE;
/*!40000 ALTER TABLE `core_service` DISABLE KEYS */;
INSERT INTO `core_service` VALUES (1,'2017-09-11 19:22:08','Neo','Parking','https://neo-deone.c9users.io/ussd',1);
/*!40000 ALTER TABLE `core_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-09-11 19:22:08','1','Neo, Parking',1,'[{\"added\": {}}]',9,1),(2,'2017-09-11 19:41:27','1','Gold Street - Neo',1,'[{\"added\": {}}]',8,1),(3,'2017-09-12 18:29:18','2','STMA - Neo',1,'[{\"added\": {}}]',8,1),(4,'2017-09-12 18:37:23','3','KMA - Neo',1,'[{\"added\": {}}]',8,1),(5,'2017-09-12 18:41:40','3','KMA - Neo',2,'[]',8,1),(6,'2017-09-12 20:05:07','3','KMA - Neo',2,'[]',8,1),(7,'2017-09-12 20:46:17','3','KMA - Neo',2,'[]',8,1),(8,'2017-09-12 20:47:07','3','KMA - Neo',2,'[]',8,1),(9,'2017-09-12 20:59:46','3','KMA - Neo',2,'[]',8,1),(10,'2017-09-12 21:00:44','3','KMA - Neo',2,'[]',8,1),(11,'2017-09-12 23:09:51','3','KMA - Neo',2,'[{\"changed\": {\"fields\": [\"is_active\"]}}]',8,1),(12,'2017-09-12 23:10:24','3','KMA - Neo',2,'[{\"changed\": {\"fields\": [\"is_active\"]}}]',8,1),(13,'2017-09-12 23:10:53','3','KMA - Neo',2,'[{\"changed\": {\"fields\": [\"is_active\"]}}]',8,1),(14,'2017-09-12 23:46:22','3','KMA - Neo',2,'[]',8,1),(15,'2017-09-12 23:50:04','3','KMA - Neo',2,'[]',8,1),(16,'2017-09-12 23:50:33','4','CMA - Neo',1,'[{\"added\": {}}]',8,1),(17,'2017-09-13 00:01:07','5','TMA - Neo',1,'[{\"added\": {}}]',8,1),(18,'2017-09-13 00:01:27','5','TMA - Neo',2,'[{\"changed\": {\"fields\": [\"is_active\"]}}]',8,1),(19,'2017-09-13 13:20:12','5','TMA - Neo',3,'',8,1),(20,'2017-09-13 13:20:12','4','CMA - Neo',3,'',8,1),(21,'2017-09-13 13:20:12','3','KMA - Neo',3,'',8,1),(22,'2017-09-13 13:20:12','2','STMA - Neo',3,'',8,1),(23,'2017-09-13 13:20:12','1','Gold Street - Neo',3,'',8,1),(24,'2017-09-13 13:31:15','6','Gold Street - Neo',1,'[{\"added\": {}}]',8,1),(25,'2017-09-13 13:32:20','6','Gold Street - Neo',3,'',8,1),(26,'2017-09-13 13:32:49','7','Gold Street - Neo',1,'[{\"added\": {}}]',8,1),(27,'2017-09-13 13:41:30','7','Gold Street - Neo',3,'',8,1),(28,'2017-09-13 13:44:25','None','Gold Street - Neo',1,'[{\"added\": {}}]',8,1),(29,'2017-09-13 13:45:06','None','Gold Street - Neo',1,'[{\"added\": {}}]',8,1),(30,'2017-09-13 13:46:19','None','Gold Street - Neo',1,'[{\"added\": {}}]',8,1),(31,'2017-09-13 13:47:09','8','Gold Street - Neo',1,'[{\"added\": {}}]',8,1),(32,'2017-09-13 13:56:27','9','STMA - Neo',1,'[{\"added\": {}}]',8,1),(33,'2017-09-13 13:57:57','8','Gold Street - Neo',2,'[{\"changed\": {\"fields\": [\"is_active\"]}}]',8,1),(34,'2017-09-13 14:36:12','1','Dayo Osikoya',1,'[{\"added\": {}}]',7,1),(35,'2017-09-13 14:36:33','2','Lanre Osikoya',1,'[{\"added\": {}}]',7,1),(36,'2017-09-13 14:38:10','3','Layi Osikoya',1,'[{\"added\": {}}]',7,1),(37,'2017-09-13 14:39:28','4','Fola Osikoya',1,'[{\"added\": {}}]',7,1),(38,'2017-09-13 14:52:19','5','Unborn Osikoya',1,'[{\"added\": {}}]',7,1),(39,'2017-09-13 14:53:21','6','Unborn2 Osikoya',1,'[{\"added\": {}}]',7,1),(40,'2017-09-13 14:54:24','6','Unborn2 Osikoya',2,'[{\"changed\": {\"fields\": [\"is_active\"]}}]',7,1),(41,'2017-09-14 15:34:18','6','Unborn2 Osikoya',3,'',7,1),(42,'2017-09-14 15:34:18','5','Unborn Osikoya',3,'',7,1),(43,'2017-09-14 15:34:18','4','Fola Osikoya',3,'',7,1),(44,'2017-09-14 15:34:18','3','Layi Osikoya',3,'',7,1),(45,'2017-09-14 15:34:18','2','Lanre Osikoya',3,'',7,1),(46,'2017-09-14 15:34:18','1','Dayo Osikoya',3,'',7,1),(47,'2017-09-14 15:39:40','9','STMA - Neo',3,'',8,1),(48,'2017-09-14 15:39:40','8','Gold Street - Neo',3,'',8,1),(49,'2017-09-14 15:39:56','10','Gold Street - Neo',1,'[{\"added\": {}}]',8,1),(50,'2017-09-14 15:40:32','7','Dayo Osikoya',1,'[{\"added\": {}}, {\"added\": {\"object\": \"Dayo Osikoya - 0542751610\", \"name\": \"phone number\"}}]',7,1),(51,'2017-09-14 16:14:16','1','Neo, Parking',2,'[{\"changed\": {\"fields\": [\"url\"]}}]',9,1),(52,'2017-09-14 16:27:50','7','Dayo Osikoya',2,'[{\"deleted\": {\"object\": \"Dayo Osikoya - 0542751610\", \"name\": \"phone number\"}}]',7,1),(53,'2017-09-14 16:43:09','7','Dayo Osikoya',2,'[{\"added\": {\"object\": \"Dayo Osikoya - 0542751610\", \"name\": \"phone number\"}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'core','agent'),(8,'core','organization'),(10,'core','phonenumber'),(9,'core','service'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-09-11 19:13:19'),(2,'auth','0001_initial','2017-09-11 19:13:20'),(3,'admin','0001_initial','2017-09-11 19:13:20'),(4,'admin','0002_logentry_remove_auto_add','2017-09-11 19:13:20'),(5,'contenttypes','0002_remove_content_type_name','2017-09-11 19:13:20'),(6,'auth','0002_alter_permission_name_max_length','2017-09-11 19:13:20'),(7,'auth','0003_alter_user_email_max_length','2017-09-11 19:13:20'),(8,'auth','0004_alter_user_username_opts','2017-09-11 19:13:20'),(9,'auth','0005_alter_user_last_login_null','2017-09-11 19:13:20'),(10,'auth','0006_require_contenttypes_0002','2017-09-11 19:13:20'),(11,'auth','0007_alter_validators_add_error_messages','2017-09-11 19:13:20'),(12,'auth','0008_alter_user_username_max_length','2017-09-11 19:13:20'),(13,'sessions','0001_initial','2017-09-11 19:13:20'),(14,'core','0001_initial','2017-09-11 19:15:12'),(15,'core','0002_organization_service','2017-09-11 19:24:53'),(16,'core','0003_agent_organization','2017-09-11 19:45:38'),(17,'core','0004_auto_20170912_2244','2017-09-12 22:44:55'),(18,'core','0005_phonenumber','2017-09-14 15:28:13');
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
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7s5mpzkb25x2iz44l2lcgjq6gdhjzmkr','ZjJjM2MyYjM4Njc0YjkxOWQ0Y2NjNTI1NmQ3YzA3Mjc4NzNhYWY3Nzp7Il9hdXRoX3VzZXJfaGFzaCI6IjRkMWU5NDM5ZWY4MzM3ZDg1ZmIxZjU1NmEwMDI5M2NjMzIwMWRiOWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-09-25 19:20:39');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-17 12:45:20
