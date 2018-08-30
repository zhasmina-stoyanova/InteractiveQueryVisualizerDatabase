DROP SCHEMA IF EXISTS zs30_dba;
CREATE SCHEMA zs30_dba;
USE zs30_dba;

--
-- Table structure for table `lookup_view`
--
CREATE TABLE `lookup_view` (
  `id` varchar(6) NOT NULL,
  `schema_name` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

--
-- Table structure for table `role`
--
CREATE TABLE `role` (
  `id` varchar(6) NOT NULL,
  `role` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
);

--
-- Table structure for table `user`
--
CREATE TABLE `user` (
  `id` varchar(6) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
);

--
-- Table structure for table `user_in_role`
--
CREATE TABLE `user_in_role` (
  `user_id` varchar(6) NOT NULL,
  `role_id` varchar(6) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_in_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_in_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);

--
-- Table structure for table `lookup_view_in_role`
--
CREATE TABLE `lookup_view_in_role` (
  `lookup_view_id` varchar(6) NOT NULL,
  `role_id` varchar(6) NOT NULL,
  PRIMARY KEY (`lookup_view_id`,`role_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `lookup_view_in_role_ibfk_1` FOREIGN KEY (`lookup_view_id`) REFERENCES `lookup_view` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lookup_view_in_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);


