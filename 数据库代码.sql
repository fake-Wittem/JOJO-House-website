/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.26 : Database - my_db_01
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`my_db_01` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `my_db_01`;

/*Table structure for table `ev_users` */

DROP TABLE IF EXISTS `ev_users`;

CREATE TABLE `ev_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_pic` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';

/*Data for the table `ev_users` */

insert  into `ev_users`(`id`,`username`,`password`,`nickname`,`email`,`user_pic`) values 
(1,'admin','000000',NULL,NULL,NULL),
(5,'admin1','$2a$10$r62PMBAdqx/Ad9DzU4rG3Op6mPzjeePXZQ5zv.7KLDcMaofxMXhkC',NULL,NULL,NULL),
(6,'admin2','$2a$10$c9WNIk/kd/Cc6ETw4TKXI.RXWLrWjQbpPhWFDX7SeL2sCuRCHDSqC',NULL,NULL,NULL),
(7,'admin3','$2a$10$RC1zEl8o8cUUxnaW1QQWt.vhngCQhn2UCklm5b/0CL/XkPx58o8cS',NULL,NULL,NULL),
(8,'admin4','$2a$10$YoTBLn5kmZUZoXMmN33lQ../iD/wupNb97XBM36bXNQ6cBX58SRMy',NULL,NULL,NULL),
(9,'admin5','$2a$10$xsq6QxB0SqnFAt3VeHEo8Oh34CjkMXsaVuutQcZ48.iAItNbOtnKi',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
