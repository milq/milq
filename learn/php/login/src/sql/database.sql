DROP DATABASE IF EXISTS `session_example`;

CREATE DATABASE `session_example`;

USE `session_example`;

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(100) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `active` VARCHAR(100) NOT NULL,
  `role` VARCHAR(100) NOT NULL,
  UNIQUE (`username`),
  PRIMARY KEY (`id`)
);

INSERT INTO users(`username`,`password`,`active`,`role`) values ('admin','4321','yes','admin');
INSERT INTO users(`username`,`password`,`active`,`role`) values ('john','abcd','yes','user');
INSERT INTO users(`username`,`password`,`active`,`role`) values ('paul','wxyz','no','user');
