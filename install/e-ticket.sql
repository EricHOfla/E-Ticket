-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2025 at 12:45 PM
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
-- Database: `e-ticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `balance` decimal(28,8) DEFAULT 0.00000000,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `balance`, `email_verified_at`, `image`, `password`, `created_at`, `updated_at`) VALUES
(1, 'HABUMUGISHA Eric', 'ericofla1@gmail.com', 'Ofla', 11640.00000000, NULL, '67db7a13739401742436883.jpg', '$2y$10$f3DBVFyE/mHATJKXTb7.geTwv77U3KqAqQGpeXTKZeNzRekORNy.e', NULL, '2025-03-20 00:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `read_status` tinyint(1) NOT NULL DEFAULT 0,
  `click_url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `user_id`, `title`, `read_status`, `click_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'New member registered', 1, '/admin/user/detail/1', '2025-03-18 10:17:20', '2025-03-19 21:59:02'),
(2, 2, 'New member registered', 1, '/admin/user/detail/2', '2025-03-18 11:09:58', '2025-03-19 21:58:52'),
(3, 3, 'New member registered', 1, '/admin/user/detail/3', '2025-03-19 09:29:47', '2025-03-19 21:58:48'),
(4, 4, 'New member registered', 1, '/admin/user/detail/4', '2025-03-19 17:18:27', '2025-03-19 21:58:57'),
(5, 5, 'New member registered', 1, '/admin/user/detail/5', '2025-03-19 17:53:24', '2025-03-19 21:58:41'),
(6, 3, 'Payment request from mamawacu', 1, '/admin/payment/details/2', '2025-03-20 14:00:23', '2025-03-20 14:18:05'),
(7, 3, 'Payment request from mamawacu', 1, '/admin/payment/details/5', '2025-03-20 14:12:42', '2025-03-20 14:17:56'),
(8, 1, 'Payment request from heshima', 1, '/admin/payment/details/17', '2025-03-20 19:57:20', '2025-03-31 15:35:49'),
(9, 6, 'New member registered', 1, '/admin/user/detail/6', '2025-03-21 08:29:25', '2025-03-21 09:59:29'),
(10, 6, 'Payment request from blaiseimpoze', 1, '/admin/payment/details/18', '2025-03-21 08:32:52', '2025-03-21 08:34:08'),
(11, 5, 'Payment request from Christiann', 1, '/admin/payment/details/19', '2025-03-21 10:16:30', '2025-03-21 10:19:30'),
(12, 3, 'Payment request from mamawacu', 1, '/admin/payment/details/20', '2025-03-27 12:49:44', '2025-03-27 12:50:52'),
(13, 1, 'New support ticket has opened', 1, '/admin/tickets/view/1', '2025-03-27 18:21:03', '2025-03-27 18:59:37'),
(14, 4, 'Payment request from Christian', 1, '/admin/payment/details/21', '2025-04-01 06:57:44', '2025-04-01 07:00:28'),
(15, 4, 'Payment request from Christian', 1, '/admin/payment/details/22', '2025-04-01 07:31:11', '2025-04-01 07:33:33');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(40) NOT NULL,
  `token` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_password_resets`
--

INSERT INTO `admin_password_resets` (`id`, `email`, `token`, `status`, `created_at`, `updated_at`) VALUES
(5, 'ericofla1@gmail.com', '968615', 0, '2025-03-19 08:44:11', NULL),
(6, 'ericofla1@gmail.com', '137399', 0, '2025-03-19 08:48:46', NULL),
(7, 'ericofla1@gmail.com', '935394', 0, '2025-03-19 08:50:26', NULL),
(8, 'ericofla1@gmail.com', '344596', 0, '2025-03-19 08:50:59', NULL),
(9, 'ericofla1@gmail.com', '261400', 0, '2025-03-19 08:51:39', NULL),
(10, 'ericofla1@gmail.com', '568074', 0, '2025-03-19 08:52:44', NULL),
(11, 'ericofla1@gmail.com', '845930', 0, '2025-03-19 08:56:49', NULL),
(12, 'ericofla1@gmail.com', '638323', 0, '2025-03-19 08:59:16', NULL),
(13, 'ericofla1@gmail.com', '550200', 0, '2025-03-19 09:00:11', NULL),
(14, 'ericofla1@gmail.com', '843736', 0, '2025-03-19 09:00:49', NULL),
(15, 'ericofla1@gmail.com', '897420', 0, '2025-03-19 09:04:00', NULL),
(16, 'ericofla1@gmail.com', '570383', 1, '2025-03-19 09:07:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assigned_vehicles`
--

CREATE TABLE `assigned_vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trip_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `vehicle_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `start_from` time DEFAULT NULL,
  `end_at` time DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigned_vehicles`
--

INSERT INTO `assigned_vehicles` (`id`, `trip_id`, `vehicle_id`, `start_from`, `end_at`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '05:00:00', '11:00:00', 1, '2025-03-19 11:19:01', '2025-03-19 11:19:01'),
(2, 2, 2, '05:00:00', '11:00:00', 1, '2025-03-19 20:32:14', '2025-03-19 20:32:14'),
(3, 3, 3, '05:00:00', '08:00:00', 1, '2025-03-20 14:35:36', '2025-03-20 14:35:36');

-- --------------------------------------------------------

--
-- Table structure for table `booked_tickets`
--

CREATE TABLE `booked_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `gender` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `trip_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `source_destination` varchar(40) DEFAULT NULL,
  `pickup_point` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dropping_point` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `seats` varchar(255) DEFAULT NULL,
  `ticket_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unit_price` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `sub_total` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `date_of_journey` date DEFAULT NULL,
  `pnr_number` varchar(40) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booked_tickets`
--

INSERT INTO `booked_tickets` (`id`, `user_id`, `gender`, `trip_id`, `source_destination`, `pickup_point`, `dropping_point`, `seats`, `ticket_count`, `unit_price`, `sub_total`, `date_of_journey`, `pnr_number`, `status`, `created_at`, `updated_at`) VALUES
(14, 6, 1, 2, '[\"1\",\"2\"]', 1, 2, '[\"1-B1\"]', 1, 3742.00000000, 3742.00000000, '2025-03-24', 'A5H992YK52', 1, '2025-03-21 08:32:32', '2025-03-21 08:34:25'),
(15, 5, 1, 2, '[\"1\",\"2\"]', 1, 2, '[\"1-E2\"]', 1, 3742.00000000, 3742.00000000, '2025-03-24', 'O85S2DZOMN', 1, '2025-03-21 10:16:07', '2025-03-21 10:20:00'),
(16, 3, 1, 2, '[\"1\",\"2\"]', 1, 2, '[\"1-D2\"]', 1, 3742.00000000, 3742.00000000, '2025-03-27', '49ECAQMTST', 1, '2025-03-27 12:49:26', '2025-03-27 12:51:02'),
(17, 4, 1, 2, '[\"1\",\"2\"]', 1, 2, '[\"1-D3\"]', 1, 3742.00000000, 3742.00000000, '2025-04-01', 'XV7DAGJQY4', 1, '2025-04-01 06:57:29', '2025-04-01 06:58:43'),
(18, 4, 1, 2, '[\"1\",\"2\"]', 1, 2, '[\"1-E3\"]', 1, 3742.00000000, 3742.00000000, '2025-04-03', 'X4GEVJA68Q', 1, '2025-04-01 07:29:28', '2025-04-01 07:33:42');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `mobile` varchar(40) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `name`, `city`, `location`, `mobile`, `status`, `created_at`, `updated_at`) VALUES
(1, 'kigali', 'kigali', 'rwanda', '0787474684', 1, '2025-03-18 10:47:29', '2025-03-19 11:08:07'),
(2, 'Huye', 'Huye', 'Rwanda', '0785263931', 1, '2025-03-19 11:08:35', '2025-03-19 11:08:35'),
(3, 'Ruhango', 'Ruhango', 'Ruhango', '07888888', 1, '2025-03-20 14:26:40', '2025-03-20 14:26:40');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `booked_ticket_id` int(10) NOT NULL,
  `method_code` int(10) UNSIGNED NOT NULL,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `method_currency` varchar(40) NOT NULL,
  `charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `final_amo` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `detail` text DEFAULT NULL,
  `btc_amo` varchar(255) DEFAULT NULL,
  `btc_wallet` varchar(255) DEFAULT NULL,
  `trx` varchar(40) DEFAULT NULL,
  `try` int(10) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=>success, 2=>pending, 3=>cancel',
  `from_api` tinyint(1) NOT NULL DEFAULT 0,
  `admin_feedback` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `booked_ticket_id`, `method_code`, `amount`, `method_currency`, `charge`, `rate`, `final_amo`, `detail`, `btc_amo`, `btc_wallet`, `trx`, `try`, `status`, `from_api`, `admin_feedback`, `created_at`, `updated_at`) VALUES
(18, 6, 14, 1000, 3742.00000000, 'RWF', 0.00000000, 1.00000000, 3742.00000000, NULL, '0', '', 'HDOR5PROEDTD', 0, 1, 0, NULL, '2025-03-21 08:32:38', '2025-03-21 08:34:25'),
(19, 5, 15, 1000, 3742.00000000, 'RWF', 0.00000000, 1.00000000, 3742.00000000, NULL, '0', '', 'FPR8EZVPW9VA', 0, 1, 0, NULL, '2025-03-21 10:16:17', '2025-03-21 10:19:59'),
(20, 3, 16, 1000, 3742.00000000, 'RWF', 0.00000000, 1.00000000, 3742.00000000, NULL, '0', '', 'U4RAU762P355', 0, 1, 0, NULL, '2025-03-27 12:49:34', '2025-03-27 12:51:02'),
(21, 4, 17, 1000, 3742.00000000, 'RWF', 0.00000000, 1.00000000, 3742.00000000, NULL, '0', '', 'KBSB5G2O39SU', 0, 1, 0, NULL, '2025-04-01 06:57:36', '2025-04-01 06:58:43'),
(22, 4, 18, 1000, 3742.00000000, 'RWF', 0.00000000, 1.00000000, 3742.00000000, NULL, '0', '', '9Q2ACJ2HW5GD', 0, 1, 0, NULL, '2025-04-01 07:30:50', '2025-04-01 07:33:42');

-- --------------------------------------------------------

--
-- Table structure for table `email_logs`
--

CREATE TABLE `email_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `mail_sender` varchar(40) DEFAULT NULL,
  `email_from` varchar(40) DEFAULT NULL,
  `email_to` varchar(40) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_logs`
--

