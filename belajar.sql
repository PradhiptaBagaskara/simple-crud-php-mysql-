-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 05, 2018 at 09:15 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnosa`
--

CREATE TABLE `diagnosa` (
  `id` int(11) NOT NULL,
  `solusi_dan_pertanyaan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `bila_benar` int(11) NOT NULL,
  `bila_salah` int(11) NOT NULL,
  `mulai` char(1) COLLATE latin1_general_ci NOT NULL,
  `selesai` char(1) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `diagnosa`
--

INSERT INTO `diagnosa` (`id`, `solusi_dan_pertanyaan`, `bila_benar`, `bila_salah`, `mulai`, `selesai`) VALUES
(1, 'Apakah anda merasakan demam tinggi ?', 2, 27, 'Y', 'N'),
(2, 'Apakah anda merasakan kedinginan ?', 3, 4, 'N', 'N'),
(1, 'Apakah anda merasakan demam tinggi ?', 2, 27, 'Y', 'N'),
(2, 'Apakah anda merasakan kedinginan ?', 3, 4, 'N', 'N'),
(3, 'Apakah anda merasakan tubuh anda terasa sakit ?', 4, 5, 'N', 'N'),
(4, 'Apakah anda merasa sakit kepala ?', 5, 11, 'N', 'N'),
(5, 'Apakah Anda merasa tengorokan sakit saat menelan ?', 6, 8, 'N', 'N'),
(6, 'Apakah Anda merasa badan lemas dan lemah ?', 7, 15, 'N', 'N'),
(1, 'Apakah anda merasakan demam tinggi ?', 2, 27, 'Y', 'N'),
(2, 'Apakah anda merasakan kedinginan ?', 3, 4, 'N', 'N'),
(1, 'Apakah anda merasakan demam tinggi ?', 2, 27, 'Y', 'N'),
(2, 'Apakah anda merasakan kedinginan ?', 3, 4, 'N', 'N'),
(3, 'Apakah anda merasakan tubuh anda terasa sakit ?', 4, 5, 'N', 'N'),
(4, 'Apakah anda merasa sakit kepala ?', 5, 11, 'N', 'N'),
(5, 'Apakah Anda merasa tengorokan sakit saat menelan ?', 6, 8, 'N', 'N'),
(6, 'Apakah Anda merasa badan lemas dan lemah ?', 7, 15, 'N', 'N'),
(7, 'Apakah pada tubuh anda muncul bintik-bintik berwarna ?', 22, 13, 'N', 'N'),
(8, 'Apakah anda merasakan panas tubuh tinggi ?', 26, 0, 'N', 'N'),
(9, 'Apakah tengorokan anda sakit bila menelan ?', 10, 10, 'N', 'N'),
(10, 'Apakah anda merasakan otot anda terasa nyeri ?', 11, 0, 'N', 'N'),
(11, 'Apakah nafsu makan anda menurun ?', 12, 13, 'N', 'N'),
(12, 'Apakah anda merasa mual-mual ?', 23, 16, 'N', 'N'),
(13, 'Apakah denyut nadi anda terasa lemah ?', 14, 14, 'N', 'N'),
(14, 'Apakah tubuh anda terasa ngilu ?', 15, 6, 'N', 'N'),
(15, 'Apakah anda merasakan persendian anda membengkak ?', 16, 20, 'N', 'N'),
(16, 'Apakah anda merasakan setamina menurun ?', 17, 14, 'N', 'N'),
(17, 'Apakah anda merasakan nyeri pada persendian ?', 24, 18, 'N', 'N'),
(18, 'Apakah anda merasakan ingin muntah ?', 19, 0, 'N', 'N'),
(19, 'Apakah anda merasakan leher dan pungung terasa kaku ?', 20, 0, 'N', 'N'),
(20, 'Apakah anda sering merasa ngantuk ?', 21, 0, 'N', 'N'),
(23, 'Anda menderita PENYAKIT DEMAM PENYAKIT KUNING ?', 0, 0, 'N', 'Y'),
(21, 'Apakah anda mudah terangsang ?', 25, 0, 'N', 'N'),
(22, 'Anda menderita PENYAKIT DEMAM BERDARAH ?', 0, 0, 'N', 'N'),
(24, 'Anda menderita PENYAKIT CIKUNGUNYA ?', 0, 0, 'N', 'Y'),
(25, 'Anda menderita PENYAKIT ENCEPHALITIS ?', 0, 0, 'N', 'Y'),
(26, 'Anda menderita PENYAKIT MALARIA ?', 0, 0, 'N', 'Y'),
(0, 'MAAF UNTUK SEMENTARA, SISTEM INI BELUM DAPAT MENDIAGNOSA PENYAKIT ANDA.!', 0, 0, 'N', 'Y'),
(27, 'Anda hanya menderita DEMAM BIASA', 0, 0, 'N', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `nomer` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `nomer`) VALUES
(1, 'hendri', 'hendri@mail.com', '6288777655433'),
(5, 'mas bulloh', 'mail@endra.com', '62856777543'),
(6, 'santi', 'santi@mail.com', '628669976');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
