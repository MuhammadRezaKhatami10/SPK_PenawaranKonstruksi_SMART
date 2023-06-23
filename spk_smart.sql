-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2023 at 04:59 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_smart`
--

-- --------------------------------------------------------

--
-- Table structure for table `smart_admin`
--

CREATE TABLE `smart_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(80) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_admin`
--

INSERT INTO `smart_admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
(1, 'Administrasi', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'Pengguna', 'user', 'ee11cbb19052e40b07aac0ca060c23ee');

-- --------------------------------------------------------

--
-- Table structure for table `smart_alternatif`
--

CREATE TABLE `smart_alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nama_alternatif` varchar(45) NOT NULL,
  `nilai_utility` double NOT NULL,
  `hasil_alternatif` double NOT NULL,
  `ket_alternatif` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_alternatif`
--

INSERT INTO `smart_alternatif` (`id_alternatif`, `nama_alternatif`, `nilai_utility`, `hasil_alternatif`, `ket_alternatif`) VALUES
(9, 'CV.Amanda Prima Jaya', 0, 64.25, 'Layak'),
(10, 'CV.Multi Cipta Kencana', 0, 63.5, 'Layak'),
(11, 'CV. Mutiara Timur', 0, 71, 'Layak'),
(12, 'UD Sentosa Mandiri', 0, 57, 'Layak'),
(13, 'PT Harmoni Konstruksi', 0, 32.5, 'Tidak Layak'),
(14, 'CV Berkah Sukses', 0, 63.75, 'Layak'),
(15, 'PT Cahaya Sakti Konstruksi', 0, 37.25, 'Dipertimbangkan'),
(16, 'PT Jaya Mulya Bangunan', 0, 34.25, 'Tidak Layak'),
(17, 'CV Gemilang Abadi', 0, 49, 'Dipertimbangkan'),
(18, 'PT Inti Persada Konstruksi', 0, 50.25, 'Dipertimbangkan'),
(19, 'UD Berlian Konstruksi', 0, 49.5, 'Dipertimbangkan'),
(20, 'PT Bina Karya Sejahtera', 0, 53, 'Dipertimbangkan'),
(21, 'CV Maju Jaya Bangunan', 0, 67.25, 'Layak'),
(22, 'PT Cemerlang Megah Konstruksi', 0, 30.75, 'Tidak Layak'),
(23, 'CV Cahaya Harmoni', 0, 29.25, 'Tidak Layak'),
(24, 'PT Sukses Abadi Konstruksi', 0, 56.5, 'Layak'),
(25, 'UD Berkah Makmur', 0, 27, 'Tidak Layak'),
(26, 'PT Indah Sejahtera Bangunan', 0, 59, 'Layak'),
(27, 'CV Sejahtera Mulya', 0, 54.5, 'Dipertimbangkan'),
(28, 'PT Terang Bahagia Konstruksi', 0, 51.25, 'Dipertimbangkan');

-- --------------------------------------------------------

--
-- Table structure for table `smart_alternatif_kriteria`
--

CREATE TABLE `smart_alternatif_kriteria` (
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai_alternatif_kriteria` double NOT NULL,
  `bobot_alternatif_kriteria` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_alternatif_kriteria`
--

INSERT INTO `smart_alternatif_kriteria` (`id_alternatif`, `id_kriteria`, `nilai_alternatif_kriteria`, `bobot_alternatif_kriteria`) VALUES
(0, 21, 100, 0),
(0, 22, 100, 0),
(0, 23, 100, 0),
(0, 24, 100, 0),
(0, 25, 100, 0),
(0, 26, 100, 0),
(0, 27, 100, 0),
(0, 28, 100, 0),
(0, 29, 100, 0),
(0, 30, 100, 0),
(9, 21, 25, 3),
(9, 22, 100, 11),
(9, 23, 100, 9),
(9, 24, 100, 9),
(9, 25, 50, 5),
(9, 26, 100, 10),
(9, 27, 0, 0),
(9, 28, 75, 8.25),
(9, 29, 75, 6.75),
(9, 30, 25, 2.25),
(10, 21, 0, 0),
(10, 22, 75, 8.25),
(10, 23, 75, 6.75),
(10, 24, 100, 9),
(10, 25, 75, 7.5),
(10, 26, 100, 10),
(10, 27, 75, 7.5),
(10, 28, 50, 5.5),
(10, 29, 75, 6.75),
(10, 30, 25, 2.25),
(11, 21, 100, 12),
(11, 22, 75, 8.25),
(11, 23, 100, 9),
(11, 24, 0, 0),
(11, 25, 50, 5),
(11, 26, 100, 10),
(11, 27, 100, 10),
(11, 28, 50, 5.5),
(11, 29, 50, 4.5),
(11, 30, 75, 6.75),
(12, 21, 25, 3),
(12, 22, 50, 5.5),
(12, 23, 50, 4.5),
(12, 24, 100, 9),
(12, 25, 100, 10),
(12, 26, 50, 5),
(12, 27, 0, 0),
(12, 28, 100, 11),
(12, 29, 100, 9),
(12, 30, 0, 0),
(13, 21, 75, 9),
(13, 22, 0, 0),
(13, 23, 75, 6.75),
(13, 24, 50, 4.5),
(13, 25, 0, 0),
(13, 26, 25, 2.5),
(13, 27, 25, 2.5),
(13, 28, 25, 2.75),
(13, 29, 25, 2.25),
(13, 30, 25, 2.25),
(14, 21, 100, 12),
(14, 22, 25, 2.75),
(14, 23, 100, 9),
(14, 24, 100, 9),
(14, 25, 0, 0),
(14, 26, 75, 7.5),
(14, 27, 100, 10),
(14, 28, 0, 0),
(14, 29, 75, 6.75),
(14, 30, 75, 6.75),
(15, 21, 50, 6),
(15, 22, 0, 0),
(15, 23, 50, 4.5),
(15, 24, 0, 0),
(15, 25, 75, 7.5),
(15, 26, 25, 2.5),
(15, 27, 100, 10),
(15, 28, 0, 0),
(15, 29, 50, 4.5),
(15, 30, 25, 2.25),
(16, 21, 0, 0),
(16, 22, 50, 5.5),
(16, 23, 25, 2.25),
(16, 24, 50, 4.5),
(16, 25, 50, 5),
(16, 26, 25, 2.5),
(16, 27, 50, 5),
(16, 28, 25, 2.75),
(16, 29, 0, 0),
(16, 30, 75, 6.75),
(17, 21, 0, 0),
(17, 22, 100, 11),
(17, 23, 50, 4.5),
(17, 24, 0, 0),
(17, 25, 0, 0),
(17, 26, 100, 10),
(17, 27, 50, 5),
(17, 28, 25, 2.75),
(17, 29, 100, 9),
(17, 30, 75, 6.75),
(18, 21, 25, 3),
(18, 22, 75, 8.25),
(18, 23, 0, 0),
(18, 24, 0, 0),
(18, 25, 75, 7.5),
(18, 26, 25, 2.5),
(18, 27, 50, 5),
(18, 28, 75, 8.25),
(18, 29, 75, 6.75),
(18, 30, 100, 9),
(19, 21, 25, 3),
(19, 22, 25, 2.75),
(19, 23, 50, 4.5),
(19, 24, 0, 0),
(19, 25, 25, 2.5),
(19, 26, 100, 10),
(19, 27, 100, 10),
(19, 28, 50, 5.5),
(19, 29, 100, 9),
(19, 30, 25, 2.25),
(20, 21, 100, 12),
(20, 22, 0, 0),
(20, 23, 75, 6.75),
(20, 24, 25, 2.25),
(20, 25, 100, 10),
(20, 26, 75, 7.5),
(20, 27, 100, 10),
(20, 28, 0, 0),
(20, 29, 0, 0),
(20, 30, 50, 4.5),
(21, 21, 50, 6),
(21, 22, 100, 11),
(21, 23, 100, 9),
(21, 24, 75, 6.75),
(21, 25, 25, 2.5),
(21, 26, 0, 0),
(21, 27, 75, 7.5),
(21, 28, 100, 11),
(21, 29, 100, 9),
(21, 30, 50, 4.5),
(22, 21, 25, 3),
(22, 22, 25, 2.75),
(22, 23, 75, 6.75),
(22, 24, 75, 6.75),
(22, 25, 0, 0),
(22, 26, 25, 2.5),
(22, 27, 0, 0),
(22, 28, 0, 0),
(22, 29, 50, 4.5),
(22, 30, 50, 4.5),
(23, 21, 0, 0),
(23, 22, 0, 0),
(23, 23, 0, 0),
(23, 24, 50, 4.5),
(23, 25, 50, 5),
(23, 26, 100, 10),
(23, 27, 25, 2.5),
(23, 28, 25, 2.75),
(23, 29, 50, 4.5),
(23, 30, 0, 0),
(24, 21, 50, 6),
(24, 22, 50, 5.5),
(24, 23, 25, 2.25),
(24, 24, 50, 4.5),
(24, 25, 50, 5),
(24, 26, 75, 7.5),
(24, 27, 100, 10),
(24, 28, 0, 0),
(24, 29, 75, 6.75),
(24, 30, 100, 9),
(25, 21, 50, 6),
(25, 22, 25, 2.75),
(25, 23, 25, 2.25),
(25, 24, 75, 6.75),
(25, 25, 0, 0),
(25, 26, 0, 0),
(25, 27, 25, 2.5),
(25, 28, 0, 0),
(25, 29, 50, 4.5),
(25, 30, 25, 2.25),
(26, 21, 75, 9),
(26, 22, 100, 11),
(26, 23, 100, 9),
(26, 24, 25, 2.25),
(26, 25, 25, 2.5),
(26, 26, 75, 7.5),
(26, 27, 0, 0),
(26, 28, 100, 11),
(26, 29, 50, 4.5),
(26, 30, 25, 2.25),
(27, 21, 50, 6),
(27, 22, 100, 11),
(27, 23, 0, 0),
(27, 24, 0, 0),
(27, 25, 75, 7.5),
(27, 26, 0, 0),
(27, 27, 100, 10),
(27, 28, 100, 11),
(27, 29, 100, 9),
(27, 30, 0, 0),
(28, 21, 100, 12),
(28, 22, 100, 11),
(28, 23, 75, 6.75),
(28, 24, 100, 9),
(28, 25, 0, 0),
(28, 26, 25, 2.5),
(28, 27, 0, 0),
(28, 28, 50, 5.5),
(28, 29, 25, 2.25),
(28, 30, 25, 2.25);

-- --------------------------------------------------------

--
-- Table structure for table `smart_kriteria`
--

CREATE TABLE `smart_kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nama_kriteria` varchar(45) NOT NULL,
  `bobot_kriteria` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_kriteria`
