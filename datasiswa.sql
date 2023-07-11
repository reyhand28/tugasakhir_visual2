-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 07:04 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `hubungan`
--

CREATE TABLE `hubungan` (
  `id_hub` int(10) NOT NULL,
  `status_hub_anak` enum('kandung','tidak_kandung') NOT NULL,
  `keterangan` enum('ayah','ibu','wali') NOT NULL,
  `status_ortu` enum('hidup','alm') NOT NULL,
  `idsiswa` int(10) NOT NULL,
  `id_ortu` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ortu`
--

CREATE TABLE `ortu` (
  `id_ortu` int(10) NOT NULL,
  `nik` int(16) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `pendidikan` varchar(30) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `telp` int(12) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jk` enum('p','l') NOT NULL,
  `agama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `poin`
--

CREATE TABLE `poin` (
  `id_poin` int(10) NOT NULL,
  `nama_poin` varchar(50) NOT NULL,
  `bobot` int(30) NOT NULL,
  `jenis` enum('pretasi','pelanggaran') NOT NULL,
  `status` enum('true','false') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id_semester` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `semester` varchar(20) NOT NULL,
  `tingkat_kelas` varchar(20) NOT NULL,
  `idsiswa` int(10) NOT NULL,
  `id_poin` int(10) NOT NULL,
  `id_walikelas` int(10) NOT NULL,
  `id_ortu` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `idsiswa` int(10) NOT NULL,
  `nis` int(10) NOT NULL,
  `nisn` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nik` int(16) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('p','l') NOT NULL,
  `tingkat_kelas` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `telp` int(12) NOT NULL,
  `hp` int(12) NOT NULL,
  `status` enum('aktif','nonaktif') NOT NULL,
  `id_ortu` int(10) NOT NULL,
  `id_walikelas` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `status` enum('siswa','walikelas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `walikelas`
--

CREATE TABLE `walikelas` (
  `id_walikelas` int(10) NOT NULL,
  `nik` int(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jk` enum('p','l') NOT NULL,
  `pendidikan` varchar(30) NOT NULL,
  `telp` int(20) NOT NULL,
  `matpel` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hubungan`
--
ALTER TABLE `hubungan`
  ADD PRIMARY KEY (`id_hub`),
  ADD UNIQUE KEY `id_hub` (`id_hub`,`idsiswa`,`id_ortu`),
  ADD KEY `idsiswa` (`idsiswa`),
  ADD KEY `id_ortu` (`id_ortu`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD UNIQUE KEY `id_kelas` (`id_kelas`);
ALTER TABLE `kelas` ADD FULLTEXT KEY `nama` (`nama`);
ALTER TABLE `kelas` ADD FULLTEXT KEY `jurusan` (`jurusan`);

--
-- Indexes for table `ortu`
--
ALTER TABLE `ortu`
  ADD PRIMARY KEY (`id_ortu`),
  ADD UNIQUE KEY `id_ortu` (`id_ortu`),
  ADD KEY `jk` (`jk`);
ALTER TABLE `ortu` ADD FULLTEXT KEY `agama` (`agama`);
ALTER TABLE `ortu` ADD FULLTEXT KEY `alamat` (`alamat`);
ALTER TABLE `ortu` ADD FULLTEXT KEY `pekerjaan` (`pekerjaan`);
ALTER TABLE `ortu` ADD FULLTEXT KEY `pendidikan` (`pendidikan`);
ALTER TABLE `ortu` ADD FULLTEXT KEY `nama` (`nama`);

--
-- Indexes for table `poin`
--
ALTER TABLE `poin`
  ADD PRIMARY KEY (`id_poin`),
  ADD UNIQUE KEY `id_poin` (`id_poin`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id_semester`),
  ADD UNIQUE KEY `id_semester` (`id_semester`,`idsiswa`,`id_poin`,`id_walikelas`,`id_ortu`,`id_kelas`),
  ADD KEY `id_walikelas` (`id_walikelas`),
  ADD KEY `idsiswa` (`idsiswa`),
  ADD KEY `id_ortu` (`id_ortu`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_poin` (`id_poin`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`idsiswa`),
  ADD UNIQUE KEY `idsiswa` (`idsiswa`,`id_ortu`,`id_walikelas`),
  ADD KEY `id_walikelas` (`id_walikelas`),
  ADD KEY `id_ortu` (`id_ortu`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `id_user` (`id_user`),
  ADD KEY `status` (`status`);
ALTER TABLE `user` ADD FULLTEXT KEY `password` (`password`);
ALTER TABLE `user` ADD FULLTEXT KEY `username` (`username`);

--
-- Indexes for table `walikelas`
--
ALTER TABLE `walikelas`
  ADD PRIMARY KEY (`id_walikelas`),
  ADD UNIQUE KEY `id_walikelas` (`id_walikelas`),
  ADD KEY `jk` (`jk`);
ALTER TABLE `walikelas` ADD FULLTEXT KEY `matpel` (`matpel`);
ALTER TABLE `walikelas` ADD FULLTEXT KEY `pendidikan` (`pendidikan`);
ALTER TABLE `walikelas` ADD FULLTEXT KEY `nama` (`nama`);
ALTER TABLE `walikelas` ADD FULLTEXT KEY `alamat` (`alamat`);
ALTER TABLE `walikelas` ADD FULLTEXT KEY `pendidikan_2` (`pendidikan`);
ALTER TABLE `walikelas` ADD FULLTEXT KEY `nama_2` (`nama`);
ALTER TABLE `walikelas` ADD FULLTEXT KEY `matpel_2` (`matpel`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hubungan`
--
ALTER TABLE `hubungan`
  ADD CONSTRAINT `hubungan_ibfk_1` FOREIGN KEY (`idsiswa`) REFERENCES `siswa` (`idsiswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hubungan_ibfk_2` FOREIGN KEY (`id_ortu`) REFERENCES `ortu` (`id_ortu`);

--
-- Constraints for table `semester`
--
ALTER TABLE `semester`
  ADD CONSTRAINT `semester_ibfk_1` FOREIGN KEY (`id_walikelas`) REFERENCES `walikelas` (`id_walikelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `semester_ibfk_2` FOREIGN KEY (`idsiswa`) REFERENCES `siswa` (`idsiswa`),
  ADD CONSTRAINT `semester_ibfk_3` FOREIGN KEY (`id_ortu`) REFERENCES `ortu` (`id_ortu`),
  ADD CONSTRAINT `semester_ibfk_4` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`),
  ADD CONSTRAINT `semester_ibfk_5` FOREIGN KEY (`id_poin`) REFERENCES `poin` (`id_poin`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_walikelas`) REFERENCES `walikelas` (`id_walikelas`),
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_ortu`) REFERENCES `ortu` (`id_ortu`);

--
-- Constraints for table `walikelas`
--
ALTER TABLE `walikelas`
  ADD CONSTRAINT `walikelas_ibfk_1` FOREIGN KEY (`id_walikelas`) REFERENCES `semester` (`id_walikelas`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
