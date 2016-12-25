-- Adminer 4.1.0 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `teams` (`id`, `name`, `created_at`) VALUES
(1,	'Team USA',	'2016-12-25 09:43:05'),
(2,	'Team Europe',	'2016-12-25 09:43:28'),
(3,	'Team Brazil',	'2016-12-25 09:43:36');

DROP TABLE IF EXISTS `teams_users`;
CREATE TABLE `teams_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `team_id` (`team_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `teams_users_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  CONSTRAINT `teams_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `teams_users` (`id`, `team_id`, `user_id`) VALUES
(1,	1,	1),
(2,	2,	1),
(3,	2,	2),
(4,	3,	3);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `created_at`) VALUES
(1,	'Deo',	'John',	'2016-12-25 09:45:03'),
(2,	'Mc Gregor',	'Connor',	'2016-12-25 09:45:03'),
(3,	'Silva',	'Anderson',	'2016-12-25 09:45:03');

-- 2016-12-25 10:54:17