--

INSERT INTO `smart_kriteria` (`id_kriteria`, `nama_kriteria`, `bobot_kriteria`) VALUES
(21, 'Surat ijin usaha jasa konstruksi(SIUJK)			', 0.12),
(22, 'Surat ijin Tempat usaha(SITU/SIGTU)', 0.11),
(23, 'Tanda Daftar Perusahaan (TDP)', 0.09),
(24, 'Akte Perusahaan', 0.09),
(25, 'Sertifikat Badan ahli(SBU)', 0.1),
(26, 'Kemampuan Dasar', 0.1),
(27, 'Data Peralatan/Perlengkapan', 0.1),
(28, 'Pengalaman Perusahaan', 0.11),
(29, 'Sertifikat Manajemen Mutu', 0.09),
(30, 'Harga', 0.09);

-- --------------------------------------------------------

--
-- Table structure for table `smart_sub_kriteria`
--

CREATE TABLE `smart_sub_kriteria` (
  `id_sub_kriteria` int(11) NOT NULL,
  `nama_sub_kriteria` varchar(45) NOT NULL,
  `nilai_sub_kriteria` double NOT NULL,
  `id_kriteria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_sub_kriteria`
--

INSERT INTO `smart_sub_kriteria` (`id_sub_kriteria`, `nama_sub_kriteria`, `nilai_sub_kriteria`, `id_kriteria`) VALUES
(39, 'Surat ijin usaha jasa konstruksi(SIUJK)			', 5, 18),
(40, 'Surat ijin Tempat usaha(SITU/SIGTU)', 5, 18),
(41, 'Tanda Daftar Perusahaan (TDP)', 5, 18),
(42, 'Akte Perusahaan			', 4, 18),
(43, 'Sertifikat Badan ahli(SBU)			', 3, 18),
(44, 'Kemampuan Dasar			', 4, 19),
(45, 'Data Peralatan/Perlengkapan			', 5, 19),
(46, 'Pengalaman Perusahaan			', 4, 19),
(47, 'Sertifikat Manajemen Mutu			', 4, 19),
(48, 'Sangat Baik', 100, 21),
(49, 'Baik', 75, 21),
(50, 'Cukup', 50, 21),
(51, 'Buruk', 25, 21),
(52, 'Sangat Buruk', 0, 21),
(53, 'Sangat Baik', 100, 22),
(54, 'Baik', 75, 22),
(55, 'Cukup', 50, 22),
(58, 'Sangat Baik', 100, 23),
(59, 'Baik', 75, 23),
(62, 'Sangat Baik', 100, 24),
(63, 'Baik', 75, 24),
(64, 'Cukup', 50, 24),
(65, 'Buruk', 25, 24),
(66, 'Sangat Buruk', 0, 24),
(67, 'Sangat Baik', 100, 25),
(68, 'Baik', 75, 25),
(69, 'Cukup', 50, 25),
(70, 'Buruk', 25, 25),
(71, 'Sangat Buruk', 0, 25),
(72, 'Sangat Baik', 100, 26),
(73, 'Baik', 75, 26),
(75, 'Cukup', 50, 26),
(76, 'Buruk', 25, 26),
(77, 'Sangat Buruk', 0, 26),
(78, 'Sangat Baik', 100, 27),
(79, 'Baik', 75, 27),
(80, 'Cukup', 50, 27),
(81, 'Buruk', 25, 27),
(82, 'Sangat Buruk', 0, 27),
(83, 'Sangat Baik', 100, 28),
(84, 'Baik', 75, 28),
(85, 'Cukup', 50, 28),
(86, 'Buruk', 25, 28),
(87, 'Sangat Buruk', 0, 28),
(88, 'Sangat Baik', 100, 29),
(89, 'Baik', 75, 29),
(90, 'Cukup', 50, 29),
(91, 'Buruk', 25, 29),
(92, 'Sangat Buruk', 0, 29),
(93, 'Sangat Baik', 100, 30),
(94, 'Baik', 75, 30),
(95, 'Cukup', 50, 30),
(96, 'Buruk', 25, 30),
(97, 'Sangat Buruk', 0, 30),
(99, 'Buruk', 25, 22),
(100, 'Sangat Buruk', 0, 22),
(101, 'Cukup', 50, 23),
(102, 'Buruk', 25, 23),
(103, 'Sangat Buruk', 0, 23);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `smart_admin`
--
ALTER TABLE `smart_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `smart_alternatif`
--
ALTER TABLE `smart_alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `smart_alternatif_kriteria`
--
ALTER TABLE `smart_alternatif_kriteria`
  ADD PRIMARY KEY (`id_alternatif`,`id_kriteria`);

--
-- Indexes for table `smart_kriteria`
--
ALTER TABLE `smart_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `smart_sub_kriteria`
--
ALTER TABLE `smart_sub_kriteria`
  ADD PRIMARY KEY (`id_sub_kriteria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `smart_admin`
--
ALTER TABLE `smart_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `smart_alternatif`
--
ALTER TABLE `smart_alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `smart_kriteria`
--
ALTER TABLE `smart_kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `smart_sub_kriteria`
--
ALTER TABLE `smart_sub_kriteria`
  MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
