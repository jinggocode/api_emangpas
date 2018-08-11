-- --------------------------------------------------------
-- Host:                         localhost
-- Versi server:                 10.1.32-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win32
-- HeidiSQL Versi:               9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- membuang struktur untuk table db_emangpas.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel db_emangpas.groups: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` (`id`, `name`, `description`) VALUES
	(1, 'admin', 'Administrator'),
	(1, 'admin', 'Administrator');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;

-- membuang struktur untuk table db_emangpas.login_attempts
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel db_emangpas.login_attempts: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;

-- membuang struktur untuk table db_emangpas.tb_berkas
CREATE TABLE IF NOT EXISTS `tb_berkas` (
  `berkas_1` int(2) NOT NULL,
  `nama_berkas` varchar(50) NOT NULL,
  PRIMARY KEY (`berkas_1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_emangpas.tb_berkas: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_berkas` DISABLE KEYS */;
INSERT INTO `tb_berkas` (`berkas_1`, `nama_berkas`) VALUES
	(1, 'Surat Keterangan Pemakaian Fasilitas Pasar Daerah'),
	(2, 'Surat Keterangan Koordinator Pasar Daerah');
/*!40000 ALTER TABLE `tb_berkas` ENABLE KEYS */;

-- membuang struktur untuk table db_emangpas.tb_bulan
CREATE TABLE IF NOT EXISTS `tb_bulan` (
  `kode_bulan` varchar(2) NOT NULL DEFAULT '',
  `bulan` varchar(32) NOT NULL,
  PRIMARY KEY (`kode_bulan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_emangpas.tb_bulan: ~12 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_bulan` DISABLE KEYS */;
INSERT INTO `tb_bulan` (`kode_bulan`, `bulan`) VALUES
	('01', 'Januari'),
	('02', 'Februari'),
	('03', 'Maret'),
	('04', 'April'),
	('05', 'Mei'),
	('06', 'Juni'),
	('07', 'Juli'),
	('08', 'Agustus'),
	('09', 'September'),
	('10', 'Oktober'),
	('11', 'November'),
	('12', 'Desember');
/*!40000 ALTER TABLE `tb_bulan` ENABLE KEYS */;

-- membuang struktur untuk table db_emangpas.tb_fasilitas
CREATE TABLE IF NOT EXISTS `tb_fasilitas` (
  `kode_fasilitas` smallint(6) NOT NULL,
  `keterangan` varchar(7) NOT NULL,
  PRIMARY KEY (`kode_fasilitas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_emangpas.tb_fasilitas: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_fasilitas` DISABLE KEYS */;
INSERT INTO `tb_fasilitas` (`kode_fasilitas`, `keterangan`) VALUES
	(1, 'Los'),
	(2, 'Toko'),
	(3, 'Kios');
/*!40000 ALTER TABLE `tb_fasilitas` ENABLE KEYS */;

-- membuang struktur untuk table db_emangpas.tb_jenis
CREATE TABLE IF NOT EXISTS `tb_jenis` (
  `id_jenis` int(11) NOT NULL,
  `jenis_pasar` varchar(20) NOT NULL,
  `kode_jenis` varchar(7) NOT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_emangpas.tb_jenis: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_jenis` DISABLE KEYS */;
INSERT INTO `tb_jenis` (`id_jenis`, `jenis_pasar`, `kode_jenis`) VALUES
	(1, 'Pasar Daerah', 'PS.U'),
	(2, 'MCK', 'MCK'),
	(3, 'Sampah', 'SMPH');
/*!40000 ALTER TABLE `tb_jenis` ENABLE KEYS */;

-- membuang struktur untuk table db_emangpas.tb_kelas
CREATE TABLE IF NOT EXISTS `tb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `kelas` varchar(6) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_emangpas.tb_kelas: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_kelas` DISABLE KEYS */;
INSERT INTO `tb_kelas` (`id_kelas`, `kelas`) VALUES
	(1, 'I'),
	(2, 'II'),
	(3, 'III');
/*!40000 ALTER TABLE `tb_kelas` ENABLE KEYS */;

