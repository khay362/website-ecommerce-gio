-- Adminer 4.8.1 MySQL 8.0.30 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint NOT NULL,
  `products_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `name`, `slug`, `deleted_at`) VALUES
(3,	'2023-05-21 22:04:56',	'2023-05-26 00:07:27',	'ASDSA',	'asdsa',	'2023-05-26 00:07:27'),
(4,	'2023-05-21 22:14:36',	'2023-05-26 02:09:36',	'asdsaqwe23',	'asdsaqwe23',	'2023-05-26 02:09:36'),
(5,	'2023-05-26 00:23:05',	'2023-05-26 04:31:23',	'orange12131',	'orange12131',	'2023-05-26 04:31:23'),
(6,	'2023-05-26 01:35:36',	'2023-05-26 04:31:25',	'qwsadsadas',	'qwsadsadas',	'2023-05-26 04:31:25'),
(7,	'2023-05-26 04:32:09',	'2023-05-26 04:32:09',	'nike',	'nike',	NULL),
(8,	'2023-05-26 06:11:54',	'2023-05-26 07:22:05',	'adibas',	'adibas',	'2023-05-26 07:22:05'),
(9,	'2023-05-26 07:24:03',	'2023-05-26 07:24:03',	'adibas',	'adibas',	NULL),
(10,	'2023-05-26 10:02:41',	'2023-05-26 10:04:11',	'coma',	'coma',	NULL);

DROP TABLE IF EXISTS `categories_galleries`;
CREATE TABLE `categories_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categories_id` bigint NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories_galleries` (`id`, `created_at`, `updated_at`, `categories_id`, `url`, `is_featured`, `deleted_at`) VALUES
(1,	NULL,	NULL,	5,	'public/gallery/maBYRnZZVO9nRyAccKatnSG1hcqPITaItWJnipAR.jpg',	0,	NULL),
(2,	'2023-05-26 03:37:41',	'2023-05-26 03:37:41',	5,	'public/gallery/lVSyWOtZNSv1R8U7u0k3sjSeCVH52rdgHWBUU4PY.jpg',	0,	NULL),
(3,	'2023-05-26 04:47:14',	'2023-05-26 04:47:14',	7,	'public/gallery/l2zzhdvi9q3MfHmOMtNoU9JSgL1k3F2ao5Bwl0jh.webp',	0,	NULL),
(4,	'2023-05-26 07:18:41',	'2023-05-26 07:18:41',	8,	'public/gallery/RLBxFw0iaAD347xIAADuqumOxxfutSqAreoQiCCs.jpg',	0,	NULL),
(5,	'2023-05-26 07:24:11',	'2023-05-26 07:24:11',	9,	'public/gallery/V9R5obqK5FbZoq1tGoZsjVFK1KRcl1Vn4NwrcTnq.jpg',	0,	NULL),
(6,	'2023-05-26 10:03:07',	'2023-05-26 10:03:07',	10,	'public/gallery/EEMaTGtwdI6bZkIayzLGDZyuHyPhaCcl5ScIwuXi.png',	0,	NULL);

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_reset_tokens_table',	1),
(3,	'2014_10_12_200000_add_two_factor_columns_to_users_table',	1),
(4,	'2019_08_19_000000_create_failed_jobs_table',	1),
(5,	'2019_12_14_000001_create_personal_access_tokens_table',	1),
(6,	'2023_05_21_070647_create_sessions_table',	1),
(7,	'2021_01_17_161413_create_products_table',	2),
(8,	'2021_01_17_161427_create_product_galleries_table',	2),
(9,	'2021_01_17_161434_create_carts_table',	2),
(10,	'2021_01_17_161441_create_transactions_table',	2),
(11,	'2021_03_10_095130_create_transaction_items_table',	2),
(12,	'2021_01_18_014436_add_roles_to_users_table',	3),
(13,	'2021_03_10_095604_add_total_price_to_transactions_table',	3),
(14,	'2021_03_10_102228_add_status_to_transactions_table',	3),
(15,	'2021_03_10_171018_add_transactions_id_to_transaction_items_table',	3),
(16,	'2023_05_21_143058_create_categories_table',	4),
(17,	'2023_05_21_143657_add_categories_id_to_products_table',	5),
(18,	'2023_05_22_031903_create__categories__gallery_table',	6),
(19,	'2023_05_22_050136_remove_photo_from_categories_table',	7);

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `product_galleries`;
CREATE TABLE `product_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `products_id` bigint NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `product_galleries` (`id`, `products_id`, `url`, `is_featured`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1,	3,	'public/gallery/maBYRnZZVO9nRyAccKatnSG1hcqPITaItWJnipAR.jpg',	0,	NULL,	'2023-05-21 05:19:07',	'2023-05-21 05:19:07'),
(2,	3,	'public/gallery/hCmVmhNWcJ8xWzmX2eh4wpxftkFJ6VX9erfJYM8H.jpg',	0,	NULL,	'2023-05-26 03:13:21',	'2023-05-26 03:13:21'),
(3,	5,	'public/gallery/ynaQXBRIuyxK9WE7poLWorTu2uVipD3KmWPyzHe6.jpg',	0,	NULL,	'2023-05-26 04:22:35',	'2023-05-26 04:22:35'),
(4,	6,	'public/gallery/QemJBhZux4XOc48fU2Ypx38A8n0ZaEfSfhKBuSlr.jpg',	0,	NULL,	'2023-05-26 07:18:27',	'2023-05-26 07:18:27'),
(5,	9,	'public/gallery/lQA91IfBP2XP0LqOAKrITvQQN1bmlfPXhmHZYYNm.jpg',	0,	'2023-05-26 07:27:00',	'2023-05-26 07:25:59',	'2023-05-26 07:27:00'),
(6,	9,	'public/gallery/x11aV7ZwCcsGCTaIDVcHowXssVhEG3o0yu96RAdE.jpg',	0,	NULL,	'2023-05-26 07:29:11',	'2023-05-26 07:29:11'),
(7,	10,	'public/gallery/iRUtHuVhYjaFNeA0eXWyX6XW3LTszuQFPdg0muyX.png',	0,	NULL,	'2023-05-26 10:04:34',	'2023-05-26 10:04:34');

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categories_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (`id`, `name`, `price`, `description`, `slug`, `deleted_at`, `created_at`, `updated_at`, `categories_id`) VALUES
(1,	'test prod 1',	10000000,	'<p>ini prod 1</p>',	'test-prod-1',	'2023-05-21 04:42:37',	'2023-05-21 01:59:52',	'2023-05-21 04:42:37',	0),
(2,	'orang',	112313,	'<p>asdas</p>',	'orang',	'2023-05-21 04:42:40',	'2023-05-21 02:23:02',	'2023-05-21 04:42:40',	0),
(3,	'rean',	23121212,	'<p>12332123</p>',	'rean',	'2023-05-26 04:21:43',	'2023-05-21 04:17:52',	'2023-05-26 04:21:43',	0),
(4,	'wapak',	123123123,	'<p>rqwadsdqdqw</p>',	'wapak',	'2023-05-21 22:25:50',	'2023-05-21 05:02:30',	'2023-05-21 22:25:50',	0),
(5,	'orang21312312sad',	1000000,	'<p>qweqweqweqwe</p>',	'orang21312312sad',	'2023-05-26 04:25:22',	'2023-05-26 04:20:10',	'2023-05-26 04:25:22',	5),
(6,	'nike x bokur',	10000000,	'<p>ini produk nike</p>',	'nike-x-bokur',	NULL,	'2023-05-26 04:32:36',	'2023-05-26 04:32:36',	7),
(7,	'adibas x bokur',	1000000,	'<p>ini produk adibas</p>',	'adibas-x-bokur',	'2023-05-26 07:24:47',	'2023-05-26 06:12:16',	'2023-05-26 07:24:47',	8),
(9,	'asibas x bokur',	100000000,	'<p>ini produk asibas</p>',	'asibas-x-bokur',	NULL,	'2023-05-26 07:25:46',	'2023-05-26 07:25:46',	9),
(10,	'coma x bokur',	10000000,	'<p>ini produk coma</p>',	'coma-x-bokur',	NULL,	'2023-05-26 10:03:58',	'2023-05-26 10:03:58',	10);

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1P88yXGXyJkhnjdv70huJycAPYhqAcNVm8N5xaDP',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUI5UjR4czVCOE55a2ZlQ3pPWWo4U2Fnb2ZQVG90RUZhWDhmV3hhVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685106413),
('40eawCAVCwSGA9vmiCD6AvzE28UNT1xXEFG39lrh',	1,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT3R5TG9RaXRUeVppc0RxNGFNUGk0NnpOSmUzc3hLWG51STFYeUdHbiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9fQ==',	1685111771),
('5eT1ZOY6FR1JvtfDLsZ4lEKpyCnwTY63cd0N8O7Z',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOW9zNHdTYXFQa2dSQ09LVkpJbmhKUVlUNHpSckJVRHhnY2pFVGFodyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685111169),
('7G8eI7TugnLRhJL8QxoRn7YHH69w4qJk4BvQdlGk',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGltWFBHcFVNcHVoMUJtblBmZ3N2emRTNnAxQk9QTjJidTBkeVJ5VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685105300),
('AyJHrEA5jyVRxiV0Gm7ZH9LdjQdkKCgBQ61TYdfe',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2NsdFdxeXViNlBaUGpsWW9aZnpBaHV6RVhBNmg5UmdERmI5MXFNbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685109976),
('Bk8iLF9HsCXvym88fFJ39xHkaTGEDkvMcxnE2WdY',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUUyTVhSNTl1WFMxWVdrMnFnVWNOYXVHMUV1c3lKdVFYWU9JRTQ4ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685108290),
('bnm3ncmelcBBPuzLDpX6ZUJTGdrN8efvejx1hLbH',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2xORVB0ZjdMb0FNMGxWUmltOEN0RjlxNEVMY1I5VldRR2UxaWQwcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685108637),
('cexSoQETd0NpwSAe64RpTLpY7cv2QBXBAdyJw1bO',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFJWT3l0VFZoSFg0Mzl3R0FWQ09YWTAyN2VuY3ZDa0ZYelEwV0x2dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685120699),
('dF1X5rgtp35U1IzOrMs8ESaXFqttuKn6I3RjAzxD',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVlQMVFyOXVmcDhnZW1lTGRsc2pUSE5uSWpwMWtmRjMzczdScTFVTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685110081),
('f2qyatalqlUGDtkwSL89aagd7rGoVu3r1Y6eytyI',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSndlTFNaVEtaQTg1R0xPR1NDblI0azU0Tkd5VGFkNVZUY0xnMjVXeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685110100),
('fTyu7WItUFifanMq4sbWPVkhP1fBqcJnjK0Dbqjj',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3dmaG9ab1pLT0w0OUFObkN4Q1Ezb0VoTUw2OEZISFZlUlpYYXJpOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685111395),
('G6t4oUIL6ciyy7yERAy8OXLIyzer3539JMWtWF3O',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ28xUHVRVE5aN0NEZXhrekV1WDZyQjZPY29iS3IxQnNTaEgwVXRHMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685111758),
('gdEYpnExCbKQCtbroLEUzVkNsaDQ8MydAu2t2f1H',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXQxU1NTM1p0NEZPRVY3NHExYXJGS1B4RmxCZmRpTm1FN1UxcThlciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685110080),
('goD1G66ApW8yX3jKclwzCPUdCG6CbANVnjeX2fIZ',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiazNKaVJndkNvc2swSlcyZ3NUaU12enRRc3c2WWpTU1Q3anZVMGVJUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685120496),
('Gp8CkK2p3ZuI6qwZUqLcI2S6c5Uzt0ZSapHklaoq',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlY1VWl0YXdmeENEcnhWbk1heDRWaEZHd3ZLSWtOMjE2U0x2Rm1yTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685105711),
('hQkxZllP9hsO8GBdQgoJ65av2qQGhXdy0J4y4DmG',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkdiMGFjQnl2cFl4a2xWZ3NQVGVITVg1dWF5OE44dXkxWXA4MUhWVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685108639),
('Ib8cpAb0IpWOW70uIhhvlwpUW2aelywFos2XYgUo',	1,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36',	'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVjJTaUNjbUNjaVY1Rkd0ZE9LcjRTbENZVUMyZ3ZsWEhRdFhjenpKeiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0NjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2Rhc2hib2FyZC9teS10cmFuc2FjdGlvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1687681122),
('IO7c9tvVGYzXCArTpELI6xzSh8WHyV7lUnKq8iqV',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXJhQTBHZ3lheDZzNXFzYWFEZFVZeXd3M0xJUGdpdDR6NWZqdElBRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685108954),
('jAWM6rXuHnugAAq1wYzqOkf2fvfk1YC22nfou1Sv',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoibW96eUNBVERGc1lpaFJkMWlIMWJreVlIS0RORUpiWHpFNEE5WndTSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685107453),
('jjUc1nw27gA7EPReIwA4ItGAfKgVbz8oeCuuLq2m',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1JXeElYTUdZZnVpVFVXNXdBbUVHZXprWnJSdkd4SFQ1MUZGMHBqVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685108634),
('KM920tCNE8WKTSzPUh5lCUI0KenYyZoIkgY7PviI',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoia043dWVPdzFzQ1J4R1p0RzB5eWNoeVRjUGtpS3B4RWZwUkJZUjBGcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685110472),
('lFsoWJPk87BhQGXl0woz4ShtQkv5iffdlHOcmd06',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDlFNzYwV1RZNGJ4ZlFEb0FjaHAycGNwWGdJRnE2TWExU0ZwWlNuQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685120682),
('lTERvjG2KHG1XIX6sBpnBp1KFollXkIDMLcbi4SM',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXBOMDVMZUpTOElPanhEU25mWDRObjkzUk5XWjVrbEM2aTJCU1dneCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685108997),
('Mh7uEl5cWOh7YXbsvHBeo0CyJZtcTqW2yxbVtp4f',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUTY3bUd5dG1Lc1RUbVZWQzV3VnVESHdUTjdiRU9LOWY4dEc3YXRBbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685108987),
('mYPQPmG95kVrtEQMyR6mcnkizyDedTFyhWNPTg2l',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVEzODVwNldJTjY0b2J1akdvRnFtVHJoSkl0VGo3dDlRajNQRXZSbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685109011),
('OC0bao4Jr2ewwzFItFdkZvbo3Y7foKA3QtmHYGst',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSFoyVDdOdW10TlRUUDQxa1kxaHZ2cVMyR2tmeHQxU242YkVIaGxPYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685111759),
('P3huZmmA9HEGDjvUT1ffYn7CocHFySETjAMMKreA',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkl0aVdRdkIyanBiZjA4akxNQXJndTBnaFpldWg4aEdCZ1d2NFZNeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685108962),
('Pi4teyqIBKBJuvWGLC4wS5FfSCQsn6fIPLslHxtt',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZXVnaldJaVFGaE12WkZha3VxRzY5dlFpNkowN0FsNDBKOGpMcVFNSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685120691),
('qSFmD5Z7fYIr4YVO7FdVsUwKsz3ZzH7aD0zz4D6m',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2NQejRRYnA3Um5EM2JJeDJNa3FUVWV6ZTNiVXA5Vk1LdjQ3THZrdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685110075),
('R0CHHm1UOdmb0ZDv8GsTICMVetplNfowfmt0mqdV',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSldBdGxXWVdHaHJhN3hRY1h2TWkxcGtHaXhZUXFHbWk5VWNzOHRuTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685108951),
('rqc7vGcs3uvm9FMlFiGTxNyGvvNf7nbqHZmSRMW2',	1,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZmNZOFludk0yS05KaFZ3SElwcnFaWHA1UlVyOUoyTjB0U2ladXE0ZiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2NhdGVnb3JpZXMlN0QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685432355),
('sDkpEZfmLU7P4sTkZl0PBsSF9vKlAH029Of9rF3O',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ00zRnVydVJVSFlYRHh6VDlRUlVaVU10em5ieFBRYzlrNDN5bThjTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685120695),
('sMxM82sqC0l7Sz26LvCCOyRWFa3Vd24ki4SrsXaQ',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkswVUp0bUVuSzNGcVk2SElpclNTWEc4c1ljaGJlZGNNQmkwblBrQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685108988),
('sXGGNnGrRu2xT7RxfpRLze2vy4FqxWN4L9yC6tgQ',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkc3c2dWOVBGTHp3Q2dYcE0xVVoweEJEYThjTjQybVY4R1FvMlozZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685108995),
('TMYMEEAtJJOB0cycUBMwCK9nPG3X827txtkbgqde',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHhWS0N5ellUaW5pZE5GMHlqeXlOZXJlSHd1WTQyM05QekdmWHBoOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685111166),
('U0nIWqMO5nKA3f4hEVVZm1QTOMiowc1UU5Q25jFg',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWU1Q3pJOFptaFU1MGdJd2J3MVhOSWdoaGo2VmF1ajFRTEVVbkNLZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685111399),
('uAH1xQvxEE9mPlewMOgvgIDQx3AmMKNSKcC1AoPa',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmVNVjlsRGxtbVNDRVZHWGgyWjdnWWdVWllpdFVzbFd0MVNzaHdmSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685109092),
('ucmMvujgsxVf1Y6qJhxf9ugpoVv7eJXn3ZWyOiHn',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmc3czZldW5uVGxxZTRWaFNobGlwYVR2ZTFFUDM1RmFNOEVVY0kzUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685111397),
('UXSQbXyumEHyKJ8Q8UlUxiQKWVdBnaMBi3YeHVer',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGVNOVBidHB5c0UwYU4xZENjVzVZQ2pQWjJRaGJhRWpqRWpER1VmUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685111356),
('w7VllzVoDcwReOU336T2SJYfjHmdJWrRT1uTQubV',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkVqTTB4ZUlvUkR2cDZ0SzNPb0hmS1NDZkl6ZUtOcmE0dnFMZmtFcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685120697),
('WgBMJJjzZ1QHKdJPdUPGKgcW1VQtFTdqE2PX7IGu',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGRmRmcyM0hhanJzaEZvZkxRRU1MSzdhc3k3cFl0Tlc1OENUeHpQQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685104970),
('WSMNzsQeTeT9eVx9qzy0dAZcA1noT7ICLRHSr8nt',	1,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT0l0UUszbkpQQUI2ME01UnNNeUtVMDVkSnI5bU5DTUVHVWhJQzlCSSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2RldGFpbHMvY29tYS14LWJva3VyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',	1685120699),
('x00LV8RgduMpF8GHoZIV7U8jKmO0y9XlaEPsPYvR',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaklTUGc2eTlYSHFuZm9qcDZwNWNiakVIcEVod3QxZzh6aU02WGE5ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685108949),
('x8Y4cjdsUPLKqcERdnLlAGZdbczYhnr6PNrNk5a4',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkt2NDU5M0JyZGhEdlVGVHVRU3pIMk96aHpXZWhuNWRDZGZwNEFmdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685108952),
('XEclThd2EofRyvjosQicR35lptbp0iCRnLEWTLgg',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoibzcwYXBLd210WUlDTlBaN1pCUzNpQjBmdkQyRDVUOG9mTjhRUmh2ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685109981),
('y5sIeJHeGZUNtTiF8SCwLjGNO7liCSqY97NDrdzi',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlBoS2tDRGk1MGZVT0FHOTRyTnMwY3V5dHpaa1NqYnlqSk9jTTFucyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685109984),
('zmnoc02ktDDJhadZt6IfdEKmVjow1enm4D8Y0MF7',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzV1aEFRTHo5alJ4ZGlJcFc1cjM0bXIxY28wbXM2emV5M2RjcGt6eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685120604),
('zUd5mzpCo6djNiFloH9O7qA0YZMi0KyDszHfUQh3',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0JTSmJFckViVlJyUVo1TGZGcGJsaVdJWkRsSTBtT1ZYZTlvQXNIMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1685109096);

DROP TABLE IF EXISTS `transaction_items`;
CREATE TABLE `transaction_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint NOT NULL,
  `products_id` bigint NOT NULL,
  `transactions_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `transaction_items` (`id`, `users_id`, `products_id`, `transactions_id`, `created_at`, `updated_at`) VALUES
(1,	1,	3,	2,	'2023-05-21 05:27:31',	'2023-05-21 05:27:31'),
(2,	1,	3,	2,	'2023-05-21 05:27:31',	'2023-05-21 05:27:31'),
(3,	1,	6,	3,	'2023-05-26 04:48:24',	'2023-05-26 04:48:24'),
(4,	1,	9,	4,	'2023-05-26 10:01:49',	'2023-05-26 10:01:49');

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `courier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MIDTRANS',
  `payment_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` bigint NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `transactions` (`id`, `users_id`, `name`, `email`, `address`, `phone`, `courier`, `payment`, `payment_url`, `total_price`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1,	1,	'erwin',	'erwin@gmail.com',	'pelni',	'00000',	'FEEDEX',	'MIDTRANS',	'https://midtrans.com',	10000,	'SHIPPED',	NULL,	NULL,	'2023-05-26 07:35:25'),
