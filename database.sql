-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.45 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.15.0.7171
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table votronghung_2280601119.chat_message
CREATE TABLE IF NOT EXISTS `chat_message` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` text,
  `timestamp` datetime(6) DEFAULT NULL,
  `room_id` bigint NOT NULL,
  `sender_id` bigint NOT NULL,
  `deleted` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfvbc4wvhk51y0qtnjrbminxfu` (`room_id`),
  KEY `FKm92rh2bmfw19xcn7nj5vrixsi` (`sender_id`),
  CONSTRAINT `FKfvbc4wvhk51y0qtnjrbminxfu` FOREIGN KEY (`room_id`) REFERENCES `chat_room` (`id`),
  CONSTRAINT `FKm92rh2bmfw19xcn7nj5vrixsi` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table votronghung_2280601119.chat_message: ~0 rows (approximately)
INSERT INTO `chat_message` (`id`, `content`, `timestamp`, `room_id`, `sender_id`, `deleted`) VALUES
	(9, 'hi', '2026-04-05 08:33:34.339508', 1, 11, b'0'),
	(10, 'hi', '2026-04-05 08:33:40.185646', 1, 8, b'0'),
	(11, 'hi', '2026-04-05 08:52:28.229016', 2, 8, b'0'),
	(12, 'không', '2026-04-05 08:52:56.490456', 1, 8, b'0'),
	(13, 'sfsfdfsf', '2026-04-05 08:53:23.829297', 1, 8, b'0'),
	(14, 'xxx', '2026-04-05 08:57:12.788328', 1, 8, b'0'),
	(15, 'hi', '2026-04-05 09:00:59.985624', 3, 8, b'0'),
	(16, 'cc', '2026-04-05 09:01:38.903976', 2, 8, b'0'),
	(17, 'cc', '2026-04-05 09:01:41.481260', 3, 8, b'1'),
	(18, 'xin chào', '2026-04-05 09:06:41.914868', 3, 11, b'0'),
	(19, 'giờ tạo nhóm đi', '2026-04-05 09:07:07.289868', 3, 11, b'0'),
	(20, 'hi', '2026-04-05 09:46:12.855824', 5, 8, b'0'),
	(21, 'hiii', '2026-04-05 09:56:19.022574', 1, 11, b'0'),
	(22, 'hiii', '2026-04-05 09:56:29.114505', 3, 11, b'0'),
	(23, 'hi', '2026-04-05 10:15:23.245362', 3, 11, b'0'),
	(24, 'hi bạn', '2026-04-05 23:16:30.946654', 3, 8, b'0'),
	(25, 'hi', '2026-04-05 23:19:17.685037', 3, 8, b'0');

-- Dumping structure for table votronghung_2280601119.chat_room
CREATE TABLE IF NOT EXISTS `chat_room` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `is_group_chat` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table votronghung_2280601119.chat_room: ~0 rows (approximately)
INSERT INTO `chat_room` (`id`, `created_at`, `is_group_chat`, `name`) VALUES
	(1, '2026-04-05 08:33:06.000000', b'1', 'Kênh Chung Công Ty'),
	(2, '2026-04-05 08:52:25.100704', b'0', 'Võ Trọng Hùng & Võ Trọng Hùng'),
	(3, '2026-04-05 09:00:57.735727', b'0', 'Võ Trọng Hùng & Võ Trọng Sơn'),
	(4, '2026-04-05 09:06:33.162258', b'0', 'Võ Trọng Sơn & Võ Trọng Hùng'),
	(5, '2026-04-05 09:24:04.257560', b'1', 'maketing'),
	(6, '2026-04-05 09:24:08.332793', b'0', 'Võ Trọng Hùng & Võ Trọng huyền');