INSERT INTO `email_logs` (`id`, `user_id`, `mail_sender`, `email_from`, `email_to`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'php', 'ViserBus do-not-reply@viserlab.com', 'heshimaahayo@gmail.com', 'Password Reset', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello heshima ahayo nehemie (heshima)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We have received a request to reset the password for your account on <b>19-03-2025 10:12:04 AM .<br></b></div><div>Requested From IP: <b>127.0.0.1</b> using <b>Chrome</b> on <b>Windows 10 </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>245768</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2025-03-19 08:12:05', '2025-03-19 08:12:05'),
(2, 1, 'php', 'ViserBus do-not-reply@viserlab.com', 'ericofla1@gmail.com', 'Password Reset', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello  (Ofla)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We have received a request to reset the password for your account on <b>19-03-2025 10:14:06 AM .<br></b></div><div>Requested From IP: <b>127.0.0.1</b> using <b>Chrome</b> on <b>Windows 10 </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>599062</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2025-03-19 08:14:06', '2025-03-19 08:14:06'),
(3, 1, 'php', 'ViserBus do-not-reply@viserlab.com', 'ericofla1@gmail.com', 'Password Reset', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello  (Ofla)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We have received a request to reset the password for your account on <b>19-03-2025 10:16:28 AM .<br></b></div><div>Requested From IP: <b>127.0.0.1</b> using <b>Chrome</b> on <b>Windows 10 </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>705097</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2025-03-19 08:16:28', '2025-03-19 08:16:28'),
(4, 1, 'php', 'ViserBus do-not-reply@viserlab.com', 'ericofla1@gmail.com', 'Password Reset', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello  (Ofla)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We have received a request to reset the password for your account on <b>19-03-2025 10:39:45 AM .<br></b></div><div>Requested From IP: <b>127.0.0.1</b> using <b>Chrome</b> on <b>Windows 10 </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>981199</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2025-03-19 08:39:45', '2025-03-19 08:39:45'),
(5, 1, 'php', 'ViserBus do-not-reply@viserlab.com', 'ericofla1@gmail.com', 'Password Reset', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello  (Ofla)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We have received a request to reset the password for your account on <b>19-03-2025 10:41:26 AM .<br></b></div><div>Requested From IP: <b>127.0.0.1</b> using <b>Chrome</b> on <b>Windows 10 </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>472993</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2025-03-19 08:41:26', '2025-03-19 08:41:26'),
(6, 1, 'php', 'ViserBus do-not-reply@viserlab.com', 'ericofla1@gmail.com', 'Password Reset', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello  (Ofla)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We have received a request to reset the password for your account on <b>19-03-2025 10:44:12 AM .<br></b></div><div>Requested From IP: <b>127.0.0.1</b> using <b>Chrome</b> on <b>Windows 10 </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>968615</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2025-03-19 08:44:12', '2025-03-19 08:44:12');
INSERT INTO `email_logs` (`id`, `user_id`, `mail_sender`, `email_from`, `email_to`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(7, 1, 'php', 'ViserBus do-not-reply@viserlab.com', 'heshimaahayo@gmail.com', 'Password Reset', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello heshima ahayo nehemie (heshima)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We have received a request to reset the password for your account on <b>19-03-2025 11:06:25 AM .<br></b></div><div>Requested From IP: <b>127.0.0.1</b> using <b>Chrome</b> on <b>Windows 10 </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>724121</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2025-03-19 09:06:25', '2025-03-19 09:06:25'),
(8, 1, 'php', 'ViserBus do-not-reply@viserlab.com', 'heshimaahayo@gmail.com', 'Password Reset', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello heshima ahayo nehemie (heshima)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We have received a request to reset the password for your account on <b>19-03-2025 11:07:44 AM .<br></b></div><div>Requested From IP: <b>127.0.0.1</b> using <b>Chrome</b> on <b>Windows 10 </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>837177</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2025-03-19 09:07:44', '2025-03-19 09:07:44'),
(9, 3, 'php', 'ViserBus do-not-reply@viserlab.com', 'ericofla1@gmail.com', 'Please verify your email address', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello eric ofla (mamawacu)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> 761596</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2025-03-19 09:29:49', '2025-03-19 09:29:49'),
(10, 5, 'smtp', 'ViserBus do-not-reply@viserlab.com', 'chrismerci22@gmail.com', 'Please verify your email address', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello HABUMUGISHA Eric (Christiann)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> 583564</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2025-03-19 17:53:26', '2025-03-19 17:53:26'),
(11, 3, 'smtp', 'E-Ticket heofla2019@gmail.com', 'ericofla1@gmail.com', 'Password Reset', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Email</title>\r\n    <style>\r\n        body { font-family: \'Arial\', sans-serif; background-color: #f4f4f4; margin: 0; padding: 0; }\r\n        .email-container { width: 100%; max-width: 600px; margin: auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); }\r\n        .header { background: #0087ff; color: white; text-align: center; padding: 20px; font-size: 20px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px; }\r\n        .content { padding: 30px; text-align: left; color: #414a51; font-size: 16px; line-height: 1.6; }\r\n        .content h2 { color: #0087ff; }\r\n        .footer { background: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px; }\r\n        .button { background: #0087ff; color: white; padding: 12px 20px; text-decoration: none; font-weight: bold; border-radius: 5px; display: inline-block; margin-top: 20px; }\r\n    </style>\r\n\r\n\r\n    <div class=\"email-container\">\r\n        <!-- Header -->\r\n        <div class=\"header\">E-Ticket Notification</div>\r\n        \r\n        <!-- Content -->\r\n        <div class=\"content\">\r\n            <h2>Hello eric ofla (mamawacu),</h2>\r\n            <p><div>We have received a request to reset the password for your account on <b>19-03-2025 11:02:50 PM .<br></b></div><div>Requested From IP: <b>127.0.0.1</b> using <b>Chrome</b> on <b>Windows 10 </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>254161</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br></p>\r\n            <p>For more details, visit our website.</p>\r\n            <a href=\"#\" class=\"button\">View E-Ticket</a>\r\n        </div>\r\n        \r\n        <!-- Footer -->\r\n        <div class=\"footer\">© 2025 E-Ticket. All Rights Reserved.</div>\r\n    </div>', '2025-03-19 21:02:51', '2025-03-19 21:02:51'),
(12, 3, 'smtp', 'E-Ticket heofla2019@gmail.com', 'ericofla1@gmail.com', 'You have Reset your password', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Email</title>\r\n    <style>\r\n        body { font-family: \'Arial\', sans-serif; background-color: #f4f4f4; margin: 0; padding: 0; }\r\n        .email-container { width: 100%; max-width: 600px; margin: auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); }\r\n        .header { background: #0087ff; color: white; text-align: center; padding: 20px; font-size: 20px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px; }\r\n        .content { padding: 30px; text-align: left; color: #414a51; font-size: 16px; line-height: 1.6; }\r\n        .content h2 { color: #0087ff; }\r\n        .footer { background: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px; }\r\n        .button { background: #0087ff; color: white; padding: 12px 20px; text-decoration: none; font-weight: bold; border-radius: 5px; display: inline-block; margin-top: 20px; }\r\n    </style>\r\n\r\n\r\n    <div class=\"email-container\">\r\n        <!-- Header -->\r\n        <div class=\"header\">E-Ticket Notification</div>\r\n        \r\n        <!-- Content -->\r\n        <div class=\"content\">\r\n            <h2>Hello eric ofla (mamawacu),</h2>\r\n            <p><div><p>\r\n    You have successfully reset your password.</p><p>You changed from&nbsp; IP: <b>127.0.0.1</b> using <b>Chrome</b> on <b>Windows 10&nbsp;</b> on <b>19-03-2025 11:04:33 PM</b></p><p><b><br></b></p><p><font color=\"#FF0000\"><b>If you did not changed that, Please contact with us as soon as possible.</b></font><br></p></div></p>\r\n            <p>For more details, visit our website.</p>\r\n            <a href=\"#\" class=\"button\">View E-Ticket</a>\r\n        </div>\r\n        \r\n        <!-- Footer -->\r\n        <div class=\"footer\">© 2025 E-Ticket. All Rights Reserved.</div>\r\n    </div>', '2025-03-19 21:04:33', '2025-03-19 21:04:33'),
(13, 1, 'smtp', 'E-Ticket heofla2019@gmail.com', 'ericofla1@gmail.com', 'Password Reset', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Email</title>\r\n    <style>\r\n        body { font-family: \'Arial\', sans-serif; background-color: #f4f4f4; margin: 0; padding: 0; }\r\n        .email-container { width: 100%; max-width: 600px; margin: auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); }\r\n        .header { background: #0087ff; color: white; text-align: center; padding: 20px; font-size: 20px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px; }\r\n        .content { padding: 30px; text-align: left; color: #414a51; font-size: 16px; line-height: 1.6; }\r\n        .content h2 { color: #0087ff; }\r\n        .footer { background: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px; }\r\n        .button { background: #0087ff; color: white; padding: 12px 20px; text-decoration: none; font-weight: bold; border-radius: 5px; display: inline-block; margin-top: 20px; }\r\n    </style>\r\n\r\n\r\n    <div class=\"email-container\">\r\n        <!-- Header -->\r\n        <div class=\"header\">E-Ticket Notification</div>\r\n        \r\n        <!-- Content -->\r\n        <div class=\"content\">\r\n            <h2>Hello  (Ofla),</h2>\r\n            <p><div>We have received a request to reset the password for your account on <b>19-03-2025 11:07:37 PM .<br></b></div><div>Requested From IP: <b>127.0.0.1</b> using <b>Chrome</b> on <b>Windows 10 </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>570383</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br></p>\r\n            <p>For more details, visit our website.</p>\r\n            <a href=\"#\" class=\"button\">View E-Ticket</a>\r\n        </div>\r\n        \r\n        <!-- Footer -->\r\n        <div class=\"footer\">© 2025 E-Ticket. All Rights Reserved.</div>\r\n    </div>', '2025-03-19 21:07:37', '2025-03-19 21:07:37'),
(14, 1, 'smtp', 'E-Ticket heofla2019@gmail.com', 'ericofla1@gmail.com', 'You have Reset your password', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Email</title>\r\n    <style>\r\n        body { font-family: \'Arial\', sans-serif; background-color: #f4f4f4; margin: 0; padding: 0; }\r\n        .email-container { width: 100%; max-width: 600px; margin: auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); }\r\n        .header { background: #0087ff; color: white; text-align: center; padding: 20px; font-size: 20px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px; }\r\n        .content { padding: 30px; text-align: left; color: #414a51; font-size: 16px; line-height: 1.6; }\r\n        .content h2 { color: #0087ff; }\r\n        .footer { background: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px; }\r\n        .button { background: #0087ff; color: white; padding: 12px 20px; text-decoration: none; font-weight: bold; border-radius: 5px; display: inline-block; margin-top: 20px; }\r\n    </style>\r\n\r\n\r\n    <div class=\"email-container\">\r\n        <!-- Header -->\r\n        <div class=\"header\">E-Ticket Notification</div>\r\n        \r\n        <!-- Content -->\r\n        <div class=\"content\">\r\n            <h2>Hello  (Ofla),</h2>\r\n            <p><div><p>\r\n    You have successfully reset your password.</p><p>You changed from&nbsp; IP: <b>127.0.0.1</b> using <b>Chrome</b> on <b>Windows 10&nbsp;</b> on <b>19-03-2025 11:08:46 PM</b></p><p><b><br></b></p><p><font color=\"#FF0000\"><b>If you did not changed that, Please contact with us as soon as possible.</b></font><br></p></div></p>\r\n            <p>For more details, visit our website.</p>\r\n            <a href=\"#\" class=\"button\">View E-Ticket</a>\r\n        </div>\r\n        \r\n        <!-- Footer -->\r\n        <div class=\"footer\">© 2025 E-Ticket. All Rights Reserved.</div>\r\n    </div>', '2025-03-19 21:08:46', '2025-03-19 21:08:46'),
(15, 3, 'smtp', 'E-Ticket heofla2019@gmail.com', 'ericofla1@gmail.com', 'Payment Request Submitted Successfully', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Email</title>\r\n    <style>\r\n        body { font-family: \'Arial\', sans-serif; background-color: #f4f4f4; margin: 0; padding: 0; }\r\n        .email-container { width: 100%; max-width: 600px; margin: auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); }\r\n        .header { background: #0087ff; color: white; text-align: center; padding: 20px; font-size: 20px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px; }\r\n        .content { padding: 30px; text-align: left; color: #414a51; font-size: 16px; line-height: 1.6; }\r\n        .content h2 { color: #0087ff; }\r\n        .footer { background: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px; }\r\n        .button { background: #0087ff; color: white; padding: 12px 20px; text-decoration: none; font-weight: bold; border-radius: 5px; display: inline-block; margin-top: 20px; }\r\n    </style>\r\n\r\n\r\n    <div class=\"email-container\">\r\n        <!-- Header -->\r\n        <div class=\"header\">E-Ticket Notification</div>\r\n        \r\n        <!-- Content -->\r\n        <div class=\"content\">\r\n            <h2>Hello eric ofla (mamawacu),</h2>\r\n            <p><div>Your payment request of <b>60.00 RWF</b> is via&nbsp; <b>MTN </b>submitted successfully<b> .<br></b></div><div><b><br></b></div><div><b>Details of your payment :<br></b></div><div><br></div><div>Amount : 60.00 RWF</div><div>Charge: <font color=\"#FF0000\">16.20 RWF</font></div><div><br></div><div>Conversion Rate : 1 RWF = 10.00 RWF</div><div>Payable : 762.00 RWF <br></div><div>Pay via :&nbsp; MTN</div><div><br></div><div>Transaction Number : PAA7THVNY5JE</div><div><br></div><div><b>Pending Booking Information :<br></b></div><div><br></div><div>Date of Journey : 20 03, 2025</div><div>Seats: 1-G2</div><div>Total Seats : 1</div><div>Starting Point : kigali</div><div>Destination : Huye</div></p>\r\n            <p>For more details, visit our website.</p>\r\n            <a href=\"#\" class=\"button\">View E-Ticket</a>\r\n        </div>\r\n        \r\n        <!-- Footer -->\r\n        <div class=\"footer\">© 2025 E-Ticket. All Rights Reserved.</div>\r\n    </div>', '2025-03-20 14:00:23', '2025-03-20 14:00:23'),
(16, 3, 'smtp', 'E-Ticket heofla2019@gmail.com', 'ericofla1@gmail.com', 'Payment Request Submitted Successfully', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Email</title>\r\n    <style>\r\n        body { font-family: \'Arial\', sans-serif; background-color: #f4f4f4; margin: 0; padding: 0; }\r\n        .email-container { width: 100%; max-width: 600px; margin: auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); }\r\n        .header { background: #0087ff; color: white; text-align: center; padding: 20px; font-size: 20px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px; }\r\n        .content { padding: 30px; text-align: left; color: #414a51; font-size: 16px; line-height: 1.6; }\r\n        .content h2 { color: #0087ff; }\r\n        .footer { background: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px; }\r\n        .button { background: #0087ff; color: white; padding: 12px 20px; text-decoration: none; font-weight: bold; border-radius: 5px; display: inline-block; margin-top: 20px; }\r\n    </style>\r\n\r\n\r\n    <div class=\"email-container\">\r\n        <!-- Header -->\r\n        <div class=\"header\">E-Ticket Notification</div>\r\n        \r\n        <!-- Content -->\r\n        <div class=\"content\">\r\n            <h2>Hello eric ofla (mamawacu),</h2>\r\n            <p><div>Your payment request of <b>60.00 RWF</b> is via&nbsp; <b>MTN </b>submitted successfully<b> .<br></b></div><div><b><br></b></div><div><b>Details of your payment :<br></b></div><div><br></div><div>Amount : 60.00 RWF</div><div>Charge: <font color=\"#FF0000\">0.00 RWF</font></div><div><br></div><div>Conversion Rate : 1 RWF = 1.00 RWF</div><div>Payable : 60.00 RWF <br></div><div>Pay via :&nbsp; MTN</div><div><br></div><div>Transaction Number : D9W3WDONVY7B</div><div><br></div><div><b>Pending Booking Information :<br></b></div><div><br></div><div>Date of Journey : 20 03, 2025</div><div>Seats: 1-G2</div><div>Total Seats : 1</div><div>Starting Point : kigali</div><div>Destination : Huye</div></p>\r\n            <p>For more details, visit our website.</p>\r\n            <a href=\"#\" class=\"button\">View E-Ticket</a>\r\n        </div>\r\n        \r\n        <!-- Footer -->\r\n        <div class=\"footer\">© 2025 E-Ticket. All Rights Reserved.</div>\r\n    </div>', '2025-03-20 14:12:43', '2025-03-20 14:12:43'),
(17, 3, 'smtp', 'E-Ticket heofla2019@gmail.com', 'ericofla1@gmail.com', 'Your payment is Approved', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Email</title>\r\n    <style>\r\n        body { font-family: \'Arial\', sans-serif; background-color: #f4f4f4; margin: 0; padding: 0; }\r\n        .email-container { width: 100%; max-width: 600px; margin: auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); }\r\n        .header { background: #0087ff; color: white; text-align: center; padding: 20px; font-size: 20px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px; }\r\n        .content { padding: 30px; text-align: left; color: #414a51; font-size: 16px; line-height: 1.6; }\r\n        .content h2 { color: #0087ff; }\r\n        .footer { background: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px; }\r\n        .button { background: #0087ff; color: white; padding: 12px 20px; text-decoration: none; font-weight: bold; border-radius: 5px; display: inline-block; margin-top: 20px; }\r\n    </style>\r\n\r\n\r\n    <div class=\"email-container\">\r\n        <!-- Header -->\r\n        <div class=\"header\">E-Ticket Notification</div>\r\n        \r\n        <!-- Content -->\r\n        <div class=\"content\">\r\n            <h2>Hello eric ofla (mamawacu),</h2>\r\n            <p><div>Your payment request of <b>60.00 RWF</b> is via&nbsp; <b>MTN </b>is Approved .<b><br></b></div><div><b><br></b></div><div><b>Details of your payment :<br></b></div><div><br></div><div>Amount : 60.00 RWF</div><div>Charge: <font color=\"#FF0000\">0.00 RWF</font></div><div><br></div><div>Conversion Rate : 1 RWF = 1.00 RWF</div><div>Payable : 60.00 RWF <br></div><div>Paid via :&nbsp; MTN</div><div><br></div><div>Transaction Number : D9W3WDONVY7B</div><div><br></div><div><b>Booking Information :<br></b></div><div><br></div><div>Date of Journey : 20 03, 2025</div><div>Seats: 1-G2</div><div>Total Seats : 1</div><div>Starting Point : kigali</div><div>Destination : Huye</div></p>\r\n            <p>For more details, visit our website.</p>\r\n            <a href=\"#\" class=\"button\">View E-Ticket</a>\r\n        </div>\r\n        \r\n        <!-- Footer -->\r\n        <div class=\"footer\">© 2025 E-Ticket. All Rights Reserved.</div>\r\n    </div>', '2025-03-20 14:14:26', '2025-03-20 14:14:26'),
(18, 3, 'smtp', 'E-Ticket heofla2019@gmail.com', 'ericofla1@gmail.com', 'Your Payment Request is Rejected', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Email</title>\r\n    <style>\r\n        body { font-family: \'Arial\', sans-serif; background-color: #f4f4f4; margin: 0; padding: 0; }\r\n        .email-container { width: 100%; max-width: 600px; margin: auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); }\r\n        .header { background: #0087ff; color: white; text-align: center; padding: 20px; font-size: 20px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px; }\r\n        .content { padding: 30px; text-align: left; color: #414a51; font-size: 16px; line-height: 1.6; }\r\n        .content h2 { color: #0087ff; }\r\n        .footer { background: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px; }\r\n        .button { background: #0087ff; color: white; padding: 12px 20px; text-decoration: none; font-weight: bold; border-radius: 5px; display: inline-block; margin-top: 20px; }\r\n    </style>\r\n\r\n\r\n    <div class=\"email-container\">\r\n        <!-- Header -->\r\n        <div class=\"header\">E-Ticket Notification</div>\r\n        \r\n        <!-- Content -->\r\n        <div class=\"content\">\r\n            <h2>Hello eric ofla (mamawacu),</h2>\r\n            <p><div>Your payment request of <b>60.00 RWF</b> is via&nbsp; <b>MTN has been rejected</b>.<b><br></b></div><br><div>Transaction Number was : PAA7THVNY5JE</div><div><br></div><div><b>Rejected Booking Information :<br></b></div><div><br></div><div>Date of Journey : 20 03, 2025</div><div>Seats: 1-G2</div><div>Total Seats : 1</div><div>Starting Point : kigali</div><div>Destination : Huye</div><div><br></div><div>if you have any query, feel free to contact us.<br></div><br><div><br><br></div>\r\n\r\n\r\n\r\nWe Did not get you money</p>\r\n            <p>For more details, visit our website.</p>\r\n            <a href=\"#\" class=\"button\">View E-Ticket</a>\r\n        </div>\r\n        \r\n        <!-- Footer -->\r\n        <div class=\"footer\">© 2025 E-Ticket. All Rights Reserved.</div>\r\n    </div>', '2025-03-20 14:17:07', '2025-03-20 14:17:07');
INSERT INTO `email_logs` (`id`, `user_id`, `mail_sender`, `email_from`, `email_to`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(19, 1, 'smtp', 'E-Ticket heofla2019@gmail.com', 'heshimaahayo@gmail.com', 'Payment Request Submitted Successfully', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Notification</title>\r\n\r\n\r\n\r\n<div style=\"width: 100%; max-width: 800px; margin: 20px auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\">\r\n    <!-- Header -->\r\n    <div style=\"background-color: #059199; color: white; text-align: center; padding: 25px 20px; font-size: 24px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px;\">\r\n        E-Ticket Notification\r\n    </div>\r\n\r\n    <!-- Content -->\r\n    <div style=\"padding: 30px; color: #414a51; font-size: 16px; line-height: 1.6;\">\r\n        <h2 style=\"font-size: 20px;\">Dear&nbsp;<strong>heshima ahayo nehemie</strong>,</h2>\r\n        <p><div>Your payment request of <b>3,742.00 RWF</b> is via&nbsp; <b>MTN </b>submitted successfully<b> .<br></b></div><div><b><br></b></div><div><b>Details of your payment :<br></b></div><div><br></div><div>Amount : 3,742.00 RWF</div><div>Charge: <font color=\"#FF0000\">0.00 RWF</font></div><div><br></div><div>Conversion Rate : 1 RWF = 1.00 RWF</div><div>Payable : 3,742.00 RWF <br></div><div>Pay via :&nbsp; MTN</div><div><br></div><div>Transaction Number : 78PFOO9AZ44H</div><div><br></div><div><b>Pending Booking Information :<br></b></div><div><br></div><div>Date of Journey : 20 03, 2025</div><div>Seats: 1-G1</div><div>Total Seats : 1</div><div>Starting Point : kigali</div><div>Destination : Huye</div></p>\r\n       <br> <small>If you have any questions or need further assistance, feel free to reach out to our support team.</small>\r\n       <br> <small>Thank you for choosing <strong>E-Ticket</strong>.</small>\r\n       <br> <small>Best Regards,</small><br>\r\n       <small><strong>Eric H Ofla</strong></small>\r\n    </div>\r\n\r\n    <!-- Footer -->\r\n    <div style=\"background-color: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;\">\r\n        <p>© 2025 E-Ticket. All Rights Reserved.</p>\r\n        <p><a href=\"http://127.0.0.1:8000/policy/71/terms-and-conditions\" style=\"color: #059199; text-decoration: none; font-weight: bold;\">Terms &amp; Conditions</a></p>\r\n    </div>\r\n</div>', '2025-03-20 19:57:20', '2025-03-20 19:57:20'),
(20, 1, 'smtp', 'E-Ticket heofla2019@gmail.com', 'heshimaahayo@gmail.com', 'Your payment is Approved', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Notification</title>\r\n\r\n\r\n\r\n<div style=\"width: 100%; max-width: 800px; margin: 20px auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\">\r\n    <!-- Header -->\r\n    <div style=\"background-color: #059199; color: white; text-align: center; padding: 25px 20px; font-size: 24px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px;\">\r\n        E-Ticket Notification\r\n    </div>\r\n\r\n    <!-- Content -->\r\n    <div style=\"padding: 30px; color: #414a51; font-size: 16px; line-height: 1.6;\">\r\n        <h2 style=\"font-size: 20px;\">Dear&nbsp;<strong>heshima ahayo nehemie</strong>,</h2>\r\n        <p><div>Your payment request of <b>3,742.00 RWF</b> is via&nbsp; <b>MTN </b>is Approved .<b><br></b></div><div><b><br></b></div><div><b>Details of your payment :<br></b></div><div><br></div><div>Amount : 3,742.00 RWF</div><div>Charge: <font color=\"#FF0000\">0.00 RWF</font></div><div><br></div><div>Conversion Rate : 1 RWF = 1.00 RWF</div><div>Payable : 3,742.00 RWF <br></div><div>Paid via :&nbsp; MTN</div><div><br></div><div>Transaction Number : 78PFOO9AZ44H</div><div><br></div><div><b>Booking Information :<br></b></div><div><br></div><div>Date of Journey : 20 03, 2025</div><div>Seats: 1-G1</div><div>Total Seats : 1</div><div>Starting Point : kigali</div><div>Destination : Huye</div></p>\r\n       <br> <small>If you have any questions or need further assistance, feel free to reach out to our support team.</small>\r\n       <br> <small>Thank you for choosing <strong>E-Ticket</strong>.</small>\r\n       <br> <small>Best Regards,</small><br>\r\n       <small><strong>Eric H Ofla</strong></small>\r\n    </div>\r\n\r\n    <!-- Footer -->\r\n    <div style=\"background-color: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;\">\r\n        <p>© 2025 E-Ticket. All Rights Reserved.</p>\r\n        <p><a href=\"http://127.0.0.1:8000/policy/71/terms-and-conditions\" style=\"color: #059199; text-decoration: none; font-weight: bold;\">Terms &amp; Conditions</a></p>\r\n    </div>\r\n</div>', '2025-03-20 19:57:57', '2025-03-20 19:57:57'),
(21, 6, 'smtp', 'E-Ticket heofla2019@gmail.com', 'blaiseimpoze78@gmail.com', 'Please verify your email address', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Notification</title>\r\n\r\n\r\n\r\n<div style=\"width: 100%; max-width: 800px; margin: 20px auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\">\r\n    <!-- Header -->\r\n    <div style=\"background-color: #059199; color: white; text-align: center; padding: 25px 20px; font-size: 24px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px;\">\r\n        E-Ticket Notification\r\n    </div>\r\n\r\n    <!-- Content -->\r\n    <div style=\"padding: 30px; color: #414a51; font-size: 16px; line-height: 1.6;\">\r\n        <h2 style=\"font-size: 20px;\">Dear&nbsp;<strong>blaise impoze</strong>,</h2>\r\n        <p><div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> 755735</b></font></div></p>\r\n       <br> <small>If you have any questions or need further assistance, feel free to reach out to our support team.</small>\r\n       <br> <small>Thank you for choosing <strong>E-Ticket</strong>.</small>\r\n       <br> <small>Best Regards,</small><br>\r\n       <small><strong>Eric H Ofla</strong></small>\r\n    </div>\r\n\r\n    <!-- Footer -->\r\n    <div style=\"background-color: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;\">\r\n        <p>© 2025 E-Ticket. All Rights Reserved.</p>\r\n        <p><a href=\"http://127.0.0.1:8000/policy/71/terms-and-conditions\" style=\"color: #059199; text-decoration: none; font-weight: bold;\">Terms &amp; Conditions</a></p>\r\n    </div>\r\n</div>', '2025-03-21 08:29:26', '2025-03-21 08:29:26'),
(22, 6, 'smtp', 'E-Ticket heofla2019@gmail.com', 'blaiseimpoze78@gmail.com', 'Payment Request Submitted Successfully', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Notification</title>\r\n\r\n\r\n\r\n<div style=\"width: 100%; max-width: 800px; margin: 20px auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\">\r\n    <!-- Header -->\r\n    <div style=\"background-color: #059199; color: white; text-align: center; padding: 25px 20px; font-size: 24px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px;\">\r\n        E-Ticket Notification\r\n    </div>\r\n\r\n    <!-- Content -->\r\n    <div style=\"padding: 30px; color: #414a51; font-size: 16px; line-height: 1.6;\">\r\n        <h2 style=\"font-size: 20px;\">Dear&nbsp;<strong>blaise impoze</strong>,</h2>\r\n        <p><div>Your payment request of <b>3,742.00 RWF</b> is via&nbsp; <b>MTN </b>submitted successfully<b> .<br></b></div><div><b><br></b></div><div><b>Details of your payment :<br></b></div><div><br></div><div>Amount : 3,742.00 RWF</div><div>Charge: <font color=\"#FF0000\">0.00 RWF</font></div><div><br></div><div>Conversion Rate : 1 RWF = 1.00 RWF</div><div>Payable : 3,742.00 RWF <br></div><div>Pay via :&nbsp; MTN</div><div><br></div><div>Transaction Number : HDOR5PROEDTD</div><div><br></div><div><b>Pending Booking Information :<br></b></div><div><br></div><div>Date of Journey : 24 03, 2025</div><div>Seats: 1-B1</div><div>Total Seats : 1</div><div>Starting Point : kigali</div><div>Destination : Huye</div></p>\r\n       <br> <small>If you have any questions or need further assistance, feel free to reach out to our support team.</small>\r\n       <br> <small>Thank you for choosing <strong>E-Ticket</strong>.</small>\r\n       <br> <small>Best Regards,</small><br>\r\n       <small><strong>Eric H Ofla</strong></small>\r\n    </div>\r\n\r\n    <!-- Footer -->\r\n    <div style=\"background-color: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;\">\r\n        <p>© 2025 E-Ticket. All Rights Reserved.</p>\r\n        <p><a href=\"http://127.0.0.1:8000/policy/71/terms-and-conditions\" style=\"color: #059199; text-decoration: none; font-weight: bold;\">Terms &amp; Conditions</a></p>\r\n    </div>\r\n</div>', '2025-03-21 08:32:52', '2025-03-21 08:32:52'),
(23, 6, 'smtp', 'E-Ticket heofla2019@gmail.com', 'blaiseimpoze78@gmail.com', 'Your payment is Approved', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Notification</title>\r\n\r\n\r\n\r\n<div style=\"width: 100%; max-width: 800px; margin: 20px auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\">\r\n    <!-- Header -->\r\n    <div style=\"background-color: #059199; color: white; text-align: center; padding: 25px 20px; font-size: 24px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px;\">\r\n        E-Ticket Notification\r\n    </div>\r\n\r\n    <!-- Content -->\r\n    <div style=\"padding: 30px; color: #414a51; font-size: 16px; line-height: 1.6;\">\r\n        <h2 style=\"font-size: 20px;\">Dear&nbsp;<strong>blaise impoze</strong>,</h2>\r\n        <p><div>Your payment request of <b>3,742.00 RWF</b> is via&nbsp; <b>MTN </b>is Approved .<b><br></b></div><div><b><br></b></div><div><b>Details of your payment :<br></b></div><div><br></div><div>Amount : 3,742.00 RWF</div><div>Charge: <font color=\"#FF0000\">0.00 RWF</font></div><div><br></div><div>Conversion Rate : 1 RWF = 1.00 RWF</div><div>Payable : 3,742.00 RWF <br></div><div>Paid via :&nbsp; MTN</div><div><br></div><div>Transaction Number : HDOR5PROEDTD</div><div><br></div><div><b>Booking Information :<br></b></div><div><br></div><div>Date of Journey : 24 03, 2025</div><div>Seats: 1-B1</div><div>Total Seats : 1</div><div>Starting Point : kigali</div><div>Destination : Huye</div></p>\r\n       <br> <small>If you have any questions or need further assistance, feel free to reach out to our support team.</small>\r\n       <br> <small>Thank you for choosing <strong>E-Ticket</strong>.</small>\r\n       <br> <small>Best Regards,</small><br>\r\n       <small><strong>Eric H Ofla</strong></small>\r\n    </div>\r\n\r\n    <!-- Footer -->\r\n    <div style=\"background-color: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;\">\r\n        <p>© 2025 E-Ticket. All Rights Reserved.</p>\r\n        <p><a href=\"http://127.0.0.1:8000/policy/71/terms-and-conditions\" style=\"color: #059199; text-decoration: none; font-weight: bold;\">Terms &amp; Conditions</a></p>\r\n    </div>\r\n</div>', '2025-03-21 08:34:25', '2025-03-21 08:34:25'),
(24, 5, 'smtp', 'E-Ticket heofla2019@gmail.com', 'chrismerci22@gmail.com', 'Payment Request Submitted Successfully', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Notification</title>\r\n\r\n\r\n\r\n<div style=\"width: 100%; max-width: 800px; margin: 20px auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\">\r\n    <!-- Header -->\r\n    <div style=\"background-color: #059199; color: white; text-align: center; padding: 25px 20px; font-size: 24px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px;\">\r\n        E-Ticket Notification\r\n    </div>\r\n\r\n    <!-- Content -->\r\n    <div style=\"padding: 30px; color: #414a51; font-size: 16px; line-height: 1.6;\">\r\n        <h2 style=\"font-size: 20px;\">Dear&nbsp;<strong>HABUMUGISHA Eric</strong>,</h2>\r\n        <p><div>Your payment request of <b>3,742.00 RWF</b> is via&nbsp; <b>MTN </b>submitted successfully<b> .<br></b></div><div><b><br></b></div><div><b>Details of your payment :<br></b></div><div><br></div><div>Amount : 3,742.00 RWF</div><div>Charge: <font color=\"#FF0000\">0.00 RWF</font></div><div><br></div><div>Conversion Rate : 1 RWF = 1.00 RWF</div><div>Payable : 3,742.00 RWF <br></div><div>Pay via :&nbsp; MTN</div><div><br></div><div>Transaction Number : FPR8EZVPW9VA</div><div><br></div><div><b>Pending Booking Information :<br></b></div><div><br></div><div>Date of Journey : 24 03, 2025</div><div>Seats: 1-E2</div><div>Total Seats : 1</div><div>Starting Point : kigali</div><div>Destination : Huye</div></p>\r\n       <br> <small>If you have any questions or need further assistance, feel free to reach out to our support team.</small>\r\n       <br> <small>Thank you for choosing <strong>E-Ticket</strong>.</small>\r\n       <br> <small>Best Regards,</small><br>\r\n       <small><strong>Eric H Ofla</strong></small>\r\n    </div>\r\n\r\n    <!-- Footer -->\r\n    <div style=\"background-color: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;\">\r\n        <p>© 2025 E-Ticket. All Rights Reserved.</p>\r\n        <p><a href=\"http://127.0.0.1:8000/policy/71/terms-and-conditions\" style=\"color: #059199; text-decoration: none; font-weight: bold;\">Terms &amp; Conditions</a></p>\r\n    </div>\r\n</div>', '2025-03-21 10:16:30', '2025-03-21 10:16:30'),
(25, 5, 'smtp', 'E-Ticket heofla2019@gmail.com', 'chrismerci22@gmail.com', 'Your payment is Approved', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Notification</title>\r\n\r\n\r\n\r\n<div style=\"width: 100%; max-width: 800px; margin: 20px auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\">\r\n    <!-- Header -->\r\n    <div style=\"background-color: #059199; color: white; text-align: center; padding: 25px 20px; font-size: 24px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px;\">\r\n        E-Ticket Notification\r\n    </div>\r\n\r\n    <!-- Content -->\r\n    <div style=\"padding: 30px; color: #414a51; font-size: 16px; line-height: 1.6;\">\r\n        <h2 style=\"font-size: 20px;\">Dear&nbsp;<strong>HABUMUGISHA Eric</strong>,</h2>\r\n        <p><div>Your payment request of <b>3,742.00 RWF</b> is via&nbsp; <b>MTN </b>is Approved .<b><br></b></div><div><b><br></b></div><div><b>Details of your payment :<br></b></div><div><br></div><div>Amount : 3,742.00 RWF</div><div>Charge: <font color=\"#FF0000\">0.00 RWF</font></div><div><br></div><div>Conversion Rate : 1 RWF = 1.00 RWF</div><div>Payable : 3,742.00 RWF <br></div><div>Paid via :&nbsp; MTN</div><div><br></div><div>Transaction Number : FPR8EZVPW9VA</div><div><br></div><div><b>Booking Information :<br></b></div><div><br></div><div>Date of Journey : 24 03, 2025</div><div>Seats: 1-E2</div><div>Total Seats : 1</div><div>Starting Point : kigali</div><div>Destination : Huye</div></p>\r\n       <br> <small>If you have any questions or need further assistance, feel free to reach out to our support team.</small>\r\n       <br> <small>Thank you for choosing <strong>E-Ticket</strong>.</small>\r\n       <br> <small>Best Regards,</small><br>\r\n       <small><strong>Eric H Ofla</strong></small>\r\n    </div>\r\n\r\n    <!-- Footer -->\r\n    <div style=\"background-color: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;\">\r\n        <p>© 2025 E-Ticket. All Rights Reserved.</p>\r\n        <p><a href=\"http://127.0.0.1:8000/policy/71/terms-and-conditions\" style=\"color: #059199; text-decoration: none; font-weight: bold;\">Terms &amp; Conditions</a></p>\r\n    </div>\r\n</div>', '2025-03-21 10:20:00', '2025-03-21 10:20:00'),
(26, 3, 'smtp', 'E-Ticket heofla2019@gmail.com', 'ericofla1@gmail.com', 'Payment Request Submitted Successfully', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Notification</title>\r\n\r\n\r\n\r\n<div style=\"width: 100%; max-width: 800px; margin: 20px auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\">\r\n    <!-- Header -->\r\n    <div style=\"background-color: #059199; color: white; text-align: center; padding: 25px 20px; font-size: 24px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px;\">\r\n        E-Ticket Notification\r\n    </div>\r\n\r\n    <!-- Content -->\r\n    <div style=\"padding: 30px; color: #414a51; font-size: 16px; line-height: 1.6;\">\r\n        <h2 style=\"font-size: 20px;\">Dear&nbsp;<strong>eric ofla</strong>,</h2>\r\n        <p><div>Your payment request of <b>3,742.00 RWF</b> is via&nbsp; <b>MTN </b>submitted successfully<b> .<br></b></div><div><b><br></b></div><div><b>Details of your payment :<br></b></div><div><br></div><div>Amount : 3,742.00 RWF</div><div>Charge: <font color=\"#FF0000\">0.00 RWF</font></div><div><br></div><div>Conversion Rate : 1 RWF = 1.00 RWF</div><div>Payable : 3,742.00 RWF <br></div><div>Pay via :&nbsp; MTN</div><div><br></div><div>Transaction Number : U4RAU762P355</div><div><br></div><div><b>Pending Booking Information :<br></b></div><div><br></div><div>Date of Journey : 27 03, 2025</div><div>Seats: 1-D2</div><div>Total Seats : 1</div><div>Starting Point : kigali</div><div>Destination : Huye</div></p>\r\n       <br> <small>If you have any questions or need further assistance, feel free to reach out to our support team.</small>\r\n       <br> <small>Thank you for choosing <strong>E-Ticket</strong>.</small>\r\n       <br> <small>Best Regards,</small><br>\r\n       <small><strong>Eric H Ofla</strong></small>\r\n    </div>\r\n\r\n    <!-- Footer -->\r\n    <div style=\"background-color: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;\">\r\n        <p>© 2025 E-Ticket. All Rights Reserved.</p>\r\n        <p><a href=\"http://127.0.0.1:8000/policy/71/terms-and-conditions\" style=\"color: #059199; text-decoration: none; font-weight: bold;\">Terms &amp; Conditions</a></p>\r\n    </div>\r\n</div>', '2025-03-27 12:49:45', '2025-03-27 12:49:45'),
(27, 3, 'smtp', 'E-Ticket heofla2019@gmail.com', 'ericofla1@gmail.com', 'Your payment is Approved', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Notification</title>\r\n\r\n\r\n\r\n<div style=\"width: 100%; max-width: 800px; margin: 20px auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\">\r\n    <!-- Header -->\r\n    <div style=\"background-color: #059199; color: white; text-align: center; padding: 25px 20px; font-size: 24px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px;\">\r\n        E-Ticket Notification\r\n    </div>\r\n\r\n    <!-- Content -->\r\n    <div style=\"padding: 30px; color: #414a51; font-size: 16px; line-height: 1.6;\">\r\n        <h2 style=\"font-size: 20px;\">Dear&nbsp;<strong>eric ofla</strong>,</h2>\r\n        <p><div>Your payment request of <b>3,742.00 RWF</b> is via&nbsp; <b>MTN </b>is Approved .<b><br></b></div><div><b><br></b></div><div><b>Details of your payment :<br></b></div><div><br></div><div>Amount : 3,742.00 RWF</div><div>Charge: <font color=\"#FF0000\">0.00 RWF</font></div><div><br></div><div>Conversion Rate : 1 RWF = 1.00 RWF</div><div>Payable : 3,742.00 RWF <br></div><div>Paid via :&nbsp; MTN</div><div><br></div><div>Transaction Number : U4RAU762P355</div><div><br></div><div><b>Booking Information :<br></b></div><div><br></div><div>Date of Journey : 27 03, 2025</div><div>Seats: 1-D2</div><div>Total Seats : 1</div><div>Starting Point : kigali</div><div>Destination : Huye</div></p>\r\n       <br> <small>If you have any questions or need further assistance, feel free to reach out to our support team.</small>\r\n       <br> <small>Thank you for choosing <strong>E-Ticket</strong>.</small>\r\n       <br> <small>Best Regards,</small><br>\r\n       <small><strong>Eric H Ofla</strong></small>\r\n    </div>\r\n\r\n    <!-- Footer -->\r\n    <div style=\"background-color: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;\">\r\n        <p>© 2025 E-Ticket. All Rights Reserved.</p>\r\n        <p><a href=\"http://127.0.0.1:8000/policy/71/terms-and-conditions\" style=\"color: #059199; text-decoration: none; font-weight: bold;\">Terms &amp; Conditions</a></p>\r\n    </div>\r\n</div>', '2025-03-27 12:51:02', '2025-03-27 12:51:02'),
(28, 1, 'smtp', 'E-Ticket heofla2019@gmail.com', 'heshimaahayo@gmail.com', 'Reply Support Ticket', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Notification</title>\r\n\r\n\r\n\r\n<div style=\"width: 100%; max-width: 800px; margin: 20px auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\">\r\n    <!-- Header -->\r\n    <div style=\"background-color: #059199; color: white; text-align: center; padding: 25px 20px; font-size: 24px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px;\">\r\n        E-Ticket Notification\r\n    </div>\r\n\r\n    <!-- Content -->\r\n    <div style=\"padding: 30px; color: #414a51; font-size: 16px; line-height: 1.6;\">\r\n        <h2 style=\"font-size: 20px;\">Dear&nbsp;<strong>heshima ahayo nehemie</strong>,</h2>\r\n        <p><div><p><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong>A member from our support team has replied to the following ticket:</strong></span></p><p><b><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong><br></strong></span></b></p><p><b>[Ticket#994371] Test Email<br><br>Click here to reply:&nbsp; http://127.0.0.1:8000/ticket/view/994371</b></p><p>----------------------------------------------</p><p>Here is the reply : <br></p><p> Hii<br></p></div><div><br></div></p>\r\n       <br> <small>If you have any questions or need further assistance, feel free to reach out to our support team.</small>\r\n       <br> <small>Thank you for choosing <strong>E-Ticket</strong>.</small>\r\n       <br> <small>Best Regards,</small><br>\r\n       <small><strong>Eric H Ofla</strong></small>\r\n    </div>\r\n\r\n    <!-- Footer -->\r\n    <div style=\"background-color: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;\">\r\n        <p>© 2025 E-Ticket. All Rights Reserved.</p>\r\n        <p><a href=\"http://127.0.0.1:8000/policy/71/terms-and-conditions\" style=\"color: #059199; text-decoration: none; font-weight: bold;\">Terms &amp; Conditions</a></p>\r\n    </div>\r\n</div>', '2025-03-27 18:22:34', '2025-03-27 18:22:34'),
(29, 4, 'smtp', 'E-Ticket heofla2019@gmail.com', 'christianmerci11@gmail.com', 'Payment Request Submitted Successfully', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Notification</title>\r\n\r\n\r\n\r\n<div style=\"width: 100%; max-width: 800px; margin: 20px auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\">\r\n    <!-- Header -->\r\n    <div style=\"background-color: #059199; color: white; text-align: center; padding: 25px 20px; font-size: 24px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px;\">\r\n        E-Ticket Notification\r\n    </div>\r\n\r\n    <!-- Content -->\r\n    <div style=\"padding: 30px; color: #414a51; font-size: 16px; line-height: 1.6;\">\r\n        <h2 style=\"font-size: 20px;\">Dear&nbsp;<strong>NISHIMWE Christian</strong>,</h2>\r\n        <p><div>Your payment request of <b>3,742.00 RWF</b> is via&nbsp; <b>MTN </b>submitted successfully<b> .<br></b></div><div><b><br></b></div><div><b>Details of your payment :<br></b></div><div><br></div><div>Amount : 3,742.00 RWF</div><div>Charge: <font color=\"#FF0000\">0.00 RWF</font></div><div><br></div><div>Conversion Rate : 1 RWF = 1.00 RWF</div><div>Payable : 3,742.00 RWF <br></div><div>Pay via :&nbsp; MTN</div><div><br></div><div>Transaction Number : KBSB5G2O39SU</div><div><br></div><div><b>Pending Booking Information :<br></b></div><div><br></div><div>Date of Journey : 01 04, 2025</div><div>Seats: 1-D3</div><div>Total Seats : 1</div><div>Starting Point : kigali</div><div>Destination : Huye</div></p>\r\n       <br> <small>If you have any questions or need further assistance, feel free to reach out to our support team.</small>\r\n       <br> <small>Thank you for choosing <strong>E-Ticket</strong>.</small>\r\n       <br> <small>Best Regards,</small><br>\r\n       <small><strong>Eric H Ofla</strong></small>\r\n    </div>\r\n\r\n    <!-- Footer -->\r\n    <div style=\"background-color: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;\">\r\n        <p>© 2025 E-Ticket. All Rights Reserved.</p>\r\n        <p><a href=\"http://127.0.0.1:8000/policy/71/terms-and-conditions\" style=\"color: #059199; text-decoration: none; font-weight: bold;\">Terms &amp; Conditions</a></p>\r\n    </div>\r\n</div>', '2025-04-01 06:57:44', '2025-04-01 06:57:44'),
(30, 4, 'smtp', 'E-Ticket heofla2019@gmail.com', 'christianmerci11@gmail.com', 'Your payment is Approved', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Notification</title>\r\n\r\n\r\n\r\n<div style=\"width: 100%; max-width: 800px; margin: 20px auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\">\r\n    <!-- Header -->\r\n    <div style=\"background-color: #059199; color: white; text-align: center; padding: 25px 20px; font-size: 24px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px;\">\r\n        E-Ticket Notification\r\n    </div>\r\n\r\n    <!-- Content -->\r\n    <div style=\"padding: 30px; color: #414a51; font-size: 16px; line-height: 1.6;\">\r\n        <h2 style=\"font-size: 20px;\">Dear&nbsp;<strong>NISHIMWE Christian</strong>,</h2>\r\n        <p><div>Your payment request of <b>3,742.00 RWF</b> is via&nbsp; <b>MTN </b>is Approved .<b><br></b></div><div><b><br></b></div><div><b>Details of your payment :<br></b></div><div><br></div><div>Amount : 3,742.00 RWF</div><div>Charge: <font color=\"#FF0000\">0.00 RWF</font></div><div><br></div><div>Conversion Rate : 1 RWF = 1.00 RWF</div><div>Payable : 3,742.00 RWF <br></div><div>Paid via :&nbsp; MTN</div><div><br></div><div>Transaction Number : KBSB5G2O39SU</div><div><br></div><div><b>Booking Information :<br></b></div><div><br></div><div>Date of Journey : 01 04, 2025</div><div>Seats: 1-D3</div><div>Total Seats : 1</div><div>Starting Point : kigali</div><div>Destination : Huye</div></p>\r\n       <br> <small>If you have any questions or need further assistance, feel free to reach out to our support team.</small>\r\n       <br> <small>Thank you for choosing <strong>E-Ticket</strong>.</small>\r\n       <br> <small>Best Regards,</small><br>\r\n       <small><strong>Eric H Ofla</strong></small>\r\n    </div>\r\n\r\n    <!-- Footer -->\r\n    <div style=\"background-color: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;\">\r\n        <p>© 2025 E-Ticket. All Rights Reserved.</p>\r\n        <p><a href=\"http://127.0.0.1:8000/policy/71/terms-and-conditions\" style=\"color: #059199; text-decoration: none; font-weight: bold;\">Terms &amp; Conditions</a></p>\r\n    </div>\r\n</div>', '2025-04-01 06:58:43', '2025-04-01 06:58:43'),
(31, 4, 'smtp', 'E-Ticket heofla2019@gmail.com', 'christianmerci11@gmail.com', 'Payment Request Submitted Successfully', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Notification</title>\r\n\r\n\r\n\r\n<div style=\"width: 100%; max-width: 800px; margin: 20px auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\">\r\n    <!-- Header -->\r\n    <div style=\"background-color: #059199; color: white; text-align: center; padding: 25px 20px; font-size: 24px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px;\">\r\n        E-Ticket Notification\r\n    </div>\r\n\r\n    <!-- Content -->\r\n    <div style=\"padding: 30px; color: #414a51; font-size: 16px; line-height: 1.6;\">\r\n        <h2 style=\"font-size: 20px;\">Dear&nbsp;<strong>NISHIMWE Christian</strong>,</h2>\r\n        <p><div>Your payment request of <b>3,742.00 RWF</b> is via&nbsp; <b>MTN </b>submitted successfully<b> .<br></b></div><div><b><br></b></div><div><b>Details of your payment :<br></b></div><div><br></div><div>Amount : 3,742.00 RWF</div><div>Charge: <font color=\"#FF0000\">0.00 RWF</font></div><div><br></div><div>Conversion Rate : 1 RWF = 1.00 RWF</div><div>Payable : 3,742.00 RWF <br></div><div>Pay via :&nbsp; MTN</div><div><br></div><div>Transaction Number : 9Q2ACJ2HW5GD</div><div><br></div><div><b>Pending Booking Information :<br></b></div><div><br></div><div>Date of Journey : 03 04, 2025</div><div>Seats: 1-E3</div><div>Total Seats : 1</div><div>Starting Point : kigali</div><div>Destination : Huye</div></p>\r\n       <br> <small>If you have any questions or need further assistance, feel free to reach out to our support team.</small>\r\n       <br> <small>Thank you for choosing <strong>E-Ticket</strong>.</small>\r\n       <br> <small>Best Regards,</small><br>\r\n       <small><strong>Eric H Ofla</strong></small>\r\n    </div>\r\n\r\n    <!-- Footer -->\r\n    <div style=\"background-color: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;\">\r\n        <p>© 2025 E-Ticket. All Rights Reserved.</p>\r\n        <p><a href=\"http://127.0.0.1:8000/policy/71/terms-and-conditions\" style=\"color: #059199; text-decoration: none; font-weight: bold;\">Terms &amp; Conditions</a></p>\r\n    </div>\r\n</div>', '2025-04-01 07:31:11', '2025-04-01 07:31:11'),
(32, 4, 'smtp', 'E-Ticket heofla2019@gmail.com', 'christianmerci11@gmail.com', 'Your payment is Approved', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Notification</title>\r\n\r\n\r\n\r\n<div style=\"width: 100%; max-width: 800px; margin: 20px auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\">\r\n    <!-- Header -->\r\n    <div style=\"background-color: #059199; color: white; text-align: center; padding: 25px 20px; font-size: 24px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px;\">\r\n        E-Ticket Notification\r\n    </div>\r\n\r\n    <!-- Content -->\r\n    <div style=\"padding: 30px; color: #414a51; font-size: 16px; line-height: 1.6;\">\r\n        <h2 style=\"font-size: 20px;\">Dear&nbsp;<strong>NISHIMWE Christian</strong>,</h2>\r\n        <p><div>Your payment request of <b>3,742.00 RWF</b> is via&nbsp; <b>MTN </b>is Approved .<b><br></b></div><div><b><br></b></div><div><b>Details of your payment :<br></b></div><div><br></div><div>Amount : 3,742.00 RWF</div><div>Charge: <font color=\"#FF0000\">0.00 RWF</font></div><div><br></div><div>Conversion Rate : 1 RWF = 1.00 RWF</div><div>Payable : 3,742.00 RWF <br></div><div>Paid via :&nbsp; MTN</div><div><br></div><div>Transaction Number : 9Q2ACJ2HW5GD</div><div><br></div><div><b>Booking Information :<br></b></div><div><br></div><div>Date of Journey : 03 04, 2025</div><div>Seats: 1-E3</div><div>Total Seats : 1</div><div>Starting Point : kigali</div><div>Destination : Huye</div></p>\r\n       <br> <small>If you have any questions or need further assistance, feel free to reach out to our support team.</small>\r\n       <br> <small>Thank you for choosing <strong>E-Ticket</strong>.</small>\r\n       <br> <small>Best Regards,</small><br>\r\n       <small><strong>Eric H Ofla</strong></small>\r\n    </div>\r\n\r\n    <!-- Footer -->\r\n    <div style=\"background-color: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;\">\r\n        <p>© 2025 E-Ticket. All Rights Reserved.</p>\r\n        <p><a href=\"http://127.0.0.1:8000/policy/71/terms-and-conditions\" style=\"color: #059199; text-decoration: none; font-weight: bold;\">Terms &amp; Conditions</a></p>\r\n    </div>\r\n</div>', '2025-04-01 07:33:42', '2025-04-01 07:33:42');

-- --------------------------------------------------------

--
-- Table structure for table `email_sms_templates`
--

CREATE TABLE `email_sms_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `act` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `subj` varchar(255) NOT NULL,
  `email_body` text DEFAULT NULL,
  `sms_body` text DEFAULT NULL,
  `shortcodes` text NOT NULL,
  `email_status` tinyint(1) NOT NULL DEFAULT 1,
  `sms_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_sms_templates`
--

INSERT INTO `email_sms_templates` (`id`, `act`, `name`, `subj`, `email_body`, `sms_body`, `shortcodes`, `email_status`, `sms_status`, `created_at`, `updated_at`) VALUES
(1, 'PASS_RESET_CODE', 'Password Reset', 'Password Reset', '<div>We have received a request to reset the password for your account on <b>{{time}} .<br></b></div><div>Requested From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>{{code}}</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br>', 'Your account recovery code is: {{code}}', ' {\"code\":\"Password Reset Code\",\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2021-01-06 00:49:06'),
(2, 'PASS_RESET_DONE', 'Password Reset Confirmation', 'You have Reset your password', '<div><p>\r\n    You have successfully reset your password.</p><p>You changed from&nbsp; IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}}&nbsp;</b> on <b>{{time}}</b></p><p><b><br></b></p><p><font color=\"#FF0000\"><b>If you did not changed that, Please contact with us as soon as possible.</b></font><br></p></div>', 'Your password has been changed successfully', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-07 10:23:47'),
(3, 'EVER_CODE', 'Email Verification', 'Please verify your email address', '<div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> {{code}}</b></font></div>', 'Your email verification code is: {{code}}', '{\"code\":\"Verification code\"}', 1, 1, '2019-09-24 23:04:05', '2021-01-03 23:35:10'),
(4, 'SVER_CODE', 'SMS Verification ', 'Please verify your phone', 'Your phone verification code is: {{code}}', 'Your phone verification code is: {{code}}', '{\"code\":\"Verification code\"}', 0, 1, '2019-09-24 23:04:05', '2020-03-08 01:28:52'),
(16, 'ADMIN_SUPPORT_REPLY', 'Support Ticket Reply ', 'Reply Support Ticket', '<div><p><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong>A member from our support team has replied to the following ticket:</strong></span></p><p><b><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong><br></strong></span></b></p><p><b>[Ticket#{{ticket_id}}] {{ticket_subject}}<br><br>Click here to reply:&nbsp; {{link}}</b></p><p>----------------------------------------------</p><p>Here is the reply : <br></p><p> {{reply}}<br></p></div><div><br></div>', '{{subject}}\r\n\r\n{{reply}}\r\n\r\n\r\nClick here to reply:  {{link}}', '{\"ticket_id\":\"Support Ticket ID\", \"ticket_subject\":\"Subject Of Support Ticket\", \"reply\":\"Reply from Staff/Admin\",\"link\":\"Ticket URL For relpy\"}', 1, 1, '2020-06-08 18:00:00', '2020-05-04 02:24:40'),
(217, 'PAYMENT_COMPLETE', 'Automated Payment - Successful', 'Payment Completed Successfully', '<div>Your payment of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>has been completed Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your Payment :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#000000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><b>Booking Information :<br></b></div><div><br></div><div>Date of Journey : {{journey_date}}</div><div>Seats: {{seats}}</div><div>Total Seats : {{total_seats}}</div><div>Starting Point : {{source}}</div><div>Destination : {{destination}}</div>', '{{amount}} {{currrency}} Payment successful by {{gateway_name}} .\r\nJourney Date: {{journey_date}} , Seats: {{seats}}, Starting point: {{source}}, Dropping point: {{destination}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\",\"journey_date\":\"journey date\",\"seats\":\"Seat Number\", \"total_seats\":\"Total Seats\",\"source\":\"Starting point\",\"destination\":\"Destination point\"\r\n}', 1, 1, '2020-06-24 18:00:00', '2020-11-17 03:10:00'),
(218, 'PAYMENT_REQUEST', 'Manual Payment - User Requested', 'Payment Request Submitted Successfully', '<div>Your payment request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>submitted successfully<b> .<br></b></div><div><b><br></b></div><div><b>Details of your payment :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Pay via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><b>Pending Booking Information :<br></b></div><div><br></div><div>Date of Journey : {{journey_date}}</div><div>Seats: {{seats}}</div><div>Total Seats : {{total_seats}}</div><div>Starting Point : {{source}}</div><div>Destination : {{destination}}</div>', '{{amount}} Payment requested by {{method}}. Charge: {{charge}} . Trx: {{trx}} .\r\nJourney Date: {{journey_date}} , Seats: {{seats}}, Starting point: {{source}}, Dropping point: {{destination}}\r\n', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\",\"journey_date\":\"journey date\",\"seats\":\"Seat Number\", \"total_seats\":\"Total Seats\",\"source\":\"Starting point\",\"destination\":\"Destination point\"}', 1, 1, '2020-05-31 18:00:00', '2020-06-01 18:00:00'),
(219, 'PAYMENT_APPROVE', 'Manual Payment - Admin Approved', 'Your payment is Approved', '<div>Your payment request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>is Approved .<b><br></b></div><div><b><br></b></div><div><b>Details of your payment :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><b>Booking Information :<br></b></div><div><br></div><div>Date of Journey : {{journey_date}}</div><div>Seats: {{seats}}</div><div>Total Seats : {{total_seats}}</div><div>Starting Point : {{source}}</div><div>Destination : {{destination}}</div>', 'Admin Approve Your {{amount}} {{gateway_currency}} payment request by {{gateway_name}} transaction : {{transaction}}.\r\nJourney Date: {{journey_date}} , Seats: {{seats}}, Starting point: {{source}}, Dropping point: {{destination}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\",\"journey_date\":\"journey date\",\"seats\":\"Seat Number\", \"total_seats\":\"Total Seats\",\"source\":\"Starting point\",\"destination\":\"Destination point\"}', 1, 1, '2020-06-16 18:00:00', '2020-06-14 18:00:00'),
(220, 'PAYMENT_REJECT', 'Manual Deposit - Admin Rejected', 'Your Payment Request is Rejected', '<div>Your payment request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} has been rejected</b>.<b><br></b></div><br><div>Transaction Number was : {{trx}}</div><div><br></div><div><b>Rejected Booking Information :<br></b></div><div><br></div><div>Date of Journey : {{journey_date}}</div><div>Seats: {{seats}}</div><div>Total Seats : {{total_seats}}</div><div>Starting Point : {{source}}</div><div>Destination : {{destination}}</div><div><br></div><div>if you have any query, feel free to contact us.<br></div><br><div><br><br></div>\r\n\r\n\r\n\r\n{{rejection_message}}', 'Admin Rejected Your {{amount}} {{gateway_currency}} payment request by {{gateway_name}}.\r\nJourney Date: {{journey_date}} , Seats: {{seats}}, Starting point: {{source}}, Dropping point: {{destination}}\r\n\r\n{{rejection_message}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\",\"rejection_message\":\"Rejection message\",\"journey_date\":\"journey date\",\"seats\":\"Seat Number\", \"total_seats\":\"Total Seats\",\"source\":\"Starting point\",\"destination\":\"Destination point\"}', 1, 1, '2020-06-09 18:00:00', '2020-06-14 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `act` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `script` text DEFAULT NULL,
  `shortcode` text DEFAULT NULL COMMENT 'object',
  `support` text DEFAULT NULL COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=>enable, 2=>disable',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extensions`
--

INSERT INTO `extensions` (`id`, `act`, `name`, `description`, `image`, `script`, `shortcode`, `support`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'tawk-chat', 'Tawk.to', 'Key location is shown bellow', 'tawky_big.png', '<script>\r\n                        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n                        (function(){\r\n                        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\n                        s1.async=true;\r\n                        s1.src=\"https://embed.tawk.to/{{app_key}}\";\r\n                        s1.charset=\"UTF-8\";\r\n                        s1.setAttribute(\"crossorigin\",\"*\");\r\n                        s0.parentNode.insertBefore(s1,s0);\r\n                        })();\r\n                    </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"------\"}}', 'twak.png', 0, NULL, '2019-10-18 23:16:05', '2025-04-03 11:07:33'),
(2, 'google-recaptcha2', 'Google Recaptcha 2', 'Key location is shown bellow', 'recaptcha3.png', '\r\n<script src=\"https://www.google.com/recaptcha/api.js\"></script>\r\n<div class=\"g-recaptcha\" data-sitekey=\"{{sitekey}}\" data-callback=\"verifyCaptcha\"></div>\r\n<div id=\"g-recaptcha-error\"></div>', '{\"sitekey\":{\"title\":\"Site Key\",\"value\":\"6Lfpm3cUAAAAAGIjbEJKhJNKS4X1Gns9ANjh8MfH\"}}', 'recaptcha.png', 0, NULL, '2019-10-18 23:16:05', '2025-04-03 11:07:55'),
(3, 'custom-captcha', 'Custom Captcha', 'Just Put Any Random String', 'customcaptcha.png', NULL, '{\"random_key\":{\"title\":\"Random String\",\"value\":\"SecureString\"}}', 'na', 1, NULL, '2019-10-18 23:16:05', '2025-04-03 10:29:25'),
(4, 'google-analytics', 'Google Analytics', 'Key location is shown bellow', 'google_analytics.png', '<script async src=\"https://www.googletagmanager.com/gtag/js?id={{app_key}}\"></script>\r\n                <script>\r\n                  window.dataLayer = window.dataLayer || [];\r\n                  function gtag(){dataLayer.push(arguments);}\r\n                  gtag(\"js\", new Date());\r\n                \r\n                  gtag(\"config\", \"{{app_key}}\");\r\n                </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"------\"}}', 'ganalytics.png', 0, NULL, NULL, '2025-04-03 11:07:39'),
(5, 'fb-comment', 'Facebook Comment ', 'Key location is shown bellow', 'Facebook.png', '<div id=\"fb-root\"></div><script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v4.0&appId={{app_key}}&autoLogAppEvents=1\"></script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"----\"}}', 'fb_com.PNG', 0, NULL, NULL, '2025-04-03 11:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `fleet_types`
--

CREATE TABLE `fleet_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `seat_layout` varchar(40) DEFAULT NULL,
  `deck` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deck_seats` varchar(40) DEFAULT NULL,
  `facilities` varchar(255) DEFAULT NULL,
  `has_ac` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fleet_types`
--

INSERT INTO `fleet_types` (`id`, `name`, `seat_layout`, `deck`, `deck_seats`, `facilities`, `has_ac`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Public Transportation', '1 x 2', 1, '[\"32\"]', '[\"Wifi\"]', 0, 1, '2025-03-18 10:49:25', '2025-03-19 20:50:42'),
(2, 'Horizon Express', '1 x 2', 1, '[\"25\"]', '[\"Wifi\"]', 1, 1, '2025-03-19 20:08:56', '2025-03-19 20:48:48'),
(3, 'Volcano Express', '1 x 2', 1, '[\"32\"]', NULL, 0, 1, '2025-03-20 14:21:04', '2025-03-20 14:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `frontends`
--

CREATE TABLE `frontends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data_keys` varchar(40) NOT NULL,
  `data_values` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontends`
--

INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `created_at`, `updated_at`) VALUES
(1, 'seo.data', '{\"seo_image\":\"1\",\"keywords\":[\"bus booking system\",\"bus booking php script\",\"single vendro bus booking system\",\"E-Ticket\"],\"description\":\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit\",\"social_title\":\"E-Ticket - Bus Ticket Booking System\",\"social_description\":\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit ff\",\"image\":\"6210e34d4726e1645273933.png\"}', '2020-07-04 23:42:52', '2025-03-27 16:54:18'),
(24, 'about.content', '{\"has_image\":\"1\",\"heading\":\"Know Few Words About Autobus\",\"short_description\":\"<div class=\\\"section-header\\\" style=\\\"margin-bottom:20px;color:rgb(119,119,119);font-family:Lato, sans-serif;\\\"><p style=\\\"margin-right:0px;margin-left:0px;padding:0px;font-size:18px;color:rgb(66,66,72);\\\">Lorem Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nulla sit reprehenderit non voluptas quam quod facilis, doloribus impedit magni. Numquam ipsum placeat ullam alias temporibus non quas aperiam odio pariatur.<\\/p><\\/div><p style=\\\"margin-right:0px;margin-left:0px;padding:0px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;\\\">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eos eveniet inventore blanditiis maxime doloremque minima. Quisquam, ex! Architecto laudantium culpa cupiditate hic facere est magni, possimus repudiandae, rerum eius omnis.lore Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque excepturi sed possimus recusandae temporibus tempore, aspernatur, autem sequi natus iste fugit. Eaque vero temporibus illum quis beatae quam officia ad.ri sed possimus recusandae temporibus tempore, aspernatur, autem sequi natus iste fugit. Eaque vero temporibus sed possimus recusandae temporibus tempore, aspernatur, autem sequi natus iste fugit. Eaque vero temporibus illum quis beatae quam officia ad.<\\/p>\",\"title\":\"About Us\",\"description\":\"<div class=\\\"item\\\" style=\\\"margin-bottom:30px;color:rgb(119,119,119);font-family:Lato, sans-serif;\\\"><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;padding:0px;\\\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis vel temporibus voluptatum quidem, blanditiis libero assumenda beatae ducimus placeat odio aperiam tenetur animi, reiciendis reprehenderit expedita nostrum a eum. Quod. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum ipsum necessitatibus eum non quisquam! Quo esse est minima vero dolores eveniet voluptatibus nam. Veniam ad quae illum tenetur voluptates veritatis?<\\/p><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;padding:0px;\\\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis vel temporibus voluptatum quidem, blanditiis libero assumenda beatae ducimus placeat odio aperiam tenetur animi, reiciendis reprehenderit expedita nostrum a eum. Quod. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum ipsum necessitatibus eum non quisquam! Quo esse est minima vero dolores eveniet voluptatibus nam. Veniam ad quae illum tenetur voluptates veritatis?<\\/p><\\/div><div class=\\\"item\\\" style=\\\"margin-bottom:0px;color:rgb(119,119,119);font-family:Lato, sans-serif;\\\"><h4 class=\\\"title\\\" style=\\\"margin-bottom:10px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\">Why Make Bus Reservations With AutoBus<\\/h4><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;padding:0px;\\\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis vel temporibus voluptatum quidem, blanditiis libero assumenda beatae ducimus placeat odio aperiam tenetur animi, reiciendis reprehenderit expedita nostrum a eum. Quod. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum ipsum necessitatibus eum non quisquam! Quo esse est minima vero dolores eveniet voluptatibus nam. Veniam ad quae illum tenetur voluptates veritatis?<\\/p><ul class=\\\"info\\\" style=\\\"margin-top:15px;margin-bottom:-7px;margin-left:15px;\\\"><li style=\\\"list-style:disc;padding:3px 0px;\\\">Free Cancellation<\\/li><li style=\\\"list-style:disc;padding:3px 0px;\\\">Instant Refunds<\\/li><li style=\\\"list-style:disc;padding:3px 0px;\\\">Easy &amp; Quick Bus Booking<\\/li><li style=\\\"list-style:disc;padding:3px 0px;\\\">Exciting Cashback &amp; Bus Offers<\\/li><li style=\\\"list-style:disc;padding:3px 0px;\\\">Best Price Assured<\\/li><li style=\\\"list-style:disc;padding:3px 0px;\\\">24\\/7 Customer Assistance<\\/li><\\/ul><\\/div><h2 class=\\\"title\\\" style=\\\"margin-top:-10px;margin-bottom:15px;font-weight:600;line-height:1.2;font-size:36px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\"><\\/h2>\",\"image\":\"61f24107cbedc1643266311.jpg\"}', '2020-10-28 00:51:20', '2022-01-27 06:21:52'),
(25, 'blog.content', '{\"heading\":\"Recent Blog Post\",\"sub_heading\":\"Have a look at our popular reason. why you should choose you bus. Just choose a Bus and get a ticket for your great journey. !\"}', '2020-10-28 00:51:34', '2022-01-26 11:59:36'),
(39, 'banner.content', '{\"heading\":\"Get Your Ticket Online, Easy and Safely\",\"link_title\":\"Get ticket now\",\"link\":\"tickets\",\"has_image\":\"1\",\"background_image\":\"61f118f07f1151643190512.png\",\"animation_image\":\"6209144de6ed01644762189.png\"}', '2021-05-02 06:09:30', '2022-02-19 20:05:54'),
(41, 'cookie.data', '{\"link\":\"#\",\"description\":\"<font face=\\\"Exo, sans-serif\\\"><span style=\\\"font-size: 18px;\\\">We may use cookies or any other tracking technologies when you visit our website, including any other media form, mobile website, or mobile application related or connected to help customize the Site and improve your experience.<\\/span><\\/font><br>\",\"status\":1}', '2020-07-04 23:42:52', '2021-06-06 09:43:37'),
(44, 'how_it_works.content', '{\"heading\":\"Get Your Tickets With Just 3 Steps\",\"sub_heading\":\"Have a look at our popular reason. why you should choose you bus. Just a Bus and get a ticket for your great journey. !\"}', '2022-01-26 09:40:32', '2022-01-26 09:40:32'),
(45, 'how_it_works.element', '{\"heading\":\"Search Your Bus\",\"sub_heading\":\"Choose your origin, destination,Just choose a Bus journey dates and search for buses\",\"icon\":\"<i class=\\\"las la-search\\\"><\\/i>\"}', '2022-01-26 09:41:18', '2022-01-26 09:41:18'),
(46, 'how_it_works.element', '{\"heading\":\"Choose The Ticket\",\"sub_heading\":\"Choose your origin, destination,Just a Bus for your great journey dates and search for buses\",\"icon\":\"<i class=\\\"las la-ticket-alt\\\"><\\/i>\"}', '2022-01-26 09:42:06', '2022-01-26 09:42:06'),
(47, 'how_it_works.element', '{\"heading\":\"Pay Bill\",\"sub_heading\":\"Choose your origin, destination,choose a Bus for your great journey dates and search for buses\",\"icon\":\"<i class=\\\"las la-money-bill-wave-alt\\\"><\\/i>\"}', '2022-01-26 09:42:57', '2022-01-26 09:42:57'),
(49, 'amenities.content', '{\"heading\":\"Our Amenities\",\"sub_heading\":\"Have a look at our popular reason. why you should choose you bus.Just choose a Bus and get a ticket for your great journey!\"}', '2022-01-26 10:40:00', '2022-01-26 10:40:00'),
(51, 'faq.content', '{\"heading\":\"Frequently Asked Questions\",\"sub_heading\":\"Nobis minus earum perferendis nemo cupiditate optio, rem neque incidunt quia laborum ut praesentium corporis quam exercitationem, atque illo aut excepturi cum.\"}', '2022-01-26 10:48:26', '2022-01-26 10:48:26'),
(52, 'faq.element', '{\"question\":\"Can we choose corporation buses from anywhere?\",\"answer\":\"Orangu ipsum dolor sit amet consectetur adipisicing elit. Sed minima porro aliquid eius laudantium ad quod a corrupti impedit, reiciendis iusto ut aperiam tenetur fuga repellendus tempore necessitatibus omnis libero?\"}', '2022-01-26 10:49:06', '2022-02-15 23:52:26'),
(53, 'faq.element', '{\"question\":\"Can we choose corporation buses from anywhere?\",\"answer\":\"Orangu ipsum dolor sit amet consectetur adipisicing elit. Sed minima porro aliquid eius laudantium ad quod a corrupti impedit, reiciendis iusto ut aperiam tenetur fuga repellendus tempore necessitatibus omnis libero?\"}', '2022-01-26 10:49:32', '2022-02-15 23:52:32'),
(54, 'faq.element', '{\"question\":\"Can we choose corporation buses from anywhere?\",\"answer\":\"Orangu ipsum dolor sit amet consectetur adipisicing elit. Sed minima porro aliquid eius laudantium ad quod a corrupti impedit, reiciendis iusto ut aperiam tenetur fuga repellendus tempore necessitatibus omnis libero?\"}', '2022-01-26 10:49:44', '2022-02-15 23:52:37'),
(55, 'testimonials.content', '{\"heading\":\"Our Testimonials\",\"sub_heading\":\"Have a look at our popular reason. why you should choose you bus. Just choose a Bus and get a ticket for your great journey!\"}', '2022-01-26 11:37:13', '2022-01-26 11:37:13'),
(56, 'testimonials.element', '{\"has_image\":\"1\",\"person\":\"Ishimwe Alice\",\"description\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam iusto mollitia facere accusantium deleniti odit eius, amet doloribus fugit delectus doloremque! In, corrupti? Est, autem suscipit voluptatem rerum deserunt laudantium.\",\"image\":\"61f13ac0c23181643199168.jpg\"}', '2022-01-26 11:42:48', '2025-04-03 11:41:26'),
(57, 'testimonials.element', '{\"has_image\":\"1\",\"person\":\"Merce Christian\",\"description\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam iusto mollitia facere accusantium deleniti odit eius, amet doloribus fugit delectus doloremque! In, corrupti? Est, autem suscipit voluptatem rerum deserunt laudantium.\",\"image\":\"67ee902029ef21743687712.png\"}', '2022-01-26 11:43:07', '2025-04-03 11:41:52'),
(58, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"What to do if your bus get demaged?\",\"short_description\":\"Expedita reprehenderit assumenda cum, id accusamus ad obcaecati fugit volupta Dolore?\",\"description\":\"<h4 class=\\\"title\\\" style=\\\"margin-bottom:25px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\"><span style=\\\"color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;font-weight:400;\\\">In most legal cases there are one or more accusers and one or more defendants. A legal case is typically based on either civil or criminal law. In most legal cases there are one or mor<\\/span><br \\/><\\/h4><p class=\\\"blog-details-pera\\\" style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;padding:0px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;\\\">A consectetur adipisicing elit. Debitis quidem, architecto nulla tempore modi, aliquam sunt corporis beatae ipsam quia sed quae odit adipisci tempora repellendus explicabo voluptate labore minus?<\\/p><p class=\\\"blog-details-pera\\\" style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;padding:0px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;\\\">A consectetur adipisicing elit. Debitis quidem, architecto nulla tempore modi, aliquam sunt corporis beatae ipsam quia sed quae odit adipisci tempora repellendus explicabo voluptate labore minus?<\\/p><p class=\\\"blog-details-pera\\\" style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;padding:0px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;\\\">A consectetur adipisicing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit. Error ipsa incidunt dolores est doloremque quae numquam consequuntur, rerum, earum ipsam ad aperiam, pariatur soluta accusantium nesciunt aliquid voluptatem temporibus magnam.lorem Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis magnam, provident atque et est perferendis eum rem voluptas reprehenderit, sed dolor eaque itaque dicta nam fugit. Molestiae alias consequatur nostrum? Debitis quidem, architecto nulla tempore modi, aliquam sunt corporis beatae ipsam quia sed quae odit adipisci tempora repellendus explicabo voluptate labore minus?<\\/p><ul class=\\\"info\\\" style=\\\"margin-top:-7px;margin-bottom:-7px;color:rgb(119,119,119);font-family:Lato, sans-serif;\\\"><li style=\\\"list-style:none;padding:7px 0px 7px 20px;\\\">Some people do not understand why you should have to<\\/li><li style=\\\"list-style:none;padding:7px 0px 7px 20px;\\\">tempora repellendus explicabo voluptate labore minus?<\\/li><li style=\\\"list-style:none;padding:7px 0px 7px 20px;\\\">A consectetur adipisicing elit. Debitis quidem,<\\/li><\\/ul>\",\"image\":\"6209ffc45a6221644822468.jpg\"}', '2022-01-26 12:02:40', '2022-02-14 06:37:48'),
(59, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"A consectetur adipisicing elit.\",\"short_description\":\"A consectetur adipisicing elit. Debitis quidem, architecto nulla tempore modi,\",\"description\":\"<h4 class=\\\"title\\\" style=\\\"margin-bottom:25px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\"><span style=\\\"color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;font-weight:400;\\\">In most legal cases there are one or more accusers and one or more defendants. A legal case is typically based on either civil or criminal law. In most legal cases there are one or mor<\\/span><br \\/><\\/h4><p class=\\\"blog-details-pera\\\" style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;padding:0px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;\\\">A consectetur adipisicing elit. Debitis quidem, architecto nulla tempore modi, aliquam sunt corporis beatae ipsam quia sed quae odit adipisci tempora repellendus explicabo voluptate labore minus?<\\/p><p class=\\\"blog-details-pera\\\" style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;padding:0px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;\\\">A consectetur adipisicing elit. Debitis quidem, architecto nulla tempore modi, aliquam sunt corporis beatae ipsam quia sed quae odit adipisci tempora repellendus explicabo voluptate labore minus?<\\/p><p class=\\\"blog-details-pera\\\" style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;padding:0px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;\\\">A consectetur adipisicing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit. Error ipsa incidunt dolores est doloremque quae numquam consequuntur, rerum, earum ipsam ad aperiam, pariatur soluta accusantium nesciunt aliquid voluptatem temporibus magnam.lorem Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis magnam, provident atque et est perferendis eum rem voluptas reprehenderit, sed dolor eaque itaque dicta nam fugit. Molestiae alias consequatur nostrum? Debitis quidem, architecto nulla tempore modi, aliquam sunt corporis beatae ipsam quia sed quae odit adipisci tempora repellendus explicabo voluptate labore minus?<\\/p><ul class=\\\"info\\\" style=\\\"margin-top:-7px;margin-bottom:-7px;color:rgb(119,119,119);font-family:Lato, sans-serif;\\\"><li style=\\\"list-style:none;padding:7px 0px 7px 20px;\\\">Some people do not understand why you should have to<\\/li><li style=\\\"list-style:none;padding:7px 0px 7px 20px;\\\">tempora repellendus explicabo voluptate labore minus?<\\/li><li style=\\\"list-style:none;padding:7px 0px 7px 20px;\\\">A consectetur adipisicing elit. Debitis quidem,<\\/li><\\/ul>\",\"image\":\"61f13fac601d21643200428.jpg\"}', '2022-01-26 12:03:48', '2022-01-26 13:55:38'),
(60, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"A wonderful bus journy.\",\"short_description\":\"A consectetur adipisicing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit.\",\"description\":\"<p class=\\\"blog-details-pera\\\" style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;padding:0px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;\\\">In most legal cases there are one or more accusers and one or more defendants. A legal case is typically based on either civil or criminal law. In most legal cases there are one or mor<\\/p><p class=\\\"blog-details-pera\\\" style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;padding:0px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;\\\">A consectetur adipisicing elit. Debitis quidem, architecto nulla tempore modi, aliquam sunt corporis beatae ipsam quia sed quae odit adipisci tempora repellendus explicabo voluptate labore minus?<\\/p><p class=\\\"blog-details-pera\\\" style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;padding:0px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;\\\">A consectetur adipisicing elit. Debitis quidem, architecto nulla tempore modi, aliquam sunt corporis beatae ipsam quia sed quae odit adipisci tempora repellendus explicabo voluptate labore minus?<\\/p><p class=\\\"blog-details-pera\\\" style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;padding:0px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;\\\">A consectetur adipisicing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit. Error ipsa incidunt dolores est doloremque quae numquam consequuntur, rerum, earum ipsam ad aperiam, pariatur soluta accusantium nesciunt aliquid voluptatem temporibus magnam.lorem Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis magnam, provident atque et est perferendis eum rem voluptas reprehenderit, sed dolor eaque itaque dicta nam fugit. Molestiae alias consequatur nostrum? Debitis quidem, architecto nulla tempore modi, aliquam sunt corporis beatae ipsam quia sed quae odit adipisci tempora repellendus explicabo voluptate labore minus?<\\/p><ul class=\\\"info\\\" style=\\\"margin-top:-7px;margin-bottom:-7px;color:rgb(119,119,119);font-family:Lato, sans-serif;\\\"><li style=\\\"list-style:none;padding:7px 0px 7px 20px;\\\">Some people do not understand why you should have to<\\/li><li style=\\\"list-style:none;padding:7px 0px 7px 20px;\\\">tempora repellendus explicabo voluptate labore minus?<\\/li><li style=\\\"list-style:none;padding:7px 0px 7px 20px;\\\">A consectetur adipisicing elit. Debitis quidem,<\\/li><\\/ul><div class=\\\"quote-wrapper\\\" style=\\\"margin-top:20px;margin-bottom:20px;padding:25px 20px;background:rgba(27,39,61,0.03);color:rgb(119,119,119);font-family:Lato, sans-serif;\\\"><p style=\\\"margin-right:0px;margin-left:0px;padding:0px 0px 0px 10px;border-left:2px solid rgb(14,158,77);\\\"><span class=\\\"las la-quote-left\\\" style=\\\"font-size:46px;color:rgb(14,158,77);\\\"><\\/span>\\u00a0Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto veritatis quos aspernatur facere officiis. Odit, maiores voluptatum alias eaque exercitationem perspiciatis beatae soluta explicabo! Doloribus a saepe molestiae, minima unde consectetur ipsum non possimus quo corrupti id illum earum architecto veniam? Magni labore nesciunt<\\/p><\\/div>\",\"image\":\"61f14071d54b41643200625.jpg\"}', '2022-01-26 12:06:01', '2022-01-26 13:54:08'),
(61, 'breadcrumb.content', '{\"has_image\":\"1\",\"background_image\":\"61f14e10b48871643204112.jpg\"}', '2022-01-26 13:05:12', '2022-01-26 13:05:13'),
(62, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Why buy tickets from us?\",\"short_description\":\"Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\",\"description\":\"<h2 style=\\\"margin-bottom:10px;padding:0px;font-family:DauphinPlain;font-size:24px;line-height:24px;color:rgb(0,0,0);\\\"><span style=\\\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\\\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.<\\/span><br \\/><\\/h2><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\\"de Finibus Bonorum et Malorum\\\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\",\"image\":\"61f1593cab1941643206972.jpg\"}', '2022-01-26 13:52:52', '2022-01-26 13:55:51'),
(63, 'contact.content', '{\"title\":\"Let\'s get in touch\",\"short_details\":\"We are open for any suggestion or just to have a chat\",\"address\":\"KK 16 Avenue, Kigali, Rwanda\",\"contact_number\":\"+250 785263931\",\"email\":\"heofla2019@gmail.com\",\"latitude\":\"-1.9595264\",\"longitude\":\"30.0941312\",\"form_title\":\"Have any Questions?\"}', '2022-01-27 05:45:27', '2022-02-17 21:40:21'),
(64, 'social_links.element', '{\"name\":\"Facebook\",\"icon\":\"<i class=\\\"lab la-facebook-f\\\"><\\/i>\",\"url\":\"https:\\/\\/www.facebook.com\\/\"}', '2022-01-27 06:38:49', '2022-02-19 22:36:56'),
(65, 'social_links.element', '{\"name\":\"Twitter\",\"icon\":\"<i class=\\\"lab la-twitter\\\"><\\/i>\",\"url\":\"https:\\/\\/twitter.com\\/?lang=en\"}', '2022-01-27 06:40:02', '2022-02-19 22:37:16'),
(66, 'social_links.element', '{\"name\":\"Vimeo\",\"icon\":\"<i class=\\\"lab la-vimeo\\\"><\\/i>\",\"url\":\"https:\\/\\/vimeo.com\\/log_in\"}', '2022-01-27 06:40:35', '2022-02-19 22:37:33'),
(67, 'social_links.element', '{\"name\":\"Instagram\",\"icon\":\"<i class=\\\"lab la-instagram\\\"><\\/i>\",\"url\":\"https:\\/\\/www.instagram.com\\/?hl=en\"}', '2022-01-27 06:41:01', '2022-02-19 22:37:47'),
(68, 'footer.content', '{\"short_description\":\"E-Ticket: A fast, secure, and eco-friendly digital ticketing system that allows you to book, store, and access your tickets anytime, anywhere. Enjoy a hassle-free experience with instant confirmation and easy check-in. \\ud83c\\udf9f\\ufe0f\\ud83d\\udcf2\"}', '2022-01-27 06:44:26', '2025-03-27 19:32:00'),
(69, 'policies.element', '{\"title\":\"Privacy Policy\",\"details\":\"<h4 class=\\\"title\\\" style=\\\"margin:0px 0px 15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\">Overview<\\/h4><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\"><\\/h4><div class=\\\"content-item\\\" style=\\\"margin-bottom:40px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;font-weight:400;\\\"><p style=\\\"margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Assumenda officia vel omnis, odit quidem, expedita nam deserunt molestiae accusamus voluptas aut. Sapiente voluptatem nulla unde quia harum illum ipsum dolore! Lorem ipsum dolor sit amet consectetur adipisicing elit. In dolorem illum molestiae corrupti, maxime sint velit quibusdam officiis ipsam a minima quos voluptates possimus eaque, vitae, veniam consequuntur! Dolorem, architecto.<\\/p><\\/div><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\">Data Collection &amp; Use<\\/h4><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\"><\\/h4><div class=\\\"content-item\\\" style=\\\"margin-bottom:40px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;font-weight:400;\\\"><p style=\\\"margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Assumenda officia vel omnis, odit quidem, expedita nam deserunt molestiae accusamus voluptas aut. Sapiente voluptatem nulla unde quia harum illum ipsum dolore! Lorem ipsum dolor sit amet consectetur adipisicing elit. In dolorem illum molestiae corrupti, maxime sint velit quibusdam officiis ipsam a minima quos voluptates possimus eaque, vitae, veniam consequuntur! Dolorem, architecto.<\\/p><ul class=\\\"info-list\\\" style=\\\"margin-top:15px;margin-bottom:-7px;\\\"><li style=\\\"list-style:none;padding:7px 0px 7px 25px;\\\">There are many variations of passages of Lorem available, but the majority<\\/li><li style=\\\"list-style:none;padding:7px 0px 7px 25px;\\\">Finibus onorum et alorum\\\" by icero classical lite rature, discovered<\\/li><li style=\\\"list-style:none;padding:7px 0px 7px 25px;\\\">There are many variations of passages of Lorem available, but the majority<\\/li><li style=\\\"list-style:none;padding:7px 0px 7px 25px;\\\">There are many variations of passages of Lorem available, but the majority<\\/li><\\/ul><\\/div><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\">Cookies Data<\\/h4><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\"><\\/h4><div class=\\\"content-item\\\" style=\\\"margin-bottom:40px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;font-weight:400;\\\"><p style=\\\"margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Assumenda officia vel omnis, odit quidem, expedita nam deserunt molestiae accusamus voluptas aut. Sapiente voluptatem nulla unde quia harum illum ipsum dolore! Lorem ipsum dolor sit amet consectetur adipisicing elit. In dolorem illum molestiae corrupti, maxime sint velit quibusdam officiis ipsam a minima quos voluptates possimus eaque, vitae, veniam consequuntur! Dolorem, architecto.<\\/p><\\/div><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\">Data Collection &amp; Use<\\/h4><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\"><\\/h4><div class=\\\"content-item\\\" style=\\\"margin-bottom:40px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;font-weight:400;\\\"><p style=\\\"margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Assumenda officia vel omnis, odit quidem, expedita nam deserunt molestiae accusamus voluptas aut. Sapiente voluptatem nulla unde quia harum illum ipsum dolore! Lorem ipsum dolor sit amet consectetur adipisicing elit. In dolorem illum molestiae corrupti, maxime sint velit quibusdam officiis ipsam a minima quos voluptates possimus eaque, vitae, veniam consequuntur! Dolorem, architecto.<\\/p><\\/div><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\">Data Cookies<\\/h4><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\"><\\/h4><div class=\\\"content-item\\\" style=\\\"margin-bottom:40px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;font-weight:400;\\\"><p style=\\\"margin-right:0px;margin-left:0px;padding:0px;\\\">deserunt molestiae accusamus voluptas aut. Sapiente voluptatem nulla unde quia harum illum ipsum dolore! Lorem ipsum dolor sit amet consectetur adipisicing elit. In dolorem illum molestiae corrupti, maxime sint velit quibusdam officiis ipsam a minima quos voluptates possimus eaque, vitae, veniam consequuntur! Dolorem, architecto. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Assumenda officia vel omnis, odit quidem, expedita nam deserunt molestiae accusamus voluptas aut. Sapiente voluptatem nulla unde quia harum illum ipsum dolore! Lorem ipsum dolor sit amet consectetur adipisicing elit. In dolorem illum molestiae corrupti, maxime sint velit quibusdam officiis ipsam a minima quos voluptates possimus eaque, vitae, veniam consequuntur! Dolorem, architecto.<\\/p><\\/div><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\">Data Storage<\\/h4><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\"><\\/h4><div class=\\\"content-item\\\" style=\\\"margin-bottom:40px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;font-weight:400;\\\"><p style=\\\"margin-right:0px;margin-left:0px;padding:0px;\\\">Pconsectetur adipisicing elit. Assumenda officia vel omnis, odit quidem, expedita nam deserunt molestiae accusamus voluptas aut. Sapiente voluptatem nulla unde quia harum illum ipsum dolore! Lorem ipsum dolor sit amet consectetur adipisicing elit. In dolorem illum molestiae corrupti, maxime sint velit quibusdam officiis ipsam a minima quos voluptates possimus eaque, vitae, veniam consequuntur! Dolorem, architecto.<\\/p><\\/div>\"}', '2022-01-27 07:01:56', '2022-01-27 08:07:48'),
(71, 'policies.element', '{\"title\":\"Terms and Conditions\",\"details\":\"<h4 class=\\\"title\\\" style=\\\"margin:0px 0px 15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\">Overview<\\/h4><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\"><\\/h4><div class=\\\"content-item\\\" style=\\\"margin-bottom:40px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;font-weight:400;\\\"><p style=\\\"margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Assumenda officia vel omnis, odit quidem, expedita nam deserunt molestiae accusamus voluptas aut. Sapiente voluptatem nulla unde quia harum illum ipsum dolore! Lorem ipsum dolor sit amet consectetur adipisicing elit. In dolorem illum molestiae corrupti, maxime sint velit quibusdam officiis ipsam a minima quos voluptates possimus eaque, vitae, veniam consequuntur! Dolorem, architecto.<\\/p><\\/div><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\">Data Collection &amp; Use<\\/h4><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\"><\\/h4><div class=\\\"content-item\\\" style=\\\"margin-bottom:40px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;font-weight:400;\\\"><p style=\\\"margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Assumenda officia vel omnis, odit quidem, expedita nam deserunt molestiae accusamus voluptas aut. Sapiente voluptatem nulla unde quia harum illum ipsum dolore! Lorem ipsum dolor sit amet consectetur adipisicing elit. In dolorem illum molestiae corrupti, maxime sint velit quibusdam officiis ipsam a minima quos voluptates possimus eaque, vitae, veniam consequuntur! Dolorem, architecto.<\\/p><ul class=\\\"info-list\\\" style=\\\"margin-top:15px;margin-bottom:-7px;\\\"><li style=\\\"list-style:none;padding:7px 0px 7px 25px;\\\">There are many variations of passages of Lorem available, but the majority<\\/li><li style=\\\"list-style:none;padding:7px 0px 7px 25px;\\\">Finibus onorum et alorum\\\" by icero classical lite rature, discovered<\\/li><li style=\\\"list-style:none;padding:7px 0px 7px 25px;\\\">There are many variations of passages of Lorem available, but the majority<\\/li><li style=\\\"list-style:none;padding:7px 0px 7px 25px;\\\">There are many variations of passages of Lorem available, but the majority<\\/li><\\/ul><\\/div><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\">Cookies Data<\\/h4><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\"><\\/h4><div class=\\\"content-item\\\" style=\\\"margin-bottom:40px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;font-weight:400;\\\"><p style=\\\"margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Assumenda officia vel omnis, odit quidem, expedita nam deserunt molestiae accusamus voluptas aut. Sapiente voluptatem nulla unde quia harum illum ipsum dolore! Lorem ipsum dolor sit amet consectetur adipisicing elit. In dolorem illum molestiae corrupti, maxime sint velit quibusdam officiis ipsam a minima quos voluptates possimus eaque, vitae, veniam consequuntur! Dolorem, architecto.<\\/p><\\/div><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\">Data Collection &amp; Use<\\/h4><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\"><\\/h4><div class=\\\"content-item\\\" style=\\\"margin-bottom:40px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;font-weight:400;\\\"><p style=\\\"margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Assumenda officia vel omnis, odit quidem, expedita nam deserunt molestiae accusamus voluptas aut. Sapiente voluptatem nulla unde quia harum illum ipsum dolore! Lorem ipsum dolor sit amet consectetur adipisicing elit. In dolorem illum molestiae corrupti, maxime sint velit quibusdam officiis ipsam a minima quos voluptates possimus eaque, vitae, veniam consequuntur! Dolorem, architecto.<\\/p><\\/div><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\">Data Cookies<\\/h4><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\"><\\/h4><div class=\\\"content-item\\\" style=\\\"margin-bottom:40px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;font-weight:400;\\\"><p style=\\\"margin-right:0px;margin-left:0px;padding:0px;\\\">deserunt molestiae accusamus voluptas aut. Sapiente voluptatem nulla unde quia harum illum ipsum dolore! Lorem ipsum dolor sit amet consectetur adipisicing elit. In dolorem illum molestiae corrupti, maxime sint velit quibusdam officiis ipsam a minima quos voluptates possimus eaque, vitae, veniam consequuntur! Dolorem, architecto. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Assumenda officia vel omnis, odit quidem, expedita nam deserunt molestiae accusamus voluptas aut. Sapiente voluptatem nulla unde quia harum illum ipsum dolore! Lorem ipsum dolor sit amet consectetur adipisicing elit. In dolorem illum molestiae corrupti, maxime sint velit quibusdam officiis ipsam a minima quos voluptates possimus eaque, vitae, veniam consequuntur! Dolorem, architecto.<\\/p><\\/div><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\">Data Storage<\\/h4><h4 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.2;font-size:24px;color:rgb(66,66,72);font-family:Georama, sans-serif;\\\"><\\/h4><div class=\\\"content-item\\\" style=\\\"margin-bottom:40px;color:rgb(119,119,119);font-family:Lato, sans-serif;font-size:16px;font-weight:400;\\\"><p style=\\\"margin-right:0px;margin-left:0px;padding:0px;\\\">Pconsectetur adipisicing elit. Assumenda officia vel omnis, odit quidem, expedita nam deserunt molestiae accusamus voluptas aut. Sapiente voluptatem nulla unde quia harum illum ipsum dolore! Lorem ipsum dolor sit amet consectetur adipisicing elit. In dolorem illum molestiae corrupti, maxime sint velit quibusdam officiis ipsam a minima quos voluptates possimus eaque, vitae, veniam consequuntur! Dolorem, architecto.<\\/p><\\/div>\"}', '2022-01-27 07:02:26', '2022-02-14 11:53:53'),
(74, 'sign_in.content', '{\"has_image\":\"1\",\"heading\":\"Welcome to Bus Booking\",\"sub_heading\":\"Sign In your Account\",\"background_image\":\"67ee8f6ba05401743687531.jpg\"}', '2022-01-27 10:54:58', '2025-04-03 11:38:52'),
(75, 'sign_up.content', '{\"has_image\":\"1\",\"heading\":\"Welcome to Bus Booking\",\"sub_heading\":\"Sign Up your Account\",\"background_image\":\"67ee8f7d7e7171743687549.jpg\"}', '2022-01-27 10:55:28', '2025-04-03 11:39:10'),
(77, 'cookie_policy.content', '{\"title\":\"Cookie Policy\",\"details\":\"<h3 style=\\\"margin-top:15px;margin-bottom:15px;padding:0px;font-weight:700;font-size:14px;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\">The standard Lorem Ipsum passage, used since the 1500s<\\/h3><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3 style=\\\"margin-top:15px;margin-bottom:15px;padding:0px;font-weight:700;font-size:14px;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top:15px;margin-bottom:15px;padding:0px;font-weight:700;font-size:14px;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3 style=\\\"margin-top:15px;margin-bottom:15px;padding:0px;font-weight:700;font-size:14px;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\">Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3 style=\\\"margin-top:15px;margin-bottom:15px;padding:0px;font-weight:700;font-size:14px;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p>\"}', '2022-01-30 13:27:14', '2022-01-30 13:27:14'),
(78, 'amenities.element', '{\"title\":\"Wifi\",\"icon\":\"<i class=\\\"las la-wifi\\\"><\\/i>\"}', '2022-02-10 00:07:40', '2022-02-10 00:07:40'),
(79, 'amenities.element', '{\"title\":\"Pillow\",\"icon\":\"<i class=\\\"las la-bed\\\"><\\/i>\"}', '2022-02-10 00:11:36', '2022-02-10 00:11:36'),
(80, 'amenities.element', '{\"title\":\"Water Bottle\",\"icon\":\"<i class=\\\"las la-prescription-bottle\\\"><\\/i>\"}', '2022-02-10 00:12:02', '2022-02-10 00:12:02'),
(81, 'amenities.element', '{\"title\":\"Soft Drinks\",\"icon\":\"<i class=\\\"fas fa-wine-glass-alt\\\"><\\/i>\"}', '2022-02-10 00:12:34', '2022-02-10 00:12:34'),
(83, 'forgot_password.content', '{\"has_image\":\"1\",\"heading\":\"Reset Password\",\"background_image\":\"67ee8f2f9601f1743687471.jpg\"}', '2022-02-16 22:51:14', '2025-04-03 11:37:53'),
(84, 'verify_code.content', '{\"has_image\":\"1\",\"heading\":\"Account Recovery\",\"background_image\":\"67ee8f9823c7c1743687576.jpg\"}', '2022-02-16 22:59:12', '2025-04-03 11:39:37'),
(85, 'reset_password.content', '{\"has_image\":\"1\",\"heading\":\"Reset Password page\",\"background_image\":\"620ce06fce3161645011055.jpg\"}', '2022-02-16 23:00:55', '2022-02-16 23:00:56'),
(86, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Where can I get some?\",\"description\":\"<span style=\\\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.<\\/span><br \\/>\",\"image\":\"62108d39a938f1645251897.jpg\"}', '2022-02-19 17:54:57', '2022-02-19 17:54:58'),
(87, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Why do we use it?\",\"description\":\"<p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.<\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\\"de Finibus Bonorum et Malorum\\\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\",\"image\":\"62108d54284f11645251924.jpg\"}', '2022-02-19 17:55:24', '2022-02-19 17:55:24'),
(88, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Lorem Ipsum is simply dummy\",\"description\":\"<strong style=\\\"margin:0px;padding:0px;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\\\">Lorem Ipsum<\\/strong><span style=\\\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\\\">\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/span><br \\/>\",\"image\":\"62108d71dc2dc1645251953.jpg\"}', '2022-02-19 17:55:53', '2022-02-19 17:55:54');
INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `created_at`, `updated_at`) VALUES
(89, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"The standard Lorem Ipsum passage, used since the 1500s\",\"description\":\"<h3 style=\\\"margin-top:15px;margin-bottom:15px;padding:0px;font-weight:700;font-size:14px;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\"><span style=\\\"color:rgb(0,0,0);font-weight:400;text-align:justify;\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/span><br \\/><\\/h3><h3 style=\\\"margin-top:15px;margin-bottom:15px;padding:0px;font-weight:700;font-size:14px;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p>\",\"image\":\"6210e4b6d132d1645274294.jpg\"}', '2022-02-19 17:56:27', '2022-02-19 06:38:15'),
(90, 'policies.element', '{\"title\":\"Ticket Policies\",\"details\":\"<p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sem eros, luctus at sem id, commodo maximus mi. In finibus ac mi vitae gravida. Cras hendrerit sit amet quam vel vehicula. Sed id malesuada ante. Etiam vel diam ligula. Nam malesuada nisi sit amet tempor ultricies. Pellentesque felis sapien, fermentum nec tortor nec, consectetur scelerisque risus. Maecenas et mauris odio. Etiam finibus ex vel laoreet semper. Phasellus eget mauris a elit lacinia condimentum. Sed vitae consectetur nibh.<\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">Donec id dui in nibh pellentesque congue. Cras sit amet dictum nisi, a cursus dui. Pellentesque ac hendrerit lacus. Integer faucibus velit et mauris porta, sit amet mollis turpis maximus. Mauris eu semper augue. Curabitur bibendum tellus nec pellentesque elementum. In imperdiet efficitur volutpat. Sed lobortis ultrices eros. Cras efficitur purus vel velit molestie, a blandit metus porta. Fusce nec diam lectus. In iaculis ante consequat dolor vehicula facilisis. Suspendisse gravida turpis vitae risus dignissim, id finibus lacus maximus. Aliquam urna orci, fermentum ac placerat quis, elementum ut dolor.<\\/p>\"}', '2022-02-19 19:53:30', '2022-02-19 19:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` int(10) DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `alias` varchar(40) NOT NULL DEFAULT 'NULL',
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=>enable, 2=>disable',
  `gateway_parameters` text DEFAULT NULL,
  `supported_currencies` text DEFAULT NULL,
  `crypto` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: fiat currency, 1: crypto currency',
  `extra` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `input_form` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `code`, `name`, `alias`, `image`, `status`, `gateway_parameters`, `supported_currencies`, `crypto`, `extra`, `description`, `input_form`, `created_at`, `updated_at`) VALUES
(1, 101, 'Paypal', 'Paypal', '5f6f1bd8678601601117144.jpg', 1, '{\"paypal_email\":{\"title\":\"PayPal Email\",\"global\":true,\"value\":\"sb-owud61543012@business.example.com\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:04:38'),
(2, 102, 'Perfect Money', 'PerfectMoney', '5f6f1d2a742211601117482.jpg', 0, '{\"passphrase\":{\"title\":\"ALTERNATE PASSPHRASE\",\"global\":true,\"value\":\"hR26aw02Q1eEeUPSIfuwNypXX\"},\"wallet_id\":{\"title\":\"PM Wallet\",\"global\":false,\"value\":\"\"}}', '{\"USD\":\"$\",\"EUR\":\"\\u20ac\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2025-03-20 15:10:51'),
(3, 103, 'Stripe Hosted', 'Stripe', '5f6f1d4bc69e71601117515.jpg', 0, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2025-03-20 15:11:12'),
(4, 104, 'Skrill', 'Skrill', '5f6f1d41257181601117505.jpg', 0, '{\"pay_to_email\":{\"title\":\"Skrill Email\",\"global\":true,\"value\":\"merchant@skrill.com\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"---\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"MAD\":\"MAD\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"SAR\":\"SAR\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TND\":\"TND\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\",\"COP\":\"COP\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2025-03-20 15:11:05'),
(5, 105, 'PayTM', 'Paytm', '5f6f1d1d3ec731601117469.jpg', 0, '{\"MID\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"DIY12386817555501617\"},\"merchant_key\":{\"title\":\"Merchant Key\",\"global\":true,\"value\":\"bKMfNxPPf_QdZppa\"},\"WEBSITE\":{\"title\":\"Paytm Website\",\"global\":true,\"value\":\"DIYtestingweb\"},\"INDUSTRY_TYPE_ID\":{\"title\":\"Industry Type\",\"global\":true,\"value\":\"Retail\"},\"CHANNEL_ID\":{\"title\":\"CHANNEL ID\",\"global\":true,\"value\":\"WEB\"},\"transaction_url\":{\"title\":\"Transaction URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/oltp-web\\/processTransaction\"},\"transaction_status_url\":{\"title\":\"Transaction STATUS URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/paytmchecksum\\/paytmCallback.jsp\"}}', '{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2025-03-20 15:10:44'),
(6, 106, 'Payeer', 'Payeer', '5f6f1bc61518b1601117126.jpg', 0, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"866989763\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"7575\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"RUB\":\"RUB\"}', 0, '{\"status\":{\"title\": \"Status URL\",\"value\":\"ipn.Payeer\"}}', NULL, NULL, '2019-09-14 13:14:22', '2020-12-28 01:26:58'),
(7, 107, 'PayStack', 'Paystack', '5f7096563dfb71601214038.jpg', 0, '{\"public_key\":{\"title\":\"Public key\",\"global\":true,\"value\":\"pk_test_cd330608eb47970889bca397ced55c1dd5ad3783\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"sk_test_8a0b1f199362d7acc9c390bff72c4e81f74e2ac3\"}}', '{\"USD\":\"USD\",\"NGN\":\"NGN\"}', 0, '{\"callback\":{\"title\": \"Callback URL\",\"value\":\"ipn.Paystack\"},\"webhook\":{\"title\": \"Webhook URL\",\"value\":\"ipn.Paystack\"}}\r\n', NULL, NULL, '2019-09-14 13:14:22', '2025-03-20 15:10:36'),
(8, 108, 'VoguePay', 'Voguepay', '5f6f1d5951a111601117529.jpg', 0, '{\"merchant_id\":{\"title\":\"MERCHANT ID\",\"global\":true,\"value\":\"demo\"}}', '{\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2025-03-20 15:11:26'),
(9, 109, 'Flutterwave', 'Flutterwave', '5f6f1b9e4bb961601117086.jpg', 0, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"----------------\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"-----------------------\"},\"encryption_key\":{\"title\":\"Encryption Key\",\"global\":true,\"value\":\"------------------\"}}', '{\"BIF\":\"BIF\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CVE\":\"CVE\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"GHS\":\"GHS\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"KES\":\"KES\",\"LRD\":\"LRD\",\"MWK\":\"MWK\",\"MZN\":\"MZN\",\"NGN\":\"NGN\",\"RWF\":\"RWF\",\"SLL\":\"SLL\",\"STD\":\"STD\",\"TZS\":\"TZS\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"XAF\":\"XAF\",\"XOF\":\"XOF\",\"ZMK\":\"ZMK\",\"ZMW\":\"ZMW\",\"ZWD\":\"ZWD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2025-03-20 15:09:58'),
(10, 110, 'RazorPay', 'Razorpay', '5f6f1d3672dd61601117494.jpg', 0, '{\"key_id\":{\"title\":\"Key Id\",\"global\":true,\"value\":\"rzp_test_kiOtejPbRZU90E\"},\"key_secret\":{\"title\":\"Key Secret \",\"global\":true,\"value\":\"osRDebzEqbsE1kbyQJ4y0re7\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2025-03-20 15:10:57'),
(11, 111, 'Stripe Storefront', 'StripeJs', '5f7096a31ed9a1601214115.jpg', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2025-04-01 08:06:46'),
(12, 112, 'Instamojo', 'Instamojo', '5f6f1babbdbb31601117099.jpg', 0, '{\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_2241633c3bc44a3de84a3b33969\"},\"auth_token\":{\"title\":\"Auth Token\",\"global\":true,\"value\":\"test_279f083f7bebefd35217feef22d\"},\"salt\":{\"title\":\"Salt\",\"global\":true,\"value\":\"19d38908eeff4f58b2ddda2c6d86ca25\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2025-03-20 15:09:38'),
(13, 501, 'Blockchain', 'Blockchain', '5f6f1b2b20c6f1601116971.jpg', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"55529946-05ca-48ff-8710-f279d86b1cc5\"},\"xpub_code\":{\"title\":\"XPUB CODE\",\"global\":true,\"value\":\"xpub6CKQ3xxWyBoFAF83izZCSFUorptEU9AF8TezhtWeMU5oefjX3sFSBw62Lr9iHXPkXmDQJJiHZeTRtD9Vzt8grAYRhvbz4nEvBu3QKELVzFK\"}}', '{\"BTC\":\"BTC\"}', 1, NULL, NULL, NULL, '2019-09-14 13:14:22', '2025-03-20 15:08:46'),
(14, 502, 'Block.io', 'Blockio', '5f6f19432bedf1601116483.jpg', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":false,\"value\":\"1658-8015-2e5e-9afb\"},\"api_pin\":{\"title\":\"API PIN\",\"global\":true,\"value\":\"75757575\"}}', '{\"BTC\":\"BTC\",\"LTC\":\"LTC\"}', 1, '{\"cron\":{\"title\": \"Cron URL\",\"value\":\"ipn.Blockio\"}}', NULL, NULL, '2019-09-14 13:14:22', '2025-03-20 15:08:42'),
(15, 503, 'CoinPayments', 'Coinpayments', '5f6f1b6c02ecd1601117036.jpg', 0, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"---------------\"},\"private_key\":{\"title\":\"Private Key\",\"global\":true,\"value\":\"------------\"},\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"93a1e014c4ad60a7980b4a7239673cb4\"}}', '{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT\":\"Tether USD (Omni Layer)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}', 1, NULL, NULL, NULL, '2019-09-14 13:14:22', '2025-03-20 15:09:23'),
(16, 504, 'CoinPayments Fiat', 'CoinpaymentsFiat', '5f6f1b94e9b2b1601117076.jpg', 0, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"6515561\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2025-03-20 15:09:29'),
(17, 505, 'Coingate', 'Coingate', '5f6f1b5fe18ee1601117023.jpg', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"6354mwVCEw5kHzRJ6thbGo-N\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2025-03-20 15:09:03'),
(18, 506, 'Coinbase Commerce', 'CoinbaseCommerce', '5f6f1b4c774af1601117004.jpg', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"c47cd7df-d8e8-424b-a20a\"},\"secret\":{\"title\":\"Webhook Shared Secret\",\"global\":true,\"value\":\"55871878-2c32-4f64-ab66\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"JPY\":\"JPY\",\"GBP\":\"GBP\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CNY\":\"CNY\",\"SEK\":\"SEK\",\"NZD\":\"NZD\",\"MXN\":\"MXN\",\"SGD\":\"SGD\",\"HKD\":\"HKD\",\"NOK\":\"NOK\",\"KRW\":\"KRW\",\"TRY\":\"TRY\",\"RUB\":\"RUB\",\"INR\":\"INR\",\"BRL\":\"BRL\",\"ZAR\":\"ZAR\",\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CDF\":\"CDF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NPR\":\"NPR\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}\r\n\r\n', 0, '{\"endpoint\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.CoinbaseCommerce\"}}', NULL, NULL, '2019-09-14 13:14:22', '2025-03-20 15:08:57'),
(24, 113, 'Paypal Express', 'PaypalSdk', '5f6f1bec255c61601117164.jpg', 0, '{\"clientId\":{\"title\":\"Paypal Client ID\",\"global\":true,\"value\":\"Ae0-tixtSV7DvLwIh3Bmu7JvHrjh5EfGdXr_cEklKAVjjezRZ747BxKILiBdzlKKyp-W8W_T7CKH1Ken\"},\"clientSecret\":{\"title\":\"Client Secret\",\"global\":true,\"value\":\"EOhbvHZgFNO21soQJT1L9Q00M3rK6PIEsdiTgXRBt2gtGtxwRer5JvKnVUGNU5oE63fFnjnYY7hq3HBA\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2025-03-20 15:09:49'),
(25, 114, 'Stripe Checkout', 'StripeV3', '5f709684736321601214084.jpg', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM\"},\"end_point\":{\"title\":\"End Point Secret\",\"global\":true,\"value\":\"whsec_lUmit1gtxwKTveLnSe88xCSDdnPOt8g5\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, '{\"webhook\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.StripeV3\"}}', NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:58:38'),
(27, 115, 'Mollie', 'Mollie', '5f6f1bb765ab11601117111.jpg', 0, '{\"mollie_email\":{\"title\":\"Mollie Email \",\"global\":true,\"value\":\"vi@gmail.com\"},\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_cucfwKTWfft9s337qsVfn5CC4vNkrn\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2025-03-20 15:10:29'),
(30, 116, 'Cashmaal', 'Cashmaal', '60d1a0b7c98311624350903.png', 0, '{\"web_id\":{\"title\":\"Web Id\",\"global\":true,\"value\":\"3748\"},\"ipn_key\":{\"title\":\"IPN Key\",\"global\":true,\"value\":\"546254628759524554647987\"}}', '{\"PKR\":\"PKR\",\"USD\":\"USD\"}', 0, '{\"webhook\":{\"title\": \"IPN URL\",\"value\":\"ipn.Cashmaal\"}}', NULL, NULL, NULL, '2025-03-20 15:08:51'),
(36, 119, 'Mercado Pago', 'MercadoPago', '60f2ad85a82951626516869.png', 0, '{\"access_token\":{\"title\":\"Access Token\",\"global\":true,\"value\":\"3Vee5S2F\"}}', '{\"USD\":\"USD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"NOK\":\"NOK\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"AUD\":\"AUD\",\"NZD\":\"NZD\"}', 0, NULL, NULL, NULL, NULL, '2025-03-20 15:10:09'),
(37, 1000, 'MTN', 'mtn', '67dc384769d241742485575.png', 1, '[]', '[]', 0, NULL, '<br>', '{\"proof_of_payment\":{\"field_name\":\"proof_of_payment\",\"field_level\":\"Proof of Payment\",\"type\":\"file\",\"validation\":\"required\"}}', '2025-03-20 13:46:16', '2025-03-20 14:12:26'),
(38, 1001, 'AIRTEL', 'airtel', '67dc6e30c5f6c1742499376.jpg', 1, '[]', '[]', 0, NULL, '<br>', '{\"proof_of_payment\":{\"field_name\":\"proof_of_payment\",\"field_level\":\"Proof of Payment\",\"type\":\"file\",\"validation\":\"required\"}}', '2025-03-20 17:36:17', '2025-03-20 17:36:27');

-- --------------------------------------------------------

--
-- Table structure for table `gateway_currencies`
--

CREATE TABLE `gateway_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `currency` varchar(40) DEFAULT NULL,
  `symbol` varchar(40) DEFAULT NULL,
  `method_code` int(10) DEFAULT NULL,
  `gateway_alias` varchar(40) DEFAULT NULL,
  `min_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `max_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `percent_charge` decimal(5,2) NOT NULL DEFAULT 0.00,
  `fixed_charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `image` varchar(255) DEFAULT NULL,
  `gateway_parameter` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateway_currencies`
--

INSERT INTO `gateway_currencies` (`id`, `name`, `currency`, `symbol`, `method_code`, `gateway_alias`, `min_amount`, `max_amount`, `percent_charge`, `fixed_charge`, `rate`, `image`, `gateway_parameter`, `created_at`, `updated_at`) VALUES
(3, 'Paypal', 'RWF', 'RF', 101, 'Paypal', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '5f6f1bd8678601601117144.jpg', '{\"paypal_email\":{\"title\":\"PayPal Email\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(4, 'Perfect Money', 'RWF', 'RF', 102, 'PerfectMoney', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '5f6f1d2a742211601117482.jpg', '{\"passphrase\":{\"title\":\"ALTERNATE PASSPHRASE\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(5, 'Stripe Hosted', 'RWF', 'RF', 103, 'Stripe', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '5f6f1d4bc69e71601117515.jpg', '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(6, 'Skrill', 'RWF', 'RF', 104, 'Skrill', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '5f6f1d41257181601117505.jpg', '{\"pay_to_email\":{\"title\":\"Skrill Email\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(7, 'PayTM', 'RWF', 'RF', 105, 'Paytm', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '5f6f1d1d3ec731601117469.jpg', '{\"MID\":{\"title\":\"Merchant ID\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(8, 'Payeer', 'RWF', 'RF', 106, 'Payeer', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '5f6f1bc61518b1601117126.jpg', '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(9, 'PayStack', 'RWF', 'RF', 107, 'Paystack', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '5f7096563dfb71601214038.jpg', '{\"public_key\":{\"title\":\"Public key\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(10, 'VoguePay', 'RWF', 'RF', 108, 'Voguepay', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '5f6f1d5951a111601117529.jpg', '{\"merchant_id\":{\"title\":\"MERCHANT ID\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(11, 'Flutterwave', 'RWF', 'RF', 109, 'Flutterwave', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '5f6f1b9e4bb961601117086.jpg', '{\"public_key\":{\"title\":\"Public Key\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(12, 'RazorPay', 'RWF', 'RF', 110, 'Razorpay', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '5f6f1d3672dd61601117494.jpg', '{\"key_id\":{\"title\":\"Key Id\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(13, 'Stripe Storefront', 'RWF', 'RF', 111, 'StripeJs', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '5f7096a31ed9a1601214115.jpg', '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(14, 'Instamojo', 'RWF', 'RF', 112, 'Instamojo', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '5f6f1babbdbb31601117099.jpg', '{\"api_key\":{\"title\":\"API KEY\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(15, 'Blockchain', 'RWF', 'RF', 501, 'Blockchain', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '5f6f1b2b20c6f1601116971.jpg', '{\"api_key\":{\"title\":\"API Key\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(16, 'Block.io', 'RWF', 'RF', 502, 'Blockio', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '5f6f19432bedf1601116483.jpg', '{\"api_key\":{\"title\":\"API Key\",\"global\":false}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(17, 'CoinPayments', 'RWF', 'RF', 503, 'Coinpayments', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '5f6f1b6c02ecd1601117036.jpg', '{\"public_key\":{\"title\":\"Public Key\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(18, 'CoinPayments Fiat', 'RWF', 'RF', 504, 'CoinpaymentsFiat', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '5f6f1b94e9b2b1601117076.jpg', '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(19, 'Coingate', 'RWF', 'RF', 505, 'Coingate', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '5f6f1b5fe18ee1601117023.jpg', '{\"api_key\":{\"title\":\"API Key\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(20, 'Coinbase Commerce', 'RWF', 'RF', 506, 'CoinbaseCommerce', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '5f6f1b4c774af1601117004.jpg', '{\"api_key\":{\"title\":\"API Key\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(21, 'Paypal Express', 'RWF', 'RF', 113, 'PaypalSdk', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '5f6f1bec255c61601117164.jpg', '{\"clientId\":{\"title\":\"Paypal Client ID\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(22, 'Stripe Checkout', 'RWF', 'RF', 114, 'StripeV3', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '5f709684736321601214084.jpg', '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(23, 'Mollie', 'RWF', 'RF', 115, 'Mollie', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '5f6f1bb765ab11601117111.jpg', '{\"mollie_email\":{\"title\":\"Mollie Email\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(24, 'Cashmaal', 'RWF', 'RF', 116, 'Cashmaal', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '60d1a0b7c98311624350903.png', '{\"web_id\":{\"title\":\"Web Id\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(25, 'Mercado Pago', 'RWF', 'RF', 119, 'MercadoPago', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '60f2ad85a82951626516869.png', '{\"access_token\":{\"title\":\"Access Token\",\"global\":true}}', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(26, 'MTN', 'RWF', 'RF', 1000, 'mtn', 0.00000000, 100000000000.00000000, 0.00, 0.00000000, 1.00000000, '67dc384769d241742485575.png', '[]', '2025-03-20 16:55:00', '2025-03-20 16:55:00'),
(27, 'AIRTEL', 'RWF', '', 1001, 'airtel', 1.00000000, 1000000000.00000000, 0.00, 0.00000000, 1.00000000, '67dc6e30c5f6c1742499376.jpg', '{\"proof_of_payment\":{\"field_name\":\"proof_of_payment\",\"field_level\":\"Proof of Payment\",\"type\":\"file\",\"validation\":\"required\"}}', '2025-03-20 17:36:17', '2025-03-20 17:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitename` varchar(40) DEFAULT NULL,
  `cur_text` varchar(40) DEFAULT NULL COMMENT 'currency text',
  `cur_sym` varchar(40) DEFAULT NULL COMMENT 'currency symbol',
  `email_from` varchar(40) DEFAULT NULL,
  `email_template` text DEFAULT NULL,
  `sms_api` varchar(255) DEFAULT NULL,
  `base_color` varchar(40) DEFAULT NULL,
  `mail_config` text DEFAULT NULL COMMENT 'email configuration',
  `sms_config` text DEFAULT NULL,
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email verification, 0 - dont check, 1 - check',
  `en` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email notification, 0 - dont send, 1 - send',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms verication, 0 - dont check, 1 - check',
  `sn` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms notification, 0 - dont send, 1 - send',
  `force_ssl` tinyint(1) NOT NULL DEFAULT 0,
  `secure_password` tinyint(1) NOT NULL DEFAULT 0,
  `agree` tinyint(1) NOT NULL DEFAULT 0,
  `registration` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Off	, 1: On',
  `active_template` varchar(40) DEFAULT NULL,
  `sys_version` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `sitename`, `cur_text`, `cur_sym`, `email_from`, `email_template`, `sms_api`, `base_color`, `mail_config`, `sms_config`, `ev`, `en`, `sv`, `sn`, `force_ssl`, `secure_password`, `agree`, `registration`, `active_template`, `sys_version`, `created_at`, `updated_at`) VALUES
(1, 'E-Ticket', 'RWF', 'rwf', 'heofla2019@gmail.com', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>E-Ticket Notification</title>\r\n\r\n\r\n\r\n<div style=\"width: 100%; max-width: 800px; margin: 20px auto; background: #ffffff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\">\r\n    <!-- Header -->\r\n    <div style=\"background-color: #059199; color: white; text-align: center; padding: 25px 20px; font-size: 24px; font-weight: bold; border-top-left-radius: 8px; border-top-right-radius: 8px;\">\r\n        E-Ticket Notification\r\n    </div>\r\n\r\n    <!-- Content -->\r\n    <div style=\"padding: 30px; color: #414a51; font-size: 16px; line-height: 1.6;\">\r\n        <h2 style=\"font-size: 20px;\">Dear&nbsp;<strong>{{fullname}}</strong>,</h2>\r\n        <p>{{message}}</p>\r\n       <br> <small>If you have any questions or need further assistance, feel free to reach out to our support team.</small>\r\n       <br> <small>Thank you for choosing <strong>E-Ticket</strong>.</small>\r\n       <br> <small>Best Regards,</small><br>\r\n       <small><strong>Eric H Ofla</strong></small>\r\n    </div>\r\n\r\n    <!-- Footer -->\r\n    <div style=\"background-color: #f4f4f4; text-align: center; padding: 15px; font-size: 14px; color: #95a5a6; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;\">\r\n        <p>© 2025 E-Ticket. All Rights Reserved.</p>\r\n        <p><a href=\"http://127.0.0.1:8000/policy/71/terms-and-conditions\" style=\"color: #059199; text-decoration: none; font-weight: bold;\">Terms &amp; Conditions</a></p>\r\n    </div>\r\n</div>', 'hi {{name}}, {{message}}', '059199', '{\"name\":\"smtp\",\"host\":\"smtp.gmail.com\",\"port\":\"465\",\"enc\":\"ssl\",\"username\":\"heofla2019@gmail.com\",\"password\":\"klni vmzz fptz wgeg\"}', '{\"clickatell_api_key\":\"TnG2TsN-S4mZhHf8lYSNpQ==\",\"infobip_username\":\"--------------\",\"infobip_password\":\"----------------------\",\"message_bird_api_key\":\"-------------------\",\"nexmo_api_key\":\"----------------------\",\"nexmo_api_secret\":\"----------------------\",\"sms_broadcast_username\":\"----------------------\",\"sms_broadcast_password\":\"-----------------------------\",\"account_sid\":\"AC1b5f10b0d6bf86d37395715f941bc2e3\",\"auth_token\":\"2ff09129678877d30ee63af31e938d8d\",\"from\":\"+250785263931\",\"text_magic_username\":\"-----------------------\",\"apiv2_key\":\"-------------------------------\",\"name\":\"clickatell\"}', 1, 1, 0, 1, 0, 1, 1, 1, 'basic', NULL, NULL, '2025-04-03 11:00:55');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `code` varchar(40) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `text_align` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: left to right text align, 1: right to left text align',
  `is_default` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: not default language, 1: default language',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `icon`, `text_align`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', '5f15968db08911595250317.png', 0, 1, '2020-07-06 03:47:55', '2022-02-19 06:19:39'),
(5, 'Hindi', 'hn', NULL, 0, 0, '2020-12-29 02:20:07', '2020-12-29 02:20:16'),
(9, 'Bangla', 'bn', NULL, 0, 0, '2021-03-14 04:37:41', '2021-05-12 05:34:06'),
(11, 'Kiny', 'rw', NULL, 0, 0, '2025-03-21 09:01:26', '2025-03-21 09:01:26');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `slug` varchar(40) DEFAULT NULL,
  `tempname` varchar(40) DEFAULT NULL COMMENT 'template name',
  `secs` text DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `tempname`, `secs`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'HOME', 'home', 'templates.basic.', '[\"how_it_works\",\"amenities\",\"testimonials\",\"blog\"]', 1, '2020-07-11 06:23:58', '2022-02-19 22:35:26'),
(4, 'Blog', 'blog', 'templates.basic.', NULL, 1, '2020-10-22 01:14:43', '2022-02-19 11:22:45'),
(5, 'Contact', 'contact', 'templates.basic.', NULL, 1, '2020-10-22 01:14:53', '2020-10-22 01:14:53'),
(12, 'About', 'about-us', 'templates.basic.', '[\"about\"]', 0, '2022-01-27 06:28:52', '2022-02-19 11:22:24'),
(13, 'FAQs', 'faq', 'templates.basic.', '[\"faq\"]', 0, '2022-02-19 22:35:49', '2022-02-19 22:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(40) NOT NULL,
  `token` varchar(40) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('heshimaahayo@gmail.com', '837177', '2025-03-19 09:07:43'),
('ericofla1@gmail.com', '254161', '2025-03-19 21:02:50');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_from` time DEFAULT NULL,
  `end_at` time DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `start_from`, `end_at`, `status`, `created_at`, `updated_at`) VALUES
(1, '05:00:00', '08:00:00', 1, '2025-03-19 11:16:57', '2025-03-19 21:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `seat_layouts`
--

CREATE TABLE `seat_layouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `layout` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seat_layouts`
--

INSERT INTO `seat_layouts` (`id`, `layout`, `created_at`, `updated_at`) VALUES
(3, '1 x 2', '2025-03-19 20:44:39', '2025-03-19 20:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `support_attachments`
--

CREATE TABLE `support_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_message_id` int(10) UNSIGNED NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_attachments`
--

INSERT INTO `support_attachments` (`id`, `support_message_id`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 1, '67e5b32f6c2591743106863.png', '2025-03-27 18:21:03', '2025-03-27 18:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `support_messages`
--

CREATE TABLE `support_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supportticket_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_messages`
--

INSERT INTO `support_messages` (`id`, `supportticket_id`, `admin_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'njhk', '2025-03-27 18:21:03', '2025-03-27 18:21:03'),
(2, 1, 1, 'Hii', '2025-03-27 18:22:34', '2025-03-27 18:22:34'),
(3, 1, 0, 'hii two', '2025-03-27 18:23:17', '2025-03-27 18:23:17');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) DEFAULT 0,
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `ticket` varchar(40) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed',
  `priority` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = Low, 2 = medium, 3 = heigh',
  `last_reply` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`id`, `user_id`, `name`, `email`, `ticket`, `subject`, `status`, `priority`, `last_reply`, `created_at`, `updated_at`) VALUES
(1, 1, 'heshima ahayo nehemie', 'heshimaahayo@gmail.com', '994371', 'Test Email', 3, 3, '2025-03-27 20:23:17', '2025-03-27 18:21:03', '2025-03-27 18:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_prices`
--

CREATE TABLE `ticket_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fleet_type_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `vehicle_route_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_prices`
--

INSERT INTO `ticket_prices` (`id`, `fleet_type_id`, `vehicle_route_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 50.00, '2025-03-19 11:17:55', '2025-03-19 11:17:55'),
(2, 2, 1, 3742.00, '2025-03-19 20:20:01', '2025-03-19 20:20:01'),
(3, 3, 2, 2178.00, '2025-03-20 14:34:11', '2025-03-20 14:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_price_by_stoppages`
--

CREATE TABLE `ticket_price_by_stoppages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_price_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `source_destination` varchar(40) DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_price_by_stoppages`
--

INSERT INTO `ticket_price_by_stoppages` (`id`, `ticket_price_id`, `source_destination`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, '[\"1\",\"2\"]', 60.00, '2025-03-19 11:17:56', '2025-03-19 11:17:56'),
(2, 2, '[\"1\",\"2\"]', 3742.00, '2025-03-19 20:20:01', '2025-03-19 20:20:01'),
(3, 3, '[\"1\",\"3\"]', 2178.00, '2025-03-20 14:34:11', '2025-03-20 14:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `fleet_type_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `vehicle_route_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `schedule_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `start_from` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `end_to` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `day_off` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `title`, `fleet_type_id`, `vehicle_route_id`, `schedule_id`, `start_from`, `end_to`, `day_off`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Public Transportation - kigali - Huye', 1, 1, 1, 1, 2, '[\"0\"]', 1, '2025-03-19 11:18:46', '2025-03-19 11:18:46'),
(2, 'Horizon Express - kigali - Huye', 2, 1, 1, 1, 2, '[\"5\"]', 1, '2025-03-19 20:31:38', '2025-03-19 20:31:38'),
(3, 'Volcano Express - kigali - Ruhango', 3, 2, 1, 1, 3, '[\"6\"]', 1, '2025-03-20 14:35:14', '2025-03-20 14:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `country_code` varchar(40) DEFAULT NULL,
  `mobile` varchar(40) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL COMMENT 'contains full address',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: banned, 1: active',
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: email unverified, 1: email verified',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: sms unverified, 1: sms verified',
  `ver_code` varchar(40) DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `tsc` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `country_code`, `mobile`, `password`, `address`, `status`, `ev`, `sv`, `ver_code`, `ver_code_send_at`, `tsc`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'heshima ahayo', 'nehemie', 'heshima', 'heshimaahayo@gmail.com', 'RW', '250787474684', '$2y$10$BeFkW/7CyF7oC5Ylpsc8MOkDrk/ML3o2P5NHLClZCsCwHb/csLRZ6', '{\"address\":null,\"city\":null,\"state\":null,\"zip\":null,\"country\":\"Rwanda\"}', 1, 1, 1, NULL, NULL, NULL, NULL, '2025-03-18 10:17:20', '2025-03-19 20:26:19'),
(2, 'HABUMUGISHA', 'Eric', 'heshimaaa', 'heshimanehemia@gmail.com', 'RW', '2500787474684', '$2y$10$PzXZBu93.KGfODdxxq3Bye9b4lX3sPkJelQwRpH4TC47XwFav/IZy', '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Rwanda\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, NULL, NULL, '2025-03-18 11:09:58', '2025-03-18 11:09:58'),
(3, 'eric', 'ofla', 'mamawacu', 'ericofla1@gmail.com', 'RW', '250785263931', '$2y$10$c6TSRxZcI2klEPHw049UvOJfooGQqc1pLULgOxqaLRTV2enGxWSmW', '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Rwanda\",\"city\":\"\"}', 1, 1, 1, '', '2025-03-19 11:29:48', NULL, NULL, '2025-03-19 09:29:47', '2025-03-19 21:04:32'),
(4, 'NISHIMWE', 'Christian', 'Christian', 'christianmerci11@gmail.com', 'RW', '2500794572496', '$2y$10$H7baA1go1vezbccLBh8EqOi3kInRjhxq/KW2QuX5LgNpYZmR0CyXK', '{\"address\":null,\"city\":null,\"state\":null,\"zip\":null,\"country\":\"Rwanda\"}', 1, 1, 1, NULL, NULL, NULL, NULL, '2025-03-19 17:18:27', '2025-04-01 08:05:14'),
(5, 'HABUMUGISHA', 'Eric', 'Christiann', 'chrismerci22@gmail.com', 'RW', '25007858263931', '$2y$10$2EPyAHow0echxygDQ.uZFO.amv2lac2GnBya/kxadzZJQPOQ7EXV2', '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Rwanda\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, NULL, NULL, '2025-03-19 17:53:24', '2025-03-19 17:55:14'),
(6, 'blaise', 'impoze', 'blaiseimpoze', 'blaiseimpoze78@gmail.com', 'RW', '2500787843436', '$2y$10$0ehhyh8WPFmjmtDhVH2yZ.iNEP4cTamrx/M.r33GcwHMtvjAsXOTS', '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Rwanda\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, NULL, NULL, '2025-03-21 08:29:25', '2025-03-21 08:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE `user_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_ip` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `country_code` varchar(40) DEFAULT NULL,
  `longitude` varchar(40) DEFAULT NULL,
  `latitude` varchar(40) DEFAULT NULL,
  `browser` varchar(40) DEFAULT NULL,
  `os` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` (`id`, `user_id`, `user_ip`, `city`, `country`, `country_code`, `longitude`, `latitude`, `browser`, `os`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-03-18 10:17:20', '2025-03-18 10:17:20'),
(2, 1, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-03-18 10:22:25', '2025-03-18 10:22:25'),
(3, 2, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-03-18 11:09:58', '2025-03-18 11:09:58'),
(4, 3, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-03-19 09:29:47', '2025-03-19 09:29:47'),
(5, 4, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-03-19 17:18:27', '2025-03-19 17:18:27'),
(6, 5, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-03-19 17:53:24', '2025-03-19 17:53:24'),
(7, 5, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-03-19 21:04:52', '2025-03-19 21:04:52'),
(8, 6, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-03-21 08:29:25', '2025-03-21 08:29:25'),
(9, 5, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-03-21 09:50:56', '2025-03-21 09:50:56'),
(10, 4, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-03-27 12:48:18', '2025-03-27 12:48:18'),
(11, 3, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-03-27 12:48:31', '2025-03-27 12:48:31'),
(12, 3, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-03-27 12:48:50', '2025-03-27 12:48:50'),
(13, 3, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-03-27 16:31:28', '2025-03-27 16:31:28'),
(14, 4, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-04-01 06:55:58', '2025-04-01 06:55:58'),
(15, 5, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-04-01 06:56:17', '2025-04-01 06:56:17'),
(16, 4, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-04-01 06:56:49', '2025-04-01 06:56:49'),
(17, 4, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-04-01 07:27:54', '2025-04-01 07:27:54'),
(18, 5, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-04-03 08:07:38', '2025-04-03 08:07:38'),
(19, 4, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-04-03 08:08:02', '2025-04-03 08:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nick_name` varchar(40) DEFAULT NULL,
  `fleet_type_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `register_no` varchar(255) DEFAULT NULL,
  `engine_no` varchar(255) DEFAULT NULL,
  `chasis_no` varchar(255) DEFAULT NULL,
  `model_no` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `nick_name`, `fleet_type_id`, `register_no`, `engine_no`, `chasis_no`, `model_no`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Horizon Express 002', 1, 'RAC 204C', '01234567899', 'ABCDEF123456788', 'Toyota Coaster 2021', 1, '2025-03-18 10:50:15', '2025-03-19 20:30:24'),
(2, 'Horizon Express 001', 2, 'RAB 204F', '1234567890', 'ABCDEF123456789', 'Toyota Coaster 2022', 1, '2025-03-19 20:16:13', '2025-03-19 20:16:13'),
(3, 'Volcano Express -', 3, 'RAB 679F', '01234567700', 'ABCDEF123856789', 'Toyota Coaster 2019', 1, '2025-03-20 14:23:34', '2025-03-20 14:24:26');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_routes`
--

CREATE TABLE `vehicle_routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `start_from` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `end_to` int(10) UNSIGNED DEFAULT 0,
  `stoppages` text DEFAULT NULL,
  `distance` varchar(40) DEFAULT NULL,
  `time` varchar(40) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_routes`
--

INSERT INTO `vehicle_routes` (`id`, `name`, `start_from`, `end_to`, `stoppages`, `distance`, `time`, `status`, `created_at`, `updated_at`) VALUES
(1, 'kigali-Huye', 1, 2, '[\"1\",\"2\"]', '135 km', '3h', 1, '2025-03-19 11:16:11', '2025-03-19 21:01:02'),
(2, 'Kigali-Ruhango', 1, 3, '[\"1\",\"3\"]', '70km', '2 hours', 1, '2025-03-20 14:28:37', '2025-03-20 14:28:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`username`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assigned_vehicles`
--
ALTER TABLE `assigned_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booked_tickets`
--
ALTER TABLE `booked_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_logs`
--
ALTER TABLE `email_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fleet_types`
--
ALTER TABLE `fleet_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontends`
--
ALTER TABLE `frontends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seat_layouts`
--
ALTER TABLE `seat_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_attachments`
--
ALTER TABLE `support_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_prices`
--
ALTER TABLE `ticket_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_price_by_stoppages`
--
ALTER TABLE `ticket_price_by_stoppages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- Indexes for table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_routes`
--
ALTER TABLE `vehicle_routes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `assigned_vehicles`
--
ALTER TABLE `assigned_vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `booked_tickets`
--
ALTER TABLE `booked_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `email_logs`
--
ALTER TABLE `email_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fleet_types`
--
ALTER TABLE `fleet_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `frontends`
--
ALTER TABLE `frontends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seat_layouts`
--
ALTER TABLE `seat_layouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `support_attachments`
--
ALTER TABLE `support_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket_prices`
--
ALTER TABLE `ticket_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ticket_price_by_stoppages`
--
ALTER TABLE `ticket_price_by_stoppages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle_routes`
--
ALTER TABLE `vehicle_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