(2,	1,	'kk',	'ewrrew@gmail.com',	'Perumahan bukit baru residence block a29',	'082283515523',	NULL,	'MIDTRANS',	NULL,	2426426642,	'PENDING',	NULL,	'2023-05-21 05:27:31',	'2023-05-21 05:27:31'),
(3,	1,	'Rivaldo rizqi ramadhan',	'rivaldorizqiramadhan@gmail.com',	'Perumahan bukit baru residence block a29',	'082283515523',	NULL,	'MIDTRANS',	NULL,	10000000,	'PENDING',	NULL,	'2023-05-26 04:48:24',	'2023-05-26 04:48:24'),
(4,	1,	'Rivaldo rizqi ramadhan',	'rivaldorizqiramadhan@gmail.com',	'Perumahan bukit baru residence block a29',	'082283515523',	NULL,	'MIDTRANS',	'https://app.sandbox.midtrans.com/snap/v3/redirection/90a61a4f-8238-4cae-91e8-7eea27893cb8',	100000000,	'PENDING',	NULL,	'2023-05-26 10:01:49',	'2023-05-26 10:01:51');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `roles`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1,	'isADMIN',	'isAdmin@gmail.com',	'ADMIN',	NULL,	'$2y$10$HDWxcR9bbwa4eAcj3GLVM.eJ31VK99kIi7NuylIK9ZnrWMxn6U/06',	NULL,	NULL,	NULL,	'gD8rjt8FzthiMbBsIzCQYz2h5p49qBLXaimw3PdqBTxFFTWE5WSuOiwwwzPW',	NULL,	NULL,	'2023-05-21 01:20:03',	'2023-05-21 01:20:03'),
(2,	'isUSER',	'isUSER@gmail.com',	'USER',	NULL,	'$2y$10$xI0FK1kXmGJT2AAcjXpJK.6grXsgpRe6VKcm3TFq392UqbUnPE2U2',	NULL,	NULL,	NULL,	'uSdS6I2xCQX1iZcW8NxySkb90IJwwUqmxTsc9UX9frCeveLRoJeyXc4AAImz',	NULL,	NULL,	'2023-05-21 05:36:09',	'2023-05-21 05:36:09');

-- 2023-06-25 12:02:52
