-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2024 at 11:21 AM
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
  `ssc_humanities_seat` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `session_id` varchar(100) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `subdomain`, `eiin`, `institutename`, `institute_established_date`, `email`, `email_verified_at`, `district`, `t_code`, `c_code`, `s_code`, `postoffice`, `upazilla`, `zilla`, `institution_type`, `institution_type_details`, `head_institution`, `mobile`, `head_institution_sign`, `template_isadmin`, `ssc_humanities_seat`, `password`, `session_id`, `notes`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '', '102477', '', '0000-00-00', 'admin2@localhost.com', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '$2y$10$z53eKnEEJuzTp2Eqb4k5iOiooGsO4Llf9BXnO4t5e0TKvwbyYmPg2', NULL, '', '1', NULL, NULL),
(3, 'Md Moshiur abir', NULL, '102598', NULL, NULL, 'admin@localhost.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$CgK4i.kEsbss3dhLdggdZexGJaURMd6FekozscbRvU6s/VEdjbbH.', 'RfAKAQSLTAgxAJEmKw2L4715bkBKDHzuss0151Vp', NULL, '1', '2023-07-22 16:01:59', '2024-03-23 04:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `admins_backup`
--

CREATE TABLE `admins_backup` (
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
  `session_id` varchar(80) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins_backup`
--

INSERT INTO `admins_backup` (`id`, `name`, `subdomain`, `eiin`, `institutename`, `institute_established_date`, `email`, `email_verified_at`, `district`, `t_code`, `c_code`, `s_code`, `postoffice`, `upazilla`, `zilla`, `institution_type`, `institution_type_details`, `head_institution`, `mobile`, `head_institution_sign`, `template_isadmin`, `ssc_science_permission`, `ssc_science_seat`, `ssc_science_permission_expiredate`, `ssc_humanities_permission`, `ssc_humanities_seat`, `ssc_humanities_permission_expiredate`, `ssc_businessstudies_permission`, `ssc_businessstudies_seat`, `ssc_businessstudies_permission_expiredate`, `hsc_science_permission`, `hsc_science_seat`, `hsc_science_permission_expiredate`, `hsc_humanities_permission`, `hsc_humanities_seat`, `hsc_humanities_permission_expiredate`, `hsc_businessstudies_permission`, `hsc_businessstudies_seat`, `hsc_businessstudies_permission_expiredate`, `hsc_homeeconomics_permission`, `hsc_homeeconomics_seat`, `hsc_homeeconomics_permission_expiredate`, `hsc_agriculture_permission`, `hsc_agriculture_seat`, `hsc_agriculture_permission_expiredate`, `hsc_islamicstudies_permission`, `hsc_islamicstudies_seat`, `hsc_islamicstudies_permission_expiredate`, `hsc_music_permission`, `hsc_music_seat`, `hsc_music_permission_expiredate`, `jsc_sad`, `ssc_sad`, `ssc_eff_sad`, `ssc_teacher_sad`, `ssc_payment_permission`, `hsc_sad`, `hsc_eff_sad`, `hsc_teacher_sad`, `hsc_payment_permission`, `password`, `session_id`, `notes`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '', '102477', '', '0000-00-00', 'admin2@localhost.com', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00', '', '$2y$10$z53eKnEEJuzTp2Eqb4k5iOiooGsO4Llf9BXnO4t5e0TKvwbyYmPg2', '', '', '1', NULL, NULL),
(3, 'Md Moshiur abir', NULL, '102598', NULL, NULL, 'admin@localhost.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$CgK4i.kEsbss3dhLdggdZexGJaURMd6FekozscbRvU6s/VEdjbbH.', '', NULL, '1', '2023-07-22 16:01:59', '2024-02-12 09:56:52');

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
-- Table structure for table `interactive_instituteopens`
--

CREATE TABLE `interactive_instituteopens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `eiin` varchar(6) DEFAULT NULL,
  `institutename` varchar(200) DEFAULT NULL,
  `institute_established_date` date DEFAULT NULL,
  `institute_name_type` varchar(10) DEFAULT NULL,
  `institute_name_type_attachment` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `district` varchar(5) DEFAULT NULL,
  `postoffice` varchar(50) DEFAULT NULL,
  `upazilla` varchar(50) DEFAULT NULL,
  `zilla` varchar(30) DEFAULT NULL,
  `institution_type` varchar(10) DEFAULT NULL,
  `institution_type_details` varchar(50) DEFAULT NULL,
  `institute_version` varchar(10) DEFAULT NULL,
  `institute_section` varchar(10) DEFAULT NULL,
  `institute_section_details` varchar(100) DEFAULT NULL,
  `institute_area` varchar(50) DEFAULT NULL,
  `institute_distance` varchar(20) DEFAULT NULL,
  `institute_distance_attachment` varchar(50) DEFAULT NULL,
  `institute_population` varchar(20) DEFAULT NULL,
  `institute_population_attachment` varchar(50) DEFAULT NULL,
  `institute_land` varchar(20) DEFAULT NULL,
  `institute_land_attachment` varchar(50) DEFAULT NULL,
  `establishing_institute_date` date DEFAULT NULL,
  `establishing_institute_attachment` varchar(50) DEFAULT NULL,
  `jsc_teachingpermission_date` date DEFAULT NULL,
  `jsc_teachingpermission_attachment` varchar(50) DEFAULT NULL,
  `ssc_teachingpermission_date` date DEFAULT NULL,
  `ssc_teachingpermission_attachment` varchar(50) DEFAULT NULL,
  `hsc_teachingpermission_date` date DEFAULT NULL,
  `hsc_teachingpermission_attachment` varchar(50) DEFAULT NULL,
  `jsc_affiliation_date` date DEFAULT NULL,
  `jsc_affiliation_attachment` varchar(50) DEFAULT NULL,
  `ssc_affiliation_date` date DEFAULT NULL,
  `ssc_affiliation_attachment` varchar(50) DEFAULT NULL,
  `hsc_affiliation_date` date DEFAULT NULL,
  `hsc_affiliation_attachment` varchar(50) DEFAULT NULL,
  `head_institution` varchar(255) DEFAULT NULL,
  `head_institution_sign` varchar(50) DEFAULT NULL,
  `amount` varchar(10) DEFAULT NULL,
  `paymentstatus` varchar(1) DEFAULT NULL,
  `payment_aprovedate` date DEFAULT NULL,
  `bbmemo_no` varchar(30) DEFAULT NULL,
  `check_bit` varchar(30) DEFAULT NULL,
  `s_tran_num` varchar(30) DEFAULT NULL,
  `status` varchar(1) DEFAULT '0',
  `isdate` date DEFAULT NULL,
  `dealing_assistant` varchar(1) DEFAULT NULL,
  `dealing_assistant_assigndate` date DEFAULT NULL,
  `dealing_assistant_date` date DEFAULT NULL,
  `section_officer` varchar(1) DEFAULT NULL,
  `section_officer_assigndate` date DEFAULT NULL,
  `section_officer_date` date DEFAULT NULL,
  `assistant_inspector` varchar(1) DEFAULT NULL,
  `assistant_inspector_assigndate` date DEFAULT NULL,
  `assistant_inspector_date` date DEFAULT NULL,
  `deputy_inspector` varchar(1) DEFAULT NULL,
  `deputy_inspector_assigndate` date DEFAULT NULL,
  `deputy_inspector_date` date DEFAULT NULL,
  `inspector` varchar(1) DEFAULT NULL,
  `inspector_date` date DEFAULT NULL,
  `chairman` varchar(1) DEFAULT NULL,
  `chairman_date` date DEFAULT NULL,
  `chairman_send` varchar(1) DEFAULT NULL,
  `chairman_send_date` date DEFAULT NULL,
  `chairman_approval` varchar(1) DEFAULT NULL,
  `chairman_approvaldate` date DEFAULT NULL,
  `chairman_aprove_visit` varchar(1) DEFAULT NULL,
  `chairman_aprove_visit_date` date DEFAULT NULL,
  `officer_visit` varchar(10) DEFAULT NULL,
  `officer_visit_date` date DEFAULT NULL,
  `officer_visit_report` varchar(10) DEFAULT NULL,
  `officer_visit_report_date` date DEFAULT NULL,
  `ais_visit_report_comments` varchar(1) DEFAULT NULL,
  `ais_visit_report_commentsdate` date DEFAULT NULL,
  `dis_visit_report_comments` varchar(1) DEFAULT NULL,
  `dis_visit_report_commentsdate` date DEFAULT NULL,
  `is_visit_report_comments` varchar(1) DEFAULT NULL,
  `is_visit_report_commentsdate` date DEFAULT NULL,
  `report_chairman_send` varchar(1) DEFAULT NULL,
  `report_chairman_senddate` date DEFAULT NULL,
  `showcause` longtext DEFAULT NULL,
  `showcause_date` date DEFAULT NULL,
  `showcause_reply` longtext DEFAULT NULL,
  `showcause_replydate` date DEFAULT NULL,
  `sarok_no` varchar(100) DEFAULT NULL,
  `ministery_sarok` varchar(100) DEFAULT NULL,
  `affiliation_date_from` date DEFAULT NULL,
  `affiliation_date_to` date DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `reject_letter` longtext DEFAULT NULL,
  `bitaron` longtext DEFAULT NULL,
  `complete` varchar(1) DEFAULT NULL,
  `complete_sign` varchar(50) DEFAULT NULL,
  `complate_date` varchar(255) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interactive_instituteopens`
--

INSERT INTO `interactive_instituteopens` (`id`, `name`, `mobile`, `email`, `eiin`, `institutename`, `institute_established_date`, `institute_name_type`, `institute_name_type_attachment`, `address`, `district`, `postoffice`, `upazilla`, `zilla`, `institution_type`, `institution_type_details`, `institute_version`, `institute_section`, `institute_section_details`, `institute_area`, `institute_distance`, `institute_distance_attachment`, `institute_population`, `institute_population_attachment`, `institute_land`, `institute_land_attachment`, `establishing_institute_date`, `establishing_institute_attachment`, `jsc_teachingpermission_date`, `jsc_teachingpermission_attachment`, `ssc_teachingpermission_date`, `ssc_teachingpermission_attachment`, `hsc_teachingpermission_date`, `hsc_teachingpermission_attachment`, `jsc_affiliation_date`, `jsc_affiliation_attachment`, `ssc_affiliation_date`, `ssc_affiliation_attachment`, `hsc_affiliation_date`, `hsc_affiliation_attachment`, `head_institution`, `head_institution_sign`, `amount`, `paymentstatus`, `payment_aprovedate`, `bbmemo_no`, `check_bit`, `s_tran_num`, `status`, `isdate`, `dealing_assistant`, `dealing_assistant_assigndate`, `dealing_assistant_date`, `section_officer`, `section_officer_assigndate`, `section_officer_date`, `assistant_inspector`, `assistant_inspector_assigndate`, `assistant_inspector_date`, `deputy_inspector`, `deputy_inspector_assigndate`, `deputy_inspector_date`, `inspector`, `inspector_date`, `chairman`, `chairman_date`, `chairman_send`, `chairman_send_date`, `chairman_approval`, `chairman_approvaldate`, `chairman_aprove_visit`, `chairman_aprove_visit_date`, `officer_visit`, `officer_visit_date`, `officer_visit_report`, `officer_visit_report_date`, `ais_visit_report_comments`, `ais_visit_report_commentsdate`, `dis_visit_report_comments`, `dis_visit_report_commentsdate`, `is_visit_report_comments`, `is_visit_report_commentsdate`, `report_chairman_send`, `report_chairman_senddate`, `showcause`, `showcause_date`, `showcause_reply`, `showcause_replydate`, `sarok_no`, `ministery_sarok`, `affiliation_date_from`, `affiliation_date_to`, `body`, `reject_letter`, `bitaron`, `complete`, `complete_sign`, `complate_date`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'dfgdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '1', '23421434', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-09 12:43:21', '2024-01-09 12:43:21'),
(3, '1', '23421434', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-09 12:43:39', '2024-01-09 12:43:39'),
(4, '1', '23234234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-09 12:43:50', '2024-01-09 12:43:50'),
(5, '1', '23234234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-09 12:45:01', '2024-01-09 12:45:01'),
(6, '1', '01711469894', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-09 12:45:21', '2024-01-09 12:45:21'),
(7, '1', '01819677547', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-09 12:47:40', '2024-01-09 12:47:40'),
(8, '1', '4323423', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-09 12:54:07', '2024-01-09 12:54:07'),
(9, '1', '01819677577', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-09 12:56:09', '2024-01-09 12:56:09'),
(10, '1', '10744469894', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-09 12:58:17', '2024-01-09 12:58:17'),
(11, '1', '23231321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-09 12:59:40', '2024-01-09 12:59:40'),
(12, '1', '081146994', 'mosh@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-09 13:03:09', '2024-01-09 13:03:09'),
(13, '1', '234324354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-09 13:04:29', '2024-01-09 13:04:29'),
(14, '1', '423424', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-09 13:05:22', '2024-01-09 13:05:22'),
(15, '1', '324234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-09 13:06:47', '2024-01-09 13:06:47'),
(16, '1', '324234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-09 13:07:16', '2024-01-09 13:07:16'),
(17, '1', '01711457698', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-10 08:18:20', '2024-01-10 08:18:20'),
(18, '1', '01711457698', 'user2@localhost.com', NULL, 'yt yryitr ytuir tyi', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-10 08:20:48', '2024-01-10 08:20:48'),
(19, '1', '01711457698', 'moshiurabir@gmail.com', NULL, 'yt yryitr ytuir tyi', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-10 08:21:51', '2024-01-10 08:21:51'),
(20, '1', '01711457698', 'moshiurabir@gmail.com', NULL, 'yt yryitr ytuir tyi', NULL, '1', NULL, 'j kgh khv kjhj vhvkjh', NULL, NULL, NULL, NULL, '1', NULL, '1', '1', NULL, '1', '20', 'C:\\xampp\\tmp\\php100A.tmp', '20', 'C:\\xampp\\tmp\\php100B.tmp', '20', 'C:\\xampp\\tmp\\php100C.tmp', '2024-01-01', 'C:\\xampp\\tmp\\php100D.tmp', '2024-01-01', 'C:\\xampp\\tmp\\php100E.tmp', '2024-01-01', 'C:\\xampp\\tmp\\php100F.tmp', '2024-01-01', 'C:\\xampp\\tmp\\php1010.tmp', '2024-01-01', 'C:\\xampp\\tmp\\php1011.tmp', '2024-01-01', 'C:\\xampp\\tmp\\php1012.tmp', '2024-01-01', 'C:\\xampp\\tmp\\php1013.tmp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-10 08:38:28', '2024-01-10 08:38:28'),
(21, '1', '01711457698', 'moshiurabir@gmail.com', NULL, 'yt yryitr ytuir tyi', NULL, '1', NULL, 'j kgh khv kjhj vhvkjh', NULL, NULL, NULL, NULL, '1', NULL, '1', '1', NULL, '1', '20', 'C:\\xampp\\tmp\\phpB4C.tmp', '20', 'C:\\xampp\\tmp\\phpB4D.tmp', '20', 'C:\\xampp\\tmp\\phpB4E.tmp', '2024-01-01', 'C:\\xampp\\tmp\\phpB4F.tmp', '2024-01-01', 'C:\\xampp\\tmp\\phpB50.tmp', '2024-01-01', 'C:\\xampp\\tmp\\phpB51.tmp', '2024-01-01', 'C:\\xampp\\tmp\\phpB52.tmp', '2024-01-01', 'C:\\xampp\\tmp\\phpB53.tmp', '2024-01-01', 'C:\\xampp\\tmp\\phpB54.tmp', '2024-01-01', 'C:\\xampp\\tmp\\phpB55.tmp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-10 09:15:35', '2024-01-10 09:15:35'),
(22, '1', '01711457694', 'user2@localhost.com', NULL, 'yt yryitr ytuir tyi', NULL, '1', NULL, 'j kgh khv kjhj vhvkjh', NULL, NULL, NULL, NULL, '1', NULL, '1', '1', NULL, '1', '20', 'C:\\xampp\\tmp\\php3FE0.tmp', '20', 'C:\\xampp\\tmp\\php3FE1.tmp', '20', 'C:\\xampp\\tmp\\php3FE2.tmp', '2024-01-01', 'C:\\xampp\\tmp\\php3FE3.tmp', '2024-01-01', 'C:\\xampp\\tmp\\php3FE4.tmp', '2024-01-01', 'C:\\xampp\\tmp\\php3FE5.tmp', '2024-01-01', 'C:\\xampp\\tmp\\php3FE6.tmp', '2024-01-01', 'C:\\xampp\\tmp\\php3FE7.tmp', '2024-01-01', 'C:\\xampp\\tmp\\php3FE8.tmp', '2024-01-01', 'C:\\xampp\\tmp\\php3FE9.tmp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-10 09:20:11', '2024-01-10 09:20:11');

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
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2023_07_21_150626_create_admins_table', 1),
(12, '2023_11_07_045204_create_ssc_payments_table', 2),
(13, '2024_01_05_183444_add_login_fields_to_users_table', 3),
(14, '2024_01_05_190115_add_two_factor_to_users_table', 4),
(15, '2024_01_06_162716_create_interactive_instituteopens_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('user2@localhost.com', '$2y$10$Xg20TM.b08W4c1FJZsVzOuc0DEhOJ5haFWybATmLeLu6Xl88H1.zm', '2024-01-06 02:06:19');

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`, `admin_id`) VALUES
('4n4o2WM9kcuIccZ8WV6W6vsu73f3ZfGgtRXUR5SM', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZlVKa00wRlZpYWFUMkRFcnlkTWZzNzE4U1BBeE1SSmlmM1c4SnZNTCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=', 1711187304, NULL),
('D6zjOqPj4K0Pqx183EFh5AVn7Y5HHAMxAmRO4qR0', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNnU4VG80dDg3V2xaVFdBY2MxTlVyVmVNbkZHM1VldUVXNjJEMjZxSSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=', 1711124090, NULL),
('HCfB17o5Wbb9zahyV1A5swNyWWROyQGdfZNPgBCv', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidlBCdjhoekRSSW1IeDk3WjJjaTJIZlQ0cEVQU0prNktnbXpnUVhibCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=', 1711187190, NULL),
('m5nxJWCjt7FzIBH9G3jSRPD4GZdMoJiW2RnDBO0S', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiR2g4SlkzdVBGNmt3dldWczZOckNMcWFYOHp6WUVyN0xKd3N0bmtYaCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=', 1711187202, NULL),
('nQN6a0ReEQlKyGpKRjqIiCspzai5RBkqQkqpMipj', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY2lDcTR5TXZ5VmptQnd2dFNqNXRYQXo1cHE2cjRJbWdvdHhRVEJyeSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1711187166, NULL),
('Nu7FXJzy8c5WSGrNz4Dw7TgroKoRGc4cpcq1f1Lu', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicURhM1NCZFdvZzZaeTllcml1MHhHSWoyRDZJUXlZU0x1MzNrM0FIayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=', 1708790574, NULL),
('ODHd14nJQkVhoK0Ruqr2nWkQ3XZfSv6bJDSV69kg', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWUxvRnpHbGZzSzNJNVE5NFVQOWpqNFp5Y21NZWhLS2hFY2hiYkduVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1708791512, NULL),
('RfAKAQSLTAgxAJEmKw2L4715bkBKDHzuss0151Vp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUkpoeWtxaVhCOWFnaTlGUUh1VzRndEE1S3l3eUoyME56cjFzNjFqTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9zc2NwYXltZW50Ijt9czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=', 1711189218, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ssc_payments`
--

CREATE TABLE `ssc_payments` (
  `id` int(11) UNSIGNED NOT NULL,
  `eiin` varchar(255) DEFAULT NULL,
  `institutename` varchar(255) DEFAULT NULL,
  `numberofstudent` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `sonali_random` varchar(255) DEFAULT NULL,
  `check_bit` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
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
  `designation` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `is_admin` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `section_id` varchar(255) DEFAULT NULL,
  `section_department` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `sign` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `two_factor_code` varchar(255) DEFAULT NULL,
  `two_factor_expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `designation`, `username`, `email`, `email_verified_at`, `password`, `session_id`, `is_admin`, `role`, `section`, `section_id`, `section_department`, `mobile`, `sign`, `photo`, `note`, `status`, `remember_token`, `created_at`, `updated_at`, `last_login_at`, `last_login_ip`, `two_factor_code`, `two_factor_expires_at`) VALUES
(1, 'Md Moshiur abir', NULL, NULL, 'user@localhost.com', NULL, '$2y$10$nCtNjloCo02QzDHSjP/a2uLUqYoSHHWnMfMA4K90a8XU6K2uIu7US', '', NULL, 'admin', NULL, NULL, NULL, '01711469894', NULL, NULL, NULL, 'active', NULL, '2023-08-02 05:09:26', '2024-01-06 00:21:23', '2024-01-06 06:21:23', '127.0.0.1', NULL, NULL),
(2, 'Md Mamun Hossain', NULL, NULL, 'user1@localhost.com', NULL, '$2y$10$nCtNjloCo02QzDHSjP/a2uLUqYoSHHWnMfMA4K90a8XU6K2uIu7US', '', NULL, 'accounts', NULL, NULL, NULL, '01711469895', NULL, NULL, NULL, 'active', NULL, '2023-08-02 05:09:26', '2023-08-02 05:09:26', NULL, NULL, NULL, NULL),
(3, 'Md User', NULL, NULL, 'user2@localhost.com', '2024-01-06 00:57:23', '$2y$10$nCtNjloCo02QzDHSjP/a2uLUqYoSHHWnMfMA4K90a8XU6K2uIu7US', 'b5RwRXaO2Fqi6HD8UVKWuz3kjfcRiQuBDAOODJ5O', NULL, 'user', NULL, NULL, NULL, '01711469896', NULL, NULL, NULL, 'active', NULL, '2023-08-02 05:09:26', '2024-03-23 03:48:24', '2024-03-23 09:48:24', '127.0.0.1', NULL, NULL),
(4, 'Arun Kumar Gyan', NULL, NULL, 'user3@localhost.com', NULL, '$2y$10$nCtNjloCo02QzDHSjP/a2uLUqYoSHHWnMfMA4K90a8XU6K2uIu7US', '', NULL, 'exam', NULL, NULL, NULL, '01711469895', NULL, NULL, NULL, 'active', NULL, '2023-08-02 05:09:26', '2023-08-02 05:09:26', NULL, NULL, NULL, NULL),
(5, 'Andrew Lindsey', NULL, NULL, 'lutuqogeq@mailinator.com', NULL, '$2y$10$zJ.gOQtu9bZQM.TJgkBxJ.NJHbcfxnv7R6kI1xdLIGVtuf4hEal9a', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-04 23:51:40', '2024-01-04 23:51:40', NULL, NULL, NULL, NULL),
(6, 'Charde Hines', NULL, NULL, 'hewupedud@mailinator.com', NULL, '$2y$10$TArL2EPHbgOCNkF.EEWJ9O3sH3ZudZuDBcoyKbc7asBuSfXAQNvIO', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-04 23:52:05', '2024-01-04 23:52:05', NULL, NULL, NULL, NULL),
(7, 'Emily Perry', NULL, NULL, 'cowetumoco@mailinator.com', NULL, '$2y$10$SbzSjJ6euFsnHrvkSxKgL.Yl99iIZjA0VO.oo0O702gE6GnY9Itoy', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 00:30:40', '2024-01-05 00:30:40', NULL, NULL, NULL, NULL),
(8, 'Neve Manning', NULL, NULL, 'nacynypugy@mailinator.com', NULL, '$2y$10$VXoIsWUkUEo9Npctyts3E.pcAevabdZk2Hvi4voxrZyepgVLPdWsu', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 00:41:45', '2024-01-05 00:41:45', NULL, NULL, NULL, NULL),
(9, 'Otto Reese', NULL, NULL, 'fuhizapepa@mailinator.com', NULL, '$2y$10$ugshoiY.0Vw3vXF3kBta8e78kd6E8WrGNPRKkF4vmzCamNl0JAFZ6', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 00:49:58', '2024-01-05 00:49:58', NULL, NULL, NULL, NULL),
(10, 'Winter Crosby', NULL, NULL, 'qenoq@mailinator.com', NULL, '$2y$10$jEqRpbWD8nR2pt71hI34KOEajuJ/j6S9uXHT/NbL8dac0NpvloN9O', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 02:07:00', '2024-01-05 02:07:00', NULL, NULL, NULL, NULL),
(11, 'Jordan Johnson', NULL, NULL, 'dilyja@mailinator.com', NULL, '$2y$10$1c/7k7a3U/Lf8NmFPTa6ku/yL/orcGUHLbORwd9wOqHbAzpttbE.6', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 02:33:49', '2024-01-05 02:33:49', NULL, NULL, NULL, NULL),
(12, 'Tad Herring', NULL, NULL, 'zepudi@mailinator.com', NULL, '$2y$10$0c2vn1b41f8WLPcHqMxxMOrTJTKk3FaTPYyO26MnNzRvkW3I7UJx2', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 03:45:55', '2024-01-05 03:45:55', NULL, NULL, NULL, NULL),
(13, 'Janna David', NULL, NULL, 'sokyjyve@mailinator.com', NULL, '$2y$10$kJwMPZ.sHVNToMdzbxIfjeOoeBIZRAbAcA0ch/WRLv229d/XQwOfi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 03:46:04', '2024-01-05 03:46:04', NULL, NULL, NULL, NULL),
(14, 'Tanek Hebert', NULL, NULL, 'bazu@mailinator.com', NULL, '$2y$10$HcjyvgbYziN3OeFvtfMA9.//9ElEZmOkdq9eBNQCY4HUdo2Aly2Uq', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 03:47:08', '2024-01-05 03:47:08', NULL, NULL, NULL, NULL),
(15, 'Drew King', NULL, NULL, 'hinugo@mailinator.com', NULL, '$2y$10$Fu6w.OJuPNyICGqMaPuSUuTs3E1.fgkDcL1uG/3dKsxhnmu7wXIT.', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 03:52:54', '2024-01-05 03:52:54', NULL, NULL, NULL, NULL),
(16, 'Malik Hewitt', NULL, NULL, 'woculuz@mailinator.com', NULL, '$2y$10$UoVfTzhND/Z/KOSzjMo9L.rl7XASQ9KTTmfNtOUY2bBIBekQyns1e', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 04:05:16', '2024-01-05 04:05:16', NULL, NULL, NULL, NULL),
(17, 'Brittany Calderon', NULL, NULL, 'rinyxucywa@mailinator.com', NULL, '$2y$10$xPvm/Tl.bfkmc6VcpKpTSeKdvw9dU7YoZ0I1vxT7G56Pcg1CHHYIO', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 04:05:59', '2024-01-05 04:05:59', NULL, NULL, NULL, NULL),
(18, 'Daphne Jacobson', NULL, NULL, 'ruqaqy@mailinator.com', NULL, '$2y$10$idvjQbSgaL5dHuIhjmr39OKCdo8iu6tDnlKonvQ3BucfXPsunHGHi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 04:18:48', '2024-01-05 04:18:48', NULL, NULL, NULL, NULL),
(19, 'Moana Doyle', NULL, NULL, 'bulotuqi@mailinator.com', NULL, '$2y$10$Svtjv6Y.wGZndV6zqjIOi./0MYmU9tDoUoIShHHWBUJXAZD5buxBC', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 08:17:11', '2024-01-05 08:17:11', NULL, NULL, NULL, NULL),
(20, 'Katell Robles', NULL, NULL, 'bajid@mailinator.com', NULL, '$2y$10$RgUI3NHbAlgEuVSIJSelOuRxtZkiomagMhPjWNvSvfrL9BODDciAi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 08:17:21', '2024-01-05 08:17:21', NULL, NULL, NULL, NULL),
(21, 'Cailin Becker', NULL, NULL, 'jycoq@mailinator.com', NULL, '$2y$10$0CEJZFErIagJM0pA4wo1XOWMvkYsckugjf3jFvW3lyu2Bvu38pqui', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 08:48:02', '2024-01-05 08:48:02', NULL, NULL, NULL, NULL),
(22, 'Peter Talley', NULL, NULL, 'figamoxi@mailinator.com', NULL, '$2y$10$vkZyw3rf.w5JhmhSUUvvguotjeEwCbcVyymMnnh/TgItBYe9H2Stq', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 10:11:37', '2024-01-05 10:11:37', NULL, NULL, NULL, NULL),
(23, 'tempuser', NULL, NULL, 'tempuser@gmail.com', NULL, '$2y$10$6LF/NZoHFJ.07e305ZsTTuGb/JUPWFQ3wYq3HVy92tOuSdlGUCASe', '', NULL, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 10:55:28', '2024-01-05 10:56:46', NULL, NULL, NULL, NULL),
(24, 'Baker Snyder', NULL, NULL, 'xizysebeh@mailinator.com', NULL, '$2y$10$vGzibpo5oEZdy7XE.zfev.Wo6X9FL1lvPG6Arig.UXM6zEimM3vSK', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 12:02:05', '2024-01-05 12:02:05', NULL, NULL, NULL, NULL),
(25, 'Myles Ratliff', NULL, NULL, 'wuneh@mailinator.com', NULL, '$2y$10$swrLDfpU0MdxYcAFLgHTKOZPGIutclFNMmJEqYZ/iNfSQ1ZL58ekS', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 13:03:05', '2024-01-05 13:03:05', NULL, NULL, NULL, NULL),
(26, 'Indigo Mccormick', NULL, NULL, 'qocidi@mailinator.com', NULL, '$2y$10$0PwEQfBhZrgMHlPq6/v3YeEnEpfh2.GZb37AkbRcz3nZaOvDN.j5e', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-06 06:48:01', '2024-01-06 06:48:01', NULL, NULL, NULL, NULL);

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
-- Indexes for table `admins_backup`
--
ALTER TABLE `admins_backup`
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
-- Indexes for table `interactive_instituteopens`
--
ALTER TABLE `interactive_instituteopens`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `ssc_payments`
--
ALTER TABLE `ssc_payments`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admins_backup`
--
ALTER TABLE `admins_backup`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interactive_instituteopens`
--
ALTER TABLE `interactive_instituteopens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ssc_payments`
--
ALTER TABLE `ssc_payments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
