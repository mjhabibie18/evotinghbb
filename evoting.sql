-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2019 at 10:44 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evoting`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `nim` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `akses` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`nim`, `password`, `akses`) VALUES
('15107001', '123', 'a'),
('15107002', '123456', 'u'),
('15107027', '12345', 'u'),
('15107035', '12345', 'u'),
('15107045', '12345', 'u'),
('15107051', '12345', 'u'),
('15107062', '123', 'a'),
('15107068', 'randy', 'u'),
('15107070', 'dani', 'u');

-- --------------------------------------------------------

--
-- Table structure for table `detail_user`
--

CREATE TABLE `detail_user` (
  `nim` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `angkatan` varchar(10) NOT NULL,
  `status` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_user`
--

INSERT INTO `detail_user` (`nim`, `nama`, `no_telp`, `jurusan`, `angkatan`, `status`) VALUES
('15107001', 'M J Habibie', '081898889889', 'Teknik Informatika', '2014', 'y'),
('15107002', 'Ganda Sutedja', 'null', 'null', '2015', 'n'),
('15107027', 'Adena Jaya D', 'null', 'null', '2015', 'n'),
('15107035', 'Yohanes Septada M', 'null', 'null', '2015', 'n'),
('15107045', 'Kridho Cokro Bagaskoro', 'null', 'null', '2015', 'n'),
('15107051', 'M Ilham Sidqi', 'null', 'null', '2015', 'n'),
('15107062', 'Muhammad Jurnalies Habibie', 'null', 'null', '2015', 'n'),
('15107068', 'Randy', 'null', 'null', '2015', 'y'),
('15107070', 'Dani', 'null', 'null', '2015', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_voting`
--

CREATE TABLE `hasil_voting` (
  `nim` varchar(50) NOT NULL,
  `no_pilihan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_voting`
--

INSERT INTO `hasil_voting` (`nim`, `no_pilihan`) VALUES
('15107069', 1),
('15107070', 2),
('15107001', 3),
('15107070', 2),
('15107068', 3);

-- --------------------------------------------------------

--
-- Table structure for table `image_kadidat`
--

CREATE TABLE `image_kadidat` (
  `nim` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_kadidat`
--

INSERT INTO `image_kadidat` (`nim`, `name`, `type`) VALUES
('1415323031', 'file_1548840671.jpg', 'image/jpeg'),
('1415323062', 'file_1548840813.jpg', 'image/jpeg'),
('15107069', 'file_1548685897.jpg', 'image/jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `image_user`
--

CREATE TABLE `image_user` (
  `nim` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_user`
--

INSERT INTO `image_user` (`nim`, `name`, `type`) VALUES
('15107001', 'file_1482498495.jpg', 'image/jpeg'),
('15107002', '1.jpg', 'jpeg'),
('15107027', '1.jpg', 'jpeg'),
('15107035', '1.jpg', 'jpeg'),
('15107045', '1.jpg', 'jpeg'),
('15107051', '1.jpg', 'jpeg'),
('15107062', '1.jpg', 'jpeg'),
('15107068', '1.jpg', 'jpeg'),
('15107069', 'file_1548685989.jpg', 'image/jpeg'),
('15107070', '1.jpg', 'jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `kandidat`
--

CREATE TABLE `kandidat` (
  `nim` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `no_kandidat` int(5) NOT NULL,
  `jabatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kandidat`
--

INSERT INTO `kandidat` (`nim`, `nama`, `jurusan`, `no_kandidat`, `jabatan`) VALUES
('1415323031', 'Bapak Asep', 'Agribisnis', 1, 'Ketua'),
('1415323062', 'Soekarno', 'Teknik Informatika', 2, 'Ketua'),
('15107069', 'Muamar HM', 'Teknik Informatika', 3, 'Ketua');

-- --------------------------------------------------------

--
-- Table structure for table `keluhan`
--

CREATE TABLE `keluhan` (
  `nim` varchar(50) NOT NULL,
  `deskripsi` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_peng` int(11) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `deskripsi` varchar(20000) NOT NULL,
  `last_edited` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_peng`, `judul`, `deskripsi`, `last_edited`) VALUES
(2, 'Vote Sudah dimulai', 'Tombol memilih sudah aktif silahkan lihat profil calon dan tekan tombol vote untuk memilih', '2019-01-18 19:40:07'),
(3, 'Voting', 'Dimulai', '2019-01-28 15:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `tgl_voting`
--

CREATE TABLE `tgl_voting` (
  `id` int(11) NOT NULL,
  `start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tgl_voting`
--

INSERT INTO `tgl_voting` (`id`, `start`, `end`) VALUES
(1, '2019-01-28 17:00:00', '2019-02-08 05:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `visimisi`
--

CREATE TABLE `visimisi` (
  `no_kandidat` int(5) NOT NULL,
  `visi` varchar(500) NOT NULL,
  `misi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visimisi`
--

INSERT INTO `visimisi` (`no_kandidat`, `visi`, `misi`) VALUES
(1, 'Menjadikan KBM PNB sebagai wadah untuk menampung semua inspirasi mahasiswa', 'Entahlah'),
(2, 'Menjadikan Trilogi Aman', ' asd'),
(3, 'Ganteng', 'Ganteng');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `detail_user`
--
ALTER TABLE `detail_user`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `image_user`
--
ALTER TABLE `image_user`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `kandidat`
--
ALTER TABLE `kandidat`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_peng`);

--
-- Indexes for table `tgl_voting`
--
ALTER TABLE `tgl_voting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visimisi`
--
ALTER TABLE `visimisi`
  ADD PRIMARY KEY (`no_kandidat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_peng` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tgl_voting`
--
ALTER TABLE `tgl_voting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
