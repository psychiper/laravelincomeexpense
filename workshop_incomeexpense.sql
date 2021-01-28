-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2021 at 08:11 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workshop_incomeexpense`
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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_04_02_101128_create_students_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TransactionName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Amount` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TransactionDate` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `type`, `TransactionName`, `Amount`, `TransactionDate`, `created_at`, `updated_at`) VALUES
(1, 'expense', 'ซื้อขนม', '80.79', '2021-01-05', '2021-01-27 23:49:49', '2021-01-28 00:10:58'),
(2, 'expense', 'ซื้อขนม', '100.00', '2021-01-06', '2021-01-27 23:50:01', '2021-01-27 23:50:01'),
(3, 'income', 'พ่อให้เงิน', '2,000.00', '2021-01-05', '2021-01-27 23:50:16', '2021-01-27 23:50:16'),
(4, 'expense', 'กินข้าว', '60.00', '2021-01-06', '2021-01-27 23:50:29', '2021-01-27 23:50:29'),
(5, 'expense', 'ซื้อขนม', '40.00', '2021-01-07', '2021-01-27 23:50:42', '2021-01-27 23:50:42'),
(6, 'income', 'แม่ให้เงิน', '500.00', '2021-01-07', '2021-01-27 23:50:53', '2021-01-27 23:50:53'),
(7, 'expense', 'ซื้อขนม', '50.00', '2021-01-08', '2021-01-27 23:51:18', '2021-01-27 23:51:18'),
(8, 'expense', 'ซื้อขนม', '30.00', '2021-01-09', '2021-01-27 23:51:29', '2021-01-27 23:51:29'),
(9, 'expense', 'ค่าแท้กซี่', '100.00', '2021-01-10', '2021-01-27 23:51:43', '2021-01-27 23:51:43'),
(10, 'expense', 'ค่าข้าว', '50.00', '2021-01-11', '2021-01-27 23:51:55', '2021-01-27 23:51:55'),
(11, 'income', 'ทำงานพิเศษ', '500.00', '2021-01-12', '2021-01-27 23:52:05', '2021-01-27 23:52:05'),
(12, 'expense', 'ซื้อขนม', '50.00', '2021-01-14', '2021-01-27 23:52:24', '2021-01-27 23:52:24'),
(13, 'income', 'ได้เงิน', '20.00', '2021-01-28', '2021-01-27 23:52:41', '2021-01-27 23:52:41'),
(14, 'expense', 'ซื้อยา', '200.00', '2021-01-19', '2021-01-27 23:53:01', '2021-01-27 23:53:01'),
(15, 'expense', 'กินข้าว', '50.00', '2021-01-29', '2021-01-27 23:53:37', '2021-01-27 23:53:37'),
(16, 'expense', 'กินน้ำ', '40.00', '2021-01-29', '2021-01-27 23:53:45', '2021-01-27 23:53:45'),
(17, 'income', 'ได้เงินเพิ่ม', '800.00', '2021-01-28', '2021-01-27 23:53:55', '2021-01-27 23:53:55'),
(18, 'expense', 'กินน้ำ', '50.00', '2021-01-28', '2021-01-27 23:54:06', '2021-01-27 23:54:06'),
(19, 'expense', 'กินขนม', '60.00', '2021-01-29', '2021-01-27 23:54:16', '2021-01-27 23:54:16'),
(20, 'income', 'ได้เงิน', '20.00', '2021-01-28', '2021-01-27 23:54:33', '2021-01-27 23:54:33'),
(21, 'expense', 'Candy', '500.00', '2021-02-01', '2021-01-27 23:55:42', '2021-01-27 23:55:42'),
(22, 'expense', 'Milk', '50.00', '2021-02-02', '2021-01-27 23:55:58', '2021-01-27 23:55:58'),
(23, 'expense', 'Peepo', '20.00', '2021-02-03', '2021-01-27 23:56:08', '2021-01-27 23:56:08'),
(24, 'income', 'Dad Give', '500.00', '2021-02-09', '2021-01-27 23:56:33', '2021-01-27 23:56:33'),
(25, 'expense', 'Telephone Bill', '200.00', '2021-02-11', '2021-01-27 23:56:49', '2021-01-27 23:56:49'),
(26, 'income', 'Mom give', '200.00', '2021-02-15', '2021-01-27 23:57:00', '2021-01-27 23:57:00'),
(27, 'expense', 'Buy food', '500.00', '2021-02-11', '2021-01-27 23:57:10', '2021-01-27 23:57:10'),
(28, 'expense', 'Loan', '1,000.00', '2021-02-18', '2021-01-27 23:57:30', '2021-01-27 23:57:30'),
(29, 'income', 'Earn', '500.00', '2021-02-12', '2021-01-27 23:57:42', '2021-01-27 23:57:42'),
(30, 'expense', 'Pay', '500.00', '2021-02-24', '2021-01-27 23:57:53', '2021-01-27 23:57:53'),
(31, 'expense', 'Art Learning', '200.00', '2021-02-25', '2021-01-27 23:58:07', '2021-01-27 23:58:07'),
(32, 'expense', 'Wash Car', '50.00', '2021-02-22', '2021-01-27 23:58:21', '2021-01-27 23:58:21'),
(33, 'income', 'Eating', '10.00', '2021-02-17', '2021-01-27 23:58:35', '2021-01-27 23:58:35'),
(34, 'expense', 'Financial', '1,000.00', '2021-03-16', '2021-01-27 23:58:47', '2021-01-27 23:58:47'),
(35, 'expense', 'Eat', '50.00', '2021-02-03', '2021-01-27 23:58:56', '2021-01-27 23:58:56'),
(36, 'income', 'Mom give', '200.00', '2021-02-18', '2021-01-27 23:59:08', '2021-01-27 23:59:08'),
(37, 'income', 'Dad Give', '500.00', '2021-02-11', '2021-01-27 23:59:18', '2021-01-27 23:59:18'),
(38, 'income', 'Friend Give', '500.00', '2021-02-18', '2021-01-27 23:59:28', '2021-01-27 23:59:28'),
(39, 'expense', 'Buy food', '500.00', '2021-02-19', '2021-01-27 23:59:41', '2021-01-27 23:59:41'),
(40, 'expense', 'Buy apple', '50.00', '2021-02-10', '2021-01-27 23:59:52', '2021-01-27 23:59:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