-- Dumping structure for table votronghung_2280601119.chat_room_members
CREATE TABLE IF NOT EXISTS `chat_room_members` (
  `room_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`room_id`,`user_id`),
  KEY `FKbg3yt5fmk3up5jaay9v8cl2gj` (`user_id`),
  CONSTRAINT `FK34atgjyvmlub43qa34v3udk63` FOREIGN KEY (`room_id`) REFERENCES `chat_room` (`id`),
  CONSTRAINT `FKbg3yt5fmk3up5jaay9v8cl2gj` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table votronghung_2280601119.chat_room_members: ~0 rows (approximately)
INSERT INTO `chat_room_members` (`room_id`, `user_id`) VALUES
	(2, 8),
	(2, 9),
	(3, 8),
	(3, 11),
	(4, 9),
	(4, 11),
	(5, 8),
	(5, 11),
	(5, 12),
	(6, 8),
	(6, 12);

-- Dumping structure for table votronghung_2280601119.comment
CREATE TABLE IF NOT EXISTS `comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` text,
  `created_at` datetime(6) DEFAULT NULL,
  `task_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfknte4fhjhet3l1802m1yqa50` (`task_id`),
  KEY `FK8kcum44fvpupyw6f5baccx25c` (`user_id`),
  CONSTRAINT `FK8kcum44fvpupyw6f5baccx25c` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKfknte4fhjhet3l1802m1yqa50` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table votronghung_2280601119.comment: ~2 rows (approximately)
INSERT INTO `comment` (`id`, `content`, `created_at`, `task_id`, `user_id`) VALUES
	(1, 'chưa xong', '2026-03-31 23:35:48.625279', 5, 9),
	(2, 'phải ko\r\n', '2026-03-31 23:36:10.612891', 5, 8);

-- Dumping structure for table votronghung_2280601119.company
CREATE TABLE IF NOT EXISTS `company` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tax_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table votronghung_2280601119.company: ~5 rows (approximately)
INSERT INTO `company` (`id`, `address`, `name`, `tax_code`) VALUES
	(1, NULL, 'Trường đại học công nghệ thành phố hồ chí minh', NULL),
	(2, NULL, 'Trường đại học công nghệ thành phố hồ chí minh', NULL),
	(3, NULL, 'hutech', NULL),
	(4, '32000', 'Trường đại học công nghệ thành phố hồ chí minh', NULL),
	(5, '32000', 'Trường đại học công nghệ thành phố hồ chí minh', NULL);

-- Dumping structure for table votronghung_2280601119.department
CREATE TABLE IF NOT EXISTS `department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `company_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh1m88q0f7sc0mk76kju4kcn6f` (`company_id`),
  CONSTRAINT `FKh1m88q0f7sc0mk76kju4kcn6f` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table votronghung_2280601119.department: ~0 rows (approximately)

-- Dumping structure for table votronghung_2280601119.task
CREATE TABLE IF NOT EXISTS `task` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `attachment` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `assignee_id` bigint DEFAULT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `company_id` bigint DEFAULT NULL,
  `creator_id` bigint DEFAULT NULL,
  `follower_id` bigint DEFAULT NULL,
  `result` text,
  PRIMARY KEY (`id`),
  KEY `FKkjb4pwpo8oqc8fvkgbmiitsu9` (`category_id`),
  KEY `FK2hsytmxysatfvt0p1992cw449` (`user_id`),
  KEY `FKsrodfgrekcvv8ksyslehr53j8` (`assignee_id`),
  KEY `FKkovhsjug063l45ggbgdfxp21s` (`company_id`),
  KEY `FKqc1galw66ryn480v0lygu3n4c` (`creator_id`),
  KEY `FK3vtkptdvhmdg4yh1ilv4wv10k` (`follower_id`),
  CONSTRAINT `FK2hsytmxysatfvt0p1992cw449` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK3vtkptdvhmdg4yh1ilv4wv10k` FOREIGN KEY (`follower_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKkjb4pwpo8oqc8fvkgbmiitsu9` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FKkovhsjug063l45ggbgdfxp21s` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FKqc1galw66ryn480v0lygu3n4c` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKsrodfgrekcvv8ksyslehr53j8` FOREIGN KEY (`assignee_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table votronghung_2280601119.task: ~7 rows (approximately)
INSERT INTO `task` (`id`, `attachment`, `created_at`, `description`, `status`, `title`, `category_id`, `user_id`, `assignee_id`, `deadline`, `company_id`, `creator_id`, `follower_id`, `result`) VALUES
	(1, NULL, '2026-03-31 08:39:20.551740', 'fssdfsdfsfs', 'DONE', 'êr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, NULL, '2026-03-31 08:44:54.248184', 'bài về nhà', 'IN_PROGRESS', 'bài về nhà', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, NULL, '2026-03-31 08:45:13.726338', 'võ trọng hùng', 'IN_PROGRESS', 'trọng hung', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, NULL, '2026-03-31 10:06:02.233960', 'rưerewr', 'IN_PROGRESS', 'ewrwer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, NULL, NULL, 'fsfsgdgf', 'TODO', '454545', NULL, NULL, 9, '2026-04-09 23:25:00.000000', 5, NULL, 8, NULL),
	(6, NULL, NULL, 'võ trọng hùng', 'FAILED', 'trọng hùng', NULL, NULL, 8, '2026-04-10 23:43:00.000000', 5, NULL, NULL, NULL),
	(7, NULL, NULL, 'gsggdfgd', 'IN_PROGRESS', 'Trọng hùng', NULL, NULL, 9, '2026-04-30 09:20:00.000000', 5, NULL, NULL, NULL);

-- Dumping structure for table votronghung_2280601119.task_attachment
CREATE TABLE IF NOT EXISTS `task_attachment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) DEFAULT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `upload_time` datetime(6) DEFAULT NULL,
  `task_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkhw6fprv9kv6uio43mem40px6` (`task_id`),
  CONSTRAINT `FKkhw6fprv9kv6uio43mem40px6` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table votronghung_2280601119.task_attachment: ~2 rows (approximately)
INSERT INTO `task_attachment` (`id`, `file_name`, `file_url`, `upload_time`, `task_id`) VALUES
	(1, 'z7686242468864_80dd1bcd9704bcfcccadf034260ebaeb.jpg', '/uploads/1775361510547_z7686242468864_80dd1bcd9704bcfcccadf034260ebaeb.jpg', '2026-04-05 10:58:30.568653', 7),
	(2, 'JD_MVN.pdf', '/uploads/1775361662766_JD_MVN.pdf', '2026-04-05 11:01:02.806381', 7);

-- Dumping structure for table votronghung_2280601119.task_followers
CREATE TABLE IF NOT EXISTS `task_followers` (
  `task_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`task_id`,`user_id`),
  KEY `FK81ytwoyagicjtlgxg1whxshu` (`user_id`),
  CONSTRAINT `FK81ytwoyagicjtlgxg1whxshu` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKl4yicj014qsj5shw2j0fcbyyi` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table votronghung_2280601119.task_followers: ~4 rows (approximately)
INSERT INTO `task_followers` (`task_id`, `user_id`) VALUES
	(6, 8),
	(6, 9),
	(7, 8),
	(7, 9);

-- Dumping structure for table votronghung_2280601119.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_id` bigint DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `dept_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKsb8bbouer5wak8vyiiy4pf2bx` (`username`),
  KEY `FK2yuxsfrkkrnkn5emoobcnnc3r` (`company_id`),
  KEY `FKmf82od1cs7u7drq5eua8ukyrw` (`dept_id`),
  CONSTRAINT `FK2yuxsfrkkrnkn5emoobcnnc3r` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FKmf82od1cs7u7drq5eua8ukyrw` FOREIGN KEY (`dept_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table votronghung_2280601119.user: ~4 rows (approximately)
INSERT INTO `user` (`id`, `avatar`, `full_name`, `password`, `role`, `username`, `company_id`, `position`, `dept_id`) VALUES
	(8, NULL, 'Võ Trọng Hùng', '$2a$10$8REQQF4IWIOGGN1NNfJdpOaUB14esTQaXYl9k9L1FJUN0C7gQKhMi', 'ADMIN', 'votronghung1111@gmail.com', 5, 'Quản lý hệ thống', NULL),
	(9, NULL, 'Võ Trọng Hùng', '$2a$10$c.h9jYstU09mzkgw6FSbjeTnsaO9ch2HXeDucRO7DXszUIlitdRGK', 'USER', 'tronghung021204@gmail.com', 5, 'Nhân viên mới', NULL),
	(11, 'https://cdn-icons-png.flaticon.com/512/3135/3135715.png', 'Võ Trọng Sơn', '$2a$10$YMdrHqgfbxMUN2i1uhLFkewAxjKvLncst1bfOzWYRDxuWJYnlBrN6', 'USER', 'tronghung2004@gmail.com', 5, 'GĐ TMDT', NULL),
	(12, 'https://cdn-icons-png.flaticon.com/512/3135/3135715.png', 'Võ Trọng huyền', '$2a$10$V0AP3rzLDax/Od8.N.Sv0urChvK6rTEilJU.d9bnkK09fqP8cqvdu', 'USER', 'tronghung02004@gmail.com', 5, 'GĐ TMDT', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
