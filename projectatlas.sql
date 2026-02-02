-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 02, 2026 at 03:53 AM
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
-- Database: `projectatlas`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int NOT NULL,
  `lecturer_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `semester_id` int NOT NULL,
  `date` date NOT NULL,
  `location` varchar(255) NOT NULL,
  `status` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reference_no` varchar(100) NOT NULL,
  `approval_no` varchar(100) NOT NULL,
  `approval_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `approval_post` varchar(100) NOT NULL,
  `approval_status` int NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `lecturer_id`, `subject_id`, `semester_id`, `date`, `location`, `status`, `start_date`, `end_date`, `reference_no`, `approval_no`, `approval_name`, `approval_post`, `approval_status`, `created`, `modified`) VALUES
(43, 8, 7, 2, '2026-02-19', 'BK 10', 1, '2025-12-26', '2026-01-20', '20244/3', 'APPR-20252-005', 'Assoc. Prof. Dr Norhayati Hussin', 'Dekan', 1, '2025-12-07 23:51:25', '2025-12-08 00:17:08'),
(48, 10, 3, 2, '2026-01-08', 'Fakulti Sains Maklumats', 1, '2025-12-08', '2026-06-26', '20242/2', 'APPR-20244-003', 'Assoc. Prof. Dr Norhayati Hussin', 'Dekan', 1, '2025-12-08 00:35:46', '2025-12-08 00:35:53'),
(49, 16, 6, 1, '2025-12-10', 'Fakulti Sains Maklumat', 1, '2025-12-08', '2026-08-13', '20242/2', 'APPR-20244-003', 'Assoc. Prof. Dr Norhayati Hussin', 'Dekan', 1, '2025-12-08 00:36:35', '2026-01-07 20:52:12'),
(50, 17, 11, 1, '2026-01-07', 'Fakulti Sains Maklumat', 1, '2026-01-07', '2026-01-08', '20261/1', 'UiTM-20261-001', 'Assoc. Prof. Dr Norhayati Hussin', 'Dekan', 1, '2026-01-07 21:01:29', '2026-01-07 21:01:37'),
(51, 17, 11, 15, '2026-01-07', 'Fakulti Sains Maklumat', 1, '2026-01-07', '2026-01-31', 'UiTM/FSM-20261/1', '001', 'Assoc. Prof. Dr Norhayati Hussin', 'Dekan', 1, '2026-01-07 22:10:34', '2026-01-09 11:28:24');

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int UNSIGNED NOT NULL,
  `transaction` char(36) NOT NULL,
  `type` varchar(7) NOT NULL,
  `primary_key` int UNSIGNED DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `parent_source` varchar(255) DEFAULT NULL,
  `original` mediumtext,
  `changed` mediumtext,
  `meta` mediumtext,
  `status` int NOT NULL DEFAULT '1',
  `slug` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `transaction`, `type`, `primary_key`, `source`, `parent_source`, `original`, `changed`, `meta`, `status`, `slug`, `created`) VALUES
(1, 'f59278af-e096-4672-811a-bed22fa23779', 'create', 1, 'lecturers', NULL, '[]', '{\"id\":1,\"salutation\":\"Puan\",\"name\":\"Nuraleeya Atasya\",\"staff_no\":\"13422\",\"email\":\"aleeya@gmail.com\",\"phone\":\"01121711768\"}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2025-05-18 16:03:29'),
(2, '741bdd0f-0b85-4637-89bc-986ac3ffca42', 'create', 1, 'subjects', NULL, '[]', '{\"id\":1,\"name\":\"DATABASE MANAGEMENT\",\"code\":\"IMS566\",\"status\":1,\"credit_hour\":\"3\"}', '{\"a_name\":\"Add\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/add\",\"slug\":1}', 1, NULL, '2025-05-18 16:04:00'),
(3, '4e669a44-76a6-444f-aa89-a0096d77c401', 'create', 1, 'semesters', NULL, '[]', '{\"id\":1,\"code\":\"20252\",\"name\":\"Mac - Ogos 2025\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/add\",\"slug\":1}', 1, NULL, '2025-05-18 16:04:16'),
(4, 'b7d2e213-1902-4da2-9b08-b6444850282e', 'create', 1, 'appointments', NULL, '[]', '{\"id\":1,\"lecturer_id\":1,\"subject_id\":1,\"semester_id\":1,\"date\":\"2025-05-14\",\"location\":\"BK 10\",\"status\":2,\"start_date\":\"2025-05-08\",\"end_date\":\"2025-05-14\",\"reference_no\":\"2023217302\",\"approval_no\":\"123456\",\"approval_name\":\"AYU\",\"approval_post\":\"Resource person\"}', '{\"a_name\":\"Add\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/add\",\"slug\":1}', 1, NULL, '2025-05-18 16:05:55'),
(5, 'ae26f5d3-7f83-43f5-b274-3cf756fe791b', 'update', 1, 'lecturers', NULL, '{\"phone\":\"01121711768\"}', '{\"phone\":\"01121711760\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-05-18 16:31:14'),
(6, 'c8381aad-ea54-41c0-9e46-faadfae7ba09', 'update', 1, 'subjects', NULL, '{\"credit_hour\":\"3\"}', '{\"credit_hour\":\"3.0\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-05-18 16:58:55'),
(7, '59814ccc-58d1-4422-a3ff-96f25aad189a', 'create', 2, 'subjects', NULL, '[]', '{\"id\":2,\"name\":\"Zaza\",\"code\":\"20254\",\"status\":1,\"credit_hour\":\"2.0\"}', '{\"a_name\":\"Add\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/add\",\"slug\":1}', 1, NULL, '2025-05-18 16:59:35'),
(8, '5692dba8-9b03-4b84-a9e8-62239fd12899', 'delete', 2, 'subjects', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/delete\\/2\",\"slug\":1}', 1, NULL, '2025-05-18 17:03:50'),
(9, 'db2932c3-315c-48ef-999d-94453de56a43', 'create', 2, 'semesters', NULL, '[]', '{\"id\":2,\"code\":\"20254\",\"name\":\"Digital Literacy\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/add\",\"slug\":1}', 1, NULL, '2025-05-18 18:54:53'),
(10, 'acffe3ff-e8f0-4ba1-be53-6d6f189bf33c', 'update', 2, 'semesters', NULL, '{\"status\":1}', '{\"status\":2}', '{\"a_name\":\"Edit\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/edit\\/2\",\"slug\":1}', 1, NULL, '2025-05-18 18:55:16'),
(11, '5a30a1fe-2724-4cd4-8c9f-9238a37273a9', 'update', 1, 'lecturers', NULL, '{\"status\":1}', '{\"status\":2}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-05-18 18:56:48'),
(12, '44f89995-95bf-4a8a-bfff-0d4d5518e2ac', 'create', 3, 'semesters', NULL, '[]', '{\"id\":3,\"code\":\"20254\",\"name\":\"Afi Danial\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/add\",\"slug\":1}', 1, NULL, '2025-05-18 18:58:33'),
(13, '9faf02a1-a30a-4d35-97a3-a4bbc099fee2', 'delete', 3, 'semesters', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/delete\\/3\",\"slug\":1}', 1, NULL, '2025-05-18 18:58:36'),
(14, '41ac8490-015d-4fb0-bfa8-f433a928106c', 'update', 1, 'subjects', NULL, '{\"status\":1}', '{\"status\":\"2\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-05-18 18:59:27'),
(15, '476878b1-35d3-4246-bc6f-fb03ad50de6f', 'create', 3, 'subjects', NULL, '[]', '{\"id\":3,\"name\":\"IML512\",\"code\":\"USHU\",\"status\":\"3\",\"credit_hour\":\"1.0\"}', '{\"a_name\":\"Add\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/add\",\"slug\":1}', 1, NULL, '2025-05-18 18:59:45'),
(16, 'b47ad410-8645-441a-88bf-3b943489a429', 'update', 1, 'subjects', NULL, '{\"status\":2}', '{\"status\":\"1\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-05-18 18:59:58'),
(17, '7aa44dd2-265a-4456-8932-5656d91efc29', 'update', 1, 'lecturers', NULL, '{\"status\":2}', '{\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-05-18 19:00:05'),
(18, '2426083b-a59e-48ae-88a3-8be7fc22ec59', 'update', 1, 'appointments', NULL, '{\"status\":2}', '{\"status\":\"3\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-05-18 19:01:38'),
(19, '7ca4b006-1b43-4282-be28-45ba122caf54', 'create', 2, 'appointments', NULL, '[]', '{\"id\":2,\"lecturer_id\":1,\"subject_id\":3,\"semester_id\":2,\"date\":\"2025-05-27\",\"location\":\"fgf\",\"status\":\"1\",\"start_date\":\"2025-05-02\",\"end_date\":\"2025-08-08\",\"reference_no\":\"45434343\",\"approval_no\":\"3534343\",\"approval_name\":\"mi\",\"approval_post\":\"Resource person\"}', '{\"a_name\":\"Add\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/add\",\"slug\":1}', 1, NULL, '2025-05-18 19:02:16'),
(20, 'bf03eb36-b274-4dae-90a8-b4a0e15e748e', 'create', 4, 'subjects', NULL, '[]', '{\"id\":4,\"name\":\" Introduction to Management\",\"code\":\"MGT101\",\"status\":2,\"credit_hour\":\"2.0\"}', '{\"a_name\":\"Add\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/add\",\"slug\":1}', 1, NULL, '2025-05-18 19:21:47'),
(21, 'f0d38858-eb2c-4d97-a22f-a8736c0bebc9', 'create', 5, 'subjects', NULL, '[]', '{\"id\":5,\"name\":\"Computer Programming\",\"code\":\" CSC110\",\"status\":1,\"credit_hour\":\"4.0\"}', '{\"a_name\":\"Add\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/add\",\"slug\":1}', 1, NULL, '2025-05-18 19:22:13'),
(22, '8d1bdd36-6ed6-4bf0-9bdf-7058746a8400', 'create', 6, 'subjects', NULL, '[]', '{\"id\":6,\"name\":\"Web Development\",\"code\":\"ITC240\",\"status\":2,\"credit_hour\":\"3.0\"}', '{\"a_name\":\"Add\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/add\",\"slug\":1}', 1, NULL, '2025-05-18 19:22:37'),
(23, '8b40b6ab-1fcf-4b7e-9ce5-41630d99ac56', 'update', 2, 'semesters', NULL, '{\"name\":\"Digital Literacy\"}', '{\"name\":\"September - Febuari 2025\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/edit\\/2\",\"slug\":1}', 1, NULL, '2025-05-18 19:25:15'),
(24, '56c8b3dd-96c4-4d19-921a-2074699410ed', 'create', 4, 'semesters', NULL, '[]', '{\"id\":4,\"code\":\"20244\",\"name\":\"Mac - Ogos 2026\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/add\",\"slug\":1}', 1, NULL, '2025-05-18 19:25:42'),
(25, '1313803d-884e-4193-ae00-c17edb9055f8', 'create', 5, 'semesters', NULL, '[]', '{\"id\":5,\"code\":\"20242\",\"name\":\"September - Febuari 2024\",\"status\":3}', '{\"a_name\":\"Add\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/add\",\"slug\":1}', 1, NULL, '2025-05-18 19:26:21'),
(26, '4f912ab0-34da-42dc-a3f8-8de98df70e5c', 'update', 4, 'semesters', NULL, '{\"name\":\"Mac - Ogos 2026\"}', '{\"name\":\"Mac - Ogos 2024\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/edit\\/4\",\"slug\":1}', 1, NULL, '2025-05-18 19:26:39'),
(27, 'a2da3f1b-cf82-48d7-8b68-48e8e4f1feb1', 'create', 6, 'semesters', NULL, '[]', '{\"id\":6,\"code\":\"20254\",\"name\":\"Mac - Ogos 2025\",\"status\":2}', '{\"a_name\":\"Add\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/add\",\"slug\":1}', 1, NULL, '2025-05-18 19:26:55'),
(28, '68cb9ad2-c438-4501-a982-379cfa80fdfe', 'create', 2, 'lecturers', NULL, '[]', '{\"id\":2,\"name\":\"Afi Danial\",\"staff_no\":\"90000\",\"email\":\"afidanial03@gmail.com\",\"phone\":\"111\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2025-05-20 16:06:55'),
(29, '9ae000c4-0313-409e-968e-9979952334b7', 'create', 3, 'lecturers', NULL, '[]', '{\"id\":3,\"name\":\"\",\"staff_no\":\"\",\"email\":\"\",\"phone\":\"\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2025-05-20 16:07:12'),
(30, '6588e6f1-b264-479b-b8cd-4dd9a3e55547', 'create', 4, 'lecturers', NULL, '[]', '{\"id\":4,\"name\":\"\",\"staff_no\":\"\",\"email\":\"\",\"phone\":\"\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2025-05-20 16:08:32'),
(31, '897176c9-de57-49e3-b66b-8dcc41ddeeec', 'delete', 4, 'lecturers', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/delete\\/4\",\"slug\":1}', 1, NULL, '2025-05-27 10:18:51'),
(32, '3bb49898-1197-4487-befa-c755fb27e639', 'delete', 3, 'lecturers', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/delete\\/3\",\"slug\":1}', 1, NULL, '2025-05-27 10:19:01'),
(33, '45efcca1-fe95-4d01-bf28-37a17699728c', 'create', 5, 'lecturers', NULL, '[]', '{\"id\":5,\"name\":\"\",\"staff_no\":\"\",\"email\":\"\",\"phone\":\"\"}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2025-05-27 10:19:12'),
(34, '2d665254-152d-443a-8e2e-2d63da4f72a9', 'delete', 5, 'lecturers', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/delete\\/5\",\"slug\":1}', 1, NULL, '2025-05-27 10:22:51'),
(35, '472491bc-b3cf-4983-b203-fca15a070d7c', 'create', 6, 'lecturers', NULL, '[]', '{\"id\":6,\"name\":\"Afi Danial\",\"staff_no\":\"14532\",\"email\":\"afidanial03@gmail.com\",\"phone\":\"0183800311\",\"status\":2}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2025-05-27 10:23:58'),
(36, '78f80a7d-4678-42f5-bb51-9e606724b77c', 'create', 7, 'lecturers', NULL, '[]', '{\"id\":7,\"name\":\"\",\"staff_no\":\"\",\"email\":\"\",\"phone\":\"\"}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2025-05-27 10:24:07'),
(37, '8bc677b8-853e-4eff-9c9d-9041b8cf709a', 'delete', 7, 'lecturers', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/delete\\/7\",\"slug\":1}', 1, NULL, '2025-05-27 10:24:41'),
(38, 'c7b294be-c9c0-479e-bed1-f8e7ff73998d', 'update', 2, 'appointments', NULL, '{\"lecturer_id\":1}', '{\"lecturer_id\":2}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/2\",\"slug\":1}', 1, NULL, '2025-05-27 14:23:31'),
(39, 'd1b40d4b-531c-4bc7-acc2-5b0f230c5ef3', 'update', 2, 'appointments', NULL, '{\"approval_status\":\"\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-05-27 15:11:46'),
(40, 'b333180a-bc8e-4151-a8f9-68c89d3b6720', 'update', 2, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-05-27 15:12:03'),
(41, '0c91f85c-ae8b-437b-9d3f-61df08566063', 'create', 8, 'lecturers', NULL, '[]', '{\"id\":8,\"name\":\"Afi Danial\",\"staff_no\":\"13422\",\"email\":\"afidanial03@gmail.com\",\"phone\":\"01121711768\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2025-05-27 15:14:43'),
(42, '23f3090f-e5c2-4624-bcf7-bae66e24b852', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-09 21:43:18'),
(43, 'd0b9421b-2968-4e4b-bfa5-79f17bc2921d', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"\"}', '[]', 1, NULL, '2025-06-09 21:44:55'),
(44, 'bd23b156-c77b-412d-bf28-49c8c965bccb', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-09 21:46:07'),
(45, '73228365-f723-4aca-be28-146f45b271fb', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"\"}', '[]', 1, NULL, '2025-06-09 22:08:57'),
(46, '997a6fb4-34d7-4e10-b8c2-4545f0db7efb', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-09 22:13:15'),
(47, '2362cb48-c5f1-4827-974e-18fa14e1afdd', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-09 22:27:25'),
(48, '74554c39-eb4e-4cf9-9f84-7954259a2a2e', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-09 22:29:06'),
(49, 'e9455ccb-e3e5-4763-99fc-a792fcfb8139', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-09 22:29:52'),
(50, '623ae5f4-0fb8-41aa-a72b-de00798d62d4', 'update', 2, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"\"}', '[]', 1, NULL, '2025-06-09 22:31:35'),
(51, '92a81c99-e993-405b-8000-18a530e04da7', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"\"}', '[]', 1, NULL, '2025-06-09 22:33:09'),
(52, '9b864028-12ca-4e98-b2fa-9e006b9559c6', 'update', 1, 'lecturers', NULL, '{\"status\":1}', '{\"status\":null}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-09 22:34:08'),
(53, '062b03f8-3d75-4af2-a6fb-bebb48c7f4fb', 'update', 1, 'lecturers', NULL, '{\"status\":0}', '{\"status\":3}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-09 22:34:20'),
(54, '3a58a506-569d-4cb9-987f-1f34bfaf1729', 'update', 1, 'lecturers', NULL, '{\"status\":3}', '{\"status\":null}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-09 22:34:33'),
(55, 'ace10ee7-ba45-404e-8fb0-439051560292', 'update', 1, 'lecturers', NULL, '{\"status\":0}', '{\"status\":3}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-09 22:34:42'),
(56, 'b2e7ef1f-b36a-4607-afe4-1a6b947bbb21', 'update', 1, 'appointments', NULL, '{\"status\":3}', '{\"status\":2}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-09 22:40:54'),
(57, '33a7d9e8-8257-409b-8dbf-1ea45328ba29', 'update', 1, 'appointments', NULL, '{\"status\":2}', '{\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-09 22:41:21'),
(58, 'd22c774f-09c7-49a0-9c1c-5cc06576b4d8', 'update', 1, 'lecturers', NULL, '{\"status\":3}', '{\"status\":null}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-09 22:42:24'),
(59, '42482996-470b-4200-b425-910bad6a5d3f', 'update', 1, 'lecturers', NULL, '{\"status\":0}', '{\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-09 22:45:22'),
(60, '6582136c-a4e4-4060-bbd1-57de62f22c64', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-09 22:50:51'),
(61, '5af1d44f-d4a5-4145-8148-cb3e454361d8', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-09 22:57:05'),
(62, '79398c09-c1a9-4df3-9b83-18ef41f2f134', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-09 22:57:36'),
(63, '3071e14c-adfd-4c5e-936c-1e567709ee5b', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-09 22:57:52'),
(64, '5c1cc13b-ac85-4518-ab7f-762ea5f2f182', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-09 23:03:07'),
(65, '0b5822fa-17d9-4009-bef5-fff98621298d', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-09 23:03:20'),
(66, '07426cb6-2ee0-407d-b6c1-b2a53035febc', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-09 23:03:35'),
(67, '0d4df11f-6765-4e89-901c-96a03c6e5937', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-09 23:07:08'),
(68, '56d77062-6a52-44ff-9894-5ad6c2bc0942', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-09 23:08:31'),
(69, '204d9774-ad6e-4c01-b426-bc1c77b00539', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-09 23:15:56'),
(70, 'a079dd2c-fd97-416e-94e8-6d112f6764e8', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-09 23:20:39'),
(71, '18e8514a-e284-4a74-a144-badf78038684', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-09 23:21:35'),
(72, '4d7ed45a-2e91-4a10-a0ec-2bdb40b64e8a', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-09 23:21:48'),
(73, '471e4bd1-a95f-409f-be6b-924a170bd2a4', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-09 23:30:29'),
(74, '884ce9ac-d4ab-4b87-b275-2dbe0599aa5e', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-09 23:30:45'),
(75, '1063aae8-b7e8-4fcc-9b90-fe839780dbe1', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-09 23:41:07'),
(76, '36925016-73f0-48ff-b2f4-62c20cf432d9', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-10 00:08:17'),
(77, 'b7dcbd6f-1f90-48f7-a64a-78fb4cd5ccaa', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-10 00:20:15'),
(78, '5bc6018f-2ae6-446d-b500-e4ec595832f1', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-10 00:21:33'),
(79, '4381fe65-5853-4059-8314-6df4e4ef9da9', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-10 00:22:03'),
(80, '0dbc5214-1d23-4e12-a1ff-bb30c69bbb5d', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-10 00:26:56'),
(81, '63f73f0b-2323-4e67-a31a-258b936554b0', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-10 00:27:18'),
(82, 'a26424d4-f52d-49ab-9700-96080824c9a4', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-10 00:27:41'),
(83, '253989a8-5ed1-4c64-bcee-141a3c3ba075', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-10 00:27:43'),
(84, '5f953f0b-f843-4ef4-9389-d3ee1af7dd96', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-10 00:27:54'),
(85, 'f5d5dd73-ca0c-47db-b442-92eee74f9f69', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-10 00:27:59'),
(86, 'cdcf1b60-1ee3-4265-8aa7-6e292f005cb4', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-10 00:28:44'),
(87, '112a4e05-efa0-46ff-8dc5-0cc3331ffb4e', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-10 00:29:06'),
(88, '0918298b-9507-4f12-8f66-3291a35c15c7', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-10 00:37:31'),
(89, 'd2faa11c-58c4-444d-b192-f2cc4e6731f7', 'update', 2, 'appointments', NULL, '{\"approval_status\":\"\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-10 00:38:01'),
(90, 'ad408650-f67f-4763-b33f-56ffd329c176', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-10 00:53:14'),
(91, '49766fe0-fe39-44bd-9e46-ef917cb9b990', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-10 00:53:18'),
(92, '10586fde-3e27-4378-9468-4cbe3928f107', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-10 00:53:28'),
(93, '9d762732-d59b-458e-8708-0edd21eff18e', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-10 01:01:43'),
(94, 'b77c69b0-aebf-41b0-905c-460ccf2f63f0', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-10 01:08:24'),
(95, '8d36e6ad-193e-4c5a-b880-845e4893959f', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-10 01:08:48'),
(96, 'dd0dfe5d-cf54-4789-a507-454709fd26e6', 'update', 1, 'semesters', NULL, '{\"status\":1}', '{\"status\":2}', '{\"a_name\":\"Edit\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-19 20:54:34'),
(97, '85fd2b3f-e841-4e8d-88bc-c144226330e5', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-22 13:03:54'),
(98, '6d004539-ae10-421c-ab7f-7906f6312ad5', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-22 13:03:57'),
(99, '1b336786-f8dc-4ee5-b5ee-a5e0b5445411', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-22 13:12:17'),
(100, '0981f7fe-5998-4abd-9602-bffb2e5cc74a', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-22 13:13:10'),
(101, '550a8d25-6352-471f-8bae-6389222171b3', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-22 13:26:54'),
(102, 'fccc1feb-5943-49a2-98fd-6eb6c2db76ca', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-22 13:28:50'),
(103, '8f32dff4-062a-489f-b57b-d132ccbfdea1', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-22 13:30:13'),
(104, 'f4567104-4053-487d-a0b3-7ae4bd41b74f', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Rejected\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-22 13:30:21'),
(105, '6e5afece-ca0d-4772-b97b-1837af7919fb', 'create', 3, 'appointments', NULL, '[]', '{\"id\":3,\"lecturer_id\":2,\"subject_id\":6,\"semester_id\":5,\"date\":\"2025-06-22\",\"location\":\"fff\",\"status\":1,\"start_date\":\"2025-07-12\",\"end_date\":\"2026-05-30\",\"reference_no\":\"fff\",\"approval_no\":\"fff\",\"approval_name\":\"fff\",\"approval_post\":\"fff\"}', '{\"a_name\":\"Add\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/add\",\"slug\":1}', 1, NULL, '2025-06-22 13:32:03'),
(106, '4603f107-a5d7-4241-8b80-457cba80f860', 'update', 1, 'lecturers', NULL, '{\"name\":\"Nuraleeya Atasya\"}', '{\"name\":\"Nuraleeya Atasya Binti Aziz\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-22 13:58:37'),
(107, '0d1b3b70-7016-4ccb-96fa-bbcd420b13d0', 'update', 2, 'lecturers', NULL, '{\"name\":\"Afi Danial\",\"phone\":\"111\"}', '{\"name\":\"Afi Danial Bin Amierul\",\"phone\":\"01234567892\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/2\",\"slug\":1}', 1, NULL, '2025-06-22 13:59:11'),
(108, '463ca18b-d55c-4265-b88b-d2900968243f', 'update', 6, 'lecturers', NULL, '{\"name\":\"Afi Danial\"}', '{\"name\":\"Megat Afi Bin Ahamad\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/6\",\"slug\":1}', 1, NULL, '2025-06-22 13:59:49'),
(109, 'be66956b-538e-4783-9c7e-102f94d77eb3', 'update', 8, 'lecturers', NULL, '{\"name\":\"Afi Danial\",\"email\":\"afidanial03@gmail.com\"}', '{\"name\":\"Amirah Suhaila Binti Zambri\",\"email\":\"amirah03@gmail.com\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/8\",\"slug\":1}', 1, NULL, '2025-06-22 14:00:27'),
(110, 'ad5438d7-af7a-4b5b-a837-b3babb5fbf84', 'update', 6, 'lecturers', NULL, '{\"email\":\"afidanial03@gmail.com\"}', '{\"email\":\"megat@gmail.com\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/6\",\"slug\":1}', 1, NULL, '2025-06-22 14:00:42'),
(111, 'caaecac4-16e7-43b7-aea7-689942d155a3', 'create', 9, 'lecturers', NULL, '[]', '{\"id\":9,\"name\":\"Zaina Binti Zaiman\",\"staff_no\":\"25356\",\"email\":\"zaina@gmail.com\",\"phone\":\"0114793728\",\"status\":3}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2025-06-22 14:01:29'),
(112, '8d1772eb-2c92-45a7-b337-0061799e3329', 'update', 3, 'subjects', NULL, '{\"name\":\"IML512\",\"code\":\"USHU\"}', '{\"name\":\"Digital Literacy\",\"code\":\"IML512\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/edit\\/3\",\"slug\":1}', 1, NULL, '2025-06-22 14:02:06'),
(113, '33e9d18b-2862-4340-b28a-c3c5d8eeadfc', 'update', 1, 'subjects', NULL, '{\"name\":\"DATABASE MANAGEMENT\"}', '{\"name\":\"Database Management\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-22 14:02:29'),
(114, 'fd63ad70-8b80-4395-a5ab-ba6dea3a76e0', 'delete', 6, 'semesters', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/delete\\/6\",\"slug\":1}', 1, NULL, '2025-06-22 14:06:32'),
(115, 'abaa42ec-d60c-43ff-9856-e21c25b44814', 'delete', 4, 'semesters', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/delete\\/4\",\"slug\":1}', 1, NULL, '2025-06-22 14:06:35'),
(116, '1b9dbca7-3268-47fb-bedf-cd2db3ce79af', 'update', 1, 'semesters', NULL, '{\"status\":2}', '{\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-22 14:08:44'),
(117, '301a157c-6c77-4102-a433-098b20ee46e0', 'update', 2, 'semesters', NULL, '{\"name\":\"September - Febuari 2025\"}', '{\"name\":\"September - Febuari 2026\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/edit\\/2\",\"slug\":1}', 1, NULL, '2025-06-22 14:09:02'),
(118, '37b29af3-3a62-454e-a9fd-b04e23ac200c', 'update', 5, 'semesters', NULL, '{\"code\":\"20242\"}', '{\"code\":\"20244\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/edit\\/5\",\"slug\":1}', 1, NULL, '2025-06-22 14:09:18'),
(119, '0822a9a2-d3a0-4c1e-b88b-dd2a4be5d034', 'update', 2, 'semesters', NULL, '{\"name\":\"September - Febuari 2026\"}', '{\"name\":\"September - Februari 2026\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/edit\\/2\",\"slug\":1}', 1, NULL, '2025-06-22 14:09:52'),
(120, '0f0919ca-106e-4321-b284-dd5a827b8811', 'update', 5, 'semesters', NULL, '{\"name\":\"September - Febuari 2024\"}', '{\"name\":\"September - Februari 2024\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/edit\\/5\",\"slug\":1}', 1, NULL, '2025-06-22 14:09:56'),
(121, '80f6e092-a8ad-4429-84e6-0391cba5aa69', 'update', 5, 'semesters', NULL, '{\"name\":\"September - Februari 2024\"}', '{\"name\":\"September - Februari 2025\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/edit\\/5\",\"slug\":1}', 1, NULL, '2025-06-22 14:10:05'),
(122, '98453f30-bc2c-4d81-8c0f-d26667a72bc9', 'update', 5, 'semesters', NULL, '{\"code\":\"20244\",\"name\":\"September - Februari 2025\"}', '{\"code\":\"20234\",\"name\":\"September 2023 - Februari 2024\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/edit\\/5\",\"slug\":1}', 1, NULL, '2025-06-22 14:13:50'),
(123, 'a9ebae1d-c8f3-4874-afd0-7b4033e69663', 'update', 2, 'semesters', NULL, '{\"code\":\"20254\",\"name\":\"September - Februari 2026\",\"status\":2}', '{\"code\":\"20242\",\"name\":\"Mac 2024 - Ogos 2024\",\"status\":3}', '{\"a_name\":\"Edit\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/edit\\/2\",\"slug\":1}', 1, NULL, '2025-06-22 14:15:33'),
(124, '10654206-34c5-4651-9d65-77d80f047aed', 'create', 7, 'semesters', NULL, '[]', '{\"id\":7,\"code\":\"20244\",\"name\":\"September 2024 - Februari 2025\",\"status\":3}', '{\"a_name\":\"Add\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/add\",\"slug\":1}', 1, NULL, '2025-06-22 14:16:03'),
(125, 'ebe423be-498c-4f52-8b10-5bae93e88e35', 'update', 1, 'semesters', NULL, '{\"name\":\"Mac - Ogos 2025\"}', '{\"name\":\"Mac 2025 - Ogos 2025\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-22 14:16:10'),
(126, 'f40440d2-38d6-4e40-8fe7-fc88da7b83d0', 'create', 8, 'semesters', NULL, '[]', '{\"id\":8,\"code\":\"20254\",\"name\":\"September 2025 - Februari 2026\",\"status\":2}', '{\"a_name\":\"Add\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/add\",\"slug\":1}', 1, NULL, '2025-06-22 14:17:00'),
(127, '7d26ecf6-4293-4832-902c-afc432463ba2', 'update', 6, 'subjects', NULL, '{\"code\":\"ITC240\"}', '{\"code\":\"IMS458\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/edit\\/6\",\"slug\":1}', 1, NULL, '2025-06-22 14:18:29'),
(128, '1e316607-6fb7-4d68-87ab-7fd02edb594a', 'update', 4, 'subjects', NULL, '{\"code\":\"MGT101\"}', '{\"code\":\"MGT400\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/edit\\/4\",\"slug\":1}', 1, NULL, '2025-06-22 14:19:26'),
(129, '807f64bb-5ca2-4134-ad08-b0483eaf802e', 'update', 1, 'subjects', NULL, '{\"name\":\"Database Management\"}', '{\"name\":\"Advance Web Design\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-22 14:19:58'),
(130, '765c68c3-94f6-4460-aab3-8003d1e8117f', 'update', 5, 'subjects', NULL, '{\"name\":\"Computer Programming\",\"code\":\" CSC110\",\"credit_hour\":\"4.0\"}', '{\"name\":\"User Experience Design\",\"code\":\" IMS564\",\"credit_hour\":\"3.0\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/edit\\/5\",\"slug\":1}', 1, NULL, '2025-06-22 14:21:22'),
(131, '461c2840-a888-45d9-97f6-f8c0e57e3def', 'update', 1, 'subjects', NULL, '{\"credit_hour\":\"3.0\"}', '{\"credit_hour\":\"4.0\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-22 14:21:33'),
(132, '42f6019d-b09b-4906-9042-79554d295fb7', 'update', 4, 'subjects', NULL, '{\"credit_hour\":\"2.0\"}', '{\"credit_hour\":\"3.0\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/edit\\/4\",\"slug\":1}', 1, NULL, '2025-06-22 14:21:45'),
(133, '168bc5f7-3d40-4ef8-be15-8f21af58dc3a', 'update', 6, 'subjects', NULL, '{\"name\":\"Web Development\",\"code\":\"IMS458\",\"credit_hour\":\"3.0\"}', '{\"name\":\"English For Oral Reporting\",\"code\":\"LCC402\",\"credit_hour\":\"2.0\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/edit\\/6\",\"slug\":1}', 1, NULL, '2025-06-22 14:22:24'),
(134, '7fa3e304-6065-4347-8977-90373ec9d47e', 'update', 3, 'subjects', NULL, '{\"name\":\"Digital Literacy\",\"code\":\"IML512\"}', '{\"name\":\"Kursus Integriti dan Anti-Rasuah\",\"code\":\"HGD344\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/edit\\/3\",\"slug\":1}', 1, NULL, '2025-06-22 14:24:47'),
(135, 'f165454d-6ea8-4093-ac0b-eddfd0332c88', 'update', 6, 'lecturers', NULL, '{\"name\":\"Megat Afi Bin Ahamad\"}', '{\"name\":\"Megat Iskandar Bin Megat Ahamad\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/6\",\"slug\":1}', 1, NULL, '2025-06-22 14:25:57'),
(136, 'f63deb85-bf23-410f-9770-d925a6717df9', 'update', 2, 'appointments', NULL, '{\"lecturer_id\":2,\"location\":\"fgf\",\"approval_name\":\"mi\"}', '{\"lecturer_id\":6,\"location\":\"Fakulti Sains Maklumat\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/2\",\"slug\":1}', 1, NULL, '2025-06-22 14:29:06'),
(137, '2e24cb40-8fab-4cd0-9e40-1494b0e5c40b', 'update', 1, 'appointments', NULL, '{\"location\":\"BK 10\"}', '{\"location\":\"Fakult\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-22 14:29:20'),
(138, '7f1de7f6-9dd0-4605-8578-41ba653a1e38', 'update', 1, 'appointments', NULL, '{\"location\":\"Fakult\",\"approval_name\":\"AYU\"}', '{\"location\":\"Fakulti Sains Maklumat\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-22 14:29:32'),
(139, 'b76167e6-3128-4c6f-baf6-e682b1a51021', 'update', 1, 'appointments', NULL, '{\"reference_no\":\"2023217302\",\"approval_no\":\"123456\"}', '{\"reference_no\":\"UiTM-Exam\\/20252\\/001\",\"approval_no\":\"APPR-20252-001\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-22 14:34:56'),
(140, 'ef013c25-2c80-49f7-bab1-65893580b271', 'update', 1, 'appointments', NULL, '{\"reference_no\":\"UiTM-Exam\\/20252\\/001\"}', '{\"reference_no\":\"20252\\/001\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-22 14:37:45'),
(141, '80b84eb4-97e7-4bfa-9f2f-337630f39006', 'update', 1, 'appointments', NULL, '{\"reference_no\":\"20252\\/001\"}', '{\"reference_no\":\"20252\\/1\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-22 14:38:35'),
(142, '0cfac788-1f1d-48ca-b933-5b00fe6eef5c', 'update', 2, 'appointments', NULL, '{\"status\":1,\"reference_no\":\"45434343\",\"approval_no\":\"3534343\"}', '{\"status\":2,\"reference_no\":\"20242\\/2\",\"approval_no\":\"APPR-20252-002\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/2\",\"slug\":1}', 1, NULL, '2025-06-22 14:40:09'),
(143, '68891017-409c-4361-be7b-0ca967f044d1', 'update', 3, 'appointments', NULL, '{\"location\":\"fff\",\"status\":1,\"reference_no\":\"fff\",\"approval_no\":\"fff\",\"approval_name\":\"fff\",\"approval_post\":\"fff\"}', '{\"location\":\"Fakulti Sains Maklumat\",\"status\":2,\"reference_no\":\"20234\\/3\",\"approval_no\":\"APPR-20254-003\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/3\",\"slug\":1}', 1, NULL, '2025-06-22 14:41:18'),
(144, 'd756f6ba-66bd-4701-956b-8c386fcf2ddd', 'update', 3, 'appointments', NULL, '{\"approval_status\":\"\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-22 14:44:53'),
(145, '3242de91-1660-4b5f-9fe0-4230e84cc560', 'update', 1, 'appointments', NULL, '{\"approval_post\":\"Resource person\"}', '{\"approval_post\":\"Dekan\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-22 14:46:12'),
(146, 'bce6a505-44e6-458a-ad97-17dc06d05838', 'update', 2, 'appointments', NULL, '{\"approval_post\":\"Resource person\"}', '{\"approval_post\":\"Dekan\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/2\",\"slug\":1}', 1, NULL, '2025-06-22 14:46:26'),
(147, 'b39ab950-91b7-4d36-abdb-4144b1c69fbc', 'create', 4, 'appointments', NULL, '[]', '{\"id\":4,\"lecturer_id\":8,\"subject_id\":4,\"semester_id\":1,\"date\":\"2025-06-22\",\"location\":\"Fakulti Sains Maklumat\",\"status\":1,\"start_date\":\"2025-03-11\",\"end_date\":\"2025-08-11\",\"reference_no\":\"20244\\/4\",\"approval_no\":\"APPR-20244-004\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\"}', '{\"a_name\":\"Add\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/add\",\"slug\":1}', 1, NULL, '2025-06-22 14:49:27'),
(148, '369780c0-3ab7-4734-bb83-bc7ca92ea212', 'create', 5, 'appointments', NULL, '[]', '{\"id\":5,\"lecturer_id\":9,\"subject_id\":5,\"semester_id\":7,\"date\":\"2025-06-22\",\"location\":\"Fakulti Sains Maklumat\",\"status\":2,\"start_date\":\"2024-09-22\",\"end_date\":\"2025-02-22\",\"reference_no\":\"20252\\/5\",\"approval_no\":\"APPR-20252-005\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\"}', '{\"a_name\":\"Add\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/add\",\"slug\":1}', 1, NULL, '2025-06-22 14:51:17'),
(149, 'c3ec9bef-674a-40df-b4fe-cf5f623a2af3', 'update', 5, 'appointments', NULL, '{\"approval_status\":\"\"}', '{\"approval_status\":\"Approved\"}', '[]', 1, NULL, '2025-06-22 14:52:54'),
(150, 'e4d730d1-41b4-4398-801e-6f83ab175a7b', 'update', 1, 'appointments', NULL, '{\"approval_status\":\"Approved\"}', '{\"approval_status\":\"Rejected\"}', '[]', 1, NULL, '2025-06-24 14:40:45'),
(151, 'def1ad4c-b82a-40ca-95e0-c7e367366a3b', 'create', 2, 'users', NULL, '[]', '{\"id\":2,\"fullname\":\"Najuyah\",\"password\":\"$2y$10$uk40wFZhbp05FDK8oQPCT.GwrRS\\/POzGGySjJTQtr4TBLkj8SFvcS\",\"email\":\"najuyahcantik@gmail.com\",\"slug\":\"Najuyah\"}', '[]', 1, NULL, '2025-06-24 16:55:17'),
(152, 'b72b901e-410f-4ef9-ab8e-326f114f481b', 'update', 1, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-06-25 20:05:45'),
(153, 'd1e0ff8f-4862-413e-a568-7103f13aea4c', 'update', 1, 'appointments', NULL, '{\"approval_status\":1}', '{\"approval_status\":2}', '[]', 1, NULL, '2025-06-25 20:06:09'),
(154, '83fe174c-08f4-4087-9700-efaf1ff55a0f', 'update', 1, 'appointments', NULL, '{\"approval_status\":2}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-06-25 20:06:36'),
(155, '997c6b08-a9fa-4842-a2cb-9164a82edd9f', 'update', 1, 'appointments', NULL, '{\"approval_status\":1}', '{\"approval_status\":2}', '[]', 1, NULL, '2025-06-25 20:06:42'),
(156, '636b6e54-24c4-459d-af8f-7662f958e300', 'update', 1, 'appointments', NULL, '{\"approval_status\":2}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-06-25 20:07:23'),
(157, '6931853e-4384-44c0-b9bc-4cb6e349f51b', 'update', 1, 'appointments', NULL, '{\"approval_status\":1}', '{\"approval_status\":2}', '[]', 1, NULL, '2025-06-25 20:07:35'),
(158, '13a27f0a-5c4c-4b9e-9b31-45273bcea8d9', 'update', 1, 'appointments', NULL, '{\"approval_status\":2}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-06-25 23:59:53'),
(159, 'd9d2909a-053c-4181-aa9a-3ae79134e804', 'update', 1, 'appointments', NULL, '{\"approval_status\":1}', '{\"approval_status\":2}', '[]', 1, NULL, '2025-06-26 00:00:00'),
(160, 'e46dae8b-68f6-48e7-98d4-0ced831e9592', 'update', 1, 'appointments', NULL, '{\"approval_status\":2}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-06-26 00:00:10'),
(161, 'fa9ff804-e014-4536-b9d9-a6f9d67f26b5', 'update', 1, 'appointments', NULL, '{\"approval_status\":1}', '{\"approval_status\":2}', '[]', 1, NULL, '2025-06-26 00:00:16'),
(162, '4bba5db0-5367-4663-bd32-1c9133fc157f', 'update', 1, 'appointments', NULL, '{\"approval_status\":2}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-06-26 00:07:07'),
(163, 'a8804d3c-aa5a-4709-a972-4c8acb2c1ac2', 'update', 1, 'appointments', NULL, '{\"approval_status\":1}', '{\"approval_status\":2}', '[]', 1, NULL, '2025-06-26 00:08:05'),
(164, '56c31c20-afb5-402e-86a2-7456f06ee55c', 'update', 1, 'appointments', NULL, '{\"approval_status\":2}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-06-26 00:09:10'),
(165, 'a23b7970-c9e5-452e-8903-b220cce98910', 'update', 1, 'appointments', NULL, '{\"approval_status\":1}', '{\"approval_status\":2}', '[]', 1, NULL, '2025-06-26 00:09:12'),
(166, '8d5f34a8-bc0e-43df-af14-3528acd69027', 'update', 2, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-06-26 00:09:44'),
(167, '5e27568d-cf4b-4aa9-8bf9-44aa359208de', 'update', 2, 'appointments', NULL, '{\"approval_status\":1}', '{\"approval_status\":0}', '[]', 1, NULL, '2025-06-26 00:10:24'),
(168, 'f740e228-a73c-458f-a965-c448e2d152a8', 'update', 2, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-06-26 00:11:00'),
(169, '8348a964-9ff4-49df-a6c3-ff080a10824f', 'update', 4, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-06-26 00:31:01'),
(170, '553c0dec-bf56-442e-9adb-90b2cb7e5b87', 'update', 3, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":2}', '[]', 1, NULL, '2025-06-26 00:31:14'),
(171, '62dcfd6c-2605-4e7f-884e-93b0f6ee90a7', 'update', 1, 'lecturers', NULL, '{\"status\":1}', '{\"status\":2}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-26 21:22:24'),
(172, 'bdc0ff87-543d-489e-a425-a3dd1e9eac7f', 'create', 7, 'subjects', NULL, '[]', '{\"id\":7,\"name\":\"Advanced Database Management System\",\"code\":\"IMS560\",\"status\":1,\"credit_hour\":\"3.0\"}', '{\"a_name\":\"Add\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/add\",\"slug\":1}', 1, NULL, '2025-06-26 22:30:00'),
(173, '0fe2583a-996f-4fab-a69d-2f0bf9fcc9ca', 'create', 9, 'semesters', NULL, '[]', '{\"id\":9,\"code\":\"20244\",\"name\":\"September 2024 - Februari 2025\",\"status\":3}', '{\"a_name\":\"Add\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/add\",\"slug\":1}', 1, NULL, '2025-06-26 23:04:33'),
(174, '723d525a-6a8c-47ed-9027-24313afd9839', 'update', 6, 'lecturers', NULL, '{\"status\":2}', '{\"status\":3}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/6\",\"slug\":1}', 1, NULL, '2025-06-27 03:21:12'),
(175, '9eb7281f-01bb-4931-b9f9-6f1ad99f83a0', 'create', 10, 'lecturers', NULL, '[]', '{\"id\":10,\"name\":\"Nurul Zarith Sofiah Binti Zazali\",\"staff_no\":\"15553\",\"email\":\"zarith@gmail.com\",\"phone\":\"01110871454\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2025-06-30 21:12:09');
INSERT INTO `audit_logs` (`id`, `transaction`, `type`, `primary_key`, `source`, `parent_source`, `original`, `changed`, `meta`, `status`, `slug`, `created`) VALUES
(176, '11398f1d-16df-475d-af71-1a40add18172', 'create', 8, 'subjects', NULL, '[]', '{\"id\":8,\"name\":\"Advance Web Design\",\"code\":\"IMS566\",\"status\":1,\"credit_hour\":\"4.0\"}', '{\"a_name\":\"Add\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/add\",\"slug\":1}', 1, NULL, '2025-06-30 21:13:05'),
(177, '8599eff6-e363-47b2-8d7e-58105e495fbc', 'create', 10, 'semesters', NULL, '[]', '{\"id\":10,\"code\":\"20252\",\"name\":\"Mac 2025 - Ogos 2025\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/semesters\\/add\",\"slug\":1}', 1, NULL, '2025-06-30 21:13:45'),
(178, 'b9c8d4bf-962a-4a84-8990-95df0aa74f91', 'delete', 1, 'subjects', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/delete\\/1\",\"slug\":1}', 1, NULL, '2025-06-30 21:15:09'),
(179, 'de3a9d49-1310-4242-9323-fbf0e3925321', 'create', 6, 'appointments', NULL, '[]', '{\"id\":6,\"lecturer_id\":10,\"subject_id\":8,\"semester_id\":2,\"date\":\"2024-02-06\",\"location\":\"Fakulti Sains Maklumat\",\"status\":1,\"start_date\":\"2024-03-06\",\"end_date\":\"2024-08-06\",\"reference_no\":\"20242\\/6\",\"approval_no\":\"APPR-20252-006\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\"}', '{\"a_name\":\"Add\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/add\",\"slug\":1}', 1, NULL, '2025-06-30 21:18:29'),
(180, '4ffb2845-eb82-43b4-b673-7c6bc5f1242d', 'update', 6, 'appointments', NULL, '{\"subject_id\":8}', '{\"subject_id\":6}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/6\",\"slug\":1}', 1, NULL, '2025-06-30 21:19:28'),
(181, '548bfa4f-1bc0-4cdb-8a37-ad3f4ed64aa4', 'create', 7, 'appointments', NULL, '[]', '{\"id\":7,\"lecturer_id\":1,\"subject_id\":8,\"semester_id\":5,\"date\":\"2023-08-06\",\"location\":\"Fakulti Sains Maklumat\",\"status\":1,\"start_date\":\"2023-09-06\",\"end_date\":\"2024-02-06\",\"reference_no\":\"20242\\/1\",\"approval_no\":\"APPR-20252-001\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\"}', '{\"a_name\":\"Add\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/add\",\"slug\":1}', 1, NULL, '2025-06-30 21:24:19'),
(182, 'ee01bd89-49e1-4dfa-98cb-c7b85752c95a', 'update', 2, 'appointments', NULL, '{\"approval_no\":\"APPR-20252-002\"}', '{\"approval_no\":\"APPR-20252-001\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/2\",\"slug\":1}', 1, NULL, '2025-06-30 21:25:37'),
(183, 'a8a8665c-dd20-4a23-be50-c4e57392a32c', 'update', 2, 'appointments', NULL, '{\"reference_no\":\"20242\\/2\"}', '{\"reference_no\":\"20242\\/1\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/2\",\"slug\":1}', 1, NULL, '2025-06-30 21:25:47'),
(184, 'adb44825-30d5-479f-a5c9-9691cfad6606', 'update', 3, 'appointments', NULL, '{\"reference_no\":\"20234\\/3\",\"approval_no\":\"APPR-20254-003\"}', '{\"reference_no\":\"20234\\/2\",\"approval_no\":\"APPR-20254-002\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/3\",\"slug\":1}', 1, NULL, '2025-06-30 21:25:56'),
(185, 'fefea028-5f63-4938-ab39-bd8f36bc39d9', 'update', 4, 'appointments', NULL, '{\"reference_no\":\"20244\\/4\",\"approval_no\":\"APPR-20244-004\"}', '{\"reference_no\":\"20244\\/3\",\"approval_no\":\"APPR-20244-003\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/4\",\"slug\":1}', 1, NULL, '2025-06-30 21:26:10'),
(186, '7777d795-6c8f-47ce-8b69-c2b143ccf732', 'update', 5, 'appointments', NULL, '{\"reference_no\":\"20252\\/5\",\"approval_no\":\"APPR-20252-005\"}', '{\"reference_no\":\"20252\\/4\",\"approval_no\":\"APPR-20252-004\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/5\",\"slug\":1}', 1, NULL, '2025-06-30 21:26:22'),
(187, '3b0a934c-88e9-44da-8d19-032f910cf5f2', 'update', 6, 'appointments', NULL, '{\"reference_no\":\"20242\\/6\",\"approval_no\":\"APPR-20252-006\"}', '{\"reference_no\":\"20242\\/5\",\"approval_no\":\"APPR-20252-005\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/6\",\"slug\":1}', 1, NULL, '2025-06-30 21:26:33'),
(188, 'b4b4f528-a970-466f-926c-779d1b972dcd', 'update', 7, 'appointments', NULL, '{\"reference_no\":\"20242\\/1\",\"approval_no\":\"APPR-20252-001\"}', '{\"reference_no\":\"20242\\/6\",\"approval_no\":\"APPR-20252-006\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/7\",\"slug\":1}', 1, NULL, '2025-06-30 21:26:52'),
(189, 'f080de2d-4c55-4ab7-91bf-f52663309075', 'update', 4, 'appointments', NULL, '{\"start_date\":\"2025-03-11\"}', '{\"start_date\":\"2024-08-11\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/4\",\"slug\":1}', 1, NULL, '2025-06-30 21:53:30'),
(190, '282ec005-af10-4667-96b2-e28c54273271', 'create', 9, 'subjects', NULL, '[]', '{\"id\":9,\"name\":\"Digital Literacy\",\"code\":\"IML566\",\"status\":1,\"credit_hour\":\"3.0\"}', '{\"a_name\":\"Add\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/add\",\"slug\":1}', 1, NULL, '2025-06-30 22:02:16'),
(191, 'a0f11c21-485c-48ec-a902-fbc58f5a89ef', 'update', 7, 'subjects', NULL, '{\"status\":1}', '{\"status\":3}', '{\"a_name\":\"Edit\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/edit\\/7\",\"slug\":1}', 1, NULL, '2025-06-30 22:03:01'),
(192, '726cea53-6ab3-4481-bbf9-fbaccae27c8a', 'create', 11, 'lecturers', NULL, '[]', '{\"id\":11,\"name\":\"Afi Danial\",\"staff_no\":\"\",\"email\":\"\",\"phone\":\"\",\"status\":2}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2025-06-30 22:17:51'),
(193, '15b0cd4b-636d-4e2a-8c55-23a55b529200', 'delete', 11, 'lecturers', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/delete\\/11\",\"slug\":1}', 1, NULL, '2025-06-30 22:20:36'),
(194, 'a1e6811a-7494-4138-9fc5-eddc40e6593a', 'create', 12, 'lecturers', NULL, '[]', '{\"id\":12,\"name\":\"\",\"staff_no\":\"\",\"email\":\"\",\"phone\":\"\",\"status\":3}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2025-06-30 22:20:47'),
(195, '21c984fa-421b-4a76-a96a-b638a6c6cced', 'create', 13, 'lecturers', NULL, '[]', '{\"id\":13,\"name\":\"\",\"staff_no\":\"\",\"email\":\"\",\"phone\":\"\"}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2025-06-30 22:21:25'),
(196, 'a2a0c475-00ba-407f-be10-8767e6097eac', 'delete', 12, 'lecturers', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/delete\\/12\",\"slug\":1}', 1, NULL, '2025-06-30 22:21:31'),
(197, '96e1eba9-9834-4f86-8496-b1bcc0200c5b', 'delete', 13, 'lecturers', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/delete\\/13\",\"slug\":1}', 1, NULL, '2025-06-30 22:21:35'),
(198, 'f6797927-75de-4767-b1ed-5c9b05a8f053', 'update', 1, 'lecturers', NULL, '{\"staff_no\":\"13422\",\"status\":2}', '{\"staff_no\":\"1342211\",\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-30 22:24:17'),
(199, '1c1f02c0-34f9-41a1-9ca6-d109c5d612aa', 'create', 14, 'lecturers', NULL, '[]', '{\"id\":14,\"name\":\"\",\"staff_no\":\"\",\"email\":\"\",\"phone\":\"\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2025-06-30 22:26:57'),
(200, '2d3e5659-fb40-4e55-8433-245cd39c4cab', 'create', 15, 'lecturers', NULL, '[]', '{\"id\":15,\"name\":\"Hazlina Maskom\",\"staff_no\":\"13422\",\"email\":\"noreply@codethepixel.com\",\"phone\":\"01121711768\",\"status\":3}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2025-06-30 22:28:36'),
(201, '7da2e76f-a3ef-4e14-a0c4-cf70a25b7206', 'delete', 14, 'lecturers', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/delete\\/14\",\"slug\":1}', 1, NULL, '2025-06-30 22:28:42'),
(202, '0f531d0c-c614-4141-aa9d-acdf1d9983a7', 'update', 2, 'lecturers', NULL, '{\"status\":1}', '{\"status\":2}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/2\",\"slug\":1}', 1, NULL, '2025-06-30 22:30:43'),
(203, 'c6278ca7-1502-4359-bafc-4e3ad96526a9', 'update', 1, 'lecturers', NULL, '{\"staff_no\":\"1342211\"}', '{\"staff_no\":\"13422\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/1\",\"slug\":1}', 1, NULL, '2025-06-30 22:31:26'),
(204, '6cdd14bf-f122-421b-81a5-f4d51e7b36f1', 'update', 8, 'lecturers', NULL, '{\"staff_no\":\"13422\"}', '{\"staff_no\":\"13411\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/8\",\"slug\":1}', 1, NULL, '2025-06-30 22:31:39'),
(205, 'b2b01bba-fbc7-473b-95c6-e4a861925e7b', 'delete', 15, 'lecturers', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/delete\\/15\",\"slug\":1}', 1, NULL, '2025-06-30 22:31:55'),
(206, '084e73d0-6a11-4444-ab14-efb0a1edc436', 'create', 16, 'lecturers', NULL, '[]', '{\"id\":16,\"name\":\"NAZURAH ALEA BINTI MD NIZAM\",\"staff_no\":\"12345\",\"email\":\"nazurahalea@gmail.com\",\"phone\":\"011123449616\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2025-07-01 14:16:24'),
(207, '95c75b27-2c23-410c-91c1-9e819862812f', 'delete', 9, 'lecturers', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/delete\\/9\",\"slug\":1}', 1, NULL, '2025-07-01 14:16:38'),
(208, 'ba32111a-dcfe-4f65-a081-2409747836e4', 'update', 10, 'lecturers', NULL, '{\"status\":1}', '{\"status\":2}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/10\",\"slug\":1}', 1, NULL, '2025-07-01 14:16:55'),
(209, '008c6cfc-8593-42e1-ac76-c22a90a1b48a', 'update', 9, 'subjects', NULL, '{\"status\":1}', '{\"status\":3}', '{\"a_name\":\"Edit\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/edit\\/9\",\"slug\":1}', 1, NULL, '2025-07-01 14:18:40'),
(210, 'b3541103-4779-4d8c-96bb-cf33976d6c94', 'create', 8, 'appointments', NULL, '[]', '{\"id\":8,\"lecturer_id\":16,\"subject_id\":7,\"semester_id\":1,\"date\":\"2025-06-19\",\"location\":\"Fakulti Sains Maklumat\",\"status\":1,\"start_date\":\"2025-07-01\",\"end_date\":\"2026-07-01\",\"reference_no\":\"20252\\/006\",\"approval_no\":\"APPR-20252-006\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\"}', '{\"a_name\":\"Add\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/add\",\"slug\":1}', 1, NULL, '2025-07-01 14:23:37'),
(211, '585d270a-930c-4504-b2dd-9a2b6ac4acbf', 'update', 8, 'appointments', NULL, '{\"status\":1}', '{\"status\":2}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/8\",\"slug\":1}', 1, NULL, '2025-07-01 14:23:53'),
(212, '3697a394-76f9-42ed-9551-a45085821429', 'update', 8, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-01 14:26:06'),
(213, '957065c1-14da-48ab-bcfe-127816af024d', 'update', 7, 'subjects', NULL, '{\"credit_hour\":\"3.0\"}', '{\"credit_hour\":\"4.0\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/subjects\\/edit\\/7\",\"slug\":1}', 1, NULL, '2025-07-01 14:33:28'),
(214, 'fb1b46d4-dc2b-43b7-9704-d688ddd51823', 'update', 4, 'appointments', NULL, '{\"status\":1}', '{\"status\":2}', '[]', 1, NULL, '2025-07-11 18:10:15'),
(215, 'df10852b-8d20-4137-809f-2627b76e72d0', 'update', 2, 'appointments', NULL, '{\"status\":2}', '{\"status\":1}', '[]', 1, NULL, '2025-07-11 18:12:22'),
(216, '15089a31-f545-42b1-90cb-52c1d62c7522', 'update', 6, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":2}', '[]', 1, NULL, '2025-07-11 18:25:13'),
(217, '4dc19ddd-4b72-4518-9ed6-ac6b802fd262', 'update', 2, 'appointments', NULL, '{\"status\":1}', '{\"status\":2}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/2\",\"slug\":1}', 1, NULL, '2025-07-11 19:03:51'),
(218, '870a6c38-4756-4e45-8183-dfa8c9d7f0a0', 'update', 2, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-11 19:19:41'),
(219, 'ff95dc13-1515-496e-be2c-ec6f52cc0be6', 'update', 3, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-11 19:25:59'),
(220, 'bd33374f-a9c5-4cc3-90fc-a0813bfe2fd7', 'update', 2, 'appointments', NULL, '{\"status\":0}', '{\"status\":2}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/2\",\"slug\":1}', 1, NULL, '2025-07-11 19:27:09'),
(221, '2ff260df-0bd0-4bc6-adf1-ac00e439d0b2', 'update', 4, 'appointments', NULL, '{\"status\":0}', '{\"status\":2}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/4\",\"slug\":1}', 1, NULL, '2025-07-11 19:29:37'),
(222, '8701e631-6fe6-42b1-98ba-4468547de3d7', 'update', 2, 'appointments', NULL, '{\"status\":2}', '{\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/2\",\"slug\":1}', 1, NULL, '2025-07-11 19:32:19'),
(223, '230b9b95-c237-48e4-b448-b71b37222bb7', 'delete', 2, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/2\",\"slug\":1}', 1, NULL, '2025-07-11 19:33:25'),
(224, '888f580f-1e6e-4fbb-b032-9ad154d683b3', 'delete', 3, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/3\",\"slug\":1}', 1, NULL, '2025-07-11 19:33:28'),
(225, '8707efb0-0eec-4cf3-a4dc-730427ef8a60', 'delete', 4, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/4\",\"slug\":1}', 1, NULL, '2025-07-11 19:33:30'),
(226, '44f660e1-b6f4-440d-b510-bb8fd4ed902a', 'delete', 6, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/6\",\"slug\":1}', 1, NULL, '2025-07-11 19:33:33'),
(227, '8715b516-c93c-49ef-bb8c-37347e6cfa90', 'create', 9, 'appointments', NULL, '[]', '{\"id\":9,\"lecturer_id\":2,\"subject_id\":3,\"semester_id\":1,\"date\":\"2025-07-18\",\"location\":\"Fakulti Sains Maklumat\",\"status\":1,\"start_date\":\"2025-07-08\",\"end_date\":\"2025-07-09\",\"reference_no\":\"20242\\/1\",\"approval_no\":\"APPR-20252-001\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\"}', '{\"a_name\":\"Add\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/add\",\"slug\":1}', 1, NULL, '2025-07-11 19:35:59'),
(228, '92bbfcf1-da1d-4349-9353-4b27205bb378', 'update', 9, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-11 19:36:21'),
(229, '4247876a-a623-456a-bf2e-65e943008bde', 'update', 9, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-11 19:59:54'),
(230, 'a4df16b9-5787-487f-9627-f7269293dc3c', 'update', 9, 'appointments', NULL, '{\"lecturer_id\":2}', '{\"lecturer_id\":6}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/9\",\"slug\":1}', 1, NULL, '2025-07-18 00:05:14'),
(231, '9bb8d2db-0dc4-4f0d-be71-a767378fb9ce', 'delete', 2, 'lecturers', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/delete\\/2\",\"slug\":1}', 1, NULL, '2025-07-18 00:05:22'),
(232, 'eb6ed421-7f85-4261-afbf-192aa87a5459', 'update', 9, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 00:19:29'),
(233, '2ca05eff-e8cc-4904-a242-60c3bcd847c1', 'create', 10, 'appointments', NULL, '[]', '{\"id\":10,\"lecturer_id\":8,\"subject_id\":4,\"semester_id\":9,\"date\":\"2025-07-19\",\"location\":\"Fakulti Sains Maklumat\",\"status\":1,\"start_date\":\"2025-07-24\",\"end_date\":\"2025-07-30\",\"reference_no\":\"20244\\/2\",\"approval_no\":\"APPR-20244-002\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\"}', '{\"a_name\":\"Add\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/add\",\"slug\":1}', 1, NULL, '2025-07-18 00:21:56'),
(234, 'c5f66e2a-06f5-4d74-b4d1-97cf17e7cfe0', 'delete', 10, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/10\",\"slug\":1}', 1, NULL, '2025-07-18 00:25:27'),
(235, '584ec6fd-de48-4d41-82f7-ea286bd6d62a', 'delete', 9, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/9\",\"slug\":1}', 1, NULL, '2025-07-18 00:25:39'),
(236, '965bea2f-2f30-4127-9787-8f039e816f96', 'create', 11, 'appointments', NULL, '[]', '{\"id\":11,\"lecturer_id\":6,\"subject_id\":3,\"semester_id\":1,\"date\":\"2025-07-30\",\"location\":\"Fakulti Sains Maklumat\",\"status\":1,\"start_date\":\"2025-07-10\",\"end_date\":\"2025-07-23\",\"reference_no\":\"20242\\/1\",\"approval_no\":\"APPR-20252-001\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\"}', '{\"a_name\":\"Add\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/add\",\"slug\":1}', 1, NULL, '2025-07-18 00:27:39'),
(237, 'f1512dc6-96f5-4932-b084-afc786f5133e', 'update', 11, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 00:28:12'),
(238, '65fe5460-3297-40cc-b1a9-285d87402594', 'create', 12, 'appointments', NULL, '[]', '{\"id\":12,\"lecturer_id\":1,\"subject_id\":4,\"semester_id\":2,\"date\":\"2025-08-04\",\"location\":\"Fakulti Sains Maklumat\",\"status\":1,\"start_date\":\"2025-07-09\",\"end_date\":\"2025-07-19\",\"reference_no\":\"20242\\/2\",\"approval_no\":\"APPR-20244-002\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\"}', '{\"a_name\":\"Add\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/add\",\"slug\":1}', 1, NULL, '2025-07-18 00:42:26'),
(239, '38ebd03c-9e61-4ac5-9a02-0eebd71a191e', 'update', 12, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 00:42:38'),
(240, '22e881d8-d09a-4dfb-ae5d-4631fe7f6202', 'create', 13, 'appointments', NULL, '[]', '{\"id\":13,\"lecturer_id\":8,\"subject_id\":4,\"semester_id\":2,\"date\":\"2025-08-01\",\"location\":\"Fakulti Sains Maklumat\",\"status\":1,\"start_date\":\"2025-07-15\",\"end_date\":\"2025-07-26\",\"reference_no\":\"20244\\/3\",\"approval_no\":\"APPR-20244-003\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\"}', '{\"a_name\":\"Add\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/add\",\"slug\":1}', 1, NULL, '2025-07-18 00:58:41'),
(241, '335bcaf5-b1c5-4b65-a8e9-40df05a732bb', 'update', 13, 'appointments', NULL, '{\"location\":\"Fakulti Sains Maklumat\"}', '{\"location\":\"Fakulti Sains Maklumats\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/13\",\"slug\":1}', 1, NULL, '2025-07-18 01:01:29'),
(242, '8dac71bb-6f31-486c-a592-3e303e5be5cd', 'delete', 12, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/12\",\"slug\":1}', 1, NULL, '2025-07-18 01:08:11'),
(243, 'af08d870-d83c-4584-b9e1-830a5b7ee7d1', 'create', 14, 'appointments', NULL, '[]', '{\"id\":14,\"lecturer_id\":6,\"subject_id\":3,\"semester_id\":1,\"date\":\"2025-07-30\",\"location\":\"Fakulti Sains Maklumat\",\"status\":1,\"start_date\":\"2025-07-11\",\"end_date\":\"2025-07-14\",\"reference_no\":\"20242\\/1\",\"approval_no\":\"APPR-20252-001\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\"}', '{\"a_name\":\"Add\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/add\",\"slug\":1}', 1, NULL, '2025-07-18 01:17:06'),
(244, 'b57ba251-4f64-4ddc-9524-1d6391547856', 'update', 13, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 01:20:45'),
(245, 'f6b8c77d-4d3e-4ff8-84d0-7a62733844c0', 'delete', 13, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/13\",\"slug\":1}', 1, NULL, '2025-07-18 01:21:10'),
(246, 'd70f4bc6-e615-4e8d-a80e-6a1607b6347a', 'create', 15, 'appointments', NULL, '[]', '{\"id\":15,\"lecturer_id\":10,\"subject_id\":6,\"semester_id\":2,\"date\":\"2025-08-05\",\"location\":\"Fakulti Sains Maklumat\",\"status\":1,\"start_date\":\"2025-07-17\",\"end_date\":\"2025-08-07\",\"reference_no\":\"20242\\/2\",\"approval_no\":\"APPR-20244-002\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\"}', '{\"a_name\":\"Add\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/add\",\"slug\":1}', 1, NULL, '2025-07-18 01:21:49'),
(247, '40edbe07-20dc-49f0-805e-bb67dd75d7dc', 'update', 14, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 01:27:17'),
(248, '56364fc9-ac03-43a0-956d-da28368dcc43', 'delete', 14, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/14\",\"slug\":1}', 1, NULL, '2025-07-18 01:38:27'),
(249, '90584141-8c7f-4c56-a3a8-9306e3abc900', 'update', 15, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 01:38:50'),
(250, '411bce18-ef8d-4970-bedc-564f8422547a', 'delete', 15, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/15\",\"slug\":1}', 1, NULL, '2025-07-18 01:46:35'),
(251, '984befd1-3248-445b-8f7a-d950bc380805', 'create', 16, 'appointments', NULL, '[]', '{\"id\":16,\"lecturer_id\":8,\"subject_id\":7,\"semester_id\":8,\"date\":\"2025-08-06\",\"location\":\"Fakulti Sains Maklumat\",\"status\":1,\"start_date\":\"2025-07-20\",\"end_date\":\"2025-08-01\",\"reference_no\":\"20244\\/3\",\"approval_no\":\"APPR-20244-003\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\"}', '{\"a_name\":\"Add\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/add\",\"slug\":1}', 1, NULL, '2025-07-18 01:46:58'),
(252, 'be917df4-f84d-47ee-8cec-36184477d551', 'update', 16, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 01:47:09'),
(253, 'aa84cc34-c94d-4486-8a35-f3597589f19a', 'delete', 16, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/16\",\"slug\":1}', 1, NULL, '2025-07-18 01:52:03'),
(254, '051e0c41-89b6-4348-8512-6990bca91c88', 'create', 17, 'appointments', NULL, '[]', '{\"id\":17,\"lecturer_id\":6,\"subject_id\":3,\"semester_id\":1,\"date\":\"2025-08-01\",\"location\":\"Fakulti Sains Maklumat\",\"status\":1,\"start_date\":\"2025-07-11\",\"end_date\":\"2025-07-31\",\"reference_no\":\"20242\\/2\",\"approval_no\":\"APPR-20252-002\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\"}', '{\"a_name\":\"Add\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/add\",\"slug\":1}', 1, NULL, '2025-07-18 01:52:34'),
(255, '755273d5-0cd5-4331-a2db-6bbf3cc64ae0', 'update', 17, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 01:52:45'),
(256, '3814a145-2f30-48c4-8d7f-297d91dd86f3', 'update', 17, 'appointments', NULL, '{\"reference_no\":\"20242\\/2\"}', '{\"reference_no\":\"UiTM-Exam\\/20252\\/002\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/17\",\"slug\":1}', 1, NULL, '2025-07-18 01:54:45'),
(257, 'ece25c24-708e-44fa-9a3d-738c9b6a929d', 'update', 17, 'appointments', NULL, '{\"reference_no\":\"UiTM-Exam\\/20252\\/002\"}', '{\"reference_no\":\"Exam\\/20252\\/002\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/17\",\"slug\":1}', 1, NULL, '2025-07-18 01:55:53'),
(258, '2cc7a466-9251-446f-bc11-95ec2911b77f', 'create', 18, 'appointments', NULL, '[]', '{\"id\":18,\"lecturer_id\":6,\"subject_id\":4,\"semester_id\":2,\"date\":\"2025-08-07\",\"location\":\"Fakulti Sains Maklumat\",\"status\":1,\"start_date\":\"2025-07-05\",\"end_date\":\"2025-07-16\",\"reference_no\":\"20242\\/1\",\"approval_no\":\"APPR-20252-006\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\"}', '{\"a_name\":\"Add\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/add\",\"slug\":1}', 1, NULL, '2025-07-18 02:09:50'),
(259, '1154db6b-e3fa-4cfb-9b0e-f2c12e2cb6cb', 'update', 18, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 02:09:58'),
(260, '89f9cef5-25e9-43fb-b6f9-f4313f3ba4ab', 'delete', 17, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/17\",\"slug\":1}', 1, NULL, '2025-07-18 02:23:20'),
(261, 'd13a8171-a66a-4b80-bc12-167e43e122eb', 'delete', 18, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/18\",\"slug\":1}', 1, NULL, '2025-07-18 02:23:23'),
(262, 'b54313c1-eea4-4405-a149-fd621a87e300', 'create', 19, 'appointments', NULL, '[]', '{\"id\":19,\"lecturer_id\":1,\"subject_id\":3,\"semester_id\":1,\"date\":\"2025-10-06\",\"location\":\"Fakulti Sains Maklumat\",\"status\":1,\"start_date\":\"2025-07-04\",\"end_date\":\"2025-07-23\",\"reference_no\":\"20242\\/1\",\"approval_no\":\"APPR-20244-003\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\"}', '{\"a_name\":\"Add\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/add\",\"slug\":1}', 1, NULL, '2025-07-18 02:24:02'),
(263, 'f3fb0644-6443-4f6c-b7ba-1adff8c93d60', 'update', 19, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 02:25:14'),
(264, '9ac99f36-dff5-428b-92ec-78e06443fd6f', 'delete', 11, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/11\",\"slug\":1}', 1, NULL, '2025-07-18 02:32:22'),
(265, '2d2f3d44-d0dd-4c83-9193-28a09f21a1cf', 'create', 20, 'appointments', NULL, '[]', '{\"id\":20,\"lecturer_id\":1,\"subject_id\":4,\"semester_id\":2,\"date\":\"2025-08-09\",\"location\":\"Fakulti Sains Maklumats\",\"status\":0,\"start_date\":\"2025-07-01\",\"end_date\":\"2025-07-25\",\"reference_no\":\"20242\\/2\",\"approval_no\":\"APPR-20252-002\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-07-18 02:32:53'),
(266, '0db661f2-0491-4a37-855c-11b26483dd76', 'update', 20, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 02:33:06'),
(267, 'd0d8c12c-508e-4247-bcaf-2bfdb8936c06', 'delete', 19, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/19\",\"slug\":1}', 1, NULL, '2025-07-18 02:33:58'),
(268, '2ca6e734-6601-462f-8437-d9995c91e0ee', 'delete', 20, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/20\",\"slug\":1}', 1, NULL, '2025-07-18 02:34:00'),
(269, '0751b147-2b8a-4416-8092-1f71796ef0ec', 'create', 21, 'appointments', NULL, '[]', '{\"id\":21,\"lecturer_id\":1,\"subject_id\":3,\"semester_id\":1,\"date\":\"2025-07-18\",\"location\":\"Fakulti Sains Maklumats\",\"status\":0,\"start_date\":\"2025-07-09\",\"end_date\":\"2025-07-21\",\"reference_no\":\"20242\\/1\",\"approval_no\":\"APPR-20252-001\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-07-18 02:34:24'),
(270, 'f376e35d-2d4a-4985-a35d-7d36a90a96da', 'update', 21, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 02:34:30'),
(271, '732ba545-a382-4318-adab-5f3abaec4e2e', 'create', 22, 'appointments', NULL, '[]', '{\"id\":22,\"lecturer_id\":6,\"subject_id\":3,\"semester_id\":1,\"date\":\"2025-08-07\",\"location\":\"Fakulti Sains Maklumats\",\"status\":0,\"start_date\":\"2025-07-03\",\"end_date\":\"2025-07-29\",\"reference_no\":\"20242\\/2\",\"approval_no\":\"APPR-20252-002\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-07-18 02:57:09'),
(272, 'b6a021c4-d7db-4ab5-b133-bb46dd54e516', 'update', 22, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 02:59:59'),
(273, '45b649ba-c482-491b-9585-a4092ad85cca', 'update', 22, 'appointments', NULL, '{\"location\":\"Fakulti Sains Maklumats\",\"status\":0}', '{\"location\":\"Fakulti Sains Maklumat\",\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/22\",\"slug\":1}', 1, NULL, '2025-07-18 03:21:37'),
(274, '5b673f7a-e059-456a-83de-07985cd53c75', 'update', 21, 'appointments', NULL, '{\"location\":\"Fakulti Sains Maklumats\",\"status\":0}', '{\"location\":\"Fakulti Sains Maklumat\",\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/21\",\"slug\":1}', 1, NULL, '2025-07-18 03:21:46'),
(275, '6e341c27-a598-475a-8aa1-66b321430cb3', 'create', 23, 'appointments', NULL, '[]', '{\"id\":23,\"lecturer_id\":1,\"subject_id\":5,\"semester_id\":2,\"date\":\"2025-08-06\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-07-01\",\"end_date\":\"2025-07-23\",\"reference_no\":\"20242\\/2\",\"approval_no\":\"APPR-20252-002\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-07-18 03:22:23'),
(276, 'ce781023-88c6-4e88-9f90-a7c0bebadf9d', 'update', 23, 'appointments', NULL, '{\"status\":0}', '{\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/23\",\"slug\":1}', 1, NULL, '2025-07-18 03:22:28'),
(277, '4756f93e-9bb0-4060-8469-86caec3c0c62', 'update', 23, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 03:22:53'),
(278, 'ca1cb28f-8c12-4e2e-8b3b-9c7644eea227', 'delete', 23, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/23\",\"slug\":1}', 1, NULL, '2025-07-18 03:23:01'),
(279, 'cd64ae5e-731a-4048-9f3d-04428ed90d59', 'create', 24, 'appointments', NULL, '[]', '{\"id\":24,\"lecturer_id\":6,\"subject_id\":5,\"semester_id\":7,\"date\":\"2025-08-06\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-07-02\",\"end_date\":\"2025-07-28\",\"reference_no\":\"20242\\/1\",\"approval_no\":\"APPR-20252-005\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-07-18 03:23:20'),
(280, '8ce8966e-98b0-47a2-ad81-0056e00d0b24', 'update', 24, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 03:23:27'),
(281, 'db2476a9-1d89-4568-a6d2-ae2e22392e08', 'update', 24, 'appointments', NULL, '{\"location\":\"Fakulti Sains Maklumat\",\"status\":0}', '{\"location\":\"Fakulti Sains Maklumats\",\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/24\",\"slug\":1}', 1, NULL, '2025-07-18 03:34:56'),
(282, '8e1ce713-29c2-415e-b5cc-82b9de4b93d5', 'update', 24, 'appointments', NULL, '{\"location\":\"Fakulti Sains Maklumats\"}', '{\"location\":\"Fakulti Sains Maklumatskk\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/24\",\"slug\":1}', 1, NULL, '2025-07-18 03:35:06'),
(283, 'e8c30841-0633-4f2f-b9cf-dd752e2218d6', 'create', 25, 'appointments', NULL, '[]', '{\"id\":25,\"lecturer_id\":6,\"subject_id\":5,\"semester_id\":2,\"date\":\"2025-07-31\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-07-01\",\"end_date\":\"2025-07-28\",\"reference_no\":\"20242\\/2\",\"approval_no\":\"APPR-20252-002\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-07-18 03:45:32'),
(284, '9447923b-7e07-4419-bc87-b226e6f6116b', 'update', 25, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 03:46:20'),
(285, 'cc35a463-bb22-45fb-b7b1-fa592937494a', 'update', 25, 'appointments', NULL, '{\"location\":\"Fakulti Sains Maklumat\",\"status\":0}', '{\"location\":\"Fakulti Sains Maklumats\",\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/25\",\"slug\":1}', 1, NULL, '2025-07-18 03:46:33'),
(286, 'eed438a9-198a-47c8-93b4-cecb7769861c', 'delete', 24, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/24\",\"slug\":1}', 1, NULL, '2025-07-18 03:47:05'),
(287, '64a94bcb-444e-4012-b9e5-8595814602e5', 'delete', 25, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/25\",\"slug\":1}', 1, NULL, '2025-07-18 03:47:07'),
(288, '58fe61d1-7cee-4dc8-b7ac-e8abe7f601ef', 'create', 26, 'appointments', NULL, '[]', '{\"id\":26,\"lecturer_id\":6,\"subject_id\":5,\"semester_id\":5,\"date\":\"2025-08-05\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-07-11\",\"end_date\":\"2025-07-21\",\"reference_no\":\"20242\\/1\",\"approval_no\":\"APPR-20252-001\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-07-18 03:47:40'),
(289, '5fe97e0c-829a-4e9f-8be4-4374bf4a2e30', 'update', 26, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 03:47:53'),
(290, 'fb7ae312-85c8-4f65-9fd8-28e63d404a34', 'update', 26, 'appointments', NULL, '{\"location\":\"Fakulti Sains Maklumat\",\"status\":0}', '{\"location\":\"Fakulti Sains Maklumat gg\",\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/26\",\"slug\":1}', 1, NULL, '2025-07-18 03:48:13'),
(291, 'dc270307-8eb6-402b-95ed-4d356ffc4098', 'delete', 26, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/26\",\"slug\":1}', 1, NULL, '2025-07-18 20:54:31'),
(292, '9f7fb8fe-4713-4f14-b132-4dcaeff5ce58', 'delete', 22, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/22\",\"slug\":1}', 1, NULL, '2025-07-18 20:54:37'),
(293, '1376a3b4-ca7f-4c6d-8096-ea029ab74d46', 'delete', 21, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/21\",\"slug\":1}', 1, NULL, '2025-07-18 20:54:41'),
(294, 'f0015b71-cf50-45db-80ec-0ac1c43db579', 'create', 27, 'appointments', NULL, '[]', '{\"id\":27,\"lecturer_id\":6,\"subject_id\":4,\"semester_id\":2,\"date\":\"2025-08-06\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-06-30\",\"end_date\":\"2025-07-29\",\"reference_no\":\"20242\\/1\",\"approval_no\":\"APPR-20252-001\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-07-18 20:55:07'),
(295, '4b069b0a-f9f9-4b37-b1c1-1d975125e0e1', 'update', 27, 'appointments', NULL, '{\"status\":0}', '{\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/27\",\"slug\":1}', 1, NULL, '2025-07-18 20:55:17'),
(296, 'f98179b4-7cfd-4351-a5e1-09da8ec2a9f7', 'create', 28, 'appointments', NULL, '[]', '{\"id\":28,\"lecturer_id\":10,\"subject_id\":4,\"semester_id\":7,\"date\":\"2025-07-30\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-06-30\",\"end_date\":\"2025-07-21\",\"reference_no\":\"20242\\/2\",\"approval_no\":\"APPR-20252-002\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-07-18 21:01:39'),
(297, 'e080be55-d411-4030-b194-03897eab0b94', 'update', 28, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 21:01:52'),
(298, '96fef524-4cc0-4722-b9c5-e23697504b3e', 'delete', 27, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/27\",\"slug\":1}', 1, NULL, '2025-07-18 21:02:04'),
(299, 'bf0053da-ccc6-4a22-8386-141740b614d6', 'update', 28, 'appointments', NULL, '{\"date\":\"2025-07-30\",\"status\":0}', '{\"date\":\"2025-08-06\",\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/28\",\"slug\":1}', 1, NULL, '2025-07-18 21:02:23'),
(300, 'd601106b-d2da-4b8b-81a0-ab7c5341a3af', 'create', 29, 'appointments', NULL, '[]', '{\"id\":29,\"lecturer_id\":1,\"subject_id\":4,\"semester_id\":2,\"date\":\"2025-08-08\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-07-10\",\"end_date\":\"2025-07-22\",\"reference_no\":\"20242\\/1\",\"approval_no\":\"APPR-20252-001\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-07-18 21:29:32'),
(301, '5e8e5bc4-ea17-4862-bd35-b7dafcb551c3', 'update', 29, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 21:29:40'),
(302, '563349a4-37c0-44b2-8cde-e4037ab4377b', 'update', 29, 'appointments', NULL, '{\"date\":\"2025-08-08\",\"status\":0}', '{\"date\":\"2025-09-03\",\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/29\",\"slug\":1}', 1, NULL, '2025-07-18 21:29:52'),
(303, '3c5274c2-51f2-4faf-9b1d-910f02e33f64', 'delete', 29, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/29\",\"slug\":1}', 1, NULL, '2025-07-18 21:30:21'),
(304, 'f3680a47-216b-40ab-b109-eb3a48f2eec5', 'delete', 28, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/28\",\"slug\":1}', 1, NULL, '2025-07-18 22:07:45'),
(305, 'b14ec716-73a8-4a6e-958c-522d052151a3', 'create', 30, 'appointments', NULL, '[]', '{\"id\":30,\"lecturer_id\":8,\"subject_id\":4,\"semester_id\":5,\"date\":\"2025-08-08\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-07-02\",\"end_date\":\"2025-07-29\",\"reference_no\":\"20242\\/1\",\"approval_no\":\"APPR-20252-001\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-07-18 22:08:07'),
(306, '5675346d-dc98-4289-87a7-bb12ddee4604', 'update', 30, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 22:08:13'),
(307, '482c55c5-156b-43e4-bfd6-a9cdf9c615a3', 'update', 30, 'appointments', NULL, '{\"location\":\"Fakulti Sains Maklumat\",\"status\":0}', '{\"location\":\"Fakulti Sains Maklumatssss\",\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/30\",\"slug\":1}', 1, NULL, '2025-07-18 22:08:29'),
(308, '2d9c8f89-f525-4187-8abd-e40ef29daa26', 'create', 31, 'appointments', NULL, '[]', '{\"id\":31,\"lecturer_id\":6,\"subject_id\":4,\"semester_id\":5,\"date\":\"2025-08-08\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-07-05\",\"end_date\":\"2025-07-30\",\"reference_no\":\"20242\\/2\",\"approval_no\":\"APPR-20252-002\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-07-18 22:12:10'),
(309, 'e28db034-acd4-470c-b5db-24ed79428e7a', 'update', 31, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 22:12:25'),
(310, 'a08e9a61-d8d8-4382-b8c9-1c324a6dcac2', 'delete', 30, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/30\",\"slug\":1}', 1, NULL, '2025-07-18 22:13:52'),
(311, '1b850834-6e73-4235-90b4-cca179821be5', 'delete', 31, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/31\",\"slug\":1}', 1, NULL, '2025-07-18 22:13:55'),
(312, '687938da-5ac0-4e61-b5d6-4c88c5ac3edf', 'create', 32, 'appointments', NULL, '[]', '{\"id\":32,\"lecturer_id\":1,\"subject_id\":3,\"semester_id\":9,\"date\":\"2025-08-09\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-07-13\",\"end_date\":\"2025-08-06\",\"reference_no\":\"Exam\\/20252\\/001\",\"approval_no\":\"APPR-20252-001\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-07-18 22:14:55'),
(313, 'a9712b5c-b4be-41c6-bfb6-11880f00e54d', 'create', 33, 'appointments', NULL, '[]', '{\"id\":33,\"lecturer_id\":6,\"subject_id\":5,\"semester_id\":2,\"date\":\"2025-08-05\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-02-18\",\"end_date\":\"2025-07-27\",\"reference_no\":\"Exam\\/20252\\/002\",\"approval_no\":\"APPR-20252-002\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-07-18 22:15:45'),
(314, 'f50bc4ee-05aa-45d5-a315-c5ea48d81311', 'delete', 33, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/33\",\"slug\":1}', 1, NULL, '2025-07-18 22:16:46'),
(315, 'f923fda5-f874-4936-981f-9700fae4c649', 'delete', 32, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/32\",\"slug\":1}', 1, NULL, '2025-07-18 22:16:48'),
(316, '8b887d8d-1d8b-4e04-9c5c-231b39335c39', 'create', 34, 'appointments', NULL, '[]', '{\"id\":34,\"lecturer_id\":1,\"subject_id\":3,\"semester_id\":1,\"date\":\"2025-07-30\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-05-04\",\"end_date\":\"2025-07-23\",\"reference_no\":\"Exam\\/20252\\/001\",\"approval_no\":\"APPR-20252-001\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-07-18 22:17:44'),
(317, '5800a855-46b2-42dc-878c-2536962cc8ed', 'create', 35, 'appointments', NULL, '[]', '{\"id\":35,\"lecturer_id\":6,\"subject_id\":4,\"semester_id\":2,\"date\":\"2025-07-29\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2024-09-15\",\"end_date\":\"2025-01-13\",\"reference_no\":\"Exam\\/20242\\/002\",\"approval_no\":\"APPR-20242-002\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-07-18 22:18:36'),
(318, '8aff1926-65d1-40af-8927-4e00ba20cdc3', 'update', 35, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 22:18:44');
INSERT INTO `audit_logs` (`id`, `transaction`, `type`, `primary_key`, `source`, `parent_source`, `original`, `changed`, `meta`, `status`, `slug`, `created`) VALUES
(319, 'd12db511-f98d-40fa-83ce-d7ec0b3a5403', 'update', 35, 'appointments', NULL, '{\"location\":\"Fakulti Sains Maklumat\",\"status\":0}', '{\"location\":\"Fakulti Sains Maklumats\",\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/35\",\"slug\":1}', 1, NULL, '2025-07-18 22:20:28'),
(320, '2f9b7e65-e751-485e-b042-6d08f26c247e', 'update', 35, 'appointments', NULL, '{\"location\":\"Fakulti Sains Maklumats\"}', '{\"location\":\"Fakulti Sains Maklumat\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/35\",\"slug\":1}', 1, NULL, '2025-07-18 22:20:51'),
(321, '3c87f5ba-8d71-452b-b34f-4a3d792e2044', 'update', 34, 'appointments', NULL, '{\"status\":0}', '{\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/34\",\"slug\":1}', 1, NULL, '2025-07-18 22:22:04'),
(322, '12c2c9b9-45d9-44a9-b85b-25327327f8c5', 'delete', 34, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/34\",\"slug\":1}', 1, NULL, '2025-07-18 22:22:14'),
(323, 'bf5fbb3b-0a5b-4cee-9ad4-261bf2f3c09a', 'delete', 35, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/35\",\"slug\":1}', 1, NULL, '2025-07-18 22:22:17'),
(324, '7b1c535f-ffb7-4ae3-9209-5e5bce45dfda', 'create', 36, 'appointments', NULL, '[]', '{\"id\":36,\"lecturer_id\":8,\"subject_id\":4,\"semester_id\":5,\"date\":\"2025-08-07\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-07-05\",\"end_date\":\"2025-07-21\",\"reference_no\":\"20242\\/1\",\"approval_no\":\"APPR-20252-001\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-07-18 22:22:55'),
(325, 'b3bfe254-c0c6-4a5c-937b-d448f94da114', 'update', 36, 'appointments', NULL, '{\"status\":0}', '{\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/36\",\"slug\":1}', 1, NULL, '2025-07-18 22:23:01'),
(326, '14bbe6cc-ccc3-4743-bcd6-6a22d3c83485', 'delete', 36, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/36\",\"slug\":1}', 1, NULL, '2025-07-18 22:23:10'),
(327, '2729280b-5376-4945-b53d-d89fc16b5fc9', 'create', 37, 'appointments', NULL, '[]', '{\"id\":37,\"lecturer_id\":1,\"subject_id\":3,\"semester_id\":1,\"date\":\"2025-08-06\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-07-04\",\"end_date\":\"2025-07-10\",\"reference_no\":\"20242\\/1\",\"approval_no\":\"APPR-20252-001\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-07-18 22:30:46'),
(328, '45c825fe-61f6-4fed-8cc4-5cc99ff9cbd4', 'update', 37, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 22:30:58'),
(329, '5fe8eb8d-2d91-4583-b6f5-1d7c67fae89d', 'update', 37, 'appointments', NULL, '{\"status\":0}', '{\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/37\",\"slug\":1}', 1, NULL, '2025-07-18 22:31:09'),
(330, '6e5308dc-b91e-4a79-85a8-ba418a24c496', 'create', 38, 'appointments', NULL, '[]', '{\"id\":38,\"lecturer_id\":6,\"subject_id\":4,\"semester_id\":2,\"date\":\"2025-08-12\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-07-22\",\"end_date\":\"2025-07-29\",\"reference_no\":\"20242\\/2\",\"approval_no\":\"APPR-20252-002\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-07-18 22:32:17'),
(331, '39c7269a-045f-4e56-9041-db4915c8d6d4', 'update', 38, 'appointments', NULL, '{\"status\":0,\"end_date\":\"2025-07-29\"}', '{\"status\":1,\"end_date\":\"2025-08-05\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/38\",\"slug\":1}', 1, NULL, '2025-07-18 22:32:34'),
(332, '8f443981-a68b-479d-a31b-5ec5a826c907', 'update', 38, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-07-18 22:33:18'),
(333, '47b82303-eec9-41ec-b39f-4dee2c4bd203', 'create', 39, 'appointments', NULL, '[]', '{\"id\":39,\"lecturer_id\":8,\"subject_id\":6,\"semester_id\":5,\"date\":\"2025-08-15\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-07-23\",\"end_date\":\"2025-07-22\",\"reference_no\":\"20242\\/3\",\"approval_no\":\"APPR-20244-003\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-07-18 22:34:12'),
(334, '3dbe94d8-f072-4736-bec6-41bfc0b9a661', 'update', 8, 'lecturers', NULL, '{\"status\":1}', '{\"status\":3}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/8\",\"slug\":1}', 1, NULL, '2025-11-10 22:36:17'),
(335, '159614b3-22c2-4005-9c3d-def3aa7c6555', 'update', 2, 'users', NULL, '{\"fullname\":\"Najuyah\",\"email\":\"najuyahcantik@gmail.com\",\"status\":\"0\"}', '{\"fullname\":\"User\",\"email\":\"nazurah874@gmail.com\",\"status\":\"1\"}', '[]', 1, NULL, '2025-12-05 14:38:48'),
(336, '4a79f118-d885-4aee-9e1a-9e19c0a5bfff', 'update', 2, 'users', NULL, '{\"status\":\"1\"}', '{\"status\":0}', '[]', 1, NULL, '2025-12-05 14:46:52'),
(337, 'd0b3d3db-971a-4b10-b20d-ba31223f7294', 'update', 2, 'users', NULL, '{\"email\":\"nazurah874@gmail.com\"}', '{\"email\":\"noreply@codethepixel.com\"}', '[]', 1, NULL, '2025-12-05 14:47:06'),
(338, 'fea04798-e9ef-427c-8ae1-e20f9df9e7d1', 'create', 3, 'users', NULL, '[]', '{\"id\":3,\"fullname\":\"Nazurah\",\"password\":\"$2y$10$dxZr3R0Z6PUKeFNXdIM\\/2O6NZqJSVYOZAmcGDRbVVAhBKtOIGSNSW\",\"email\":\"nazurah874@gmail.com\",\"slug\":\"Nazurah\"}', '[]', 1, NULL, '2025-12-05 14:47:28'),
(339, '5693c33e-822c-4dd0-8605-b524cf1ffbff', 'update', 3, 'users', NULL, '{\"status\":\"0\"}', '{\"status\":1}', '[]', 1, NULL, '2025-12-05 14:48:17'),
(340, '5785f058-da0b-4988-9bed-893dfaf82ab8', 'update', 39, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-12-07 21:31:57'),
(341, '459a7e35-438d-4cf1-8f22-694adea653af', 'update', 39, 'appointments', NULL, '{\"status\":0}', '{\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/39\",\"slug\":1}', 1, NULL, '2025-12-07 21:32:15'),
(342, 'be48fa9d-9865-4f0c-af9c-324f6c33cc11', 'create', 40, 'appointments', NULL, '[]', '{\"id\":40,\"lecturer_id\":10,\"subject_id\":7,\"semester_id\":8,\"date\":\"2025-12-07\",\"location\":\"BK 10\",\"status\":0,\"start_date\":\"2025-12-16\",\"end_date\":\"2026-01-03\",\"reference_no\":\"45434343\",\"approval_no\":\"APPR-20252-005\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-12-07 22:25:12'),
(343, '6137330b-ccc0-43c5-862e-dfd60bb47e44', 'delete', 38, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/38\",\"slug\":1}', 1, NULL, '2025-12-07 23:16:16'),
(344, '1c0d1b0a-f9ac-45c0-88b8-24e950165eb6', 'update', 40, 'appointments', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2025-12-07 23:21:43'),
(345, 'c6235b35-9734-4758-8e89-7000a349ba7c', 'update', 40, 'appointments', NULL, '{\"status\":0}', '{\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/edit\\/40\",\"slug\":1}', 1, NULL, '2025-12-07 23:22:41'),
(346, 'e9b99902-d25c-480b-9854-247ee13494d0', 'create', 41, 'appointments', NULL, '[]', '{\"id\":41,\"lecturer_id\":6,\"subject_id\":5,\"semester_id\":1,\"date\":\"2026-01-08\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-12-06\",\"end_date\":\"2026-01-07\",\"reference_no\":\"20244\\/3\",\"approval_no\":\"APPR-20252-005\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-12-07 23:42:39'),
(347, 'a67beff2-033c-4361-98ae-726cb5ab7145', 'update', 41, 'appointments', NULL, '{\"status\":0,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2025-12-07 23:47:29'),
(348, '1e5ef795-d8ef-40f8-a0bf-63245519138e', 'delete', 41, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/41\",\"slug\":1}', 1, NULL, '2025-12-07 23:48:01'),
(349, '06bc825a-eb01-44dd-a498-9429d965edfc', 'delete', 40, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/40\",\"slug\":1}', 1, NULL, '2025-12-07 23:48:08'),
(350, '0cf30e47-e3a8-4472-81db-aa592df3ff03', 'create', 42, 'appointments', NULL, '[]', '{\"id\":42,\"lecturer_id\":10,\"subject_id\":6,\"semester_id\":7,\"date\":\"2025-12-07\",\"location\":\"Fakulti Sains Maklumats\",\"status\":0,\"start_date\":\"2025-12-10\",\"end_date\":\"2025-12-27\",\"reference_no\":\"20244\\/3\",\"approval_no\":\"APPR-20252-005\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-12-07 23:48:43'),
(351, '7c5361a7-ccc7-4a80-bb30-68ebf13bb338', 'update', 42, 'appointments', NULL, '{\"status\":0,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2025-12-07 23:48:57'),
(352, 'a2ea8b7b-954f-487f-9ee6-36fe02247cb1', 'delete', 37, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/37\",\"slug\":1}', 1, NULL, '2025-12-07 23:50:30'),
(353, '2f064802-64ce-424f-89ff-52f8438b9ba7', 'delete', 39, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/39\",\"slug\":1}', 1, NULL, '2025-12-07 23:50:33'),
(354, '1bacc8e9-7ae9-402d-972a-6bcee037c74e', 'create', 43, 'appointments', NULL, '[]', '{\"id\":43,\"lecturer_id\":8,\"subject_id\":7,\"semester_id\":2,\"date\":\"2026-02-19\",\"location\":\"BK 10\",\"status\":0,\"start_date\":\"2025-12-26\",\"end_date\":\"2026-01-20\",\"reference_no\":\"20244\\/3\",\"approval_no\":\"APPR-20252-005\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-12-07 23:51:25'),
(355, '61e756ef-7ee3-4234-a673-fd92b30dabcc', 'update', 43, 'appointments', NULL, '{\"status\":0,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2025-12-08 00:17:08'),
(356, '47f14abc-9866-427e-b460-2a322f833a62', 'update', 10, 'lecturers', NULL, '{\"email\":\"zarith@gmail.com\",\"status\":2}', '{\"email\":\"zrthsofiah09@gmail.com\",\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/10\",\"slug\":1}', 1, NULL, '2025-12-08 00:18:32'),
(357, '178d5d4c-7e5d-4fca-b344-c43e4c6b2df0', 'delete', 42, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/42\",\"slug\":1}', 1, NULL, '2025-12-08 00:19:08'),
(358, '23f62d17-596c-465e-b85c-5a151f6c55f7', 'create', 44, 'appointments', NULL, '[]', '{\"id\":44,\"lecturer_id\":10,\"subject_id\":4,\"semester_id\":1,\"date\":\"2025-12-30\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-12-12\",\"end_date\":\"2026-03-03\",\"reference_no\":\"45434343\",\"approval_no\":\"APPR-20252-002\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-12-08 00:19:34'),
(359, 'd7ea2af5-fcae-4cb2-8377-23475fb2f490', 'update', 44, 'appointments', NULL, '{\"status\":0,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2025-12-08 00:19:46'),
(360, '8184f572-8b60-47ae-9e97-dc2ff1c0e853', 'delete', 44, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/44\",\"slug\":1}', 1, NULL, '2025-12-08 00:21:27'),
(361, '2ed6b570-b583-4e55-b8d6-e57baef5000e', 'create', 45, 'appointments', NULL, '[]', '{\"id\":45,\"lecturer_id\":10,\"subject_id\":7,\"semester_id\":5,\"date\":\"2026-01-06\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-09-24\",\"end_date\":\"2025-12-30\",\"reference_no\":\"45434343\",\"approval_no\":\"APPR-20252-005\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-12-08 00:21:57'),
(362, 'a8635aaa-f392-4c4c-94b3-675ac1984b2f', 'update', 45, 'appointments', NULL, '{\"status\":0,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2025-12-08 00:22:23'),
(363, '669d137c-c4ca-4b85-8e9f-74b7ea9e3fd9', 'delete', 45, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/45\",\"slug\":1}', 1, NULL, '2025-12-08 00:26:50'),
(364, 'e3336ef6-9536-45e9-996c-b99512d7f161', 'create', 46, 'appointments', NULL, '[]', '{\"id\":46,\"lecturer_id\":10,\"subject_id\":8,\"semester_id\":1,\"date\":\"2026-02-06\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-12-08\",\"end_date\":\"2027-03-27\",\"reference_no\":\"20244\\/3\",\"approval_no\":\"APPR-20252-002\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-12-08 00:27:24'),
(365, '8e11a3f9-be48-436e-bbb7-98efaf81b718', 'update', 46, 'appointments', NULL, '{\"status\":0,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2025-12-08 00:27:31'),
(366, 'e3257d42-e270-49ad-8f90-aad07afe8135', 'update', 16, 'lecturers', NULL, '{\"email\":\"nazurahalea@gmail.com\"}', '{\"email\":\"aleanazurah72@gmail.com\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/lecturers\\/edit\\/16\",\"slug\":1}', 1, NULL, '2025-12-08 00:28:33'),
(367, '48d0a272-7f6d-43ef-a07c-995ebef1c3fc', 'create', 47, 'appointments', NULL, '[]', '{\"id\":47,\"lecturer_id\":16,\"subject_id\":3,\"semester_id\":1,\"date\":\"2025-12-08\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-12-08\",\"end_date\":\"2026-07-17\",\"reference_no\":\"20244\\/3\",\"approval_no\":\"APPR-20252-001\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-12-08 00:29:32'),
(368, '0b7e8845-b9d8-4de4-9945-86235cadaf8d', 'update', 47, 'appointments', NULL, '{\"status\":0,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2025-12-08 00:29:41'),
(369, '08278782-f04b-416d-9bc6-07d24e4a8afc', 'delete', 46, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/46\",\"slug\":1}', 1, NULL, '2025-12-08 00:35:24'),
(370, '24eca950-7ba5-4199-8bdb-378ae5c2ece7', 'delete', 47, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ims566resourcepersonsystem\\/appointments\\/delete\\/47\",\"slug\":1}', 1, NULL, '2025-12-08 00:35:27'),
(371, '1d4ad871-f3c2-4404-bd1b-149549770f72', 'create', 48, 'appointments', NULL, '[]', '{\"id\":48,\"lecturer_id\":10,\"subject_id\":3,\"semester_id\":2,\"date\":\"2026-01-08\",\"location\":\"Fakulti Sains Maklumats\",\"status\":0,\"start_date\":\"2025-12-08\",\"end_date\":\"2026-06-26\",\"reference_no\":\"20242\\/2\",\"approval_no\":\"APPR-20244-003\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-12-08 00:35:46'),
(372, 'e1883f09-9cab-4766-a96d-eac77a73391d', 'update', 48, 'appointments', NULL, '{\"status\":0,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2025-12-08 00:35:53'),
(373, 'b7a8fb51-c717-4218-a4ee-12cab4f8f1d1', 'create', 49, 'appointments', NULL, '[]', '{\"id\":49,\"lecturer_id\":16,\"subject_id\":6,\"semester_id\":1,\"date\":\"2025-12-10\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2025-12-08\",\"end_date\":\"2026-08-13\",\"reference_no\":\"20242\\/2\",\"approval_no\":\"APPR-20244-003\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2025-12-08 00:36:35'),
(374, '2231ae3c-aa6f-4b95-b00d-224cb6cde76d', 'update', 49, 'appointments', NULL, '{\"status\":0,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2025-12-08 00:36:44'),
(375, '50f280de-b117-48bf-9f73-6b931d2534da', 'update', 49, 'appointments', NULL, '{\"status\":1,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2026-01-06 13:11:34'),
(376, 'f038708f-7a8a-46f4-8c41-558aded46ed6', 'update', 49, 'appointments', NULL, '{\"status\":1,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2026-01-07 20:52:12'),
(377, '019e3c52-12bd-4ffe-bf53-f3436cdf20d3', 'create', 10, 'subjects', NULL, '[]', '{\"id\":10,\"name\":\"Values And Civilization II\",\"code\":\"CTU554\",\"status\":1,\"credit_hour\":\"2.0\"}', '{\"a_name\":\"Add\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/subjects\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 20:54:12'),
(378, 'dc66a916-b269-42b1-9560-4e976c500279', 'create', 11, 'subjects', NULL, '[]', '{\"id\":11,\"name\":\"Advanced Database Management System\",\"code\":\"IMS560\",\"status\":1,\"credit_hour\":\"3.0\"}', '{\"a_name\":\"Add\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/subjects\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 20:56:14'),
(379, '5cdac292-6447-4701-891e-9a263ef26ff2', 'create', 12, 'subjects', NULL, '[]', '{\"id\":12,\"name\":\"User Experience Design\",\"code\":\"IMS564\",\"status\":1,\"credit_hour\":\"3.0\"}', '{\"a_name\":\"Add\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/subjects\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 20:57:33'),
(380, 'addf616c-eb9c-467d-a193-eed1679534b2', 'delete', 1, 'lecturers', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/lecturers\\/delete\\/1\",\"slug\":1}', 1, NULL, '2026-01-07 20:57:43'),
(381, '5258489d-63a2-4041-a365-d8b66c384664', 'delete', 6, 'lecturers', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/lecturers\\/delete\\/6\",\"slug\":1}', 1, NULL, '2026-01-07 20:57:45'),
(382, '4465ee38-3ea1-4500-8f40-451af4b89b8b', 'delete', 8, 'lecturers', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/lecturers\\/delete\\/8\",\"slug\":1}', 1, NULL, '2026-01-07 20:57:46'),
(383, 'd2dc69b1-fcba-4764-98f5-f69365804db7', 'delete', 10, 'lecturers', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/lecturers\\/delete\\/10\",\"slug\":1}', 1, NULL, '2026-01-07 20:57:48'),
(384, '66cf463d-8318-4530-a56a-3a4963305511', 'delete', 16, 'lecturers', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/lecturers\\/delete\\/16\",\"slug\":1}', 1, NULL, '2026-01-07 20:58:35'),
(385, 'e014a0c4-5add-4225-87d1-e7d621f113df', 'create', 17, 'lecturers', NULL, '[]', '{\"id\":17,\"name\":\"Dr. Muhammad Asyraf Wahi Anuar\",\"staff_no\":\"239258\",\"email\":\"muham6853@uitm.edu.my\",\"phone\":\"0125295785\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 20:59:03'),
(386, '4e9e9814-b439-46e5-9218-af911a8235d0', 'create', 50, 'appointments', NULL, '[]', '{\"id\":50,\"lecturer_id\":17,\"subject_id\":11,\"semester_id\":1,\"date\":\"2026-01-07\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2026-01-07\",\"end_date\":\"2026-01-08\",\"reference_no\":\"20261\\/1\",\"approval_no\":\"UiTM-20261-001\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2026-01-07 21:01:29'),
(387, 'be2dfb1c-12ed-4f9f-b9d7-477008cf5a87', 'update', 50, 'appointments', NULL, '{\"status\":0,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2026-01-07 21:01:37'),
(388, 'bc17db10-5203-49f3-9d30-d196a268db21', 'update', 17, 'lecturers', NULL, '{\"status\":0}', '{\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/lecturers\\/edit\\/17\",\"slug\":1}', 1, NULL, '2026-01-07 21:04:47'),
(389, '9f027386-087a-4855-aebc-b722b0a35440', 'create', 11, 'semesters', NULL, '[]', '{\"id\":11,\"code\":\"20241\",\"name\":\"Mac 2024 - Ogos 2024\",\"status\":3}', '{\"a_name\":\"Add\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/semesters\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 21:51:10'),
(390, '99013079-e23d-427d-9244-8ffb1447f545', 'delete', 1, 'semesters', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/semesters\\/delete\\/1\",\"slug\":1}', 1, NULL, '2026-01-07 21:51:50'),
(391, 'dc3323e9-0553-4ca3-aa36-692f202f7f9e', 'delete', 2, 'semesters', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/semesters\\/delete\\/2\",\"slug\":1}', 1, NULL, '2026-01-07 21:51:53'),
(392, 'efa986e1-a73a-4c47-8eac-845248c7c3f1', 'delete', 5, 'semesters', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/semesters\\/delete\\/5\",\"slug\":1}', 1, NULL, '2026-01-07 21:51:54'),
(393, '5e0b6459-4db7-4f71-8470-476a42e6843c', 'delete', 7, 'semesters', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/semesters\\/delete\\/7\",\"slug\":1}', 1, NULL, '2026-01-07 21:51:56'),
(394, 'a95a9546-8b4d-428c-ac64-6cd87cb2639c', 'delete', 8, 'semesters', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/semesters\\/delete\\/8\",\"slug\":1}', 1, NULL, '2026-01-07 21:51:58'),
(395, 'f53dc74a-e9ea-40bf-878a-4c61761dee93', 'delete', 9, 'semesters', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/semesters\\/delete\\/9\",\"slug\":1}', 1, NULL, '2026-01-07 21:51:59'),
(396, '0b390914-8f71-4fd9-8e9a-16b67b01fea7', 'delete', 10, 'semesters', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/semesters\\/delete\\/10\",\"slug\":1}', 1, NULL, '2026-01-07 21:52:01'),
(397, 'da720d5c-fc66-4e48-ab7a-f65593c9ddd7', 'create', 12, 'semesters', NULL, '[]', '{\"id\":12,\"code\":\"20242\",\"name\":\"Oktober 2024 - Februari 2025\",\"status\":3}', '{\"a_name\":\"Add\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/semesters\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 21:52:37'),
(398, '0b27bcc6-c9ee-45f3-bf35-9b72d2c25e7e', 'create', 13, 'semesters', NULL, '[]', '{\"id\":13,\"code\":\"20251\",\"name\":\"Mac 2025 - Ogos 2025\",\"status\":3}', '{\"a_name\":\"Add\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/semesters\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 21:53:15'),
(399, '3e9c7a8b-8f04-4d78-a648-a07686f8d497', 'create', 14, 'semesters', NULL, '[]', '{\"id\":14,\"code\":\"20261\",\"name\":\"Mac 2026 - Ogos 2026\",\"status\":2}', '{\"a_name\":\"Add\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/semesters\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 21:55:34'),
(400, 'b60e735d-fcc9-4ad7-b773-3f7392d44e62', 'update', 14, 'semesters', NULL, '{\"name\":\"Mac 2026 - Ogos 2026\",\"status\":2}', '{\"name\":\"Oktober 2025 - Februari 2026\",\"status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/semesters\\/edit\\/14\",\"slug\":1}', 1, NULL, '2026-01-07 21:56:19'),
(401, 'ad19a54c-a5ed-4a14-9381-26b3388be0af', 'create', 15, 'semesters', NULL, '[]', '{\"id\":15,\"code\":\"20261\",\"name\":\"Mac 2026 - Ogos 2026\",\"status\":2}', '{\"a_name\":\"Add\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/semesters\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 21:56:48'),
(402, '63745d29-31c3-4a8e-a6ab-38f6277715fa', 'update', 14, 'semesters', NULL, '{\"code\":\"20261\"}', '{\"code\":\"20252\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/semesters\\/edit\\/14\",\"slug\":1}', 1, NULL, '2026-01-07 21:57:00'),
(403, '4cdf4589-9201-49e5-99d8-0e170e441b16', 'create', 16, 'semesters', NULL, '[]', '{\"id\":16,\"code\":\"20262\",\"name\":\"Oktober 2026 - Februari 2027\",\"status\":2}', '{\"a_name\":\"Add\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/semesters\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 21:57:19'),
(404, '75d87c1c-eb4b-4d4d-bdc0-309c47eb2f69', 'create', 13, 'subjects', NULL, '[]', '{\"id\":13,\"name\":\"Information System Project Management\",\"code\":\"IMS565\",\"status\":1,\"credit_hour\":\"3.0\"}', '{\"a_name\":\"Add\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/subjects\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 21:59:33'),
(405, '7be66eed-4803-4e1d-b472-dc80dc6847a0', 'create', 14, 'subjects', NULL, '[]', '{\"id\":14,\"name\":\"Advanced Web Design Development Content Management\",\"code\":\"IMS566\",\"status\":1,\"credit_hour\":\"4.0\"}', '{\"a_name\":\"Add\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/subjects\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 22:00:17'),
(406, '0a0e7459-4c98-463d-990b-37acd89319b3', 'create', 15, 'subjects', NULL, '[]', '{\"id\":15,\"name\":\"English For Professional Correspondence\",\"code\":\"LCC501\",\"status\":1,\"credit_hour\":\"2.0\"}', '{\"a_name\":\"Add\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/subjects\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 22:00:40'),
(407, '88280b95-9595-41b5-bd98-ba06f1f90b19', 'create', 16, 'subjects', NULL, '[]', '{\"id\":16,\"name\":\"Introductory Arabic (Level III)\",\"code\":\"TAC451\",\"status\":1,\"credit_hour\":\"2.0\"}', '{\"a_name\":\"Add\",\"c_name\":\"Subjects\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/subjects\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 22:01:07'),
(408, '6db800b3-ede4-4fcb-930e-ab357a4ca5ff', 'create', 18, 'lecturers', NULL, '[]', '{\"id\":18,\"name\":\"Dr. Mohd Ridwan Seman @ Kamarulzaman\",\"staff_no\":\"753159\",\"email\":\"mridwan@uitm.edu.my\",\"phone\":\"0379622140\",\"status\":2}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 22:02:01'),
(409, '6391134f-b1a1-49cb-b049-1c2a8e5b37db', 'create', 19, 'lecturers', NULL, '[]', '{\"id\":19,\"name\":\"Khairul Mizan Taib\",\"staff_no\":\"789123\",\"email\":\"khairulmizan@uitm.edu.my\",\"phone\":\"0379622209\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 22:03:07'),
(410, '91fe10d8-9f0e-44a7-8746-ce9d6d68aec2', 'create', 20, 'lecturers', NULL, '[]', '{\"id\":20,\"name\":\"Mohd Yusof Mustaffar\",\"staff_no\":\"497513\",\"email\":\"yusof769@uitm.edu.my\",\"phone\":\"0355442051\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 22:03:51'),
(411, '67ea0a7d-0793-4f74-bf42-ef20fabf1eb8', 'create', 21, 'lecturers', NULL, '[]', '{\"id\":21,\"name\":\"Yanty Rahayu Rambli\",\"staff_no\":\"679455\",\"email\":\"yanty@uitm.edu.my\",\"phone\":\"0379622328\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 22:04:42'),
(412, '8efc4789-4e3a-4b8b-a443-c8fab993d586', 'create', 22, 'lecturers', NULL, '[]', '{\"id\":22,\"name\":\"Haslinda Husaini\",\"staff_no\":\"998145\",\"email\":\"haslinda3145@uitm.edu.my\",\"phone\":\"0379622330\",\"status\":3}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 22:05:35'),
(413, 'ce76d1fa-8d34-4fa5-975c-069c8a28e2f2', 'create', 23, 'lecturers', NULL, '[]', '{\"id\":23,\"name\":\"Marlia Idrus\",\"staff_no\":\"265887\",\"email\":\"marlia945@uitm.edu.my\",\"phone\":\"0379622194\",\"status\":3}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 22:06:27'),
(414, '2e80c11f-516a-4bfe-8f13-ca7f1a9e117e', 'create', 24, 'lecturers', NULL, '[]', '{\"id\":24,\"name\":\"Dr. Abdurrahman bin Jalil\",\"staff_no\":\"754881\",\"email\":\"abdurrahman.jalil@uitm.edu.my\",\"phone\":\"0379622141\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 22:07:14'),
(415, '89b83656-38b4-4530-8326-33bbc88ba4de', 'create', 25, 'lecturers', NULL, '[]', '{\"id\":25,\"name\":\"Assoc. Professor Dr. Mohd Idzwan Mohd Salleh\",\"staff_no\":\"776321\",\"email\":\"idzwansalleh@uitm.edu.my\",\"phone\":\"0357488891\",\"status\":2}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 22:08:57'),
(416, '4504b306-8f41-4f09-959a-428ec61fbc34', 'create', 26, 'lecturers', NULL, '[]', '{\"id\":26,\"name\":\"Assoc. Professor Dr. Ahmad Zam Hariro Samsudin\",\"staff_no\":\"337846\",\"email\":\"ahmadzam@uitm.edu.my\",\"phone\":\"0379622126\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 22:09:48'),
(417, '8222b22a-b71d-41b0-8dd4-b980518ddeb7', 'create', 51, 'appointments', NULL, '[]', '{\"id\":51,\"lecturer_id\":17,\"subject_id\":11,\"semester_id\":15,\"date\":\"2026-01-07\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2026-01-07\",\"end_date\":\"2026-01-31\",\"reference_no\":\"20261\\/1\",\"approval_no\":\"UiTM-20261-001\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2026-01-07 22:10:34'),
(418, '8dba4c61-d483-4ef3-afed-f4e8e1296f5b', 'update', 51, 'appointments', NULL, '{\"status\":0,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2026-01-07 22:42:30'),
(419, 'bcf45278-4802-408f-90aa-2a395628f4a9', 'create', 52, 'appointments', NULL, '[]', '{\"id\":52,\"lecturer_id\":20,\"subject_id\":16,\"semester_id\":16,\"date\":\"2026-01-07\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2026-01-07\",\"end_date\":\"2026-01-08\",\"reference_no\":\"20261\\/2\",\"approval_no\":\"UiTM-20261-002\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2026-01-07 22:46:50'),
(420, 'b0470e28-7f96-4347-8911-52d1bf079eb6', 'update', 52, 'appointments', NULL, '{\"status\":0,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2026-01-07 22:47:13'),
(421, '61cff8e9-6d51-4df6-aab0-ee815bf84f2d', 'create', 53, 'appointments', NULL, '[]', '{\"id\":53,\"lecturer_id\":21,\"subject_id\":13,\"semester_id\":14,\"date\":\"2026-01-07\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2026-01-07\",\"end_date\":\"2026-01-17\",\"reference_no\":\"20261\\/3\",\"approval_no\":\"UiTM-20261-003\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2026-01-07 22:48:20'),
(422, '7c7c94d0-d7f0-4fce-915d-53e9ee30f1e6', 'update', 53, 'appointments', NULL, '{\"status\":0,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2026-01-07 23:38:18'),
(423, '2f009640-6a6f-4145-823c-6d1fa4e0094b', 'create', 27, 'lecturers', NULL, '[]', '{\"id\":27,\"name\":\"mierulx\",\"staff_no\":\"239258\",\"email\":\"\",\"phone\":\"0125295785\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/lecturers\\/add\",\"slug\":1}', 1, NULL, '2026-01-07 23:48:39'),
(424, 'aa6dd22e-ce01-4f4f-a79a-631958bfe1dd', 'delete', 27, 'lecturers', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Lecturers\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/lecturers\\/delete\\/27\",\"slug\":1}', 1, NULL, '2026-01-07 23:48:53'),
(425, '81f942d5-2059-4e34-bb64-ddc92b5dd5e4', 'create', 54, 'appointments', NULL, '[]', '{\"id\":54,\"lecturer_id\":24,\"subject_id\":13,\"semester_id\":15,\"date\":\"2026-01-08\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2026-03-01\",\"end_date\":\"2026-08-31\",\"reference_no\":\"20261\\/4\",\"approval_no\":\"UiTM-20261-004\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2026-01-08 11:11:45'),
(426, '77cd390d-5897-422d-bae3-a7aa90e3c8e9', 'update', 54, 'appointments', NULL, '{\"status\":0,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2026-01-08 11:13:04'),
(427, '18b97da9-1a67-4d41-a714-b8b8a441eaa2', 'delete', 52, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/appointments\\/delete\\/52\",\"slug\":1}', 1, NULL, '2026-01-08 17:39:55'),
(428, '6b64ff4f-1c03-497f-a717-0787636d5d2b', 'delete', 53, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/appointments\\/delete\\/53\",\"slug\":1}', 1, NULL, '2026-01-08 17:39:57'),
(429, '2096de9f-fb3f-428a-9cab-73dbd77047a4', 'delete', 54, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/appointments\\/delete\\/54\",\"slug\":1}', 1, NULL, '2026-01-08 17:39:59'),
(430, '7b48268b-5c2c-4f98-8a4d-48954d1afe97', 'update', 1, 'users', NULL, '{\"email\":\"admin@localhost.com\"}', '{\"email\":\"admin@atlas.com\"}', '[]', 1, NULL, '2026-01-08 17:45:02'),
(431, '677ab96e-4b0c-4f77-acb2-c36b93737dd2', 'create', 55, 'appointments', NULL, '[]', '{\"id\":55,\"lecturer_id\":24,\"subject_id\":15,\"semester_id\":15,\"date\":\"2026-01-09\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2026-01-09\",\"end_date\":\"2026-01-10\",\"reference_no\":\"20261\\/2\",\"approval_no\":\"UiTM-20261-002\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2026-01-09 01:41:13'),
(432, '4afa6fd9-5bd8-4a05-9484-c071addea6cf', 'update', 55, 'appointments', NULL, '{\"status\":0,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2026-01-09 01:41:37'),
(433, '1b71bd0e-e617-4ae9-9ba0-e582fac67168', 'delete', 55, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/appointments\\/delete\\/55\",\"slug\":1}', 1, NULL, '2026-01-09 01:42:37'),
(434, '2f3cc2c8-daaa-45ce-bf8c-c818781e814c', 'update', 51, 'appointments', NULL, '{\"reference_no\":\"20261\\/1\"}', '{\"reference_no\":\"UiTM-20261\\/1\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/appointments\\/edit\\/51\",\"slug\":1}', 1, NULL, '2026-01-09 11:28:02'),
(435, 'c498a1aa-f15c-4aaf-b7e7-99f89cf3f85f', 'update', 51, 'appointments', NULL, '{\"reference_no\":\"UiTM-20261\\/1\",\"approval_no\":\"UiTM-20261-001\"}', '{\"reference_no\":\"UiTM\\/FSM-20261\\/1\",\"approval_no\":\"001\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/appointments\\/edit\\/51\",\"slug\":1}', 1, NULL, '2026-01-09 11:28:24'),
(436, '49c0055b-2417-4d65-8e3c-310ea9966beb', 'create', 56, 'appointments', NULL, '[]', '{\"id\":56,\"lecturer_id\":26,\"subject_id\":11,\"semester_id\":15,\"date\":\"2026-01-09\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2026-01-09\",\"end_date\":\"2026-01-09\",\"reference_no\":\"UiTM-20261\\/2\",\"approval_no\":\"002\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2026-01-09 13:09:23'),
(437, '9b295529-6e2f-4f12-b58e-b576ebb14b9f', 'update', 56, 'appointments', NULL, '{\"status\":0,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2026-01-09 13:10:17'),
(438, '9ed43b82-aecd-41b0-8623-ba8c8e9add50', 'create', 57, 'appointments', NULL, '[]', '{\"id\":57,\"lecturer_id\":20,\"subject_id\":13,\"semester_id\":15,\"date\":\"2026-01-09\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2026-01-09\",\"end_date\":\"2026-01-09\",\"reference_no\":\"UiTM-20261\\/3\",\"approval_no\":\"003\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2026-01-09 13:12:23'),
(439, '7e031099-a6a6-4e65-8cb3-5992f79c4bc0', 'update', 57, 'appointments', NULL, '{\"status\":0,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2026-01-09 13:16:48'),
(440, '35d6935c-fd86-4fad-9a30-4875c9049b36', 'delete', 57, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/appointments\\/delete\\/57\",\"slug\":1}', 1, NULL, '2026-01-09 15:19:09'),
(441, '8f5bb201-d22b-45af-965e-4069a75b77a7', 'delete', 56, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/appointments\\/delete\\/56\",\"slug\":1}', 1, NULL, '2026-01-09 15:19:12'),
(442, 'c77b7327-b723-4cfe-b21e-0d05530b3388', 'update', 1, 'users', NULL, '{\"avatar\":\"\",\"avatar_dir\":\"\"}', '{\"avatar\":\"Untitled design (7).png\",\"avatar_dir\":\"webroot\\\\files\\\\Users\\\\avatar\\\\Administrator\"}', '[]', 1, NULL, '2026-01-09 17:51:43'),
(443, 'c50ea793-e018-47d4-8a19-4966ed8a5b51', 'update', 1, 'users', NULL, '{\"avatar\":\"Untitled design (7).png\",\"avatar_dir\":\"webroot\\\\files\\\\Users\\\\avatar\\\\Administrator\"}', '{\"avatar\":\"\",\"avatar_dir\":\"\"}', '[]', 1, NULL, '2026-01-09 17:51:55'),
(444, 'fd4a2e98-380e-4d3a-9d5b-881721f8f6c1', 'create', 58, 'appointments', NULL, '[]', '{\"id\":58,\"lecturer_id\":19,\"subject_id\":16,\"semester_id\":16,\"date\":\"2026-01-12\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2026-01-12\",\"end_date\":\"2026-01-12\",\"reference_no\":\"UiTM-20261\\/1\",\"approval_no\":\"2\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2026-01-12 12:48:51'),
(445, 'c7da7870-d727-4d5a-8ca6-753f67bee90e', 'update', 58, 'appointments', NULL, '{\"status\":0,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2026-01-12 12:49:21'),
(446, '3014486b-738a-4bd7-9cc8-5dadc4aed519', 'delete', 58, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/appointments\\/delete\\/58\",\"slug\":1}', 1, NULL, '2026-01-12 12:50:23'),
(447, '839a919e-e499-4690-a9f6-52d17710847f', 'create', 59, 'appointments', NULL, '[]', '{\"id\":59,\"lecturer_id\":21,\"subject_id\":12,\"semester_id\":15,\"date\":\"2026-01-12\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2026-01-12\",\"end_date\":\"2026-01-31\",\"reference_no\":\"UiTM-20261\\/2\",\"approval_no\":\"2\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2026-01-12 13:20:07'),
(448, 'b38bb983-5a4e-4a87-8c72-474da4d9b403', 'update', 59, 'appointments', NULL, '{\"status\":0,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2026-01-12 13:20:15'),
(449, 'ba461106-4c02-415b-a7ab-6b89f527f400', 'delete', 59, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/appointments\\/delete\\/59\",\"slug\":1}', 1, NULL, '2026-01-12 13:59:03'),
(450, '4e07f11d-f8ef-4159-98b8-1b8434b569c9', 'create', 60, 'appointments', NULL, '[]', '{\"id\":60,\"lecturer_id\":23,\"subject_id\":11,\"semester_id\":11,\"date\":\"2026-01-12\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2026-01-12\",\"end_date\":\"2026-01-12\",\"reference_no\":\"UiTM-20261\\/2\",\"approval_no\":\"2\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2026-01-12 14:31:59'),
(451, '04aa050c-f01d-438a-9ff0-a76782521034', 'delete', 60, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/appointments\\/delete\\/60\",\"slug\":1}', 1, NULL, '2026-01-12 14:32:05'),
(452, '0756d4a1-5008-4a0a-812c-9b54f3650338', 'create', 61, 'appointments', NULL, '[]', '{\"id\":61,\"lecturer_id\":19,\"subject_id\":16,\"semester_id\":15,\"date\":\"2026-01-12\",\"location\":\"Fakulti Sains Maklumat\",\"status\":0,\"start_date\":\"2026-03-12\",\"end_date\":\"2026-08-12\",\"reference_no\":\"UiTM-20261\\/2\",\"approval_no\":\"2\",\"approval_name\":\"Assoc. Prof. Dr Norhayati Hussin\",\"approval_post\":\"Dekan\",\"approval_status\":0}', '[]', 1, NULL, '2026-01-12 16:13:51'),
(453, 'cfc1a177-d9b8-4f1d-8c58-0fad2005f2d5', 'update', 61, 'appointments', NULL, '{\"status\":0,\"approval_status\":0}', '{\"status\":1,\"approval_status\":1}', '[]', 1, NULL, '2026-01-12 16:14:53'),
(454, 'f0c3cd09-ea65-4632-a071-6ff83c2c6a25', 'update', 61, 'appointments', NULL, '{\"subject_id\":16}', '{\"subject_id\":12}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/appointments\\/edit\\/61\",\"slug\":1}', 1, NULL, '2026-01-14 11:15:33'),
(455, '2f4571e6-8e58-431c-9d82-fac71d159b16', 'update', 61, 'appointments', NULL, '{\"subject_id\":12}', '{\"subject_id\":11}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/appointments\\/edit\\/61\",\"slug\":1}', 1, NULL, '2026-01-14 11:16:05'),
(456, '81c34971-b9e7-4126-b297-7873599a39f9', 'update', 15, 'semesters', NULL, '{\"status\":2}', '{\"status\":3}', '{\"a_name\":\"Edit\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/semesters\\/edit\\/15\",\"slug\":1}', 1, NULL, '2026-01-14 11:16:30'),
(457, 'b99f8864-008d-4d01-91e4-99fde88dd32e', 'update', 15, 'semesters', NULL, '{\"status\":3}', '{\"status\":2}', '{\"a_name\":\"Edit\",\"c_name\":\"Semesters\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/semesters\\/edit\\/15\",\"slug\":1}', 1, NULL, '2026-01-14 11:16:39'),
(458, 'fd6933bd-2baf-45eb-9205-889627148dae', 'delete', 61, 'appointments', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/projectatlas\\/appointments\\/delete\\/61\",\"slug\":1}', 1, NULL, '2026-01-30 12:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `ticket` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `note_admin` text,
  `ip` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `is_replied` tinyint(1) NOT NULL,
  `respond_date_time` datetime DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int NOT NULL,
  `category` varchar(100) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `category`, `question`, `answer`, `slug`, `status`, `created`, `modified`) VALUES
(1, 'General', 'General Questions 1', 'General Answer 1', 'General-Questions-1', 1, '2022-11-13 15:41:26', '2022-11-13 16:31:14'),
(2, 'Account', 'Account Questions 1', 'Account Answer 1', 'Account-Questions-1', 1, '2022-11-13 15:43:15', '2022-11-13 15:43:15'),
(3, 'Other', 'Other Questions 1', 'Other Answer 1', 'Other-Questions-1', 1, '2022-11-13 15:43:34', '2022-11-13 15:43:34'),
(6, 'General', 'General Questions 2', 'General Answer 2', 'General-Questions-2', 0, '2022-11-13 16:54:25', '2024-06-25 13:03:08');

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `id` int NOT NULL,
  `salutation` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `staff_no` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `status` int NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`id`, `salutation`, `name`, `staff_no`, `email`, `phone`, `status`, `created`, `modified`) VALUES
(17, '', 'Dr. Muhammad Asyraf Wahi Anuar', '239258', 'muham6853@uitm.edu.my', '0125295785', 1, '2026-01-07 20:59:03', '2026-01-07 21:04:47'),
(18, '', 'Dr. Mohd Ridwan Seman @ Kamarulzaman', '753159', 'mridwan@uitm.edu.my', '0379622140', 2, '2026-01-07 22:02:01', '2026-01-07 22:02:01'),
(19, '', 'Khairul Mizan Taib', '789123', 'khairulmizan@uitm.edu.my', '0379622209', 1, '2026-01-07 22:03:07', '2026-01-07 22:03:07'),
(20, '', 'Mohd Yusof Mustaffar', '497513', 'yusof769@uitm.edu.my', '0355442051', 1, '2026-01-07 22:03:51', '2026-01-07 22:03:51'),
(21, '', 'Yanty Rahayu Rambli', '679455', 'yanty@uitm.edu.my', '0379622328', 1, '2026-01-07 22:04:42', '2026-01-07 22:04:42'),
(22, '', 'Haslinda Husaini', '998145', 'haslinda3145@uitm.edu.my', '0379622330', 3, '2026-01-07 22:05:35', '2026-01-07 22:05:35'),
(23, '', 'Marlia Idrus', '265887', 'marlia945@uitm.edu.my', '0379622194', 3, '2026-01-07 22:06:27', '2026-01-07 22:06:27'),
(24, '', 'Dr. Abdurrahman bin Jalil', '754881', 'abdurrahman.jalil@uitm.edu.my', '0379622141', 1, '2026-01-07 22:07:14', '2026-01-07 22:07:14'),
(25, '', 'Assoc. Professor Dr. Mohd Idzwan Mohd Salleh', '776321', 'idzwansalleh@uitm.edu.my', '0357488891', 2, '2026-01-07 22:08:57', '2026-01-07 22:08:57'),
(26, '', 'Assoc. Professor Dr. Ahmad Zam Hariro Samsudin', '337846', 'ahmadzam@uitm.edu.my', '0379622126', 1, '2026-01-07 22:09:48', '2026-01-07 22:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int DEFAULT NULL,
  `lft` int DEFAULT NULL,
  `rght` int DEFAULT NULL,
  `level` int DEFAULT '0',
  `icon` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `auth` tinyint(1) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `divider_before` tinyint(1) DEFAULT '0',
  `parent_separator` tinyint(1) DEFAULT NULL,
  `division` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `lft`, `rght`, `level`, `icon`, `controller`, `action`, `target`, `name`, `url`, `prefix`, `auth`, `admin`, `active`, `disabled`, `divider_before`, `parent_separator`, `division`) VALUES
(1, NULL, 1, 2, 0, '<i class=\"fa-solid fa-code\"></i>', 'Dashboards', 'Index', NULL, 'Dashboard', '', '', 1, 0, 1, 0, 0, 0, 0),
(2, NULL, 3, 4, 0, '<i class=\"fa-regular fa-circle-question\"></i>', 'Faqs', '', NULL, 'FAQs', '', '', 0, 0, 1, 0, 0, NULL, 0),
(3, NULL, 5, 6, 0, '<i class=\"fa-regular fa-message\"></i>', 'Contacts', 'Add', NULL, 'Contact Us', '', '', 0, 0, 1, NULL, 0, NULL, 0),
(4, NULL, 7, 14, 0, '<i class=\"fa-solid fa-circle-info\"></i>', 'Pages', 'manual', NULL, 'Documentation', '', '', 0, 0, 1, 0, 0, 1, 0),
(5, NULL, 15, 16, 0, '', '', '', NULL, 'Administrator', '', NULL, 0, 1, 1, NULL, 0, NULL, 1),
(6, NULL, 17, 18, 0, '<i class=\"fa-solid fa-gear\"></i>', 'Settings', 'Update', 'recrud', 'System Configuration', '', 'Admin', 1, 1, 1, NULL, 0, 0, 0),
(7, NULL, 19, 20, 0, '<i class=\"fa-solid fa-users-viewfinder\"></i>', 'Users', 'Index', NULL, 'User Management', '', 'Admin', 1, 1, 1, NULL, 0, NULL, 0),
(8, NULL, 21, 22, 0, '<i class=\"fa-solid fa-bars\"></i>', 'Menus', 'Index', NULL, 'Menu Management', '', 'Admin', 1, 1, 1, NULL, 0, 0, 0),
(9, NULL, 23, 24, 0, '<i class=\"menu-icon fa-solid fa-list-check\"></i>', 'Todos', 'Index', NULL, 'Todo List', '', 'Admin', 1, 1, 1, NULL, 0, NULL, 0),
(10, NULL, 25, 26, 0, '<i class=\"fa-regular fa-message\"></i>', 'Contacts', 'Index', NULL, 'Contact', '', 'Admin', 1, 1, 1, NULL, 0, NULL, 0),
(11, NULL, 27, 28, 0, '<i class=\"menu-icon fa-solid fa-timeline\"></i>', 'AuditLogs', 'Index', NULL, 'Audit Trail', '', 'Admin', 1, 1, 1, NULL, 0, NULL, 0),
(12, NULL, 29, 30, 0, '<i class=\"menu-icon fa-regular fa-circle-question\"></i>', 'Faqs', 'Index', NULL, 'FAQs', '', 'Admin', 1, 1, 1, NULL, 0, 0, 0),
(13, 4, 10, 11, 1, '<i class=\"fa-solid fa-code\"></i>', '', '', NULL, 'Code The Pixel', 'https://codethepixel.com/', '', 0, 0, 1, NULL, 0, 0, 0),
(14, 4, 8, 9, 1, '<i class=\"fa-regular fa-file-code\"></i>', 'Pages', 'manual', NULL, 'User Manual', '', '', 0, 0, 1, NULL, 0, 0, 0),
(15, 4, 12, 13, 1, '<i class=\"fa-brands fa-github\"></i>', '', '', NULL, 'Re-CRUD Github', 'https://github.com/Asyraf-wa/recrud', '', 0, 0, 1, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20241029053753, 'Initial', '2025-05-18 07:00:10', '2025-05-18 07:00:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` int NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` int NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `code`, `name`, `status`, `created`, `modified`) VALUES
(11, '20241', 'Mac 2024 - Ogos 2024', 3, '2026-01-07 21:51:10', '2026-01-07 21:51:10'),
(12, '20242', 'Oktober 2024 - Februari 2025', 3, '2026-01-07 21:52:37', '2026-01-07 21:52:37'),
(13, '20251', 'Mac 2025 - Ogos 2025', 3, '2026-01-07 21:53:15', '2026-01-07 21:53:15'),
(14, '20252', 'Oktober 2025 - Februari 2026', 1, '2026-01-07 21:55:34', '2026-01-07 21:57:00'),
(15, '20261', 'Mac 2026 - Ogos 2026', 2, '2026-01-07 21:56:48', '2026-01-14 11:16:39'),
(16, '20262', 'Oktober 2026 - Februari 2027', 2, '2026-01-07 21:57:19', '2026-01-07 21:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` char(36) NOT NULL,
  `system_name` varchar(255) NOT NULL,
  `system_abbr` varchar(255) NOT NULL,
  `system_slogan` varchar(255) NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  `domain_name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notification_email` varchar(50) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_subject` varchar(255) NOT NULL,
  `meta_copyright` varchar(255) NOT NULL,
  `meta_desc` varchar(255) NOT NULL,
  `timezone` varchar(100) NOT NULL,
  `author` varchar(255) NOT NULL,
  `site_status` tinyint(1) NOT NULL,
  `user_reg` tinyint(1) NOT NULL,
  `config_2` tinyint(1) NOT NULL,
  `config_3` tinyint(1) NOT NULL,
  `version` varchar(255) NOT NULL,
  `private_key_from_recaptcha` varchar(255) DEFAULT NULL,
  `public_key_from_recaptcha` varchar(255) DEFAULT NULL,
  `banned_username` text,
  `telegram_bot_token` varchar(255) DEFAULT NULL,
  `telegram_chatid` varchar(255) DEFAULT NULL,
  `hcaptcha_sitekey` varchar(255) DEFAULT NULL,
  `hcaptcha_secretkey` varchar(255) DEFAULT NULL,
  `notification` text NOT NULL,
  `notification_status` tinyint(1) NOT NULL,
  `notification_date` date DEFAULT NULL,
  `ribbon_title` varchar(20) NOT NULL,
  `ribbon_link` varchar(255) NOT NULL,
  `ribbon_status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `system_name`, `system_abbr`, `system_slogan`, `organization_name`, `domain_name`, `email`, `notification_email`, `meta_title`, `meta_keyword`, `meta_subject`, `meta_copyright`, `meta_desc`, `timezone`, `author`, `site_status`, `user_reg`, `config_2`, `config_3`, `version`, `private_key_from_recaptcha`, `public_key_from_recaptcha`, `banned_username`, `telegram_bot_token`, `telegram_chatid`, `hcaptcha_sitekey`, `hcaptcha_secretkey`, `notification`, `notification_status`, `notification_date`, `ribbon_title`, `ribbon_link`, `ribbon_status`, `created`, `modified`) VALUES
