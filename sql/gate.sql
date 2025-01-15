-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2025 at 08:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gate`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_15_034918_create_students_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Josie Buckridge', 'eveline.maggio@example.com', '1-814-634-2236', '14296 Talia Heights Apt. 911\nLake Wilberfort, NY 37989', '2025-01-14 22:44:16', '2025-01-14 22:44:16'),
(2, 'Raoul Jones', 'kelli73@example.org', '+1-904-791-5344', '3419 Bo Ramp\nLangworthfurt, SC 22076-7651', '2025-01-14 22:44:17', '2025-01-14 22:44:17'),
(3, 'Henderson Zemlak', 'toney.kassulke@example.net', '+16695218714', '1989 Eichmann Drive Apt. 839\nPort Claudhaven, VA 66585-3373', '2025-01-14 22:44:17', '2025-01-14 22:44:17'),
(4, 'Prof. Jeffrey Thompson', 'lawson75@example.org', '1-505-331-8420', '286 Maymie Islands Apt. 534\nMurazikfort, AK 45276-3422', '2025-01-14 22:44:17', '2025-01-14 22:44:17'),
(5, 'Amari Fahey', 'merl.quitzon@example.com', '+1 (364) 381-6540', '2785 Meggie Center Apt. 364\nMozellport, WA 10043-3889', '2025-01-14 22:44:17', '2025-01-14 22:44:17'),
(6, 'Marcus Wehner', 'armstrong.stanton@example.net', '(229) 881-5228', '867 Reynolds Lock Suite 728\nMoenborough, IA 13594-4343', '2025-01-14 22:44:17', '2025-01-14 22:44:17'),
(7, 'Larry Gottlieb', 'padberg.serenity@example.net', '+1-321-996-4428', '8449 Jeffery Squares Suite 554\nSouth Christopher, NV 11449', '2025-01-14 22:44:17', '2025-01-14 22:44:17'),
(8, 'Eleonore Macejkovic', 'okon.justine@example.com', '1-440-820-8323', '2053 Kassulke Point\nLake Darianville, CT 07495-2407', '2025-01-14 22:44:17', '2025-01-14 22:44:17'),
(9, 'Luigi Reichert', 'lottie.thompson@example.org', '1-404-950-4897', '773 Swaniawski Forest Apt. 525\nNew Brandy, NE 60445-9049', '2025-01-14 22:44:17', '2025-01-14 22:44:17'),
(10, 'Jacques Wuckert', 'danderson@example.net', '+1 (434) 243-5567', '15399 Christiansen Groves\nSouth Keira, IN 44540', '2025-01-14 22:44:17', '2025-01-14 22:44:17'),
(11, 'Prof. Columbus Fay', 'wrussel@example.org', '+1-706-886-7141', '81985 Zander Alley Apt. 038\nZulaufburgh, CA 93796', '2025-01-14 22:44:17', '2025-01-14 22:44:17'),
(12, 'Eulalia Corkery', 'beer.finn@example.net', '+1 (352) 658-0642', '379 Berge Ways Apt. 167\nNew Zoila, VA 33134', '2025-01-14 22:44:17', '2025-01-14 22:44:17'),
(13, 'Nola Ziemann', 'lehner.damion@example.net', '641.578.2487', '247 Lueilwitz Fort\nOpalville, WY 46516', '2025-01-14 22:44:17', '2025-01-14 22:44:17'),
(14, 'Ettie Runolfsdottir', 'kub.lora@example.net', '(786) 251-0347', '98647 Jeremie Square Suite 646\nTerrellland, NH 38271', '2025-01-14 22:44:17', '2025-01-14 22:44:17'),
(15, 'Margarete Gerlach', 'pbalistreri@example.com', '623-596-0784', '706 Bechtelar Fall\nVerlaton, CO 48565', '2025-01-14 22:44:17', '2025-01-14 22:44:17'),
(16, 'Dr. Cecil Jacobson MD', 'temmerich@example.org', '+1 (678) 567-9744', '186 Hartmann Cliff\nSouth Cary, WI 85420-5048', '2025-01-14 22:44:17', '2025-01-14 22:44:17'),
(17, 'Linnea Hirthe', 'toy.larson@example.org', '+19419046069', '543 Kris Roads\nNew Dewittside, AZ 23212', '2025-01-14 22:44:17', '2025-01-14 22:44:17'),
(18, 'Rusty O\'Hara DVM', 'pbartell@example.net', '(385) 376-3397', '788 Brenden Extensions Apt. 760\nKerlukeside, NC 05907-2601', '2025-01-14 22:44:17', '2025-01-14 22:44:17'),
(19, 'Miss Rosa Beahan Sr.', 'cesar57@example.net', '352-250-6868', '8809 Ena Extension Apt. 782\nPort Eribertoville, PA 57346-3263', '2025-01-14 22:44:17', '2025-01-14 22:44:17'),
(20, 'George Konopelski', 'ulises.dooley@example.net', '+1-740-683-1535', '1333 Kody Loop Apt. 943\nKennyview, NV 07173', '2025-01-14 22:44:17', '2025-01-14 22:44:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user','manager') NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Paxton Mante', 'ferne93@example.net', '2025-01-14 23:07:47', '$2y$12$jDn6sD3QZJdgFwlZhTr/LOTxy0JB7MN3TijiYEcWlbvNW45YeIVba', 'manager', 'ZMlGn2NAoy', '2025-01-14 23:07:47', '2025-01-14 23:07:47'),
(2, 'Admin', 'admin@gmail.com', '2025-01-14 23:07:47', '$2y$12$jDn6sD3QZJdgFwlZhTr/LOTxy0JB7MN3TijiYEcWlbvNW45YeIVba', 'admin', 'kU2TpZzho4', '2025-01-14 23:07:47', '2025-01-14 23:07:47'),
(3, 'Willow Thompson', 'user@gmail.com', '2025-01-14 23:07:47', '$2y$12$jDn6sD3QZJdgFwlZhTr/LOTxy0JB7MN3TijiYEcWlbvNW45YeIVba', 'user', 'ridGNF3MIJ', '2025-01-14 23:07:47', '2025-01-14 23:07:47'),
(4, 'Luisa Breitenberg', 'taylor.fadel@example.org', '2025-01-14 23:07:47', '$2y$12$jDn6sD3QZJdgFwlZhTr/LOTxy0JB7MN3TijiYEcWlbvNW45YeIVba', 'user', '0jDEOKHWoj', '2025-01-14 23:07:48', '2025-01-14 23:07:48'),
(5, 'Regan Greenholt', 'weber.amani@example.com', '2025-01-14 23:07:47', '$2y$12$jDn6sD3QZJdgFwlZhTr/LOTxy0JB7MN3TijiYEcWlbvNW45YeIVba', 'admin', 'lgwqJDKK8m', '2025-01-14 23:07:48', '2025-01-14 23:07:48'),
(6, 'Marlen Monahan', 'judy61@example.com', '2025-01-14 23:07:47', '$2y$12$jDn6sD3QZJdgFwlZhTr/LOTxy0JB7MN3TijiYEcWlbvNW45YeIVba', 'manager', 'JTowalr9vb', '2025-01-14 23:07:48', '2025-01-14 23:07:48'),
(7, 'Vinnie Bogan', 'christiansen.felipe@example.com', '2025-01-14 23:07:47', '$2y$12$jDn6sD3QZJdgFwlZhTr/LOTxy0JB7MN3TijiYEcWlbvNW45YeIVba', 'admin', 'Li72I6WMfZ', '2025-01-14 23:07:48', '2025-01-14 23:07:48'),
(8, 'Elliott Parisian', 'ehamill@example.org', '2025-01-14 23:07:47', '$2y$12$jDn6sD3QZJdgFwlZhTr/LOTxy0JB7MN3TijiYEcWlbvNW45YeIVba', 'manager', 'xGAFRCm5U1', '2025-01-14 23:07:48', '2025-01-14 23:07:48'),
(9, 'Rosalinda Bins', 'qparker@example.com', '2025-01-14 23:07:47', '$2y$12$jDn6sD3QZJdgFwlZhTr/LOTxy0JB7MN3TijiYEcWlbvNW45YeIVba', 'manager', 'a4fDNW6ZU7', '2025-01-14 23:07:48', '2025-01-14 23:07:48'),
(10, 'Rex Greenholt', 'kendall60@example.com', '2025-01-14 23:07:47', '$2y$12$jDn6sD3QZJdgFwlZhTr/LOTxy0JB7MN3TijiYEcWlbvNW45YeIVba', 'manager', 'cwfRysD6Ec', '2025-01-14 23:07:48', '2025-01-14 23:07:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
