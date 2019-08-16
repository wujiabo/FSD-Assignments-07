-- --------------------------------------------------------
-- 主机:                           localhost
-- 服务器版本:                        8.0.13 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 fsd-assignments-07 的数据库结构
CREATE DATABASE IF NOT EXISTS `fsd-assignments-07` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;
USE `fsd-assignments-07`;

-- 导出  表 fsd-assignments-07.relationship 结构
CREATE TABLE IF NOT EXISTS `relationship` (
  `user_one_id` int(11) NOT NULL,
  `user_two_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '0-Pending,1-Accepted,2-Declined,3-Blocked',
  `action_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_one_id`,`user_two_id`),
  KEY `FK_relationship_users_2` (`user_two_id`),
  KEY `FK_relationship_users_3` (`action_user_id`),
  CONSTRAINT `FK_relationship_users` FOREIGN KEY (`user_one_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FK_relationship_users_2` FOREIGN KEY (`user_two_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FK_relationship_users_3` FOREIGN KEY (`action_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 正在导出表  fsd-assignments-07.relationship 的数据：~0 rows (大约)
DELETE FROM `relationship`;
/*!40000 ALTER TABLE `relationship` DISABLE KEYS */;
INSERT INTO `relationship` (`user_one_id`, `user_two_id`, `status`, `action_user_id`) VALUES
	(1, 2, 1, 1);
INSERT INTO `relationship` (`user_one_id`, `user_two_id`, `status`, `action_user_id`) VALUES
	(1, 3, 1, 3);
INSERT INTO `relationship` (`user_one_id`, `user_two_id`, `status`, `action_user_id`) VALUES
	(1, 4, 1, 4);
INSERT INTO `relationship` (`user_one_id`, `user_two_id`, `status`, `action_user_id`) VALUES
	(1, 5, 0, 5);
INSERT INTO `relationship` (`user_one_id`, `user_two_id`, `status`, `action_user_id`) VALUES
	(1, 6, 3, 1);
INSERT INTO `relationship` (`user_one_id`, `user_two_id`, `status`, `action_user_id`) VALUES
	(1, 7, 0, 1);
INSERT INTO `relationship` (`user_one_id`, `user_two_id`, `status`, `action_user_id`) VALUES
	(2, 3, 1, 2);
INSERT INTO `relationship` (`user_one_id`, `user_two_id`, `status`, `action_user_id`) VALUES
	(2, 4, 1, 4);
INSERT INTO `relationship` (`user_one_id`, `user_two_id`, `status`, `action_user_id`) VALUES
	(3, 5, 1, 3);
/*!40000 ALTER TABLE `relationship` ENABLE KEYS */;

-- 导出  表 fsd-assignments-07.users 结构
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 正在导出表  fsd-assignments-07.users 的数据：~0 rows (大约)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
	(1, 'A', 'A@fsd.com', '123456');
INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
	(2, 'B', 'B@fsd.com', '123456');
INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
	(3, 'C', 'C@fsd.com', '123456');
INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
	(4, 'D', 'D@fsd.com', '123456');
INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
	(5, 'E', 'E@fsd.com', '123456');
INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
	(6, 'F', 'F@fsd.com', '123456');
INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
	(7, 'G', 'G@fsd.com', '123456');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
