# Host: localhost  (Version 5.5.5-10.1.13-MariaDB)
# Date: 2020-06-28 14:22:29
# Generator: MySQL-Front 5.3  (Build 5.33)

/*!40101 SET NAMES latin1 */;

#
# Structure for table "tb_daftar"
#

DROP TABLE IF EXISTS `tb_daftar`;
CREATE TABLE `tb_daftar` (
  `id_daftar` char(7) NOT NULL DEFAULT '',
  `tgl_daftar` date DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `tahun` char(4) DEFAULT NULL,
  `nim` char(8) DEFAULT NULL,
  `pendapatan` mediumint(8) DEFAULT NULL,
  `ipk` decimal(4,2) DEFAULT NULL,
  `saudara` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id_daftar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "tb_daftar"
#

INSERT INTO `tb_daftar` VALUES ('p0001','2020-06-17','Semester2','2020','01703001',4000000,3.45,3),('p0002','2020-06-17','Semester2','2020','01703047',500000,3.45,3),('p0003','2020-06-17','Semester2','2020','01703048',3000000,3.67,4),('p0004','2020-06-17','Semester2','2020','01704001',400000,3.45,5);

#
# Structure for table "tb_login"
#

DROP TABLE IF EXISTS `tb_login`;
CREATE TABLE `tb_login` (
  `username` varchar(100) NOT NULL DEFAULT '',
  `pasword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "tb_login"
#

INSERT INTO `tb_login` VALUES ('syahrul','syahrul');

#
# Structure for table "tb_mhs"
#

DROP TABLE IF EXISTS `tb_mhs`;
CREATE TABLE `tb_mhs` (
  `nim` char(8) NOT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `t_lahir` varchar(25) DEFAULT NULL,
  `tgl_lahir` varchar(30) DEFAULT NULL,
  `jk` char(9) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `jurusan` varchar(20) DEFAULT NULL,
  `telpon` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "tb_mhs"
#

INSERT INTO `tb_mhs` VALUES ('01703001','AZKA','SOPPENG','26 JANUARI 1997','laki-laki','JL.POROS SOPPENG CABBENGE KEL.LALABATA RILAU KEC.LALABATA KAB.SOPPENG','SISTEM INFORMASI','087123456789'),('01703047','syahrul','bandung','31 november 2000','laki-laki','bandung raya','sistem informasi','084678345123'),('01703048','YASMIN USMAN','BATU-BATU','17 JULI 1997','laki-laki','BATU-BATU','SISTEM INFORMASI','456789'),('01704001','MARDA','TORAJA','18 JANUARI 1997','perempuan','SOPPENG','TEKNIK INFORMATIKA','085678456234');

#
# Structure for table "tb_nilai"
#

DROP TABLE IF EXISTS `tb_nilai`;
CREATE TABLE `tb_nilai` (
  `id_nilai` char(5) NOT NULL,
  `id_daftar` char(5) DEFAULT NULL,
  `n_pendapatan` decimal(4,2) DEFAULT NULL,
  `n_ipk` decimal(4,2) DEFAULT NULL,
  `n_saudara` decimal(4,2) DEFAULT NULL,
  `preferensi` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "tb_nilai"
#


#
# Structure for table "tb_vdaftar"
#

DROP VIEW IF EXISTS `tb_vdaftar`;
CREATE VIEW `tb_vdaftar` AS 
  select `tb_daftar`.`id_daftar` AS `id_daftar`,`tb_daftar`.`tgl_daftar` AS `tgl_daftar`,`tb_daftar`.`semester` AS `semester`,`tb_daftar`.`tahun` AS `tahun`,`tb_daftar`.`nim` AS `nim`,`tb_mhs`.`nama` AS `nama`,`tb_mhs`.`t_lahir` AS `t_lahir`,`tb_mhs`.`tgl_lahir` AS `tgl_lahir`,`tb_mhs`.`jk` AS `jk`,`tb_mhs`.`alamat` AS `alamat`,`tb_mhs`.`jurusan` AS `jurusan`,`tb_mhs`.`telpon` AS `telpon`,`tb_daftar`.`pendapatan` AS `pendapatan`,`tb_daftar`.`ipk` AS `ipk`,`tb_daftar`.`saudara` AS `saudara` from (`tb_daftar` join `tb_mhs` on((`tb_mhs`.`nim` = `tb_daftar`.`nim`)));

#
# Structure for table "vnilai"
#

DROP VIEW IF EXISTS `vnilai`;
CREATE VIEW `vnilai` AS 
  select `tb_nilai`.`id_nilai` AS `id_nilai`,`tb_nilai`.`id_daftar` AS `id_daftar`,`tb_daftar`.`tgl_daftar` AS `tgl_daftar`,`tb_daftar`.`semester` AS `semester`,`tb_daftar`.`tahun` AS `tahun`,`tb_daftar`.`nim` AS `nim`,`tb_mhs`.`nama` AS `nama`,`tb_daftar`.`pendapatan` AS `pendapatan`,`tb_daftar`.`ipk` AS `ipk`,`tb_daftar`.`saudara` AS `saudara`,`tb_nilai`.`n_pendapatan` AS `n_pendapatan`,`tb_nilai`.`n_ipk` AS `n_ipk`,`tb_nilai`.`n_saudara` AS `n_saudara`,`tb_nilai`.`preferensi` AS `preferensi` from ((`tb_daftar` join `tb_mhs` on((`tb_mhs`.`nim` = `tb_daftar`.`nim`))) join `tb_nilai` on((`tb_daftar`.`id_daftar` = `tb_nilai`.`id_daftar`)));
