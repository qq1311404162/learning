# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.26)
# Database: books
# Generation Time: 2019-10-16 06:16:45 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table books
# ------------------------------------------------------------

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '书籍名称',
  `nums` varchar(50) NOT NULL DEFAULT '' COMMENT '书籍数量',
  `unit` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '书籍价格',
  `author` varchar(200) NOT NULL DEFAULT '' COMMENT '书籍作者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;

INSERT INTO `books` (`id`, `name`, `nums`, `unit`, `author`, `created_at`, `updated_at`)
VALUES
	(2,'测试','1',1.00,'大声道','2019-10-15 17:41:28','2019-10-15 17:41:28'),
	(3,'阿斯顿撒多','333',333.00,'3333','2019-10-15 17:42:29','2019-10-15 17:42:29'),
	(4,'嗯嗯嗯','222',22.00,'22','2019-10-15 17:42:37','2019-10-15 17:42:37'),
	(5,'阿斯顿撒多','333',333.00,'3333','2019-10-15 17:42:29','2019-10-15 17:42:29'),
	(6,'阿斯顿撒多','333',333.00,'3333','2019-10-15 17:42:29','2019-10-15 17:42:29'),
	(7,'阿斯顿撒多','333',333.00,'3333','2019-10-15 17:42:29','2019-10-15 17:42:29'),
	(8,'阿斯顿撒多','333',333.00,'3333','2019-10-15 17:42:29','2019-10-15 17:42:29'),
	(9,'阿斯顿撒多','333',333.00,'3333','2019-10-15 17:42:29','2019-10-15 17:42:29'),
	(10,'阿斯顿撒多','333',333.00,'3333','2019-10-15 17:42:29','2019-10-15 17:42:29'),
	(11,'阿斯顿撒多','333',333.00,'3333','2019-10-15 17:42:29','2019-10-15 17:42:29'),
	(12,'阿斯顿撒多','333',333.00,'3333','2019-10-15 17:42:29','2019-10-15 17:42:29'),
	(13,'阿斯顿撒多','333',333.00,'3333','2019-10-15 17:42:29','2019-10-15 17:42:29'),
	(14,'阿斯顿撒多','333',333.00,'3333','2019-10-15 17:42:29','2019-10-15 17:42:29'),
	(15,'阿斯顿撒多','333',333.00,'3333','2019-10-15 17:42:29','2019-10-15 17:42:29'),
	(16,'阿斯顿撒多','333',333.00,'3333','2019-10-15 17:42:29','2019-10-15 17:42:29');

/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
