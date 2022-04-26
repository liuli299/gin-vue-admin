-- MySQL dump 10.13  Distrib 8.0.27, for macos11.6 (arm64)
--
-- Host: 127.0.0.1    Database: admin
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Temporary view structure for view `authority_menu`
--

DROP TABLE IF EXISTS `authority_menu`;
/*!50001 DROP VIEW IF EXISTS `authority_menu`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `authority_menu` AS SELECT 
 1 AS `id`,
 1 AS `path`,
 1 AS `icon`,
 1 AS `name`,
 1 AS `sort`,
 1 AS `title`,
 1 AS `hidden`,
 1 AS `component`,
 1 AS `parent_id`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `deleted_at`,
 1 AS `keep_alive`,
 1 AS `menu_level`,
 1 AS `default_menu`,
 1 AS `close_tab`,
 1 AS `menu_id`,
 1 AS `authority_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `casbin_rule`
--

DROP TABLE IF EXISTS `casbin_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casbin_rule` (
  `p_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v0` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v1` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v2` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v3` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v4` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v5` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casbin_rule`
--

LOCK TABLES `casbin_rule` WRITE;
/*!40000 ALTER TABLE `casbin_rule` DISABLE KEYS */;
INSERT INTO `casbin_rule` VALUES ('p','1','/menu/getMenu','POST','','',''),('p','1','/jwt/jsonInBlacklist','POST','','',''),('p','1','/base/login','POST','','',''),('p','1','/user/admin_register','POST','','',''),('p','1','/user/changePassword','POST','','',''),('p','1','/user/setUserAuthority','POST','','',''),('p','1','/user/setUserInfo','PUT','','',''),('p','1','/user/getUserInfo','GET','','',''),('p','100','/base/login','POST','','',''),('p','100','/jwt/jsonInBlacklist','POST','','',''),('p','100','/user/admin_register','POST','','',''),('p','100','/user/setUserInfo','PUT','','',''),('p','100','/user/setSelfInfo','PUT','','',''),('p','100','/user/getUserInfo','GET','','',''),('p','100','/user/changePassword','POST','','',''),('p','100','/user/setUserAuthority','POST','','',''),('p','100','/menu/getMenu','POST','','',''),('p','888','/base/login','POST','','',''),('p','888','/jwt/jsonInBlacklist','POST','','',''),('p','888','/user/deleteUser','DELETE','','',''),('p','888','/user/admin_register','POST','','',''),('p','888','/user/getUserList','POST','','',''),('p','888','/user/setUserInfo','PUT','','',''),('p','888','/user/setSelfInfo','PUT','','',''),('p','888','/user/getUserInfo','GET','','',''),('p','888','/user/setUserAuthorities','POST','','',''),('p','888','/user/changePassword','POST','','',''),('p','888','/user/setUserAuthority','POST','','',''),('p','888','/user/resetPassword','POST','','',''),('p','888','/api/createApi','POST','','',''),('p','888','/api/deleteApi','POST','','',''),('p','888','/api/updateApi','POST','','',''),('p','888','/api/getApiList','POST','','',''),('p','888','/api/getAllApis','POST','','',''),('p','888','/api/getApiById','POST','','',''),('p','888','/api/deleteApisByIds','DELETE','','',''),('p','888','/authority/copyAuthority','POST','','',''),('p','888','/authority/createAuthority','POST','','',''),('p','888','/authority/deleteAuthority','POST','','',''),('p','888','/authority/updateAuthority','PUT','','',''),('p','888','/authority/getAuthorityList','POST','','',''),('p','888','/authority/setDataAuthority','POST','','',''),('p','888','/casbin/updateCasbin','POST','','',''),('p','888','/casbin/getPolicyPathByAuthorityId','POST','','',''),('p','888','/menu/addBaseMenu','POST','','',''),('p','888','/menu/getMenu','POST','','',''),('p','888','/menu/deleteBaseMenu','POST','','',''),('p','888','/menu/updateBaseMenu','POST','','',''),('p','888','/menu/getBaseMenuById','POST','','',''),('p','888','/menu/getMenuList','POST','','',''),('p','888','/menu/getBaseMenuTree','POST','','',''),('p','888','/menu/getMenuAuthority','POST','','',''),('p','888','/menu/addMenuAuthority','POST','','',''),('p','888','/system/getServerInfo','POST','','',''),('p','888','/system/getSystemConfig','POST','','',''),('p','888','/system/setSystemConfig','POST','','',''),('p','888','/autoCode/getDB','GET','','',''),('p','888','/autoCode/getTables','GET','','',''),('p','888','/autoCode/createTemp','POST','','',''),('p','888','/autoCode/preview','POST','','',''),('p','888','/autoCode/getColumn','GET','','',''),('p','888','/autoCode/createPackage','POST','','',''),('p','888','/autoCode/getPackage','POST','','',''),('p','888','/autoCode/delPackage','POST','','',''),('p','888','/autoCode/getMeta','POST','','',''),('p','888','/autoCode/rollback','POST','','',''),('p','888','/autoCode/getSysHistory','POST','','',''),('p','888','/autoCode/delSysHistory','POST','','',''),('p','888','/sysDictionaryDetail/updateSysDictionaryDetail','PUT','','',''),('p','888','/sysDictionaryDetail/createSysDictionaryDetail','POST','','',''),('p','888','/sysDictionaryDetail/deleteSysDictionaryDetail','DELETE','','',''),('p','888','/sysDictionaryDetail/findSysDictionaryDetail','GET','','',''),('p','888','/sysDictionaryDetail/getSysDictionaryDetailList','GET','','',''),('p','888','/sysDictionary/createSysDictionary','POST','','',''),('p','888','/sysDictionary/deleteSysDictionary','DELETE','','',''),('p','888','/sysDictionary/updateSysDictionary','PUT','','',''),('p','888','/sysDictionary/findSysDictionary','GET','','',''),('p','888','/sysDictionary/getSysDictionaryList','GET','','',''),('p','888','/sysOperationRecord/createSysOperationRecord','POST','','',''),('p','888','/sysOperationRecord/findSysOperationRecord','GET','','',''),('p','888','/sysOperationRecord/getSysOperationRecordList','GET','','',''),('p','888','/sysOperationRecord/deleteSysOperationRecord','DELETE','','',''),('p','888','/sysOperationRecord/deleteSysOperationRecordByIds','DELETE','','',''),('p','888','/email/emailTest','POST','','',''),('p','888','/email/emailSend','POST','','',''),('p','888','/authorityBtn/setAuthorityBtn','POST','','',''),('p','888','/authorityBtn/getAuthorityBtn','POST','','',''),('p','888','/authorityBtn/canRemoveAuthorityBtn','POST','','','');
/*!40000 ALTER TABLE `casbin_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exa_customers`
--

DROP TABLE IF EXISTS `exa_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exa_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '客户名',
  `customer_phone_data` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '客户手机号',
  `sys_user_id` bigint unsigned DEFAULT NULL COMMENT '管理ID',
  `sys_user_authority_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '管理角色ID',
  PRIMARY KEY (`id`),
  KEY `idx_exa_customers_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exa_customers`
--

LOCK TABLES `exa_customers` WRITE;
/*!40000 ALTER TABLE `exa_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `exa_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exa_file_chunks`
--

DROP TABLE IF EXISTS `exa_file_chunks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exa_file_chunks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `exa_file_id` bigint unsigned DEFAULT NULL,
  `file_chunk_number` bigint DEFAULT NULL,
  `file_chunk_path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_chunks_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exa_file_chunks`
--

LOCK TABLES `exa_file_chunks` WRITE;
/*!40000 ALTER TABLE `exa_file_chunks` DISABLE KEYS */;
/*!40000 ALTER TABLE `exa_file_chunks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exa_file_upload_and_downloads`
--

DROP TABLE IF EXISTS `exa_file_upload_and_downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exa_file_upload_and_downloads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件名',
  `url` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件地址',
  `tag` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件标签',
  `key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '编号',
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_upload_and_downloads_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exa_file_upload_and_downloads`
--

LOCK TABLES `exa_file_upload_and_downloads` WRITE;
/*!40000 ALTER TABLE `exa_file_upload_and_downloads` DISABLE KEYS */;
INSERT INTO `exa_file_upload_and_downloads` VALUES (1,'2022-04-26 11:18:52.946','2022-04-26 11:18:52.946',NULL,'10.png','https://qmplusimg.henrongyi.top/gvalogo.png','png','158787308910.png'),(2,'2022-04-26 11:18:52.946','2022-04-26 11:18:52.946',NULL,'logo.png','https://qmplusimg.henrongyi.top/1576554439myAvatar.png','png','1587973709logo.png');
/*!40000 ALTER TABLE `exa_file_upload_and_downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exa_files`
--

DROP TABLE IF EXISTS `exa_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exa_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_md5` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `chunk_total` bigint DEFAULT NULL,
  `is_finish` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_files_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exa_files`
--

LOCK TABLES `exa_files` WRITE;
/*!40000 ALTER TABLE `exa_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `exa_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jwt_blacklists`
--

DROP TABLE IF EXISTS `jwt_blacklists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jwt_blacklists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `jwt` text COLLATE utf8mb4_general_ci COMMENT 'jwt',
  PRIMARY KEY (`id`),
  KEY `idx_jwt_blacklists_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jwt_blacklists`
--

LOCK TABLES `jwt_blacklists` WRITE;
/*!40000 ALTER TABLE `jwt_blacklists` DISABLE KEYS */;
/*!40000 ALTER TABLE `jwt_blacklists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_apis`
--

DROP TABLE IF EXISTS `sys_apis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_apis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'api路径',
  `description` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'api中文描述',
  `api_group` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'api组',
  `method` varchar(191) COLLATE utf8mb4_general_ci DEFAULT 'POST' COMMENT '方法',
  PRIMARY KEY (`id`),
  KEY `idx_sys_apis_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_apis`
--

LOCK TABLES `sys_apis` WRITE;
/*!40000 ALTER TABLE `sys_apis` DISABLE KEYS */;
INSERT INTO `sys_apis` VALUES (1,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/base/login','用户登录(必选)','base','POST'),(2,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/jwt/jsonInBlacklist','jwt加入黑名单(退出，必选)','jwt','POST'),(3,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/user/deleteUser','删除用户','系统用户','DELETE'),(4,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/user/admin_register','用户注册','系统用户','POST'),(5,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/user/getUserList','获取用户列表','系统用户','POST'),(6,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/user/setUserInfo','设置用户信息','系统用户','PUT'),(7,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/user/setSelfInfo','设置自身信息(必选)','系统用户','PUT'),(8,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/user/getUserInfo','获取自身信息(必选)','系统用户','GET'),(9,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/user/setUserAuthorities','设置权限组','系统用户','POST'),(10,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/user/changePassword','修改密码（建议选择)','系统用户','POST'),(11,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/user/setUserAuthority','修改用户角色(必选)','系统用户','POST'),(12,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/user/resetPassword','重置用户密码','系统用户','POST'),(13,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/api/createApi','创建api','api','POST'),(14,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/api/deleteApi','删除Api','api','POST'),(15,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/api/updateApi','更新Api','api','POST'),(16,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/api/getApiList','获取api列表','api','POST'),(17,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/api/getAllApis','获取所有api','api','POST'),(18,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/api/getApiById','获取api详细信息','api','POST'),(19,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/api/deleteApisByIds','批量删除api','api','DELETE'),(20,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/authority/copyAuthority','拷贝角色','角色','POST'),(21,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/authority/createAuthority','创建角色','角色','POST'),(22,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/authority/deleteAuthority','删除角色','角色','POST'),(23,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/authority/updateAuthority','更新角色信息','角色','PUT'),(24,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/authority/getAuthorityList','获取角色列表','角色','POST'),(25,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/authority/setDataAuthority','设置角色资源权限','角色','POST'),(26,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/casbin/updateCasbin','更改角色api权限','casbin','POST'),(27,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/casbin/getPolicyPathByAuthorityId','获取权限列表','casbin','POST'),(28,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/menu/addBaseMenu','新增菜单','菜单','POST'),(29,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/menu/getMenu','获取菜单树(必选)','菜单','POST'),(30,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/menu/deleteBaseMenu','删除菜单','菜单','POST'),(31,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/menu/updateBaseMenu','更新菜单','菜单','POST'),(32,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/menu/getBaseMenuById','根据id获取菜单','菜单','POST'),(33,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/menu/getMenuList','分页获取基础menu列表','菜单','POST'),(34,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/menu/getBaseMenuTree','获取用户动态路由','菜单','POST'),(35,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/menu/getMenuAuthority','获取指定角色menu','菜单','POST'),(36,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/menu/addMenuAuthority','增加menu和角色关联关系','菜单','POST'),(44,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/system/getServerInfo','获取服务器信息','系统服务','POST'),(45,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/system/getSystemConfig','获取配置文件内容','系统服务','POST'),(46,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/system/setSystemConfig','设置配置文件内容','系统服务','POST'),(52,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/autoCode/getDB','获取所有数据库','代码生成器','GET'),(53,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/autoCode/getTables','获取数据库表','代码生成器','GET'),(54,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/autoCode/createTemp','自动化代码','代码生成器','POST'),(55,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/autoCode/preview','预览自动化代码','代码生成器','POST'),(56,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/autoCode/getColumn','获取所选table的所有字段','代码生成器','GET'),(57,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/autoCode/createPackage','生成包(package)','包（pkg）生成器','POST'),(58,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/autoCode/getPackage','获取所有包(package)','包（pkg）生成器','POST'),(59,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/autoCode/delPackage','删除包(package)','包（pkg）生成器','POST'),(60,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/autoCode/getMeta','获取meta信息','代码生成器历史','POST'),(61,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/autoCode/rollback','回滚自动生成代码','代码生成器历史','POST'),(62,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/autoCode/getSysHistory','查询回滚记录','代码生成器历史','POST'),(63,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/autoCode/delSysHistory','删除回滚记录','代码生成器历史','POST'),(64,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/sysDictionaryDetail/updateSysDictionaryDetail','更新字典内容','系统字典详情','PUT'),(65,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/sysDictionaryDetail/createSysDictionaryDetail','新增字典内容','系统字典详情','POST'),(66,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/sysDictionaryDetail/deleteSysDictionaryDetail','删除字典内容','系统字典详情','DELETE'),(67,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/sysDictionaryDetail/findSysDictionaryDetail','根据ID获取字典内容','系统字典详情','GET'),(68,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/sysDictionaryDetail/getSysDictionaryDetailList','获取字典内容列表','系统字典详情','GET'),(69,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/sysDictionary/createSysDictionary','新增字典','系统字典','POST'),(70,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/sysDictionary/deleteSysDictionary','删除字典','系统字典','DELETE'),(71,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/sysDictionary/updateSysDictionary','更新字典','系统字典','PUT'),(72,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/sysDictionary/findSysDictionary','根据ID获取字典','系统字典','GET'),(73,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/sysDictionary/getSysDictionaryList','获取字典列表','系统字典','GET'),(74,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/sysOperationRecord/createSysOperationRecord','新增操作记录','操作记录','POST'),(75,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/sysOperationRecord/findSysOperationRecord','根据ID获取操作记录','操作记录','GET'),(76,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/sysOperationRecord/getSysOperationRecordList','获取操作记录列表','操作记录','GET'),(77,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/sysOperationRecord/deleteSysOperationRecord','删除操作记录','操作记录','DELETE'),(78,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/sysOperationRecord/deleteSysOperationRecordByIds','批量删除操作历史','操作记录','DELETE'),(82,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/email/emailTest','发送测试邮件','email','POST'),(83,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/email/emailSend','发送邮件示例','email','POST'),(88,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/authorityBtn/setAuthorityBtn','设置按钮权限','按钮权限','POST'),(89,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/authorityBtn/getAuthorityBtn','获取已有按钮权限','按钮权限','POST'),(90,'2022-04-26 11:18:52.912','2022-04-26 11:18:52.912',NULL,'/authorityBtn/canRemoveAuthorityBtn','删除按钮','按钮权限','POST');
/*!40000 ALTER TABLE `sys_apis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_authorities`
--

DROP TABLE IF EXISTS `sys_authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_authorities` (
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `authority_id` varchar(90) COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色ID',
  `authority_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '角色名',
  `parent_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '父角色ID',
  `default_router` varchar(191) COLLATE utf8mb4_general_ci DEFAULT 'dashboard' COMMENT '默认菜单',
  PRIMARY KEY (`authority_id`),
  UNIQUE KEY `authority_id` (`authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_authorities`
--

LOCK TABLES `sys_authorities` WRITE;
/*!40000 ALTER TABLE `sys_authorities` DISABLE KEYS */;
INSERT INTO `sys_authorities` VALUES ('2022-04-26 13:50:03.493','2022-04-26 15:50:49.932',NULL,'1','员工','0','dashboard'),('2022-04-26 15:16:36.187','2022-04-26 15:53:12.948',NULL,'100','管理员','0','dashboard'),('2022-04-26 11:18:52.929','2022-04-26 15:20:33.282',NULL,'888','系统管理员','0','dashboard');
/*!40000 ALTER TABLE `sys_authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_authority_btns`
--

DROP TABLE IF EXISTS `sys_authority_btns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_authority_btns` (
  `authority_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '角色ID',
  `sys_menu_id` bigint unsigned DEFAULT NULL COMMENT '菜单ID',
  `sys_base_menu_btn_id` bigint unsigned DEFAULT NULL COMMENT '菜单按钮ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_authority_btns`
--

LOCK TABLES `sys_authority_btns` WRITE;
/*!40000 ALTER TABLE `sys_authority_btns` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_authority_btns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_authority_menus`
--

DROP TABLE IF EXISTS `sys_authority_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_authority_menus` (
  `sys_base_menu_id` bigint unsigned NOT NULL,
  `sys_authority_authority_id` varchar(90) COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_base_menu_id`,`sys_authority_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_authority_menus`
--

LOCK TABLES `sys_authority_menus` WRITE;
/*!40000 ALTER TABLE `sys_authority_menus` DISABLE KEYS */;
INSERT INTO `sys_authority_menus` VALUES (1,'1'),(1,'100'),(1,'888'),(2,'1'),(2,'100'),(2,'888'),(3,'888'),(4,'888'),(5,'888'),(6,'888'),(7,'888'),(8,'1'),(8,'100'),(8,'888'),(9,'1'),(9,'100'),(9,'888'),(10,'1'),(10,'100'),(10,'888'),(11,'1'),(11,'100'),(11,'888'),(12,'1'),(12,'100'),(12,'888'),(13,'1'),(13,'100'),(13,'888'),(14,'888'),(15,'888'),(16,'888'),(17,'888'),(18,'888'),(19,'888'),(20,'888'),(21,'1'),(21,'100'),(23,'1'),(23,'100'),(23,'888'),(24,'888'),(25,'888'),(26,'888');
/*!40000 ALTER TABLE `sys_authority_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_auto_code_histories`
--

DROP TABLE IF EXISTS `sys_auto_code_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_auto_code_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `package` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `request_meta` text COLLATE utf8mb4_general_ci,
  `auto_code_path` text COLLATE utf8mb4_general_ci,
  `injection_meta` text COLLATE utf8mb4_general_ci,
  `struct_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `struct_cn_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `api_ids` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `flag` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_auto_code_histories_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_auto_code_histories`
--

LOCK TABLES `sys_auto_code_histories` WRITE;
/*!40000 ALTER TABLE `sys_auto_code_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_auto_code_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_auto_codes`
--

DROP TABLE IF EXISTS `sys_auto_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_auto_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `package_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '包名',
  `label` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '展示名',
  `desc` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `idx_sys_auto_codes_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_auto_codes`
--

LOCK TABLES `sys_auto_codes` WRITE;
/*!40000 ALTER TABLE `sys_auto_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_auto_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_base_menu_btns`
--

DROP TABLE IF EXISTS `sys_base_menu_btns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_base_menu_btns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '按钮关键key',
  `desc` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sys_base_menu_id` bigint unsigned DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menu_btns_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_base_menu_btns`
--

LOCK TABLES `sys_base_menu_btns` WRITE;
/*!40000 ALTER TABLE `sys_base_menu_btns` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_base_menu_btns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_base_menu_parameters`
--

DROP TABLE IF EXISTS `sys_base_menu_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_base_menu_parameters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `sys_base_menu_id` bigint unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址栏携带参数为params还是query',
  `key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址栏携带参数的key',
  `value` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址栏携带参数的值',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menu_parameters_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_base_menu_parameters`
--

LOCK TABLES `sys_base_menu_parameters` WRITE;
/*!40000 ALTER TABLE `sys_base_menu_parameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_base_menu_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_base_menus`
--

DROP TABLE IF EXISTS `sys_base_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_base_menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `menu_level` bigint unsigned DEFAULT NULL,
  `parent_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '父菜单ID',
  `path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路由path',
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路由name',
  `hidden` tinyint(1) DEFAULT NULL COMMENT '是否在列表隐藏',
  `component` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '对应前端文件路径',
  `sort` bigint DEFAULT NULL COMMENT '排序标记',
  `keep_alive` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `default_menu` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `title` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '附加属性',
  `icon` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '附加属性',
  `close_tab` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menus_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_base_menus`
--

LOCK TABLES `sys_base_menus` WRITE;
/*!40000 ALTER TABLE `sys_base_menus` DISABLE KEYS */;
INSERT INTO `sys_base_menus` VALUES (1,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'0','dashboard','dashboard',0,'view/dashboard/index.vue',1,0,0,'仪表盘','odometer',0),(2,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'0','about','about',0,'view/about/index.vue',7,0,0,'关于我们','info-filled',0),(3,'2022-04-26 11:18:52.925','2022-04-26 15:19:14.942',NULL,0,'0','admin','superAdmin',0,'view/superAdmin/index.vue',2,0,0,'系统设置','user',0),(4,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'3','authority','authority',0,'view/superAdmin/authority/authority.vue',1,0,0,'角色管理','avatar',0),(5,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'3','menu','menu',0,'view/superAdmin/menu/menu.vue',2,1,0,'菜单管理','tickets',0),(6,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'3','api','api',0,'view/superAdmin/api/api.vue',3,1,0,'api管理','platform',0),(7,'2022-04-26 11:18:52.925','2022-04-26 13:55:07.146',NULL,0,'3','user','user',0,'view/superAdmin/user/user.vue',1,0,0,'用户管理','coordinate',0),(8,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'0','person','person',1,'view/person/person.vue',4,0,0,'个人信息','message',0),(9,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'0','example','example',0,'view/example/index.vue',6,0,0,'示例文件','management',0),(10,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'9','excel','excel',0,'view/example/excel/excel.vue',4,0,0,'excel导入导出','takeaway-box',0),(11,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'9','upload','upload',0,'view/example/upload/upload.vue',5,0,0,'媒体库（上传下载）','upload',0),(12,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'9','breakpoint','breakpoint',0,'view/example/breakpoint/breakpoint.vue',6,0,0,'断点续传','upload-filled',0),(13,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'9','customer','customer',0,'view/example/customer/customer.vue',7,0,0,'客户列表（资源示例）','avatar',0),(14,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'0','systemTools','systemTools',0,'view/systemTools/index.vue',5,0,0,'系统工具','tools',0),(15,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'14','autoCode','autoCode',0,'view/systemTools/autoCode/index.vue',1,1,0,'代码生成器','cpu',0),(16,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'14','formCreate','formCreate',0,'view/systemTools/formCreate/index.vue',2,1,0,'表单生成器','magic-stick',0),(17,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'14','system','system',0,'view/systemTools/system/system.vue',3,0,0,'系统配置','operation',0),(18,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'3','dictionary','dictionary',0,'view/superAdmin/dictionary/sysDictionary.vue',5,0,0,'字典管理','notebook',0),(19,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'3','dictionaryDetail/:id','dictionaryDetail',1,'view/superAdmin/dictionary/sysDictionaryDetail.vue',1,0,0,'字典详情','order',0),(20,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'3','operation','operation',0,'view/superAdmin/operation/sysOperationRecord.vue',6,0,0,'操作历史','pie-chart',0),(21,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'9','simpleUploader','simpleUploader',0,'view/example/simpleUploader/simpleUploader',6,0,0,'断点续传（插件版）','upload',0),(22,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925','2022-04-26 13:51:21.208',0,'0','https://www.gin-vue-admin.com','https://www.gin-vue-admin.com',0,'/',0,0,0,'官方网站','home-filled',0),(23,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'0','state','state',0,'view/system/state.vue',6,0,0,'服务器状态','cloudy',0),(24,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'14','autoCodeAdmin','autoCodeAdmin',0,'view/systemTools/autoCodeAdmin/index.vue',1,0,0,'自动化代码管理','magic-stick',0),(25,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'14','autoCodeEdit/:id','autoCodeEdit',1,'view/systemTools/autoCode/index.vue',0,0,0,'自动化代码（复用）','magic-stick',0),(26,'2022-04-26 11:18:52.925','2022-04-26 11:18:52.925',NULL,0,'14','autoPkg','autoPkg',0,'view/systemTools/autoPkg/autoPkg.vue',0,0,0,'自动化package','folder',0);
/*!40000 ALTER TABLE `sys_base_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_data_authority_id`
--

DROP TABLE IF EXISTS `sys_data_authority_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_data_authority_id` (
  `sys_authority_authority_id` varchar(90) COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色ID',
  `data_authority_id_authority_id` varchar(90) COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_authority_authority_id`,`data_authority_id_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_data_authority_id`
--

LOCK TABLES `sys_data_authority_id` WRITE;
/*!40000 ALTER TABLE `sys_data_authority_id` DISABLE KEYS */;
INSERT INTO `sys_data_authority_id` VALUES ('1','1'),('100','100'),('888','888'),('888','8881'),('888','9528'),('9528','8881'),('9528','9528');
/*!40000 ALTER TABLE `sys_data_authority_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dictionaries`
--

DROP TABLE IF EXISTS `sys_dictionaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dictionaries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '字典名（中）',
  `type` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '字典名（英）',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `desc` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionaries_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dictionaries`
--

LOCK TABLES `sys_dictionaries` WRITE;
/*!40000 ALTER TABLE `sys_dictionaries` DISABLE KEYS */;
INSERT INTO `sys_dictionaries` VALUES (1,'2022-04-26 11:18:52.934','2022-04-26 11:18:52.934',NULL,'性别','gender',1,'性别字典'),(2,'2022-04-26 11:18:52.934','2022-04-26 11:18:52.934',NULL,'数据库int类型','int',1,'int类型对应的数据库类型'),(3,'2022-04-26 11:18:52.934','2022-04-26 11:18:52.934',NULL,'数据库时间日期类型','time.Time',1,'数据库时间日期类型'),(4,'2022-04-26 11:18:52.934','2022-04-26 11:18:52.934',NULL,'数据库浮点型','float64',1,'数据库浮点型'),(5,'2022-04-26 11:18:52.934','2022-04-26 11:18:52.934',NULL,'数据库字符串','string',1,'数据库字符串'),(6,'2022-04-26 11:18:52.934','2022-04-26 11:18:52.934',NULL,'数据库bool类型','bool',1,'数据库bool类型');
/*!40000 ALTER TABLE `sys_dictionaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dictionary_details`
--

DROP TABLE IF EXISTS `sys_dictionary_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dictionary_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `label` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '展示值',
  `value` bigint DEFAULT NULL COMMENT '字典值',
  `status` tinyint(1) DEFAULT NULL COMMENT '启用状态',
  `sort` bigint DEFAULT NULL COMMENT '排序标记',
  `sys_dictionary_id` bigint unsigned DEFAULT NULL COMMENT '关联标记',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionary_details_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dictionary_details`
--

LOCK TABLES `sys_dictionary_details` WRITE;
/*!40000 ALTER TABLE `sys_dictionary_details` DISABLE KEYS */;
INSERT INTO `sys_dictionary_details` VALUES (1,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'男',1,1,1,1),(2,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'女',2,1,2,1),(3,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'smallint',1,1,1,2),(4,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'mediumint',2,1,2,2),(5,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'int',3,1,3,2),(6,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'bigint',4,1,4,2),(7,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'date',0,1,0,3),(8,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'time',1,1,1,3),(9,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'year',2,1,2,3),(10,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'datetime',3,1,3,3),(11,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'timestamp',5,1,5,3),(12,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'float',0,1,0,4),(13,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'double',1,1,1,4),(14,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'decimal',2,1,2,4),(15,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'char',0,1,0,5),(16,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'varchar',1,1,1,5),(17,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'tinyblob',2,1,2,5),(18,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'tinytext',3,1,3,5),(19,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'text',4,1,4,5),(20,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'blob',5,1,5,5),(21,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'mediumblob',6,1,6,5),(22,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'mediumtext',7,1,7,5),(23,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'longblob',8,1,8,5),(24,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'longtext',9,1,9,5),(25,'2022-04-26 11:18:52.940','2022-04-26 11:18:52.940',NULL,'tinyint',0,1,0,6);
/*!40000 ALTER TABLE `sys_dictionary_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_operation_records`
--

DROP TABLE IF EXISTS `sys_operation_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_operation_records` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '请求ip',
  `method` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '请求方法',
  `path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '请求路径',
  `status` bigint DEFAULT NULL COMMENT '请求状态',
  `latency` bigint DEFAULT NULL COMMENT '延迟',
  `agent` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '代理',
  `error_message` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '错误信息',
  `body` text COLLATE utf8mb4_general_ci COMMENT '请求Body',
  `resp` text COLLATE utf8mb4_general_ci COMMENT '响应Body',
  `user_id` bigint unsigned DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `idx_sys_operation_records_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_operation_records`
--

LOCK TABLES `sys_operation_records` WRITE;
/*!40000 ALTER TABLE `sys_operation_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_operation_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_authority`
--

DROP TABLE IF EXISTS `sys_user_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_authority` (
  `sys_user_id` bigint unsigned NOT NULL,
  `sys_authority_authority_id` varchar(90) COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_user_id`,`sys_authority_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_authority`
--

LOCK TABLES `sys_user_authority` WRITE;
/*!40000 ALTER TABLE `sys_user_authority` DISABLE KEYS */;
INSERT INTO `sys_user_authority` VALUES (1,'888'),(3,'1');
/*!40000 ALTER TABLE `sys_user_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_users`
--

DROP TABLE IF EXISTS `sys_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户UUID',
  `username` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户登录名',
  `password` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户登录密码',
  `nick_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT '系统用户' COMMENT '用户昵称',
  `side_mode` varchar(191) COLLATE utf8mb4_general_ci DEFAULT 'dark' COMMENT '用户侧边主题',
  `header_img` varchar(191) COLLATE utf8mb4_general_ci DEFAULT 'https://qmplusimg.henrongyi.top/header.jpg' COMMENT '用户头像',
  `base_color` varchar(191) COLLATE utf8mb4_general_ci DEFAULT '#fff' COMMENT '基础颜色',
  `active_color` varchar(191) COLLATE utf8mb4_general_ci DEFAULT '#1890ff' COMMENT '活跃颜色',
  `authority_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT '888' COMMENT '用户角色ID',
  `phone` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户手机号',
  `email` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户邮箱',
  PRIMARY KEY (`id`),
  KEY `idx_sys_users_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_users`
--

LOCK TABLES `sys_users` WRITE;
/*!40000 ALTER TABLE `sys_users` DISABLE KEYS */;
INSERT INTO `sys_users` VALUES (1,'2022-04-26 11:18:52.918','2022-04-26 15:20:53.505',NULL,'ddd51c13-ad63-42bc-a47c-d6b1ff4c0953','admin','e10adc3949ba59abbe56e057f20f883e','系统管理员','dark','https://qmplusimg.henrongyi.top/1576554439myAvatar.png','#fff','#1890ff','888','17611111111','333333333@qq.com'),(2,'2022-04-26 11:18:52.918','2022-04-26 11:18:52.918','2022-04-26 13:48:46.167','01d2adc4-db66-4ba7-9c3e-e49cbdefb5bc','a303176530','3ec063004a6f31642261936a379fde3d','QMPlusUser','dark','https:///qmplusimg.henrongyi.top/1572075907logo.png','#fff','#1890ff','9528','17611111111','333333333@qq.com'),(3,'2022-04-26 13:55:55.782','2022-04-26 15:52:17.885',NULL,'3f92bc7d-453b-444a-bbdc-e5e8fd57c2dd','test1','e10adc3949ba59abbe56e057f20f883e','测试','dark','https://qmplusimg.henrongyi.top/header.jpg','#fff','#1890ff','1','','');
/*!40000 ALTER TABLE `sys_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `authority_menu`
--

/*!50001 DROP VIEW IF EXISTS `authority_menu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `authority_menu` AS select `sys_base_menus`.`id` AS `id`,`sys_base_menus`.`path` AS `path`,`sys_base_menus`.`icon` AS `icon`,`sys_base_menus`.`name` AS `name`,`sys_base_menus`.`sort` AS `sort`,`sys_base_menus`.`title` AS `title`,`sys_base_menus`.`hidden` AS `hidden`,`sys_base_menus`.`component` AS `component`,`sys_base_menus`.`parent_id` AS `parent_id`,`sys_base_menus`.`created_at` AS `created_at`,`sys_base_menus`.`updated_at` AS `updated_at`,`sys_base_menus`.`deleted_at` AS `deleted_at`,`sys_base_menus`.`keep_alive` AS `keep_alive`,`sys_base_menus`.`menu_level` AS `menu_level`,`sys_base_menus`.`default_menu` AS `default_menu`,`sys_base_menus`.`close_tab` AS `close_tab`,`sys_authority_menus`.`sys_base_menu_id` AS `menu_id`,`sys_authority_menus`.`sys_authority_authority_id` AS `authority_id` from (`sys_authority_menus` join `sys_base_menus` on((`sys_authority_menus`.`sys_base_menu_id` = `sys_base_menus`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-26 15:57:20
