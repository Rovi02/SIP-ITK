-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2019 at 03:41 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `table_sipus`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `Kode_buku` int(11) NOT NULL,
  `Buku` varchar(100) NOT NULL,
  `Pengarang` varchar(100) NOT NULL,
  `Penerbit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`Kode_buku`, `Buku`, `Pengarang`, `Penerbit`) VALUES
(1, 'Riset Operasi', 'Ahmad Zulkifli', 'Teknologi Informasi'),
(2, 'Basis Data I', 'Bima', 'Informatika'),
(3, 'Pemrograman Database', 'Abdul Kadir', 'Penerbit Andi'),
(4, 'Rekayasa Perangka Lunak', 'Dimas Saputra', 'Tim Alprog 3 B'),
(5, 'Algoritma Pemrogan 3', 'Pa Syamsul', 'Dosen Alprog 3 SI 2019'),
(6, 'Riset Operasi', 'Ahmad Zulkifli', 'Teknologi Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `Kode_pinjam` varchar(100) NOT NULL,
  `Kode_kembali` varchar(10) DEFAULT NULL,
  `Kode_buku` char(5) DEFAULT NULL,
  `NIM` varchar(10) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`Kode_pinjam`, `Kode_kembali`, `Kode_buku`, `NIM`, `tanggal_pinjam`, `tanggal_kembali`) VALUES
('P2712', 'P2712', '3', '10171003', '2019-05-17', '2019-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `sipus`
--

CREATE TABLE `sipus` (
  `Username` varchar(10) NOT NULL,
  `Nama` varchar(35) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sipus`
--

INSERT INTO `sipus` (`Username`, `Nama`, `Email`, `Password`, `hak_akses`) VALUES
('10171001', 'Ahmad Maulana Fikri', 'maulanafikri99@gmail.com', '12345', 2),
('10171003', 'alya', 'aqwfe', '1234', 2),
('10171010', 'Bestin', 'bestin@gmail.com', '1234', 2),
('10171012', 'Brianto Rovi Harjanto', 'briantorovi17@gmail.com', '12345', 2),
('10171018', 'dimas', 'dimas@gmail.com', '12345', 2),
('10171069', 'SadryDoy', 'sadri99@gmail.com', '1234', 2),
('admin', 'admin', 'admin@gmail.com', 'admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`Kode_buku`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`Kode_pinjam`);

--
-- Indexes for table `sipus`
--
ALTER TABLE `sipus`
  ADD PRIMARY KEY (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `Kode_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
