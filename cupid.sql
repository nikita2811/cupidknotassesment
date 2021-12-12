-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2021 at 11:23 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cupid`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_12_10_101133_partner', 2);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `occupation` text NOT NULL,
  `family` text NOT NULL,
  `manglik` varchar(50) NOT NULL,
  `income` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `user_id`, `occupation`, `family`, `manglik`, `income`, `created_at`, `updated_at`) VALUES
(5, 10, '\"[\\\"government job\\\",\\\"private job\\\",\\\"business\\\"]\"', '\"[\\\"Joint\\\",\\\"nuclear\\\"]\"', 'yes', '11', '2021-12-10 12:56:09', '2021-12-10 12:56:09'),
(6, 11, '\"[\\\"government job\\\",\\\"private job\\\",\\\"business\\\"]\"', '\"[\\\"Joint\\\",\\\"nuclear\\\"]\"', 'yes', '77866', '2021-12-10 12:59:22', '2021-12-10 12:59:22'),
(47, 55, '\"\\\"business\\\"\"', '\"\\\"joint\\\"\"', 'both', '43633', '2021-12-10 14:34:50', '2021-12-10 14:34:50'),
(48, 56, '\"\\\"business\\\"\"', '\"\\\"joint\\\"\"', 'both', '28228', '2021-12-10 14:34:50', '2021-12-10 14:34:50'),
(49, 57, '\"\\\"private job\\\"\"', '\"\\\"nuclear\\\"\"', 'yes', '60695', '2021-12-10 14:34:50', '2021-12-10 14:34:50'),
(50, 58, '\"\\\"government job\\\"\"', '\"\\\"nuclear\\\"\"', 'no', '77866', '2021-12-10 14:34:50', '2021-12-10 14:34:50'),
(51, 59, '\"\\\"government job\\\"\"', '\"\\\"joint\\\"\"', 'both', '4591', '2021-12-10 14:34:51', '2021-12-10 14:34:51'),
(52, 60, '\"\\\"private job\\\"\"', '\"\\\"joint\\\"\"', 'both', '14473', '2021-12-10 14:34:51', '2021-12-10 14:34:51'),
(53, 61, '\"\\\"government job\\\"\"', '\"\\\"joint\\\"\"', 'no', '48272', '2021-12-10 14:34:51', '2021-12-10 14:34:51'),
(54, 62, '\"\\\"private job\\\"\"', '\"\\\"joint\\\"\"', 'yes', '4535', '2021-12-10 14:34:51', '2021-12-10 14:34:51'),
(55, 63, '\"\\\"business\\\"\"', '\"\\\"nuclear\\\"\"', 'no', '33381', '2021-12-10 14:34:51', '2021-12-10 14:34:51'),
(56, 64, '\"\\\"private job\\\"\"', '\"\\\"nuclear\\\"\"', 'both', '82690', '2021-12-10 14:34:52', '2021-12-10 14:34:52'),
(57, 65, '\"\\\"business\\\"\"', '\"\\\"joint\\\"\"', 'no', '20830', '2021-12-10 14:34:52', '2021-12-10 14:34:52'),
(58, 66, '\"\\\"government job\\\"\"', '\"\\\"nuclear\\\"\"', 'yes', '51448', '2021-12-10 14:34:52', '2021-12-10 14:34:52'),
(59, 67, '\"\\\"government job\\\"\"', '\"\\\"nuclear\\\"\"', 'no', '19517', '2021-12-10 14:34:52', '2021-12-10 14:34:52'),
(60, 68, '\"\\\"government job\\\"\"', '\"\\\"joint\\\"\"', 'both', '65993', '2021-12-10 14:34:52', '2021-12-10 14:34:52'),
(61, 69, '\"\\\"private job\\\"\"', '\"\\\"nuclear\\\"\"', 'no', '7788', '2021-12-10 14:34:53', '2021-12-10 14:34:53'),
(62, 70, '\"\\\"private job\\\"\"', '\"\\\"nuclear\\\"\"', 'yes', '26024', '2021-12-10 14:34:53', '2021-12-10 14:34:53'),
(63, 71, '\"\\\"government job\\\"\"', '\"\\\"nuclear\\\"\"', 'both', '80295', '2021-12-10 14:34:53', '2021-12-10 14:34:53'),
(64, 72, '\"\\\"government job\\\"\"', '\"\\\"joint\\\"\"', 'both', '11853', '2021-12-10 14:34:53', '2021-12-10 14:34:53'),
(65, 73, '\"\\\"business\\\"\"', '\"\\\"joint\\\"\"', 'no', '63049', '2021-12-10 14:34:54', '2021-12-10 14:34:54'),
(66, 74, '\"\\\"government job\\\"\"', '\"\\\"nuclear\\\"\"', 'both', '82552', '2021-12-10 14:34:54', '2021-12-10 14:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annual_income` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manglik` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `email`, `email_verified_at`, `password`, `last_name`, `dob`, `gender`, `annual_income`, `occupation`, `family`, `manglik`, `google_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(10, 'Nikita', 'qwertyui@gmail.com', NULL, '$2y$10$pLgazdnsPZi3vEx.R5kVHuo6A3rDg.nMllladwDcrvZe2lMplUpPS', 'Saxena', '1993-11-28', 'female', '6', 'government job', 'Joint', 'yes', NULL, NULL, '2021-12-10 07:26:09', '2021-12-10 07:26:09'),
(11, 'Nikita', 'nikitasaxena43@gmail.com', NULL, '$2y$10$qhf98n5Sik9STo8Px34rQemmy7fBIn2UAhNf03gp4Pwa1t/.MRZ0.', 'Saxena', '1993-11-28', 'male', '6', 'government job', 'Joint', 'no', NULL, NULL, '2021-12-10 07:29:22', '2021-12-10 07:29:22'),
(50, 'Admin', 'admin@admin.com', NULL, '$2y$10$qhf98n5Sik9STo8Px34rQemmy7fBIn2UAhNf03gp4Pwa1t/.MRZ0.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'Df8IH8eck1', 'm0lkulm17n@gmail.com', NULL, '$2y$10$/oAUKqBzjMzr7QCUh7/rdeGkPqvcqA/DUJRMS4Bta1eQl5EXKFjLO', '8jEPtXPnKY', '1987-01-19', 'male', '49508', 'business', 'joint', 'yes', NULL, NULL, '2021-12-10 09:04:50', '2021-12-10 09:04:50'),
(56, 'YteFVHBzo4', 'erkVlyMacV@gmail.com', NULL, '$2y$10$xrRpvewAc.J/sEzm1Js13uPwTRNextq9p8EP54u1ktpVRs/hjyhzG', 'mDO1JErIht', '2000-06-25', 'female', '21222', 'business', 'joint', 'yes', NULL, NULL, '2021-12-10 09:04:50', '2021-12-10 09:04:50'),
(57, 'v1eZAx9qCr', 'tDryaSkRn6@gmail.com', NULL, '$2y$10$Dpuy90RzTeziSMo1KQWc2.OilUSXLG5o4jbkmNAcbGT.hHqwbhF3O', 'ozTeFwN6ls', '1999-06-14', 'female', '74936', 'private job', 'nuclear', 'yes', NULL, NULL, '2021-12-10 09:04:50', '2021-12-10 09:04:50'),
(58, 'kHQl8KCZIb', 'hz2t0vD7vx@gmail.com', NULL, '$2y$10$pBhwPcnB8P5aj1QszZ0nzuQu/eq3Yvb8H0mbi9CFUM5dML3xMBYX6', 'rrsScz1wx3', '1984-10-31', 'female', '39118', 'government job', 'nuclear', 'yes', NULL, NULL, '2021-12-10 09:04:50', '2021-12-10 09:04:50'),
(59, 'nim0RnaiXd', 'QmwDkTmdJr@gmail.com', NULL, '$2y$10$GMeKNwW/Y4ODYh5C1/aYS.69r1U6jKUo5dgLbrJ1sbvVQr76J2NcW', 'oujhrpwYOY', '2007-01-12', 'female', '30625', 'government job', 'joint', 'yes', NULL, NULL, '2021-12-10 09:04:51', '2021-12-10 09:04:51'),
(60, 'Ox9kIzq5NT', 'g8nJJUMzbZ@gmail.com', NULL, '$2y$10$uVVe7bHC/YiOsy74Brx3A.8V.he1eMZZC6/0rInorD6KG.PQ/faTK', 'DX5OBNe8Xg', '2001-12-27', 'male', '77866', 'private job', 'joint', 'no', NULL, NULL, '2021-12-10 09:04:51', '2021-12-10 09:04:51'),
(61, 'QeOfegEY3D', 'udyYuGQkf8@gmail.com', NULL, '$2y$10$stx7U8LiyEvmmt7YV7JvVO7B3kq.zNVUmSfNXPXvMKt40b5EJUNHG', 'kHNTZozyzf', '2008-02-22', 'male', '7466', 'government job', 'joint', 'no', NULL, NULL, '2021-12-10 09:04:51', '2021-12-10 09:04:51'),
(62, '6EAKwo5kK1', 'yPFHalm3t0@gmail.com', NULL, '$2y$10$vY0laOdsCmr/Etd07o/wt.R2Yn.Ce3aHqqMyzBaBe1z/bmPh.r4ny', '0uXRJ9Bzgg', '1993-05-21', 'female', '22668', 'private job', 'joint', 'yes', NULL, NULL, '2021-12-10 09:04:51', '2021-12-10 09:04:51'),
(63, 'SRdwgfKxWT', 'KJesUCmZ9U@gmail.com', NULL, '$2y$10$I.lhBgeGm15/2UgrtJEI8.sJFBDnMEH2iJybtLGFq.02ziW9YMnKO', 'hzc737Bh85', '2007-01-21', 'male', '40807', 'business', 'nuclear', 'yes', NULL, NULL, '2021-12-10 09:04:51', '2021-12-10 09:04:51'),
(64, '2bbGwYZ4jy', 'fWXfrUFHKO@gmail.com', NULL, '$2y$10$.Jn5HJ/45mxTvQX02HN7a.gOO9JgVjug2YvVBxbRsVgG70sIinCrK', 'pk0Qq9p9ML', '1981-11-18', 'female', '38733', 'private job', 'nuclear', 'yes', NULL, NULL, '2021-12-10 09:04:52', '2021-12-10 09:04:52'),
(65, 'EyXEgpCJ5Y', 'muC7dKzyjM@gmail.com', NULL, '$2y$10$LpuV5LWRQ4N3mhjHfEK3ZOM2eIHZcFqKKzqmN8IoVUAss9RSQGz82', 'dym1XGAfrD', '1991-11-21', 'female', '31958', 'business', 'joint', 'yes', NULL, NULL, '2021-12-10 09:04:52', '2021-12-10 09:04:52'),
(66, 'WlvQ5DUAGH', 'INKAWckgUk@gmail.com', NULL, '$2y$10$oywRTjTi8hU6N6STotVhzOMsBgbgnMfql3CSwwZqQYiCtO.Y2nmF6', '5aqLXE6Zds', '1982-04-28', 'female', '69992', 'government job', 'nuclear', 'yes', NULL, NULL, '2021-12-10 09:04:52', '2021-12-10 09:04:52'),
(67, 'eApDwV1OcO', 'C9kFhdBiGM@gmail.com', NULL, '$2y$10$bhm6UIJ0uAA73rO4RSLGwOaOyEVBOZXF6lKR4RXN8nufK.m1mWgcW', 'KDVorYo4xB', '1992-06-30', 'female', '64434', 'government job', 'nuclear', 'no', NULL, NULL, '2021-12-10 09:04:52', '2021-12-10 09:04:52'),
(68, 'daEqOSVQ7B', 'Hbr4EjQq9k@gmail.com', NULL, '$2y$10$RG6eoUrf0BMTgcyKbmlpXevgD6vsp1QU9d/7nSFM.yA.3sTwhKXOO', 'OavOn3jmTX', '1996-02-20', 'male', '54778', 'government job', 'joint', 'yes', NULL, NULL, '2021-12-10 09:04:52', '2021-12-10 09:04:52'),
(69, '40W6HsMaTM', 'LtLulOOFMc@gmail.com', NULL, '$2y$10$b1IWA0VBrnKlxsTRY2G1IeJqj5/jVKyBySI8JdvIk.cGc/gzyPA3S', 'bRsiTBKI2I', '1985-06-04', 'female', '49621', 'private job', 'nuclear', 'yes', NULL, NULL, '2021-12-10 09:04:53', '2021-12-10 09:04:53'),
(70, 'vIWfTPWyJ9', 'ncpS7OM9k1@gmail.com', NULL, '$2y$10$QVOmEz/mAUWWnDyEP5msVe/lWDKlKrDxMB48iXg2HrrsYLt4yDwsC', 'vLgBNZTpe1', '2010-11-28', 'male', '15341', 'private job', 'nuclear', 'no', NULL, NULL, '2021-12-10 09:04:53', '2021-12-10 09:04:53'),
(71, 'efBPG0pKLB', 'cXEEUolfWD@gmail.com', NULL, '$2y$10$6XLlkOSZ9x0Y21N70lE2bePDUl/4x88LgPhfX.SFdZEOHDXPkgpCW', 'kGuG11sSFc', '2005-08-11', 'female', '22197', 'government job', 'nuclear', 'no', NULL, NULL, '2021-12-10 09:04:53', '2021-12-10 09:04:53'),
(72, 'odj59acodi', 'qwSycXWxRh@gmail.com', NULL, '$2y$10$1lCzEwWTSAWYnZYWgq6H8emCErYq/yn3SjiI6H//UAaTeTaTIh9eq', 'iZlxfWaBhu', '1989-10-31', 'male', '29235', 'government job', 'joint', 'yes', NULL, NULL, '2021-12-10 09:04:53', '2021-12-10 09:04:53'),
(73, 'bZKNPhnMgX', 'yl0cX3B0F2@gmail.com', NULL, '$2y$10$ZWSNijhTdQS9AaoQXF4fXeRpiBnUHmxQLu1cqDW0o3TWyWg4hbQzW', 'eBm4zyPUC2', '2005-01-06', 'male', '6171', 'business', 'joint', 'no', NULL, NULL, '2021-12-10 09:04:54', '2021-12-10 09:04:54'),
(74, 'fKvxD3B3yc', '7HipNVnnpF@gmail.com', NULL, '$2y$10$/GfKHj6/ebBTUJ/uUfTnDOr5JPU9J1AFYDHULUdRfAWBqYfMnThGa', '3DMOsWYs0z', '1995-10-28', 'female', '22134', 'government job', 'nuclear', 'no', NULL, NULL, '2021-12-10 09:04:54', '2021-12-10 09:04:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