('recrud', 'Academic Teaching & Letter Administration System', 'ATLAS', 'Code The Experiences', 'Code The Pixel Inc.', 'codethepixel.com', 'noreply@codethepixel.com', 'noreply@codethepixel.com', 'Re-CRUD', 'Re-CRUD, CakePHP, Learning, CRUD', 'Re-CRUD', 'Re-CRUD', 'Re-CRUD', 'Asia/Kuala_Lumpur', 'Re-CRUD', 0, 0, 0, 0, '1.1', '', '', NULL, '', '', '', '', '<p><strong>Server maintenance</strong> is scheduled to be executed on Jan 1, 2023, from 1.00 am to 4.00 am. An intermittent connection is expected during the server maintenance period.</p>', 0, '2022-11-07', 'Code The Pixel', 'https://codethepixel.com', 0, '2020-04-08 20:56:04', '2026-01-07 23:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  `status` int NOT NULL,
  `credit_hour` varchar(10) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `status`, `credit_hour`, `created`, `modified`) VALUES
(10, 'Values And Civilization II', 'CTU554', 1, '2.0', '2026-01-07 20:54:12', '2026-01-07 20:54:12'),
(11, 'Advanced Database Management System', 'IMS560', 1, '3.0', '2026-01-07 20:56:14', '2026-01-07 20:56:14'),
(12, 'User Experience Design', 'IMS564', 1, '3.0', '2026-01-07 20:57:33', '2026-01-07 20:57:33'),
(13, 'Information System Project Management', 'IMS565', 1, '3.0', '2026-01-07 21:59:33', '2026-01-07 21:59:33'),
(14, 'Advanced Web Design Development Content Management', 'IMS566', 1, '4.0', '2026-01-07 22:00:17', '2026-01-07 22:00:17'),
(15, 'English For Professional Correspondence', 'LCC501', 1, '2.0', '2026-01-07 22:00:40', '2026-01-07 22:00:40'),
(16, 'Introductory Arabic (Level III)', 'TAC451', 1, '2.0', '2026-01-07 22:01:07', '2026-01-07 22:01:07');

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `urgency` varchar(255) NOT NULL COMMENT 'high, medium, low',
  `task` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `note` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending' COMMENT 'Pending, In Progress, Completed, Canceled',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `user_id`, `urgency`, `task`, `description`, `note`, `status`, `created`, `modified`) VALUES
