-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2018 at 09:27 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+05:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lrvlapitest`
--
CREATE DATABASE IF NOT EXISTS `lrvlapitest` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `lrvlapitest`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

-- INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
-- (1, '2014_10_12_100000_create_password_resets_table', 1),
-- (2, '2018_03_29_145704_create_loc_countries_table', 1),
-- (3, '2018_03_29_145323_create_loc_cities_table', 2),
-- (4, '2018_03_27_103717_create_locations_table', 3),
-- (5, '2018_03_25_125038_create_users_table', 4),
-- (6, '2018_04_02_233947_create_articles_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loc_countries`
--

CREATE TABLE IF NOT EXISTS `loc_countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loc_countries`
--

INSERT INTO `loc_countries` (`id`, `country`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pakistan', '2018-04-13 18:37:01', NULL, NULL),
(2, 'Saudi Arabia', '2018-04-13 18:37:01', NULL, NULL),
(3, 'United Arab Emirates', '2018-04-13 18:37:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loc_cities`
--

CREATE TABLE IF NOT EXISTS `loc_cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loc_cities`
--

INSERT INTO `loc_cities` (`id`, `city`, `country_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Islamabad', 1, '2018-04-13 18:40:38', NULL, NULL),
(2, 'Karachi', 1, '2018-04-13 18:40:38', NULL, NULL),
(3, 'Lahore', 1, '2018-04-13 18:40:38', NULL, NULL),
(4, 'Peshawar', 1, '2018-04-13 18:40:38', NULL, NULL),
(5, 'Quetta', 1, '2018-04-13 18:40:38', NULL, NULL),
(6, 'Riyadh', 2, '2018-04-13 18:41:41', NULL, NULL),
(7, 'Dubai City', 3, '2018-04-13 18:41:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `street_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `street_address`, `city_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '512, F-10 Markaz,', 1, '2018-04-13 18:43:17', NULL, NULL),
(2, '64, Sector C, Commercial Zone, Khayaban-e-Jinnah, Phase X, DHA,', 2, '2018-04-13 18:48:57', NULL, NULL),
(3, '53, McLeod Rd.,', 3, '2018-04-13 18:48:57', NULL, NULL),
(4, 'Ross Residentia, 167, As Saud Rd.,', 6, '2018-04-13 18:54:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `location_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `location_id`) VALUES
(1, 'Dr. Guido Kihn MD', 'reynolds.jessica@example.com', '$2y$10$4iJmXVXVCcSCKEi009vE.O1TxPtnTBLa7s5sNGSeQlWQd6jGPczTW', 'md39zv4tE1', '2018-04-13 14:23:36', '2018-04-13 14:23:36', NULL, 3),
(2, 'Ms. Adella Bechtelar', 'daija35@example.org', '$2y$10$fQk6DdlEvweE2o/QErKXkODbh42XNCUxq6Vvguvpkg0y7SZEVGgW2', '8TfNf09JTy', '2018-04-13 14:23:36', '2018-04-13 14:23:36', NULL, 1),
(3, 'Ms. Rafaela Lind', 'lisandro90@example.org', '$2y$10$OrDlWESpuJNsfF7.8Xb/junRsq6HBIbGUmdBe6FVcsdNQL2AhZRHq', 'gOQwPGDUGq', '2018-04-13 14:23:37', '2018-04-13 14:23:37', NULL, 4),
(4, 'Mr. Emory Reinger', 'kadin90@example.com', '$2y$10$2PRChFjD6AtUH8wDXnD7au6dyq3f06gI4rkgwGw6mnYgtXES.yVzu', 'FIFKdtE5Ms', '2018-04-13 14:23:37', '2018-04-13 14:23:37', NULL, 2),
(5, 'Creola Ratke', 'hoppe.bradford@example.org', '$2y$10$rur6DIroQ97FCWelycB2leueyedgnI2RwRiZqTvyNgKSbrCgS7dhO', 'pTKRHrE2Nq', '2018-04-13 14:23:37', '2018-04-13 14:23:37', NULL, 2),
(6, 'Dora Conroy I', 'gstark@example.org', '$2y$10$6c9Uv0.uM.022BFDZQ0rOOnXZtH.6xh7I4RwMu1tj7GokarziUHGS', 'Tlt7GjveWO', '2018-04-13 14:23:37', '2018-04-13 14:23:37', NULL, 3),
(7, 'Dr. Eleanore Towne', 'dameon.smitham@example.org', '$2y$10$GrNGiFE1ADOe527YfgNJEeDcCjSrYlaYykCgzWzC3sIAy0zsXXude', 'mFk9AjbWta', '2018-04-13 14:23:37', '2018-04-13 14:23:37', NULL, 3),
(8, 'Marie Wuckert', 'waelchi.jacynthe@example.com', '$2y$10$PZrozEXBxbwdIM//j2MrKOjiKAa4J7CeBc63YDuBl/yWdJUhRJpbi', 'DpqTxxAItp', '2018-04-13 14:23:38', '2018-04-13 14:23:38', NULL, 1),
(9, 'Leon Runolfsson III', 'skuvalis@example.org', '$2y$10$oMPoSL4EFfkjP9KuEn5SRufZ5nt8rdymm2DOc3/qpVXUe2j2G99em', '3udENz9hyK', '2018-04-13 14:23:38', '2018-04-13 14:23:38', NULL, 2),
(10, 'Jamie Torphy', 'rex.krajcik@example.net', '$2y$10$kRWhem3Hn09/gZurNDTLPuAq1Vd7VdFklB6SCazRhtCqoh/LLUXgi', 'QN4C0ny2x5', '2018-04-13 14:23:38', '2018-04-13 14:23:38', NULL, 2),
(11, 'Prof. Tom Murphy', 'pmarquardt@example.com', '$2y$10$hxmWvpKRdDp3lB0UurhDB.06T2a1DM6frw.z.lrr3rcmcuh/laT3q', 'ooPGVas2Id', '2018-04-13 14:23:38', '2018-04-13 14:23:38', NULL, 1),
(12, 'Missouri Zemlak', 'schowalter.maximus@example.com', '$2y$10$fe0wzUCMwoCEyG/7fA1e0Ov8T261OnLVX3OK2qxji2bRf0BTlke4y', 'urmt1WK5hc', '2018-04-13 14:23:38', '2018-04-13 14:23:38', NULL, 2),
(13, 'Gussie Lakin MD', 'hettie81@example.net', '$2y$10$NchCnQdvxiVbtA8fuf7.R.wI6sWQ8bgCM.AVmOEp0vFeaQjUj9nPS', '6sfYp7UqBU', '2018-04-13 14:23:38', '2018-04-13 14:23:38', NULL, 1),
(14, 'Blair Goldner', 'kwalter@example.com', '$2y$10$SMmoc5COabNXfgpLCuKfJ.oAQc8JCFu/bqMJHAIzBRaHwPcCc6wLa', 'FyN0FFENUB', '2018-04-13 14:23:38', '2018-04-13 14:23:38', NULL, 3),
(15, 'Jailyn Connelly', 'doyle.aditya@example.com', '$2y$10$DLMXeosUXJ092MgNtZ3c9ebGcbkkNwW3t/hvZchO0ugDZ92hGB09W', 'ktZJAOrP2C', '2018-04-13 14:23:38', '2018-04-13 14:23:38', NULL, 4),
(16, 'Pearl McKenzie IV', 'cary.legros@example.com', '$2y$10$Ve.AegGSz4r4mZoAZMc0reRrDgQSELc2eKPcIHtcLYWKRmelqzqeW', 'xZpl9EjJb2', '2018-04-13 14:23:38', '2018-04-13 14:23:38', NULL, 2),
(17, 'Clementine Hoppe Jr.', 'will.jacques@example.org', '$2y$10$VCSfw2dZJYS4HWtJN9b/zeh3BFsZwqrJwHXqbx8SNyvPNyScuEpca', 'siyKJxc661', '2018-04-13 14:23:39', '2018-04-13 14:23:39', NULL, 1),
(18, 'Prof. Ettie Rolfson', 'leatha.farrell@example.com', '$2y$10$mG3iPtOM.4AEzae9zdG9bu1LTIWWg.rZ8p2Bsb4QywMFUC43xHheG', 'R4WQwI91Qy', '2018-04-13 14:23:39', '2018-04-13 14:23:39', NULL, 4),
(19, 'Audreanne DuBuque', 'green.opal@example.com', '$2y$10$mSpXeJfZnMJ0zqJupghh/OuZiYVVtuATy1VgELCLaS/TXwrTxnXce', 'oE876ISrUj', '2018-04-13 14:23:39', '2018-04-13 14:23:39', NULL, 1),
(20, 'Devonte Smith', 'awolff@example.net', '$2y$10$PvaQ80gIc9Nn0AAcaS/LQuCv2H7j.Co5AofZ1yV8wOQ0H2zIjns/S', 'ywto5nVtUY', '2018-04-13 14:23:39', '2018-04-13 14:23:39', NULL, 3),
(21, 'Waino Stokes', 'fnitzsche@example.com', '$2y$10$UUvilsYnEGjMeMeyui3JVekKXYSNEVvBBpJaciATJ0CEis9ooAyDe', 'jySP3YiQ5N', '2018-04-13 14:23:39', '2018-04-13 14:23:39', NULL, 1),
(22, 'Prof. Tianna Mohr', 'oda00@example.com', '$2y$10$PxDXW38/Rbq5oBZ0Og27y.LVNxQqx3VFy1NFcyrCvkQ3gJ0zChlD2', 'zQnvWzmOkv', '2018-04-13 14:23:39', '2018-04-13 14:23:39', NULL, 1),
(23, 'Cora Robel', 'titus.koch@example.org', '$2y$10$kCkOBvPelBmsHAO/NjhLJeI1GgQpeyfDwN4rD7FvQOoVpAwddssIq', 'vDP2SjiRj7', '2018-04-13 14:23:39', '2018-04-13 14:23:39', NULL, 3),
(24, 'Mr. Mariano Lynch DVM', 'brady25@example.net', '$2y$10$0ag87nL.VS9ox1bpftjF2OInNMBTtRgz9KbfBk09G.KemApX86QMC', 'TTn0CZGDGN', '2018-04-13 14:23:39', '2018-04-13 14:23:39', NULL, 4),
(25, 'Paolo Schinner', 'jcartwright@example.com', '$2y$10$Q9fwJRspFtHTnCFREGn/bu0giXDwD2RcMIt7wMuNdMY193ctULx.K', '2NQAwJgGvE', '2018-04-13 14:23:40', '2018-04-13 14:23:40', NULL, 2),
(26, 'Rosendo Marvin DDS', 'walsh.krystal@example.org', '$2y$10$Z2y77t1nFj563WP8zTuPDOPSgbm26okEx9tikMd7AB1jn4H2uaERG', 'lyOSnOchaM', '2018-04-13 14:23:40', '2018-04-13 14:23:40', NULL, 1),
(27, 'Adrian Prohaska', 'hpadberg@example.com', '$2y$10$7OZzzWQOPDPwLV/Bs.q1KOZYtwIoY9WjlfM/XwLAb/D95MRESNxHO', '6Tnq8Wjnld', '2018-04-13 14:23:40', '2018-04-13 14:23:40', NULL, 2),
(28, 'Mr. Morgan Larkin III', 'ignatius.bergstrom@example.com', '$2y$10$WSBDBFaq3OBJovaw6Joa1OmPo.FfbBTWmBxCTg.2rEyZm865fjv2S', 'DHTRd89okw', '2018-04-13 14:23:40', '2018-04-13 14:23:40', NULL, 2),
(29, 'Lukas Haley', 'olin.nicolas@example.org', '$2y$10$Icdb/3JVUOGzgsQdhNF/QOc86pvomauFqjzWgW6dyLYQMSCJGQo1O', 'PAwpbGgHNE', '2018-04-13 14:23:40', '2018-04-13 14:23:40', NULL, 4),
(30, 'Raleigh Yundt', 'murazik.liza@example.net', '$2y$10$inwZEnBB0mTTF5FcB8GNguzREOnnqdLhJzsIk.NO2chqx7Wdshv8y', 'uRaZYUQGrS', '2018-04-13 14:23:40', '2018-04-13 14:23:40', NULL, 3),
(31, 'Bartholome Corkery', 'oconnell.diamond@example.net', '$2y$10$RbpHh8LVAEe564YwsGv8BucNnHTGAI3CEUvWHO37IH5/AkE8T1YF2', 'jLldR0QrOW', '2018-04-13 14:23:40', '2018-04-13 14:23:40', NULL, 4),
(32, 'Manuel Senger III', 'hjacobs@example.com', '$2y$10$n1L//prbpQ.22xhQMNz4uu9UeXXKKo4yMQgdidyGo6I8dCU3tcJmq', 'Ze7hbLjLza', '2018-04-13 14:23:40', '2018-04-13 14:23:40', NULL, 4),
(33, 'Johnson Hegmann', 'vkris@example.net', '$2y$10$QC3bRt8yyrQYBczIT/pFVOqAVNdTCv20y1YKznMnzQwzGa6Sr2Pcq', 'WWTrEYuUwO', '2018-04-13 14:23:40', '2018-04-13 14:23:40', NULL, 2),
(34, 'Miss Kasandra Paucek', 'jackson72@example.org', '$2y$10$2MMw63HdZfnbAaoQnuDOuuaozSx0hoGIcugpd3EQSpB7xrrDpUz96', 'XbxdlUJm4P', '2018-04-13 14:23:41', '2018-04-13 14:23:41', NULL, 4),
(35, 'Prof. Julius Schneider', 'emmet.grimes@example.com', '$2y$10$4Puf792MYSv7JMUHcfg6mefXuGBNT6MpAv9SNrJevWLsZgfpIGjVW', 'hStLDe1Uvb', '2018-04-13 14:23:41', '2018-04-13 14:23:41', NULL, 4),
(36, 'Miss Antonina Little PhD', 'skozey@example.net', '$2y$10$VrBPydDdCh0lcQPdB7iTbu6/kIrCJ8Cf6I5HFqVP9vJ84zDOv9bw2', 'lhe4F7LeoC', '2018-04-13 14:23:41', '2018-04-13 14:23:41', NULL, 2),
(37, 'Mrs. Amanda White', 'klein.mateo@example.net', '$2y$10$zBJUbiU5btfSvDp/ddAude4Vo84k6MhDq5MLoNLPeu56wzAmj4C9K', 'YE4iDBz1UM', '2018-04-13 14:23:41', '2018-04-13 14:23:41', NULL, 1),
(38, 'Darius Cremin', 'grimes.nina@example.org', '$2y$10$8Qrgec0v0SoikCr1/2d40eStBnvyZQmZqV67eVXJKsFF958754rJK', 'b3Mtk2gICn', '2018-04-13 14:23:41', '2018-04-13 14:23:41', NULL, 2),
(39, 'Amari Kuphal', 'andrew33@example.com', '$2y$10$dlKmllcnHa.4SfPnr1xFt.XNCn1bKTgIYrCb3eOwccO.CdWfk1tU6', 'iHXgHhfs7Z', '2018-04-13 14:23:41', '2018-04-13 14:23:41', NULL, 1),
(40, 'Jalon Kemmer', 'ufadel@example.org', '$2y$10$OUqqJSDxFyPF0285KaWMP.6oj.ArNgQA2DQVLO8YnVU/ChoBAG4t6', 's0TGB9cDvb', '2018-04-13 14:23:41', '2018-04-13 14:23:41', NULL, 1),
(41, 'Courtney Rodriguez', 'coty.ziemann@example.net', '$2y$10$ZbNl7wL6TV7ILQBKbWwUVuifHFZvscZ3p6pHGRyvpunIw3iw5Y9YG', 'I6Dsr1cN9C', '2018-04-13 14:23:41', '2018-04-13 14:23:41', NULL, 4),
(42, 'Prof. Laurel Denesik IV', 'twilliamson@example.net', '$2y$10$M9jZQU6FuNOcCXVzqteYG.goUUiPHzxYWOtmeTSh/WA90OaFT7SeS', 'po6vbbp1sD', '2018-04-13 14:23:42', '2018-04-13 14:23:42', NULL, 4),
(43, 'Miss Ivory Jerde', 'agerlach@example.net', '$2y$10$D5tAkZUFCpQ0Qm8O8K5bdO1ZoLngKKRFSXoil9sUhkn1fk64VwmUG', 'vbInvKjV25', '2018-04-13 14:23:42', '2018-04-13 14:23:42', NULL, 3),
(44, 'Tracey Daugherty', 'erick53@example.com', '$2y$10$X1Uoh3pUQs1U9xsqwrVra.GNskdtF/CRevGRhc7ENWA.YvdauYhCu', 'EyxLJRqHU9', '2018-04-13 14:23:42', '2018-04-13 14:23:42', NULL, 4),
(45, 'Harley Flatley', 'callie69@example.com', '$2y$10$KSQHE.XuKkr/VJYQZwm6teshkCPgCRgBh4PdMM4/pMgARzJXCkSnK', 'qeZGq4E9uX', '2018-04-13 14:23:42', '2018-04-13 14:23:42', NULL, 3),
(46, 'Judah Schaden', 'bruen.katelyn@example.net', '$2y$10$aOR8Rv9qoqOZ/GaPkzEQsOYzLbv5aTNa5lqWLVOJnHLFKHJXZoy8q', 'rUPeznZnEA', '2018-04-13 14:23:42', '2018-04-13 14:23:42', NULL, 4),
(47, 'Janis Bailey', 'brenden.glover@example.org', '$2y$10$jsxfSWQR91THDxHusKX9U.16SFouH/G/vxAD2XQJWUmTFRoRnPE.u', 'fEwjphf7ge', '2018-04-13 14:23:42', '2018-04-13 14:23:42', NULL, 1),
(48, 'Jamarcus Considine', 'berge.vito@example.org', '$2y$10$BcG2O1wjbpEVfUbXHtqZKu1Z43b7xbOjkX8gaAKGOH0BAz8nD41by', 'Nv6Si9Ah9j', '2018-04-13 14:23:42', '2018-04-13 14:23:42', NULL, 4),
(49, 'Prof. Gerry Lynch', 'hschimmel@example.com', '$2y$10$Y5UQGaOPTUtZ2EloWFWMNeAn8hVtUxhharkBUdVljoFGPyDmFc4vK', 'VLn57PAqc4', '2018-04-13 14:23:42', '2018-04-13 14:23:42', NULL, 3),
(50, 'Celestino Aufderhar', 'bheller@example.net', '$2y$10$k1Z1f/77ncsYfd5SMP/B4OWOcjwWu5pCPJjkMHNQp5BDZb1mwWGbK', 'XnKKbnK4mU', '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `author`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Numquam libero cum molestiae quibusdam expedita reprehenderit dolor.', 'Quod ratione et consectetur ea vel consectetur. Et id quod asperiores et beatae aspernatur quam porro. Ut amet quo pariatur aut sit accusamus. Consectetur temporibus earum ut est.', 1, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(2, 'Error et aut nihil est praesentium nam animi itaque.', 'Voluptatem consequatur facere sit omnis sapiente qui cum atque. Nesciunt ut ullam facilis dicta quis eveniet dolore. Quod iure incidunt tenetur doloremque et nulla occaecati. Dolorum veniam doloribus porro expedita. Sapiente qui vero necessitatibus qui.', 2, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(3, 'Aut sit perferendis est quos non fugit.', 'Minima ad aut soluta est laboriosam. Facilis saepe est enim et deleniti optio. Voluptatem iure error autem qui.', 3, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(4, 'Architecto nesciunt asperiores et dolores culpa est.', 'Ducimus sunt architecto provident rerum nesciunt. Quasi qui doloribus et quidem. Natus aliquam expedita inventore iusto nobis. Qui cupiditate nihil praesentium eum.', 4, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(5, 'Eum qui quis voluptatem veniam ab voluptas quis.', 'Aut sit quaerat quo ullam quasi perferendis dolores. Nihil illum autem dolore est qui assumenda doloribus. Dolor amet possimus rem. Voluptas culpa qui laudantium amet qui vel quia.', 5, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(6, 'Expedita facilis odio voluptate laboriosam.', 'Vitae qui alias aut iusto itaque et. Assumenda dolores sed nam dignissimos quis. Quia hic harum non veniam id nihil praesentium.', 6, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(7, 'Fugit sint quis voluptatum praesentium.', 'Qui numquam omnis occaecati assumenda sit rerum excepturi. Sit sed ab ut in accusantium impedit. Quidem quasi vel totam sapiente. Nobis iure maiores dolorum ut tenetur quasi.', 7, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(8, 'Voluptates sed earum corporis nihil.', 'Et ut ut mollitia vitae inventore quia. Excepturi quaerat similique officia quas blanditiis qui. Quo cupiditate minus non explicabo culpa consequuntur iure consequuntur. Est ullam ab rerum optio quidem ea voluptas.', 8, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(9, 'Quo aut consectetur repellat neque aliquam corporis.', 'Consequatur eveniet velit dolorem laboriosam. Aut natus nemo et animi et est expedita. Quam laudantium laboriosam quis est sit. Deserunt sit et et at.', 9, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(10, 'Excepturi repudiandae voluptas quos corporis.', 'Quia dolorem et officiis sint asperiores iusto totam. Architecto aut nesciunt necessitatibus corporis dolores. Alias sequi nemo nisi fugiat suscipit et quidem. Necessitatibus cupiditate quibusdam voluptates quis asperiores asperiores ea.', 10, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(11, 'Consequatur voluptatum qui similique in quae reiciendis ipsa.', 'Omnis voluptas adipisci laborum omnis in. Et sit consequatur voluptatem ut omnis. Blanditiis non debitis inventore ut. Fugit placeat at unde error voluptatem reprehenderit non sit.', 11, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(12, 'Ut sint id molestiae accusantium non maxime.', 'Modi nostrum fuga eos est architecto totam tenetur. Voluptate distinctio maiores eos voluptatibus. Voluptatem sed cum ea et aut illo. Ut autem sint maxime aut placeat molestias. Quo rerum iste deleniti et distinctio illo exercitationem.', 12, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(13, 'Nihil unde minus nesciunt.', 'Fuga inventore sint exercitationem facilis. Eveniet nobis ad consequatur natus amet libero est. Quasi in voluptas assumenda ipsam. Placeat sunt enim eaque dolores eius sed porro magni. Culpa ad amet quos in deleniti voluptas ea.', 13, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(14, 'Esse rerum magnam sapiente quos esse aspernatur.', 'Facere unde voluptatem pariatur aut ratione tenetur tenetur. Sit autem deleniti aut dolorem. Molestias ipsa voluptatem molestiae fugit.', 14, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(15, 'Voluptatem ut eveniet laboriosam similique perspiciatis magnam.', 'Sed reiciendis tempore dolorum eaque. Consequatur in distinctio pariatur aut officia molestias inventore.', 15, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(16, 'Ipsa consequatur a quo ipsum tempora.', 'Quis alias dolorum dolorum soluta cupiditate est voluptatem in. Ad molestiae iste ratione velit eveniet et aperiam. Et omnis est nisi quae. Sunt hic sunt omnis nisi consequatur incidunt delectus.', 16, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(17, 'Odit cum dolor reprehenderit ullam voluptas qui perferendis.', 'Blanditiis delectus corrupti quis rerum. Ab fugiat quisquam expedita. Ab hic consequatur consequatur distinctio.', 17, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(18, 'Voluptatibus tempora ut omnis alias laborum adipisci sint et.', 'Vitae eius quam aut dolores sunt fugiat. Expedita saepe libero sint quod et earum quidem. Mollitia odio recusandae illum vel. Voluptas debitis odit distinctio beatae.', 18, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(19, 'Excepturi voluptatem quo numquam harum error.', 'Fugit et corrupti est ad itaque voluptas cumque quia. Earum consequatur nesciunt voluptas quas dicta cumque cumque. Incidunt qui distinctio officiis enim. Sed necessitatibus fuga rerum ipsam corrupti molestiae aut repudiandae.', 19, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(20, 'Vel soluta quos id est voluptatum in est.', 'Doloremque eius consequatur qui molestiae eos velit dolor. Ut cupiditate eligendi autem et. Necessitatibus libero explicabo aut cupiditate. Cumque deleniti voluptates saepe deserunt omnis aperiam.', 20, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(21, 'Voluptas nobis voluptas est et.', 'Impedit occaecati quas illum inventore. Alias non ipsa incidunt quam. Sunt ut deserunt odio mollitia possimus ullam.', 21, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(22, 'Quibusdam rem sint ullam eum.', 'Ut in nulla nisi at id est repellendus asperiores. In illo qui dolor qui voluptas. Consequatur perspiciatis aut itaque voluptate occaecati officia.', 22, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(23, 'Animi enim facilis aliquid ut libero.', 'Natus magni nihil beatae dolore ea. Ipsum beatae repellat tempora corrupti iste. Tempore id consequatur ut autem eaque. Voluptatem iste illum maxime aut corrupti.', 23, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(24, 'Exercitationem itaque reiciendis sint quo labore cupiditate at.', 'Facilis unde debitis ea facilis. Ut hic aut rerum aut doloremque odit. Facilis voluptatum tempore facilis similique est quaerat. Quia quas provident labore eos.', 24, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(25, 'Fugit dolores eveniet ratione commodi corporis.', 'Sed tempora et quasi qui modi eligendi recusandae. Dolor enim id nostrum et iure.', 25, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(26, 'Necessitatibus et quia sint consectetur fugiat possimus.', 'Quas iure sunt autem a unde enim. Atque quod hic quos et et. Voluptatem eos facilis saepe molestiae sequi consequatur. Consequatur voluptas consequatur sapiente expedita quo ratione ab. Natus non at voluptatem tenetur error blanditiis voluptatem.', 26, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(27, 'Odio est voluptatum beatae eos.', 'Eos qui ab dolor animi. Ut neque modi est hic suscipit. Natus ut culpa aliquid nihil ut expedita delectus.', 27, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(28, 'Provident perferendis blanditiis atque odit ut perspiciatis blanditiis.', 'Distinctio ad qui saepe eveniet rem dolor. Non voluptatem aut sint et molestias qui.', 28, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(29, 'Voluptatibus voluptatem rerum nihil officiis iure.', 'Sapiente autem nihil earum unde illum aut nihil quia. Accusamus qui incidunt laborum. Quis et blanditiis magnam aut quos ad.', 29, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(30, 'Dolor aliquid mollitia aliquam sit.', 'Vero quidem alias similique doloremque consectetur sint quas. Rerum alias rerum omnis quia veritatis. Sed aperiam voluptatem aut molestias.', 30, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(31, 'Voluptatem ex est esse non nulla.', 'Autem et animi itaque eum veniam. Consequuntur asperiores quae eius doloribus natus et harum. Quia necessitatibus ea sit veniam reprehenderit dignissimos.', 31, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(32, 'Sapiente laudantium facere voluptatem qui velit vitae asperiores.', 'Consequatur deserunt quis libero et sit. Saepe ullam deserunt et asperiores quis ullam distinctio et. Dolores ut sint quo. Cupiditate voluptatem inventore maxime nihil.', 32, '2018-04-13 14:23:43', '2018-04-13 14:23:43', NULL),
(33, 'Rerum recusandae vel tempore sit.', 'Veritatis quod tempore fugiat aut ut. Non voluptatem fuga consequatur quae dolorem aut quidem quia. Quis omnis perferendis molestias consequuntur.', 33, '2018-04-13 14:23:44', '2018-04-13 14:23:44', NULL),
(34, 'Debitis et asperiores dolorem velit placeat accusamus.', 'Doloremque et totam voluptate vero aut. Saepe quidem aut quas voluptatem est. Dolorum quae recusandae aperiam doloribus sapiente. Consectetur dolor ut suscipit tenetur.', 34, '2018-04-13 14:23:44', '2018-04-13 14:23:44', NULL),
(35, 'Est amet et quo sit.', 'Nihil est qui quo laudantium. Quaerat qui possimus minima repellat. Dolorem illum eos voluptatum omnis quo. Itaque assumenda non rerum assumenda iste quod debitis expedita.', 35, '2018-04-13 14:23:44', '2018-04-13 14:23:44', NULL),
(36, 'Quis aut doloremque repellat qui nostrum.', 'Aut delectus est laboriosam maiores. Aut odit ut assumenda optio sint. Quibusdam inventore non occaecati deserunt.', 36, '2018-04-13 14:23:44', '2018-04-13 14:23:44', NULL),
(37, 'Est magnam consectetur mollitia ipsum ipsum recusandae.', 'Aspernatur ipsam laborum quasi similique. Nostrum quo quos omnis in fugiat ut totam. Ut tempora tenetur illo delectus distinctio nesciunt. Hic hic et ut accusantium.', 37, '2018-04-13 14:23:44', '2018-04-13 14:23:44', NULL),
(38, 'Illo sit nostrum quis sit nisi explicabo quos.', 'Inventore eaque aperiam hic autem. Quia sunt odio amet aut ea. Voluptates itaque eius sint vel. Nihil officia distinctio repellat et iste ut harum.', 38, '2018-04-13 14:23:44', '2018-04-13 14:23:44', NULL),
(39, 'Aliquid non tempora exercitationem non cum.', 'Dolore et quisquam tenetur aliquid suscipit aliquam. Minus numquam in omnis facere blanditiis nemo. Ut vero id velit molestiae. Optio facilis itaque dolorem.', 39, '2018-04-13 14:23:44', '2018-04-13 14:23:44', NULL),
(40, 'Non eos soluta qui ex.', 'Et amet nam a occaecati quam. Laboriosam dolorum ipsa blanditiis reprehenderit ab et ut. Dolor nesciunt et omnis minima voluptate deleniti. Voluptate dignissimos qui commodi pariatur et voluptatem.', 40, '2018-04-13 14:23:44', '2018-04-13 14:23:44', NULL),
(41, 'Ratione doloremque corporis consectetur cum ut.', 'Possimus laudantium ut ipsum voluptatibus dolore. Laudantium sunt in quis sint. Itaque itaque quasi qui. In neque adipisci doloremque perferendis qui eum.', 41, '2018-04-13 14:23:44', '2018-04-13 14:23:44', NULL),
(42, 'Praesentium dolore et voluptatibus quo vel ad harum.', 'Rerum ratione omnis voluptas quibusdam maiores ut. Nostrum ut et ab dolores. Velit porro omnis dicta sint nemo quidem nesciunt.', 42, '2018-04-13 14:23:44', '2018-04-13 14:23:44', NULL),
(43, 'Ipsam laborum quod vel.', 'Animi impedit occaecati corrupti natus maiores esse. Aspernatur reiciendis deleniti quia. Repellendus suscipit ratione omnis et ipsa. Aut autem tempore assumenda aut quaerat placeat.', 43, '2018-04-13 14:23:44', '2018-04-13 14:23:44', NULL),
(44, 'Ut et ipsam qui perferendis rem blanditiis officiis.', 'Inventore atque dolorem harum eum consectetur tempore doloribus dolor. Rerum voluptates placeat quia mollitia nulla voluptas. Consequuntur cupiditate nesciunt explicabo iusto et vitae consequatur.', 44, '2018-04-13 14:23:44', '2018-04-13 14:23:44', NULL),
(45, 'Consequatur officiis molestiae delectus sint at quia.', 'Aspernatur ea doloribus enim qui sunt asperiores libero. Unde vitae voluptatibus saepe commodi recusandae provident deserunt. Officia doloribus nam quia itaque tempore. Commodi laboriosam velit reiciendis sunt tempore.', 45, '2018-04-13 14:23:44', '2018-04-13 14:23:44', NULL),
(46, 'Velit id labore veritatis corrupti eos nisi quaerat.', 'Aut aut cumque cupiditate accusantium animi accusantium cupiditate. Odit eius illum magni sit. Nihil molestiae repellendus tempore voluptatem.', 46, '2018-04-13 14:23:44', '2018-04-13 14:23:44', NULL),
(47, 'Ducimus nesciunt quas odit dolorum in.', 'Beatae sed quod repudiandae qui. Architecto autem eius et. Nihil excepturi id a omnis. Nulla dolores voluptatibus quis dolore repellendus expedita voluptas. Reprehenderit animi in officia voluptatum qui.', 47, '2018-04-13 14:23:44', '2018-04-13 14:23:44', NULL),
(48, 'Recusandae sed asperiores molestiae qui sapiente et reprehenderit consequatur.', 'Necessitatibus natus consequatur quam. Aut pariatur tempore ad delectus quod accusantium ut. Est et quia dolor. Neque doloremque tenetur porro maxime suscipit.', 48, '2018-04-13 14:23:44', '2018-04-13 14:23:44', NULL),
(49, 'Fuga aut nihil quo.', 'Qui sit laborum ad tenetur quo. Placeat odio officiis tempore enim earum. Odit rerum tempora eaque odit. Et id voluptatem consequatur ullam nam laborum voluptate.', 49, '2018-04-13 14:23:44', '2018-04-13 14:23:44', NULL),
(50, 'Quibusdam et est minima tenetur id nobis est.', 'Eum iusto consequatur porro vitae voluptates maxime. Vel occaecati non eum corporis. Et maiores et magni eligendi maxime rem voluptatem.', 50, '2018-04-13 14:23:44', '2018-04-13 14:23:44', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_author_foreign` (`author`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locations_city_id_foreign` (`city_id`);

--
-- Indexes for table `loc_cities`
--
ALTER TABLE `loc_cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loc_cities_country_id_foreign` (`country_id`);

--
-- Indexes for table `loc_countries`
--
ALTER TABLE `loc_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_location_id_foreign` (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `loc_cities`
--
ALTER TABLE `loc_cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `loc_countries`
--
ALTER TABLE `loc_countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_author_foreign` FOREIGN KEY (`author`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `loc_cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `loc_cities`
--
ALTER TABLE `loc_cities`
  ADD CONSTRAINT `loc_cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `loc_countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
