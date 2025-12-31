-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 30-Dez-2025 às 16:51
-- Versão do servidor: 10.11.13-MariaDB-0ubuntu0.24.04.1
-- versão do PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `babestand`
--
DROP DATABASE IF EXISTS `babestand`;
CREATE DATABASE IF NOT EXISTS `babestand` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `babestand`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
CREATE TABLE `activity_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `entity_type` varchar(50) DEFAULT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `old_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`old_values`)),
  `new_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`new_values`)),
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `activity_logs`
--

INSERT DELAYED IGNORE INTO `activity_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `old_values`, `new_values`, `ip_address`, `user_agent`, `created_at`) VALUES
(1, NULL, 'register', 'user', 5, NULL, NULL, '10.0.0.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 16:03:29'),
(2, NULL, 'register', 'user', 6, NULL, NULL, '10.0.0.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 16:14:24'),
(3, NULL, 'register', 'user', 7, NULL, NULL, '10.0.0.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 16:21:05'),
(4, NULL, 'email_verified', 'user', 7, NULL, NULL, '10.0.0.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 16:21:18'),
(5, NULL, 'login', 'user', 7, NULL, NULL, '10.0.0.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 16:21:48'),
(11, 8, 'register', 'user', 8, NULL, NULL, '10.0.0.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 16:25:26'),
(12, 8, 'email_verified', 'user', 8, NULL, NULL, '10.0.0.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 16:25:39'),
(13, 8, 'login', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 19:34:17'),
(14, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 19:35:38'),
(15, 8, 'login', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 19:36:03'),
(16, 8, 'login_remember_me', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 20:42:12'),
(17, 10, 'login', 'user', 10, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 21:40:35'),
(18, 10, 'email_verified', 'user', 10, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 21:51:37'),
(19, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 22:18:23'),
(20, 8, 'login', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 22:19:35'),
(21, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 22:20:23'),
(22, 8, 'login', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 22:20:55'),
(23, 10, 'login', 'user', 10, NULL, NULL, '188.81.17.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-17 23:50:59'),
(24, 10, 'logout', 'user', 10, NULL, NULL, '188.81.17.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-18 00:00:36'),
(25, 10, 'login', 'user', 10, NULL, NULL, '188.81.17.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-18 00:02:53'),
(26, 10, 'logout', 'user', 10, NULL, NULL, '188.81.17.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-18 00:05:30'),
(27, 8, 'login_remember_me', 'user', 8, NULL, NULL, '89.115.236.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-18 16:08:00'),
(28, 8, 'login_remember_me', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 10:19:44'),
(29, 10, 'login', 'user', 10, NULL, NULL, '89.115.236.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-19 10:38:36'),
(30, 10, 'logout', 'user', 10, NULL, NULL, '89.115.236.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-19 10:39:13'),
(31, 10, 'login', 'user', 10, NULL, NULL, '89.115.236.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-19 10:39:46'),
(32, 8, 'login_remember_me', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 11:29:42'),
(33, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 11:50:33'),
(34, 8, 'login', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 11:50:52'),
(35, 10, 'login', 'user', 10, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 12:59:11'),
(36, 10, 'login', 'user', 10, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 13:00:03'),
(37, 8, 'login_remember_me', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 14:59:46'),
(38, 10, 'login', 'user', 10, NULL, NULL, '87.196.80.215', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '2025-12-20 00:51:37'),
(39, 8, 'login_remember_me', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-20 15:01:29'),
(40, 8, 'login', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-20 15:40:21'),
(41, 8, 'login_remember_me', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-20 18:52:30'),
(42, 8, 'login_remember_me', 'user', 8, NULL, NULL, '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-20 20:35:25'),
(43, 8, 'login', 'user', 8, NULL, NULL, '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-20 20:38:35'),
(44, 8, 'login', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 12:10:04'),
(45, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 15:00:02'),
(46, 8, 'login', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 15:00:22'),
(47, 8, 'login', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 20:57:23'),
(48, 8, 'login', 'user', 8, NULL, NULL, '87.196.80.49', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', '2025-12-22 21:55:52'),
(49, 8, 'login_remember_me', 'user', 8, NULL, NULL, '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 10:58:59'),
(50, 8, 'login_remember_me', 'user', 8, NULL, NULL, '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 10:58:59'),
(51, 8, 'login', 'user', 8, NULL, NULL, '2001:8a0:f759:f200:57f:13f9:339e:d496', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', '2025-12-23 13:04:19'),
(52, 8, 'login', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 22:31:59'),
(53, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 22:42:37'),
(54, 8, 'login', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 22:43:25'),
(55, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 22:43:43'),
(56, 8, 'login', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 22:59:17'),
(57, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 22:59:21'),
(58, 8, 'login', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 22:59:41'),
(59, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 22:59:52'),
(60, 8, 'login', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:00:28'),
(61, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:38:12'),
(62, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:43:10'),
(63, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:46:26'),
(64, 8, 'login_totp', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:46:46'),
(65, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:46:54'),
(66, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:47:57'),
(67, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:53:46'),
(68, 8, 'login_totp', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:54:13'),
(69, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:54:23'),
(70, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:58:52'),
(71, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:02:49'),
(72, 8, 'login_totp', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:03:08'),
(73, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:03:12'),
(74, 8, 'login_totp', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:03:25'),
(75, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:04:00'),
(76, 8, 'login', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:04:21'),
(77, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:05:05'),
(78, 8, 'login_totp', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:05:20'),
(79, 8, 'login_totp', 'user', 8, NULL, NULL, '87.196.81.2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/143.0.7499.151 Mobile/15E148 Safari/604.1', '2025-12-24 19:07:17'),
(80, 8, 'login_remember_me', 'user', 8, NULL, NULL, '87.196.81.2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/143.0.7499.151 Mobile/15E148 Safari/604.1', '2025-12-24 19:07:28'),
(81, 8, 'login_remember_me', 'user', 8, NULL, NULL, '2001:8a0:f74a:b200:b8e8:52c2:986e:11b6', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/143.0.7499.151 Mobile/15E148 Safari/604.1', '2025-12-29 11:30:00'),
(82, 8, 'login_totp', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 11:52:48'),
(83, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 11:53:02'),
(84, 8, 'login_totp', 'user', 8, NULL, NULL, '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 11:53:36'),
(85, 8, 'login_remember_me', 'user', 8, NULL, NULL, '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 14:49:58'),
(86, 8, 'login_remember_me', 'user', 8, NULL, NULL, '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 14:49:58'),
(87, 10, 'login', 'user', 10, NULL, NULL, '62.48.215.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-29 15:27:41'),
(88, 10, 'logout', 'user', 10, NULL, NULL, '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-29 15:52:11'),
(89, 10, 'login_totp', 'user', 10, NULL, NULL, '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-29 15:52:39'),
(90, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 17:28:52'),
(91, 8, 'login_totp', 'user', 8, NULL, NULL, '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 17:29:19'),
(92, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 17:29:30'),
(93, 8, 'login_totp', 'user', 8, NULL, NULL, '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 17:29:48'),
(94, 10, 'login_totp', 'user', 10, NULL, NULL, '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-29 17:37:08'),
(95, 8, 'login_remember_me', 'user', 8, NULL, NULL, '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 18:30:42'),
(96, 8, 'login_remember_me', 'user', 8, NULL, NULL, '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 19:00:56'),
(97, 11, 'register', 'user', 11, NULL, NULL, '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 20:17:33'),
(98, 11, 'email_verified', 'user', 11, NULL, NULL, '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 20:18:07'),
(99, 11, 'login', 'user', 11, NULL, NULL, '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 20:18:38'),
(100, 11, 'login_remember_me', 'user', 11, NULL, NULL, '10.8.0.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-30 00:33:34'),
(101, 8, 'login_remember_me', 'user', 8, NULL, NULL, '10.8.0.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-30 00:33:47'),
(102, 8, 'logout', 'user', 8, NULL, NULL, '10.8.0.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-30 00:49:22'),
(103, 10, 'logout', 'user', 10, NULL, NULL, '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 00:56:30'),
(104, 8, 'login_totp', 'user', 8, NULL, NULL, '10.8.0.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-30 01:00:55'),
(105, 10, 'password_reset_requested', 'user', 10, NULL, NULL, '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 01:07:23'),
(106, 10, 'password_reset_completed', 'user', 10, NULL, NULL, '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 01:08:41'),
(107, 10, 'login_totp', 'user', 10, NULL, NULL, '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 01:22:19'),
(108, 10, 'login_remember_me', 'user', 10, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 15:30:29'),
(109, 10, 'logout', 'user', 10, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 16:11:59'),
(110, NULL, 'register', 'user', 12, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 16:15:41'),
(111, NULL, 'email_verified', 'user', 12, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 16:15:51'),
(112, 10, 'login_totp', 'user', 10, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 16:17:17'),
(113, 10, 'logout', 'user', 10, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 16:17:40');

-- --------------------------------------------------------

--
-- Estrutura da tabela `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `service_interval_km` int(10) UNSIGNED DEFAULT 15000,
  `service_interval_months` int(10) UNSIGNED DEFAULT 12,
  `inspection_interval_km` int(10) UNSIGNED DEFAULT 30000,
  `inspection_interval_months` int(10) UNSIGNED DEFAULT 24,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `brands`
--

INSERT DELAYED IGNORE INTO `brands` (`id`, `name`, `logo`, `is_active`, `service_interval_km`, `service_interval_months`, `inspection_interval_km`, `inspection_interval_months`, `created_at`) VALUES
(1, 'Audi', NULL, 1, 20000, 12, 30000, 24, '2025-12-10 15:44:51'),
(2, 'BMW', NULL, 1, 20000, 12, 30000, 24, '2025-12-10 15:44:51'),
(3, 'Citroën', NULL, 1, 20000, 12, 40000, 24, '2025-12-10 15:44:51'),
(4, 'Dacia', NULL, 1, 20000, 12, 30000, 24, '2025-12-10 15:44:51'),
(5, 'Fiat', NULL, 1, 15000, 12, 30000, 24, '2025-12-10 15:44:51'),
(6, 'Ford', NULL, 1, 20000, 12, 40000, 24, '2025-12-10 15:44:51'),
(7, 'Honda', NULL, 1, 15000, 12, 30000, 24, '2025-12-10 15:44:51'),
(8, 'Hyundai', NULL, 1, 10000, 12, 30000, 24, '2025-12-10 15:44:51'),
(9, 'Kia', NULL, 1, 15000, 12, 30000, 24, '2025-12-10 15:44:51'),
(10, 'Mazda', NULL, 1, 15000, 12, 40000, 24, '2025-12-10 15:44:51'),
(11, 'Mercedes-Benz', NULL, 1, 20000, 12, 30000, 24, '2025-12-10 15:44:51'),
(12, 'Nissan', NULL, 1, 15000, 12, 30000, 24, '2025-12-10 15:44:51'),
(13, 'Opel', NULL, 1, 20000, 12, 30000, 24, '2025-12-10 15:44:51'),
(14, 'Peugeot', NULL, 1, 20000, 12, 40000, 24, '2025-12-10 15:44:51'),
(15, 'Renault', NULL, 1, 20000, 12, 30000, 24, '2025-12-10 15:44:51'),
(16, 'Seat', NULL, 1, 15000, 12, 30000, 24, '2025-12-10 15:44:51'),
(17, 'Škoda', NULL, 1, 20000, 12, 30000, 24, '2025-12-10 15:44:51'),
(18, 'Toyota', NULL, 1, 10000, 12, 30000, 24, '2025-12-10 15:44:51'),
(19, 'Volkswagen', NULL, 1, 20000, 12, 30000, 24, '2025-12-10 15:44:51'),
(20, 'Volvo', NULL, 1, 20000, 12, 40000, 24, '2025-12-10 15:44:51'),
(21, 'Bentley', NULL, 1, 16000, 12, 32000, 24, '2025-12-20 20:39:09'),
(22, 'Ferrari', NULL, 1, 20000, 12, 40000, 24, '2025-12-22 12:14:36'),
(23, 'Lamborghini', NULL, 1, 15000, 12, 30000, 24, '2025-12-22 12:14:36'),
(24, 'Porsche', NULL, 1, 16000, 12, 40000, 24, '2025-12-22 12:14:36'),
(25, 'Jaguar', NULL, 1, 20000, 12, 52000, 24, '2025-12-22 12:14:36'),
(26, 'Ducati', NULL, 1, 12000, 12, 30000, 24, '2025-12-22 12:14:36');

-- --------------------------------------------------------

--
-- Estrutura da tabela `closed_days`
--

DROP TABLE IF EXISTS `closed_days`;
CREATE TABLE `closed_days` (
  `id` int(11) NOT NULL,
  `closed_date` date NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `closed_days`
--

INSERT DELAYED IGNORE INTO `closed_days` (`id`, `closed_date`, `reason`, `created_at`) VALUES
(1, '2026-01-07', '', '2025-12-23 12:26:23'),
(2, '2026-01-08', '', '2025-12-23 12:26:23'),
(3, '2026-01-09', '', '2025-12-23 12:26:23'),
(4, '2026-01-10', '', '2025-12-23 12:26:23'),
(5, '2026-01-11', '', '2025-12-23 12:26:23'),
(6, '2026-01-12', '', '2025-12-23 12:26:23'),
(7, '2026-01-13', '', '2025-12-23 12:26:23'),
(8, '2026-01-14', '', '2025-12-23 12:26:23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contact_messages`
--

DROP TABLE IF EXISTS `contact_messages`;
CREATE TABLE `contact_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `vehicle_id` int(10) UNSIGNED DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `read_at` timestamp NULL DEFAULT NULL,
  `read_by` int(10) UNSIGNED DEFAULT NULL,
  `replied_at` timestamp NULL DEFAULT NULL,
  `replied_by` int(10) UNSIGNED DEFAULT NULL,
  `admin_notes` text DEFAULT NULL,
  `admin_reply` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `status` enum('new','read','replied','archived') DEFAULT 'new',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `contact_messages`
--

INSERT DELAYED IGNORE INTO `contact_messages` (`id`, `user_id`, `name`, `email`, `phone`, `subject`, `message`, `vehicle_id`, `is_read`, `read_at`, `read_by`, `replied_at`, `replied_by`, `admin_notes`, `admin_reply`, `ip_address`, `user_agent`, `status`, `created_at`, `updated_at`) VALUES
(8, 8, 'Hugo Correia', 'hugo.correia@fsociety.pt', '918 305 379', 'ola faixa', 'ola ze da terra', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'archived', '2025-12-20 15:10:19', '2025-12-20 18:52:36');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
CREATE TABLE `contact_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `reply_text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `contact_replies`
--

INSERT DELAYED IGNORE INTO `contact_replies` (`id`, `message_id`, `user_id`, `is_admin`, `reply_text`, `created_at`) VALUES
(17, 8, 8, 0, 'ola', '2025-12-20 15:10:33'),
(18, 8, 8, 0, 'ola', '2025-12-20 15:14:26'),
(19, 8, 8, 0, 'ola', '2025-12-20 15:23:08'),
(20, 8, 8, 0, 'ola', '2025-12-20 15:32:47'),
(21, 8, 8, 0, 'enviar resposta', '2025-12-20 15:37:07'),
(22, 8, 8, 0, 'olaaa', '2025-12-20 15:40:33'),
(23, 8, 8, 0, 'ola', '2025-12-20 15:55:29'),
(24, 8, 8, 0, 'ola', '2025-12-20 15:59:18'),
(25, 8, 8, 0, 'ola', '2025-12-20 16:11:13'),
(26, 8, 8, 0, 'ola', '2025-12-20 16:13:33'),
(27, 8, 8, 0, 'ola', '2025-12-20 16:14:00'),
(28, 8, 8, 0, 'ola', '2025-12-20 16:22:56'),
(29, 8, 8, 0, 'ola', '2025-12-20 16:26:34'),
(30, 8, 8, 0, 'ola', '2025-12-20 16:31:16'),
(31, 8, 8, 0, 'ola', '2025-12-20 16:34:05'),
(32, 8, 8, 0, 'ola', '2025-12-20 16:41:57'),
(33, 8, 8, 0, 'ola', '2025-12-20 16:45:03'),
(34, 8, 8, 0, 'ola', '2025-12-20 16:47:35'),
(35, 8, 8, 0, 'olee', '2025-12-20 16:47:45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `email_history`
--

DROP TABLE IF EXISTS `email_history`;
CREATE TABLE `email_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `old_email` varchar(255) NOT NULL,
  `new_email` varchar(255) NOT NULL,
  `changed_at` timestamp NULL DEFAULT current_timestamp(),
  `ip_address` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `favorites`
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `favorites`
--

INSERT DELAYED IGNORE INTO `favorites` (`id`, `user_id`, `vehicle_id`, `created_at`) VALUES
(17, 8, 24, '2025-12-29 17:33:17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `favorite_sold_notifications`
--

DROP TABLE IF EXISTS `favorite_sold_notifications`;
CREATE TABLE `favorite_sold_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `notified_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `favorite_sold_notifications`
--

INSERT DELAYED IGNORE INTO `favorite_sold_notifications` (`id`, `user_id`, `vehicle_id`, `notified_at`) VALUES
(1, 8, 24, '2025-12-29 17:34:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `features`
--

DROP TABLE IF EXISTS `features`;
CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `features`
--

INSERT DELAYED IGNORE INTO `features` (`id`, `name`, `category`) VALUES
(1, 'ABS', 'Segurança'),
(2, 'Airbags', 'Segurança'),
(15, 'Android Auto', 'Entretenimento'),
(14, 'Apple CarPlay', 'Entretenimento'),
(7, 'Ar condicionado', 'Conforto'),
(8, 'Bancos aquecidos', 'Conforto'),
(12, 'Bluetooth', 'Entretenimento'),
(6, 'Câmara traseira', 'Segurança'),
(3, 'Controlo de tração', 'Segurança'),
(9, 'Cruise Control', 'Conforto'),
(16, 'Ecrã tátil', 'Entretenimento'),
(4, 'ESP', 'Segurança'),
(18, 'Faróis LED', 'Exterior'),
(13, 'GPS', 'Entretenimento'),
(17, 'Jantes de liga leve', 'Exterior'),
(11, 'Keyless Entry', 'Conforto'),
(5, 'Sensor de estacionamento', 'Segurança'),
(19, 'Tejadilho panorâmico', 'Exterior'),
(20, 'Vidros escurecidos', 'Exterior'),
(10, 'Volante multifunções', 'Conforto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fuel_types`
--

DROP TABLE IF EXISTS `fuel_types`;
CREATE TABLE `fuel_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `fuel_types`
--

INSERT DELAYED IGNORE INTO `fuel_types` (`id`, `name`) VALUES
(2, 'Diesel'),
(4, 'Elétrico'),
(7, 'Gasóleo'),
(1, 'Gasolina'),
(5, 'GPL'),
(3, 'Híbrido'),
(6, 'Híbrido Plug-in');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE `login_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `success` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `login_attempts`
--

INSERT DELAYED IGNORE INTO `login_attempts` (`id`, `email`, `ip_address`, `user_agent`, `success`, `created_at`) VALUES
(6, 'hugo.correia@fsociety.pt', '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 1, '2025-12-10 16:33:47'),
(7, 'hugo.correia@fsociety.pt', '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 1, '2025-12-10 16:36:16'),
(8, 'hugo.correia@fsociety.pt', '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 1, '2025-12-10 16:39:27'),
(9, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 1, '2025-12-10 19:34:00'),
(10, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 1, '2025-12-10 19:35:57'),
(15, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 1, '2025-12-10 22:19:31'),
(17, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 1, '2025-12-10 22:20:48'),
(21, 'hugo.correia@fsociety.pt', '89.115.236.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 1, '2025-12-19 10:39:30'),
(23, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-19 11:50:44'),
(39, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-20 15:40:09'),
(40, 'hugo.correia@fsociety.pt', '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-20 20:38:24'),
(41, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-22 12:09:56'),
(42, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-22 15:00:18'),
(43, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-22 20:57:14'),
(44, 'hugo.correia@fsociety.pt', '87.196.80.49', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/143.0.7499.151 Mobile/15E148 Safari/604.1', 1, '2025-12-22 21:54:34'),
(45, 'hugo.correia@fsociety.pt', '2001:8a0:f759:f200:57f:13f9:339e:d496', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/143.0.7499.151 Mobile/15E148 Safari/604.1', 1, '2025-12-23 13:03:42'),
(46, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-23 22:31:53'),
(47, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-23 22:42:47'),
(48, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-23 22:58:57'),
(49, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-23 22:59:34'),
(50, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-23 23:00:20'),
(51, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-23 23:38:19'),
(52, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-23 23:43:17'),
(53, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-23 23:46:30'),
(54, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-23 23:47:05'),
(55, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-23 23:48:10'),
(56, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-23 23:53:54'),
(57, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-23 23:54:29'),
(58, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-23 23:59:11'),
(59, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-24 00:02:55'),
(60, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-24 00:03:18'),
(61, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-24 00:04:05'),
(62, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-24 00:05:11'),
(63, 'hugo.correia@fsociety.pt', '87.196.81.2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/143.0.7499.151 Mobile/15E148 Safari/604.1', 1, '2025-12-24 19:07:05'),
(64, 'hugo.correia@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-29 11:52:24'),
(65, 'hugo.correia@fsociety.pt', '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-29 11:53:24'),
(68, 'hugo.correia@fsociety.pt', '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-29 17:29:04'),
(69, 'hugo.correia@fsociety.pt', '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-29 17:29:40'),
(72, 'gamerpt74@gmail.com', '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-29 20:18:10'),
(78, 'hugo.correia@fsociety.pt', '10.8.0.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-30 01:00:40'),
(79, 'ryan.barbosa@fsociety.pt', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 1, '2025-12-30 01:01:36'),
(80, 'ryan.barbosa@fsociety.pt', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 1, '2025-12-30 01:21:14'),
(81, 'igor.araujo@fsocirty.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 0, '2025-12-30 16:16:08'),
(82, 'igor.araujo@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 1, '2025-12-30 16:16:34'),
(83, 'ryan.barbosa@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 1, '2025-12-30 16:16:53'),
(84, 'igor.araujo@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 0, '2025-12-30 16:17:57'),
(85, 'igor.araujo@fsociety.pt', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 0, '2025-12-30 16:18:07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login_history`
--

DROP TABLE IF EXISTS `login_history`;
CREATE TABLE `login_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `login_at` timestamp NULL DEFAULT current_timestamp(),
  `success` tinyint(1) DEFAULT 1,
  `failure_reason` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `login_history`
--

INSERT DELAYED IGNORE INTO `login_history` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `success`, `failure_reason`, `country`, `city`) VALUES
(1, 10, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 21:40:35', 1, NULL, NULL, NULL),
(2, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 22:18:37', 0, 'Conta bloqueada pelo administrador', NULL, NULL),
(3, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 22:19:35', 1, NULL, NULL, NULL),
(4, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 22:20:34', 0, 'Conta bloqueada pelo administrador', NULL, NULL),
(5, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 22:20:55', 1, NULL, NULL, NULL),
(6, 10, '188.81.17.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-17 23:50:58', 1, NULL, NULL, NULL),
(7, 10, '188.81.17.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-18 00:02:53', 1, NULL, NULL, NULL),
(8, 8, '89.115.236.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-18 16:08:00', 1, NULL, NULL, NULL),
(9, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 10:19:44', 1, NULL, NULL, NULL),
(10, 10, '89.115.236.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-19 10:38:35', 1, NULL, NULL, NULL),
(11, 10, '89.115.236.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-19 10:39:46', 1, NULL, NULL, NULL),
(12, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 11:29:42', 1, NULL, NULL, NULL),
(13, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 11:50:51', 1, NULL, NULL, NULL),
(14, 10, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 12:19:48', 0, 'Password incorreta', NULL, NULL),
(15, 10, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 12:20:02', 0, 'Password incorreta', NULL, NULL),
(16, 10, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 12:20:11', 0, 'Password incorreta', NULL, NULL),
(17, 10, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 12:20:23', 0, 'Password incorreta', NULL, NULL),
(18, 10, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 12:20:41', 0, 'Password incorreta', NULL, NULL),
(19, 10, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 12:39:43', 0, 'Password incorreta', NULL, NULL),
(20, 10, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 12:39:47', 0, 'Password incorreta', NULL, NULL),
(21, 10, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 12:39:51', 0, 'Password incorreta', NULL, NULL),
(22, 10, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 12:39:59', 0, 'Password incorreta', NULL, NULL),
(23, 10, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 12:40:07', 0, 'Password incorreta', NULL, NULL),
(24, 10, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 12:59:11', 1, NULL, NULL, NULL),
(25, 10, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 13:00:03', 1, NULL, NULL, NULL),
(26, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 14:59:46', 1, NULL, NULL, NULL),
(27, 10, '87.196.80.215', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Mobile Safari/537.36', '2025-12-20 00:51:37', 1, NULL, NULL, NULL),
(28, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-20 15:01:28', 1, NULL, NULL, NULL),
(29, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-20 15:40:21', 1, NULL, NULL, NULL),
(30, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-20 18:52:30', 1, NULL, NULL, NULL),
(31, 8, '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-20 20:35:25', 1, NULL, NULL, NULL),
(32, 8, '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-20 20:38:35', 1, NULL, NULL, NULL),
(33, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 12:10:04', 1, NULL, NULL, NULL),
(34, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 15:00:21', 1, NULL, NULL, NULL),
(35, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 20:57:23', 1, NULL, NULL, NULL),
(36, 8, '87.196.80.49', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/143.0.7499.151 Mobile/15E148 Safari/604.1', '2025-12-22 21:55:52', 1, NULL, NULL, NULL),
(37, 8, '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 10:58:59', 1, NULL, NULL, NULL),
(38, 8, '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 10:58:59', 1, NULL, NULL, NULL),
(39, 8, '2001:8a0:f759:f200:57f:13f9:339e:d496', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/143.0.7499.151 Mobile/15E148 Safari/604.1', '2025-12-23 13:04:19', 1, NULL, NULL, NULL),
(40, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 22:31:59', 1, NULL, NULL, NULL),
(41, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 22:43:25', 1, NULL, NULL, NULL),
(42, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 22:59:17', 1, NULL, NULL, NULL),
(43, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 22:59:41', 1, NULL, NULL, NULL),
(44, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:00:28', 1, NULL, NULL, NULL),
(45, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:38:26', 1, NULL, NULL, NULL),
(46, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:43:30', 1, NULL, NULL, NULL),
(47, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:46:35', 0, 'Código TOTP inválido', NULL, NULL),
(48, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:46:46', 1, NULL, NULL, NULL),
(49, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:47:12', 1, NULL, NULL, NULL),
(50, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:48:19', 1, NULL, NULL, NULL),
(51, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:54:13', 1, NULL, NULL, NULL),
(52, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:54:39', 1, NULL, NULL, NULL),
(53, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:59:18', 1, NULL, NULL, NULL),
(54, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:03:08', 1, NULL, NULL, NULL),
(55, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:03:25', 1, NULL, NULL, NULL),
(56, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:04:21', 1, NULL, NULL, NULL),
(57, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:05:20', 1, NULL, NULL, NULL),
(58, 8, '87.196.81.2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/143.0.7499.151 Mobile/15E148 Safari/604.1', '2025-12-24 19:07:16', 1, NULL, NULL, NULL),
(59, 8, '87.196.81.2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/143.0.7499.151 Mobile/15E148 Safari/604.1', '2025-12-24 19:07:28', 1, NULL, NULL, NULL),
(60, 8, '2001:8a0:f74a:b200:b8e8:52c2:986e:11b6', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/143.0.7499.151 Mobile/15E148 Safari/604.1', '2025-12-29 11:30:00', 1, NULL, NULL, NULL),
(61, 8, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 11:52:48', 1, NULL, NULL, NULL),
(62, 8, '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 11:53:35', 1, NULL, NULL, NULL),
(63, 8, '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 14:49:58', 1, NULL, NULL, NULL),
(64, 8, '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 14:49:58', 1, NULL, NULL, NULL),
(65, 10, '62.48.215.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-29 15:27:41', 1, NULL, NULL, NULL),
(66, 10, '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-29 15:52:37', 1, NULL, NULL, NULL),
(67, 8, '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 17:29:19', 1, NULL, NULL, NULL),
(68, 8, '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 17:29:48', 1, NULL, NULL, NULL),
(69, 10, '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-29 17:37:08', 1, NULL, NULL, NULL),
(70, 8, '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 18:30:42', 1, NULL, NULL, NULL),
(71, 8, '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 19:00:56', 1, NULL, NULL, NULL),
(72, 11, '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 20:18:37', 1, NULL, NULL, NULL),
(73, 11, '10.8.0.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-30 00:33:34', 1, NULL, NULL, NULL),
(74, 8, '10.8.0.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-30 00:33:47', 1, NULL, NULL, NULL),
(75, 10, '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 00:56:42', 0, 'Password incorreta', NULL, NULL),
(76, 10, '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 00:57:01', 0, 'Password incorreta', NULL, NULL),
(77, 10, '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 00:57:08', 0, 'Password incorreta', NULL, NULL),
(78, 10, '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 00:57:14', 0, 'Password incorreta', NULL, NULL),
(79, 10, '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 00:57:17', 0, 'Password incorreta', NULL, NULL),
(80, 8, '10.8.0.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-30 01:00:55', 1, NULL, NULL, NULL),
(81, 10, '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 01:22:19', 1, NULL, NULL, NULL),
(82, 10, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 15:30:29', 1, NULL, NULL, NULL),
(83, 10, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 16:17:17', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `login_logs`
--

DROP TABLE IF EXISTS `login_logs`;
CREATE TABLE `login_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `success` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `login_tokens`
--

DROP TABLE IF EXISTS `login_tokens`;
CREATE TABLE `login_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(64) NOT NULL,
  `verification_code` varchar(6) DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT 0,
  `used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `login_tokens`
--

INSERT DELAYED IGNORE INTO `login_tokens` (`id`, `user_id`, `token`, `verification_code`, `ip_address`, `user_agent`, `is_used`, `used_at`, `expires_at`, `created_at`) VALUES
(3, 8, '94517560a17914a31675ef315eeaa5caf860209e2cc2edafe1aa21f6555d2d41', NULL, '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 1, NULL, '2025-12-10 16:40:45', '2025-12-10 16:25:45'),
(4, 8, 'c73a5939dbc5217471bd8477780d0058c5727d46eda0c371eae68c00d69714d8', NULL, '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 1, NULL, '2025-12-10 16:47:51', '2025-12-10 16:32:51'),
(5, 8, 'ef6ec0191bc09e5fa87cd94ca20d933d751b37b620f45f1028195a88478f97a9', NULL, '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 1, NULL, '2025-12-10 16:48:42', '2025-12-10 16:33:42'),
(6, 8, 'cc54b20302aea612e98f4edf81ee2403fa84e0c66c31cafa92aad31320796369', NULL, '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 1, NULL, '2025-12-10 16:51:11', '2025-12-10 16:36:11'),
(7, 8, '74143078225480e3a1943d653f62867348e7f373aedef70288e5295af90a0f26', NULL, '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 1, NULL, '2025-12-10 16:54:22', '2025-12-10 16:39:22'),
(8, 8, '354ee9c5e28ed8604afd0d8b9754f9d0e701be8beee19005fda01eec506b999d', NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 1, '2025-12-10 19:34:16', '2025-12-10 19:48:54', '2025-12-10 19:33:54'),
(9, 8, '3778bc1160b6fba7cd29b18593735d51e1d78158ead14ed3d7729f208189cba4', NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 1, '2025-12-10 19:36:02', '2025-12-10 19:50:53', '2025-12-10 19:35:53'),
(10, 10, 'e2b85e7cda3d90c2c77eba428b7f789750bbb63f82e120181cd0cbf56644a010', NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 1, '2025-12-10 21:40:34', '2025-12-10 21:55:10', '2025-12-10 21:40:10'),
(11, 8, '583e83f4d444adc5be7fc20c2f8a4a8899fda3369ad903f0a6d0389721931592', NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 1, '2025-12-10 22:19:35', '2025-12-10 22:34:26', '2025-12-10 22:19:26'),
(12, 8, 'f1c90795adb407b4645acda38435445fd6a8677f4a3292077fe2207bf03b111f', NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 1, '2025-12-10 22:20:55', '2025-12-10 22:35:43', '2025-12-10 22:20:43'),
(13, 10, 'e9fc625d4966e4f21e9cf404c9df72822406447456a1a13e28b55629f120f234', NULL, '188.81.17.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 1, '2025-12-17 23:50:58', '2025-12-18 00:05:37', '2025-12-17 23:50:37'),
(14, 10, '715c54e7c911870a91e92d6b8b9a235c35ef327d517fc8d1cdba54fb2945357e', NULL, '188.81.17.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 1, '2025-12-18 00:02:53', '2025-12-18 00:17:34', '2025-12-18 00:02:34'),
(15, 10, '56fe94896c0d61a1a3d1d81cb202584387436ed8165faff4a9ad1dc794e7d1a4', NULL, '89.115.236.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 1, '2025-12-19 10:38:35', '2025-12-19 10:52:48', '2025-12-19 10:37:48'),
(16, 8, '9cb3ad519a6d40a47d2022c79200568c36e6e8686de6768c170ba8431a61f2e8', NULL, '89.115.236.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 1, NULL, '2025-12-19 10:54:26', '2025-12-19 10:39:26'),
(17, 10, 'dc99b434b505cdced63f118ce1644adb40b606a712e1e030c189169ba3ecbdcb', NULL, '89.115.236.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 1, '2025-12-19 10:39:46', '2025-12-19 10:54:38', '2025-12-19 10:39:38'),
(18, 8, 'f6fcac890e040ad4ec5064c4044ce11e1c6536e47b993e93dd5b4544c9a09e4d', NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-19 11:50:51', '2025-12-19 12:05:39', '2025-12-19 11:50:39'),
(19, 10, '0d75c6e7a14c6bac727d338e8f2ed8b442025855864ad7ec9e47f9d336e7e1f5', NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-19 12:59:10', '2025-12-19 13:13:43', '2025-12-19 12:58:43'),
(20, 10, '9324b58cd322b29c1ade2901ae1ee925b6e4f78d2daec63230e4593a668e7925', NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-19 13:00:03', '2025-12-19 13:14:51', '2025-12-19 12:59:51'),
(21, 10, 'c3a5e23da43b10e0884b231455c90c0bb67482f65f48daf831fb6bc50fa251b4', NULL, '89.115.236.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, NULL, '2025-12-19 14:38:16', '2025-12-19 14:23:16'),
(22, 10, '1934ccded523958ee62b07001015300fae78df92055779ebd8f47262e8494f17', NULL, '89.115.236.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, NULL, '2025-12-19 14:38:31', '2025-12-19 14:23:31'),
(23, 10, '9dd9f10abbd14397bbd8d050f032b33299598f3a94daee48bd36db3fa20c289f', NULL, '87.196.80.215', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Mobile Safari/537.36', 1, '2025-12-20 00:51:37', '2025-12-20 01:06:00', '2025-12-20 00:51:00'),
(24, 8, 'd5bc5db68425fb4c4c4a2672f205ef057e3d57e2bf8870d2d57c1d75beb8aedf', NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-20 15:40:21', '2025-12-20 15:55:03', '2025-12-20 15:40:03'),
(25, 8, 'd67f449717c626994416b74cfda76e2006039689f1c7dcdcabd366166545ba37', NULL, '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-20 20:38:35', '2025-12-20 20:53:19', '2025-12-20 20:38:19'),
(26, 8, 'ab2e5b9111b846fa9197471a120a8d7541d974e24add8ba60a4915e1926cd1bc', NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-22 12:10:04', '2025-12-22 12:24:50', '2025-12-22 12:09:50'),
(27, 8, 'f9da011654252c7de977595ce4666268bd14946e7453c7210ac05c90696e3ce9', NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-22 15:00:21', '2025-12-22 15:15:13', '2025-12-22 15:00:13'),
(28, 8, '738561384bc09ac2d1cdde35c548fd593ffdcc961a54dfc86478a223fbba7200', NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-22 20:57:22', '2025-12-22 21:12:08', '2025-12-22 20:57:08'),
(29, 8, '546e7ee9bab55b071242cef446a97fca1a5748c94525e4378be74e11be63ca70', NULL, '87.196.80.49', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/143.0.7499.151 Mobile/15E148 Safari/604.1', 1, '2025-12-22 21:55:52', '2025-12-22 22:09:29', '2025-12-22 21:54:29'),
(30, 8, 'cccc0a4303d9fba95f86bd62d6bae6302fea967c3d2b670bf3b64e28419e3ace', NULL, '2001:8a0:f759:f200:57f:13f9:339e:d496', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/143.0.7499.151 Mobile/15E148 Safari/604.1', 1, '2025-12-23 13:04:18', '2025-12-23 13:18:37', '2025-12-23 13:03:37'),
(31, 8, 'e2dc18bf7ac4d755669d5ca02306b0344cf79c37449b2511f4e533dd33f876f9', NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-23 22:31:59', '2025-12-23 22:46:48', '2025-12-23 22:31:48'),
(32, 8, '66257afbe4d2373679c1e3b03403bad002b82753f6198dd627a9c7faa8afae73', NULL, '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-23 22:43:25', '2025-12-23 22:57:42', '2025-12-23 22:42:42'),
(33, 8, 'e79c6edef5036b249451134b5481c72cac4e4fced5c08690401d12b2de0cc955', '370424', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-23 22:59:16', '2025-12-23 23:13:52', '2025-12-23 22:58:52'),
(34, 8, '2fec6ded8ebacd538c34c2a5cef358f2ab3d1bdb8872372710d1efa908419c3a', '463433', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-23 22:59:41', '2025-12-23 23:14:30', '2025-12-23 22:59:30'),
(35, 8, '84025c2369894585c2acf42c890f7a8a0bbcc22a6390bcb5ba12fd4c75db0daf', '265984', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-23 23:00:28', '2025-12-23 23:15:15', '2025-12-23 23:00:15'),
(36, 8, 'fc480d3dd8830a18da771d4652bc87ace182366a49f1baf7ad3fc7053d5676e3', '012713', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-24 00:04:21', '2025-12-24 00:19:05', '2025-12-24 00:04:05'),
(37, 10, '2636d786cfb0869e4f81cc978e685da5da8e56da5c5a512263eb002beb3f14f0', '549580', '62.48.215.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 1, '2025-12-29 15:27:41', '2025-12-29 15:41:33', '2025-12-29 15:26:33'),
(38, 11, 'afbb30fd8e7bfffb6d54a7bac6f80208417f534d7b9f9dad23c3470d20f2f663', '856196', '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 1, '2025-12-29 20:18:37', '2025-12-29 20:33:10', '2025-12-29 20:18:10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `maintenance_reminders`
--

DROP TABLE IF EXISTS `maintenance_reminders`;
CREATE TABLE `maintenance_reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` enum('revisao','inspecao') NOT NULL,
  `reminder_date` date NOT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `opened_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `negotiation_messages`
--

DROP TABLE IF EXISTS `negotiation_messages`;
CREATE TABLE `negotiation_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(10) UNSIGNED NOT NULL,
  `sender_type` enum('user','admin') NOT NULL,
  `sender_id` int(10) UNSIGNED NOT NULL,
  `message` text DEFAULT NULL,
  `offer_value` decimal(12,2) DEFAULT NULL,
  `target_vehicle_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`target_vehicle_ids`)),
  `action` enum('initial','offer','counter_offer','accept','reject','message') NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `negotiation_messages`
--

INSERT DELAYED IGNORE INTO `negotiation_messages` (`id`, `request_id`, `sender_type`, `sender_id`, `message`, `offer_value`, `target_vehicle_ids`, `action`, `created_at`) VALUES
(1, 2, 'user', 8, NULL, 200000.00, NULL, 'initial', '2025-12-29 16:39:31'),
(2, 2, 'admin', 8, 'reduzir', 190000.00, NULL, 'offer', '2025-12-29 16:45:00'),
(3, 2, 'user', 8, 'aumento', 195000.00, NULL, 'counter_offer', '2025-12-29 16:45:42'),
(4, 2, 'admin', 8, NULL, 192500.00, NULL, 'offer', '2025-12-29 16:46:18'),
(5, 2, 'user', 8, NULL, 192500.00, NULL, 'accept', '2025-12-29 16:46:35'),
(6, 2, 'admin', 8, NULL, 192500.00, NULL, 'accept', '2025-12-29 16:48:18'),
(7, 3, 'user', 8, NULL, 17000.00, NULL, 'initial', '2025-12-29 16:55:02'),
(8, 3, 'admin', 8, NULL, 17000.00, NULL, 'accept', '2025-12-29 16:55:13'),
(9, 3, 'user', 8, NULL, 17000.00, NULL, 'accept', '2025-12-29 17:09:48'),
(10, 4, 'user', 8, 'Veículos pretendidos: Ferrari Portofino (245.000 €), Lamborghini Huracan (285.000 €)', 60000.00, NULL, 'initial', '2025-12-29 18:12:44'),
(11, 4, 'admin', 8, NULL, 70000.00, NULL, 'offer', '2025-12-29 18:13:27'),
(12, 4, 'user', 8, 'Pedido recusado pelo utilizador', NULL, NULL, 'reject', '2025-12-29 19:13:10'),
(13, 5, 'user', 8, 'Veículos pretendidos: BMW i8 (125.000 €), Ferrari Portofino (245.000 €)\n\nProposta: Receber 90.000 € (diferença de tabela: 80.000 €)', -90000.00, '[17,19]', 'initial', '2025-12-29 19:13:47'),
(14, 5, 'admin', 8, NULL, -30000.00, '[17,20]', 'offer', '2025-12-29 19:25:20'),
(15, 5, 'user', 8, 'Contraproposta - Veículos: BMW i8 (125.000 €), Jaguar XKR-S (195.000 €)\nProposta: Receber 140.000 € (diferença tabela: 130.000 €)', 140000.00, '[17,23]', 'counter_offer', '2025-12-29 19:38:40'),
(16, 5, 'admin', 8, NULL, -90000.00, '[17,23]', 'offer', '2025-12-29 19:46:19'),
(17, 5, 'user', 8, 'Contraproposta - Veículos: BMW i8 (125.000 €), Jaguar XKR-S (195.000 €)\nProposta: Receber 100.000 € (diferença tabela: 130.000 €)', -100000.00, '[17,23]', 'counter_offer', '2025-12-29 20:02:11'),
(18, 5, 'admin', 8, NULL, -100000.00, NULL, 'accept', '2025-12-29 20:07:30'),
(19, 5, 'user', 8, NULL, -100000.00, NULL, 'accept', '2025-12-29 20:19:06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'info',
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(500) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `read_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `notifications`
--

INSERT DELAYED IGNORE INTO `notifications` (`id`, `user_id`, `type`, `title`, `message`, `link`, `data`, `is_read`, `read_at`, `created_at`) VALUES
(1, 8, 'favorite_sold', 'Veículo vendido', 'O veículo \"Ducati 996S\" que tinha nos favoritos foi vendido.', 'veiculos.php', NULL, 1, '2025-12-29 17:52:54', '2025-12-29 17:34:04'),
(2, 8, 'info', 'Teste Lista de Espera', 'O veículo \"Teste\" da sua lista de espera já está disponível!', 'veiculo.php?id=23', NULL, 1, '2025-12-29 17:58:12', '2025-12-29 17:55:37'),
(3, 8, 'info', 'Veículo disponível!', 'O veículo \"Jaguar XKR-S\" da sua lista de espera já está disponível!', 'veiculo.php?id=23', NULL, 1, '2025-12-29 18:02:23', '2025-12-29 18:01:58');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `title` varchar(100) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `reviews`
--

INSERT DELAYED IGNORE INTO `reviews` (`id`, `user_id`, `vehicle_id`, `rating`, `title`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, 16, 5, 'Experiência unica!!!', 'Atendimento muito bom, sempre disponíveis e muito simpáticos. Adorei o carro e a equipe.', 'approved', '2025-12-22 17:18:12', '2025-12-22 17:21:36');

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `roles`
--

INSERT DELAYED IGNORE INTO `roles` (`id`, `name`, `description`, `created_at`) VALUES
(1, 'admin', 'Administrador do sistema', '2025-12-10 15:44:47'),
(2, 'user', 'Utilizador registado', '2025-12-10 15:44:47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `security_logs`
--

DROP TABLE IF EXISTS `security_logs`;
CREATE TABLE `security_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `event_type` varchar(50) NOT NULL,
  `severity` enum('info','warning','error','critical') DEFAULT 'info',
  `ip_address` varchar(45) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `security_logs`
--

INSERT DELAYED IGNORE INTO `security_logs` (`id`, `user_id`, `event_type`, `severity`, `ip_address`, `user_agent`, `description`, `metadata`, `created_at`) VALUES
(1, NULL, 'login_failed', 'warning', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Tentativa 1 de 5', '{\"email\":\"ryan.barbosa@fsociety.pt\"}', '2025-12-19 12:39:43'),
(2, NULL, 'login_failed', 'warning', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Tentativa 2 de 5', '{\"email\":\"ryan.barbosa@fsociety.pt\"}', '2025-12-19 12:39:47'),
(3, NULL, 'login_failed', 'warning', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Tentativa 3 de 5', '{\"email\":\"ryan.barbosa@fsociety.pt\"}', '2025-12-19 12:39:51'),
(4, NULL, 'login_failed', 'warning', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Tentativa 4 de 5', '{\"email\":\"ryan.barbosa@fsociety.pt\"}', '2025-12-19 12:39:59'),
(5, NULL, 'login_failed', 'warning', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Tentativa 5 de 5', '{\"email\":\"ryan.barbosa@fsociety.pt\"}', '2025-12-19 12:40:07'),
(6, 10, 'account_locked', 'critical', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Conta bloqueada após 5 tentativas de login falhadas consecutivas', NULL, '2025-12-19 12:40:08'),
(7, 10, 'account_unlocked', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Conta desbloqueada pelo utilizador após verificação por email', NULL, '2025-12-19 12:46:26'),
(8, 10, 'password_changed', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Password alterada após desbloqueio de conta', NULL, '2025-12-19 12:46:26'),
(9, 10, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-19 12:58:48'),
(10, 10, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-19 12:59:56'),
(11, 10, 'login_success', 'info', '89.115.236.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-19 14:23:21'),
(12, 10, 'login_success', 'info', '89.115.236.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-19 14:23:36'),
(13, 10, 'login_success', 'info', '87.196.80.215', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Mobile Safari/537.36', 'Login bem sucedido', NULL, '2025-12-20 00:51:05'),
(14, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-20 15:40:09'),
(15, 8, 'login_success', 'info', '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-20 20:38:24'),
(16, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-22 12:09:56'),
(17, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-22 15:00:18'),
(18, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-22 20:57:13'),
(19, 8, 'login_success', 'info', '87.196.80.49', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/143.0.7499.151 Mobile/15E148 Safari/604.1', 'Login bem sucedido', NULL, '2025-12-22 21:54:34'),
(20, 8, 'login_success', 'info', '2001:8a0:f759:f200:57f:13f9:339e:d496', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/143.0.7499.151 Mobile/15E148 Safari/604.1', 'Login bem sucedido', NULL, '2025-12-23 13:03:42'),
(21, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-23 22:31:53'),
(22, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-23 22:42:47'),
(23, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-23 22:58:57'),
(24, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-23 22:59:34'),
(25, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-23 23:00:19'),
(26, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-23 23:38:19'),
(27, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-23 23:43:17'),
(28, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-23 23:46:30'),
(29, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-23 23:47:05'),
(30, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-23 23:48:10'),
(31, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-23 23:53:54'),
(32, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-23 23:54:29'),
(33, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-23 23:59:11'),
(34, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-24 00:02:55'),
(35, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-24 00:03:18'),
(36, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-24 00:04:05'),
(37, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-24 00:05:10'),
(38, 8, 'login_success', 'info', '87.196.81.2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/143.0.7499.151 Mobile/15E148 Safari/604.1', 'Login bem sucedido', NULL, '2025-12-24 19:07:05'),
(39, 8, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-29 11:52:24'),
(40, 8, 'login_success', 'info', '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-29 11:53:24'),
(41, 10, 'login_success', 'info', '62.48.215.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'Login bem sucedido', NULL, '2025-12-29 15:26:33'),
(42, 10, 'login_success', 'info', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'Login bem sucedido', NULL, '2025-12-29 15:52:24'),
(43, 8, 'login_success', 'info', '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-29 17:29:04'),
(44, 8, 'login_success', 'info', '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-29 17:29:40'),
(45, 10, 'login_success', 'info', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'Login bem sucedido', NULL, '2025-12-29 17:36:30'),
(46, 10, 'login_success', 'info', '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-29 20:16:52'),
(47, 11, 'login_success', 'info', '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-29 20:18:10'),
(48, NULL, 'login_failed', 'warning', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'Tentativa 1 de 5', '{\"email\":\"ryan.barbosa@fsociety.pt\"}', '2025-12-30 00:56:42'),
(49, NULL, 'login_failed', 'warning', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'Tentativa 2 de 5', '{\"email\":\"ryan.barbosa@fsociety.pt\"}', '2025-12-30 00:57:01'),
(50, NULL, 'login_failed', 'warning', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'Tentativa 3 de 5', '{\"email\":\"ryan.barbosa@fsociety.pt\"}', '2025-12-30 00:57:08'),
(51, NULL, 'login_failed', 'warning', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'Tentativa 4 de 5', '{\"email\":\"ryan.barbosa@fsociety.pt\"}', '2025-12-30 00:57:14'),
(52, NULL, 'login_failed', 'warning', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'Tentativa 5 de 5', '{\"email\":\"ryan.barbosa@fsociety.pt\"}', '2025-12-30 00:57:17'),
(53, 10, 'account_locked', 'critical', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'Conta bloqueada após 5 tentativas de login falhadas consecutivas', NULL, '2025-12-30 00:57:17'),
(54, 8, 'login_success', 'info', '10.8.0.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Login bem sucedido', NULL, '2025-12-30 01:00:40'),
(55, 10, 'account_unlocked', 'info', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'Conta desbloqueada pelo utilizador após verificação por email', NULL, '2025-12-30 01:01:05'),
(56, 10, 'password_changed', 'info', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'Password alterada após desbloqueio de conta', NULL, '2025-12-30 01:01:05'),
(57, 10, 'login_success', 'info', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'Login bem sucedido', NULL, '2025-12-30 01:01:36'),
(58, 10, 'login_success', 'info', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'Login bem sucedido', NULL, '2025-12-30 01:21:14'),
(59, 12, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'Login bem sucedido', NULL, '2025-12-30 16:16:34'),
(60, 10, 'login_success', 'info', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'Login bem sucedido', NULL, '2025-12-30 16:16:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sell_trade_requests`
--

DROP TABLE IF EXISTS `sell_trade_requests`;
CREATE TABLE `sell_trade_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` enum('vender','trocar') NOT NULL,
  `status` enum('aguarda_oferta','oferta_enviada','contraproposta','utilizador_aceitou','admin_aceitou','concluido','recusado','cancelado') DEFAULT 'aguarda_oferta',
  `message` text DEFAULT NULL,
  `target_vehicle_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`target_vehicle_ids`)),
  `admin_notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `current_offer` decimal(12,2) DEFAULT NULL,
  `user_counter_offer` decimal(12,2) DEFAULT NULL,
  `final_price` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sell_trade_requests`
--

INSERT DELAYED IGNORE INTO `sell_trade_requests` (`id`, `vehicle_id`, `user_id`, `type`, `status`, `message`, `target_vehicle_ids`, `admin_notes`, `created_at`, `updated_at`, `current_offer`, `user_counter_offer`, `final_price`) VALUES
(1, 23, 8, 'vender', 'concluido', NULL, NULL, 'Aceitamos por 120000', '2025-12-29 16:14:44', '2025-12-29 16:36:26', NULL, NULL, NULL),
(2, 23, 8, 'vender', 'concluido', NULL, NULL, NULL, '2025-12-29 16:39:31', '2025-12-29 16:48:18', 192500.00, 195000.00, 192500.00),
(3, 24, 8, 'vender', 'concluido', NULL, NULL, NULL, '2025-12-29 16:55:01', '2025-12-29 17:09:47', 17000.00, 17000.00, 17000.00),
(4, 18, 8, 'trocar', 'recusado', 'Veículos pretendidos: Ferrari Portofino (245.000 €), Lamborghini Huracan (285.000 €)', '[19,20]', '\n[Recusado pelo utilizador] ', '2025-12-29 18:12:44', '2025-12-29 19:13:10', 70000.00, 60000.00, NULL),
(5, 18, 8, 'trocar', 'concluido', 'Veículos pretendidos: BMW i8 (125.000 €), Ferrari Portofino (245.000 €)\n\nProposta: Receber 90.000 € (diferença de tabela: 80.000 €)', '[17,23]', NULL, '2025-12-29 19:13:47', '2025-12-29 20:19:06', -90000.00, -100000.00, -100000.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` text DEFAULT NULL,
  `type` enum('string','integer','boolean','json') DEFAULT 'string',
  `description` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `settings`
--

INSERT DELAYED IGNORE INTO `settings` (`id`, `key`, `value`, `type`, `description`, `updated_at`) VALUES
(1, 'site_name', 'BabeStand', 'string', 'Nome do site', '2025-12-10 15:44:59'),
(2, 'site_email', 'info@babestand.fsociety.pt', 'string', 'Email de contacto', '2025-12-10 15:44:59'),
(3, 'site_phone', '+351 912 345 678', 'string', 'Telefone de contacto', '2025-12-10 15:44:59'),
(4, 'site_address', 'Rua Example, 123, Porto', 'string', 'Morada do stand', '2025-12-10 15:44:59'),
(5, 'test_drive_start_hour', '09:00', 'string', 'Hora de início dos test drives', '2025-12-10 15:44:59'),
(6, 'test_drive_end_hour', '18:00', 'string', 'Hora de fim dos test drives', '2025-12-10 15:44:59'),
(7, 'test_drive_duration', '30', 'integer', 'Duração do test drive em minutos', '2025-12-10 15:44:59'),
(8, 'test_drive_interval', '60', 'integer', 'Intervalo entre test drives em minutos', '2025-12-10 15:44:59'),
(9, 'max_login_attempts', '5', 'integer', 'Máximo de tentativas de login', '2025-12-10 15:44:59'),
(10, 'lockout_duration', '30', 'integer', 'Duração do bloqueio em minutos', '2025-12-10 15:44:59'),
(11, 'token_expiry_minutes', '15', 'integer', 'Expiração do token 2FA em minutos', '2025-12-10 15:44:59'),
(12, 'remember_me_days', '30', 'integer', 'Duração do remember me em dias', '2025-12-10 15:44:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `site_settings`
--

DROP TABLE IF EXISTS `site_settings`;
CREATE TABLE `site_settings` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` enum('text','textarea','number','boolean','json') DEFAULT 'text',
  `setting_group` varchar(50) DEFAULT 'general',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `site_settings`
--

INSERT DELAYED IGNORE INTO `site_settings` (`id`, `setting_key`, `setting_value`, `setting_type`, `setting_group`, `created_at`, `updated_at`) VALUES
(1, 'business_hours_weekday_open', '09:00', 'text', 'hours', '2025-12-10 20:44:19', '2025-12-10 20:44:19'),
(2, 'business_hours_weekday_close', '19:00', 'text', 'hours', '2025-12-10 20:44:19', '2025-12-10 20:44:19'),
(3, 'business_hours_saturday_open', '10:00', 'text', 'hours', '2025-12-10 20:44:19', '2025-12-10 20:44:19'),
(4, 'business_hours_saturday_close', '13:00', 'text', 'hours', '2025-12-10 20:44:19', '2025-12-10 20:44:19'),
(5, 'business_hours_sunday_open', '01:01', 'text', 'hours', '2025-12-10 20:44:19', '2025-12-10 21:03:13'),
(6, 'business_hours_sunday_close', '01:01', 'text', 'hours', '2025-12-10 20:44:19', '2025-12-10 21:03:13'),
(7, 'business_phone', '+351 918 305 379', 'text', 'contact', '2025-12-10 20:44:19', '2025-12-10 20:59:32'),
(8, 'business_email', 'suporte@babestand.fsociety.pt', 'text', 'contact', '2025-12-10 20:44:19', '2025-12-10 20:44:19'),
(9, 'business_address', 'Rua do Stand, 129', 'text', 'contact', '2025-12-10 20:44:19', '2025-12-10 20:59:32'),
(10, 'business_city', '4000-034 Porto', 'text', 'contact', '2025-12-10 20:44:19', '2025-12-10 20:59:32'),
(11, 'test_drive_staff_count', '2', 'text', 'hours', '2025-12-22 16:45:02', '2025-12-22 16:45:02'),
(12, 'max_concurrent_test_drives', '2', 'text', 'hours', '2025-12-23 11:59:03', '2025-12-23 11:59:16'),
(13, 'business_hours_lunch_start', '12:00', 'text', 'hours', '2025-12-23 12:51:47', '2025-12-23 12:51:47'),
(14, 'business_hours_lunch_end', '13:30', 'text', 'hours', '2025-12-23 12:51:47', '2025-12-23 12:51:47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `test_drives`
--

DROP TABLE IF EXISTS `test_drives`;
CREATE TABLE `test_drives` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED DEFAULT 1,
  `scheduled_date` date NOT NULL,
  `scheduled_time` time NOT NULL,
  `notes` text DEFAULT NULL,
  `admin_notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `review_email_sent` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `test_drives`
--

INSERT DELAYED IGNORE INTO `test_drives` (`id`, `user_id`, `vehicle_id`, `status_id`, `scheduled_date`, `scheduled_time`, `notes`, `admin_notes`, `created_at`, `updated_at`, `review_email_sent`) VALUES
(4, 8, 16, 3, '2025-12-22', '16:15:00', 'Test drive de teste para verificar sistema de emails', NULL, '2025-12-22 17:14:29', '2025-12-22 17:15:06', 1),
(8, 10, 17, 3, '2025-12-22', '16:00:00', 'Test drive de teste', NULL, '2025-12-22 17:15:56', '2025-12-22 17:16:06', 1),
(9, 8, 20, 5, '2025-12-23', '10:00:00', 'Quero muito comprar esse carro', NULL, '2025-12-22 17:44:24', '2025-12-23 11:42:33', 0),
(10, 8, 23, 4, '2025-12-24', '13:30:00', NULL, NULL, '2025-12-22 21:11:23', '2025-12-22 21:11:47', 0),
(11, 8, 18, 2, '2025-12-25', '16:30:00', NULL, NULL, '2025-12-23 13:05:11', '2025-12-23 13:05:11', 0),
(12, 8, 18, 2, '2025-12-30', '17:00:00', NULL, NULL, '2025-12-24 19:08:19', '2025-12-24 19:08:19', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `test_drive_status`
--

DROP TABLE IF EXISTS `test_drive_status`;
CREATE TABLE `test_drive_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `color` varchar(7) DEFAULT '#6c757d'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `test_drive_status`
--

INSERT DELAYED IGNORE INTO `test_drive_status` (`id`, `name`, `color`) VALUES
(1, 'Pendente', '#ffc107'),
(2, 'Confirmado', '#28a745'),
(3, 'Concluído', '#17a2b8'),
(4, 'Cancelado', '#dc3545'),
(5, 'Não Compareceu', '#6c757d');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 2,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pending_email` varchar(255) DEFAULT NULL,
  `pending_email_token` varchar(64) DEFAULT NULL,
  `pending_email_expires` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `nif` varchar(9) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(64) DEFAULT NULL,
  `remember_token_expires` timestamp NULL DEFAULT NULL,
  `remember_user_agent_hash` varchar(64) DEFAULT NULL,
  `remember_country` varchar(10) DEFAULT NULL,
  `totp_secret` varchar(32) DEFAULT NULL,
  `totp_enabled` tinyint(1) DEFAULT 0,
  `totp_enabled_at` timestamp NULL DEFAULT NULL,
  `reset_token` varchar(64) DEFAULT NULL,
  `reset_token_expires` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `email_verification_token` varchar(64) DEFAULT NULL,
  `failed_login_attempts` int(10) UNSIGNED DEFAULT 0,
  `locked_until` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `blocked_at` timestamp NULL DEFAULT NULL,
  `blocked_reason` varchar(255) DEFAULT NULL,
  `blocked_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `registration_ip` varchar(45) DEFAULT NULL,
  `last_ip` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `login_attempts` int(11) DEFAULT 0,
  `last_failed_attempt` datetime DEFAULT NULL,
  `account_locked_until` datetime DEFAULT NULL,
  `unlock_token` varchar(64) DEFAULT NULL,
  `unlock_token_expires` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT DELAYED IGNORE INTO `users` (`id`, `role_id`, `name`, `email`, `pending_email`, `pending_email_token`, `pending_email_expires`, `password`, `phone`, `address`, `street`, `postal_code`, `city`, `district`, `nif`, `avatar`, `remember_token`, `remember_token_expires`, `remember_user_agent_hash`, `remember_country`, `totp_secret`, `totp_enabled`, `totp_enabled_at`, `reset_token`, `reset_token_expires`, `email_verified_at`, `email_verification_token`, `failed_login_attempts`, `locked_until`, `last_login`, `is_active`, `blocked_at`, `blocked_reason`, `blocked_by`, `created_at`, `registration_ip`, `last_ip`, `updated_at`, `login_attempts`, `last_failed_attempt`, `account_locked_until`, `unlock_token`, `unlock_token_expires`) VALUES
(8, 1, 'Hugo Correia', 'hugo.correia@fsociety.pt', NULL, NULL, NULL, '$argon2id$v=19$m=65536,t=4,p=1$N2hjNTFEaE9BdWpPS2FuTg$3aY8qJyPXsPz6Fho5ndStmsoZqTNlQL/FKyuWLcYFJE', '918 305 379', NULL, 'Rua Conego Gaspar de Freitas', '4575-021', 'Alpendorada', 'Porto', NULL, 'avatar_8_1766143373.png', 'a6661db178088cc25905e9c867091d7faec3f1afd186805dddb1921e09345c96', '2026-01-29 01:00:55', '62d18984722ed057781bce4342a009271fd0bf4799981a048ca348f09af03584', 'LOCAL', 'TN3M7AX2RFGWQ72Z', 1, '2025-12-24 00:04:57', NULL, NULL, '2025-12-10 16:25:39', NULL, 0, NULL, '2025-12-30 01:00:55', 1, NULL, NULL, NULL, '2025-12-10 16:25:21', NULL, '10.8.0.13', '2025-12-30 01:00:55', 0, NULL, NULL, NULL, NULL),
(10, 1, 'Ryan Barbosa', 'ryan.barbosa@fsociety.pt', NULL, NULL, NULL, '$argon2id$v=19$m=65536,t=4,p=3$Y3VHcE85OUxsR1JUYTZZRA$gfGq1UH2ap4jgT6b7KyfHdCoYkfw0agGNMOVI75l4oQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bf04b646a4b3d1c55f0cce511ad67664a6c319e96c535ee28110c9938cda12ff', 'LOCAL', 'LBNN4CVDD6347OFL', 1, '2025-12-29 15:50:59', NULL, NULL, '2025-12-10 21:51:37', NULL, 0, NULL, '2025-12-30 16:17:17', 1, NULL, NULL, NULL, '2025-12-10 19:33:11', NULL, '10.8.0.10', '2025-12-30 16:17:17', 0, NULL, NULL, NULL, NULL),
(11, 2, 'Hugo Correia', 'gamerpt74@gmail.com', NULL, NULL, NULL, '$argon2id$v=19$m=65536,t=4,p=3$NWlBMS91YjlBWDcuNG1lOQ$R6oCk0ojdOP7TIdPo13iMHf4iSp1b9IAObUkcXHkqFs', '918 305 379', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f23edbe5393484d98cc52ddb1cd26fcea405490eee735ab941dae9128f410994', '2026-01-29 00:33:34', '62d18984722ed057781bce4342a009271fd0bf4799981a048ca348f09af03584', 'LOCAL', NULL, 0, NULL, NULL, NULL, '2025-12-29 20:18:07', NULL, 0, NULL, '2025-12-30 00:33:34', 1, NULL, NULL, NULL, '2025-12-29 20:17:27', '10.8.0.12', '10.8.0.13', '2025-12-30 00:33:34', 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_activity`
--

DROP TABLE IF EXISTS `user_activity`;
CREATE TABLE `user_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `action` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `user_activity`
--

INSERT DELAYED IGNORE INTO `user_activity` (`id`, `user_id`, `action`, `description`, `ip_address`, `user_agent`, `created_at`) VALUES
(1, 10, 'login', 'Login efetuado com sucesso', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 21:40:35'),
(2, 10, 'email_verified', 'Email verificado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 21:51:37'),
(3, 8, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 22:18:23'),
(4, 8, 'login_blocked', 'Tentativa de login com conta bloqueada', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 22:18:37'),
(5, 8, 'login', 'Login efetuado com sucesso', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 22:19:36'),
(6, 8, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 22:20:23'),
(7, 8, 'login_blocked', 'Tentativa de login com conta bloqueada', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 22:20:34'),
(8, 8, 'login', 'Login efetuado com sucesso', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-10 22:20:55'),
(9, 10, 'login', 'Login efetuado com sucesso', '188.81.17.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-17 23:50:59'),
(10, 10, 'logout', 'Logout efetuado', '188.81.17.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-18 00:00:36'),
(11, 10, 'login', 'Login efetuado com sucesso', '188.81.17.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-18 00:02:53'),
(12, 10, 'logout', 'Logout efetuado', '188.81.17.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-18 00:05:30'),
(13, 8, 'login_remember_me', 'Login automático via Remember Me', '89.115.236.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-18 16:08:00'),
(14, 8, 'login_remember_me', 'Login automático via Remember Me', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 10:19:44'),
(15, 10, 'login', 'Login efetuado com sucesso', '89.115.236.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-19 10:38:36'),
(16, 10, 'logout', 'Logout efetuado', '89.115.236.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-19 10:39:13'),
(17, 10, 'login', 'Login efetuado com sucesso', '89.115.236.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-19 10:39:46'),
(18, 8, 'login_remember_me', 'Login automático via Remember Me', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 11:29:42'),
(19, 8, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 11:50:33'),
(20, 8, 'login', 'Login efetuado com sucesso', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 11:50:52'),
(21, 10, 'login', 'Login efetuado com sucesso', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 12:59:11'),
(22, 10, 'login', 'Login efetuado com sucesso', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 13:00:03'),
(23, 8, 'login_remember_me', 'Login automático via Remember Me', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 14:59:46'),
(24, 10, 'login', 'Login efetuado com sucesso', '87.196.80.215', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '2025-12-20 00:51:37'),
(25, 8, 'login_remember_me', 'Login automático via Remember Me', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-20 15:01:30'),
(26, 8, 'login', 'Login efetuado com sucesso', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-20 15:40:21'),
(27, 8, 'login_remember_me', 'Login automático via Remember Me', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-20 18:52:31'),
(28, 8, 'login_remember_me', 'Login automático via Remember Me', '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-20 20:35:25'),
(29, 8, 'login', 'Login efetuado com sucesso', '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-20 20:38:35'),
(30, 8, 'login', 'Login efetuado com sucesso', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 12:10:04'),
(31, 8, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 15:00:03'),
(32, 8, 'login', 'Login efetuado com sucesso', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 15:00:22'),
(33, 8, 'login', 'Login efetuado com sucesso', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 20:57:23'),
(34, 8, 'login', 'Login efetuado com sucesso', '87.196.80.49', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', '2025-12-22 21:55:52'),
(35, 8, 'login_remember_me', 'Login automático via Remember Me', '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 10:58:59'),
(36, 8, 'login_remember_me', 'Login automático via Remember Me', '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 10:58:59'),
(37, 8, 'login', 'Login efetuado com sucesso', '2001:8a0:f759:f200:57f:13f9:339e:d496', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', '2025-12-23 13:04:19'),
(38, 8, 'login', 'Login efetuado com sucesso', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 22:31:59'),
(39, 8, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 22:42:37'),
(40, 8, 'login', 'Login efetuado com sucesso', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 22:43:25'),
(41, 8, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 22:43:43'),
(42, 8, 'login_code', 'Login via código de verificação', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 22:59:17'),
(43, 8, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 22:59:21'),
(44, 8, 'login', 'Login efetuado com sucesso', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 22:59:41'),
(45, 8, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 22:59:52'),
(46, 8, 'login_code', 'Login via código de verificação', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:00:28'),
(47, 8, 'totp_enabled', 'TOTP (Google Authenticator) activado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:37:58'),
(48, 8, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:38:13'),
(49, 8, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:43:10'),
(50, 8, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:46:26'),
(51, 8, 'login_totp', 'Login via TOTP (Google Authenticator)', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:46:46'),
(52, 8, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:46:54'),
(53, 8, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:47:57'),
(54, 8, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:53:46'),
(55, 8, 'login_totp', 'Login via TOTP (Google Authenticator)', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:54:13'),
(56, 8, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:54:23'),
(57, 8, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 23:58:52'),
(58, 8, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:02:49'),
(59, 8, 'login_totp', 'Login via TOTP (Google Authenticator)', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:03:08'),
(60, 8, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:03:12'),
(61, 8, 'login_totp', 'Login via TOTP (Google Authenticator)', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:03:25'),
(62, 8, 'totp_disabled', 'TOTP (Google Authenticator) desactivado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:03:54'),
(63, 8, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:04:00'),
(64, 8, 'login_code', 'Login via código de verificação', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:04:21'),
(65, 8, 'totp_enabled', 'TOTP (Google Authenticator) activado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:04:57'),
(66, 8, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:05:05'),
(67, 8, 'login_totp', 'Login via TOTP (Google Authenticator)', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 00:05:20'),
(68, 8, 'login_totp', 'Login via TOTP (Google Authenticator)', '87.196.81.2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/143.0.7499.151 Mobile/15E148 Safari/604.1', '2025-12-24 19:07:17'),
(69, 8, 'login_remember_me', 'Login automático via Remember Me', '87.196.81.2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/143.0.7499.151 Mobile/15E148 Safari/604.1', '2025-12-24 19:07:29'),
(70, 8, 'login_remember_me', 'Login automático via Remember Me', '2001:8a0:f74a:b200:b8e8:52c2:986e:11b6', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/143.0.7499.151 Mobile/15E148 Safari/604.1', '2025-12-29 11:30:00'),
(71, 8, 'login_totp', 'Login via TOTP (Google Authenticator)', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 11:52:48'),
(72, 8, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 11:53:02'),
(73, 8, 'login_totp', 'Login via TOTP (Google Authenticator)', '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 11:53:36'),
(74, 8, 'login_remember_me', 'Login automático via Remember Me', '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 14:49:58'),
(75, 8, 'login_remember_me', 'Login automático via Remember Me', '188.81.65.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 14:49:58'),
(76, 10, 'login_code', 'Login via código de verificação', '62.48.215.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-29 15:27:41'),
(77, 10, 'totp_enabled', 'TOTP (Google Authenticator) activado', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-29 15:50:59'),
(78, 10, 'logout', 'Logout efetuado', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-29 15:52:11'),
(79, 10, 'login_totp', 'Login via TOTP (Google Authenticator)', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-29 15:52:39'),
(80, 8, 'logout', 'Logout efetuado', '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 17:28:52'),
(81, 8, 'login_totp', 'Login via TOTP (Google Authenticator)', '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 17:29:19'),
(82, 8, 'logout', 'Logout efetuado', '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 17:29:30'),
(83, 8, 'login_totp', 'Login via TOTP (Google Authenticator)', '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 17:29:48'),
(84, 10, 'login_totp', 'Login via TOTP (Google Authenticator)', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-29 17:37:09'),
(85, 8, 'login_remember_me', 'Login automático via Remember Me', '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 18:30:42'),
(86, 8, 'login_remember_me', 'Login automático via Remember Me', '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 19:00:56'),
(87, 11, 'register', 'Conta criada', '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 20:17:33'),
(88, 11, 'email_verified', 'Email verificado', '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 20:18:07'),
(89, 11, 'login_code', 'Login via código de verificação', '10.8.0.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-29 20:18:38'),
(90, 11, 'login_remember_me', 'Login automático via Remember Me', '10.8.0.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-30 00:33:34'),
(91, 8, 'login_remember_me', 'Login automático via Remember Me', '10.8.0.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-30 00:33:47'),
(92, 8, 'logout', 'Logout efetuado', '10.8.0.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-30 00:49:22'),
(93, 10, 'logout', 'Logout efetuado', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 00:56:30'),
(94, 8, 'login_totp', 'Login via TOTP (Google Authenticator)', '10.8.0.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-30 01:00:55'),
(95, 10, 'password_reset_requested', 'Recuperação de password solicitada', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 01:07:23'),
(96, 10, 'password_reset', 'Password alterada', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 01:08:41'),
(97, 10, 'login_totp', 'Login via TOTP (Google Authenticator)', '10.8.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 01:22:19'),
(98, 10, 'login_remember_me', 'Login automático via Remember Me', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 15:30:29'),
(99, 10, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 16:11:59'),
(102, 10, 'login_totp', 'Login via TOTP (Google Authenticator)', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 16:17:17'),
(103, 10, 'logout', 'Logout efetuado', '10.8.0.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-30 16:17:40');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `vehicle_type_id` int(10) UNSIGNED DEFAULT 1,
  `model` varchar(100) NOT NULL,
  `version` varchar(100) DEFAULT NULL,
  `fuel_type_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED DEFAULT 1,
  `buyer_id` int(10) UNSIGNED DEFAULT NULL,
  `sold_date` datetime DEFAULT NULL,
  `sold_price` decimal(12,2) DEFAULT NULL,
  `sold_mileage` int(10) UNSIGNED DEFAULT NULL,
  `current_mileage` int(10) UNSIGNED DEFAULT NULL,
  `current_mileage_updated_at` datetime DEFAULT NULL,
  `year` year(4) NOT NULL,
  `color` varchar(50) NOT NULL,
  `color_id` int(10) UNSIGNED DEFAULT NULL,
  `mileage` int(10) UNSIGNED DEFAULT 0,
  `doors` tinyint(3) UNSIGNED DEFAULT 5,
  `seats` tinyint(3) UNSIGNED DEFAULT 5,
  `power_hp` smallint(5) UNSIGNED DEFAULT NULL,
  `engine_cc` smallint(5) UNSIGNED DEFAULT NULL,
  `transmission` enum('Manual','Automática') DEFAULT 'Manual',
  `price` decimal(10,2) NOT NULL,
  `previous_price` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`features`)),
  `vin` varchar(17) DEFAULT NULL,
  `license_plate` varchar(10) DEFAULT NULL,
  `views` int(10) UNSIGNED DEFAULT 0,
  `is_featured` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `vehicles`
--

INSERT DELAYED IGNORE INTO `vehicles` (`id`, `brand_id`, `vehicle_type_id`, `model`, `version`, `fuel_type_id`, `status_id`, `buyer_id`, `sold_date`, `sold_price`, `sold_mileage`, `current_mileage`, `current_mileage_updated_at`, `year`, `color`, `color_id`, `mileage`, `doors`, `seats`, `power_hp`, `engine_cc`, `transmission`, `price`, `previous_price`, `description`, `features`, `vin`, `license_plate`, `views`, `is_featured`, `created_at`, `updated_at`) VALUES
(16, 21, 4, 'Bentayga', 'V8', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2021', 'Prateado', 7, 25000, 5, 5, 550, 4000, 'Automática', 285000.00, NULL, 'Bentley Bentayga V8 em excelente estado. O SUV de luxo mais exclusivo do mundo, combinando o conforto e artesanato Bentley com capacidades todo-o-terreno. Interior em couro Mulliner, sistema de som Naim, teto panorâmico, suspensão pneumática adaptativa. Apenas 25.000 km, revisões completas na marca.', NULL, NULL, NULL, 0, 1, '2025-12-22 12:16:16', '2025-12-22 15:32:43'),
(17, 2, 1, 'i8', 'Roadster', 3, 5, 8, '2025-12-29 20:26:05', NULL, 18000, 19000, '2025-12-30 02:28:07', '2019', 'Branco', 3, 18000, 2, 2, 374, 1500, 'Automática', 125000.00, NULL, 'BMW i8 Roadster híbrido plug-in com design futurista. Portas de abertura vertical, teto retrátil elétrico. Sistema híbrido com motor 1.5 turbo + motor elétrico, autonomia elétrica de 50km. Interior em couro exclusivo, Head-Up Display, sistema harman/kardon. Apenas 18.000 km, como novo.', NULL, NULL, NULL, 0, 1, '2025-12-22 12:16:24', '2025-12-30 02:28:07'),
(18, 11, 1, 'AMG GT', 'Black Series', 1, 5, 11, '2025-12-29 20:26:59', 450000.00, 5000, 20000, '2025-12-30 01:59:52', '2021', 'Preto', 8, 5000, 2, 2, 730, 4000, 'Automática', 450000.00, NULL, 'Mercedes-AMG GT Black Series - o AMG GT mais potente de sempre. Motor V8 biturbo de 730cv, aerodinâmica ativa desenvolvida em competição, suspensão ajustável racing. Carbono extensivo no exterior e interior. Unidade rara com apenas 5.000 km. Autêntico carro de corrida homologado para estrada.', NULL, NULL, NULL, 0, 1, '2025-12-22 12:16:31', '2025-12-30 01:59:52'),
(19, 22, 1, 'Portofino', 'Capristo Edition', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2020', 'Vermelho', 10, 12000, 2, 4, 600, 3900, 'Automática', 245000.00, NULL, 'Ferrari Portofino com escape desportivo Capristo em titânio. GT descapotável com teto rígido retrátil, perfeito para todas as estações. Motor V8 biturbo de 600cv, caixa F1 de dupla embraiagem. Interior Daytona em couro premium, Apple CarPlay, câmaras 360°. Manutenção em dia.', NULL, NULL, NULL, 0, 1, '2025-12-22 12:16:39', '2025-12-22 15:32:44'),
(20, 23, 1, 'Huracan', 'Spyder LP610-4', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017', 'Preto', 8, 22000, 2, 2, 610, 5200, 'Automática', 285000.00, NULL, 'Lamborghini Huracán Spyder LP610-4 com motor V10 atmosférico de 5.2L e 610cv. Tração integral, caixa LDF de 7 velocidades. Teto em lona com abertura elétrica em 17 segundos. Sistema de escape com válvulas, som inconfundível. Interior Alcantara bicolor. Todas as revisões na Lamborghini.', NULL, NULL, NULL, 0, 1, '2025-12-22 12:16:46', '2025-12-22 15:32:44'),
(21, 24, 1, '911', 'GT2 RS Weissach Package', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2018', 'Amarelo', 1, 8000, 2, 2, 700, 3800, 'Automática', 485000.00, NULL, 'Porsche 911 GT2 RS com pacote Weissach - o 911 mais potente e radical de sempre. Motor boxer biturbo de 700cv, peso reduzido com componentes em carbono e magnésio. Recorde de Nürburgring para carros de produção. Jantes em magnésio, roll-cage, bucket seats em carbono. Colecionável com apenas 8.000 km.', NULL, NULL, NULL, 0, 1, '2025-12-22 12:16:53', '2025-12-22 15:32:44'),
(22, 12, 1, 'GT-R', 'Premium Edition', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2012', 'Branco', 3, 45000, 2, 4, 550, 3800, 'Automática', 85000.00, NULL, 'Nissan GT-R R35 Premium Edition - o lendário Godzilla. Motor VR38DETT V6 biturbo de 3.8L com 550cv, tração integral ATTESA E-TS, caixa de dupla embraiagem GR6. Sistema de lançamento, 0-100 km/h em 2.9 segundos. Interior em couro semi-aniline, Bose sound system.', NULL, NULL, NULL, 0, 1, '2025-12-22 12:17:01', '2025-12-22 15:32:44'),
(23, 25, 1, 'XKR-S', 'GT 1 of 25', 1, 5, 8, '2025-12-29 20:26:05', NULL, 15000, 17000, '2025-12-30 02:17:55', '2014', 'Cinza', 3, 15000, 2, 2, 550, 5000, 'Automática', 195000.00, NULL, 'Jaguar XKR-S GT - 1 de apenas 25 unidades produzidas mundialmente. Motor V8 5.0 Supercharged de 550cv, a versão mais extrema do XK. Aerodinâmica de competição com splitter frontal em carbono, difusor traseiro e asa ajustável. Suspensão racing, travões Alcon. Peça de coleção absolutamente rara.', NULL, NULL, NULL, 0, 1, '2025-12-22 12:17:09', '2025-12-30 02:17:55'),
(24, 26, 2, '996S', 'Factory Replica', 1, 5, 10, '2025-12-29 17:33:59', 35000.00, 28000, NULL, NULL, '2000', 'Vermelho', 10, 28000, NULL, 2, 123, 996, 'Manual', 35000.00, NULL, 'Ducati 996S Factory Replica - lendária superbike italiana de coleção. Réplica da mota que dominou o Mundial de Superbikes com Carl Fogarty. Motor L-Twin Testastretta de 996cc e 123cv, quadro treliçado em cromoly. Carenagem em fibra com pintura Factory Tricolore. Apenas 28.000 km, toda original.', NULL, NULL, NULL, 0, 1, '2025-12-22 12:17:17', '2025-12-29 17:33:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vehicle_colors`
--

DROP TABLE IF EXISTS `vehicle_colors`;
CREATE TABLE `vehicle_colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `hex_code` varchar(7) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `vehicle_colors`
--

INSERT DELAYED IGNORE INTO `vehicle_colors` (`id`, `name`, `hex_code`, `is_active`, `created_at`) VALUES
(1, 'Amarelo', '#FFD700', 1, '2025-12-22 15:32:39'),
(2, 'Azul', '#0066CC', 1, '2025-12-22 15:32:39'),
(3, 'Branco', '#FFFFFF', 1, '2025-12-22 15:32:39'),
(4, 'Castanho', '#8B4513', 1, '2025-12-22 15:32:39'),
(5, 'Cinza', '#808080', 1, '2025-12-22 15:32:39'),
(6, 'Laranja', '#FF8C00', 1, '2025-12-22 15:32:39'),
(7, 'Prateado', '#C0C0C0', 1, '2025-12-22 15:32:39'),
(8, 'Preto', '#000000', 1, '2025-12-22 15:32:39'),
(9, 'Verde', '#228B22', 1, '2025-12-22 15:32:39'),
(10, 'Vermelho', '#DC143C', 1, '2025-12-22 15:32:39'),
(11, 'Dourado', '#DAA520', 1, '2025-12-22 15:32:39'),
(12, 'Bege', '#F5F5DC', 1, '2025-12-22 15:32:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vehicle_documents`
--

DROP TABLE IF EXISTS `vehicle_documents`;
CREATE TABLE `vehicle_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` enum('fatura','contrato','ficha_tecnica','seguro','iuc','inspecao','outro') NOT NULL,
  `filename` varchar(255) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `file_size` int(10) UNSIGNED NOT NULL,
  `uploaded_at` timestamp NULL DEFAULT current_timestamp(),
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `vehicle_documents`
--

INSERT DELAYED IGNORE INTO `vehicle_documents` (`id`, `vehicle_id`, `user_id`, `type`, `filename`, `original_name`, `file_size`, `uploaded_at`, `notes`) VALUES
(1, 18, 8, 'seguro', 'doc_6952bd7e5e389_1767030142.pdf', 'Bilhete Travis Scott.pdf', 235983, '2025-12-29 17:42:22', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vehicle_features`
--

DROP TABLE IF EXISTS `vehicle_features`;
CREATE TABLE `vehicle_features` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `feature_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vehicle_images`
--

DROP TABLE IF EXISTS `vehicle_images`;
CREATE TABLE `vehicle_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(255) NOT NULL,
  `original_name` varchar(255) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `sort_order` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `vehicle_images`
--

INSERT DELAYED IGNORE INTO `vehicle_images` (`id`, `vehicle_id`, `filename`, `original_name`, `is_primary`, `sort_order`, `created_at`) VALUES
(166, 24, '6949565e63f26_1766413918.jpg', NULL, 1, 0, '2025-12-22 14:31:58'),
(167, 24, '6949565e72ad5_1766413918.jpg', NULL, 0, 0, '2025-12-22 14:31:58'),
(168, 24, '6949565eb61f4_1766413918.jpg', NULL, 0, 0, '2025-12-22 14:31:58'),
(169, 24, '6949565ebc1a3_1766413918.jpg', NULL, 0, 0, '2025-12-22 14:31:58'),
(170, 24, '6949565ec21ef_1766413918.jpg', NULL, 0, 0, '2025-12-22 14:31:58'),
(171, 24, '6949565ec81f2_1766413918.jpg', NULL, 0, 0, '2025-12-22 14:31:58'),
(172, 24, '6949565ece223_1766413918.jpg', NULL, 0, 0, '2025-12-22 14:31:58'),
(173, 24, '6949565ed6d99_1766413918.jpg', NULL, 0, 0, '2025-12-22 14:31:58'),
(174, 24, '6949565edf8ee_1766413918.jpg', NULL, 0, 0, '2025-12-22 14:31:58'),
(175, 23, '69495672bac3b_1766413938.jpg', NULL, 1, 0, '2025-12-22 14:32:18'),
(176, 23, '69495672c37f8_1766413938.jpg', NULL, 0, 0, '2025-12-22 14:32:18'),
(177, 23, '69495672d2541_1766413938.jpg', NULL, 0, 0, '2025-12-22 14:32:18'),
(178, 23, '69495672e107f_1766413938.jpg', NULL, 0, 0, '2025-12-22 14:32:18'),
(179, 23, '694956730452e_1766413939.jpg', NULL, 0, 0, '2025-12-22 14:32:19'),
(180, 23, '694956730d080_1766413939.jpg', NULL, 0, 0, '2025-12-22 14:32:19'),
(181, 23, '6949567315c33_1766413939.jpg', NULL, 0, 0, '2025-12-22 14:32:19'),
(182, 23, '694956731bca1_1766413939.jpg', NULL, 0, 0, '2025-12-22 14:32:19'),
(183, 23, '6949567321c31_1766413939.jpg', NULL, 0, 0, '2025-12-22 14:32:19'),
(184, 23, '694956732dd01_1766413939.jpg', NULL, 0, 0, '2025-12-22 14:32:19'),
(185, 23, '69495673368c1_1766413939.jpg', NULL, 0, 0, '2025-12-22 14:32:19'),
(186, 23, '694956733f4d6_1766413939.jpg', NULL, 0, 0, '2025-12-22 14:32:19'),
(187, 23, '6949567348026_1766413939.jpg', NULL, 0, 0, '2025-12-22 14:32:19'),
(188, 23, '694956734e034_1766413939.jpg', NULL, 0, 0, '2025-12-22 14:32:19'),
(189, 22, '6949568ce3a85_1766413964.jpg', NULL, 1, 0, '2025-12-22 14:32:44'),
(190, 22, '6949568ce9aca_1766413964.jpg', NULL, 0, 0, '2025-12-22 14:32:44'),
(191, 22, '6949568cefb1b_1766413964.jpg', NULL, 0, 0, '2025-12-22 14:32:44'),
(192, 22, '6949568d0a5ad_1766413965.jpg', NULL, 0, 0, '2025-12-22 14:32:45'),
(193, 22, '6949568d250f9_1766413965.jpg', NULL, 0, 0, '2025-12-22 14:32:45'),
(194, 22, '6949568d37231_1766413965.jpg', NULL, 0, 0, '2025-12-22 14:32:45'),
(195, 22, '6949568d3fd44_1766413965.jpg', NULL, 0, 0, '2025-12-22 14:32:45'),
(196, 22, '6949568d45d34_1766413965.jpg', NULL, 0, 0, '2025-12-22 14:32:45'),
(197, 22, '6949568d4bd9f_1766413965.jpg', NULL, 0, 0, '2025-12-22 14:32:45'),
(198, 22, '6949568d548f5_1766413965.jpg', NULL, 0, 0, '2025-12-22 14:32:45'),
(199, 22, '6949568d5d506_1766413965.jpg', NULL, 0, 0, '2025-12-22 14:32:45'),
(200, 22, '6949568d634d1_1766413965.jpg', NULL, 0, 0, '2025-12-22 14:32:45'),
(201, 22, '6949568d69582_1766413965.jpg', NULL, 0, 0, '2025-12-22 14:32:45'),
(202, 22, '6949568d720cf_1766413965.jpg', NULL, 0, 0, '2025-12-22 14:32:45'),
(203, 22, '6949568d7ac78_1766413965.jpg', NULL, 0, 0, '2025-12-22 14:32:45'),
(204, 22, '6949568dadf87_1766413965.jpg', NULL, 0, 0, '2025-12-22 14:32:45'),
(205, 21, '694956a51f5c1_1766413989.jpg', NULL, 1, 0, '2025-12-22 14:33:09'),
(206, 21, '694956a52d6cd_1766413989.jpg', NULL, 0, 0, '2025-12-22 14:33:09'),
(207, 21, '694956a536307_1766413989.jpg', NULL, 0, 0, '2025-12-22 14:33:09'),
(208, 21, '694956a53f094_1766413989.jpg', NULL, 0, 0, '2025-12-22 14:33:09'),
(209, 21, '694956a547f93_1766413989.jpg', NULL, 0, 0, '2025-12-22 14:33:09'),
(210, 21, '694956a5531c5_1766413989.jpg', NULL, 0, 0, '2025-12-22 14:33:09'),
(211, 21, '694956a56d484_1766413989.jpg', NULL, 0, 0, '2025-12-22 14:33:09'),
(212, 21, '694956a57c06b_1766413989.jpg', NULL, 0, 0, '2025-12-22 14:33:09'),
(213, 21, '694956a584be1_1766413989.jpg', NULL, 0, 0, '2025-12-22 14:33:09'),
(214, 21, '694956a58abdb_1766413989.jpg', NULL, 0, 0, '2025-12-22 14:33:09'),
(215, 21, '694956a590c7a_1766413989.jpg', NULL, 0, 0, '2025-12-22 14:33:09'),
(216, 21, '694956a599841_1766413989.jpg', NULL, 0, 0, '2025-12-22 14:33:09'),
(217, 21, '694956a59f861_1766413989.jpg', NULL, 0, 0, '2025-12-22 14:33:09'),
(218, 21, '694956a5a5845_1766413989.jpg', NULL, 0, 0, '2025-12-22 14:33:09'),
(219, 21, '694956a5ab98c_1766413989.jpg', NULL, 0, 0, '2025-12-22 14:33:09'),
(220, 21, '694956a5b1c63_1766413989.jpg', NULL, 0, 0, '2025-12-22 14:33:09'),
(221, 21, '694956a5c0480_1766413989.jpg', NULL, 0, 0, '2025-12-22 14:33:09'),
(222, 21, '694956a5c90f0_1766413989.jpg', NULL, 0, 0, '2025-12-22 14:33:09'),
(223, 21, '694956a5d1c8f_1766413989.jpg', NULL, 0, 0, '2025-12-22 14:33:09'),
(224, 21, '694956a5d7d1b_1766413989.jpg', NULL, 0, 0, '2025-12-22 14:33:09'),
(225, 21, '694956a5e07d2_1766413989.jpg', NULL, 0, 0, '2025-12-22 14:33:09'),
(226, 20, '694956b96b340_1766414009.jpg', NULL, 1, 0, '2025-12-22 14:33:29'),
(227, 20, '694956b973eb2_1766414009.jpg', NULL, 0, 0, '2025-12-22 14:33:29'),
(228, 20, '694956b982a86_1766414009.jpg', NULL, 0, 0, '2025-12-22 14:33:29'),
(229, 20, '694956b98b5f6_1766414009.jpg', NULL, 0, 0, '2025-12-22 14:33:29'),
(230, 20, '694956b9916b8_1766414009.jpg', NULL, 0, 0, '2025-12-22 14:33:29'),
(231, 20, '694956b99a1f2_1766414009.jpg', NULL, 0, 0, '2025-12-22 14:33:29'),
(232, 20, '694956b9a2dd0_1766414009.jpg', NULL, 0, 0, '2025-12-22 14:33:29'),
(233, 20, '694956b9a8e24_1766414009.jpg', NULL, 0, 0, '2025-12-22 14:33:29'),
(234, 20, '694956b9aedf4_1766414009.jpg', NULL, 0, 0, '2025-12-22 14:33:29'),
(235, 20, '694956b9c3aee_1766414009.jpg', NULL, 0, 0, '2025-12-22 14:33:29'),
(236, 20, '694956b9cc694_1766414009.jpg', NULL, 0, 0, '2025-12-22 14:33:29'),
(237, 20, '694956b9d2661_1766414009.jpg', NULL, 0, 0, '2025-12-22 14:33:29'),
(238, 19, '694956ce00bc3_1766414030.jpg', NULL, 1, 0, '2025-12-22 14:33:50'),
(239, 19, '694956ce06b0b_1766414030.jpg', NULL, 0, 0, '2025-12-22 14:33:50'),
(240, 19, '694956ce0f6fe_1766414030.jpg', NULL, 0, 0, '2025-12-22 14:33:50'),
(241, 19, '694956ce1569b_1766414030.jpg', NULL, 0, 0, '2025-12-22 14:33:50'),
(242, 19, '694956ce1b775_1766414030.jpg', NULL, 0, 0, '2025-12-22 14:33:50'),
(243, 19, '694956ce2a3b7_1766414030.jpg', NULL, 0, 0, '2025-12-22 14:33:50'),
(244, 19, '694956ce59cf0_1766414030.jpg', NULL, 0, 0, '2025-12-22 14:33:50'),
(245, 19, '694956ce6274f_1766414030.jpg', NULL, 0, 0, '2025-12-22 14:33:50'),
(246, 19, '694956ce71327_1766414030.jpg', NULL, 0, 0, '2025-12-22 14:33:50'),
(247, 19, '694956ce79eac_1766414030.jpg', NULL, 0, 0, '2025-12-22 14:33:50'),
(248, 19, '694956ce7ff32_1766414030.jpg', NULL, 0, 0, '2025-12-22 14:33:50'),
(249, 19, '694956ce85fa5_1766414030.jpg', NULL, 0, 0, '2025-12-22 14:33:50'),
(250, 19, '694956ce8bf55_1766414030.jpg', NULL, 0, 0, '2025-12-22 14:33:50'),
(251, 19, '694956ce91fe4_1766414030.jpg', NULL, 0, 0, '2025-12-22 14:33:50'),
(252, 18, '694956e0f0dcd_1766414048.jpg', NULL, 1, 0, '2025-12-22 14:34:08'),
(253, 18, '694956e108221_1766414049.jpg', NULL, 0, 0, '2025-12-22 14:34:09'),
(254, 18, '694956e122635_1766414049.jpg', NULL, 0, 0, '2025-12-22 14:34:09'),
(255, 18, '694956e12b3cf_1766414049.jpg', NULL, 0, 0, '2025-12-22 14:34:09'),
(256, 18, '694956e139dcd_1766414049.jpg', NULL, 0, 0, '2025-12-22 14:34:09'),
(257, 18, '694956e142ab8_1766414049.jpg', NULL, 0, 0, '2025-12-22 14:34:09'),
(258, 18, '694956e14893a_1766414049.jpg', NULL, 0, 0, '2025-12-22 14:34:09'),
(259, 18, '694956e14e98b_1766414049.jpg', NULL, 0, 0, '2025-12-22 14:34:09'),
(260, 18, '694956e1549f7_1766414049.jpg', NULL, 0, 0, '2025-12-22 14:34:09'),
(261, 18, '694956e15a990_1766414049.jpg', NULL, 0, 0, '2025-12-22 14:34:09'),
(262, 18, '694956e160ae7_1766414049.jpg', NULL, 0, 0, '2025-12-22 14:34:09'),
(263, 18, '694956e166aa9_1766414049.jpg', NULL, 0, 0, '2025-12-22 14:34:09'),
(264, 18, '694956e16cae2_1766414049.jpg', NULL, 0, 0, '2025-12-22 14:34:09'),
(265, 18, '694956e18abb6_1766414049.jpg', NULL, 0, 0, '2025-12-22 14:34:09'),
(266, 18, '694956e19993b_1766414049.jpg', NULL, 0, 0, '2025-12-22 14:34:09'),
(267, 18, '694956e1a86f5_1766414049.jpg', NULL, 0, 0, '2025-12-22 14:34:09'),
(268, 18, '694956e1b6f98_1766414049.jpg', NULL, 0, 0, '2025-12-22 14:34:09'),
(269, 18, '694956e1c5bee_1766414049.jpg', NULL, 0, 0, '2025-12-22 14:34:09'),
(270, 18, '694956e1ce662_1766414049.jpg', NULL, 0, 0, '2025-12-22 14:34:09'),
(271, 17, '694956f37c5c7_1766414067.jpg', NULL, 1, 0, '2025-12-22 14:34:27'),
(272, 17, '694956f38b1f8_1766414067.jpg', NULL, 0, 0, '2025-12-22 14:34:27'),
(273, 17, '694956f3abe5d_1766414067.jpg', NULL, 0, 0, '2025-12-22 14:34:27'),
(274, 17, '694956f3ba9a5_1766414067.jpg', NULL, 0, 0, '2025-12-22 14:34:27'),
(275, 17, '694956f3c34e8_1766414067.jpg', NULL, 0, 0, '2025-12-22 14:34:27'),
(276, 17, '694956f3c9551_1766414067.jpg', NULL, 0, 0, '2025-12-22 14:34:27'),
(277, 17, '694956f3cf4ee_1766414067.jpg', NULL, 0, 0, '2025-12-22 14:34:27'),
(278, 17, '694956f3d55a2_1766414067.jpg', NULL, 0, 0, '2025-12-22 14:34:27'),
(279, 17, '694956f3db5bf_1766414067.jpg', NULL, 0, 0, '2025-12-22 14:34:27'),
(280, 17, '694956f3e162d_1766414067.jpg', NULL, 0, 0, '2025-12-22 14:34:27'),
(281, 17, '694956f3e75da_1766414067.jpg', NULL, 0, 0, '2025-12-22 14:34:27'),
(282, 17, '694956f3ed660_1766414067.jpg', NULL, 0, 0, '2025-12-22 14:34:27'),
(283, 17, '694956f3f387b_1766414067.jpg', NULL, 0, 0, '2025-12-22 14:34:27'),
(284, 17, '694956f4054c2_1766414068.jpg', NULL, 0, 0, '2025-12-22 14:34:28'),
(285, 17, '694956f411540_1766414068.jpg', NULL, 0, 0, '2025-12-22 14:34:28'),
(286, 17, '694956f41a115_1766414068.jpg', NULL, 0, 0, '2025-12-22 14:34:28'),
(287, 17, '694956f42011c_1766414068.jpg', NULL, 0, 0, '2025-12-22 14:34:28'),
(288, 16, '6949570843153_1766414088.jpg', NULL, 1, 0, '2025-12-22 14:34:48'),
(289, 16, '694957084bd12_1766414088.jpg', NULL, 0, 0, '2025-12-22 14:34:48'),
(290, 16, '6949570851d88_1766414088.jpg', NULL, 0, 0, '2025-12-22 14:34:48'),
(291, 16, '6949570857da5_1766414088.jpg', NULL, 0, 0, '2025-12-22 14:34:48'),
(292, 16, '6949570866ad4_1766414088.jpg', NULL, 0, 0, '2025-12-22 14:34:48'),
(293, 16, '694957086f5ed_1766414088.jpg', NULL, 0, 0, '2025-12-22 14:34:48'),
(294, 16, '694957087556b_1766414088.jpg', NULL, 0, 0, '2025-12-22 14:34:48'),
(295, 16, '694957087b5c5_1766414088.jpg', NULL, 0, 0, '2025-12-22 14:34:48'),
(296, 16, '69495708815db_1766414088.jpg', NULL, 0, 0, '2025-12-22 14:34:48'),
(297, 16, '694957088762c_1766414088.jpg', NULL, 0, 0, '2025-12-22 14:34:48'),
(298, 16, '69495708901c7_1766414088.jpg', NULL, 0, 0, '2025-12-22 14:34:48');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vehicle_maintenance`
--

DROP TABLE IF EXISTS `vehicle_maintenance`;
CREATE TABLE `vehicle_maintenance` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('revisao','inspecao','reparacao','pneus','travoes','outro') NOT NULL,
  `description` varchar(255) NOT NULL,
  `mileage` int(10) UNSIGNED DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `service_date` date NOT NULL,
  `next_date` date DEFAULT NULL,
  `next_mileage` int(10) UNSIGNED DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `vehicle_maintenance`
--

INSERT DELAYED IGNORE INTO `vehicle_maintenance` (`id`, `vehicle_id`, `user_id`, `type`, `description`, `mileage`, `cost`, `service_date`, `next_date`, `next_mileage`, `notes`, `created_at`) VALUES
(1, 18, NULL, 'revisao', 'Revisao completa', 7500, 186.00, '2025-12-28', NULL, NULL, '', '2025-12-29 17:43:04'),
(4, 18, 11, 'reparacao', 'Mudar o oleo', 8000, 350.00, '2025-12-30', NULL, NULL, 'Completo', '2025-12-30 01:53:25');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vehicle_status`
--

DROP TABLE IF EXISTS `vehicle_status`;
CREATE TABLE `vehicle_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `color` varchar(7) DEFAULT '#6c757d',
  `show_public` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `vehicle_status`
--

INSERT DELAYED IGNORE INTO `vehicle_status` (`id`, `name`, `color`, `show_public`) VALUES
(1, 'Disponível', '#28a745', 1),
(2, 'Indisponível', '#dc3545', 0),
(3, 'Brevemente', '#ffc107', 1),
(4, 'Reservado', '#17a2b8', 1),
(5, 'Vendido', '#6c757d', 1),
(6, 'Em manutenção', '#6c757d', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vehicle_types`
--

DROP TABLE IF EXISTS `vehicle_types`;
CREATE TABLE `vehicle_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `has_doors` tinyint(1) DEFAULT 1,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `vehicle_types`
--

INSERT DELAYED IGNORE INTO `vehicle_types` (`id`, `name`, `has_doors`, `is_active`, `created_at`) VALUES
(1, 'Carro', 1, 1, '2025-12-22 14:41:26'),
(2, 'Mota', 0, 1, '2025-12-22 14:41:26'),
(3, 'Carrinha', 1, 1, '2025-12-22 14:41:26'),
(4, 'SUV', 1, 1, '2025-12-22 14:41:26'),
(5, 'Jeep', 1, 1, '2025-12-22 14:41:26');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vehicle_waiting_list`
--

DROP TABLE IF EXISTS `vehicle_waiting_list`;
CREATE TABLE `vehicle_waiting_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `notified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `vehicle_waiting_list`
--

INSERT DELAYED IGNORE INTO `vehicle_waiting_list` (`id`, `vehicle_id`, `user_id`, `email`, `name`, `phone`, `notes`, `notified_at`, `created_at`) VALUES
(1, 23, 8, 'hugo.correia@fsociety.pt', 'Hugo Correia', '918 305 379', NULL, '2025-12-29 18:01:58', '2025-12-29 17:39:42');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user` (`user_id`),
  ADD KEY `idx_action` (`action`),
  ADD KEY `idx_entity` (`entity_type`,`entity_id`),
  ADD KEY `idx_created` (`created_at`);

--
-- Índices para tabela `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `closed_days`
--
ALTER TABLE `closed_days`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `closed_date` (`closed_date`);

--
-- Índices para tabela `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `idx_read` (`is_read`),
  ADD KEY `idx_created` (`created_at`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Índices para tabela `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `idx_message` (`message_id`),
  ADD KEY `idx_created` (`created_at`);

--
-- Índices para tabela `email_history`
--
ALTER TABLE `email_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_changed_at` (`changed_at`);

--
-- Índices para tabela `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_favorite` (`user_id`,`vehicle_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Índices para tabela `favorite_sold_notifications`
--
ALTER TABLE `favorite_sold_notifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_notification` (`user_id`,`vehicle_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Índices para tabela `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_feature` (`name`,`category`);

--
-- Índices para tabela `fuel_types`
--
ALTER TABLE `fuel_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ip` (`ip_address`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_created` (`created_at`),
  ADD KEY `idx_ip_created` (`ip_address`,`created_at`);

--
-- Índices para tabela `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_login_at` (`login_at`),
  ADD KEY `idx_ip_address` (`ip_address`);

--
-- Índices para tabela `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices para tabela `login_tokens`
--
ALTER TABLE `login_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `idx_token` (`token`),
  ADD KEY `idx_expires` (`expires_at`);

--
-- Índices para tabela `maintenance_reminders`
--
ALTER TABLE `maintenance_reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `idx_pending_reminders` (`sent_at`,`reminder_date`);

--
-- Índices para tabela `negotiation_messages`
--
ALTER TABLE `negotiation_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_request` (`request_id`),
  ADD KEY `idx_created` (`created_at`);

--
-- Índices para tabela `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_unread` (`user_id`,`is_read`),
  ADD KEY `idx_created` (`created_at`);

--
-- Índices para tabela `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vehicle` (`vehicle_id`),
  ADD KEY `idx_user` (`user_id`),
  ADD KEY `idx_status` (`status`);

--
-- Índices para tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `security_logs`
--
ALTER TABLE `security_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_event_type` (`event_type`),
  ADD KEY `idx_severity` (`severity`),
  ADD KEY `idx_created_at` (`created_at`),
  ADD KEY `idx_ip_address` (`ip_address`),
  ADD KEY `idx_user_event` (`user_id`,`event_type`);

--
-- Índices para tabela `sell_trade_requests`
--
ALTER TABLE `sell_trade_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_user_requests` (`user_id`);

--
-- Índices para tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Índices para tabela `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`);

--
-- Índices para tabela `test_drives`
--
ALTER TABLE `test_drives`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_slot` (`scheduled_date`,`scheduled_time`),
  ADD KEY `idx_user` (`user_id`),
  ADD KEY `idx_vehicle` (`vehicle_id`),
  ADD KEY `idx_date` (`scheduled_date`),
  ADD KEY `idx_status` (`status_id`),
  ADD KEY `idx_review_pending` (`status_id`,`review_email_sent`);

--
-- Índices para tabela `test_drive_status`
--
ALTER TABLE `test_drive_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_remember_token` (`remember_token`),
  ADD KEY `idx_reset_token` (`reset_token`);

--
-- Índices para tabela `user_activity`
--
ALTER TABLE `user_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_action` (`action`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Índices para tabela `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fuel_type_id` (`fuel_type_id`),
  ADD KEY `idx_brand` (`brand_id`),
  ADD KEY `idx_status` (`status_id`),
  ADD KEY `idx_price` (`price`),
  ADD KEY `idx_year` (`year`),
  ADD KEY `idx_featured` (`is_featured`),
  ADD KEY `idx_vehicle_type` (`vehicle_type_id`),
  ADD KEY `idx_color` (`color_id`),
  ADD KEY `idx_buyer` (`buyer_id`);
ALTER TABLE `vehicles` ADD FULLTEXT KEY `idx_search` (`model`,`description`);

--
-- Índices para tabela `vehicle_colors`
--
ALTER TABLE `vehicle_colors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `vehicle_documents`
--
ALTER TABLE `vehicle_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vehicle_docs` (`vehicle_id`),
  ADD KEY `idx_user_docs` (`user_id`);

--
-- Índices para tabela `vehicle_features`
--
ALTER TABLE `vehicle_features`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_vehicle_feature` (`vehicle_id`,`feature_id`),
  ADD KEY `fk_vehicle_features_feature` (`feature_id`);

--
-- Índices para tabela `vehicle_images`
--
ALTER TABLE `vehicle_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vehicle` (`vehicle_id`),
  ADD KEY `idx_primary` (`is_primary`);

--
-- Índices para tabela `vehicle_maintenance`
--
ALTER TABLE `vehicle_maintenance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vehicle_maint` (`vehicle_id`),
  ADD KEY `idx_next_date` (`next_date`),
  ADD KEY `fk_maintenance_user` (`user_id`);

--
-- Índices para tabela `vehicle_status`
--
ALTER TABLE `vehicle_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `vehicle_types`
--
ALTER TABLE `vehicle_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `vehicle_waiting_list`
--
ALTER TABLE `vehicle_waiting_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_waiting` (`vehicle_id`,`email`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de tabela `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `closed_days`
--
ALTER TABLE `closed_days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `email_history`
--
ALTER TABLE `email_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `favorite_sold_notifications`
--
ALTER TABLE `favorite_sold_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `fuel_types`
--
ALTER TABLE `fuel_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de tabela `login_history`
--
ALTER TABLE `login_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT de tabela `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `login_tokens`
--
ALTER TABLE `login_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `maintenance_reminders`
--
ALTER TABLE `maintenance_reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `negotiation_messages`
--
ALTER TABLE `negotiation_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `security_logs`
--
ALTER TABLE `security_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de tabela `sell_trade_requests`
--
ALTER TABLE `sell_trade_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `test_drives`
--
ALTER TABLE `test_drives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `test_drive_status`
--
ALTER TABLE `test_drive_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `user_activity`
--
ALTER TABLE `user_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de tabela `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `vehicle_colors`
--
ALTER TABLE `vehicle_colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `vehicle_documents`
--
ALTER TABLE `vehicle_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `vehicle_features`
--
ALTER TABLE `vehicle_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `vehicle_images`
--
ALTER TABLE `vehicle_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT de tabela `vehicle_maintenance`
--
ALTER TABLE `vehicle_maintenance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `vehicle_status`
--
ALTER TABLE `vehicle_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `vehicle_types`
--
ALTER TABLE `vehicle_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `vehicle_waiting_list`
--
ALTER TABLE `vehicle_waiting_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD CONSTRAINT `contact_messages_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD CONSTRAINT `contact_replies_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `contact_messages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contact_replies_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `email_history`
--
ALTER TABLE `email_history`
  ADD CONSTRAINT `email_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `favorite_sold_notifications`
--
ALTER TABLE `favorite_sold_notifications`
  ADD CONSTRAINT `favorite_sold_notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorite_sold_notifications_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `login_history`
--
ALTER TABLE `login_history`
  ADD CONSTRAINT `login_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `login_logs`
--
ALTER TABLE `login_logs`
  ADD CONSTRAINT `login_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `login_tokens`
--
ALTER TABLE `login_tokens`
  ADD CONSTRAINT `login_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `maintenance_reminders`
--
ALTER TABLE `maintenance_reminders`
  ADD CONSTRAINT `maintenance_reminders_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `maintenance_reminders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `negotiation_messages`
--
ALTER TABLE `negotiation_messages`
  ADD CONSTRAINT `negotiation_messages_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `sell_trade_requests` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `sell_trade_requests`
--
ALTER TABLE `sell_trade_requests`
  ADD CONSTRAINT `sell_trade_requests_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sell_trade_requests_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `test_drives`
--
ALTER TABLE `test_drives`
  ADD CONSTRAINT `test_drives_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `test_drives_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `test_drives_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `test_drive_status` (`id`);

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Limitadores para a tabela `user_activity`
--
ALTER TABLE `user_activity`
  ADD CONSTRAINT `user_activity_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `fk_vehicle_buyer` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `vehicles_ibfk_2` FOREIGN KEY (`fuel_type_id`) REFERENCES `fuel_types` (`id`),
  ADD CONSTRAINT `vehicles_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `vehicle_status` (`id`),
  ADD CONSTRAINT `vehicles_ibfk_4` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`);

--
-- Limitadores para a tabela `vehicle_documents`
--
ALTER TABLE `vehicle_documents`
  ADD CONSTRAINT `vehicle_documents_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_documents_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `vehicle_features`
--
ALTER TABLE `vehicle_features`
  ADD CONSTRAINT `fk_vehicle_features_feature` FOREIGN KEY (`feature_id`) REFERENCES `features` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_features_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `vehicle_images`
--
ALTER TABLE `vehicle_images`
  ADD CONSTRAINT `vehicle_images_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `vehicle_maintenance`
--
ALTER TABLE `vehicle_maintenance`
  ADD CONSTRAINT `fk_maintenance_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `vehicle_maintenance_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `vehicle_waiting_list`
--
ALTER TABLE `vehicle_waiting_list`
  ADD CONSTRAINT `vehicle_waiting_list_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_waiting_list_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
