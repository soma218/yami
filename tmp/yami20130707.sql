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
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_assets`
--

LOCK TABLES `yami_assets` WRITE;
/*!40000 ALTER TABLE `yami_assets` DISABLE KEYS */;
INSERT INTO `yami_assets` VALUES (1,0,1,606,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":[],\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,2,3,1,'com_admin','com_admin','{}'),(3,1,4,11,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,12,13,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,14,15,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,16,17,1,'com_config','com_config','{}'),(7,1,18,87,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(8,1,88,449,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,450,451,1,'com_cpanel','com_cpanel','{}'),(10,1,452,453,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,454,455,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,456,457,1,'com_login','com_login','{}'),(13,1,458,459,1,'com_mailto','com_mailto','{}'),(14,1,460,461,1,'com_massmail','com_massmail','{}'),(15,1,462,463,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1},\"core.edit\":[],\"core.edit.state\":[]}'),(16,1,464,465,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,37,38,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,468,469,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,470,477,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(20,1,478,479,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,480,481,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,482,483,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,484,485,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,486,489,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(25,1,490,507,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1,\"10\":0,\"12\":0},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),(26,1,508,509,1,'com_wrapper','com_wrapper','{}'),(33,1,570,571,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,8,105,108,2,'com_content.category.9','Uncategorised','{\"core.create\":{\"10\":0,\"12\":0},\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(35,3,7,8,2,'com_banners.category.10','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(36,7,23,24,2,'com_contact.category.11','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(37,19,473,474,2,'com_newsfeeds.category.12','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(38,25,497,498,2,'com_weblinks.category.13','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(39,8,109,286,2,'com_content.category.14','Sample Data-Articles','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(40,3,9,10,2,'com_banners.category.15','Sample Data-Banners','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(41,7,25,86,2,'com_contact.category.16','Sample Data-Contact','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(42,19,475,476,2,'com_newsfeeds.category.17','Sample Data-Newsfeeds','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(43,25,499,506,2,'com_weblinks.category.18','Sample Data-Weblinks','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(44,39,110,237,3,'com_content.category.19','Joomla!','{\"core.create\":{\"10\":0,\"12\":0},\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(45,44,111,214,4,'com_content.category.20','Extensions','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(46,45,112,125,5,'com_content.category.21','Components','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(47,45,126,181,5,'com_content.category.22','Modules','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(48,45,182,193,5,'com_content.category.23','Templates','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(49,45,194,195,5,'com_content.category.24','Languages','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(50,45,196,213,5,'com_content.category.25','Plugins','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(51,39,238,267,3,'com_content.category.26','Park Site','{\"core.create\":{\"10\":0,\"12\":0},\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(52,51,239,244,4,'com_content.category.27','Park Blog','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(53,51,245,266,4,'com_content.category.28','Photo Gallery','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(54,39,268,281,3,'com_content.category.29','Fruit Shop Site','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(55,54,269,274,4,'com_content.category.30','Growers','{\"core.create\":{\"12\":0},\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":{\"10\":1}}'),(56,43,500,501,3,'com_weblinks.category.31','Park Links','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(57,43,502,505,3,'com_weblinks.category.32','Joomla! Specific Links','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(58,57,503,504,4,'com_weblinks.category.33','Other Resources','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(59,41,26,27,3,'com_contact.category.34','Park Site','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(60,41,28,85,3,'com_contact.category.35','Shop Site','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(61,60,29,30,4,'com_contact.category.36','Staff','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(62,60,31,84,4,'com_contact.category.37','Fruit Encyclopedia','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(63,62,32,33,5,'com_contact.category.38','A','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(64,62,34,35,5,'com_contact.category.39','B','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(65,62,36,37,5,'com_contact.category.40','C','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(66,62,38,39,5,'com_contact.category.41','D','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(67,62,40,41,5,'com_contact.category.42','E','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(68,62,42,43,5,'com_contact.category.43','F','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(69,62,44,45,5,'com_contact.category.44','G','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(70,62,46,47,5,'com_contact.category.45','H','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(71,62,48,49,5,'com_contact.category.46','I','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(72,62,50,51,5,'com_contact.category.47','J','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(73,62,52,53,5,'com_contact.category.48','K','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(74,62,54,55,5,'com_contact.category.49','L','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(75,62,56,57,5,'com_contact.category.50','M','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(76,62,58,59,5,'com_contact.category.51','N','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(77,62,60,61,5,'com_contact.category.52','O','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(78,62,62,63,5,'com_contact.category.53','P','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(79,62,64,65,5,'com_contact.category.54','Q','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(80,62,66,67,5,'com_contact.category.55','R','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(81,62,68,69,5,'com_contact.category.56','S','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(82,62,70,71,5,'com_contact.category.57','T','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(83,62,72,73,5,'com_contact.category.58','U','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(84,62,74,75,5,'com_contact.category.59','V','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(85,62,76,77,5,'com_contact.category.60','W','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(86,62,78,79,5,'com_contact.category.61','X','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(87,62,80,81,5,'com_contact.category.62','Y','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(88,62,82,83,5,'com_contact.category.63','Z','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(89,188,290,291,5,'com_content.article.1','Administrator Components','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(90,189,298,299,5,'com_content.article.2','Archive Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(91,188,294,295,5,'com_content.article.3','Article Categories Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(92,188,292,293,5,'com_content.article.4','Articles Category Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(93,47,127,136,6,'com_content.category.64','Content Modules','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(94,47,137,144,6,'com_content.category.65','User Modules','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(95,47,145,158,6,'com_content.category.66','Display Modules','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(96,47,159,172,6,'com_content.category.67','Utility Modules','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(97,48,183,184,6,'com_content.category.68','Atomic','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(98,48,185,186,6,'com_content.category.69','Beez 20','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(99,48,187,188,6,'com_content.category.70','Beez5','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(100,48,189,190,6,'com_content.category.71','Milky Way','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(101,50,197,198,6,'com_content.article.5','Authentication','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(102,204,338,339,5,'com_content.article.6','澳大利亚','{\"core.delete\":[],\"core.edit\":{\"2\":1},\"core.edit.state\":[]}'),(103,95,146,147,7,'com_content.article.7','Banner Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(104,44,215,216,4,'com_content.article.8','Beginners','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(105,46,113,114,6,'com_content.article.9','Contact','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(106,46,115,116,6,'com_content.article.10','Content','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(107,109,257,258,6,'com_content.article.11','Cradle Mountain','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(108,53,246,255,5,'com_content.category.72','Animals','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(109,53,256,265,5,'com_content.category.73','Scenery','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(110,95,148,149,7,'com_content.article.12','Custom HTML Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(111,54,275,276,4,'com_content.article.13','Directions','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(112,50,199,200,6,'com_content.article.14','Editors','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(113,50,201,202,6,'com_content.article.15','Editors-xtd','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(114,95,150,151,7,'com_content.article.16','Feed Display','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(115,52,240,241,5,'com_content.article.17','First Blog Post','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(116,52,242,243,5,'com_content.article.18','Second Blog Post','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(117,95,152,153,7,'com_content.article.19','Footer Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(118,54,277,278,4,'com_content.article.20','Fruit Shop','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(119,44,217,218,4,'com_content.article.21','Getting Help','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(120,44,219,220,4,'com_content.article.22','Getting Started','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(121,55,270,271,5,'com_content.article.23','Happy Orange Orchard','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(122,44,221,222,4,'com_content.article.24','Joomla!','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(123,108,247,248,6,'com_content.article.25','Koala','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(124,96,160,161,7,'com_content.article.26','Language Switcher','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(125,93,128,129,7,'com_content.article.27','Latest Articles Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(126,94,138,139,7,'com_content.article.28','Login Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(127,166,176,177,7,'com_content.article.29','Menu Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(128,93,130,131,7,'com_content.article.30','Most Read Content','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(129,93,132,133,7,'com_content.article.31','News Flash','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(130,44,223,224,4,'com_content.article.32','Parameters','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(131,108,249,250,6,'com_content.article.33','Phyllopteryx','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(132,109,259,260,6,'com_content.article.34','Pinnacles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(133,44,225,226,4,'com_content.article.35','Professionals','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(134,95,154,155,7,'com_content.article.36','Random Image Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(135,93,134,135,7,'com_content.article.37','Related Items Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(136,44,227,228,4,'com_content.article.38','Sample Sites','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(137,46,117,118,6,'com_content.article.39','Search','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(138,96,162,163,7,'com_content.article.40','Search Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(139,50,203,204,6,'com_content.article.41','Search ','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(140,39,282,283,3,'com_content.article.42','Site Map','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(141,108,251,252,6,'com_content.article.43','Spotted Quoll','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(142,96,164,165,7,'com_content.article.44','Statistics Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(143,96,166,167,7,'com_content.article.45','Syndicate Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(144,50,205,206,6,'com_content.article.46','System','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(145,44,229,230,4,'com_content.article.47','The Joomla! Community','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(146,44,231,232,4,'com_content.article.48','The Joomla! Project','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(147,48,191,192,6,'com_content.article.49','Typography','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(148,44,233,234,4,'com_content.article.50','Upgraders','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(149,50,207,208,6,'com_content.article.51','User','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(150,46,119,120,6,'com_content.article.52','Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(151,44,235,236,4,'com_content.article.53','Using Joomla!','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(152,46,121,122,6,'com_content.article.54','Weblinks','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(153,95,156,157,7,'com_content.article.55','Weblinks Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(154,94,140,141,7,'com_content.article.56','Who\'s Online','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(155,108,253,254,6,'com_content.article.57','Wobbegone','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(156,55,272,273,5,'com_content.article.58','Wonderful Watermelon','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(157,96,168,169,7,'com_content.article.59','Wrapper Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(158,46,123,124,6,'com_content.article.60','News Feeds','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(159,166,178,179,7,'com_content.article.61','Breadcrumbs Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(160,50,209,210,6,'com_content.article.62','Content','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(162,109,261,262,6,'com_content.article.64','Blue Mountain Rain Forest','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(163,109,263,264,6,'com_content.article.65','Ormiston Pound','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(165,94,142,143,7,'com_content.article.66','Latest Users Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(166,47,175,180,6,'com_content.category.75','Navigation Modules','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(167,54,279,280,4,'com_content.category.76','Recipes','{\"core.create\":{\"12\":1,\"10\":1},\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":{\"12\":1,\"10\":1}}'),(168,34,106,107,3,'com_content.article.67','What\'s New in 1.5?','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(169,24,487,488,2,'com_users.category.77','Uncategorised',''),(170,255,348,349,7,'com_content.article.68','Captcha','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(171,50,211,212,6,'com_content.article.69','Quick Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(172,96,170,171,7,'com_content.article.70','Smart Search','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(173,1,572,573,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(175,1,574,575,1,'com_virtuemart_allinone','virtuemart_allinone','{}'),(176,1,576,577,1,'com_easytagcloud','com_easytagcloud','{}'),(178,8,287,374,2,'com_content.category.78','市场观察','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(179,178,288,303,3,'com_content.category.79','流行报告','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(180,8,375,404,2,'com_content.category.80',' 设计下载','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(181,8,405,448,2,'com_content.category.81','培训提升','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(182,178,304,313,3,'com_content.category.82','零售（报告）','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(183,178,314,321,3,'com_content.category.83','室内设计','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(184,178,322,335,3,'com_content.category.84',' 新闻商务','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(185,178,336,359,3,'com_content.category.85','潮流都市','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(186,178,360,367,3,'com_content.category.86','展会活动','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(187,178,368,373,3,'com_content.category.87','品牌观察','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(188,179,289,296,4,'com_content.category.88','主导趋势','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(189,179,297,300,4,'com_content.category.89','创意灵感','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(190,179,301,302,4,'com_content.category.90','色彩趋势','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(191,182,305,306,4,'com_content.category.91','零售新闻','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(192,182,307,308,4,'com_content.category.92','时尚店铺','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(193,182,309,310,4,'com_content.category.93','奢侈品观察','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(194,182,311,312,4,'com_content.category.94','大众市场观察','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(195,183,315,316,4,'com_content.category.95','室内设计趋势','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(196,183,317,318,4,'com_content.category.96','室内色彩','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(197,183,319,320,4,'com_content.category.97','室内产品设计','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(198,184,323,324,4,'com_content.category.98','商业新闻','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(199,184,325,326,4,'com_content.category.99','消费市场','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(200,184,327,328,4,'com_content.category.100','名人轶事','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(201,184,329,330,4,'com_content.category.101','品牌合作','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(202,184,331,332,4,'com_content.category.102','采购信息','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(203,184,333,334,4,'com_content.category.103','室内设计新闻','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(204,185,337,354,4,'com_content.category.104','城市介绍','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(205,185,355,356,4,'com_content.category.105','街拍艺术','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(206,185,357,358,4,'com_content.category.106','生活时尚','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(207,186,361,362,4,'com_content.category.107','时尚展会','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(208,186,363,364,4,'com_content.category.108','室内展会','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(209,186,365,366,4,'com_content.category.109','展会活动日程','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(210,187,369,370,4,'com_content.category.110','品牌列表','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(211,187,371,372,4,'com_content.category.111','品牌观察报告','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(212,180,376,381,3,'com_content.category.112','心情版','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(213,212,377,378,4,'com_content.category.113','时尚手册','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(214,212,379,380,4,'com_content.category.114','实用方案','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(215,216,385,386,4,'com_content.category.115','会员下载','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(216,180,382,387,3,'com_content.category.116','原创设计','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(217,180,388,395,3,'com_content.category.117','颜色','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(218,180,396,403,3,'com_content.category.118','设计素材','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(219,216,383,384,4,'com_content.category.119','VIP下载','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(220,217,389,390,4,'com_content.category.120','色卡','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(221,217,391,392,4,'com_content.category.121','色彩案例','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(222,217,393,394,4,'com_content.category.122','色彩资料','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(223,218,397,398,4,'com_content.category.123','高清图库','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(224,218,399,400,4,'com_content.category.124','款式资料库','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(225,218,401,402,4,'com_content.category.125','组织库','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(226,181,406,411,3,'com_content.category.126','培训','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(227,181,412,419,3,'com_content.category.127','设计工具','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(228,181,420,427,3,'com_content.category.128','资料','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(229,181,428,433,3,'com_content.category.129','工艺分析','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(230,181,434,439,3,'com_content.category.130','设计风格','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(231,181,440,447,3,'com_content.category.131','材料','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(232,226,407,408,4,'com_content.category.132','培训计划','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(233,226,409,410,4,'com_content.category.133','培训回顾','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(234,227,413,414,4,'com_content.category.134','平面应用','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(235,227,415,416,4,'com_content.category.135','纺织品应用','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(236,227,417,418,4,'com_content.category.136','室内应用','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(237,228,421,422,4,'com_content.category.137','文献资料','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(238,228,423,424,4,'com_content.category.138','杂志资料','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(239,228,425,426,4,'com_content.category.139','古董资料','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(240,229,429,430,4,'com_content.category.140','纺织品工艺','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(241,229,431,432,4,'com_content.category.141','墙纸工艺','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(242,230,435,436,4,'com_content.category.142','风格常识','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(243,230,437,438,4,'com_content.category.143','案例学习','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(244,231,441,442,4,'com_content.category.144','新型材料','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(245,231,443,444,4,'com_content.category.145','新型纤维','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(246,231,445,446,4,'com_content.category.146','面料','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(248,1,580,581,1,'com_jshopping','jshopping','{}'),(253,1,602,603,1,'com_tortags','com_tortags','{}'),(254,1,604,605,1,'com_jce','jce','{}'),(255,259,347,350,6,'com_content.category.147','亚洲','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(256,259,345,346,6,'com_content.category.148','大洋洲','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(257,259,343,344,6,'com_content.category.149','欧洲','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(258,259,341,342,6,'com_content.category.150','北美洲','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(259,204,340,351,5,'com_content.category.151','品牌列表','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(260,204,352,353,5,'com_content.category.152','亚洲城市','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
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
INSERT INTO `yami_banners` VALUES (2,3,0,'Shop 1','shop-1',0,821,2,'http://shop.joomla.org/amazoncom-bookstores.html',1,15,'Get books about Joomla! at the Joomla! Book Shop.','',0,1,'','{\"imageurl\":\"images\\/banners\\/white.png\",\"width\":\"\",\"height\":\"\",\"alt\":\"Joomla! Books\"}',0,'',-1,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-01-01 00:00:01','en-GB'),(3,2,0,'Shop 2','shop-2',0,811,2,'http://shop.joomla.org',1,15,'T Shirts, caps and more from the Joomla! Shop.','',0,2,'','{\"imageurl\":\"images\\/banners\\/white.png\",\"width\":\"\",\"height\":\"\",\"alt\":\"Joomla! Shop\"}',0,'',-1,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-01-01 00:00:01','en-GB'),(4,1,0,'Support Joomla!','support-joomla',0,730,1,'http://contribute.joomla.org',1,15,'Your contributions of time, talent and money make Joomla possible.','',0,3,'','{\"imageurl\":\"images\\/banners\\/white.png\",\"width\":\"\",\"height\":\"\",\"alt\":\"\"}',0,'',-1,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','en-GB');
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_categories`
--

