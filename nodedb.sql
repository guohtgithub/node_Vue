-- MySQL dump 10.13  Distrib 5.7.25, for Win64 (x86_64)
--
-- Host: localhost    Database: nodedb
-- ------------------------------------------------------
-- Server version	5.7.25-log

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
-- Table structure for table `baidunews`
--

DROP TABLE IF EXISTS `baidunews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baidunews` (
  `newsid` int(20) NOT NULL,
  `newstitle` varchar(200) NOT NULL,
  `newsimg` varchar(200) NOT NULL,
  `newstype` varchar(200) NOT NULL,
  `newstime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='百度新闻';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baidunews`
--

LOCK TABLES `baidunews` WRITE;
/*!40000 ALTER TABLE `baidunews` DISABLE KEYS */;
INSERT INTO `baidunews` VALUES (4,'美食','img/8.jpg','精选','2017-06-08'),(5,'美食','img/9.jpg','百家','2017-06-08'),(6,'美食','img/10.jpg','百家','2017-06-08'),(7,'美食','img/3.jpg','本地','2017-06-08'),(8,'美食','img/11.jpg','百家','2017-06-08'),(9,'美食','img/3.jpg','精选','2017-06-08'),(10,'美食','img/13.jpg','精选','2017-06-08'),(11,'美食','img/8.jpg','百家','2017-06-08'),(12,'美食','img/14.jpg','精选','2017-06-08'),(13,'美食','img/13.jpg','精选','2017-06-08'),(14,'美食','img/3.jpg','百家','2017-06-08'),(15,'美食','img/12.jpg','精选','2017-06-08'),(16,'美食','img/15.jpg','精选','2017-06-08'),(17,'美食','img/3.jpg','精选','2017-06-08'),(19,'旅游','img/16.jpg','百家','0000-00-00'),(20,'旅游','img/4.jpg','本地','2017-06-14'),(21,'做饭','img/9.jpg','本地','2017-06-09'),(25,'读书','img/4.jpg','本地','2017-06-09'),(27,'画画','img/2.jpg','本地','2017-06-08'),(28,'去西藏','img/12.jpg','百家','2017-06-15'),(29,'成都','img/12.jpg','本地','2017-06-21'),(30,'重庆','img/9.jpg','本地','2017-06-15'),(31,'音乐','img/12.jpg','百家','2017-06-08'),(32,'精选','img/10.jpg','精选','2017-06-15'),(33,'精选3','img/16.jpg','精选','2017-06-14'),(34,'精选2','img/15.jpg','精选','2017-06-14'),(35,'百家','img/22.jpg','百家','2017-06-14'),(36,'百家2','img/19.jpg','百家','2017-06-14'),(37,'百家','img/18.jpg','百家','2017-06-14'),(38,'本地','img/11.jpg','本地','2017-06-14'),(39,'本地','img/10.jpg','本地','2017-06-14'),(41,'百家','img/5.jpg','百家','2017-06-14'),(42,'百家','img/7.jpg','百家','2017-06-22'),(43,'本地','img/23.jpg','本地','2017-06-07'),(44,'本地','img/9.jpg','本地','2017-06-16'),(46,'本地','img/9.jpg','本地','2017-06-09'),(47,'精选4','img/22.jpg','精选','2017-06-15'),(48,'精选5','img/22.jpg','精选','2017-06-15'),(49,'精选6','img/23.jpg','精选','2017-06-15'),(50,'精选7','img/24.jpg','精选','2017-06-15'),(51,'本地4','img/25.jpg','本地','2017-06-15'),(52,'本地5','img/26.jpg','本地','2017-06-15'),(53,'本地6','img/27.jpg','本地','2017-06-15'),(54,'百家4','img/3.jpg','百家','2017-06-15'),(55,'百家4','img/4.jpg','百家','2017-06-15'),(56,'百家5','img/5.jpg','百家','2017-06-15'),(57,'百家6','img/6.jpg','百家','2017-06-15'),(58,'百家7','img/7.jpg','百家','2017-06-23');
/*!40000 ALTER TABLE `baidunews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogtitle`
--

DROP TABLE IF EXISTS `blogtitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogtitle` (
  `title` char(50) DEFAULT NULL,
  `websize` char(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogtitle`
--

LOCK TABLES `blogtitle` WRITE;
/*!40000 ALTER TABLE `blogtitle` DISABLE KEYS */;
INSERT INTO `blogtitle` VALUES ('谈MVVM','https://www.cnblogs.com/LIUYANZUO/p/7476544.html');
/*!40000 ALTER TABLE `blogtitle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdweather`
--

DROP TABLE IF EXISTS `cdweather`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdweather` (
  `monpoint` char(50) DEFAULT NULL,
  `aqi` char(50) DEFAULT NULL,
  `aqiC` char(50) DEFAULT NULL,
  `pripoll` char(50) DEFAULT NULL,
  `pm25fm` char(50) DEFAULT NULL,
  `pm10i` char(50) DEFAULT NULL,
  `co` char(50) DEFAULT NULL,
  `no2` char(50) DEFAULT NULL,
  `1o3` char(50) DEFAULT NULL,
  `8o3` char(50) DEFAULT NULL,
  `so2` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdweather`
--

LOCK TABLES `cdweather` WRITE;
/*!40000 ALTER TABLE `cdweather` DISABLE KEYS */;
INSERT INTO `cdweather` VALUES ('金泉两河','179','中度污染','细颗粒物(PM2.5)','135','189','1.7','94','6','4','10'),('十里店','134','轻度污染','细颗粒物(PM2.5)','102','170','0.9','82','7','6','6'),('三瓦窑','137','轻度污染','细颗粒物(PM2.5)','104','149','1.2','85','16','8','0'),('沙河铺','127','轻度污染','细颗粒物(PM2.5)','96','140','0.8','72','14','6','6'),('梁家巷','70','良','颗粒物(PM10)','50','89','0.8','37','80','111','0'),('草堂寺','0','0','0','0','0','0','0','0','0','0'),('灵岩寺','97','良','细颗粒物(PM2.5)','72','90','0.7','35','47','40','6'),('君平街','156','中度污染','细颗粒物(PM2.5)','119','165','1.4','91','3','3','9'),('大石西路','135','轻度污染','细颗粒物(PM2.5)','103','175','1.5','101','4','5','10'),('龙泉驿区区政府','72','良','细颗粒物(PM2.5)','52','77','0.8','0','56','27','5');
/*!40000 ALTER TABLE `cdweather` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navlist`
--

DROP TABLE IF EXISTS `navlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `navlist` (
  `navname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navlist`
--

LOCK TABLES `navlist` WRITE;
/*!40000 ALTER TABLE `navlist` DISABLE KEYS */;
INSERT INTO `navlist` VALUES ('主页'),('产品'),('服务'),('制度'),('规格'),('平台');
/*!40000 ALTER TABLE `navlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) DEFAULT NULL,
  `des` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'jdjsiisje'),(2,'djdjiejjksk'),(3,'cmnjjejfnmmd');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(20) NOT NULL,
  `voteId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_id` (`userId`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote`
--

LOCK TABLES `vote` WRITE;
/*!40000 ALTER TABLE `vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vote_memory`
--

DROP TABLE IF EXISTS `vote_memory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vote_memory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(20) NOT NULL,
  `voteId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_id` (`userId`) USING HASH
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote_memory`
--

LOCK TABLES `vote_memory` WRITE;
/*!40000 ALTER TABLE `vote_memory` DISABLE KEYS */;
/*!40000 ALTER TABLE `vote_memory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-16 22:24:02
