-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2019 at 12:22 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karyawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_detailjabatan`
--

CREATE TABLE `tb_detailjabatan` (
  `id` int(11) NOT NULL,
  `idjabatan` int(11) NOT NULL,
  `idkaryawan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_jabatan`
--

CREATE TABLE `tb_jabatan` (
  `id` int(11) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `jobdescription` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jabatan`
--

INSERT INTO `tb_jabatan` (`id`, `jabatan`, `jobdescription`) VALUES
(1, 'teknisi', 'teknisi mesin'),
(2, 'marketing', 'marketing iklan sosmed');

-- --------------------------------------------------------

--
-- Table structure for table `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`id`, `name`, `email`, `address`, `phone`) VALUES
(8, 'Hasya', 'hasya@gmail.com', 'Baleendah', '08778888'),
(9, 'Ana', 'ana@gmail.com', 'Baleendah', '08122222'),
(10, 'Anda', 'anda@gmail.com', 'Tucson', '012222'),
(11, 'Juju', 'juju@gmail.com', 'Setiabudi', '087888');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_detailjabatan`
--
ALTER TABLE `tb_detailjabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_detailjabatan`
--
ALTER TABLE `tb_detailjabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
