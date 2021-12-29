-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2021 at 07:20 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas6`
--

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `berat` decimal(11,5) DEFAULT NULL,
  `stok` int(225) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `id_user`, `nama`, `foto`, `harga`, `berat`, `stok`, `deskripsi`, `created_at`, `updated_at`) VALUES
(30, 22, 'VAHS', 'app/images/produk/30-1640529361-jSTld.png', 350000, '0.00000', 15, 'Sepatu VAHS', '2021-12-26 07:36:01', '2021-12-26 17:09:12'),
(31, 22, 'Socious', 'app/images/produk/31-1640529771-v5goS.png', 500000, '450.00000', 23, 'Sepatu Socious', '2021-12-26 07:42:51', '2021-12-26 14:46:41'),
(32, 22, 'L.Bites', 'app/images/produk/32-1640530180-fu6LV.png', 350000, '460.00000', NULL, 'Sepatu L. Bites', '2021-12-26 07:49:40', '2021-12-26 07:49:40'),
(36, 22, 'Jintu', 'app/images/produk/36-1640573315-R7jXd.png', 500000, '150.00000', 22, 'Sepatu Jintu', '2021-12-26 19:48:35', '2021-12-28 19:25:58'),
(37, 22, 'Vans', 'app/images/produk/37-1640744712-RRWuW.png', 350000, '450.00000', 23, 'Sepatu Vans', '2021-12-28 19:15:30', '2021-12-28 19:25:12'),
(38, 22, 'Gucci', 'app/images/produk/38-1640744180-odhfu.png', 500000, '500.00000', 13, 'Sepatu Gucci', '2021-12-28 19:16:20', '2021-12-28 19:24:39'),
(39, 22, 'Allstar', 'app/images/produk/39-1640744628-4pgaJ.png', 450000, '450.00000', 19, 'Sepatu Allstar', '2021-12-28 19:17:30', '2021-12-28 19:23:48'),
(40, 22, 'Slavina', 'app/images/produk/40-1640746379-rLDC0.png', 350000, '450.00000', 20, 'Sepatu Slavina', '2021-12-28 19:52:59', '2021-12-28 19:53:14'),
(41, 22, 'B.Fashion', 'app/images/produk/41-1640746471-2BOO6.png', 470000, '450.00000', 24, 'Sepatu B.Fashion', '2021-12-28 19:54:31', '2021-12-28 19:54:49'),
(42, 22, 'ScarletR', 'app/images/produk/42-1640746769-wIxlv.png', 500000, '450.00000', 23, 'Sepatu ScarletR', '2021-12-28 19:59:29', '2021-12-28 19:59:47'),
(43, 22, 'puma', 'app/images/produk/43-1640748920-sXdZ6.png', 780000, '450.00000', 21, 'Sepatu puma', '2021-12-28 20:35:20', '2021-12-28 20:35:49'),
(44, 22, 'adidas', 'app/images/produk/44-1640749009-UEoTN.png', 478000, '450.00000', 23, '<p>Sepatu adidas</p>', '2021-12-28 20:36:49', '2021-12-28 20:36:49'),
(45, 22, 'FILA', 'app/images/produk/45-1640749147-uX2O4.png', 468000, '450.00000', 27, 'Sepatu FILA', '2021-12-28 20:39:07', '2021-12-28 20:39:40'),
(46, 22, 'M Fashion', 'app/images/produk/46-1640749499-w0XdM.png', 467000, '450.00000', 21, 'Sepatu M Fashion', '2021-12-28 20:44:59', '2021-12-28 20:45:15'),
(47, 22, 'SP-117', 'app/images/produk/47-1640749736-9VmQd.png', 349000, '450.00000', 34, 'Sepatu SP-117', '2021-12-28 20:48:56', '2021-12-28 20:49:11');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenis_kelamin` int(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `jenis_kelamin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(21, 'dela sagita', 'delasagita1@gmail.com', 'Dela Sagita', 2, '$2y$10$WQr3Rt0CPVMCeFrU7Ua0ZO65MFQi96GzRawBVp3kgeFOw2s8M1k3G', NULL, '2021-12-24 01:04:08', '2021-12-24 19:36:17'),
(22, 'dela sagita', 'delasagita@gmail.com', 'Dela Sagita', 2, '$2y$10$a/SGR07aPtZj4V0pJeDIAeOKZWOqV/ZqagvyOlVnIk8DPMe.8Dpiu', NULL, '2021-12-24 01:06:49', '2021-12-24 19:35:58'),
(23, 'dela sagita', 'delasagita10@gmail.com', 'Dela Sagita', 2, '$2y$10$jieh/AGF3.QDBZfdE9CsdOOx.COyRI6s54eg1nSGYWRiflKhvd5XO', NULL, '2021-12-24 18:18:17', '2021-12-24 19:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(16) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(1, 21, '+6282256481720', '2021-12-24 01:04:08', '2021-12-24 01:04:08'),
(2, 22, '+6282248567210', '2021-12-24 01:06:49', '2021-12-24 01:06:49'),
(3, 23, '+6282248667543', '2021-12-24 18:18:17', '2021-12-24 18:18:17'),
(4, 24, '+6282248568859', '2021-12-24 19:35:18', '2021-12-24 19:35:18'),
(5, 25, '+6282248667543', '2021-12-24 20:42:44', '2021-12-24 20:42:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
