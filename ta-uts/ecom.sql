/*
SQLyog - Free MySQL GUI v5.02
Host - 5.5.5-10.4.17-MariaDB : Database - mobile
*********************************************************************
Server version : 5.5.5-10.4.17-MariaDB
*/


create database if not exists `mobile`;

USE `mobile`;

/*Table structure for table `user_access_menu` */

DROP TABLE IF EXISTS `user_access_menu`;

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user_access_menu` */

insert into `user_access_menu` values 
(1,1,1),
(2,1,2),
(3,2,2),
(4,1,3);

/*Table structure for table `user_menu` */

DROP TABLE IF EXISTS `user_menu`;

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user_menu` */

insert into `user_menu` values 
(1,'Admin'),
(2,'User'),
(3,'Menu'),
(4,'Test');

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user_role` */

insert into `user_role` values 
(1,'Administrator'),
(2,'Member');

/*Table structure for table `user_sub_menu` */

DROP TABLE IF EXISTS `user_sub_menu`;

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user_sub_menu` */

insert into `user_sub_menu` values 
(1,1,'Dashboard','admin','fas fa-fw fa-tachometer-alt',1),
(2,2,'My Profile','user','fas fa-fw fa-user',1),
(3,2,'Edit profile','user/edit','fas fa-fw fa-user-edit',1),
(4,3,'Menu Management','menu','fas fa-fw fa-folder',1),
(5,3,'Submenu Management','menu/submenu','fas fa-fw fa-folder-open',1);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` int(1) DEFAULT NULL,
  `date_created` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert into `users` values 
(1,'Wawan Hamadi','abcsakatonik123@gmail.com','default.jpg','$2y$10$WOxdwGnBIuhkkjXaKcQexexL58WRn9au1kIUO5AUhpKG4llXcZHcu',1,1,1649393237),
(6,'Sarah Menanti','sarahmenanti@yahoo.com','default.jpg','$2y$10$aM4pUBTseE3xl9CZPx3vI.C.7R.BbNOIHLasSOlPAP72vLwJ5B24i',2,1,1649659544);