('24c93786-b8f6-460b-8665-3da198b892c0', '1', 'High', 'Add New Lecturer', '<p>Test</p>', '<p>Test</p>', 'Completed', '2026-01-12 09:15:53', '2026-01-12 09:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `user_group_id` int DEFAULT '3',
  `fullname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `avatar_dir` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `token_created_at` datetime NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '0' COMMENT '	is_active',
  `is_email_verified` int NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `created_by` int DEFAULT NULL COMMENT 'user_id',
  `modified_by` int DEFAULT NULL COMMENT 'user_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_group_id`, `fullname`, `password`, `email`, `avatar`, `avatar_dir`, `token`, `token_created_at`, `status`, `is_email_verified`, `last_login`, `ip_address`, `slug`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(1, 1, 'Administrator', '$2y$10$OrUKHzNQUic6dFqSuG9QBeDzMbbwPz1BQXKgBKPcQyMTNdv3Z22xe', 'admin@atlas.com', '', '', NULL, '2024-07-10 20:30:04', '1', 1, '2026-01-30 14:38:39', '::1', 'Administrator', '2022-10-26 02:54:19', '2026-01-09 17:51:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `description`, `created`, `modified`) VALUES
(1, 'Admin', 'Admninistrator', '2021-01-23 13:21:29', '2021-01-23 13:21:29'),
(2, 'Mod', 'Moderator', '2021-01-23 13:21:29', '2021-01-23 13:21:29'),
(3, 'User', 'Normal User', '2021-01-23 13:21:29', '2021-01-23 13:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `useragent` varchar(256) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  `status` int DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`id`, `user_id`, `action`, `useragent`, `os`, `ip`, `host`, `referrer`, `status`, `created`, `modified`) VALUES
(1, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-05-18 15:01:28', '2025-05-18 15:01:28'),
(2, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-05-18 19:02:58', '2025-05-18 19:02:58'),
(3, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-05-20 14:05:51', '2025-05-20 14:05:51'),
(4, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-05-27 10:11:45', '2025-05-27 10:11:45'),
(5, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-05-27 14:04:57', '2025-05-27 14:04:57'),
(6, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-06-09 21:07:05', '2025-06-09 21:07:05'),
(7, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-06-17 00:24:35', '2025-06-17 00:24:35'),
(8, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-06-17 01:33:47', '2025-06-17 01:33:47'),
(9, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-06-19 20:52:09', '2025-06-19 20:52:09'),
(10, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-06-22 12:50:31', '2025-06-22 12:50:31'),
(11, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-06-24 14:39:12', '2025-06-24 14:39:12'),
(12, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-06-24 15:40:45', '2025-06-24 15:40:45'),
(13, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-06-25 17:13:15', '2025-06-25 17:13:15'),
(14, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-06-25 22:11:46', '2025-06-25 22:11:46'),
(15, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-06-25 23:32:25', '2025-06-25 23:32:25'),
(16, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-06-26 21:05:32', '2025-06-26 21:05:32'),
(17, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-06-30 21:05:54', '2025-06-30 21:05:54'),
(18, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-07-01 14:05:06', '2025-07-01 14:05:06'),
(19, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-07-11 17:30:01', '2025-07-11 17:30:01'),
(20, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-07-18 00:04:25', '2025-07-18 00:04:25'),
(21, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-07-18 20:54:23', '2025-07-18 20:54:23'),
(22, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-07-18 21:28:58', '2025-07-18 21:28:58'),
(23, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-07-21 15:11:54', '2025-07-21 15:11:54'),
(24, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-11-10 11:18:08', '2025-11-10 11:18:08'),
(25, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-11-10 11:18:10', '2025-11-10 11:18:10'),
(26, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-11-10 14:32:08', '2025-11-10 14:32:08'),
(27, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-11-10 22:32:01', '2025-11-10 22:32:01'),
(28, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-11-18 21:19:22', '2025-11-18 21:19:22'),
(29, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-12-05 14:07:37', '2025-12-05 14:07:37'),
(30, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', 'http://localhost/ims566resourcepersonsystem/admin/users', 1, '2025-12-05 14:41:10', '2025-12-05 14:41:10'),
(31, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-12-05 14:42:02', '2025-12-05 14:42:02'),
(32, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', 'http://localhost/ims566resourcepersonsystem/admin/users/change-password/Najuyah', 1, '2025-12-05 14:42:21', '2025-12-05 14:42:21'),
(33, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-12-05 14:43:33', '2025-12-05 14:43:33'),
(34, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', 'http://localhost/ims566resourcepersonsystem/admin/users/profile/Najuyah', 1, '2025-12-05 14:44:49', '2025-12-05 14:44:49'),
(35, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-12-05 14:46:12', '2025-12-05 14:46:12'),
(36, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', 'http://localhost/ims566resourcepersonsystem/admin/users/update/Najuyah', 1, '2025-12-05 14:47:13', '2025-12-05 14:47:13'),
(37, 3, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-12-05 14:47:39', '2025-12-05 14:47:39'),
(38, 3, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-12-05 14:47:45', '2025-12-05 14:47:45'),
(39, 3, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', 'http://localhost/ims566resourcepersonsystem/', 1, '2025-12-05 14:47:59', '2025-12-05 14:47:59'),
(40, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-12-05 14:48:06', '2025-12-05 14:48:06'),
(41, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', 'http://localhost/ims566resourcepersonsystem/', 1, '2025-12-05 14:48:53', '2025-12-05 14:48:53'),
(42, 3, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-12-05 14:49:07', '2025-12-05 14:49:07'),
(43, 3, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', 'http://localhost/ims566resourcepersonsystem/lecturers', 1, '2025-12-05 14:58:52', '2025-12-05 14:58:52'),
(44, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-12-05 14:59:01', '2025-12-05 14:59:01'),
(45, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2025-12-07 21:02:57', '2025-12-07 21:02:57'),
(46, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-4VD1A6Q3', NULL, 1, '2026-01-06 13:03:59', '2026-01-06 13:03:59'),
(47, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-07 20:41:55', '2026-01-07 20:41:55'),
(48, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', 'http://localhost/projectatlas/dashboard', 1, '2026-01-07 23:54:06', '2026-01-07 23:54:06'),
(49, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-08 11:10:16', '2026-01-08 11:10:16'),
(50, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-08 11:41:57', '2026-01-08 11:41:57'),
(51, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-08 12:47:01', '2026-01-08 12:47:01'),
(52, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', 'http://localhost/projectatlas/appointments', 1, '2026-01-08 13:08:34', '2026-01-08 13:08:34'),
(53, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-08 13:10:34', '2026-01-08 13:10:34'),
(54, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-08 13:10:37', '2026-01-08 13:10:37'),
(55, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', 'http://localhost/projectatlas/dashboard', 1, '2026-01-08 13:10:40', '2026-01-08 13:10:40'),
(56, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-08 16:27:42', '2026-01-08 16:27:42'),
(57, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', 'http://localhost/projectatlas/dashboard', 1, '2026-01-08 17:45:18', '2026-01-08 17:45:18'),
(58, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-08 17:45:28', '2026-01-08 17:45:28'),
(59, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', 'http://localhost/projectatlas/appointments', 1, '2026-01-08 18:54:52', '2026-01-08 18:54:52'),
(60, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-09 00:26:59', '2026-01-09 00:26:59'),
(61, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', 'http://localhost/projectatlas/dashboard', 1, '2026-01-09 02:13:54', '2026-01-09 02:13:54'),
(62, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-09 11:23:34', '2026-01-09 11:23:34'),
(63, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', 'http://localhost/projectatlas/appointments', 1, '2026-01-09 13:43:23', '2026-01-09 13:43:23'),
(64, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-09 15:17:58', '2026-01-09 15:17:58'),
(65, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-12 08:46:33', '2026-01-12 08:46:33'),
(66, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-12 11:54:25', '2026-01-12 11:54:25'),
(67, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-12 11:54:25', '2026-01-12 11:54:25'),
(68, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', 'http://localhost/projectatlas/appointments', 1, '2026-01-12 12:43:00', '2026-01-12 12:43:00'),
(69, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-12 12:44:37', '2026-01-12 12:44:37'),
(70, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', 'http://localhost/projectatlas/dashboard', 1, '2026-01-12 13:58:32', '2026-01-12 13:58:32'),
(71, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-12 13:58:47', '2026-01-12 13:58:47'),
(72, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', 'http://localhost/projectatlas/dashboard', 1, '2026-01-12 14:06:25', '2026-01-12 14:06:25'),
(73, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-12 14:07:00', '2026-01-12 14:07:00'),
(74, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', 'http://localhost/projectatlas/dashboard', 1, '2026-01-12 14:12:47', '2026-01-12 14:12:47'),
(75, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-12 14:24:01', '2026-01-12 14:24:01'),
(76, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', 'http://localhost/projectatlas/dashboard', 1, '2026-01-12 16:08:45', '2026-01-12 16:08:45'),
(77, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-12 16:09:15', '2026-01-12 16:09:15'),
(78, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-14 11:01:45', '2026-01-14 11:01:45'),
(79, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-15 11:11:55', '2026-01-15 11:11:55'),
(80, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-18 16:24:39', '2026-01-18 16:24:39'),
(81, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-21 18:58:14', '2026-01-21 18:58:14'),
(82, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', 'http://localhost/projectatlas/', 1, '2026-01-21 18:59:46', '2026-01-21 18:59:46'),
(83, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-21 19:05:28', '2026-01-21 19:05:28'),
(84, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-21 19:22:12', '2026-01-21 19:22:12'),
(85, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-30 01:11:18', '2026-01-30 01:11:18'),
(86, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-30 10:19:38', '2026-01-30 10:19:38'),
(87, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', 'http://localhost/projectatlas/dashboard', 1, '2026-01-30 11:36:58', '2026-01-30 11:36:58'),
(88, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-30 12:03:47', '2026-01-30 12:03:47'),
(89, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'LAPTOP-BOV51M1M', NULL, 1, '2026-01-30 14:38:39', '2026-01-30 14:38:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction` (`transaction`),
  ADD KEY `type` (`type`),
  ADD KEY `primary_key` (`primary_key`),
  ADD KEY `source` (`source`),
  ADD KEY `parent_source` (`parent_source`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lft` (`lft`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=459;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lecturers`
--
ALTER TABLE `lecturers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
