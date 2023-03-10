-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2023 at 12:10 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icsb`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `visionmission` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `details`, `img`, `visionmission`, `created_at`, `updated_at`) VALUES
(1, 'fvtggh', '<p>fvgghb</p>', '/storage/fvtggh/about-us.jpg', '<p>fvgbgfbh</p>', '2023-01-17 04:06:03', '2023-01-17 04:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `academic_infos`
--

CREATE TABLE `academic_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_infos_id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `passing_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `board_id` bigint(20) UNSIGNED NOT NULL,
  `roll` int(11) NOT NULL,
  `reg_no` int(11) NOT NULL,
  `gpa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marksheet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academic_infos`
--

INSERT INTO `academic_infos` (`id`, `student_infos_id`, `exam_id`, `passing_year`, `group`, `board_id`, `roll`, `reg_no`, `gpa`, `reg_card`, `marksheet`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(12, 1, 1, '2019', 'Science', 1, 112233, 2147483647, '5', 'public/student-info/1/registration/0/logo.png', 'public/student-info/1/marksheet/0/Screenshot_2.png', '2022-10-01 08:01:32', '2022-10-01 08:01:32', NULL, 1, NULL, NULL),
(14, 2, 1, '2002', 'Science', 1, 100001, 3958674, '4.5', 'public/student-info/2/registration/Plan for Successfull Completing Inustrial Training22 - 2022.pdf', 'public/student-info/2/marksheet/2022_10_11_15-56-04_pm.pdf', '2022-10-12 11:53:30', '2022-10-12 11:53:30', NULL, 1, NULL, NULL),
(15, 2, 2, '2004', 'Science', 1, 20002, 987456321, '4.8', 'public/student-info/2/registration/Plan for Successfull Completing Inustrial Training22 - 2022.pdf', 'public/student-info/2/marksheet/Shakil_Ahamed.pdf', '2022-10-12 11:53:30', '2022-10-12 11:53:30', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admissionrules`
--

CREATE TABLE `admissionrules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `studentregisproce` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `modepaymentfees` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateofregis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `refundfees` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admisnruleimg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admissionrules`
--

INSERT INTO `admissionrules` (`id`, `studentregisproce`, `modepaymentfees`, `dateofregis`, `refundfees`, `admisnruleimg`, `created_at`, `updated_at`) VALUES
(1, '<p>fvfvfv</p>', '', '', '', '/storage/AdmissionRuleImage/about-us.jpg', '2023-01-18 05:34:38', '2023-01-18 05:34:38'),
(2, '<p>dfcswgv</p>', '<p>sbdxweyfc</p>', '<p>fcv fv b</p>', '<p>fcv fcvfd</p>', '/storage/AdmissionRuleImage/about-us.jpg', '2023-01-18 05:35:59', '2023-01-18 05:35:59'),
(3, '<p>frgdvdfhbf</p>', '<p>bgfbgbhgb</p>', '<p>gfbgbgb</p>', '<p>b gbbngb</p>', '/storage/AdmissionRuleImage/about-us.jpg', '2023-01-18 05:38:53', '2023-01-18 05:38:53'),
(4, '<p>edsfvf</p>', '<p>dscdfvf</p>', '<p>fcvfvgfvb</p>', '<p>cvfvgfvb</p>', '/storage/AdmissionRuleImage/about-us.jpg', '2023-01-18 05:40:24', '2023-01-18 05:40:24'),
(5, '<p>edsfvf</p>', '<p>dscdfvf</p>', '<p>fcvfvgfvb</p>', '<p>cvfvgfvb</p>', '/storage/AdmissionRuleImage/about-us.jpg', '2023-01-18 05:40:24', '2023-01-18 05:40:24'),
(6, '<p>edsfvf</p>', '<p>dscdfvf</p>', '<p>fcvfvgfvb</p>', '<p>cvfvgfvb</p>', '/storage/AdmissionRuleImage/about-us.jpg', '2023-01-18 05:40:25', '2023-01-18 05:40:25'),
(7, '<p>edsfvf</p>', '<p>dscdfvf</p>', '<p>fcvfvgfvb</p>', '<p>cvfvgfvb</p>', '/storage/AdmissionRuleImage/about-us.jpg', '2023-01-18 05:40:25', '2023-01-18 05:40:25'),
(8, '<p>edsfvf</p>', '<p>dscdfvf</p>', '<p>fcvfvgfvb</p>', '<p>cvfvgfvb</p>', '/storage/AdmissionRuleImage/about-us.jpg', '2023-01-18 05:40:25', '2023-01-18 05:40:25'),
(9, '<p>edsfvf</p>', '<p>dscdfvf</p>', '<p>fcvfvgfvb</p>', '<p>cvfvgfvb</p>', '/storage/AdmissionRuleImage/about-us.jpg', '2023-01-18 05:40:26', '2023-01-18 05:40:26'),
(10, '<p>edsfvf</p>', '<p>dscdfvf</p>', '<p>fcvfvgfvb</p>', '<p>cvfvgfvb</p>', '/storage/AdmissionRuleImage/about-us.jpg', '2023-01-18 05:40:26', '2023-01-18 05:40:26'),
(11, '<p>esxdwcfdv</p>', '<p>xc cf xcv</p>', '<p>dcvcfv fc</p>', '<p>cfcfv cfv&nbsp;</p>', '/storage/AdmissionRuleImage/about-us.jpg', '2023-01-19 05:19:26', '2023-01-19 05:19:26');

-- --------------------------------------------------------

--
-- Table structure for table `admitted_std_assigns`
--

CREATE TABLE `admitted_std_assigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_infos_id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `shift_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admitted_std_assigns`
--

INSERT INTO `admitted_std_assigns` (`id`, `student_infos_id`, `session_id`, `semester_id`, `group_id`, `shift_id`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 2, 1, 2, 1, 1, '2022-10-12 11:57:19', '2022-10-12 11:57:19', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assigneds`
--

CREATE TABLE `assigneds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigneds`
--

