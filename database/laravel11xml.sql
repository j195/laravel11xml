-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 16, 2025 at 09:04 AM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel11xml`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_16_054929_create_user_data_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('43Hceov8JYWoboKxdRCwFqNB7WFeEeZ6H3CU3YSE', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1B2TXJpT1F3RnNPZWlGMHFRQzFTS1pGRGRFcW81UVN4d2YxVk8zTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739691686),
('8CkFGXcf8gjlSFJQb0wpCtEImw3lwJlOoH9y8Ebt', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNzVMZElUeGVLUlNvTVRXc1FwZXRvS2NDR3JoUktDR040MzNVY1hQdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739695152),
('91LIYNRzDV37oEccN89sPtShtMPOGn2Qxfi6Opsa', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUxpMTFUYUxHdHN3d3BXZVUzWXVnRHBkakRGU2hVWkFhUHRldUhRWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739694942),
('bGZDM3wibL8yVVxc8x0oados5ih0veETm9szm4wC', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTFTWjVxcmw3cGF0OEt6VXo4cTd2azZPcjgzWEQ2NWpjc0EyM0FaNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739686658),
('DqIJVWQqfxYFyd8Dgw5gyFnLLggKnnOs4uEWhOHD', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWN4N1Vya1g4WmRXUlV3VTFoWDBHbmozU3J3Y0pVOEVudUtQajNDViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739686656),
('DYp7pNeHnQVmIBy84O7uMOnHm9XSYMISE9pbQX28', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0N6TFlhUWRKWm1BeVhlRDFxTjlkdE0wZkVwTlg1V1dDYUhNMjRaNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739691266),
('E1SujIrR4BLrwPI0EyoMjSiC7ImBIfVwpCLRyuj0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmwyazZXdWc2NWlmZHJpWnhacFpUMlZWRzBFeW50S2xzc0tLOGJKcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739691080),
('EPHn4P8PWQ8hm76mRpmsTnuvrsKBuGOs11hk7W78', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGdNcE85WlhKcjMxYjcwQVdyTE5QMGdFbGR1NVdrbDFWemlBUHlsYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739696276),
('FCsAUb1sPL6EJVLVtSj9aKnjKe75RXxFlH5ntVUD', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYW9LQnZGd1Q3MXRjbUpoWERHVDlMenRtamZzSURiTFF0cUx3eUVBSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739691547),
('FhBMFIeJNYkU4udao5NHRBHil2ps8j0E3skalnju', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWwzWnVYTGxYYVRvaWVBWkVmWGpQdGdZcXROT0F1bExLRFY1bG8wQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739686652),
('GDXgZ0dY91wSkFCmup5krt0hE1cLsiIl377fxVhn', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkFTTzhUTmxxamZXN1cxMVVrMTh5MGphTXYxR20xd3VUdFZMWERxTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739695158),
('GJFymV4yNu8017vrieTBKfi70gWMw5q6rvs5FlpT', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmJGM1J3UXBUUHU0OWxibk9IRjczWGZjN005dERjVklCMVZxajFzUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739690790),
('GTjrF5Ts2UWNDbVFq1sDGjWb3tKfg7HK1Ov2Xl5S', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNldjSk44TnZYSGQ5dEVCbkFXOG9oVWxzVnpRSHZKZEdxdUhKTndGbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739696279),
('h7qR7yiNcYVLdu9ZWUPdnVs33DShZ4HhnnzMy019', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkhIazVFZEtRS1NCWnRlWUlaSFlUWnhKeFpuR0ZKakRhckFOM2NuRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739691263),
('iCfa7jnlu4NVjEzVlN0al4WdzD4OH5YgiVegaCNy', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN01tbUxpRHFnVDJ1aDdGOW8ycE9sdGlSdmVHcUU3VktmczZDYmhKbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739691700),
('KZQyxAmwb5r1zE8Cb9dPjN1QE5cMYvLBCXSumVIW', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzRJRGpPMTdyZUIydWdJWElvRm0zbFB0SGpyZ0dWbHVIN1RyalpOeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739686650),
('lNRAm0j4aYPgu9sUPfZmiCzIKZtLVYMHr2qjQ2ES', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTjFrQjZyTlBack5heW9xMVFZU0F5andsTlZtSjZMSDZOeVpjRHlwbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739695154),
('oXePu15aGnp1GI6XpXLsk03DmmbhST00Lu14v9Sg', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVNWNXRIVWFmbVltMmF0NW5DRHJJckoweXdvMngzWnA1Tzl6eVJoRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739691528),
('PEGEbL7itEMXKLjiQOpgPy7fUYLVvf5UsbNyHNRG', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienJ4NnR3M1VQUHprenBpeDF1eWFtZWNPWndRbjREekZ3d2V2UTZEMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739696285),
('PROSEYu4sY6NJaOVUsdbgdXTYtiesZ8V7HRLiB2Q', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHlzY1hBQkIyWXZaZzJHSlZMU2YwRExubTBnVHlGOWtLZmpPZVRYMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739686608),
('RQtEwEHw4Pb707bGQ0zKMx4YdkQX1wYuKl9nfVyj', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWZMRVQzRU8xeUtiN3dVYVlYd3hYNFRwYmZaSnB2NmZzTU5UTHdaaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739696309),
('SFakkBl7HKrhYx6pTW71DciazCKtnETFAw7gHGuu', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0k5aTBlaW9UWW95Rmtaa3U2ZmRmUVF2U2pTZHRubU1KNmdZT2c1NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739691554),
('SjTfSQdrzr9uA5BziaVh2yQStDIFE8U5FdZfPBgG', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjlRRXdEMjZtc3ptR3UzcmR3QlF4djRxNjJkcnNhTGNZY2FnNmRKSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739696304),
('tqrSRAe7c0bNFJl2gw6eJb5bCViMDBPqspQcOFoN', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmljaFlOSWZ2WXcwU0lkRWpXaXNQS0h5RWJCWVFtYzdsUkczUU1BOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739691013),
('U9G8fBdZISBDPC08spuF8NfmwGYAL4lVLbPv1SYt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZzBEMzlmYlVJdFVxcUFuMmprWDhidWZISFlTTTNodE5VdThiOUlNQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1739690692),
('vbsfKUGHTOeOHFYsGqNDWhysAkq6G4eAnNBHaFW5', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3NVZlh5NllkaFFHMXpYZldhUDZSdjJYeXZQaGVNdGlFeno2ZllGbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739695832),
('VqRwL87Fk7SXGTYYVVGo0erYfAZDpDfRfKBQciPw', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlhjWnVjZGRRdnFSd0pwaVdsclczVXZSdmM3SUN3d2Q2aWIzNnNlZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739691691),
('VtBtsn6CIBAAykC8virgvgGSvEOtL7ZO9qcGVPgW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXlFdWJ6eHRvTnd1R0tyR1k1N0dDYjJlSER0Mjd6SU5UWm5VU01HNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC91cGxvYWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739696642),
('WbL4RfBPf2dguLWEntKGFNzphRTF9zien8Z50qG8', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjRxZXRTTkV5VUhhM0pvZ0VaV2FKVnNrcDhTZnRlUnFBdmdWRGpDNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739696314),
('Wwyol6c9NYfjErWe4xixcWwd0emfqu8hZyNOxSsZ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDQxTlNkUGJja0kyakc5WjJSUE45ellWa2tJYUdHTzhhQktUWWczUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739691525),
('yGPiruALStA37Vi3qdnlrK2qKQTWG1X4qXYykvdZ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0RrMHQ2b2tySmtRTHNxT21tRGJRR3RqMHpuRXgyZld5ZVROYnNEcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739691271),
('ywir48hEocRHwTdqmndKnut7AgFj3usAGFNpZ7IL', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVhmOHQ3WFhYVXZxWDljTk8zT0Q2UnFCcGR3VHBDTU9VMXFHdHF4SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739692056);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

DROP TABLE IF EXISTS `user_data`;
CREATE TABLE IF NOT EXISTS `user_data` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `name`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'KöktenAdal', '+90 333 8859342', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(2, 'HammaAbdurrezak', '+90 333 1563682', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(3, 'GüleycanŞensal', '+90 333 2557114', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(4, 'SuadiyeRatip', '+90 333 9163726', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(5, 'BarikNurşide', '+90 333 3323749', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(6, 'HanifiEmineeylem', '+90 333 2763531', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(7, 'NakiyeOğulkan', '+90 333 6168924', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(8, 'HamsiyeCerit', '+90 333 3544579', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(9, 'MahfiHülâgü', '+90 333 8937773', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(10, 'EsmerayNurihayat', '+90 333 1688759', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(11, 'ŞennurNazifer', '+90 333 5326326', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(12, 'ÇetinokSeden', '+90 333 1614182', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(13, 'VuslatErimşah', '+90 333 9551194', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(14, 'ŞeküreRuhiye', '+90 333 8792165', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(15, 'İmranÜmmehan', '+90 333 6971156', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(16, 'YavuzbayHiçsönmez', '+90 333 8839473', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(17, 'NevzeteAbdulgafur', '+90 333 1453851', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(18, 'AksüyekSal', '+90 333 2481491', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(19, 'FerhatKılıçaslan', '+90 333 6861354', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(20, 'FereçTomurcuk', '+90 333 4141534', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(21, 'BalkızAlabegüm', '+90 333 8826359', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(22, 'AdulleNesim', '+90 333 5364556', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(23, 'SevdalBilhan', '+90 333 8634743', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(24, 'HarizBudunal', '+90 333 1193335', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(25, 'AlnıakAtız', '+90 333 5676454', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(26, 'HaşmetTaşgan', '+90 333 6185991', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(27, 'SalliNecife', '+90 333 6692117', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(28, 'TüreliSelçen', '+90 333 5588146', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(29, 'BorayÜmit', '+90 333 7741455', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(30, 'AktemürAkbora', '+90 333 4139141', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(31, 'YediverenMuhammetali', '+90 333 8483755', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(32, 'BaltaşTonguç', '+90 333 3724797', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(33, 'TepegözFerize', '+90 333 9528318', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(34, 'SelenArısal', '+90 333 9524786', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(35, 'AbdulcabbarMahizar', '+90 333 6782359', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(36, 'iyemEmre', '+90 333 8238835', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(37, 'MuazzamLâmia', '+90 333 1348678', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(38, 'MuazzamLâmia', '+90 333 1348678', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(39, 'İltenEripek', '+90 333 3758172', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(40, 'ZerrinResul', '+90 333 9276424', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(41, 'İlalanTelmize', '+90 333 3563723', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(42, 'HamiseSertan', '+90 333 8263265', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(43, 'ZubeydeBerk', '+90 333 7281496', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(44, 'FedaBalsarı', '+90 333 4969618', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(45, 'MüsemmeCivanşir', '+90 333 2556491', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(46, 'AydınyolFitnet', '+90 333 7783478', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(47, 'ÇoğaBigüm', '+90 333 4133666', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(48, 'ŞehrinazRaşide', '+90 333 2677248', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(49, 'NaifRukhiya', '+90 333 8252766', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(50, 'AzatNilden', '+90 333 9324656', '2025-02-16 03:34:02', '2025-02-16 03:34:02'),
(51, 'GamzeKorday', '+90 333 9442367', '2025-02-16 03:34:02', '2025-02-16 03:34:02');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