LOCK TABLES `yami_categories` WRITE;
/*!40000 ALTER TABLE `yami_categories` DISABLE KEYS */;
INSERT INTO `yami_categories` VALUES (1,0,0,0,285,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(9,34,1,131,132,1,'uncategorised','com_content','Uncategorised','uncategorised','','',-2,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'*'),(10,35,1,129,130,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(11,36,1,125,126,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(12,37,1,61,62,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(13,38,1,57,58,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(14,39,1,9,56,1,'sample-data-articles','com_content','Sample Data-Articles','sample-data-articles','','',-2,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(15,40,1,127,128,1,'sample-data-banners','com_banners','Sample Data-Banners','sample-data-banners','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(16,41,1,63,124,1,'sample-data-contact','com_contact','Sample Data-Contact','sample-data-contact','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(17,42,1,59,60,1,'sample-data-newsfeeds','com_newsfeeds','Sample Data-Newsfeeds','sample-data-newsfeeds','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(18,43,1,1,8,1,'sample-data-weblinks','com_weblinks','Sample Data-Weblinks','sample-data-weblinks','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(19,44,14,10,39,2,'sample-data-articles/joomla','com_content','Joomla!','joomla','','',-2,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'*'),(20,45,19,11,38,3,'sample-data-articles/joomla/extensions','com_content','Extensions','extensions','','<p>The Joomla! content management system lets you create webpages of various types using extensions. There are 5 basic types of extensions: components, modules, templates, languages, and plugins. Your website includes the extensions you need to create a basic website in English, but thousands of additional extensions of all types are available. The <a href=\"http://extensions.joomla.org\" style=\"color: #1b57b1; text-decoration: none; font-weight: normal;\">Joomla! Extensions Directory</a> is the largest directory of Joomla extensions.</p>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 11:57:22',0,'*'),(21,46,20,12,13,4,'sample-data-articles/joomla/extensions/components','com_content','Components','components','','<p><img class=\"image-left\" src=\"administrator/templates/bluestork/images/header/icon-48-component.png\" border=\"0\" alt=\"Component Image\" />Components are larger extensions that produce the major content for your site. Each component has one or more \"views\" that control how content is displayed. In the Joomla administrator there are additional extensions such as Menus, Redirection, and the extension managers.</p>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 11:58:12',0,'*'),(22,47,20,14,25,4,'sample-data-articles/joomla/extensions/modules','com_content','Modules','modules','','<p><img class=\"image-left\" src=\"administrator/templates/bluestork/images/header/icon-48-module.png\" border=\"0\" alt=\"Media Image\" />Modules are small blocks of content that can be displayed in positions on a web page. The menus on this site are displayed in modules. The core of Joomla! includes 24 separate modules ranging from login to search to random images. Each module has a name that starts mod_ but when it displays it has a title. In the descriptions in this section, the titles are the same as the names.</p>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 11:59:44',0,'*'),(23,48,20,26,33,4,'sample-data-articles/joomla/extensions/templates','com_content','Templates','templates','','<p><img src=\"administrator/templates/bluestork/images/header/icon-48-themes.png\" border=\"0\" alt=\"Media Image\" align=\"left\" />Templates give your site its look and feel. They determine layout, colours, typefaces, graphics and other aspects of design that make your site unique. Your installation of Joomla comes prepackaged with three front end templates and two backend templates. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Template_Manager_Templates\">Help</a></p>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 12:04:51',0,'*'),(24,49,20,34,35,4,'sample-data-articles/joomla/extensions/languages','com_content','Languages','languages','','<p><img src=\"administrator/templates/bluestork/images/header/icon-48-language.png\" border=\"0\" alt=\"Languages Image\" align=\"left\" />Joomla! installs in English, but translations of the interfaces, sample data and help screens are available in dozens of languages. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Language_Manager_Installed\">Help</a></p>\r\n<p><a href=\"http://community.joomla.org/translations.html\">Translation information</a></p>\r\n<p>If there is no language pack available for your language, instructions are available for creating your own translation, which you can also contribute to the community by starting a translation team to create an accredited translation. </p>\r\n<p>Translations of the interfaces are installed using the extensions manager in the site administrator and then managed using the language manager.</p>\r\n<p>If you have two or more languages installed you may enable the language switcher plugin and module. They should always be used together. If you create multilingual content and mark your content, menu items or modules as being in specific languages and follow <a href=\"http://docs.joomla.org/Language_Switcher_Tutorial_for_Joomla_1.6\">the complete instructions</a> your users will be able to select a specific content language using the module. By default both the plugin and module are disabled.</p>\r\n<p>Joomla 2.5 installs with a language override manager that allows you to change the specific words (such as Edit or Search) used in the Joomla application.</p>\r\n<p>There are a number of extensions that can help you manage translations of content available in the<a href=\"http://extensions.joomla.org\"> Joomla! Extensions Directory</a>.</p>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2012-01-17 16:18:40',0,'*'),(25,50,20,36,37,4,'sample-data-articles/joomla/extensions/plugins','com_content','Plugins','plugins','','<p><img src=\"administrator/templates/bluestork/images/header/icon-48-plugin.png\" border=\"0\" alt=\"Plugin Image\" align=\"left\" />Plugins are small task oriented extensions that enhance the Joomla! framework. Some are associated with particular extensions and others, such as editors, are used across all of Joomla. Most beginning users do not need to change any of the plugins that install with Joomla. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Plugin_Manager_Edit\">Help</a></p>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 12:11:56',0,'*'),(26,51,14,40,49,2,'sample-data-articles/park-site','com_content','Park Site','park-site','','',-2,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'en-GB'),(27,52,26,41,42,3,'sample-data-articles/park-site/park-blog','com_content','Park Blog','park-blog','','<p><span style=\"font-size: 12px;\">Here is where I will blog all about the parks of Australia.</span></p>\r\n<p><em>You can make a blog on your website by creating a category to write your blog posts in (this one is called Park Blog). Each blog post will be an article in that category. If you make a category blog menu link with 1 column it will look like this page, if you display the category description then this part is displayed. </em></p>\r\n<p><em>To enhance your blog you may want to add extensions for <a href=\"http://extensions.joomla.org/extensions/contacts-and-feedback/articles-comments\" style=\"color: #1b57b1; text-decoration: none; font-weight: normal;\">comments</a>,<a href=\"http://extensions.joomla.org/extensions/social-web\" style=\"color: #1b57b1; text-decoration: none; font-weight: normal;\"> interacting with social network sites</a>, <a href=\"http://extensions.joomla.org/extensions/content-sharing\" style=\"color: #1b57b1; text-decoration: none; font-weight: normal;\">tagging</a>, and <a href=\"http://extensions.joomla.org/extensions/content-sharing\" style=\"color: #1b57b1; text-decoration: none; font-weight: normal;\">keeping in contact with your readers</a>. You can also enable the syndication that is included in Joomla (in the Integration Options set Show Feed Link to Show and make sure to display the syndication module on the page).</em></p>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"images\\/sampledata\\/parks\\/banner_cradle.jpg\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 12:15:40',0,'en-GB'),(28,53,26,43,48,3,'sample-data-articles/park-site/photo-gallery','com_content','Photo Gallery','photo-gallery','','<p><img src=\"images/sampledata/parks/banner_cradle.jpg\" border=\"0\" /></p>\r\n<p>These are my photos from parks I have visited (I didn\'t take them, they are all from <a href=\"http://commons.wikimedia.org/wiki/Main_Page\">Wikimedia Commons</a>).</p>\r\n<p><em>This shows you how to make a simple image gallery using articles in com_content. </em></p>\r\n<p><em>In each article put a thumbnail image before a \"readmore\" and the full size image after it. Set the article to Show Intro Text: Hide. </em></p>',-2,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'en-GB'),(29,54,14,50,55,2,'sample-data-articles/fruit-shop-site','com_content','Fruit Shop Site','fruit-shop-site','','',-2,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'*'),(30,55,29,51,52,3,'sample-data-articles/fruit-shop-site/growers','com_content','Growers','growers','','<p>We search the whole countryside for the best fruit growers.</p>\r\n<p><em>You can let each supplier have a page that he or she can edit. To see this in action you will need to create a user who is in the suppliers group.  </em></p>\r\n<p><em>Create one page in the growers category for that user and make that supplier the author of the page. That user will be able to edit his or her page. </em></p>\r\n<p><em>This illustrates the use of the Edit Own permission. </em></p>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 12:17:40',0,'*'),(31,56,18,2,3,2,'sample-data-weblinks/park-links','com_weblinks','Park Links','park-links','','<p>Here are links to some of my favorite parks.</p>\r\n<p><em>The weblinks component provides an easy way to make links to external sites that are consistently formatted and categorised. You can create weblinks from the front end of your site.</em></p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"images\\/sampledata\\/parks\\/banner_cradle.jpg\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'en-GB'),(32,57,18,4,7,2,'sample-data-weblinks/joomla-specific-links','com_weblinks','Joomla! Specific Links','joomla-specific-links','','<p>A selection of links that are all related to the Joomla Project.</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 12:32:00',0,'*'),(33,58,32,5,6,3,'sample-data-weblinks/joomla-specific-links/other-resources','com_weblinks','Other Resources','other-resources','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(34,59,16,64,65,2,'sample-data-contact/park-site','com_contact','Park Site','park-site','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'en-GB'),(35,60,16,66,123,2,'sample-data-contact/shop-site','com_contact','Shop Site','shop-site','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(36,61,35,67,68,3,'sample-data-contact/shop-site/staff','com_contact','Staff','staff','','<p>Please feel free to contact our staff at any time should you need assistance.</p>',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(37,62,35,69,122,3,'sample-data-contact/shop-site/fruit-encyclopedia','com_contact','Fruit Encyclopedia','fruit-encyclopedia','','<p> </p><p>Our directory of information about different kinds of fruit.</p><p>We love fruit and want the world to know more about all of its many varieties.</p><p>Although it is small now, we work on it whenever we have a chance.</p><p>All of the images can be found in <a href=\"http://commons.wikimedia.org/wiki/Main_Page\">Wikimedia Commons</a>.</p><p><img src=\"images/sampledata/fruitshop/apple.jpg\" border=\"0\" alt=\"Apples\" title=\"Apples\" /></p><p><em>This encyclopedia is implemented using the contact component, each fruit a separate contact and a category for each letter. A CSS style is used to create the horizontal layout of the alphabet headings. </em></p><p><em>If you wanted to, you could allow some users (such as your growers) to have access to just this category in the contact component and let them help you to create new content for the encyclopedia.</em></p><p> </p>',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(38,63,37,70,71,4,'sample-data-contact/shop-site/fruit-encyclopedia/a','com_contact','A','a','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(39,64,37,72,73,4,'sample-data-contact/shop-site/fruit-encyclopedia/b','com_contact','B','b','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(40,65,37,74,75,4,'sample-data-contact/shop-site/fruit-encyclopedia/c','com_contact','C','c','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(41,66,37,76,77,4,'sample-data-contact/shop-site/fruit-encyclopedia/d','com_contact','D','d','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(42,67,37,78,79,4,'sample-data-contact/shop-site/fruit-encyclopedia/e','com_contact','E','e','','',0,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(43,68,37,80,81,4,'sample-data-contact/shop-site/fruit-encyclopedia/f','com_contact','F','f','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(44,69,37,82,83,4,'sample-data-contact/shop-site/fruit-encyclopedia/g','com_contact','G','g','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(45,70,37,84,85,4,'sample-data-contact/shop-site/fruit-encyclopedia/h','com_contact','H','h','','',0,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(46,71,37,86,87,4,'sample-data-contact/shop-site/fruit-encyclopedia/i','com_contact','I','i','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(47,72,37,88,89,4,'sample-data-contact/shop-site/fruit-encyclopedia/j','com_contact','J','j','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(48,73,37,90,91,4,'sample-data-contact/shop-site/fruit-encyclopedia/k','com_contact','K','k','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(49,74,37,92,93,4,'sample-data-contact/shop-site/fruit-encyclopedia/l','com_contact','L','l','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(50,75,37,94,95,4,'sample-data-contact/shop-site/fruit-encyclopedia/m','com_contact','M','m','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(51,76,37,96,97,4,'sample-data-contact/shop-site/fruit-encyclopedia/n','com_contact','N','n','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(52,77,37,98,99,4,'sample-data-contact/shop-site/fruit-encyclopedia/o','com_contact','O','o','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(53,78,37,100,101,4,'sample-data-contact/shop-site/fruit-encyclopedia/p','com_contact','P','p','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(54,79,37,102,103,4,'sample-data-contact/shop-site/fruit-encyclopedia/q','com_contact','Q','q','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(55,80,37,104,105,4,'sample-data-contact/shop-site/fruit-encyclopedia/r','com_contact','R','r','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(56,81,37,106,107,4,'sample-data-contact/shop-site/fruit-encyclopedia/s','com_contact','S','s','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(57,82,37,108,109,4,'sample-data-contact/shop-site/fruit-encyclopedia/t','com_contact','T','t','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(58,83,37,110,111,4,'sample-data-contact/shop-site/fruit-encyclopedia/u','com_contact','U','u','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(59,84,37,112,113,4,'sample-data-contact/shop-site/fruit-encyclopedia/v','com_contact','V','v','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(60,85,37,114,115,4,'sample-data-contact/shop-site/fruit-encyclopedia/w','com_contact','W','w','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(61,86,37,116,117,4,'sample-data-contact/shop-site/fruit-encyclopedia/x','com_contact','X','x','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(62,87,37,118,119,4,'sample-data-contact/shop-site/fruit-encyclopedia/y','com_contact','Y','y','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(63,88,37,120,121,4,'sample-data-contact/shop-site/fruit-encyclopedia/z','com_contact','Z','z','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(64,93,22,15,16,5,'sample-data-articles/joomla/extensions/modules/articles-modules','com_content','Content Modules','articles-modules','','<p>Content modules display article and other information from the content component.</p>',-2,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'*'),(65,94,22,17,18,5,'sample-data-articles/joomla/extensions/modules/user-modules','com_content','User Modules','user-modules','','<p>User modules interact with the user system, allowing users to login, show who is logged-in, and showing the most recently registered users.</p>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 12:00:50',0,'*'),(66,95,22,19,20,5,'sample-data-articles/joomla/extensions/modules/display-modules','com_content','Display Modules','display-modules','','<p>These modules display information from components other than content and user. These include weblinks, news feeds and the media manager.</p>',-2,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(67,96,22,21,22,5,'sample-data-articles/joomla/extensions/modules/utility-modules','com_content','Utility Modules','utility-modules','','<p>Utility modules provide useful functionality such as search, syndication and statistics.</p>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 12:01:34',0,'*'),(68,97,23,31,32,5,'sample-data-articles/joomla/extensions/templates/atomic','com_content','Atomic','atomic','','<p><img src=\"templates/atomic/template_thumbnail.png\" border=\"0\" alt=\"The Atomic Template\" style=\"border: 0; float: right;\" /></p>\r\n<p>Atomic is a minimal template designed to be a skeleton for making your own template and to learn about Joomla! templating.</p>\r\n<ul>\r\n<li><a href=\"index.php?Itemid=285\">Home Page</a></li>\r\n<li><a href=\"index.php?Itemid=316\">Typography</a></li>\r\n</ul>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 12:08:16',0,'*'),(69,98,23,27,28,5,'sample-data-articles/joomla/extensions/templates/beez-20','com_content','Beez 20','beez-20','','<p><img src=\"templates/beez_20/template_thumbnail.png\" border=\"0\" alt=\"Beez_20 thumbnail\" align=\"right\" style=\"float: right;\" /></p>\r\n<p>Beez 2.0 is a versatile, easy to customise template that works for a variety of sites. It meets major accessibility standards and demonstrates a range of css and javascript techniques. It is the default template that installs with Joomla!</p>\r\n<ul>\r\n<li><a href=\"index.php?Itemid=424\">Home Page</a></li>\r\n<li><a href=\"index.php?Itemid=423\">Typography</a></li>\r\n</ul>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'*'),(70,99,23,29,30,5,'sample-data-articles/joomla/extensions/templates/beez-5','com_content','Beez 5','beez-5','','<p><img src=\"templates/beez5/template_thumbnail.png\" border=\"0\" alt=\"Beez5 Thumbnail\" align=\"right\" style=\"float: right;\" /></p>\r\n<p>Beez 5 is an html5 implementation of a Joomla! template. It uses a number of html5 techniques to enhance the presentation of a site. It is used as the template for the Fruit Shop sample site.</p>\r\n<ul>\r\n<li><a href=\"index.php?Itemid=458\">Home Page</a></li>\r\n<li><a href=\"index.php?Itemid=457\">Typography</a></li>\r\n</ul>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 12:06:57',0,'*'),(72,108,28,44,45,4,'sample-data-articles/park-site/photo-gallery/animals','com_content','Animals','animals','','',-2,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'en-GB'),(73,109,28,46,47,4,'sample-data-articles/park-site/photo-gallery/scenery','com_content','Scenery','scenery','','',-2,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'en-GB'),(75,166,22,23,24,5,'sample-data-articles/joomla/extensions/modules/navigation-modules','com_content','Navigation Modules','navigation-modules','','<p>Navigation modules help your visitors move through your site and find what they need.</p>\r\n<p>Menus provide your site with structure and help your visitors navigate your site.  Although they are all based on the same menu module, the variety of ways menus are used in the sample data show how flexible this module is.</p>\r\n<p>A menu can range from extremely simple (for example the top menu or the menu for the Australian Parks sample site) to extremely complex (for example the About Joomla! menu with its many levels). They can also be used for other types of presentation such as the site map linked from the \"This Site\" menu.</p>\r\n<p>Breadcrumbs provide users with information about where they are in a site.</p>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-01-01 00:00:01',0,'*'),(76,167,29,53,54,3,'sample-data-articles/fruit-shop-site/recipes','com_content','Recipes','recipes','','<p>Customers and suppliers can post their favorite recipes for fruit here.</p>\r\n<p>A good idea is to promote the use of metadata keywords to make finding other recipes for the same fruit easier.</p>\r\n<p><em>To see this in action, create a user assigned to the customer group and a user assigned to the suppliers group. These users will be able to create their own recipe pages and edit those pages. They will not be able to edit other users\' pages.</em><br /><br /></p>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',42,'2011-12-27 12:18:25',0,'*'),(77,169,1,133,134,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',901,'2011-01-01 00:00:01',0,'2011-01-01 00:00:01',0,'*'),(78,178,1,135,210,1,'2013-06-18-08-28-06','com_content','市场观察','2013-06-18-08-28-06','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:28:06',0,'0000-00-00 00:00:00',0,'*'),(79,179,78,136,143,2,'2013-06-18-08-28-06/2013-06-18-08-28-29','com_content','流行报告','2013-06-18-08-28-29','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:28:29',0,'0000-00-00 00:00:00',0,'*'),(80,180,1,211,240,1,'2013-06-18-08-28-43','com_content',' 设计下载','2013-06-18-08-28-43','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:28:43',0,'0000-00-00 00:00:00',0,'*'),(81,181,1,241,284,1,'2013-06-18-08-28-53','com_content','培训提升','2013-06-18-08-28-53','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:28:53',0,'0000-00-00 00:00:00',0,'*'),(82,182,78,144,153,2,'2013-06-18-08-28-06/2013-06-18-08-29-32','com_content','零售（报告）','2013-06-18-08-29-32','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:29:32',0,'0000-00-00 00:00:00',0,'*'),(83,183,78,154,161,2,'2013-06-18-08-28-06/2013-06-18-08-29-54','com_content','室内设计','2013-06-18-08-29-54','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:29:54',0,'0000-00-00 00:00:00',0,'*'),(84,184,78,162,175,2,'2013-06-18-08-28-06/2013-06-18-08-30-08','com_content',' 新闻商务','2013-06-18-08-30-08','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:30:08',0,'0000-00-00 00:00:00',0,'*'),(85,185,78,176,195,2,'2013-06-18-08-28-06/2013-06-18-08-30-22','com_content','潮流都市','2013-06-18-08-30-22','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:30:22',901,'2013-07-06 00:14:31',0,'*'),(86,186,78,196,203,2,'2013-06-18-08-28-06/2013-06-18-08-30-39','com_content','展会活动','2013-06-18-08-30-39','','',1,901,'2013-07-06 00:01:13',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:30:39',0,'0000-00-00 00:00:00',0,'*'),(87,187,78,204,209,2,'2013-06-18-08-28-06/2013-06-18-08-30-51','com_content','品牌观察','2013-06-18-08-30-51','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:30:51',0,'0000-00-00 00:00:00',0,'*'),(88,188,79,137,138,3,'2013-06-18-08-28-06/2013-06-18-08-28-29/2013-06-18-08-31-02','com_content','主导趋势','2013-06-18-08-31-02','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:31:02',0,'0000-00-00 00:00:00',0,'*'),(89,189,79,139,140,3,'2013-06-18-08-28-06/2013-06-18-08-28-29/2013-06-18-08-31-14','com_content','创意灵感','2013-06-18-08-31-14','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:31:14',0,'0000-00-00 00:00:00',0,'*'),(90,190,79,141,142,3,'2013-06-18-08-28-06/2013-06-18-08-28-29/2013-06-18-08-31-24','com_content','色彩趋势','2013-06-18-08-31-24','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:31:24',0,'0000-00-00 00:00:00',0,'*'),(91,191,82,145,146,3,'2013-06-18-08-28-06/2013-06-18-08-29-32/2013-06-18-08-31-38','com_content','零售新闻','2013-06-18-08-31-38','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:31:38',0,'0000-00-00 00:00:00',0,'*'),(92,192,82,147,148,3,'2013-06-18-08-28-06/2013-06-18-08-29-32/2013-06-18-08-31-50','com_content','时尚店铺','2013-06-18-08-31-50','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:31:50',0,'0000-00-00 00:00:00',0,'*'),(93,193,82,149,150,3,'2013-06-18-08-28-06/2013-06-18-08-29-32/2013-06-18-08-32-00','com_content','奢侈品观察','2013-06-18-08-32-00','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:32:00',0,'0000-00-00 00:00:00',0,'*'),(94,194,82,151,152,3,'2013-06-18-08-28-06/2013-06-18-08-29-32/2013-06-18-08-32-12','com_content','大众市场观察','2013-06-18-08-32-12','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:32:12',0,'0000-00-00 00:00:00',0,'*'),(95,195,83,155,156,3,'2013-06-18-08-28-06/2013-06-18-08-29-54/2013-06-18-08-32-26','com_content','室内设计趋势','2013-06-18-08-32-26','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:32:26',0,'0000-00-00 00:00:00',0,'*'),(96,196,83,157,158,3,'2013-06-18-08-28-06/2013-06-18-08-29-54/2013-06-18-08-32-36','com_content','室内色彩','2013-06-18-08-32-36','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:32:36',0,'0000-00-00 00:00:00',0,'*'),(97,197,83,159,160,3,'2013-06-18-08-28-06/2013-06-18-08-29-54/2013-06-18-08-32-45','com_content','室内产品设计','2013-06-18-08-32-45','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:32:45',0,'0000-00-00 00:00:00',0,'*'),(98,198,84,163,164,3,'2013-06-18-08-28-06/2013-06-18-08-30-08/2013-06-18-08-32-56','com_content','商业新闻','2013-06-18-08-32-56','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:32:56',0,'0000-00-00 00:00:00',0,'*'),(99,199,84,165,166,3,'2013-06-18-08-28-06/2013-06-18-08-30-08/2013-06-18-08-33-26','com_content','消费市场','2013-06-18-08-33-26','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:33:26',0,'0000-00-00 00:00:00',0,'*'),(100,200,84,167,168,3,'2013-06-18-08-28-06/2013-06-18-08-30-08/2013-06-18-08-33-36','com_content','名人轶事','2013-06-18-08-33-36','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:33:36',0,'0000-00-00 00:00:00',0,'*'),(101,201,84,169,170,3,'2013-06-18-08-28-06/2013-06-18-08-30-08/2013-06-18-08-33-49','com_content','品牌合作','2013-06-18-08-33-49','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:33:49',0,'0000-00-00 00:00:00',0,'*'),(102,202,84,171,172,3,'2013-06-18-08-28-06/2013-06-18-08-30-08/2013-06-18-08-34-43','com_content','采购信息','2013-06-18-08-34-43','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:34:43',0,'0000-00-00 00:00:00',0,'*'),(103,203,84,173,174,3,'2013-06-18-08-28-06/2013-06-18-08-30-08/2013-06-18-08-34-55','com_content','室内设计新闻','2013-06-18-08-34-55','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:34:55',0,'0000-00-00 00:00:00',0,'*'),(104,204,85,177,190,3,'2013-06-18-08-28-06/2013-06-18-08-30-22/2013-06-18-08-35-09','com_content','城市介绍','2013-06-18-08-35-09','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:35:09',901,'2013-07-06 00:12:17',0,'*'),(105,205,85,191,192,3,'2013-06-18-08-28-06/2013-06-18-08-30-22/2013-06-18-08-35-24','com_content','街拍艺术','2013-06-18-08-35-24','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:35:24',0,'0000-00-00 00:00:00',0,'*'),(106,206,85,193,194,3,'2013-06-18-08-28-06/2013-06-18-08-30-22/2013-06-18-08-35-35','com_content','生活时尚','2013-06-18-08-35-35','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:35:35',0,'0000-00-00 00:00:00',0,'*'),(107,207,86,197,198,3,'2013-06-18-08-28-06/2013-06-18-08-30-39/2013-06-18-08-35-50','com_content','时尚展会','2013-06-18-08-35-50','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:35:50',0,'0000-00-00 00:00:00',0,'*'),(108,208,86,199,200,3,'2013-06-18-08-28-06/2013-06-18-08-30-39/2013-06-18-08-36-01','com_content','室内展会','2013-06-18-08-36-01','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:36:01',0,'0000-00-00 00:00:00',0,'*'),(109,209,86,201,202,3,'2013-06-18-08-28-06/2013-06-18-08-30-39/2013-06-18-08-36-23','com_content','展会活动日程','2013-06-18-08-36-23','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:36:23',0,'0000-00-00 00:00:00',0,'*'),(110,210,87,205,206,3,'2013-06-18-08-28-06/2013-06-18-08-30-51/2013-06-18-08-36-39','com_content','品牌列表','2013-06-18-08-36-39','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:36:39',0,'0000-00-00 00:00:00',0,'*'),(111,211,87,207,208,3,'2013-06-18-08-28-06/2013-06-18-08-30-51/2013-06-18-08-36-57','com_content','品牌观察报告','2013-06-18-08-36-57','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:36:57',0,'0000-00-00 00:00:00',0,'*'),(112,212,80,212,217,2,'2013-06-18-08-28-43/2013-06-18-08-42-14','com_content','心情版','2013-06-18-08-42-14','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:42:14',0,'0000-00-00 00:00:00',0,'*'),(113,213,112,213,214,3,'2013-06-18-08-28-43/2013-06-18-08-42-14/2013-06-18-08-42-27','com_content','时尚手册','2013-06-18-08-42-27','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:42:27',0,'0000-00-00 00:00:00',0,'*'),(114,214,112,215,216,3,'2013-06-18-08-28-43/2013-06-18-08-42-14/2013-06-18-08-42-38','com_content','实用方案','2013-06-18-08-42-38','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:42:38',0,'0000-00-00 00:00:00',0,'*'),(115,215,116,221,222,3,'2013-06-18-08-28-43/2013-06-18-08-43-14/2013-06-18-08-45-56','com_content','会员下载','2013-06-18-08-45-56','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:42:51',901,'2013-06-18 08:45:56',0,'*'),(116,216,80,218,223,2,'2013-06-18-08-28-43/2013-06-18-08-43-14','com_content','原创设计','2013-06-18-08-43-14','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:43:14',0,'0000-00-00 00:00:00',0,'*'),(117,217,80,224,231,2,'2013-06-18-08-28-43/2013-06-18-08-43-28','com_content','颜色','2013-06-18-08-43-28','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:43:28',0,'0000-00-00 00:00:00',0,'*'),(118,218,80,232,239,2,'2013-06-18-08-28-43/2013-06-18-08-43-38','com_content','设计素材','2013-06-18-08-43-38','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:43:38',0,'0000-00-00 00:00:00',0,'*'),(119,219,116,219,220,3,'2013-06-18-08-28-43/2013-06-18-08-43-14/vip','com_content','VIP下载','vip','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:43:52',0,'0000-00-00 00:00:00',0,'*'),(120,220,117,225,226,3,'2013-06-18-08-28-43/2013-06-18-08-43-28/2013-06-18-08-44-03','com_content','色卡','2013-06-18-08-44-03','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:44:03',0,'0000-00-00 00:00:00',0,'*'),(121,221,117,227,228,3,'2013-06-18-08-28-43/2013-06-18-08-43-28/2013-06-18-08-44-12','com_content','色彩案例','2013-06-18-08-44-12','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:44:12',0,'0000-00-00 00:00:00',0,'*'),(122,222,117,229,230,3,'2013-06-18-08-28-43/2013-06-18-08-43-28/2013-06-18-08-44-21','com_content','色彩资料','2013-06-18-08-44-21','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:44:21',0,'0000-00-00 00:00:00',0,'*'),(123,223,118,233,234,3,'2013-06-18-08-28-43/2013-06-18-08-43-38/2013-06-18-08-44-33','com_content','高清图库','2013-06-18-08-44-33','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:44:33',0,'0000-00-00 00:00:00',0,'*'),(124,224,118,235,236,3,'2013-06-18-08-28-43/2013-06-18-08-43-38/2013-06-18-08-44-44','com_content','款式资料库','2013-06-18-08-44-44','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:44:44',0,'0000-00-00 00:00:00',0,'*'),(125,225,118,237,238,3,'2013-06-18-08-28-43/2013-06-18-08-43-38/2013-06-18-08-44-57','com_content','组织库','2013-06-18-08-44-57','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:44:57',0,'0000-00-00 00:00:00',0,'*'),(126,226,81,242,247,2,'2013-06-18-08-28-53/2013-06-18-08-50-41','com_content','培训','2013-06-18-08-50-41','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:50:41',0,'0000-00-00 00:00:00',0,'*'),(127,227,81,248,255,2,'2013-06-18-08-28-53/2013-06-18-08-50-56','com_content','设计工具','2013-06-18-08-50-56','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:50:56',0,'0000-00-00 00:00:00',0,'*'),(128,228,81,256,263,2,'2013-06-18-08-28-53/2013-06-18-08-51-15','com_content','资料','2013-06-18-08-51-15','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:51:15',0,'0000-00-00 00:00:00',0,'*'),(129,229,81,264,269,2,'2013-06-18-08-28-53/2013-06-18-08-51-29','com_content','工艺分析','2013-06-18-08-51-29','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:51:29',0,'0000-00-00 00:00:00',0,'*'),(130,230,81,270,275,2,'2013-06-18-08-28-53/2013-06-18-08-51-40','com_content','设计风格','2013-06-18-08-51-40','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:51:40',0,'0000-00-00 00:00:00',0,'*'),(131,231,81,276,283,2,'2013-06-18-08-28-53/2013-06-18-08-51-49','com_content','材料','2013-06-18-08-51-49','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:51:49',0,'0000-00-00 00:00:00',0,'*'),(132,232,126,243,244,3,'2013-06-18-08-28-53/2013-06-18-08-50-41/2013-06-18-08-52-05','com_content','培训计划','2013-06-18-08-52-05','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:52:05',0,'0000-00-00 00:00:00',0,'*'),(133,233,126,245,246,3,'2013-06-18-08-28-53/2013-06-18-08-50-41/2013-06-18-08-52-23','com_content','培训回顾','2013-06-18-08-52-23','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:52:23',0,'0000-00-00 00:00:00',0,'*'),(134,234,127,249,250,3,'2013-06-18-08-28-53/2013-06-18-08-50-56/2013-06-18-08-52-42','com_content','平面应用','2013-06-18-08-52-42','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:52:42',0,'0000-00-00 00:00:00',0,'*'),(135,235,127,251,252,3,'2013-06-18-08-28-53/2013-06-18-08-50-56/2013-06-18-08-52-52','com_content','纺织品应用','2013-06-18-08-52-52','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:52:52',0,'0000-00-00 00:00:00',0,'*'),(136,236,127,253,254,3,'2013-06-18-08-28-53/2013-06-18-08-50-56/2013-06-18-08-53-01','com_content','室内应用','2013-06-18-08-53-01','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:53:01',0,'0000-00-00 00:00:00',0,'*'),(137,237,128,257,258,3,'2013-06-18-08-28-53/2013-06-18-08-51-15/2013-06-18-08-53-24','com_content','文献资料','2013-06-18-08-53-24','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:53:24',0,'0000-00-00 00:00:00',0,'*'),(138,238,128,259,260,3,'2013-06-18-08-28-53/2013-06-18-08-51-15/2013-06-18-08-53-33','com_content','杂志资料','2013-06-18-08-53-33','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:53:33',0,'0000-00-00 00:00:00',0,'*'),(139,239,128,261,262,3,'2013-06-18-08-28-53/2013-06-18-08-51-15/2013-06-18-08-53-42','com_content','古董资料','2013-06-18-08-53-42','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:53:42',0,'0000-00-00 00:00:00',0,'*'),(140,240,129,265,266,3,'2013-06-18-08-28-53/2013-06-18-08-51-29/2013-06-18-08-53-57','com_content','纺织品工艺','2013-06-18-08-53-57','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:53:57',0,'0000-00-00 00:00:00',0,'*'),(141,241,129,267,268,3,'2013-06-18-08-28-53/2013-06-18-08-51-29/2013-06-18-08-54-11','com_content','墙纸工艺','2013-06-18-08-54-11','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:54:11',0,'0000-00-00 00:00:00',0,'*'),(142,242,130,271,272,3,'2013-06-18-08-28-53/2013-06-18-08-51-40/2013-06-18-08-54-22','com_content','风格常识','2013-06-18-08-54-22','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:54:22',0,'0000-00-00 00:00:00',0,'*'),(143,243,130,273,274,3,'2013-06-18-08-28-53/2013-06-18-08-51-40/2013-06-18-08-54-33','com_content','案例学习','2013-06-18-08-54-33','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:54:33',0,'0000-00-00 00:00:00',0,'*'),(144,244,131,277,278,3,'2013-06-18-08-28-53/2013-06-18-08-51-49/2013-06-18-08-54-51','com_content','新型材料','2013-06-18-08-54-51','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:54:51',0,'0000-00-00 00:00:00',0,'*'),(145,245,131,279,280,3,'2013-06-18-08-28-53/2013-06-18-08-51-49/2013-06-18-08-55-00','com_content','新型纤维','2013-06-18-08-55-00','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:55:00',0,'0000-00-00 00:00:00',0,'*'),(146,246,131,281,282,3,'2013-06-18-08-28-53/2013-06-18-08-51-49/2013-06-18-08-55-09','com_content','面料','2013-06-18-08-55-09','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-06-18 08:55:09',0,'0000-00-00 00:00:00',0,'*'),(147,255,151,185,186,5,'2013-06-18-08-28-06/2013-06-18-08-30-22/2013-06-18-08-35-09/2013-07-07-01-32-33/2013-07-07-01-26-57','com_content','亚洲','2013-07-07-01-26-57','','',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-07-07 01:26:57',901,'2013-07-07 01:34:03',0,'*'),(148,256,151,183,184,5,'2013-06-18-08-28-06/2013-06-18-08-30-22/2013-06-18-08-35-09/2013-07-07-01-32-33/2013-07-07-01-28-13','com_content','大洋洲','2013-07-07-01-28-13','','',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-07-07 01:28:13',901,'2013-07-07 01:33:45',0,'*'),(149,257,151,181,182,5,'2013-06-18-08-28-06/2013-06-18-08-30-22/2013-06-18-08-35-09/2013-07-07-01-32-33/2013-07-07-01-28-33','com_content','欧洲','2013-07-07-01-28-33','','',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-07-07 01:28:33',901,'2013-07-07 01:33:28',0,'*'),(150,258,151,179,180,5,'2013-06-18-08-28-06/2013-06-18-08-30-22/2013-06-18-08-35-09/2013-07-07-01-32-33/2013-07-07-01-28-49','com_content','北美洲','2013-07-07-01-28-49','','',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-07-07 01:28:49',901,'2013-07-07 01:33:03',0,'*'),(151,259,104,178,187,4,'2013-06-18-08-28-06/2013-06-18-08-30-22/2013-06-18-08-35-09/2013-07-07-01-32-33','com_content','品牌列表','2013-07-07-01-32-33','','',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-07-07 01:32:33',901,'2013-07-07 01:46:26',0,'*'),(152,260,104,188,189,4,'2013-06-18-08-28-06/2013-06-18-08-30-22/2013-06-18-08-35-09/2013-07-07-01-48-05','com_content','亚洲城市','2013-07-07-01-48-05','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',901,'2013-07-07 01:48:05',0,'0000-00-00 00:00:00',0,'*');
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
INSERT INTO `yami_content` VALUES (1,89,'Administrator Components','administrator-components','','<p>All components are also used in the administrator area of your website. In addition to the ones listed here, there are components in the administrator that do not have direct front end displays, but do help shape your site. The most important ones for most users are</p>\r\n<ul>\r\n<li>Media Manager</li>\r\n<li>Extensions Manager</li>\r\n<li>Menu Manager</li>\r\n<li>Global Configuration</li>\r\n<li>Banners</li>\r\n<li>Redirect</li>\r\n</ul>\r\n<hr title=\"Media Manager\" alt=\"Media Manager\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" />\r\n<p> </p>\r\n<h3>Media Manager</h3>\r\n<p>The media manager component lets you upload and insert images into content throughout your site. Optionally, you can enable the flash uploader which will allow you to to upload multiple images. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Content_Media_Manager\">Help</a></p>\r\n<hr title=\"Extensions Manager\" alt=\"Extensions Manager\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" />\r\n<h3>Extensions Manager</h3>\r\n<p>The extensions manager lets you install, update, uninstall and manage all of your extensions. The extensions manager has been extensively redesigned, although the core install and uninstall functionality remains the same as in Joomla! 1.5. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Extension_Manager_Install\">Help</a></p>\r\n<hr title=\"Menu Manager\" alt=\"Menu Manager\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" />\r\n<h3>Menu Manager</h3>\r\n<p>The menu manager lets you create the menus you see displayed on your site. It also allows you to assign modules and template styles to specific menu links. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Menus_Menu_Manager\">Help</a></p>\r\n<hr title=\"Global Configuration\" alt=\"Global Configuration\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" />\r\n<h3>Global Configuration</h3>\r\n<p>The global configuration is where the site administrator configures things such as whether search engine friendly urls are enabled, the site meta data (descriptive text used by search engines and indexers) and other functions. For many beginning users simply leaving the settings on default is a good way to begin, although when your site is ready for the public you will want to change the meta data to match its content. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Site_Global_Configuration\">Help</a></p>\r\n<hr title=\"Banners\" alt=\"Banners\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" />\r\n<h3>Banners</h3>\r\n<p>The banners component provides a simple way to display a rotating image in a module and, if you wish to have advertising, a way to track the number of times an image is viewed and clicked. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Banners_Banners_Edit\">Help</a></p>\r\n<hr title=\"Redirect\" class=\"system-pagebreak\" />\r\n<h3><br />Redirect</h3>\r\n<p>The redirect component is used to manage broken links that produce Page Not Found (404) errors. If enabled it will allow you to redirect broken links to specific pages. It can also be used to manage migration related URL changes. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Redirect_Manager\">Help</a></p>','',1,0,0,90,'2011-01-01 00:00:01',901,'Joomla!','2013-07-04 13:07:49',901,901,'2013-07-05 10:32:50','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',12,0,7,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(2,90,'Archive Module','archive-module','','<p>This module shows a list of the calendar months containing archived articles. After you have changed the status of an article to archived, this list will be automatically generated. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Archive\" title=\"Archive Module\">Help</a></p>\r\n<div class=\"sample-module\"> </div>','',1,0,0,89,'2011-01-01 00:00:01',901,'Joomla!','2013-07-07 01:53:52',901,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/retail_shares_jan13_banner2.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/057.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,0,5,'modules, content','',1,7,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(3,91,'Article Categories Module','article-categories-module','','<p><img src=\"images/retail_shares_jan13_banner2.jpg\" border=\"0\" alt=\"\" />这是一篇测试文章</p>','',1,0,0,88,'2011-01-01 00:00:01',901,'','2013-07-06 08:34:29',901,901,'2013-07-07 01:29:03','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',8,0,6,'modules, content','',1,48,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(4,92,'Articles Category Module','articles-category-module','','<p><img src=\"images/057.jpg\" border=\"0\" alt=\"\" />This module allows you to display the articles in a specific category. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Category\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule articles_category,Articles Category}</div>','',1,0,0,88,'2011-01-01 00:00:01',901,'Joomla!','2013-07-05 10:37:55',901,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',9,0,7,'','articles,content',1,15,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(5,101,'Authentication','authentication','','<p>The authentication plugins operate when users login to your site or administrator. The Joomla! authentication plugin is in operation by default but you can enable Gmail or LDAP or install a plugin for a different system. An example is included that may be used to create a new authentication plugin.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Joomla <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Authentication_-_GMail\">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>Gmail <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Authentication_-_GMail\">Help</a></li>\r\n<li>LDAP <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Authentication_-_LDAP\">Help</a></li>\r\n</ul>','',1,0,0,88,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:04:13',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,3,'','',1,12,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(6,102,'澳大利亚','australia','','<p><img src=\"images/sampledata/parks/banner_cradle.jpg\" border=\"0\" alt=\"Cradle Park Banner\" /></p>\r\n<p>Welcome!</p>\r\n<p>This is a basic site about the beautiful and fascinating parks of Australia.</p>\r\n<p>On this site you can read all about my travels to different parks, see photos, and find links to park websites.</p>\r\n<p><em>This sample site is an example of using the core of Joomla! to create a basic website, whether a \"brochure site,\"  a personal blog, or as a way to present information on a topic you are interested in.</em></p>\r\n<p><em> Read more about the site in the About Parks module.</em></p>\r\n<p> </p>','',1,0,0,104,'2011-01-01 00:00:01',901,'Parks Webmaster','2013-07-07 00:45:09',901,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,1,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(7,103,'Banner Module','banner-module','','<p>The banner module is used to display the banners that are managed by the banners component in the site administrator. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Banners\">Help</a>.</p>\r\n<div class=\"sample-module\">{loadmodule banners,Banners}</div>','',1,0,0,88,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:32:58',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',4,0,6,'','',1,4,'',0,'*',''),(8,104,'Beginners','beginners','','<p>If this is your first Joomla! site or your first web site, you have come to the right place. Joomla will help you get your website up and running quickly and easily.</p>\r\n<p>Start off using your site by logging in using the administrator account you created when you installed Joomla.</p>\r\n','\r\n<p>Explore the articles and other resources right here on your site data to learn more about how Joomla works. (When you\'re done reading, you can delete or archive all of this.) You will also probably want to visit the Beginners\' Areas of the <a href=\"http://docs.joomla.org/Beginners\">Joomla documentation</a> and <a href=\"http://forum.joomla.org\">support forums</a>.</p>\r\n<p>You\'ll also want to sign up for the Joomla Security Mailing list and the Announcements mailing list. For inspiration visit the <a href=\"http://community.joomla.org/showcase/\">Joomla! Site Showcase</a> to see an amazing array of ways people use Joomla to tell their stories on the web.</p>\r\n<p>The basic Joomla installation will let you get a great site up and running, but when you are ready for more features the power of Joomla is in the creative ways that developers have extended it to do all kinds of things. Visit the <a href=\"http://extensions.joomla.org/\">Joomla! Extensions Directory</a> to see thousands of extensions that can do almost anything you could want on a website. Can\'t find what you need? You may want to find a Joomla professional in the <a href=\"http://resources.joomla.org/\">Joomla! Resource Directory</a>.</p>\r\n<p>Want to learn more? Consider attending a <a href=\"http://community.joomla.org/events.html\">Joomla! Day</a> or other event or joining a local <a href=\"http://community.joomla.org/user-groups.html\">Joomla! Users Group</a>. Can\'t find one near you? Start one yourself.</p>',1,0,0,88,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:10:49',42,901,'2013-07-05 10:33:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,4,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(9,105,'Contacts','contact','','<p>The contact component provides a way to provide contact forms and information for your site or to create a complex directory that can be used for many different purposes. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Contacts_Contacts\">Help</a></p>','',1,0,0,88,'2011-01-01 00:00:01',901,'Joomla!','2011-01-10 04:15:37',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',2,0,2,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(10,106,'Content','content','','<p>The content component (com_content) is what you use to write articles. It is extremely flexible and has the largest number of built in views. Articles can be created and edited from the front end, making content the easiest component to use to create your site content. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Content_Article_Manager\">Help</a></p>','',1,0,0,21,'2011-01-01 00:00:01',901,'','2011-01-10 04:28:12',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',2,0,1,'','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(11,107,'Cradle Mountain','cradle-mountain','','<p> </p>\r\n','\r\n<p> </p>',1,0,0,73,'2011-01-01 00:00:01',901,'Parks Webmaster','2012-01-17 04:42:36',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/landscape\\/250px_cradle_mountain_seen_from_barn_bluff.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Cradle Mountain\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/landscape\\/800px_cradle_mountain_seen_from_barn_bluff.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"Cradle Mountain\",\"image_fulltext_caption\":\"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Rainforest,bluemountainsNSW.jpg Author: Alan J.W.C. License: GNU Free Documentation License v . 1.2 or later\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,1,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(12,110,'Custom HTML Module','custom-html-module','','<p>This module allows you to create your own HTML Module using a WYSIWYG editor. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Custom_HTML\" title=\"Custom HTML Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule custom,Custom HTML}</div>','',1,0,0,66,'2011-01-01 00:00:01',901,'','2011-12-27 11:12:46',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',13,0,1,'','',1,13,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(13,111,'Directions','directions','','<p>Here\'s how to find our shop.</p><p>By car</p><p>Drive along Main Street to the intersection with First Avenue.  Look for our sign.</p><p>By foot</p><p>From the center of town, walk north on Main Street until you see our sign.</p><p>By bus</p><p>Take the #73 Bus to the last stop. We are on the north east corner.</p>','',1,0,0,29,'2011-01-01 00:00:01',901,'Fruit Shop Webmaster','2011-01-01 00:00:01',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,0,2,'','',1,0,'',0,'*',''),(14,112,'Editors','editors','','<p>Editors are used thoughout Joomla! where content is created. TinyMCE is the default choice in most locations although CodeMirror is used in the template manager. No Editor provides a text box for html content.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>CodeMirror <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Editor_-_CodeMirror\">Help</a></li>\r\n<li>TinyMCE<a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Editor_-_TinyMCE\"> Help</a></li>\r\n<li>No Editor <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Editor_-_None\">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>None</li>\r\n</ul>','',1,0,0,25,'2011-01-01 00:00:01',901,'Joomla!','2011-09-06 05:45:40',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',2,0,5,'','',1,0,'',0,'*',''),(15,113,'Editors-xtd','editors-xtd','','<p>These plugins are the buttons found beneath your editor. They only run when an editor plugin runs.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Editor Button: Image<a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Image\"> Help</a></li>\r\n<li>Editor Button: Readmore <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Readmore\">Help</a></li>\r\n<li>Editor Button: Page Break <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Pagebreak\">Help</a></li>\r\n<li>Editor Button: Article <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Article\">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>None</li>\r\n</ul>','',1,0,0,25,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:14:12',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,6,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(16,114,'Feed Display','feed-display','','<p>This module allows the displaying of a syndicated feed. <a href=\"http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Feed_Display\" title=\"Feed Display Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule feed,Feed Display}</div>','',1,0,0,66,'2011-01-01 00:00:01',901,'','2011-09-17 22:22:08',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',3,0,2,'','',1,3,'',0,'*',''),(17,115,'First Blog Post','first-blog-post','','<p><em>Lorem Ipsum is filler text that is commonly used by designers before the content for a new site is ready.</em></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus purus vitae diam posuere nec eleifend elit dictum. Aenean sit amet erat purus, id fermentum lorem. Integer elementum tristique lectus, non posuere quam pretium sed. Quisque scelerisque erat at urna condimentum euismod. Fusce vestibulum facilisis est, a accumsan massa aliquam in. In auctor interdum mauris a luctus. Morbi euismod tempor dapibus. Duis dapibus posuere quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In eu est nec erat sollicitudin hendrerit. Pellentesque sed turpis nunc, sit amet laoreet velit. Praesent vulputate semper nulla nec varius. Aenean aliquam, justo at blandit sodales, mauris leo viverra orci, sed sodales mauris orci vitae magna.</p>','<p>Quisque a massa sed libero tristique suscipit. Morbi tristique molestie metus, vel vehicula nisl ultrices pretium. Sed sit amet est et sapien condimentum viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus viverra tortor porta orci convallis ac cursus erat sagittis. Vivamus aliquam, purus non luctus adipiscing, orci urna imperdiet eros, sed tincidunt neque sapien et leo. Cras fermentum, dolor id tempor vestibulum, neque lectus luctus mauris, nec congue tellus arcu nec augue. Nulla quis mi arcu, in bibendum quam. Sed placerat laoreet fermentum. In varius lobortis consequat. Proin vulputate felis ac arcu lacinia adipiscing. Morbi molestie, massa id sagittis luctus, sem sapien sollicitudin quam, in vehicula quam lectus quis augue. Integer orci lectus, bibendum in fringilla sit amet, rutrum eget enim. Curabitur at libero vitae lectus gravida luctus. Nam mattis, ligula sit amet vestibulum feugiat, eros sem sodales mi, nec dignissim ante elit quis nisi. Nulla nec magna ut leo convallis sagittis ac non erat. Etiam in augue nulla, sed tristique orci. Vestibulum quis eleifend sapien.</p><p>Nam ut orci vel felis feugiat posuere ut eu lorem. In risus tellus, sodales eu eleifend sed, imperdiet id nulla. Nunc at enim lacus. Etiam dignissim, arcu quis accumsan varius, dui dui faucibus erat, in molestie mauris diam ac lacus. Sed sit amet egestas nunc. Nam sollicitudin lacinia sapien, non gravida eros convallis vitae. Integer vehicula dui a elit placerat venenatis. Nullam tincidunt ligula aliquet dui interdum feugiat. Maecenas ultricies, lacus quis facilisis vehicula, lectus diam consequat nunc, euismod eleifend metus felis eu mauris. Aliquam dapibus, ipsum a dapibus commodo, dolor arcu accumsan neque, et tempor metus arcu ut massa. Curabitur non risus vitae nisl ornare pellentesque. Pellentesque nec ipsum eu dolor sodales aliquet. Vestibulum egestas scelerisque tincidunt. Integer adipiscing ultrices erat vel rhoncus.</p><p>Integer ac lectus ligula. Nam ornare nisl id magna tincidunt ultrices. Phasellus est nisi, condimentum at sollicitudin vel, consequat eu ipsum. In venenatis ipsum in ligula tincidunt bibendum id et leo. Vivamus quis purus massa. Ut enim magna, pharetra ut condimentum malesuada, auctor ut ligula. Proin mollis, urna a aliquam rutrum, risus erat cursus odio, a convallis enim lectus ut lorem. Nullam semper egestas quam non mattis. Vestibulum venenatis aliquet arcu, consectetur pretium erat pulvinar vel. Vestibulum in aliquet arcu. Ut dolor sem, pellentesque sit amet vestibulum nec, tristique in orci. Sed lacinia metus vel purus pretium sit amet commodo neque condimentum.</p><p>Aenean laoreet aliquet ullamcorper. Nunc tincidunt luctus tellus, eu lobortis sapien tincidunt sed. Donec luctus accumsan sem, at porttitor arcu vestibulum in. Sed suscipit malesuada arcu, ac porttitor orci volutpat in. Vestibulum consectetur vulputate eros ut porttitor. Aenean dictum urna quis erat rutrum nec malesuada tellus elementum. Quisque faucibus, turpis nec consectetur vulputate, mi enim semper mi, nec porttitor libero magna ut lacus. Quisque sodales, leo ut fermentum ullamcorper, tellus augue gravida magna, eget ultricies felis dolor vitae justo. Vestibulum blandit placerat neque, imperdiet ornare ipsum malesuada sed. Quisque bibendum quam porta diam molestie luctus. Sed metus lectus, ornare eu vulputate vel, eleifend facilisis augue. Maecenas eget urna velit, ac volutpat velit. Nam id bibendum ligula. Donec pellentesque, velit eu convallis sodales, nisi dui egestas nunc, et scelerisque lectus quam ut ipsum.</p>',1,0,0,27,'2011-01-01 00:00:01',901,'','2011-01-01 00:00:01',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,0,2,'','',1,0,'',0,'*',''),(18,116,'Second Blog Post','second-blog-post','','<p><em>Lorem Ipsum is text that is traditionally used by designers when working on a site before the content is ready.</em></p><p>Pellentesque bibendum metus ut dolor fermentum ut pulvinar tortor hendrerit. Nam vel odio vel diam tempus iaculis in non urna. Curabitur scelerisque, nunc id interdum vestibulum, felis elit luctus dui, ac dapibus tellus mauris tempus augue. Duis congue facilisis lobortis. Phasellus neque erat, tincidunt non lacinia sit amet, rutrum vitae nunc. Sed placerat lacinia fermentum. Integer justo sem, cursus id tristique eget, accumsan vel sapien. Curabitur ipsum neque, elementum vel vestibulum ut, lobortis a nisl. Fusce malesuada mollis purus consectetur auctor. Morbi tellus nunc, dapibus sit amet rutrum vel, laoreet quis mauris. Aenean nec sem nec purus bibendum venenatis. Mauris auctor commodo libero, in adipiscing dui adipiscing eu. Praesent eget orci ac nunc sodales varius.</p>','<p>Nam eget venenatis lorem. Vestibulum a interdum sapien. Suspendisse potenti. Quisque auctor purus nec sapien venenatis vehicula malesuada velit vehicula. Fusce vel diam dolor, quis facilisis tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque libero nisi, pellentesque quis cursus sit amet, vehicula vitae nisl. Curabitur nec nunc ac sem tincidunt auctor. Phasellus in mattis magna. Donec consequat orci eget tortor ultricies rutrum. Mauris luctus vulputate molestie. Proin tincidunt vehicula euismod. Nam congue leo non erat cursus a adipiscing ipsum congue. Nulla iaculis purus sit amet turpis aliquam sit amet dapibus odio tincidunt. Ut augue diam, congue ut commodo pellentesque, fermentum mattis leo. Sed iaculis urna id enim dignissim sodales at a ipsum. Quisque varius lobortis mollis. Nunc purus magna, pellentesque pellentesque convallis sed, varius id ipsum. Etiam commodo mi mollis erat scelerisque fringilla. Nullam bibendum massa sagittis diam ornare rutrum.</p><p>Praesent convallis metus ut elit faucibus tempus in quis dui. Donec fringilla imperdiet nibh, sit amet fringilla velit congue et. Quisque commodo luctus ligula, vitae porttitor eros venenatis in. Praesent aliquet commodo orci id varius. Nulla nulla nibh, varius id volutpat nec, sagittis nec eros. Cras et dui justo. Curabitur malesuada facilisis neque, sed tempus massa tincidunt ut. Sed suscipit odio in lacus auctor vehicula non ut lacus. In hac habitasse platea dictumst. Sed nulla nisi, lacinia in viverra at, blandit vel tellus. Nulla metus erat, ultrices non pretium vel, varius nec sem. Morbi sollicitudin mattis lacus quis pharetra. Donec tincidunt mollis pretium. Proin non libero justo, vitae mattis diam. Integer vel elit in enim varius posuere sed vitae magna. Duis blandit tempor elementum. Vestibulum molestie dui nisi.</p><p>Curabitur volutpat interdum lorem sed tempus. Sed placerat quam non ligula lacinia sodales. Cras ultrices justo at nisi luctus hendrerit. Quisque sit amet placerat justo. In id sapien eu neque varius pharetra sed in sapien. Etiam nisl nunc, suscipit sed gravida sed, scelerisque ut nisl. Mauris quis massa nisl, aliquet posuere ligula. Etiam eget tortor mauris. Sed pellentesque vestibulum commodo. Mauris vitae est a libero dapibus dictum fringilla vitae magna.</p><p>Nulla facilisi. Praesent eget elit et mauris gravida lobortis ac nec risus. Ut vulputate ullamcorper est, volutpat feugiat lacus convallis non. Maecenas quis sem odio, et aliquam libero. Integer vel tortor eget orci tincidunt pulvinar interdum at erat. Integer ullamcorper consequat eros a pellentesque. Cras sagittis interdum enim in malesuada. Etiam non nunc neque. Fusce non ligula at tellus porta venenatis. Praesent tortor orci, fermentum sed tincidunt vel, varius vel dui. Duis pulvinar luctus odio, eget porta justo vulputate ac. Nulla varius feugiat lorem sed tempor. Phasellus pulvinar dapibus magna eget egestas. In malesuada lectus at justo pellentesque vitae rhoncus nulla ultrices. Proin ut sem sem. Donec eu suscipit ipsum. Cras eu arcu porttitor massa feugiat aliquet at quis nisl.</p>',1,0,0,27,'2011-01-01 00:00:01',901,'','2011-01-01 00:00:01',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,0,1,'','',1,0,'',0,'*',''),(19,117,'Footer Module','footer-module','','<p>This module shows the Joomla! copyright information. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Footer\" title=\"Footer Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule footer,Footer}</div>','',1,0,0,66,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:22:47',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',4,0,3,'','',1,4,'',0,'*',''),(20,118,'Fruit Shop','fruit-shop','','<h2>Welcome to the Fruit Shop</h2>\r\n<p>We sell fruits from around the world. Please use our website to learn more about our business. We hope you will come to our shop and buy some fruit.</p>\r\n<p><em>This mini site will show you how you might want to set up a site for a business, in this example one selling fruit. It shows how to use access controls to manage your site content. If you were building a real site, you might want to extend it with e-commerce, a catalog, mailing lists or other enhancements, many of which are available through the</em><a href=\"http://extensions.joomla.org\"><em> Joomla! Extensions Directory</em></a>.</p>\r\n<p><em>To understand this site you will probably want to make one user with group set to customer and one with group set to grower. By logging in with different privileges you can see how access control works.</em></p>','',1,0,0,29,'2011-01-01 00:00:01',901,'Fruit Shop Webmaster','2011-12-27 11:17:59',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(21,119,'Getting Help','getting-help','','<p><img class=\"image-left\" src=\"administrator/templates/hathor/images/header/icon-48-help_header.png\" border=\"0\" /> There are lots of places you can get help with Joomla!. In many places in your site administrator you will see the help icon. Click on this for more information about the options and functions of items on your screen. Other places to get help are:</p>\r\n<ul>\r\n<li><a href=\"http://forum.joomla.org\">Support Forums</a></li>\r\n<li><a href=\"http://docs.joomla.org\">Documentation</a></li>\r\n<li><a href=\"http://resources.joomla.org\">Professionals</a></li>\r\n<li><a href=\"http://shop.joomla.org/amazoncom-bookstores.html\">Books</a></li>\r\n</ul>','',1,0,0,19,'2011-01-01 00:00:01',901,'Joomla!','2011-01-10 15:32:54',42,901,'2013-07-06 02:01:55','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',10,0,8,'','',1,17,'',0,'*',''),(22,120,'Getting Started','getting-started','','<p>It\'s easy to get started creating your website. Knowing some of the basics will help.</p>\r\n<h3>What is a Content Management System?</h3>\r\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p>\r\n<p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. The Joomla! software brings together the template and the content to create web pages.</p>\r\n<h3>Site and Administrator</h3>\r\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \"Site Administrator\" link on the \"This Site\" menu or by adding /administrator to the end of you domain name.</p>\r\n<p>Log in to the administrator using the username and password created during the installation of Joomla.</p>\r\n<h3>Logging in</h3>\r\n<p>To login to the front end of your site use the login form or the login menu link on the \"This Site\" menu. Use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles.</p>\r\n<p>In managing your site, you will be able to create content that only logged-in users are able to see.</p>\r\n<h3>Creating an article</h3>\r\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \"submit article\" link on that menu.</p>\r\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published and put it in the Joomla category.</p>\r\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div>\r\n<h3>Learn more</h3>\r\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href=\"http://docs.joomla.org\">Joomla! documentation site</a> and on the<a href=\"http://forum.joomla.org\"> Joomla! forums</a>.</p>','',1,0,0,19,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:21:44',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,9,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(23,121,'Happy Orange Orchard','happy-orange-orchard','','<p>At our orchard we grow the world\'s best oranges as well as other citrus fruit such as lemons and grapefruit. Our family has been tending this orchard for generations.</p>','',1,0,0,30,'2011-01-01 00:00:01',901,'Fruit Shop Webmaster','2011-01-01 00:00:01',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,0,2,'','',1,0,'',0,'*',''),(24,122,'Joomla!','joomla','','<p>Congratulations! You have a Joomla site! Joomla makes it easy to build a website just the way you want it and keep it simple to update and maintain.</p>\r\n<p>Joomla is a flexible and powerful platform, whether you are building a small site for yourself or a huge site with hundreds of thousands of visitors. Joomla is open source, which means you can make it work just the way you want it to.</p>','',1,0,0,19,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:22:23',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,2,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(25,123,'Koala','koala','','<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n','\r\n<p> </p>',1,0,0,72,'2011-01-01 00:00:01',901,'Parks Webmaster','2012-01-17 05:15:00',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/animals\\/180px_koala_ag1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Koala  Thumbnail\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/animals\\/800px_koala_ag1.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Koala Climbing Tree\",\"image_fulltext_caption\":\"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Koala-ag1.jpg Author: Arnaud Gaillard License: Creative Commons Share Alike Attribution Generic 1.0\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',9,0,2,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(26,124,'Language Switcher','language-switcher','','<p>The language switcher module allows you to take advantage of the language tags that are available when content, modules and menu links are created.</p>\r\n<p>This module displays a list of available Content Languages for switching between them.</p>\r\n<p>When switching languages, it redirects to the Home page, or associated menu item, defined for the chosen language. Thereafter, the navigation will be the one defined for that language.</p>\r\n<p><strong>The language filter plugin must be enabled for this module to work properly.</strong></p>\r\n<p><strong></strong> <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Language_Switcher\" title=\"Language Switcher Module\">Help</a></p>\r\n<p>To view an example of the language switch moduler module, go to the site administrator and enable the language filter plugin and the language switcher module labelled \"language switcher\" and visit the fruit shop or park sample sites. Then follow<a href=\"http://docs.joomla.org/Language_Switcher_Tutorial_for_Joomla_1.6\"> the instructions in this tutorial</a>.</p>','',1,0,0,67,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:25:00',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,3,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(27,125,'Latest Articles Module','latest-articles-module','','<p>This module shows a list of the most recently published and current Articles. Some that are shown may have expired even though they are the most recent. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Latest_News\" title=\"Latest Articles\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule articles_latest,Latest News}</div>','',1,0,0,64,'2011-01-01 00:00:01',901,'','2011-12-27 11:25:41',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',9,0,1,'modules, content','',1,15,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(28,126,'Login Module','login-module','','<p>This module displays a username and password login form. It also displays a link to retrieve a forgotten password. If user registration is enabled (in the Global Configuration settings), another link will be shown to enable self-registration for users. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Login\" title=\"Login\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule login,login}</div>','',1,0,0,65,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:20:35',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',4,0,2,'','',1,5,'',0,'*',''),(29,127,'Menu Module','menu-module','','<p>This module displays a menu on the site (frontend).  Menus can be displayed in a wide variety of ways by using the menu options and css menu styles. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Menu\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule mod_menu,Menu Example}</div>','',1,0,0,75,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:18:45',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',8,0,1,'','',1,12,'',0,'*',''),(30,128,'Most Read Content','most-read-content','','<p>This module shows a list of the currently published Articles which have the highest number of page views. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Most_Read\" title=\"Most Read Content\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule articles_popular,Articles Most Read}</div>','',1,0,0,64,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:26:41',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,0,2,'modules, content','',1,10,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(31,129,'News Flash','news-flash','','<p>Displays a set number of articles from a category based on date or random selection. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Newsflash\" title=\"News Flash Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule articles_news,News Flash}</div>','',1,0,0,64,'2011-01-01 00:00:01',901,'','2011-09-17 22:16:46',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',4,0,3,'modules, content','',1,10,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(32,130,'Options','options','','<p>As you make your Joomla! site you will control the details of the display using <em>options</em> also referred to as <em>parameter</em><strong>s</strong>. Options control everything from whether the author\'s name is displayed to who can view what to the number of items shown on a list.</p>\r\n<p>Default options for each component are changed using the Options button on the component toolbar.</p>\r\n<p>Options can also be set on an individual item, such as an article or contact and in menu links.</p>\r\n<p>If you are happy with how your site looks, it is fine to leave all of the options set to the defaults that were created when your site was installed. As you become more experienced with Joomla you will use options more.</p>\r\n<p> </p>','',1,0,0,19,'2011-01-01 00:00:01',901,'Joomla!','2012-01-17 16:21:24',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,10,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(33,131,'Phyllopteryx','phyllopteryx','','<p> </p>\r\n','\r\n<p> </p>',1,0,0,72,'2011-01-01 00:00:01',901,'Parks Webmaster','2012-01-17 04:57:58',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/animals\\/200px_phyllopteryx_taeniolatus1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Phyllopteryx\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/animals\\/800px_phyllopteryx_taeniolatus1.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Phyllopteryx\",\"image_fulltext_caption\":\"Source: http:\\/\\/en.wikipedia.org\\/wiki\\/File:Phyllopteryx_taeniolatus1.jpg Author: Richard Ling License: GNU Free Documentation License v 1.2 or later\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,3,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(34,132,'Pinnacles','pinnacles','','<p> </p>\r\n','\r\n<p> </p>',1,0,0,73,'2011-01-01 00:00:01',901,'Parks Webmaster','2012-01-17 04:41:30',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/landscape\\/120px_pinnacles_western_australia.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Kings Canyon\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/landscape\\/800px_pinnacles_western_australia.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Kings Canyon\",\"image_fulltext_caption\":\"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Pinnacles_Western_Australia.jpg  Author: Martin Gloss  License: GNU Free Documentation license v 1.2 or later.\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,4,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(35,133,'Professionals','professionals','','<p>Joomla! 2.5 continues development of the Joomla Framework and CMS as a powerful and flexible way to bring your vision of the web to reality. With the administrator now fully MVC, the ability to control its look and the management of extensions is now complete.</p>\r\n','\r\n<p>Working with multiple template styles and overrides for the same views, creating the design you want is easier than it has ever been. Limiting support to PHP 5.2.4 and above makes Joomla lighter and faster than ever. Languages files can now be overridden without having your changes lost during an upgrade.  With the proper xml your users update extensions with a single click.</p>\r\n<p>Access control lists are now incorporated using a new system developed for Joomla. The ACL system is designed with developers in mind, so it is easy to incorporate into your extensions. The new nested sets libraries allow you to incorporate infinitely deep categories but also to use nested sets in a variety of other ways.</p>\r\n<p>A new forms library makes creating all kinds of user interaction simple. MooTools 1.3 provides a highly flexible javascript framework that is a major advance over MooTools 1.0.</p>\r\n<p>New events throughout the core make integration of your plugins where you want them a snap.</p>\r\n<p>The separation of the Joomla! Platform project from the Joomla! CMS project makes continuous development of new, powerful APIs  and continuous improvement of existing APIs possible while maintaining the stability of the CMS that millions of webmasters and professionals rely upon.</p>\r\n<p>Learn about:</p>\r\n<ul>\r\n<li><a href=\"http://docs.joomla.org/What\'s_new_in_Joomla_1.6\">Changes since 1.5</a></li>\r\n<li><a href=\"http://docs.joomla.org/ACL_Tutorial_for_Joomla_1.6\">Working with ACL</a></li>\r\n<li><a href=\"http://docs.joomla.org/API16:JCategories\">Working with nested categories</a></li>\r\n<li><a href=\"http://docs.joomla.org/API16:JForm\">Forms library</a></li>\r\n<li><a href=\"http://docs.joomla.org/Working_with_Mootools_1.3\">Working with Mootools 1.3</a></li>\r\n<li><a href=\"http://docs.joomla.org/Layout_Overrides_in_Joomla_1.6\">Using new features of the override system</a></li>\r\n<li><a href=\"http://api.joomla.org\">Joomla! API</a></li>\r\n<li><a href=\"http://docs.joomla.org/API16:JDatabaseQuery\">Using JDatabaseQuery</a></li>\r\n<li><a href=\"http://docs.joomla.org/What\'s_new_in_Joomla_1.6#Events\">New and updated events</a></li>\r\n<li><a href=\"http://docs.joomla.org/Xml-rpc_changes_in_Joomla!_1.6\">Xmlrpc</a></li>\r\n<li><a href=\"http://docs.joomla.org/What\'s_new_in_Joomla_1.6#Extension_management\">Installing and updating extensions</a></li>\r\n<li><a href=\"http://docs.joomla.org/Setting_up_your_workstation_for_Joomla!_development\">Setting up your development environment</a></li>\r\n<li><a href=\"github.com/joomla\">The Joomla! Platform Repository</a> </li>\r\n</ul>',1,0,0,19,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:36:13',42,0,'0000-00-00 00:00:00','2011-01-09 16:41:13','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',16,0,5,'','',1,10,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(36,134,'Random Image Module','random-image-module','','<p>This module displays a random image from your chosen image directory. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Random_Image\" title=\"Random Image Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule random_image,Random Image}</div>','',1,0,0,66,'2011-01-01 00:00:01',901,'','2012-01-17 16:11:13',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,0,4,'','',1,6,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(37,135,'Related Items Module','related-items-module','','<p>This module displays other Articles that are related to the one currently being viewed. These relations are established by the Meta Keywords.  All the keywords of the current Article are searched against all the keywords of all other published articles. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Related\" title=\"Related Items Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule related_items,Articles Related Items}</div>','',1,0,0,64,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:37:34',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,0,4,'modules, content','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(38,136,'Sample Sites','sample-sites','','<p>Your installation includes sample data, designed to show you some of the options you have for building your website. In addition to information about Joomla! there are two sample \"sites within a site\" designed to help you get started with building your own site.</p>\r\n<p>The first site is a simple site about <a href=\"index.php?Itemid=243\">Australian Parks</a>. It shows how you can quickly and easily build a personal site with just the building blocks that are part of Joomla. It includes a personal blog, weblinks, and a very simple image gallery.</p>\r\n<p>The second site is slightly more complex and represents what you might do if you are building a site for a small business, in this case a <a href=\"index.php/welcome.html\"></a><a href=\"index.php?Itemid=429\">Fruit Shop</a>.</p>\r\n<p>In building either style site, or something completely different, you will probably want to add <a href=\"http://extensions.joomla.org\">extensions</a> and either create or purchase your own template. Many Joomla users start by modifying the <a href=\"http://docs.joomla.org/How_do_you_modify_a_template%3F\">templates</a> that come with the core distribution so that they include special images and other design elements that relate to their site\'s focus.</p>','',1,0,0,19,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:39:07',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,11,'','',1,10,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(39,137,'Search','search-component','','<p>Joomla! 2.5 offers two search options.</p>\r\n<p>The Basic Search component provides basic search functionality for the information contained in your core components. Many extensions can also be searched by the search component. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Search\">Help</a></p>\r\n<p>The Smart Search component offers searching similar to that found in major search engines. Smart Search is disabled by default. If you choose to enable it you will need to take several steps. First, enable the Smart Search Plugin in the plugin manager. Then, if you are using the Basic Search Module replace it with the Smart Search Module. Finally, if you have already created content, go to the Smart Search component in your site administrator and click the Index icon. Once indexing of your content is complete, Smart Search will be ready to use. Help.</p>','',1,0,0,21,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:41:48',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,3,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(40,138,'Search Module','search-module','','<p>This module will display a search box. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Search\" title=\"Search\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule search,Search}</div>','',1,0,0,67,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:35:56',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',4,0,4,'','',1,6,'',0,'*',''),(41,139,'Search ','search-plugin','','<p>The search component uses plugins to control which parts of your Joomla! site are searched. You may choose to turn off some areas to improve performance or for other reasons. Many third party Joomla! extensions have search plugins that extend where search takes place.</p>\r\n<p>Default On:</p>\r\n<ul>\r\n<li>Content <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Content\">Help</a></li>\r\n<li>Contacts <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Contacts\">Help</a></li>\r\n<li>Weblinks <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Weblinks\">Help</a></li>\r\n<li>News Feeds <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Newsfeeds\">Help</a></li>\r\n<li>Categories <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Categories\">Help</a></li>\r\n</ul>','',1,0,0,25,'2011-01-01 00:00:01',901,'Joomla!','2011-09-06 06:13:18',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',3,0,1,'','',1,0,'',0,'*',''),(42,140,'Site Map','site-map','','<p>{loadposition sitemapload}</p><p><em>By putting all of your content into nested categories you can give users and search engines access to everything using a menu.</em></p>','',1,0,0,14,'2011-01-01 00:00:01',901,'Joomla!','2011-01-01 00:00:01',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,0,1,'','',1,6,'',0,'*',''),(43,141,'Spotted Quoll','spotted-quoll','','<p> </p>\r\n<p> </p>\r\n','\r\n<p> </p>',1,0,0,72,'2011-01-01 00:00:01',901,'Parks Webmaster','2012-01-17 05:02:58',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/animals\\/220px_spottedquoll_2005_seanmcclean.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Spotted Quoll\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/animals\\/789px_spottedquoll_2005_seanmcclean.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Spotted Quoll\",\"image_fulltext_caption\":\"Source: http:\\/\\/en.wikipedia.org\\/wiki\\/File:SpottedQuoll_2005_SeanMcClean.jpg Author: Sean McClean License: GNU Free Documentation License v 1.2 or later\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,4,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(44,142,'Statistics Module','statistics','','<p>This module shows information about your server installation together with statistics on the Web site users, number of Articles in your database and the number of Web links you provide.</p>\r\n<div class=\"sample-module\">{loadmodule mod_stats,Statistics}</div>','',1,0,0,67,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:43:25',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,0,5,'','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(45,143,'Syndicate Module','syndicate-module','','<p>The syndicate module will display a link that allows users to take a feed from your site. It will only display on pages for which feeds are possible. That means it will not display on single article, contact or weblinks pages, such as this one. <a href=\"http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Syndicate\" title=\"Synicate Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadposition syndicate,Syndicate}</div>','',1,0,0,67,'2011-01-01 00:00:01',901,'','2011-12-27 11:44:16',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,6,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(46,144,'System','system','','<p>System plugins operate every time a page on your site loads. They control such things as your URLS, whether users can check a \"remember me\" box on the login module, and whether caching is enabled. New is the redirect plugin that together with the redirect component will assist you in managing changes in URLs.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Remember me <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Remember_Me\">Help</a></li>\r\n<li>SEF <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_SEF\">Help</a></li>\r\n<li>Debug <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Debug\">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>Cache <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Cache\">Help</a></li>\r\n<li>Log <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Log\">Help</a></li>\r\n<li>Redirect <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Redirect\">Help</a></li>\r\n</ul>','',1,0,0,25,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:45:54',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,0,2,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(47,145,'The Joomla! Community','the-joomla-community','','<p>Joomla means All Together, and it is a community of people all working and having fun together that makes Joomla possible. Thousands of people each year participate in the Joomla community, and we hope you will be one of them.</p>\r\n<p>People with all kinds of skills, of all skill levels and from around the world are welcome to join in. Participate in the <a href=\"http://joomla.org\">Joomla.org</a> family of websites (the<a href=\"http://forum.joomla.org\"> forum </a>is a great place to start). Come to a <a href=\"http://community.joomla.org/events.html\">Joomla! event</a>. Join or start a <a href=\"http://community.joomla.org/user-groups.html\">Joomla! Users Group</a>. Whether you are a developer, site administrator, designer, end user or fan, there are ways for you to participate and contribute.</p>','',1,0,0,19,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:47:56',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,3,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(48,146,'The Joomla! Project','the-joomla-project','','<p>The Joomla Project consists of all of the people who make and support the Joomla Web Platform and Content Management System.</p>\r\n<p>Our mission is to provide a flexible platform for digital publishing and collaboration.</p>\r\n<p>The core values are:</p>\r\n<ul>\r\n<li>Freedom</li>\r\n<li>Equality</li>\r\n<li>Trust</li>\r\n<li>Community</li>\r\n<li>Collaboration</li>\r\n<li>Usability</li>\r\n</ul>\r\n<p>In our vision, we see:</p>\r\n<ul>\r\n<li>People publishing and collaborating in their communities and around the world</li>\r\n<li>Software that is free, secure, and high-quality</li>\r\n<li>A community that is enjoyable and rewarding to participate in</li>\r\n<li>People around the world using their preferred languages</li>\r\n<li>A project that acts autonomously</li>\r\n<li>A project that is socially responsible</li>\r\n<li>A project dedicated to maintaining the trust of its users</li>\r\n</ul>\r\n<p>There are millions of users around the world and thousands of people who contribute to the Joomla Project. They work in three main groups: the Production Working Group, responsible for everything that goes into software and documentation; the Community Working Group, responsible for creating a nurturing the community; and Open Source Matters, the non profit organization responsible for managing legal, financial and organizational issues.</p>\r\n<p>Joomla is a free and open source project, which uses the GNU General Public License version 2 or later.</p>','',1,0,0,19,'2011-01-01 00:00:01',901,'','2011-12-27 11:47:48',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,1,'','',1,4,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(49,147,'Typography','typography','','<h1>H1 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h1><h2>H2 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h2><h3>H3 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h3><h4>H4 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h4><h5>H5 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h5><h6>H6 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h6><p>P The quick brown fox ran over the lazy dog. THE QUICK BROWN FOX RAN OVER THE LAZY DOG.</p><ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item</li></ul></li></ul></li></ul><ol><li>tem</li><li>Item</li><li>Item<br /> <ol><li>Item</li><li>Item</li><li>Item<br /><ol><li>Item</li><li>Item</li><li>Item</li></ol></li></ol> </li></ol>','',1,0,0,23,'2011-01-01 00:00:01',901,'Joomla!','2011-01-01 00:00:01',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,0,1,'','',1,0,'',0,'*',''),(50,148,'Upgraders','upgraders','','<p>If you are an experienced Joomla! 1.5 user, this Joomla site will seem very familiar. There are new templates and improved user interfaces, but most functionality is the same. The biggest changes are improved access control (ACL) and nested categories. This release of Joomla has strong continuity with Joomla! 1.7 while adding enhancements.</p>\r\n','\r\n<p>The new user manager will let you manage who has access to what in your site. You can leave access groups exactly the way you had them in Joomla 1.5 or make them as complicated as you want. You can learn more about<a href=\"http://docs.joomla.org/ACL_Tutorial_for_Joomla_1.6\"> how access control works</a> in on the <a href=\"http://docs.joomla.org\">Joomla! Documentation site</a></p>\r\n<p>In Joomla 1.5 and 1.0 content was organized into sections and categories. From 1.6 forward sections are gone, and you can create categories within categories, going as deep as you want. The sample data provides many examples of the use of nested categories.</p>\r\n<p>All layouts have been redesigned to improve accessibility and flexibility. </p>\r\n<p>Updating your site and extensions when needed is easier than ever thanks to installer improvements.</p>\r\n<p> </p>',1,0,0,19,'2011-01-01 00:00:01',901,'','2012-01-17 04:28:10',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,0,6,'','',1,6,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(51,149,'User','user-plugins','','<p>Default on:</p>\r\n<ul>\r\n<li>Joomla <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#User_-_Joomla.21\">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<p>Two new plugins are available but are disabled by default.</p>\r\n<ul>\r\n<li>Contact Creator <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#User_-_Contact_Creator\">Help</a><br />Creates a new linked contact record for each new user created.</li>\r\n<li>Profile <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#User_-_Profile\">Help</a><br />This example profile plugin allows you to insert additional fields into user registration and profile display. This is intended as an example of the types of extensions to the profile you might want to create.</li>\r\n</ul>','',1,0,0,25,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:51:25',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,4,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(52,150,'Users','users-component','','<p>The users extension lets your site visitors register, login and logout, change their passwords and other information, and recover lost passwords. In the administrator it allows you to create, block and manage users and create user groups and access levels. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Users_User_Manager\">Help</a></p>\r\n<p>Please note that some of the user views will not display if you are not logged-in to the site.</p>','',1,0,0,21,'2011-01-01 00:00:01',901,'Joomla!','2011-01-10 04:52:55',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',2,0,5,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(53,151,'Using Joomla!','using-joomla','','<p>With Joomla you can create anything from a simple personal website to a complex ecommerce or social site with millions of visitors.</p>\r\n<p>This section of the sample data provides you with a brief introduction to Joomla concepts and reference material to help you understand how Joomla works.</p>\r\n<p><em>When you no longer need the sample data, you can can simply unpublish the sample data category found within each extension in the site administrator or you may completely delete each item and all of the categories. </em></p>','',1,0,0,19,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:52:45',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,7,'','',1,10,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(54,152,'Weblinks','weblinks','','<p>Weblinks (com_weblinks) is a component that provides a structured way to organize external links and present them in a visually attractive, consistent and informative way. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Weblinks_Links\">Help</a></p>','',1,0,0,21,'2011-01-01 00:00:01',901,'Joomla!','2011-01-10 04:20:10',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',2,0,6,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(55,153,'Weblinks Module','weblinks-module','','<p>This module displays the list of weblinks in a category. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Weblinks\" title=\"Weblinks Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule weblinks,Weblinks}</div>','',1,0,0,66,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:32:10',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',7,0,5,'','',1,23,'',0,'*',''),(56,154,'Who\'s Online','whos-online','','<p>The Who\'s Online Module displays the number of Anonymous Users (e.g. Guests) and Registered Users (ones logged-in) that are currently accessing the Web site. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Who_Online\" title=\"Who\'s Online\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule whosonline,Who\'s Online}</div>','',1,0,0,65,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:19:45',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',4,0,1,'','',1,5,'',0,'*',''),(57,155,'Wobbegone','wobbegone','','<p> </p>\r\n','\r\n<p> </p>',1,0,0,72,'2011-01-01 00:00:01',901,'Parks Webmaster','2012-01-17 05:01:59',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/animals\\/180px_wobbegong.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Wobbegon\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/animals\\/800px_wobbegong.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Wobbegon\",\"image_fulltext_caption\":\"Source: http:\\/\\/en.wikipedia.org\\/wiki\\/File:Wobbegong.jpg Author: Richard Ling Rights: GNU Free Documentation License v 1.2 or later\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(58,156,'Wonderful Watermelon','wonderful-watermelon','','<p>Watermelon is a wonderful and healthy treat. We grow the world\'s sweetest watermelon. We have the largest watermelon patch in our country.</p>','',1,0,0,30,'2011-01-01 00:00:01',901,'Fruit Shop Webmaster','2011-01-01 00:00:01',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,0,1,'','',1,0,'',0,'*',''),(59,157,'Wrapper Module','wrapper-module','','<p>This module shows an iFrame window to specified location. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Wrapper\" title=\"Wrapper Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule wrapper,Wrapper}</div>','',1,0,0,67,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:35:00',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',8,0,1,'','',1,15,'',0,'*',''),(60,158,'News Feeds','news-feeds','','<p>News Feeds (com_newsfeeds) provides a way to organize and present news feeds. News feeds are a way that you present information from another site on your site. For example, the joomla.org website has numerous feeds that you can incorporate on your site. You an use menus to present a single feed, a list of feeds in a category, or a list of all feed categories. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Newsfeeds_Feeds\">Help</a></p>','',1,0,0,21,'2011-01-01 00:00:01',901,'Joomla!','2011-12-27 11:27:31',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,4,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(61,159,'Breadcrumbs Module','breadcrumbs-module','','<p>Breadcrumbs provide a pathway for users to navigate through the site. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Breadcrumbs\" title=\"Breacrumbs Module\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule breadcrumbs,breadcrumbs}</div>','',1,0,0,75,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:10:19',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',5,0,2,'','',1,9,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(62,160,'Content','content-plugins','','<p>Content plugins run when specific kinds of pages are loaded. They do things ranging from protecting email addresses from harvesters to creating page breaks.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Email Cloaking <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Email_Cloaking\">Help</a></li>\r\n<li>Load Module <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Load_Modules\">Help</a></li>\r\n<li>Page Break <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Pagebreak\">Help</a></li>\r\n<li>Page Navigation<a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Page_Navigation\"> Help</a></li>\r\n<li>Vote <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Vote\">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>Code Highlighter (GeSHi) <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Code_Highlighter_.28GeSHi.29\">Help</a></li>\r\n</ul>','',1,0,0,25,'2011-01-01 00:00:01',901,'Joomla!','2011-09-06 06:11:50',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',2,0,7,'','',1,1,'',0,'*',''),(64,162,'Blue Mountain Rain Forest','blue-mountain-rain-forest','','<p> </p>\r\n','\r\n<p> </p>',1,0,0,73,'2011-01-01 00:00:01',901,'Parks Webmaster','2012-01-17 04:36:30',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/landscape\\/120px_rainforest_bluemountainsnsw.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"Rain Forest Blue Mountains\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/landscape\\/727px_rainforest_bluemountainsnsw.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Rain Forest Blue Mountains\",\"image_fulltext_caption\":\"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Rainforest,bluemountainsNSW.jpg Author: Adam J.W.C. License: GNU Free Documentation License\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,2,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(65,163,'Ormiston Pound','ormiston-pound','','<p> </p>\r\n','\r\n<p> </p>',1,0,0,73,'2011-01-01 00:00:01',901,'Parks Webmaster','2012-01-17 04:51:33',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/landscape\\/180px_ormiston_pound.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"Ormiston Pound\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/landscape\\/800px_ormiston_pound.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Ormiston Pound\",\"image_fulltext_caption\":\"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Ormiston_Pound.JPG Author: License: GNU Free Public Documentation License\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,0,3,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(66,165,'Latest Users Module','latest-users-module','','<p>This module displays the latest registered users. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Latest_Users\">Help</a></p>\r\n<div class=\"sample-module\">{loadmodule users_latest,Users Latest}</div>','',1,0,0,65,'2011-01-01 00:00:01',901,'Joomla!','2011-09-17 22:21:05',42,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',4,0,3,'','',1,6,'',0,'*',''),(67,168,'What\'s New in 1.5?','whats-new-in-15','','<p>This article deliberately archived as an example.</p><p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>\r\n<p style=\"margin-bottom: 0in;\">In Joomla! 1.5, you\'\'ll notice:</p>\r\n<ul>\r\n<li>Substantially improved usability, manageability, and scalability far beyond the original Mambo foundations</li>\r\n<li>Expanded accessibility to support internationalisation, double-byte characters and right-to-left support for Arabic, Farsi, and Hebrew languages among others</li>\r\n<li>Extended integration of external applications through Web services</li>\r\n<li>Enhanced content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination</li>\r\n<li>A more sustainable and flexible framework for Component and Extension developers</li>\r\n<li>Backward compatibility with previous releases of Components, Templates, Modules, and other Extensions</li>\r\n</ul>','',2,0,0,9,'2011-01-01 00:00:01',901,'Joomla! 1.5','2011-01-01 00:00:01',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,0,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(68,170,'Captcha','captcha','','<p>The Captcha plugins are used to prevent spam submissions on your forms such as registration, contact and login. You basic installation of Joomla includes one Captcha plugin which leverages the ReCaptcha® service but you may install other plugins connecting to different Captcha systems.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>ReCaptcha <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit\">help</a></li>\r\n</ul>\r\n<p>Note: ReCaptcha is a the trademark of Google Inc. and is an independent product not associated with or endorsed by the Joomla Project. You will need to register and agree to the Terms of Service at Recaptcha.net to use this plugin. Complete instructions are available if you edit the ReCaptcha plugin in the Plugin Manager.</p>','',1,0,0,147,'2012-01-17 03:20:45',901,'Joomla!','2013-07-07 01:29:39',901,0,'0000-00-00 00:00:00','2012-01-17 03:20:45','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(69,171,'Quick Icons','quick-icons','','<p> The Quick Icon plugin group is used to provide notification that updates to Joomla! or installed extensions are available and should be applied. These notifications display on your administrator control panel, which is the page you see when you first log in to your site administrator.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Quick icon - Joomla! extensions updates notification <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit\">Help</a>.</li>\r\n<li>Quick icon - Joomla! update notification <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit\">Help</a></li>\r\n</ul>','',1,0,0,25,'2012-01-17 03:27:39',901,'Joomla!','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2012-01-17 03:27:39','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(70,170,'Smart Search','smart-search','','<p>This module provides search using the Smart Search component. You should only use it if you have indexed your content and either have enabled the Smart Search content plugin or are keeping the index of your site updated manually. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help25:Extensions_Module_Manager_Smart_Search\">Help</a>.</p>\r\n<div class=\"sample-module\">{loadmodule finder,Smart Search}</div>','',1,0,0,67,'2012-01-17 03:42:36',901,'','2012-01-17 16:15:48',42,0,'0000-00-00 00:00:00','2012-01-17 03:42:36','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',10,0,0,'','',1,13,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
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
) ENGINE=InnoDB AUTO_INCREMENT=10062 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_extensions`
--

LOCK TABLES `yami_extensions` WRITE;
/*!40000 ALTER TABLE `yami_extensions` DISABLE KEYS */;
INSERT INTO `yami_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"zh-CN\",\"site\":\"zh-CN\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"1\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"legacy\":false,\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/\",\"version\":\"5.2\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"legacy\":false,\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"legacy\":false,\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"11.4\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<fieldset\r\n		name=\"page-options\"\r\n		label=\"COM_MENUS_PAGE_OPTIONS_LABEL\"\r\n		>\r\n\r\n		<field\r\n			name=\"page_title\"\r\n			type=\"text\"\r\n			label=\"COM_MENUS_ITEM_FIELD_PAGE_TITLE_LABEL\"\r\n			description=\"COM_MENUS_ITEM_FIELD_PAGE_TITLE_DESC\"\r\n			/>\r\n		<field\r\n			name=\"show_page_heading\"\r\n			type=\"radio\"\r\n			label=\"COM_MENUS_ITEM_FIELD_SHOW_PAGE_HEADING_LABEL\"\r\n			description=\"COM_MENUS_ITEM_FIELD_SHOW_PAGE_HEADING_DESC\"\r\n			default=\"0\"\r\n			filter=\"integer\"\r\n			>\r\n			<option value=\"0\" class=\"no\">JNO</option>\r\n			<option value=\"1\" class=\"yes\">JYES</option>\r\n		</field>\r\n		<field\r\n			name=\"page_heading\"\r\n			type=\"text\"\r\n			label=\"COM_MENUS_ITEM_FIELD_PAGE_HEADING_LABEL\"\r\n			description=\"COM_MENUS_ITEM_FIELD_PAGE_HEADING_DESC\"\r\n			/>\r\n		<field\r\n			name=\"pageclass_sfx\"\r\n			type=\"text\"\r\n			label=\"COM_MENUS_ITEM_FIELD_PAGE_CLASS_LABEL\"\r\n			description=\"COM_MENUS_ITEM_FIELD_PAGE_CLASS_DESC\"\r\n			/>\r\n	</fieldset>\r\n\r\n	<fieldset\r\n		name=\"permissions\"\r\n		label=\"JCONFIG_PERMISSIONS_LABEL\"\r\n		description=\"JCONFIG_PERMISSIONS_DESC\"\r\n		>\r\n\r\n		<field\r\n			name=\"rules\"\r\n			type=\"rules\"\r\n			label=\"JCONFIG_PERMISSIONS_LABEL\"\r\n			filter=\"rules\"\r\n			validate=\"rules\"\r\n			component=\"com_menus\"\r\n			section=\"component\" />\r\n	</fieldset>\r\n</config>\r\n','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(405,'plg_content_geshi','plugin','geshi','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"linenumbers\":\"0\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2013\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\\/\",\"version\":\"3.5.4.1\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"true\",\"resize_horizontal\":\"false\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(500,'atomic','template','atomic','',0,1,1,0,'{\"legacy\":false,\"name\":\"atomic\",\"type\":\"template\",\"creationDate\":\"10\\/10\\/09\",\"author\":\"Ron Severdia\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"contact@kontentdesign.com\",\"authorUrl\":\"http:\\/\\/www.kontentdesign.com\",\"version\":\"2.5.0\",\"description\":\"TPL_ATOMIC_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(502,'bluestork','template','bluestork','',1,1,1,0,'{\"legacy\":false,\"name\":\"bluestork\",\"type\":\"template\",\"creationDate\":\"07\\/02\\/09\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"TPL_BLUESTORK_XML_DESCRIPTION\",\"group\":\"\"}','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(503,'beez_20','template','beez_20','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez_20\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"legacy\":false,\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"2.5.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(505,'beez5','template','beez5','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez5\",\"type\":\"template\",\"creationDate\":\"21 May 2010\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ5_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"html5\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.10\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.10\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"April 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.11\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(800,'PKG_JOOMLA','package','pkg_joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"PKG_JOOMLA\",\"type\":\"package\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PKG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,'','language','zh-CN','',0,1,0,0,'{\"legacy\":true,\"name\":\"\\u7b80\\u4f53\\u4e2d\\u6587\",\"type\":\"language\",\"creationDate\":\"2013-04-15\",\"author\":\"CHN Translation Team\",\"copyright\":\"Copyright (C) 2010 CHN Joomla Translation Team  (http:\\/\\/joomlacode.org\\/gf\\/project\\/choice\\/). All rights reserved.\",\"authorEmail\":\"zhous1998@sohu.com\",\"authorUrl\":\"www.joomla.cn\",\"version\":\"2.5.11.1\",\"description\":\"\\n    \\n<div align=\\\"center\\\">\\n <table border=\\\"0\\\" width=\\\"90%\\\">\\n  <table width=\\\"100%\\\" border=\\\"0\\\">\\n  <tr>\\n    <td colspan=\\\"2\\\">Chinese language for Joomla 1.6 back-end. Translated by CHN Joomla Translation Team, one of Joomla Accredited Translations.<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">Joomla 2.5 \\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\\u662f\\u7531Joomla\\u6388\\u6743\\u7ffb\\u8bd1\\u7ec4\\u7684Derek Joe\\u5728Joomla 1.6\\u7ffb\\u8bd1\\u5de5\\u4f5c\\u7684\\u57fa\\u7840\\u4e0a\\u8865\\u5145\\u7ffb\\u8bd1\\u3002<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">Joomla 2.5\\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\\u5305\\u7684\\u4e3b\\u8981\\u8d21\\u732e\\u4eba\\uff1a<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u524d\\u53f0\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/wuyujie\\/\\\" target=\\\"_blank\\\">\\u6b66\\u7389\\u6770<\\/a>(wuyujie)\\u3001 <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/gzpan123\\/\\\" target=\\\"_blank\\\">\\u90ed\\u5fd7\\u6500<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u540e\\u53f0\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/keydiagram\\/\\\" target=\\\"_blank\\\">Key Diagram<\\/a>\\u3001<a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/tchyusuf\\/\\\">Yusuf  Wang<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u5b89\\u88c5\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/freechoice\\/\\\" target=\\\"_blank\\\">Johnathan Cheun<\\/a>\\u3001<a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/tchyusuf\\/\\\">Yusuf  Wang<\\/a>\\u3001 <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/zhous\\/\\\" target=\\\"_blank\\\">Derek Joe<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u793a\\u8303\\u5185\\u5bb9\\u53ca\\u7f16\\u8f91\\u5668\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/zhous\\/\\\" target=\\\"_blank\\\">Derek Joe<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u591a\\u8c22\\u5927\\u5bb6\\u7684\\u8f9b\\u52e4\\u52b3\\u52a8\\uff01\\u8c22\\u8c22wayne82\\u7684\\u53cd\\u9988\\u4e0e\\u5efa\\u8bae\\uff01<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td width=\\\"132\\\"><p><a href=\\\"http:\\/\\/www.joomla.cn\\/index.php?option=com_kunena&func=showcat&catid=34&Itemid=46&lang=zh\\\" target=\\\"_blank\\\"><img src=\\\"http:\\/\\/www.joomla.cn\\/images\\/aboutjoomlacn.png\\\" alt=\\\"\\u56e7\\u5566!\\u4e2d\\u56fd\\\" width=\\\"130\\\" height=\\\"70\\\" align=\\\"left\\\" longdesc=\\\"http:\\/\\/www.joomla.cn\\\"><br \\/>\\n    <\\/a><\\/p><\\/td>\\n    <td valign=\\\"middle\\\"><a href=\\\"http:\\/\\/www.joomla.cn\\/index.php?option=com_kunena&func=showcat&catid=34&Itemid=46&lang=zh\\\" target=\\\"_blank\\\">Joomla\\u53ca\\u5176\\u6269\\u5c55\\u6c49\\u5316\\u7684\\u5206\\u4eab\\u4e0e\\u8ba8\\u8bba\\u8bf7\\u8bbf\\u95ee\\\"\\u56e7\\u5566!\\u4e2d\\u56fd\\\"<\\/a><br \\/>\\n      <b>\\u6b22\\u8fce\\u559c\\u6b22\\u7ffb\\u8bd1\\u4e14\\u61c2\\u5f97\\u4f7f\\u7528SVN\\u7684\\u670b\\u53cb<\\/b><br \\/>\\n    <a href=\\\"http:\\/\\/www.joomla.cn\\/index.php?option=com_kunena&func=view&catid=34&id=9537&Itemid=46\\\" target=\\\"_blank\\\"><b>\\u52a0\\u5165\\u6211\\u4eec\\u7684\\u7ffb\\u8bd1\\u7ec4\\uff08\\u771f\\u6b63\\u81ea\\u4e3b\\u7684\\u534f\\u4f5c\\u65b9\\u5f0f\\uff09<\\/b><\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">&nbsp;<\\/td>\\n  <\\/tr>\\n<\\/table>\\n <\\/div>\\n  \\n\\t\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10001,'','language','zh-CN','',1,1,0,0,'{\"legacy\":true,\"name\":\"\\u7b80\\u4f53\\u4e2d\\u6587\",\"type\":\"language\",\"creationDate\":\"2013-04-15\",\"author\":\"Derek Joe(zhous)\",\"copyright\":\"Copyright (C) 2010 CHN Joomla Translation (http:\\/\\/joomlacode.org\\/gf\\/project\\/choice\\/). All rights reserved.\",\"authorEmail\":\"zhous1998@sohu.com\",\"authorUrl\":\"\",\"version\":\"2.5.11.1\",\"description\":\"\\n\\t    \\n<div align=\\\"center\\\">\\n <table border=\\\"0\\\" width=\\\"90%\\\">\\n  <table width=\\\"100%\\\" border=\\\"0\\\">\\n  <tr>\\n    <td colspan=\\\"2\\\">Chinese language for Joomla 2.5 back-end. Translated by CHN Joomla Translation Team, one of Joomla Accredited Translations.<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">Joomla 2.5 \\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\\u662f\\u7531Joomla\\u6388\\u6743\\u7ffb\\u8bd1\\u7ec4\\u7684Derek Joe\\u5728Joomla 1.6\\u7ffb\\u8bd1\\u5de5\\u4f5c\\u7684\\u57fa\\u7840\\u4e0a\\u8865\\u5145\\u7ffb\\u8bd1\\u3002<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">Joomla 2.5\\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\\u5305\\u7684\\u4e3b\\u8981\\u8d21\\u732e\\u4eba\\uff1a<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u524d\\u53f0\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/wuyujie\\/\\\" target=\\\"_blank\\\">\\u6b66\\u7389\\u6770<\\/a>(wuyujie)\\u3001 <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/gzpan123\\/\\\" target=\\\"_blank\\\">\\u90ed\\u5fd7\\u6500<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u540e\\u53f0\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/keydiagram\\/\\\" target=\\\"_blank\\\">Key Diagram<\\/a>\\u3001<a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/tchyusuf\\/\\\">Yusuf  Wang<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u5b89\\u88c5\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/freechoice\\/\\\" target=\\\"_blank\\\">Johnathan Cheun<\\/a>\\u3001<a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/tchyusuf\\/\\\">Yusuf  Wang<\\/a>\\u3001 <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/zhous\\/\\\" target=\\\"_blank\\\">Derek Joe<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u793a\\u8303\\u5185\\u5bb9\\u53ca\\u7f16\\u8f91\\u5668\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/zhous\\/\\\" target=\\\"_blank\\\">Derek Joe<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u591a\\u8c22\\u5927\\u5bb6\\u7684\\u8f9b\\u52e4\\u52b3\\u52a8\\uff01\\u8c22\\u8c22wayne82\\u7684\\u53cd\\u9988\\u4e0e\\u5efa\\u8bae\\uff01<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td width=\\\"132\\\"><p><a href=\\\"http:\\/\\/www.joomla.cn\\/index.php?option=com_kunena&func=showcat&catid=34&Itemid=46&lang=zh\\\" target=\\\"_blank\\\"><img src=\\\"http:\\/\\/www.joomla.cn\\/images\\/aboutjoomlacn.png\\\" alt=\\\"\\u56e7\\u5566!\\u4e2d\\u56fd\\\" width=\\\"130\\\" height=\\\"70\\\" align=\\\"left\\\" longdesc=\\\"http:\\/\\/www.joomla.cn\\\"><br \\/>\\n    <\\/a><\\/p><\\/td>\\n    <td valign=\\\"middle\\\"><a href=\\\"http:\\/\\/www.joomla.cn\\/index.php?option=com_kunena&func=showcat&catid=34&Itemid=46&lang=zh\\\" target=\\\"_blank\\\">Joomla\\u53ca\\u5176\\u6269\\u5c55\\u6c49\\u5316\\u7684\\u5206\\u4eab\\u4e0e\\u8ba8\\u8bba\\u8bf7\\u8bbf\\u95ee\\\"\\u56e7\\u5566!\\u4e2d\\u56fd\\\"<\\/a><br \\/>\\n      <b>\\u6b22\\u8fce\\u559c\\u6b22\\u7ffb\\u8bd1\\u4e14\\u61c2\\u5f97\\u4f7f\\u7528SVN\\u7684\\u670b\\u53cb<\\/b><br \\/>\\n    <a href=\\\"http:\\/\\/www.joomla.cn\\/index.php?option=com_kunena&func=view&catid=34&id=9537&Itemid=46\\\" target=\\\"_blank\\\"><b>\\u52a0\\u5165\\u6211\\u4eec\\u7684\\u7ffb\\u8bd1\\u7ec4\\uff08\\u771f\\u6b63\\u81ea\\u4e3b\\u7684\\u534f\\u4f5c\\u65b9\\u5f0f\\uff09<\\/b><\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">&nbsp;<\\/td>\\n  <\\/tr>\\n<\\/table>\\n <\\/div>\\n  \\n\\t\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10002,'TinyMCE zh-CN','file','tinymce_zh-CN','',0,1,0,0,'{\"legacy\":false,\"name\":\"TinyMCE zh-CN\",\"type\":\"file\",\"creationDate\":\"2012.05.23\",\"author\":\"Joomla! China\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"zhous1998@gmail.com\",\"authorUrl\":\"www.joomla.cn\",\"version\":\"3.4.9\",\"description\":\"Joomla\\u6838\\u5fc3\\u7f16\\u8f91\\u5668TinyMCE 3.4.9\\u7684\\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\\u5305\\u3002Simplified Chinese Language Package for TinyMCE 3.4.9 in Joomla 2.5.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10003,'zh-CN','package','pkg_zh-CN','',0,1,1,0,'{\"legacy\":false,\"name\":\"\\u7b80\\u4f53\\u4e2d\\u6587Simplified Chinese\",\"type\":\"package\",\"creationDate\":\"2013-04-15\",\"author\":\"CHN Translation Team\",\"copyright\":\"Copyright (C) 2010 CHN Joomla Translation Team  (http:\\/\\/joomlacode.org\\/gf\\/project\\/choice\\/). All rights reserved.\",\"authorEmail\":\"zhous1998@sohu.com\",\"authorUrl\":\"www.joomla.cn\",\"version\":\"2.5.11.1\",\"description\":\"\\n\\t\\n\\t<h3>Joomla! 2.5.11\\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\\u5305\\u7b2c\\u4e00\\u7248<\\/h3>\\n    <h3>Joomla! 2.5.11 Full Simplified Chinese (zh-CN) Language Package version 1<\\/h3>\\n    <h3>\\u672c\\u5b89\\u88c5\\u5305\\u5df2\\u5305\\u542bJoomla\\u6838\\u5fc3\\u7f16\\u8f91\\u5668TinyMCE 3.4.9\\u7684\\u4e2d\\u6587\\u8bed\\u8a00<\\/h3>\\n\\t<div>\\n\\tJoomla 2.5.11\\u8bed\\u8a00\\u662f\\u7531Joomla\\u5b98\\u65b9\\u7ffb\\u8bd1\\u7ec4\\u7684Derek Joe\\u7ec4\\u7ec7\\u7ffb\\u8bd1\\u3002\\u5de5\\u4f5c\\u662f\\u5728Joomla1.6\\u7684\\u57fa\\u7840\\u4e0a\\u8fdb\\u884c\\u7684\\u3002Joomla 2.5.11\\u8bed\\u8a00\\u7684\\u8865\\u5145\\u7531Derek Joe\\u5b8c\\u6210\\u3002\\u611f\\u8c22Joomla\\u7b80\\u4f53\\u4e2d\\u6587\\u7ffb\\u8bd1\\u7ec4\\u7684\\u6240\\u6709\\u5fd7\\u613f\\u8005\\uff1a\\u6b66\\u7389\\u6770\\u3001Key Diagram\\u3001Yusuf  Wang\\u3001\\u90ed\\u5fd7\\u6500\\u3001Eric Wong\\uff08http:\\/\\/berocks2.com\\/\\uff09\\u3001wayne82\\uff01\\u7ffb\\u8bd1\\u57fa\\u5730\\uff1a<a href=\\\"http:\\/\\/www.joomla.cn\\\" target=\\\"_blank\\\">\\u56e7\\u5566!\\u4e2d\\u56fd\\uff08Joomla.cn\\uff09<\\/a>\\u3002\\u7ffb\\u8bd1\\u4e0e\\u4f7f\\u7528\\u4ea4\\u6d41\\uff1a\\uff1a<a href=\\\"http:\\/\\/weibo.com\\/joomlacn\\\" target=\\\"_blank\\\">\\u56e7\\u5566\\u4e2d\\u56fd\\uff08\\u65b0\\u6d6a\\u5fae\\u535a\\uff09<\\/a>\\u3002\\u6b22\\u8fce\\u559c\\u6b22\\u7ffb\\u8bd1\\u7684\\u670b\\u53cb\\u52a0\\u5165\\u6211\\u4eec\\u3002<br><br>\\n\\t\\u6b22\\u8fce\\u52a0\\u5165\\u201cJoomla\\u4f7f\\u7528\\u4ea4\\u6d41\\u201dQ\\u7fa4\\uff1a72746093\\uff08\\u5df2\\u6709\\u63a5\\u8fd1800\\u4f4d\\u670b\\u53cb\\u4e86\\uff09\\u3002<br> <br>\\n\\t<\\/div>\\n\\t\\n\\t\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10047,'jshopping','component','com_jshopping','',1,1,0,0,'{\"legacy\":false,\"name\":\"jshopping\",\"type\":\"component\",\"creationDate\":\"20.04.2013\",\"version\":\"3.14.3\",\"description\":\"Joomshopping - shop component. Note: JoomShopping code files are named as jshopping\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10058,'com_tortags','component','com_tortags','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_tortags\",\"type\":\"component\",\"creationDate\":\"October 2012\",\"author\":\"Tormix\",\"copyright\":\"Copyright 2010 - 2012. All rights reserved\",\"authorEmail\":\"suppot@tormix.com\",\"authorUrl\":\"http:\\/\\/tormix.com\",\"version\":\"1.3.6\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10059,'plg_editors_jce','plugin','jce','editors',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors_jce\",\"type\":\"plugin\",\"creationDate\":\"27 March 2013\",\"author\":\"Ryan Demmer\",\"copyright\":\"2006-2010 Ryan Demmer\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.3.2.4\",\"description\":\"WF_EDITOR_PLUGIN_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10060,'plg_quickicon_jcefilebrowser','plugin','jcefilebrowser','quickicon',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_quickicon_jcefilebrowser\",\"type\":\"plugin\",\"creationDate\":\"27 March 2013\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved\",\"authorEmail\":\"@@email@@\",\"authorUrl\":\"www.joomalcontenteditor.net\",\"version\":\"2.3.2.4\",\"description\":\"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10061,'jce','component','com_jce','',1,1,0,0,'{\"legacy\":false,\"name\":\"JCE\",\"type\":\"component\",\"creationDate\":\"27 March 2013\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"www.joomlacontenteditor.net\",\"version\":\"2.3.2.4\",\"description\":\"WF_ADMIN_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
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
-- Table structure for table `yami_jshopping_addons`
--

DROP TABLE IF EXISTS `yami_jshopping_addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_addons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `key` text NOT NULL,
  `usekey` tinyint(1) NOT NULL,
  `version` varchar(255) NOT NULL,
  `uninstall` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_addons`
--

LOCK TABLES `yami_jshopping_addons` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_addons` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_jshopping_addons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_attr`
--

DROP TABLE IF EXISTS `yami_jshopping_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_attr` (
  `attr_id` int(11) NOT NULL AUTO_INCREMENT,
  `attr_ordering` int(11) NOT NULL DEFAULT '0',
  `attr_type` tinyint(1) NOT NULL,
  `independent` tinyint(1) NOT NULL,
  `allcats` tinyint(1) NOT NULL DEFAULT '1',
  `cats` text NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_zh-CN` varchar(255) NOT NULL,
  `description_zh-CN` text NOT NULL,
  PRIMARY KEY (`attr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_attr`
--

LOCK TABLES `yami_jshopping_attr` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_jshopping_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_attr_values`
--

DROP TABLE IF EXISTS `yami_jshopping_attr_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_attr_values` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `attr_id` int(11) NOT NULL,
  `value_ordering` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_zh-CN` varchar(255) NOT NULL,
  PRIMARY KEY (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_attr_values`
--

LOCK TABLES `yami_jshopping_attr_values` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_attr_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_jshopping_attr_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_cart_temp`
--

DROP TABLE IF EXISTS `yami_jshopping_cart_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_cart_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cookie` varchar(255) NOT NULL,
  `cart` text NOT NULL,
  `type_cart` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_cart_temp`
--

LOCK TABLES `yami_jshopping_cart_temp` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_cart_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_jshopping_cart_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_categories`
--

DROP TABLE IF EXISTS `yami_jshopping_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_image` varchar(255) DEFAULT NULL,
  `category_parent_id` int(11) NOT NULL DEFAULT '0',
  `category_publish` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `category_ordertype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `category_template` varchar(64) DEFAULT NULL,
  `ordering` int(3) NOT NULL,
  `category_add_date` datetime DEFAULT '0000-00-00 00:00:00',
  `products_page` int(8) NOT NULL DEFAULT '12',
  `products_row` int(3) NOT NULL DEFAULT '3',
  `access` int(3) NOT NULL DEFAULT '1',
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_zh-CN` varchar(255) NOT NULL,
  `alias_zh-CN` varchar(255) NOT NULL,
  `short_description_zh-CN` text NOT NULL,
  `description_zh-CN` text NOT NULL,
  `meta_title_zh-CN` varchar(255) NOT NULL,
  `meta_description_zh-CN` text NOT NULL,
  `meta_keyword_zh-CN` text NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `sort_add_date` (`category_add_date`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_categories`
--

LOCK TABLES `yami_jshopping_categories` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_categories` DISABLE KEYS */;
INSERT INTO `yami_jshopping_categories` VALUES (1,NULL,0,1,1,NULL,1,'2013-06-24 16:10:13',12,3,1,'','','','','','','','testa','testa','testa','<p>testatestatestatesta</p>','gfg','fds','fdfd');
/*!40000 ALTER TABLE `yami_jshopping_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_config`
--

DROP TABLE IF EXISTS `yami_jshopping_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_config` (
  `id` tinyint(1) NOT NULL DEFAULT '0',
  `count_products_to_page` int(4) NOT NULL,
  `count_products_to_row` int(2) NOT NULL,
  `count_category_to_row` int(2) NOT NULL,
  `image_category_width` int(4) NOT NULL,
  `image_category_height` int(4) NOT NULL,
  `image_product_width` int(4) NOT NULL,
  `image_product_height` int(4) NOT NULL,
  `image_product_full_width` int(4) NOT NULL,
  `image_product_full_height` int(4) NOT NULL,
  `video_product_width` int(4) NOT NULL,
  `video_product_height` int(4) NOT NULL,
  `adminLanguage` varchar(8) NOT NULL,
  `defaultLanguage` varchar(8) NOT NULL,
  `mainCurrency` int(4) NOT NULL,
  `decimal_count` tinyint(1) NOT NULL,
  `decimal_symbol` varchar(5) NOT NULL,
  `thousand_separator` varchar(5) NOT NULL,
  `currency_format` tinyint(1) NOT NULL,
  `use_rabatt_code` tinyint(1) NOT NULL,
  `enable_wishlist` tinyint(1) NOT NULL,
  `default_status_order` tinyint(1) NOT NULL,
  `order_number_type` varchar(50) NOT NULL,
  `store_address_format` varchar(32) NOT NULL,
  `store_date_format` varchar(32) NOT NULL,
  `contact_email` varchar(128) NOT NULL,
  `allow_reviews_prod` tinyint(1) NOT NULL,
  `allow_reviews_only_registered` tinyint(1) NOT NULL,
  `allow_reviews_manuf` tinyint(1) NOT NULL,
  `max_mark` int(11) NOT NULL,
  `summ_null_shipping` decimal(12,2) NOT NULL,
  `without_shipping` tinyint(1) NOT NULL,
  `without_payment` tinyint(1) NOT NULL,
  `pdf_parameters` varchar(32) NOT NULL,
  `next_order_number` int(11) NOT NULL DEFAULT '1',
  `shop_user_guest` tinyint(1) NOT NULL,
  `hide_product_not_avaible_stock` tinyint(1) NOT NULL,
  `show_buy_in_category` tinyint(1) NOT NULL,
  `user_as_catalog` tinyint(1) NOT NULL,
  `show_tax_in_product` tinyint(1) NOT NULL,
  `show_tax_product_in_cart` tinyint(1) NOT NULL,
  `show_plus_shipping_in_product` tinyint(1) NOT NULL,
  `hide_buy_not_avaible_stock` tinyint(1) NOT NULL,
  `show_sort_product` tinyint(1) NOT NULL,
  `show_count_select_products` tinyint(1) NOT NULL,
  `order_send_pdf_client` tinyint(1) NOT NULL,
  `order_send_pdf_admin` tinyint(1) NOT NULL,
  `show_delivery_time` tinyint(1) NOT NULL,
  `securitykey` varchar(128) NOT NULL,
  `demo_type` tinyint(1) NOT NULL,
  `product_show_manufacturer_logo` tinyint(1) NOT NULL,
  `product_show_manufacturer` tinyint(1) NOT NULL,
  `product_show_weight` tinyint(1) NOT NULL,
  `max_count_order_one_product` int(11) NOT NULL,
  `min_count_order_one_product` int(11) NOT NULL,
  `min_price_order` int(11) NOT NULL,
  `max_price_order` int(11) NOT NULL,
  `hide_tax` tinyint(1) NOT NULL,
  `licensekod` text NOT NULL,
  `product_attribut_first_value_empty` tinyint(1) NOT NULL,
  `show_hits` tinyint(1) NOT NULL,
  `show_registerform_in_logintemplate` tinyint(1) NOT NULL,
  `admin_show_product_basic_price` tinyint(1) NOT NULL,
  `admin_show_attributes` tinyint(1) NOT NULL,
  `admin_show_delivery_time` tinyint(1) NOT NULL,
  `admin_show_languages` tinyint(1) NOT NULL,
  `use_different_templates_cat_prod` tinyint(1) NOT NULL,
  `admin_show_product_video` tinyint(1) NOT NULL,
  `admin_show_product_related` tinyint(1) NOT NULL,
  `admin_show_product_files` tinyint(1) NOT NULL,
  `admin_show_product_bay_price` tinyint(1) NOT NULL,
  `admin_show_product_labels` tinyint(1) NOT NULL,
  `sorting_country_in_alphabet` tinyint(1) NOT NULL,
  `hide_text_product_not_available` tinyint(1) NOT NULL,
  `show_weight_order` tinyint(1) NOT NULL,
  `discount_use_full_sum` tinyint(1) NOT NULL,
  `show_cart_all_step_checkout` tinyint(1) NOT NULL,
  `use_plugin_content` tinyint(1) NOT NULL,
  `display_price_admin` tinyint(1) NOT NULL,
  `display_price_front` tinyint(1) NOT NULL,
  `product_list_show_weight` tinyint(1) NOT NULL,
  `product_list_show_manufacturer` tinyint(1) NOT NULL,
  `use_extend_tax_rule` tinyint(4) NOT NULL,
  `use_extend_display_price_rule` tinyint(4) NOT NULL,
  `fields_register` text NOT NULL,
  `template` varchar(128) NOT NULL,
  `show_product_code` tinyint(1) NOT NULL,
  `show_product_code_in_cart` tinyint(1) NOT NULL,
  `savelog` tinyint(1) NOT NULL,
  `savelogpaymentdata` tinyint(1) NOT NULL,
  `product_list_show_min_price` tinyint(1) NOT NULL,
  `product_count_related_in_row` tinyint(4) NOT NULL,
  `category_sorting` tinyint(1) NOT NULL DEFAULT '1',
  `product_sorting` tinyint(1) NOT NULL DEFAULT '1',
  `product_sorting_direction` tinyint(1) NOT NULL,
  `show_product_list_filters` tinyint(1) NOT NULL,
  `admin_show_product_extra_field` tinyint(1) NOT NULL,
  `product_list_display_extra_fields` text NOT NULL,
  `filter_display_extra_fields` text NOT NULL,
  `product_hide_extra_fields` text NOT NULL,
  `cart_display_extra_fields` text NOT NULL,
  `default_country` int(11) NOT NULL,
  `show_return_policy_in_email_order` tinyint(1) NOT NULL,
  `client_allow_cancel_order` tinyint(1) NOT NULL,
  `admin_show_vendors` tinyint(1) NOT NULL,
  `vendor_order_message_type` tinyint(1) NOT NULL,
  `admin_not_send_email_order_vendor_order` tinyint(1) NOT NULL,
  `not_redirect_in_cart_after_buy` tinyint(1) NOT NULL,
  `product_show_vendor` tinyint(1) NOT NULL,
  `product_show_vendor_detail` tinyint(1) NOT NULL,
  `product_list_show_vendor` tinyint(1) NOT NULL,
  `admin_show_freeattributes` tinyint(1) NOT NULL,
  `product_show_button_back` tinyint(1) NOT NULL,
  `calcule_tax_after_discount` tinyint(1) NOT NULL,
  `product_list_show_product_code` tinyint(1) NOT NULL,
  `radio_attr_value_vertical` tinyint(1) NOT NULL,
  `attr_display_addprice` tinyint(1) NOT NULL,
  `use_ssl` tinyint(1) NOT NULL,
  `product_list_show_price_description` tinyint(1) NOT NULL,
  `display_button_print` tinyint(1) NOT NULL,
  `hide_shipping_step` tinyint(1) NOT NULL,
  `hide_payment_step` tinyint(1) NOT NULL,
  `image_resize_type` tinyint(1) NOT NULL,
  `use_extend_attribute_data` tinyint(1) NOT NULL,
  `product_list_show_price_default` tinyint(1) NOT NULL,
  `product_list_show_qty_stock` tinyint(1) NOT NULL,
  `product_show_qty_stock` tinyint(1) NOT NULL,
  `displayprice` tinyint(1) NOT NULL,
  `use_decimal_qty` tinyint(1) NOT NULL,
  `ext_tax_rule_for` tinyint(1) NOT NULL,
  `display_reviews_without_confirm` tinyint(1) NOT NULL,
  `manufacturer_sorting` tinyint(1) NOT NULL,
  `admin_show_units` tinyint(1) NOT NULL,
  `main_unit_weight` tinyint(3) NOT NULL,
  `create_alias_product_category_auto` tinyint(1) NOT NULL,
  `delivery_order_depends_delivery_product` tinyint(1) NOT NULL,
  `show_delivery_time_step5` tinyint(1) NOT NULL,
  `other_config` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_config`
--

LOCK TABLES `yami_jshopping_config` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_config` DISABLE KEYS */;
INSERT INTO `yami_jshopping_config` VALUES (1,12,3,1,160,0,100,0,200,0,320,240,'zh-CN','zh-CN',1,2,'.','',2,1,1,1,'1','%storename %address %city %zip','%d.%m.%Y','ccqngu@live.cn',1,1,0,10,-1.00,0,0,'208:65:208:30',15,0,0,1,0,0,0,0,1,1,1,1,0,0,'d45806f165154ecc14c10f445361c2f1',0,0,0,0,0,0,0,0,0,'',0,0,0,0,1,1,1,0,1,1,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,'a:3:{s:8:\"register\";a:15:{s:5:\"title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:10:\"firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"state\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"fax\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:6:\"u_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:8:\"password\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:10:\"password_2\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}s:7:\"address\";a:22:{s:5:\"title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:10:\"firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"state\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"fax\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"d_title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_f_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:12:\"d_firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:8:\"d_street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"d_zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"d_city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_state\";a:1:{s:7:\"display\";s:1:\"1\";}s:9:\"d_country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}s:11:\"editaccount\";a:22:{s:5:\"title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:10:\"firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"state\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"fax\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"d_title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_f_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:12:\"d_firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:8:\"d_street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"d_zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"d_city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_state\";a:1:{s:7:\"display\";s:1:\"1\";}s:9:\"d_country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}}','',1,0,0,0,0,3,1,1,0,0,0,'','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,'a:10:{s:47:\"display_delivery_time_for_product_in_order_mail\";s:1:\"1\";s:18:\"show_delivery_date\";s:1:\"0\";s:27:\"show_delivery_time_checkout\";s:1:\"1\";s:25:\"show_manufacturer_in_cart\";s:1:\"0\";s:17:\"weight_in_invoice\";s:1:\"0\";s:19:\"shipping_in_invoice\";s:1:\"0\";s:18:\"payment_in_invoice\";s:1:\"0\";s:23:\"date_invoice_in_invoice\";s:1:\"0\";s:21:\"send_invoice_manually\";s:1:\"0\";s:11:\"display_agb\";s:1:\"1\";}');
/*!40000 ALTER TABLE `yami_jshopping_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_config_display_prices`
--

DROP TABLE IF EXISTS `yami_jshopping_config_display_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_config_display_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zones` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `display_price_firma` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_config_display_prices`
--

LOCK TABLES `yami_jshopping_config_display_prices` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_config_display_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_jshopping_config_display_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_config_seo`
--

DROP TABLE IF EXISTS `yami_jshopping_config_seo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_config_seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(64) NOT NULL,
  `ordering` int(11) NOT NULL,
  `title_en-GB` varchar(255) NOT NULL,
  `keyword_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `title_zh-CN` varchar(255) NOT NULL,
  `keyword_zh-CN` text NOT NULL,
  `description_zh-CN` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_config_seo`
--

LOCK TABLES `yami_jshopping_config_seo` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_config_seo` DISABLE KEYS */;
INSERT INTO `yami_jshopping_config_seo` VALUES (1,'category',10,'','','','','',''),(2,'manufacturers',20,'','','','','',''),(3,'cart',30,'','','','','',''),(4,'wishlist',40,'','','','','',''),(5,'login',50,'','','','','',''),(6,'register',60,'','','','','',''),(7,'editaccount',70,'','','','','',''),(8,'myorders',80,'','','','','',''),(9,'myaccount',90,'','','','','',''),(10,'search',100,'','','','','',''),(11,'search-result',110,'','','','','',''),(12,'myorder-detail',120,'','','','','',''),(13,'vendors',130,'','','','','',''),(14,'content-agb',140,'','','','','',''),(15,'content-return_policy',150,'','','','','',''),(16,'content-shipping',160,'','','','','',''),(17,'content-privacy_statement',161,'','','','','',''),(18,'checkout-address',170,'','','','','',''),(19,'checkout-payment',180,'','','','','',''),(20,'checkout-shipping',190,'','','','','',''),(21,'checkout-preview',200,'','','','','',''),(22,'lastproducts',210,'','','','','',''),(23,'randomproducts',220,'','','','','',''),(24,'bestsellerproducts',230,'','','','','',''),(25,'labelproducts',240,'','','','','',''),(26,'topratingproducts',250,'','','','','',''),(27,'tophitsproducts',260,'','','','','',''),(28,'all-products',270,'','','','','','');
/*!40000 ALTER TABLE `yami_jshopping_config_seo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_config_statictext`
--

DROP TABLE IF EXISTS `yami_jshopping_config_statictext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_config_statictext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(64) NOT NULL,
  `text_en-GB` text NOT NULL,
  `text_zh-CN` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_config_statictext`
--

LOCK TABLES `yami_jshopping_config_statictext` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_config_statictext` DISABLE KEYS */;
INSERT INTO `yami_jshopping_config_statictext` VALUES (1,'home','',''),(2,'manufacturer','',''),(3,'agb','',''),(4,'return_policy','',''),(5,'order_email_descr','',''),(6,'order_email_descr_end','',''),(7,'order_finish_descr','',''),(8,'shipping','',''),(9,'privacy_statement','','');
/*!40000 ALTER TABLE `yami_jshopping_config_statictext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_countries`
--

DROP TABLE IF EXISTS `yami_jshopping_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_publish` tinyint(4) NOT NULL,
  `ordering` smallint(6) NOT NULL,
  `country_code` varchar(5) NOT NULL,
  `country_code_2` varchar(5) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_de-DE` varchar(255) NOT NULL,
  `name_zh-CN` varchar(255) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_countries`
--

LOCK TABLES `yami_jshopping_countries` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_countries` DISABLE KEYS */;
INSERT INTO `yami_jshopping_countries` VALUES (1,1,1,'AFG','AF','Afghanistan','Afghanistan','Afghanistan'),(2,1,2,'ALB','AL','Albania','Albanien','Albania'),(3,1,3,'DZA','DZ','Algeria','Algerien','Algeria'),(4,1,4,'ASM','AS','American Samoa','Amerikanisch-Samoa','American Samoa'),(5,1,5,'AND','AD','Andorra','Andorra','Andorra'),(6,1,6,'AGO','AO','Angola','Angola','Angola'),(7,1,7,'AIA','AI','Anguilla','Anguilla','Anguilla'),(8,1,8,'ATA','AQ','Antarctica','Antarktis','Antarctica'),(9,1,9,'ATG','AG','Antigua and Barbuda','Antigua und Barbuda','Antigua and Barbuda'),(10,1,10,'ARG','AR','Argentina','Argentinien','Argentina'),(11,1,11,'ARM','AM','Armenia','Armenien','Armenia'),(12,1,12,'ABW','AW','Aruba','Aruba','Aruba'),(13,1,13,'AUS','AU','Australia','Australien','Australia'),(14,1,14,'AUT','AT','Austria','Österreich','Austria'),(15,1,15,'AZE','AZ','Azerbaijan','Aserbaidschan','Azerbaijan'),(16,1,16,'BHS','BS','Bahamas','Bahamas','Bahamas'),(17,1,17,'BHR','BH','Bahrain','Bahrain','Bahrain'),(18,1,18,'BGD','BD','Bangladesh','Bangladesch','Bangladesh'),(19,1,19,'BRB','BB','Barbados','Barbados','Barbados'),(20,1,20,'BLR','BY','Belarus','Weissrussland','Belarus'),(21,1,21,'BEL','BE','Belgium','Belgien','Belgium'),(22,1,22,'BLZ','BZ','Belize','Belize','Belize'),(23,1,23,'BEN','BJ','Benin','Benin','Benin'),(24,1,24,'BMU','BM','Bermuda','Bermuda','Bermuda'),(25,1,25,'BTN','BT','Bhutan','Bhutan','Bhutan'),(26,1,26,'BOL','BO','Bolivia','Bolivien','Bolivia'),(27,1,27,'BIH','BA','Bosnia and Herzegowina','Bosnien und Herzegowina','Bosnia and Herzegowina'),(28,1,28,'BWA','BW','Botswana','Botsuana','Botswana'),(29,1,29,'BVT','BV','Bouvet Island','Bouvetinsel','Bouvet Island'),(30,1,30,'BRA','BR','Brazil','Brasilien','Brazil'),(31,1,31,'IOT','IO','British Indian Ocean Territory','Britisches Territorium im Indischen Ozean','British Indian Ocean Territory'),(32,1,32,'BRN','BN','Brunei Darussalam','Brunei','Brunei Darussalam'),(33,1,33,'BGR','BG','Bulgaria','Bulgarien','Bulgaria'),(34,1,34,'BFA','BF','Burkina Faso','Burkina Faso','Burkina Faso'),(35,1,35,'BDI','BI','Burundi','Burundi','Burundi'),(36,1,36,'KHM','KH','Cambodia','Kambodscha','Cambodia'),(37,1,37,'CMR','CM','Cameroon','Kamerun','Cameroon'),(38,1,38,'CAN','CA','Canada','Kanada','Canada'),(39,1,39,'CPV','CV','Cape Verde','Kap Verde','Cape Verde'),(40,1,40,'CYM','KY','Cayman Islands','Cayman-Inseln','Cayman Islands'),(41,1,41,'CAF','CF','Central African Republic','Zentralafrikanische Republik','Central African Republic'),(42,1,42,'TCD','TD','Chad','Tschad','Chad'),(43,1,43,'CHL','CL','Chile','Chile','Chile'),(44,1,44,'CHN','CN','China','China','China'),(45,1,45,'CXR','CX','Christmas Island','Christmas Island','Christmas Island'),(46,1,46,'CCK','CC','Cocos (Keeling) Islands','Kokosinseln (Keeling)','Cocos (Keeling) Islands'),(47,1,47,'COL','CO','Colombia','Kolumbien','Colombia'),(48,1,48,'COM','KM','Comoros','Komoren','Comoros'),(49,1,49,'COG','CG','Congo','Kongo, Republik','Congo'),(50,1,50,'COK','CK','Cook Islands','Cookinseln','Cook Islands'),(51,1,51,'CRI','CR','Costa Rica','Costa Rica','Costa Rica'),(52,1,52,'CIV','CI','Cote D\'Ivoire','Elfenbeinküste','Cote D\'Ivoire'),(53,1,53,'HRV','HR','Croatia','Kroatien','Croatia'),(54,1,54,'CUB','CU','Cuba','Kuba','Cuba'),(55,1,55,'CYP','CY','Cyprus','Zypern','Cyprus'),(56,1,56,'CZE','CZ','Czech Republic','Tschechien','Czech Republic'),(57,1,57,'DNK','DK','Denmark','Dänemark','Denmark'),(58,1,58,'DJI','DJ','Djibouti','Dschibuti','Djibouti'),(59,1,59,'DMA','DM','Dominica','Dominica','Dominica'),(60,1,60,'DOM','DO','Dominican Republic','Dominikanische Republik','Dominican Republic'),(61,1,61,'TMP','TL','East Timor','Osttimor','East Timor'),(62,1,62,'ECU','EC','Ecuador','Ecuador','Ecuador'),(63,1,63,'EGY','EG','Egypt','Ägypten','Egypt'),(64,1,64,'SLV','SV','El Salvador','El Salvador','El Salvador'),(65,1,65,'GNQ','GQ','Equatorial Guinea','Äquatorial-Guinea','Equatorial Guinea'),(66,1,66,'ERI','ER','Eritrea','Eritrea','Eritrea'),(67,1,67,'EST','EE','Estonia','Estland','Estonia'),(68,1,68,'ETH','ET','Ethiopia','Äthiopien','Ethiopia'),(69,1,69,'FLK','FK','Falkland Islands (Malvinas)','Falklandinseln','Falkland Islands (Malvinas)'),(70,1,70,'FRO','FO','Faroe Islands','Färöer','Faroe Islands'),(71,1,71,'FJI','FJ','Fiji','Fidschi','Fiji'),(72,1,72,'FIN','FI','Finland','Finnland','Finland'),(73,1,73,'FRA','FR','France','Frankreich','France'),(74,1,74,'FXX','FX','France Metropolitan','Frankreich, Metropolitan','France Metropolitan'),(75,1,75,'GUF','GF','French Guiana','Französisch-Guyana','French Guiana'),(76,1,76,'PYF','PF','French Polynesia','Franz. Polynesien','French Polynesia'),(77,1,77,'ATF','TF','French Southern Territories','Französiche Süd- und Antarktisgebiete','French Southern Territories'),(78,1,78,'GAB','GA','Gabon','Gabun','Gabon'),(79,1,79,'GMB','GM','Gambia','Gambia','Gambia'),(80,1,80,'GEO','GE','Georgia','Georgien','Georgia'),(81,1,81,'DEU','DE','Germany','Deutschland','Germany'),(82,1,82,'GHA','GH','Ghana','Ghana','Ghana'),(83,1,83,'GIB','GI','Gibraltar','Gibraltar','Gibraltar'),(84,1,84,'GRC','GR','Greece','Griechenland','Greece'),(85,1,85,'GRL','GL','Greenland','Grönland','Greenland'),(86,1,86,'GRD','GD','Grenada','Grenada','Grenada'),(87,1,87,'GLP','GP','Guadeloupe','Guadeloupe','Guadeloupe'),(88,1,88,'GUM','GU','Guam','Guam','Guam'),(89,1,89,'GTM','GT','Guatemala','Guatemala','Guatemala'),(90,1,90,'GIN','GN','Guinea','Guinea','Guinea'),(91,1,91,'GNB','GW','Guinea-bissau','Guinea-Bissau','Guinea-bissau'),(92,1,92,'GUY','GY','Guyana','Guyana','Guyana'),(93,1,93,'HTI','HT','Haiti','Haiti','Haiti'),(94,1,94,'HMD','HM','Heard and Mc Donald Islands','Heard und McDonaldinseln','Heard and Mc Donald Islands'),(95,1,95,'HND','HN','Honduras','Honduras','Honduras'),(96,1,96,'HKG','HK','Hong Kong','Hong Kong','Hong Kong'),(97,1,97,'HUN','HU','Hungary','Ungarn','Hungary'),(98,1,98,'ISL','IS','Iceland','Island','Iceland'),(99,1,99,'IND','IN','India','Indien','India'),(100,1,100,'IDN','ID','Indonesia','Indonesien','Indonesia'),(101,1,101,'IRN','IR','Iran (Islamic Republic of)','Iran','Iran (Islamic Republic of)'),(102,1,102,'IRQ','IQ','Iraq','Irak','Iraq'),(103,1,103,'IRL','IE','Ireland','Irland','Ireland'),(104,1,104,'ISR','IL','Israel','Israel','Israel'),(105,1,105,'ITA','IT','Italy','Italien','Italy'),(106,1,106,'JAM','JM','Jamaica','Jamaika','Jamaica'),(107,1,107,'JPN','JP','Japan','Japan','Japan'),(108,1,108,'JOR','JO','Jordan','Jordanien','Jordan'),(109,1,109,'KAZ','KZ','Kazakhstan','Kasachstan','Kazakhstan'),(110,1,110,'KEN','KE','Kenya','Kenia','Kenya'),(111,1,111,'KIR','KI','Kiribati','Kiribati','Kiribati'),(112,1,112,'PRK','KP','Korea Democratic People\'s Republic of','Korea Demokratische Volksrepublik','Korea Democratic People\'s Republic of'),(113,1,113,'KOR','KR','Korea Republic of','Korea','Korea Republic of'),(114,1,114,'KWT','KW','Kuwait','Kuwait','Kuwait'),(115,1,115,'KGZ','KG','Kyrgyzstan','Kirgistan','Kyrgyzstan'),(116,1,116,'LAO','LA','Lao People\'s Democratic Republic','Laos','Lao People\'s Democratic Republic'),(117,1,117,'LVA','LV','Latvia','Lettland','Latvia'),(118,1,118,'LBN','LB','Lebanon','Libanon','Lebanon'),(119,1,119,'LSO','LS','Lesotho','Lesotho','Lesotho'),(120,1,120,'LBR','LR','Liberia','Liberia','Liberia'),(121,1,121,'LBY','LY','Libyan Arab Jamahiriya','Libyen','Libyan Arab Jamahiriya'),(122,1,122,'LIE','LI','Liechtenstein','Liechtenstein','Liechtenstein'),(123,1,123,'LTU','LT','Lithuania','Litauen','Lithuania'),(124,1,124,'LUX','LU','Luxembourg','Luxemburg','Luxembourg'),(125,1,125,'MAC','MO','Macau','Makao','Macau'),(126,1,126,'MKD','MK','Macedonia The Former Yugoslav Republic of','Mazedonien','Macedonia The Former Yugoslav Republic of'),(127,1,127,'MDG','MG','Madagascar','Madagaskar','Madagascar'),(128,1,128,'MWI','MW','Malawi','Malawi','Malawi'),(129,1,129,'MYS','MY','Malaysia','Malaysia','Malaysia'),(130,1,130,'MDV','MV','Maldives','Malediven','Maldives'),(131,1,131,'MLI','ML','Mali','Mali','Mali'),(132,1,132,'MLT','MT','Malta','Malta','Malta'),(133,1,133,'MHL','MH','Marshall Islands','Marshallinseln','Marshall Islands'),(134,1,134,'MTQ','MQ','Martinique','Martinique','Martinique'),(135,1,135,'MRT','MR','Mauritania','Mauretanien','Mauritania'),(136,1,136,'MUS','MU','Mauritius','Mauritius','Mauritius'),(137,1,137,'MYT','YT','Mayotte','Mayott','Mayotte'),(138,1,138,'MEX','MX','Mexico','Mexiko','Mexico'),(139,1,139,'FSM','FM','Micronesia Federated States of','Mikronesien','Micronesia Federated States of'),(140,1,140,'MDA','MD','Moldova Republic of','Moldawien','Moldova Republic of'),(141,1,141,'MCO','MC','Monaco','Monaco','Monaco'),(142,1,142,'MNG','MN','Mongolia','Mongolei','Mongolia'),(143,1,143,'MSR','MS','Montserrat','Montserrat','Montserrat'),(144,1,144,'MAR','MA','Morocco','Marokko','Morocco'),(145,1,145,'MOZ','MZ','Mozambique','Mosambik','Mozambique'),(146,1,146,'MMR','MM','Myanmar','Myanmar','Myanmar'),(147,1,147,'NAM','NA','Namibia','Namibia','Namibia'),(148,1,148,'NRU','NR','Nauru','Nauru','Nauru'),(149,1,149,'NPL','NP','Nepal','Nepal','Nepal'),(150,1,150,'NLD','NL','Netherlands','Niederlande','Netherlands'),(151,1,151,'ANT','AN','Netherlands Antilles','Niederländisch-Antillen','Netherlands Antilles'),(152,1,152,'NCL','NC','New Caledonia','Neukaledonien','New Caledonia'),(153,1,153,'NZL','NZ','New Zealand','Neuseeland','New Zealand'),(154,1,154,'NIC','NI','Nicaragua','Nicaragua','Nicaragua'),(155,1,155,'NER','NE','Niger','Niger','Niger'),(156,1,156,'NGA','NG','Nigeria','Nigeria','Nigeria'),(157,1,157,'NIU','NU','Niue','Niue','Niue'),(158,1,158,'NFK','NF','Norfolk Island','Norfolkinsel','Norfolk Island'),(159,1,159,'MNP','MP','Northern Mariana Islands','Nördliche Marianen','Northern Mariana Islands'),(160,1,160,'NOR','NO','Norway','Norwegen','Norway'),(161,1,161,'OMN','OM','Oman','Oman','Oman'),(162,1,162,'PAK','PK','Pakistan','Pakistan','Pakistan'),(163,1,163,'PLW','PW','Palau','Palau','Palau'),(164,1,164,'PAN','PA','Panama','Panama','Panama'),(165,1,165,'PNG','PG','Papua New Guinea','Papua-Neuguinea','Papua New Guinea'),(166,1,166,'PRY','PY','Paraguay','Paraguay','Paraguay'),(167,1,167,'PER','PE','Peru','Peru','Peru'),(168,1,168,'PHL','PH','Philippines','Philippinen','Philippines'),(169,1,169,'PCN','PN','Pitcairn','Pitcairn','Pitcairn'),(170,1,170,'POL','PL','Poland','Polen','Poland'),(171,1,171,'PRT','PT','Portugal','Portugal','Portugal'),(172,1,172,'PRI','PR','Puerto Rico','Puerto Rico','Puerto Rico'),(173,1,173,'QAT','QA','Qatar','Katar','Qatar'),(174,1,174,'REU','RE','Reunion','Reunion','Reunion'),(175,1,175,'ROM','RO','Romania','Rumänien','Romania'),(176,1,176,'RUS','RU','Russian Federation','Russische Föderation','Russian Federation'),(177,1,177,'RWA','RW','Rwanda','Ruanda','Rwanda'),(178,1,178,'KNA','KN','Saint Kitts and Nevis','St. Kitts und Nevis','Saint Kitts and Nevis'),(179,1,179,'LCA','LC','Saint Lucia','St. Lucia','Saint Lucia'),(180,1,180,'VCT','VC','Saint Vincent and the Grenadines','St. Vincent und die Grenadinen','Saint Vincent and the Grenadines'),(181,1,181,'WSM','WS','Samoa','Samoa','Samoa'),(182,1,182,'SMR','SM','San Marino','San Marino','San Marino'),(183,1,183,'STP','ST','Sao Tome and Principe','Sao Tomé und Príncipe','Sao Tome and Principe'),(184,1,184,'SAU','SA','Saudi Arabia','Saudi-Arabien','Saudi Arabia'),(185,1,185,'SEN','SN','Senegal','Senegal','Senegal'),(186,1,186,'SYC','SC','Seychelles','Seychellen','Seychelles'),(187,1,187,'SLE','SL','Sierra Leone','Sierra Leone','Sierra Leone'),(188,1,188,'SGP','SG','Singapore','Singapur','Singapore'),(189,1,189,'SVK','SK','Slovakia (Slovak Republic)','Slowakei','Slovakia (Slovak Republic)'),(190,1,190,'SVN','SI','Slovenia','Slowenien','Slovenia'),(191,1,191,'SLB','SB','Solomon Islands','Salomonen','Solomon Islands'),(192,1,192,'SOM','SO','Somalia','Somalia','Somalia'),(193,1,193,'ZAF','ZA','South Africa','Republik Südafrika','South Africa'),(194,1,194,'SGS','GS','South Georgia and the South Sandwich Islands','Südgeorgien und die Südlichen Sandwichinseln','South Georgia and the South Sandwich Islands'),(195,1,195,'ESP','ES','Spain','Spanien','Spain'),(196,1,196,'LKA','LK','Sri Lanka','Sri Lanka','Sri Lanka'),(197,1,197,'SHN','SH','St. Helena','St. Helena','St. Helena'),(198,1,198,'SPM','PM','St. Pierre and Miquelon','St. Pierre und Miquelon','St. Pierre and Miquelon'),(199,1,199,'SDN','SD','Sudan','Sudan','Sudan'),(200,1,200,'SUR','SR','Suriname','Suriname','Suriname'),(201,1,201,'SJM','SJ','Svalbard and Jan Mayen Islands','Svalbard und Jan Mayen','Svalbard and Jan Mayen Islands'),(202,1,202,'SWZ','SZ','Swaziland','Swasiland','Swaziland'),(203,1,203,'SWE','SE','Sweden','Schweden','Sweden'),(204,1,204,'CHE','CH','Switzerland','Schweiz','Switzerland'),(205,1,205,'SYR','SY','Syrian Arab Republic','Syrien','Syrian Arab Republic'),(206,1,206,'TWN','TW','Taiwan','Taiwan','Taiwan'),(207,1,207,'TJK','TJ','Tajikistan','Tadschikistan','Tajikistan'),(208,1,208,'TZA','TZ','Tanzania United Republic of','Tansania','Tanzania United Republic of'),(209,1,209,'THA','TH','Thailand','Thailand','Thailand'),(210,1,210,'TGO','TG','Togo','Togo','Togo'),(211,1,211,'TKL','TK','Tokelau','Tokelau','Tokelau'),(212,1,212,'TON','TO','Tonga','Tonga','Tonga'),(213,1,213,'TTO','TT','Trinidad and Tobago','Trinidad und Tobago','Trinidad and Tobago'),(214,1,214,'TUN','TN','Tunisia','Tunesien','Tunisia'),(215,1,215,'TUR','TR','Turkey','Türkei','Turkey'),(216,1,216,'TKM','TM','Turkmenistan','Turkmenistan','Turkmenistan'),(217,1,217,'TCA','TC','Turks and Caicos Islands','Turks- und Caicosinseln','Turks and Caicos Islands'),(218,1,218,'TUV','TV','Tuvalu','Tuvalu','Tuvalu'),(219,1,219,'UGA','UG','Uganda','Uganda','Uganda'),(220,1,220,'UKR','UA','Ukraine','Ukraine','Ukraine'),(221,1,221,'ARE','AE','United Arab Emirates','Vereinigte Arabische Emirate','United Arab Emirates'),(222,1,222,'GBR','GB','United Kingdom','Vereinigtes Königreich','United Kingdom'),(223,1,223,'USA','US','United States','USA','United States'),(224,1,224,'UMI','UM','United States Minor Outlying Islands','United States Minor Outlying Islands','United States Minor Outlying Islands'),(225,1,225,'URY','UY','Uruguay','Uruguay','Uruguay'),(226,1,226,'UZB','UZ','Uzbekistan','Usbekistan','Uzbekistan'),(227,1,227,'VUT','VU','Vanuatu','Vanuatu','Vanuatu'),(228,1,228,'VAT','VA','Vatican City State (Holy See)','Vatikanstadt','Vatican City State (Holy See)'),(229,1,229,'VEN','VE','Venezuela','Venezuela','Venezuela'),(230,1,230,'VNM','VN','Viet Nam','Vietnam','Viet Nam'),(231,1,231,'VGB','VG','Virgin Islands (British)','Britische Jungferninseln','Virgin Islands (British)'),(232,1,232,'VIR','VI','Virgin Islands (U.S.)','Vereinigte Staaten von Amerika','Virgin Islands (U.S.)'),(233,1,233,'WLF','WF','Wallis and Futuna Islands','Wallis und Futuna','Wallis and Futuna Islands'),(234,1,234,'ESH','EH','Western Sahara','Westsahara','Western Sahara'),(235,1,235,'YEM','YE','Yemen','Jemen','Yemen'),(236,1,236,'YUG','YU','Yugoslavia','Yugoslavia','Yugoslavia'),(237,1,237,'ZAR','ZR','Zaire','Zaire','Zaire'),(238,1,238,'ZMB','ZM','Zambia','Sambia','Zambia'),(239,1,239,'ZWE','ZW','Zimbabwe','Simbabwe','Zimbabwe');
/*!40000 ALTER TABLE `yami_jshopping_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_coupons`
--

DROP TABLE IF EXISTS `yami_jshopping_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_coupons` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'value_or_percent',
  `coupon_code` varchar(100) NOT NULL DEFAULT '',
  `coupon_value` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax_id` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `coupon_start_date` date NOT NULL DEFAULT '0000-00-00',
  `coupon_expire_date` date NOT NULL DEFAULT '0000-00-00',
  `finished_after_used` int(11) NOT NULL,
  `coupon_publish` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_coupons`
--

LOCK TABLES `yami_jshopping_coupons` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_jshopping_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_currencies`
--

DROP TABLE IF EXISTS `yami_jshopping_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_currencies` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(64) NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `currency_code_iso` varchar(3) NOT NULL,
  `currency_code_num` varchar(3) NOT NULL,
  `currency_ordering` int(11) NOT NULL,
  `currency_value` decimal(14,6) NOT NULL,
  `currency_publish` tinyint(1) NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_currencies`
--

LOCK TABLES `yami_jshopping_currencies` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_currencies` DISABLE KEYS */;
INSERT INTO `yami_jshopping_currencies` VALUES (1,'Euro','EUR','EUR','978',1,1.000000,1);
/*!40000 ALTER TABLE `yami_jshopping_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_delivery_times`
--

DROP TABLE IF EXISTS `yami_jshopping_delivery_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_delivery_times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `days` decimal(8,2) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_zh-CN` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_delivery_times`
--

LOCK TABLES `yami_jshopping_delivery_times` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_delivery_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_jshopping_delivery_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_free_attr`
--

DROP TABLE IF EXISTS `yami_jshopping_free_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_free_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_zh-CN` varchar(255) NOT NULL,
  `description_zh-CN` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_free_attr`
--

LOCK TABLES `yami_jshopping_free_attr` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_free_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_jshopping_free_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_import_export`
--

DROP TABLE IF EXISTS `yami_jshopping_import_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_import_export` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  `endstart` int(11) NOT NULL,
  `steptime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_import_export`
--

LOCK TABLES `yami_jshopping_import_export` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_import_export` DISABLE KEYS */;
INSERT INTO `yami_jshopping_import_export` VALUES (1,'Simple Export','simpleexport','Simple Export in CSV iso-8859-1','filename=export',0,1),(2,'Simple Import','simpleimport','Simple Import in CSV iso-8859-1','',0,0);
/*!40000 ALTER TABLE `yami_jshopping_import_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_languages`
--

DROP TABLE IF EXISTS `yami_jshopping_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(32) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `publish` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_languages`
--

LOCK TABLES `yami_jshopping_languages` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_languages` DISABLE KEYS */;
INSERT INTO `yami_jshopping_languages` VALUES (1,'en-GB','English',1,0),(2,'zh-CN','中文（简体）',1,0);
/*!40000 ALTER TABLE `yami_jshopping_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_manufacturers`
--

DROP TABLE IF EXISTS `yami_jshopping_manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_manufacturers` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_url` varchar(255) NOT NULL,
  `manufacturer_logo` varchar(255) NOT NULL,
  `manufacturer_publish` tinyint(1) NOT NULL,
  `products_page` int(11) NOT NULL,
  `products_row` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_zh-CN` varchar(255) NOT NULL,
  `alias_zh-CN` varchar(255) NOT NULL,
  `short_description_zh-CN` text NOT NULL,
  `description_zh-CN` text NOT NULL,
  `meta_title_zh-CN` varchar(255) NOT NULL,
  `meta_description_zh-CN` text NOT NULL,
  `meta_keyword_zh-CN` text NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_manufacturers`
--

LOCK TABLES `yami_jshopping_manufacturers` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_manufacturers` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_jshopping_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_order_history`
--

DROP TABLE IF EXISTS `yami_jshopping_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` tinyint(1) NOT NULL,
  `status_date_added` datetime NOT NULL,
  `customer_notify` int(1) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`order_history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_order_history`
--

LOCK TABLES `yami_jshopping_order_history` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_order_history` DISABLE KEYS */;
INSERT INTO `yami_jshopping_order_history` VALUES (10,13,6,'2013-06-29 04:29:39',1,NULL),(11,14,6,'2013-06-29 08:32:59',1,NULL);
/*!40000 ALTER TABLE `yami_jshopping_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_order_item`
--

DROP TABLE IF EXISTS `yami_jshopping_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_order_item` (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_ean` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_quantity` decimal(12,2) NOT NULL,
  `product_item_price` decimal(12,2) NOT NULL,
  `product_tax` decimal(12,2) NOT NULL,
  `product_attributes` text NOT NULL,
  `product_freeattributes` text NOT NULL,
  `attributes` text NOT NULL,
  `freeattributes` text NOT NULL,
  `extra_fields` text NOT NULL,
  `files` text NOT NULL,
  `weight` float(8,4) NOT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `delivery_times_id` int(4) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`order_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_order_item`
--

LOCK TABLES `yami_jshopping_order_item` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_order_item` DISABLE KEYS */;
INSERT INTO `yami_jshopping_order_item` VALUES (3,3,0,'','',0.00,0.00,0.00,'','','','','','a:0:{}',0.0000,'','',0,0,''),(4,4,0,'1','FDFF',1.00,1.00,0.00,'','','','','','a:0:{}',0.0000,'','',0,0,''),(12,13,3,'','FDFDSFD',1.00,0.00,19.00,'','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_057.jpg','',0,1,''),(13,14,3,'','FDFDSFD',1.00,0.00,19.00,'','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_057.jpg','',0,1,'');
/*!40000 ALTER TABLE `yami_jshopping_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_order_status`
--

DROP TABLE IF EXISTS `yami_jshopping_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_order_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_code` char(1) NOT NULL,
  `name_en-GB` varchar(100) NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `name_zh-CN` varchar(100) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_order_status`
--

LOCK TABLES `yami_jshopping_order_status` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_order_status` DISABLE KEYS */;
INSERT INTO `yami_jshopping_order_status` VALUES (1,'P','Pending','Offen','Pending'),(2,'C','Confirmed','Bestätigt','Confirmed'),(3,'X','Cancelled','Abgebrochen','Cancelled'),(4,'R','Refunded','Gutschrift','Refunded'),(5,'S','Shipped','Gesendet','Shipped'),(6,'O','Paid','Bezahlt','Paid'),(7,'F','Complete','Abgeschlossen','Complete');
/*!40000 ALTER TABLE `yami_jshopping_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_orders`
--

DROP TABLE IF EXISTS `yami_jshopping_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_total` decimal(12,2) NOT NULL,
  `order_subtotal` decimal(12,2) NOT NULL,
  `order_tax` decimal(12,2) NOT NULL,
  `order_tax_ext` text NOT NULL,
  `order_shipping` decimal(12,2) NOT NULL,
  `order_payment` decimal(12,2) NOT NULL,
  `order_discount` decimal(12,2) NOT NULL,
  `shipping_tax` decimal(8,2) NOT NULL,
  `shipping_tax_ext` text NOT NULL,
  `payment_tax` decimal(8,2) NOT NULL,
  `payment_tax_ext` text NOT NULL,
  `order_package` decimal(12,2) NOT NULL,
  `package_tax_ext` text NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `currency_code_iso` varchar(3) NOT NULL,
  `currency_exchange` decimal(14,6) NOT NULL,
  `order_status` tinyint(4) NOT NULL,
  `order_created` tinyint(1) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order_m_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_method_id` int(11) NOT NULL,
  `delivery_times_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `payment_params` text NOT NULL,
  `payment_params_data` text NOT NULL,
  `delivery_time` varchar(100) NOT NULL,
  `delivery_date` datetime NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `order_add_info` text NOT NULL,
  `title` tinyint(1) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `firma_name` varchar(255) NOT NULL,
  `client_type` tinyint(1) NOT NULL,
  `client_type_name` varchar(100) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `street` varchar(100) NOT NULL,
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `mobil_phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `ext_field_1` varchar(255) NOT NULL,
  `ext_field_2` varchar(255) NOT NULL,
  `ext_field_3` varchar(255) NOT NULL,
  `d_title` tinyint(1) NOT NULL,
  `d_f_name` varchar(255) NOT NULL,
  `d_l_name` varchar(255) NOT NULL,
  `d_m_name` varchar(255) NOT NULL,
  `d_firma_name` varchar(255) NOT NULL,
  `d_email` varchar(255) NOT NULL,
  `d_birthday` date NOT NULL,
  `d_street` varchar(100) NOT NULL,
  `d_home` varchar(20) NOT NULL,
  `d_apartment` varchar(20) NOT NULL,
  `d_zip` varchar(20) NOT NULL,
  `d_city` varchar(100) NOT NULL,
  `d_state` varchar(100) NOT NULL,
  `d_country` int(11) NOT NULL,
  `d_phone` varchar(30) NOT NULL,
  `d_mobil_phone` varchar(20) NOT NULL,
  `d_fax` varchar(20) NOT NULL,
  `d_ext_field_1` varchar(255) NOT NULL,
  `d_ext_field_2` varchar(255) NOT NULL,
  `d_ext_field_3` varchar(255) NOT NULL,
  `pdf_file` varchar(50) NOT NULL,
  `order_hash` varchar(32) NOT NULL,
  `file_hash` varchar(64) NOT NULL,
  `file_stat_downloads` text NOT NULL,
  `order_custom_info` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `vendor_type` tinyint(1) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `lang` varchar(16) NOT NULL,
  `transaction` text NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_orders`
--

LOCK TABLES `yami_jshopping_orders` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_orders` DISABLE KEYS */;
INSERT INTO `yami_jshopping_orders` VALUES (3,'00000003',901,0.00,0.00,0.00,'a:0:{}',0.00,0.00,0.00,0.00,'',0.00,'',0.00,'','EUR','EUR',1.000000,1,0,'2013-06-29 02:05:28','2013-06-29 02:05:28',1,0,1,'','','','0000-00-00 00:00:00',0,'127.0.0.1','',1,'f','f','','f',0,'','','','ccqngu@live.cn','0000-00-00','f','','','548654','f','',4,'124564678798','','','','','',1,'','','','','','0000-00-00','','','','','','',1,'','','','','','','3_9734b614545d441a074bc77660719d0e.pdf','8cf271e187d22c4e9f61ad893e2ae483','0f3de3eaf58a62558ba44c12144d8ea8','','',0,0,0,'zh-CN',''),(4,'00000004',0,1.00,1.00,0.00,'a:0:{}',0.00,0.00,0.00,0.00,'',0.00,'',0.00,'','EUR','EUR',1.000000,1,0,'2013-06-29 02:05:54','2013-06-29 02:05:54',1,0,1,'','','','0000-00-00 00:00:00',0,'127.0.0.1','',1,'','','','',0,'','','','','0000-00-00','','','','','','',1,'','','','','','',1,'','','','','','0000-00-00','','','','','','',1,'','','','','','','4_263ef1cc290fd4ec63ce2527ca2d1253.pdf','2303fc81711d1f998025067898358203','6bdc0b653f9578f4597bf75baa7570f9','','',0,0,0,'zh-CN',''),(5,'00000005',901,0.00,0.00,0.00,'a:0:{}',0.00,0.00,0.00,0.00,'',0.00,'',0.00,'','EUR','EUR',1.000000,1,0,'2013-06-29 02:09:38','2013-06-29 02:09:38',1,0,1,'','','','0000-00-00 00:00:00',0,'127.0.0.1','',1,'f','f','','f',0,'','','','ccqngu@live.cn','0000-00-00','f','','','548654','f','',4,'124564678798','','','','','',1,'','','','','','0000-00-00','','','','','','',1,'','','','','','','5_686faa0da77ac28789b6792a1383fbf0.pdf','8a09292b2a252910fe81be1a9cc52d94','f6d11e52c3c6c49b08666067ee641107','','',0,0,0,'zh-CN',''),(13,'00000013',901,0.00,0.00,0.00,'a:1:{s:5:\"19.00\";d:0;}',0.00,0.00,0.00,0.00,'a:0:{}',0.00,'a:0:{}',0.00,'a:0:{}','EUR','EUR',1.000000,6,1,'2013-06-29 04:29:39','2013-06-29 04:29:39',0,0,0,'','','','0000-00-00 00:00:00',0,'127.0.0.1','',1,'f','f','','f',0,'','','','ccqngu@live.cn','0000-00-00','f','','','548654','f','',4,'124564678798','','','','','',1,'f','f','','f','ccqngu@live.cn','0000-00-00','f','','','548654','f','',4,'124564678798','','','','','','13_2dda55fa582711432769b9e964d8182f.pdf','3bbc3379491ffadd70cb70e282d3f036','4cdf5691d10e9acc8bef80cb4d684cd9','','',0,0,1,'zh-CN',''),(14,'00000014',901,0.00,0.00,0.00,'a:1:{s:5:\"19.00\";d:0;}',0.00,0.00,0.00,0.00,'a:0:{}',0.00,'a:0:{}',0.00,'a:0:{}','EUR','EUR',1.000000,6,1,'2013-06-29 08:32:59','2013-06-29 08:32:59',0,0,0,'','','','0000-00-00 00:00:00',0,'::1','',1,'f','f','','f',0,'','','','ccqngu@live.cn','0000-00-00','f','','','548654','f','',4,'124564678798','','','','','',1,'f','f','','f','ccqngu@live.cn','0000-00-00','f','','','548654','f','',4,'124564678798','','','','','','14_b43121eb8eecc86f589ca70095ee7d2e.pdf','ed3f964abe8ec26d6155a2439b41cbaa','3664433878022ac51d9dea40506ba5d3','','',0,0,1,'zh-CN','');
/*!40000 ALTER TABLE `yami_jshopping_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_payment_method`
--

DROP TABLE IF EXISTS `yami_jshopping_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_payment_method` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_code` varchar(32) NOT NULL,
  `payment_class` varchar(100) NOT NULL,
  `payment_publish` tinyint(1) NOT NULL,
  `payment_ordering` int(11) NOT NULL,
  `payment_params` text NOT NULL,
  `payment_type` tinyint(4) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `price_type` tinyint(1) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `show_descr_in_email` tinyint(1) NOT NULL,
  `name_en-GB` varchar(100) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `description_de-DE` text NOT NULL,
  `name_zh-CN` varchar(100) NOT NULL,
  `description_zh-CN` text NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_payment_method`
--

LOCK TABLES `yami_jshopping_payment_method` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_payment_method` DISABLE KEYS */;
INSERT INTO `yami_jshopping_payment_method` VALUES (1,'bank','pm_bank',1,1,'',1,4.00,0,1,'',0,'Cash on delivery','','Nachnahme','','Cash on delivery',''),(2,'PO','pm_purchase_order',1,2,'',1,0.00,0,1,'',1,'Advance payment','','Vorauskasse','','Advance payment',''),(3,'paypal','pm_paypal',1,3,'testmode=1\n email_received=test@testing.com\n transaction_end_status=6\n transaction_pending_status=1\n transaction_failed_status=3\n checkdatareturn=0',2,0.00,0,1,'',0,'Paypal','','Paypal','','Paypal',''),(4,'debit','pm_debit',1,4,'',1,0.00,0,1,'',0,'Debit','Please insert your bankdata.','Lastschrift','Bitte tragen Sie hier Ihre Bankdaten für den Abbuchungsauftrag ein.','Debit','Please insert your bankdata.'),(5,'ST','pm_sofortueberweisung',0,5,'user_id=00000\nproject_id=00000\nproject_password=00000\ntransaction_end_status=6\ntransaction_pending_status=1\ntransaction_failed_status=3\n',2,0.00,0,1,'',0,'Sofortueberweisung','','Sofortueberweisung','','Sofortueberweisung','');
/*!40000 ALTER TABLE `yami_jshopping_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_product_labels`
--

DROP TABLE IF EXISTS `yami_jshopping_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_product_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_product_labels`
--

LOCK TABLES `yami_jshopping_product_labels` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_product_labels` DISABLE KEYS */;
INSERT INTO `yami_jshopping_product_labels` VALUES (1,'New','new.png'),(2,'Sale','sale.png');
/*!40000 ALTER TABLE `yami_jshopping_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_products`
--

DROP TABLE IF EXISTS `yami_jshopping_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `product_ean` varchar(32) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `unlimited` tinyint(1) NOT NULL,
  `product_availability` varchar(128) NOT NULL,
  `product_date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modify` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_publish` tinyint(1) NOT NULL,
  `product_tax_id` tinyint(3) NOT NULL,
  `currency_id` int(4) NOT NULL,
  `product_template` varchar(64) NOT NULL DEFAULT 'default',
  `product_url` varchar(255) NOT NULL,
  `product_old_price` decimal(12,2) NOT NULL,
  `product_buy_price` decimal(12,2) NOT NULL,
  `product_price` decimal(18,6) NOT NULL,
  `min_price` decimal(12,2) NOT NULL,
  `different_prices` tinyint(1) NOT NULL,
  `product_weight` decimal(14,4) NOT NULL,
  `product_thumb_image` varchar(255) NOT NULL,
  `product_name_image` varchar(255) NOT NULL,
  `product_full_image` varchar(255) NOT NULL,
  `product_manufacturer_id` int(11) NOT NULL,
  `product_is_add_price` tinyint(1) NOT NULL,
  `add_price_unit_id` int(3) NOT NULL,
  `average_rating` float(4,2) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `delivery_times_id` int(4) NOT NULL,
  `hits` int(11) NOT NULL,
  `weight_volume_units` decimal(14,4) NOT NULL,
  `basic_price_unit_id` int(3) NOT NULL,
  `label_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `access` int(3) NOT NULL DEFAULT '1',
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_zh-CN` varchar(255) NOT NULL,
  `alias_zh-CN` varchar(255) NOT NULL,
  `short_description_zh-CN` text NOT NULL,
  `description_zh-CN` text NOT NULL,
  `meta_title_zh-CN` varchar(255) NOT NULL,
  `meta_description_zh-CN` text NOT NULL,
  `meta_keyword_zh-CN` text NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `product_manufacturer_id` (`product_manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_products`
--

LOCK TABLES `yami_jshopping_products` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_products` DISABLE KEYS */;
INSERT INTO `yami_jshopping_products` VALUES (3,0,'',1,1,'','2013-06-29 02:08:35','2013-06-29 02:08:35',1,1,1,'default','',0.00,0.00,0.000000,0.00,0,0.0000,'thumb_057.jpg','057.jpg','full_057.jpg',0,0,3,0.00,0,0,1,0.0000,0,0,0,1,'','','','','','','','FDFDSFD','','','','','',''),(4,0,'',1,1,'','2013-06-29 08:54:25','2013-06-29 08:54:25',1,1,1,'default','',0.00,0.00,0.000000,0.00,0,0.0000,'','','',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','test1','','','','','','');
/*!40000 ALTER TABLE `yami_jshopping_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_products_attr`
--

DROP TABLE IF EXISTS `yami_jshopping_products_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_products_attr` (
  `product_attr_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `buy_price` decimal(12,2) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `old_price` decimal(12,2) NOT NULL,
  `count` int(11) NOT NULL,
  `ean` varchar(100) NOT NULL,
  `weight` decimal(12,4) NOT NULL,
  `weight_volume_units` decimal(14,4) NOT NULL,
  `ext_attribute_product_id` int(11) NOT NULL,
  PRIMARY KEY (`product_attr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_products_attr`
--

LOCK TABLES `yami_jshopping_products_attr` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_products_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_jshopping_products_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_products_attr2`
--

DROP TABLE IF EXISTS `yami_jshopping_products_attr2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_products_attr2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  `attr_value_id` int(11) NOT NULL,
  `price_mod` char(1) NOT NULL,
  `addprice` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_products_attr2`
--

LOCK TABLES `yami_jshopping_products_attr2` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_products_attr2` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_jshopping_products_attr2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_products_extra_field_groups`
--

DROP TABLE IF EXISTS `yami_jshopping_products_extra_field_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_products_extra_field_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_zh-CN` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_products_extra_field_groups`
--

LOCK TABLES `yami_jshopping_products_extra_field_groups` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_products_extra_field_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_jshopping_products_extra_field_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_products_extra_field_values`
--

DROP TABLE IF EXISTS `yami_jshopping_products_extra_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_products_extra_field_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_zh-CN` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_products_extra_field_values`
--

LOCK TABLES `yami_jshopping_products_extra_field_values` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_products_extra_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_jshopping_products_extra_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_products_extra_fields`
--

DROP TABLE IF EXISTS `yami_jshopping_products_extra_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_products_extra_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `allcats` tinyint(1) NOT NULL,
  `cats` text NOT NULL,
  `type` tinyint(1) NOT NULL,
  `multilist` tinyint(1) NOT NULL,
  `group` tinyint(4) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_zh-CN` varchar(255) NOT NULL,
  `description_zh-CN` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_products_extra_fields`
--

LOCK TABLES `yami_jshopping_products_extra_fields` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_products_extra_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_jshopping_products_extra_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_products_files`
--

DROP TABLE IF EXISTS `yami_jshopping_products_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_products_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `demo` varchar(255) NOT NULL,
  `demo_descr` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `file_descr` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_products_files`
--

LOCK TABLES `yami_jshopping_products_files` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_products_files` DISABLE KEYS */;
INSERT INTO `yami_jshopping_products_files` VALUES (1,4,'','','__________________Vim_______________IDE____________.pdf','',0);
/*!40000 ALTER TABLE `yami_jshopping_products_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_products_free_attr`
--

DROP TABLE IF EXISTS `yami_jshopping_products_free_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_products_free_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_products_free_attr`
--

LOCK TABLES `yami_jshopping_products_free_attr` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_products_free_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_jshopping_products_free_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_products_images`
--

DROP TABLE IF EXISTS `yami_jshopping_products_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_products_images` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `image_thumb` varchar(255) NOT NULL DEFAULT '',
  `image_name` varchar(255) NOT NULL DEFAULT '',
  `image_full` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `ordering` tinyint(4) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_products_images`
--

LOCK TABLES `yami_jshopping_products_images` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_products_images` DISABLE KEYS */;
INSERT INTO `yami_jshopping_products_images` VALUES (1,3,'thumb_057.jpg','057.jpg','full_057.jpg','',1);
/*!40000 ALTER TABLE `yami_jshopping_products_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_products_prices`
--

DROP TABLE IF EXISTS `yami_jshopping_products_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_products_prices` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `discount` decimal(16,6) NOT NULL,
  `product_quantity_start` int(11) NOT NULL,
  `product_quantity_finish` int(11) NOT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_products_prices`
--

LOCK TABLES `yami_jshopping_products_prices` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_products_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_jshopping_products_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_products_relations`
--

DROP TABLE IF EXISTS `yami_jshopping_products_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_products_relations` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `product_related_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_products_relations`
--

LOCK TABLES `yami_jshopping_products_relations` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_products_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_jshopping_products_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_products_reviews`
--

DROP TABLE IF EXISTS `yami_jshopping_products_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_products_reviews` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `time` date NOT NULL,
  `review` text NOT NULL,
  `mark` int(11) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `ip` varchar(20) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_products_reviews`
--

LOCK TABLES `yami_jshopping_products_reviews` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_products_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_jshopping_products_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_products_to_categories`
--

DROP TABLE IF EXISTS `yami_jshopping_products_to_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_products_to_categories` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `product_ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_products_to_categories`
--

LOCK TABLES `yami_jshopping_products_to_categories` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_products_to_categories` DISABLE KEYS */;
INSERT INTO `yami_jshopping_products_to_categories` VALUES (3,1,1),(4,1,2);
/*!40000 ALTER TABLE `yami_jshopping_products_to_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_products_videos`
--

DROP TABLE IF EXISTS `yami_jshopping_products_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_products_videos` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `video_name` varchar(255) NOT NULL DEFAULT '',
  `video_code` text NOT NULL,
  `video_preview` varchar(255) NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_products_videos`
--

LOCK TABLES `yami_jshopping_products_videos` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_products_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_jshopping_products_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_shipping_ext_calc`
--

DROP TABLE IF EXISTS `yami_jshopping_shipping_ext_calc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_shipping_ext_calc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  `shipping_method` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `ordering` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_shipping_ext_calc`
--

LOCK TABLES `yami_jshopping_shipping_ext_calc` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_shipping_ext_calc` DISABLE KEYS */;
INSERT INTO `yami_jshopping_shipping_ext_calc` VALUES (1,'StandartWeight','sm_standart_weight','StandartWeight','','',1,1);
/*!40000 ALTER TABLE `yami_jshopping_shipping_ext_calc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_shipping_method`
--

DROP TABLE IF EXISTS `yami_jshopping_shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_shipping_method` (
  `shipping_id` int(11) NOT NULL AUTO_INCREMENT,
  `name_en-GB` varchar(100) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `description_de-DE` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `payments` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_zh-CN` varchar(100) NOT NULL,
  `description_zh-CN` text NOT NULL,
  PRIMARY KEY (`shipping_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_shipping_method`
--

LOCK TABLES `yami_jshopping_shipping_method` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_shipping_method` DISABLE KEYS */;
INSERT INTO `yami_jshopping_shipping_method` VALUES (1,'Standard','','Standardversand','',1,'','',1,'Standard',''),(2,'Express','','Express','',1,'','',2,'Express','');
/*!40000 ALTER TABLE `yami_jshopping_shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_shipping_method_price`
--

DROP TABLE IF EXISTS `yami_jshopping_shipping_method_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_shipping_method_price` (
  `sh_pr_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(11) NOT NULL,
  `shipping_tax_id` int(11) NOT NULL,
  `shipping_stand_price` decimal(12,2) NOT NULL,
  `package_tax_id` int(11) NOT NULL,
  `package_stand_price` decimal(12,2) NOT NULL,
  `delivery_times_id` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`sh_pr_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_shipping_method_price`
--

LOCK TABLES `yami_jshopping_shipping_method_price` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_shipping_method_price` DISABLE KEYS */;
INSERT INTO `yami_jshopping_shipping_method_price` VALUES (1,1,1,10.00,1,0.00,0,''),(2,2,1,25.00,1,0.00,0,'');
/*!40000 ALTER TABLE `yami_jshopping_shipping_method_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_shipping_method_price_countries`
--

DROP TABLE IF EXISTS `yami_jshopping_shipping_method_price_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_shipping_method_price_countries` (
  `sh_method_country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `sh_pr_method_id` int(11) NOT NULL,
  PRIMARY KEY (`sh_method_country_id`),
  KEY `country_id` (`country_id`),
  KEY `sh_pr_method_id` (`sh_pr_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=479 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_shipping_method_price_countries`
--

LOCK TABLES `yami_jshopping_shipping_method_price_countries` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_shipping_method_price_countries` DISABLE KEYS */;
INSERT INTO `yami_jshopping_shipping_method_price_countries` VALUES (1,239,1),(2,238,1),(3,237,1),(4,236,1),(5,235,1),(6,234,1),(7,233,1),(8,232,1),(9,231,1),(10,230,1),(11,229,1),(12,228,1),(13,227,1),(14,226,1),(15,225,1),(16,224,1),(17,223,1),(18,222,1),(19,221,1),(20,220,1),(21,219,1),(22,218,1),(23,217,1),(24,216,1),(25,215,1),(26,214,1),(27,213,1),(28,212,1),(29,211,1),(30,210,1),(31,209,1),(32,208,1),(33,207,1),(34,206,1),(35,205,1),(36,204,1),(37,203,1),(38,202,1),(39,201,1),(40,200,1),(41,199,1),(42,198,1),(43,197,1),(44,196,1),(45,195,1),(46,194,1),(47,193,1),(48,192,1),(49,191,1),(50,190,1),(51,189,1),(52,188,1),(53,187,1),(54,186,1),(55,185,1),(56,184,1),(57,183,1),(58,182,1),(59,181,1),(60,180,1),(61,179,1),(62,178,1),(63,177,1),(64,176,1),(65,175,1),(66,174,1),(67,173,1),(68,172,1),(69,171,1),(70,170,1),(71,169,1),(72,168,1),(73,167,1),(74,166,1),(75,165,1),(76,164,1),(77,163,1),(78,162,1),(79,161,1),(80,160,1),(81,159,1),(82,158,1),(83,157,1),(84,156,1),(85,155,1),(86,154,1),(87,153,1),(88,152,1),(89,151,1),(90,150,1),(91,149,1),(92,148,1),(93,147,1),(94,146,1),(95,145,1),(96,144,1),(97,143,1),(98,142,1),(99,141,1),(100,140,1),(101,139,1),(102,138,1),(103,137,1),(104,136,1),(105,135,1),(106,134,1),(107,133,1),(108,132,1),(109,131,1),(110,130,1),(111,129,1),(112,128,1),(113,127,1),(114,126,1),(115,125,1),(116,124,1),(117,123,1),(118,122,1),(119,121,1),(120,120,1),(121,119,1),(122,118,1),(123,117,1),(124,116,1),(125,115,1),(126,114,1),(127,113,1),(128,112,1),(129,111,1),(130,110,1),(131,109,1),(132,108,1),(133,107,1),(134,106,1),(135,105,1),(136,104,1),(137,103,1),(138,102,1),(139,101,1),(140,100,1),(141,99,1),(142,98,1),(143,97,1),(144,96,1),(145,95,1),(146,94,1),(147,93,1),(148,92,1),(149,91,1),(150,90,1),(151,89,1),(152,88,1),(153,87,1),(154,86,1),(155,85,1),(156,84,1),(157,83,1),(158,82,1),(159,81,1),(160,80,1),(161,79,1),(162,78,1),(163,77,1),(164,76,1),(165,75,1),(166,74,1),(167,73,1),(168,72,1),(169,71,1),(170,70,1),(171,69,1),(172,68,1),(173,67,1),(174,66,1),(175,65,1),(176,64,1),(177,63,1),(178,62,1),(179,61,1),(180,60,1),(181,59,1),(182,58,1),(183,57,1),(184,56,1),(185,55,1),(186,54,1),(187,53,1),(188,52,1),(189,51,1),(190,50,1),(191,49,1),(192,48,1),(193,47,1),(194,46,1),(195,45,1),(196,44,1),(197,43,1),(198,42,1),(199,41,1),(200,40,1),(201,39,1),(202,38,1),(203,37,1),(204,36,1),(205,35,1),(206,34,1),(207,33,1),(208,32,1),(209,31,1),(210,30,1),(211,29,1),(212,28,1),(213,27,1),(214,26,1),(215,25,1),(216,24,1),(217,23,1),(218,22,1),(219,21,1),(220,20,1),(221,19,1),(222,18,1),(223,17,1),(224,16,1),(225,15,1),(226,14,1),(227,13,1),(228,12,1),(229,11,1),(230,10,1),(231,9,1),(232,8,1),(233,7,1),(234,6,1),(235,5,1),(236,4,1),(237,3,1),(238,2,1),(239,1,1),(240,239,2),(241,238,2),(242,237,2),(243,236,2),(244,235,2),(245,234,2),(246,233,2),(247,232,2),(248,231,2),(249,230,2),(250,229,2),(251,228,2),(252,227,2),(253,226,2),(254,225,2),(255,224,2),(256,223,2),(257,222,2),(258,221,2),(259,220,2),(260,219,2),(261,218,2),(262,217,2),(263,216,2),(264,215,2),(265,214,2),(266,213,2),(267,212,2),(268,211,2),(269,210,2),(270,209,2),(271,208,2),(272,207,2),(273,206,2),(274,205,2),(275,204,2),(276,203,2),(277,202,2),(278,201,2),(279,200,2),(280,199,2),(281,198,2),(282,197,2),(283,196,2),(284,195,2),(285,194,2),(286,193,2),(287,192,2),(288,191,2),(289,190,2),(290,189,2),(291,188,2),(292,187,2),(293,186,2),(294,185,2),(295,184,2),(296,183,2),(297,182,2),(298,181,2),(299,180,2),(300,179,2),(301,178,2),(302,177,2),(303,176,2),(304,175,2),(305,174,2),(306,173,2),(307,172,2),(308,171,2),(309,170,2),(310,169,2),(311,168,2),(312,167,2),(313,166,2),(314,165,2),(315,164,2),(316,163,2),(317,162,2),(318,161,2),(319,160,2),(320,159,2),(321,158,2),(322,157,2),(323,156,2),(324,155,2),(325,154,2),(326,153,2),(327,152,2),(328,151,2),(329,150,2),(330,149,2),(331,148,2),(332,147,2),(333,146,2),(334,145,2),(335,144,2),(336,143,2),(337,142,2),(338,141,2),(339,140,2),(340,139,2),(341,138,2),(342,137,2),(343,136,2),(344,135,2),(345,134,2),(346,133,2),(347,132,2),(348,131,2),(349,130,2),(350,129,2),(351,128,2),(352,127,2),(353,126,2),(354,125,2),(355,124,2),(356,123,2),(357,122,2),(358,121,2),(359,120,2),(360,119,2),(361,118,2),(362,117,2),(363,116,2),(364,115,2),(365,114,2),(366,113,2),(367,112,2),(368,111,2),(369,110,2),(370,109,2),(371,108,2),(372,107,2),(373,106,2),(374,105,2),(375,104,2),(376,103,2),(377,102,2),(378,101,2),(379,100,2),(380,99,2),(381,98,2),(382,97,2),(383,96,2),(384,95,2),(385,94,2),(386,93,2),(387,92,2),(388,91,2),(389,90,2),(390,89,2),(391,88,2),(392,87,2),(393,86,2),(394,85,2),(395,84,2),(396,83,2),(397,82,2),(398,81,2),(399,80,2),(400,79,2),(401,78,2),(402,77,2),(403,76,2),(404,75,2),(405,74,2),(406,73,2),(407,72,2),(408,71,2),(409,70,2),(410,69,2),(411,68,2),(412,67,2),(413,66,2),(414,65,2),(415,64,2),(416,63,2),(417,62,2),(418,61,2),(419,60,2),(420,59,2),(421,58,2),(422,57,2),(423,56,2),(424,55,2),(425,54,2),(426,53,2),(427,52,2),(428,51,2),(429,50,2),(430,49,2),(431,48,2),(432,47,2),(433,46,2),(434,45,2),(435,44,2),(436,43,2),(437,42,2),(438,41,2),(439,40,2),(440,39,2),(441,38,2),(442,37,2),(443,36,2),(444,35,2),(445,34,2),(446,33,2),(447,32,2),(448,31,2),(449,30,2),(450,29,2),(451,28,2),(452,27,2),(453,26,2),(454,25,2),(455,24,2),(456,23,2),(457,22,2),(458,21,2),(459,20,2),(460,19,2),(461,18,2),(462,17,2),(463,16,2),(464,15,2),(465,14,2),(466,13,2),(467,12,2),(468,11,2),(469,10,2),(470,9,2),(471,8,2),(472,7,2),(473,6,2),(474,5,2),(475,4,2),(476,3,2),(477,2,2),(478,1,2);
/*!40000 ALTER TABLE `yami_jshopping_shipping_method_price_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_shipping_method_price_weight`
--

DROP TABLE IF EXISTS `yami_jshopping_shipping_method_price_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_shipping_method_price_weight` (
  `sh_pr_weight_id` int(11) NOT NULL AUTO_INCREMENT,
  `sh_pr_method_id` int(11) NOT NULL,
  `shipping_price` decimal(12,2) NOT NULL,
  `shipping_weight_from` decimal(14,4) NOT NULL,
  `shipping_weight_to` decimal(14,4) NOT NULL,
  `shipping_package_price` decimal(12,2) NOT NULL,
  PRIMARY KEY (`sh_pr_weight_id`),
  KEY `sh_pr_method_id` (`sh_pr_method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_shipping_method_price_weight`
--

LOCK TABLES `yami_jshopping_shipping_method_price_weight` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_shipping_method_price_weight` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_jshopping_shipping_method_price_weight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_taxes`
--

DROP TABLE IF EXISTS `yami_jshopping_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_taxes` (
  `tax_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(50) NOT NULL DEFAULT '',
  `tax_value` decimal(12,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`tax_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_taxes`
--

LOCK TABLES `yami_jshopping_taxes` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_taxes` DISABLE KEYS */;
INSERT INTO `yami_jshopping_taxes` VALUES (1,'Normal',19.00);
/*!40000 ALTER TABLE `yami_jshopping_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_taxes_ext`
--

DROP TABLE IF EXISTS `yami_jshopping_taxes_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_taxes_ext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_id` int(11) NOT NULL,
  `zones` text NOT NULL,
  `tax` decimal(12,2) NOT NULL,
  `firma_tax` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_taxes_ext`
--

LOCK TABLES `yami_jshopping_taxes_ext` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_taxes_ext` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_jshopping_taxes_ext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_unit`
--

DROP TABLE IF EXISTS `yami_jshopping_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qty` int(11) NOT NULL DEFAULT '1',
  `name_de-DE` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_zh-CN` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_unit`
--

LOCK TABLES `yami_jshopping_unit` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_unit` DISABLE KEYS */;
INSERT INTO `yami_jshopping_unit` VALUES (1,1,'Kg','Kg','Kg'),(2,1,'Liter','Liter','Liter'),(3,1,'St.','pcs.','pcs.');
/*!40000 ALTER TABLE `yami_jshopping_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_usergroups`
--

DROP TABLE IF EXISTS `yami_jshopping_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_usergroups` (
  `usergroup_id` int(11) NOT NULL AUTO_INCREMENT,
  `usergroup_name` varchar(64) NOT NULL,
  `usergroup_discount` decimal(12,2) NOT NULL,
  `usergroup_description` text NOT NULL,
  `usergroup_is_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`usergroup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_usergroups`
--

LOCK TABLES `yami_jshopping_usergroups` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_usergroups` DISABLE KEYS */;
INSERT INTO `yami_jshopping_usergroups` VALUES (1,'Default',0.00,'Default',1);
/*!40000 ALTER TABLE `yami_jshopping_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_users`
--

DROP TABLE IF EXISTS `yami_jshopping_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_users` (
  `user_id` int(11) NOT NULL,
  `usergroup_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `u_name` varchar(150) NOT NULL,
  `title` tinyint(1) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `firma_name` varchar(100) NOT NULL,
  `client_type` tinyint(1) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `street` varchar(255) NOT NULL,
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `mobil_phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `ext_field_1` varchar(255) NOT NULL,
  `ext_field_2` varchar(255) NOT NULL,
  `ext_field_3` varchar(255) NOT NULL,
  `delivery_adress` tinyint(1) NOT NULL,
  `d_title` tinyint(1) NOT NULL,
  `d_f_name` varchar(255) NOT NULL,
  `d_l_name` varchar(255) NOT NULL,
  `d_m_name` varchar(255) NOT NULL,
  `d_firma_name` varchar(100) NOT NULL,
  `d_email` varchar(255) NOT NULL,
  `d_birthday` date NOT NULL,
  `d_street` varchar(255) NOT NULL,
  `d_home` varchar(20) NOT NULL,
  `d_apartment` varchar(20) NOT NULL,
  `d_zip` varchar(20) NOT NULL,
  `d_city` varchar(100) NOT NULL,
  `d_state` varchar(100) NOT NULL,
  `d_country` int(11) NOT NULL,
  `d_phone` varchar(20) NOT NULL,
  `d_mobil_phone` varchar(20) NOT NULL,
  `d_fax` varchar(20) NOT NULL,
  `d_ext_field_1` varchar(255) NOT NULL,
  `d_ext_field_2` varchar(255) NOT NULL,
  `d_ext_field_3` varchar(255) NOT NULL,
  UNIQUE KEY `user_id` (`user_id`),
  KEY `u_name` (`u_name`),
  KEY `usergroup_id` (`usergroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_users`
--

LOCK TABLES `yami_jshopping_users` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_users` DISABLE KEYS */;
INSERT INTO `yami_jshopping_users` VALUES (901,1,1,1,'admin',1,'f','f','','f',0,'','','ccqngu@live.cn','0000-00-00','f','','','548654','f','',4,'124564678798','','','','','',0,0,'','','','','','0000-00-00','','','','','','',0,'','','','','','');
/*!40000 ALTER TABLE `yami_jshopping_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_jshopping_vendors`
--

DROP TABLE IF EXISTS `yami_jshopping_vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_jshopping_vendors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `benef_bank_info` varchar(64) NOT NULL,
  `benef_bic` varchar(64) NOT NULL,
  `benef_conto` varchar(64) NOT NULL,
  `benef_payee` varchar(64) NOT NULL,
  `benef_iban` varchar(64) NOT NULL,
  `benef_swift` varchar(64) NOT NULL,
  `interm_name` varchar(64) NOT NULL,
  `interm_swift` varchar(64) NOT NULL,
  `identification_number` varchar(64) NOT NULL,
  `tax_number` varchar(64) NOT NULL,
  `additional_information` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_jshopping_vendors`
--

LOCK TABLES `yami_jshopping_vendors` WRITE;
/*!40000 ALTER TABLE `yami_jshopping_vendors` DISABLE KEYS */;
INSERT INTO `yami_jshopping_vendors` VALUES (1,'Shop name','Company','','','Address','City','Postal Code ','State',81,'First name ','Last name','','00000000','00000000','email@email.com','test','test','test','test','test','test','test','test','','','Additional information',0,1,1);
/*!40000 ALTER TABLE `yami_jshopping_vendors` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=554 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_menu`
--

LOCK TABLES `yami_menu` WRITE;
/*!40000 ALTER TABLE `yami_menu` DISABLE KEYS */;
INSERT INTO `yami_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,209,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',11,20,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',12,13,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',14,15,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',16,17,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',18,19,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',21,26,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',22,23,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',24,25,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',27,32,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',28,29,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',30,31,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',33,38,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',34,35,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',36,37,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',51,52,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',43,44,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',45,50,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',46,47,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',48,49,0,'*',1),(21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',39,40,0,'*',1),(22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',0,1,1,28,0,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',41,42,0,'*',1),(207,'top','Joomla.org','joomlaorg','','joomlaorg','http://joomla.org','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}',57,58,0,'*',0),(444,'top','Sample Sites','sample-sites-2','','sample-sites-2','index.php?Itemid=','alias',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"aliasoptions\":\"238\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}',55,56,0,'*',0),(464,'top','Home','home','','home','index.php?Itemid=','alias',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"aliasoptions\":\"435\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}',53,54,0,'*',0),(478,'main','JoomShopping','joomshopping','','joomshopping','index.php?option=com_jshopping','component',0,1,1,10047,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_logo_s.png',0,'',85,102,0,'',1),(479,'main','categories','categories','','joomshopping/categories','index.php?option=com_jshopping&controller=categories&catid=0','component',0,478,2,10047,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_categories_s.png',0,'',86,87,0,'',1),(480,'main','products','products','','joomshopping/products','index.php?option=com_jshopping&controller=products&category_id=0','component',0,478,2,10047,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_products_s.png',0,'',88,89,0,'',1),(481,'main','orders','orders','','joomshopping/orders','index.php?option=com_jshopping&controller=orders','component',0,478,2,10047,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_orders_s.png',0,'',90,91,0,'',1),(482,'main','clients','clients','','joomshopping/clients','index.php?option=com_jshopping&controller=users','component',0,478,2,10047,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_users_s.png',0,'',92,93,0,'',1),(483,'main','options','options','','joomshopping/options','index.php?option=com_jshopping&controller=other','component',0,478,2,10047,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_options_s.png',0,'',94,95,0,'',1),(484,'main','configuration','configuration','','joomshopping/configuration','index.php?option=com_jshopping&controller=config','component',0,478,2,10047,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_configuration_s.png',0,'',96,97,0,'',1),(485,'main','install-and-update','install-and-update','','joomshopping/install-and-update','index.php?option=com_jshopping&controller=update','component',0,478,2,10047,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_update_s.png',0,'',98,99,0,'',1),(486,'main','about-as','about-as','','joomshopping/about-as','index.php?option=com_jshopping&controller=info','component',0,478,2,10047,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_info_s.png',0,'',100,101,0,'',1),(505,'mainmenu','市场观察','homepage','','homepage','index.php?option=com_content&view=categories&id=79','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_base_description\":\"\",\"categories_description\":\"\",\"maxLevelcat\":\"\",\"show_empty_categories_cat\":\"\",\"show_subcat_desc_cat\":\"\",\"show_cat_num_articles_cat\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"display_num\":\"10\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',143,158,1,'*',0),(506,'mainmenu','流行报告','homepage','','homepage/homepage','index.php?option=com_content&view=categories&id=79','url',1,505,2,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',144,145,0,'*',0),(515,'mainmenu','设计下载','2013-06-27-03-36-43','','2013-06-27-03-36-43','index.php?option=com_content&view=featured','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"featured_categories\":[\"88\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',167,174,0,'*',0),(519,'mainmenu',' 零售（报告）','2013-06-27-09-34-51','','homepage/2013-06-27-09-34-51','index.php?option=com_content&view=categories&id=82','url',1,505,2,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',146,147,0,'*',0),(520,'mainmenu','室内设计','2013-06-27-09-35-57','','homepage/2013-06-27-09-35-57','index.php?option=com_content&view=categories&id=83','url',1,505,2,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',148,149,0,'*',0),(521,'mainmenu','潮流都市','2013-06-27-09-36-31','','homepage/2013-06-27-09-36-31','index.php?option=com_content&view=categories&id=85','url',1,505,2,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',156,157,0,'*',0),(522,'mainmenu','新闻商务','2013-06-27-09-36-51','','homepage/2013-06-27-09-36-51','index.php?option=com_content&view=categories&id=84','url',1,505,2,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',150,151,0,'*',0),(523,'mainmenu','品牌观察','2013-06-27-09-37-19','','homepage/2013-06-27-09-37-19','index.php?option=com_content&view=categories&id=87','url',1,505,2,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',152,153,0,'*',0),(525,'mainmenu','心情版','2013-06-27-09-37-45','','2013-06-27-03-36-43/2013-06-27-09-37-45','index.php?option=com_content&view=featured','component',0,515,2,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',168,169,0,'*',0),(526,'mainmenu','原创设计','2013-06-28-22-59-58','','2013-06-27-03-36-43/2013-06-28-22-59-58','index.php?option=com_content&view=category&layout=blog&id=114','component',1,515,2,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',170,171,0,'*',0),(527,'mainmenu','培训提升','2013-06-29-06-24-50','','2013-06-29-06-24-50','','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',177,178,0,'*',0),(528,'mainmenu','颜色','2013-06-29-06-27-01','','2013-06-27-03-36-43/2013-06-29-06-27-01','','url',1,515,2,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',172,173,0,'*',0),(529,'mainmenu','展会活动','2013-07-03-00-42-50','','homepage/2013-07-03-00-42-50','index.php?option=com_content&view=categories&id=86','url',1,505,2,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',154,155,0,'*',0),(545,'main','COM_TORTAGS_MENU','com-tortags-menu','','com-tortags-menu','index.php?option=com_tortags','component',0,1,1,10058,0,0,'0000-00-00 00:00:00',0,1,'../media/com_tortags/images/tormix-16.png',0,'',191,196,0,'',1),(546,'main','COM_TORTAGS_MENU_COMOPONENTS','com-tortags-menu-comoponents','','com-tortags-menu/com-tortags-menu-comoponents','index.php?option=com_tortags&view=components','component',0,545,2,10058,0,0,'0000-00-00 00:00:00',0,1,'/administrator/components/com_tortags/assets/images/components.png',0,'',192,193,0,'',1),(547,'main','COM_TORTAGS_MENU_TAGS','com-tortags-menu-tags','','com-tortags-menu/com-tortags-menu-tags','index.php?option=com_tortags&view=tags','component',0,545,2,10058,0,0,'0000-00-00 00:00:00',0,1,'/administrator/components/com_tortags/assets/images/tags.png',0,'',194,195,0,'',1),(548,'main','JCE','jce','','jce','index.php?option=com_jce','component',0,1,1,10061,0,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/logo.png',0,'',197,206,0,'',1),(549,'main','WF_MENU_CPANEL','wf-menu-cpanel','','jce/wf-menu-cpanel','index.php?option=com_jce','component',0,548,2,10061,0,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-cpanel.png',0,'',198,199,0,'',1),(550,'main','WF_MENU_CONFIG','wf-menu-config','','jce/wf-menu-config','index.php?option=com_jce&view=config','component',0,548,2,10061,0,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-config.png',0,'',200,201,0,'',1),(551,'main','WF_MENU_PROFILES','wf-menu-profiles','','jce/wf-menu-profiles','index.php?option=com_jce&view=profiles','component',0,548,2,10061,0,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-profiles.png',0,'',202,203,0,'',1),(552,'main','WF_MENU_INSTALL','wf-menu-install','','jce/wf-menu-install','index.php?option=com_jce&view=installer','component',0,548,2,10061,0,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-install.png',0,'',204,205,0,'',1),(553,'mainmenu','全部品牌列表','2013-07-07-01-35-26','','2013-07-07-01-35-26','','url',-2,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',207,208,0,'*',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_menu_types`
--

LOCK TABLES `yami_menu_types` WRITE;
/*!40000 ALTER TABLE `yami_menu_types` DISABLE KEYS */;
INSERT INTO `yami_menu_types` VALUES (3,'top','Top','Links for major types of users'),(6,'mainmenu','Main Menu','Simple Home Menu');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_modules`
--

LOCK TABLES `yami_modules` WRITE;
/*!40000 ALTER TABLE `yami_modules` DISABLE KEYS */;
INSERT INTO `yami_modules` VALUES (1,'Main Menu','','',1,'position_8',901,'2013-06-25 03:51:35','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(2,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"Home\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(18,'Book Store','','',1,'position-10',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_banners',1,0,'{\"target\":\"1\",\"count\":\"1\",\"cid\":\"3\",\"catid\":[\"\"],\"tag_search\":\"0\",\"ordering\":\"0\",\"header_text\":\"\",\"footer_text\":\"Books!\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(20,'Top','','',1,'position-1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"top\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',0,'*'),(25,'市场观察','','',1,'tab_menu',901,'2013-07-07 01:31:44','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"mainmenu\",\"startLevel\":\"1\",\"endLevel\":\"3\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"sitemap\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(27,'Archived Articles','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_archive',1,1,'{\"count\":\"10\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(28,'Latest News','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_latest',1,1,'{\"catid\":[\"19\"],\"count\":\"5\",\"show_featured\":\"\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(29,'Articles Most Read','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_popular',1,1,'{\"catid\":[\"26\",\"29\"],\"count\":\"5\",\"show_front\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(30,'Feed Display','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_feed',1,1,'{\"rssurl\":\"http:\\/\\/community.joomla.org\\/blogs\\/community.feed?type=rss\",\"rssrtl\":\"0\",\"rsstitle\":\"1\",\"rssdesc\":\"1\",\"rssimage\":\"1\",\"rssitems\":\"3\",\"rssitemdesc\":\"1\",\"word_count\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(31,'News Flash','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_news',1,1,'{\"catid\":[\"19\"],\"image\":\"0\",\"item_title\":\"0\",\"link_titles\":\"\",\"item_heading\":\"h4\",\"showLastSeparator\":\"1\",\"readmore\":\"1\",\"count\":\"1\",\"ordering\":\"a.publish_up\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(33,'Random Image','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_random_image',1,1,'{\"type\":\"jpg\",\"folder\":\"images\\/sampledata\\/parks\\/animals\",\"link\":\"\",\"width\":\"180\",\"height\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',0,'*'),(34,'Articles Related Items','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_related_items',1,1,'{\"showDate\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\"}',0,'*'),(35,'Search','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_search',1,1,'{\"label\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"button_pos\":\"right\",\"imagebutton\":\"\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(36,'Statistics','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_stats',1,1,'{\"serverinfo\":\"1\",\"siteinfo\":\"1\",\"counter\":\"1\",\"increase\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(38,'Users Latest','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_users_latest',1,1,'{\"shownumber\":\"5\",\"linknames\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(39,'Who\'s Online','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_whosonline',1,1,'{\"showmode\":\"2\",\"linknames\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',0,'*'),(40,'Wrapper','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_wrapper',1,1,'{\"url\":\"http:\\/\\/www.youtube.com\\/embed\\/vb2eObvmvdI\",\"add\":\"1\",\"scrolling\":\"auto\",\"width\":\"640\",\"height\":\"390\",\"height_auto\":\"1\",\"target\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(41,'Footer','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_footer',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(44,'Login','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"280\",\"logout\":\"280\",\"greeting\":\"1\",\"name\":\"0\",\"usesecure\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',0,'*'),(47,'Latest Park Blogs','','',6,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_latest',1,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"show_front\":\"1\",\"catid\":\"35\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'en-GB'),(48,'Custom HTML','','<p>This is a custom html module. That means you can enter whatever content you want.</p>',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(49,'Weblinks','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_weblinks',1,1,'{\"catid\":\"32\",\"count\":\"5\",\"ordering\":\"title\",\"direction\":\"asc\",\"target\":\"3\",\"description\":\"0\",\"hits\":\"0\",\"count_clicks\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(52,'Breadcrumbs','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"showHere\":\"1\",\"showHome\":\"1\",\"homeText\":\"Home\",\"showLast\":\"1\",\"separator\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(56,'Banners','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_banners',1,1,'{\"target\":\"1\",\"count\":\"1\",\"cid\":\"1\",\"catid\":[\"15\"],\"tag_search\":\"0\",\"ordering\":\"random\",\"header_text\":\"\",\"footer_text\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(58,'Special!','','<h1>This week we have a special, half price on delicious oranges!</h1><div>Only for our special customers!</div><div>Use the code: Joomla! when ordering</div><p><em>This module can only be seen by people in the customers group or higher.</em></p>',1,'position-12',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',4,1,'{\"prepare_content\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(61,'Menu list','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_categories',1,1,'{\"parent\":\"29\",\"show_description\":\"0\",\"show_children\":\"0\",\"count\":\"0\",\"maxlevel\":\"0\",\"layout\":\"_:default\",\"item_heading\":\"4\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(62,'Language Switcher','','',3,'position-4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_languages',1,1,'{\"header_text\":\"\",\"footer_text\":\"\",\"image\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(63,'Search','','',1,'search',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_search',1,1,'{\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"button_pos\":\"right\",\"imagebutton\":\"1\",\"button_text\":\"\",\"set_itemid\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(64,'Language Switcher','','',1,'languageswitcherload',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_languages',1,1,'{\"header_text\":\"\",\"footer_text\":\"\",\"image\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(65,'About Fruit Shop','','<p>The Fruit Shop site shows a number of Joomla! features.</p><p>The template uses classes in cascading style sheets to change the layout of items, such as creating the horizontal alphabetical list in the Fruit Encyclopedia.</p><p> </p>',9,'position-4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(68,'About Parks','','<p>The Parks sample site is designed as a simple site that can be routinely updated from the front end of Joomla!.</p><p>As a site, it is largely focused on a blog which can be updated using the front end article submission.</p><p>New weblinks can also be added through the front end.</p><p>A simple image gallery uses com_content with thumbnails displayed in a blog layout and full size images shown in article layout.</p><p>The Parks site features the language switch module. All of the content and modules are tagged as English (en-GB). If a second language pack is added with sample data this can be filtered using the language switch.</p><p>Parks uses HTML5 which is a major web standard (along with XHTML which is used in other areas of sample data).</p>',2,'position-4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(69,'Articles Category','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_category',1,1,'{\"mode\":\"normal\",\"show_on_article_page\":\"1\",\"show_front\":\"show\",\"count\":\"0\",\"category_filtering_type\":\"1\",\"catid\":[\"72\"],\"show_child_category_articles\":\"0\",\"levels\":\"1\",\"author_filtering_type\":\"1\",\"created_by\":[\"\"],\"author_alias_filtering_type\":\"1\",\"created_by_alias\":[\"\"],\"excluded_articles\":\"\",\"date_filtering\":\"off\",\"date_field\":\"a.created\",\"start_date_range\":\"\",\"end_date_range\":\"\",\"relative_date\":\"30\",\"article_ordering\":\"a.title\",\"article_ordering_direction\":\"ASC\",\"article_grouping\":\"none\",\"article_grouping_direction\":\"ksort\",\"month_year_format\":\"F Y\",\"item_heading\":\"4\",\"link_titles\":\"1\",\"show_date\":\"0\",\"show_date_field\":\"created\",\"show_date_format\":\"Y-m-d H:i:s\",\"show_category\":\"0\",\"show_hits\":\"0\",\"show_author\":\"0\",\"show_introtext\":\"0\",\"introtext_limit\":\"100\",\"show_readmore\":\"0\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"15\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(70,'Search (Atomic Template)','','',1,'atomic-search',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_search',1,0,'{\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"button_pos\":\"right\",\"imagebutton\":\"\",\"button_text\":\"\",\"set_itemid\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(76,'Login (Atomic Template)','','',2,'atomic-sidebar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,0,'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"\",\"greeting\":\"1\",\"name\":\"0\",\"usesecure\":\"0\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',0,'*'),(77,'Shop','','',1,'position-11',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_banners',1,0,'{\"target\":\"1\",\"count\":\"1\",\"cid\":\"2\",\"catid\":[\"15\"],\"tag_search\":\"0\",\"ordering\":\"0\",\"header_text\":\"\",\"footer_text\":\"Shop!\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(78,'Contribute','','',1,'position-9',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_banners',1,0,'{\"target\":\"1\",\"count\":\"1\",\"cid\":\"1\",\"catid\":[\"15\"],\"tag_search\":\"0\",\"ordering\":\"0\",\"header_text\":\"\",\"footer_text\":\"Contribute! \",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(79,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(84,'Smart Search Module','','',2,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_finder',1,1,'{\"searchfilter\":\"\",\"show_autosuggest\":\"1\",\"show_advanced\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"field_size\":20,\"alt_label\":\"\",\"show_label\":\"0\",\"label_pos\":\"top\",\"show_button\":\"0\",\"button_pos\":\"right\",\"opensearch\":\"1\",\"opensearch_title\":\"\"}',0,'*'),(86,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*');
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
INSERT INTO `yami_modules_menu` VALUES (2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,205),(16,435),(17,0),(18,0),(19,-463),(19,-462),(19,-433),(19,-432),(19,-431),(19,-430),(19,-429),(19,-427),(19,-400),(19,-399),(19,-296),(19,-244),(19,-243),(19,-242),(19,-234),(20,0),(22,231),(22,234),(22,238),(22,242),(22,243),(22,244),(22,296),(22,399),(22,400),(23,-463),(23,-462),(23,-433),(23,-432),(23,-431),(23,-430),(23,-429),(23,-427),(23,-400),(23,-399),(23,-296),(23,-244),(23,-243),(23,-242),(23,-238),(23,-234),(25,0),(26,-238),(28,310),(29,302),(30,410),(31,309),(32,309),(33,307),(34,326),(35,306),(36,304),(37,311),(38,300),(39,301),(40,313),(41,324),(44,312),(45,-290),(47,231),(47,234),(47,242),(47,243),(47,244),(47,296),(47,399),(47,400),(48,418),(49,417),(52,416),(56,305),(57,238),(57,427),(57,429),(57,430),(57,431),(57,432),(57,433),(57,462),(57,463),(58,427),(58,429),(58,430),(58,431),(58,432),(58,433),(58,462),(58,463),(61,-443),(62,231),(62,234),(62,242),(62,243),(62,244),(62,296),(62,399),(62,400),(63,0),(64,447),(65,427),(65,429),(65,430),(65,431),(65,432),(65,433),(65,462),(65,463),(68,243),(69,-459),(70,285),(70,316),(71,285),(71,316),(72,285),(72,316),(73,285),(73,316),(74,285),(74,316),(75,285),(75,316),(76,285),(76,316),(77,0),(78,0),(79,0),(84,467),(86,0),(88,0),(93,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_redirect_links`
--

LOCK TABLES `yami_redirect_links` WRITE;
/*!40000 ALTER TABLE `yami_redirect_links` DISABLE KEYS */;
INSERT INTO `yami_redirect_links` VALUES (1,'http://localhost/joomla/index.php/Media','','','',1,0,'2013-06-18 08:23:26','0000-00-00 00:00:00'),(2,'http://localhost/joomla/index.php/extensions/modules','','','',1,0,'2013-06-18 08:24:30','0000-00-00 00:00:00'),(3,'http://localhost/joomla/index.php/modules/content-modules','','','',1,0,'2013-06-18 08:41:39','0000-00-00 00:00:00'),(4,'http://localhost/joomla/index.php?option=com_jshopping&controller=product&Itemid=0','','','',2,0,'2013-06-24 08:03:24','0000-00-00 00:00:00'),(5,'http://localhost/joomla/index.php?option=com_jshopping&controller=product','','','',1,0,'2013-06-24 08:03:40','0000-00-00 00:00:00'),(6,'http://localhost/joomla/index.php?Itemid=268','','http://localhost/joomla/index.php?option=com_content&view=featured&Itemid=435','',2,0,'2013-06-25 03:30:47','0000-00-00 00:00:00'),(7,'http://localhost/joomla/index.php?option=com_jshopping&controller=category&task=view&category_id=2&Itemid=0','','','',1,0,'2013-06-25 06:17:53','0000-00-00 00:00:00'),(8,'http://localhost/joomla/','','','',7,0,'2013-06-27 03:08:35','0000-00-00 00:00:00'),(9,'http://localhost/joomla/index.php?option=com_categories&extension=com_newsfeeds','','','',1,0,'2013-06-27 03:41:20','0000-00-00 00:00:00'),(10,'http://localhost/joomla/index.php','','','',6,0,'2013-06-27 03:43:47','0000-00-00 00:00:00'),(11,'http://localhost/joomla/index.php?option=com_content&view=categories&id=79','','','',6,0,'2013-07-05 02:07:01','0000-00-00 00:00:00'),(12,'http://localhost/joomla/index.php?option=com_content&view=category&id=3','','http://localhost/joomla/index.php?option=com_content&view=categories&id=79','',2,0,'2013-07-05 07:29:10','0000-00-00 00:00:00'),(13,'http://localhost/joomla/index.php?option=com_content&view=article&catid=19&id=88','','http://localhost/joomla/index.php?option=com_content&view=categories&id=79','',1,0,'2013-07-05 07:35:45','0000-00-00 00:00:00'),(14,'http://localhost/joomla/index.php?option=com_content&view=article&catid=88&id=88','','http://localhost/joomla/index.php?option=com_content&view=categories&id=79','',1,0,'2013-07-05 07:36:32','0000-00-00 00:00:00'),(15,'http://localhost/joomla/index.php?option=com_content&view=article&catid=88','','','',1,0,'2013-07-05 07:36:57','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `yami_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_sc_config`
--

DROP TABLE IF EXISTS `yami_sc_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_sc_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `setting` text NOT NULL,
  `cfgset` int(11) NOT NULL DEFAULT '0',
  `type` enum('text','textarea','richtext','yesno','list') NOT NULL,
  `indopts` text NOT NULL,
  `sh` int(11) NOT NULL,
  `sv` int(11) NOT NULL,
  `pagename` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kw` (`keyword`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_sc_config`
--

LOCK TABLES `yami_sc_config` WRITE;
/*!40000 ALTER TABLE `yami_sc_config` DISABLE KEYS */;
INSERT INTO `yami_sc_config` VALUES (1,'currency','SC_CURRENCY_SYMBOL','CAD',0,'text','',0,0,'SC_FINANCE'),(2,'show_emptycart','SC_SHOW_EMPTY_CART_BUTTON','1',0,'yesno','',0,0,'SC_FRONTEND_DISPLAY'),(3,'thousand_sep','SC_THOUSANDS_SEPARATOR',',',0,'text','',0,0,'SC_FRONTEND_DISPLAY'),(4,'decimal_sep','SC_DECIMAL_SEPARATOR','.',0,'text','',0,0,'SC_FRONTEND_DISPLAY'),(5,'decimals','SC_NUMBER_OF_DECIMALS','2',0,'text','',0,0,'SC_FRONTEND_DISPLAY'),(6,'remove_button','SC_SHOW_REMOVE_BUTTON','1',0,'yesno','',0,0,'SC_FRONTEND_DISPLAY'),(7,'email_customer','SC_SEND_CONFIRMATION_EMAIL_TO_CUSTOMER','1',0,'yesno','',0,0,'SC_COMMUNICATION'),(8,'email_copies','SC_SEND_CONFIRMATION_EMAIL_COPIES_TO','me@mysite.com\r\nyou@mysite.com',0,'textarea','',40,10,'SC_COMMUNICATION'),(9,'curralign','SC_CURRENCY_SYMBOL_POSITION','0',0,'list','Before amount:1\r\nAfter amount:0',0,0,'SC_FRONTEND_DISPLAY'),(10,'ostatus','SC_ORDER_STATUSES_ONE_PER_LINE','New\r\nReviewed\r\nReview\r\nCancelled\r\nTreated\r\nArchive\r\nPaid',0,'textarea','',20,10,'SC_ORDER_STATUSES'),(13,'dateformat','SC_DATE_FORMAT','d-m-y',0,'text','',0,0,'SC_FRONTEND_DISPLAY'),(14,'timeformat','SC_TIME_FORMAT','h:i:s',0,'text','',0,0,'SC_FRONTEND_DISPLAY'),(18,'usecidasemail','SC_USE_CONTENT_AS_EMAIL','0',0,'yesno','',0,0,'SC_COMMUNICATION'),(19,'usestdproduct','SC_USE_THE_SYSTEMATIC_PRODUCT','0',0,'yesno','',10,0,'SC_FINANCE'),(20,'emailcid','SC_CONFIRMATION_CONTENT_ID','0',0,'text','',3,0,'SC_COMMUNICATION'),(21,'cart_fee_product','SC_SYSTEMATIC_PRODUCT_CODE_TO_ADD_TO_CART','extracost',0,'text','',10,0,'SC_FINANCE'),(22,'prodcats','SC_PRODUCT_CATEGORIES_ONE_PER_LINE','Food\r\nDrinks\r\nPlants\r\nChemistry\r\nNon-Food',0,'textarea','',40,5,'SC_PRODUCT_CATEGORIES'),(26,'mailengine','SC_MAIL_ENGINE','joomla',0,'list','Joomla:joomla\r\nAlternative:alternative',0,0,'SC_COMMUNICATION'),(28,'checkminqty','SC_CHECK_MINIMUM_QUANTITY_IN_DB','0',0,'yesno','',0,0,'SC_CHECKING_OUT'),(29,'mincheckout','SC_MINIMUM_AMOUNT_FOR_CHECKOUT','0',0,'text','',0,0,'SC_CHECKING_OUT'),(36,'email_fromname','SC_SEND_EMAIL_FROM_NAME','Demo name',0,'text','',40,10,'SC_COMMUNICATION'),(37,'email_from','SC_SEND_EMAIL_FROM','demo@me.com',0,'text','',40,10,'SC_COMMUNICATION'),(39,'autodecfromstore','SC_AUTODEC_FROM_STORE','0',0,'yesno','',0,0,'SC_CHECKING_OUT'),(40,'use_downloadables','SC_USE_DOWNLOADABLES','1',0,'yesno','',0,0,'SC_MODULES'),(41,'downloadcid','SC_DOWNLOADCID','78',0,'text','',1,0,'SC_DOWNLOADABLES'),(44,'email_subject','SC_EMAIL_SUBJECT','Order from #name# for #ordertotal#',0,'text','',80,0,'SC_COMMUNICATION'),(45,'downloadpath','SC_DOWNLOADPATH','/',0,'text','',120,0,'SC_DOWNLOADABLES'),(46,'use_phocagallery','SC_USE_PHOCAGALLERY','1',0,'yesno','',0,0,'SC_MODULES'),(47,'show_tax_fields','SC_SHOW_TAX_FIELDS','1',0,'yesno','',0,0,'SC_MODULES'),(48,'show_shipping_fields','SC_SHOW_SHIPPING_FIELDS','1',0,'yesno','',0,0,'SC_MODULES');
/*!40000 ALTER TABLE `yami_sc_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_sc_downloads`
--

DROP TABLE IF EXISTS `yami_sc_downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_sc_downloads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) DEFAULT NULL,
  `paymentkey` varchar(255) DEFAULT NULL,
  `datetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_sc_downloads`
--

LOCK TABLES `yami_sc_downloads` WRITE;
/*!40000 ALTER TABLE `yami_sc_downloads` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_sc_downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_sc_fields`
--

DROP TABLE IF EXISTS `yami_sc_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_sc_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `length` varchar(11) DEFAULT NULL,
  `classname` varchar(64) DEFAULT NULL,
  `required` int(11) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `published` int(11) DEFAULT NULL,
  `checkfunction` varchar(64) DEFAULT NULL,
  `fieldcontents` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_sc_fields`
--

LOCK TABLES `yami_sc_fields` WRITE;
/*!40000 ALTER TABLE `yami_sc_fields` DISABLE KEYS */;
INSERT INTO `yami_sc_fields` VALUES (1,'name','Your Name','text','50','inputbox',1,10,1,'checkfilled',''),(2,'address1','Address','textarea','0','inputbox',1,40,1,'checkfilled',''),(3,'postal_code','Postal code / Zipcode','text','10','inputbox',0,90,1,'checkfilled',''),(5,'city','City','text','40','inputbox',0,60,1,'checkfilled',''),(6,'phone','Phone','text','40','inputbox',0,110,1,'checkfilled',''),(7,'email','Email','text','40','inputbox',0,30,1,'checkfilled',''),(10,'deliverybefore','Deliver before','date','0','inputbox',1,120,0,'checkfilled',''),(11,'div1','Extra info','divider','0','divider',0,100,1,'checkfilled',''),(14,'username','Username','text','0','inputbox',1,20,1,'checkfilled',''),(15,'address2','Address 2','text','0','inputbox',0,50,1,'checkfilled',''),(16,'region','Region','dropdown','0','inputbox',0,70,1,'checkfilled','Alberta;British Columbia;Manitoba;New Brunswick;Newfoundland and Labrador;Northwest Territories;Nova Scotia;Nunavut;Ontario;Prince Edward Island;Quebec;Saskatchewan;Yukon'),(17,'country','Country','text','0','inputbox',0,80,1,'checkfilled','');
/*!40000 ALTER TABLE `yami_sc_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_sc_odetails`
--

DROP TABLE IF EXISTS `yami_sc_odetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_sc_odetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `prodcode` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unitprice` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `shorttext` varchar(255) DEFAULT NULL,
  `option` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_sc_odetails`
--

LOCK TABLES `yami_sc_odetails` WRITE;
/*!40000 ALTER TABLE `yami_sc_odetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_sc_odetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_sc_orders`
--

DROP TABLE IF EXISTS `yami_sc_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_sc_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text,
  `codepostal` varchar(15) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `ipaddress` varchar(16) DEFAULT NULL,
  `customfields` text,
  `orderdt` int(11) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `tax` float DEFAULT NULL,
  `archive` int(11) DEFAULT NULL,
  `shipCost` varchar(10) DEFAULT NULL,
  `shipRegion` varchar(255) DEFAULT NULL,
  `j_user_id` int(11) DEFAULT NULL,
  `ordercode` varchar(255) DEFAULT NULL,
  `orderlink` varchar(255) DEFAULT NULL,
  `paymentcode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_sc_orders`
--

LOCK TABLES `yami_sc_orders` WRITE;
/*!40000 ALTER TABLE `yami_sc_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_sc_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_sc_prodoptiongroups`
--

DROP TABLE IF EXISTS `yami_sc_prodoptiongroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_sc_prodoptiongroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prodcode` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `showas` int(11) NOT NULL,
  `disporder` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_sc_prodoptiongroups`
--

LOCK TABLES `yami_sc_prodoptiongroups` WRITE;
/*!40000 ALTER TABLE `yami_sc_prodoptiongroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_sc_prodoptiongroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_sc_productoptions`
--

DROP TABLE IF EXISTS `yami_sc_productoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_sc_productoptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `optgroupid` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `formula` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `defselect` int(11) NOT NULL,
  `disporder` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_sc_productoptions`
--

LOCK TABLES `yami_sc_productoptions` WRITE;
/*!40000 ALTER TABLE `yami_sc_productoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `yami_sc_productoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yami_sc_products`
--

DROP TABLE IF EXISTS `yami_sc_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_sc_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prodcode` varchar(64) DEFAULT NULL,
  `shorttext` varchar(255) DEFAULT NULL,
  `av_qty` int(11) DEFAULT NULL,
  `unitprice` float DEFAULT NULL,
  `published` int(11) DEFAULT NULL,
  `optionstitle` varchar(32) DEFAULT NULL,
  `options` text,
  `showas` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `downloadable` int(11) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `shippoints` varchar(10) DEFAULT NULL,
  `shipwidth` float DEFAULT NULL,
  `shipheight` float DEFAULT NULL,
  `shiplength` float DEFAULT NULL,
  `shipweight` float DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_sc_products`
--

LOCK TABLES `yami_sc_products` WRITE;
/*!40000 ALTER TABLE `yami_sc_products` DISABLE KEYS */;
INSERT INTO `yami_sc_products` VALUES (1,'00001','jason',0,0,1,'','',1,'Chemistry',1,'','0',0,0,0,0,901);
/*!40000 ALTER TABLE `yami_sc_products` ENABLE KEYS */;
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
INSERT INTO `yami_session` VALUES ('0ss2bjc3ri5l3mpvqgtfsdln50',1,0,'1373163960','__default|a:8:{s:15:\"session.counter\";i:397;s:19:\"session.timer.start\";i:1372943216;s:18:\"session.timer.last\";i:1373162033;s:17:\"session.timer.now\";i:1373163957;s:22:\"session.client.browser\";s:72:\"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:22.0) Gecko/20100101 Firefox/22.0\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":9:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}s:11:\"com_content\";O:8:\"stdClass\":2:{s:4:\"edit\";O:8:\"stdClass\":1:{s:7:\"article\";O:8:\"stdClass\":2:{s:2:\"id\";a:4:{i:1;i:1;i:2;i:8;i:4;i:21;i:5;i:3;}s:4:\"data\";N;}}s:8:\"articles\";O:8:\"stdClass\":4:{s:6:\"filter\";O:8:\"stdClass\":7:{s:6:\"search\";s:0:\"\";s:6:\"access\";i:0;s:9:\"author_id\";s:0:\"\";s:9:\"published\";s:0:\"\";s:11:\"category_id\";s:0:\"\";s:5:\"level\";i:0;s:8:\"language\";s:0:\"\";}s:10:\"limitstart\";i:0;s:8:\"ordercol\";s:7:\"a.title\";s:9:\"orderdirn\";s:3:\"asc\";}}s:11:\"com_modules\";O:8:\"stdClass\":4:{s:7:\"modules\";O:8:\"stdClass\":1:{s:6:\"filter\";O:8:\"stdClass\":1:{s:18:\"client_id_previous\";i:0;}}s:4:\"edit\";O:8:\"stdClass\":1:{s:6:\"module\";O:8:\"stdClass\":2:{s:2:\"id\";a:1:{i:0;i:25;}s:4:\"data\";N;}}s:3:\"add\";O:8:\"stdClass\":1:{s:6:\"module\";O:8:\"stdClass\":2:{s:12:\"extension_id\";N;s:6:\"params\";N;}}s:9:\"positions\";O:8:\"stdClass\":4:{s:6:\"filter\";O:8:\"stdClass\":4:{s:6:\"search\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"template\";s:0:\"\";s:4:\"type\";s:0:\"\";}s:10:\"limitstart\";s:1:\"0\";s:8:\"ordercol\";s:5:\"value\";s:9:\"orderdirn\";s:3:\"asc\";}}s:9:\"com_menus\";O:8:\"stdClass\":2:{s:5:\"items\";O:8:\"stdClass\":2:{s:6:\"filter\";O:8:\"stdClass\":1:{s:8:\"menutype\";s:8:\"mainmenu\";}s:10:\"limitstart\";i:0;}s:4:\"edit\";O:8:\"stdClass\":2:{s:4:\"item\";O:8:\"stdClass\":4:{s:2:\"id\";a:0:{}s:4:\"data\";N;s:4:\"type\";N;s:4:\"link\";N;}s:4:\"menu\";O:8:\"stdClass\":2:{s:2:\"id\";a:0:{}s:4:\"data\";N;}}}s:6:\"global\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"limit\";i:20;}}s:9:\"com_cache\";O:8:\"stdClass\":1:{s:5:\"cache\";O:8:\"stdClass\":1:{s:8:\"ordercol\";s:5:\"group\";}}s:14:\"com_categories\";O:8:\"stdClass\":2:{s:10:\"categories\";O:8:\"stdClass\":2:{s:6:\"filter\";O:8:\"stdClass\":1:{s:9:\"extension\";s:11:\"com_content\";}s:7:\"content\";O:8:\"stdClass\":5:{s:6:\"search\";s:0:\"\";s:6:\"filter\";O:8:\"stdClass\":4:{s:5:\"level\";i:0;s:6:\"access\";i:0;s:9:\"published\";s:0:\"\";s:8:\"language\";s:0:\"\";}s:10:\"limitstart\";s:2:\"20\";s:8:\"ordercol\";s:5:\"a.lft\";s:9:\"orderdirn\";s:3:\"asc\";}}s:4:\"edit\";O:8:\"stdClass\":1:{s:8:\"category\";O:8:\"stdClass\":2:{s:2:\"id\";a:1:{i:0;i:86;}s:4:\"data\";N;}}}s:13:\"com_installer\";O:8:\"stdClass\":5:{s:7:\"message\";s:0:\"\";s:17:\"extension_message\";s:0:\"\";s:12:\"redirect_url\";N;s:7:\"install\";O:8:\"stdClass\":1:{s:17:\"install_directory\";s:38:\"E:\\xampp\\htdocs\\joomla\\tmp\\com_tortags\";}s:6:\"manage\";O:8:\"stdClass\":4:{s:4:\"data\";a:1:{s:7:\"filters\";a:5:{s:6:\"search\";s:3:\"jce\";s:9:\"client_id\";s:0:\"\";s:6:\"status\";s:0:\"\";s:4:\"type\";s:0:\"\";s:5:\"group\";s:0:\"\";}}s:10:\"limitstart\";s:2:\"20\";s:8:\"ordercol\";s:4:\"name\";s:9:\"orderdirn\";s:3:\"asc\";}}s:11:\"com_tortags\";O:8:\"stdClass\":3:{s:10:\"components\";O:8:\"stdClass\":1:{s:8:\"ordercol\";N;}s:4:\"tags\";O:8:\"stdClass\":1:{s:8:\"ordercol\";N;}s:4:\"edit\";O:8:\"stdClass\":2:{s:9:\"component\";O:8:\"stdClass\":2:{s:4:\"data\";N;s:2:\"id\";a:0:{}}s:3:\"tag\";O:8:\"stdClass\":2:{s:4:\"data\";N;s:2:\"id\";a:0:{}}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:1;s:2:\"id\";s:3:\"901\";s:4:\"name\";s:3:\"f f\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:14:\"ccqngu@live.cn\";s:8:\"password\";s:65:\"d70f49c6b2c8466087ee0144f1dc223e:drNA5npmYrwjtG1OhlzYElCj6cR2bdSb\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:10:\"deprecated\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2013-06-17 06:52:58\";s:13:\"lastvisitDate\";s:19:\"2013-07-03 00:30:41\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:2:\"{}\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\0*\0_authLevels\";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"1431fd27dbd115d51cb24e0080bc10a2\";}__wf|a:1:{s:13:\"session.token\";s:32:\"00b85ff0bb79c04cb3ada4cc315a781e\";}',901,'admin',''),('1kb02u419ksq8ql2vbndv4f6m3',0,1,'1373014780','__default|a:7:{s:15:\"session.counter\";i:2;s:19:\"session.timer.start\";i:1373014776;s:18:\"session.timer.last\";i:1373014776;s:17:\"session.timer.now\";i:1373014780;s:22:\"session.client.browser\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'',''),('7s5kud9su1v4cef42hdm7neht1',1,0,'1372326114','__default|a:8:{s:15:\"session.counter\";i:94;s:19:\"session.timer.start\";i:1372325362;s:18:\"session.timer.last\";i:1372326112;s:17:\"session.timer.now\";i:1372326113;s:22:\"session.client.browser\";s:102:\"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":3:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}s:9:\"com_menus\";O:8:\"stdClass\":1:{s:4:\"edit\";O:8:\"stdClass\":1:{s:4:\"item\";O:8:\"stdClass\":5:{s:4:\"data\";N;s:4:\"type\";N;s:4:\"link\";N;s:2:\"id\";a:0:{}s:8:\"menutype\";s:8:\"mainmenu\";}}}s:4:\"item\";O:8:\"stdClass\":1:{s:6:\"filter\";O:8:\"stdClass\":1:{s:8:\"menutype\";s:8:\"mainmenu\";}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:1;s:2:\"id\";s:3:\"901\";s:4:\"name\";s:3:\"f f\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:14:\"ccqngu@live.cn\";s:8:\"password\";s:65:\"d70f49c6b2c8466087ee0144f1dc223e:drNA5npmYrwjtG1OhlzYElCj6cR2bdSb\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:10:\"deprecated\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2013-06-17 06:52:58\";s:13:\"lastvisitDate\";s:19:\"2013-06-26 02:22:55\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:2:\"{}\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\0*\0_authLevels\";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"fba0b6ffaa2e9e1d9d485f689be906e4\";}',901,'admin',''),('e5hapd438ai7iohjj8qd72eif6',1,0,'1372812173','__default|a:11:{s:15:\"session.counter\";i:15;s:19:\"session.timer.start\";i:1372811428;s:18:\"session.timer.last\";i:1372812170;s:17:\"session.timer.now\";i:1372812171;s:22:\"session.client.browser\";s:72:\"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:22.0) Gecko/20100101 Firefox/22.0\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":5:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}s:9:\"com_menus\";O:8:\"stdClass\":2:{s:5:\"items\";O:8:\"stdClass\":2:{s:6:\"filter\";O:8:\"stdClass\":1:{s:8:\"menutype\";s:8:\"mainmenu\";}s:10:\"limitstart\";i:0;}s:4:\"edit\";O:8:\"stdClass\":1:{s:4:\"item\";O:8:\"stdClass\":4:{s:4:\"data\";N;s:4:\"type\";N;s:4:\"link\";N;s:2:\"id\";a:1:{i:0;i:529;}}}}s:4:\"item\";O:8:\"stdClass\":1:{s:6:\"filter\";O:8:\"stdClass\":1:{s:8:\"menutype\";s:8:\"mainmenu\";}}s:14:\"com_categories\";O:8:\"stdClass\":1:{s:10:\"categories\";O:8:\"stdClass\":2:{s:6:\"filter\";O:8:\"stdClass\":1:{s:9:\"extension\";s:11:\"com_content\";}s:7:\"content\";O:8:\"stdClass\":5:{s:6:\"search\";s:0:\"\";s:6:\"filter\";O:8:\"stdClass\":4:{s:5:\"level\";i:0;s:6:\"access\";i:0;s:9:\"published\";s:0:\"\";s:8:\"language\";s:0:\"\";}s:10:\"limitstart\";s:2:\"20\";s:8:\"ordercol\";s:5:\"a.lft\";s:9:\"orderdirn\";s:3:\"asc\";}}}s:6:\"global\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"limit\";i:20;}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:1;s:2:\"id\";s:3:\"901\";s:4:\"name\";s:3:\"f f\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:14:\"ccqngu@live.cn\";s:8:\"password\";s:65:\"d70f49c6b2c8466087ee0144f1dc223e:drNA5npmYrwjtG1OhlzYElCj6cR2bdSb\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:10:\"deprecated\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2013-06-17 06:52:58\";s:13:\"lastvisitDate\";s:19:\"2013-06-29 02:21:28\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:2:\"{}\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\0*\0_authLevels\";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"07d684ed64b3770dded9a4e5ac79bb94\";s:19:\"js_id_currency_orig\";s:1:\"1\";s:14:\"js_id_currency\";s:1:\"1\";s:22:\"jshop_checked_language\";a:2:{i:0;s:5:\"en-GB\";i:1;s:5:\"zh-CN\";}}',901,'admin',''),('f9dfcac8ee32d9ad1848bbbefba06b2c',1,0,'1372488912','__default|a:12:{s:15:\"session.counter\";i:222;s:19:\"session.timer.start\";i:1372460253;s:18:\"session.timer.last\";i:1372488903;s:17:\"session.timer.now\";i:1372488911;s:22:\"session.client.browser\";s:72:\"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:22.0) Gecko/20100101 Firefox/22.0\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":8:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}s:9:\"com_menus\";O:8:\"stdClass\":2:{s:5:\"items\";O:8:\"stdClass\":2:{s:6:\"filter\";O:8:\"stdClass\":1:{s:8:\"menutype\";s:8:\"mainmenu\";}s:10:\"limitstart\";i:0;}s:4:\"edit\";O:8:\"stdClass\":1:{s:4:\"item\";O:8:\"stdClass\":4:{s:4:\"data\";N;s:4:\"type\";N;s:4:\"link\";N;s:2:\"id\";a:0:{}}}}s:4:\"item\";O:8:\"stdClass\":1:{s:6:\"filter\";O:8:\"stdClass\":1:{s:8:\"menutype\";s:8:\"mainmenu\";}}s:8:\"jshoping\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"admin\";O:8:\"stdClass\":5:{s:18:\"productcategory_id\";i:0;s:22:\"productmanufacturer_id\";i:0;s:15:\"productlabel_id\";i:0;s:14:\"productpublish\";i:0;s:18:\"producttext_search\";s:0:\"\";}}}s:13:\"com_languages\";O:8:\"stdClass\":1:{s:9:\"installed\";O:8:\"stdClass\":1:{s:8:\"ordercol\";s:6:\"a.name\";}}s:9:\"jshopping\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"admin\";O:8:\"stdClass\":10:{s:11:\"orderslimit\";i:20;s:16:\"orderslimitstart\";i:0;s:15:\"ordersstatus_id\";s:1:\"0\";s:10:\"ordersyear\";s:1:\"0\";s:11:\"ordersmonth\";s:1:\"0\";s:9:\"ordersday\";s:1:\"0\";s:17:\"ordersnotfinished\";s:1:\"0\";s:17:\"orderstext_search\";s:0:\"\";s:18:\"ordersfilter_order\";s:12:\"order_number\";s:22:\"ordersfilter_order_Dir\";s:3:\"asc\";}}}s:14:\"com_categories\";O:8:\"stdClass\":1:{s:10:\"categories\";O:8:\"stdClass\":2:{s:6:\"filter\";O:8:\"stdClass\":1:{s:9:\"extension\";s:11:\"com_content\";}s:7:\"content\";O:8:\"stdClass\":5:{s:6:\"search\";s:0:\"\";s:6:\"filter\";O:8:\"stdClass\":4:{s:5:\"level\";i:0;s:6:\"access\";i:0;s:9:\"published\";s:0:\"\";s:8:\"language\";s:0:\"\";}s:10:\"limitstart\";s:2:\"20\";s:8:\"ordercol\";s:5:\"a.lft\";s:9:\"orderdirn\";s:3:\"asc\";}}}s:6:\"global\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"limit\";i:20;}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:1;s:2:\"id\";s:3:\"901\";s:4:\"name\";s:3:\"f f\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:14:\"ccqngu@live.cn\";s:8:\"password\";s:65:\"d70f49c6b2c8466087ee0144f1dc223e:drNA5npmYrwjtG1OhlzYElCj6cR2bdSb\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:10:\"deprecated\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2013-06-17 06:52:58\";s:13:\"lastvisitDate\";s:19:\"2013-06-27 09:29:29\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:2:\"{}\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\0*\0_authLevels\";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"df728b6bcbdabfec73a6b4f95784c20a\";s:19:\"js_id_currency_orig\";s:1:\"1\";s:14:\"js_id_currency\";s:1:\"1\";s:22:\"jshop_checked_language\";a:2:{i:0;s:5:\"en-GB\";i:1;s:5:\"zh-CN\";}s:19:\"js_get_mysqlversion\";s:6:\"5.5.27\";}',901,'admin',''),('fsobgkr2c1jrls24epr2potig6',0,1,'1372327332','__default|a:14:{s:15:\"session.counter\";i:122;s:19:\"session.timer.start\";i:1372297202;s:18:\"session.timer.last\";i:1372327267;s:17:\"session.timer.now\";i:1372327332;s:22:\"session.client.browser\";s:102:\"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"d5b254ce562271ff74c9057a812029dc\";s:19:\"js_id_currency_orig\";s:1:\"1\";s:14:\"js_id_currency\";s:1:\"1\";s:19:\"js_history_sel_lang\";s:5:\"zh-CN\";s:15:\"js_prev_user_id\";i:0;s:22:\"jshop_checked_language\";a:2:{i:0;s:5:\"en-GB\";i:1;s:5:\"zh-CN\";}s:16:\"com_mailto.links\";a:1:{s:40:\"dbc803d8a330e247a7de6664d7be41f66c2b86f2\";O:8:\"stdClass\":2:{s:4:\"link\";s:115:\"http://localhost/joomla/index.php?option=com_content&view=article&id=1:administrator-components&catid=79&Itemid=505\";s:6:\"expiry\";i:1372305778;}}}',0,'',''),('m5mqrupfh2ba1cljmjmisiufr7',1,0,'1372327377','__default|a:8:{s:15:\"session.counter\";i:132;s:19:\"session.timer.start\";i:1372213367;s:18:\"session.timer.last\";i:1372323776;s:17:\"session.timer.now\";i:1372327376;s:22:\"session.client.browser\";s:65:\"Mozilla/5.0 (Windows NT 6.1; rv:21.0) Gecko/20100101 Firefox/21.0\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":5:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}s:9:\"com_menus\";O:8:\"stdClass\":1:{s:4:\"edit\";O:8:\"stdClass\":1:{s:4:\"item\";O:8:\"stdClass\":5:{s:2:\"id\";a:0:{}s:4:\"data\";N;s:4:\"type\";N;s:4:\"link\";N;s:8:\"menutype\";s:8:\"mainmenu\";}}}s:4:\"item\";O:8:\"stdClass\":1:{s:6:\"filter\";O:8:\"stdClass\":1:{s:8:\"menutype\";s:8:\"mainmenu\";}}s:14:\"com_categories\";O:8:\"stdClass\":1:{s:10:\"categories\";O:8:\"stdClass\":1:{s:6:\"filter\";O:8:\"stdClass\":1:{s:9:\"extension\";s:11:\"com_content\";}}}s:11:\"com_content\";O:8:\"stdClass\":1:{s:4:\"edit\";O:8:\"stdClass\":1:{s:7:\"article\";O:8:\"stdClass\":2:{s:2:\"id\";a:1:{i:0;i:1;}s:4:\"data\";N;}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:1;s:2:\"id\";s:3:\"901\";s:4:\"name\";s:3:\"f f\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:14:\"ccqngu@live.cn\";s:8:\"password\";s:65:\"d70f49c6b2c8466087ee0144f1dc223e:drNA5npmYrwjtG1OhlzYElCj6cR2bdSb\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:10:\"deprecated\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2013-06-17 06:52:58\";s:13:\"lastvisitDate\";s:19:\"2013-06-26 02:03:38\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:2:\"{}\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\0*\0_authLevels\";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"2138dc1f3e47471b3995891264a7cef9\";}',901,'admin',''),('mju48egntb8jjci58eepvi3r57',0,1,'1373189980','__default|a:9:{s:15:\"session.counter\";i:681;s:19:\"session.timer.start\";i:1372943086;s:18:\"session.timer.last\";i:1373189120;s:17:\"session.timer.now\";i:1373189980;s:22:\"session.client.browser\";s:86:\"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:22.0) Gecko/20100101 Firefox/22.0 FirePHP/0.7.2\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":2:{s:11:\"com_content\";O:8:\"stdClass\":2:{s:10:\"categories\";O:8:\"stdClass\":1:{s:8:\"ordercol\";N;}s:8:\"category\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:6:\"88:506\";O:8:\"stdClass\":3:{s:12:\"filter_order\";s:9:\"a.created\";s:16:\"filter_order_Dir\";s:3:\"asc\";s:5:\"limit\";i:5;}}}}s:5:\"users\";O:8:\"stdClass\":1:{s:5:\"login\";O:8:\"stdClass\":1:{s:4:\"form\";O:8:\"stdClass\":1:{s:4:\"data\";a:1:{s:6:\"return\";s:39:\"index.php?option=com_users&view=profile\";}}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:16:\"com_mailto.links\";a:1:{s:40:\"a5dd59ccbbeb30f2792af0c76c182fa93b198b84\";O:8:\"stdClass\":2:{s:4:\"link\";s:100:\"http://localhost/joomla/index.php?option=com_content&view=article&id=8:beginners&catid=88&Itemid=506\";s:6:\"expiry\";i:1373157035;}}s:13:\"session.token\";s:32:\"ee6cf7b08192c8acecc0045bbaa4a660\";}',0,'',''),('n9jv9ruvqrt1rtbkrfp89qlp71',0,1,'1372843605','__default|a:7:{s:15:\"session.counter\";i:46;s:19:\"session.timer.start\";i:1372811426;s:18:\"session.timer.last\";i:1372843600;s:17:\"session.timer.now\";i:1372843605;s:22:\"session.client.browser\";s:72:\"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:22.0) Gecko/20100101 Firefox/22.0\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'',''),('ph4smjt07lkihdee1f1754qdm0',0,1,'1372344091','__default|a:7:{s:15:\"session.counter\";i:43;s:19:\"session.timer.start\";i:1372339929;s:18:\"session.timer.last\";i:1372343915;s:17:\"session.timer.now\";i:1372344091;s:22:\"session.client.browser\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'',''),('qcrbnv4suv6caueoutpgdl1736',0,0,'1372488395','__default|a:22:{s:15:\"session.counter\";i:67;s:19:\"session.timer.start\";i:1372472476;s:18:\"session.timer.last\";i:1372488389;s:17:\"session.timer.now\";i:1372488395;s:22:\"session.client.browser\";s:72:\"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:22.0) Gecko/20100101 Firefox/22.0\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":1:{s:5:\"users\";O:8:\"stdClass\":1:{s:5:\"login\";O:8:\"stdClass\":1:{s:4:\"form\";O:8:\"stdClass\":2:{s:4:\"data\";a:1:{s:6:\"return\";s:39:\"index.php?option=com_users&view=profile\";}s:6:\"return\";s:41:\"index.php?option=com_content&view=article\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:1;s:2:\"id\";s:3:\"901\";s:4:\"name\";s:3:\"f f\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:14:\"ccqngu@live.cn\";s:8:\"password\";s:65:\"d70f49c6b2c8466087ee0144f1dc223e:drNA5npmYrwjtG1OhlzYElCj6cR2bdSb\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:10:\"deprecated\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2013-06-17 06:52:58\";s:13:\"lastvisitDate\";s:19:\"2013-06-29 02:21:15\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:2:\"{}\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\0*\0_authLevels\";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"858813589f57a937b11b6b08d898af70\";s:19:\"js_id_currency_orig\";s:1:\"1\";s:14:\"js_id_currency\";s:1:\"1\";s:19:\"js_history_sel_lang\";s:5:\"zh-CN\";s:8:\"wishlist\";s:260:\"O:9:\"jshopCart\":10:{s:9:\"type_cart\";s:8:\"wishlist\";s:8:\"products\";a:0:{}s:13:\"count_product\";i:0;s:13:\"price_product\";i:0;s:4:\"summ\";i:0;s:9:\"rabatt_id\";i:0;s:12:\"rabatt_value\";i:0;s:11:\"rabatt_type\";i:0;s:11:\"rabatt_summ\";d:0;s:20:\"price_product_brutto\";i:0;}\";s:19:\"js_update_all_price\";i:0;s:15:\"js_prev_user_id\";s:3:\"901\";s:22:\"jshop_checked_language\";a:2:{i:0;s:5:\"en-GB\";i:1;s:5:\"zh-CN\";}s:26:\"jshop_end_page_buy_product\";s:91:\"/joomla/index.php?option=com_jshopping&controller=category&task=view&category_id=1&Itemid=0\";s:27:\"jshop_end_page_list_product\";s:91:\"/joomla/index.php?option=com_jshopping&controller=category&task=view&category_id=1&Itemid=0\";s:9:\"pm_method\";s:0:\"\";s:20:\"show_pay_without_reg\";i:0;s:16:\"com_mailto.links\";a:4:{s:40:\"083fb4e4122bd944782dd4b4ce2c9dcc3f0661e1\";O:8:\"stdClass\":2:{s:4:\"link\";s:85:\"http://localhost/joomla/index.php?option=com_content&view=article&id=35:professionals\";s:6:\"expiry\";i:1372487488;}s:40:\"69e885c47bf30d422b81bab3d7df18cc531b1beb\";O:8:\"stdClass\":2:{s:4:\"link\";s:80:\"http://localhost/joomla/index.php?option=com_content&view=article&id=8:beginners\";s:6:\"expiry\";i:1372487488;}s:40:\"37fd3b5c3e7f9645b080eb473def1b3ad2c04c39\";O:8:\"stdClass\":2:{s:4:\"link\";s:81:\"http://localhost/joomla/index.php?option=com_content&view=article&id=50:upgraders\";s:6:\"expiry\";i:1372487488;}s:40:\"bb17564d10a819d005e68e4e8c8a4b64b2e69457\";O:8:\"stdClass\":2:{s:4:\"link\";s:78:\"http://localhost/joomla/index.php?option=com_content&view=article&id=24:joomla\";s:6:\"expiry\";i:1372487488;}}s:4:\"cart\";s:752:\"O:9:\"jshopCart\":10:{s:9:\"type_cart\";s:4:\"cart\";s:8:\"products\";a:1:{i:0;a:18:{s:8:\"quantity\";i:3;s:10:\"product_id\";i:3;s:11:\"category_id\";s:1:\"1\";s:3:\"tax\";s:5:\"19.00\";s:6:\"tax_id\";s:1:\"1\";s:12:\"product_name\";s:7:\"FDFDSFD\";s:11:\"thumb_image\";s:13:\"thumb_057.jpg\";s:17:\"delivery_times_id\";s:1:\"0\";s:3:\"ean\";s:0:\"\";s:10:\"attributes\";s:6:\"a:0:{}\";s:16:\"attributes_value\";a:0:{}s:12:\"extra_fields\";a:0:{}s:6:\"weight\";s:6:\"0.0000\";s:9:\"vendor_id\";s:1:\"1\";s:5:\"files\";s:6:\"a:0:{}\";s:14:\"freeattributes\";s:6:\"a:0:{}\";s:19:\"pid_check_qty_value\";s:3:\"P:3\";s:5:\"price\";d:0;}}s:13:\"count_product\";i:3;s:13:\"price_product\";d:0;s:4:\"summ\";i:0;s:9:\"rabatt_id\";i:0;s:12:\"rabatt_value\";i:0;s:11:\"rabatt_type\";i:0;s:11:\"rabatt_summ\";d:0;s:20:\"price_product_brutto\";d:0;}\";s:18:\"product_back_value\";a:0:{}}',901,'admin','');
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
INSERT INTO `yami_template_styles` VALUES (2,'bluestork',1,'1','Bluestork - Default','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\"}'),(3,'atomic',0,'0','Atomic - Default','{}'),(4,'beez_20',0,'0','Beez2 - Default','{\"wrapperSmall\":53,\"wrapperLarge\":72,\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"yami\",\"sitedescription\":\"yami\",\"navposition\":\"left\",\"templatecolor\":\"personal\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(6,'beez5',0,'0','Beez5 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/sampledata\\/fruitshop\\/fruits.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"html5\":\"0\"}'),(114,'beez_20',0,'1','Beez2 - Parks Site','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"\",\"sitetitle\":\"Australian Parks\",\"sitedescription\":\"Parks Sample Site\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table of xref to tags';
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Table of components';
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Table of tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_tortags_tags`
--

LOCK TABLES `yami_tortags_tags` WRITE;
/*!40000 ALTER TABLE `yami_tortags_tags` DISABLE KEYS */;
INSERT INTO `yami_tortags_tags` VALUES (1,'纽约',1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_update_sites`
--

LOCK TABLES `yami_update_sites` WRITE;
/*!40000 ALTER TABLE `yami_update_sites` DISABLE KEYS */;
INSERT INTO `yami_update_sites` VALUES (1,'Joomla Core','collection','http://update.joomla.org/core/list.xml',1,1371523881),(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1371523881),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist.xml',1,1371523881),(4,'JCE Editor Updates','extension','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1',1,0);
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
INSERT INTO `yami_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(3,10003),(4,10061);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_usergroups`
--

LOCK TABLES `yami_usergroups` WRITE;
/*!40000 ALTER TABLE `yami_usergroups` DISABLE KEYS */;
INSERT INTO `yami_usergroups` VALUES (1,0,1,20,'Public'),(2,1,6,17,'Registered'),(3,2,7,14,'Author'),(4,3,8,11,'Editor'),(5,4,9,10,'Publisher'),(6,1,2,5,'Manager'),(7,6,3,4,'Administrator'),(8,1,18,19,'Super Users');
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
INSERT INTO `yami_users` VALUES (901,'f f','admin','ccqngu@live.cn','d70f49c6b2c8466087ee0144f1dc223e:drNA5npmYrwjtG1OhlzYElCj6cR2bdSb','deprecated',0,1,'2013-06-17 06:52:58','2013-07-04 13:07:03','0','{}','0000-00-00 00:00:00',0);
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
INSERT INTO `yami_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',1,'[6,2,8]'),(3,'Special',2,'[6,3,8]'),(4,'Customer Access Level (Example)',3,'[6,3]');
/*!40000 ALTER TABLE `yami_viewlevels` ENABLE KEYS */;
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

--
-- Table structure for table `yami_wf_profiles`
--

DROP TABLE IF EXISTS `yami_wf_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yami_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yami_wf_profiles`
--

LOCK TABLES `yami_wf_profiles` WRITE;
/*!40000 ALTER TABLE `yami_wf_profiles` DISABLE KEYS */;
INSERT INTO `yami_wf_profiles` VALUES (1,'Default','Default Profile for all users','','1,6,7,2,3,4,5,8','',0,'desktop,tablet,phone','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article','charmap,contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists',1,1,0,'0000-00-00 00:00:00','{\"editor\":{\"width\":\"\",\"height\":\"\",\"toolbar_theme\":\"default\",\"toolbar_align\":\"left\",\"toolbar_location\":\"top\",\"statusbar_location\":\"bottom\",\"path\":\"1\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"resizing_use_cookie\":\"1\",\"toggle\":\"1\",\"toggle_label\":\"[Toggle Editor]\",\"toggle_state\":\"1\",\"relative_urls\":\"1\",\"verify_html\":\"\",\"schema\":\"\",\"forced_root_block\":\"\",\"profile_content_css\":\"2\",\"profile_content_css_custom\":\"\",\"theme_advanced_styles\":\"\",\"theme_advanced_blockformats\":[\"p\",\"div\",\"h1\",\"h2\",\"h3\",\"h4\",\"h5\",\"h6\",\"address\",\"code\",\"pre\",\"samp\",\"span\",\"section\",\"article\",\"hgroup\",\"aside\",\"figure\",\"dt\",\"dd\"],\"theme_advanced_fonts_add\":\"\",\"theme_advanced_fonts_remove\":\"\",\"theme_advanced_font_sizes\":\"\",\"custom_colors\":\"\",\"dir\":\"\",\"filesystem\":{\"name\":\"joomla\",\"joomla\":{\"allow_root\":\"0\",\"restrict_dir\":\"administrator,cache,components,includes,language,libraries,logs,media,modules,plugins,templates,xmlrpc\"}},\"max_size\":\"\",\"upload_conflict\":\"overwrite\",\"upload_runtimes\":[\"html5\",\"flash\",\"silverlight\",\"html4\"],\"browser_position\":\"bottom\",\"folder_tree\":\"1\",\"list_limit\":\"all\",\"validate_mimetype\":\"1\",\"websafe_mode\":\"utf-8\",\"websafe_allow_spaces\":\"0\",\"upload_add_random\":\"0\",\"invalid_elements\":\"\",\"invalid_attributes\":\"dynsrc,lowsrc\",\"invalid_attribute_values\":\"\",\"extended_elements\":\"\",\"allow_javascript\":\"0\",\"allow_css\":\"0\",\"allow_php\":\"0\",\"cdata\":\"1\"},\"browser\":{\"dir\":\"\",\"max_size\":\"\",\"extensions\":\"office=doc,docx,ppt,xls;image=gif,jpeg,jpg,png;acrobat=pdf;archive=zip,tar,gz,rar;flash=swf;quicktime=mov,mp4,qt;windowsmedia=wmv,asx,asf,avi;audio=wav,mp3,aiff;openoffice=odt,odg,odp,ods,odf\",\"filesystem\":{\"name\":\"\"},\"upload\":\"1\",\"folder_new\":\"1\",\"folder_delete\":\"1\",\"folder_rename\":\"1\",\"folder_move\":\"1\",\"file_delete\":\"1\",\"file_rename\":\"1\",\"file_move\":\"1\"},\"media\":{\"strict\":\"1\",\"iframes\":\"0\",\"audio\":\"1\",\"video\":\"1\",\"object\":\"1\",\"embed\":\"1\",\"version_flash\":\"10,1,53,64\",\"version_windowsmedia\":\"10,00,00,3646\",\"version_quicktime\":\"7,3,0,0\",\"version_java\":\"1,5,0,0\",\"version_shockwave\":\"10,2,0,023\"},\"clipboard\":{\"paste_use_dialog\":\"0\",\"paste_dialog_width\":\"450\",\"paste_dialog_height\":\"400\",\"paste_force_cleanup\":\"0\",\"paste_strip_class_attributes\":\"0\",\"paste_remove_spans\":\"0\",\"paste_remove_styles\":\"0\",\"paste_remove_attributes\":\"\",\"paste_retain_style_properties\":\"\",\"paste_remove_empty_paragraphs\":\"1\",\"paste_remove_styles_if_webkit\":\"0\",\"paste_process_footnotes\":\"convert\",\"paste_html\":\"1\",\"paste_text\":\"1\",\"buttons\":[\"cut\",\"copy\",\"paste\"]},\"source\":{\"highlight\":\"1\",\"numbers\":\"1\",\"wrap\":\"1\",\"format\":\"1\",\"tag_closing\":\"1\",\"selection_match\":\"1\",\"theme\":\"textmate\"},\"table\":{\"width\":\"\",\"height\":\"\",\"border\":\"0\",\"cols\":\"2\",\"rows\":\"2\",\"cellpadding\":\"\",\"cellspacing\":\"\",\"align\":\"\",\"classes\":\"\",\"pad_empty_cells\":\"1\",\"buttons\":[\"table_insert\",\"delete_table\",\"row_props\",\"cell_props\",\"row_before\",\"row_after\",\"delete_row\",\"col_before\",\"col_after\",\"delete_col\",\"split_cells\",\"merge_cells\"]},\"visualblocks\":{\"state\":\"1\"},\"xhtmlxtras\":{\"buttons\":[\"cite\",\"abbr\",\"acronym\",\"del\",\"ins\",\"attribs\"]},\"imgmanager\":{\"dir\":\"\",\"max_size\":\"\",\"extensions\":\"image=jpeg,jpg,png,gif\",\"filesystem\":{\"name\":\"\"},\"alt\":\"\",\"margin_top\":\"\",\"margin_right\":\"\",\"margin_bottom\":\"\",\"margin_left\":\"\",\"border\":\"0\",\"border_width\":\"1\",\"border_style\":\"solid\",\"border_color\":\"#000000\",\"align\":\"\",\"always_include_dimensions\":\"1\",\"style\":\"\",\"classes\":\"\",\"title\":\"\",\"id\":\"\",\"direction\":\"\",\"usemap\":\"\",\"longdesc\":\"\",\"tabs_rollover\":\"1\",\"tabs_advanced\":\"1\",\"attributes_dimensions\":\"1\",\"attributes_align\":\"1\",\"attributes_margin\":\"1\",\"attributes_border\":\"1\",\"upload\":\"1\",\"folder_new\":\"1\",\"folder_delete\":\"1\",\"folder_rename\":\"1\",\"folder_move\":\"1\",\"file_delete\":\"1\",\"file_rename\":\"1\",\"file_move\":\"1\",\"dragdrop_upload\":\"1\"},\"link\":{\"target\":\"\",\"id\":\"\",\"style\":\"\",\"classes\":\"\",\"dir\":\"\",\"hreflang\":\"\",\"lang\":\"\",\"charset\":\"\",\"type\":\"\",\"rel\":\"\",\"rev\":\"\",\"tabindex\":\"\",\"accesskey\":\"\",\"file_browser\":\"1\",\"tabs_advanced\":\"1\",\"attributes_anchor\":\"1\",\"attributes_target\":\"1\",\"links\":{\"joomlalinks\":{\"enable\":\"1\",\"content\":\"1\",\"article_alias\":\"1\",\"static\":\"1\",\"contacts\":\"1\",\"weblinks\":\"1\",\"weblinks_alias\":\"1\",\"menu\":\"1\"}},\"popups\":{\"default\":\"\",\"jcemediabox\":{\"enable\":\"1\"},\"window\":{\"enable\":\"1\"}},\"search\":{\"link\":{\"enable\":\"1\",\"plugins\":[\"categories\",\"contacts\",\"content\",\"newsfeeds\",\"weblinks\"]}}},\"spellchecker\":{\"engine\":\"browser\",\"browser_state\":\"0\",\"googlespell_languages\":[\"English=en\"],\"languages\":\"English=en\",\"pspell_mode\":\"PSPELL_FAST\",\"pspell_spelling\":\"\",\"pspell_jargon\":\"\",\"pspell_encoding\":\"\",\"pspell_dictionary\":\"components\\/com_jce\\/editor\\/tiny_mce\\/plugins\\/spellchecker\\/dictionary.pws\",\"pspellshell_aspell\":\"\\/usr\\/bin\\/aspell\",\"pspellshell_tmp\":\"\\/tmp\"},\"article\":{\"buttons\":[\"readmore\",\"pagebreak\"]},\"lists\":{\"number_styles\":[\"default\",\"lower-alpha\",\"lower-greek\",\"lower-roman\",\"upper-alpha\",\"upper-roman\"],\"bullet_styles\":[\"default\",\"circle\",\"disc\",\"square\"],\"buttons\":[\"numlist\",\"bullist\"]}}'),(2,'Front End','Sample Front-end Profile','','3,4,5','',1,'desktop,tablet,phone','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article','charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists',0,2,0,'0000-00-00 00:00:00',''),(3,'Blogger','Simple Blogging Profile','','3,4,5,6,8,7','',0,'desktop,tablet,phone','bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,underline,justifyfull,forecolor,clipboard,removeformat,charmap,indent,outdent,undo,redo,help','link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists',0,3,0,'0000-00-00 00:00:00','{\"editor\":{\"toggle\":\"0\"}}'),(4,'Mobile','Sample Mobile Profile','','3,4,5,6,8,7','',0,'tablet,phone','undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink','fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists',0,4,0,'0000-00-00 00:00:00','{\"editor\":{\"toolbar_theme\":\"mobile\",\"resizing\":\"0\",\"resize_horizontal\":\"0\",\"resizing_use_cookie\":\"0\",\"toggle\":\"0\",\"links\":{\"popups\":{\"default\":\"\",\"jcemediabox\":{\"enable\":\"0\"},\"window\":{\"enable\":\"0\"}}}}}');
/*!40000 ALTER TABLE `yami_wf_profiles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-07 17:44:50