INSERT INTO `assigneds` (`id`, `title`, `section`, `contact`, `created_at`, `updated_at`) VALUES
(1, 'vb zbfg', 'gfvbgb g', 'gbgbgvb', '2023-01-19 05:24:21', '2023-01-19 05:24:21'),
(2, 'frtwgtr', 'tfgtgtfrg', 'rfgrgtfg', '2023-01-21 08:15:55', '2023-01-21 08:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `assign_books`
--

CREATE TABLE `assign_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `std_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `assign_date` date NOT NULL,
  `return_date` date NOT NULL,
  `returned_date` date DEFAULT NULL,
  `status` enum('0','1','-1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_books`
--

INSERT INTO `assign_books` (`id`, `std_id`, `book_id`, `qty`, `assign_date`, `return_date`, `returned_date`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(9, 5, 1, 1, '2022-11-23', '2022-11-24', NULL, '0', '2022-11-23 08:52:12', '2022-11-23 08:52:12', NULL, 1, NULL, NULL),
(10, 4, 1, 5, '2022-11-23', '2022-11-24', '2022-11-23', '1', '2022-11-23 08:53:41', '2022-11-23 08:54:40', NULL, 1, NULL, NULL),
(11, 4, 2, 1, '2022-11-23', '2022-11-23', '2022-11-23', '1', '2022-11-23 08:53:41', '2022-11-23 09:37:17', NULL, 1, NULL, NULL),
(12, 4, 3, 1, '2022-11-25', '2022-11-26', '2022-11-25', '1', '2022-11-25 11:58:06', '2022-11-25 11:59:14', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `departments_id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `shift_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `session_id`, `departments_id`, `semester_id`, `teacher_id`, `subject_id`, `group_id`, `shift_id`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 4, 1, 2, 12, 5, 1, 1, '2022-10-22 09:40:20', '2022-10-22 09:40:20', 1, NULL, NULL, NULL),
(2, 4, 1, 2, 12, 3, 1, 1, '2022-10-22 10:12:52', '2022-10-22 10:12:52', 1, NULL, NULL, NULL),
(3, 4, 1, 1, 12, 4, 1, 1, '2022-10-22 15:52:01', '2022-10-22 15:52:01', 1, NULL, NULL, NULL),
(4, 1, 1, 1, 12, 4, 1, 1, '2022-10-22 15:53:33', '2022-10-22 15:53:33', 1, NULL, NULL, NULL),
(5, 1, 1, 2, 12, 5, 1, 1, '2022-10-25 10:44:32', '2022-10-25 10:44:32', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bloodgroups`
--

CREATE TABLE `bloodgroups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bloodgroups`
--

INSERT INTO `bloodgroups` (`id`, `name`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'O-', '2022-09-08 08:54:44', '2022-09-08 08:54:57', 1, 1, NULL, NULL),
(2, 'F', '2022-09-08 08:55:10', '2022-09-08 08:55:14', 1, NULL, '2022-09-08 08:55:14', 1),
(3, 'A +', '2022-09-09 08:45:38', '2022-09-09 08:45:38', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

CREATE TABLE `boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boards`
--

INSERT INTO `boards` (`id`, `name`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'Dinajpur Board', '2022-09-07 14:08:48', '2022-09-07 14:09:13', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `bookshelf_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `author_name`, `qty`, `category_id`, `bookshelf_id`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'A', 'A', 9, 2, 2, '2022-11-23 08:37:30', '2022-11-23 08:54:40', NULL, 1, NULL, NULL),
(2, 'B', 'B', 20, 2, 2, '2022-11-23 08:52:55', '2022-11-23 09:37:17', NULL, 1, NULL, NULL),
(3, 'ANSI C', 'sir A', 500, 3, 2, '2022-11-25 11:54:28', '2022-11-25 11:59:14', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookshelves`
--

CREATE TABLE `bookshelves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookshelves`
--

INSERT INTO `bookshelves` (`id`, `name`, `capacity`, `details`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(2, 'A1', 1000, 'some detailss', '2022-11-09 09:57:31', '2022-11-09 09:58:58', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `departments_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `departments_id`, `name`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(2, 1, 'General C', '2022-11-23 08:36:40', '2022-11-23 08:36:40', NULL, 1, NULL, NULL),
(3, 1, 'Programming', '2022-11-25 11:51:36', '2022-11-25 11:51:36', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_contents`
--

CREATE TABLE `class_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `std_attendance_id` bigint(20) UNSIGNED NOT NULL,
  `class_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_contents`
--

INSERT INTO `class_contents` (`id`, `std_attendance_id`, `class_content`, `class`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 2, '<h1>Bilingual Personality Disorder</h1><figure class=\"image image-style-side\"><img src=\"https://c.cksource.com/a/1/img/docs/sample-image-bilingual-personality-disorder.jpg\"><figcaption>One language, one person.</figcaption></figure><p>This may be the firs', '3', '2022-10-22 09:49:35', '2022-10-22 09:49:35', 1, NULL, NULL, NULL),
(2, 1, '<h1>xcvxcv</h1><p>xcvxcvxcv</p>', '', '2022-10-22 15:24:48', '2022-10-22 15:24:48', 1, NULL, NULL, NULL),
(3, 3, '<h1>fdgdfg11111</h1><p>dfgdfgdfgdfg</p>', '', '2022-10-25 10:54:28', '2022-10-25 10:55:30', 1, NULL, NULL, NULL),
(4, 4, '<h1>ewfr</h1><p>sdfdsf</p>', '', '2022-10-25 10:57:10', '2022-10-25 10:57:10', 1, NULL, NULL, NULL),
(5, 5, '<h1>gfdg</h1><p>dfgdfg</p>', '', '2022-11-25 12:07:56', '2022-11-25 12:07:56', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_files`
--

CREATE TABLE `class_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `std_attendance_id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codeconducts`
--

CREATE TABLE `codeconducts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codeofprointro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `setoutbiscode` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `codeofpro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `inpartims` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `codeofconductimg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `codeconducts`
--

INSERT INTO `codeconducts` (`id`, `codeofprointro`, `setoutbiscode`, `codeofpro`, `inpartims`, `codeofconductimg`, `created_at`, `updated_at`) VALUES
(1, '<p>wdwxjewfijfv</p>', '<p>dcfdfjb&nbsp;</p>', '<p>fvdfmvfmvv</p>', '<p>fvdfkggb</p>', '/storage/CodeConductImage/about-us.jpg', '2023-01-19 02:31:53', '2023-01-19 02:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `contactaddresses`
--

CREATE TABLE `contactaddresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactaddresses`
--

INSERT INTO `contactaddresses` (`id`, `email`, `phone`, `telephone`, `fax`, `address`, `created_at`, `updated_at`) VALUES
(3, 'fcfavbgb', 'fdcvfdvv', 'fv fvfdvb', 'fvfv fv', '<p>fdv vv&nbsp;</p>', '2023-01-19 04:36:09', '2023-01-19 04:36:09'),
(4, 'fcfavbgb', 'fdcvfdvv', 'fv fvfdvb', 'fvfv fv', '<p>fdv vv&nbsp;</p>', '2023-01-19 04:36:13', '2023-01-19 04:36:13'),
(5, 'efafdv', 'dcfvfv', 'fvfvvb', 'fdvfv', '<p>&nbsp;fv fv</p>', '2023-01-19 04:38:44', '2023-01-19 04:38:44'),
(6, 'c cfcxv', 'c  fcv fc', 'cf  vv', 'vc vc v', '<p>vc vc vc</p>', '2023-01-19 04:39:01', '2023-01-19 04:39:01');

-- --------------------------------------------------------

--
-- Table structure for table `coursecategories`
--

CREATE TABLE `coursecategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coursecategories`
--

INSERT INTO `coursecategories` (`id`, `category_name`, `category_description`, `category_image`, `created_at`, `updated_at`) VALUES
(2, 'GraphicsDesigns', '<p>dnjcrfnfv</p>', '/storage/GraphicsDesigns/ICTSkills.png', '2023-02-17 04:37:34', '2023-03-06 04:41:50'),
(4, 'Digital Marketing', '<p>refrffguvv</p>', '/storage/Digital Marketing/ICTSkills.png', '2023-03-02 05:10:55', '2023-03-02 05:10:55'),
(5, 'Programming', '<p>dncvfgn</p>', '/storage/Programming/ICTSkills.png', '2023-03-04 04:39:33', '2023-03-04 04:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `coursecontents`
--

CREATE TABLE `coursecontents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_title_id` bigint(20) UNSIGNED NOT NULL,
  `course_content_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_content_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_content_material_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_content_material_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_content_duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coursediscounts`
--

CREATE TABLE `coursediscounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_title_id` bigint(20) UNSIGNED NOT NULL,
  `course_discount_start` date NOT NULL,
  `course_discount_end` date NOT NULL,
  `course_discount_amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courseenrollstudents`
--

CREATE TABLE `courseenrollstudents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_title_id` bigint(20) UNSIGNED NOT NULL,
  `course_student_id` bigint(20) UNSIGNED NOT NULL,
  `course_start_date` date NOT NULL,
  `course_completion_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coursereviews`
--

CREATE TABLE `coursereviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_title_id` bigint(20) UNSIGNED NOT NULL,
  `course_student_id` bigint(20) UNSIGNED NOT NULL,
  `course_review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coursesinfos`
--

CREATE TABLE `coursesinfos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_category_id` bigint(20) UNSIGNED NOT NULL,
  `course_teacher_id` bigint(20) UNSIGNED NOT NULL,
  `course_duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_fee` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coursesinfos`
--

INSERT INTO `coursesinfos` (`id`, `course_title`, `course_category_id`, `course_teacher_id`, `course_duration`, `course_description`, `course_image`, `course_fee`, `created_at`, `updated_at`) VALUES
(1, 'JavaScript', 5, 1, '30 hours', '<p>vmigmghb</p>', '/storage/JavaScript/ICTSkills.png', 3000, '2023-03-07 02:30:09', '2023-03-07 02:30:09'),
(3, 'Design and Video Editing', 2, 1, '30 hours', '<p>hfrgntrugh</p>', '/storage/Design and Video Editing/ICTSkills.png', 3000, '2023-03-07 02:31:25', '2023-03-07 02:31:25'),
(7, 'Python', 5, 1, '30 hours', '<p>hggbnb</p>', '/storage/Python/ICTSkills.png', 3000, '2023-03-07 03:09:51', '2023-03-07 03:09:51'),
(10, 'Rust', 5, 1, '30 hours', '<p>dfrfhg</p>', '/storage/Rust/ICTSkills.png', 3000, '2023-03-07 03:42:39', '2023-03-07 03:42:39'),
(12, 'Fortran', 5, 1, '30 hours', '<p>frgtgh</p>', '/storage/Fortran/ICTSkills.png', 3000, '2023-03-07 04:14:41', '2023-03-07 04:14:41'),
(13, 'C++', 5, 1, '30 hours', '<p>ffghyhb</p>', '/storage/C++/ICTSkills.png', 3000, '2023-03-07 07:29:24', '2023-03-07 07:29:24'),
(14, 'Scala', 5, 1, '30 hours', '<p>fjcrejtg</p>', '/storage/Scala/ICTSkills.png', 3000, '2023-03-07 07:31:17', '2023-03-07 07:31:17'),
(15, 'Julia', 5, 1, '30 hours', '<p>cfvfbg</p>', '/storage/Julia/ICTSkills.png', 3000, '2023-03-07 07:32:05', '2023-03-07 07:32:05'),
(17, 'PHP', 5, 1, '100 hours', '<p>jfdcomgbv</p>', '/storage/PHP/ICTSkills.png', 3000, '2023-03-10 04:15:27', '2023-03-10 04:15:27'),
(23, 'Banner Design', 2, 2, '30 hours', '<p>dcfnfvnv</p>', '/storage/Banner Design/ICTSkills.png', 3000, '2023-03-10 04:45:02', '2023-03-10 04:45:02'),
(24, 'Business Card Design', 2, 2, '30 hours', '<p>jdmgbmg</p>', '/storage/Business Card Design/ICTSkills.png', 3000, '2023-03-10 04:51:41', '2023-03-10 04:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `coursestudents`
--

CREATE TABLE `coursestudents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_student_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_student_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_student_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_student_dob` date NOT NULL,
  `course_student_profession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_student_company_institute` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_student_interest_area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_student_facebook` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_student_linkedin` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_student_github` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_student_website` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_student_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_student_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_student_photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coursestudents`
--

INSERT INTO `coursestudents` (`id`, `course_student_name`, `course_student_email`, `course_student_phone`, `course_student_dob`, `course_student_profession`, `course_student_company_institute`, `course_student_interest_area`, `course_student_facebook`, `course_student_linkedin`, `course_student_github`, `course_student_website`, `course_student_address`, `course_student_description`, `course_student_photo`, `created_at`, `updated_at`) VALUES
(1, 'Herman Barker', 'juriq@mailinator.com', '+1 (362) 503-9045', '1987-04-27', 'Vitae enim voluptati', 'Fulton Rosario Associates', 'Lorem aut est maiore', 'https://www.lyvedexezamim.co.uk', 'https://www.tusewaj.co', 'https://www.palopuhumetib.me', 'https://www.nuqokoqepaq.org.au', 'Eveniet qui qui mag', '<p>djmlffdv</p>', '/storage/Herman Barker/ICTSkills.png', '2023-03-06 03:02:21', '2023-03-06 03:02:21'),
(2, 'Calvin David', 'nidemokipa@mailinator.com', '+1 (413) 294-4916', '2021-04-08', 'Laborum nostrud nesc', 'Austin and Noble Associates', 'Ullamco voluptas arc', 'https://www.hopikuzex.ca', 'https://www.lilavedares.net', 'https://www.rihixodubososyq.co', 'https://www.mozageguz.ca', 'Odit aute esse repre', '<p>rhfrbgvb</p>', '/storage/Calvin David/ICTSkills.png', '2023-03-09 01:28:48', '2023-03-09 01:28:48'),
(3, 'Abraham Clemons', 'xinisojyco@mailinator.com', '+1 (573) 675-7429', '2006-07-23', 'Ullam voluptates qui', 'Wooten Burt Trading', 'Dolor natus qui assu', 'https://www.xobofa.me.uk', 'https://www.nusa.ca', 'https://www.zopylynyza.us', 'https://www.kegegemeqofy.org', 'Aut voluptatem eaqu', '<p>rhfrbgvb</p>', '/storage/Abraham Clemons/ICTSkills.png', '2023-03-09 01:29:07', '2023-03-09 01:29:07'),
(4, 'Cheyenne Morse', 'lybunemoga@mailinator.com', '+1 (127) 357-2146', '1984-04-10', 'Eos dolor Nam elige', 'Stark and Huffman Associates', 'Dolorum id cillum d', 'https://www.titafixylemi.co.uk', 'https://www.mukutuwulir.co', 'https://www.vewomu.in', 'https://www.rosyhypinagewek.mobi', 'Eum eu culpa illum', '<p>rhfrbgvb</p>', '/storage/Cheyenne Morse/ICTSkills.png', '2023-03-09 01:29:46', '2023-03-09 01:29:46'),
(5, 'Serena Newton', 'tokagik@mailinator.com', '+1 (266) 665-8442', '1973-11-10', 'Sed quia hic vel lab', 'Hoover and Montgomery LLC', 'Dolores duis iusto i', 'https://www.laz.com.au', 'https://www.foqiqus.cm', 'https://www.lyfujyb.mobi', 'https://www.jufijir.me.uk', 'Sed facere recusanda', '<p>ffjgifjbgb</p>', '/storage/Serena Newton/ICTSkills.png', '2023-03-09 02:57:15', '2023-03-09 02:57:15'),
(6, 'Adara Buckley', 'jycudehe@mailinator.com', '+1 (541) 554-4934', '1986-10-31', 'Ullam suscipit commo', 'Slater and Mueller Co', 'Anim mollit adipisci', 'https://www.guna.us', 'https://www.forojiwov.tv', 'https://www.rufuhedamov.co', 'https://www.xakaliriq.co', 'Mollit esse exceptu', '<p>fjfgjbh</p>', '/storage/Adara Buckley/ICTSkills.png', '2023-03-10 05:04:25', '2023-03-10 05:04:25'),
(7, 'Susan Garza', 'liqizibeq@mailinator.com', '+1 (127) 216-5767', '1994-11-11', 'Quia voluptas qui ei', 'Stone and Trevino Traders', 'Mollitia amet ex sa', 'https://www.witalim.info', 'https://www.bif.in', 'https://www.fupoke.me', 'https://www.pyl.co.uk', 'Est nihil dolore tem', '<p>vgfbmghb</p>', '/storage/Susan Garza/ICTSkills.png', '2023-03-10 05:09:54', '2023-03-10 05:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `courseteachers`
--

CREATE TABLE `courseteachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_teacher_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_teacher_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_teacher_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_teacher_dob` date NOT NULL,
  `course_teacher_profession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_teacher_company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_teacher_interest_area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_teacher_facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_teacher_linkedin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_teacher_github` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_teacher_website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_teacher_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_teacher_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_teacher_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_teacher_cv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courseteachers`
--

INSERT INTO `courseteachers` (`id`, `course_teacher_name`, `course_teacher_email`, `course_teacher_phone`, `course_teacher_dob`, `course_teacher_profession`, `course_teacher_company`, `course_teacher_interest_area`, `course_teacher_facebook`, `course_teacher_linkedin`, `course_teacher_github`, `course_teacher_website`, `course_teacher_address`, `course_teacher_description`, `course_teacher_photo`, `course_teacher_cv`, `created_at`, `updated_at`) VALUES
(1, 'Shay Pacheco', 'fanewamo@mailinator.com', '+1 (913) 567-2094', '2012-09-08', 'Accusantium quisquam', 'Ortega and Hoffman Inc', 'Et quaerat animi vo', 'https://www.dumibapitow.in', 'https://www.xixahiqubawyrek.com.au', 'https://www.ridukil.org.uk', 'https://www.betovajiro.com', 'Irure sint et perfe', '<p>sccvfdngv&nbsp;</p>', '/storage/Shay Pacheco/ICTSkills.png', '/storage/Shay Pacheco/ICTSkills.drawio (3).pdf', '2023-03-06 02:23:32', '2023-03-06 02:23:32'),
(2, 'Karina Hartman', 'kuruwabit@mailinator.com', '+1 (985) 931-4317', '1991-02-11', 'Sunt quod lorem sunt', 'Vincent Benson Co', 'Aut minim culpa ea e', 'https://www.bipeto.com.au', 'https://www.sexozuvero.in', 'https://www.wibot.us', 'https://www.gohitig.org.au', 'Amet magnam placeat', '<p>dcfvfv</p>', '/storage/Karina Hartman/ICTSkills.png', '/storage/Karina Hartman/ICTSkills.drawio (6).pdf', '2023-03-09 00:52:28', '2023-03-09 00:52:28'),
(3, 'Xavier Pittman', 'fiximyh@mailinator.com', '+1 (267) 174-1564', '2016-01-23', 'Possimus est ut dol', 'Newman and Nguyen LLC', 'Ut voluptas sed prov', 'https://www.tifumupo.org.au', 'https://www.riw.com', 'https://www.temoza.org.au', 'https://www.wequ.in', 'Molestias quas labor', '<p>ndferfniuefgv</p>', '/storage/Xavier Pittman/ICTSkills.png', '/storage/Xavier Pittman/ICTSkills.drawio (6).pdf', '2023-03-09 00:55:28', '2023-03-09 00:55:28'),
(5, 'Thomas Page', 'tycima@mailinator.com', '+1 (308) 308-2607', '1982-11-09', 'Aliqua Est ipsum', 'Browning and Osborne Traders', 'Proident esse volup', 'https://www.qot.ca', 'https://www.bibiqibino.cm', 'https://www.cirypowalysokil.tv', 'https://www.pew.co', 'Voluptatem voluptas', '<p>dffrirmvmfv</p>', '/storage/Thomas Page/ICTSkills.png', '/storage/Thomas Page/ICTSkills.drawio (6).pdf', '2023-03-09 00:58:33', '2023-03-09 00:58:33'),
(6, 'Rigel Frank', 'popep@mailinator.com', '+1 (773) 111-8626', '2014-01-05', 'Placeat consectetur', 'Gentry and Perry Co', 'Ullamco placeat et', 'https://www.togob.org', 'https://www.duzykimykyzat.mobi', 'https://www.lagituxyxa.biz', 'https://www.cazatefenesa.ws', 'Blanditiis esse cupi', '<p>mvfgkjngb</p>', '/storage/Rigel Frank/ICTSkills.png', '/storage/Rigel Frank/ICTSkills.drawio (6).pdf', '2023-03-09 00:59:11', '2023-03-09 00:59:11'),
(7, 'Yardley Snyder', 'zuwyvuwufu@mailinator.com', '+1 (324) 362-1671', '2005-04-28', 'Omnis est eu et rem', 'House Weaver Trading', 'Nisi modi quisquam q', 'https://www.rekeludepajuha.mobi', 'https://www.dopipyvob.co', 'https://www.beqivufedulo.mobi', 'https://www.bohuxuduvixiqi.me', 'Dolorum sed possimus', '<p>jmgmgbm</p>', '/storage/Yardley Snyder/ICTSkills.png', '/storage/Yardley Snyder/ICTSkills.drawio (6).pdf', '2023-03-09 00:59:53', '2023-03-09 00:59:53'),
(10, 'Ishmael Sullivan', 'gyhyqi@mailinator.com', '+1 (971) 789-8825', '1971-04-14', 'Occaecat velit proi', 'Reese Page Associates', 'Debitis ea praesenti', 'https://www.vowezupafasukow.ws', 'https://www.nefado.org', 'https://www.repikumil.org.au', 'https://www.nyhodotujomi.me', 'Quo provident nulla', '<p>nfcngb</p>', '/storage/Ishmael Sullivan/ICTSkills.png', '/storage/Ishmael Sullivan/ICTSkills.drawio (6).pdf', '2023-03-10 05:01:28', '2023-03-10 05:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `credit_number` double(8,2) NOT NULL,
  `marks` double(8,2) NOT NULL,
  `class_hour` double(8,2) NOT NULL,
  `hour_minute` int(11) NOT NULL,
  `total_class` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credits`
--

INSERT INTO `credits` (`id`, `credit_number`, `marks`, `class_hour`, `hour_minute`, `total_class`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 3.00, 150.00, 90.00, 1, 20, '2022-09-12 06:12:56', '2022-09-13 03:51:17', 1, 1, NULL, NULL),
(2, 1.50, 100.00, 2.00, 1, 13, '2022-09-13 03:29:36', '2022-10-22 10:14:54', 1, 1, NULL, NULL),
(3, 5.00, 500.00, 80.00, 2, 24, '2022-09-13 03:30:07', '2022-09-13 03:30:07', 1, NULL, NULL, NULL),
(4, 2.50, 100.00, 4.00, 2, 16, '2022-09-13 03:32:52', '2022-09-13 10:53:49', 1, 1, NULL, NULL),
(5, 5.68, 1003.00, 5.00, 2, 16, '2022-09-13 03:33:36', '2022-09-13 03:55:53', 1, 1, '2022-09-13 03:55:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `csrs`
--

CREATE TABLE `csrs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actidetails` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `headerimg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriimg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `csrs`
--

INSERT INTO `csrs` (`id`, `title`, `actidetails`, `headerimg`, `descriimg`, `created_at`, `updated_at`) VALUES
(1, 'rftgyg', '<p>fvygbbn</p>', 'public/rftgyg/about-us.jpg', 'public/rftgyg/about-us.jpg', '2023-01-14 05:27:29', '2023-01-14 05:27:29'),
(2, 'rftgyg', '<p>fvygbbn</p>', 'public/rftgyg/about-us.jpg', 'public/rftgyg/about-us.jpg', '2023-01-14 05:28:18', '2023-01-14 05:28:18'),
(3, 'g5tgyhg', '<p>rctgyhg</p>', '', '', '2023-01-14 05:30:08', '2023-01-14 05:30:08'),
(4, 'qxjfvn', '<p>dcfvf</p>', 'public/qxjfvn/about-us.jpg', 'public/qxjfvn/about-us.jpg', '2023-01-14 05:37:00', '2023-01-14 05:37:00'),
(5, 'ewxdfvg', '<p>fdfcfvfg</p>', 'public/ewxdfvg/about-us.jpg', 'public/ewxdfvg/about-us.jpg', '2023-01-14 05:38:23', '2023-01-14 05:38:23'),
(6, 'ewxdfvg', '<p>fdfcfvfg</p>', 'public/ewxdfvg/about-us.jpg', 'public/ewxdfvg/about-us.jpg', '2023-01-14 05:38:26', '2023-01-14 05:38:26'),
(7, 'ewxdfvg', '<p>fdfcfvfg</p>', 'public/ewxdfvg/about-us.jpg', 'public/ewxdfvg/about-us.jpg', '2023-01-14 05:38:26', '2023-01-14 05:38:26'),
(8, 'ewxdfvg', '<p>fdfcfvfg</p>', 'public/ewxdfvg/about-us.jpg', 'public/ewxdfvg/about-us.jpg', '2023-01-14 05:38:27', '2023-01-14 05:38:27'),
(9, 'ewxdfvg', '<p>fdfcfvfg</p>', 'public/ewxdfvg/about-us.jpg', 'public/ewxdfvg/about-us.jpg', '2023-01-14 05:38:27', '2023-01-14 05:38:27'),
(10, 'ewxdfvg', '<p>fdfcfvfg</p>', 'public/ewxdfvg/about-us.jpg', 'public/ewxdfvg/about-us.jpg', '2023-01-14 05:38:27', '2023-01-14 05:38:27'),
(11, 'dcfvgv', '<p>dcfvcfgv</p>', 'public/dcfvgv/about-us.jpg', 'public/dcfvgv/about-us.jpg', '2023-01-14 05:39:16', '2023-01-14 05:39:16'),
(12, 'rfgvsgrbh', '<p>fdvgb</p>', '/storage/rfgvsgrbh/Screenshot_1.png', '/storage/rfgvsgrbh/Screenshot_2.png', '2023-01-17 04:13:54', '2023-01-17 04:13:54'),
(13, 'ewdfref', '<p>rfrfref</p>', '/storage/ewdfref/about-us.jpg', '/storage/ewdfref/about-us.jpg', '2023-01-19 05:30:05', '2023-01-19 05:30:05');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`, `short_name`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Computer Science and Engineering', 'C.S.E', '2022-09-09 15:27:31', '2022-09-09 15:27:31', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `division_id`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'Comilla', 1, '2022-09-09 12:39:38', '2022-09-09 12:39:38', NULL, NULL, NULL, NULL),
(2, 'Feni', 1, '2022-09-09 12:39:38', '2022-09-09 12:39:38', NULL, NULL, NULL, NULL),
(3, 'Brahmanbaria', 1, '2022-09-09 12:39:38', '2022-09-09 12:39:38', NULL, NULL, NULL, NULL),
(4, 'Rangamati', 1, '2022-09-09 12:39:38', '2022-09-09 12:39:38', NULL, NULL, NULL, NULL),
(5, 'Noakhali', 1, '2022-09-09 12:39:38', '2022-09-09 12:39:38', NULL, NULL, NULL, NULL),
(6, 'Chandpur', 1, '2022-09-09 12:39:38', '2022-09-09 12:39:38', NULL, NULL, NULL, NULL),
(7, 'Lakshmipur', 1, '2022-09-09 12:39:38', '2022-09-09 12:39:38', NULL, NULL, NULL, NULL),
(8, 'Chattogram', 1, '2022-09-09 12:39:38', '2022-09-09 12:39:38', NULL, NULL, NULL, NULL),
(9, 'Coxsbazar', 1, '2022-09-09 12:39:38', '2022-09-09 12:39:38', NULL, NULL, NULL, NULL),
(10, 'Khagrachhari', 1, '2022-09-09 12:39:38', '2022-09-09 12:39:38', NULL, NULL, NULL, NULL),
(11, 'Bandarban', 1, '2022-09-09 12:39:38', '2022-09-09 12:39:38', NULL, NULL, NULL, NULL),
(12, 'Sirajganj', 2, '2022-09-09 12:39:38', '2022-09-09 12:39:38', NULL, NULL, NULL, NULL),
(13, 'Pabna', 2, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(14, 'Bogura', 2, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(15, 'Rajshahi', 2, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(16, 'Natore', 2, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(17, 'Joypurhat', 2, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(18, 'Chapainawabganj', 2, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(19, 'Naogaon', 2, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(20, 'Jashore', 3, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(21, 'Satkhira', 3, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(22, 'Meherpur', 3, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(23, 'Narail', 3, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(24, 'Chuadanga', 3, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(25, 'Kushtia', 3, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(26, 'Magura', 3, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(27, 'Khulna', 3, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(28, 'Bagerhat', 3, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(29, 'Jhenaidah', 3, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(30, 'Jhalakathi', 4, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(31, 'Patuakhali', 4, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(32, 'Pirojpur', 4, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(33, 'Barisal', 4, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(34, 'Bhola', 4, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(35, 'Barguna', 4, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(36, 'Sylhet', 5, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(37, 'Moulvibazar', 5, '2022-09-09 12:39:39', '2022-09-09 12:39:39', NULL, NULL, NULL, NULL),
(38, 'Habiganj', 5, '2022-09-09 12:39:39', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(39, 'Sunamganj', 5, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(40, 'Narsingdi', 6, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(41, 'Gazipur', 6, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(42, 'Shariatpur', 6, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(43, 'Narayanganj', 6, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(44, 'Tangail', 6, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(45, 'Kishoreganj', 6, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(46, 'Manikganj', 6, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(47, 'Dhaka', 6, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(48, 'Munshiganj', 6, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(49, 'Rajbari', 6, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(50, 'Madaripur', 6, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(51, 'Gopalganj', 6, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(52, 'Faridpur', 6, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(53, 'Panchagarh', 7, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(54, 'Dinajpur', 7, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(55, 'Lalmonirhat', 7, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(56, 'Nilphamari', 7, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(57, 'Gaibandha', 7, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(58, 'Thakurgaon', 7, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(59, 'Rangpur', 7, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(60, 'Kurigram', 7, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(61, 'Sherpur', 8, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(62, 'Mymensingh', 8, '2022-09-09 12:39:40', '2022-09-09 12:39:40', NULL, NULL, NULL, NULL),
(63, 'Jamalpur', 8, '2022-09-09 12:39:41', '2022-09-09 12:39:41', NULL, NULL, NULL, NULL),
(64, 'Netrokona', 8, '2022-09-09 12:39:41', '2022-09-09 12:39:41', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'Chattagram', '2022-09-09 12:40:23', '2022-09-09 12:40:23', NULL, NULL, NULL, NULL),
(2, 'Rajshahi', '2022-09-09 12:40:23', '2022-09-09 12:40:23', NULL, NULL, NULL, NULL),
(3, 'Khulna', '2022-09-09 12:40:23', '2022-09-09 12:40:23', NULL, NULL, NULL, NULL),
(4, 'Barisal', '2022-09-09 12:40:23', '2022-09-09 12:40:23', NULL, NULL, NULL, NULL),
(5, 'Sylhet', '2022-09-09 12:40:23', '2022-09-09 12:40:23', NULL, NULL, NULL, NULL),
(6, 'Dhaka', '2022-09-09 12:40:23', '2022-09-09 12:40:23', NULL, NULL, NULL, NULL),
(7, 'Rangpur', '2022-09-09 12:40:23', '2022-09-09 12:40:23', NULL, NULL, NULL, NULL),
(8, 'Mymensingh', '2022-09-09 12:40:23', '2022-09-09 12:40:23', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eadmissions`
--

CREATE TABLE `eadmissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eadmissions`
--

INSERT INTO `eadmissions` (`id`, `name`, `short_name`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'Secondary School Certificate', 'S.S.C', '2022-09-24 13:25:45', '2022-09-24 13:25:45', 1, NULL, NULL, NULL),
(2, 'Higher Secondary School Certificate', 'H.S.C', '2022-09-24 13:26:21', '2022-09-24 13:26:21', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eligibles`
--

CREATE TABLE `eligibles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `eligibility` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `eligibimage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eligibles`
--

INSERT INTO `eligibles` (`id`, `eligibility`, `eligibimage`, `created_at`, `updated_at`) VALUES
(3, '<p>wdjhthgnt</p>', '/storage/Eligibimage/about-us.jpg', '2023-01-18 07:56:42', '2023-01-18 07:56:42'),
(4, '<p>sdfcfvfv</p>', '/storage/Eligibimage/about-us.jpg', '2023-01-19 03:28:55', '2023-01-19 03:28:55'),
(5, '<p>dfcvfv</p>', '/storage/Eligibimage/about-us.jpg', '2023-01-19 03:29:16', '2023-01-19 03:29:16'),
(6, '<p>xzcv fcv&nbsp;</p>', '/storage/Eligibimage/about-us.jpg', '2023-01-19 04:15:36', '2023-01-19 04:15:36'),
(7, '<p>hdufcnfevgf</p>', '/storage/Eligibimage/about-us.jpg', '2023-01-19 04:17:23', '2023-01-19 04:17:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'dcfdvgfbv', '<p>fcvfvgfvb</p>', '<p>fvcfgvbg</p>', '2023-01-14 06:10:09', '2023-01-14 06:10:09'),
(2, 'fdcvfdb hbf', '<p>vsdxvfrgb</p>', '<p>dcfjfnfgbv</p>', '2023-01-14 06:14:27', '2023-01-14 06:14:27'),
(3, 'fdcvfdb hbf', '<p>vsdxvfrgb</p>', '<p>dcfjfnfgbv</p>', '2023-01-14 06:19:33', '2023-01-14 06:19:33'),
(4, 'fdcvfdb hbf', '<p>vsvfdvffvbdxvfrgb</p>', '<p>dcfjfnfgbv</p>', '2023-01-14 06:19:33', '2023-01-14 06:19:33'),
(5, 'ghthyfgvgtb', '<p>fvfghbn</p>', '<p>frgghbgh</p>', '2023-01-14 06:20:15', '2023-01-14 06:20:15'),
(6, 'ghthyfgvgtb', '<p>fvfghbn</p>', '<p>frgghbgh</p>', '2023-01-14 06:20:19', '2023-01-14 06:20:19'),
(7, 'ghthyfgvgtb', '<p>fvfghbn</p>', '<p>frgghbgh</p>', '2023-01-14 06:20:20', '2023-01-14 06:20:20'),
(8, 'cvvbfgb', '<p>v bvgbg</p>', '<p>fgvbgb</p>', '2023-01-14 06:21:23', '2023-01-14 06:21:23'),
(9, 'fvfgb', '<p>vc vb vg</p>', '<p>vc v&nbsp;</p>', '2023-01-14 06:23:49', '2023-01-14 06:23:49'),
(10, 'ythrtjuy', '<p>yjuyjujk</p>', '<p>yuj</p>', '2023-01-19 05:43:31', '2023-01-19 05:43:31'),
(11, 'ergvgsdnb', '<p>gfbgbhgn</p>', '<p>hgnhgn</p>', '2023-01-19 05:44:13', '2023-01-19 05:44:13'),
(12, 'fdgshy', '<p>gfbnhnhg</p>', '<p>hnhnjh</p>', '2023-01-19 05:44:49', '2023-01-19 05:44:49');

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

CREATE TABLE `floors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `building_id` bigint(20) UNSIGNED NOT NULL,
  `floor` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lettergrades_id` bigint(20) UNSIGNED NOT NULL,
  `mark_start` double(8,2) NOT NULL,
  `mark_end` double(8,2) NOT NULL,
  `grade_point` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'A', '2022-09-08 06:00:21', '2022-09-08 06:00:21', 1, NULL, NULL, NULL),
(2, 'B', '2022-09-08 06:07:53', '2022-09-08 06:10:44', 1, 1, NULL, NULL),
(3, 'C', '2022-09-08 06:10:56', '2022-09-08 06:11:09', 1, NULL, '2022-09-08 06:11:09', 1),
(4, 'D', '2022-09-08 06:43:57', '2022-09-08 06:44:05', 1, NULL, '2022-09-08 06:44:05', 1),
(5, 'Beli', '2022-09-08 13:08:45', '2022-10-05 09:29:38', 1, NULL, '2022-10-05 09:29:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `icsbpresidents`
--

CREATE TABLE `icsbpresidents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `presidescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `icsbpresidents`
--

INSERT INTO `icsbpresidents` (`id`, `name`, `presidescription`, `image`, `created_at`, `updated_at`) VALUES
(1, 'fecr', '<p>dxcdfcv</p>', '/storage/fecr/about-us.jpg', '2023-01-17 04:53:23', '2023-01-17 04:53:23'),
(2, 'swdwerfc', '<p>fcfvcfgrbv</p>', '/storage/swdwerfc/about-us.jpg', '2023-01-17 04:53:50', '2023-01-17 04:53:50'),
(3, 'tgfvrw', '<p>crfgv</p>', '/storage/tgfvrw/about-us.jpg', '2023-01-17 04:54:20', '2023-01-17 04:54:20'),
(4, 'dffrgvrfg', '<p>fdvg</p>', '/storage/dffrgvrfg/about-us.jpg', '2023-01-17 05:47:50', '2023-01-17 05:47:50'),
(5, 'cx cxv', '<p>cx cv cxv&nbsp;</p>', '/storage/cx cxv/about-us.jpg', '2023-01-19 09:01:58', '2023-01-19 09:01:58'),
(6, 'sbdewbfer', '<p>aSZA</p>', '/storage/sbdewbfer/about-us.jpg', '2023-01-21 04:54:35', '2023-01-21 04:54:35'),
(7, 'fvfdgv', '<p>fgbvgfb</p>', '/storage/fvfdgv/about-us.jpg', '2023-01-21 05:44:41', '2023-01-21 05:44:41'),
(8, 'fgvjfngf', '<p>fgbvgfx</p>', '/storage/fgvjfngf/about-us.jpg', '2023-01-21 06:31:00', '2023-01-21 06:31:00');

-- --------------------------------------------------------

--
-- Table structure for table `lettergrades`
--

CREATE TABLE `lettergrades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lettergrades`
--

INSERT INTO `lettergrades` (`id`, `name`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'A -', '2022-09-13 04:31:21', '2022-09-13 11:06:26', 1, 1, NULL, NULL),
(2, 'O+', '2022-09-13 04:32:19', '2022-09-13 04:32:23', 1, NULL, '2022-09-13 04:32:23', 1),
(3, 'A +', '2022-09-13 11:06:15', '2022-09-13 11:06:15', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `library_students`
--

CREATE TABLE `library_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `std_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `library_students`
--

INSERT INTO `library_students` (`id`, `std_id`, `name`, `phone`, `dob`, `present_address`, `permanent_address`, `ec_name`, `ec_phone`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(4, 2, 'Md. Mamun Ur Rasid', 1717221398, '09/09/1985', 'House#259/1, Senpara Parbata, Mirpur 10, Dhaka.', 'Village: Varlarvita, Post: Ghogadaha, P/S: Kurigram, District: Kurigram', 'Md. Abul Kalam Azad', '01889977951', '2022-11-11 13:01:11', '2022-11-11 13:01:11', NULL, 1, NULL, NULL),
(5, NULL, 'AL KAFI SOHAG', 1773301138, '11/15/2022', 'Fulbari, kurigam', 'Fulbari, kurigam', 'A', '0000000000', '2022-11-11 13:02:29', '2022-11-11 13:02:29', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_31_182455_create_permission_tables', 1),
(6, '2022_09_02_092410_add_foreign_keys_users_table', 1),
(7, '2022_09_02_092649_add_foreign_keys_roles_table', 1),
(8, '2023_01_12_142336_create_abouts_table', 2),
(10, '2023_01_12_144632_create_abouts_table', 3),
(11, '2023_01_14_074504_create_visions_table', 4),
(12, '2023_01_14_080738_create_visions_table', 5),
(13, '2023_01_14_095215_create_abouts_table', 6),
(15, '2023_01_14_110905_create_csrs_table', 8),
(17, '2023_01_14_115342_create_faqs_table', 9),
(19, '2023_01_16_094408_create_noticeboards_table', 11),
(21, '2023_01_16_112625_create_icsbpresidents_tables', 12),
(22, '2023_01_16_115144_create_icsbpresidents_table', 13),
(23, '2023_01_16_142021_create_recentvideos_table', 14),
(25, '2023_01_14_095334_create_abouts_table', 16),
(26, '2023_01_17_101702_create_icsbpresidents_table', 17),
(27, '2023_01_18_074129_create_visions_table', 18),
(28, '2023_01_18_074923_create_missions_table', 19),
(29, '2023_01_18_083633_create_contactaddresses_table', 20),
(30, '2023_01_18_093240_create_eligibles_table', 21),
(31, '2023_01_18_105750_create_admissionrules_table', 22),
(32, '2023_01_18_133457_create_nationalawards_table', 23),
(33, '2023_01_19_075922_create_codeconducts_table', 24),
(34, '2023_01_14_124229_create_assigneds_table', 25),
(35, '2023_01_17_072058_create_services_table', 26),
(36, '2023_02_17_095619_create_coursecategories_table', 27),
(41, '2023_02_20_092518_create_coursereviews_table', 31),
(43, '2023_02_20_121203_create_coursediscounts_table', 32),
(49, '2023_02_22_101807_create_courseenrollstudents_table', 34),
(53, '2023_02_17_112629_create_courseteachers_table', 36),
(54, '2023_02_20_075723_create_coursestudents_table', 37),
(55, '2023_02_18_112236_create_coursesinfos_table', 38),
(57, '2023_02_22_073747_create_coursecontents_table', 39);

-- --------------------------------------------------------

--
-- Table structure for table `missions`
--

CREATE TABLE `missions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icsbmission` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `missions`
--

INSERT INTO `missions` (`id`, `icsbmission`, `created_at`, `updated_at`) VALUES
(1, '<p>xzcv bf</p>', '2023-01-18 01:57:51', '2023-01-18 01:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 7),
(5, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `nationalawards`
--

CREATE TABLE `nationalawards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ntlawrdimg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nationalawards`
--

INSERT INTO `nationalawards` (`id`, `ntlawrdimg`, `created_at`, `updated_at`) VALUES
(1, '/storage/NationalAwardImage/about-us.jpg', '2023-01-18 07:45:26', '2023-01-18 07:45:26'),
(2, '/storage/NationalAwardImage/about-us.jpg', '2023-01-18 07:45:27', '2023-01-18 07:45:27'),
(3, '/storage/NationalAwardImage/about-us.jpg', '2023-01-18 07:48:52', '2023-01-18 07:48:52'),
(4, '/storage/NationalAwardImage/about-us.jpg', '2023-01-18 07:48:53', '2023-01-18 07:48:53'),
(5, '/storage/NationalAwardImage/about-us.jpg', '2023-01-18 07:48:54', '2023-01-18 07:48:54'),
(6, '/storage/Eligibimage/about-us.jpg', '2023-01-18 07:50:59', '2023-01-18 07:50:59'),
(7, '/storage/Eligibimage/about-us.jpg', '2023-01-19 04:43:07', '2023-01-19 04:43:07'),
(8, '/storage/Eligibimage/about-us.jpg', '2023-01-19 04:43:51', '2023-01-19 04:43:51'),
(9, '/storage/Eligibimage/about-us.jpg', '2023-01-19 04:45:13', '2023-01-19 04:45:13'),
(10, '/storage/Eligibimage/about-us.jpg', '2023-01-19 05:09:08', '2023-01-19 05:09:08');

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nationalities`
--

INSERT INTO `nationalities` (`id`, `name`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'Bangladesh', '2022-09-15 02:52:10', '2022-10-12 09:11:03', 1, 1, '2022-10-12 09:11:03', 1),
(2, 'Bangladeshi', '2022-09-15 12:11:37', '2022-09-15 12:11:55', 1, NULL, '2022-09-15 12:11:55', 1),
(3, 'Bangladeshi', '2022-09-15 12:27:16', '2022-09-15 12:27:16', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `noticeboards`
--

CREATE TABLE `noticeboards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noticeboards`
--

INSERT INTO `noticeboards` (`id`, `notice`, `created_at`, `updated_at`) VALUES
(1, 'rcecgvm', '2023-01-16 04:05:57', '2023-01-16 04:05:57'),
(2, 'm nb', '2023-01-16 04:14:10', '2023-01-16 04:14:10'),
(3, 'dcxcv', '2023-01-16 04:14:37', '2023-01-16 04:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('fahim.euitsols@gmail.com', '$2y$10$TdgXcPlGgEwVzNWEKRzV7.8fM.s1L/Pf9vRxLn2p9tJujamk4OPFy', '2023-01-10 13:32:35'),
('admin@email.com', '$2y$10$HNjHC.bQQavJsfcLABgMs.9yX.z5HvE434ehgpHN2M9yQTGSsjFN2', '2023-01-10 13:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `prefix`, `name`, `guard_name`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'setup', 'view setup', 'web', '2022-09-16 21:48:31', '2022-09-17 01:48:43', '2022-09-17 01:48:43', 1, NULL, 1),
(2, 'setup', 'add setup', 'web', '2022-09-16 21:49:04', '2022-09-17 01:48:55', '2022-09-17 01:48:55', 1, NULL, 1),
(3, 'setup', 'edit setup', 'web', '2022-09-16 21:49:20', '2022-09-17 01:48:58', '2022-09-17 01:48:58', 1, NULL, 1),
(4, 'setup', 'delete setup', 'web', '2022-09-16 21:49:35', '2022-09-17 01:49:01', '2022-09-17 01:49:01', 1, NULL, 1),
(5, 'user', 'view user', 'web', '2022-09-16 21:50:02', '2022-09-16 21:50:02', NULL, 1, NULL, NULL),
(6, 'user', 'add user', 'web', '2022-09-16 21:50:15', '2022-09-16 21:50:15', NULL, 1, NULL, NULL),
(7, 'user', 'edit user', 'web', '2022-09-16 21:50:31', '2022-09-16 21:50:31', NULL, 1, NULL, NULL),
(8, 'user', 'delete user', 'web', '2022-09-16 21:50:47', '2022-09-16 21:50:47', NULL, 1, NULL, NULL),
(9, 'role', 'view role', 'web', '2022-09-16 21:51:34', '2022-09-16 21:51:34', NULL, 1, NULL, NULL),
(10, 'role', 'add role', 'web', '2022-09-16 21:51:47', '2022-09-16 21:51:47', NULL, 1, NULL, NULL),
(11, 'role', 'edit role', 'web', '2022-09-16 21:51:59', '2022-09-16 21:51:59', NULL, 1, NULL, NULL),
(12, 'role', 'delete role', 'web', '2022-09-16 21:52:17', '2022-09-16 21:52:17', NULL, 1, NULL, NULL),
(13, 'permission', 'view permission', 'web', '2022-09-17 00:11:28', '2022-09-17 00:11:28', NULL, 1, NULL, NULL),
(14, 'permission', 'add permission', 'web', '2022-09-17 00:11:48', '2022-09-17 00:11:48', NULL, 1, NULL, NULL),
(15, 'permission', 'edit permission', 'web', '2022-09-17 00:12:07', '2022-09-17 00:12:07', NULL, 1, NULL, NULL),
(16, 'permission', 'delete permission', 'web', '2022-09-17 00:12:22', '2022-09-17 00:12:22', NULL, 1, NULL, NULL),
(17, 'department', 'view department', 'web', '2022-09-17 00:40:57', '2022-09-17 00:40:57', NULL, 1, NULL, NULL),
(18, 'department', 'add department', 'web', '2022-09-17 00:41:12', '2022-09-17 00:41:12', NULL, 1, NULL, NULL),
(19, 'department', 'edit department', 'web', '2022-09-17 00:41:34', '2022-09-17 00:41:34', NULL, 1, NULL, NULL),
(20, 'department', 'delete department', 'web', '2022-09-17 00:41:52', '2022-09-17 00:41:52', NULL, 1, NULL, NULL),
(21, 'exam-name', 'view exam-name', 'web', '2022-09-17 00:42:41', '2022-09-17 00:42:41', NULL, 1, NULL, NULL),
(22, 'exam-name', 'add exam-name', 'web', '2022-09-17 00:43:01', '2022-09-17 00:43:01', NULL, 1, NULL, NULL),
(23, 'exam-name', 'edit exam-name', 'web', '2022-09-17 00:43:17', '2022-09-17 00:43:17', NULL, 1, NULL, NULL),
(24, 'exam-name', 'delete exam-name', 'web', '2022-09-17 00:43:29', '2022-09-17 00:43:29', NULL, 1, NULL, NULL),
(25, 'board', 'view board', 'web', '2022-09-17 00:46:39', '2022-09-17 00:46:39', NULL, 1, NULL, NULL),
(26, 'board', 'add board', 'web', '2022-09-17 00:46:52', '2022-09-17 00:46:52', NULL, 1, NULL, NULL),
(27, 'board', 'edit board', 'web', '2022-09-17 00:47:01', '2022-09-17 00:47:01', NULL, 1, NULL, NULL),
(28, 'board', 'delete board', 'web', '2022-09-17 00:47:19', '2022-09-17 00:47:19', NULL, 1, NULL, NULL),
(29, 'semester', 'view semester', 'web', '2022-09-17 00:52:48', '2022-09-17 00:52:48', NULL, 1, NULL, NULL),
(30, 'semester', 'add semester', 'web', '2022-09-17 00:53:19', '2022-09-17 00:53:19', NULL, 1, NULL, NULL),
(31, 'semester', 'edit semester', 'web', '2022-09-17 00:53:36', '2022-09-17 00:53:36', NULL, 1, NULL, NULL),
(32, 'semester', 'delete semester', 'web', '2022-09-17 00:53:49', '2022-09-17 00:53:49', NULL, 1, NULL, NULL),
(33, 'session', 'view session', 'web', '2022-09-17 01:06:44', '2022-09-17 01:06:44', NULL, 1, NULL, NULL),
(34, 'session', 'add session', 'web', '2022-09-17 01:06:53', '2022-09-17 01:06:53', NULL, 1, NULL, NULL),
(35, 'session', 'edit session', 'web', '2022-09-17 01:07:02', '2022-09-17 01:07:02', NULL, 1, NULL, NULL),
(36, 'session', 'delete session', 'web', '2022-09-17 01:07:12', '2022-09-17 01:07:12', NULL, 1, NULL, NULL),
(37, 'semester-duration', 'view semester-duration', 'web', '2022-09-17 01:08:39', '2022-09-17 01:08:39', NULL, 1, NULL, NULL),
(38, 'semester-duration', 'add semester-duration', 'web', '2022-09-17 01:08:48', '2022-09-17 01:08:48', NULL, 1, NULL, NULL),
(39, 'semester-duration', 'edit semester-duration', 'web', '2022-09-17 01:08:58', '2022-09-17 01:08:58', NULL, 1, NULL, NULL),
(40, 'semester-duration', 'delete semester-duration', 'web', '2022-09-17 01:09:08', '2022-09-17 01:09:08', NULL, 1, NULL, NULL),
(41, 'group', 'view group', 'web', '2022-09-17 01:10:18', '2022-09-17 01:10:18', NULL, 1, NULL, NULL),
(42, 'group', 'add group', 'web', '2022-09-17 01:10:36', '2022-09-17 01:10:36', NULL, 1, NULL, NULL),
(43, 'group', 'edit group', 'web', '2022-09-17 01:10:50', '2022-09-17 01:10:50', NULL, 1, NULL, NULL),
(44, 'group', 'delete group', 'web', '2022-09-17 01:10:58', '2022-09-17 01:10:58', NULL, 1, NULL, NULL),
(45, 'blood-group', 'view blood-group', 'web', '2022-09-17 01:35:24', '2022-09-17 01:35:24', NULL, 1, NULL, NULL),
(46, 'blood-group', 'add blood-group', 'web', '2022-09-17 01:35:45', '2022-09-17 01:35:45', NULL, 1, NULL, NULL),
(47, 'blood-group', 'edit blood-group', 'web', '2022-09-17 01:35:54', '2022-09-17 01:35:54', NULL, 1, NULL, NULL),
(48, 'blood-group', 'delete blood-group', 'web', '2022-09-17 01:36:02', '2022-09-17 01:36:02', NULL, 1, NULL, NULL),
(49, 'divsion', 'view divsion', 'web', '2022-09-17 01:36:48', '2022-09-17 01:36:48', NULL, 1, NULL, NULL),
(50, 'divsion', 'add divsion', 'web', '2022-09-17 01:36:58', '2022-09-17 01:36:58', NULL, 1, NULL, NULL),
(51, 'divsion', 'edit divsion', 'web', '2022-09-17 01:37:07', '2022-09-17 01:37:07', NULL, 1, NULL, NULL),
(52, 'divsion', 'delete divsion', 'web', '2022-09-17 01:37:15', '2022-09-17 01:37:15', NULL, 1, NULL, NULL),
(53, 'district', 'view district', 'web', '2022-09-17 01:37:35', '2022-09-17 01:37:35', NULL, 1, NULL, NULL),
(54, 'district', 'add district', 'web', '2022-09-17 01:37:54', '2022-09-17 01:37:54', NULL, 1, NULL, NULL),
(55, 'district', 'edit district', 'web', '2022-09-17 01:38:03', '2022-09-17 01:38:03', NULL, 1, NULL, NULL),
(56, 'district', 'delete district', 'web', '2022-09-17 01:38:18', '2022-09-17 01:38:18', NULL, 1, NULL, NULL),
(57, 'shift', 'view shift', 'web', '2022-09-17 01:38:42', '2022-09-17 01:38:42', NULL, 1, NULL, NULL),
(58, 'shift', 'add shift', 'web', '2022-09-17 01:38:51', '2022-09-17 01:38:51', NULL, 1, NULL, NULL),
(59, 'shift', 'edit shift', 'web', '2022-09-17 01:38:59', '2022-09-17 01:38:59', NULL, 1, NULL, NULL),
(60, 'shift', 'delete shift', 'web', '2022-09-17 01:39:17', '2022-09-17 01:39:17', NULL, 1, NULL, NULL),
(61, 'letter-grade', 'view letter-grade', 'web', '2022-09-17 01:39:42', '2022-09-17 01:39:42', NULL, 1, NULL, NULL),
(62, 'letter-grade', 'add letter-grade', 'web', '2022-09-17 01:39:51', '2022-09-17 01:39:51', NULL, 1, NULL, NULL),
(63, 'letter-grade', 'edit letter-grade', 'web', '2022-09-17 01:39:59', '2022-09-17 01:39:59', NULL, 1, NULL, NULL),
(64, 'letter-grade', 'delete letter-grade', 'web', '2022-09-17 01:40:07', '2022-09-17 01:40:07', NULL, 1, NULL, NULL),
(65, 'credit', 'view credit', 'web', '2022-09-17 01:40:40', '2022-09-17 01:40:40', NULL, 1, NULL, NULL),
(66, 'credit', 'add credit', 'web', '2022-09-17 01:40:48', '2022-09-17 01:40:48', NULL, 1, NULL, NULL),
(67, 'credit', 'edit credit', 'web', '2022-09-17 01:40:56', '2022-09-17 01:40:56', NULL, 1, NULL, NULL),
(68, 'credit', 'delete credit', 'web', '2022-09-17 01:41:06', '2022-09-17 01:41:06', NULL, 1, NULL, NULL),
(69, 'subject', 'view subject', 'web', '2022-09-17 01:45:22', '2022-09-17 01:45:22', NULL, 1, NULL, NULL),
(70, 'subject', 'add subject', 'web', '2022-09-17 01:45:32', '2022-09-17 01:45:32', NULL, 1, NULL, NULL),
(71, 'subject', 'edit subject', 'web', '2022-09-17 01:45:40', '2022-09-17 01:45:40', NULL, 1, NULL, NULL),
(72, 'subject', 'delete subject', 'web', '2022-09-17 01:45:48', '2022-09-17 01:45:48', NULL, 1, NULL, NULL),
(73, 'grade-calculation', 'view grade-calculation', 'web', '2022-09-17 01:46:09', '2022-09-17 01:46:09', NULL, 1, NULL, NULL),
(74, 'grade-calculation', 'add grade-calculation', 'web', '2022-09-17 01:46:18', '2022-09-17 01:46:18', NULL, 1, NULL, NULL),
(75, 'grade-calculation', 'edit grade-calculation', 'web', '2022-09-17 01:46:26', '2022-09-17 01:46:26', NULL, 1, NULL, NULL),
(76, 'grade-calculation', 'delete grade-calculation', 'web', '2022-09-17 01:46:42', '2022-09-17 01:46:42', NULL, 1, NULL, NULL),
(77, 'nationality', 'view nationality', 'web', '2022-09-17 01:47:02', '2022-09-17 01:47:02', NULL, 1, NULL, NULL),
(78, 'nationality', 'add nationality', 'web', '2022-09-17 01:47:13', '2022-09-17 01:47:13', NULL, 1, NULL, NULL),
(79, 'nationality', 'edit nationality', 'web', '2022-09-17 01:47:28', '2022-09-17 01:47:28', NULL, 1, NULL, NULL),
(80, 'nationality', 'delete nationality', 'web', '2022-09-17 01:47:43', '2022-09-17 01:47:43', NULL, 1, NULL, NULL),
(81, 'test_permissions', 'test permission', 'web', '2023-01-10 14:42:59', '2023-01-10 14:43:47', '2023-01-10 14:43:47', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recentvideos`
--

CREATE TABLE `recentvideos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `videotitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vidlink` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recentvideos`
--

INSERT INTO `recentvideos` (`id`, `videotitle`, `vidlink`, `created_at`, `updated_at`) VALUES
(1, 'dcfdvfvb', '<p>dcfdvfdvb&nbsp;</p>', '2023-01-16 08:34:57', '2023-01-16 08:34:57'),
(2, 'dfgfbh', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/t-NdStDHZMI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '2023-01-17 03:55:14', '2023-01-17 03:55:14'),
(3, 'dffnfrgf', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/q2NcSdulWuY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '2023-01-20 02:28:27', '2023-01-20 02:28:27');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Super Admin', 'web', '2022-09-02 17:58:48', NULL, '2022-09-02 17:58:48', NULL, NULL, NULL),
(3, 'User Management', 'web', '2022-09-22 08:41:30', '2022-09-22 08:41:30', NULL, 1, NULL, NULL),
(4, 'Setup Management', 'web', '2022-09-26 10:41:37', '2022-09-26 10:41:37', NULL, 1, NULL, NULL),
(5, 'Visitor', 'web', '2022-10-29 08:20:42', '2022-10-29 08:20:42', NULL, 1, NULL, NULL),
(6, 'tester', 'web', '2023-01-10 14:33:36', '2023-01-10 14:34:36', '2023-01-10 14:34:36', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(5, 3),
(5, 5),
(6, 3),
(6, 5),
(7, 3),
(7, 5),
(8, 5),
(9, 3),
(9, 5),
(10, 3),
(10, 5),
(11, 3),
(11, 5),
(12, 5),
(13, 4),
(13, 5),
(14, 4),
(14, 5),
(15, 4),
(15, 5),
(16, 4),
(16, 5),
(17, 4),
(17, 5),
(18, 4),
(18, 5),
(19, 4),
(19, 5),
(20, 4),
(20, 5),
(21, 4),
(21, 5),
(22, 4),
(22, 5),
(23, 4),
(23, 5),
(24, 4),
(24, 5),
(25, 4),
(25, 5),
(26, 4),
(26, 5),
(27, 4),
(27, 5),
(28, 4),
(28, 5),
(29, 4),
(29, 5),
(30, 4),
(30, 5),
(31, 4),
(31, 5),
(32, 4),
(32, 5),
(33, 4),
(33, 5),
(34, 4),
(34, 5),
(35, 4),
(35, 5),
(36, 4),
(36, 5),
(37, 4),
(37, 5),
(37, 6),
(38, 4),
(38, 5),
(39, 4),
(39, 5),
(40, 4),
(40, 5),
(41, 4),
(41, 5),
(42, 4),
(42, 5),
(43, 4),
(43, 5),
(44, 4),
(44, 5),
(45, 4),
(45, 5),
(45, 6),
(46, 4),
(46, 5),
(47, 4),
(47, 5),
(48, 4),
(48, 5),
(49, 4),
(49, 5),
(50, 4),
(50, 5),
(51, 4),
(51, 5),
(52, 4),
(52, 5),
(53, 4),
(53, 5),
(54, 4),
(54, 5),
(55, 4),
(55, 5),
(56, 4),
(56, 5),
(57, 4),
(57, 5),
(57, 6),
(58, 4),
(58, 5),
(58, 6),
(59, 4),
(59, 5),
(60, 4),
(60, 5),
(61, 4),
(61, 5),
(62, 4),
(62, 5),
(63, 4),
(63, 5),
(64, 4),
(64, 5),
(64, 6),
(65, 4),
(65, 5),
(66, 4),
(66, 5),
(66, 6),
(67, 4),
(67, 5),
(68, 4),
(68, 5),
(68, 6),
(69, 4),
(69, 5),
(69, 6),
(70, 4),
(70, 5),
(70, 6),
(71, 4),
(71, 5),
(71, 6),
(72, 4),
(72, 5),
(72, 6),
(73, 4),
(73, 5),
(73, 6),
(74, 4),
(74, 5),
(74, 6),
(75, 4),
(75, 5),
(75, 6),
(76, 4),
(76, 5),
(76, 6),
(77, 4),
(77, 5),
(77, 6),
(78, 4),
(78, 5),
(78, 6),
(79, 4),
(79, 5),
(79, 6),
(80, 4),
(80, 5),
(80, 6);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `floor_id` bigint(20) UNSIGNED NOT NULL,
  `room` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_seat` int(11) DEFAULT NULL,
  `room_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routines`
--

CREATE TABLE `routines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `shift_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `routines`
--

INSERT INTO `routines` (`id`, `department_id`, `semester_id`, `session_id`, `group_id`, `shift_id`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 1, 2, 3, 2, 1, '2022-11-01 13:54:14', '2022-11-01 13:54:14', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `routine_dates`
--

CREATE TABLE `routine_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `routine_id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `week` int(11) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `name`, `details`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'semester i', 'this is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester ithis is semester i', '2022-09-07 04:03:02', '2022-09-07 04:12:13', NULL, 1, 1, NULL),
(2, 'semester ii', 'semester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester iisemester ii', '2022-09-07 10:37:52', '2022-09-07 10:37:52', NULL, 1, NULL, NULL),
(3, 'semester iii', NULL, '2022-09-09 11:23:24', '2022-09-09 11:23:24', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `semester_durations`
--

CREATE TABLE `semester_durations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semester_durations`
--

INSERT INTO `semester_durations` (`id`, `semester_id`, `session_id`, `start`, `end`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(6, 1, 4, '2020-01-01 00:00:00', '2020-07-01 00:00:00', '2022-09-13 11:56:49', '2022-09-13 11:56:49', NULL, 1, NULL, NULL),
(7, 2, 4, '2022-07-01 00:00:00', '2022-12-01 00:00:00', '2022-09-13 11:57:18', '2022-09-13 11:57:18', NULL, 1, NULL, NULL),
(8, 3, 4, '2023-01-01 00:00:00', '2022-06-01 00:00:00', '2022-10-22 08:44:48', '2022-10-22 08:44:48', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icsbservetitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icsbservedescri` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `serveimg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icsbservetitle`, `icsbservedescri`, `serveimg`, `created_at`, `updated_at`) VALUES
(1, 'thyyuj', '<p>thbnjujyn</p>', '/storage/thyyuj/about-us.jpg', '2023-01-19 06:14:46', '2023-01-19 06:14:46');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start` year(4) NOT NULL,
  `end` year(4) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `start`, `end`, `name`, `details`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 2021, 2022, NULL, 'test session 2021-2022', '2022-09-07 05:53:52', '2022-09-07 06:12:30', NULL, 1, 1, NULL),
(2, 2020, 2021, '', '2020 - 2021', '2022-09-07 05:58:08', '2022-09-07 06:12:58', '2022-09-07 06:12:58', 1, 1, 1),
(3, 2019, 2020, NULL, 'session 2019 - 2020', '2022-09-07 12:20:11', '2022-09-07 12:20:11', NULL, 1, NULL, NULL),
(4, 2020, 2021, NULL, NULL, '2022-09-09 11:22:46', '2022-09-09 11:22:46', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `name`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, '1st Shift', '2022-09-10 01:33:48', '2022-09-10 01:33:48', 1, NULL, NULL, NULL),
(2, '2nd Shift', '2022-09-10 01:40:21', '2022-09-10 09:19:44', 1, NULL, '2022-09-10 09:19:44', 1),
(3, '3rd Shift', '2022-09-10 01:40:34', '2022-09-10 01:40:41', 1, NULL, '2022-09-10 01:40:41', 1),
(4, '4th Shift', '2022-09-10 01:41:52', '2022-09-10 01:41:55', 1, NULL, '2022-09-10 01:41:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `std_attendances`
--

CREATE TABLE `std_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_infos_id` bigint(20) UNSIGNED NOT NULL,
  `attendance_id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attendance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `std_attendances`
--

INSERT INTO `std_attendances` (`id`, `student_infos_id`, `attendance_id`, `class`, `date`, `attendance`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 2, 1, '1', '20/10/2022', '1', '2022-10-22 09:42:16', '2022-10-22 09:42:16', 1, NULL, NULL, NULL),
(2, 2, 1, '3', '05/11/2022', '-1', '2022-10-22 09:44:13', '2022-10-22 09:44:13', 1, NULL, NULL, NULL),
(3, 2, 5, '1', '10/25/2022', '1', '2022-10-25 10:53:46', '2022-10-25 10:53:46', 1, NULL, NULL, NULL),
(4, 2, 5, '3', '10/28/2022', '1', '2022-10-25 10:57:03', '2022-10-25 10:57:03', 1, NULL, NULL, NULL),
(5, 2, 5, '4', '11/25/2022', '1', '2022-11-25 12:07:45', '2022-11-25 12:07:45', 1, NULL, NULL, NULL),
(6, 2, 5, '6', '11/30/2022', '1', '2022-11-30 09:34:59', '2022-11-30 09:34:59', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_infos`
--

CREATE TABLE `student_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `departments_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parmanent_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gardian_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quota` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_infos`
--

INSERT INTO `student_infos` (`id`, `departments_id`, `student_id`, `name`, `father_name`, `mother_name`, `present_address`, `parmanent_address`, `email`, `phone`, `gardian_phone`, `gender`, `dob`, `nationality`, `bg_id`, `quota`, `division_id`, `district_id`, `photo`, `session`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, NULL, 'ab', 'b', 'c', 'Fulbari, kurigam', 'Fulbari, kurigam', 'd@gmail.com', '11773301138', '01773301138', 'Male', '09/01/2022', 'Bangladeshi', 3, 's', 6, 45, 'student-info/1/photo/284551877_1291793464683090_7328783694672356468_n.jpg', '1', '0', '2022-09-25 07:20:41', '2022-10-01 08:01:32', NULL, 1, 1, NULL),
(2, 1, '2022102', 'Md. Mamun Ur Rasid', 'Md. Abul Kalam Azad', 'Begum Monoara Azad', 'House#259/1, Senpara Parbata, Mirpur 10, Dhaka.', 'Village: Varlarvita, Post: Ghogadaha, P/S: Kurigram, District: Kurigram', 'murasid@gmail.com', '01717221398', '01889977951', 'Male', '09/09/1985', 'Bangladeshi', 3, 'lllll', 7, 60, 'public/student-info/2/photo/1.jpg', '1', '1', '2022-10-12 11:45:17', '2022-10-12 11:57:19', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `credit_id`, `department_id`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(3, 'General Physics', 'PHY 101', 2, 1, '2022-09-14 19:48:36', '2022-09-14 19:48:36', 1, NULL, NULL, NULL),
(4, 'Basic computer', 'BC', 3, 1, '2022-09-17 07:12:19', '2022-09-24 12:53:58', 1, 1, NULL, NULL),
(5, 'General C', 'GC 102', 3, 1, '2022-10-22 09:38:51', '2022-10-22 09:38:51', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject_assigns`
--

CREATE TABLE `subject_assigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_assigns`
--

INSERT INTO `subject_assigns` (`id`, `session_id`, `department_id`, `subject_id`, `semester_id`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 1, 1, 4, 1, '2022-10-01 08:49:42', '2022-10-01 08:49:42', 1, NULL, NULL, NULL),
(2, 1, 1, 3, 1, '2022-10-01 08:49:42', '2022-10-01 08:49:42', 1, NULL, NULL, NULL),
(3, 4, 1, 4, 1, '2022-10-12 14:55:12', '2022-10-12 14:55:12', 1, NULL, NULL, NULL),
(4, 3, 1, 3, 2, '2022-10-12 14:56:11', '2022-10-12 14:56:11', 1, NULL, NULL, NULL),
(5, 4, 1, 5, 2, '2022-10-22 09:39:10', '2022-10-22 09:39:10', 1, NULL, NULL, NULL),
(6, 4, 1, 3, 2, '2022-10-22 09:39:10', '2022-10-22 09:39:10', 1, NULL, NULL, NULL),
(7, 1, 1, 5, 2, '2022-10-25 10:43:58', '2022-10-25 10:43:58', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departments_id` bigint(20) UNSIGNED NOT NULL,
  `divisions_id` bigint(20) UNSIGNED NOT NULL,
  `districts_id` bigint(20) UNSIGNED NOT NULL,
  `bloodgroups_id` bigint(20) UNSIGNED NOT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanant_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `departments_id`, `divisions_id`, `districts_id`, `bloodgroups_id`, `date_of_birth`, `phone`, `email`, `nid`, `gender`, `present_address`, `permanant_address`, `photo`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(12, 'a', 1, 7, 59, 3, '14-09-2022', '01773301138', 'aksohag16@gmail.com', '122222222245322', 'Male', 'Fulbari, kurigam', 'Fulbari, kurigam', 'public/teacher-info/12/photo/Sup-n-dine-Icon-with-bcg.png', '2022-09-29 11:36:07', '2022-09-29 11:36:07', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_assigns`
--

CREATE TABLE `teacher_assigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_assign_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `shift_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_assigns`
--

INSERT INTO `teacher_assigns` (`id`, `subject_assign_id`, `teacher_id`, `shift_id`, `group_id`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 2, 12, 1, 1, '2022-10-01 08:50:19', '2022-10-01 08:50:19', NULL, NULL, NULL, NULL),
(2, 1, 12, 1, 1, '2022-10-01 08:50:19', '2022-10-01 08:50:19', NULL, NULL, NULL, NULL),
(3, 3, 12, 1, 1, '2022-10-12 14:55:30', '2022-10-12 14:55:30', NULL, NULL, NULL, NULL),
(4, 4, 12, 1, 1, '2022-10-12 14:56:21', '2022-10-12 14:56:21', NULL, NULL, NULL, NULL),
(5, 6, 12, 1, 1, '2022-10-22 09:39:23', '2022-10-22 09:39:23', NULL, NULL, NULL, NULL),
(6, 5, 12, 1, 1, '2022-10-22 09:39:23', '2022-10-22 09:39:23', NULL, NULL, NULL, NULL),
(7, 7, 12, 1, 1, '2022-10-25 10:44:04', '2022-10-25 10:44:04', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_files`
--

CREATE TABLE `tmp_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tmp_files`
--

INSERT INTO `tmp_files` (`id`, `path`, `filename`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'file/tmp/6320284c18b90/hedi_page-img.png', '', '2022-09-13 06:50:52', '2022-09-13 06:50:52', NULL, 1, NULL, NULL),
(2, 'file/tmp/6320286391a12/942142-bigthumbnail.jpg', '', '2022-09-13 06:51:15', '2022-09-13 06:51:15', NULL, 1, NULL, NULL),
(3, 'file/tmp/632028683b4a5/PIMS metting summary 01-09-2022 .pdf', '', '2022-09-13 06:51:20', '2022-09-13 06:51:20', NULL, 1, NULL, NULL),
(4, 'file/tmp/632c6f394ae55/hedi_page-img.png', '', '2022-09-22 14:20:41', '2022-09-22 14:20:41', NULL, 1, NULL, NULL),
(5, 'file/tmp/632fff0f2e168', '284551877_1291793464683090_7328783694672356468_n.jpg', '2022-09-25 07:11:11', '2022-09-25 07:11:11', NULL, 1, NULL, NULL),
(6, 'file/tmp/632fff4c8c431', 'WhatsApp Image 2022-08-21 at 10.19.10 PM.jpeg', '2022-09-25 07:12:12', '2022-09-25 07:12:12', NULL, 1, NULL, NULL),
(7, 'file/tmp/632fff50e30e1', 'WhatsApp Image 2022-08-21 at 10.19.10 PM.jpeg', '2022-09-25 07:12:16', '2022-09-25 07:12:16', NULL, 1, NULL, NULL),
(8, 'file/tmp/6330011d8c0dc', '284551877_1291793464683090_7328783694672356468_n.jpg', '2022-09-25 07:19:57', '2022-09-25 07:19:57', NULL, 1, NULL, NULL),
(9, 'file/tmp/6330013d11ee0', 'logo.png', '2022-09-25 07:20:29', '2022-09-25 07:20:29', NULL, 1, NULL, NULL),
(10, 'file/tmp/63300148944f2', 'Screenshot_2.png', '2022-09-25 07:20:40', '2022-09-25 07:20:40', NULL, 1, NULL, NULL),
(11, 'file/tmp/633582c9059aa', 'Sup-n-dine-Icon-with-bcg.png', '2022-09-29 11:34:33', '2022-09-29 11:34:33', NULL, 1, NULL, NULL),
(12, 'file/tmp/633582f8a691c', 'Sup-n-dine-Icon-with-bcg.png', '2022-09-29 11:35:20', '2022-09-29 11:35:20', NULL, 1, NULL, NULL),
(13, 'file/tmp/633588dc4dbcd', 'Sup-n-dine-Icon-with-bcg.png', '2022-09-29 12:00:28', '2022-09-29 12:00:28', NULL, 1, NULL, NULL),
(14, 'file/tmp/63358920e6869', 'Sup-n-dine-Icon-with-bcg.png', '2022-09-29 12:01:36', '2022-09-29 12:01:36', NULL, 1, NULL, NULL),
(15, 'file/tmp/633d4f3168e28', 'Sup-n-dine-Icon-with-bcg.png', '2022-10-05 09:32:33', '2022-10-05 09:32:33', NULL, 1, NULL, NULL),
(16, 'file/tmp/633d4f76b15dd', 'accounting chapter 4.pdf', '2022-10-05 09:33:42', '2022-10-05 09:33:42', NULL, 1, NULL, NULL),
(17, 'file/tmp/633d4f88b7bde', 'Chapter 01 (2).pdf', '2022-10-05 09:34:00', '2022-10-05 09:34:00', NULL, 1, NULL, NULL),
(18, 'file/tmp/633d52b42a9f2', '284551877_1291793464683090_7328783694672356468_n.jpg', '2022-10-05 09:47:32', '2022-10-05 09:47:32', NULL, 1, NULL, NULL),
(19, 'file/tmp/633d530644a10', 'Admitted student - Polytechnic Information Managenment System.pdf', '2022-10-05 09:48:54', '2022-10-05 09:48:54', NULL, 1, NULL, NULL),
(20, 'file/tmp/633d530889106', 'Admitted student - Polytechnic Information Managenment System.pdf', '2022-10-05 09:48:56', '2022-10-05 09:48:56', NULL, 1, NULL, NULL),
(21, 'file/tmp/633d53397fb14', 'logo.png', '2022-10-05 09:49:45', '2022-10-05 09:49:45', NULL, 1, NULL, NULL),
(22, 'file/tmp/633d533bef74b', 'logo.png', '2022-10-05 09:49:47', '2022-10-05 09:49:47', NULL, 1, NULL, NULL),
(23, 'file/tmp/633d53856c973', '284551877_1291793464683090_7328783694672356468_n.jpg', '2022-10-05 09:51:01', '2022-10-05 09:51:01', NULL, 1, NULL, NULL),
(24, 'file/tmp/633d53c0a5059', '284551877_1291793464683090_7328783694672356468_n.jpg', '2022-10-05 09:52:00', '2022-10-05 09:52:00', NULL, 1, NULL, NULL),
(25, 'file/tmp/633d53e0e8d8b', 'Admitted student - Polytechnic Information Managenment System.pdf', '2022-10-05 09:52:32', '2022-10-05 09:52:32', NULL, 1, NULL, NULL),
(26, 'file/tmp/633d53e261060', 'logo.png', '2022-10-05 09:52:34', '2022-10-05 09:52:34', NULL, 1, NULL, NULL),
(27, 'file/tmp/633e9a73ddef6', '7C2EB572-FA06-47F2-B259-22C4A86A79AC-scaled (1).jpeg', '2022-10-06 09:05:55', '2022-10-06 09:05:55', NULL, 1, NULL, NULL),
(28, 'file/tmp/6346a854d6544', '1.jpg', '2022-10-12 11:43:16', '2022-10-12 11:43:16', NULL, 1, NULL, NULL),
(29, 'file/tmp/6346a8b70888f', '1.jpg', '2022-10-12 11:44:55', '2022-10-12 11:44:55', NULL, 1, NULL, NULL),
(30, 'file/tmp/6346a8be31397', '2022_10_11_15-56-04_pm.pdf', '2022-10-12 11:45:02', '2022-10-12 11:45:02', NULL, 1, NULL, NULL),
(31, 'file/tmp/6346a8c9e9e8f', '_ Covid 9 - Vacine Card - MUHAMMAD MASARRAT ARYAN (1).pdf', '2022-10-12 11:45:13', '2022-10-12 11:45:13', NULL, 1, NULL, NULL),
(32, 'file/tmp/6346a9a0b5db2', '1.jpg', '2022-10-12 11:48:48', '2022-10-12 11:48:48', NULL, 1, NULL, NULL),
(33, 'file/tmp/6346a9de39da9', 'Plan for Successfull Completing Inustrial Training22 - 2022.pdf', '2022-10-12 11:49:50', '2022-10-12 11:49:50', NULL, 1, NULL, NULL),
(34, 'file/tmp/6346a9e61db16', 'Ath Thibbun ppt final_pdf.pdf', '2022-10-12 11:49:58', '2022-10-12 11:49:58', NULL, 1, NULL, NULL),
(35, 'file/tmp/6346aa42b280e', 'Ath Thibbun ppt final_pdf.pdf', '2022-10-12 11:51:30', '2022-10-12 11:51:30', NULL, 1, NULL, NULL),
(36, 'file/tmp/6346aa437a45e', 'MD._AMINUL_ISLAM.pdf', '2022-10-12 11:51:31', '2022-10-12 11:51:31', NULL, 1, NULL, NULL),
(37, 'file/tmp/6346aa73d63c4', 'WhatsApp Image 2022-10-12 at 1.42.13 PM.jpeg', '2022-10-12 11:52:19', '2022-10-12 11:52:19', NULL, 1, NULL, NULL),
(38, 'file/tmp/6346aa7e447aa', '1.jpg', '2022-10-12 11:52:30', '2022-10-12 11:52:30', NULL, 1, NULL, NULL),
(39, 'file/tmp/6346aa9040f9e', 'Plan for Successfull Completing Inustrial Training22 - 2022.pdf', '2022-10-12 11:52:48', '2022-10-12 11:52:48', NULL, 1, NULL, NULL),
(40, 'file/tmp/6346aa95b8e95', '2022_10_11_15-56-04_pm.pdf', '2022-10-12 11:52:53', '2022-10-12 11:52:53', NULL, 1, NULL, NULL),
(41, 'file/tmp/6346aaaf299b4', 'Plan for Successfull Completing Inustrial Training22 - 2022.pdf', '2022-10-12 11:53:19', '2022-10-12 11:53:19', NULL, 1, NULL, NULL),
(42, 'file/tmp/6346aab28dc05', 'Shakil_Ahamed.pdf', '2022-10-12 11:53:22', '2022-10-12 11:53:22', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Super Admin', 1, 'admin@email.com', NULL, '$2y$10$w0f4PKbQxDA2xm9NrsWTVufEVgq0LDCPerhinBKEvRn7ULN3PZM5S', NULL, '2022-09-02 17:58:49', NULL, NULL, NULL, NULL, NULL),
(3, 'AL KAFI SOHAG', 3, 'aksohag@gmail.com', NULL, '$2y$10$Ybgp94ZLAY77nYICWT5m6ek/I4CB0IhzMuWHrz16uchcGAu/xJV0i', NULL, '2022-09-22 08:42:11', '2022-09-22 08:42:11', NULL, 1, NULL, NULL),
(4, 'sakib', 4, 'sakib.euitsols@gmail.com', NULL, '$2y$10$raqZRgB44YXrjg8fyT2uP.GAZViBjccpSLLiU2b7VxdPlndsU5y6W', NULL, '2022-09-26 10:42:14', '2022-09-26 10:42:14', NULL, 1, NULL, NULL),
(5, 'Mr. Robin', 1, 'robin@email.com', NULL, '$2y$10$8Ii8eGz9S0pvrG0TXXz/WuCVBGScKByYFyifviMbkF.Zan4L7aroO', NULL, '2022-10-29 08:21:47', '2022-10-29 08:25:27', NULL, 1, 1, NULL),
(6, 'Fahim Ahmed', 3, 'fahim.euitsols@gmail.com', NULL, '$2y$10$GxuZYAfVzKmUJLpwriADLe0X7cpHxFIcYJaq/Lu6S0yJ.jua4xigq', NULL, '2023-01-10 13:30:53', '2023-01-10 13:43:54', '2023-01-10 13:43:54', 1, NULL, 1),
(7, 'Ahmed Fahim', 4, 'tester@gmail.com', NULL, '$2y$10$lq4VM2.mmhrMgDFGUPIcpebQqt3eLT/sLx7hGnLQKdKywscMFZJL.', NULL, '2023-01-10 14:17:11', '2023-01-10 14:17:11', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visions`
--

CREATE TABLE `visions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icsbvision` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icsbmvlink` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visions`
--

INSERT INTO `visions` (`id`, `icsbvision`, `icsbmvlink`, `created_at`, `updated_at`) VALUES
(1, '<p>fvfgb</p>', '<p>fvbgb</p>', '2023-01-18 01:57:51', '2023-01-18 01:57:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academic_infos`
--
ALTER TABLE `academic_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_infos_student_infos` (`student_infos_id`),
  ADD KEY `academic_infos_exam` (`exam_id`),
  ADD KEY `academic_infos_board` (`board_id`),
  ADD KEY `academic_infos_created` (`created_by`),
  ADD KEY `academic_infos_updated` (`updated_by`),
  ADD KEY `academic_infos_deleted` (`deleted_by`);

--
-- Indexes for table `admissionrules`
--
ALTER TABLE `admissionrules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admitted_std_assigns`
--
ALTER TABLE `admitted_std_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admitted_std_assigns_student_infos` (`student_infos_id`),
  ADD KEY `admitted_std_assigns_session` (`session_id`),
  ADD KEY `admitted_std_assigns_semester` (`semester_id`),
  ADD KEY `admitted_std_assigns_group` (`group_id`),
  ADD KEY `admitted_std_assigns_shift` (`shift_id`),
  ADD KEY `admitted_std_assigns_created` (`created_by`),
  ADD KEY `admitted_std_assigns_updated` (`updated_by`),
  ADD KEY `admitted_std_assigns_deleted` (`deleted_by`);

--
-- Indexes for table `assigneds`
--
ALTER TABLE `assigneds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_books`
--
ALTER TABLE `assign_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assign_books_std` (`std_id`),
  ADD KEY `assign_book_bkdns_book` (`book_id`),
  ADD KEY `assign_books_created` (`created_by`),
  ADD KEY `assign_books_deleted` (`deleted_by`),
  ADD KEY `assign_books_updated` (`updated_by`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_session` (`session_id`),
  ADD KEY `attendances_departments` (`departments_id`),
  ADD KEY `attendances_semesters` (`semester_id`),
  ADD KEY `attendances_teachers` (`teacher_id`),
  ADD KEY `attendances_subjects` (`subject_id`),
  ADD KEY `attendances_groups` (`group_id`),
  ADD KEY `attendances_shifts` (`shift_id`),
  ADD KEY `attendances_created` (`created_by`),
  ADD KEY `attendances_updated` (`updated_by`),
  ADD KEY `attendances_deleted` (`deleted_by`);

--
-- Indexes for table `bloodgroups`
--
ALTER TABLE `bloodgroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bloodgroups_created` (`created_by`),
  ADD KEY `bloodgroups_deleted` (`deleted_by`),
  ADD KEY `bloodgroups_updated` (`updated_by`);

--
-- Indexes for table `boards`
--
ALTER TABLE `boards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boards_created` (`created_by`),
  ADD KEY `boards_deleted` (`deleted_by`),
  ADD KEY `boards_updated` (`updated_by`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_category` (`category_id`),
  ADD KEY `books_bookshelf` (`bookshelf_id`),
  ADD KEY `books_created` (`created_by`),
  ADD KEY `books_deleted` (`deleted_by`),
  ADD KEY `books_updated` (`updated_by`);

--
-- Indexes for table `bookshelves`
--
ALTER TABLE `bookshelves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookshelves_created` (`created_by`),
  ADD KEY `bookshelves_deleted` (`deleted_by`),
  ADD KEY `bookshelves_updated` (`updated_by`);

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buildings_created` (`created_by`),
  ADD KEY `buildings_deleted` (`deleted_by`),
  ADD KEY `buildings_updated` (`updated_by`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_departments` (`departments_id`),
  ADD KEY `categories_created` (`created_by`),
  ADD KEY `categories_deleted` (`deleted_by`),
  ADD KEY `categories_updated` (`updated_by`);

--
-- Indexes for table `class_contents`
--
ALTER TABLE `class_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_contents_std_attendances` (`std_attendance_id`),
  ADD KEY `class_contents_created` (`created_by`),
  ADD KEY `class_contents_updated` (`updated_by`),
  ADD KEY `class_contents_deleted` (`deleted_by`);

--
-- Indexes for table `class_files`
--
ALTER TABLE `class_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_files_std_attendances` (`std_attendance_id`),
  ADD KEY `class_files_created` (`created_by`),
  ADD KEY `class_files_updated` (`updated_by`),
  ADD KEY `class_files_deleted` (`deleted_by`);

--
-- Indexes for table `codeconducts`
--
ALTER TABLE `codeconducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactaddresses`
--
ALTER TABLE `contactaddresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coursecategories`
--
ALTER TABLE `coursecategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coursecontents`
--
ALTER TABLE `coursecontents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coursecontents_course_title_id_foreign` (`course_title_id`);

--
-- Indexes for table `coursediscounts`
--
ALTER TABLE `coursediscounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coursediscounts_course_title_id_foreign` (`course_title_id`);

--
-- Indexes for table `courseenrollstudents`
--
ALTER TABLE `courseenrollstudents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courseenrollstudents_course_title_id_foreign` (`course_title_id`),
  ADD KEY `courseenrollstudents_course_student_id_foreign` (`course_student_id`);

--
-- Indexes for table `coursereviews`
--
ALTER TABLE `coursereviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coursereviews_course_title_id_foreign` (`course_title_id`),
  ADD KEY `coursereviews_course_student_id_foreign` (`course_student_id`);

--
-- Indexes for table `coursesinfos`
--
ALTER TABLE `coursesinfos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coursesinfos_course_teacher_id_foreign` (`course_teacher_id`),
  ADD KEY `coursesinfos_course_category_id_foreign` (`course_category_id`);

--
-- Indexes for table `coursestudents`
--
ALTER TABLE `coursestudents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseteachers`
--
ALTER TABLE `courseteachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `credits_credit_number_unique` (`credit_number`),
  ADD KEY `credits_created` (`created_by`),
  ADD KEY `credits_deleted` (`deleted_by`),
  ADD KEY `credits_updated` (`updated_by`);

--
-- Indexes for table `csrs`
--
ALTER TABLE `csrs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_created` (`created_by`),
  ADD KEY `departments_updated` (`updated_by`),
  ADD KEY `departments_deleted` (`deleted_by`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_division` (`division_id`),
  ADD KEY `districts_created` (`created_by`),
  ADD KEY `districts_deleted` (`deleted_by`),
  ADD KEY `districts_updated` (`updated_by`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `divisions_created` (`created_by`),
  ADD KEY `divisions_deleted` (`deleted_by`),
  ADD KEY `divisions_updated` (`updated_by`);

--
-- Indexes for table `eadmissions`
--
ALTER TABLE `eadmissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eadmissions_created` (`created_by`),
  ADD KEY `eadmissions_deleted` (`deleted_by`),
  ADD KEY `eadmissions_updated` (`updated_by`);

--
-- Indexes for table `eligibles`
--
ALTER TABLE `eligibles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `floors_building` (`building_id`),
  ADD KEY `floors_created` (`created_by`),
  ADD KEY `floors_deleted` (`deleted_by`),
  ADD KEY `floors_updated` (`updated_by`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grades_lettergrades` (`lettergrades_id`),
  ADD KEY `grades_created` (`created_by`),
  ADD KEY `grades_deleted` (`deleted_by`),
  ADD KEY `grades_updated` (`updated_by`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groups_created` (`created_by`),
  ADD KEY `groups_deleted` (`deleted_by`),
  ADD KEY `groups_updated` (`updated_by`);

--
-- Indexes for table `icsbpresidents`
--
ALTER TABLE `icsbpresidents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lettergrades`
--
ALTER TABLE `lettergrades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lettergrades_created` (`created_by`),
  ADD KEY `lettergrades_deleted` (`deleted_by`),
  ADD KEY `lettergrades_updated` (`updated_by`);

--
-- Indexes for table `library_students`
--
ALTER TABLE `library_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `library_students_std` (`std_id`),
  ADD KEY `library_students_created` (`created_by`),
  ADD KEY `library_students_deleted` (`deleted_by`),
  ADD KEY `library_students_updated` (`updated_by`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `missions`
--
ALTER TABLE `missions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `nationalawards`
--
ALTER TABLE `nationalawards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nationalities_created` (`created_by`),
  ADD KEY `nationalities_deleted` (`deleted_by`),
  ADD KEY `nationalities_updated` (`updated_by`);

--
-- Indexes for table `noticeboards`
--
ALTER TABLE `noticeboards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`),
  ADD KEY `permission_user_created` (`created_by`),
  ADD KEY `permission_user_deleted` (`deleted_by`),
  ADD KEY `permission_user_updated` (`updated_by`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `recentvideos`
--
ALTER TABLE `recentvideos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`),
  ADD KEY `roles_user_created` (`created_by`),
  ADD KEY `roles_user_deleted` (`deleted_by`),
  ADD KEY `roles_user_updated` (`updated_by`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_floor` (`floor_id`),
  ADD KEY `rooms_created` (`created_by`),
  ADD KEY `rooms_deleted` (`deleted_by`),
  ADD KEY `rooms_updated` (`updated_by`);

--
-- Indexes for table `routines`
--
ALTER TABLE `routines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `routines_department_id` (`department_id`),
  ADD KEY `routines_semester_id` (`semester_id`),
  ADD KEY `routines_session_id` (`session_id`),
  ADD KEY `routines_group_id` (`group_id`),
  ADD KEY `routines_shift_id` (`shift_id`),
  ADD KEY `routines_assigns_created` (`created_by`),
  ADD KEY `routines_assigns_deleted` (`deleted_by`),
  ADD KEY `routines_assigns_updated` (`updated_by`);

--
-- Indexes for table `routine_dates`
--
ALTER TABLE `routine_dates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `routine_times_subject` (`subject_id`),
  ADD KEY `routine_times_routine` (`routine_id`),
  ADD KEY `routine_times_assigns_created` (`created_by`),
  ADD KEY `routine_times_assigns_deleted` (`deleted_by`),
  ADD KEY `routine_times_assigns_updated` (`updated_by`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `semesters_created` (`created_by`),
  ADD KEY `semesters_deleted` (`deleted_by`),
  ADD KEY `semesters_updated` (`updated_by`);

--
-- Indexes for table `semester_durations`
--
ALTER TABLE `semester_durations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `semester_durations_semester` (`semester_id`),
  ADD KEY `semester_durations_session` (`session_id`),
  ADD KEY `semester_durations_created` (`created_by`),
  ADD KEY `semester_durations_deleted` (`deleted_by`),
  ADD KEY `semester_durations_updated` (`updated_by`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_created` (`created_by`),
  ADD KEY `sessions_deleted` (`deleted_by`),
  ADD KEY `sessions_updated` (`updated_by`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shifts_created` (`created_by`),
  ADD KEY `shifts_deleted` (`deleted_by`),
  ADD KEY `shifts_updated` (`updated_by`);

--
-- Indexes for table `std_attendances`
--
ALTER TABLE `std_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `std_attendances_student_infos` (`student_infos_id`),
  ADD KEY `std_attendances_attendance` (`attendance_id`),
  ADD KEY `std_attendances_created` (`created_by`),
  ADD KEY `std_attendances_updated` (`updated_by`),
  ADD KEY `std_attendances_deleted` (`deleted_by`);

--
-- Indexes for table `student_infos`
--
ALTER TABLE `student_infos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_infos_phone_unique` (`phone`),
  ADD UNIQUE KEY `student_infos_student_id_unique` (`student_id`),
  ADD UNIQUE KEY `student_infos_email_unique` (`email`),
  ADD KEY `student_infos_departments` (`departments_id`),
  ADD KEY `student_infos_bg` (`bg_id`),
  ADD KEY `student_infos_division` (`division_id`),
  ADD KEY `student_infos_district` (`district_id`),
  ADD KEY `student_infos_created` (`created_by`),
  ADD KEY `student_infos_updated` (`updated_by`),
  ADD KEY `student_infos_deleted` (`deleted_by`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_credit` (`credit_id`),
  ADD KEY `subjects_department` (`department_id`),
  ADD KEY `subjects_created` (`created_by`),
  ADD KEY `subjects_deleted` (`deleted_by`),
  ADD KEY `subjects_updated` (`updated_by`);

--
-- Indexes for table `subject_assigns`
--
ALTER TABLE `subject_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_assigns_session` (`session_id`),
  ADD KEY `subject_assigns_department` (`department_id`),
  ADD KEY `subject_assigns_subject` (`subject_id`),
  ADD KEY `subject_assigns_semester` (`semester_id`),
  ADD KEY `subject_assigns_created` (`created_by`),
  ADD KEY `subject_assigns_deleted` (`deleted_by`),
  ADD KEY `subject_assigns_updated` (`updated_by`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_phone_unique` (`phone`),
  ADD UNIQUE KEY `teachers_email_unique` (`email`),
  ADD UNIQUE KEY `teachers_nid_unique` (`nid`),
  ADD KEY `teachers_departments` (`departments_id`),
  ADD KEY `teachers_divisions` (`divisions_id`),
  ADD KEY `teachers_districts` (`districts_id`),
  ADD KEY `teachers_bloodgroups` (`bloodgroups_id`),
  ADD KEY `teachers_created` (`created_by`),
  ADD KEY `teachers_deleted` (`deleted_by`),
  ADD KEY `teachers_updated` (`updated_by`);

--
-- Indexes for table `teacher_assigns`
--
ALTER TABLE `teacher_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_assigns_subject_assign` (`subject_assign_id`),
  ADD KEY `teacher_assigns_shift` (`shift_id`),
  ADD KEY `teacher_assigns_group` (`group_id`),
  ADD KEY `teacher_assigns_created` (`created_by`),
  ADD KEY `teacher_assigns_deleted` (`deleted_by`),
  ADD KEY `teacher_assigns_updated` (`updated_by`);

--
-- Indexes for table `tmp_files`
--
ALTER TABLE `tmp_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmp_files_created` (`created_by`),
  ADD KEY `tmp_files_deleted` (`deleted_by`),
  ADD KEY `tmp_files_updated` (`updated_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `user_created` (`created_by`),
  ADD KEY `user_deleted` (`deleted_by`),
  ADD KEY `user_updated` (`updated_by`);

--
-- Indexes for table `visions`
--
ALTER TABLE `visions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `academic_infos`
--
ALTER TABLE `academic_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `admissionrules`
--
ALTER TABLE `admissionrules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admitted_std_assigns`
--
ALTER TABLE `admitted_std_assigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assigneds`
--
ALTER TABLE `assigneds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assign_books`
--
ALTER TABLE `assign_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bloodgroups`
--
ALTER TABLE `bloodgroups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `boards`
--
ALTER TABLE `boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bookshelves`
--
ALTER TABLE `bookshelves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `class_contents`
--
ALTER TABLE `class_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `class_files`
--
ALTER TABLE `class_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `codeconducts`
--
ALTER TABLE `codeconducts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactaddresses`
--
ALTER TABLE `contactaddresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coursecategories`
--
ALTER TABLE `coursecategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `coursecontents`
--
ALTER TABLE `coursecontents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coursediscounts`
--
ALTER TABLE `coursediscounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courseenrollstudents`
--
ALTER TABLE `courseenrollstudents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coursereviews`
--
ALTER TABLE `coursereviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coursesinfos`
--
ALTER TABLE `coursesinfos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `coursestudents`
--
ALTER TABLE `coursestudents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `courseteachers`
--
ALTER TABLE `courseteachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `credits`
--
ALTER TABLE `credits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `csrs`
--
ALTER TABLE `csrs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `eadmissions`
--
ALTER TABLE `eadmissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `eligibles`
--
ALTER TABLE `eligibles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `floors`
--
ALTER TABLE `floors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `icsbpresidents`
--
ALTER TABLE `icsbpresidents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lettergrades`
--
ALTER TABLE `lettergrades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `library_students`
--
ALTER TABLE `library_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `missions`
--
ALTER TABLE `missions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nationalawards`
--
ALTER TABLE `nationalawards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `noticeboards`
--
ALTER TABLE `noticeboards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recentvideos`
--
ALTER TABLE `recentvideos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `routines`
--
ALTER TABLE `routines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `routine_dates`
--
ALTER TABLE `routine_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `semester_durations`
--
ALTER TABLE `semester_durations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `std_attendances`
--
ALTER TABLE `std_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_infos`
--
ALTER TABLE `student_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subject_assigns`
--
ALTER TABLE `subject_assigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `teacher_assigns`
--
ALTER TABLE `teacher_assigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tmp_files`
--
ALTER TABLE `tmp_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `visions`
--
ALTER TABLE `visions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admitted_std_assigns`
--
ALTER TABLE `admitted_std_assigns`
  ADD CONSTRAINT `admitted_std_assigns_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admitted_std_assigns_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admitted_std_assigns_group` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admitted_std_assigns_semester` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admitted_std_assigns_session` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admitted_std_assigns_shift` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admitted_std_assigns_student_infos` FOREIGN KEY (`student_infos_id`) REFERENCES `student_infos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admitted_std_assigns_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `assign_books`
--
ALTER TABLE `assign_books`
  ADD CONSTRAINT `assign_book_bkdns_book` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `assign_books_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `assign_books_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `assign_books_std` FOREIGN KEY (`std_id`) REFERENCES `library_students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `assign_books_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendances_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendances_departments` FOREIGN KEY (`departments_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendances_groups` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendances_semesters` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendances_session` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendances_shifts` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendances_subjects` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendances_teachers` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendances_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bloodgroups`
--
ALTER TABLE `bloodgroups`
  ADD CONSTRAINT `bloodgroups_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bloodgroups_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bloodgroups_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `boards`
--
ALTER TABLE `boards`
  ADD CONSTRAINT `boards_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `boards_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `boards_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_bookshelf` FOREIGN KEY (`bookshelf_id`) REFERENCES `bookshelves` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookshelves`
--
ALTER TABLE `bookshelves`
  ADD CONSTRAINT `bookshelves_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookshelves_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookshelves_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `buildings`
--
ALTER TABLE `buildings`
  ADD CONSTRAINT `buildings_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `buildings_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `buildings_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `categories_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `categories_departments` FOREIGN KEY (`departments_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `categories_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `class_contents`
--
ALTER TABLE `class_contents`
  ADD CONSTRAINT `class_contents_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_contents_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_contents_std_attendances` FOREIGN KEY (`std_attendance_id`) REFERENCES `std_attendances` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_contents_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `class_files`
--
ALTER TABLE `class_files`
  ADD CONSTRAINT `class_files_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_files_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_files_std_attendances` FOREIGN KEY (`std_attendance_id`) REFERENCES `std_attendances` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_files_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coursecontents`
--
ALTER TABLE `coursecontents`
  ADD CONSTRAINT `coursecontents_course_title_id_foreign` FOREIGN KEY (`course_title_id`) REFERENCES `coursesinfos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coursediscounts`
--
ALTER TABLE `coursediscounts`
  ADD CONSTRAINT `coursediscounts_course_title_id_foreign` FOREIGN KEY (`course_title_id`) REFERENCES `coursesinfos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `courseenrollstudents`
--
ALTER TABLE `courseenrollstudents`
  ADD CONSTRAINT `courseenrollstudents_course_student_id_foreign` FOREIGN KEY (`course_student_id`) REFERENCES `coursestudents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courseenrollstudents_course_title_id_foreign` FOREIGN KEY (`course_title_id`) REFERENCES `coursesinfos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coursereviews`
--
ALTER TABLE `coursereviews`
  ADD CONSTRAINT `coursereviews_course_student_id_foreign` FOREIGN KEY (`course_student_id`) REFERENCES `coursestudents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coursereviews_course_title_id_foreign` FOREIGN KEY (`course_title_id`) REFERENCES `coursesinfos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coursesinfos`
--
ALTER TABLE `coursesinfos`
  ADD CONSTRAINT `coursesinfos_course_category_id_foreign` FOREIGN KEY (`course_category_id`) REFERENCES `coursecategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coursesinfos_course_teacher_id_foreign` FOREIGN KEY (`course_teacher_id`) REFERENCES `courseteachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `credits`
--
ALTER TABLE `credits`
  ADD CONSTRAINT `credits_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `credits_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `credits_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `departments_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `departments_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `districts_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `districts_division` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `districts_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `divisions`
--
ALTER TABLE `divisions`
  ADD CONSTRAINT `divisions_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `divisions_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `divisions_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eadmissions`
--
ALTER TABLE `eadmissions`
  ADD CONSTRAINT `eadmissions_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eadmissions_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eadmissions_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `floors`
--
ALTER TABLE `floors`
  ADD CONSTRAINT `floors_building` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `floors_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `floors_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `floors_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `groups_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `groups_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lettergrades`
--
ALTER TABLE `lettergrades`
  ADD CONSTRAINT `lettergrades_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lettergrades_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lettergrades_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD CONSTRAINT `nationalities_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nationalities_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nationalities_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permission_user_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_user_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_user_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_user_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `roles_user_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `roles_user_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rooms_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rooms_floor` FOREIGN KEY (`floor_id`) REFERENCES `floors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rooms_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `routines`
--
ALTER TABLE `routines`
  ADD CONSTRAINT `routines_assigns_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `routines_assigns_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `routines_assigns_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `routines_department_id` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `routines_group_id` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `routines_semester_id` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `routines_session_id` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `routines_shift_id` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `routine_dates`
--
ALTER TABLE `routine_dates`
  ADD CONSTRAINT `routine_times_assigns_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `routine_times_assigns_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `routine_times_assigns_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `routine_times_routine` FOREIGN KEY (`routine_id`) REFERENCES `routines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `routine_times_subject` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `semesters`
--
ALTER TABLE `semesters`
  ADD CONSTRAINT `semesters_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `semesters_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `semesters_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `semester_durations`
--
ALTER TABLE `semester_durations`
  ADD CONSTRAINT `semester_durations_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `semester_durations_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `semester_durations_semester` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `semester_durations_session` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `semester_durations_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sessions_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sessions_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shifts`
--
ALTER TABLE `shifts`
  ADD CONSTRAINT `shifts_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shifts_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shifts_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `std_attendances`
--
ALTER TABLE `std_attendances`
  ADD CONSTRAINT `std_attendances_attendance` FOREIGN KEY (`attendance_id`) REFERENCES `attendances` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `std_attendances_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `std_attendances_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `std_attendances_student_infos` FOREIGN KEY (`student_infos_id`) REFERENCES `student_infos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `std_attendances_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_infos`
--
ALTER TABLE `student_infos`
  ADD CONSTRAINT `student_infos_bg` FOREIGN KEY (`bg_id`) REFERENCES `bloodgroups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_infos_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_infos_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_infos_departments` FOREIGN KEY (`departments_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_infos_district` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_infos_division` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_infos_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subjects_credit` FOREIGN KEY (`credit_id`) REFERENCES `credits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subjects_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subjects_department` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subjects_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_assigns`
--
ALTER TABLE `teacher_assigns`
  ADD CONSTRAINT `teacher_assigns_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_assigns_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_assigns_group` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_assigns_shift` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_assigns_subject_assign` FOREIGN KEY (`subject_assign_id`) REFERENCES `subject_assigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_assigns_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tmp_files`
--
ALTER TABLE `tmp_files`
  ADD CONSTRAINT `tmp_files_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tmp_files_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tmp_files_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `user_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_deleted` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_updated` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
