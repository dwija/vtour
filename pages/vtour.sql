-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 11, 2022 at 09:21 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vtour`
--

-- --------------------------------------------------------

--
-- Table structure for table `gedung`
--

CREATE TABLE `gedung` (
  `id` int(11) NOT NULL,
  `gedung` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gedung`
--

INSERT INTO `gedung` (`id`, `gedung`) VALUES
(1, 'Fransiskus Assisi'),
(2, 'Lorenzo Brindisi'),
(3, 'Padre Pio '),
(4, 'Santa Clara');

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `id` int(11) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `id_gedung` int(3) NOT NULL,
  `lantai` int(2) NOT NULL,
  `keterangan` varchar(256) NOT NULL,
  `image` varchar(256) DEFAULT 'book-default-cover.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`id`, `judul`, `id_gedung`, `lantai`, `keterangan`, `image`) VALUES
(1, 'Area Parkir Lantai 1', 1, 1, 'Area Parkir Lantai 1', 'https://dl.dkampus.com/vtour/images/111.jpg'),
(2, 'Area Parkir Lantai 2', 1, 2, 'Area Parkir Lantai 2', 'https://dl.dkampus.com/vtour/images/121.jpg'),
(3, 'Lantai 3', 1, 3, 'Lantai 3', 'https://dl.dkampus.com/vtour/images/131.jpg'),
(4, 'LANTAI 3 RUANG DIREKTUR EKSEKUTIP YAYASAN WD', 1, 3, 'Lantai 3 Ruang Direktur Eksekutip Yayasan Wd', 'https://dl.dkampus.com/vtour/images/132.jpg'),
(5, 'LANTAI 3 RUANGAN KETUA YAYASAN WD', 1, 3, 'Lantai 3 Ruangan Ketua Yayasan Wd', 'https://dl.dkampus.com/vtour/images/133.jpg'),
(6, 'LANTAI 3 RUANG REKTOR UWDP', 1, 3, 'Lantai 3 Ruang Rektor Uwdp', 'https://dl.dkampus.com/vtour/images/134.jpg'),
(7, 'LANTAI 3 WAREK 1 UWDP', 1, 3, 'Lantai 3 Warek 1 Uwdp', 'https://dl.dkampus.com/vtour/images/135.jpg'),
(8, 'LANTAI 3 WAREK 2 UWDP', 1, 3, 'Lantai 3 Warek 2 Uwdp', 'https://dl.dkampus.com/vtour/images/136.jpg'),
(9, 'LANTAI 3 RUANGAN BENDAHARA', 1, 3, 'Lantai 3 Ruangan Bendahara', 'https://dl.dkampus.com/vtour/images/137.jpg'),
(10, 'LANTAI 3 RUANG RAPAT 1', 1, 3, 'Lantai 3 Ruang Rapat 1', 'https://dl.dkampus.com/vtour/images/138.jpg'),
(11, 'LANTAI 3 RUANG RAPAT 2', 1, 3, 'Lantai 3 Ruang Rapat 2', 'https://dl.dkampus.com/vtour/images/139.jpg'),
(12, 'LANTAI 3 TECHNICAL ROOM', 1, 3, 'Lantai 3 Technical Room', 'https://dl.dkampus.com/vtour/images/1310.jpg'),
(13, 'LANTAI 4', 1, 4, 'Lantai 4', 'https://dl.dkampus.com/vtour/images/140.jpg'),
(14, 'LANTAI 4 RUANG KELAS F4 1', 1, 4, 'Lantai 4 Ruang Kelas F4 1', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(15, 'LANTAI 4 RUANG KELAS F4 2', 1, 4, 'Lantai 4 Ruang Kelas F4 2', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(16, 'LANTAI 4 RUANG KELAS F4 3', 1, 4, 'Lantai 4 Ruang Kelas F4 3', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(17, 'LANTAI 4 RUANG KELAS F4 4', 1, 4, 'Lantai 4 Ruang Kelas F4 4', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(18, 'LANTAI 4 RUANG KELAS F4 5', 1, 4, 'Lantai 4 Ruang Kelas F4 5', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(19, 'LANTAI 4 RUANG KELAS F4 6', 1, 4, 'Lantai 4 Ruang Kelas F4 6', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(20, 'LANTAI 5', 1, 5, 'Lantai 5', 'https://dl.dkampus.com/vtour/images/150.jpg'),
(21, 'LANTAI 5 RUANG KELAS F5 1', 1, 5, 'Lantai 5 Ruang Kelas F5 1', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(22, 'LANTAI 5 RUANG KELAS F5 2', 1, 5, 'Lantai 5 Ruang Kelas F5 2', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(23, 'LANTAI 5 RUANG KELAS F5 3', 1, 5, 'Lantai 5 Ruang Kelas F5 3', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(24, 'LANTAI 5 RUANG KELAS F5 4', 1, 5, 'Lantai 5 Ruang Kelas F5 4', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(25, 'LANTAI 5 RUANG DOSEN FEB', 1, 5, 'Lantai 5 Ruang Dosen Feb', 'https://dl.dkampus.com/vtour/images/155.jpg'),
(26, 'LANTAI 5 SENAT FEB', 1, 5, 'Lantai 5 Senat Feb', 'https://dl.dkampus.com/vtour/images/156.jpg'),
(27, 'LANTAI 6', 1, 6, 'Lantai 6', 'https://dl.dkampus.com/vtour/images/160.jpg'),
(28, 'LANTAI 6 COWORKING SPACE 1', 1, 6, 'Lantai 6 Coworking Space 1', 'https://dl.dkampus.com/vtour/images/161.jpg'),
(29, 'LANTAI 6 COWORKING SPACE 2', 1, 6, 'Lantai 6 Coworking Space 2', 'https://dl.dkampus.com/vtour/images/162.jpg'),
(30, 'LANTAI 7', 1, 7, 'Lantai 7', 'https://dl.dkampus.com/vtour/images/170.jpg'),
(31, 'LANTAI 7 RUANG KELAS F7 1', 1, 7, 'Lantai 7 Ruang Kelas F7 1', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(32, 'LANTAI 7 RUANG KELAS F7 2', 1, 7, 'Lantai 7 Ruang Kelas F7 2', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(33, 'LANTAI 7 RUANG KELAS F7 3', 1, 7, 'Lantai 7 Ruang Kelas F7 3', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(34, 'LANTAI 7 RUANG KELAS F7 4', 1, 7, 'Lantai 7 Ruang Kelas F7 4', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(35, 'LANTAI 7 RUANG KELAS F7 5', 1, 7, 'Lantai 7 Ruang Kelas F7 5', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(36, 'LANTAI 7 RUANG KELAS F7 6', 1, 7, 'Lantai 7 Ruang Kelas F7 6', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(37, 'LANTAI 8', 1, 8, 'Lantai 8', 'https://dl.dkampus.com/vtour/images/180.jpg'),
(38, 'LANTAI 8 RUANG KELAS F8 1', 1, 8, 'Lantai 8 Ruang Kelas F8 1', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(39, 'LANTAI 8 RUANG KELAS F8 2', 1, 8, 'Lantai 8 Ruang Kelas F8 2', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(40, 'LANTAI 8 RUANG KELAS F8 3', 1, 8, 'Lantai 8 Ruang Kelas F8 3', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(41, 'LANTAI 8 RUANG KELAS F8 4', 1, 8, 'Lantai 8 Ruang Kelas F8 4', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(42, 'LANTAI 8 RUANG KELAS F8 5', 1, 8, 'Lantai 8 Ruang Kelas F8 5', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(43, 'LANTAI 8 RUANG KELAS F8 6', 1, 8, 'Lantai 8 Ruang Kelas F8 6', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(44, 'LANTAI 9', 1, 9, 'Lantai 9', 'https://dl.dkampus.com/vtour/images/190.jpg'),
(45, 'LANTAI 9 RUANG KELAS F9 1', 1, 9, 'Lantai 9 Ruang Kelas F9 1', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(46, 'LANTAI 9 RUANG KELAS F9 2', 1, 9, 'Lantai 9 Ruang Kelas F9 2', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(47, 'LANTAI 9 RUANG KELAS F9 3', 1, 9, 'Lantai 9 Ruang Kelas F9 3', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(48, 'LANTAI 9 RUANG KELAS F9 4', 1, 9, 'Lantai 9 Ruang Kelas F9 4', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(49, 'LANTAI 9 RUANG KELAS F9 5', 1, 9, 'Lantai 9 Ruang Kelas F9 5', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(50, 'LANTAI 9 RUANG KELAS F9 6', 1, 9, 'Lantai 9 Ruang Kelas F9 6', 'https://dl.dkampus.com/vtour/images/141.jpg'),
(51, 'LANTAI 10', 1, 10, 'Lantai 10', 'https://dl.dkampus.com/vtour/images/1100.jpg'),
(52, 'LANTAI 10 FUNCTION HALL', 1, 10, 'Lantai 10 Function Hall', 'https://dl.dkampus.com/vtour/images/1101.jpg'),
(53, 'AREA PARKIR MOTOR ', 2, 1, 'Area Parkir Motor ', 'https://dl.dkampus.com/vtour/images/211.jpg'),
(54, 'LANTAI 2 RUANG PENDAFTARAN MAHASISWA BARU', 2, 2, 'Lantai 2 Ruang Pendaftaran Mahasiswa Baru', 'https://dl.dkampus.com/vtour/images/221.jpg'),
(55, 'LANTAI 2 BAGIAN KEUANGAN UWDP', 2, 2, 'Lantai 2 Bagian Keuangan Uwdp', 'https://dl.dkampus.com/vtour/images/222.jpg'),
(56, 'LANTAI 3 RUANG KELAS 51 ', 2, 3, 'Lantai 3 Ruang Kelas 51 ', 'https://dl.dkampus.com/vtour/images/231.jpg'),
(57, 'LANTAI 3 RUANG KELAS 52', 2, 3, 'Lantai 3 Ruang Kelas 52', 'https://dl.dkampus.com/vtour/images/231.jpg'),
(58, 'LANTAI 3 RUANG KELAS 53', 2, 3, 'Lantai 3 Ruang Kelas 53', 'https://dl.dkampus.com/vtour/images/231.jpg'),
(59, 'LANTAI 3 RUANG KELAS 54', 2, 3, 'Lantai 3 Ruang Kelas 54', 'https://dl.dkampus.com/vtour/images/231.jpg'),
(60, 'LANTAI 4 RUANG KELAS 55 ', 2, 4, 'Lantai 4 Ruang Kelas 55 ', 'https://dl.dkampus.com/vtour/images/231.jpg'),
(61, 'LANTAI 4 RUANG KELAS 56', 2, 4, 'Lantai 4 Ruang Kelas 56', 'https://dl.dkampus.com/vtour/images/231.jpg'),
(62, 'LANTAI 4 RUANG KELAS 57', 2, 4, 'Lantai 4 Ruang Kelas 57', 'https://dl.dkampus.com/vtour/images/231.jpg'),
(63, 'LANTAI 4 RUANG KELAS 58', 2, 4, 'Lantai 4 Ruang Kelas 58', 'https://dl.dkampus.com/vtour/images/231.jpg'),
(64, 'LANTAI 5 PERPUSTAKAAN UWDP ', 2, 5, 'Lantai 5 Perpustakaan Uwdp ', 'https://dl.dkampus.com/vtour/images/251.jpg'),
(65, 'LANTAI 5 PERPUSTAKAAN UWDP (2)', 2, 5, 'Lantai 5 Perpustakaan Uwdp (2)', 'https://dl.dkampus.com/vtour/images/252.jpg'),
(66, 'LANTAI 6 LABORATORIUM FTI UWDP', 2, 6, 'Lantai 6 Laboratorium Fti Uwdp', 'https://dl.dkampus.com/vtour/images/261.jpg'),
(67, 'LANTAI 6 LABORATORIUM FTI UWDP (2)', 2, 6, 'Lantai 6 Laboratorium Fti Uwdp (2)', 'https://dl.dkampus.com/vtour/images/262.jpg'),
(68, 'AREA PARKIR GEDUNG PADRE PIO', 3, 1, 'Area Parkir Gedung Padre Pio', 'https://dl.dkampus.com/vtour/images/311.jpg'),
(69, 'AREA PARKIR ', 3, 1, 'Area Parkir ', 'https://dl.dkampus.com/vtour/images/312.jpg'),
(70, 'LANTAI 2 RUANG BIRO HUMAS DAN PROMOSI ', 3, 2, 'Lantai 2 Ruang Biro Humas Dan Promosi ', 'https://dl.dkampus.com/vtour/images/321.jpg'),
(71, 'LANTAI 2 RUANG GALERI INVESTASI', 3, 2, 'Lantai 2 Ruang Galeri Investasi', 'https://dl.dkampus.com/vtour/images/322.jpg'),
(72, 'LANTAI 2 RUANG LEMBAGA PUSAT KARIR', 3, 2, 'Lantai 2 Ruang Lembaga Pusat Karir', 'https://dl.dkampus.com/vtour/images/323.jpg'),
(73, 'LANTAI 2 RUANGAN LPM', 3, 2, 'Lantai 2 Ruangan Lpm', 'https://dl.dkampus.com/vtour/images/324.jpg'),
(74, 'LANTAI 3 RUANG DEKAN FEB', 3, 3, 'Lantai 3 Ruang Dekan Feb', 'https://dl.dkampus.com/vtour/images/331.jpg'),
(75, 'LANTAI 3 KAPRODI MANAJEMAN PERKANTORAN, BAHASA INGGRIS FEB', 3, 3, 'Lantai 3 Kaprodi Manajeman Perkantoran, Bahasa Inggris Feb', 'https://dl.dkampus.com/vtour/images/332.jpg'),
(76, 'LANTAI 3 RUANG DEKAN FTI', 3, 3, 'Lantai 3 Ruang Dekan Fti', 'https://dl.dkampus.com/vtour/images/333.jpg'),
(77, 'LANTAI 3 RUANG KAPRODI SI, INFORMATIKA, BISNIS DIGITAS FTI', 3, 3, 'Lantai 3 Ruang Kaprodi Si, Informatika, Bisnis Digitas Fti', 'https://dl.dkampus.com/vtour/images/334.jpg'),
(78, 'LANTAI 3 RUANG SEKRETARIS SI, INFORMATIKA, BISNIS DIGITAS FTI', 3, 3, 'Lantai 3 Ruang Sekretaris Si, Informatika, Bisnis Digitas Fti', 'https://dl.dkampus.com/vtour/images/335.jpg'),
(79, 'LANTAI 4 RUANG KELAS FTI 61', 3, 4, 'Lantai 4 Ruang Kelas Fti 61', 'https://dl.dkampus.com/vtour/images/341.jpg'),
(80, 'LANTAI 4 RUANG KELAS FTI 62', 3, 4, 'Lantai 4 Ruang Kelas Fti 62', 'https://dl.dkampus.com/vtour/images/341.jpg'),
(81, 'LANTAI 4 RUANG KELAS FTI 63', 3, 4, 'Lantai 4 Ruang Kelas Fti 63', 'https://dl.dkampus.com/vtour/images/341.jpg'),
(82, 'RUANG SIDANG FTI', 3, 5, 'Ruang Sidang Fti', 'https://dl.dkampus.com/vtour/images/351.jpg'),
(83, 'LANTAI 1 LABORATORIUM CIBYR FEB UWDP', 4, 1, 'Lantai 1 Laboratorium Cibyr Feb Uwdp', 'https://dl.dkampus.com/vtour/images/411.jpg'),
(84, 'LANTAI 2 SEKRETARIAT UWDP', 4, 2, 'Lantai 2 Sekretariat Uwdp', 'https://dl.dkampus.com/vtour/images/421.jpg'),
(85, 'LANTAI 3 RUANG SIDANG FEB 1 ', 4, 3, 'Lantai 3 Ruang Sidang Feb 1 ', 'https://dl.dkampus.com/vtour/images/431.jpg'),
(86, 'LANTAI 3 RUANG SIDANG FEB 2', 4, 3, 'Lantai 3 Ruang Sidang Feb 2', 'https://dl.dkampus.com/vtour/images/431.jpg'),
(87, 'LANTAI 3 RUANG SIDANG FEB 3', 4, 3, 'Lantai 3 Ruang Sidang Feb 3', 'https://dl.dkampus.com/vtour/images/431.jpg'),
(88, 'LANTAI 4 RUANG KELAS KELAS FEB 44', 4, 4, 'Lantai 4 Ruang Kelas Kelas Feb 44', 'https://dl.dkampus.com/vtour/images/441.jpg'),
(89, 'LANTAI 4 RUANG KELAS KELAS FEB 45', 4, 4, 'Lantai 4 Ruang Kelas Kelas Feb 45', 'https://dl.dkampus.com/vtour/images/441.jpg'),
(90, 'LANTAI 4 RUANG KELAS KELAS FEB 46', 4, 4, 'Lantai 4 Ruang Kelas Kelas Feb 46', 'https://dl.dkampus.com/vtour/images/441.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gedung`
--
ALTER TABLE `gedung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gedung`
--
ALTER TABLE `gedung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
