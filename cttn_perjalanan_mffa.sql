-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2023 at 02:30 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cttn_perjalanan_mffa`
--

-- --------------------------------------------------------

--
-- Table structure for table `cttn_perjalanan`
--

CREATE TABLE `cttn_perjalanan` (
  `id_history` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `id_lokasi` int(11) NOT NULL,
  `tgl_perjalanan` date NOT NULL,
  `jam_perjalanan` time NOT NULL,
  `suhu` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id_lokasi` int(11) NOT NULL,
  `nama_lokasi` varchar(100) NOT NULL,
  `alamat_lokasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id_lokasi`, `nama_lokasi`, `alamat_lokasi`) VALUES
(2, 'EL Manuk', 'Bogor Selatan'),
(6, 'asdasd', 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `nik` varchar(16) NOT NULL,
  `nama_lengkap` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`nik`, `nama_lengkap`, `username`, `password`, `alamat`, `no_telp`, `tgl_lahir`, `jenis_kelamin`) VALUES
('', '', '', '', '', '', '0000-00-00', ''),
('1231313122', 'Hermanto Santoso', 'herto', '1234', 'Jakarta', '0812312312312', '2023-08-24', 'Laki - Laki'),
('2502021200203212', 'Kholis', 'lishol', '25d55ad283aa400af464c76d713c07ad', 'Jakarta Selatan', '086541545487', '2023-10-04', 'pria');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cttn_perjalanan`
--
ALTER TABLE `cttn_perjalanan`
  ADD PRIMARY KEY (`id_history`),
  ADD KEY `nik` (`nik`),
  ADD KEY `id_lokasi` (`id_lokasi`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`nik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cttn_perjalanan`
--
ALTER TABLE `cttn_perjalanan`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id_lokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cttn_perjalanan`
--
ALTER TABLE `cttn_perjalanan`
  ADD CONSTRAINT `cttn_perjalanan_ibfk_2` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cttn_perjalanan_ibfk_3` FOREIGN KEY (`nik`) REFERENCES `pengguna` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