-- membuang struktur untuk table db_emangpas.tb_komentar
CREATE TABLE IF NOT EXISTS `tb_komentar` (
  `kode_komentar` int(11) NOT NULL AUTO_INCREMENT,
  `kode_lapor` bigint(20) NOT NULL,
  `kode_user` varchar(8) NOT NULL,
  `isi_komentar` text NOT NULL,
  `tanggal_komentar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`kode_komentar`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_emangpas.tb_komentar: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_komentar` DISABLE KEYS */;
INSERT INTO `tb_komentar` (`kode_komentar`, `kode_lapor`, `kode_user`, `isi_komentar`, `tanggal_komentar`) VALUES
	(1, 1, 'psu0101', 'fasilitas kebersihan yang disediakan kurang memadai', '2018-08-11 12:29:42'),
	(2, 1, 'psu0101', 'fasilitas kebersihan yang disediakan kurang memadai', '2018-08-11 12:29:44');
/*!40000 ALTER TABLE `tb_komentar` ENABLE KEYS */;

-- membuang struktur untuk table db_emangpas.tb_krisan
CREATE TABLE IF NOT EXISTS `tb_krisan` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nama_pasar` varchar(50) NOT NULL,
  `nama_konsumen` varchar(40) NOT NULL,
  `isi_krisan` varchar(225) NOT NULL,
  `foto_krisan` varchar(225) NOT NULL,
  `waktu_krisan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` date NOT NULL,
  `created_by` int(5) NOT NULL,
  `uploaded_at` date NOT NULL,
  `uploaded_by` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_emangpas.tb_krisan: 1 rows
/*!40000 ALTER TABLE `tb_krisan` DISABLE KEYS */;
INSERT INTO `tb_krisan` (`id`, `nama_pasar`, `nama_konsumen`, `isi_krisan`, `foto_krisan`, `waktu_krisan`, `created_at`, `created_by`, `uploaded_at`, `uploaded_by`) VALUES
	(1, 'Pasar Kranji Baru', 'rahmat', 'test', '0.png', '2018-03-27 16:37:48', '0000-00-00', 0, '0000-00-00', 0),
	(2, 'asd', 'asd', 'asd', 'PRD_GCOKSBIK_20180811084807.png', '2018-08-11 13:48:07', '2018-08-11', 0, '0000-00-00', 0),
	(3, 'asd', 'asd', 'asd', 'PRD_GTJWEZRI_20180811085021.png', '2018-08-11 13:50:21', '2018-08-11', 0, '0000-00-00', 0),
	(4, 'asd', 'asd', 'asd', 'PRD_CCRYHZJH_20180811085038.png', '2018-08-11 13:50:38', '2018-08-11', 0, '0000-00-00', 0),
	(5, 'asd', 'asd', 'asd', 'PRD_MXFLWUEA_20180811085119.png', '2018-08-11 13:51:19', '2018-08-11', 0, '0000-00-00', 0),
	(6, 'asd', 'asd', 'asd', 'PRD_EYTCPFWG_20180811085215.png', '2018-08-11 13:52:15', '2018-08-11', 0, '0000-00-00', 0);
/*!40000 ALTER TABLE `tb_krisan` ENABLE KEYS */;

-- membuang struktur untuk table db_emangpas.tb_level
CREATE TABLE IF NOT EXISTS `tb_level` (
  `level` int(2) NOT NULL,
  `ket_level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_emangpas.tb_level: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_level` DISABLE KEYS */;
INSERT INTO `tb_level` (`level`, `ket_level`) VALUES
	(1, 'admin'),
	(2, 'petugas'),
	(3, 'kasi');
/*!40000 ALTER TABLE `tb_level` ENABLE KEYS */;

-- membuang struktur untuk table db_emangpas.tb_los
CREATE TABLE IF NOT EXISTS `tb_los` (
  `id_los` int(5) NOT NULL AUTO_INCREMENT,
  `kode_jenis` varchar(7) NOT NULL,
  `kode_pasar` varchar(10) NOT NULL,
  `kode_fasilitas` int(6) NOT NULL,
  `kode_blok` varchar(5) NOT NULL,
  `no_fasilitas` varchar(5) NOT NULL,
  `ukuran` varchar(20) NOT NULL,
  `foto_los` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id_los`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_emangpas.tb_los: ~18 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_los` DISABLE KEYS */;
INSERT INTO `tb_los` (`id_los`, `kode_jenis`, `kode_pasar`, `kode_fasilitas`, `kode_blok`, `no_fasilitas`, `ukuran`, `foto_los`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
	(8, 'PS.U', '05.05', 1, 'A', '1', '1m x 1.5m = 1.5m', 'DNH_ODHVUFLJ_20180202074402.jpg', '0000-00-00 00:00:00', 0, '2018-02-02 19:44:03', 5),
	(9, 'PS.U', '05.05', 1, 'A', '1', '1m x 1.5m = 1.5m', 'DNH_ODHVUFLJ_20180202074402.jpg', '0000-00-00 00:00:00', 0, '2018-02-02 19:44:03', 5),
	(10, 'PS.U', '05.05', 1, 'A', '1', '1m x 1.5m = 1.5m', 'DNH_ODHVUFLJ_20180202074402.jpg', '0000-00-00 00:00:00', 0, '2018-02-02 19:44:03', 5),
	(11, 'PS.U', '05.05', 1, 'A', '1', '1m x 1.5m = 1.5m', 'DNH_ODHVUFLJ_20180202074402.jpg', '0000-00-00 00:00:00', 0, '2018-02-02 19:44:03', 5),
	(13, 'PS.U', '05.05', 1, 'A', '1', '1m x 1.5m = 1.5m', 'DNH_ODHVUFLJ_20180202074402.jpg', '0000-00-00 00:00:00', 0, '2018-02-02 19:44:03', 5),
	(14, 'PS.U', '05.05', 1, 'A', '1', '1m x 1.5m = 1.5m', 'DNH_ODHVUFLJ_20180202074402.jpg', '0000-00-00 00:00:00', 0, '2018-02-02 19:44:03', 5),
	(15, 'PS.U', '05.05', 1, 'A', '1', '1m x 1.5m = 1.5m', 'DNH_ODHVUFLJ_20180202074402.jpg', '0000-00-00 00:00:00', 0, '2018-02-02 19:44:03', 5),
	(16, 'PS.U', '05.05', 1, 'A', '1', '1m x 1.5m = 1.5m', 'DNH_ODHVUFLJ_20180202074402.jpg', '0000-00-00 00:00:00', 0, '2018-02-02 19:44:03', 5),
	(17, 'PS.U', '05.05', 1, 'A', '1', '1m x 1.5m = 1.5m', 'DNH_ODHVUFLJ_20180202074402.jpg', '0000-00-00 00:00:00', 0, '2018-02-02 19:44:03', 5),
	(18, 'PS.U', '05.05', 1, 'A', '1', '1m x 1.5m = 1.5m', 'DNH_ODHVUFLJ_20180202074402.jpg', '0000-00-00 00:00:00', 0, '2018-02-02 19:44:03', 5),
	(19, 'PS.U', '05.05', 1, 'A', '1', '1m x 1.5m = 1.5m', 'DNH_ODHVUFLJ_20180202074402.jpg', '0000-00-00 00:00:00', 0, '2018-02-02 19:44:03', 5),
	(20, 'PS.U', '05.05', 1, 'A', '1', '1m x 1.5m = 1.5m', 'DNH_ODHVUFLJ_20180202074402.jpg', '0000-00-00 00:00:00', 0, '2018-02-02 19:44:03', 5),
	(21, 'PS.U', '05.05', 1, 'A', '1', '1m x 1.5m = 1.5m', 'DNH_ODHVUFLJ_20180202074402.jpg', '0000-00-00 00:00:00', 0, '2018-02-02 19:44:03', 5),
	(22, 'PS.U', '05.05', 1, 'A', '1', '1m x 1.5m = 1.5m', 'DNH_ODHVUFLJ_20180202074402.jpg', '0000-00-00 00:00:00', 0, '2018-02-02 19:44:03', 5),
	(23, 'PS.U', '05.05', 1, 'A', '1', '1m x 1.5m = 1.5m', 'DNH_ODHVUFLJ_20180202074402.jpg', '0000-00-00 00:00:00', 0, '2018-02-02 19:44:03', 5),
	(24, 'PS.U', '05.05', 1, 'A', '1', '1m x 1.5m = 1.5m', 'DNH_ODHVUFLJ_20180202074402.jpg', '0000-00-00 00:00:00', 0, '2018-02-02 19:44:03', 5),
	(25, 'PS.U', '05.05', 1, 'A', '1', '1m x 1.5m = 1.5m', 'DNH_ODHVUFLJ_20180202074402.jpg', '0000-00-00 00:00:00', 0, '2018-02-02 19:44:03', 5),
	(26, 'PS.U', '08.10', 1, '01.01', '1111', '1m x 1.5m = 1.5m', 'DNH_GVFRHLAX_20180413014731.jpg', '2018-04-13 01:47:31', 5, '0000-00-00 00:00:00', 0);
/*!40000 ALTER TABLE `tb_los` ENABLE KEYS */;

-- membuang struktur untuk table db_emangpas.tb_lupapassword
CREATE TABLE IF NOT EXISTS `tb_lupapassword` (
  `kode_lupa_password` bigint(20) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_emangpas.tb_lupapassword: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_lupapassword` DISABLE KEYS */;
INSERT INTO `tb_lupapassword` (`kode_lupa_password`, `username`, `email`) VALUES
	(1, 'anisa', 'anisa2015@gmail.com'),
	(2, 'johana', 'mohjohan@gmail.com'),
	(3, 'nike', 'yunike30@gmail.com');
/*!40000 ALTER TABLE `tb_lupapassword` ENABLE KEYS */;

-- membuang struktur untuk table db_emangpas.tb_pasar
CREATE TABLE IF NOT EXISTS `tb_pasar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_jenis` varchar(20) NOT NULL,
  `kelas` varchar(6) NOT NULL,
  `kode_pasar` varchar(10) NOT NULL,
  `nama_pasar` varchar(20) NOT NULL,
  `kode_sk` varchar(10) NOT NULL,
  `koordinator` varchar(40) NOT NULL,
  `NIP` varchar(25) NOT NULL,
  `denah` varchar(225) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_emangpas.tb_pasar: ~18 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_pasar` DISABLE KEYS */;
INSERT INTO `tb_pasar` (`id`, `kode_jenis`, `kelas`, `kode_pasar`, `nama_pasar`, `kode_sk`, `koordinator`, `NIP`, `denah`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
	(1, 'PS.U', 'I', '01.01', 'Kranji Baru', '', 'Moch. Safii', '196801191991031005', 'DNH_FMYZZDOQ_20180410023356.jpg', NULL, NULL, NULL, NULL),
	(2, 'PS.U', 'I', '02.02', 'Bintara', '', 'Kusno Hadi, S.Sos', '1959011211987121001', '', NULL, NULL, NULL, NULL),
	(3, 'PS.U', 'I', '03.03', 'Jatiasih', '', 'Ismail', '196102101985031013', '', NULL, NULL, NULL, NULL),
	(4, 'PS.U', 'I', '04.04', 'Bantar Gebang', '', 'Sudarmanto', '196509011990011001', '', NULL, NULL, NULL, NULL),
	(5, 'PS.U', 'I', '05.05', 'Pasar Baru Bekasi', '', 'Abd. Hakim', '196509182008011005', '', NULL, NULL, NULL, NULL),
	(6, 'PS.U', 'I', '06.06', 'Krangan', '', 'Fauji', '196004121990031008', '', NULL, NULL, NULL, NULL),
	(7, 'MCK', 'I', '01.01', 'Kranji Baru', '', 'Moch. Safii', '196801191991031005', '', NULL, NULL, NULL, NULL),
	(8, 'MCK', 'I', '02.02', 'Bintara', '', 'Kusno Hadi, S.Sos', '1959011211987121001', '', NULL, NULL, NULL, NULL),
	(9, 'MCK', 'I', '03.03', 'Jatiasih', '', 'Ismail', '196102101985031013', '', NULL, NULL, NULL, NULL),
	(10, 'MCK', 'I', '05.05', 'Bantar Gebang', '', 'Abd. Hakim', '196509182008011005', '', NULL, NULL, NULL, NULL),
	(11, 'MCK', 'I', '06.06', 'Pasar Baru Bekasi', '', 'Fauji', '196004121990031008 	', '', NULL, NULL, NULL, NULL),
	(12, 'MCK', 'I', '07.07', 'Krangan', '', 'Budi harianto', '197405142007011013', '', NULL, NULL, NULL, NULL),
	(13, 'SMPH', 'I', '01.01', 'Kranji Baru', '', 'Moch. Safii', '196801191991031005', '', NULL, NULL, NULL, NULL),
	(14, 'SMPH', 'I', '02.02', 'Bintara', '', 'Kusno Hadi, S.Sos', '1959011211987121001', '', NULL, NULL, NULL, NULL),
	(15, 'SMPH', 'I', '03.03', 'Jatiasih', '', 'Ismail', '196102101985031013', '', NULL, NULL, NULL, NULL),
	(16, 'SMPH', 'I', '04.04', 'Bantar Gebang', '', 'Sudarmanto', '196509011990011001', '', NULL, NULL, NULL, NULL),
	(17, 'SMPH', 'I', '05.05', 'Pasar Baru Bekasi', '', 'Abd. Hakim', '196509182008011005', '', NULL, NULL, NULL, NULL),
	(18, 'SMPH', 'I', '06.06', 'Krangan', '', 'Fauji', '196004121990031008', '', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `tb_pasar` ENABLE KEYS */;

-- membuang struktur untuk table db_emangpas.tb_pelaporan
CREATE TABLE IF NOT EXISTS `tb_pelaporan` (
  `kode_lapor` bigint(20) NOT NULL,
  `kode_user` varchar(8) NOT NULL,
  `foto_lapor` varchar(255) NOT NULL,
  `isi_lapor` text NOT NULL,
  `tanggal_lapor` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_emangpas.tb_pelaporan: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_pelaporan` DISABLE KEYS */;
INSERT INTO `tb_pelaporan` (`kode_lapor`, `kode_user`, `foto_lapor`, `isi_lapor`, `tanggal_lapor`) VALUES
	(1, 'psu02.02', '1.jpg', 'Fasilitas tempat sampah kurang memadai', '2017-08-28 21:47:09'),
	(2, 'psu03.09', '2.jpg', 'Pembenahan atap pasar perlu dilakukan', '2017-08-28 21:48:18');
/*!40000 ALTER TABLE `tb_pelaporan` ENABLE KEYS */;

-- membuang struktur untuk table db_emangpas.tb_skfasilitas
CREATE TABLE IF NOT EXISTS `tb_skfasilitas` (
  `no_berkas` int(11) NOT NULL,
  `kode_pasar` varchar(20) NOT NULL,
  `berkas_1` varchar(50) NOT NULL,
  `no_berkas1` int(5) NOT NULL,
  `tahun_berkas1` year(4) NOT NULL,
  `tgl_berkas1` varchar(10) NOT NULL,
  `no_berkas2` int(5) NOT NULL,
  `tahun_berkas2` year(4) NOT NULL,
  `tgl_berkas2` varchar(10) NOT NULL,
  `no_berkas3` int(5) NOT NULL,
  `tahun_berkas3` year(4) NOT NULL,
  `tgl_berkas3` varchar(10) NOT NULL,
  `tahun_berkas4` year(4) NOT NULL,
  `tgl_berkas4` varchar(10) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `alamat` varchar(70) NOT NULL,
  `jenis_usaha` varchar(15) NOT NULL,
  `id_los` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_emangpas.tb_skfasilitas: ~10 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_skfasilitas` DISABLE KEYS */;
INSERT INTO `tb_skfasilitas` (`no_berkas`, `kode_pasar`, `berkas_1`, `no_berkas1`, `tahun_berkas1`, `tgl_berkas1`, `no_berkas2`, `tahun_berkas2`, `tgl_berkas2`, `no_berkas3`, `tahun_berkas3`, `tgl_berkas3`, `tahun_berkas4`, `tgl_berkas4`, `nama`, `alamat`, `jenis_usaha`, `id_los`) VALUES
	(10, '01.01', 'Surat Keterangan Pemakaian Fasilitas Pas', 5, '2015', '16-05-2015', 6, '2016', '16-05-2017', 7, '2016', '16-05-2017', '2016', '16-05-2017', 'hayyin', 'jl.ikan putihan no. 53 banyuwangi', 'daging', '11'),
	(11, '03.03', 'Surat Keterangan Koordinator Pasar Daerah', 22, '2015', '09-09-2015', 13, '2017', '01-06-2017', 12, '2017', '02-06-2017', '2017', '03-06-2017', 'solati', 'Jl. Losari Rt. 02 Rw. 02 Kepatihan Banyuwangi', 'toko buku', '20'),
	(12, '07.07', 'Surat Keterangan Koordinator Pasar Daerah', 25, '2015', '09-09-2015', 53, '2017', '04-06-2017', 32, '2017', '04-06-2017', '2017', '04-06-2017', 'saodah', 'jl.ljen Ling.Singodiwongso', 'pakaian', '18'),
	(13, '01.01', 'Surat Keterangan Koordinator Pasar Daerah', 2, '2015', '09-09-2015', 3, '2017', '05-06-2017', 4, '2017', '05-06-2017', '2017', '05-06-2017', 'saidah', 'jl. singotrunan ling. karanganyar no.30', 'buah', '21'),
	(14, '02.02', 'Surat Keterangan Koordinator Pasar Daerah', 10, '2015', '10-09-2015', 11, '2017', '06-06-2017', 12, '2017', '06-06-2017', '2017', '06-06-2017', 'yeti', 'jl. raya sraten banyuwangi', 'plastik', '8'),
	(15, '02.02', 'Surat Keterangan Koordinator Pasar Daerah', 21, '2017', '11-09-2015', 22, '2017', '05-06-2017', 23, '2017', '05-06-2017', '2017', '05-06-2017', 'Mirna', 'jl. raya Srono Banyuwangi', 'Sayur', '10'),
	(16, '03.03', 'Surat Keterangan Koordinator Pasar Daerah', 33, '2015', '12-09-2015', 34, '2017', '05-06-2017', 35, '2017', '05-06-2017', '2017', '05-06-2017', 'Ravenia', 'Jl. raya tamanagung cluring', 'Snack', '15'),
	(17, '01.01', 'Surat Keterangan Koordinator Pasar Daerah', 28, '2015', '15-09-2015', 29, '2017', '06-06-2017', 30, '2017', '06-06-2017', '2017', '06-06-2017', 'Mesiyah', 'Jl. Jaksa Agung Suprapto no.33', 'Prancangan', '22'),
	(18, '02.02', 'Surat Keterangan Koordinator Pasar Daerah', 44, '2015', '20-09-2015', 45, '2017', '06-06-2017', 46, '2017', '06-06-2017', '2017', '06-06-2017', 'Abdul Hisyam', 'Jl. Karimata No. 55', 'Selep daging', '9'),
	(21, '09.77', 'Surat Keterangan Koordinator Pasar Daerah', 55, '2013', '06-03-2017', 56, '2017', '15-08-2017', 66, '2017', '16-08-2017', '2017', '17-08-2017', 'minem', 'Jl. Jaksa Agung Suprapto no.99', 'tempe', '25');
/*!40000 ALTER TABLE `tb_skfasilitas` ENABLE KEYS */;

-- membuang struktur untuk table db_emangpas.tb_sts
CREATE TABLE IF NOT EXISTS `tb_sts` (
  `kode_sts` int(20) NOT NULL AUTO_INCREMENT,
  `kode_jenis` varchar(20) NOT NULL,
  `kode_pasar` varchar(20) NOT NULL,
  `no_STS` varchar(25) NOT NULL,
  `tanggal_awal` varchar(10) NOT NULL,
  `tanggal_akhir` varchar(10) NOT NULL,
  `tanggal_setor` varchar(10) NOT NULL,
  `tanggal_laporan` date NOT NULL,
  `jumlah` int(15) NOT NULL,
  `foto_sts` varchar(225) NOT NULL DEFAULT '',
  `jk200` int(3) NOT NULL DEFAULT '0',
  `jk300` int(3) NOT NULL DEFAULT '0',
  `jk400` int(3) NOT NULL DEFAULT '0',
  `jk500` int(3) NOT NULL DEFAULT '0',
  `jk600` int(3) NOT NULL DEFAULT '0',
  `jk800` int(3) NOT NULL DEFAULT '0',
  `jk1000` int(3) NOT NULL DEFAULT '0',
  `waktu` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`kode_sts`)
) ENGINE=InnoDB AUTO_INCREMENT=425 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_emangpas.tb_sts: ~263 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_sts` DISABLE KEYS */;
INSERT INTO `tb_sts` (`kode_sts`, `kode_jenis`, `kode_pasar`, `no_STS`, `tanggal_awal`, `tanggal_akhir`, `tanggal_setor`, `tanggal_laporan`, `jumlah`, `foto_sts`, `jk200`, `jk300`, `jk400`, `jk500`, `jk600`, `jk800`, `jk1000`, `waktu`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
	(157, 'PS.U', '01.01', '01.01.2/PS.U/05/2017', '01-01-2017', '02-01-2017', '02-01-2017', '2017-05-29', 2920000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-05 07:49:06', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(158, 'PS.U', '01.01', '01.01.3/PS.U/05/2017', '2017-01-03', '2017-01-03', '2017-01-03', '2017-05-29', 984000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:35:43', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(159, 'PS.U', '01.01', '01.01.4/PS.U/05/2017', '2017-01-04', '2017-01-04', '2017-01-04', '2017-05-29', 984000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:35:48', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(160, 'PS.U', '01.01', '01.01.5/PS.U/05/2017', '2017-01-05', '2017-01-05', '2017-01-05', '2017-05-29', 2984000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:35:56', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(161, 'PS.U', '01.01', '01.01.6/PS.U/05/2017', '2017-01-06', '2017-01-06', '2017-01-06', '2017-05-29', 1014000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:36:02', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(162, 'PS.U', '01.01', '01.01.7/PS.U/05/2017', '2017-01-07', '2017-01-09', '2017-01-09', '2017-05-29', 1503000, '', 0, 0, 0, 0, 0, 0, 0, '2017-05-29 06:12:32', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(163, 'PS.U', '01.01', '01.01.8/PS.U/05/2017', '2017-01-10', '2017-01-10', '2017-01-10', '2017-05-29', 2880000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:36:07', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(164, 'PS.U', '01.01', '01.01.9/PS.U/05/2017', '2017-01-11', '2017-01-11', '2017-01-11', '2017-05-29', 998000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:36:13', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(165, 'PS.U', '01.01', '01.01.10/PS.U/05/2017', '2017-01-12', '2017-01-12', '2017-01-12', '2017-05-29', 1010000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:36:19', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(166, 'PS.U', '01.01', '01.01.11/PS.U/05/2017', '2017-01-13', '2017-01-13', '2017-01-13', '2017-05-29', 988900, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:36:26', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(167, 'PS.U', '01.01', '01.01.12/PS.U/05/2017', '2017-01-14', '2017-01-16', '2017-01-16', '2017-05-29', 2990000, '', 0, 0, 0, 0, 0, 0, 0, '2017-05-29 06:14:47', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(168, 'PS.U', '01.01', '01.01.13/PS.U/05/2017', '2017-01-17', '2017-01-17', '2017-01-17', '2017-05-29', 979000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:36:32', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(169, 'PS.U', '01.01', '01.01.14/PS.U/05/2017', '2017-01-18', '2017-01-18', '2017-01-18', '2017-05-29', 1055000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:36:37', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(170, 'PS.U', '01.01', '01.01.15/PS.U/05/2017', '2017-01-19', '2017-01-19', '2017-01-19', '2017-05-29', 1110000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:36:43', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(171, 'PS.U', '01.01', '01.01.16/PS.U/05/2017', '2017-01-20', '2017-01-20', '2017-01-20', '2017-05-29', 1015000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:36:50', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(172, 'PS.U', '01.01', '01.01.17/PS.U/05/2017', '2017-01-21', '2017-01-23', '2017-01-23', '2017-05-29', 2992000, '', 0, 0, 0, 0, 0, 0, 0, '2017-05-29 06:20:26', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(173, 'PS.U', '01.01', '01.01.18/PS.U/05/2017', '2017-01-24', '2017-01-24', '2017-01-24', '2017-05-29', 997000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:37:01', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(174, 'PS.U', '01.01', '01.01.19/PS.U/05/2017', '2017-01-25', '2017-01-25', '2017-01-25', '2017-05-29', 1200000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:37:11', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(175, 'PS.U', '01.01', '01.01.20/PS.U/05/2017', '2017-01-26', '2017-01-26', '2017-01-26', '2017-05-29', 1150000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:37:18', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(176, 'PS.U', '01.01', '01.01.21/PS.U/05/2017', '2017-01-27', '2017-01-27', '2017-01-27', '2017-05-29', 999000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:37:25', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(177, 'PS.U', '01.01', '01.01.22/PS.U/05/2017', '2017-01-28', '2017-01-30', '2017-01-30', '2017-05-29', 2899000, '', 0, 0, 0, 0, 0, 0, 0, '2017-05-29 06:20:26', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(178, 'PS.U', '01.01', '01.01.23/PS.U/05/2017', '2017-01-31', '2017-01-31', '2017-01-31', '2017-05-29', 1220000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:37:30', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(179, 'PS.U', '01.01', '01.01.24/PS.U/05/2017', '2017-02-01', '2017-02-01', '2017-02-01', '2017-05-29', 1250000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:37:39', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(180, 'MCK', '01.01', '01.01.1/MCK/05/2017', '2017-01-01', '2017-01-02', '2017-01-02', '2017-05-29', 1030000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:22:11', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(181, 'PS.U', '02.02', '02.02.1/PS.U/06/2017', '2017-01-01', '2017-01-02', '2017-01-02', '2017-06-04', 4237000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-04 09:25:48', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(182, 'PS.U', '02.02', '02.02.2/PS.U/06/2017', '2017-01-03', '2017-01-03', '2017-01-03', '2017-06-04', 1412000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:38:01', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(183, 'PS.U', '02.02', '02.02.3/PS.U/06/2017', '2017-01-04', '2017-01-04', '2017-01-04', '2017-06-04', 1356000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:38:06', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(184, 'PS.U', '02.02', '02.02.4/PS.U/06/2017', '2017-01-05', '2017-01-05', '2017-01-05', '2017-06-04', 3400000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:38:13', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(185, 'PS.U', '02.02', '02.02.5/PS.U/06/2017', '2017-01-06', '2017-01-06', '2017-01-06', '2017-06-04', 1300000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:38:19', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(186, 'PS.U', '02.02', '02.02.6/PS.U/06/2017', '2017-01-07', '2017-01-09', '2017-01-09', '2017-06-04', 4300000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-04 09:28:43', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(187, 'PS.U', '02.02', '02.02.7/PS.U/06/2017', '2017-01-10', '2017-01-10', '2017-01-10', '2017-06-04', 1450000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:38:24', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(188, 'PS.U', '02.02', '02.02.8/PS.U/06/2017', '2017-01-11', '2017-01-11', '2017-01-11', '2017-06-04', 1400000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:38:29', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(189, 'PS.U', '02.02', '02.02.9/PS.U/06/2017', '2017-01-12', '2017-01-12', '2017-01-12', '2017-06-04', 2900000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:38:34', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(190, 'PS.U', '02.02', '02.02.10/PS.U/06/2017', '2017-01-13', '2017-01-13', '2017-01-13', '2017-06-04', 1350000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:38:42', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(191, 'PS.U', '02.02', '02.02.11/PS.U/06/2017', '2017-01-14', '2017-01-16', '2017-01-16', '2017-06-04', 4120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-04 09:38:18', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(192, 'PS.U', '02.02', '02.02.12/PS.U/06/2017', '2017-01-17', '2017-01-17', '2017-01-17', '2017-06-04', 1430000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:38:47', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(193, 'PS.U', '02.02', '02.02.13/PS.U/06/2017', '2017-01-18', '2017-01-18', '2017-01-18', '2017-06-04', 1410000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:38:52', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(194, 'PS.U', '02.02', '02.02.14/PS.U/06/2017', '2017-01-20', '2017-01-20', '2017-01-20', '2017-06-04', 2700000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:39:02', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(195, 'PS.U', '02.02', '02.02.15/PS.U/06/2017', '2017-01-21', '2017-01-23', '2017-01-23', '2017-06-04', 3980000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-04 09:40:53', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(196, 'PS.U', '02.02', '02.02.16/PS.U/06/2017', '2017-01-24', '2017-01-24', '2017-01-24', '2017-06-04', 1552000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:39:08', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(197, 'PS.U', '02.02', '02.02.17/PS.U/06/2017', '2017-01-25', '2017-01-25', '2017-01-25', '2017-06-04', 1880000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:39:15', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(198, 'PS.U', '02.02', '02.02.18/PS.U/06/2017', '2017-01-26', '2017-01-26', '2017-01-26', '2017-06-04', 2110000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:39:21', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(199, 'PS.U', '02.02', '02.02.19/PS.U/06/2017', '2017-01-27', '2017-01-27', '2017-01-27', '2017-06-04', 2300000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:39:27', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(200, 'PS.U', '02.02', '02.02.20/PS.U/06/2017', '2017-01-28', '2017-01-30', '2017-01-30', '2017-06-04', 4115000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-04 09:46:01', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(201, 'PS.U', '02.02', '02.02.21/PS.U/06/2017', '2017-01-31', '2017-01-31', '2017-01-31', '2017-06-04', 1230000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:39:35', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(202, 'PS.U', '01.01', '01.01.25/PS.U/06/2017', '2017-02-02', '2017-02-02', '2017-02-02', '2017-06-04', 1130000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:39:41', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(203, 'PS.U', '01.01', '01.01.26/PS.U/06/2017', '2017-02-03', '2017-02-03', '2017-02-03', '2017-06-04', 1122000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:39:47', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(204, 'PS.U', '01.01', '01.01.27/PS.U/06/2017', '2017-02-04', '2017-02-06', '2017-02-06', '2017-06-04', 3110000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-04 09:54:48', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(205, 'PS.U', '01.01', '01.01.28/PS.U/06/2017', '2017-02-07', '2017-02-07', '2017-02-07', '2017-06-04', 1115000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:39:53', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(206, 'PS.U', '01.01', '01.01.29/PS.U/06/2017', '2017-02-08', '2017-02-08', '2017-02-08', '2017-06-04', 1210000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:54:58', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(207, 'PS.U', '01.01', '01.01.30/PS.U/06/2017', '2017-02-09', '2017-02-09', '2017-02-09', '2017-06-04', 1025000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:54:58', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(208, 'PS.U', '01.01', '01.01.31/PS.U/06/2017', '2017-02-10', '2017-02-10', '2017-02-10', '2017-06-04', 1017000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:54:58', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(209, 'PS.U', '01.01', '01.01.32/PS.U/06/2017', '2017-02-11', '2017-02-13', '2017-02-13', '2017-06-04', 3020000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-04 10:55:47', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(210, 'PS.U', '01.01', '01.01.33/PS.U/06/2017', '2017-02-14', '2017-02-14', '2017-02-14', '2017-06-04', 1120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:54:58', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(211, 'PS.U', '01.01', '01.01.34/PS.U/06/2017', '2017-02-15', '2017-02-15', '2017-02-15', '2017-06-04', 1234000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:54:58', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(212, 'PS.U', '01.01', '01.01.35/PS.U/06/2017', '2017-02-16', '2017-02-16', '2017-02-16', '2017-06-04', 1302000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:54:58', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(213, 'PS.U', '01.01', '01.01.36/PS.U/06/2017', '2017-02-17', '2017-02-17', '2017-02-17', '2017-06-04', 1240000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:54:58', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(214, 'PS.U', '01.01', '01.01.37/PS.U/06/2017', '2017-02-18', '2017-02-20', '2017-02-20', '2017-06-04', 3200000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-04 10:59:33', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(215, 'PS.U', '01.01', '01.01.38/PS.U/06/2017', '2017-02-21', '2017-02-21', '2017-02-21', '2017-06-04', 1500000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:54:58', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(216, 'PS.U', '01.01', '01.01.39/PS.U/06/2017', '2017-02-22', '2017-02-22', '2017-02-22', '2017-06-04', 1320000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:54:58', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(217, 'PS.U', '01.01', '01.01.40/PS.U/06/2017', '2017-02-23', '', '2017-02-23', '2017-06-04', 1232000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-04 11:01:35', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(218, 'PS.U', '01.01', '01.01.41/PS.U/06/2017', '2017-02-24', '', '2017-02-24', '2017-06-04', 1245000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-04 11:02:32', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(219, 'PS.U', '01.01', '01.01.42/PS.U/06/2017', '2017-02-25', '2017-02-27', '2017-02-27', '2017-06-04', 3210000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-04 11:03:04', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(220, 'PS.U', '01.01', '01.01.43/PS.U/06/2017', '2017-02-28', '', '2017-02-28', '2017-06-04', 1243000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-04 11:03:27', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(221, 'PS.U', '03.03', '03.03.1/PS.U/06/2017', '2017-01-01', '2017-01-02', '2017-01-02', '2017-06-06', 3988000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-05 22:12:06', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(222, 'PS.U', '03.03', '03.03.2/PS.U/06/2017', '2017-01-03', '', '2017-01-03', '2017-06-06', 1124000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 06:19:24', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(223, 'PS.U', '03.03', '03.03.3/PS.U/06/2017', '2017-01-04', '', '2017-01-04', '2017-06-06', 1342000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 06:19:52', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(224, 'PS.U', '03.03', '03.03.4/PS.U/06/2017', '2017-01-05', '', '2017-01-05', '2017-06-06', 1121000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 06:20:25', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(225, 'PS.U', '03.03', '03.03.5/PS.U/06/2017', '2017-01-06', '', '2017-01-06', '2017-06-06', 1321000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 06:24:26', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(226, 'PS.U', '03.03', '03.03.6/PS.U/06/2017', '2017-01-07', '2017-01-09', '2017-01-09', '2017-06-06', 2450000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 06:25:09', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(227, 'PS.U', '03.03', '03.03.7/PS.U/06/2017', '2017-01-10', '', '2017-01-10', '2017-06-06', 1140000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 06:28:01', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(228, 'PS.U', '03.03', '03.03.8/PS.U/06/2017', '2017-01-11', '', '2017-01-11', '2017-06-06', 1221000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 06:28:40', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(229, 'PS.U', '03.03', '03.03.9/PS.U/06/2017', '2017-01-12', '', '2017-01-12', '2017-06-06', 1321000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 06:29:07', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(230, 'PS.U', '03.03', '03.03.10/PS.U/06/2017', '2017-01-13', '', '2017-01-13', '2017-06-06', 1017000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 06:29:38', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(231, 'PS.U', '03.03', '03.03.11/PS.U/06/2017', '2017-01-14', '2017-01-16', '2017-01-16', '2017-06-06', 2882000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 06:32:25', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(232, 'PS.U', '03.03', '03.03.12/PS.U/06/2017', '2017-01-17', '', '2017-01-17', '2017-06-06', 1321000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 06:32:49', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(233, 'PS.U', '03.03', '03.03.13/PS.U/06/2017', '2017-01-18', '', '2017-01-18', '2017-06-06', 1450000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 06:33:17', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(234, 'PS.U', '03.03', '03.03.14/PS.U/06/2017', '2017-01-19', '', '2017-01-19', '2017-06-06', 1230000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 06:33:40', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(235, 'PS.U', '03.03', '03.03.15/PS.U/06/2017', '2017-01-20', '', '2017-01-20', '2017-06-06', 1124000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 06:37:05', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(236, 'PS.U', '03.03', '03.03.16/PS.U/06/2017', '2017-01-21', '2017-01-23', '2017-01-23', '2017-06-06', 2984000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 06:38:13', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(237, 'PS.U', '03.03', '03.03.17/PS.U/06/2017', '2017-01-24', '', '2017-01-24', '2017-06-06', 1120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 06:38:40', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(238, 'PS.U', '03.03', '03.03.18/PS.U/06/2017', '2017-01-25', '', '2017-01-25', '2017-06-06', 1115000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 06:39:03', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(239, 'PS.U', '03.03', '03.03.19/PS.U/06/2017', '2017-01-26', '', '2017-01-26', '2017-06-06', 1130000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 06:39:25', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(240, 'PS.U', '03.03', '03.03.20/PS.U/06/2017', '2017-01-27', '', '2017-01-27', '2017-06-06', 1254000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 06:39:54', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(241, 'PS.U', '03.03', '03.03.21/PS.U/06/2017', '2017-01-28', '2017-01-30', '2017-01-30', '2017-06-06', 2300000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 06:40:36', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(242, 'PS.U', '03.03', '03.03.22/PS.U/06/2017', '2017-01-31', '', '2017-01-31', '2017-06-06', 1221000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 06:41:08', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(243, 'PS.U', '04.04', '04.04.1/PS.U/06/2017', '2017-01-01', '2017-01-02', '2017-01-02', '2017-06-06', 2750000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:04:21', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(244, 'PS.U', '04.04', '04.04.2/PS.U/06/2017', '2017-01-03', '', '2017-01-03', '2017-06-06', 1115000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:04:45', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(245, 'PS.U', '04.04', '04.04.3/PS.U/06/2017', '2017-01-04', '', '2017-01-04', '2017-06-06', 1130000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:05:07', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(246, 'PS.U', '04.04', '04.04.4/PS.U/06/2017', '2017-01-05', '', '2017-01-05', '2017-06-06', 1120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:05:27', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(247, 'PS.U', '04.04', '04.04.5/PS.U/06/2017', '2017-01-06', '', '2017-01-06', '2017-06-06', 1124000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:06:15', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(248, 'PS.U', '04.04', '04.04.6/PS.U/06/2017', '2017-01-07', '2017-01-09', '2017-01-09', '2017-06-06', 2880000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:06:45', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(249, 'PS.U', '04.04', '04.04.7/PS.U/06/2017', '2017-01-10', '', '2017-01-10', '2017-06-06', 1121000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:07:11', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(250, 'PS.U', '04.04', '04.04.8/PS.U/06/2017', '2017-01-11', '', '2017-01-11', '2017-06-06', 1140000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:07:54', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(251, 'PS.U', '04.04', '04.04.9/PS.U/06/2017', '2017-01-12', '', '2017-01-12', '2017-06-06', 1115000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:08:17', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(252, 'PS.U', '04.04', '04.04.10/PS.U/06/2017', '2017-01-13', '', '2017-01-13', '2017-06-06', 1121000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:08:41', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(253, 'PS.U', '04.04', '04.04.11/PS.U/06/2017', '2017-01-14', '2017-01-16', '2017-01-16', '2017-06-06', 2882000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:09:19', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(254, 'PS.U', '04.04', '04.04.12/PS.U/06/2017', '2017-01-17', '', '2017-01-17', '2017-06-06', 1221000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:09:43', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(255, 'PS.U', '04.04', '04.04.13/PS.U/06/2017', '2017-01-18', '', '2017-01-18', '2017-06-06', 1254000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:10:03', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(256, 'PS.U', '04.04', '04.04.14/PS.U/06/2017', '2017-01-19', '', '2017-01-19', '2017-06-06', 1130000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:10:57', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(257, 'PS.U', '04.04', '04.04.15/PS.U/06/2017', '2017-01-20', '', '2017-01-20', '2017-06-06', 1210000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:11:18', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(258, 'PS.U', '04.04', '04.04.16/PS.U/06/2017', '2017-01-21', '2017-01-23', '2017-01-23', '2017-06-06', 2899000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:12:02', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(259, 'PS.U', '04.04', '04.04.17/PS.U/06/2017', '2017-01-24', '', '2017-01-24', '2017-06-06', 1123000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:12:30', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(260, 'PS.U', '04.04', '04.04.18/PS.U/06/2017', '2017-01-25', '', '2017-01-25', '2017-06-06', 1140000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:12:55', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(261, 'PS.U', '04.04', '04.04.19/PS.U/06/2017', '2017-01-26', '', '2017-01-26', '2017-06-06', 1230000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:13:19', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(262, 'PS.U', '04.04', '04.04.20/PS.U/06/2017', '2017-01-27', '', '2017-01-27', '2017-06-06', 1120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:13:41', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(263, 'PS.U', '04.04', '04.04.21/PS.U/06/2017', '2017-01-28', '2017-01-30', '2017-01-30', '2017-06-06', 2984000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:14:07', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(264, 'PS.U', '04.04', '04.04.22/PS.U/06/2017', '2017-01-31', '', '2017-01-31', '2017-06-06', 1128000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 07:14:38', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(265, 'PS.U', '05.05', '05.05.1/PS.U/06/2017', '2017-01-31', '', '2017-01-31', '2017-06-06', 37250000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 10:37:20', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(266, 'PS.U', '05.05', '05.05.2/PS.U/06/2017', '2017-02-28', '', '2017-02-28', '2017-06-06', 33445000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 10:38:13', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(267, 'PS.U', '03.03', '03.03.23/PS.U/06/2017', '2017-02-28', '', '2017-02-28', '2017-06-06', 33500000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 10:40:20', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(268, 'PS.U', '04.04', '04.04.23/PS.U/06/2017', '2017-02-28', '', '2017-02-28', '2017-06-06', 32345000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 10:40:45', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(269, 'PS.U', '06.06', '06.06.1/PS.U/06/2017', '2017-01-31', '', '2017-01-31', '2017-06-06', 31250000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 10:42:52', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(270, 'PS.U', '06.06', '06.06.2/PS.U/06/2017', '2017-02-28', '', '2017-02-28', '2017-06-06', 30155000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 10:43:29', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(271, 'PS.U', '07.07', '07.07.1/PS.U/06/2017', '2017-01-31', '', '2017-01-31', '2017-06-06', 30500000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 10:54:37', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(272, 'PS.U', '07.07', '07.07.2/PS.U/06/2017', '2017-02-28', '', '2017-02-28', '2017-06-06', 29890000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 10:55:06', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(273, 'PS.U', '08.08', '08.08.1/PS.U/06/2017', '2017-01-31', '', '2017-01-31', '2017-06-06', 29345000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 10:55:36', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(274, 'PS.U', '08.08', '08.08.2/PS.U/06/2017', '2017-02-28', '', '2017-02-28', '2017-06-06', 29500000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 10:56:05', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(275, 'PS.U', '09.09', '09.09.1/PS.U/06/2017', '2017-01-31', '', '2017-01-31', '2017-06-06', 33200000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 10:57:22', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(276, 'PS.U', '09.09', '09.09.2/PS.U/06/2017', '2017-02-28', '', '2017-02-28', '2017-06-06', 32240000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 10:57:52', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(277, 'PS.U', '08.10', '08.10.1/PS.U/06/2017', '2017-01-31', '', '2017-01-31', '2017-06-06', 10400000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:00:03', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(278, 'PS.U', '08.10', '08.10.2/PS.U/06/2017', '2017-02-28', '', '2017-02-28', '2017-06-06', 10100000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:00:52', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(279, 'PS.U', '06.11', '06.11.1/PS.U/06/2017', '2017-01-31', '', '2017-01-31', '2017-06-06', 10230000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:01:22', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(280, 'PS.U', '06.11', '06.11.2/PS.U/06/2017', '2017-02-28', '', '2017-02-28', '2017-06-06', 10200000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:01:53', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(281, 'PS.U', '03.12', '03.12.1/PS.U/06/2017', '2017-01-31', '', '2017-01-31', '2017-06-06', 10800000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:02:24', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(282, 'PS.U', '03.12', '03.12.2/PS.U/06/2017', '2017-02-28', '', '2017-02-28', '2017-06-06', 10750000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:02:51', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(283, 'PS.U', '04.13', '04.13.1/PS.U/06/2017', '2017-01-31', '', '2017-01-31', '2017-06-06', 11000000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:03:23', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(284, 'PS.U', '04.13', '04.13.2/PS.U/06/2017', '2017-02-28', '', '2017-02-28', '2017-06-06', 10970000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:03:47', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(285, 'PS.U', '04.15', '04.15.1/PS.U/06/2017', '2017-01-31', '', '2017-01-31', '2017-06-06', 4500000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:21:10', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(286, 'PS.U', '04.15', '04.15.2/PS.U/06/2017', '2017-02-28', '', '2017-02-28', '2017-06-06', 4250000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:21:44', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(287, 'PS.U', '05.16', '05.16.1/PS.U/06/2017', '2017-01-31', '', '2017-01-31', '2017-06-06', 3200000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:22:22', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(288, 'PS.U', '05.16', '05.16.2/PS.U/06/2017', '2017-02-28', '', '2017-02-28', '2017-06-06', 3350000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:22:51', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(289, 'PS.U', '05.17', '05.17.1/PS.U/06/2017', '2017-01-31', '', '2017-01-31', '2017-06-06', 3300000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:23:18', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(290, 'PS.U', '05.17', '05.17.2/PS.U/06/2017', '2017-02-28', '', '2017-02-28', '2017-06-06', 3200000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:23:56', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(291, 'PS.U', '01.19', '01.19.1/PS.U/06/2017', '2017-01-31', '', '2017-01-31', '2017-06-06', 3220000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:24:31', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(292, 'PS.U', '01.19', '01.19.2/PS.U/06/2017', '2017-02-28', '', '2017-02-28', '2017-06-06', 3100000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:25:12', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(293, 'PS.U', '04.20', '04.20.1/PS.U/06/2017', '2017-01-31', '', '2017-01-31', '2017-06-06', 3140000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:25:41', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(294, 'PS.U', '04.20', '04.20.2/PS.U/06/2017', '2017-02-28', '', '2017-02-28', '2017-06-06', 3120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:26:05', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(295, 'PS.I', '01.26', '01.26.1/PS.I/06/2017', '2017-01-31', '', '2017-01-31', '2017-06-06', 2500000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:33:33', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(296, 'PS.I', '01.26', '01.26.2/PS.I/06/2017', '2017-02-28', '', '2017-02-28', '2017-06-06', 2430000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:34:00', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(297, 'PS.I', '03.29', '03.29.1/PS.I/06/2017', '2017-01-31', '', '2017-01-31', '2017-06-06', 2110000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:34:26', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(298, 'PS.I', '03.29', '03.29.2/PS.I/06/2017', '2017-02-28', '', '2017-02-28', '2017-06-06', 2100000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:34:44', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(299, 'PS.I', '07.21', '07.21.1/PS.I/06/2017', '2017-01-31', '', '2017-01-31', '2017-06-06', 2090000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:35:13', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(300, 'PS.I', '07.21', '07.21.2/PS.I/06/2017', '2017-02-28', '', '2017-02-28', '2017-06-06', 1980000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:35:31', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(301, 'PS.HW', '08.10', '08.10.1/PS.HW/06/2017', '2017-01-02', '', '2017-01-02', '2017-06-06', 1670000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:40:26', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(302, 'PS.HW', '08.10', '08.10.2/PS.HW/06/2017', '2017-01-09', '', '2017-01-09', '2017-06-06', 1590000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:41:23', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(303, 'PS.HW', '08.10', '08.10.3/PS.HW/06/2017', '2017-01-16', '', '2017-01-16', '2017-06-06', 1760000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:43:57', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(304, 'PS.HW', '08.10', '08.10.4/PS.HW/06/2017', '2017-01-23', '', '2017-01-23', '2017-06-06', 1680000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:44:22', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(305, 'PS.HW', '08.10', '08.10.5/PS.HW/06/2017', '2017-01-30', '', '2017-01-30', '2017-06-06', 1890000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:44:55', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(306, 'PS.HW', '08.10', '08.10.6/PS.HW/06/2017', '2017-02-06', '', '2017-02-06', '2017-06-06', 1660000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:45:24', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(307, 'PS.HW', '08.10', '08.10.7/PS.HW/06/2017', '2017-02-13', '', '2017-02-13', '2017-06-06', 1570000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:45:59', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(308, 'PS.HW', '08.10', '08.10.8/PS.HW/06/2017', '2017-02-20', '', '2017-02-20', '2017-06-06', 1668000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:46:30', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(309, 'PS.HW', '08.10', '08.10.9/PS.HW/06/2017', '2017-02-27', '', '2017-02-27', '2017-06-06', 1780000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:46:56', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(310, 'PS.HW', '03.03', '03.03.1/PS.HW/06/2017', '2017-01-26', '', '2017-01-26', '2017-06-06', 5900000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:57:37', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(311, 'PS.HW', '03.03', '03.03.2/PS.HW/06/2017', '2017-02-23', '', '2017-02-23', '2017-06-06', 5890000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:58:09', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(312, 'PS.HW', '04.13', '04.13.1/PS.HW/06/2017', '2017-01-23', '', '2017-01-23', '2017-06-06', 1800000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:59:14', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(313, 'PS.HW', '04.13', '04.13.2/PS.HW/06/2017', '2017-02-27', '', '2017-02-27', '2017-06-06', 1890000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 11:59:51', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(314, 'PS.HW', '09.09', '09.09.1/PS.HW/06/2017', '2017-01-30', '', '2017-01-30', '2017-06-07', 1700000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 12:00:36', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(315, 'PS.HW', '09.09', '09.09.2/PS.HW/06/2017', '2017-02-27', '', '2017-02-27', '2017-06-07', 1680000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 12:01:05', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(316, 'MCK', '01.01', '01.01.2/MCK/06/2017', '2017-01-06', '', '2017-01-06', '2017-06-07', 120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 18:21:14', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(317, 'MCK', '01.01', '01.01.3/MCK/06/2017', '2017-01-13', '', '2017-01-13', '2017-06-07', 100000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 18:21:40', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(318, 'MCK', '01.01', '01.01.4/MCK/06/2017', '2017-01-20', '', '2017-01-20', '2017-06-07', 110000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 18:22:20', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(319, 'MCK', '01.01', '01.01.5/MCK/06/2017', '2017-01-27', '', '2017-01-27', '2017-06-07', 105000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 18:22:46', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(320, 'MCK', '01.01', '01.01.6/MCK/06/2017', '2017-02-03', '', '2017-02-03', '2017-06-07', 120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 18:23:13', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(321, 'MCK', '01.01', '01.01.7/MCK/06/2017', '2017-02-10', '', '2017-02-10', '2017-06-07', 115000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 18:23:49', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(322, 'MCK', '01.01', '01.01.8/MCK/06/2017', '2017-02-17', '', '2017-02-17', '2017-06-07', 118000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 18:24:22', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(323, 'MCK', '01.01', '01.01.9/MCK/06/2017', '2017-02-24', '', '2017-02-24', '2017-06-07', 121000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 18:24:47', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(324, 'MCK', '02.02', '02.02.1/MCK/06/2017', '2017-01-27', '', '2017-01-27', '2017-06-07', 430000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 18:26:05', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(325, 'MCK', '02.02', '02.02.2/MCK/06/2017', '2017-02-24', '', '2017-02-24', '2017-06-07', 445000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 18:26:35', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(326, 'MCK', '03.03', '03.03.1/MCK/06/2017', '2017-01-27', '', '2017-01-27', '2017-06-07', 420000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 18:27:30', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(328, 'SMPH', '01.01', '01.01.2/SMPH/06/2017', '2017-01-13', '', '2017-01-13', '2017-06-07', 120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 18:37:14', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(329, 'SMPH', '01.01', '01.01.3/SMPH/06/2017', '2017-01-20', '', '2017-01-20', '2017-06-07', 115000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 18:37:46', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(330, 'SMPH', '01.01', '01.01.4/SMPH/06/2017', '2017-01-27', '', '2017-01-27', '2017-06-07', 112000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 18:38:15', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(331, 'SMPH', '01.01', '01.01.5/SMPH/06/2017', '2017-02-17', '', '2017-02-17', '2017-06-07', 330000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 18:38:51', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(332, 'PS.U', '05.05', '05.05.3/PS.U/06/2017', '2017-01-09', '', '2017-01-09', '2017-06-07', 1050000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 21:58:21', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(334, 'PS.U', '05.05', '05.05.4/PS.U/06/2017', '2017-01-10', '', '2017-01-10', '2017-06-07', 1100000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:12:05', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(335, 'PS.U', '05.05', '05.05.5/PS.U/06/2017', '2017-01-11', '', '2017-01-11', '2017-06-07', 1020000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:12:31', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(336, 'PS.U', '05.05', '05.05.6/PS.U/06/2017', '2017-01-12', '', '2017-01-12', '2017-06-07', 1030000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:13:55', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(337, 'PS.U', '05.05', '05.05.7/PS.U/06/2017', '2017-01-13', '', '2017-01-13', '2017-06-07', 1050000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:14:35', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(338, 'PS.U', '06.06', '06.06.3/PS.U/06/2017', '2017-01-09', '', '2017-01-09', '2017-06-07', 1115000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:15:31', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(339, 'PS.U', '06.06', '06.06.4/PS.U/06/2017', '2017-01-10', '', '2017-01-10', '2017-06-07', 1120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:16:05', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(340, 'PS.U', '06.06', '06.06.5/PS.U/06/2017', '2017-01-11', '', '2017-01-11', '2017-06-07', 1115000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:16:40', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(341, 'PS.U', '06.06', '06.06.6/PS.U/06/2017', '2017-01-12', '', '2017-01-12', '2017-06-07', 1120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:18:01', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(342, 'PS.U', '06.06', '06.06.7/PS.U/06/2017', '2017-01-13', '', '2017-01-13', '2017-06-07', 1030000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:18:45', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(343, 'PS.U', '07.07', '07.07.3/PS.U/06/2017', '2017-01-09', '', '2017-01-09', '2017-06-07', 1120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:19:24', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(344, 'PS.U', '07.07', '07.07.4/PS.U/06/2017', '2017-01-10', '', '2017-01-10', '2017-06-07', 1030000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:19:54', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(345, 'PS.U', '07.07', '07.07.5/PS.U/06/2017', '2017-01-11', '', '2017-01-11', '2017-06-07', 1121000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:20:30', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(346, 'PS.U', '07.07', '07.07.6/PS.U/06/2017', '2017-01-12', '', '2017-01-12', '2017-06-07', 1115000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:20:57', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(347, 'PS.U', '07.07', '07.07.7/PS.U/06/2017', '2017-01-13', '', '2017-01-13', '2017-06-07', 1030000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:21:25', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(348, 'PS.U', '08.08', '08.08.3/PS.U/06/2017', '2017-01-09', '', '2017-01-09', '2017-06-07', 1030000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:22:03', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(349, 'PS.U', '08.08', '08.08.4/PS.U/06/2017', '2017-01-10', '', '2017-01-10', '2017-06-07', 1120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:22:31', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(350, 'PS.U', '08.08', '08.08.5/PS.U/06/2017', '2017-01-11', '', '2017-01-11', '2017-06-07', 1130000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:24:31', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(351, 'PS.U', '08.08', '08.08.6/PS.U/06/2017', '2017-01-12', '', '2017-01-12', '2017-06-07', 1121000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:25:42', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(352, 'PS.U', '08.08', '08.08.7/PS.U/06/2017', '2017-01-13', '', '2017-01-13', '2017-06-07', 1115000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:26:42', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(353, 'PS.U', '09.09', '09.09.3/PS.U/06/2017', '2017-01-09', '', '2017-01-09', '2017-06-07', 1120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:27:13', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(354, 'PS.U', '09.09', '09.09.4/PS.U/06/2017', '2017-01-10', '', '2017-01-10', '2017-06-07', 1030000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:27:37', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(355, 'PS.U', '09.09', '09.09.5/PS.U/06/2017', '2017-01-11', '', '2017-01-11', '2017-06-07', 1115000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:28:42', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(356, 'PS.U', '09.09', '09.09.6/PS.U/06/2017', '2017-01-12', '', '2017-01-12', '2017-06-07', 1130000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:29:46', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(357, 'PS.U', '09.09', '09.09.7/PS.U/06/2017', '2017-01-13', '', '2017-01-13', '2017-06-07', 1030000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:31:14', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(358, 'PS.U', '08.10', '08.10.3/PS.U/06/2017', '2017-01-09', '', '2017-01-09', '2017-06-07', 1120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:32:12', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(359, 'PS.U', '08.10', '08.10.4/PS.U/06/2017', '2017-01-10', '', '2017-01-10', '2017-06-07', 1124000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:33:14', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(360, 'PS.U', '08.10', '08.10.5/PS.U/06/2017', '2017-01-11', '', '2017-01-11', '2017-06-07', 1130000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:33:51', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(361, 'PS.U', '08.10', '08.10.6/PS.U/06/2017', '2017-01-12', '', '2017-01-12', '2017-06-07', 1124000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:34:32', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(362, 'PS.U', '08.10', '08.10.7/PS.U/06/2017', '2017-01-13', '', '2017-01-13', '2017-06-07', 1130000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:35:12', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(363, 'PS.U', '06.11', '06.11.3/PS.U/06/2017', '2017-01-09', '', '2017-01-09', '2017-06-07', 1120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:36:55', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(364, 'PS.U', '06.11', '06.11.4/PS.U/06/2017', '2017-01-10', '', '2017-01-10', '2017-06-07', 1121000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:37:19', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(365, 'PS.U', '06.11', '06.11.5/PS.U/06/2017', '2017-01-11', '', '2017-01-11', '2017-06-07', 1124000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:37:48', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(366, 'PS.U', '06.11', '06.11.6/PS.U/06/2017', '2017-01-12', '', '2017-01-12', '2017-06-07', 1115000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:40:07', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(367, 'PS.U', '06.11', '06.11.7/PS.U/06/2017', '2017-01-13', '', '2017-01-13', '2017-06-07', 1121000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:40:31', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(368, 'PS.U', '03.12', '03.12.3/PS.U/06/2017', '2017-01-09', '', '2017-01-09', '2017-06-07', 1115000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:41:25', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(369, 'PS.U', '03.12', '03.12.4/PS.U/06/2017', '2017-01-10', '', '2017-01-10', '2017-06-07', 1120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:42:31', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(370, 'PS.U', '03.12', '03.12.5/PS.U/06/2017', '2017-01-11', '', '2017-01-11', '2017-06-07', 1130000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:42:52', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(371, 'PS.U', '03.12', '03.12.6/PS.U/06/2017', '2017-01-12', '', '2017-01-12', '2017-06-07', 1110000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:43:46', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(372, 'PS.U', '03.12', '03.12.7/PS.U/06/2017', '2017-01-13', '', '2017-01-13', '2017-06-07', 1130000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:44:07', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(373, 'PS.U', '04.13', '04.13.3/PS.U/06/2017', '2017-01-09', '', '2017-01-09', '2017-06-07', 1130000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:44:40', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(374, 'PS.U', '04.13', '04.13.4/PS.U/06/2017', '2017-01-10', '', '2017-01-10', '2017-06-07', 1115000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:45:20', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(375, 'PS.U', '04.13', '04.13.5/PS.U/06/2017', '2017-01-11', '', '2017-01-11', '2017-06-07', 1121000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:45:40', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(376, 'PS.U', '04.13', '04.13.6/PS.U/06/2017', '2017-01-12', '', '2017-01-12', '2017-06-07', 1110000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:46:09', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(377, 'PS.U', '04.13', '04.13.7/PS.U/06/2017', '2017-01-13', '', '2017-01-13', '2017-06-07', 1130000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:46:48', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(378, 'PS.U', '04.15', '04.15.3/PS.U/06/2017', '2017-01-09', '', '2017-01-09', '2017-06-07', 1120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:47:42', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(379, 'PS.U', '04.15', '04.15.4/PS.U/06/2017', '2017-01-10', '', '2017-01-10', '2017-06-07', 1115000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:48:07', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(380, 'PS.U', '04.15', '04.15.5/PS.U/06/2017', '2017-01-11', '', '2017-01-11', '2017-06-07', 1130000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:48:26', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(381, 'PS.U', '04.15', '04.15.6/PS.U/06/2017', '2017-01-12', '', '2017-01-12', '2017-06-07', 1115000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:49:05', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(382, 'PS.U', '04.15', '04.15.7/PS.U/06/2017', '2017-01-13', '', '2017-01-13', '2017-06-07', 1120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:49:25', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(383, 'PS.U', '05.16', '05.16.3/PS.U/06/2017', '2017-01-09', '', '2017-01-09', '2017-06-07', 1130000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:50:01', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(384, 'PS.U', '05.16', '05.16.4/PS.U/06/2017', '2017-01-10', '', '2017-01-10', '2017-06-07', 1124000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:50:23', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(385, 'PS.U', '05.16', '05.16.5/PS.U/06/2017', '2017-01-11', '', '2017-01-11', '2017-06-07', 1121000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:50:56', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(386, 'PS.U', '05.16', '05.16.6/PS.U/06/2017', '2017-01-12', '', '2017-01-12', '2017-06-07', 1115000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:51:16', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(387, 'PS.U', '05.16', '05.16.7/PS.U/06/2017', '2017-01-13', '', '2017-01-13', '2017-06-07', 1121000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:51:35', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(388, 'PS.U', '05.17', '05.17.3/PS.U/06/2017', '2017-01-09', '', '2017-01-09', '2017-06-07', 1130000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:52:18', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(389, 'PS.U', '05.17', '05.17.4/PS.U/06/2017', '2017-01-10', '', '2017-01-10', '2017-06-07', 1115000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:52:47', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(390, 'PS.U', '05.17', '05.17.5/PS.U/06/2017', '2017-01-11', '', '2017-01-11', '2017-06-07', 1120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:53:25', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(391, 'PS.U', '05.17', '05.17.6/PS.U/06/2017', '2017-01-12', '', '2017-01-12', '2017-06-07', 1130000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:53:46', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(392, 'PS.U', '05.17', '05.17.7/PS.U/06/2017', '2017-01-13', '', '2017-01-13', '2017-06-07', 1120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:54:14', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(393, 'PS.U', '01.19', '01.19.3/PS.U/06/2017', '2017-01-09', '', '2017-01-09', '2017-06-07', 1120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:54:31', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(394, 'PS.U', '01.19', '01.19.4/PS.U/06/2017', '2017-01-10', '', '2017-01-10', '2017-06-07', 1110000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:55:11', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(395, 'PS.U', '01.19', '01.19.5/PS.U/06/2017', '2017-01-11', '', '2017-01-11', '2017-06-07', 1115000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:55:48', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(396, 'PS.U', '01.19', '01.19.6/PS.U/06/2017', '2017-01-12', '', '2017-01-12', '2017-06-07', 1124000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:56:08', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(397, 'PS.U', '01.19', '01.19.7/PS.U/06/2017', '2017-01-13', '', '2017-01-13', '2017-06-07', 1120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:56:27', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(398, 'PS.U', '04.20', '04.20.3/PS.U/06/2017', '2017-01-09', '', '2017-01-09', '2017-06-07', 1115000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-06 22:57:05', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(399, 'PS.U', '04.20', '04.20.4/PS.U/06/2017', '2017-01-10', '2017-01-10', '2017-01-10', '2017-06-07', 1130000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:52:10', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(400, 'PS.U', '04.20', '04.20.5/PS.U/06/2017', '2017-01-11', '2017-01-11', '2017-01-11', '2017-06-07', 1130000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:52:10', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(401, 'PS.U', '04.20', '04.20.6/PS.U/06/2017', '2017-01-12', '2017-01-12', '2017-01-12', '2017-06-07', 1120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:52:10', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(402, 'PS.U', '04.20', '04.20.7/PS.U/06/2017', '2017-01-13', '2017-01-13', '2017-01-13', '2017-06-07', 1110000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:52:10', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(406, 'PS.U', '02.02', '02.02.22/PS.U/06/2017', '2017-02-28', '2017-02-28', '2017-02-28', '2017-06-12', 30500000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:52:10', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(407, 'PS.U', '22.22', '22.22.1/PS.U/06/2017', '2017-06-10', '2017-06-10', '2017-06-10', '2017-06-12', 2300000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-19 00:52:10', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(408, 'PS.U', '01.01', '01.01.43/PS.U/06/2017', '2017-06-19', '2017-06-19', '2017-06-19', '2017-06-19', 1120000, '', 0, 0, 0, 0, 0, 0, 0, '2017-06-18 19:48:54', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(409, 'PS.U', '09.77', '09.77.1/PS.U/08/2017', '2017-08-29', '2017-08-29', '2017-08-29', '2017-08-29', 6000000, '', 0, 0, 0, 0, 0, 0, 0, '2017-08-28 16:12:19', '2018-02-02 19:02:10', NULL, '2018-02-02 19:02:10', NULL),
	(410, 'PS.U', '01.01', '01.01.44/PS.U/04/2018', '8-4-2018', '8-4-2018', '8-4-2018', '2018-04-08', 5200, '410.png', 0, 2, 2, 2, 2, 2, 0, '2018-04-08 12:38:19', NULL, NULL, NULL, NULL),
	(411, 'PS.U', '01.01', '01.01.45/PS.U/04/2018', '8-4-2018', '8-4-2018', '1-4-2018', '2018-04-08', 5200, '411.png', 0, 2, 2, 2, 2, 2, 0, '2018-04-08 12:38:49', NULL, NULL, NULL, NULL),
	(412, 'PS.U', '01.01', '01.01.46/PS.U/04/2018', '7-4-2018', '11-4-2018', '12-4-2018', '2018-04-08', 5805600, '412.png', 0, 2800, 3000, 2000, 3468, 856, 0, '2018-04-08 12:56:47', NULL, NULL, NULL, NULL),
	(413, 'PS.U', '01.01', '01.01.47/PS.U/04/2018', '5-4-2018', '9-4-2018', '9-4-2018', '2018-04-08', 6493800, '413.png', 0, 6488, 6494, 2000, 455, 846, 0, '2018-04-08 13:03:10', NULL, NULL, NULL, NULL),
	(414, 'PS.U', '01.01', '01.01.48/PS.U/04/2018', '5-4-2018', '9-4-2018', '9-4-2018', '2018-04-08', 6493800, '414.png', 0, 6488, 6494, 2000, 455, 846, 0, '2018-04-08 13:03:20', NULL, NULL, NULL, NULL),
	(415, 'PS.U', '01.01', '01.01.49/PS.U/04/2018', '8-4-2018', '8-4-2018', '8-4-2018', '2018-04-08', 983500, '415.png', 0, 245, 200, 300, 600, 400, 0, '2018-04-08 13:09:23', NULL, NULL, NULL, NULL),
	(416, 'PS.U', '01.01', '01.01.50/PS.U/04/2018', '8-4-2018', '8-4-2018', '8-4-2018', '2018-04-08', 983500, '416.png', 0, 245, 200, 300, 600, 400, 0, '2018-04-08 13:09:34', NULL, NULL, NULL, NULL),
	(417, 'PS.U', '01.01', '01.01.51/PS.U/04/2018', '2018-4-10', '2018-4-10', '2018-4-10', '2018-04-10', 5200, '417.png', 0, 2, 2, 2, 2, 2, 0, '2018-04-10 15:23:51', NULL, NULL, NULL, NULL),
	(418, 'PS.U', '01.01', '01.01.52/PS.U/04/2018', '2018-4-10', '2018-4-10', '2018-4-10', '2018-04-10', 5200, '418.png', 0, 2, 2, 2, 2, 2, 0, '2018-04-10 15:24:01', NULL, NULL, NULL, NULL),
	(419, 'MCK', '01.01', '01.01.10/MCK/04/2018', '10-4-2018', '10-4-2018', '10-4-2018', '2018-04-10', 2000, '419.png', 10, 0, 0, 0, 0, 0, 0, '2018-04-10 16:25:13', NULL, NULL, NULL, NULL),
	(420, 'MCK', '01.01', '01.01.11/MCK/04/2018', '10-4-2018', '10-4-2018', '11-4-2018', '2018-04-10', 2000, '420.png', 10, 0, 0, 0, 0, 0, 0, '2018-04-10 16:25:46', NULL, NULL, NULL, NULL),
	(421, 'SMPH', '01.01', '01.01.5/SMPH/04/2018', '10-4-2018', '10-4-2018', '10-4-2018', '2018-04-10', 15000, '421.png', 0, 0, 0, 10, 0, 0, 10, '2018-04-10 16:26:18', NULL, NULL, NULL, NULL),
	(422, 'SMPH', '01.01', '01.01.6/SMPH/04/2018', '11-4-2018', '11-4-2018', '', '2018-04-11', 3000, '422.png', 0, 0, 0, 2, 0, 0, 2, '2018-04-11 05:27:36', NULL, NULL, NULL, NULL),
	(423, 'SMPH', '01.01', '01.01.7/SMPH/04/2018', '11-4-2018', '11-4-2018', '11-4-2018', '2018-04-11', 7500, '423.png', 0, 0, 0, 5, 0, 0, 5, '2018-04-11 05:31:40', NULL, NULL, NULL, NULL),
	(424, 'MCK', '01.01', '01.01.12/MCK/04/2018', '11-4-2018', '11-4-2018', '12-4-2018', '2018-04-11', 2000, '424.png', 10, 0, 0, 0, 0, 0, 0, '2018-04-11 05:33:43', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `tb_sts` ENABLE KEYS */;

-- membuang struktur untuk table db_emangpas.tb_target
CREATE TABLE IF NOT EXISTS `tb_target` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pasar` varchar(10) NOT NULL,
  `kode_jenis` varchar(20) NOT NULL,
  `tahun` year(4) NOT NULL,
  `jumlah` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_emangpas.tb_target: ~29 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_target` DISABLE KEYS */;
INSERT INTO `tb_target` (`id`, `kode_pasar`, `kode_jenis`, `tahun`, `jumlah`) VALUES
	(1, '02.02', 'PS.U', '2017', 329450000),
	(2, '03.03', 'PS.U', '2017', 425928000),
	(3, '03.12', 'PS.U', '2017', 328000000),
	(4, '04.04', 'PS.U', '2017', 291600000),
	(5, '04.13', 'PS.U', '2017', 318819000),
	(6, '05.05', 'PS.U', '2017', 330750000),
	(7, '06.06', 'PS.U', '2017', 312000000),
	(8, '06.11', 'PS.U', '2017', 281488000),
	(9, '07.07', 'PS.U', '2017', 120000000),
	(10, '08.08', 'PS.U', '2017', 564144000),
	(11, '08.10', 'PS.U', '2017', 18000000),
	(12, '04.15', 'PS.U', '2017', 13000000),
	(13, '05.16', 'PS.U', '2017', 19000000),
	(14, '05.17', 'PS.U', '2017', 83074000),
	(15, '01.19', 'PS.U', '2017', 18800000),
	(16, '04.20', 'PS.U', '2017', 20000000),
	(17, '01.26', 'PS.I', '2017', 60500000),
	(18, '07.21', 'PS.I', '2017', 14400000),
	(19, '01.01', 'PS.U', '2017', 329450000),
	(20, '09.09', 'PS.U', '2017', 270790000),
	(21, '10.10', 'PS.U', '2017', 76650000),
	(22, '03.29', 'PS.I', '2017', 30149000),
	(23, '08.10', 'PS.HW', '2017', 96000000),
	(24, '03.03', 'PS.HW', '2017', 65000000),
	(25, '04.13', 'PS.HW', '2017', 19488000),
	(26, '09.09', 'PS.HW', '2017', 10500000),
	(27, '01.01', 'MCK', '2017', 10500000),
	(28, '02.02', 'MCK', '2017', 10200000),
	(29, '01.01', 'SMPH', '2017', 25000000);
/*!40000 ALTER TABLE `tb_target` ENABLE KEYS */;

-- membuang struktur untuk table db_emangpas.tb_toko
CREATE TABLE IF NOT EXISTS `tb_toko` (
  `id_toko` int(3) NOT NULL AUTO_INCREMENT,
  `kode_pasar` varchar(10) NOT NULL,
  `kode_toko` varchar(10) NOT NULL,
  `nama_pedagang` varchar(30) NOT NULL,
  `alamat_pedagang` varchar(100) NOT NULL,
  `jenis_dagang` varchar(30) NOT NULL,
  `foto_toko` varchar(50) NOT NULL,
  `created_at` varchar(50) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  PRIMARY KEY (`id_toko`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_emangpas.tb_toko: 0 rows
/*!40000 ALTER TABLE `tb_toko` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_toko` ENABLE KEYS */;

-- membuang struktur untuk table db_emangpas.tb_user
CREATE TABLE IF NOT EXISTS `tb_user` (
  `kode_user` varchar(8) NOT NULL DEFAULT '',
  `nama` varchar(25) DEFAULT NULL,
  `nip` varchar(25) NOT NULL DEFAULT '',
  `username` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(7) NOT NULL,
  `bagian` varchar(150) NOT NULL,
  `foto_user` varchar(225) NOT NULL DEFAULT '',
  PRIMARY KEY (`kode_user`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `nip` (`nama`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_emangpas.tb_user: ~6 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` (`kode_user`, `nama`, `nip`, `username`, `password`, `level`, `bagian`, `foto_user`) VALUES
	('psu0101', 'Moch. Safii', '196801191991031005', 'psu0101', '81d56c1f6fd4142cf84440e474f55bdfa41fccd7892733940dfa16217e4e9052', 'petugas', 'bwi', 'http://192.168.43.88/aplikasipasar/images/1.png'),
	('psu0119', 'Faqih Usman', '196903081994031005', 'psu0119', '2c49ce47cb716b2ba7dc66332050ad7e0f7d6ca5eac8573ad735898bd656023b', 'petugas', 'mojopanggung', 'http://192.168.43.88/aplikasipasar/images/2.png'),
	('psu0202', 'Kusno Hadi, S.Sos', '1959011211987121001', 'psu0202', '1df6d8f3fef57533c8c3fd9da823da602894ac22a35fba0166efab056be00305', 'petugas', 'genteng 2', 'http://192.168.43.88/aplikasipasar/images/3.png'),
	('psu0303', 'Ismail', '196102101985031013', 'psu0303', 'c710f489c7ac608e440a8a041b121074ede53cee4a9470d5fbd0cd9ba901563c', 'petugas', 'rogojampi', 'http://192.168.43.88/aplikasipasar/images/4.png'),
	('psu0312', 'Solihin', '196303121985111001', 'psu0312', 'a3f0255619e904066603a852071f3d41c2efa7f565f4a98e5ea406b33f3d93a8', 'petugas', 'gendoh', 'http://192.168.43.88/aplikasipasar/images/4.png'),
	('psu0404', 'Sudarmanto', '196509011990011001', 'psu0404', '060da0fa8d8c71879ad5c96ad4b2de421c4f303984cb37e6c4018868b8723094', 'petugas', 'jajag', 'http://192.168.43.88/aplikasipasar/images/4.png');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;

-- membuang struktur untuk table db_emangpas.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel db_emangpas.users: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `ip_address`, `group_id`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
	(5, '', 1, 'admin', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', NULL, NULL, NULL, NULL, 0, 1533915318, 1, 'Admin', 'Istrator', 'Admin', NULL, NULL, NULL, NULL, NULL),
	(6, '36.82.99.197', 1, 'rahmat', '$2y$10$1uBLjKm8Ip2aSPMSsUt/1.59HJIbl9TvaqmkrJwrXvC/g9i9pStg2', '', '', NULL, NULL, NULL, NULL, 0, 1521869578, 1, 'Rahmat Ramadhan', NULL, NULL, '8573526745', '2018-03-24 06:29:07', '2018-03-30 09:49:26', 5, 5);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
