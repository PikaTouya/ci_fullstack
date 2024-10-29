/*
SQLyog Community v13.2.1 (64 bit)
MySQL - 10.4.32-MariaDB : Database - db_point_of_sales
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_point_of_sales` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `db_point_of_sales`;

/*Table structure for table `tbl_beli_d` */

DROP TABLE IF EXISTS `tbl_beli_d`;

CREATE TABLE `tbl_beli_d` (
  `id_beli` bigint(20) NOT NULL AUTO_INCREMENT,
  `no_faktur` varchar(15) NOT NULL,
  `id_produk` int(10) NOT NULL,
  `qty` mediumint(9) NOT NULL DEFAULT 0,
  `harga_beli` decimal(10,2) NOT NULL DEFAULT 0.00,
  `diskon` decimal(10,2) NOT NULL DEFAULT 0.00,
  `nilai_diskon` decimal(10,2) NOT NULL DEFAULT 0.00,
  `sub_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id_beli`),
  KEY `no_faktur` (`no_faktur`),
  KEY `id_produk` (`id_produk`),
  CONSTRAINT `tbl_beli_d_ibfk_1` FOREIGN KEY (`no_faktur`) REFERENCES `tbl_beli_m` (`no_faktur`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_beli_d_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `tbl_m_produk` (`id_produk`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tbl_beli_d` */

insert  into `tbl_beli_d`(`id_beli`,`no_faktur`,`id_produk`,`qty`,`harga_beli`,`diskon`,`nilai_diskon`,`sub_total`) values 
(1,'1',1,5,7000000.00,10.00,350000.00,6650000.00),
(2,'2',2,7,5000000.00,8.00,400000.00,4600000.00),
(3,'3',1,4,8500000.00,15.00,1275000.00,7225000.00),
(4,'4',2,6,3000000.00,5.00,150000.00,2850000.00),
(5,'5',1,8,6000000.00,12.00,720000.00,5280000.00),
(6,'1',2,9,4500000.00,7.00,315000.00,4185000.00),
(7,'2',1,10,10000000.00,20.00,2000000.00,8000000.00),
(8,'3',2,11,7500000.00,18.00,1350000.00,6150000.00),
(9,'4',1,12,9500000.00,25.00,2375000.00,7125000.00),
(10,'5',1,13,4000000.00,6.00,240000.00,3760000.00),
(11,'1',1,5,7000000.00,10.00,350000.00,6650000.00),
(12,'2',2,7,5000000.00,8.00,400000.00,4600000.00),
(13,'3',1,4,8500000.00,15.00,1275000.00,7225000.00),
(14,'4',2,6,3000000.00,5.00,150000.00,2850000.00),
(15,'5',1,8,6000000.00,12.00,720000.00,5280000.00),
(16,'1',2,9,4500000.00,7.00,315000.00,4185000.00),
(17,'2',1,10,10000000.00,20.00,2000000.00,8000000.00),
(18,'3',2,11,7500000.00,18.00,1350000.00,6150000.00),
(19,'4',1,12,9500000.00,25.00,2375000.00,7125000.00),
(20,'5',1,13,4000000.00,6.00,240000.00,3760000.00);

/*Table structure for table `tbl_beli_m` */

DROP TABLE IF EXISTS `tbl_beli_m`;

CREATE TABLE `tbl_beli_m` (
  `no_faktur` varchar(15) NOT NULL,
  `tgl_faktur` date DEFAULT NULL,
  `id_supp` int(6) NOT NULL,
  `total_beli` decimal(10,2) NOT NULL DEFAULT 0.00,
  `diskon` decimal(10,2) NOT NULL DEFAULT 0.00,
  `ppn` decimal(10,2) NOT NULL DEFAULT 0.00,
  `biaya_lain` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total bersih` decimal(10,2) NOT NULL DEFAULT 0.00,
  `stts_bayar` smallint(1) NOT NULL DEFAULT 0,
  `tgl_jt` date NOT NULL,
  `stts_beli` smallint(1) NOT NULL DEFAULT 0,
  `created_date` date DEFAULT NULL,
  `created_by` varchar(25) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_by` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`no_faktur`),
  KEY `id_supp` (`id_supp`),
  CONSTRAINT `tbl_beli_m_ibfk_1` FOREIGN KEY (`id_supp`) REFERENCES `tbl_m_supplier` (`id_supp`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tbl_beli_m` */

insert  into `tbl_beli_m`(`no_faktur`,`tgl_faktur`,`id_supp`,`total_beli`,`diskon`,`ppn`,`biaya_lain`,`total bersih`,`stts_bayar`,`tgl_jt`,`stts_beli`,`created_date`,`created_by`,`update_date`,`update_by`) values 
('1','2024-10-10',1,500000.00,25000.00,50000.00,10000.00,515000.00,1,'2024-11-10',1,'2024-10-10','admin','2024-10-11','admin'),
('2','2024-10-11',2,750000.00,30000.00,60000.00,15000.00,780000.00,0,'2024-11-11',0,'2024-10-11','admin','2024-10-12','admin'),
('3','2024-10-12',2,1000000.00,50000.00,75000.00,20000.00,1055000.00,0,'2024-11-12',1,'2024-10-12','admin','2024-10-13','admin'),
('4','2024-10-13',4,250000.00,15000.00,25000.00,5000.00,265000.00,1,'2024-11-13',0,'2024-10-13','admin','2024-10-14','admin'),
('5','2024-10-14',5,900000.00,45000.00,80000.00,30000.00,945000.00,1,'2024-11-14',1,'2024-10-14','admin','2024-10-15','admin');

/*Table structure for table `tbl_m_kategori` */

DROP TABLE IF EXISTS `tbl_m_kategori`;

CREATE TABLE `tbl_m_kategori` (
  `id_kategori` int(6) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tbl_m_kategori` */

insert  into `tbl_m_kategori`(`id_kategori`,`nama_kategori`) values 
(1,'Makanan'),
(2,'Makanan'),
(3,'Kosmetik'),
(4,'Obat-obatan'),
(5,'Rokok'),
(6,'Mainan'),
(7,'Cemilan'),
(8,''),
(9,''),
(10,'testingsssss');

/*Table structure for table `tbl_m_produk` */

DROP TABLE IF EXISTS `tbl_m_produk`;

CREATE TABLE `tbl_m_produk` (
  `id_produk` int(10) NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(100) NOT NULL,
  `id_kategori` int(6) NOT NULL,
  `id_satuan` int(6) NOT NULL,
  `barcode` varchar(10) DEFAULT NULL,
  `harga_beli` decimal(10,2) NOT NULL DEFAULT 0.00,
  `harga_pokok` decimal(10,2) NOT NULL DEFAULT 0.00,
  `harga_jual` decimal(10,2) DEFAULT 0.00,
  `is_status` smallint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_produk`),
  KEY `id_kategori` (`id_kategori`),
  KEY `id_satuan` (`id_satuan`),
  CONSTRAINT `tbl_m_produk_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_m_kategori` (`id_kategori`) ON UPDATE CASCADE,
  CONSTRAINT `tbl_m_produk_ibfk_2` FOREIGN KEY (`id_satuan`) REFERENCES `tbl_m_satuan` (`id_satuan`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tbl_m_produk` */

insert  into `tbl_m_produk`(`id_produk`,`nama_produk`,`id_kategori`,`id_satuan`,`barcode`,`harga_beli`,`harga_pokok`,`harga_jual`,`is_status`) values 
(1,'Mie goreng',1,4,NULL,7000.00,15000.00,20000.00,1),
(2,'Yoyo',6,3,NULL,5000.00,10000.00,15000.00,1);

/*Table structure for table `tbl_m_satuan` */

DROP TABLE IF EXISTS `tbl_m_satuan`;

CREATE TABLE `tbl_m_satuan` (
  `id_satuan` int(6) NOT NULL AUTO_INCREMENT,
  `nama_satuan` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_satuan`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tbl_m_satuan` */

insert  into `tbl_m_satuan`(`id_satuan`,`nama_satuan`) values 
(1,'Gram'),
(2,'Kilogram'),
(3,'Pcs'),
(4,'Porsi'),
(5,'Cup'),
(6,'Bungkus');

/*Table structure for table `tbl_m_supplier` */

DROP TABLE IF EXISTS `tbl_m_supplier`;

CREATE TABLE `tbl_m_supplier` (
  `id_supp` int(6) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(5) NOT NULL,
  `nama_supp` varchar(35) NOT NULL,
  `kontak_person` varchar(35) DEFAULT NULL,
  `no_kontak` varchar(12) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `kota` varchar(35) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `no_fax` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_supp`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tbl_m_supplier` */

insert  into `tbl_m_supplier`(`id_supp`,`jenis`,`nama_supp`,`kontak_person`,`no_kontak`,`alamat`,`kota`,`email`,`no_telp`,`no_fax`) values 
(1,'Perab','Aneka Perabotan','Budi','081234567090','Jl. Negara No.67','Medan','anekaperabotan@gmail.com','001234567890','1'),
(2,'Elekt','Toko Elektronik Jaya','Siti','061957654321','Jl. Kanya No.21','Jakarta','tokoelektronikjaya@gmail.','1061987654321','2'),
(3,'Fashi','Butik Cantik','Nina','085678912345','Jl. Melati No.34','Bandung','butikcantik@gmail.com','209876543210','3'),
(4,'Otomo','Bengkel Motor Sejahtera','Andi','082345678912','Jl. Merdeka No.5','Surabaya','bengkelmotor@gmail.com','305678912345','4'),
(5,'Keseh','Apotek Sehat Selalu','Dewi','081298765432','Jl. Anggrek No.12','Yogyakarta','apoteksehat@gmail.com','409876543211','5'),
(6,'Makan','Restoran Sederhana','Asep','087654321098','Jl. Mawar No.89','Semarang','restoransederhana@gmail.c','509876543212','6'),
(7,'Peral','Toko Rumahku','Lina','081987654321','Jl. Flamboyan No.56','Malang','tokorumahku@gmail.com','609876543213','7'),
(8,'Maina','Toko Mainan Ceria','Tono','083456789012','Jl. Cemara No.78','Bekasi','tokomainanceria@gmail.com','709876543214','8'),
(9,'Buku','Toko Buku Pintar','Sari','081345678901','Jl. Pendidikan No.90','Denpasar','tokobukupintar@gmail.com','809876543215','9'),
(10,'Elekt','Elektronik Murah','Dedi','082987654321','Jl. Sudirman No.100','Palembang','elektronikmurah@gmail.com','909876543216','10'),
(11,'Perab','Aneka Perabotan','Budi','081234567090','Jl. Negara No.67','Medan','anekaperabotan@gmail.com','001234567890','1'),
(12,'Elekt','Toko Elektronik Jaya','Siti','061957654321','Jl. Kanya No.21','Jakarta','tokoelektronikjaya@gmail.','1061987654321','2'),
(13,'Fashi','Butik Cantik','Nina','085678912345','Jl. Melati No.34','Bandung','butikcantik@gmail.com','209876543210','3'),
(14,'Otomo','Bengkel Motor Sejahtera','Andi','082345678912','Jl. Merdeka No.5','Surabaya','bengkelmotor@gmail.com','305678912345','4'),
(15,'Keseh','Apotek Sehat Selalu','Dewi','081298765432','Jl. Anggrek No.12','Yogyakarta','apoteksehat@gmail.com','409876543211','5'),
(16,'Makan','Restoran Sederhana','Asep','087654321098','Jl. Mawar No.89','Semarang','restoransederhana@gmail.c','509876543212','6'),
(17,'Peral','Toko Rumahku','Lina','081987654321','Jl. Flamboyan No.56','Malang','tokorumahku@gmail.com','609876543213','7'),
(18,'Maina','Toko Mainan Ceria','Tono','083456789012','Jl. Cemara No.78','Bekasi','tokomainanceria@gmail.com','709876543214','8'),
(19,'Buku','Toko Buku Pintar','Sari','081345678901','Jl. Pendidikan No.90','Denpasar','tokobukupintar@gmail.com','809876543215','9'),
(20,'Elekt','Elektronik Murah','Dedi','082987654321','Jl. Sudirman No.100','Palembang','elektronikmurah@gmail.com','909876543216','10');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
