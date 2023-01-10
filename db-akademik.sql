-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 09, 2023 at 01:16 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `datapribadi`
--

CREATE TABLE `datapribadi` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jk` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `noHp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `datapribadi`
--

INSERT INTO `datapribadi` (`id`, `user_id`, `nama`, `jk`, `alamat`, `noHp`, `email`, `gambar`) VALUES
(1, 4, 'admin', 'Laki-Laki', 'alamat saya                                                                                        ', '12345', 'admin@admin', '63baea6453dbb.png'),
(3, NULL, 'asasa', 'Laki-laki', 'sasas', '21313', 'admin@gmail.com', '63baf2a72faa6.png'),
(4, NULL, 'nama siswa', 'Laki-laki', 'alamat siswa', '123456789', 'emailsiswa@gmail.com', '63bc0ccf7b8bd.png'),
(5, 11, 'nama user', 'Laki-laki', 'alamat user', '0987654321', 'user@email.com', '63bc0d85b6d49.png'),
(6, NULL, 'nama siswa', 'Perempuan', 'alamat siswa', '11111111', 'siswa@email.com', '63bc0e80d0edd.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','siswa') NOT NULL,
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`, `status`) VALUES
(4, 'admin', '$2y$10$jVPNImzOLvKjZr.oyhzjFuQJJOkmSIwdDx7du9gj2AASEUn/aNSfe', 'admin', '1'),
(11, 'user', '$2y$10$s7qyMHZOZ9jV26fDKnuuK.2w8AqXPas/.q/TOD1Tre5b.DEVBh5Ve', 'siswa', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datapribadi`
--
ALTER TABLE `datapribadi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datapribadi`
--
ALTER TABLE `datapribadi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `datapribadi`
--
ALTER TABLE `datapribadi`
  ADD CONSTRAINT `datapribadi_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
