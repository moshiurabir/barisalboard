-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2023 at 12:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barisalboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `subdomain` varchar(255) DEFAULT NULL,
  `eiin` varchar(255) NOT NULL,
  `institutename` varchar(255) DEFAULT NULL,
  `institute_established_date` date DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `district` varchar(5) DEFAULT NULL,
  `t_code` varchar(255) DEFAULT NULL,
  `c_code` varchar(255) DEFAULT NULL,
  `s_code` varchar(255) DEFAULT NULL,
  `postoffice` varchar(255) DEFAULT NULL,
  `upazilla` varchar(255) DEFAULT NULL,
  `zilla` varchar(255) DEFAULT NULL,
  `institution_type` varchar(255) DEFAULT NULL,
  `institution_type_details` varchar(255) DEFAULT NULL,
  `head_institution` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `head_institution_sign` varchar(255) DEFAULT NULL,
  `template_isadmin` varchar(255) DEFAULT NULL,
  `ssc_science_permission` varchar(255) DEFAULT NULL,
  `ssc_science_seat` varchar(255) DEFAULT NULL,
  `ssc_science_permission_expiredate` date DEFAULT NULL,
  `ssc_humanities_permission` varchar(255) DEFAULT NULL,
  `ssc_humanities_seat` varchar(255) DEFAULT NULL,
  `ssc_humanities_permission_expiredate` date DEFAULT NULL,
  `ssc_businessstudies_permission` varchar(255) DEFAULT NULL,
  `ssc_businessstudies_seat` varchar(255) DEFAULT NULL,
  `ssc_businessstudies_permission_expiredate` date DEFAULT NULL,
  `hsc_science_permission` varchar(255) DEFAULT NULL,
  `hsc_science_seat` varchar(255) DEFAULT NULL,
  `hsc_science_permission_expiredate` date DEFAULT NULL,
  `hsc_humanities_permission` varchar(255) DEFAULT NULL,
  `hsc_humanities_seat` varchar(255) DEFAULT NULL,
  `hsc_humanities_permission_expiredate` date DEFAULT NULL,
  `hsc_businessstudies_permission` varchar(255) DEFAULT NULL,
  `hsc_businessstudies_seat` varchar(255) DEFAULT NULL,
  `hsc_businessstudies_permission_expiredate` date DEFAULT NULL,
  `hsc_homeeconomics_permission` varchar(255) DEFAULT NULL,
  `hsc_homeeconomics_seat` varchar(255) DEFAULT NULL,
  `hsc_homeeconomics_permission_expiredate` date DEFAULT NULL,
  `hsc_agriculture_permission` varchar(255) DEFAULT NULL,
  `hsc_agriculture_seat` varchar(255) DEFAULT NULL,
  `hsc_agriculture_permission_expiredate` date DEFAULT NULL,
  `hsc_islamicstudies_permission` varchar(255) DEFAULT NULL,
  `hsc_islamicstudies_seat` varchar(255) DEFAULT NULL,
  `hsc_islamicstudies_permission_expiredate` date DEFAULT NULL,
  `hsc_music_permission` varchar(255) DEFAULT NULL,
  `hsc_music_seat` varchar(255) DEFAULT NULL,
  `hsc_music_permission_expiredate` date DEFAULT NULL,
  `jsc_sad` date DEFAULT NULL,
  `ssc_sad` date DEFAULT NULL,
  `ssc_eff_sad` date DEFAULT NULL,
  `ssc_teacher_sad` date DEFAULT NULL,
  `ssc_payment_permission` varchar(255) DEFAULT NULL,
  `hsc_sad` date DEFAULT NULL,
  `hsc_eff_sad` date DEFAULT NULL,
  `hsc_teacher_sad` date DEFAULT NULL,
  `hsc_payment_permission` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `subdomain`, `eiin`, `institutename`, `institute_established_date`, `email`, `email_verified_at`, `district`, `t_code`, `c_code`, `s_code`, `postoffice`, `upazilla`, `zilla`, `institution_type`, `institution_type_details`, `head_institution`, `mobile`, `head_institution_sign`, `template_isadmin`, `ssc_science_permission`, `ssc_science_seat`, `ssc_science_permission_expiredate`, `ssc_humanities_permission`, `ssc_humanities_seat`, `ssc_humanities_permission_expiredate`, `ssc_businessstudies_permission`, `ssc_businessstudies_seat`, `ssc_businessstudies_permission_expiredate`, `hsc_science_permission`, `hsc_science_seat`, `hsc_science_permission_expiredate`, `hsc_humanities_permission`, `hsc_humanities_seat`, `hsc_humanities_permission_expiredate`, `hsc_businessstudies_permission`, `hsc_businessstudies_seat`, `hsc_businessstudies_permission_expiredate`, `hsc_homeeconomics_permission`, `hsc_homeeconomics_seat`, `hsc_homeeconomics_permission_expiredate`, `hsc_agriculture_permission`, `hsc_agriculture_seat`, `hsc_agriculture_permission_expiredate`, `hsc_islamicstudies_permission`, `hsc_islamicstudies_seat`, `hsc_islamicstudies_permission_expiredate`, `hsc_music_permission`, `hsc_music_seat`, `hsc_music_permission_expiredate`, `jsc_sad`, `ssc_sad`, `ssc_eff_sad`, `ssc_teacher_sad`, `ssc_payment_permission`, `hsc_sad`, `hsc_eff_sad`, `hsc_teacher_sad`, `hsc_payment_permission`, `password`, `notes`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '', '102477', '', '0000-00-00', 'admin2@localhost.com', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00', '', '$2y$10$z53eKnEEJuzTp2Eqb4k5iOiooGsO4Llf9BXnO4t5e0TKvwbyYmPg2', '', '1', NULL, NULL),
(3, 'Md Moshiur abir', NULL, '102598', NULL, NULL, 'admin@localhost.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$CgK4i.kEsbss3dhLdggdZexGJaURMd6FekozscbRvU6s/VEdjbbH.', NULL, '1', '2023-07-22 22:01:59', '2023-07-22 22:01:59');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_07_21_150626_create_admins_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'user@localhost.com', NULL, '$2y$10$z53eKnEEJuzTp2Eqb4k5iOiooGsO4Llf9BXnO4t5e0TKvwbyYmPg2', NULL, '2023-07-20 11:02:17', '2023-07-20 11:02:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_eiin_unique` (`eiin`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
