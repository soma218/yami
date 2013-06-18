-- MySQL dump 10.13  Distrib 5.5.27, for Win32 (x86)
--
-- Host: localhost    Database: joomla
-- ------------------------------------------------------
-- Server version	5.5.27

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
-- Table structure for table `yami_assets`
--

DROP TABLE IF EXISTS `yami_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_assets`
--

LOCK TABLES `yami_assets` WRITE;
/*!40000 ALTER TABLE `yami_assets` DISABLE KEYS */;
INSERT INTO `yami_assets` VALUES (1,0,1,570,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":[],\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,2,3,1,'com_admin','com_admin','{}'),(3,1,4,11,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,12,13,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,14,15,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,16,17,1,'com_config','com_config','{}'),(7,1,18,87,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(8,1,88,437,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,438,439,1,'com_cpanel','com_cpanel','{}'),(10,1,440,441,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,442,443,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,444,445,1,'com_login','com_login','{}'),(13,1,446,447,1,'com_mailto','com_mailto','{}'),(14,1,448,449,1,'com_massmail','com_massmail','{}'),(15,1,450,451,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1},\"core.edit\":[],\"core.edit.state\":[]}'),(16,1,452,453,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,37,38,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,456,457,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,458,465,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(20,1,466,467,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,468,469,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,470,471,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,472,473,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,474,477,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(25,1,478,495,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1,\"10\":0,\"12\":0},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),(26,1,496,497,1,'com_wrapper','com_wrapper','{}'),(33,1,558,559,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,8,105,108,2,'com_content.category.9','Uncategorised','{\"core.create\":{\"10\":0,\"12\":0},\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(35,3,7,8,2,'com_banners.category.10','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(36,7,23,24,2,'com_contact.category.11','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(37,19,461,462,2,'com_newsfeeds.category.12','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(38,25,485,486,2,'com_weblinks.category.13','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(39,8,109,298,2,'com_content.category.14','Sample Data-Articles','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(40,3,9,10,2,'com_banners.category.15','Sample Data-Banners','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(41,7,25,86,2,'com_contact.category.16','Sample Data-Contact','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(42,19,463,464,2,'com_newsfeeds.category.17','Sample Data-Newsfeeds','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(43,25,487,494,2,'com_weblinks.category.18','Sample Data-Weblinks','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(44,39,110,247,3,'com_content.category.19','Joomla!','{\"core.create\":{\"10\":0,\"12\":0},\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(45,44,111,224,4,'com_content.category.20','Extensions','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(46,45,112,127,5,'com_content.category.21','Components','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(47,45,128,189,5,'com_content.category.22','Modules','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(48,45,190,201,5,'com_content.category.23','Templates','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(49,45,202,203,5,'com_content.category.24','Languages','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(50,45,204,223,5,'com_content.category.25','Plugins','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(51,39,248,279,3,'com_content.category.26','Park Site','{\"core.create\":{\"10\":0,\"12\":0},\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(52,51,249,254,4,'com_content.category.27','Park Blog','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(53,51,255,276,4,'com_content.category.28','Photo Gallery','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(54,39,280,293,3,'com_content.category.29','Fruit Shop Site','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(55,54,281,286,4,'com_content.category.30','Growers','{\"core.create\":{\"12\":0},\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":{\"10\":1}}'),(56,43,488,489,3,'com_weblinks.category.31','Park Links','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(57,43,490,493,3,'com_weblinks.category.32','Joomla! Specific Links','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(58,57,491,492,4,'com_weblinks.category.33','Other Resources','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(59,41,26,27,3,'com_contact.category.34','Park Site','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(60,41,28,85,3,'com_contact.category.35','Shop Site','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(61,60,29,30,4,'com_contact.category.36','Staff','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(62,60,31,84,4,'com_contact.category.37','Fruit Encyclopedia','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(63,62,32,33,5,'com_contact.category.38','A','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(64,62,34,35,5,'com_contact.category.39','B','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(65,62,36,37,5,'com_contact.category.40','C','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(66,62,38,39,5,'com_contact.category.41','D','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(67,62,40,41,5,'com_contact.category.42','E','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(68,62,42,43,5,'com_contact.category.43','F','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(69,62,44,45,5,'com_contact.category.44','G','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(70,62,46,47,5,'com_contact.category.45','H','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(71,62,48,49,5,'com_contact.category.46','I','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(72,62,50,51,5,'com_contact.category.47','J','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(73,62,52,53,5,'com_contact.category.48','K','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(74,62,54,55,5,'com_contact.category.49','L','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(75,62,56,57,5,'com_contact.category.50','M','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(76,62,58,59,5,'com_contact.category.51','N','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(77,62,60,61,5,'com_contact.category.52','O','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(78,62,62,63,5,'com_contact.category.53','P','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(79,62,64,65,5,'com_contact.category.54','Q','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(80,62,66,67,5,'com_contact.category.55','R','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(81,62,68,69,5,'com_contact.category.56','S','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(82,62,70,71,5,'com_contact.category.57','T','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(83,62,72,73,5,'com_contact.category.58','U','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(84,62,74,75,5,'com_contact.category.59','V','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(85,62,76,77,5,'com_contact.category.60','W','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(86,62,78,79,5,'com_contact.category.61','X','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(87,62,80,81,5,'com_contact.category.62','Y','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(88,62,82,83,5,'com_contact.category.63','Z','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(89,46,113,114,6,'com_content.article.1','Administrator Components','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(90,93,130,131,7,'com_content.article.2','Archive Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(91,93,132,133,7,'com_content.article.3','Article Categories Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(92,93,134,135,7,'com_content.article.4','Articles Category Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(93,47,129,144,6,'com_content.category.64','Content Modules','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(94,47,145,152,6,'com_content.category.65','User Modules','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(95,47,153,166,6,'com_content.category.66','Display Modules','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(96,47,167,180,6,'com_content.category.67','Utility Modules','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(97,48,191,192,6,'com_content.category.68','Atomic','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(98,48,193,194,6,'com_content.category.69','Beez 20','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(99,48,195,196,6,'com_content.category.70','Beez5','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(100,48,197,198,6,'com_content.category.71','Milky Way','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(101,50,205,206,6,'com_content.article.5','Authentication','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(102,51,277,278,4,'com_content.article.6','Australian Parks ','{\"core.delete\":[],\"core.edit\":{\"2\":1},\"core.edit.state\":[]}'),(103,95,154,155,7,'com_content.article.7','Banner Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(104,44,225,226,4,'com_content.article.8','Beginners','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(105,46,115,116,6,'com_content.article.9','Contact','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(106,46,117,118,6,'com_content.article.10','Content','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(107,109,267,268,6,'com_content.article.11','Cradle Mountain','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(108,53,256,265,5,'com_content.category.72','Animals','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(109,53,266,275,5,'com_content.category.73','Scenery','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(110,95,156,157,7,'com_content.article.12','Custom HTML Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(111,54,287,288,4,'com_content.article.13','Directions','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(112,50,207,208,6,'com_content.article.14','Editors','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(113,50,209,210,6,'com_content.article.15','Editors-xtd','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(114,95,158,159,7,'com_content.article.16','Feed Display','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(115,52,250,251,5,'com_content.article.17','First Blog Post','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(116,52,252,253,5,'com_content.article.18','Second Blog Post','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(117,95,160,161,7,'com_content.article.19','Footer Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(118,54,289,290,4,'com_content.article.20','Fruit Shop','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(119,44,227,228,4,'com_content.article.21','Getting Help','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(120,44,229,230,4,'com_content.article.22','Getting Started','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(121,55,282,283,5,'com_content.article.23','Happy Orange Orchard','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(122,44,231,232,4,'com_content.article.24','Joomla!','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(123,108,257,258,6,'com_content.article.25','Koala','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(124,96,168,169,7,'com_content.article.26','Language Switcher','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(125,93,136,137,7,'com_content.article.27','Latest Articles Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(126,94,146,147,7,'com_content.article.28','Login Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(127,166,184,185,7,'com_content.article.29','Menu Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(128,93,138,139,7,'com_content.article.30','Most Read Content','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(129,93,140,141,7,'com_content.article.31','News Flash','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(130,44,233,234,4,'com_content.article.32','Parameters','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(131,108,259,260,6,'com_content.article.33','Phyllopteryx','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(132,109,269,270,6,'com_content.article.34','Pinnacles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(133,44,235,236,4,'com_content.article.35','Professionals','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(134,95,162,163,7,'com_content.article.36','Random Image Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(135,93,142,143,7,'com_content.article.37','Related Items Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(136,44,237,238,4,'com_content.article.38','Sample Sites','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(137,46,119,120,6,'com_content.article.39','Search','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(138,96,170,171,7,'com_content.article.40','Search Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(139,50,211,212,6,'com_content.article.41','Search ','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(140,39,294,295,3,'com_content.article.42','Site Map','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(141,108,261,262,6,'com_content.article.43','Spotted Quoll','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(142,96,172,173,7,'com_content.article.44','Statistics Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(143,96,174,175,7,'com_content.article.45','Syndicate Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(144,50,213,214,6,'com_content.article.46','System','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(145,44,239,240,4,'com_content.article.47','The Joomla! Community','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(146,44,241,242,4,'com_content.article.48','The Joomla! Project','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(147,48,199,200,6,'com_content.article.49','Typography','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(148,44,243,244,4,'com_content.article.50','Upgraders','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(149,50,215,216,6,'com_content.article.51','User','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(150,46,121,122,6,'com_content.article.52','Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(151,44,245,246,4,'com_content.article.53','Using Joomla!','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(152,46,123,124,6,'com_content.article.54','Weblinks','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(153,95,164,165,7,'com_content.article.55','Weblinks Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(154,94,148,149,7,'com_content.article.56','Who\'s Online','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(155,108,263,264,6,'com_content.article.57','Wobbegone','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(156,55,284,285,5,'com_content.article.58','Wonderful Watermelon','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(157,96,176,177,7,'com_content.article.59','Wrapper Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(158,46,125,126,6,'com_content.article.60','News Feeds','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(159,166,186,187,7,'com_content.article.61','Breadcrumbs Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(160,50,217,218,6,'com_content.article.62','Content','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(162,109,271,272,6,'com_content.article.64','Blue Mountain Rain Forest','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(163,109,273,274,6,'com_content.article.65','Ormiston Pound','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(165,94,150,151,7,'com_content.article.66','Latest Users Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(166,47,183,188,6,'com_content.category.75','Navigation Modules','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(167,54,291,292,4,'com_content.category.76','Recipes','{\"core.create\":{\"12\":1,\"10\":1},\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":{\"12\":1,\"10\":1}}'),(168,34,106,107,3,'com_content.article.67','What\'s New in 1.5?','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(169,24,475,476,2,'com_users.category.77','Uncategorised',''),(170,50,219,220,6,'com_content.article.68','Captcha','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(171,50,221,222,6,'com_content.article.69','Quick Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(172,96,178,179,7,'com_content.article.70','Smart Search','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(173,1,560,561,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(174,1,562,563,1,'com_virtuemart','virtuemart','{}'),(175,1,564,565,1,'com_virtuemart_allinone','virtuemart_allinone','{}'),(176,1,566,567,1,'com_easytagcloud','com_easytagcloud','{}'),(177,1,568,569,1,'com_tortags','com_tortags','{}'),(178,8,299,362,2,'com_content.category.78','市场观察','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(179,178,300,307,3,'com_content.category.79','流行报告','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(180,8,363,392,2,'com_content.category.80',' 设计下载','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(181,8,393,436,2,'com_content.category.81','培训提升','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(182,178,308,317,3,'com_content.category.82','零售（报告）','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(183,178,318,325,3,'com_content.category.83','室内设计','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(184,178,326,339,3,'com_content.category.84',' 新闻商务','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(185,178,340,347,3,'com_content.category.85','潮流都市','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(186,178,348,355,3,'com_content.category.86','展会活动','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(187,178,356,361,3,'com_content.category.87','品牌观察','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(188,179,301,302,4,'com_content.category.88','主导趋势','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(189,179,303,304,4,'com_content.category.89','创意灵感','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(190,179,305,306,4,'com_content.category.90','色彩趋势','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(191,182,309,310,4,'com_content.category.91','零售新闻','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(192,182,311,312,4,'com_content.category.92','时尚店铺','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(193,182,313,314,4,'com_content.category.93','奢侈品观察','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(194,182,315,316,4,'com_content.category.94','大众市场观察','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(195,183,319,320,4,'com_content.category.95','室内设计趋势','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(196,183,321,322,4,'com_content.category.96','室内色彩','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(197,183,323,324,4,'com_content.category.97','室内产品设计','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(198,184,327,328,4,'com_content.category.98','商业新闻','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(199,184,329,330,4,'com_content.category.99','消费市场','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(200,184,331,332,4,'com_content.category.100','名人轶事','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(201,184,333,334,4,'com_content.category.101','品牌合作','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(202,184,335,336,4,'com_content.category.102','采购信息','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(203,184,337,338,4,'com_content.category.103','室内设计新闻','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(204,185,341,342,4,'com_content.category.104','潮流都市','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(205,185,343,344,4,'com_content.category.105','街拍艺术','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(206,185,345,346,4,'com_content.category.106','生活时尚','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(207,186,349,350,4,'com_content.category.107','时尚展会','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(208,186,351,352,4,'com_content.category.108','室内展会','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(209,186,353,354,4,'com_content.category.109','展会活动日程','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(210,187,357,358,4,'com_content.category.110','品牌列表','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(211,187,359,360,4,'com_content.category.111','品牌观察报告','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(212,180,364,369,3,'com_content.category.112','心情版','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(213,212,365,366,4,'com_content.category.113','时尚手册','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(214,212,367,368,4,'com_content.category.114','实用方案','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(215,216,373,374,4,'com_content.category.115','会员下载','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(216,180,370,375,3,'com_content.category.116','原创设计','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(217,180,376,383,3,'com_content.category.117','颜色','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(218,180,384,391,3,'com_content.category.118','设计素材','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(219,216,371,372,4,'com_content.category.119','VIP下载','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(220,217,377,378,4,'com_content.category.120','色卡','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(221,217,379,380,4,'com_content.category.121','色彩案例','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(222,217,381,382,4,'com_content.category.122','色彩资料','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(223,218,385,386,4,'com_content.category.123','高清图库','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(224,218,387,388,4,'com_content.category.124','款式资料库','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(225,218,389,390,4,'com_content.category.125','组织库','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(226,181,394,399,3,'com_content.category.126','培训','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(227,181,400,407,3,'com_content.category.127','设计工具','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(228,181,408,415,3,'com_content.category.128','资料','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(229,181,416,421,3,'com_content.category.129','工艺分析','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(230,181,422,427,3,'com_content.category.130','设计风格','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(231,181,428,435,3,'com_content.category.131','材料','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(232,226,395,396,4,'com_content.category.132','培训计划','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(233,226,397,398,4,'com_content.category.133','培训回顾','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(234,227,401,402,4,'com_content.category.134','平面应用','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(235,227,403,404,4,'com_content.category.135','纺织品应用','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(236,227,405,406,4,'com_content.category.136','室内应用','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(237,228,409,410,4,'com_content.category.137','文献资料','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(238,228,411,412,4,'com_content.category.138','杂志资料','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(239,228,413,414,4,'com_content.category.139','古董资料','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(240,229,417,418,4,'com_content.category.140','纺织品工艺','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(241,229,419,420,4,'com_content.category.141','墙纸工艺','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(242,230,423,424,4,'com_content.category.142','风格常识','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(243,230,425,426,4,'com_content.category.143','案例学习','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(244,231,429,430,4,'com_content.category.144','新型材料','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(245,231,431,432,4,'com_content.category.145','新型纤维','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(246,231,433,434,4,'com_content.category.146','面料','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
/*!40000 ALTER TABLE `yami_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_associations`
--

DROP TABLE IF EXISTS `yami_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_associations`
--

LOCK TABLES `yami_associations` WRITE;
/*!40000 ALTER TABLE `yami_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_banner_clients`
--

DROP TABLE IF EXISTS `yami_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_banner_clients`
--

LOCK TABLES `yami_banner_clients` WRITE;
/*!40000 ALTER TABLE `yami_banner_clients` DISABLE KEYS */;
INSERT INTO `yami_banner_clients` VALUES (1,'Joomla!','Administrator','email@email.com','',1,0,'0000-00-00 00:00:00','',0,'',-1,-1,-1),(2,'Shop','Example','example@example.com','',1,0,'0000-00-00 00:00:00','',0,'',-1,0,0),(3,'Bookstore','Bookstore Example','example@example.com','',1,0,'0000-00-00 00:00:00','',0,'',-1,0,0);
/*!40000 ALTER TABLE `yami_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_banner_tracks`
--

DROP TABLE IF EXISTS `yami_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_banner_tracks`
--

LOCK TABLES `yami_banner_tracks` WRITE;
/*!40000 ALTER TABLE `yami_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_banners`
--

DROP TABLE IF EXISTS `yami_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_banners`
--

LOCK TABLES `yami_banners` WRITE;
/*!40000 ALTER TABLE `yami_banners` DISABLE KEYS */;
INSERT INTO `yami_banners` VALUES (2,3,0,'Shop 1','shop-1',0,113,2,'http://shop.joomla.org/amazoncom-bookstores.html',1,15,'Get books about Joomla! at the Joomla! Book Shop.','',0,1,'','{\"imageurl\":\"images\\/banners\\/white.png\",\"width\":\"\",\"height\":\"\",\"alt\":\"Joomla! Books\"}',0,'',-1,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-01-01 00:00:01','en-GB'),(3,2,0,'Shop 2','shop-2',0,163,2,'http://shop.joomla.org',1,15,'T Shirts, caps and more from the Joomla! Shop.','',0,2,'','{\"imageurl\":\"images\\/banners\\/white.png\",\"width\":\"\",\"height\":\"\",\"alt\":\"Joomla! Shop\"}',0,'',-1,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-01-01 00:00:01','en-GB'),(4,1,0,'Support Joomla!','support-joomla',0,82,1,'http://contribute.joomla.org',1,15,'Your contributions of time, talent and money make Joomla possible.','',0,3,'','{\"imageurl\":\"images\\/banners\\/white.png\",\"width\":\"\",\"height\":\"\",\"alt\":\"\"}',0,'',-1,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','en-GB');
/*!40000 ALTER TABLE `yami_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_categories`
--

DROP TABLE IF EXISTS `yami_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_categories`
--

LOCK TABLES `yami_categories` WRITE;
/*!40000 ALTER TABLE `yami_categories` DISABLE KEYS */;
INSERT INTO `yami_categories` VALUES (1,0,0,0,273,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(9,34,1,131,132,1,'uncategorised','com_content','Uncategorised','uncategorised','','',-2,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'*'),(10,35,1,129,130,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(11,36,1,125,126,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(12,37,1,61,62,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(13,38,1,57,58,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(14,39,1,9,56,1,'sample-data-articles','com_content','Sample Data-Articles','sample-data-articles','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(15,40,1,127,128,1,'sample-data-banners','com_banners','Sample Data-Banners','sample-data-banners','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(16,41,1,63,124,1,'sample-data-contact','com_contact','Sample Data-Contact','sample-data-contact','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(17,42,1,59,60,1,'sample-data-newsfeeds','com_newsfeeds','Sample Data-Newsfeeds','sample-data-newsfeeds','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(18,43,1,1,8,1,'sample-data-weblinks','com_weblinks','Sample Data-Weblinks','sample-data-weblinks','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(19,44,14,10,39,2,'sample-data-articles/joomla','com_content','Joomla!','joomla','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'*'),(20,45,19,11,38,3,'sample-data-articles/joomla/extensions','com_content','Extensions','extensions','','<p>The Joomla! content management system lets you create webpages of various types using extensions. There are 5 basic types of extensions: components, modules, templates, languages, and plugins. Your website includes the extensions you need to create a basic website in English, but thousands of additional extensions of all types are available. The <a href=\"http://extensions.joomla.org\" style=\"color: #1b57b1; text-decoration: none; font-weight: normal;\">Joomla! Extensions Directory</a> is the largest directory of Joomla extensions.</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 11:57:22',0,'*'),(21,46,20,12,13,4,'sample-data-articles/joomla/extensions/components','com_content','Components','components','','<p><img class=\"image-left\" src=\"administrator/templates/bluestork/images/header/icon-48-component.png\" border=\"0\" alt=\"Component Image\" />Components are larger extensions that produce the major content for your site. Each component has one or more \"views\" that control how content is displayed. In the Joomla administrator there are additional extensions such as Menus, Redirection, and the extension managers.</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 11:58:12',0,'*'),(22,47,20,14,25,4,'sample-data-articles/joomla/extensions/modules','com_content','Modules','modules','','<p><img class=\"image-left\" src=\"administrator/templates/bluestork/images/header/icon-48-module.png\" border=\"0\" alt=\"Media Image\" />Modules are small blocks of content that can be displayed in positions on a web page. The menus on this site are displayed in modules. The core of Joomla! includes 24 separate modules ranging from login to search to random images. Each module has a name that starts mod_ but when it displays it has a title. In the descriptions in this section, the titles are the same as the names.</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 11:59:44',0,'*'),(23,48,20,26,33,4,'sample-data-articles/joomla/extensions/templates','com_content','Templates','templates','','<p><img src=\"administrator/templates/bluestork/images/header/icon-48-themes.png\" border=\"0\" alt=\"Media Image\" align=\"left\" />Templates give your site its look and feel. They determine layout, colours, typefaces, graphics and other aspects of design that make your site unique. Your installation of Joomla comes prepackaged with three front end templates and two backend templates. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Template_Manager_Templates\">Help</a></p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 12:04:51',0,'*'),(24,49,20,34,35,4,'sample-data-articles/joomla/extensions/languages','com_content','Languages','languages','','<p><img src=\"administrator/templates/bluestork/images/header/icon-48-language.png\" border=\"0\" alt=\"Languages Image\" align=\"left\" />Joomla! installs in English, but translations of the interfaces, sample data and help screens are available in dozens of languages. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Language_Manager_Installed\">Help</a></p>\r\n<p><a href=\"http://community.joomla.org/translations.html\">Translation information</a></p>\r\n<p>If there is no language pack available for your language, instructions are available for creating your own translation, which you can also contribute to the community by starting a translation team to create an accredited translation. </p>\r\n<p>Translations of the interfaces are installed using the extensions manager in the site administrator and then managed using the language manager.</p>\r\n<p>If you have two or more languages installed you may enable the language switcher plugin and module. They should always be used together. If you create multilingual content and mark your content, menu items or modules as being in specific languages and follow <a href=\"http://docs.joomla.org/Language_Switcher_Tutorial_for_Joomla_1.6\">the complete instructions</a> your users will be able to select a specific content language using the module. By default both the plugin and module are disabled.</p>\r\n<p>Joomla 2.5 installs with a language override manager that allows you to change the specific words (such as Edit or Search) used in the Joomla application.</p>\r\n<p>There are a number of extensions that can help you manage translations of content available in the<a href=\"http://extensions.joomla.org\"> Joomla! Extensions Directory</a>.</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2012-01-17 16:18:40',0,'*'),(25,50,20,36,37,4,'sample-data-articles/joomla/extensions/plugins','com_content','Plugins','plugins','','<p><img src=\"administrator/templates/bluestork/images/header/icon-48-plugin.png\" border=\"0\" alt=\"Plugin Image\" align=\"left\" />Plugins are small task oriented extensions that enhance the Joomla! framework. Some are associated with particular extensions and others, such as editors, are used across all of Joomla. Most beginning users do not need to change any of the plugins that install with Joomla. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Plugin_Manager_Edit\">Help</a></p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 12:11:56',0,'*'),(26,51,14,40,49,2,'sample-data-articles/park-site','com_content','Park Site','park-site','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'en-GB'),(27,52,26,41,42,3,'sample-data-articles/park-site/park-blog','com_content','Park Blog','park-blog','','<p><span style=\"font-size: 12px;\">Here is where I will blog all about the parks of Australia.</span></p>\r\n<p><em>You can make a blog on your website by creating a category to write your blog posts in (this one is called Park Blog). Each blog post will be an article in that category. If you make a category blog menu link with 1 column it will look like this page, if you display the category description then this part is displayed. </em></p>\r\n<p><em>To enhance your blog you may want to add extensions for <a href=\"http://extensions.joomla.org/extensions/contacts-and-feedback/articles-comments\" style=\"color: #1b57b1; text-decoration: none; font-weight: normal;\">comments</a>,<a href=\"http://extensions.joomla.org/extensions/social-web\" style=\"color: #1b57b1; text-decoration: none; font-weight: normal;\"> interacting with social network sites</a>, <a href=\"http://extensions.joomla.org/extensions/content-sharing\" style=\"color: #1b57b1; text-decoration: none; font-weight: normal;\">tagging</a>, and <a href=\"http://extensions.joomla.org/extensions/content-sharing\" style=\"color: #1b57b1; text-decoration: none; font-weight: normal;\">keeping in contact with your readers</a>. You can also enable the syndication that is included in Joomla (in the Integration Options set Show Feed Link to Show and make sure to display the syndication module on the page).</em></p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"images\\/sampledata\\/parks\\/banner_cradle.jpg\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 12:15:40',0,'en-GB'),(28,53,26,43,48,3,'sample-data-articles/park-site/photo-gallery','com_content','Photo Gallery','photo-gallery','','<p><img src=\"images/sampledata/parks/banner_cradle.jpg\" border=\"0\" /></p>\r\n<p>These are my photos from parks I have visited (I didn\'t take them, they are all from <a href=\"http://commons.wikimedia.org/wiki/Main_Page\">Wikimedia Commons</a>).</p>\r\n<p><em>This shows you how to make a simple image gallery using articles in com_content. </em></p>\r\n<p><em>In each article put a thumbnail image before a \"readmore\" and the full size image after it. Set the article to Show Intro Text: Hide. </em></p>',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'en-GB'),(29,54,14,50,55,2,'sample-data-articles/fruit-shop-site','com_content','Fruit Shop Site','fruit-shop-site','','',-2,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'*'),(30,55,29,51,52,3,'sample-data-articles/fruit-shop-site/growers','com_content','Growers','growers','','<p>We search the whole countryside for the best fruit growers.</p>\r\n<p><em>You can let each supplier have a page that he or she can edit. To see this in action you will need to create a user who is in the suppliers group.  </em></p>\r\n<p><em>Create one page in the growers category for that user and make that supplier the author of the page. That user will be able to edit his or her page. </em></p>\r\n<p><em>This illustrates the use of the Edit Own permission. </em></p>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 12:17:40',0,'*'),(31,56,18,2,3,2,'sample-data-weblinks/park-links','com_weblinks','Park Links','park-links','','<p>Here are links to some of my favorite parks.</p>\r\n<p><em>The weblinks component provides an easy way to make links to external sites that are consistently formatted and categorised. You can create weblinks from the front end of your site.</em></p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"images\\/sampledata\\/parks\\/banner_cradle.jpg\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'en-GB'),(32,57,18,4,7,2,'sample-data-weblinks/joomla-specific-links','com_weblinks','Joomla! Specific Links','joomla-specific-links','','<p>A selection of links that are all related to the Joomla Project.</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 12:32:00',0,'*'),(33,58,32,5,6,3,'sample-data-weblinks/joomla-specific-links/other-resources','com_weblinks','Other Resources','other-resources','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(34,59,16,64,65,2,'sample-data-contact/park-site','com_contact','Park Site','park-site','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'en-GB'),(35,60,16,66,123,2,'sample-data-contact/shop-site','com_contact','Shop Site','shop-site','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(36,61,35,67,68,3,'sample-data-contact/shop-site/staff','com_contact','Staff','staff','','<p>Please feel free to contact our staff at any time should you need assistance.</p>',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(37,62,35,69,122,3,'sample-data-contact/shop-site/fruit-encyclopedia','com_contact','Fruit Encyclopedia','fruit-encyclopedia','','<p> </p><p>Our directory of information about different kinds of fruit.</p><p>We love fruit and want the world to know more about all of its many varieties.</p><p>Although it is small now, we work on it whenever we have a chance.</p><p>All of the images can be found in <a href=\"http://commons.wikimedia.org/wiki/Main_Page\">Wikimedia Commons</a>.</p><p><img src=\"images/sampledata/fruitshop/apple.jpg\" border=\"0\" alt=\"Apples\" title=\"Apples\" /></p><p><em>This encyclopedia is implemented using the contact component, each fruit a separate contact and a category for each letter. A CSS style is used to create the horizontal layout of the alphabet headings. </em></p><p><em>If you wanted to, you could allow some users (such as your growers) to have access to just this category in the contact component and let them help you to create new content for the encyclopedia.</em></p><p> </p>',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(38,63,37,70,71,4,'sample-data-contact/shop-site/fruit-encyclopedia/a','com_contact','A','a','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(39,64,37,72,73,4,'sample-data-contact/shop-site/fruit-encyclopedia/b','com_contact','B','b','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(40,65,37,74,75,4,'sample-data-contact/shop-site/fruit-encyclopedia/c','com_contact','C','c','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(41,66,37,76,77,4,'sample-data-contact/shop-site/fruit-encyclopedia/d','com_contact','D','d','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(42,67,37,78,79,4,'sample-data-contact/shop-site/fruit-encyclopedia/e','com_contact','E','e','','',0,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(43,68,37,80,81,4,'sample-data-contact/shop-site/fruit-encyclopedia/f','com_contact','F','f','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(44,69,37,82,83,4,'sample-data-contact/shop-site/fruit-encyclopedia/g','com_contact','G','g','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(45,70,37,84,85,4,'sample-data-contact/shop-site/fruit-encyclopedia/h','com_contact','H','h','','',0,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(46,71,37,86,87,4,'sample-data-contact/shop-site/fruit-encyclopedia/i','com_contact','I','i','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(47,72,37,88,89,4,'sample-data-contact/shop-site/fruit-encyclopedia/j','com_contact','J','j','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(48,73,37,90,91,4,'sample-data-contact/shop-site/fruit-encyclopedia/k','com_contact','K','k','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(49,74,37,92,93,4,'sample-data-contact/shop-site/fruit-encyclopedia/l','com_contact','L','l','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(50,75,37,94,95,4,'sample-data-contact/shop-site/fruit-encyclopedia/m','com_contact','M','m','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(51,76,37,96,97,4,'sample-data-contact/shop-site/fruit-encyclopedia/n','com_contact','N','n','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(52,77,37,98,99,4,'sample-data-contact/shop-site/fruit-encyclopedia/o','com_contact','O','o','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(53,78,37,100,101,4,'sample-data-contact/shop-site/fruit-encyclopedia/p','com_contact','P','p','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(54,79,37,102,103,4,'sample-data-contact/shop-site/fruit-encyclopedia/q','com_contact','Q','q','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(55,80,37,104,105,4,'sample-data-contact/shop-site/fruit-encyclopedia/r','com_contact','R','r','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(56,81,37,106,107,4,'sample-data-contact/shop-site/fruit-encyclopedia/s','com_contact','S','s','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(57,82,37,108,109,4,'sample-data-contact/shop-site/fruit-encyclopedia/t','com_contact','T','t','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(58,83,37,110,111,4,'sample-data-contact/shop-site/fruit-encyclopedia/u','com_contact','U','u','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(59,84,37,112,113,4,'sample-data-contact/shop-site/fruit-encyclopedia/v','com_contact','V','v','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(60,85,37,114,115,4,'sample-data-contact/shop-site/fruit-encyclopedia/w','com_contact','W','w','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(61,86,37,116,117,4,'sample-data-contact/shop-site/fruit-encyclopedia/x','com_contact','X','x','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(62,87,37,118,119,4,'sample-data-contact/shop-site/fruit-encyclopedia/y','com_contact','Y','y','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(63,88,37,120,121,4,'sample-data-contact/shop-site/fruit-encyclopedia/z','com_contact','Z','z','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(64,93,22,15,16,5,'sample-data-articles/joomla/extensions/modules/articles-modules','com_content','Content Modules','articles-modules','','<p>Content modules display article and other information from the content component.</p>',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'*'),(65,94,22,17,18,5,'sample-data-articles/joomla/extensions/modules/user-modules','com_content','User Modules','user-modules','','<p>User modules interact with the user system, allowing users to login, show who is logged-in, and showing the most recently registered users.</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 12:00:50',0,'*'),(66,95,22,19,20,5,'sample-data-articles/joomla/extensions/modules/display-modules','com_content','Display Modules','display-modules','','<p>These modules display information from components other than content and user. These include weblinks, news feeds and the media manager.</p>',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(67,96,22,21,22,5,'sample-data-articles/joomla/extensions/modules/utility-modules','com_content','Utility Modules','utility-modules','','<p>Utility modules provide useful functionality such as search, syndication and statistics.</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 12:01:34',0,'*'),(68,97,23,31,32,5,'sample-data-articles/joomla/extensions/templates/atomic','com_content','Atomic','atomic','','<p><img src=\"templates/atomic/template_thumbnail.png\" border=\"0\" alt=\"The Atomic Template\" style=\"border: 0; float: right;\" /></p>\r\n<p>Atomic is a minimal template designed to be a skeleton for making your own template and to learn about Joomla! templating.</p>\r\n<ul>\r\n<li><a href=\"index.php?Itemid=285\">Home Page</a></li>\r\n<li><a href=\"index.php?Itemid=316\">Typography</a></li>\r\n</ul>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 12:08:16',0,'*'),(69,98,23,27,28,5,'sample-data-articles/joomla/extensions/templates/beez-20','com_content','Beez 20','beez-20','','<p><img src=\"templates/beez_20/template_thumbnail.png\" border=\"0\" alt=\"Beez_20 thumbnail\" align=\"right\" style=\"float: right;\" /></p>\r\n<p>Beez 2.0 is a versatile, easy to customise template that works for a variety of sites. It meets major accessibility standards and demonstrates a range of css and javascript techniques. It is the default template that installs with Joomla!</p>\r\n<ul>\r\n<li><a href=\"index.php?Itemid=424\">Home Page</a></li>\r\n<li><a href=\"index.php?Itemid=423\">Typography</a></li>\r\n</ul>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'*'),(70,99,23,29,30,5,'sample-data-articles/joomla/extensions/templates/beez-5','com_content','Beez 5','beez-5','','<p><img src=\"templates/beez5/template_thumbnail.png\" border=\"0\" alt=\"Beez5 Thumbnail\" align=\"right\" style=\"float: right;\" /></p>\r\n<p>Beez 5 is an html5 implementation of a Joomla! template. It uses a number of html5 techniques to enhance the presentation of a site. It is used as the template for the Fruit Shop sample site.</p>\r\n<ul>\r\n<li><a href=\"index.php?Itemid=458\">Home Page</a></li>\r\n<li><a href=\"index.php?Itemid=457\">Typography</a></li>\r\n</ul>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 12:06:57',0,'*'),(72,108,28,44,45,4,'sample-data-articles/park-site/photo-gallery/animals','com_content','Animals','animals','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'en-GB'),(73,109,28,46,47,4,'sample-data-articles/park-site/photo-gallery/scenery','com_content','Scenery','scenery','','',-2,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'en-GB'),(75,166,22,23,24,5,'sample-data-articles/joomla/extensions/modules/navigation-modules','com_content','Navigation Modules','navigation-modules','','<p>Navigation modules help your visitors move through your site and find what they need.</p>\r\n<p>Menus provide your site with structure and help your visitors navigate your site.  Although they are all based on the same menu module, the variety of ways menus are used in the sample data show how flexible this module is.</p>\r\n<p>A menu can range from extremely simple (for example the top menu or the menu for the Australian Parks sample site) to extremely complex (for example the About Joomla! menu with its many levels). They can also be used for other types of presentation such as the site map linked from the \"This Site\" menu.</p>\r\n<p>Breadcrumbs provide users with information about where they are in a site.</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'*'),(76,167,29,53,54,3,'sample-data-articles/fruit-shop-site/recipes','com_content','Recipes','recipes','','<p>Customers and suppliers can post their favorite recipes for fruit here.</p>\r\n<p>A good idea is to promote the use of metadata keywords to make finding other recipes for the same fruit easier.</p>\r\n<p><em>To see this in action, create a user assigned to the customer group and a user assigned to the suppliers group. These users will be able to create their own recipe pages and edit those pages. They will not be able to edit other users\' pages.</em><br /><br /></p>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 12:18:25',0,'*'),(77,169,1,133,134,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(78,178,1,135,198,1,'2013-06-18-08-28-06','com_content','市场观察','2013-06-18-08-28-06','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:28:06',0,'0000-00-00 00:00:00',0,'*'),(79,179,78,136,143,2,'2013-06-18-08-28-06/2013-06-18-08-28-29','com_content','流行报告','2013-06-18-08-28-29','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:28:29',0,'0000-00-00 00:00:00',0,'*'),(80,180,1,199,228,1,'2013-06-18-08-28-43','com_content',' 设计下载','2013-06-18-08-28-43','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:28:43',0,'0000-00-00 00:00:00',0,'*'),(81,181,1,229,272,1,'2013-06-18-08-28-53','com_content','培训提升','2013-06-18-08-28-53','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:28:53',0,'0000-00-00 00:00:00',0,'*'),(82,182,78,144,153,2,'2013-06-18-08-28-06/2013-06-18-08-29-32','com_content','零售（报告）','2013-06-18-08-29-32','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:29:32',0,'0000-00-00 00:00:00',0,'*'),(83,183,78,154,161,2,'2013-06-18-08-28-06/2013-06-18-08-29-54','com_content','室内设计','2013-06-18-08-29-54','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:29:54',0,'0000-00-00 00:00:00',0,'*'),(84,184,78,162,175,2,'2013-06-18-08-28-06/2013-06-18-08-30-08','com_content',' 新闻商务','2013-06-18-08-30-08','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:30:08',0,'0000-00-00 00:00:00',0,'*'),(85,185,78,176,183,2,'2013-06-18-08-28-06/2013-06-18-08-30-22','com_content','潮流都市','2013-06-18-08-30-22','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:30:22',0,'0000-00-00 00:00:00',0,'*'),(86,186,78,184,191,2,'2013-06-18-08-28-06/2013-06-18-08-30-39','com_content','展会活动','2013-06-18-08-30-39','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:30:39',0,'0000-00-00 00:00:00',0,'*'),(87,187,78,192,197,2,'2013-06-18-08-28-06/2013-06-18-08-30-51','com_content','品牌观察','2013-06-18-08-30-51','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:30:51',0,'0000-00-00 00:00:00',0,'*'),(88,188,79,137,138,3,'2013-06-18-08-28-06/2013-06-18-08-28-29/2013-06-18-08-31-02','com_content','主导趋势','2013-06-18-08-31-02','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:31:02',0,'0000-00-00 00:00:00',0,'*'),(89,189,79,139,140,3,'2013-06-18-08-28-06/2013-06-18-08-28-29/2013-06-18-08-31-14','com_content','创意灵感','2013-06-18-08-31-14','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:31:14',0,'0000-00-00 00:00:00',0,'*'),(90,190,79,141,142,3,'2013-06-18-08-28-06/2013-06-18-08-28-29/2013-06-18-08-31-24','com_content','色彩趋势','2013-06-18-08-31-24','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:31:24',0,'0000-00-00 00:00:00',0,'*'),(91,191,82,145,146,3,'2013-06-18-08-28-06/2013-06-18-08-29-32/2013-06-18-08-31-38','com_content','零售新闻','2013-06-18-08-31-38','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:31:38',0,'0000-00-00 00:00:00',0,'*'),(92,192,82,147,148,3,'2013-06-18-08-28-06/2013-06-18-08-29-32/2013-06-18-08-31-50','com_content','时尚店铺','2013-06-18-08-31-50','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:31:50',0,'0000-00-00 00:00:00',0,'*'),(93,193,82,149,150,3,'2013-06-18-08-28-06/2013-06-18-08-29-32/2013-06-18-08-32-00','com_content','奢侈品观察','2013-06-18-08-32-00','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:32:00',0,'0000-00-00 00:00:00',0,'*'),(94,194,82,151,152,3,'2013-06-18-08-28-06/2013-06-18-08-29-32/2013-06-18-08-32-12','com_content','大众市场观察','2013-06-18-08-32-12','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:32:12',0,'0000-00-00 00:00:00',0,'*'),(95,195,83,155,156,3,'2013-06-18-08-28-06/2013-06-18-08-29-54/2013-06-18-08-32-26','com_content','室内设计趋势','2013-06-18-08-32-26','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:32:26',0,'0000-00-00 00:00:00',0,'*'),(96,196,83,157,158,3,'2013-06-18-08-28-06/2013-06-18-08-29-54/2013-06-18-08-32-36','com_content','室内色彩','2013-06-18-08-32-36','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:32:36',0,'0000-00-00 00:00:00',0,'*'),(97,197,83,159,160,3,'2013-06-18-08-28-06/2013-06-18-08-29-54/2013-06-18-08-32-45','com_content','室内产品设计','2013-06-18-08-32-45','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:32:45',0,'0000-00-00 00:00:00',0,'*'),(98,198,84,163,164,3,'2013-06-18-08-28-06/2013-06-18-08-30-08/2013-06-18-08-32-56','com_content','商业新闻','2013-06-18-08-32-56','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:32:56',0,'0000-00-00 00:00:00',0,'*'),(99,199,84,165,166,3,'2013-06-18-08-28-06/2013-06-18-08-30-08/2013-06-18-08-33-26','com_content','消费市场','2013-06-18-08-33-26','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:33:26',0,'0000-00-00 00:00:00',0,'*'),(100,200,84,167,168,3,'2013-06-18-08-28-06/2013-06-18-08-30-08/2013-06-18-08-33-36','com_content','名人轶事','2013-06-18-08-33-36','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:33:36',0,'0000-00-00 00:00:00',0,'*'),(101,201,84,169,170,3,'2013-06-18-08-28-06/2013-06-18-08-30-08/2013-06-18-08-33-49','com_content','品牌合作','2013-06-18-08-33-49','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:33:49',0,'0000-00-00 00:00:00',0,'*'),(102,202,84,171,172,3,'2013-06-18-08-28-06/2013-06-18-08-30-08/2013-06-18-08-34-43','com_content','采购信息','2013-06-18-08-34-43','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:34:43',0,'0000-00-00 00:00:00',0,'*'),(103,203,84,173,174,3,'2013-06-18-08-28-06/2013-06-18-08-30-08/2013-06-18-08-34-55','com_content','室内设计新闻','2013-06-18-08-34-55','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:34:55',0,'0000-00-00 00:00:00',0,'*'),(104,204,85,177,178,3,'2013-06-18-08-28-06/2013-06-18-08-30-22/2013-06-18-08-35-09','com_content','潮流都市','2013-06-18-08-35-09','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:35:09',0,'0000-00-00 00:00:00',0,'*'),(105,205,85,179,180,3,'2013-06-18-08-28-06/2013-06-18-08-30-22/2013-06-18-08-35-24','com_content','街拍艺术','2013-06-18-08-35-24','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:35:24',0,'0000-00-00 00:00:00',0,'*'),(106,206,85,181,182,3,'2013-06-18-08-28-06/2013-06-18-08-30-22/2013-06-18-08-35-35','com_content','生活时尚','2013-06-18-08-35-35','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:35:35',0,'0000-00-00 00:00:00',0,'*'),(107,207,86,185,186,3,'2013-06-18-08-28-06/2013-06-18-08-30-39/2013-06-18-08-35-50','com_content','时尚展会','2013-06-18-08-35-50','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:35:50',0,'0000-00-00 00:00:00',0,'*'),(108,208,86,187,188,3,'2013-06-18-08-28-06/2013-06-18-08-30-39/2013-06-18-08-36-01','com_content','室内展会','2013-06-18-08-36-01','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:36:01',0,'0000-00-00 00:00:00',0,'*'),(109,209,86,189,190,3,'2013-06-18-08-28-06/2013-06-18-08-30-39/2013-06-18-08-36-23','com_content','展会活动日程','2013-06-18-08-36-23','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:36:23',0,'0000-00-00 00:00:00',0,'*'),(110,210,87,193,194,3,'2013-06-18-08-28-06/2013-06-18-08-30-51/2013-06-18-08-36-39','com_content','品牌列表','2013-06-18-08-36-39','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:36:39',0,'0000-00-00 00:00:00',0,'*'),(111,211,87,195,196,3,'2013-06-18-08-28-06/2013-06-18-08-30-51/2013-06-18-08-36-57','com_content','品牌观察报告','2013-06-18-08-36-57','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:36:57',0,'0000-00-00 00:00:00',0,'*'),(112,212,80,200,205,2,'2013-06-18-08-28-43/2013-06-18-08-42-14','com_content','心情版','2013-06-18-08-42-14','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:42:14',0,'0000-00-00 00:00:00',0,'*'),(113,213,112,201,202,3,'2013-06-18-08-28-43/2013-06-18-08-42-14/2013-06-18-08-42-27','com_content','时尚手册','2013-06-18-08-42-27','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:42:27',0,'0000-00-00 00:00:00',0,'*'),(114,214,112,203,204,3,'2013-06-18-08-28-43/2013-06-18-08-42-14/2013-06-18-08-42-38','com_content','实用方案','2013-06-18-08-42-38','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:42:38',0,'0000-00-00 00:00:00',0,'*'),(115,215,116,209,210,3,'2013-06-18-08-28-43/2013-06-18-08-43-14/2013-06-18-08-45-56','com_content','会员下载','2013-06-18-08-45-56','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:42:51',901,'2013-06-18 08:45:56',0,'*'),(116,216,80,206,211,2,'2013-06-18-08-28-43/2013-06-18-08-43-14','com_content','原创设计','2013-06-18-08-43-14','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:43:14',0,'0000-00-00 00:00:00',0,'*'),(117,217,80,212,219,2,'2013-06-18-08-28-43/2013-06-18-08-43-28','com_content','颜色','2013-06-18-08-43-28','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:43:28',0,'0000-00-00 00:00:00',0,'*'),(118,218,80,220,227,2,'2013-06-18-08-28-43/2013-06-18-08-43-38','com_content','设计素材','2013-06-18-08-43-38','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:43:38',0,'0000-00-00 00:00:00',0,'*'),(119,219,116,207,208,3,'2013-06-18-08-28-43/2013-06-18-08-43-14/vip','com_content','VIP下载','vip','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:43:52',0,'0000-00-00 00:00:00',0,'*'),(120,220,117,213,214,3,'2013-06-18-08-28-43/2013-06-18-08-43-28/2013-06-18-08-44-03','com_content','色卡','2013-06-18-08-44-03','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:44:03',0,'0000-00-00 00:00:00',0,'*'),(121,221,117,215,216,3,'2013-06-18-08-28-43/2013-06-18-08-43-28/2013-06-18-08-44-12','com_content','色彩案例','2013-06-18-08-44-12','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:44:12',0,'0000-00-00 00:00:00',0,'*'),(122,222,117,217,218,3,'2013-06-18-08-28-43/2013-06-18-08-43-28/2013-06-18-08-44-21','com_content','色彩资料','2013-06-18-08-44-21','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:44:21',0,'0000-00-00 00:00:00',0,'*'),(123,223,118,221,222,3,'2013-06-18-08-28-43/2013-06-18-08-43-38/2013-06-18-08-44-33','com_content','高清图库','2013-06-18-08-44-33','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:44:33',0,'0000-00-00 00:00:00',0,'*'),(124,224,118,223,224,3,'2013-06-18-08-28-43/2013-06-18-08-43-38/2013-06-18-08-44-44','com_content','款式资料库','2013-06-18-08-44-44','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:44:44',0,'0000-00-00 00:00:00',0,'*'),(125,225,118,225,226,3,'2013-06-18-08-28-43/2013-06-18-08-43-38/2013-06-18-08-44-57','com_content','组织库','2013-06-18-08-44-57','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:44:57',0,'0000-00-00 00:00:00',0,'*'),(126,226,81,230,235,2,'2013-06-18-08-28-53/2013-06-18-08-50-41','com_content','培训','2013-06-18-08-50-41','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:50:41',0,'0000-00-00 00:00:00',0,'*'),(127,227,81,236,243,2,'2013-06-18-08-28-53/2013-06-18-08-50-56','com_content','设计工具','2013-06-18-08-50-56','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:50:56',0,'0000-00-00 00:00:00',0,'*'),(128,228,81,244,251,2,'2013-06-18-08-28-53/2013-06-18-08-51-15','com_content','资料','2013-06-18-08-51-15','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:51:15',0,'0000-00-00 00:00:00',0,'*'),(129,229,81,252,257,2,'2013-06-18-08-28-53/2013-06-18-08-51-29','com_content','工艺分析','2013-06-18-08-51-29','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:51:29',0,'0000-00-00 00:00:00',0,'*'),(130,230,81,258,263,2,'2013-06-18-08-28-53/2013-06-18-08-51-40','com_content','设计风格','2013-06-18-08-51-40','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:51:40',0,'0000-00-00 00:00:00',0,'*'),(131,231,81,264,271,2,'2013-06-18-08-28-53/2013-06-18-08-51-49','com_content','材料','2013-06-18-08-51-49','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:51:49',0,'0000-00-00 00:00:00',0,'*'),(132,232,126,231,232,3,'2013-06-18-08-28-53/2013-06-18-08-50-41/2013-06-18-08-52-05','com_content','培训计划','2013-06-18-08-52-05','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:52:05',0,'0000-00-00 00:00:00',0,'*'),(133,233,126,233,234,3,'2013-06-18-08-28-53/2013-06-18-08-50-41/2013-06-18-08-52-23','com_content','培训回顾','2013-06-18-08-52-23','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:52:23',0,'0000-00-00 00:00:00',0,'*'),(134,234,127,237,238,3,'2013-06-18-08-28-53/2013-06-18-08-50-56/2013-06-18-08-52-42','com_content','平面应用','2013-06-18-08-52-42','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:52:42',0,'0000-00-00 00:00:00',0,'*'),(135,235,127,239,240,3,'2013-06-18-08-28-53/2013-06-18-08-50-56/2013-06-18-08-52-52','com_content','纺织品应用','2013-06-18-08-52-52','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:52:52',0,'0000-00-00 00:00:00',0,'*'),(136,236,127,241,242,3,'2013-06-18-08-28-53/2013-06-18-08-50-56/2013-06-18-08-53-01','com_content','室内应用','2013-06-18-08-53-01','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:53:01',0,'0000-00-00 00:00:00',0,'*'),(137,237,128,245,246,3,'2013-06-18-08-28-53/2013-06-18-08-51-15/2013-06-18-08-53-24','com_content','文献资料','2013-06-18-08-53-24','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:53:24',0,'0000-00-00 00:00:00',0,'*'),(138,238,128,247,248,3,'2013-06-18-08-28-53/2013-06-18-08-51-15/2013-06-18-08-53-33','com_content','杂志资料','2013-06-18-08-53-33','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:53:33',0,'0000-00-00 00:00:00',0,'*'),(139,239,128,249,250,3,'2013-06-18-08-28-53/2013-06-18-08-51-15/2013-06-18-08-53-42','com_content','古董资料','2013-06-18-08-53-42','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:53:42',0,'0000-00-00 00:00:00',0,'*'),(140,240,129,253,254,3,'2013-06-18-08-28-53/2013-06-18-08-51-29/2013-06-18-08-53-57','com_content','纺织品工艺','2013-06-18-08-53-57','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:53:57',0,'0000-00-00 00:00:00',0,'*'),(141,241,129,255,256,3,'2013-06-18-08-28-53/2013-06-18-08-51-29/2013-06-18-08-54-11','com_content','墙纸工艺','2013-06-18-08-54-11','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:54:11',0,'0000-00-00 00:00:00',0,'*'),(142,242,130,259,260,3,'2013-06-18-08-28-53/2013-06-18-08-51-40/2013-06-18-08-54-22','com_content','风格常识','2013-06-18-08-54-22','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:54:22',0,'0000-00-00 00:00:00',0,'*'),(143,243,130,261,262,3,'2013-06-18-08-28-53/2013-06-18-08-51-40/2013-06-18-08-54-33','com_content','案例学习','2013-06-18-08-54-33','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:54:33',0,'0000-00-00 00:00:00',0,'*'),(144,244,131,265,266,3,'2013-06-18-08-28-53/2013-06-18-08-51-49/2013-06-18-08-54-51','com_content','新型材料','2013-06-18-08-54-51','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:54:51',0,'0000-00-00 00:00:00',0,'*'),(145,245,131,267,268,3,'2013-06-18-08-28-53/2013-06-18-08-51-49/2013-06-18-08-55-00','com_content','新型纤维','2013-06-18-08-55-00','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:55:00',0,'0000-00-00 00:00:00',0,'*'),(146,246,131,269,270,3,'2013-06-18-08-28-53/2013-06-18-08-51-49/2013-06-18-08-55-09','com_content','面料','2013-06-18-08-55-09','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:55:09',0,'0000-00-00 00:00:00',0,'*');
/*!40000 ALTER TABLE `yami_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_contact_details`
--

DROP TABLE IF EXISTS `yami_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_contact_details`
--

LOCK TABLES `yami_contact_details` WRITE;
/*!40000 ALTER TABLE `yami_contact_details` DISABLE KEYS */;
INSERT INTO `yami_contact_details` VALUES (1,'Contact Name Here','name','Position','Street Address','Suburb','State','Country','Zip Code','Telephone','Fax','<p>Information about or by the contact.</p>','images/powered_by.png','top','email@example.com',1,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"1\",\"linka_name\":\"Twitter\",\"linka\":\"http:\\/\\/twitter.com\\/joomla\",\"linkb_name\":\"YouTube\",\"linkb\":\"http:\\/\\/www.youtube.com\\/user\\/joomla\",\"linkc_name\":\"Facebook\",\"linkc\":\"http:\\/\\/www.facebook.com\\/joomla\",\"linkd_name\":\"FriendFeed\",\"linkd\":\"http:\\/\\/friendfeed.com\\/joomla\",\"linke_name\":\"Scribed\",\"linke\":\"http:\\/\\/www.scribd.com\\/people\\/view\\/504592-joomla\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,16,1,'','','last','first','middle','en-GB','2011-01-01 00:00:01',901,'','2011-12-27 12:23:32',42,'','','{\"robots\":\"\",\"rights\":\"\"}',1,'','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Webmaster','webmaster','','','','','','','','','','',NULL,'webmaster@example.com',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,34,1,'','','','','','en-GB','2011-01-01 00:00:01',901,'','2011-01-01 00:00:01',42,'','','{\"robots\":\"\",\"rights\":\"\"}',1,'','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Owner','owner','','','','','','','','','<p>I\'m the owner of this store.</p>','',NULL,'',0,1,0,'0000-00-00 00:00:00',2,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,36,1,'','','','','','*','2011-01-01 00:00:01',901,'','2011-01-01 00:00:01',42,'','','{\"robots\":\"\",\"rights\":\"\"}',1,'','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Buyer','buyer','','','','','','','','','<p>I am in charge of buying fruit. If you sell good fruit, contact me.</p>','',NULL,'',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"0\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,36,1,'','','','','','*','2011-01-01 00:00:01',901,'','2011-01-01 00:00:01',42,'','','{\"robots\":\"\",\"rights\":\"\"}',1,'','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'Bananas','bananas','Scientific Name: Musa','Image Credit: Enzik\r\nRights: Creative Commons Share Alike Unported 3.0\r\nSource: http://commons.wikimedia.org/wiki/File:Bananas_-_Morocco.jpg','','Type: Herbaceous','Large Producers: India, China, Brasil','','','','<p>Bananas are a great source of potassium.</p>\r\n<p> </p>','images/sampledata/fruitshop/bananas_2.jpg',NULL,'',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"show_with_link\",\"show_contact_list\":\"\",\"presentation_style\":\"plain\",\"show_name\":\"\",\"show_position\":\"1\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"1\",\"show_postcode\":\"\",\"show_country\":\"1\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"1\",\"linka_name\":\"Wikipedia: Banana English\",\"linka\":\"http:\\/\\/en.wikipedia.org\\/wiki\\/Banana\",\"linkb_name\":\"Wikipedia:  \\u0939\\u093f\\u0928\\u094d\\u0926\\u0940 \\u0915\\u0947\\u0932\\u093e\",\"linkb\":\"http:\\/\\/hi.wikipedia.org\\/wiki\\/%E0%A4%95%E0%A5%87%E0%A4%B2%E0%A4%BE\",\"linkc_name\":\"Wikipedia:Banana Portugu\\u00eas\",\"linkc\":\"http:\\/\\/pt.wikipedia.org\\/wiki\\/Banana\",\"linkd_name\":\"Wikipedia: \\u0411\\u0430\\u043d\\u0430\\u043d  \\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439\",\"linkd\":\"http:\\/\\/ru.wikipedia.org\\/\\u0411\\u0430\\u043d\\u0430\\u043d\",\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"beez5:encyclopedia\"}',0,39,1,'','','','','','*','2011-01-01 00:00:01',901,'','2011-01-01 00:00:01',42,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'Apples','apples','Scientific Name: Malus domestica','Image Credit: Fievet\r\nRights: Public Domain\r\nSource: http://commons.wikimedia.org/wiki/File:Pommes_vertes.JPG','','Family: Rosaceae','Large: Producers: China, United States','','','','<p>Apples are a versatile fruit, used for eating, cooking, and preserving.</p>\r\n<p>There are more that 7500 different kinds of apples grown around the world.</p>','images/sampledata/fruitshop/apple.jpg',NULL,'',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"plain\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"1\",\"linka_name\":\"Wikipedia: Apples English\",\"linka\":\"http:\\/\\/en.wikipedia.org\\/wiki\\/Apple\",\"linkb_name\":\"Wikipedia: Manzana Espa\\u00f1ol \",\"linkb\":\"http:\\/\\/es.wikipedia.org\\/wiki\\/Manzana\",\"linkc_name\":\"Wikipedia: \\u82f9\\u679c \\u4e2d\\u6587\",\"linkc\":\"http:\\/\\/zh.wikipedia.org\\/zh\\/\\u82f9\\u679c\",\"linkd_name\":\"Wikipedia: Tofaa Kiswahili\",\"linkd\":\"http:\\/\\/sw.wikipedia.org\\/wiki\\/Tofaa\",\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"beez5:encyclopedia\"}',0,38,1,'','','','','','*','2011-01-01 00:00:01',901,'','2011-01-01 00:00:01',42,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'Tamarind','tamarind','Scientific Name: Tamarindus indica','Image Credit: Franz Eugen Köhler, Köhler\'s Medizinal-Pflanzen \r\nRights: Public Domain\r\nSource:http://commons.wikimedia.org/wiki/File:Koeh-134.jpg','','Family: Fabaceae','Large Producers: India, United States','','','','<p>Tamarinds are a versatile fruit used around the world. In its young form it is used in hot sauces; ripened it is the basis for many refreshing drinks.</p>\r\n<p> </p>','images/sampledata/fruitshop/tamarind.jpg',NULL,'',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"plain\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"1\",\"linka_name\":\"Wikipedia: Tamarind English\",\"linka\":\"http:\\/\\/en.wikipedia.org\\/wiki\\/Tamarind\",\"linkb_name\":\"Wikipedia: \\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2  \\u09ac\\u09be\\u0982\\u09b2\\u09be  \",\"linkb\":\"http:\\/\\/bn.wikipedia.org\\/wiki\\/\\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2 \",\"linkc_name\":\"Wikipedia: Tamarinier Fran\\u00e7ais\",\"linkc\":\"http:\\/\\/fr.wikipedia.org\\/wiki\\/Tamarinier\",\"linkd_name\":\"Wikipedia:Tamaline lea faka-Tonga\",\"linkd\":\"http:\\/\\/to.wikipedia.org\\/wiki\\/Tamaline\",\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"beez5:encyclopedia\"}',0,57,1,'','','','','','*','2011-01-01 00:00:01',901,'','2011-01-01 00:00:01',42,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'Shop Address','shop-address','','','Our City','Our Province','Our Country','','555-555-5555','','<p>Here are directions for how to get to our shop.</p>','',NULL,'',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,35,1,'','','','','','*','2011-01-01 00:00:01',901,'','2011-01-01 00:00:01',42,'','','{\"robots\":\"\",\"rights\":\"\"}',1,'','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `yami_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_content`
--

DROP TABLE IF EXISTS `yami_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_content`
--

LOCK TABLES `yami_content` WRITE;
/*!40000 ALTER TABLE `yami_content` DISABLE KEYS */;
INSERT INTO `yami_content` VALUES (1,89,'Administrator Components','administrator-components','','<p>All components are also used in the administrator area of your website. In addition to the ones listed here, there are components in the administrator that do not have direct front end displays, but do help shape your site. The most important ones for most users are</p>\r\n<ul>\r\n<li>Media Manager</li>\r\n<li>Extensions Manager</li>\r\n<li>Menu Manager</li>\r\n<li>Global Configuration</li>\r\n<li>Banners</li>\r\n<li>Redirect</li>\r\n</ul>\r\n<hr title=\"Media Manager\" alt=\"Media Manager\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" />\r\n<p> </p>\r\n<h3>Media Manager</h3>\r\n<p>The media manager component lets you upload and insert images into content throughout your site. Optionally, you can enable the flash uploader which will allow you to to upload multiple images. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Content_Media_Manager\">Help</a></p>\r\n<hr title=\"Extensions Manager\" alt=\"Extensions Manager\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" />\r\n<h3>Extensions Manager</h3>\r\n<p>The extensions manager lets you install, update, uninstall and manage all of your extensions. The extensions manager has been extensively redesigned, although the core install and uninstall functionality remains the same as in Joomla! 1.5. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Extension_Manager_Install\">Help</a></p>\r\n<hr title=\"Menu Manager\" alt=\"Menu Manager\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" />\r\n<h3>Menu Manager</h3>\r\n<p>The menu manager lets you create the menus you see displayed on your site. It also allows you to assign modules and template styles to specific menu links. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Menus_Menu_Manager\">Help</a></p>\r\n<hr title=\"Global Configuration\" alt=\"Global Configuration\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" />\r\n<h3>Global Configuration</h3>\r\n<p>The global configuration is where the site administrator configures things such as whether search engine friendly urls are enabled, the site meta data (descriptive text used by search engines and indexers) and other functions. For many beginning users simply leaving the settings on default is a good way to begin, although when your site is ready for the public you will want to change the meta data to match its content. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Site_Global_Configuration\">Help</a></p>\r\n<hr title=\"Banners\" alt=\"Banners\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" />\r\n<h3>Banners</h3>\r\n<p>The banners component provides a simple way to display a rotating image in a module and, if you wish to have advertising, a way to track the number of times an image is viewed and clicked. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Banners_Banners_Edit\">Help</a></p>\r\n<hr title=\"Redirect\" class=\"system-pagebreak\" />\r\n<h3><br />Redirect</h3>\r\n<p>The redirect component is used to manage broken links that produce Page Not Found (404) errors. If enabled it will allow you to redirect broken links to specific pages. It can also be used to manage migration related URL changes. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Redirect_Manager\">Help</a></p>','',1,0,0,21,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:03:19',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',9,0,7,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(2,90,'Archive Module','archive-module','','<p>This module shows a list of the calendar months containing archived articles. After you have changed the status of an article to archived, this list will be automatically generated. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Archive\" title=\"Archive Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule articles_archive,Archived Articles}</div>','',1,0,0,64,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:18:05',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',5,0,5,'modules, content','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(3,91,'Article Categories Module','article-categories-module','','<p>This module displays a list of categories from one parent category. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Categories\" title=\"Categories Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule articles_categories,Articles Categories}</div>\r\n<p> </p>','',1,0,0,64,'2011-01-01 00:00:01',901,'','2011-09-17 22:13:31',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',5,0,6,'modules, content','',1,6,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(4,92,'Articles Category Module','articles-category-module','','<p>This module allows you to display the articles in a specific category. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Category\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule articles_category,Articles Category}</div>','',1,0,0,64,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:18:26',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',8,0,7,'','articles,content',1,10,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(5,101,'Authentication','authentication','','<p>The authentication plugins operate when users login to your site or administrator. The Joomla! authentication plugin is in operation by default but you can enable Gmail or LDAP or install a plugin for a different system. An example is included that may be used to create a new authentication plugin.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Joomla <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Authentication_-_GMail\">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>Gmail <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Authentication_-_GMail\">Help</a></li>\r\n<li>LDAP <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Authentication_-_LDAP\">Help</a></li>\r\n</ul>','',1,0,0,25,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:04:13',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,3,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(6,102,'Australian Parks ','australian-parks','','<p><img src=\"images/sampledata/parks/banner_cradle.jpg\" border=\"0\" alt=\"Cradle Park Banner\" /></p>\r\n<p>Welcome!</p>\r\n<p>This is a basic site about the beautiful and fascinating parks of Australia.</p>\r\n<p>On this site you can read all about my travels to different parks, see photos, and find links to park websites.</p>\r\n<p><em>This sample site is an example of using the core of Joomla! to create a basic website, whether a \"brochure site,\"  a personal blog, or as a way to present information on a topic you are interested in.</em></p>\r\n<p><em> Read more about the site in the About Parks module.</em></p>\r\n<p> </p>','',1,0,0,26,'2011-01-01 00:00:01',901,'Parks Webmaster','2011-09-06 06:20:19',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',2,0,1,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(7,103,'Banner Module','banner-module','','<p>The banner module is used to display the banners that are managed by the banners component in the site administrator. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Banners\">Help</a>.</p>\r\n<div class=\"sample-module\">{loadmodule banners,Banners}</div>','',1,0,0,66,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:32:58',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',4,0,6,'','',1,4,'',0,'*',''),(8,104,'Beginners','beginners','','<p>If this is your first Joomla! site or your first web site, you have come to the right place. Joomla will help you get your website up and running quickly and easily.</p>\r\n<p>Start off using your site by logging in using the administrator account you created when you installed Joomla.</p>\r\n','\r\n<p>Explore the articles and other resources right here on your site data to learn more about how Joomla works. (When you\'re done reading, you can delete or archive all of this.) You will also probably want to visit the Beginners\' Areas of the <a href=\"http://docs.joomla.org/Beginners\">Joomla documentation</a> and <a href=\"http://forum.joomla.org\">support forums</a>.</p>\r\n<p>You\'ll also want to sign up for the Joomla Security Mailing list and the Announcements mailing list. For inspiration visit the <a href=\"http://community.joomla.org/showcase/\">Joomla! Site Showcase</a> to see an amazing array of ways people use Joomla to tell their stories on the web.</p>\r\n<p>The basic Joomla installation will let you get a great site up and running, but when you are ready for more features the power of Joomla is in the creative ways that developers have extended it to do all kinds of things. Visit the <a href=\"http://extensions.joomla.org/\">Joomla! Extensions Directory</a> to see thousands of extensions that can do almost anything you could want on a website. Can\'t find what you need? You may want to find a Joomla professional in the <a href=\"http://resources.joomla.org/\">Joomla! Resource Directory</a>.</p>\r\n<p>Want to learn more? Consider attending a <a href=\"http://community.joomla.org/events.html\">Joomla! Day</a> or other event or joining a local <a href=\"http://community.joomla.org/user-groups.html\">Joomla! Users Group</a>. Can\'t find one near you? Start one yourself.</p>',1,0,0,19,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:10:49',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,4,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(9,105,'Contacts','contact','','<p>The contact component provides a way to provide contact forms and information for your site or to create a complex directory that can be used for many different purposes. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Contacts_Contacts\">Help</a></p>','',1,0,0,21,'2011-01-01 00:00:01',901,'Joomla!','2011-01-10 04:15:37',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',2,0,2,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(10,106,'Content','content','','<p>The content component (com_content) is what you use to write articles. It is extremely flexible and has the largest number of built in views. Articles can be created and edited from the front end, making content the easiest component to use to create your site content. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Content_Article_Manager\">Help</a></p>','',1,0,0,21,'2011-01-01 00:00:01',901,'','2011-01-10 04:28:12',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',2,0,1,'','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(11,107,'Cradle Mountain','cradle-mountain','','<p> </p>\r\n','\r\n<p> </p>',1,0,0,73,'2011-01-01 00:00:01',901,'Parks Webmaster','2012-01-17 04:42:36',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/landscape\\/250px_cradle_mountain_seen_from_barn_bluff.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Cradle Mountain\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/landscape\\/800px_cradle_mountain_seen_from_barn_bluff.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"Cradle Mountain\",\"image_fulltext_caption\":\"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Rainforest,bluemountainsNSW.jpg Author: Alan J.W.C. License: GNU Free Documentation License v . 1.2 or later\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,1,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(12,110,'Custom HTML Module','custom-html-module','','<p>This module allows you to create your own HTML Module using a WYSIWYG editor. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Custom_HTML\" title=\"Custom HTML Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule custom,Custom HTML}</div>','',1,0,0,66,'2011-01-01 00:00:01',901,'','2011-12-27 11:12:46',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',13,0,1,'','',1,13,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(13,111,'Directions','directions','','<p>Here\'s how to find our shop.</p><p>By car</p><p>Drive along Main Street to the intersection with First Avenue.  Look for our sign.</p><p>By foot</p><p>From the center of town, walk north on Main Street until you see our sign.</p><p>By bus</p><p>Take the #73 Bus to the last stop. We are on the north east corner.</p>','',1,0,0,29,'2011-01-01 00:00:01',901,'Fruit Shop Webmaster','2011-01-01 00:00:01',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,0,2,'','',1,0,'',0,'*',''),(14,112,'Editors','editors','','<p>Editors are used thoughout Joomla! where content is created. TinyMCE is the default choice in most locations although CodeMirror is used in the template manager. No Editor provides a text box for html content.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>CodeMirror <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Editor_-_CodeMirror\">Help</a></li>\r\n<li>TinyMCE<a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Editor_-_TinyMCE\"> Help</a></li>\r\n<li>No Editor <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Editor_-_None\">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>None</li>\r\n</ul>','',1,0,0,25,'2011-01-01 00:00:01',901,'Joomla!','2011-09-06 05:45:40',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',2,0,5,'','',1,0,'',0,'*',''),(15,113,'Editors-xtd','editors-xtd','','<p>These plugins are the buttons found beneath your editor. They only run when an editor plugin runs.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Editor Button: Image<a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Image\"> Help</a></li>\r\n<li>Editor Button: Readmore <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Readmore\">Help</a></li>\r\n<li>Editor Button: Page Break <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Pagebreak\">Help</a></li>\r\n<li>Editor Button: Article <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Article\">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>None</li>\r\n</ul>','',1,0,0,25,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:14:12',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,6,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(16,114,'Feed Display','feed-display','','<p>This module allows the displaying of a syndicated feed. <a href=\"http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Feed_Display\" title=\"Feed Display Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule feed,Feed Display}</div>','',1,0,0,66,'2011-01-01 00:00:01',901,'','2011-09-17 22:22:08',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',3,0,2,'','',1,3,'',0,'*',''),(17,115,'First Blog Post','first-blog-post','','<p><em>Lorem Ipsum is filler text that is commonly used by designers before the content for a new site is ready.</em></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus purus vitae diam posuere nec eleifend elit dictum. Aenean sit amet erat purus, id fermentum lorem. Integer elementum tristique lectus, non posuere quam pretium sed. Quisque scelerisque erat at urna condimentum euismod. Fusce vestibulum facilisis est, a accumsan massa aliquam in. In auctor interdum mauris a luctus. Morbi euismod tempor dapibus. Duis dapibus posuere quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In eu est nec erat sollicitudin hendrerit. Pellentesque sed turpis nunc, sit amet laoreet velit. Praesent vulputate semper nulla nec varius. Aenean aliquam, justo at blandit sodales, mauris leo viverra orci, sed sodales mauris orci vitae magna.</p>','<p>Quisque a massa sed libero tristique suscipit. Morbi tristique molestie metus, vel vehicula nisl ultrices pretium. Sed sit amet est et sapien condimentum viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus viverra tortor porta orci convallis ac cursus erat sagittis. Vivamus aliquam, purus non luctus adipiscing, orci urna imperdiet eros, sed tincidunt neque sapien et leo. Cras fermentum, dolor id tempor vestibulum, neque lectus luctus mauris, nec congue tellus arcu nec augue. Nulla quis mi arcu, in bibendum quam. Sed placerat laoreet fermentum. In varius lobortis consequat. Proin vulputate felis ac arcu lacinia adipiscing. Morbi molestie, massa id sagittis luctus, sem sapien sollicitudin quam, in vehicula quam lectus quis augue. Integer orci lectus, bibendum in fringilla sit amet, rutrum eget enim. Curabitur at libero vitae lectus gravida luctus. Nam mattis, ligula sit amet vestibulum feugiat, eros sem sodales mi, nec dignissim ante elit quis nisi. Nulla nec magna ut leo convallis sagittis ac non erat. Etiam in augue nulla, sed tristique orci. Vestibulum quis eleifend sapien.</p><p>Nam ut orci vel felis feugiat posuere ut eu lorem. In risus tellus, sodales eu eleifend sed, imperdiet id nulla. Nunc at enim lacus. Etiam dignissim, arcu quis accumsan varius, dui dui faucibus erat, in molestie mauris diam ac lacus. Sed sit amet egestas nunc. Nam sollicitudin lacinia sapien, non gravida eros convallis vitae. Integer vehicula dui a elit placerat venenatis. Nullam tincidunt ligula aliquet dui interdum feugiat. Maecenas ultricies, lacus quis facilisis vehicula, lectus diam consequat nunc, euismod eleifend metus felis eu mauris. Aliquam dapibus, ipsum a dapibus commodo, dolor arcu accumsan neque, et tempor metus arcu ut massa. Curabitur non risus vitae nisl ornare pellentesque. Pellentesque nec ipsum eu dolor sodales aliquet. Vestibulum egestas scelerisque tincidunt. Integer adipiscing ultrices erat vel rhoncus.</p><p>Integer ac lectus ligula. Nam ornare nisl id magna tincidunt ultrices. Phasellus est nisi, condimentum at sollicitudin vel, consequat eu ipsum. In venenatis ipsum in ligula tincidunt bibendum id et leo. Vivamus quis purus massa. Ut enim magna, pharetra ut condimentum malesuada, auctor ut ligula. Proin mollis, urna a aliquam rutrum, risus erat cursus odio, a convallis enim lectus ut lorem. Nullam semper egestas quam non mattis. Vestibulum venenatis aliquet arcu, consectetur pretium erat pulvinar vel. Vestibulum in aliquet arcu. Ut dolor sem, pellentesque sit amet vestibulum nec, tristique in orci. Sed lacinia metus vel purus pretium sit amet commodo neque condimentum.</p><p>Aenean laoreet aliquet ullamcorper. Nunc tincidunt luctus tellus, eu lobortis sapien tincidunt sed. Donec luctus accumsan sem, at porttitor arcu vestibulum in. Sed suscipit malesuada arcu, ac porttitor orci volutpat in. Vestibulum consectetur vulputate eros ut porttitor. Aenean dictum urna quis erat rutrum nec malesuada tellus elementum. Quisque faucibus, turpis nec consectetur vulputate, mi enim semper mi, nec porttitor libero magna ut lacus. Quisque sodales, leo ut fermentum ullamcorper, tellus augue gravida magna, eget ultricies felis dolor vitae justo. Vestibulum blandit placerat neque, imperdiet ornare ipsum malesuada sed. Quisque bibendum quam porta diam molestie luctus. Sed metus lectus, ornare eu vulputate vel, eleifend facilisis augue. Maecenas eget urna velit, ac volutpat velit. Nam id bibendum ligula. Donec pellentesque, velit eu convallis sodales, nisi dui egestas nunc, et scelerisque lectus quam ut ipsum.</p>',1,0,0,27,'2011-01-01 00:00:01',901,'','2011-01-01 00:00:01',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,0,2,'','',1,0,'',0,'*',''),(18,116,'Second Blog Post','second-blog-post','','<p><em>Lorem Ipsum is text that is traditionally used by designers when working on a site before the content is ready.</em></p><p>Pellentesque bibendum metus ut dolor fermentum ut pulvinar tortor hendrerit. Nam vel odio vel diam tempus iaculis in non urna. Curabitur scelerisque, nunc id interdum vestibulum, felis elit luctus dui, ac dapibus tellus mauris tempus augue. Duis congue facilisis lobortis. Phasellus neque erat, tincidunt non lacinia sit amet, rutrum vitae nunc. Sed placerat lacinia fermentum. Integer justo sem, cursus id tristique eget, accumsan vel sapien. Curabitur ipsum neque, elementum vel vestibulum ut, lobortis a nisl. Fusce malesuada mollis purus consectetur auctor. Morbi tellus nunc, dapibus sit amet rutrum vel, laoreet quis mauris. Aenean nec sem nec purus bibendum venenatis. Mauris auctor commodo libero, in adipiscing dui adipiscing eu. Praesent eget orci ac nunc sodales varius.</p>','<p>Nam eget venenatis lorem. Vestibulum a interdum sapien. Suspendisse potenti. Quisque auctor purus nec sapien venenatis vehicula malesuada velit vehicula. Fusce vel diam dolor, quis facilisis tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque libero nisi, pellentesque quis cursus sit amet, vehicula vitae nisl. Curabitur nec nunc ac sem tincidunt auctor. Phasellus in mattis magna. Donec consequat orci eget tortor ultricies rutrum. Mauris luctus vulputate molestie. Proin tincidunt vehicula euismod. Nam congue leo non erat cursus a adipiscing ipsum congue. Nulla iaculis purus sit amet turpis aliquam sit amet dapibus odio tincidunt. Ut augue diam, congue ut commodo pellentesque, fermentum mattis leo. Sed iaculis urna id enim dignissim sodales at a ipsum. Quisque varius lobortis mollis. Nunc purus magna, pellentesque pellentesque convallis sed, varius id ipsum. Etiam commodo mi mollis erat scelerisque fringilla. Nullam bibendum massa sagittis diam ornare rutrum.</p><p>Praesent convallis metus ut elit faucibus tempus in quis dui. Donec fringilla imperdiet nibh, sit amet fringilla velit congue et. Quisque commodo luctus ligula, vitae porttitor eros venenatis in. Praesent aliquet commodo orci id varius. Nulla nulla nibh, varius id volutpat nec, sagittis nec eros. Cras et dui justo. Curabitur malesuada facilisis neque, sed tempus massa tincidunt ut. Sed suscipit odio in lacus auctor vehicula non ut lacus. In hac habitasse platea dictumst. Sed nulla nisi, lacinia in viverra at, blandit vel tellus. Nulla metus erat, ultrices non pretium vel, varius nec sem. Morbi sollicitudin mattis lacus quis pharetra. Donec tincidunt mollis pretium. Proin non libero justo, vitae mattis diam. Integer vel elit in enim varius posuere sed vitae magna. Duis blandit tempor elementum. Vestibulum molestie dui nisi.</p><p>Curabitur volutpat interdum lorem sed tempus. Sed placerat quam non ligula lacinia sodales. Cras ultrices justo at nisi luctus hendrerit. Quisque sit amet placerat justo. In id sapien eu neque varius pharetra sed in sapien. Etiam nisl nunc, suscipit sed gravida sed, scelerisque ut nisl. Mauris quis massa nisl, aliquet posuere ligula. Etiam eget tortor mauris. Sed pellentesque vestibulum commodo. Mauris vitae est a libero dapibus dictum fringilla vitae magna.</p><p>Nulla facilisi. Praesent eget elit et mauris gravida lobortis ac nec risus. Ut vulputate ullamcorper est, volutpat feugiat lacus convallis non. Maecenas quis sem odio, et aliquam libero. Integer vel tortor eget orci tincidunt pulvinar interdum at erat. Integer ullamcorper consequat eros a pellentesque. Cras sagittis interdum enim in malesuada. Etiam non nunc neque. Fusce non ligula at tellus porta venenatis. Praesent tortor orci, fermentum sed tincidunt vel, varius vel dui. Duis pulvinar luctus odio, eget porta justo vulputate ac. Nulla varius feugiat lorem sed tempor. Phasellus pulvinar dapibus magna eget egestas. In malesuada lectus at justo pellentesque vitae rhoncus nulla ultrices. Proin ut sem sem. Donec eu suscipit ipsum. Cras eu arcu porttitor massa feugiat aliquet at quis nisl.</p>',1,0,0,27,'2011-01-01 00:00:01',901,'','2011-01-01 00:00:01',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,0,1,'','',1,0,'',0,'*',''),(19,117,'Footer Module','footer-module','','<p>This module shows the Joomla! copyright information. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Footer\" title=\"Footer Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule footer,Footer}</div>','',1,0,0,66,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:22:47',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',4,0,3,'','',1,4,'',0,'*',''),(20,118,'Fruit Shop','fruit-shop','','<h2>Welcome to the Fruit Shop</h2>\r\n<p>We sell fruits from around the world. Please use our website to learn more about our business. We hope you will come to our shop and buy some fruit.</p>\r\n<p><em>This mini site will show you how you might want to set up a site for a business, in this example one selling fruit. It shows how to use access controls to manage your site content. If you were building a real site, you might want to extend it with e-commerce, a catalog, mailing lists or other enhancements, many of which are available through the</em><a href=\"http://extensions.joomla.org\"><em> Joomla! Extensions Directory</em></a>.</p>\r\n<p><em>To understand this site you will probably want to make one user with group set to customer and one with group set to grower. By logging in with different privileges you can see how access control works.</em></p>','',1,0,0,29,'2011-01-01 00:00:01',901,'Fruit Shop Webmaster','2011-12-27 11:17:59',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(21,119,'Getting Help','getting-help','','<p><img class=\"image-left\" src=\"administrator/templates/hathor/images/header/icon-48-help_header.png\" border=\"0\" /> There are lots of places you can get help with Joomla!. In many places in your site administrator you will see the help icon. Click on this for more information about the options and functions of items on your screen. Other places to get help are:</p>\r\n<ul>\r\n<li><a href=\"http://forum.joomla.org\">Support Forums</a></li>\r\n<li><a href=\"http://docs.joomla.org\">Documentation</a></li>\r\n<li><a href=\"http://resources.joomla.org\">Professionals</a></li>\r\n<li><a href=\"http://shop.joomla.org/amazoncom-bookstores.html\">Books</a></li>\r\n</ul>','',1,0,0,19,'2011-01-01 00:00:01',901,'Joomla!','2011-01-10 15:32:54',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',10,0,8,'','',1,17,'',0,'*',''),(22,120,'Getting Started','getting-started','','<p>It\'s easy to get started creating your website. Knowing some of the basics will help.</p>\r\n<h3>What is a Content Management System?</h3>\r\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p>\r\n<p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. The Joomla! software brings together the template and the content to create web pages.</p>\r\n<h3>Site and Administrator</h3>\r\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \"Site Administrator\" link on the \"This Site\" menu or by adding /administrator to the end of you domain name.</p>\r\n<p>Log in to the administrator using the username and password created during the installation of Joomla.</p>\r\n<h3>Logging in</h3>\r\n<p>To login to the front end of your site use the login form or the login menu link on the \"This Site\" menu. Use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles.</p>\r\n<p>In managing your site, you will be able to create content that only logged-in users are able to see.</p>\r\n<h3>Creating an article</h3>\r\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \"submit article\" link on that menu.</p>\r\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published and put it in the Joomla category.</p>\r\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div>\r\n<h3>Learn more</h3>\r\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href=\"http://docs.joomla.org\">Joomla! documentation site</a> and on the<a href=\"http://forum.joomla.org\"> Joomla! forums</a>.</p>','',1,0,0,19,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:21:44',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,9,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(23,121,'Happy Orange Orchard','happy-orange-orchard','','<p>At our orchard we grow the world\'s best oranges as well as other citrus fruit such as lemons and grapefruit. Our family has been tending this orchard for generations.</p>','',1,0,0,30,'2011-01-01 00:00:01',901,'Fruit Shop Webmaster','2011-01-01 00:00:01',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,0,2,'','',1,0,'',0,'*',''),(24,122,'Joomla!','joomla','','<p>Congratulations! You have a Joomla site! Joomla makes it easy to build a website just the way you want it and keep it simple to update and maintain.</p>\r\n<p>Joomla is a flexible and powerful platform, whether you are building a small site for yourself or a huge site with hundreds of thousands of visitors. Joomla is open source, which means you can make it work just the way you want it to.</p>','',1,0,0,19,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:22:23',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,2,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(25,123,'Koala','koala','','<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n','\r\n<p> </p>',1,0,0,72,'2011-01-01 00:00:01',901,'Parks Webmaster','2012-01-17 05:15:00',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/animals\\/180px_koala_ag1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Koala  Thumbnail\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/animals\\/800px_koala_ag1.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Koala Climbing Tree\",\"image_fulltext_caption\":\"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Koala-ag1.jpg Author: Arnaud Gaillard License: Creative Commons Share Alike Attribution Generic 1.0\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',9,0,2,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(26,124,'Language Switcher','language-switcher','','<p>The language switcher module allows you to take advantage of the language tags that are available when content, modules and menu links are created.</p>\r\n<p>This module displays a list of available Content Languages for switching between them.</p>\r\n<p>When switching languages, it redirects to the Home page, or associated menu item, defined for the chosen language. Thereafter, the navigation will be the one defined for that language.</p>\r\n<p><strong>The language filter plugin must be enabled for this module to work properly.</strong></p>\r\n<p><strong></strong> <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Language_Switcher\" title=\"Language Switcher Module\">Help</a></p>\r\n<p>To view an example of the language switch moduler module, go to the site administrator and enable the language filter plugin and the language switcher module labelled \"language switcher\" and visit the fruit shop or park sample sites. Then follow<a href=\"http://docs.joomla.org/Language_Switcher_Tutorial_for_Joomla_1.6\"> the instructions in this tutorial</a>.</p>','',1,0,0,67,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:25:00',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,3,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(27,125,'Latest Articles Module','latest-articles-module','','<p>This module shows a list of the most recently published and current Articles. Some that are shown may have expired even though they are the most recent. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Latest_News\" title=\"Latest Articles\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule articles_latest,Latest News}</div>','',1,0,0,64,'2011-01-01 00:00:01',901,'','2011-12-27 11:25:41',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',9,0,1,'modules, content','',1,15,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(28,126,'Login Module','login-module','','<p>This module displays a username and password login form. It also displays a link to retrieve a forgotten password. If user registration is enabled (in the Global Configuration settings), another link will be shown to enable self-registration for users. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Login\" title=\"Login\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule login,login}</div>','',1,0,0,65,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:20:35',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',4,0,2,'','',1,5,'',0,'*',''),(29,127,'Menu Module','menu-module','','<p>This module displays a menu on the site (frontend).  Menus can be displayed in a wide variety of ways by using the menu options and css menu styles. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Menu\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule mod_menu,Menu Example}</div>','',1,0,0,75,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:18:45',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',8,0,1,'','',1,12,'',0,'*',''),(30,128,'Most Read Content','most-read-content','','<p>This module shows a list of the currently published Articles which have the highest number of page views. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Most_Read\" title=\"Most Read Content\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule articles_popular,Articles Most Read}</div>','',1,0,0,64,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:26:41',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,0,2,'modules, content','',1,10,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(31,129,'News Flash','news-flash','','<p>Displays a set number of articles from a category based on date or random selection. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Newsflash\" title=\"News Flash Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule articles_news,News Flash}</div>','',1,0,0,64,'2011-01-01 00:00:01',901,'','2011-09-17 22:16:46',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',4,0,3,'modules, content','',1,10,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(32,130,'Options','options','','<p>As you make your Joomla! site you will control the details of the display using <em>options</em> also referred to as <em>parameter</em><strong>s</strong>. Options control everything from whether the author\'s name is displayed to who can view what to the number of items shown on a list.</p>\r\n<p>Default options for each component are changed using the Options button on the component toolbar.</p>\r\n<p>Options can also be set on an individual item, such as an article or contact and in menu links.</p>\r\n<p>If you are happy with how your site looks, it is fine to leave all of the options set to the defaults that were created when your site was installed. As you become more experienced with Joomla you will use options more.</p>\r\n<p> </p>','',1,0,0,19,'2011-01-01 00:00:01',901,'Joomla!','2012-01-17 16:21:24',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,10,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(33,131,'Phyllopteryx','phyllopteryx','','<p> </p>\r\n','\r\n<p> </p>',1,0,0,72,'2011-01-01 00:00:01',901,'Parks Webmaster','2012-01-17 04:57:58',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/animals\\/200px_phyllopteryx_taeniolatus1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Phyllopteryx\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/animals\\/800px_phyllopteryx_taeniolatus1.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Phyllopteryx\",\"image_fulltext_caption\":\"Source: http:\\/\\/en.wikipedia.org\\/wiki\\/File:Phyllopteryx_taeniolatus1.jpg Author: Richard Ling License: GNU Free Documentation License v 1.2 or later\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,3,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(34,132,'Pinnacles','pinnacles','','<p> </p>\r\n','\r\n<p> </p>',1,0,0,73,'2011-01-01 00:00:01',901,'Parks Webmaster','2012-01-17 04:41:30',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/landscape\\/120px_pinnacles_western_australia.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Kings Canyon\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/landscape\\/800px_pinnacles_western_australia.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Kings Canyon\",\"image_fulltext_caption\":\"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Pinnacles_Western_Australia.jpg  Author: Martin Gloss  License: GNU Free Documentation license v 1.2 or later.\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,4,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(35,133,'Professionals','professionals','','<p>Joomla! 2.5 continues development of the Joomla Framework and CMS as a powerful and flexible way to bring your vision of the web to reality. With the administrator now fully MVC, the ability to control its look and the management of extensions is now complete.</p>\r\n','\r\n<p>Working with multiple template styles and overrides for the same views, creating the design you want is easier than it has ever been. Limiting support to PHP 5.2.4 and above makes Joomla lighter and faster than ever. Languages files can now be overridden without having your changes lost during an upgrade.  With the proper xml your users update extensions with a single click.</p>\r\n<p>Access control lists are now incorporated using a new system developed for Joomla. The ACL system is designed with developers in mind, so it is easy to incorporate into your extensions. The new nested sets libraries allow you to incorporate infinitely deep categories but also to use nested sets in a variety of other ways.</p>\r\n<p>A new forms library makes creating all kinds of user interaction simple. MooTools 1.3 provides a highly flexible javascript framework that is a major advance over MooTools 1.0.</p>\r\n<p>New events throughout the core make integration of your plugins where you want them a snap.</p>\r\n<p>The separation of the Joomla! Platform project from the Joomla! CMS project makes continuous development of new, powerful APIs  and continuous improvement of existing APIs possible while maintaining the stability of the CMS that millions of webmasters and professionals rely upon.</p>\r\n<p>Learn about:</p>\r\n<ul>\r\n<li><a href=\"http://docs.joomla.org/What\'s_new_in_Joomla_1.6\">Changes since 1.5</a></li>\r\n<li><a href=\"http://docs.joomla.org/ACL_Tutorial_for_Joomla_1.6\">Working with ACL</a></li>\r\n<li><a href=\"http://docs.joomla.org/API16:JCategories\">Working with nested categories</a></li>\r\n<li><a href=\"http://docs.joomla.org/API16:JForm\">Forms library</a></li>\r\n<li><a href=\"http://docs.joomla.org/Working_with_Mootools_1.3\">Working with Mootools 1.3</a></li>\r\n<li><a href=\"http://docs.joomla.org/Layout_Overrides_in_Joomla_1.6\">Using new features of the override system</a></li>\r\n<li><a href=\"http://api.joomla.org\">Joomla! API</a></li>\r\n<li><a href=\"http://docs.joomla.org/API16:JDatabaseQuery\">Using JDatabaseQuery</a></li>\r\n<li><a href=\"http://docs.joomla.org/What\'s_new_in_Joomla_1.6#Events\">New and updated events</a></li>\r\n<li><a href=\"http://docs.joomla.org/Xml-rpc_changes_in_Joomla!_1.6\">Xmlrpc</a></li>\r\n<li><a href=\"http://docs.joomla.org/What\'s_new_in_Joomla_1.6#Extension_management\">Installing and updating extensions</a></li>\r\n<li><a href=\"http://docs.joomla.org/Setting_up_your_workstation_for_Joomla!_development\">Setting up your development environment</a></li>\r\n<li><a href=\"github.com/joomla\">The Joomla! Platform Repository</a> </li>\r\n</ul>',1,0,0,19,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:36:13',42,0,'0000-00-00 00:00:00','2011-01-09 16:41:13','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',16,0,5,'','',1,10,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(36,134,'Random Image Module','random-image-module','','<p>This module displays a random image from your chosen image directory. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Random_Image\" title=\"Random Image Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule random_image,Random Image}</div>','',1,0,0,66,'2011-01-01 00:00:01',901,'','2012-01-17 16:11:13',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,0,4,'','',1,6,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(37,135,'Related Items Module','related-items-module','','<p>This module displays other Articles that are related to the one currently being viewed. These relations are established by the Meta Keywords.  All the keywords of the current Article are searched against all the keywords of all other published articles. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Related\" title=\"Related Items Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule related_items,Articles Related Items}</div>','',1,0,0,64,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:37:34',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,0,4,'modules, content','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(38,136,'Sample Sites','sample-sites','','<p>Your installation includes sample data, designed to show you some of the options you have for building your website. In addition to information about Joomla! there are two sample \"sites within a site\" designed to help you get started with building your own site.</p>\r\n<p>The first site is a simple site about <a href=\"index.php?Itemid=243\">Australian Parks</a>. It shows how you can quickly and easily build a personal site with just the building blocks that are part of Joomla. It includes a personal blog, weblinks, and a very simple image gallery.</p>\r\n<p>The second site is slightly more complex and represents what you might do if you are building a site for a small business, in this case a <a href=\"index.php/welcome.html\"></a><a href=\"index.php?Itemid=429\">Fruit Shop</a>.</p>\r\n<p>In building either style site, or something completely different, you will probably want to add <a href=\"http://extensions.joomla.org\">extensions</a> and either create or purchase your own template. Many Joomla users start by modifying the <a href=\"http://docs.joomla.org/How_do_you_modify_a_template%3F\">templates</a> that come with the core distribution so that they include special images and other design elements that relate to their site\'s focus.</p>','',1,0,0,19,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:39:07',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,11,'','',1,6,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(39,137,'Search','search-component','','<p>Joomla! 2.5 offers two search options.</p>\r\n<p>The Basic Search component provides basic search functionality for the information contained in your core components. Many extensions can also be searched by the search component. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Search\">Help</a></p>\r\n<p>The Smart Search component offers searching similar to that found in major search engines. Smart Search is disabled by default. If you choose to enable it you will need to take several steps. First, enable the Smart Search Plugin in the plugin manager. Then, if you are using the Basic Search Module replace it with the Smart Search Module. Finally, if you have already created content, go to the Smart Search component in your site administrator and click the Index icon. Once indexing of your content is complete, Smart Search will be ready to use. Help.</p>','',1,0,0,21,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:41:48',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,3,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(40,138,'Search Module','search-module','','<p>This module will display a search box. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Search\" title=\"Search\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule search,Search}</div>','',1,0,0,67,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:35:56',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',4,0,4,'','',1,6,'',0,'*',''),(41,139,'Search ','search-plugin','','<p>The search component uses plugins to control which parts of your Joomla! site are searched. You may choose to turn off some areas to improve performance or for other reasons. Many third party Joomla! extensions have search plugins that extend where search takes place.</p>\r\n<p>Default On:</p>\r\n<ul>\r\n<li>Content <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Content\">Help</a></li>\r\n<li>Contacts <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Contacts\">Help</a></li>\r\n<li>Weblinks <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Weblinks\">Help</a></li>\r\n<li>News Feeds <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Newsfeeds\">Help</a></li>\r\n<li>Categories <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Categories\">Help</a></li>\r\n</ul>','',1,0,0,25,'2011-01-01 00:00:01',901,'Joomla!','2011-09-06 06:13:18',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',3,0,1,'','',1,0,'',0,'*',''),(42,140,'Site Map','site-map','','<p>{loadposition sitemapload}</p><p><em>By putting all of your content into nested categories you can give users and search engines access to everything using a menu.</em></p>','',1,0,0,14,'2011-01-01 00:00:01',901,'Joomla!','2011-01-01 00:00:01',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,0,1,'','',1,0,'',0,'*',''),(43,141,'Spotted Quoll','spotted-quoll','','<p> </p>\r\n<p> </p>\r\n','\r\n<p> </p>',1,0,0,72,'2011-01-01 00:00:01',901,'Parks Webmaster','2012-01-17 05:02:58',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/animals\\/220px_spottedquoll_2005_seanmcclean.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Spotted Quoll\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/animals\\/789px_spottedquoll_2005_seanmcclean.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Spotted Quoll\",\"image_fulltext_caption\":\"Source: http:\\/\\/en.wikipedia.org\\/wiki\\/File:SpottedQuoll_2005_SeanMcClean.jpg Author: Sean McClean License: GNU Free Documentation License v 1.2 or later\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,4,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(44,142,'Statistics Module','statistics','','<p>This module shows information about your server installation together with statistics on the Web site users, number of Articles in your database and the number of Web links you provide.</p>\r\n<div class=\"sample-module\">{loadmodule mod_stats,Statistics}</div>','',1,0,0,67,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:43:25',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,0,5,'','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(45,143,'Syndicate Module','syndicate-module','','<p>The syndicate module will display a link that allows users to take a feed from your site. It will only display on pages for which feeds are possible. That means it will not display on single article, contact or weblinks pages, such as this one. <a href=\"http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Syndicate\" title=\"Synicate Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadposition syndicate,Syndicate}</div>','',1,0,0,67,'2011-01-01 00:00:01',901,'','2011-12-27 11:44:16',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,6,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(46,144,'System','system','','<p>System plugins operate every time a page on your site loads. They control such things as your URLS, whether users can check a \"remember me\" box on the login module, and whether caching is enabled. New is the redirect plugin that together with the redirect component will assist you in managing changes in URLs.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Remember me <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Remember_Me\">Help</a></li>\r\n<li>SEF <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_SEF\">Help</a></li>\r\n<li>Debug <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Debug\">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>Cache <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Cache\">Help</a></li>\r\n<li>Log <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Log\">Help</a></li>\r\n<li>Redirect <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Redirect\">Help</a></li>\r\n</ul>','',1,0,0,25,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:45:54',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,0,2,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(47,145,'The Joomla! Community','the-joomla-community','','<p>Joomla means All Together, and it is a community of people all working and having fun together that makes Joomla possible. Thousands of people each year participate in the Joomla community, and we hope you will be one of them.</p>\r\n<p>People with all kinds of skills, of all skill levels and from around the world are welcome to join in. Participate in the <a href=\"http://joomla.org\">Joomla.org</a> family of websites (the<a href=\"http://forum.joomla.org\"> forum </a>is a great place to start). Come to a <a href=\"http://community.joomla.org/events.html\">Joomla! event</a>. Join or start a <a href=\"http://community.joomla.org/user-groups.html\">Joomla! Users Group</a>. Whether you are a developer, site administrator, designer, end user or fan, there are ways for you to participate and contribute.</p>','',1,0,0,19,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:47:56',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,3,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(48,146,'The Joomla! Project','the-joomla-project','','<p>The Joomla Project consists of all of the people who make and support the Joomla Web Platform and Content Management System.</p>\r\n<p>Our mission is to provide a flexible platform for digital publishing and collaboration.</p>\r\n<p>The core values are:</p>\r\n<ul>\r\n<li>Freedom</li>\r\n<li>Equality</li>\r\n<li>Trust</li>\r\n<li>Community</li>\r\n<li>Collaboration</li>\r\n<li>Usability</li>\r\n</ul>\r\n<p>In our vision, we see:</p>\r\n<ul>\r\n<li>People publishing and collaborating in their communities and around the world</li>\r\n<li>Software that is free, secure, and high-quality</li>\r\n<li>A community that is enjoyable and rewarding to participate in</li>\r\n<li>People around the world using their preferred languages</li>\r\n<li>A project that acts autonomously</li>\r\n<li>A project that is socially responsible</li>\r\n<li>A project dedicated to maintaining the trust of its users</li>\r\n</ul>\r\n<p>There are millions of users around the world and thousands of people who contribute to the Joomla Project. They work in three main groups: the Production Working Group, responsible for everything that goes into software and documentation; the Community Working Group, responsible for creating a nurturing the community; and Open Source Matters, the non profit organization responsible for managing legal, financial and organizational issues.</p>\r\n<p>Joomla is a free and open source project, which uses the GNU General Public License version 2 or later.</p>','',1,0,0,19,'2011-01-01 00:00:01',901,'','2011-12-27 11:47:48',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,1,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(49,147,'Typography','typography','','<h1>H1 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h1><h2>H2 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h2><h3>H3 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h3><h4>H4 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h4><h5>H5 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h5><h6>H6 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h6><p>P The quick brown fox ran over the lazy dog. THE QUICK BROWN FOX RAN OVER THE LAZY DOG.</p><ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item</li></ul></li></ul></li></ul><ol><li>tem</li><li>Item</li><li>Item<br /> <ol><li>Item</li><li>Item</li><li>Item<br /><ol><li>Item</li><li>Item</li><li>Item</li></ol></li></ol> </li></ol>','',1,0,0,23,'2011-01-01 00:00:01',901,'Joomla!','2011-01-01 00:00:01',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,0,1,'','',1,0,'',0,'*',''),(50,148,'Upgraders','upgraders','','<p>If you are an experienced Joomla! 1.5 user, this Joomla site will seem very familiar. There are new templates and improved user interfaces, but most functionality is the same. The biggest changes are improved access control (ACL) and nested categories. This release of Joomla has strong continuity with Joomla! 1.7 while adding enhancements.</p>\r\n','\r\n<p>The new user manager will let you manage who has access to what in your site. You can leave access groups exactly the way you had them in Joomla 1.5 or make them as complicated as you want. You can learn more about<a href=\"http://docs.joomla.org/ACL_Tutorial_for_Joomla_1.6\"> how access control works</a> in on the <a href=\"http://docs.joomla.org\">Joomla! Documentation site</a></p>\r\n<p>In Joomla 1.5 and 1.0 content was organized into sections and categories. From 1.6 forward sections are gone, and you can create categories within categories, going as deep as you want. The sample data provides many examples of the use of nested categories.</p>\r\n<p>All layouts have been redesigned to improve accessibility and flexibility. </p>\r\n<p>Updating your site and extensions when needed is easier than ever thanks to installer improvements.</p>\r\n<p> </p>',1,0,0,19,'2011-01-01 00:00:01',901,'','2012-01-17 04:28:10',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,0,6,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(51,149,'User','user-plugins','','<p>Default on:</p>\r\n<ul>\r\n<li>Joomla <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#User_-_Joomla.21\">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<p>Two new plugins are available but are disabled by default.</p>\r\n<ul>\r\n<li>Contact Creator <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#User_-_Contact_Creator\">Help</a><br />Creates a new linked contact record for each new user created.</li>\r\n<li>Profile <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#User_-_Profile\">Help</a><br />This example profile plugin allows you to insert additional fields into user registration and profile display. This is intended as an example of the types of extensions to the profile you might want to create.</li>\r\n</ul>','',1,0,0,25,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:51:25',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,4,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(52,150,'Users','users-component','','<p>The users extension lets your site visitors register, login and logout, change their passwords and other information, and recover lost passwords. In the administrator it allows you to create, block and manage users and create user groups and access levels. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Users_User_Manager\">Help</a></p>\r\n<p>Please note that some of the user views will not display if you are not logged-in to the site.</p>','',1,0,0,21,'2011-01-01 00:00:01',901,'Joomla!','2011-01-10 04:52:55',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',2,0,5,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(53,151,'Using Joomla!','using-joomla','','<p>With Joomla you can create anything from a simple personal website to a complex ecommerce or social site with millions of visitors.</p>\r\n<p>This section of the sample data provides you with a brief introduction to Joomla concepts and reference material to help you understand how Joomla works.</p>\r\n<p><em>When you no longer need the sample data, you can can simply unpublish the sample data category found within each extension in the site administrator or you may completely delete each item and all of the categories. </em></p>','',1,0,0,19,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:52:45',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,7,'','',1,10,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(54,152,'Weblinks','weblinks','','<p>Weblinks (com_weblinks) is a component that provides a structured way to organize external links and present them in a visually attractive, consistent and informative way. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Weblinks_Links\">Help</a></p>','',1,0,0,21,'2011-01-01 00:00:01',901,'Joomla!','2011-01-10 04:20:10',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',2,0,6,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(55,153,'Weblinks Module','weblinks-module','','<p>This module displays the list of weblinks in a category. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Weblinks\" title=\"Weblinks Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule weblinks,Weblinks}</div>','',1,0,0,66,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:32:10',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',7,0,5,'','',1,23,'',0,'*',''),(56,154,'Who\'s Online','whos-online','','<p>The Who\'s Online Module displays the number of Anonymous Users (e.g. Guests) and Registered Users (ones logged-in) that are currently accessing the Web site. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Who_Online\" title=\"Who\'s Online\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule whosonline,Who\'s Online}</div>','',1,0,0,65,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:19:45',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',4,0,1,'','',1,5,'',0,'*',''),(57,155,'Wobbegone','wobbegone','','<p> </p>\r\n','\r\n<p> </p>',1,0,0,72,'2011-01-01 00:00:01',901,'Parks Webmaster','2012-01-17 05:01:59',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/animals\\/180px_wobbegong.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Wobbegon\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/animals\\/800px_wobbegong.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Wobbegon\",\"image_fulltext_caption\":\"Source: http:\\/\\/en.wikipedia.org\\/wiki\\/File:Wobbegong.jpg Author: Richard Ling Rights: GNU Free Documentation License v 1.2 or later\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(58,156,'Wonderful Watermelon','wonderful-watermelon','','<p>Watermelon is a wonderful and healthy treat. We grow the world\'s sweetest watermelon. We have the largest watermelon patch in our country.</p>','',1,0,0,30,'2011-01-01 00:00:01',901,'Fruit Shop Webmaster','2011-01-01 00:00:01',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,0,1,'','',1,0,'',0,'*',''),(59,157,'Wrapper Module','wrapper-module','','<p>This module shows an iFrame window to specified location. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Wrapper\" title=\"Wrapper Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule wrapper,Wrapper}</div>','',1,0,0,67,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:35:00',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',8,0,1,'','',1,15,'',0,'*',''),(60,158,'News Feeds','news-feeds','','<p>News Feeds (com_newsfeeds) provides a way to organize and present news feeds. News feeds are a way that you present information from another site on your site. For example, the joomla.org website has numerous feeds that you can incorporate on your site. You an use menus to present a single feed, a list of feeds in a category, or a list of all feed categories. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Newsfeeds_Feeds\">Help</a></p>','',1,0,0,21,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:27:31',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,4,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(61,159,'Breadcrumbs Module','breadcrumbs-module','','<p>Breadcrumbs provide a pathway for users to navigate through the site. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Breadcrumbs\" title=\"Breacrumbs Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule breadcrumbs,breadcrumbs}</div>','',1,0,0,75,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:10:19',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',5,0,2,'','',1,9,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(62,160,'Content','content-plugins','','<p>Content plugins run when specific kinds of pages are loaded. They do things ranging from protecting email addresses from harvesters to creating page breaks.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Email Cloaking <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Email_Cloaking\">Help</a></li>\r\n<li>Load Module <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Load_Modules\">Help</a></li>\r\n<li>Page Break <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Pagebreak\">Help</a></li>\r\n<li>Page Navigation<a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Page_Navigation\"> Help</a></li>\r\n<li>Vote <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Vote\">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>Code Highlighter (GeSHi) <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Code_Highlighter_.28GeSHi.29\">Help</a></li>\r\n</ul>','',1,0,0,25,'2011-01-01 00:00:01',901,'Joomla!','2011-09-06 06:11:50',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',2,0,7,'','',1,1,'',0,'*',''),(64,162,'Blue Mountain Rain Forest','blue-mountain-rain-forest','','<p> </p>\r\n','\r\n<p> </p>',1,0,0,73,'2011-01-01 00:00:01',901,'Parks Webmaster','2012-01-17 04:36:30',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/landscape\\/120px_rainforest_bluemountainsnsw.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"Rain Forest Blue Mountains\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/landscape\\/727px_rainforest_bluemountainsnsw.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Rain Forest Blue Mountains\",\"image_fulltext_caption\":\"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Rainforest,bluemountainsNSW.jpg Author: Adam J.W.C. License: GNU Free Documentation License\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,2,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(65,163,'Ormiston Pound','ormiston-pound','','<p> </p>\r\n','\r\n<p> </p>',1,0,0,73,'2011-01-01 00:00:01',901,'Parks Webmaster','2012-01-17 04:51:33',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/landscape\\/180px_ormiston_pound.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"Ormiston Pound\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/landscape\\/800px_ormiston_pound.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Ormiston Pound\",\"image_fulltext_caption\":\"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Ormiston_Pound.JPG Author: License: GNU Free Public Documentation License\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,0,3,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(66,165,'Latest Users Module','latest-users-module','','<p>This module displays the latest registered users. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Latest_Users\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule users_latest,Users Latest}</div>','',1,0,0,65,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:21:05',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',4,0,3,'','',1,6,'',0,'*',''),(67,168,'What\'s New in 1.5?','whats-new-in-15','','<p>This article deliberately archived as an example.</p><p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>\r\n<p style=\"margin-bottom: 0in;\">In Joomla! 1.5, you\'\'ll notice:</p>\r\n<ul>\r\n<li>Substantially improved usability, manageability, and scalability far beyond the original Mambo foundations</li>\r\n<li>Expanded accessibility to support internationalisation, double-byte characters and right-to-left support for Arabic, Farsi, and Hebrew languages among others</li>\r\n<li>Extended integration of external applications through Web services</li>\r\n<li>Enhanced content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination</li>\r\n<li>A more sustainable and flexible framework for Component and Extension developers</li>\r\n<li>Backward compatibility with previous releases of Components, Templates, Modules, and other Extensions</li>\r\n</ul>','',2,0,0,9,'2011-01-01 00:00:01',901,'Joomla! 1.5','2011-01-01 00:00:01',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,0,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(68,170,'Captcha','captcha','','<p>The Captcha plugins are used to prevent spam submissions on your forms such as registration, contact and login. You basic installation of Joomla includes one Captcha plugin which leverages the ReCaptcha® service but you may install other plugins connecting to different Captcha systems.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>ReCaptcha <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit\">help</a></li>\r\n</ul>\r\n<p>Note: ReCaptcha is a the trademark of Google Inc. and is an independent product not associated with or endorsed by the Joomla Project. You will need to register and agree to the Terms of Service at Recaptcha.net to use this plugin. Complete instructions are available if you edit the ReCaptcha plugin in the Plugin Manager.</p>','',1,0,0,25,'2012-01-17 03:20:45',901,'Joomla!','2012-01-17 03:35:46',42,0,'0000-00-00 00:00:00','2012-01-17 03:20:45','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(69,171,'Quick Icons','quick-icons','','<p> The Quick Icon plugin group is used to provide notification that updates to Joomla! or installed extensions are available and should be applied. These notifications display on your administrator control panel, which is the page you see when you first log in to your site administrator.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Quick icon - Joomla! extensions updates notification <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit\">Help</a>.</li>\r\n<li>Quick icon - Joomla! update notification <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit\">Help</a></li>\r\n</ul>','',1,0,0,25,'2012-01-17 03:27:39',901,'Joomla!','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2012-01-17 03:27:39','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(70,170,'Smart Search','smart-search','','<p>This module provides search using the Smart Search component. You should only use it if you have indexed your content and either have enabled the Smart Search content plugin or are keeping the index of your site updated manually. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help25:Extensions_Module_Manager_Smart_Search\">Help</a>.</p>\r\n<div class=\"sample-module\">{loadmodule finder,Smart Search}</div>','',1,0,0,67,'2012-01-17 03:42:36',901,'','2012-01-17 16:15:48',42,0,'0000-00-00 00:00:00','2012-01-17 03:42:36','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',10,0,0,'','',1,13,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `yami_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_content_frontpage`
--

DROP TABLE IF EXISTS `yami_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_content_frontpage`
--

LOCK TABLES `yami_content_frontpage` WRITE;
/*!40000 ALTER TABLE `yami_content_frontpage` DISABLE KEYS */;
INSERT INTO `yami_content_frontpage` VALUES (8,2),(24,1),(35,4),(50,3);
/*!40000 ALTER TABLE `yami_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_content_rating`
--

DROP TABLE IF EXISTS `yami_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_content_rating`
--

LOCK TABLES `yami_content_rating` WRITE;
/*!40000 ALTER TABLE `yami_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_core_log_searches`
--

DROP TABLE IF EXISTS `yami_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_core_log_searches`
--

LOCK TABLES `yami_core_log_searches` WRITE;
/*!40000 ALTER TABLE `yami_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_easytagcloud_controller`
--

DROP TABLE IF EXISTS `yami_easytagcloud_controller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_easytagcloud_controller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` float(4,1) NOT NULL,
  `updatetime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_easytagcloud_controller`
--

LOCK TABLES `yami_easytagcloud_controller` WRITE;
/*!40000 ALTER TABLE `yami_easytagcloud_controller` DISABLE KEYS */;
INSERT INTO `yami_easytagcloud_controller` VALUES (1,2.4,1371462726);
/*!40000 ALTER TABLE `yami_easytagcloud_controller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_easytagcloud_tags`
--

DROP TABLE IF EXISTS `yami_easytagcloud_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_easytagcloud_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extension` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `access` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_easytagcloud_tags`
--

LOCK TABLES `yami_easytagcloud_tags` WRITE;
/*!40000 ALTER TABLE `yami_easytagcloud_tags` DISABLE KEYS */;
INSERT INTO `yami_easytagcloud_tags` VALUES (1,'content',2,64,'modules',1),(2,'content',2,64,'content',1),(3,'content',3,64,'modules',1),(4,'content',3,64,'content',1),(5,'content',27,64,'modules',1),(6,'content',27,64,'content',1),(7,'content',30,64,'modules',1),(8,'content',30,64,'content',1),(9,'content',31,64,'modules',1),(10,'content',31,64,'content',1),(11,'content',37,64,'modules',1),(12,'content',37,64,'content',1);
/*!40000 ALTER TABLE `yami_easytagcloud_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_extensions`
--

DROP TABLE IF EXISTS `yami_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10038 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_extensions`
--

LOCK TABLES `yami_extensions` WRITE;
/*!40000 ALTER TABLE `yami_extensions` DISABLE KEYS */;
INSERT INTO `yami_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"zh-CN\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"useractivation\":\"1\",\"frontend_userparams\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"legacy\":false,\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/\",\"version\":\"5.2\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"legacy\":false,\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"legacy\":false,\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"11.4\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(405,'plg_content_geshi','plugin','geshi','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"linenumbers\":\"0\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2013\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\\/\",\"version\":\"3.5.4.1\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"true\",\"resize_horizontal\":\"false\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(500,'atomic','template','atomic','',0,1,1,0,'{\"legacy\":false,\"name\":\"atomic\",\"type\":\"template\",\"creationDate\":\"10\\/10\\/09\",\"author\":\"Ron Severdia\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"contact@kontentdesign.com\",\"authorUrl\":\"http:\\/\\/www.kontentdesign.com\",\"version\":\"2.5.0\",\"description\":\"TPL_ATOMIC_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(502,'bluestork','template','bluestork','',1,1,1,0,'{\"legacy\":false,\"name\":\"bluestork\",\"type\":\"template\",\"creationDate\":\"07\\/02\\/09\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"TPL_BLUESTORK_XML_DESCRIPTION\",\"group\":\"\"}','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(503,'beez_20','template','beez_20','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez_20\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"legacy\":false,\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"2.5.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(505,'beez5','template','beez5','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez5\",\"type\":\"template\",\"creationDate\":\"21 May 2010\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ5_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"html5\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.10\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.10\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"April 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.11\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(800,'PKG_JOOMLA','package','pkg_joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"PKG_JOOMLA\",\"type\":\"package\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PKG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,'','language','zh-CN','',0,1,0,0,'{\"legacy\":true,\"name\":\"\\u7b80\\u4f53\\u4e2d\\u6587\",\"type\":\"language\",\"creationDate\":\"2013-04-15\",\"author\":\"CHN Translation Team\",\"copyright\":\"Copyright (C) 2010 CHN Joomla Translation Team  (http:\\/\\/joomlacode.org\\/gf\\/project\\/choice\\/). All rights reserved.\",\"authorEmail\":\"zhous1998@sohu.com\",\"authorUrl\":\"www.joomla.cn\",\"version\":\"2.5.11.1\",\"description\":\"\\n    \\n<div align=\\\"center\\\">\\n <table border=\\\"0\\\" width=\\\"90%\\\">\\n  <table width=\\\"100%\\\" border=\\\"0\\\">\\n  <tr>\\n    <td colspan=\\\"2\\\">Chinese language for Joomla 1.6 back-end. Translated by CHN Joomla Translation Team, one of Joomla Accredited Translations.<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">Joomla 2.5 \\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\\u662f\\u7531Joomla\\u6388\\u6743\\u7ffb\\u8bd1\\u7ec4\\u7684Derek Joe\\u5728Joomla 1.6\\u7ffb\\u8bd1\\u5de5\\u4f5c\\u7684\\u57fa\\u7840\\u4e0a\\u8865\\u5145\\u7ffb\\u8bd1\\u3002<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">Joomla 2.5\\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\\u5305\\u7684\\u4e3b\\u8981\\u8d21\\u732e\\u4eba\\uff1a<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u524d\\u53f0\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/wuyujie\\/\\\" target=\\\"_blank\\\">\\u6b66\\u7389\\u6770<\\/a>(wuyujie)\\u3001 <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/gzpan123\\/\\\" target=\\\"_blank\\\">\\u90ed\\u5fd7\\u6500<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u540e\\u53f0\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/keydiagram\\/\\\" target=\\\"_blank\\\">Key Diagram<\\/a>\\u3001<a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/tchyusuf\\/\\\">Yusuf  Wang<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u5b89\\u88c5\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/freechoice\\/\\\" target=\\\"_blank\\\">Johnathan Cheun<\\/a>\\u3001<a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/tchyusuf\\/\\\">Yusuf  Wang<\\/a>\\u3001 <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/zhous\\/\\\" target=\\\"_blank\\\">Derek Joe<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u793a\\u8303\\u5185\\u5bb9\\u53ca\\u7f16\\u8f91\\u5668\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/zhous\\/\\\" target=\\\"_blank\\\">Derek Joe<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u591a\\u8c22\\u5927\\u5bb6\\u7684\\u8f9b\\u52e4\\u52b3\\u52a8\\uff01\\u8c22\\u8c22wayne82\\u7684\\u53cd\\u9988\\u4e0e\\u5efa\\u8bae\\uff01<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td width=\\\"132\\\"><p><a href=\\\"http:\\/\\/www.joomla.cn\\/index.php?option=com_kunena&func=showcat&catid=34&Itemid=46&lang=zh\\\" target=\\\"_blank\\\"><img src=\\\"http:\\/\\/www.joomla.cn\\/images\\/aboutjoomlacn.png\\\" alt=\\\"\\u56e7\\u5566!\\u4e2d\\u56fd\\\" width=\\\"130\\\" height=\\\"70\\\" align=\\\"left\\\" longdesc=\\\"http:\\/\\/www.joomla.cn\\\"><br \\/>\\n    <\\/a><\\/p><\\/td>\\n    <td valign=\\\"middle\\\"><a href=\\\"http:\\/\\/www.joomla.cn\\/index.php?option=com_kunena&func=showcat&catid=34&Itemid=46&lang=zh\\\" target=\\\"_blank\\\">Joomla\\u53ca\\u5176\\u6269\\u5c55\\u6c49\\u5316\\u7684\\u5206\\u4eab\\u4e0e\\u8ba8\\u8bba\\u8bf7\\u8bbf\\u95ee\\\"\\u56e7\\u5566!\\u4e2d\\u56fd\\\"<\\/a><br \\/>\\n      <b>\\u6b22\\u8fce\\u559c\\u6b22\\u7ffb\\u8bd1\\u4e14\\u61c2\\u5f97\\u4f7f\\u7528SVN\\u7684\\u670b\\u53cb<\\/b><br \\/>\\n    <a href=\\\"http:\\/\\/www.joomla.cn\\/index.php?option=com_kunena&func=view&catid=34&id=9537&Itemid=46\\\" target=\\\"_blank\\\"><b>\\u52a0\\u5165\\u6211\\u4eec\\u7684\\u7ffb\\u8bd1\\u7ec4\\uff08\\u771f\\u6b63\\u81ea\\u4e3b\\u7684\\u534f\\u4f5c\\u65b9\\u5f0f\\uff09<\\/b><\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">&nbsp;<\\/td>\\n  <\\/tr>\\n<\\/table>\\n <\\/div>\\n  \\n\\t\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10001,'','language','zh-CN','',1,1,0,0,'{\"legacy\":true,\"name\":\"\\u7b80\\u4f53\\u4e2d\\u6587\",\"type\":\"language\",\"creationDate\":\"2013-04-15\",\"author\":\"Derek Joe(zhous)\",\"copyright\":\"Copyright (C) 2010 CHN Joomla Translation (http:\\/\\/joomlacode.org\\/gf\\/project\\/choice\\/). All rights reserved.\",\"authorEmail\":\"zhous1998@sohu.com\",\"authorUrl\":\"\",\"version\":\"2.5.11.1\",\"description\":\"\\n\\t    \\n<div align=\\\"center\\\">\\n <table border=\\\"0\\\" width=\\\"90%\\\">\\n  <table width=\\\"100%\\\" border=\\\"0\\\">\\n  <tr>\\n    <td colspan=\\\"2\\\">Chinese language for Joomla 2.5 back-end. Translated by CHN Joomla Translation Team, one of Joomla Accredited Translations.<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">Joomla 2.5 \\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\\u662f\\u7531Joomla\\u6388\\u6743\\u7ffb\\u8bd1\\u7ec4\\u7684Derek Joe\\u5728Joomla 1.6\\u7ffb\\u8bd1\\u5de5\\u4f5c\\u7684\\u57fa\\u7840\\u4e0a\\u8865\\u5145\\u7ffb\\u8bd1\\u3002<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">Joomla 2.5\\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\\u5305\\u7684\\u4e3b\\u8981\\u8d21\\u732e\\u4eba\\uff1a<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u524d\\u53f0\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/wuyujie\\/\\\" target=\\\"_blank\\\">\\u6b66\\u7389\\u6770<\\/a>(wuyujie)\\u3001 <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/gzpan123\\/\\\" target=\\\"_blank\\\">\\u90ed\\u5fd7\\u6500<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u540e\\u53f0\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/keydiagram\\/\\\" target=\\\"_blank\\\">Key Diagram<\\/a>\\u3001<a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/tchyusuf\\/\\\">Yusuf  Wang<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u5b89\\u88c5\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/freechoice\\/\\\" target=\\\"_blank\\\">Johnathan Cheun<\\/a>\\u3001<a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/tchyusuf\\/\\\">Yusuf  Wang<\\/a>\\u3001 <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/zhous\\/\\\" target=\\\"_blank\\\">Derek Joe<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u793a\\u8303\\u5185\\u5bb9\\u53ca\\u7f16\\u8f91\\u5668\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/zhous\\/\\\" target=\\\"_blank\\\">Derek Joe<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u591a\\u8c22\\u5927\\u5bb6\\u7684\\u8f9b\\u52e4\\u52b3\\u52a8\\uff01\\u8c22\\u8c22wayne82\\u7684\\u53cd\\u9988\\u4e0e\\u5efa\\u8bae\\uff01<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td width=\\\"132\\\"><p><a href=\\\"http:\\/\\/www.joomla.cn\\/index.php?option=com_kunena&func=showcat&catid=34&Itemid=46&lang=zh\\\" target=\\\"_blank\\\"><img src=\\\"http:\\/\\/www.joomla.cn\\/images\\/aboutjoomlacn.png\\\" alt=\\\"\\u56e7\\u5566!\\u4e2d\\u56fd\\\" width=\\\"130\\\" height=\\\"70\\\" align=\\\"left\\\" longdesc=\\\"http:\\/\\/www.joomla.cn\\\"><br \\/>\\n    <\\/a><\\/p><\\/td>\\n    <td valign=\\\"middle\\\"><a href=\\\"http:\\/\\/www.joomla.cn\\/index.php?option=com_kunena&func=showcat&catid=34&Itemid=46&lang=zh\\\" target=\\\"_blank\\\">Joomla\\u53ca\\u5176\\u6269\\u5c55\\u6c49\\u5316\\u7684\\u5206\\u4eab\\u4e0e\\u8ba8\\u8bba\\u8bf7\\u8bbf\\u95ee\\\"\\u56e7\\u5566!\\u4e2d\\u56fd\\\"<\\/a><br \\/>\\n      <b>\\u6b22\\u8fce\\u559c\\u6b22\\u7ffb\\u8bd1\\u4e14\\u61c2\\u5f97\\u4f7f\\u7528SVN\\u7684\\u670b\\u53cb<\\/b><br \\/>\\n    <a href=\\\"http:\\/\\/www.joomla.cn\\/index.php?option=com_kunena&func=view&catid=34&id=9537&Itemid=46\\\" target=\\\"_blank\\\"><b>\\u52a0\\u5165\\u6211\\u4eec\\u7684\\u7ffb\\u8bd1\\u7ec4\\uff08\\u771f\\u6b63\\u81ea\\u4e3b\\u7684\\u534f\\u4f5c\\u65b9\\u5f0f\\uff09<\\/b><\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">&nbsp;<\\/td>\\n  <\\/tr>\\n<\\/table>\\n <\\/div>\\n  \\n\\t\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10002,'TinyMCE zh-CN','file','tinymce_zh-CN','',0,1,0,0,'{\"legacy\":false,\"name\":\"TinyMCE zh-CN\",\"type\":\"file\",\"creationDate\":\"2012.05.23\",\"author\":\"Joomla! China\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"zhous1998@gmail.com\",\"authorUrl\":\"www.joomla.cn\",\"version\":\"3.4.9\",\"description\":\"Joomla\\u6838\\u5fc3\\u7f16\\u8f91\\u5668TinyMCE 3.4.9\\u7684\\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\\u5305\\u3002Simplified Chinese Language Package for TinyMCE 3.4.9 in Joomla 2.5.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10003,'zh-CN','package','pkg_zh-CN','',0,1,1,0,'{\"legacy\":false,\"name\":\"\\u7b80\\u4f53\\u4e2d\\u6587Simplified Chinese\",\"type\":\"package\",\"creationDate\":\"2013-04-15\",\"author\":\"CHN Translation Team\",\"copyright\":\"Copyright (C) 2010 CHN Joomla Translation Team  (http:\\/\\/joomlacode.org\\/gf\\/project\\/choice\\/). All rights reserved.\",\"authorEmail\":\"zhous1998@sohu.com\",\"authorUrl\":\"www.joomla.cn\",\"version\":\"2.5.11.1\",\"description\":\"\\n\\t\\n\\t<h3>Joomla! 2.5.11\\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\\u5305\\u7b2c\\u4e00\\u7248<\\/h3>\\n    <h3>Joomla! 2.5.11 Full Simplified Chinese (zh-CN) Language Package version 1<\\/h3>\\n    <h3>\\u672c\\u5b89\\u88c5\\u5305\\u5df2\\u5305\\u542bJoomla\\u6838\\u5fc3\\u7f16\\u8f91\\u5668TinyMCE 3.4.9\\u7684\\u4e2d\\u6587\\u8bed\\u8a00<\\/h3>\\n\\t<div>\\n\\tJoomla 2.5.11\\u8bed\\u8a00\\u662f\\u7531Joomla\\u5b98\\u65b9\\u7ffb\\u8bd1\\u7ec4\\u7684Derek Joe\\u7ec4\\u7ec7\\u7ffb\\u8bd1\\u3002\\u5de5\\u4f5c\\u662f\\u5728Joomla1.6\\u7684\\u57fa\\u7840\\u4e0a\\u8fdb\\u884c\\u7684\\u3002Joomla 2.5.11\\u8bed\\u8a00\\u7684\\u8865\\u5145\\u7531Derek Joe\\u5b8c\\u6210\\u3002\\u611f\\u8c22Joomla\\u7b80\\u4f53\\u4e2d\\u6587\\u7ffb\\u8bd1\\u7ec4\\u7684\\u6240\\u6709\\u5fd7\\u613f\\u8005\\uff1a\\u6b66\\u7389\\u6770\\u3001Key Diagram\\u3001Yusuf  Wang\\u3001\\u90ed\\u5fd7\\u6500\\u3001Eric Wong\\uff08http:\\/\\/berocks2.com\\/\\uff09\\u3001wayne82\\uff01\\u7ffb\\u8bd1\\u57fa\\u5730\\uff1a<a href=\\\"http:\\/\\/www.joomla.cn\\\" target=\\\"_blank\\\">\\u56e7\\u5566!\\u4e2d\\u56fd\\uff08Joomla.cn\\uff09<\\/a>\\u3002\\u7ffb\\u8bd1\\u4e0e\\u4f7f\\u7528\\u4ea4\\u6d41\\uff1a\\uff1a<a href=\\\"http:\\/\\/weibo.com\\/joomlacn\\\" target=\\\"_blank\\\">\\u56e7\\u5566\\u4e2d\\u56fd\\uff08\\u65b0\\u6d6a\\u5fae\\u535a\\uff09<\\/a>\\u3002\\u6b22\\u8fce\\u559c\\u6b22\\u7ffb\\u8bd1\\u7684\\u670b\\u53cb\\u52a0\\u5165\\u6211\\u4eec\\u3002<br><br>\\n\\t\\u6b22\\u8fce\\u52a0\\u5165\\u201cJoomla\\u4f7f\\u7528\\u4ea4\\u6d41\\u201dQ\\u7fa4\\uff1a72746093\\uff08\\u5df2\\u6709\\u63a5\\u8fd1800\\u4f4d\\u670b\\u53cb\\u4e86\\uff09\\u3002<br> <br>\\n\\t<\\/div>\\n\\t\\n\\t\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10004,'virtuemart','component','com_virtuemart','',1,1,0,0,'{\"legacy\":true,\"name\":\"VIRTUEMART\",\"type\":\"component\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"max|at|virtuemart.net\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10005,'virtuemart_allinone','component','com_virtuemart_allinone','',1,1,0,0,'{\"legacy\":true,\"name\":\"VirtueMart_allinone\",\"type\":\"component\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10006,'Standard','plugin','standard','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"VMPAYMENT_STANDARD\",\"type\":\"plugin\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"Standard payment plugin\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10007,'Paypal','plugin','paypal','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"VMPAYMENT_PAYPAL\",\"type\":\"plugin\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"<a href=\\\"http:\\/\\/paypal.com\\\" target=\\\"_blank\\\">PayPal<\\/a> is a popular\\n\\tpayment provider and available in many countries. \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10008,'PayZen','plugin','payzen','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"VM - Payment, PayZen\",\"type\":\"plugin\",\"creationDate\":\"July 04 2012\",\"author\":\"Lyra Network\",\"copyright\":\"Copyright Lyra Network.\",\"authorEmail\":\"support@payzen.eu\",\"authorUrl\":\"http:\\/\\/www.lyra-network.com\",\"version\":\"2.0.8c\",\"description\":\"\\n    \\t<a href=\\\"http:\\/\\/www.lyra-network.com\\\" target=\\\"_blank\\\">PayZen<\\/a> is a multi bank payment provider. \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10009,'SystemPay','plugin','systempay','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"VM - Payment, Systempay\",\"type\":\"plugin\",\"creationDate\":\"July 04 2012\",\"author\":\"Lyra Network\",\"copyright\":\"Copyright Lyra Network.\",\"authorEmail\":\"supportvad@lyra-network.com\",\"authorUrl\":\"http:\\/\\/www.lyra-network.com\",\"version\":\"2.0.8c\",\"description\":\"\\n    \\t<a href=\\\"http:\\/\\/www.lyra-network.com\\\" target=\\\"_blank\\\">Systempay<\\/a> is a multi bank payment provider. \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10010,'Moneybookers Credit Cards','plugin','moneybookers_acc','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"Vm Payment plugin Moneybookers Credit Cards\",\"type\":\"plugin\",\"creationDate\":\"April 2012\",\"author\":\"Skrill Holdings Limited\",\"copyright\":\"Copyright (C) 2012 Skrill.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.skrill.com\",\"version\":\"2.0.6\",\"description\":\"<a href=\\\"http:\\/\\/www.skrill.com\\\" target=\\\"_blank\\\">Moneybookers<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10011,'Moneybookers Lastschrift','plugin','moneybookers_did','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"Vm Payment plugin Moneybookers Lastschrift\",\"type\":\"plugin\",\"creationDate\":\"April 2012\",\"author\":\"Skrill Holdings Limited\",\"copyright\":\"Copyright (C) 2012 Skrill.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.skrill.com\",\"version\":\"2.0.6\",\"description\":\"<a href=\\\"http:\\/\\/www.skrill.com\\\" target=\\\"_blank\\\">Moneybookers<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10012,'Moneybookers iDeal','plugin','moneybookers_idl','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"Vm Payment plugin Moneybookers iDeal\",\"type\":\"plugin\",\"creationDate\":\"April 2012\",\"author\":\"Skrill Holdings Limited\",\"copyright\":\"Copyright (C) 2012 Skrill.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.skrill.com\",\"version\":\"2.0.6\",\"description\":\"<a href=\\\"http:\\/\\/www.skrill.com\\\" target=\\\"_blank\\\">Moneybookers<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10013,'Moneybookers Giropay','plugin','moneybookers_gir','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"Vm Payment plugin Moneybookers Giropay\",\"type\":\"plugin\",\"creationDate\":\"April 2012\",\"author\":\"Skrill Holdings Limited\",\"copyright\":\"Copyright (C) 2012 Skrill.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.skrill.com\",\"version\":\"2.0.6\",\"description\":\"<a href=\\\"http:\\/\\/www.skrill.com\\\" target=\\\"_blank\\\">Moneybookers<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10014,'Moneybookers Sofortueberweisung','plugin','moneybookers_sft','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"Vm Payment plugin Moneybookers Sofortueberweisung\",\"type\":\"plugin\",\"creationDate\":\"April 2012\",\"author\":\"Skrill Holdings Limited\",\"copyright\":\"Copyright (C) 2012 Skrill.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.skrill.com\",\"version\":\"2.0.6\",\"description\":\"<a href=\\\"http:\\/\\/www.skrill.com\\\" target=\\\"_blank\\\">Moneybookers<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10015,'Moneybookers Przelewy24','plugin','moneybookers_pwy','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"Vm Payment plugin Moneybookers Przelewy24\",\"type\":\"plugin\",\"creationDate\":\"April 2012\",\"author\":\"Skrill Holdings Limited\",\"copyright\":\"Copyright (C) 2012 Skrill.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.skrill.com\",\"version\":\"2.0.6\",\"description\":\"<a href=\\\"http:\\/\\/www.skrill.com\\\" target=\\\"_blank\\\">Moneybookers<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10016,'Moneybookers Online Bank Transfer','plugin','moneybookers_obt','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"Vm Payment plugin Moneybookers Bank Transfer\",\"type\":\"plugin\",\"creationDate\":\"April 2012\",\"author\":\"Skrill Holdings Limited\",\"copyright\":\"Copyright (C) 2012 Skrill.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.skrill.com\",\"version\":\"2.0.6\",\"description\":\"<a href=\\\"http:\\/\\/www.skrill.com\\\" target=\\\"_blank\\\">Moneybookers<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10017,'Moneybookers Skrill Digital Wallet','plugin','moneybookers_wlt','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"Vm Payment plugin Moneybookers Digital Wallet\",\"type\":\"plugin\",\"creationDate\":\"April 2012\",\"author\":\"Skrill Holdings Limited\",\"copyright\":\"Copyright (C) 2012 Skrill.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.skrill.com\",\"version\":\"2.0.6\",\"description\":\"<a href=\\\"http:\\/\\/www.skrill.com\\\" target=\\\"_blank\\\">Moneybookers<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10018,'Authorize.net','plugin','authorizenet','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"VM Payment - authorize.net AIM\",\"type\":\"plugin\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2011 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10019,'Klarna','plugin','klarna','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"VM - Payment, Klarna\",\"type\":\"plugin\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"VMPAYMENT_KLARNA_CONF_PLUGIN_DESC\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10020,'Heidelpay','plugin','heidelpay','vmpayment',0,1,1,0,'{\"legacy\":false,\"name\":\"VMPAYMENT_HEIDELPAY\",\"type\":\"plugin\",\"creationDate\":\"12-Sep-2012\",\"author\":\"Heidelberger Payment GmbH\",\"copyright\":\"Copyright Heidelberger Payment GmbH\",\"authorEmail\":\"info@heidelpay.de\",\"authorUrl\":\"http:\\/\\/www.heidelpay.de\",\"version\":\"12.09\",\"description\":\"<h2>Virtuemart Plugin von:<\\/h2><p><a href=\\\"http:\\/\\/www.Heidelpay.de\\\" target=\\\"_blank\\\"><img src=\\\"http:\\/\\/www.heidelpay.de\\/gfx\\/logo.gif\\\" style=\\\"margin-right:20px;\\\"\\/><\\/a><\\/p> \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10021,'By weight, ZIP and countries','plugin','weight_countries','vmshipment',0,1,1,0,'{\"legacy\":true,\"name\":\"VMSHIPMENT_WEIGHT_COUNTRIES\",\"type\":\"plugin\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"VMSHIPMENT_WEIGHT_COUNTRIES_PLUGIN_DESC\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10022,'Customer text input','plugin','textinput','vmcustom',0,1,1,0,'{\"legacy\":true,\"name\":\"VMCustom - textinput\",\"type\":\"plugin\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"text input plugin for product\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10023,'Product specification','plugin','specification','vmcustom',0,1,1,0,'{\"legacy\":true,\"name\":\"VMCustom - specification\",\"type\":\"plugin\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"text input plugin for product\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10024,'Stockable variants','plugin','stockable','vmcustom',0,1,1,0,'{\"legacy\":true,\"name\":\"VMCUSTOM_STOCKABLE\",\"type\":\"plugin\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"VMCUSTOM_STOCKABLE_DESC\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10025,'Avalara Tax','plugin','avalara','vmcalculation',0,0,1,0,'{\"legacy\":true,\"name\":\"VM - Calculation Avalara Tax\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Max Milbers\",\"copyright\":\"Copyright (C) 2013 iStraxx UG (haftungsbeschr\\u00e4nkt). All rights reserved\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/virtuemart.net\",\"version\":\"2.0.18b\",\"description\":\"On demand tax calculation for whole U.S.A.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10026,'Virtuemart Product','plugin','virtuemart','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_virtuemart\",\"type\":\"plugin\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"Allows Searching of VirtueMart Component\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10027,'mod_virtuemart_currencies','module','mod_virtuemart_currencies','',0,1,1,0,'{\"legacy\":true,\"name\":\"mod_virtuemart_currencies\",\"type\":\"module\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"MOD_VIRTUEMART_CURRENCIES_DESC\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',4,0),(10028,'mod_virtuemart_product','module','mod_virtuemart_product','',0,1,1,0,'{\"legacy\":true,\"name\":\"mod_virtuemart_product\",\"type\":\"module\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"MOD_VIRTUEMART_PRODUCT_DESC\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0),(10029,'mod_virtuemart_search','module','mod_virtuemart_search','',0,1,1,0,'{\"legacy\":true,\"name\":\"mod_virtuemart_search\",\"type\":\"module\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"MOD_VIRTUEMART_SEARCH_DESC\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0),(10030,'mod_virtuemart_manufacturer','module','mod_virtuemart_manufacturer','',0,1,1,0,'{\"legacy\":true,\"name\":\"mod_virtuemart_manufacturer\",\"type\":\"module\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"MOD_VIRTUEMART_MANUFACTURER_DESC\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',5,0),(10031,'mod_virtuemart_cart','module','mod_virtuemart_cart','',0,1,1,0,'{\"legacy\":true,\"name\":\"VirtueMart Shopping Cart\",\"type\":\"module\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"MOD_VIRTUEMART_CART_DESC\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10032,'mod_virtuemart_category','module','mod_virtuemart_category','',0,1,1,0,'{\"legacy\":true,\"name\":\"mod_virtuemart_category\",\"type\":\"module\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"MOD_VIRTUEMART_CATEGORY_DESC\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',6,0),(10033,'EasyTagCloud','module','mod_easytagcloud','',0,1,0,0,'{\"legacy\":false,\"name\":\"EasyTagCloud\",\"type\":\"module\",\"creationDate\":\"May.2013\",\"author\":\"Kee Huang\",\"copyright\":\"\",\"authorEmail\":\"huangqi@vip.163.com\",\"authorUrl\":\"www.joomlatonight.com\",\"version\":\"2.4\",\"description\":\"MOD_EASYTAGCLOUD_DESCRIPTION\",\"group\":\"\"}','{\"contentcats\":\"\",\"maxtags\":\"30\",\"blacklist\":\"\",\"styles\":\"0\",\"tags_order\":\"0\",\"maxfontsize\":\"28\",\"minfontsize\":\"10\",\"bold\":\"0\",\"tagscolor\":\"\",\"tagshovercolor\":\"\",\"tagsbgcolor\":\"\",\"tagshoverbgcolor\":\"\",\"show_underline\":\"0\",\"hover_show_underline\":\"0\",\"tags_align\":\"0\",\"line_height\":\"24\",\"horizontal_space\":\"2\",\"tagspadding\":\"2\",\"borderradius\":\"0\",\"searchwindow\":\"0\",\"colorful_tags\":\"1\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','','',0,'0000-00-00 00:00:00',0,0),(10034,'com_easytagcloud','component','com_easytagcloud','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_easytagcloud\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Kee Huang\",\"copyright\":\"Copyright 2013,all right reserved.\",\"authorEmail\":\"huangqi@vip.163.com\",\"authorUrl\":\"http:\\/\\/www.joomlatonight.com\",\"version\":\"2.4\",\"description\":\"COM_EASYTAGCLOUD_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10035,'Button - TorTags','plugin','tortags','editors-xtd',0,0,1,0,'{\"legacy\":false,\"name\":\"Button - TorTags\",\"type\":\"plugin\",\"creationDate\":\"October 2012\",\"author\":\"Tormix\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"support@tormix.com\",\"authorUrl\":\"www.tormix.com\",\"version\":\"1.3.6\",\"description\":\"Button plugin: TorTags button\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10036,'com_tortags','component','com_tortags','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_tortags\",\"type\":\"component\",\"creationDate\":\"October 2012\",\"author\":\"Tormix\",\"copyright\":\"Copyright 2010 - 2012. All rights reserved\",\"authorEmail\":\"suppot@tormix.com\",\"authorUrl\":\"http:\\/\\/tormix.com\",\"version\":\"1.3.6\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10037,'com_virtuemart','file','install','',0,1,0,0,'{\"legacy\":false,\"name\":\"com_virtuemart\",\"type\":\"file\",\"creationDate\":\"15.06.2013\",\"author\":\"VirtueMart language team\",\"copyright\":\"\\u00a9 2008-2013 - compojoom-com. All rights reserved!\",\"authorEmail\":\"max@virtuemart.net\",\"authorUrl\":\"https:\\/\\/vrtuemart.net\",\"version\":\"1371288549\",\"description\":\"\\n        This package was auto generated with CTransifex(https:\\/\\/compojoom.com). We\'ve grabbed the latest language files for our extension from transifex.com.\\n        Special thanks to our translation team at (https:\\/\\/www.transifex.com\\/projects\\/p\\/virtuemart\\/) for helping with this VirtueMart translation!\\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `yami_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_filters`
--

DROP TABLE IF EXISTS `yami_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_filters`
--

LOCK TABLES `yami_finder_filters` WRITE;
/*!40000 ALTER TABLE `yami_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_links`
--

DROP TABLE IF EXISTS `yami_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_links`
--

LOCK TABLES `yami_finder_links` WRITE;
/*!40000 ALTER TABLE `yami_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_links_terms0`
--

DROP TABLE IF EXISTS `yami_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_links_terms0`
--

LOCK TABLES `yami_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `yami_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_links_terms1`
--

DROP TABLE IF EXISTS `yami_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_links_terms1`
--

LOCK TABLES `yami_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `yami_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_links_terms2`
--

DROP TABLE IF EXISTS `yami_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_links_terms2`
--

LOCK TABLES `yami_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `yami_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_links_terms3`
--

DROP TABLE IF EXISTS `yami_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_links_terms3`
--

LOCK TABLES `yami_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `yami_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_links_terms4`
--

DROP TABLE IF EXISTS `yami_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_links_terms4`
--

LOCK TABLES `yami_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `yami_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_links_terms5`
--

DROP TABLE IF EXISTS `yami_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_links_terms5`
--

LOCK TABLES `yami_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `yami_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_links_terms6`
--

DROP TABLE IF EXISTS `yami_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_links_terms6`
--

LOCK TABLES `yami_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `yami_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_links_terms7`
--

DROP TABLE IF EXISTS `yami_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_links_terms7`
--

LOCK TABLES `yami_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `yami_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_links_terms8`
--

DROP TABLE IF EXISTS `yami_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_links_terms8`
--

LOCK TABLES `yami_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `yami_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_links_terms9`
--

DROP TABLE IF EXISTS `yami_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_links_terms9`
--

LOCK TABLES `yami_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `yami_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_links_termsa`
--

DROP TABLE IF EXISTS `yami_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_links_termsa`
--

LOCK TABLES `yami_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `yami_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_links_termsb`
--

DROP TABLE IF EXISTS `yami_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_links_termsb`
--

LOCK TABLES `yami_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `yami_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_links_termsc`
--

DROP TABLE IF EXISTS `yami_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_links_termsc`
--

LOCK TABLES `yami_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `yami_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_links_termsd`
--

DROP TABLE IF EXISTS `yami_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_links_termsd`
--

LOCK TABLES `yami_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `yami_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_links_termse`
--

DROP TABLE IF EXISTS `yami_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_links_termse`
--

LOCK TABLES `yami_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `yami_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_links_termsf`
--

DROP TABLE IF EXISTS `yami_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_links_termsf`
--

LOCK TABLES `yami_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `yami_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_taxonomy`
--

DROP TABLE IF EXISTS `yami_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_taxonomy`
--

LOCK TABLES `yami_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `yami_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `yami_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `yami_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `yami_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_taxonomy_map`
--

LOCK TABLES `yami_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `yami_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_terms`
--

DROP TABLE IF EXISTS `yami_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_terms`
--

LOCK TABLES `yami_finder_terms` WRITE;
/*!40000 ALTER TABLE `yami_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_terms_common`
--

DROP TABLE IF EXISTS `yami_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_terms_common`
--

LOCK TABLES `yami_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `yami_finder_terms_common` DISABLE KEYS */;
INSERT INTO `yami_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `yami_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_tokens`
--

DROP TABLE IF EXISTS `yami_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_tokens`
--

LOCK TABLES `yami_finder_tokens` WRITE;
/*!40000 ALTER TABLE `yami_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `yami_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_tokens_aggregate`
--

LOCK TABLES `yami_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `yami_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_finder_types`
--

DROP TABLE IF EXISTS `yami_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_finder_types`
--

LOCK TABLES `yami_finder_types` WRITE;
/*!40000 ALTER TABLE `yami_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_languages`
--

DROP TABLE IF EXISTS `yami_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_languages`
--

LOCK TABLES `yami_languages` WRITE;
/*!40000 ALTER TABLE `yami_languages` DISABLE KEYS */;
INSERT INTO `yami_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,0,1);
/*!40000 ALTER TABLE `yami_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_menu`
--

DROP TABLE IF EXISTS `yami_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=474 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_menu`
--

LOCK TABLES `yami_menu` WRITE;
/*!40000 ALTER TABLE `yami_menu` DISABLE KEYS */;
INSERT INTO `yami_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,295,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',13,22,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',14,15,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',16,17,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',18,19,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',20,21,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',23,28,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',24,25,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',26,27,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',29,34,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',30,31,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',32,33,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',35,40,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',36,37,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',38,39,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',53,54,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',43,44,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',47,52,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',48,49,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',50,51,0,'*',1),(21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',41,42,0,'*',1),(22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',0,1,1,28,0,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',41,42,0,'*',1),(201,'usermenu','Your Profile','your-profile','','your-profile','index.php?option=com_users&view=profile','component',1,1,1,25,0,0,'0000-00-00 00:00:00',0,2,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',237,238,0,'*',0),(207,'top','Joomla.org','joomlaorg','','joomlaorg','http://joomla.org','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}',235,236,0,'*',0),(227,'aboutjoomla','Weblinks Categories','weblinks-categories','','using-joomla/extensions/components/weblinks-component/weblinks-categories','index.php?option=com_weblinks&view=categories&id=18','component',1,265,5,21,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_base_description\":\"\",\"categories_description\":\"\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"\",\"show_subcat_desc_cat\":\"\",\"show_cat_num_links_cat\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_links\":\"\",\"show_pagination_limit\":\"\",\"show_headings\":\"\",\"show_link_description\":\"\",\"show_link_hits\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',89,90,0,'*',0),(229,'aboutjoomla','Single Contact','single-contact','','using-joomla/extensions/components/contact-component/single-contact','index.php?option=com_contact&view=contact&id=1','component',1,270,5,8,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_category_crumb\":\"\",\"presentation_style\":\"\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',79,80,0,'*',0),(233,'mainmenu','Login','login','','login','index.php?option=com_users&view=login','component',1,1,1,25,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',11,12,0,'*',0),(234,'parks','Park Blog','park-blog','','park-blog','index.php?option=com_content&view=category&layout=blog&id=27','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',114,'{\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"show_category_title\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"1\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',241,242,0,'en-GB',0),(238,'mainmenu','Sample Sites','sample-sites','','sample-sites','index.php?option=com_content&view=article&id=38','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',265,270,0,'*',0),(242,'parks','Write a Blog Post','write-a-blog-post','','write-a-blog-post','index.php?option=com_content&view=form&layout=edit','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,3,'',114,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',243,244,0,'en-GB',0),(243,'parks','Parks Home','parks-home','','parks-home','index.php?option=com_content&view=article&id=6','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',114,'{\"show_noauth\":\"\",\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',239,240,0,'en-GB',0),(244,'parks','Image Gallery','image-gallery','','image-gallery','index.php?option=com_content&view=categories&id=28','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',114,'{\"show_base_description\":\"1\",\"categories_description\":\"\",\"maxLevelcat\":\"\",\"show_empty_categories_cat\":\"\",\"show_subcat_desc_cat\":\"\",\"show_cat_num_articles_cat\":\"\",\"drill_down_layout\":\"1\",\"show_category_title\":\"\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',245,250,0,'en-GB',0),(249,'aboutjoomla','Submit a Weblink','submit-a-weblink','','using-joomla/extensions/components/weblinks-component/submit-a-weblink','index.php?option=com_weblinks&view=form&layout=edit','component',1,265,5,21,0,0,'0000-00-00 00:00:00',0,3,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',85,86,0,'*',0),(251,'aboutjoomla','Contact Categories','contact-categories','','using-joomla/extensions/components/contact-component/contact-categories','index.php?option=com_contact&view=categories&id=16','component',1,270,5,8,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_base_description\":\"\",\"categories_description\":\"\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"\",\"show_headings\":\"\",\"filter_field\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"presentation_style\":\"sliders\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"1\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',75,76,0,'*',0),(252,'aboutjoomla','News Feed Categories','new-feed-categories','','using-joomla/extensions/components/news-feeds-component/new-feed-categories','index.php?option=com_newsfeeds&view=categories&id=0','component',1,267,5,17,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_base_description\":\"1\",\"categories_description\":\"Because this links to the root category the \"uncategorised\" category is displayed. \",\"maxLevel\":\"-1\",\"show_empty_categories\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"show_cat_num_articles\":\"1\",\"display_num\":\"\",\"show_headings\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_feed_image\":\"\",\"show_feed_description\":\"\",\"show_item_description\":\"\",\"feed_character_count\":\"0\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',93,94,0,'*',0),(253,'aboutjoomla','News Feed Category','news-feed-category','','using-joomla/extensions/components/news-feeds-component/news-feed-category','index.php?option=com_newsfeeds&view=category&id=17','component',1,267,5,17,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"\",\"show_headings\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_feed_image\":\"\",\"show_feed_description\":\"\",\"show_item_description\":\"\",\"feed_character_count\":\"0\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',97,98,0,'*',0),(254,'aboutjoomla','Single News Feed','single-news-feed','','using-joomla/extensions/components/news-feeds-component/single-news-feed','index.php?option=com_newsfeeds&view=newsfeed&id=4','component',1,267,5,17,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_feed_image\":\"\",\"show_feed_description\":\"\",\"show_item_description\":\"\",\"feed_character_count\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',95,96,0,'*',0),(255,'aboutjoomla','Search','search','','using-joomla/extensions/components/search-component/search','index.php?option=com_search&view=search','component',1,276,5,19,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"search_areas\":\"1\",\"show_date\":\"1\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',115,116,0,'*',0),(256,'aboutjoomla','Archived Articles','archived-articles','','using-joomla/extensions/components/content-component/archived-articles','index.php?option=com_content&view=archive','component',1,266,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"orderby_sec\":\"\",\"order_date\":\"\",\"display_num\":\"\",\"filter_field\":\"\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_hits\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',69,70,0,'*',0),(257,'aboutjoomla','Single Article','single-article','','using-joomla/extensions/components/content-component/single-article','index.php?option=com_content&view=article&id=6','component',1,266,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',59,60,0,'*',0),(259,'aboutjoomla','Article Category Blog','article-category-blog','','using-joomla/extensions/components/content-component/article-category-blog','index.php?option=com_content&view=category&layout=blog&id=27','component',1,266,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"show_category_title\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',63,64,0,'*',0),(260,'aboutjoomla','Article Category List','article-category-list','','using-joomla/extensions/components/content-component/article-category-list','index.php?option=com_content&view=category&id=19','component',1,266,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"alpha\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',65,66,0,'*',0),(262,'aboutjoomla','Featured Articles','featured-articles','','using-joomla/extensions/components/content-component/featured-articles','index.php?option=com_content&view=featured','component',1,266,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',67,68,0,'*',0),(263,'aboutjoomla','Submit Article','submit-article','','using-joomla/extensions/components/content-component/submit-article','index.php?option=com_content&view=form&layout=edit','component',1,266,5,22,0,0,'0000-00-00 00:00:00',0,3,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',71,72,0,'*',0),(265,'aboutjoomla','Weblinks Component','weblinks-component','','using-joomla/extensions/components/weblinks-component','index.php?option=com_content&view=article&id=54','component',1,268,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',84,91,0,'*',0),(266,'aboutjoomla','Content Component','content-component','','using-joomla/extensions/components/content-component','index.php?option=com_content&view=article&id=10','component',1,268,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"article-allow_ratings\":\"\",\"article-allow_comments\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',58,73,0,'*',0),(267,'aboutjoomla','News Feeds Component','news-feeds-component','','using-joomla/extensions/components/news-feeds-component','index.php?option=com_content&view=article&id=60','component',1,268,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":1,\"page_title\":\"Newsfeeds Categories View \",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',92,99,0,'*',0),(268,'aboutjoomla','Components','components','','using-joomla/extensions/components','index.php?option=com_content&view=category&layout=blog&id=21','component',1,277,3,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_category_title\":\"\",\"show_description\":\"1\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"0\",\"num_intro_articles\":\"7\",\"num_columns\":\"1\",\"num_links\":\"0\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"order\",\"order_date\":\"\",\"show_pagination\":\"0\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_readmore\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',57,122,0,'*',0),(270,'aboutjoomla','Contact Component','contact-component','','using-joomla/extensions/components/contact-component','index.php?option=com_content&view=article&id=9','component',1,268,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',74,83,0,'*',0),(271,'aboutjoomla','Users Component','users-component','','using-joomla/extensions/components/users-component','index.php?option=com_content&view=article&id=52','component',1,268,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',100,113,0,'*',0),(272,'aboutjoomla','Article Categories','article-categories','','using-joomla/extensions/components/content-component/article-categories','index.php?option=com_content&view=categories&id=14','component',1,266,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_base_description\":\"\",\"categories_description\":\"\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"\",\"category_layout\":\"\",\"show_headings\":\"\",\"show_date\":\"\",\"date_format\":\"\",\"filter_field\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',61,62,0,'*',0),(273,'aboutjoomla','Administrator Components','administrator-components','','using-joomla/extensions/components/administrator-components','index.php?option=com_content&view=article&id=1','component',1,268,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',120,121,0,'*',0),(274,'aboutjoomla','Weblinks Single Category','weblinks-single-category','','using-joomla/extensions/components/weblinks-component/weblinks-single-category','index.php?option=com_weblinks&view=category&id=32','component',1,265,5,21,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"\",\"show_headings\":\"\",\"orderby_pri\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',87,88,0,'*',0),(275,'aboutjoomla','Contact Single Category','contact-single-category','','using-joomla/extensions/components/contact-component/contact-single-category','index.php?option=com_contact&view=category&catid=26&id=36','component',1,270,5,8,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"20\",\"show_headings\":\"\",\"filter_field\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"presentation_style\":\"sliders\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"1\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',77,78,0,'*',0),(276,'aboutjoomla','Search Components','search-component','','using-joomla/extensions/components/search-component','index.php?option=com_content&view=article&id=39','component',1,268,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',114,119,0,'*',0),(277,'aboutjoomla','Using Extensions','extensions','','using-joomla/extensions','index.php?option=com_content&view=categories&id=20','component',1,280,2,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_base_description\":\"1\",\"categories_description\":\"\",\"maxLevelcat\":\"1\",\"show_empty_categories_cat\":\"1\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"0\",\"drill_down_layout\":\"0\",\"show_category_title\":\"\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"1\",\"show_empty_categories\":\"1\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',56,221,0,'*',0),(278,'aboutjoomla','The Joomla! Project','the-joomla-project','','the-joomla-project','index.php?option=com_content&view=article&id=48','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"1\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',229,230,0,'*',0),(279,'aboutjoomla','The Joomla! Community','the-joomla-community','','the-joomla-community','index.php?option=com_content&view=article&id=47','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"0\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',231,232,0,'*',0),(280,'aboutjoomla','Using Joomla!','using-joomla','','using-joomla','index.php?option=com_content&view=article&id=53','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"1\",\"link_titles\":\"0\",\"show_intro\":\"1\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',55,226,0,'*',0),(281,'aboutjoomla','Modules','modules','','using-joomla/extensions/modules','index.php?option=com_content&view=category&id=22','component',1,277,3,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_category_title\":\"\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"1\",\"show_empty_categories\":\"1\",\"show_no_articles\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"\",\"show_readmore\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',123,182,0,'*',0),(282,'aboutjoomla','Templates','templates','','using-joomla/extensions/templates','index.php?option=com_content&view=category&id=23','component',1,277,3,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_category_title\":\"\",\"show_description\":\"1\",\"show_description_image\":\"\",\"maxLevel\":\"2\",\"show_empty_categories\":\"1\",\"show_no_articles\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"0\",\"filter_field\":\"hide\",\"show_headings\":\"0\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"0\",\"list_show_author\":\"0\",\"show_pagination\":\"0\",\"show_pagination_results\":\"\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"Templates\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',183,202,0,'*',0),(283,'aboutjoomla','Languages','languages','','using-joomla/extensions/languages','index.php?option=com_content&view=category&layout=blog&id=24','component',1,277,3,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"show_category_title\":\"1\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',203,204,0,'*',0),(284,'aboutjoomla','Plugins','plugins','','using-joomla/extensions/plugins','index.php?option=com_content&view=category&layout=blog&id=25','component',1,277,3,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"1\",\"show_description_image\":\"\",\"show_category_title\":\"1\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"0\",\"num_intro_articles\":\"7\",\"num_columns\":\"1\",\"num_links\":\"0\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"order\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',205,220,0,'*',0),(285,'aboutjoomla','Typography Atomic','typography-atomic','','using-joomla/extensions/templates/atomic/typography-atomic','index.php?option=com_content&view=article&id=49','component',1,422,5,22,0,0,'0000-00-00 00:00:00',0,1,'',3,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',197,198,0,'*',0),(290,'mainmenu','Articles','articles','','site-map/articles','index.php?option=com_content&view=categories&id=0','component',1,294,2,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"categories_description\":\"\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"\",\"category_layout\":\"\",\"show_headings\":\"\",\"show_date\":\"\",\"date_format\":\"\",\"filter_field\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"article-allow_ratings\":\"\",\"article-allow_comments\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',4,5,0,'*',0),(294,'mainmenu','Site Map','site-map','','site-map','index.php?option=com_content&view=article&id=42','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',3,10,0,'*',0),(296,'parks','Park Links','park-links','','park-links','index.php?option=com_weblinks&view=category&id=31','component',1,1,1,21,0,0,'0000-00-00 00:00:00',0,1,'',114,'{\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"show_cat_num_articles\":\"\",\"display_num\":\"\",\"show_headings\":\"0\",\"orderby_pri\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',251,252,0,'en-GB',0),(300,'aboutjoomla','Latest Users','latest-users','','using-joomla/extensions/modules/user-modules/latest-users','index.php?option=com_content&view=article&id=66','component',1,412,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',147,148,0,'*',0),(301,'aboutjoomla','Who\'s Online','whos-online','','using-joomla/extensions/modules/user-modules/whos-online','index.php?option=com_content&view=article&id=56','component',1,412,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',149,150,0,'*',0),(302,'aboutjoomla','Most Read','most-read','','using-joomla/extensions/modules/content-modules/most-read','index.php?option=com_content&view=article&id=30','component',1,411,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',131,132,0,'*',0),(303,'aboutjoomla','Menu','menu','','using-joomla/extensions/modules/navigation-modules/menu','index.php?option=com_content&view=article&id=29','component',1,415,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',125,126,0,'*',0),(304,'aboutjoomla','Statistics','statistics','','using-joomla/extensions/modules/utility-modules/statistics','index.php?option=com_content&view=article&id=44','component',1,414,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',171,172,0,'*',0),(305,'aboutjoomla','Banner','banner','','using-joomla/extensions/modules/display-modules/banner','index.php?option=com_content&view=article&id=7','component',1,413,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',157,158,0,'*',0),(306,'aboutjoomla','Search','search','','using-joomla/extensions/modules/utility-modules/search','index.php?option=com_content&view=article&id=40','component',1,414,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',173,174,0,'*',0),(307,'aboutjoomla','Random Image','random-image','','using-joomla/extensions/modules/display-modules/random-image','index.php?option=com_content&view=article&id=36','component',1,413,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',155,156,0,'*',0),(309,'aboutjoomla','News Flash','news-flash','','using-joomla/extensions/modules/content-modules/news-flash','index.php?option=com_content&view=article&id=31','component',1,411,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',133,134,0,'*',0),(310,'aboutjoomla','Latest Articles','latest-articles','','using-joomla/extensions/modules/content-modules/latest-articles','index.php?option=com_content&view=article&id=27','component',1,411,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',135,136,0,'*',0),(311,'aboutjoomla','Syndicate','syndicate','','using-joomla/extensions/modules/utility-modules/syndicate','index.php?option=com_content&view=article&id=45','component',1,414,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',169,170,0,'*',0),(312,'aboutjoomla','Login','login','','using-joomla/extensions/modules/user-modules/login','index.php?option=com_content&view=article&id=28','component',1,412,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',151,152,0,'*',0),(313,'aboutjoomla','Wrapper','wrapper','','using-joomla/extensions/modules/utility-modules/wrapper','index.php?option=com_content&view=article&id=59','component',1,414,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',177,178,0,'*',0),(316,'aboutjoomla','Home Page Atomic','home-page-atomic','','using-joomla/extensions/templates/atomic/home-page-atomic','index.php?option=com_content&view=featured','component',1,422,5,22,0,0,'0000-00-00 00:00:00',0,1,'',3,'{\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',199,200,0,'*',0),(317,'aboutjoomla','System','system','','using-joomla/extensions/plugins/system','index.php?option=com_content&view=article&id=46','component',1,284,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',218,219,0,'*',0),(318,'aboutjoomla','Authentication','authentication','','using-joomla/extensions/plugins/authentication','index.php?option=com_content&view=article&id=5','component',1,284,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',206,207,0,'*',0),(319,'aboutjoomla','Content','content','','using-joomla/extensions/plugins/content','index.php?option=com_content&view=article&id=62','component',1,284,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',208,209,0,'*',0),(320,'aboutjoomla','Editors','editors','','using-joomla/extensions/plugins/editors','index.php?option=com_content&view=article&id=14','component',1,284,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',210,211,0,'*',0),(321,'aboutjoomla','Editors Extended','editors-extended','','using-joomla/extensions/plugins/editors-extended','index.php?option=com_content&view=article&id=15','component',1,284,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',212,213,0,'*',0),(322,'aboutjoomla','Search','search','','using-joomla/extensions/plugins/search','index.php?option=com_content&view=article&id=41','component',1,284,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',214,215,0,'*',0),(323,'aboutjoomla','User','user','','using-joomla/extensions/plugins/user','index.php?option=com_content&view=article&id=51','component',1,284,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',216,217,0,'*',0),(324,'aboutjoomla','Footer','footer','','using-joomla/extensions/modules/display-modules/footer','index.php?option=com_content&view=article&id=19','component',1,413,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',161,162,0,'*',0),(325,'aboutjoomla','Archive','archive','','using-joomla/extensions/modules/content-modules/archive','index.php?option=com_content&view=article&id=2','component',1,411,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',137,138,0,'*',0),(326,'aboutjoomla','Related Items','related-items','','using-joomla/extensions/modules/content-modules/related-items','index.php?option=com_content&view=article&id=37','component',1,411,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',139,140,0,'*',0),(399,'parks','Animals','animals','','image-gallery/animals','index.php?option=com_content&view=category&layout=blog&id=72','component',1,244,2,22,0,0,'0000-00-00 00:00:00',0,1,'',114,'{\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"show_category_title\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"0\",\"num_intro_articles\":\"6\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"0\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"1\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',246,247,0,'en-GB',0),(400,'parks','Scenery','scenery','','image-gallery/scenery','index.php?option=com_content&view=category&layout=blog&id=73','component',1,244,2,22,0,0,'0000-00-00 00:00:00',0,1,'',114,'{\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"show_category_title\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"0\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"0\",\"show_category\":\"1\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"1\",\"show_readmore\":\"1\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',248,249,0,'en-GB',0),(402,'aboutjoomla','Login Form','login-form','','using-joomla/extensions/components/users-component/login-form','index.php?option=com_users&view=login','component',1,271,5,25,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"login_redirect_url\":\"\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"logout_redirect_url\":\"\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',101,102,0,'*',0),(403,'aboutjoomla','User Profile','user-profile','','using-joomla/extensions/components/users-component/user-profile','index.php?option=com_users&view=profile','component',1,271,5,25,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',103,104,0,'*',0),(404,'aboutjoomla','Edit User Profile','edit-user-profile','','using-joomla/extensions/components/users-component/edit-user-profile','index.php?option=com_users&view=profile&layout=edit','component',1,271,5,25,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',105,106,0,'*',0),(405,'aboutjoomla','Registration Form','registration-form','','using-joomla/extensions/components/users-component/registration-form','index.php?option=com_users&view=registration','component',1,271,5,25,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',107,108,0,'*',0),(406,'aboutjoomla','Username Reminder Request','username-reminder','','using-joomla/extensions/components/users-component/username-reminder','index.php?option=com_users&view=remind','component',1,271,5,25,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',109,110,0,'*',0),(409,'aboutjoomla','Password Reset','password-reset','','using-joomla/extensions/components/users-component/password-reset','index.php?option=com_users&view=reset','component',1,271,5,25,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',111,112,0,'*',0),(410,'aboutjoomla','Feed Display','feed-display','','using-joomla/extensions/modules/display-modules/feed-display','index.php?option=com_content&view=article&id=16','component',1,413,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',159,160,0,'*',0),(411,'aboutjoomla','Content Modules','content-modules','','using-joomla/extensions/modules/content-modules','index.php?option=com_content&view=category&id=64','component',1,281,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"0\",\"show_category_title\":\"1\",\"page_subheading\":\"\",\"show_empty_categories\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"0\",\"show_headings\":\"0\",\"list_show_title\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"0\",\"list_show_author\":\"0\",\"filter_field\":\"hide\",\"orderby_pri\":\"\",\"orderby_sec\":\"order\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_limit\":\"0\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',130,145,0,'*',0),(412,'aboutjoomla','User Modules','user-modules','','using-joomla/extensions/modules/user-modules','index.php?option=com_content&view=category&id=65','component',1,281,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"0\",\"show_category_title\":\"1\",\"page_subheading\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"1\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"0\",\"show_headings\":\"0\",\"list_show_title\":\"1\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"0\",\"list_show_author\":\"0\",\"filter_field\":\"hide\",\"orderby_pri\":\"\",\"orderby_sec\":\"order\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_limit\":\"0\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',146,153,0,'*',0),(413,'aboutjoomla','Display Modules','display-modules','','using-joomla/extensions/modules/display-modules','index.php?option=com_content&view=category&id=66','component',1,281,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"0\",\"show_category_title\":\"1\",\"page_subheading\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"show_cat_num_articles\":\"\",\"display_num\":\"0\",\"show_headings\":\"0\",\"list_show_title\":\"1\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"0\",\"list_show_author\":\"0\",\"filter_field\":\"hide\",\"orderby_pri\":\"\",\"orderby_sec\":\"order\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_limit\":\"0\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',154,167,0,'*',0),(414,'aboutjoomla','Utility Modules','utility-modules','','using-joomla/extensions/modules/utility-modules','index.php?option=com_content&view=category&id=67','component',1,281,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"0\",\"show_category_title\":\"1\",\"page_subheading\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"show_cat_num_articles\":\"\",\"display_num\":\"0\",\"show_headings\":\"0\",\"list_show_title\":\"0\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"0\",\"list_show_author\":\"0\",\"filter_field\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"order\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_limit\":\"0\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',168,181,0,'*',0),(415,'aboutjoomla','Navigation Modules','navigation-modules','','using-joomla/extensions/modules/navigation-modules','index.php?option=com_content&view=category&id=75','component',1,281,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"\",\"show_category_title\":\"\",\"page_subheading\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"\",\"show_headings\":\"\",\"list_show_title\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"filter_field\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_limit\":\"\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',124,129,0,'*',0),(416,'aboutjoomla','Breadcrumbs','breadcrumbs','','using-joomla/extensions/modules/navigation-modules/breadcrumbs','index.php?option=com_content&view=article&id=61','component',1,415,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',127,128,0,'*',0),(417,'aboutjoomla','Weblinks','weblinks','','using-joomla/extensions/modules/display-modules/weblinks','index.php?option=com_content&view=article&id=55','component',1,413,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',163,164,0,'*',0),(418,'aboutjoomla','Custom HTML','custom-html','','using-joomla/extensions/modules/display-modules/custom-html','index.php?option=com_content&view=article&id=12','component',1,413,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',165,166,0,'*',0),(419,'aboutjoomla','Beez 2','beez-2','','using-joomla/extensions/templates/beez-2','index.php?option=com_content&view=category&layout=blog&id=69','component',1,282,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"1\",\"show_description_image\":\"\",\"show_category_title\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',184,189,0,'*',0),(422,'aboutjoomla','Atomic','atomic','','using-joomla/extensions/templates/atomic','index.php?option=com_content&view=category&layout=blog&id=68','component',1,282,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"1\",\"show_description_image\":\"\",\"show_category_title\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"2\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',196,201,0,'*',0),(423,'aboutjoomla','Typography Beez 2','typography-beez-2','','using-joomla/extensions/templates/beez-2/typography-beez-2','index.php?option=com_content&view=article&id=49','component',1,419,5,22,0,0,'0000-00-00 00:00:00',0,1,'',4,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',185,186,0,'*',0),(424,'aboutjoomla','Home Page Beez 2','home-page-beez-2','','using-joomla/extensions/templates/beez-2/home-page-beez-2','index.php?option=com_content&view=featured','component',1,419,5,22,0,0,'0000-00-00 00:00:00',0,1,'',4,'{\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',187,188,0,'*',0),(427,'fruitshop','Fruit Encyclopedia','fruit-encyclopedia','','fruit-encyclopedia','index.php?option=com_contact&view=categories&id=37','component',1,1,1,8,0,0,'0000-00-00 00:00:00',0,1,'',6,'{\"show_base_description\":\"1\",\"categories_description\":\"\",\"maxLevelcat\":\"\",\"show_empty_categories_cat\":\"\",\"show_subcat_desc_cat\":\"\",\"show_cat_items_cat\":\"\",\"show_category_title\":\"\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"1\",\"show_subcat_desc\":\"\",\"show_cat_items\":\"\",\"show_pagination_limit\":\"\",\"show_headings\":\"0\",\"show_position_headings\":\"\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"0\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"0\",\"show_state_headings\":\"\",\"show_country_headings\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"presentation_style\":\"\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"1\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"show_feed_link\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\" categories-listalphabet\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',255,256,0,'*',0),(429,'fruitshop','Welcome','welcome','Fruit store front page','welcome','index.php?option=com_content&view=article&id=20','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',6,'{\"show_noauth\":\"\",\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"1\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',253,254,0,'*',0),(430,'fruitshop','Contact Us','contact-us','','contact-us','index.php?option=com_contact&view=category&catid=47&id=36','component',1,1,1,8,0,0,'0000-00-00 00:00:00',0,1,'',6,'{\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"20\",\"show_headings\":\"0\",\"filter_field\":\"hide\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"1\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',259,260,0,'*',0),(431,'fruitshop','Growers','growers','','growers','index.php?option=com_content&view=category&layout=blog&id=30','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',6,'{\"maxLevel\":\"0\",\"show_empty_categories\":\"\",\"show_description\":\"1\",\"show_description_image\":\"\",\"show_category_title\":\"1\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"5\",\"num_intro_articles\":\"0\",\"num_columns\":\"1\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"alpha\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',257,258,0,'*',0),(432,'fruitshop','Login ','shop-login','','shop-login','index.php?option=com_users&view=login','component',1,1,1,25,0,0,'0000-00-00 00:00:00',0,1,'',6,'{\"login_redirect_url\":\"\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"logout_redirect_url\":\"\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',261,262,0,'*',0),(433,'fruitshop','Directions','directions','','directions','index.php?option=com_content&view=article&id=13','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',6,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',263,264,0,'*',0),(435,'mainmenu','Home','homepage','','homepage','index.php?option=com_content&view=featured','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"featured_categories\":[\"\"],\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"\",\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"\",\"show_readmore\":\"1\",\"show_readmore_title\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',1,2,1,'*',0),(436,'aboutjoomla','Getting Help','getting-help','','using-joomla/getting-help','index.php?option=com_content&view=article&id=21','component',1,280,2,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',224,225,0,'*',0),(437,'aboutjoomla','Getting Started','getting-started','','getting-started','index.php?option=com_content&view=article&id=22','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"1\",\"link_titles\":\"0\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',45,46,0,'*',0),(438,'mainmenu','Weblinks','weblinks','','site-map/weblinks','index.php?option=com_weblinks&view=categories&id=0','component',1,294,2,21,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"categories_description\":\"\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"\",\"show_headings\":\"\",\"orderby_pri\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"article-allow_ratings\":\"\",\"article-allow_comments\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',6,7,0,'*',0),(439,'mainmenu','Contacts','contacts','','site-map/contacts','index.php?option=com_contact&view=categories&id=0','component',1,294,2,8,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"categories_description\":\"\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"\",\"show_headings\":\"\",\"filter_field\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"1\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"article-allow_ratings\":\"\",\"article-allow_comments\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',8,9,0,'*',0),(443,'aboutjoomla','Article Categories','article-categories-view','','using-joomla/extensions/modules/content-modules/article-categories-view','index.php?option=com_content&view=article&id=3','component',1,411,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',141,142,0,'*',0),(444,'top','Sample Sites','sample-sites-2','','sample-sites-2','index.php?Itemid=','alias',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"aliasoptions\":\"238\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}',233,234,0,'*',0),(445,'mainmenu','Parks','parks','','sample-sites/parks','index.php?Itemid=','alias',1,238,2,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"aliasoptions\":\"243\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}',266,267,0,'*',0),(446,'mainmenu','Shop','shop','','sample-sites/shop','index.php?Itemid=','alias',1,238,2,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"aliasoptions\":\"429\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}',268,269,0,'*',0),(447,'aboutjoomla','Language Switcher','language-switcher','','using-joomla/extensions/modules/utility-modules/language-switcher','index.php?option=com_content&view=article&id=26','component',1,414,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',175,176,0,'*',0),(448,'mainmenu','Site Administrator','site-administrator','','site-administrator','administrator','url',1,1,1,0,0,0,'0000-00-00 00:00:00',1,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}',271,272,0,'*',0),(449,'usermenu','Submit an Article','submit-an-article','','submit-an-article','index.php?option=com_content&view=form&layout=edit','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,3,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',273,274,0,'*',0),(450,'usermenu','Submit a Web Link','submit-a-web-link','','submit-a-web-link','index.php?option=com_weblinks&view=form&layout=edit','component',1,1,1,21,0,0,'0000-00-00 00:00:00',0,3,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',275,276,0,'*',0),(452,'aboutjoomla','Featured Contacts','featured-contacts','','using-joomla/extensions/components/contact-component/featured-contacts','index.php?option=com_contact&view=featured&id=16','component',1,270,5,8,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"\",\"show_headings\":\"\",\"filter_field\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"presentation_style\":\"sliders\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"1\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":1,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',81,82,0,'*',0),(453,'aboutjoomla','Parameters','parameters','','using-joomla/parameters','index.php?option=com_content&view=article&id=32','component',1,280,2,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"1\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"1\",\"link_parent_category\":\"1\",\"show_author\":\"1\",\"link_author\":\"1\",\"show_create_date\":\"1\",\"show_modify_date\":\"1\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',222,223,0,'*',0),(455,'mainmenu','Example Pages','example-pages','','example-pages','index.php?Itemid=','alias',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"aliasoptions\":\"268\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}',277,278,0,'*',0),(456,'aboutjoomla','Beez5','beez5','','using-joomla/extensions/templates/beez5','index.php?option=com_content&view=category&layout=blog&id=70','component',1,282,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"1\",\"show_description_image\":\"\",\"show_category_title\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":1,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',190,195,0,'*',0),(457,'aboutjoomla','Typography Beez5','typography-beez-5','','using-joomla/extensions/templates/beez5/typography-beez-5','index.php?option=com_content&view=article&id=49','component',1,456,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":1,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',191,192,0,'*',0),(458,'aboutjoomla','Home Page Beez5','home-page-beez5','','using-joomla/extensions/templates/beez5/home-page-beez5','index.php?option=com_content&view=featured','component',1,456,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":1,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',193,194,0,'*',0),(459,'aboutjoomla','Article Category','article-category','','using-joomla/extensions/modules/content-modules/article-category','index.php?option=com_content&view=article&id=4','component',1,411,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":1,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',143,144,0,'*',0),(462,'fruitshop','Add a recipe','add-a-recipe','','add-a-recipe','index.php?option=com_content&view=form&layout=edit','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,4,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":1,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',279,280,0,'*',0),(463,'fruitshop','Recipes','recipes','','recipes','index.php?option=com_content&view=category&id=76','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',6,'{\"maxLevel\":\"0\",\"show_category_title\":\"1\",\"page_subheading\":\"\",\"show_empty_categories\":\"0\",\"show_description\":\"1\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"\",\"show_headings\":\"\",\"list_show_title\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"filter_field\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_limit\":\"\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',281,282,0,'*',0),(464,'top','Home','home','','home','index.php?Itemid=','alias',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"aliasoptions\":\"435\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}',227,228,0,'*',0),(466,'aboutjoomla','Smart Search','smart-search','','using-joomla/extensions/components/search-component/smart-search','index.php?option=com_finder&view=search&q=&f=','component',1,276,5,27,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_date_filters\":\"\",\"show_advanced\":\"\",\"expand_advanced\":\"\",\"show_description\":\"\",\"description_length\":255,\"show_url\":\"\",\"show_pagination_limit\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"allow_empty_query\":\"0\",\"search_order\":\"\",\"show_feed\":\"0\",\"show_feed_text\":\"0\",\"show_feed_link\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',117,118,0,'*',0),(467,'aboutjoomla','Smart Search','smart-search','','using-joomla/extensions/modules/utility-modules/smart-search','index.php?option=com_content&view=article&id=70','component',1,414,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',179,180,0,'*',0),(468,'main','COM_VIRTUEMART','com-virtuemart','','com-virtuemart','index.php?option=com_virtuemart','component',0,1,1,10004,0,0,'0000-00-00 00:00:00',0,1,'../components/com_virtuemart/assets/images/vmgeneral/menu_icon.png',0,'',283,284,0,'',1),(469,'main','VirtueMart AIO','virtuemart-aio','','virtuemart-aio','index.php?option=com_virtuemart_allinone','component',0,1,1,10005,0,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',285,286,0,'',1),(470,'main','EASYTAGCLOUD','easytagcloud','','easytagcloud','index.php?option=com_easytagcloud','component',0,1,1,10034,0,0,'0000-00-00 00:00:00',0,1,'../media/com_easytagcloud/assets/easytagcloud16X16.png',0,'',287,288,0,'',1),(471,'main','COM_TORTAGS_MENU','com-tortags-menu','','com-tortags-menu','index.php?option=com_tortags','component',0,1,1,10036,0,0,'0000-00-00 00:00:00',0,1,'../media/com_tortags/images/tormix-16.png',0,'',289,294,0,'',1),(472,'main','COM_TORTAGS_MENU_COMOPONENTS','com-tortags-menu-comoponents','','com-tortags-menu/com-tortags-menu-comoponents','index.php?option=com_tortags&view=components','component',0,471,2,10036,0,0,'0000-00-00 00:00:00',0,1,'/administrator/components/com_tortags/assets/images/components.png',0,'',290,291,0,'',1),(473,'main','COM_TORTAGS_MENU_TAGS','com-tortags-menu-tags','','com-tortags-menu/com-tortags-menu-tags','index.php?option=com_tortags&view=tags','component',0,471,2,10036,0,0,'0000-00-00 00:00:00',0,1,'/administrator/components/com_tortags/assets/images/tags.png',0,'',292,293,0,'',1);
/*!40000 ALTER TABLE `yami_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_menu_types`
--

DROP TABLE IF EXISTS `yami_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_menu_types`
--

LOCK TABLES `yami_menu_types` WRITE;
/*!40000 ALTER TABLE `yami_menu_types` DISABLE KEYS */;
INSERT INTO `yami_menu_types` VALUES (2,'usermenu','User Menu','A Menu for logged-in Users'),(3,'top','Top','Links for major types of users'),(4,'aboutjoomla','About Joomla','All about Joomla!'),(5,'parks','Australian Parks','Main menu for a site about Australian  parks'),(6,'mainmenu','Main Menu','Simple Home Menu'),(7,'fruitshop','Fruit Shop','Menu for the sample shop site.');
/*!40000 ALTER TABLE `yami_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_messages`
--

DROP TABLE IF EXISTS `yami_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_messages`
--

LOCK TABLES `yami_messages` WRITE;
/*!40000 ALTER TABLE `yami_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_messages_cfg`
--

DROP TABLE IF EXISTS `yami_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_messages_cfg`
--

LOCK TABLES `yami_messages_cfg` WRITE;
/*!40000 ALTER TABLE `yami_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_modules`
--

DROP TABLE IF EXISTS `yami_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_modules`
--

LOCK TABLES `yami_modules` WRITE;
/*!40000 ALTER TABLE `yami_modules` DISABLE KEYS */;
INSERT INTO `yami_modules` VALUES (1,'Main Menu','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(2,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"Home\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(18,'Book Store','','',1,'position-10',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_banners',1,0,'{\"target\":\"1\",\"count\":\"1\",\"cid\":\"3\",\"catid\":[\"\"],\"tag_search\":\"0\",\"ordering\":\"0\",\"header_text\":\"\",\"footer_text\":\"Books!\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(19,'User Menu','','',3,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',2,1,'{\"menutype\":\"usermenu\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(20,'Top','','',1,'position-1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"top\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',0,'*'),(22,'Australian Parks ','','',2,'position-5',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"parks\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'en-GB'),(23,'About Joomla!','','',4,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"aboutjoomla\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(25,'Site Map','','',1,'sitemapload',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"mainmenu\",\"startLevel\":\"2\",\"endLevel\":\"3\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"sitemap\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(26,'This Site','','',5,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(27,'Archived Articles','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_archive',1,1,'{\"count\":\"10\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(28,'Latest News','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_latest',1,1,'{\"catid\":[\"19\"],\"count\":\"5\",\"show_featured\":\"\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(29,'Articles Most Read','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_popular',1,1,'{\"catid\":[\"26\",\"29\"],\"count\":\"5\",\"show_front\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(30,'Feed Display','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_feed',1,1,'{\"rssurl\":\"http:\\/\\/community.joomla.org\\/blogs\\/community.feed?type=rss\",\"rssrtl\":\"0\",\"rsstitle\":\"1\",\"rssdesc\":\"1\",\"rssimage\":\"1\",\"rssitems\":\"3\",\"rssitemdesc\":\"1\",\"word_count\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(31,'News Flash','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_news',1,1,'{\"catid\":[\"19\"],\"image\":\"0\",\"item_title\":\"0\",\"link_titles\":\"\",\"item_heading\":\"h4\",\"showLastSeparator\":\"1\",\"readmore\":\"1\",\"count\":\"1\",\"ordering\":\"a.publish_up\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(33,'Random Image','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_random_image',1,1,'{\"type\":\"jpg\",\"folder\":\"images\\/sampledata\\/parks\\/animals\",\"link\":\"\",\"width\":\"180\",\"height\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',0,'*'),(34,'Articles Related Items','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_related_items',1,1,'{\"showDate\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\"}',0,'*'),(35,'Search','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_search',1,1,'{\"label\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"button_pos\":\"right\",\"imagebutton\":\"\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(36,'Statistics','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_stats',1,1,'{\"serverinfo\":\"1\",\"siteinfo\":\"1\",\"counter\":\"1\",\"increase\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(37,'Syndicate Feeds','','',1,'syndicateload',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_syndicate',1,1,'{\"text\":\"Feed Entries\",\"format\":\"rss\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',0,'*'),(38,'Users Latest','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_users_latest',1,1,'{\"shownumber\":\"5\",\"linknames\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(39,'Who\'s Online','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_whosonline',1,1,'{\"showmode\":\"2\",\"linknames\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',0,'*'),(40,'Wrapper','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_wrapper',1,1,'{\"url\":\"http:\\/\\/www.youtube.com\\/embed\\/vb2eObvmvdI\",\"add\":\"1\",\"scrolling\":\"auto\",\"width\":\"640\",\"height\":\"390\",\"height_auto\":\"1\",\"target\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(41,'Footer','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_footer',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(44,'Login','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"280\",\"logout\":\"280\",\"greeting\":\"1\",\"name\":\"0\",\"usesecure\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',0,'*'),(45,'Menu Example','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(47,'Latest Park Blogs','','',6,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_latest',1,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"show_front\":\"1\",\"catid\":\"35\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'en-GB'),(48,'Custom HTML','','<p>This is a custom html module. That means you can enter whatever content you want.</p>',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(49,'Weblinks','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_weblinks',1,1,'{\"catid\":\"32\",\"count\":\"5\",\"ordering\":\"title\",\"direction\":\"asc\",\"target\":\"3\",\"description\":\"0\",\"hits\":\"0\",\"count_clicks\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(52,'Breadcrumbs','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"showHere\":\"1\",\"showHome\":\"1\",\"homeText\":\"Home\",\"showLast\":\"1\",\"separator\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(56,'Banners','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_banners',1,1,'{\"target\":\"1\",\"count\":\"1\",\"cid\":\"1\",\"catid\":[\"15\"],\"tag_search\":\"0\",\"ordering\":\"random\",\"header_text\":\"\",\"footer_text\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(57,'Fruit Shop','','',3,'position-5',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"fruitshop\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(58,'Special!','','<h1>This week we have a special, half price on delicious oranges!</h1><div>Only for our special customers!</div><div>Use the code: Joomla! when ordering</div><p><em>This module can only be seen by people in the customers group or higher.</em></p>',1,'position-12',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',4,1,'{\"prepare_content\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(61,'Articles Categories','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_categories',1,1,'{\"parent\":\"29\",\"show_description\":\"0\",\"show_children\":\"0\",\"count\":\"0\",\"maxlevel\":\"0\",\"layout\":\"_:default\",\"item_heading\":\"4\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(62,'Language Switcher','','',3,'position-4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_languages',1,1,'{\"header_text\":\"\",\"footer_text\":\"\",\"image\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(63,'Search','','',1,'position-0',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_search',1,1,'{\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"button_pos\":\"right\",\"imagebutton\":\"1\",\"button_text\":\"\",\"set_itemid\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(64,'Language Switcher','','',1,'languageswitcherload',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_languages',1,1,'{\"header_text\":\"\",\"footer_text\":\"\",\"image\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(65,'About Fruit Shop','','<p>The Fruit Shop site shows a number of Joomla! features.</p><p>The template uses classes in cascading style sheets to change the layout of items, such as creating the horizontal alphabetical list in the Fruit Encyclopedia.</p><p> </p>',1,'position-4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(67,'Extensions','','',2,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_menu',1,1,'{\"menutype\":\"aboutjoomla\",\"startLevel\":\"1\",\"endLevel\":\"6\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"-menu\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(68,'About Parks','','<p>The Parks sample site is designed as a simple site that can be routinely updated from the front end of Joomla!.</p><p>As a site, it is largely focused on a blog which can be updated using the front end article submission.</p><p>New weblinks can also be added through the front end.</p><p>A simple image gallery uses com_content with thumbnails displayed in a blog layout and full size images shown in article layout.</p><p>The Parks site features the language switch module. All of the content and modules are tagged as English (en-GB). If a second language pack is added with sample data this can be filtered using the language switch.</p><p>Parks uses HTML5 which is a major web standard (along with XHTML which is used in other areas of sample data).</p>',2,'position-4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(69,'Articles Category','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_category',1,1,'{\"mode\":\"normal\",\"show_on_article_page\":\"1\",\"show_front\":\"show\",\"count\":\"0\",\"category_filtering_type\":\"1\",\"catid\":[\"72\"],\"show_child_category_articles\":\"0\",\"levels\":\"1\",\"author_filtering_type\":\"1\",\"created_by\":[\"\"],\"author_alias_filtering_type\":\"1\",\"created_by_alias\":[\"\"],\"excluded_articles\":\"\",\"date_filtering\":\"off\",\"date_field\":\"a.created\",\"start_date_range\":\"\",\"end_date_range\":\"\",\"relative_date\":\"30\",\"article_ordering\":\"a.title\",\"article_ordering_direction\":\"ASC\",\"article_grouping\":\"none\",\"article_grouping_direction\":\"ksort\",\"month_year_format\":\"F Y\",\"item_heading\":\"4\",\"link_titles\":\"1\",\"show_date\":\"0\",\"show_date_field\":\"created\",\"show_date_format\":\"Y-m-d H:i:s\",\"show_category\":\"0\",\"show_hits\":\"0\",\"show_author\":\"0\",\"show_introtext\":\"0\",\"introtext_limit\":\"100\",\"show_readmore\":\"0\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"15\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(70,'Search (Atomic Template)','','',1,'atomic-search',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_search',1,0,'{\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"button_pos\":\"right\",\"imagebutton\":\"\",\"button_text\":\"\",\"set_itemid\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(71,'Top Menu (Atomic Template)','','',1,'atomic-topmenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"aboutjoomla\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(72,'Top Quote (Atomic Template)','','<hr />\r\n<h2 class=\"alt\">Powerful Content Management and a Simple Extensible Framework.</h2>\r\n<hr />',1,'atomic-topquote',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(73,'Bottom Left Column (Atomic Template)','','<h6>This is a nested column</h6>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>',1,'atomic-bottomleft',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(74,'Bottom Middle Column (Atomic Template)','','<h6>This is another nested column</h6>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>',1,'atomic-bottommiddle',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(75,'Sidebar (Atomic Template)','','<h3>A <span class=\"alt\">Simple</span> Sidebar</h3>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\r\n<p class=\"quiet\">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\r\n<h5>Incremental leading</h5>\r\n<p class=\"incr\">Vestibulum ante ipsum primis in faucibus orci luctus vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus.</p>\r\n<p class=\"incr\">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>',1,'atomic-sidebar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(76,'Login (Atomic Template)','','',2,'atomic-sidebar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,0,'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"\",\"greeting\":\"1\",\"name\":\"0\",\"usesecure\":\"0\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',0,'*'),(77,'Shop','','',1,'position-11',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_banners',1,0,'{\"target\":\"1\",\"count\":\"1\",\"cid\":\"2\",\"catid\":[\"15\"],\"tag_search\":\"0\",\"ordering\":\"0\",\"header_text\":\"\",\"footer_text\":\"Shop!\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(78,'Contribute','','',1,'position-9',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_banners',1,0,'{\"target\":\"1\",\"count\":\"1\",\"cid\":\"1\",\"catid\":[\"15\"],\"tag_search\":\"0\",\"ordering\":\"0\",\"header_text\":\"\",\"footer_text\":\"Contribute! \",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(79,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(84,'Smart Search Module','','',2,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_finder',1,1,'{\"searchfilter\":\"\",\"show_autosuggest\":\"1\",\"show_advanced\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"field_size\":20,\"alt_label\":\"\",\"show_label\":\"0\",\"label_pos\":\"top\",\"show_button\":\"0\",\"button_pos\":\"right\",\"opensearch\":\"1\",\"opensearch_title\":\"\"}',0,'*'),(86,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,'VM - Currencies Selector','','',4,'position-4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_virtuemart_currencies',1,1,'',0,''),(88,'VM - Featured products','','',3,'position-4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_virtuemart_product',1,1,'',0,''),(89,'VM - Search in Shop','','',2,'position-4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_virtuemart_search',1,1,'',0,''),(90,'VM - Manufacturer','','',5,'position-4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_virtuemart_manufacturer',1,1,'',0,''),(91,'VM - Shopping cart','','',0,'position-4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_virtuemart_cart',1,1,'',0,''),(92,'VM - Category','','',6,'position-4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_virtuemart_category',1,1,'',0,'');
/*!40000 ALTER TABLE `yami_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_modules_menu`
--

DROP TABLE IF EXISTS `yami_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_modules_menu`
--

LOCK TABLES `yami_modules_menu` WRITE;
/*!40000 ALTER TABLE `yami_modules_menu` DISABLE KEYS */;
INSERT INTO `yami_modules_menu` VALUES (1,101),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,205),(16,435),(17,0),(18,0),(19,-463),(19,-462),(19,-433),(19,-432),(19,-431),(19,-430),(19,-429),(19,-427),(19,-400),(19,-399),(19,-296),(19,-244),(19,-243),(19,-242),(19,-234),(20,0),(22,231),(22,234),(22,238),(22,242),(22,243),(22,244),(22,296),(22,399),(22,400),(23,-463),(23,-462),(23,-433),(23,-432),(23,-431),(23,-430),(23,-429),(23,-427),(23,-400),(23,-399),(23,-296),(23,-244),(23,-243),(23,-242),(23,-238),(23,-234),(25,294),(26,-463),(26,-462),(26,-433),(26,-432),(26,-431),(26,-430),(26,-429),(26,-427),(26,-400),(26,-399),(26,-296),(26,-244),(26,-243),(26,-242),(26,-238),(26,-234),(27,325),(28,310),(29,302),(30,410),(31,309),(32,309),(33,307),(34,326),(35,306),(36,304),(37,311),(38,300),(39,301),(40,313),(41,324),(44,312),(45,303),(47,231),(47,234),(47,242),(47,243),(47,244),(47,296),(47,399),(47,400),(48,418),(49,417),(52,416),(56,305),(57,238),(57,427),(57,429),(57,430),(57,431),(57,432),(57,433),(57,462),(57,463),(58,427),(58,429),(58,430),(58,431),(58,432),(58,433),(58,462),(58,463),(61,443),(62,231),(62,234),(62,242),(62,243),(62,244),(62,296),(62,399),(62,400),(63,0),(64,447),(65,427),(65,429),(65,430),(65,431),(65,432),(65,433),(65,462),(65,463),(68,243),(69,459),(70,285),(70,316),(71,285),(71,316),(72,285),(72,316),(73,285),(73,316),(74,285),(74,316),(75,285),(75,316),(76,285),(76,316),(77,0),(78,0),(79,0),(84,467),(86,0),(87,0),(88,0),(89,0),(90,0),(91,0),(92,0);
/*!40000 ALTER TABLE `yami_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_newsfeeds`
--

DROP TABLE IF EXISTS `yami_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_newsfeeds`
--

LOCK TABLES `yami_newsfeeds` WRITE;
/*!40000 ALTER TABLE `yami_newsfeeds` DISABLE KEYS */;
INSERT INTO `yami_newsfeeds` VALUES (17,1,'Joomla! Announcements','joomla-announcements','http://www.joomla.org/announcements.feed?type=rss',NULL,1,5,3600,0,'0000-00-00 00:00:00',1,1,1,'en-GB','{\"show_feed_image\":\"\",\"show_feed_description\":\"\",\"show_item_description\":\"\",\"feed_character_count\":\"0\",\"newsfeed_layout\":\"\",\"feed_display_order\":\"\"}','2011-01-01 00:00:01',901,'','2011-12-27 12:25:05',42,'','','{\"robots\":\"\",\"rights\":\"\"}','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,2,'New Joomla! Extensions','new-joomla-extensions','http://feeds.joomla.org/JoomlaExtensions',NULL,1,5,3600,0,'0000-00-00 00:00:00',4,1,1,'en-GB','{\"show_feed_image\":\"\",\"show_feed_description\":\"\",\"show_item_description\":\"\",\"feed_character_count\":\"0\",\"newsfeed_layout\":\"\",\"feed_display_order\":\"\"}','2011-01-01 00:00:01',901,'','2011-12-27 12:25:36',42,'','','{\"robots\":\"\",\"rights\":\"\"}','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,3,'Joomla! Security News','joomla-security-news','http://feeds.joomla.org/JoomlaSecurityNews',NULL,1,5,3600,0,'0000-00-00 00:00:00',2,1,1,'en-GB','{\"show_feed_image\":\"\",\"show_feed_description\":\"\",\"show_item_description\":\"\",\"feed_character_count\":\"0\",\"newsfeed_layout\":\"\",\"feed_display_order\":\"\"}','2011-01-01 00:00:01',901,'','2011-12-27 12:24:55',42,'','','{\"robots\":\"\",\"rights\":\"\"}','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,4,'Joomla! Connect','joomla-connect','http://feeds.joomla.org/JoomlaConnect',NULL,1,5,3600,0,'0000-00-00 00:00:00',3,1,1,'en-GB','{\"show_feed_image\":\"\",\"show_feed_description\":\"\",\"show_item_description\":\"\",\"feed_character_count\":\"0\",\"newsfeed_layout\":\"\",\"feed_display_order\":\"\"}','2011-01-01 00:00:01',901,'','2011-12-27 12:25:10',42,'','','{\"robots\":\"\",\"rights\":\"\"}','','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `yami_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_overrider`
--

DROP TABLE IF EXISTS `yami_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_overrider`
--

LOCK TABLES `yami_overrider` WRITE;
/*!40000 ALTER TABLE `yami_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_redirect_links`
--

DROP TABLE IF EXISTS `yami_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_redirect_links`
--

LOCK TABLES `yami_redirect_links` WRITE;
/*!40000 ALTER TABLE `yami_redirect_links` DISABLE KEYS */;
INSERT INTO `yami_redirect_links` VALUES (1,'http://localhost/joomla/index.php/Media','','','',1,0,'2013-06-18 08:23:26','0000-00-00 00:00:00'),(2,'http://localhost/joomla/index.php/extensions/modules','','','',1,0,'2013-06-18 08:24:30','0000-00-00 00:00:00'),(3,'http://localhost/joomla/index.php/modules/content-modules','','','',1,0,'2013-06-18 08:41:39','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `yami_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_schemas`
--

DROP TABLE IF EXISTS `yami_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_schemas`
--

LOCK TABLES `yami_schemas` WRITE;
/*!40000 ALTER TABLE `yami_schemas` DISABLE KEYS */;
INSERT INTO `yami_schemas` VALUES (700,'2.5.11');
/*!40000 ALTER TABLE `yami_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_session`
--

DROP TABLE IF EXISTS `yami_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_session`
--

LOCK TABLES `yami_session` WRITE;
/*!40000 ALTER TABLE `yami_session` DISABLE KEYS */;
INSERT INTO `yami_session` VALUES ('s1b73b2ei0ttqrlu43glj0okc4',1,0,'1371545722','__default|a:8:{s:15:\"session.counter\";i:170;s:19:\"session.timer.start\";i:1371544016;s:18:\"session.timer.last\";i:1371545721;s:17:\"session.timer.now\";i:1371545721;s:22:\"session.client.browser\";s:65:\"Mozilla/5.0 (Windows NT 6.1; rv:21.0) Gecko/20100101 Firefox/21.0\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":3:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:5:\"zh-CN\";}s:14:\"com_categories\";O:8:\"stdClass\":2:{s:10:\"categories\";O:8:\"stdClass\":2:{s:6:\"filter\";O:8:\"stdClass\":1:{s:9:\"extension\";s:11:\"com_content\";}s:7:\"content\";O:8:\"stdClass\":5:{s:6:\"search\";s:0:\"\";s:6:\"filter\";O:8:\"stdClass\":4:{s:5:\"level\";i:0;s:6:\"access\";i:0;s:9:\"published\";s:0:\"\";s:8:\"language\";s:0:\"\";}s:10:\"limitstart\";s:1:\"0\";s:8:\"ordercol\";s:5:\"a.lft\";s:9:\"orderdirn\";s:3:\"asc\";}}s:4:\"edit\";O:8:\"stdClass\":1:{s:8:\"category\";O:8:\"stdClass\":2:{s:4:\"data\";N;s:2:\"id\";a:0:{}}}}s:6:\"global\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"limit\";i:20;}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:1;s:2:\"id\";s:3:\"901\";s:4:\"name\";s:10:\"Super User\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:14:\"ccqngu@live.cn\";s:8:\"password\";s:65:\"58055cfd7c1a6245df0ad638a24b3e82:HaWdlDnm41DMepqVoOCVXLA8jZ6sKSkv\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:10:\"deprecated\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2013-06-17 06:52:58\";s:13:\"lastvisitDate\";s:19:\"2013-06-18 08:26:56\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:0:\"\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\0*\0_authLevels\";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"d4758ecf573245af36e41139e434146d\";}',901,'admin',''),('t66a6292mde6idu9iakmmlm245',0,1,'1371545318','__default|a:9:{s:15:\"session.counter\";i:29;s:19:\"session.timer.start\";i:1371539602;s:18:\"session.timer.last\";i:1371545273;s:17:\"session.timer.now\";i:1371545316;s:22:\"session.client.browser\";s:65:\"Mozilla/5.0 (Windows NT 6.1; rv:21.0) Gecko/20100101 Firefox/21.0\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":1:{s:5:\"users\";O:8:\"stdClass\":1:{s:5:\"login\";O:8:\"stdClass\":1:{s:4:\"form\";O:8:\"stdClass\":2:{s:6:\"return\";s:20:\"index.php?Itemid=435\";s:4:\"data\";a:4:{s:6:\"return\";s:20:\"index.php?Itemid=435\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"remember\";i:0;}}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"784fa1650882acb2df407742ddf49c41\";s:16:\"com_mailto.links\";a:1:{s:40:\"3ee77a140992f957dc15489230751472ec9735b1\";O:8:\"stdClass\":2:{s:4:\"link\";s:52:\"http://localhost/joomla/index.php/the-joomla-project\";s:6:\"expiry\";i:1371545317;}}}',0,'','');
/*!40000 ALTER TABLE `yami_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_template_styles`
--

DROP TABLE IF EXISTS `yami_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_template_styles`
--

LOCK TABLES `yami_template_styles` WRITE;
/*!40000 ALTER TABLE `yami_template_styles` DISABLE KEYS */;
INSERT INTO `yami_template_styles` VALUES (2,'bluestork',1,'1','Bluestork - Default','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\"}'),(3,'atomic',0,'0','Atomic - Default','{}'),(4,'beez_20',0,'1','Beez2 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(6,'beez5',0,'0','Beez5 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/sampledata\\/fruitshop\\/fruits.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"html5\":\"0\"}'),(114,'beez_20',0,'0','Beez2 - Parks Site','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"\",\"sitetitle\":\"Australian Parks\",\"sitedescription\":\"Parks Sample Site\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}');
/*!40000 ALTER TABLE `yami_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_tortags`
--

DROP TABLE IF EXISTS `yami_tortags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_tortags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `tid` int(10) unsigned NOT NULL COMMENT 'tag id',
  `oid` int(10) unsigned NOT NULL COMMENT 'component  id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Table of xref to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_tortags`
--

LOCK TABLES `yami_tortags` WRITE;
/*!40000 ALTER TABLE `yami_tortags` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_tortags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_tortags_components`
--

DROP TABLE IF EXISTS `yami_tortags_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_tortags_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `component` varchar(200) NOT NULL COMMENT 'component name',
  `table` varchar(200) NOT NULL COMMENT 'component  table',
  `id_field` varchar(200) NOT NULL DEFAULT 'id' COMMENT 'component id field',
  `title_field` varchar(200) NOT NULL COMMENT 'component  table title field',
  `description_field` varchar(200) NOT NULL COMMENT 'component  table description field',
  `created_field` varchar(200) NOT NULL COMMENT 'component  table created field',
  `url_template` varchar(200) NOT NULL COMMENT 'component  url template',
  `be_key` varchar(60) NOT NULL COMMENT 'Admin request key id',
  `fe_key` varchar(60) NOT NULL COMMENT 'Front request key id',
  `where_enable` tinyint(4) NOT NULL COMMENT 'Where enable (0-all,1-only BE,2-only FE)',
  `state_field` varchar(250) NOT NULL COMMENT 'Publish state field',
  `state_status` varchar(25) NOT NULL COMMENT 'Publish state value',
  `exc_views` text NOT NULL COMMENT 'Exceptions of views',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Table of components';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_tortags_components`
--

LOCK TABLES `yami_tortags_components` WRITE;
/*!40000 ALTER TABLE `yami_tortags_components` DISABLE KEYS */;
INSERT INTO `yami_tortags_components` VALUES (1,'com_content','#__content','id','title','introtext','created','index.php?option=[COMPONENT]&view=article&id=[ID]','','',0,'','',''),(2,'com_categories','#__categories','id','title','description','created_time','index.php?option=com_content&view=category&layout=blog&id=[ID]','','',0,'','','');
/*!40000 ALTER TABLE `yami_tortags_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_tortags_tags`
--

DROP TABLE IF EXISTS `yami_tortags_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_tortags_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'tag id',
  `title` varchar(200) NOT NULL COMMENT 'tag title',
  `published` tinyint(3) unsigned NOT NULL COMMENT 'Is tag published?',
  `hits` int(10) unsigned NOT NULL COMMENT 'Hits',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Table of tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_tortags_tags`
--

LOCK TABLES `yami_tortags_tags` WRITE;
/*!40000 ALTER TABLE `yami_tortags_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_tortags_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_update_categories`
--

DROP TABLE IF EXISTS `yami_update_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_update_categories`
--

LOCK TABLES `yami_update_categories` WRITE;
/*!40000 ALTER TABLE `yami_update_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_update_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_update_sites`
--

DROP TABLE IF EXISTS `yami_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_update_sites`
--

LOCK TABLES `yami_update_sites` WRITE;
/*!40000 ALTER TABLE `yami_update_sites` DISABLE KEYS */;
INSERT INTO `yami_update_sites` VALUES (1,'Joomla Core','collection','http://update.joomla.org/core/list.xml',1,1371523881),(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1371523881),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist.xml',1,1371523881);
/*!40000 ALTER TABLE `yami_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_update_sites_extensions`
--

DROP TABLE IF EXISTS `yami_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_update_sites_extensions`
--

LOCK TABLES `yami_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `yami_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `yami_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(3,10003);
/*!40000 ALTER TABLE `yami_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_updates`
--

DROP TABLE IF EXISTS `yami_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_updates`
--

LOCK TABLES `yami_updates` WRITE;
/*!40000 ALTER TABLE `yami_updates` DISABLE KEYS */;
INSERT INTO `yami_updates` VALUES (1,3,0,0,'Armenian','','pkg_hy-AM','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/hy-AM_details.xml',''),(2,3,0,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/id-ID_details.xml',''),(3,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(4,3,0,0,'Khmer','','pkg_km-KH','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/km-KH_details.xml',''),(5,3,0,0,'Swedish','','pkg_sv-SE','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sv-SE_details.xml',''),(6,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(7,3,0,0,'Bulgarian','','pkg_bg-BG','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/bg-BG_details.xml',''),(8,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(9,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(10,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(11,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(12,3,0,0,'Turkish','','pkg_tr-TR','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/tr-TR_details.xml',''),(13,3,0,0,'Ukrainian','','pkg_uk-UA','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/uk-UA_details.xml',''),(14,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(15,3,0,0,'Belarusian','','pkg_be-BY','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/be-BY_details.xml',''),(16,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(17,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(18,3,0,0,'Romanian','','pkg_ro-RO','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/ro-RO_details.xml',''),(19,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(20,3,0,0,'Macedonian','','pkg_mk-MK','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/mk-MK_details.xml',''),(21,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(22,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(23,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(24,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(25,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(26,3,0,0,'English AU','','pkg_en-AU','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/en-AU_details.xml',''),(27,3,0,0,'English US','','pkg_en-US','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/en-US_details.xml',''),(28,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(29,3,0,0,'Lithuanian','','pkg_lt-LT','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/lt-LT_details.xml',''),(30,3,0,0,'Albanian','','pkg_sq-AL','package','',0,'2.5.1.5','','http://update.joomla.org/language/details/sq-AL_details.xml',''),(31,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.11.2','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(32,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(33,3,0,0,'Galician','','pkg_gl-ES','package','',0,'2.5.7.4','','http://update.joomla.org/language/details/gl-ES_details.xml',''),(34,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(35,3,0,0,'Syriac','','pkg_sy-IQ','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sy-IQ_details.xml',''),(36,3,0,0,'Portuguese','','pkg_pt-PT','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/pt-PT_details.xml',''),(37,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(38,3,0,0,'Hebrew','','pkg_he-IL','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/he-IL_details.xml',''),(39,3,0,0,'Hebrew','','pkg_he-IL','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/he-IL_details.xml',''),(40,3,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(41,3,0,0,'Laotian','','pkg_lo-LA','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/lo-LA_details.xml',''),(42,3,0,0,'Afrikaans','','pkg_af-ZA','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/af-ZA_details.xml',''),(44,3,0,0,'Greek','','pkg_el-GR','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/el-GR_details.xml',''),(45,3,0,0,'Esperanto','','pkg_eo-XX','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/eo-XX_details.xml',''),(46,3,0,0,'Finnish','','pkg_fi-FI','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/fi-FI_details.xml',''),(47,3,0,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/pt-BR_details.xml',''),(48,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(49,3,0,0,'Vietnamese','','pkg_vi-VN','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/vi-VN_details.xml',''),(50,3,0,0,'Kurdish Sorani','','pkg_ckb-IQ','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/ckb-IQ_details.xml',''),(51,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(52,3,0,0,'Croatian','','pkg_hr-HR','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/hr-HR_details.xml',''),(53,3,0,0,'Azeri','','pkg_az-AZ','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/az-AZ_details.xml',''),(54,3,0,0,'Norwegian Nynorsk','','pkg_nn-NO','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/nn-NO_details.xml',''),(55,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(56,3,0,0,'Scottish Gaelic','','pkg_gd-GB','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/gd-GB_details.xml',''),(57,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(58,3,0,0,'Basque','','pkg_eu-ES','package','',0,'1.7.0.1','','http://update.joomla.org/language/details/eu-ES_details.xml',''),(59,3,0,0,'Uyghur','','pkg_ug-CN','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/ug-CN_details.xml',''),(60,3,0,0,'Uyghur','','pkg_ug-CN','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/ug-CN_details.xml',''),(61,3,0,0,'Korean','','pkg_ko-KR','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/ko-KR_details.xml',''),(62,3,0,0,'Hindi','','pkg_hi-IN','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/hi-IN_details.xml',''),(63,3,0,0,'Welsh','','pkg_cy-GB','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/cy-GB_details.xml',''),(64,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/sw-KE_details.xml','');
/*!40000 ALTER TABLE `yami_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_user_notes`
--

DROP TABLE IF EXISTS `yami_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_user_notes`
--

LOCK TABLES `yami_user_notes` WRITE;
/*!40000 ALTER TABLE `yami_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_user_profiles`
--

DROP TABLE IF EXISTS `yami_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_user_profiles`
--

LOCK TABLES `yami_user_profiles` WRITE;
/*!40000 ALTER TABLE `yami_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_user_usergroup_map`
--

DROP TABLE IF EXISTS `yami_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_user_usergroup_map`
--

LOCK TABLES `yami_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `yami_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `yami_user_usergroup_map` VALUES (901,8);
/*!40000 ALTER TABLE `yami_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_usergroups`
--

DROP TABLE IF EXISTS `yami_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_usergroups`
--

LOCK TABLES `yami_usergroups` WRITE;
/*!40000 ALTER TABLE `yami_usergroups` DISABLE KEYS */;
INSERT INTO `yami_usergroups` VALUES (1,0,1,20,'Public'),(2,1,6,17,'Registered'),(3,2,7,14,'Author'),(4,3,8,11,'Editor'),(5,4,9,10,'Publisher'),(6,1,2,5,'Manager'),(7,6,3,4,'Administrator'),(8,1,18,19,'Super Users'),(10,3,12,13,'Shop Suppliers (Example)'),(12,2,15,16,'Customer Group (Example)');
/*!40000 ALTER TABLE `yami_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_users`
--

DROP TABLE IF EXISTS `yami_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=902 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_users`
--

LOCK TABLES `yami_users` WRITE;
/*!40000 ALTER TABLE `yami_users` DISABLE KEYS */;
INSERT INTO `yami_users` VALUES (901,'Super User','admin','ccqngu@live.cn','58055cfd7c1a6245df0ad638a24b3e82:HaWdlDnm41DMepqVoOCVXLA8jZ6sKSkv','deprecated',0,1,'2013-06-17 06:52:58','2013-06-18 08:27:03','0','','0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `yami_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_viewlevels`
--

DROP TABLE IF EXISTS `yami_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_viewlevels`
--

LOCK TABLES `yami_viewlevels` WRITE;
/*!40000 ALTER TABLE `yami_viewlevels` DISABLE KEYS */;
INSERT INTO `yami_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',1,'[6,2,8]'),(3,'Special',2,'[6,3,8]'),(4,'Customer Access Level (Example)',3,'[6,3,12]');
/*!40000 ALTER TABLE `yami_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_adminmenuentries`
--

DROP TABLE IF EXISTS `yami_virtuemart_adminmenuentries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_adminmenuentries` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` tinyint(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The ID of the VM Module, this Item is assigned to',
  `parent_id` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `name` char(64) NOT NULL DEFAULT '0',
  `link` char(64) NOT NULL DEFAULT '0',
  `depends` char(64) NOT NULL DEFAULT '' COMMENT 'Names of the Parameters, this Item depends on',
  `icon_class` char(96) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `tooltip` char(128) DEFAULT NULL,
  `view` char(32) DEFAULT NULL,
  `task` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='Administration Menu Items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_adminmenuentries`
--

LOCK TABLES `yami_virtuemart_adminmenuentries` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_adminmenuentries` DISABLE KEYS */;
INSERT INTO `yami_virtuemart_adminmenuentries` VALUES (1,1,0,'COM_VIRTUEMART_CATEGORY_S','','','vmicon vmicon-16-folder_camera',1,1,'','category',''),(2,1,0,'COM_VIRTUEMART_PRODUCT_S','','','vmicon vmicon-16-camera',2,1,'','product',''),(3,1,0,'COM_VIRTUEMART_PRODUCT_CUSTOM_FIELD_S','','','vmicon vmicon-16-document_move',5,1,'','custom',''),(4,1,0,'COM_VIRTUEMART_PRODUCT_INVENTORY','','','vmicon vmicon-16-price_watch',7,1,'','inventory',''),(5,1,0,'COM_VIRTUEMART_CALC_S','','','vmicon vmicon-16-calculator',8,1,'','calc',''),(6,1,0,'COM_VIRTUEMART_REVIEW_RATE_S','','','vmicon vmicon-16-comments',9,1,'','ratings',''),(7,2,0,'COM_VIRTUEMART_ORDER_S','','','vmicon vmicon-16-page_white_stack',1,1,'','orders',''),(8,2,0,'COM_VIRTUEMART_COUPON_S','','','vmicon vmicon-16-shopping',10,1,'','coupon',''),(9,2,0,'COM_VIRTUEMART_REPORT','','','vmicon vmicon-16-to_do_list_cheked_1',3,1,'','report',''),(10,2,0,'COM_VIRTUEMART_USER_S','','','vmicon vmicon-16-user',4,1,'','user',''),(11,2,0,'COM_VIRTUEMART_SHOPPERGROUP_S','','','vmicon vmicon-16-user-group',5,1,'','shoppergroup',''),(12,3,0,'COM_VIRTUEMART_MANUFACTURER_S','','','vmicon vmicon-16-wrench_orange',1,1,'','manufacturer',''),(13,3,0,'COM_VIRTUEMART_MANUFACTURER_CATEGORY_S','','','vmicon vmicon-16-folder_wrench',2,1,'','manufacturercategories',''),(14,4,0,'COM_VIRTUEMART_STORE','','','vmicon vmicon-16-reseller_account_template',1,1,'','user','editshop'),(15,4,0,'COM_VIRTUEMART_MEDIA_S','','','vmicon vmicon-16-pictures',2,1,'','media',''),(16,4,0,'COM_VIRTUEMART_SHIPMENTMETHOD_S','','','vmicon vmicon-16-lorry',3,1,'','shipmentmethod',''),(17,4,0,'COM_VIRTUEMART_PAYMENTMETHOD_S','','','vmicon vmicon-16-creditcards',4,1,'','paymentmethod',''),(18,5,0,'COM_VIRTUEMART_CONFIGURATION','','','vmicon vmicon-16-config',1,1,'','config',''),(19,5,0,'COM_VIRTUEMART_USERFIELD_S','','','vmicon vmicon-16-participation_rate',2,1,'','userfields',''),(20,5,0,'COM_VIRTUEMART_ORDERSTATUS_S','','','vmicon vmicon-16-orderstatus',3,1,'','orderstatus',''),(21,5,0,'COM_VIRTUEMART_CURRENCY_S','','','vmicon vmicon-16-coins',5,1,'','currency',''),(22,5,0,'COM_VIRTUEMART_COUNTRY_S','','','vmicon vmicon-16-globe',6,1,'','country',''),(23,11,0,'COM_VIRTUEMART_MIGRATION_UPDATE','','','vmicon vmicon-16-installer_box',1,1,'','updatesmigration',''),(24,11,0,'COM_VIRTUEMART_ABOUT','','','vmicon vmicon-16-info',2,1,'','about',''),(25,11,0,'COM_VIRTUEMART_HELP_TOPICS','http://virtuemart.net/','','vmicon vmicon-16-help',4,1,'','',''),(26,11,0,'COM_VIRTUEMART_COMMUNITY_FORUM','http://forum.virtuemart.net/','','vmicon vmicon-16-reseller_programm',6,1,'','',''),(27,11,0,'COM_VIRTUEMART_STATISTIC_SUMMARY','','','vmicon vmicon-16-info',1,1,'','virtuemart',''),(28,77,0,'COM_VIRTUEMART_USER_GROUP_S','','','vmicon vmicon-16-user',2,1,'','usergroups','');
/*!40000 ALTER TABLE `yami_virtuemart_adminmenuentries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_calc_categories`
--

DROP TABLE IF EXISTS `yami_virtuemart_calc_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_calc_categories` (
  `id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_category_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_calc_categories`
--

LOCK TABLES `yami_virtuemart_calc_categories` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_calc_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_calc_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_calc_countries`
--

DROP TABLE IF EXISTS `yami_virtuemart_calc_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_calc_countries` (
  `id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_calc_countries`
--

LOCK TABLES `yami_virtuemart_calc_countries` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_calc_countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_calc_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_calc_manufacturers`
--

DROP TABLE IF EXISTS `yami_virtuemart_calc_manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_calc_manufacturers` (
  `id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_manufacturer_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_calc_manufacturers`
--

LOCK TABLES `yami_virtuemart_calc_manufacturers` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_calc_manufacturers` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_calc_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_calc_shoppergroups`
--

DROP TABLE IF EXISTS `yami_virtuemart_calc_shoppergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_calc_shoppergroups` (
  `id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_calc_shoppergroups`
--

LOCK TABLES `yami_virtuemart_calc_shoppergroups` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_calc_shoppergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_calc_shoppergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_calc_states`
--

DROP TABLE IF EXISTS `yami_virtuemart_calc_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_calc_states` (
  `id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_state_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_state_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_calc_states`
--

LOCK TABLES `yami_virtuemart_calc_states` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_calc_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_calc_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_calcs`
--

DROP TABLE IF EXISTS `yami_virtuemart_calcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_calcs` (
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Belongs to vendor',
  `calc_jplugin_id` int(11) NOT NULL DEFAULT '0',
  `calc_name` char(64) NOT NULL DEFAULT '' COMMENT 'Name of the rule',
  `calc_descr` char(128) NOT NULL DEFAULT '' COMMENT 'Description',
  `calc_kind` char(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_value_mathop` char(8) NOT NULL DEFAULT '' COMMENT 'the mathematical operation like (+,-,+%,-%)',
  `calc_value` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'The Amount',
  `calc_currency` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Currency of the Rule',
  `calc_shopper_published` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Visible for Shoppers',
  `calc_vendor_published` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Visible for Vendors',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Startdate if nothing is set = permanent',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Enddate if nothing is set = permanent',
  `for_override` tinyint(1) NOT NULL DEFAULT '0',
  `calc_params` varchar(18000) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_calc_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_calcs`
--

LOCK TABLES `yami_virtuemart_calcs` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_calcs` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_calcs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_categories`
--

DROP TABLE IF EXISTS `yami_virtuemart_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_categories` (
  `virtuemart_category_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `category_template` char(128) DEFAULT NULL,
  `category_layout` char(64) DEFAULT NULL,
  `category_product_layout` char(64) DEFAULT NULL,
  `products_per_row` tinyint(2) DEFAULT NULL,
  `limit_list_start` smallint(1) unsigned DEFAULT NULL,
  `limit_list_step` smallint(1) unsigned DEFAULT NULL,
  `limit_list_max` smallint(1) unsigned DEFAULT NULL,
  `limit_list_initial` smallint(1) unsigned DEFAULT NULL,
  `hits` int(1) unsigned NOT NULL DEFAULT '0',
  `metarobot` char(40) NOT NULL DEFAULT '',
  `metaauthor` char(64) NOT NULL DEFAULT '',
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_category_id`),
  KEY `idx_category_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Product Categories are stored here';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_categories`
--

LOCK TABLES `yami_virtuemart_categories` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_categories_en_gb`
--

DROP TABLE IF EXISTS `yami_virtuemart_categories_en_gb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_categories_en_gb` (
  `virtuemart_category_id` int(1) unsigned NOT NULL,
  `category_name` char(180) NOT NULL DEFAULT '',
  `category_description` varchar(20000) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_category_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_categories_en_gb`
--

LOCK TABLES `yami_virtuemart_categories_en_gb` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_categories_en_gb` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_categories_en_gb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_category_categories`
--

DROP TABLE IF EXISTS `yami_virtuemart_category_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_category_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `category_child_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_category_parent_id` (`category_parent_id`,`category_child_id`),
  KEY `category_child_id` (`category_child_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Category child-parent relation list';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_category_categories`
--

LOCK TABLES `yami_virtuemart_category_categories` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_category_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_category_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_category_medias`
--

DROP TABLE IF EXISTS `yami_virtuemart_category_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_category_medias` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_category_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_category_id` (`virtuemart_category_id`,`virtuemart_media_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_category_medias`
--

LOCK TABLES `yami_virtuemart_category_medias` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_category_medias` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_category_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_configs`
--

DROP TABLE IF EXISTS `yami_virtuemart_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_configs` (
  `virtuemart_config_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `config` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Holds configuration settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_configs`
--

LOCK TABLES `yami_virtuemart_configs` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_configs` DISABLE KEYS */;
INSERT INTO `yami_virtuemart_configs` VALUES (1,'shop_is_offline=s:1:\"0\";|offline_message=czo3MzoiT3VyIFNob3AgaXMgY3VycmVudGx5IGRvd24gZm9yIG1haW50ZW5hbmNlLiBQbGVhc2UgY2hlY2sgYmFjayBhZ2FpbiBzb29uLiI7|use_as_catalog=s:1:\"0\";|currency_converter_module=s:14:\"convertECB.php\";|order_mail_html=s:1:\"1\";|useSSL=s:1:\"0\";|dangeroustools=s:1:\"0\";|debug_enable=s:4:\"none\";|google_jquery=s:1:\"1\";|multix=s:4:\"none\";|pdf_button_enable=s:1:\"1\";|show_emailfriend=s:1:\"1\";|show_printicon=s:1:\"0\";|show_out_of_stock_products=s:1:\"1\";|coupons_enable=s:1:\"0\";|show_uncat_child_products=s:1:\"0\";|coupons_default_expire=s:3:\"1,D\";|weight_unit_default=s:2:\"KG\";|lwh_unit_default=s:1:\"M\";|list_limit=s:2:\"20\";|showReviewFor=s:3:\"all\";|reviewMode=s:10:\"registered\";|showRatingFor=s:3:\"all\";|ratingMode=s:10:\"registered\";|reviews_autopublish=s:1:\"1\";|reviews_minimum_comment_length=s:3:\"100\";|reviews_maximum_comment_length=s:4:\"2000\";|vmtemplate=s:7:\"default\";|categorytemplate=s:7:\"default\";|showCategory=s:1:\"1\";|categorylayout=s:1:\"0\";|categories_per_row=s:1:\"3\";|productlayout=s:1:\"0\";|products_per_row=s:1:\"3\";|vmlayout=s:1:\"0\";|show_featured=s:1:\"1\";|featured_products_per_row=s:1:\"3\";|show_topTen=s:1:\"1\";|topten_products_per_row=s:1:\"3\";|show_recent=s:1:\"1\";|show_latest=s:1:\"1\";|assets_general_path=s:33:\"components/com_virtuemart/assets/\";|media_category_path=s:35:\"images/stories/virtuemart/category/\";|media_product_path=s:34:\"images/stories/virtuemart/product/\";|media_manufacturer_path=s:39:\"images/stories/virtuemart/manufacturer/\";|media_vendor_path=s:33:\"images/stories/virtuemart/vendor/\";|forSale_path_thumb=s:42:\"images/stories/virtuemart/forSale/resized/\";|img_resize_enable=s:1:\"1\";|img_width=s:2:\"90\";|img_height=s:2:\"90\";|no_image_set=s:11:\"noimage.gif\";|no_image_found=s:11:\"warning.png\";|browse_orderby_field=s:12:\"product_name\";|browse_orderby_fields=a:3:{i:0;s:12:\"product_name\";i:1;s:13:\"category_name\";i:2;s:7:\"mf_name\";}|browse_search_fields=a:5:{i:0;s:12:\"product_name\";i:1;s:14:\"product_s_desc\";i:2;s:13:\"category_name\";i:3;s:20:\"category_description\";i:4;s:7:\"mf_name\";}|show_prices=s:1:\"1\";|price_show_packaging_pricelabel=s:1:\"0\";|show_tax=s:1:\"1\";|basePrice=s:1:\"1\";|basePriceText=s:1:\"1\";|basePriceRounding=s:2:\"-1\";|variantModification=s:1:\"1\";|variantModificationText=s:1:\"1\";|variantModificationRounding=s:2:\"-1\";|basePriceVariant=s:1:\"1\";|basePriceVariantText=s:1:\"1\";|basePriceVariantRounding=s:2:\"-1\";|basePriceWithTax=s:1:\"1\";|basePriceWithTaxText=s:1:\"1\";|basePriceWithTaxRounding=s:2:\"-1\";|discountedPriceWithoutTax=s:1:\"1\";|discountedPriceWithoutTaxText=s:1:\"1\";|discountedPriceWithoutTaxRounding=s:2:\"-1\";|salesPriceWithDiscount=s:1:\"1\";|salesPriceWithDiscountText=s:1:\"1\";|salesPriceWithDiscountRounding=s:2:\"-1\";|salesPrice=s:1:\"1\";|salesPriceText=s:1:\"1\";|salesPriceRounding=s:2:\"-1\";|priceWithoutTax=s:1:\"1\";|priceWithoutTaxText=s:1:\"1\";|priceWithoutTaxRounding=s:2:\"-1\";|discountAmount=s:1:\"1\";|discountAmountText=s:1:\"1\";|discountAmountRounding=s:2:\"-1\";|taxAmount=s:1:\"1\";|taxAmountText=s:1:\"1\";|taxAmountRounding=s:2:\"-1\";|addtocart_popup=s:1:\"1\";|check_stock=s:1:\"0\";|automatic_payment=s:1:\"1\";|automatic_shipment=s:1:\"1\";|agree_to_tos_onorder=s:1:\"0\";|oncheckout_show_legal_info=s:1:\"1\";|oncheckout_show_register=s:1:\"1\";|oncheckout_show_steps=s:1:\"0\";|oncheckout_show_register_text=s:47:\"COM_VIRTUEMART_ONCHECKOUT_DEFAULT_TEXT_REGISTER\";|seo_disabled=s:1:\"0\";|seo_translate=s:1:\"0\";|seo_use_id=s:1:\"0\";|sctime=d:1371457414.621140003204345703125;|vmlang=s:5:\"en_gb\";|virtuemart_config_id=i:1;|enable_content_plugin=s:1:\"0\";|enableEnglish=s:1:\"1\";|useVendorEmail=s:1:\"0\";|pdf_icon=s:1:\"0\";|ask_question=s:1:\"0\";|asks_minimum_comment_length=s:2:\"50\";|asks_maximum_comment_length=s:4:\"2000\";|product_navigation=s:1:\"0\";|recommend_unauth=s:1:\"0\";|display_stock=s:1:\"0\";|latest_products_days=s:1:\"7\";|latest_products_orderBy=s:10:\"created_on\";|lstockmail=s:1:\"0\";|stockhandle=s:4:\"none\";|rised_availability=s:0:\"\";|image=s:0:\"\";|show_manufacturers=s:1:\"1\";|manufacturer_per_row=s:1:\"3\";|pagination_sequence=s:0:\"\";|feed_cat_published=s:1:\"0\";|feed_cat_show_images=s:1:\"0\";|feed_cat_show_prices=s:1:\"0\";|feed_cat_show_description=s:1:\"0\";|feed_cat_description_type=s:14:\"product_s_desc\";|feed_cat_max_text_length=s:3:\"500\";|forSale_path=s:36:\"E:/xampp/htdocs/docs/joomla/vmfiles\\\";|show_store_desc=s:1:\"0\";|show_categories=s:1:\"1\";|homepage_categories_per_row=s:1:\"3\";|homepage_products_per_row=s:1:\"3\";|featured_products_rows=s:1:\"1\";|topTen_products_rows=s:1:\"1\";|recent_products_rows=s:1:\"1\";|latest_products_rows=s:1:\"1\";|feed_latest_published=s:1:\"0\";|feed_latest_nb=s:1:\"5\";|feed_topten_published=s:1:\"0\";|feed_topten_nb=s:1:\"5\";|feed_featured_published=s:1:\"0\";|feed_featured_nb=s:1:\"5\";|feed_home_show_images=s:1:\"0\";|feed_home_show_prices=s:1:\"0\";|feed_home_show_description=s:1:\"0\";|feed_home_description_type=s:14:\"product_s_desc\";|feed_home_max_text_length=s:3:\"500\";|css=s:1:\"1\";|jquery=s:1:\"1\";|jprice=s:1:\"1\";|jsite=s:1:\"1\";|askprice=s:1:\"0\";|rappenrundung=s:1:\"0\";|roundindig=s:1:\"0\";|cVarswT=s:1:\"1\";|unitPrice=s:1:\"0\";|unitPriceText=s:1:\"1\";|unitPriceRounding=s:1:\"2\";|vmlang_js=s:1:\"0\";|oncheckout_only_registered=s:1:\"0\";|oncheckout_show_images=s:1:\"0\";|browse_cat_orderby_field=s:13:\"category_name\";|seo_sufix=s:7:\"-detail\";|task=s:4:\"save\";|option=s:14:\"com_virtuemart\";|view=s:6:\"config\";|d134cf1bd4d8b7bc0878538b5236f9af=s:1:\"1\";','0000-00-00 00:00:00',0,'2013-06-17 08:23:35',901,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `yami_virtuemart_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_countries`
--

DROP TABLE IF EXISTS `yami_virtuemart_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_countries` (
  `virtuemart_country_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_worldzone_id` tinyint(11) NOT NULL DEFAULT '1',
  `country_name` char(64) DEFAULT NULL,
  `country_3_code` char(3) DEFAULT NULL,
  `country_2_code` char(2) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_country_id`),
  KEY `idx_country_3_code` (`country_3_code`),
  KEY `idx_country_2_code` (`country_2_code`)
) ENGINE=MyISAM AUTO_INCREMENT=249 DEFAULT CHARSET=utf8 COMMENT='Country records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_countries`
--

LOCK TABLES `yami_virtuemart_countries` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_countries` DISABLE KEYS */;
INSERT INTO `yami_virtuemart_countries` VALUES (1,1,'Afghanistan','AFG','AF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,1,'Albania','ALB','AL',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,1,'Algeria','DZA','DZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,1,'American Samoa','ASM','AS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(5,1,'Andorra','AND','AD',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(6,1,'Angola','AGO','AO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(7,1,'Anguilla','AIA','AI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(8,1,'Antarctica','ATA','AQ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(9,1,'Antigua and Barbuda','ATG','AG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(10,1,'Argentina','ARG','AR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(11,1,'Armenia','ARM','AM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(12,1,'Aruba','ABW','AW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(13,1,'Australia','AUS','AU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(14,1,'Austria','AUT','AT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(15,1,'Azerbaijan','AZE','AZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(16,1,'Bahamas','BHS','BS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(17,1,'Bahrain','BHR','BH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(18,1,'Bangladesh','BGD','BD',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(19,1,'Barbados','BRB','BB',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(20,1,'Belarus','BLR','BY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(21,1,'Belgium','BEL','BE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(22,1,'Belize','BLZ','BZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(23,1,'Benin','BEN','BJ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(24,1,'Bermuda','BMU','BM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(25,1,'Bhutan','BTN','BT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(26,1,'Bolivia','BOL','BO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(27,1,'Bosnia and Herzegowina','BIH','BA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(28,1,'Botswana','BWA','BW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(29,1,'Bouvet Island','BVT','BV',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(30,1,'Brazil','BRA','BR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(31,1,'British Indian Ocean Territory','IOT','IO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(32,1,'Brunei Darussalam','BRN','BN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(33,1,'Bulgaria','BGR','BG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(34,1,'Burkina Faso','BFA','BF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(35,1,'Burundi','BDI','BI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(36,1,'Cambodia','KHM','KH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(37,1,'Cameroon','CMR','CM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(38,1,'Canada','CAN','CA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(39,1,'Cape Verde','CPV','CV',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(40,1,'Cayman Islands','CYM','KY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(41,1,'Central African Republic','CAF','CF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(42,1,'Chad','TCD','TD',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(43,1,'Chile','CHL','CL',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(44,1,'China','CHN','CN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(45,1,'Christmas Island','CXR','CX',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(46,1,'Cocos (Keeling) Islands','CCK','CC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(47,1,'Colombia','COL','CO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(48,1,'Comoros','COM','KM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(49,1,'Congo','COG','CG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(50,1,'Cook Islands','COK','CK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(51,1,'Costa Rica','CRI','CR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(52,1,'Cote D\'Ivoire','CIV','CI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(53,1,'Croatia','HRV','HR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(54,1,'Cuba','CUB','CU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(55,1,'Cyprus','CYP','CY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(56,1,'Czech Republic','CZE','CZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(57,1,'Denmark','DNK','DK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(58,1,'Djibouti','DJI','DJ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(59,1,'Dominica','DMA','DM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(60,1,'Dominican Republic','DOM','DO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(61,1,'East Timor','TMP','TP',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(62,1,'Ecuador','ECU','EC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(63,1,'Egypt','EGY','EG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(64,1,'El Salvador','SLV','SV',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(65,1,'Equatorial Guinea','GNQ','GQ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(66,1,'Eritrea','ERI','ER',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(67,1,'Estonia','EST','EE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(68,1,'Ethiopia','ETH','ET',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(69,1,'Falkland Islands (Malvinas)','FLK','FK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(70,1,'Faroe Islands','FRO','FO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(71,1,'Fiji','FJI','FJ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(72,1,'Finland','FIN','FI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(73,1,'France','FRA','FR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(75,1,'French Guiana','GUF','GF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(76,1,'French Polynesia','PYF','PF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(77,1,'French Southern Territories','ATF','TF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(78,1,'Gabon','GAB','GA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(79,1,'Gambia','GMB','GM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(80,1,'Georgia','GEO','GE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(81,1,'Germany','DEU','DE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(82,1,'Ghana','GHA','GH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(83,1,'Gibraltar','GIB','GI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(84,1,'Greece','GRC','GR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(85,1,'Greenland','GRL','GL',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(86,1,'Grenada','GRD','GD',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(87,1,'Guadeloupe','GLP','GP',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(88,1,'Guam','GUM','GU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(89,1,'Guatemala','GTM','GT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(90,1,'Guinea','GIN','GN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(91,1,'Guinea-bissau','GNB','GW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(92,1,'Guyana','GUY','GY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(93,1,'Haiti','HTI','HT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(94,1,'Heard and Mc Donald Islands','HMD','HM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(95,1,'Honduras','HND','HN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(96,1,'Hong Kong','HKG','HK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(97,1,'Hungary','HUN','HU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(98,1,'Iceland','ISL','IS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(99,1,'India','IND','IN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(100,1,'Indonesia','IDN','ID',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(101,1,'Iran (Islamic Republic of)','IRN','IR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(102,1,'Iraq','IRQ','IQ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(103,1,'Ireland','IRL','IE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(104,1,'Israel','ISR','IL',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(105,1,'Italy','ITA','IT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(106,1,'Jamaica','JAM','JM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(107,1,'Japan','JPN','JP',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(108,1,'Jordan','JOR','JO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(109,1,'Kazakhstan','KAZ','KZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(110,1,'Kenya','KEN','KE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(111,1,'Kiribati','KIR','KI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(112,1,'Korea, Democratic People\'s Republic of','PRK','KP',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(113,1,'Korea, Republic of','KOR','KR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(114,1,'Kuwait','KWT','KW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(115,1,'Kyrgyzstan','KGZ','KG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(116,1,'Lao People\'s Democratic Republic','LAO','LA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(117,1,'Latvia','LVA','LV',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(118,1,'Lebanon','LBN','LB',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(119,1,'Lesotho','LSO','LS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(120,1,'Liberia','LBR','LR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(121,1,'Libya','LBY','LY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(122,1,'Liechtenstein','LIE','LI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(123,1,'Lithuania','LTU','LT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(124,1,'Luxembourg','LUX','LU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(125,1,'Macau','MAC','MO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(126,1,'Macedonia, The Former Yugoslav Republic of','MKD','MK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(127,1,'Madagascar','MDG','MG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(128,1,'Malawi','MWI','MW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(129,1,'Malaysia','MYS','MY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(130,1,'Maldives','MDV','MV',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(131,1,'Mali','MLI','ML',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(132,1,'Malta','MLT','MT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(133,1,'Marshall Islands','MHL','MH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(134,1,'Martinique','MTQ','MQ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(135,1,'Mauritania','MRT','MR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(136,1,'Mauritius','MUS','MU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(137,1,'Mayotte','MYT','YT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(138,1,'Mexico','MEX','MX',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(139,1,'Micronesia, Federated States of','FSM','FM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(140,1,'Moldova, Republic of','MDA','MD',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(141,1,'Monaco','MCO','MC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(142,1,'Mongolia','MNG','MN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(143,1,'Montserrat','MSR','MS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(144,1,'Morocco','MAR','MA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(145,1,'Mozambique','MOZ','MZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(146,1,'Myanmar','MMR','MM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(147,1,'Namibia','NAM','NA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(148,1,'Nauru','NRU','NR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(149,1,'Nepal','NPL','NP',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(150,1,'Netherlands','NLD','NL',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(151,1,'Netherlands Antilles','ANT','AN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(152,1,'New Caledonia','NCL','NC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(153,1,'New Zealand','NZL','NZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(154,1,'Nicaragua','NIC','NI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(155,1,'Niger','NER','NE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(156,1,'Nigeria','NGA','NG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(157,1,'Niue','NIU','NU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(158,1,'Norfolk Island','NFK','NF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(159,1,'Northern Mariana Islands','MNP','MP',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(160,1,'Norway','NOR','NO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(161,1,'Oman','OMN','OM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(162,1,'Pakistan','PAK','PK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(163,1,'Palau','PLW','PW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(164,1,'Panama','PAN','PA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(165,1,'Papua New Guinea','PNG','PG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(166,1,'Paraguay','PRY','PY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(167,1,'Peru','PER','PE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(168,1,'Philippines','PHL','PH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(169,1,'Pitcairn','PCN','PN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(170,1,'Poland','POL','PL',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(171,1,'Portugal','PRT','PT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(172,1,'Puerto Rico','PRI','PR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(173,1,'Qatar','QAT','QA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(174,1,'Reunion','REU','RE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(175,1,'Romania','ROM','RO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(176,1,'Russian Federation','RUS','RU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(177,1,'Rwanda','RWA','RW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(178,1,'Saint Kitts and Nevis','KNA','KN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(179,1,'Saint Lucia','LCA','LC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(180,1,'Saint Vincent and the Grenadines','VCT','VC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(181,1,'Samoa','WSM','WS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(182,1,'San Marino','SMR','SM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(183,1,'Sao Tome and Principe','STP','ST',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(184,1,'Saudi Arabia','SAU','SA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(185,1,'Senegal','SEN','SN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(186,1,'Seychelles','SYC','SC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(187,1,'Sierra Leone','SLE','SL',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(188,1,'Singapore','SGP','SG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(189,1,'Slovakia','SVK','SK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(190,1,'Slovenia','SVN','SI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(191,1,'Solomon Islands','SLB','SB',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(192,1,'Somalia','SOM','SO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(193,1,'South Africa','ZAF','ZA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(194,1,'South Georgia and the South Sandwich Islands','SGS','GS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(195,1,'Spain','ESP','ES',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(196,1,'Sri Lanka','LKA','LK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(197,1,'St. Helena','SHN','SH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(198,1,'St. Pierre and Miquelon','SPM','PM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(199,1,'Sudan','SDN','SD',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(200,1,'Suriname','SUR','SR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(201,1,'Svalbard and Jan Mayen Islands','SJM','SJ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(202,1,'Swaziland','SWZ','SZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(203,1,'Sweden','SWE','SE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(204,1,'Switzerland','CHE','CH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(205,1,'Syrian Arab Republic','SYR','SY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(206,1,'Taiwan','TWN','TW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(207,1,'Tajikistan','TJK','TJ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(208,1,'Tanzania, United Republic of','TZA','TZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(209,1,'Thailand','THA','TH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(210,1,'Togo','TGO','TG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(211,1,'Tokelau','TKL','TK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(212,1,'Tonga','TON','TO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(213,1,'Trinidad and Tobago','TTO','TT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(214,1,'Tunisia','TUN','TN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(215,1,'Turkey','TUR','TR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(216,1,'Turkmenistan','TKM','TM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(217,1,'Turks and Caicos Islands','TCA','TC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(218,1,'Tuvalu','TUV','TV',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(219,1,'Uganda','UGA','UG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(220,1,'Ukraine','UKR','UA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(221,1,'United Arab Emirates','ARE','AE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(222,1,'United Kingdom','GBR','GB',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(223,1,'United States','USA','US',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(224,1,'United States Minor Outlying Islands','UMI','UM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(225,1,'Uruguay','URY','UY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(226,1,'Uzbekistan','UZB','UZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(227,1,'Vanuatu','VUT','VU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(228,1,'Vatican City State (Holy See)','VAT','VA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(229,1,'Venezuela','VEN','VE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(230,1,'Viet Nam','VNM','VN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(231,1,'Virgin Islands (British)','VGB','VG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(232,1,'Virgin Islands (U.S.)','VIR','VI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(233,1,'Wallis and Futuna Islands','WLF','WF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(234,1,'Western Sahara','ESH','EH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(235,1,'Yemen','YEM','YE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(237,1,'The Democratic Republic of Congo','DRC','DC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(238,1,'Zambia','ZMB','ZM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(239,1,'Zimbabwe','ZWE','ZW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(240,1,'East Timor','XET','XE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(241,1,'Jersey','JEY','JE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(242,1,'St. Barthelemy','XSB','XB',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(243,1,'St. Eustatius','XSE','XU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(244,1,'Canary Islands','XCA','XC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(245,1,'Serbia','SRB','RS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(246,1,'Sint Maarten (French Antilles)','MAF','MF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(247,1,'Sint Maarten (Netherlands Antilles)','SXM','SX',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(248,1,'Palestinian Territory, occupied','PSE','PS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `yami_virtuemart_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_coupons`
--

DROP TABLE IF EXISTS `yami_virtuemart_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_coupons` (
  `virtuemart_coupon_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_code` char(32) NOT NULL DEFAULT '',
  `percent_or_total` enum('percent','total') NOT NULL DEFAULT 'percent',
  `coupon_type` enum('gift','permanent') NOT NULL DEFAULT 'gift',
  `coupon_value` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `coupon_start_date` datetime DEFAULT NULL,
  `coupon_expiry_date` datetime DEFAULT NULL,
  `coupon_value_valid` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_coupon_id`),
  KEY `idx_coupon_code` (`coupon_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used to store coupon codes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_coupons`
--

LOCK TABLES `yami_virtuemart_coupons` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_currencies`
--

DROP TABLE IF EXISTS `yami_virtuemart_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_currencies` (
  `virtuemart_currency_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `currency_name` char(64) DEFAULT NULL,
  `currency_code_2` char(2) DEFAULT NULL,
  `currency_code_3` char(3) DEFAULT NULL,
  `currency_numeric_code` int(4) DEFAULT NULL,
  `currency_exchange_rate` decimal(10,5) DEFAULT NULL,
  `currency_symbol` char(4) DEFAULT NULL,
  `currency_decimal_place` char(4) DEFAULT NULL,
  `currency_decimal_symbol` char(4) DEFAULT NULL,
  `currency_thousands` char(4) DEFAULT NULL,
  `currency_positive_style` char(64) DEFAULT NULL,
  `currency_negative_style` char(64) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '1',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_currency_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `idx_currency_code_3` (`currency_code_3`),
  KEY `idx_currency_numeric_code` (`currency_numeric_code`)
) ENGINE=MyISAM AUTO_INCREMENT=202 DEFAULT CHARSET=utf8 COMMENT='Used to store currencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_currencies`
--

LOCK TABLES `yami_virtuemart_currencies` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_currencies` DISABLE KEYS */;
INSERT INTO `yami_virtuemart_currencies` VALUES (2,1,'United Arab Emirates dirham','','AED',784,0.00000,'د.إ','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,1,'Albanian lek','','ALL',8,0.00000,'Lek','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(5,1,'Netherlands Antillean gulden','','ANG',532,0.00000,'ƒ','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(7,1,'Argentine peso','','ARS',32,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(9,1,'Australian dollar','','AUD',36,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(10,1,'Aruban florin','','AWG',533,0.00000,'ƒ','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(11,1,'Barbadian dollar','','BBD',52,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(12,1,'Bangladeshi taka','','BDT',50,0.00000,'৳','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(15,1,'Bahraini dinar','','BHD',48,0.00000,'ب.د','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(16,1,'Burundian franc','','BIF',108,0.00000,'Fr','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(17,1,'Bermudian dollar','','BMD',60,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(18,1,'Brunei dollar','','BND',96,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(19,1,'Bolivian boliviano','','BOB',68,0.00000,'$b','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(20,1,'Brazilian real','','BRL',986,0.00000,'R$','2','.',',','{symbol} {number}','{symbol} {sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(21,1,'Bahamian dollar','','BSD',44,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(22,1,'Bhutanese ngultrum','','BTN',64,0.00000,'BTN','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(24,1,'Botswana pula','','BWP',72,0.00000,'P','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(25,1,'Belize dollar','','BZD',84,0.00000,'BZ$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(26,1,'Canadian dollar','','CAD',124,0.00000,'$','2','.',',','{symbol}{number}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(27,1,'Swiss franc','','CHF',756,0.00000,'CHF','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(28,1,'Unidad de Fomento','','CLF',990,0.00000,'CLF','0',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(29,1,'Chilean peso','','CLP',152,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(30,1,'Chinese renminbi yuan','','CNY',156,0.00000,'元','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(31,1,'Colombian peso','','COP',170,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(32,1,'Costa Rican colón','','CRC',188,0.00000,'₡','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(33,1,'Czech koruna','','CZK',203,0.00000,'Kč','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(34,1,'Cuban peso','','CUP',192,0.00000,'₱','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(35,1,'Cape Verdean escudo','','CVE',132,0.00000,'$','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(40,1,'Danish krone','','DKK',208,0.00000,'kr','2','.',',','{symbol}{number}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(41,1,'Dominican peso','','DOP',214,0.00000,'RD$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(42,1,'Algerian dinar','','DZD',12,0.00000,'د.ج','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(44,1,'Egyptian pound','','EGP',818,0.00000,'£','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(46,1,'Ethiopian birr','','ETB',230,0.00000,'ETB','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(47,1,'Euro','','EUR',978,0.00000,'€','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(49,1,'Fijian dollar','','FJD',242,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(50,1,'Falkland pound','','FKP',238,0.00000,'£','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(52,1,'British pound','','GBP',826,0.00000,'£','2','.',',','{symbol}{number}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(54,1,'Gibraltar pound','','GIP',292,0.00000,'£','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(55,1,'Gambian dalasi','','GMD',270,0.00000,'D','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(56,1,'Guinean franc','','GNF',324,0.00000,'Fr','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(58,1,'Guatemalan quetzal','','GTQ',320,0.00000,'Q','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(60,1,'Guyanese dollar','','GYD',328,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(61,1,'Hong Kong dollar','','HKD',344,0.00000,'元','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(62,1,'Honduran lempira','','HNL',340,0.00000,'L','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(63,1,'Haitian gourde','','HTG',332,0.00000,'G','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(64,1,'Hungarian forint','','HUF',348,0.00000,'Ft','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(65,1,'Indonesian rupiah','','IDR',360,0.00000,'Rp','0','','','{symbol}{number}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(67,1,'Israeli new sheqel','','ILS',376,0.00000,'₪','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(68,1,'Indian rupee','','INR',356,0.00000,'₨','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(69,1,'Iraqi dinar','','IQD',368,0.00000,'ع.د','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(70,1,'Iranian rial','','IRR',364,0.00000,'﷼','2',',','','{number} {symbol}','{sign}{number}{symb0l}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(73,1,'Jamaican dollar','','JMD',388,0.00000,'J$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(74,1,'Jordanian dinar','','JOD',400,0.00000,'د.ا','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(75,1,'Japanese yen','','JPY',392,0.00000,'¥','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(76,1,'Kenyan shilling','','KES',404,0.00000,'Sh','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(77,1,'Cambodian riel','','KHR',116,0.00000,'៛','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(78,1,'Comorian franc','','KMF',174,0.00000,'Fr','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(79,1,'North Korean won','','KPW',408,0.00000,'₩','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(80,1,'South Korean won','','KRW',410,0.00000,'₩','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(81,1,'Kuwaiti dinar','','KWD',414,0.00000,'د.ك','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(82,1,'Cayman Islands dollar','','KYD',136,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(83,1,'Lao kip','','LAK',418,0.00000,'₭','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(84,1,'Lebanese pound','','LBP',422,0.00000,'£','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(85,1,'Sri Lankan rupee','','LKR',144,0.00000,'₨','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(86,1,'Liberian dollar','','LRD',430,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(87,1,'Lesotho loti','','LSL',426,0.00000,'L','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(89,1,'Libyan dinar','','LYD',434,0.00000,'ل.د','3',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(90,1,'Moroccan dirham','','MAD',504,0.00000,'د.م.','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(92,1,'Mongolian tögrög','','MNT',496,0.00000,'₮','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(93,1,'Macanese pataca','','MOP',446,0.00000,'P','1',',','','{symbol}{number}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(94,1,'Mauritanian ouguiya','','MRO',478,0.00000,'UM','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(96,1,'Mauritian rupee','','MUR',480,0.00000,'₨','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(97,1,'Maldivian rufiyaa','','MVR',462,0.00000,'ރ.','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(98,1,'Malawian kwacha','','MWK',454,0.00000,'MK','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(100,1,'Malaysian ringgit','','MYR',458,0.00000,'RM','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(102,1,'Nigerian naira','','NGN',566,0.00000,'₦','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(105,1,'Norwegian krone','','NOK',578,0.00000,'kr','2',',','','{symbol}{number}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(106,1,'Nepalese rupee','','NPR',524,0.00000,'₨','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(107,1,'New Zealand dollar','','NZD',554,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(108,1,'Omani rial','','OMR',512,0.00000,'﷼','3','.','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(109,1,'Panamanian balboa','','PAB',590,0.00000,'B/.','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(110,1,'Peruvian nuevo sol','','PEN',604,0.00000,'S/.','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(111,1,'Papua New Guinean kina','','PGK',598,0.00000,'K','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(112,1,'Philippine peso','','PHP',608,0.00000,'₱','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(113,1,'Pakistani rupee','','PKR',586,0.00000,'₨','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(114,1,'Polish Złoty','','PLN',985,0.00000,'zł','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(116,1,'Paraguayan guaraní','','PYG',600,0.00000,'₲','0','','.','{symbol} {number}','{symbol} {sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(117,1,'Qatari riyal','','QAR',634,0.00000,'﷼','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(118,1,'Romanian leu','','RON',946,0.00000,'lei','2',',','.','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(119,1,'Rwandan franc','','RWF',646,0.00000,'Fr','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(120,1,'Saudi riyal','','SAR',682,0.00000,'﷼','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(121,1,'Solomon Islands dollar','','SBD',90,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(122,1,'Seychellois rupee','','SCR',690,0.00000,'₨','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(124,1,'Swedish krona','','SEK',752,0.00000,'kr','2',',','.','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(125,1,'Singapore dollar','','SGD',702,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(126,1,'Saint Helenian pound','','SHP',654,0.00000,'£','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(127,1,'Sierra Leonean leone','','SLL',694,0.00000,'Le','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(128,1,'Somali shilling','','SOS',706,0.00000,'S','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(130,1,'São Tomé and Príncipe dobra','','STD',678,0.00000,'Db','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(131,1,'Russian ruble','','RUB',643,0.00000,'руб','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(132,1,'Salvadoran colón','','SVC',222,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(133,1,'Syrian pound','','SYP',760,0.00000,'£','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(134,1,'Swazi lilangeni','','SZL',748,0.00000,'L','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(135,1,'Thai baht','','THB',764,0.00000,'฿','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(136,1,'Tunisian dinar','','TND',788,0.00000,'د.ت','3',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(137,1,'Tongan paʻanga','','TOP',776,0.00000,'T$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(139,1,'Turkish new lira','','TRY',949,0.00000,'YTL','2',',','.','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(140,1,'Trinidad and Tobago dollar','','TTD',780,0.00000,'TT$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(141,1,'New Taiwan dollar','','TWD',901,0.00000,'NT$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(142,1,'Tanzanian shilling','','TZS',834,0.00000,'Sh','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(144,1,'United States dollar','','USD',840,0.00000,'$','2','.',',','{symbol}{number}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(147,1,'Vietnamese Dong','','VND',704,0.00000,'₫','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(148,1,'Vanuatu vatu','','VUV',548,0.00000,'Vt','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(149,1,'Samoan tala','','WST',882,0.00000,'T','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(151,1,'Yemeni rial','','YER',886,0.00000,'﷼','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(152,1,'Serbian dinar','','RSD',941,0.00000,'Дин.','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(153,1,'South African rand','','ZAR',710,0.00000,'R','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(154,1,'Zambian kwacha','','ZMK',894,0.00000,'ZK','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(156,1,'Zimbabwean dollar','','ZWD',932,0.00000,'Z$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(158,1,'Armenian dram','','AMD',51,0.00000,'դր.','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(159,1,'Myanmar kyat','','MMK',104,0.00000,'K','2',',','','{number} {symbol}','{symbol} {sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(160,1,'Croatian kuna','','HRK',191,0.00000,'kn','2',',','.','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(161,1,'Eritrean nakfa','','ERN',232,0.00000,'Nfk','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(162,1,'Djiboutian franc','','DJF',262,0.00000,'Fr','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(163,1,'Icelandic króna','','ISK',352,0.00000,'kr','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(164,1,'Kazakhstani tenge','','KZT',398,0.00000,'лв','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(165,1,'Kyrgyzstani som','','KGS',417,0.00000,'лв','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(166,1,'Latvian lats','','LVL',428,0.00000,'Ls','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(167,1,'Lithuanian litas','','LTL',440,0.00000,'Lt','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(168,1,'Mexican peso','','MXN',484,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(169,1,'Moldovan leu','','MDL',498,0.00000,'L','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(170,1,'Namibian dollar','','NAD',516,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(171,1,'Nicaraguan córdoba','','NIO',558,0.00000,'C$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(172,1,'Ugandan shilling','','UGX',800,0.00000,'Sh','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(173,1,'Macedonian denar','','MKD',807,0.00000,'ден','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(174,1,'Uruguayan peso','','UYU',858,0.00000,'$','0','','','{symbol}number}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(175,1,'Uzbekistani som','','UZS',860,0.00000,'лв','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(176,1,'Azerbaijani manat','','AZN',934,0.00000,'ман','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(177,1,'Ghanaian cedi','','GHS',936,0.00000,'₵','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(178,1,'Venezuelan bolívar','','VEF',937,0.00000,'Bs','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(179,1,'Sudanese pound','','SDG',938,0.00000,'£','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(180,1,'Uruguay Peso','','UYI',940,0.00000,'UYI','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(181,1,'Mozambican metical','','MZN',943,0.00000,'MT','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(182,1,'WIR Euro','','CHE',947,0.00000,'€','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(183,1,'WIR Franc','','CHW',948,0.00000,'CHW','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(184,1,'Central African CFA franc','','XAF',950,0.00000,'Fr','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(185,1,'East Caribbean dollar','','XCD',951,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(186,1,'West African CFA franc','','XOF',952,0.00000,'Fr','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(187,1,'CFP franc','','XPF',953,0.00000,'Fr','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(188,1,'Surinamese dollar','','SRD',968,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(189,1,'Malagasy ariary','','MGA',969,0.00000,'MGA','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(190,1,'Unidad de Valor Real','','COU',970,0.00000,'COU','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(191,1,'Afghan afghani','','AFN',971,0.00000,'؋','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(192,1,'Tajikistani somoni','','TJS',972,0.00000,'ЅМ','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(193,1,'Angolan kwanza','','AOA',973,0.00000,'Kz','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(194,1,'Belarusian ruble','','BYR',974,0.00000,'p.','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(195,1,'Bulgarian lev','','BGN',975,0.00000,'лв','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(196,1,'Congolese franc','','CDF',976,0.00000,'Fr','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(197,1,'Bosnia and Herzegovina convert','','BAM',977,0.00000,'KM','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(198,1,'Mexican Unid','','MXV',979,0.00000,'MXV','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(199,1,'Ukrainian hryvnia','','UAH',980,0.00000,'₴','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(200,1,'Georgian lari','','GEL',981,0.00000,'ლ','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(201,1,'Mvdol','','BOV',984,0.00000,'BOV','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `yami_virtuemart_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_customs`
--

DROP TABLE IF EXISTS `yami_virtuemart_customs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_customs` (
  `virtuemart_custom_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `custom_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `custom_jplugin_id` int(11) NOT NULL DEFAULT '0',
  `custom_element` char(50) NOT NULL DEFAULT '',
  `admin_only` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:Display in admin only',
  `custom_title` char(255) NOT NULL DEFAULT '' COMMENT 'field title',
  `custom_tip` char(255) NOT NULL DEFAULT '' COMMENT 'tip',
  `custom_value` char(255) DEFAULT NULL COMMENT 'defaut value',
  `custom_field_desc` char(255) DEFAULT NULL COMMENT 'description or unit',
  `field_type` char(1) NOT NULL DEFAULT '0' COMMENT 'S:string,I:int,P:parent, B:bool,D:date,T:time,H:hidden',
  `is_list` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'list of values',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:hidden',
  `is_cart_attribute` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Add attributes to cart',
  `layout_pos` char(24) DEFAULT NULL COMMENT 'Layout Position',
  `custom_params` text,
  `shared` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'valide for all vendors?',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_custom_id`),
  KEY `idx_custom_plugin_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `idx_custom_plugin_element` (`custom_element`),
  KEY `idx_custom_plugin_ordering` (`ordering`),
  KEY `idx_custom_parent_id` (`custom_parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='custom fields definition';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_customs`
--

LOCK TABLES `yami_virtuemart_customs` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_customs` DISABLE KEYS */;
INSERT INTO `yami_virtuemart_customs` VALUES (1,0,1,0,'',0,'COM_VIRTUEMART_RELATED_PRODUCTS','COM_VIRTUEMART_RELATED_PRODUCTS_TIP','','COM_VIRTUEMART_RELATED_PRODUCTS_DESC','R',0,0,0,NULL,NULL,0,1,'2011-05-25 21:52:43',62,0,'2011-05-25 21:52:43',62,'0000-00-00 00:00:00',0),(2,0,1,0,'',0,'COM_VIRTUEMART_RELATED_CATEGORIES','COM_VIRTUEMART_RELATED_CATEGORIES_TIP',NULL,'COM_VIRTUEMART_RELATED_CATEGORIES_DESC','Z',0,0,0,NULL,NULL,0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `yami_virtuemart_customs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_invoices`
--

DROP TABLE IF EXISTS `yami_virtuemart_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_invoices` (
  `virtuemart_invoice_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `virtuemart_order_id` int(1) unsigned DEFAULT NULL,
  `invoice_number` char(64) DEFAULT NULL,
  `order_status` char(2) DEFAULT NULL,
  `xhtml` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_invoice_id`),
  UNIQUE KEY `idx_invoice_number` (`invoice_number`,`virtuemart_vendor_id`),
  KEY `idx_virtuemart_order_id` (`virtuemart_order_id`),
  KEY `idx_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='custom fields definition';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_invoices`
--

LOCK TABLES `yami_virtuemart_invoices` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_manufacturer_medias`
--

DROP TABLE IF EXISTS `yami_virtuemart_manufacturer_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_manufacturer_medias` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_manufacturer_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_manufacturer_id` (`virtuemart_manufacturer_id`,`virtuemart_media_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_manufacturer_medias`
--

LOCK TABLES `yami_virtuemart_manufacturer_medias` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_manufacturer_medias` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_manufacturer_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_manufacturercategories`
--

DROP TABLE IF EXISTS `yami_virtuemart_manufacturercategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_manufacturercategories` (
  `virtuemart_manufacturercategories_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_manufacturercategories_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Manufacturers are assigned to these categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_manufacturercategories`
--

LOCK TABLES `yami_virtuemart_manufacturercategories` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_manufacturercategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_manufacturercategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_manufacturercategories_en_gb`
--

DROP TABLE IF EXISTS `yami_virtuemart_manufacturercategories_en_gb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_manufacturercategories_en_gb` (
  `virtuemart_manufacturercategories_id` int(1) unsigned NOT NULL,
  `mf_category_name` char(180) NOT NULL DEFAULT '',
  `mf_category_desc` varchar(20000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_manufacturercategories_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_manufacturercategories_en_gb`
--

LOCK TABLES `yami_virtuemart_manufacturercategories_en_gb` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_manufacturercategories_en_gb` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_manufacturercategories_en_gb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_manufacturers`
--

DROP TABLE IF EXISTS `yami_virtuemart_manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_manufacturers` (
  `virtuemart_manufacturer_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_manufacturercategories_id` int(11) DEFAULT NULL,
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Manufacturers are those who deliver products';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_manufacturers`
--

LOCK TABLES `yami_virtuemart_manufacturers` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_manufacturers` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_manufacturers_en_gb`
--

DROP TABLE IF EXISTS `yami_virtuemart_manufacturers_en_gb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_manufacturers_en_gb` (
  `virtuemart_manufacturer_id` int(1) unsigned NOT NULL,
  `mf_name` char(180) NOT NULL DEFAULT '',
  `mf_email` char(255) NOT NULL DEFAULT '',
  `mf_desc` varchar(20000) NOT NULL DEFAULT '',
  `mf_url` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_manufacturer_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_manufacturers_en_gb`
--

LOCK TABLES `yami_virtuemart_manufacturers_en_gb` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_manufacturers_en_gb` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_manufacturers_en_gb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_medias`
--

DROP TABLE IF EXISTS `yami_virtuemart_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_medias` (
  `virtuemart_media_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `file_title` char(126) NOT NULL DEFAULT '',
  `file_description` char(254) NOT NULL DEFAULT '',
  `file_meta` char(254) NOT NULL DEFAULT '',
  `file_mimetype` char(64) NOT NULL DEFAULT '',
  `file_type` char(32) NOT NULL DEFAULT '',
  `file_url` varchar(1800) NOT NULL DEFAULT '',
  `file_url_thumb` varchar(480) NOT NULL DEFAULT '',
  `file_is_product_image` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_downloadable` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_forSale` tinyint(1) NOT NULL DEFAULT '0',
  `file_params` varchar(17500) DEFAULT NULL,
  `file_lang` varchar(1000) NOT NULL,
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_media_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Additional Images and Files which are assigned to products';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_medias`
--

LOCK TABLES `yami_virtuemart_medias` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_medias` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_migration_oldtonew_ids`
--

DROP TABLE IF EXISTS `yami_virtuemart_migration_oldtonew_ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_migration_oldtonew_ids` (
  `id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `cats` longblob,
  `catsxref` blob,
  `manus` longblob,
  `mfcats` blob,
  `shoppergroups` longblob,
  `products` longblob,
  `products_start` int(1) DEFAULT NULL,
  `orderstates` blob,
  `orders` longblob,
  `orders_start` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for vm1 ids to vm2 ids';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_migration_oldtonew_ids`
--

LOCK TABLES `yami_virtuemart_migration_oldtonew_ids` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_migration_oldtonew_ids` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_migration_oldtonew_ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_modules`
--

DROP TABLE IF EXISTS `yami_virtuemart_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_modules` (
  `module_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` char(255) DEFAULT NULL,
  `module_description` varchar(21000) DEFAULT NULL,
  `module_perms` char(255) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` enum('0','1') NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`module_id`),
  KEY `idx_module_name` (`module_name`),
  KEY `idx_module_ordering` (`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='VirtueMart Core Modules, not: Joomla modules';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_modules`
--

LOCK TABLES `yami_virtuemart_modules` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_modules` DISABLE KEYS */;
INSERT INTO `yami_virtuemart_modules` VALUES (1,'product','Here you can administer your online catalog of products.  Categories , Products (view=product), Attributes  ,Product Types      Product Files (view=media), Inventory  , Calculation Rules ,Customer Reviews  ','storeadmin,admin',1,'1',1),(2,'order','View Order and Update Order Status:    Orders , Coupons , Revenue Report ,Shopper , Shopper Groups ','admin,storeadmin',1,'1',2),(3,'manufacturer','Manage the manufacturers of products in your store.','storeadmin,admin',1,'1',3),(4,'store','Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates','storeadmin,admin',1,'1',4),(5,'configuration','Configuration: shop configuration , currencies (view=currency), Credit Card List, Countries, userfields, order status  ','admin,storeadmin',1,'1',5),(6,'msgs','This module is unprotected an used for displaying system messages to users.  We need to have an area that does not require authorization when things go wrong.','none',0,'0',99),(7,'shop','This is the Washupito store module.  This is the demo store included with the VirtueMart distribution.','none',1,'0',99),(8,'store','Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates','storeadmin,admin',1,'1',4),(9,'account','This module allows shoppers to update their account information and view previously placed orders.','shopper,storeadmin,admin,demo',1,'0',99),(10,'checkout','','none',0,'0',99),(11,'tools','Tools','admin',1,'1',8),(13,'zone','This is the zone-shipment module. Here you can manage your shipment costs according to Zones.','admin,storeadmin',0,'1',11);
/*!40000 ALTER TABLE `yami_virtuemart_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_order_calc_rules`
--

DROP TABLE IF EXISTS `yami_virtuemart_order_calc_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_order_calc_rules` (
  `virtuemart_order_calc_rule_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` int(11) DEFAULT NULL,
  `virtuemart_order_id` int(11) DEFAULT NULL,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `virtuemart_order_item_id` int(11) DEFAULT NULL,
  `calc_rule_name` char(64) NOT NULL DEFAULT '' COMMENT 'Name of the rule',
  `calc_kind` char(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_mathop` char(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_amount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_result` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_value` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_currency` smallint(1) DEFAULT NULL,
  `calc_params` varchar(18000) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_calc_rule_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all calculation rules which are part of an order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_order_calc_rules`
--

LOCK TABLES `yami_virtuemart_order_calc_rules` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_order_calc_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_order_calc_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_order_histories`
--

DROP TABLE IF EXISTS `yami_virtuemart_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_order_histories` (
  `virtuemart_order_history_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_order_id` int(1) unsigned NOT NULL DEFAULT '0',
  `order_status_code` char(1) NOT NULL DEFAULT '0',
  `customer_notified` tinyint(1) NOT NULL DEFAULT '0',
  `comments` varchar(21000) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all actions and changes that occur to an order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_order_histories`
--

LOCK TABLES `yami_virtuemart_order_histories` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_order_items`
--

DROP TABLE IF EXISTS `yami_virtuemart_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_order_items` (
  `virtuemart_order_item_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_order_id` int(11) DEFAULT NULL,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `virtuemart_product_id` int(11) DEFAULT NULL,
  `order_item_sku` char(64) NOT NULL DEFAULT '',
  `order_item_name` char(255) NOT NULL DEFAULT '',
  `product_quantity` int(11) DEFAULT NULL,
  `product_item_price` decimal(15,5) DEFAULT NULL,
  `product_tax` decimal(15,5) DEFAULT NULL,
  `product_basePriceWithTax` decimal(15,5) DEFAULT NULL,
  `product_final_price` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `product_subtotal_discount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `product_subtotal_with_tax` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_item_currency` int(11) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `product_attribute` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_item_id`),
  KEY `virtuemart_product_id` (`virtuemart_product_id`),
  KEY `idx_order_item_virtuemart_order_id` (`virtuemart_order_id`),
  KEY `idx_order_item_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all items (products) which are part of an order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_order_items`
--

LOCK TABLES `yami_virtuemart_order_items` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_order_userinfos`
--

DROP TABLE IF EXISTS `yami_virtuemart_order_userinfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_order_userinfos` (
  `virtuemart_order_userinfo_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_order_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `address_type` char(2) DEFAULT NULL,
  `address_type_name` char(32) DEFAULT NULL,
  `company` char(64) DEFAULT NULL,
  `title` char(32) DEFAULT NULL,
  `last_name` char(32) DEFAULT NULL,
  `first_name` char(32) DEFAULT NULL,
  `middle_name` char(32) DEFAULT NULL,
  `phone_1` char(24) DEFAULT NULL,
  `phone_2` char(24) DEFAULT NULL,
  `fax` char(24) DEFAULT NULL,
  `address_1` char(64) NOT NULL DEFAULT '',
  `address_2` char(64) DEFAULT NULL,
  `city` char(32) NOT NULL DEFAULT '',
  `virtuemart_state_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `zip` char(16) NOT NULL DEFAULT '',
  `email` char(255) DEFAULT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_userinfo_id`),
  KEY `i_virtuemart_order_id` (`virtuemart_order_id`),
  KEY `i_virtuemart_user_id` (`virtuemart_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores the BillTo and ShipTo Information at order time';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_order_userinfos`
--

LOCK TABLES `yami_virtuemart_order_userinfos` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_order_userinfos` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_order_userinfos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_orders`
--

DROP TABLE IF EXISTS `yami_virtuemart_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_orders` (
  `virtuemart_order_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `order_number` char(64) DEFAULT NULL,
  `order_pass` char(8) DEFAULT NULL,
  `order_total` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_salesPrice` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_billTaxAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_billTax` varchar(400) DEFAULT NULL,
  `order_billDiscountAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_discountAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_subtotal` decimal(15,5) DEFAULT NULL,
  `order_tax` decimal(10,5) DEFAULT NULL,
  `order_shipment` decimal(10,2) DEFAULT NULL,
  `order_shipment_tax` decimal(10,5) DEFAULT NULL,
  `order_payment` decimal(10,2) DEFAULT NULL,
  `order_payment_tax` decimal(10,5) DEFAULT NULL,
  `coupon_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `coupon_code` char(32) DEFAULT NULL,
  `order_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `order_currency` smallint(1) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `user_currency_id` smallint(1) DEFAULT NULL,
  `user_currency_rate` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `virtuemart_paymentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `virtuemart_shipmentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `customer_note` varchar(21000) DEFAULT NULL,
  `ip_address` char(15) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_id`),
  KEY `idx_orders_virtuemart_user_id` (`virtuemart_user_id`),
  KEY `idx_orders_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `idx_orders_order_number` (`order_number`),
  KEY `idx_orders_virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`),
  KEY `idx_orders_virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used to store all orders';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_orders`
--

LOCK TABLES `yami_virtuemart_orders` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_orderstates`
--

DROP TABLE IF EXISTS `yami_virtuemart_orderstates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_orderstates` (
  `virtuemart_orderstate_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `order_status_code` char(1) NOT NULL DEFAULT '',
  `order_status_name` char(64) DEFAULT NULL,
  `order_status_description` varchar(20000) DEFAULT NULL,
  `order_stock_handle` char(1) NOT NULL DEFAULT 'A',
  `ordering` int(2) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_orderstate_id`),
  KEY `idx_order_status_ordering` (`ordering`),
  KEY `idx_order_status_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='All available order statuses';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_orderstates`
--

LOCK TABLES `yami_virtuemart_orderstates` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_orderstates` DISABLE KEYS */;
INSERT INTO `yami_virtuemart_orderstates` VALUES (1,1,'P','Pending','','R',1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,1,'U','Confirmed by shopper','','R',2,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,1,'C','Confirmed','','R',3,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,1,'X','Cancelled','','A',4,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(5,1,'R','Refunded','','A',5,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(6,1,'S','Shipped','','O',6,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `yami_virtuemart_orderstates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_paymentmethod_shoppergroups`
--

DROP TABLE IF EXISTS `yami_virtuemart_paymentmethod_shoppergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_paymentmethod_shoppergroups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_paymentmethod_id` mediumint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for paymentmethods to shoppergroup';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_paymentmethod_shoppergroups`
--

LOCK TABLES `yami_virtuemart_paymentmethod_shoppergroups` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_paymentmethod_shoppergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_paymentmethod_shoppergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_paymentmethods`
--

DROP TABLE IF EXISTS `yami_virtuemart_paymentmethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_paymentmethods` (
  `virtuemart_paymentmethod_id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `payment_jplugin_id` int(11) NOT NULL DEFAULT '0',
  `slug` char(255) NOT NULL DEFAULT '',
  `payment_element` char(50) NOT NULL DEFAULT '',
  `payment_params` varchar(19000) DEFAULT NULL,
  `shared` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'valide for all vendors?',
  `ordering` int(2) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_paymentmethod_id`),
  KEY `idx_payment_jplugin_id` (`payment_jplugin_id`),
  KEY `idx_payment_element` (`payment_element`,`virtuemart_vendor_id`),
  KEY `idx_payment_method_ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The payment methods of your store';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_paymentmethods`
--

LOCK TABLES `yami_virtuemart_paymentmethods` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_paymentmethods` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_paymentmethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_paymentmethods_en_gb`
--

DROP TABLE IF EXISTS `yami_virtuemart_paymentmethods_en_gb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_paymentmethods_en_gb` (
  `virtuemart_paymentmethod_id` int(1) unsigned NOT NULL,
  `payment_name` char(180) NOT NULL DEFAULT '',
  `payment_desc` varchar(20000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_paymentmethod_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_paymentmethods_en_gb`
--

LOCK TABLES `yami_virtuemart_paymentmethods_en_gb` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_paymentmethods_en_gb` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_paymentmethods_en_gb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_permgroups`
--

DROP TABLE IF EXISTS `yami_virtuemart_permgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_permgroups` (
  `virtuemart_permgroup_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `group_name` char(128) DEFAULT NULL,
  `group_level` int(11) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_permgroup_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Holds all the user groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_permgroups`
--

LOCK TABLES `yami_virtuemart_permgroups` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_permgroups` DISABLE KEYS */;
INSERT INTO `yami_virtuemart_permgroups` VALUES (1,1,'admin',0,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,1,'storeadmin',250,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,1,'shopper',500,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,1,'demo',750,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `yami_virtuemart_permgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_product_categories`
--

DROP TABLE IF EXISTS `yami_virtuemart_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_product_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_category_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_product_categories`
--

LOCK TABLES `yami_virtuemart_product_categories` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_product_customfields`
--

DROP TABLE IF EXISTS `yami_virtuemart_product_customfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_product_customfields` (
  `virtuemart_customfield_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'field id',
  `virtuemart_product_id` int(11) NOT NULL DEFAULT '0',
  `virtuemart_custom_id` int(11) NOT NULL DEFAULT '1' COMMENT 'custom group id',
  `custom_value` varchar(8000) DEFAULT NULL COMMENT 'field value',
  `custom_price` decimal(15,5) DEFAULT NULL COMMENT 'price',
  `custom_param` varchar(12800) DEFAULT NULL COMMENT 'Param for Plugins',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) unsigned NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) unsigned NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_customfield_id`),
  KEY `idx_virtuemart_product_id` (`virtuemart_product_id`),
  KEY `idx_virtuemart_custom_id` (`virtuemart_custom_id`),
  KEY `idx_custom_value` (`custom_value`(333))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='custom fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_product_customfields`
--

LOCK TABLES `yami_virtuemart_product_customfields` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_product_customfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_product_customfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_product_manufacturers`
--

DROP TABLE IF EXISTS `yami_virtuemart_product_manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_product_manufacturers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(11) DEFAULT NULL,
  `virtuemart_manufacturer_id` smallint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a product to a manufacturer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_product_manufacturers`
--

LOCK TABLES `yami_virtuemart_product_manufacturers` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_product_manufacturers` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_product_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_product_medias`
--

DROP TABLE IF EXISTS `yami_virtuemart_product_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_product_medias` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_media_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_product_medias`
--

LOCK TABLES `yami_virtuemart_product_medias` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_product_medias` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_product_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_product_prices`
--

DROP TABLE IF EXISTS `yami_virtuemart_product_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_product_prices` (
  `virtuemart_product_price_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` int(11) DEFAULT NULL,
  `product_price` decimal(15,5) DEFAULT NULL,
  `override` tinyint(1) DEFAULT NULL,
  `product_override_price` decimal(15,5) DEFAULT NULL,
  `product_tax_id` int(11) DEFAULT NULL,
  `product_discount_id` int(11) DEFAULT NULL,
  `product_currency` smallint(1) DEFAULT NULL,
  `product_price_publish_up` datetime DEFAULT NULL,
  `product_price_publish_down` datetime DEFAULT NULL,
  `price_quantity_start` int(11) unsigned DEFAULT NULL,
  `price_quantity_end` int(11) unsigned DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_product_price_id`),
  KEY `idx_product_price_product_id` (`virtuemart_product_id`),
  KEY `idx_product_price_virtuemart_shoppergroup_id` (`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds price records for a product';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_product_prices`
--

LOCK TABLES `yami_virtuemart_product_prices` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_product_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_product_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_product_relations`
--

DROP TABLE IF EXISTS `yami_virtuemart_product_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_product_relations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `related_products` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`related_products`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_product_relations`
--

LOCK TABLES `yami_virtuemart_product_relations` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_product_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_product_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_product_shoppergroups`
--

DROP TABLE IF EXISTS `yami_virtuemart_product_shoppergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_product_shoppergroups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_product_shoppergroups`
--

LOCK TABLES `yami_virtuemart_product_shoppergroups` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_product_shoppergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_product_shoppergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_products`
--

DROP TABLE IF EXISTS `yami_virtuemart_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_products` (
  `virtuemart_product_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `product_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `product_sku` char(64) DEFAULT NULL,
  `product_weight` decimal(10,4) DEFAULT NULL,
  `product_weight_uom` char(7) DEFAULT NULL,
  `product_length` decimal(10,4) DEFAULT NULL,
  `product_width` decimal(10,4) DEFAULT NULL,
  `product_height` decimal(10,4) DEFAULT NULL,
  `product_lwh_uom` char(7) DEFAULT NULL,
  `product_url` char(255) DEFAULT NULL,
  `product_in_stock` int(1) DEFAULT NULL,
  `product_ordered` int(1) DEFAULT NULL,
  `low_stock_notification` int(1) unsigned DEFAULT NULL,
  `product_available_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_availability` char(32) DEFAULT NULL,
  `product_special` tinyint(1) DEFAULT NULL,
  `product_sales` int(1) unsigned DEFAULT NULL,
  `product_unit` char(4) DEFAULT NULL,
  `product_packaging` decimal(8,4) unsigned DEFAULT NULL,
  `product_params` varchar(2000) DEFAULT NULL,
  `hits` int(11) unsigned DEFAULT NULL,
  `intnotes` varchar(18000) DEFAULT NULL,
  `metarobot` varchar(400) DEFAULT NULL,
  `metaauthor` varchar(400) DEFAULT NULL,
  `layout` char(16) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `pordering` smallint(2) unsigned NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_product_id`),
  KEY `idx_product_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `idx_product_product_parent_id` (`product_parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='All products are stored here.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_products`
--

LOCK TABLES `yami_virtuemart_products` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_products_en_gb`
--

DROP TABLE IF EXISTS `yami_virtuemart_products_en_gb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_products_en_gb` (
  `virtuemart_product_id` int(1) unsigned NOT NULL,
  `product_s_desc` varchar(2000) NOT NULL DEFAULT '',
  `product_desc` varchar(18400) NOT NULL DEFAULT '',
  `product_name` char(180) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_product_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_products_en_gb`
--

LOCK TABLES `yami_virtuemart_products_en_gb` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_products_en_gb` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_products_en_gb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_rating_reviews`
--

DROP TABLE IF EXISTS `yami_virtuemart_rating_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_rating_reviews` (
  `virtuemart_rating_review_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(18000) DEFAULT NULL,
  `review_ok` tinyint(1) NOT NULL DEFAULT '0',
  `review_rates` int(1) unsigned NOT NULL DEFAULT '0',
  `review_ratingcount` int(1) unsigned NOT NULL DEFAULT '0',
  `review_rating` decimal(10,2) NOT NULL DEFAULT '0.00',
  `review_editable` tinyint(1) NOT NULL DEFAULT '1',
  `lastip` char(50) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_rating_review_id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`created_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_rating_reviews`
--

LOCK TABLES `yami_virtuemart_rating_reviews` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_rating_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_rating_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_rating_votes`
--

DROP TABLE IF EXISTS `yami_virtuemart_rating_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_rating_votes` (
  `virtuemart_rating_vote_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `vote` int(11) NOT NULL DEFAULT '0',
  `lastip` char(50) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_rating_vote_id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`created_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_rating_votes`
--

LOCK TABLES `yami_virtuemart_rating_votes` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_rating_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_rating_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_ratings`
--

DROP TABLE IF EXISTS `yami_virtuemart_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_ratings` (
  `virtuemart_rating_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `rates` int(11) NOT NULL DEFAULT '0',
  `ratingcount` int(1) unsigned NOT NULL DEFAULT '0',
  `rating` decimal(10,1) NOT NULL DEFAULT '0.0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_rating_id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_rating_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_ratings`
--

LOCK TABLES `yami_virtuemart_ratings` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_shipmentmethod_shoppergroups`
--

DROP TABLE IF EXISTS `yami_virtuemart_shipmentmethod_shoppergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_shipmentmethod_shoppergroups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_shipmentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for shipment to shoppergroup';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_shipmentmethod_shoppergroups`
--

LOCK TABLES `yami_virtuemart_shipmentmethod_shoppergroups` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_shipmentmethod_shoppergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_shipmentmethod_shoppergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_shipmentmethods`
--

DROP TABLE IF EXISTS `yami_virtuemart_shipmentmethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_shipmentmethods` (
  `virtuemart_shipmentmethod_id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `shipment_jplugin_id` int(11) NOT NULL DEFAULT '0',
  `slug` char(255) NOT NULL DEFAULT '',
  `shipment_element` char(50) NOT NULL DEFAULT '',
  `shipment_params` varchar(19000) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_shipmentmethod_id`),
  KEY `idx_shipment_jplugin_id` (`shipment_jplugin_id`),
  KEY `idx_shipment_element` (`shipment_element`,`virtuemart_vendor_id`),
  KEY `idx_shipment_method_ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Shipment created from the shipment plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_shipmentmethods`
--

LOCK TABLES `yami_virtuemart_shipmentmethods` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_shipmentmethods` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_shipmentmethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_shipmentmethods_en_gb`
--

DROP TABLE IF EXISTS `yami_virtuemart_shipmentmethods_en_gb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_shipmentmethods_en_gb` (
  `virtuemart_shipmentmethod_id` int(1) unsigned NOT NULL,
  `shipment_name` char(180) NOT NULL DEFAULT '',
  `shipment_desc` varchar(20000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_shipmentmethod_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_shipmentmethods_en_gb`
--

LOCK TABLES `yami_virtuemart_shipmentmethods_en_gb` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_shipmentmethods_en_gb` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_shipmentmethods_en_gb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_shoppergroups`
--

DROP TABLE IF EXISTS `yami_virtuemart_shoppergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_shoppergroups` (
  `virtuemart_shoppergroup_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `shopper_group_name` char(32) DEFAULT NULL,
  `shopper_group_desc` char(128) DEFAULT NULL,
  `custom_price_display` tinyint(1) NOT NULL DEFAULT '0',
  `price_display` blob,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_shoppergroup_id`),
  KEY `idx_shopper_group_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `idx_shopper_group_name` (`shopper_group_name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Shopper Groups that users can be assigned to';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_shoppergroups`
--

LOCK TABLES `yami_virtuemart_shoppergroups` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_shoppergroups` DISABLE KEYS */;
INSERT INTO `yami_virtuemart_shoppergroups` VALUES (2,1,'-default-','This is the default shopper group.',0,NULL,1,0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(1,1,'-anonymous-','Shopper group for anonymous shoppers',0,NULL,2,0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `yami_virtuemart_shoppergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_states`
--

DROP TABLE IF EXISTS `yami_virtuemart_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_states` (
  `virtuemart_state_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `virtuemart_worldzone_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `state_name` char(64) DEFAULT NULL,
  `state_3_code` char(3) DEFAULT NULL,
  `state_2_code` char(2) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_state_id`),
  UNIQUE KEY `idx_state_3_code` (`virtuemart_country_id`,`state_3_code`),
  UNIQUE KEY `idx_state_2_code` (`virtuemart_country_id`,`state_2_code`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `i_virtuemart_country_id` (`virtuemart_country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=730 DEFAULT CHARSET=utf8 COMMENT='States that are assigned to a country';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_states`
--

LOCK TABLES `yami_virtuemart_states` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_states` DISABLE KEYS */;
INSERT INTO `yami_virtuemart_states` VALUES (1,1,223,0,'Alabama','ALA','AL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,1,223,0,'Alaska','ALK','AK',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,1,223,0,'Arizona','ARZ','AZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,1,223,0,'Arkansas','ARK','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(5,1,223,0,'California','CAL','CA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(6,1,223,0,'Colorado','COL','CO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(7,1,223,0,'Connecticut','CCT','CT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(8,1,223,0,'Delaware','DEL','DE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(9,1,223,0,'District Of Columbia','DOC','DC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(10,1,223,0,'Florida','FLO','FL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(11,1,223,0,'Georgia','GEA','GA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(12,1,223,0,'Hawaii','HWI','HI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(13,1,223,0,'Idaho','IDA','ID',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(14,1,223,0,'Illinois','ILL','IL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(15,1,223,0,'Indiana','IND','IN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(16,1,223,0,'Iowa','IOA','IA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(17,1,223,0,'Kansas','KAS','KS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(18,1,223,0,'Kentucky','KTY','KY',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(19,1,223,0,'Louisiana','LOA','LA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(20,1,223,0,'Maine','MAI','ME',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(21,1,223,0,'Maryland','MLD','MD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(22,1,223,0,'Massachusetts','MSA','MA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(23,1,223,0,'Michigan','MIC','MI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(24,1,223,0,'Minnesota','MIN','MN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(25,1,223,0,'Mississippi','MIS','MS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(26,1,223,0,'Missouri','MIO','MO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(27,1,223,0,'Montana','MOT','MT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(28,1,223,0,'Nebraska','NEB','NE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(29,1,223,0,'Nevada','NEV','NV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(30,1,223,0,'New Hampshire','NEH','NH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(31,1,223,0,'New Jersey','NEJ','NJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(32,1,223,0,'New Mexico','NEM','NM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(33,1,223,0,'New York','NEY','NY',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(34,1,223,0,'North Carolina','NOC','NC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(35,1,223,0,'North Dakota','NOD','ND',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(36,1,223,0,'Ohio','OHI','OH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(37,1,223,0,'Oklahoma','OKL','OK',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(38,1,223,0,'Oregon','ORN','OR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(39,1,223,0,'Pennsylvania','PEA','PA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(40,1,223,0,'Rhode Island','RHI','RI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(41,1,223,0,'South Carolina','SOC','SC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(42,1,223,0,'South Dakota','SOD','SD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(43,1,223,0,'Tennessee','TEN','TN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(44,1,223,0,'Texas','TXS','TX',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(45,1,223,0,'Utah','UTA','UT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(46,1,223,0,'Vermont','VMT','VT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(47,1,223,0,'Virginia','VIA','VA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(48,1,223,0,'Washington','WAS','WA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(49,1,223,0,'West Virginia','WEV','WV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(50,1,223,0,'Wisconsin','WIS','WI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(51,1,223,0,'Wyoming','WYO','WY',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(52,1,38,0,'Alberta','ALB','AB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(53,1,38,0,'British Columbia','BRC','BC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(54,1,38,0,'Manitoba','MAB','MB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(55,1,38,0,'New Brunswick','NEB','NB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(56,1,38,0,'Newfoundland and Labrador','NFL','NL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(57,1,38,0,'Northwest Territories','NWT','NT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(58,1,38,0,'Nova Scotia','NOS','NS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(59,1,38,0,'Nunavut','NUT','NU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(60,1,38,0,'Ontario','ONT','ON',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(61,1,38,0,'Prince Edward Island','PEI','PE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(62,1,38,0,'Quebec','QEC','QC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(63,1,38,0,'Saskatchewan','SAK','SK',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(64,1,38,0,'Yukon','YUT','YT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(65,1,222,0,'England','ENG','EN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(66,1,222,0,'Northern Ireland','NOI','NI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(67,1,222,0,'Scotland','SCO','SD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(68,1,222,0,'Wales','WLS','WS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(69,1,13,0,'Australian Capital Territory','ACT','AC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(70,1,13,0,'New South Wales','NSW','NS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(71,1,13,0,'Northern Territory','NOT','NT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(72,1,13,0,'Queensland','QLD','QL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(73,1,13,0,'South Australia','SOA','SA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(74,1,13,0,'Tasmania','TAS','TS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(75,1,13,0,'Victoria','VIC','VI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(76,1,13,0,'Western Australia','WEA','WA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(77,1,138,0,'Aguascalientes','AGS','AG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(78,1,138,0,'Baja California Norte','BCN','BN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(79,1,138,0,'Baja California Sur','BCS','BS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(80,1,138,0,'Campeche','CAM','CA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(81,1,138,0,'Chiapas','CHI','CS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(82,1,138,0,'Chihuahua','CHA','CH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(83,1,138,0,'Coahuila','COA','CO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(84,1,138,0,'Colima','COL','CM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(85,1,138,0,'Distrito Federal','DFM','DF',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(86,1,138,0,'Durango','DGO','DO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(87,1,138,0,'Guanajuato','GTO','GO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(88,1,138,0,'Guerrero','GRO','GU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(89,1,138,0,'Hidalgo','HGO','HI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(90,1,138,0,'Jalisco','JAL','JA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(91,1,138,0,'M','EDM','EM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(92,1,138,0,'Michoac','MCN','MI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(93,1,138,0,'Morelos','MOR','MO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(94,1,138,0,'Nayarit','NAY','NY',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(95,1,138,0,'Nuevo Le','NUL','NL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(96,1,138,0,'Oaxaca','OAX','OA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(97,1,138,0,'Puebla','PUE','PU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(98,1,138,0,'Quer','QRO','QU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(99,1,138,0,'Quintana Roo','QUR','QR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(100,1,138,0,'San Luis Potos','SLP','SP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(101,1,138,0,'Sinaloa','SIN','SI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(102,1,138,0,'Sonora','SON','SO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(103,1,138,0,'Tabasco','TAB','TA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(104,1,138,0,'Tamaulipas','TAM','TM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(105,1,138,0,'Tlaxcala','TLX','TX',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(106,1,138,0,'Veracruz','VER','VZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(107,1,138,0,'Yucat','YUC','YU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(108,1,138,0,'Zacatecas','ZAC','ZA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(109,1,30,0,'Acre','ACR','AC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(110,1,30,0,'Alagoas','ALG','AL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(111,1,30,0,'Amapá','AMP','AP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(112,1,30,0,'Amazonas','AMZ','AM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(113,1,30,0,'Bahía','BAH','BA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(114,1,30,0,'Ceará','CEA','CE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(115,1,30,0,'Distrito Federal','DFB','DF',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(116,1,30,0,'Espírito Santo','ESS','ES',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(117,1,30,0,'Goiás','GOI','GO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(118,1,30,0,'Maranhão','MAR','MA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(119,1,30,0,'Mato Grosso','MAT','MT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(120,1,30,0,'Mato Grosso do Sul','MGS','MS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(121,1,30,0,'Minas Gerais','MIG','MG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(122,1,30,0,'Paraná','PAR','PR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(123,1,30,0,'Paraíba','PRB','PB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(124,1,30,0,'Pará','PAB','PA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(125,1,30,0,'Pernambuco','PER','PE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(126,1,30,0,'Piauí','PIA','PI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(127,1,30,0,'Rio Grande do Norte','RGN','RN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(128,1,30,0,'Rio Grande do Sul','RGS','RS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(129,1,30,0,'Rio de Janeiro','RDJ','RJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(130,1,30,0,'Rondônia','RON','RO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(131,1,30,0,'Roraima','ROR','RR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(132,1,30,0,'Santa Catarina','SAC','SC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(133,1,30,0,'Sergipe','SER','SE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(134,1,30,0,'São Paulo','SAP','SP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(135,1,30,0,'Tocantins','TOC','TO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(136,1,44,0,'Anhui','ANH','34',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(137,1,44,0,'Beijing','BEI','11',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(138,1,44,0,'Chongqing','CHO','50',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(139,1,44,0,'Fujian','FUJ','35',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(140,1,44,0,'Gansu','GAN','62',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(141,1,44,0,'Guangdong','GUA','44',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(142,1,44,0,'Guangxi Zhuang','GUZ','45',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(143,1,44,0,'Guizhou','GUI','52',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(144,1,44,0,'Hainan','HAI','46',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(145,1,44,0,'Hebei','HEB','13',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(146,1,44,0,'Heilongjiang','HEI','23',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(147,1,44,0,'Henan','HEN','41',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(148,1,44,0,'Hubei','HUB','42',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(149,1,44,0,'Hunan','HUN','43',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(150,1,44,0,'Jiangsu','JIA','32',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(151,1,44,0,'Jiangxi','JIX','36',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(152,1,44,0,'Jilin','JIL','22',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(153,1,44,0,'Liaoning','LIA','21',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(154,1,44,0,'Nei Mongol','NML','15',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(155,1,44,0,'Ningxia Hui','NIH','64',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(156,1,44,0,'Qinghai','QIN','63',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(157,1,44,0,'Shandong','SNG','37',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(158,1,44,0,'Shanghai','SHH','31',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(159,1,44,0,'Shaanxi','SHX','61',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(160,1,44,0,'Sichuan','SIC','51',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(161,1,44,0,'Tianjin','TIA','12',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(162,1,44,0,'Xinjiang Uygur','XIU','65',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(163,1,44,0,'Xizang','XIZ','54',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(164,1,44,0,'Yunnan','YUN','53',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(165,1,44,0,'Zhejiang','ZHE','33',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(166,1,104,0,'Israel','ISL','IL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(167,1,104,0,'Gaza Strip','GZS','GZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(168,1,104,0,'West Bank','WBK','WB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(169,1,151,0,'St. Maarten','STM','SM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(170,1,151,0,'Bonaire','BNR','BN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(171,1,151,0,'Curacao','CUR','CR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(172,1,175,0,'Alba','ABA','AB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(173,1,175,0,'Arad','ARD','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(174,1,175,0,'Arges','ARG','AG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(175,1,175,0,'Bacau','BAC','BC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(176,1,175,0,'Bihor','BIH','BH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(177,1,175,0,'Bistrita-Nasaud','BIS','BN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(178,1,175,0,'Botosani','BOT','BT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(179,1,175,0,'Braila','BRL','BR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(180,1,175,0,'Brasov','BRA','BV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(181,1,175,0,'Bucuresti','BUC','B',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(182,1,175,0,'Buzau','BUZ','BZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(183,1,175,0,'Calarasi','CAL','CL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(184,1,175,0,'Caras Severin','CRS','CS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(185,1,175,0,'Cluj','CLJ','CJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(186,1,175,0,'Constanta','CST','CT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(187,1,175,0,'Covasna','COV','CV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(188,1,175,0,'Dambovita','DAM','DB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(189,1,175,0,'Dolj','DLJ','DJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(190,1,175,0,'Galati','GAL','GL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(191,1,175,0,'Giurgiu','GIU','GR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(192,1,175,0,'Gorj','GOR','GJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(193,1,175,0,'Hargita','HRG','HR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(194,1,175,0,'Hunedoara','HUN','HD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(195,1,175,0,'Ialomita','IAL','IL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(196,1,175,0,'Iasi','IAS','IS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(197,1,175,0,'Ilfov','ILF','IF',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(198,1,175,0,'Maramures','MAR','MM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(199,1,175,0,'Mehedinti','MEH','MH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(200,1,175,0,'Mures','MUR','MS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(201,1,175,0,'Neamt','NEM','NT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(202,1,175,0,'Olt','OLT','OT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(203,1,175,0,'Prahova','PRA','PH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(204,1,175,0,'Salaj','SAL','SJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(205,1,175,0,'Satu Mare','SAT','SM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(206,1,175,0,'Sibiu','SIB','SB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(207,1,175,0,'Suceava','SUC','SV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(208,1,175,0,'Teleorman','TEL','TR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(209,1,175,0,'Timis','TIM','TM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(210,1,175,0,'Tulcea','TUL','TL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(211,1,175,0,'Valcea','VAL','VL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(212,1,175,0,'Vaslui','VAS','VS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(213,1,175,0,'Vrancea','VRA','VN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(214,1,105,0,'Agrigento','AGR','AG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(215,1,105,0,'Alessandria','ALE','AL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(216,1,105,0,'Ancona','ANC','AN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(217,1,105,0,'Aosta','AOS','AO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(218,1,105,0,'Arezzo','ARE','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(219,1,105,0,'Ascoli Piceno','API','AP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(220,1,105,0,'Asti','AST','AT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(221,1,105,0,'Avellino','AVE','AV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(222,1,105,0,'Bari','BAR','BA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(223,1,105,0,'Belluno','BEL','BL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(224,1,105,0,'Benevento','BEN','BN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(225,1,105,0,'Bergamo','BEG','BG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(226,1,105,0,'Biella','BIE','BI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(227,1,105,0,'Bologna','BOL','BO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(228,1,105,0,'Bolzano','BOZ','BZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(229,1,105,0,'Brescia','BRE','BS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(230,1,105,0,'Brindisi','BRI','BR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(231,1,105,0,'Cagliari','CAG','CA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(232,1,105,0,'Caltanissetta','CAL','CL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(233,1,105,0,'Campobasso','CBO','CB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(234,1,105,0,'Carbonia-Iglesias','CAR','CI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(235,1,105,0,'Caserta','CAS','CE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(236,1,105,0,'Catania','CAT','CT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(237,1,105,0,'Catanzaro','CTZ','CZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(238,1,105,0,'Chieti','CHI','CH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(239,1,105,0,'Como','COM','CO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(240,1,105,0,'Cosenza','COS','CS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(241,1,105,0,'Cremona','CRE','CR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(242,1,105,0,'Crotone','CRO','KR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(243,1,105,0,'Cuneo','CUN','CN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(244,1,105,0,'Enna','ENN','EN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(245,1,105,0,'Ferrara','FER','FE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(246,1,105,0,'Firenze','FIR','FI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(247,1,105,0,'Foggia','FOG','FG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(248,1,105,0,'Forli-Cesena','FOC','FC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(249,1,105,0,'Frosinone','FRO','FR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(250,1,105,0,'Genova','GEN','GE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(251,1,105,0,'Gorizia','GOR','GO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(252,1,105,0,'Grosseto','GRO','GR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(253,1,105,0,'Imperia','IMP','IM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(254,1,105,0,'Isernia','ISE','IS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(255,1,105,0,'L\'Aquila','AQU','AQ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(256,1,105,0,'La Spezia','LAS','SP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(257,1,105,0,'Latina','LAT','LT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(258,1,105,0,'Lecce','LEC','LE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(259,1,105,0,'Lecco','LCC','LC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(260,1,105,0,'Livorno','LIV','LI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(261,1,105,0,'Lodi','LOD','LO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(262,1,105,0,'Lucca','LUC','LU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(263,1,105,0,'Macerata','MAC','MC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(264,1,105,0,'Mantova','MAN','MN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(265,1,105,0,'Massa-Carrara','MAS','MS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(266,1,105,0,'Matera','MAA','MT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(267,1,105,0,'Medio Campidano','MED','VS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(268,1,105,0,'Messina','MES','ME',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(269,1,105,0,'Milano','MIL','MI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(270,1,105,0,'Modena','MOD','MO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(271,1,105,0,'Napoli','NAP','NA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(272,1,105,0,'Novara','NOV','NO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(273,1,105,0,'Nuoro','NUR','NU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(274,1,105,0,'Ogliastra','OGL','OG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(275,1,105,0,'Olbia-Tempio','OLB','OT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(276,1,105,0,'Oristano','ORI','OR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(277,1,105,0,'Padova','PDA','PD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(278,1,105,0,'Palermo','PAL','PA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(279,1,105,0,'Parma','PAA','PR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(280,1,105,0,'Pavia','PAV','PV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(281,1,105,0,'Perugia','PER','PG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(282,1,105,0,'Pesaro e Urbino','PES','PU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(283,1,105,0,'Pescara','PSC','PE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(284,1,105,0,'Piacenza','PIA','PC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(285,1,105,0,'Pisa','PIS','PI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(286,1,105,0,'Pistoia','PIT','PT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(287,1,105,0,'Pordenone','POR','PN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(288,1,105,0,'Potenza','PTZ','PZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(289,1,105,0,'Prato','PRA','PO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(290,1,105,0,'Ragusa','RAG','RG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(291,1,105,0,'Ravenna','RAV','RA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(292,1,105,0,'Reggio Calabria','REG','RC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(293,1,105,0,'Reggio Emilia','REE','RE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(294,1,105,0,'Rieti','RIE','RI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(295,1,105,0,'Rimini','RIM','RN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(296,1,105,0,'Roma','ROM','RM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(297,1,105,0,'Rovigo','ROV','RO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(298,1,105,0,'Salerno','SAL','SA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(299,1,105,0,'Sassari','SAS','SS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(300,1,105,0,'Savona','SAV','SV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(301,1,105,0,'Siena','SIE','SI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(302,1,105,0,'Siracusa','SIR','SR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(303,1,105,0,'Sondrio','SOO','SO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(304,1,105,0,'Taranto','TAR','TA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(305,1,105,0,'Teramo','TER','TE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(306,1,105,0,'Terni','TRN','TR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(307,1,105,0,'Torino','TOR','TO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(308,1,105,0,'Trapani','TRA','TP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(309,1,105,0,'Trento','TRE','TN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(310,1,105,0,'Treviso','TRV','TV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(311,1,105,0,'Trieste','TRI','TS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(312,1,105,0,'Udine','UDI','UD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(313,1,105,0,'Varese','VAR','VA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(314,1,105,0,'Venezia','VEN','VE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(315,1,105,0,'Verbano Cusio Ossola','VCO','VB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(316,1,105,0,'Vercelli','VER','VC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(317,1,105,0,'Verona','VRN','VR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(318,1,105,0,'Vibo Valenzia','VIV','VV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(319,1,105,0,'Vicenza','VII','VI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(320,1,105,0,'Viterbo','VIT','VT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(321,1,195,0,'A Coru','ACO','15',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(322,1,195,0,'Alava','ALA','01',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(323,1,195,0,'Albacete','ALB','02',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(324,1,195,0,'Alicante','ALI','03',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(325,1,195,0,'Almeria','ALM','04',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(326,1,195,0,'Asturias','AST','33',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(327,1,195,0,'Avila','AVI','05',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(328,1,195,0,'Badajoz','BAD','06',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(329,1,195,0,'Baleares','BAL','07',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(330,1,195,0,'Barcelona','BAR','08',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(331,1,195,0,'Burgos','BUR','09',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(332,1,195,0,'Caceres','CAC','10',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(333,1,195,0,'Cadiz','CAD','11',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(334,1,195,0,'Cantabria','CAN','39',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(335,1,195,0,'Castellon','CAS','12',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(336,1,195,0,'Ceuta','CEU','51',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(337,1,195,0,'Ciudad Real','CIU','13',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(338,1,195,0,'Cordoba','COR','14',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(339,1,195,0,'Cuenca','CUE','16',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(340,1,195,0,'Girona','GIR','17',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(341,1,195,0,'Granada','GRA','18',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(342,1,195,0,'Guadalajara','GUA','19',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(343,1,195,0,'Guipuzcoa','GUI','20',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(344,1,195,0,'Huelva','HUL','21',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(345,1,195,0,'Huesca','HUS','22',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(346,1,195,0,'Jaen','JAE','23',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(347,1,195,0,'La Rioja','LRI','26',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(348,1,195,0,'Las Palmas','LPA','35',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(349,1,195,0,'Leon','LEO','24',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(350,1,195,0,'Lleida','LLE','25',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(351,1,195,0,'Lugo','LUG','27',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(352,1,195,0,'Madrid','MAD','28',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(353,1,195,0,'Malaga','MAL','29',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(354,1,195,0,'Melilla','MEL','52',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(355,1,195,0,'Murcia','MUR','30',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(356,1,195,0,'Navarra','NAV','31',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(357,1,195,0,'Ourense','OUR','32',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(358,1,195,0,'Palencia','PAL','34',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(359,1,195,0,'Pontevedra','PON','36',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(360,1,195,0,'Salamanca','SAL','37',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(361,1,195,0,'Santa Cruz de Tenerife','SCT','38',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(362,1,195,0,'Segovia','SEG','40',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(363,1,195,0,'Sevilla','SEV','41',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(364,1,195,0,'Soria','SOR','42',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(365,1,195,0,'Tarragona','TAR','43',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(366,1,195,0,'Teruel','TER','44',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(367,1,195,0,'Toledo','TOL','45',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(368,1,195,0,'Valencia','VAL','46',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(369,1,195,0,'Valladolid','VLL','47',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(370,1,195,0,'Vizcaya','VIZ','48',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(371,1,195,0,'Zamora','ZAM','49',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(372,1,195,0,'Zaragoza','ZAR','50',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(373,1,10,0,'Buenos Aires','BAS','BA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(374,1,10,0,'Ciudad Autonoma De Buenos Aires','CBA','CB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(375,1,10,0,'Catamarca','CAT','CA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(376,1,10,0,'Chaco','CHO','CH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(377,1,10,0,'Chubut','CTT','CT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(378,1,10,0,'Cordoba','COD','CO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(379,1,10,0,'Corrientes','CRI','CR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(380,1,10,0,'Entre Rios','ERS','ER',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(381,1,10,0,'Formosa','FRM','FR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(382,1,10,0,'Jujuy','JUJ','JU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(383,1,10,0,'La Pampa','LPM','LP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(384,1,10,0,'La Rioja','LRI','LR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(385,1,10,0,'Mendoza','MED','ME',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(386,1,10,0,'Misiones','MIS','MI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(387,1,10,0,'Neuquen','NQU','NQ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(388,1,10,0,'Rio Negro','RNG','RN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(389,1,10,0,'Salta','SAL','SA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(390,1,10,0,'San Juan','SJN','SJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(391,1,10,0,'San Luis','SLU','SL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(392,1,10,0,'Santa Cruz','SCZ','SC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(393,1,10,0,'Santa Fe','SFE','SF',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(394,1,10,0,'Santiago Del Estero','SEN','SE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(395,1,10,0,'Tierra Del Fuego','TFE','TF',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(396,1,10,0,'Tucuman','TUC','TU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(397,1,11,0,'Aragatsotn','ARG','AG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(398,1,11,0,'Ararat','ARR','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(399,1,11,0,'Armavir','ARM','AV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(400,1,11,0,'Gegharkunik','GEG','GR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(401,1,11,0,'Kotayk','KOT','KT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(402,1,11,0,'Lori','LOR','LO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(403,1,11,0,'Shirak','SHI','SH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(404,1,11,0,'Syunik','SYU','SU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(405,1,11,0,'Tavush','TAV','TV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(406,1,11,0,'Vayots-Dzor','VAD','VD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(407,1,11,0,'Yerevan','YER','ER',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(408,1,99,0,'Andaman & Nicobar Islands','ANI','AI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(409,1,99,0,'Andhra Pradesh','AND','AN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(410,1,99,0,'Arunachal Pradesh','ARU','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(411,1,99,0,'Assam','ASS','AS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(412,1,99,0,'Bihar','BIH','BI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(413,1,99,0,'Chandigarh','CHA','CA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(414,1,99,0,'Chhatisgarh','CHH','CH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(415,1,99,0,'Dadra & Nagar Haveli','DAD','DD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(416,1,99,0,'Daman & Diu','DAM','DA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(417,1,99,0,'Delhi','DEL','DE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(418,1,99,0,'Goa','GOA','GO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(419,1,99,0,'Gujarat','GUJ','GU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(420,1,99,0,'Haryana','HAR','HA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(421,1,99,0,'Himachal Pradesh','HIM','HI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(422,1,99,0,'Jammu & Kashmir','JAM','JA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(423,1,99,0,'Jharkhand','JHA','JH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(424,1,99,0,'Karnataka','KAR','KA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(425,1,99,0,'Kerala','KER','KE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(426,1,99,0,'Lakshadweep','LAK','LA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(427,1,99,0,'Madhya Pradesh','MAD','MD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(428,1,99,0,'Maharashtra','MAH','MH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(429,1,99,0,'Manipur','MAN','MN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(430,1,99,0,'Meghalaya','MEG','ME',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(431,1,99,0,'Mizoram','MIZ','MI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(432,1,99,0,'Nagaland','NAG','NA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(433,1,99,0,'Orissa','ORI','OR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(434,1,99,0,'Pondicherry','PON','PO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(435,1,99,0,'Punjab','PUN','PU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(436,1,99,0,'Rajasthan','RAJ','RA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(437,1,99,0,'Sikkim','SIK','SI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(438,1,99,0,'Tamil Nadu','TAM','TA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(439,1,99,0,'Tripura','TRI','TR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(440,1,99,0,'Uttaranchal','UAR','UA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(441,1,99,0,'Uttar Pradesh','UTT','UT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(442,1,99,0,'West Bengal','WES','WE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(443,1,101,0,'Ahmadi va Kohkiluyeh','BOK','BO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(444,1,101,0,'Ardabil','ARD','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(445,1,101,0,'Azarbayjan-e Gharbi','AZG','AG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(446,1,101,0,'Azarbayjan-e Sharqi','AZS','AS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(447,1,101,0,'Bushehr','BUS','BU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(448,1,101,0,'Chaharmahal va Bakhtiari','CMB','CM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(449,1,101,0,'Esfahan','ESF','ES',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(450,1,101,0,'Fars','FAR','FA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(451,1,101,0,'Gilan','GIL','GI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(452,1,101,0,'Gorgan','GOR','GO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(453,1,101,0,'Hamadan','HAM','HA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(454,1,101,0,'Hormozgan','HOR','HO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(455,1,101,0,'Ilam','ILA','IL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(456,1,101,0,'Kerman','KER','KE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(457,1,101,0,'Kermanshah','BAK','BA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(458,1,101,0,'Khorasan-e Junoubi','KHJ','KJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(459,1,101,0,'Khorasan-e Razavi','KHR','KR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(460,1,101,0,'Khorasan-e Shomali','KHS','KS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(461,1,101,0,'Khuzestan','KHU','KH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(462,1,101,0,'Kordestan','KOR','KO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(463,1,101,0,'Lorestan','LOR','LO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(464,1,101,0,'Markazi','MAR','MR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(465,1,101,0,'Mazandaran','MAZ','MZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(466,1,101,0,'Qazvin','QAS','QA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(467,1,101,0,'Qom','QOM','QO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(468,1,101,0,'Semnan','SEM','SE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(469,1,101,0,'Sistan va Baluchestan','SBA','SB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(470,1,101,0,'Tehran','TEH','TE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(471,1,101,0,'Yazd','YAZ','YA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(472,1,101,0,'Zanjan','ZAN','ZA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(535,1,84,0,'ΛΕΥΚΑΔΑΣ','ΛΕΥ','ΛΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(532,1,84,0,'ΛΑΡΙΣΑΣ','ΛΑΡ','ΛΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(504,1,84,0,'ΑΡΚΑΔΙΑΣ','ΑΡΚ','ΑΚ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(503,1,84,0,'ΑΡΓΟΛΙΔΑΣ','ΑΡΓ','ΑΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(533,1,84,0,'ΛΑΣΙΘΙΟΥ','ΛΑΣ','ΛΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(534,1,84,0,'ΛΕΣΒΟΥ','ΛΕΣ','ΛΣ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(530,1,84,0,'ΚΥΚΛΑΔΩΝ','ΚΥΚ','ΚΥ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(553,1,84,0,'ΑΙΤΩΛΟΑΚΑΡΝΑΝΙΑΣ','ΑΙΤ','ΑΙ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(529,1,84,0,'ΚΟΡΙΝΘΙΑΣ','ΚΟΡ','ΚΟ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(531,1,84,0,'ΛΑΚΩΝΙΑΣ','ΛΑΚ','ΛK',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(517,1,84,0,'ΗΜΑΘΙΑΣ','ΗΜΑ','ΗΜ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(518,1,84,0,'ΗΡΑΚΛΕΙΟΥ','ΗΡΑ','ΗΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(519,1,84,0,'ΘΕΣΠΡΩΤΙΑΣ','ΘΕΠ','ΘΠ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(520,1,84,0,'ΘΕΣΣΑΛΟΝΙΚΗΣ','ΘΕΣ','ΘΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(521,1,84,0,'ΙΩΑΝΝΙΝΩΝ','ΙΩΑ','ΙΩ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(522,1,84,0,'ΚΑΒΑΛΑΣ','ΚΑΒ','ΚΒ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(523,1,84,0,'ΚΑΡΔΙΤΣΑΣ','ΚΑΡ','ΚΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(524,1,84,0,'ΚΑΣΤΟΡΙΑΣ','ΚΑΣ','ΚΣ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(525,1,84,0,'ΚΕΡΚΥΡΑΣ','ΚΕΡ','ΚΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(526,1,84,0,'ΚΕΦΑΛΛΗΝΙΑΣ','ΚΕΦ','ΚΦ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(527,1,84,0,'ΚΙΛΚΙΣ','ΚΙΛ','ΚΙ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(528,1,84,0,'ΚΟΖΑΝΗΣ','ΚΟΖ','ΚZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(507,1,84,0,'ΑΧΑΪΑΣ','ΑΧΑ','ΑΧ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(508,1,84,0,'ΒΟΙΩΤΙΑΣ','ΒΟΙ','ΒΟ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(509,1,84,0,'ΓΡΕΒΕΝΩΝ','ΓΡΕ','ΓΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(510,1,84,0,'ΔΡΑΜΑΣ','ΔΡΑ','ΔΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(511,1,84,0,'ΔΩΔΕΚΑΝΗΣΟΥ','ΔΩΔ','ΔΩ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(512,1,84,0,'ΕΒΡΟΥ','ΕΒΡ','ΕΒ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(513,1,84,0,'ΕΥΒΟΙΑΣ','ΕΥΒ','ΕΥ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(514,1,84,0,'ΕΥΡΥΤΑΝΙΑΣ','ΕΥΡ','ΕΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(515,1,84,0,'ΖΑΚΥΝΘΟΥ','ΖΑΚ','ΖΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(516,1,84,0,'ΗΛΕΙΑΣ','ΗΛΕ','ΗΛ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(505,1,84,0,'ΑΡΤΑΣ','ΑΡΤ','ΑΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(506,1,84,0,'ΑΤΤΙΚΗΣ','ΑΤΤ','ΑΤ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(536,1,84,0,'ΜΑΓΝΗΣΙΑΣ','ΜΑΓ','ΜΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(537,1,84,0,'ΜΕΣΣΗΝΙΑΣ','ΜΕΣ','ΜΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(538,1,84,0,'ΞΑΝΘΗΣ','ΞΑΝ','ΞΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(539,1,84,0,'ΠΕΛΛΗΣ','ΠΕΛ','ΠΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(540,1,84,0,'ΠΙΕΡΙΑΣ','ΠΙΕ','ΠΙ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(541,1,84,0,'ΠΡΕΒΕΖΑΣ','ΠΡΕ','ΠΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(542,1,84,0,'ΡΕΘΥΜΝΗΣ','ΡΕΘ','ΡΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(543,1,84,0,'ΡΟΔΟΠΗΣ','ΡΟΔ','ΡΟ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(544,1,84,0,'ΣΑΜΟΥ','ΣΑΜ','ΣΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(545,1,84,0,'ΣΕΡΡΩΝ','ΣΕΡ','ΣΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(546,1,84,0,'ΤΡΙΚΑΛΩΝ','ΤΡΙ','ΤΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(547,1,84,0,'ΦΘΙΩΤΙΔΑΣ','ΦΘΙ','ΦΘ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(548,1,84,0,'ΦΛΩΡΙΝΑΣ','ΦΛΩ','ΦΛ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(549,1,84,0,'ΦΩΚΙΔΑΣ','ΦΩΚ','ΦΩ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(550,1,84,0,'ΧΑΛΚΙΔΙΚΗΣ','ΧΑΛ','ΧΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(551,1,84,0,'ΧΑΝΙΩΝ','ΧΑΝ','ΧΝ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(552,1,84,0,'ΧΙΟΥ','ΧΙΟ','ΧΙ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(569,1,81,0,'Schleswig-Holstein','SHO','SH',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(554,1,81,0,'Freie und Hansestadt Hamburg','HAM','HH',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(555,1,81,0,'Niedersachsen','NIS','NI',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(556,1,81,0,'Freie Hansestadt Bremen','HBR','HB',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(557,1,81,0,'Nordrhein-Westfalen','NRW','NW',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(558,1,81,0,'Hessen','HES','HE',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(559,1,81,0,'Rheinland-Pfalz','RLP','RP',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(560,1,81,0,'Baden-Württemberg','BWÜ','BW',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(561,1,81,0,'Freistaat Bayern','BAV','BY',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(562,1,81,0,'Saarland','SLA','SL',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(563,1,81,0,'Berlin','BER','BE',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(564,1,81,0,'Brandenburg','BRB','BB',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(565,1,81,0,'Mecklenburg-Vorpommern','MVO','MV',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(566,1,81,0,'Freistaat Sachsen','SAC','SN',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(567,1,81,0,'Sachsen-Anhalt','SAA','ST',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(568,1,81,0,'Freistaat Thüringen','THÜ','TH',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(570,1,176,0,'Адыгея Республика','AD','01',1,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(571,1,176,0,'Алтай Республика','AL','04',2,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(572,1,176,0,'Алтайский край','ALT','22',3,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(573,1,176,0,'Амурская область','AMU','28',4,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(574,1,176,0,'Архангельская область','ARK','29',5,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(575,1,176,0,'Астраханская область','AST','30',6,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(576,1,176,0,'Башкортостан Республика','BA','02',7,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(577,1,176,0,'Белгородская область','BEL','31',8,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(578,1,176,0,'Брянская область','BRY','32',9,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(579,1,176,0,'Бурятия Республика','BU','03',10,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(580,1,176,0,'Владимирская область','VLA','33',11,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(581,1,176,0,'Волгоградская область','VGG','34',12,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(582,1,176,0,'Вологодская область','VLG','35',13,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(583,1,176,0,'Воронежская область','VOR','36',14,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(584,1,176,0,'Дагестан Республика','DA','05',15,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(585,1,176,0,'Еврейская автономная область','YEV','79',16,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(586,1,176,0,'Забайкальский край','ZAB','75',17,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(587,1,176,0,'Ивановская область','IVA','37',18,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(588,1,176,0,'Ингушетия Республика','IN','06',19,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(589,1,176,0,'Иркутская область','IRK','38',20,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(590,1,176,0,'Кабардино-Балкарская Республика','KB','07',21,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(591,1,176,0,'Калининградская область','KGD','39',22,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(592,1,176,0,'Калмыкия Республика','KL','08',23,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(593,1,176,0,'Калужская область','KLU','40',24,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(594,1,176,0,'Камчатский край','KAM','41',25,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(595,1,176,0,'Карачаево-Черкесская Республика','KC','09',26,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(596,1,176,0,'Карелия Республика','KR','10',27,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(597,1,176,0,'Кемеровская область','KEM','42',28,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(598,1,176,0,'Кировская область','KIR','43',29,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(599,1,176,0,'Коми Республика','KO','11',30,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(600,1,176,0,'Костромская область','KOS','44',31,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(601,1,176,0,'Краснодарский край','KDA','23',32,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(602,1,176,0,'Красноярский край','KIA','24',33,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(603,1,176,0,'Курганская область','KGN','45',34,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(604,1,176,0,'Курская область','KRS','46',35,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(605,1,176,0,'Ленинградская область','LEN','47',36,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(606,1,176,0,'Липецкая область','LIP','48',37,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(607,1,176,0,'Магаданская область','MAG','49',38,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(608,1,176,0,'Марий Эл Республика','ME','12',39,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(609,1,176,0,'Мордовия Республика','MO','13',40,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(610,1,176,0,'Москва','MOW','77',41,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(611,1,176,0,'Московская область','MOS','50',42,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(612,1,176,0,'Мурманская область','MUR','51',43,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(613,1,176,0,'Ненецкий автономный округ','NEN','83',44,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(614,1,176,0,'Нижегородская область','NIZ','52',45,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(615,1,176,0,'Новгородская область','NGR','53',46,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(616,1,176,0,'Новосибирская область','NVS','54',47,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(617,1,176,0,'Омская область','OMS','55',48,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(618,1,176,0,'Оренбургская область','ORE','56',49,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(619,1,176,0,'Орловская область','ORL','57',50,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(620,1,176,0,'Пензенская область','PNZ','58',51,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(621,1,176,0,'Пермский край','PER','59',52,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(622,1,176,0,'Приморский край','PRI','25',53,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(623,1,176,0,'Псковская область','PSK','60',54,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(624,1,176,0,'Ростовская область','ROS','61',55,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(625,1,176,0,'Рязанская область','RYA','62',56,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(626,1,176,0,'Самарская область','SAM','63',57,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(627,1,176,0,'Санкт-Петербург','SPE','78',58,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(628,1,176,0,'Саратовская область','SAR','64',59,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(629,1,176,0,'Саха (Якутия) Республика','SA','14',60,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(630,1,176,0,'Сахалинская область','SAK','65',61,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(631,1,176,0,'Свердловская область','SVE','66',62,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(632,1,176,0,'Северная Осетия-Алания Республика','SE','15',63,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(633,1,176,0,'Смоленская область','SMO','67',64,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(634,1,176,0,'Ставропольский край','STA','26',65,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(635,1,176,0,'Тамбовская область','TAM','68',66,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(636,1,176,0,'Татарстан Республика','TA','16',67,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(637,1,176,0,'Тверская область','TVE','69',68,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(638,1,176,0,'Томская область','TOM','70',69,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(639,1,176,0,'Тульская область','TUL','71',70,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(640,1,176,0,'Тыва Республика','TY','17',71,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(641,1,176,0,'Тюменская область','TYU','72',72,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(642,1,176,0,'Удмуртская Республика','UD','18',73,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(643,1,176,0,'Ульяновская область','ULY','73',74,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(644,1,176,0,'Хакасия Республика','KK','19',75,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(645,1,176,0,'Челябинская область','CHE','74',76,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(646,1,176,0,'Чеченская Республика','CE','20',77,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(647,1,176,0,'Чувашская Республика','CU','21',78,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(648,1,176,0,'Чукотский автономный округ','CHU','87',79,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(649,1,176,0,'Хабаровский край','KHA','27',80,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(650,1,176,0,'Ханты-Мансийский автономный округ','KHM','86',81,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(651,1,176,0,'Ямало-Ненецкий автономный округ','YAN','89',82,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(652,1,176,0,'Ярославская область','YAR','76',83,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(653,1,209,0,'กระบี่','กบ','กบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(654,1,209,0,'กรุงเทพมหานคร','กทม','กท',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(655,1,209,0,'กาญจนบุรี','กจ','กจ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(656,1,209,0,'กาฬสินธุ์','กส','กส',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(657,1,209,0,'กำแพงเพชร','กพ','กพ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(658,1,209,0,'ขอนแก่น','ขก','ขก',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(659,1,209,0,'จันทบุรี','จบ','จบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(660,1,209,0,'ฉะเชิงเทรา','ฉช','ฉช',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(661,1,209,0,'ชลบุรี','ชบ','ชบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(662,1,209,0,'ชัยนาท','ชน','ชน',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(663,1,209,0,'ชัยภูมิ','ชย','ชย',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(664,1,209,0,'ชุมพร','ชพ','ชพ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(665,1,209,0,'เชียงราย','ชร','ชร',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(666,1,209,0,'เชียงใหม่','ชม','ชม',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(667,1,209,0,'ตรัง','ตง','ตง',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(668,1,209,0,'ตราด','ตร','ตร',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(669,1,209,0,'ตาก','ตก','ตก',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(670,1,209,0,'นครนายก','นย','นย',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(671,1,209,0,'นครปฐม','นฐ','นฐ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(672,1,209,0,'นครพนม','นพ','นพ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(673,1,209,0,'นครราชสีมา','นม','นม',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(674,1,209,0,'นครศรีธรรมราช','นศ','นศ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(675,1,209,0,'นครสวรรค์','นว','นว',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(676,1,209,0,'นนทบุรี','นบ','นบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(677,1,209,0,'นราธิวาส','นธ','นธ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(678,1,209,0,'น่าน','นน','นน',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(679,1,209,0,'บุรีรัมย์','บร','บร',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(680,1,209,0,'บึงกาฬ','บก','บก',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(681,1,209,0,'ปทุมธานี','ปท','ปท',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(682,1,209,0,'ประจวบคีรีขันธ์','ปข','ปข',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(683,1,209,0,'ปราจีนบุรี','ปจ','ปจ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(684,1,209,0,'ปัตตานี','ปน','ปน',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(685,1,209,0,'พระนครศรีอยุธยา','อย','อย',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(686,1,209,0,'พังงา','พง','พง',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(687,1,209,0,'พัทลุง','พท','พท',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(688,1,209,0,'พิจิตร','พจ','พจ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(689,1,209,0,'พิษณุโลก','พล','พล',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(690,1,209,0,'เพชรบุรี','พบ','พบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(691,1,209,0,'เพชรบูรณ์','พช','พช',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(692,1,209,0,'แพร่','พร','พร',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(693,1,209,0,'พะเยา','พย','พย',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(694,1,209,0,'ภูเก็ต','ภก','ภก',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(695,1,209,0,'มหาสารคาม','มค','มค',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(696,1,209,0,'แม่ฮ่องสอน','มส','มส',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(697,1,209,0,'มุกดาหาร','มห','มห',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(698,1,209,0,'ยะลา','ยล','ยล',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(699,1,209,0,'ยโสธร','ยส','ยส',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(700,1,209,0,'ร้อยเอ็ด','รอ','รอ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(701,1,209,0,'ระนอง','รน','รน',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(702,1,209,0,'ระยอง','รย','รย',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(703,1,209,0,'ราชบุรี','รบ','รบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(704,1,209,0,'ลพบุรี','ลบ','ลบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(705,1,209,0,'ลำปาง','ลป','ลป',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(706,1,209,0,'ลำพูน','ลพ','ลพ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(707,1,209,0,'เลย','ลย','ลย',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(708,1,209,0,'ศรีสะเกษ','ศก','ศก',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(709,1,209,0,'สกลนคร','สน','สน',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(710,1,209,0,'สงขลา','สข','สข',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(711,1,209,0,'สตูล','สต','สต',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(712,1,209,0,'สมุทรปราการ','สป','สป',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(713,1,209,0,'สมุทรสงคราม','สส','สส',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(714,1,209,0,'สมุทรสาคร','สค','สค',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(715,1,209,0,'สระบุรี','สบ','สบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(716,1,209,0,'สระแก้ว','สก','สก',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(717,1,209,0,'สิงห์บุรี','สห','สห',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(718,1,209,0,'สุโขทัย','สท','สท',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(719,1,209,0,'สุพรรณบุรี','สพ','สพ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(720,1,209,0,'สุราษฎร์ธานี','สฎ','สฎ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(721,1,209,0,'สุรินทร์','สร','สร',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(722,1,209,0,'หนองคาย','นค','นค',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(723,1,209,0,'หนองบัวลำภู','นภ','นภ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(724,1,209,0,'อ่างทอง','อท','อท',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(725,1,209,0,'อุดรธานี','อด','อด',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(726,1,209,0,'อุตรดิตถ์','อต','อต',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(727,1,209,0,'อุทัยธานี','อน','อน',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(728,1,209,0,'อุบลราชธานี','อบ','อบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(729,1,209,0,'อำนาจเจริญ','อจ','อจ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `yami_virtuemart_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_userfield_values`
--

DROP TABLE IF EXISTS `yami_virtuemart_userfield_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_userfield_values` (
  `virtuemart_userfield_value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_userfield_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `fieldtitle` char(255) NOT NULL DEFAULT '',
  `fieldvalue` char(255) NOT NULL DEFAULT '',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_userfield_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='Holds the different values for dropdown and radio lists';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_userfield_values`
--

LOCK TABLES `yami_virtuemart_userfield_values` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_userfield_values` DISABLE KEYS */;
INSERT INTO `yami_virtuemart_userfield_values` VALUES (1,10,'Mr','Mr',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,10,'Mrs','Mrs',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,26,'None','',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,26,'Non-resident (Canada)','R',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(5,26,'Federal government (United States)','A',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(6,26,'State government (United States)','B',0,2,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(7,26,'Tribe / Status Indian / Indian Band (both)','C',0,3,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(8,26,'Foreign diplomat (both)','D',0,4,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(9,26,'Charitable or benevolent org (both)','E',0,5,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(10,26,'Religious or educational org (both)','F',0,6,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(11,26,'Resale (both)','G',0,7,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(12,26,'Commercial agricultural production (both)','H',0,8,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(13,26,'Industrial production / manufacturer (both)','I',0,9,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(14,26,'Direct pay permit (United States)','J',0,10,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(15,26,'Direct mail (United States)','K',0,11,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(16,26,'Other (both)','L',0,12,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(17,26,'Local government (United States)','N',0,13,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(18,26,'Commercial aquaculture (Canada)','P',0,14,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(19,26,'Commercial Fishery (Canada)','Q',0,15,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `yami_virtuemart_userfield_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_userfields`
--

DROP TABLE IF EXISTS `yami_virtuemart_userfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_userfields` (
  `virtuemart_userfield_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `userfield_jplugin_id` int(11) NOT NULL DEFAULT '0',
  `name` char(255) NOT NULL DEFAULT '',
  `title` char(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `type` char(70) NOT NULL DEFAULT '',
  `maxlength` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `cols` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `value` char(255) DEFAULT NULL,
  `default` char(255) DEFAULT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT '0',
  `shipment` tinyint(1) NOT NULL DEFAULT '0',
  `account` tinyint(1) NOT NULL DEFAULT '1',
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `calculated` tinyint(1) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `params` varchar(17500) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_userfield_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='Holds the fields for the user information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_userfields`
--

LOCK TABLES `yami_virtuemart_userfields` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_userfields` DISABLE KEYS */;
INSERT INTO `yami_virtuemart_userfields` VALUES (1,0,0,'email','COM_VIRTUEMART_REGISTER_EMAIL','','emailaddress',100,30,1,NULL,NULL,NULL,NULL,1,0,1,0,0,1,NULL,4,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,0,0,'password','COM_VIRTUEMART_SHOPPER_FORM_PASSWORD_1','','password',25,30,1,NULL,NULL,NULL,NULL,1,0,1,0,0,1,NULL,10,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,0,0,'password2','COM_VIRTUEMART_SHOPPER_FORM_PASSWORD_2','','password',25,30,1,NULL,NULL,NULL,NULL,1,0,1,0,0,1,NULL,12,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,0,0,'agreed','COM_VIRTUEMART_I_AGREE_TO_TOS','','checkbox',NULL,NULL,1,NULL,NULL,NULL,NULL,1,0,1,0,0,1,NULL,13,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(5,0,0,'name','COM_VIRTUEMART_USER_DISPLAYED_NAME','','text',25,30,1,0,0,'',NULL,1,0,1,0,0,1,'',8,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(6,0,0,'username','COM_VIRTUEMART_USERNAME','','text',25,30,1,0,0,'',NULL,1,0,1,0,0,1,'',6,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(7,0,0,'address_type_name','COM_VIRTUEMART_USER_FORM_ADDRESS_LABEL','','text',32,30,1,NULL,NULL,NULL,NULL,0,1,0,0,0,1,NULL,16,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(8,0,0,'delimiter_billto','COM_VIRTUEMART_USER_FORM_BILLTO_LBL','','delimiter',25,30,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,NULL,18,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(9,0,0,'company','COM_VIRTUEMART_SHOPPER_FORM_COMPANY_NAME','','text',64,30,0,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,20,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(10,0,0,'title','COM_VIRTUEMART_SHOPPER_FORM_TITLE','','select',0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,1,NULL,22,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(11,0,0,'first_name','COM_VIRTUEMART_SHOPPER_FORM_FIRST_NAME','','text',32,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,24,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(12,0,0,'middle_name','COM_VIRTUEMART_SHOPPER_FORM_MIDDLE_NAME','','text',32,30,0,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,26,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(13,0,0,'last_name','COM_VIRTUEMART_SHOPPER_FORM_LAST_NAME','','text',32,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,28,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(14,0,0,'address_1','COM_VIRTUEMART_SHOPPER_FORM_ADDRESS_1','','text',64,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,30,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(15,0,0,'address_2','COM_VIRTUEMART_SHOPPER_FORM_ADDRESS_2','','text',64,30,0,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,32,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(16,0,0,'zip','COM_VIRTUEMART_SHOPPER_FORM_ZIP','','text',32,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,34,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(17,0,0,'city','COM_VIRTUEMART_SHOPPER_FORM_CITY','','text',32,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,36,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(18,0,0,'virtuemart_country_id','COM_VIRTUEMART_SHOPPER_FORM_COUNTRY','','select',0,0,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,38,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(19,0,0,'virtuemart_state_id','COM_VIRTUEMART_SHOPPER_FORM_STATE','','select',0,0,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,40,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(20,0,0,'phone_1','COM_VIRTUEMART_SHOPPER_FORM_PHONE','','text',32,30,0,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,42,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(21,0,0,'phone_2','COM_VIRTUEMART_SHOPPER_FORM_PHONE2','','text',32,30,0,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,44,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(22,0,0,'fax','COM_VIRTUEMART_SHOPPER_FORM_FAX','','text',32,30,0,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,46,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(23,0,0,'delimiter_sendregistration','COM_VIRTUEMART_BUTTON_SEND_REG','','delimiter',25,30,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,2,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(24,0,0,'delimiter_userinfo','COM_VIRTUEMART_ORDER_PRINT_CUST_INFO_LBL','','delimiter',NULL,NULL,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,NULL,14,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(25,1,0,'tax_exemption_number','COM_VIRTUEMART_SHOPPER_FORM_TAXEXEMPTION_NBR','Vendors can set here a tax exemption number for a shopper. This field is only changeable by administrators.','text',10,0,0,0,0,NULL,NULL,0,0,1,1,0,0,NULL,48,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(26,1,0,'tax_usage_type','COM_VIRTUEMART_SHOPPER_FORM_TAX_USAGE','Federal, national, educational, public, or similar often get a special tax. This field is only writable by administrators.','select',0,0,0,0,0,NULL,NULL,0,0,1,1,0,0,NULL,50,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `yami_virtuemart_userfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_userinfos`
--

DROP TABLE IF EXISTS `yami_virtuemart_userinfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_userinfos` (
  `virtuemart_userinfo_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `address_type` char(2) NOT NULL DEFAULT '',
  `address_type_name` char(32) NOT NULL DEFAULT '',
  `name` char(64) DEFAULT NULL,
  `company` char(64) DEFAULT NULL,
  `title` char(32) DEFAULT NULL,
  `last_name` char(32) DEFAULT NULL,
  `first_name` char(32) DEFAULT NULL,
  `middle_name` char(32) DEFAULT NULL,
  `phone_1` char(24) DEFAULT NULL,
  `phone_2` char(24) DEFAULT NULL,
  `fax` char(24) DEFAULT NULL,
  `address_1` char(64) NOT NULL DEFAULT '',
  `address_2` char(64) DEFAULT NULL,
  `city` char(32) NOT NULL DEFAULT '',
  `virtuemart_state_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `zip` char(32) NOT NULL DEFAULT '',
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_userinfo_id`),
  KEY `idx_userinfo_virtuemart_user_id` (`virtuemart_userinfo_id`,`virtuemart_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Customer Information, BT = BillTo and ST = ShipTo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_userinfos`
--

LOCK TABLES `yami_virtuemart_userinfos` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_userinfos` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_userinfos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_vendor_medias`
--

DROP TABLE IF EXISTS `yami_virtuemart_vendor_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_vendor_medias` (
  `id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`,`virtuemart_media_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_vendor_medias`
--

LOCK TABLES `yami_virtuemart_vendor_medias` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_vendor_medias` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_vendor_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_vendors`
--

DROP TABLE IF EXISTS `yami_virtuemart_vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_vendors` (
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_name` char(64) DEFAULT NULL,
  `vendor_currency` int(11) DEFAULT NULL,
  `vendor_accepted_currencies` varchar(1536) NOT NULL DEFAULT '',
  `vendor_params` varchar(17000) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_vendor_id`),
  KEY `idx_vendor_name` (`vendor_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Vendors manage their products in your store';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_vendors`
--

LOCK TABLES `yami_virtuemart_vendors` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_vendors` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_vendors_en_gb`
--

DROP TABLE IF EXISTS `yami_virtuemart_vendors_en_gb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_vendors_en_gb` (
  `virtuemart_vendor_id` int(1) unsigned NOT NULL,
  `vendor_store_desc` text NOT NULL,
  `vendor_terms_of_service` text NOT NULL,
  `vendor_legal_info` text NOT NULL,
  `vendor_store_name` char(180) NOT NULL DEFAULT '',
  `vendor_phone` char(26) NOT NULL DEFAULT '',
  `vendor_url` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_vendor_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_vendors_en_gb`
--

LOCK TABLES `yami_virtuemart_vendors_en_gb` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_vendors_en_gb` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_vendors_en_gb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_vmuser_shoppergroups`
--

DROP TABLE IF EXISTS `yami_virtuemart_vmuser_shoppergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_vmuser_shoppergroups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for users to shopper group';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_vmuser_shoppergroups`
--

LOCK TABLES `yami_virtuemart_vmuser_shoppergroups` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_vmuser_shoppergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_vmuser_shoppergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_vmusers`
--

DROP TABLE IF EXISTS `yami_virtuemart_vmusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_vmusers` (
  `virtuemart_user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `user_is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `customer_number` char(32) DEFAULT NULL,
  `perms` char(40) NOT NULL DEFAULT 'shopper',
  `virtuemart_paymentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `virtuemart_shipmentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_user_id`),
  UNIQUE KEY `i_virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_vendor_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=902 DEFAULT CHARSET=utf8 COMMENT='Holds the unique user data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_vmusers`
--

LOCK TABLES `yami_virtuemart_vmusers` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_vmusers` DISABLE KEYS */;
INSERT INTO `yami_virtuemart_vmusers` VALUES (901,1,1,NULL,'admin',NULL,NULL,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `yami_virtuemart_vmusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_waitingusers`
--

DROP TABLE IF EXISTS `yami_virtuemart_waitingusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_waitingusers` (
  `virtuemart_waitinguser_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `notify_email` char(150) NOT NULL DEFAULT '',
  `notified` tinyint(1) NOT NULL DEFAULT '0',
  `notify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_waitinguser_id`),
  KEY `virtuemart_product_id` (`virtuemart_product_id`),
  KEY `notify_email` (`notify_email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores notifications, users waiting f. products out of stock';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_waitingusers`
--

LOCK TABLES `yami_virtuemart_waitingusers` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_waitingusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_waitingusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_virtuemart_worldzones`
--

DROP TABLE IF EXISTS `yami_virtuemart_worldzones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_virtuemart_worldzones` (
  `virtuemart_worldzone_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) DEFAULT NULL,
  `zone_name` char(255) DEFAULT NULL,
  `zone_cost` decimal(10,2) DEFAULT NULL,
  `zone_limit` decimal(10,2) DEFAULT NULL,
  `zone_description` varchar(18000) DEFAULT NULL,
  `zone_tax_rate` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_worldzone_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The Zones managed by the Zone Shipment Module';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_virtuemart_worldzones`
--

LOCK TABLES `yami_virtuemart_worldzones` WRITE;
/*!40000 ALTER TABLE `yami_virtuemart_worldzones` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_virtuemart_worldzones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_weblinks`
--

DROP TABLE IF EXISTS `yami_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_weblinks`
--

LOCK TABLES `yami_weblinks` WRITE;
/*!40000 ALTER TABLE `yami_weblinks` DISABLE KEYS */;
INSERT INTO `yami_weblinks` VALUES (1,32,0,'Joomla!','joomla','http://www.joomla.org','<p>Home of Joomla!</p>','0000-00-00 00:00:00',3,1,0,'0000-00-00 00:00:00',1,0,1,1,'{\"target\":\"0\",\"count_clicks\":\"\"}','en-GB','2011-01-01 00:00:01',901,'','2011-01-01 00:00:01',42,'','','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,33,0,'php.net','php','http://www.php.net','<p>The language that Joomla! is developed in</p>','0000-00-00 00:00:00',6,1,0,'0000-00-00 00:00:00',1,0,1,1,'{\"target\":\"\",\"count_clicks\":\"\"}','en-GB','2011-01-01 00:00:01',901,'','2011-01-01 00:00:01',42,'','','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,33,0,'MySQL','mysql','http://www.mysql.com','<p>The most commonly used database for Joomla!.</p>','0000-00-00 00:00:00',1,1,0,'0000-00-00 00:00:00',2,0,1,1,'{\"target\":\"\",\"width\":\"\",\"height\":\"\",\"count_clicks\":\"\"}','en-GB','2011-01-01 00:00:01',901,'','2012-01-17 16:19:43',42,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,32,0,'OpenSourceMatters','opensourcematters','http://www.opensourcematters.org','<p>Home of OSM</p>','0000-00-00 00:00:00',11,1,0,'0000-00-00 00:00:00',3,0,1,1,'{\"target\":\"0\",\"count_clicks\":\"\"}','en-GB','2011-01-01 00:00:01',901,'','2011-01-01 00:00:01',42,'','','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,32,0,'Joomla! - Forums','joomla-forums','http://forum.joomla.org','<p>Joomla! Forums</p>','0000-00-00 00:00:00',4,1,0,'0000-00-00 00:00:00',2,0,1,1,'{\"target\":\"0\",\"count_clicks\":\"\"}','en-GB','2011-01-01 00:00:01',901,'','2011-01-01 00:00:01',42,'','','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,33,0,'Ohloh Tracking of Joomla!','ohloh-tracking-of-joomla','http://www.ohloh.net/projects/20','<p>Objective reports from Ohloh about Joomla\'s development activity. Joomla! has some star developers with serious kudos.</p>','0000-00-00 00:00:00',1,1,0,'0000-00-00 00:00:00',3,0,1,1,'{\"target\":\"0\",\"count_clicks\":\"\"}','en-GB','2011-01-01 00:00:01',901,'','2011-01-01 00:00:01',42,'','','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,31,0,'Baw Baw National Park','baw-baw-national-park','http://www.parkweb.vic.gov.au/1park_display.cfm?park=44','<p>Park of the Austalian Alps National Parks system, Baw Baw  features sub alpine vegetation, beautiful views, and opportunities for hiking, skiing and other outdoor activities.</p>','0000-00-00 00:00:00',0,1,0,'0000-00-00 00:00:00',1,0,1,1,'{\"target\":\"0\",\"count_clicks\":\"\"}','en-GB','2011-01-01 00:00:01',901,'','2011-01-01 00:00:01',42,'','','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,31,0,'Kakadu','kakadu','http://www.environment.gov.au/parks/kakadu/index.html','<p>Kakadu is known for both its cultural heritage and its natural features. It is one of a small number of places listed as World Heritage Places for both reasons. Extensive rock art is found there.</p>','0000-00-00 00:00:00',0,1,0,'0000-00-00 00:00:00',2,0,1,1,'{\"target\":\"0\",\"count_clicks\":\"\"}','en-GB','2011-01-01 00:00:01',901,'','2011-01-01 00:00:01',42,'','','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,31,0,'Pulu Keeling','pulu-keeling','http://www.environment.gov.au/parks/cocos/index.html','<p>Located on an atoll 2000 kilometers north of Perth, Pulu Keeling is Australia\'s smallest national park.</p>','0000-00-00 00:00:00',0,1,0,'0000-00-00 00:00:00',3,0,1,1,'{\"target\":\"0\",\"count_clicks\":\"\"}','en-GB','2011-01-01 00:00:01',901,'','2011-01-01 00:00:01',42,'','','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}',0,'','2010-07-10 23:44:03','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `yami_weblinks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-06-18 16:56:01
