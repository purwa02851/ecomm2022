/*
SQLyog - Free MySQL GUI v5.02
Host - 5.5.5-10.4.24-MariaDB : Database - ortosec
*********************************************************************
Server version : 5.5.5-10.4.24-MariaDB
*/


create database if not exists `ortosec`;

USE `ortosec`;

/*Table structure for table `carts` */

DROP TABLE IF EXISTS `carts`;

CREATE TABLE `carts` (
  `id_cart` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `banyak` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`id_cart`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4;

/*Data for the table `carts` */

insert into `carts` values 
(81,16,38,0,0);

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `categories` */

insert into `categories` values 
(1,'Sweater','sweater'),
(2,'Kaos','kaos'),
(3,'Celana','celana'),
(4,'Sepatu','sepatu');

/*Table structure for table `drivers` */

DROP TABLE IF EXISTS `drivers`;

CREATE TABLE `drivers` (
  `id_driver` int(11) NOT NULL AUTO_INCREMENT,
  `name_driver` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `no_pegawai` int(11) NOT NULL,
  PRIMARY KEY (`id_driver`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `drivers` */

insert into `drivers` values 
(3,'wawan','wawan@gmail.com','wawan123','08512154','SEMARANG',2147483647),
(4,'surya','suryabahagia@gmail.com','123','4','DEPOK',3),
(6,'septianto','bahagiaselalu@gmail.com','5555','3949839483','DEPOK',2147483647);

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `unit` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `descriptions` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `stock` varchar(255) NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;

/*Data for the table `products` */

insert into `products` values 
(1,'Sweater Adidas',1000,'120000','<p>Sweater Adida original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',1,'60'),
(2,'Jeans',1000,'80000','<p>Jeans&nbsp;original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',3,'200'),
(3,'Kaos',1000,'110000','<p>Kaos original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',2,'0'),
(4,'Sepatu',1000,'200000','<p>Sepatu original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',4,'11'),
(13,'Kaos Givenchy',1000,'110000','<p>Kaos Givenchy&nbsp;original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',2,'4'),
(14,'Kaos Puma',1000,'100000','<p>Kaos Puma&nbsp;&nbsp;original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',2,'13'),
(15,'Kaos Couple',1000,'80000','<p>Kaos Puma&nbsp;&nbsp;original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',2,'13'),
(16,'Kaos V neck',1000,'70000','<p>Kaos V Neck&nbsp;Polos, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai/p>\r\n',2,'42'),
(17,'Kaos Polos',1000,'90000','<p>Kaos Polos&nbsp;&nbsp; dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai </p>\r\n',2,'357'),
(18,'Kaos Supreme',1000,'60000','<p>Kaos Superman&nbsp;dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',2,'893'),
(19,'Baju Berkerah',1000,'1200000','<p>Baju Berkerah&nbsp;dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',2,'656'),
(20,'Topi Polos',1000,'150000','<p>Topi Polos&nbsp;original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',4,'242'),
(21,'Sepatu Nike',1000,'2500000','<p>Sepatu Nike&nbsp;original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',4,'134'),
(22,'Sepatu Adidas',1000,'350000','<p>Sepatu Adidas&nbsp;original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',4,'132'),
(23,'Sepatu EA7',1000,'180000','<p>Sepatu EA7&nbsp;original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',4,'234'),
(24,'Sepatu Caterpillar',1000,'210000','<p>Sepatu Caterpillar&nbsp;original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',4,'4352'),
(25,'Sepatu Converse Putih',1000,'350000','<p>Sepatu Converse Putihh&nbsp;original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',4,'235'),
(26,'Celana Kulot Polos',1000,'200000','<p>Celana Kulot Polos&nbsp;original, ddengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',3,'56'),
(27,'Celana Jean Bolong',1000,'140000','<p>Celana Jean Bolong&nbsp;dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',3,'1353'),
(28,'Celana Bahan Polos',1000,'130000','<p>Celana Bahan Polos&nbsp;dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',3,'1351'),
(29,'Tas Polos',1000,'110000','<p>Tas Polos&nbsp;dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',3,'1342'),
(30,'Sweater Kartun',1000,'90000','<p>Sweater Kartun&nbsp;dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',3,'12412'),
(31,'Sweater Rajut',1000,'135000','<p>Sweater Rajut&nbsp;dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',1,'1314'),
(32,'Sweater Polos',1000,'110000','<p>Sweater Polos&nbsp;dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',1,'325'),
(33,'Celana Training Polos',1000,'120000','<p>Celana Training Polos&nbsp;dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',1,'1341'),
(34,'Sweater Batik',1000,'110000','<p>Sweater Batik&nbsp;Original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n',1,'241');

/*Table structure for table `products_galleries` */

DROP TABLE IF EXISTS `products_galleries`;

CREATE TABLE `products_galleries` (
  `id_gallery` int(11) NOT NULL AUTO_INCREMENT,
  `photos` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id_gallery`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4;

/*Data for the table `products_galleries` */

insert into `products_galleries` values 
(1,'62b8ada1853dc.jpg',1),
(12,'jeans.jpg',2),
(22,'62b8bae596694.jpg',3),
(23,'brand-sepatu-lokal-unisex-4.jpeg',4),
(33,'e59c4745721ad5e8f7a2ea1f53fcc064.jpg',13),
(34,'images.jpg',14),
(35,'a578c310dc9281cbfe3748edb66f49d9.jpg',15),
(36,'2899349_cfce471d-0955-4976-a423-dff3fdecc69e.jpg',16),
(37,'kaos.png',17),
(38,'932322125.jpg',18),
(39,'ho-21-navy-.1638154171.jpg',19),
(40,'163299131815144233876155785605e606155785605e63.jpg',20),
(41,'Sepatu Nike Pria Casual Sport Olahraga Code-8.jpg',21),
(42,'Adidas.jpg',22),
(43,'Sf78a7eef2799434bb67533ab79dd592bN.jpg',23),
(44,'download.jpg',24),
(45,'1bf88ac685d2f86c10e0bda8dc317ed0.png',25),
(46,'no_brand_kulot_polos_celana_panjang_wanita_full21_e8ke7gid.jpg',26),
(47,'0603f874-58fc-4e36-a087-6cfe8e59d181_169.jpeg',27),
(48,'62b8be004bc6c.jpg',28),
(49,'Tote_Bag_sexy_girl.jpg',29),
(50,'kisspng-sweater-cartoon-clip-art-vector-creative-christmas-sweater-5aa1f1e0275e56.1639008315205626561613.jpg',30),
(51,'Sweater-Rajut-Wanita-Dewasa-Terbaik.jpg',31),
(52,'683094_XKB72_9750_001_100_0000_Light-Gucci-Pineapple-cotton-sweater.jpg',32),
(53,'a6e92727-a928-4444-b451-4c488bfba90e.jpg',33),
(54,'sweater_batik_1593306911_7f9b0cc7_progressive.jpg',34);

/*Table structure for table `rekening_numbers` */

DROP TABLE IF EXISTS `rekening_numbers`;

CREATE TABLE `rekening_numbers` (
  `id_rekening` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `rekening_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_rekening`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `rekening_numbers` */

insert into `rekening_numbers` values 
(1,'BCA','0989878998787','Muhammad Iqbal Subagio'),
(2,'Mandiri','076543212123','Fatkha Kuncoro Aji'),
(3,'Syariah','09999977656','Katon Pratomo'),
(5,'Paylater','23798878','Faiz jon');

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id_transaction` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `rekening_id` int(11) NOT NULL,
  `transaction_status` varchar(255) NOT NULL,
  `weight_total` int(11) NOT NULL,
  `delivered` int(11) NOT NULL,
  `photo_transaction` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `time_arrived` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_transaction`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Data for the table `transactions` */

insert into `transactions` values 
(1,3,260000,'JAKARTA',3,'TERKIRIM',4000,0,'600d9b95c0711.jpg','EZM-57924','',NULL,'2021-01-24 23:08:32'),
(2,6,200000,'JAKARTA',1,'TERKIRIM',4000,0,'600d9c6b4e0d8.jpg','EZM-9366','',NULL,'2021-01-24 23:12:13'),
(3,9,560000,'JAKARTA',1,'KONFIRMASI',3000,0,'600e62cb73e61.png','EZM-86335','',NULL,'2021-01-25 13:17:49'),
(4,6,100000,'JAKARTA',2,'KONFIRMASI',1000,0,'600eba552a23c.png','EZM-81471','',NULL,'2021-01-25 19:31:43'),
(5,3,218000,'JAKARTA',2,'BELUM KONFIRMASI',6000,0,'6010cc60e12da.png','EZM-51571','',NULL,'2021-01-25 20:06:50'),
(6,9,370000,'JAKARTA',1,'TERKIRIM',10000,1,'6010ce5c5fc7f.png','EZM-98816','Mumun','2021-01-27 12:26:45','2021-01-27 09:21:26'),
(7,14,120000,'TANGERANG',5,'TERKIRIM',1000,0,'62b8decd6d96a.jpg','EZM-10471','kontrakan','2022-06-27 05:36:20','2022-06-27 05:29:52'),
(8,14,200000,'DEPOK',1,'TERKIRIM',1000,0,'62b8e1b73497c.png','EZM-669','kontrakan','2022-06-27 05:49:26','2022-06-27 05:45:46'),
(9,14,80000,'DEPOK',1,'TERKIRIM',1000,0,'62b8e2f6dffee.jpg','EZM-25919','aji','2022-06-27 05:54:27','2022-06-27 05:51:15'),
(10,13,30000,'JAKARTA',1,'TERKONFIRMASI',1000,0,'62b8e63de35a5.jpg','EZM-79048','',NULL,'2022-06-27 06:05:08');

/*Table structure for table `transactions_details` */

DROP TABLE IF EXISTS `transactions_details`;

CREATE TABLE `transactions_details` (
  `id_transaction_detail` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `banyak` int(11) NOT NULL,
  `code_product` varchar(255) NOT NULL,
  PRIMARY KEY (`id_transaction_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

/*Data for the table `transactions_details` */

insert into `transactions_details` values 
(1,1,1,50000,2,'PRD-12943'),
(2,1,2,80000,2,'PRD-12943'),
(3,2,1,50000,2,'PRD-13113'),
(4,2,1,50000,2,'PRD-13113'),
(5,3,2,80000,2,'PRD-40981'),
(6,3,6,400000,1,'PRD-40981'),
(7,4,3,100000,1,'PRD-60879'),
(8,5,5,20000,2,'PRD-71011'),
(9,5,10,75000,2,'PRD-71011'),
(10,5,12,14000,2,'PRD-71011'),
(11,6,4,36000,5,'PRD-94186'),
(12,6,1,30000,1,'PRD-94186'),
(13,6,2,40000,4,'PRD-94186'),
(14,7,1,120000,1,'PRD-39116'),
(15,8,4,200000,1,'PRD-75635'),
(16,9,2,80000,1,'PRD-36698'),
(17,10,1,120000,1,'PRD-81050');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `postal_code` varchar(191) NOT NULL,
  `roles` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert into `users` values 
(11,'admin123','admin123@gmail.com','$2y$10$B8sCWiTy0FGPO/v2x7ctjeIF2K9H1kiIvcFzm9fs/F2cgIYEgheeC','','098765414','','ADMIN'),
(16,'hola','hola@gmail.com','$2y$10$LDZoDGbbg8xWHjBzdAlnKOVWXhZGQjvalg0pbrYq0fuh5RkrXegym','','12304854','12345','ADMIN'),
(17,'purwa','purwa@gmail.com','$2y$10$mBXtRfI.2eXD8sSIHxyzFejVGdA2TPRcX.vmTc2RkkUttEvFPNXNW','','12334455551312','12344','USER');
