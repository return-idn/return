-- Adminer 4.8.1 MySQL 5.7.33 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `coins`;
CREATE TABLE `coins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) NOT NULL,
  `total` double(8,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `coins` (`id`, `users_id`, `total`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1,	3,	25525.00,	NULL,	'2021-10-15 04:32:02',	'2021-10-22 09:50:18'),
(2,	5,	10000.00,	NULL,	'2021-10-15 05:39:29',	NULL),
(3,	4,	0.00,	NULL,	'2021-10-20 11:27:20',	'2021-10-20 11:27:20');

DROP TABLE IF EXISTS `coin_withdrawals`;
CREATE TABLE `coin_withdrawals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) NOT NULL,
  `total` double(8,2) NOT NULL,
  `bank_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_owner_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `coin_withdrawals` (`id`, `users_id`, `total`, `bank_address`, `bank_owner_name`, `bank_name`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1,	3,	500.00,	'1313123123',	'Bandot',	'Mandiri',	'SUCCESS',	NULL,	'2021-10-21 18:45:46',	'2021-10-21 18:45:46'),
(2,	3,	500.00,	'32014141234',	'Bambang',	'Mandiri',	'SUCCESS',	NULL,	'2021-10-21 12:18:13',	'2021-10-22 09:49:02'),
(3,	3,	2000.00,	'1891919',	'bambang',	'mandiri',	'PENDING',	NULL,	'2021-10-22 08:04:44',	'2021-10-22 08:04:44'),
(4,	3,	1000.00,	'47865',	'ghft',	'gtg',	'PENDING',	NULL,	'2021-10-22 08:09:41',	'2021-10-22 08:09:41'),
(5,	3,	1000.00,	'929292',	'jjsjshs',	'jsjsjshs',	'PENDING',	NULL,	'2021-10-22 08:10:42',	'2021-10-22 08:10:42'),
(6,	3,	500.00,	'2992737',	'jzjzjz',	'ksjsjso',	'PENDING',	NULL,	'2021-10-22 08:16:26',	'2021-10-22 08:16:26'),
(7,	3,	500.00,	'288374',	'ksjddb',	'sjsbsj',	'PENDING',	NULL,	'2021-10-22 08:19:54',	'2021-10-22 08:19:54'),
(8,	3,	500.00,	'9393947',	'nsksnsj',	'jsnwnw',	'PENDING',	NULL,	'2021-10-22 08:20:45',	'2021-10-22 08:20:45'),
(9,	3,	500.00,	'8336227',	'jsjsbsjshsj',	'wjjsndnsii',	'PENDING',	NULL,	'2021-10-22 08:27:30',	'2021-10-22 08:27:30'),
(10,	3,	1500.00,	'28373',	'jsjsjs',	'isosisjs',	'PENDING',	NULL,	'2021-10-22 08:32:09',	'2021-10-22 08:32:09'),
(11,	3,	1000.00,	'625',	'gvHsg',	'vbvyvyvy,',	'PENDING',	NULL,	'2021-10-22 08:37:17',	'2021-10-22 08:37:17');

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2014_10_12_200000_add_two_factor_columns_to_users_table',	1),
(4,	'2019_08_19_000000_create_failed_jobs_table',	1),
(5,	'2019_12_14_000001_create_personal_access_tokens_table',	1),
(6,	'2021_01_06_035346_create_sessions_table',	1),
(7,	'2021_01_17_161413_create_products_table',	1),
(8,	'2021_01_17_161417_create_product_categories_table',	1),
(9,	'2021_01_17_161427_create_product_galleries_table',	1),
(10,	'2021_01_17_161441_create_transactions_table',	1),
(11,	'2021_01_18_014436_add_roles_and_username_to_users_table',	1),
(12,	'2021_03_10_095130_create_transaction_items_table',	1),
(13,	'2021_10_21_181730_coin_withdrawals_edit',	2);

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1,	'App\\Models\\User',	1,	'authToken',	'f521d17fab3bed8234226b6732771748628ce05c378b02e83ee85bbe978e4dda',	'[\"*\"]',	NULL,	'2021-10-15 23:45:25',	'2021-10-15 23:45:25'),
(2,	'App\\Models\\User',	1,	'authToken',	'39251727e00f6a7b819dea4513f8464c9efcdaa21f490d52e2179823005e9f09',	'[\"*\"]',	NULL,	'2021-10-16 00:01:50',	'2021-10-16 00:01:50'),
(3,	'App\\Models\\User',	1,	'authToken',	'623d13093326f7534a8befd80c25be9a98c17c6ccd71bdf8ba9a5f720ee477a5',	'[\"*\"]',	NULL,	'2021-10-16 01:36:10',	'2021-10-16 01:36:10'),
(4,	'App\\Models\\User',	1,	'authToken',	'e5b503fe7f75b67706822351db276456aec6968d31149636bc2f1832e4c92cf7',	'[\"*\"]',	NULL,	'2021-10-16 01:36:15',	'2021-10-16 01:36:15'),
(5,	'App\\Models\\User',	3,	'authToken',	'da5236b24f5aeba9e0178897a312c01b7caaa0d7d3d4740beea6946eb2978770',	'[\"*\"]',	'2021-10-16 05:04:36',	'2021-10-16 05:04:35',	'2021-10-16 05:04:36'),
(6,	'App\\Models\\User',	3,	'authToken',	'd53d58903d45966b79e986adeb1c195d5ca917c451d9e1b10c99e9f3675c17d9',	'[\"*\"]',	'2021-10-16 10:34:50',	'2021-10-16 10:34:49',	'2021-10-16 10:34:50'),
(7,	'App\\Models\\User',	3,	'authToken',	'7ec7d083e1467ae51526fb9fa6bdfb0173bd5e52b9294189b742c572fd4ddae2',	'[\"*\"]',	'2021-10-16 10:40:15',	'2021-10-16 10:40:14',	'2021-10-16 10:40:15'),
(8,	'App\\Models\\User',	3,	'authToken',	'8bff3e942a8c56bee4bfaef7a8e4ad293759699400ff0e92e3accc2a6bbcf0b4',	'[\"*\"]',	'2021-10-16 10:58:25',	'2021-10-16 10:58:24',	'2021-10-16 10:58:25'),
(9,	'App\\Models\\User',	3,	'authToken',	'b180ab91a04d7005e87919e0ff278216747af8bc9615a73736220f1fc016903b',	'[\"*\"]',	'2021-10-16 11:08:39',	'2021-10-16 11:08:38',	'2021-10-16 11:08:39'),
(10,	'App\\Models\\User',	3,	'authToken',	'd6af50ea3e46dc69b7c76a95905c8ad94ba8dafbd9575297dd3c9f2d3fb8648c',	'[\"*\"]',	'2021-10-16 11:22:54',	'2021-10-16 11:22:53',	'2021-10-16 11:22:54'),
(11,	'App\\Models\\User',	3,	'authToken',	'd623e9b0135ebdff30063d7241f88a5436034b844df923a589ee616167d12865',	'[\"*\"]',	'2021-10-16 11:28:44',	'2021-10-16 11:28:43',	'2021-10-16 11:28:44'),
(12,	'App\\Models\\User',	3,	'authToken',	'faf8576816ca4f9e0bb056652c78f5cc5097652f0f9897f2ad53c04e133e0058',	'[\"*\"]',	'2021-10-16 11:31:17',	'2021-10-16 11:31:16',	'2021-10-16 11:31:17'),
(13,	'App\\Models\\User',	3,	'authToken',	'3d308583b616efa3b7903e207a9a65a4d1461c3b689a32e3747e1e1b2e2c09ed',	'[\"*\"]',	'2021-10-16 11:32:35',	'2021-10-16 11:32:35',	'2021-10-16 11:32:35'),
(14,	'App\\Models\\User',	3,	'authToken',	'ef9411f50b507ffad042ec2a6190c873346d24bd12af8284fee320bc46e169c7',	'[\"*\"]',	'2021-10-16 11:34:28',	'2021-10-16 11:34:27',	'2021-10-16 11:34:28'),
(15,	'App\\Models\\User',	3,	'authToken',	'd5adecc01adc7401abb5b3eed0b7e089387e293971b2406c76b2976db605a7b4',	'[\"*\"]',	'2021-10-16 11:43:08',	'2021-10-16 11:43:07',	'2021-10-16 11:43:08'),
(16,	'App\\Models\\User',	3,	'authToken',	'5f98ff560ca485c8c65934e518d3da39f82bb66b52921f332c3e63e2feb9b8eb',	'[\"*\"]',	'2021-10-16 11:46:35',	'2021-10-16 11:46:35',	'2021-10-16 11:46:35'),
(17,	'App\\Models\\User',	3,	'authToken',	'7deaa69f8eae600efe36e2b50c1c2e630f5e4a28f0704d29d585787fb2d1e062',	'[\"*\"]',	'2021-10-16 12:00:08',	'2021-10-16 11:47:11',	'2021-10-16 12:00:08'),
(18,	'App\\Models\\User',	3,	'authToken',	'95011da801760d3026feb7084d0900370f8a3e5400216333ae5e8a5a198c8b28',	'[\"*\"]',	'2021-10-16 13:03:29',	'2021-10-16 13:03:28',	'2021-10-16 13:03:29'),
(19,	'App\\Models\\User',	3,	'authToken',	'5efb567c391ea01276ff01f31606f4f743be5d8576ba1e14d0b589d21c156f6a',	'[\"*\"]',	'2021-10-16 13:44:28',	'2021-10-16 13:20:54',	'2021-10-16 13:44:28'),
(20,	'App\\Models\\User',	3,	'authToken',	'1f6fa87bc6cdb0505b2e96e8da68a24d59881404e5ddce2497924448ff089b6e',	'[\"*\"]',	'2021-10-16 13:45:19',	'2021-10-16 13:44:55',	'2021-10-16 13:45:19'),
(21,	'App\\Models\\User',	3,	'authToken',	'1bb71b45b0ba6308e47058c3a9a9af07558192a0cdfb3fff2dbd8f8672756644',	'[\"*\"]',	'2021-10-16 23:48:12',	'2021-10-16 23:48:11',	'2021-10-16 23:48:12'),
(22,	'App\\Models\\User',	3,	'authToken',	'e1d9db8cc989addd598e78e1f130468c7e360dc3f0deae546e16c8fb729a05bc',	'[\"*\"]',	'2021-10-17 00:24:29',	'2021-10-17 00:23:50',	'2021-10-17 00:24:29'),
(23,	'App\\Models\\User',	3,	'authToken',	'6ae6f5663d36660290f641765f0e1fd9c0fc8e0bb811fe89b959578459d17adf',	'[\"*\"]',	'2021-10-17 00:26:11',	'2021-10-17 00:26:10',	'2021-10-17 00:26:11'),
(24,	'App\\Models\\User',	3,	'authToken',	'77eea9fb5c461aa961e616d92635210153061f161bf43e258ac5e367634ec4b1',	'[\"*\"]',	'2021-10-17 00:57:12',	'2021-10-17 00:57:12',	'2021-10-17 00:57:12'),
(25,	'App\\Models\\User',	3,	'authToken',	'abdb76e08e0e4df1d75d0eee58ab208b8822d1cc1f4fecb34bd902f22f905897',	'[\"*\"]',	'2021-10-17 01:04:59',	'2021-10-17 01:04:59',	'2021-10-17 01:04:59'),
(26,	'App\\Models\\User',	3,	'authToken',	'b012f87103201bb2ed9da398be5a8811a033b4aeafd50028f1b4fb96f27f377d',	'[\"*\"]',	'2021-10-17 01:15:13',	'2021-10-17 01:15:12',	'2021-10-17 01:15:13'),
(27,	'App\\Models\\User',	3,	'authToken',	'2671a26f6d5d8a6076f51f1e65220b142ad2ff88e7825cf19c7ec5378398868e',	'[\"*\"]',	'2021-10-17 01:26:18',	'2021-10-17 01:26:17',	'2021-10-17 01:26:18'),
(28,	'App\\Models\\User',	3,	'authToken',	'6fcb5619bca7b0db8fb62b7dae147c49de8b39d253f2958f8cb663b010b5c315',	'[\"*\"]',	'2021-10-17 01:31:50',	'2021-10-17 01:31:50',	'2021-10-17 01:31:50'),
(29,	'App\\Models\\User',	3,	'authToken',	'637e95e3ab988a3ce8760850b4aabd22d62178e28953d412c9a69df4cc470fee',	'[\"*\"]',	'2021-10-17 01:36:24',	'2021-10-17 01:36:23',	'2021-10-17 01:36:24'),
(30,	'App\\Models\\User',	3,	'authToken',	'8073d904dd362c7670b903b339ace634896d8f029eb0c83c999aefa19c62e264',	'[\"*\"]',	'2021-10-17 01:43:43',	'2021-10-17 01:43:42',	'2021-10-17 01:43:43'),
(31,	'App\\Models\\User',	3,	'authToken',	'a441107cbf0823fb4a20f531b12cfa28c023f18fceebff617b132fd9863d25d7',	'[\"*\"]',	'2021-10-17 01:48:59',	'2021-10-17 01:48:58',	'2021-10-17 01:48:59'),
(32,	'App\\Models\\User',	3,	'authToken',	'd58f9b6307b9c027e032702c41b485f7b0aa4ca3cddb7ccd6facc240fc3bcd79',	'[\"*\"]',	'2021-10-17 01:57:31',	'2021-10-17 01:57:30',	'2021-10-17 01:57:31'),
(33,	'App\\Models\\User',	3,	'authToken',	'20d43c197a50a862d3e51b3625dd5a7e5e3dcb668e3f062f93368ea798fc3fe4',	'[\"*\"]',	'2021-10-18 11:45:41',	'2021-10-18 11:45:32',	'2021-10-18 11:45:41'),
(34,	'App\\Models\\User',	3,	'authToken',	'8f51899b0be2e87beef7483d679180638a5311b8fe378c54f84be77cdac221fa',	'[\"*\"]',	'2021-10-18 13:15:14',	'2021-10-18 12:27:53',	'2021-10-18 13:15:14'),
(35,	'App\\Models\\User',	3,	'authToken',	'bf7b393454c7902db773a69028fa4feb5c3f170af73ef671d88299b4d5bef66e',	'[\"*\"]',	'2021-10-19 01:01:49',	'2021-10-19 01:00:25',	'2021-10-19 01:01:49'),
(36,	'App\\Models\\User',	4,	'authToken',	'cc5f9f7567e30898de847529453fea24a120ea39187425998075d608d111f055',	'[\"*\"]',	NULL,	'2021-10-20 11:27:20',	'2021-10-20 11:27:20'),
(37,	'App\\Models\\User',	3,	'authToken',	'e3a9266c777961296b897b52ffa49054bad625cb753a59e13464ec74697c379a',	'[\"*\"]',	'2021-10-21 08:54:54',	'2021-10-21 01:56:09',	'2021-10-21 08:54:54'),
(38,	'App\\Models\\User',	3,	'authToken',	'a38d2be228546cad241c6177339bee9fb3a18cbcbff5e7bd620b0ff1b66446f8',	'[\"*\"]',	'2021-10-21 03:05:07',	'2021-10-21 03:05:06',	'2021-10-21 03:05:07'),
(39,	'App\\Models\\User',	3,	'authToken',	'ddeb2e4ab8f2347f07ce96b101166538dcd9610292c0c9b3386dffd5ba3d857e',	'[\"*\"]',	'2021-10-21 03:06:28',	'2021-10-21 03:06:27',	'2021-10-21 03:06:28'),
(40,	'App\\Models\\User',	3,	'authToken',	'2bf45acb83df96a7f55d79f3e630711a8f4129ffecfe7fff9ef00ba1b793ed92',	'[\"*\"]',	'2021-10-21 03:12:55',	'2021-10-21 03:12:54',	'2021-10-21 03:12:55'),
(41,	'App\\Models\\User',	3,	'authToken',	'abfcc74b587f649d9fdbec26c6734ee30df78bb1eed4ef9eb22473a76a10edb9',	'[\"*\"]',	'2021-10-21 03:26:30',	'2021-10-21 03:26:29',	'2021-10-21 03:26:30'),
(42,	'App\\Models\\User',	3,	'authToken',	'0d6fe4d0b0a95eb67927ac5b2d65c0abe3430af7f2eb8c63e6793ea5a3aa1f5f',	'[\"*\"]',	'2021-10-21 03:54:55',	'2021-10-21 03:28:23',	'2021-10-21 03:54:55'),
(43,	'App\\Models\\User',	3,	'authToken',	'92ceab48e1651018d897d738fb41ac21604af233a13f878469720a12b83da985',	'[\"*\"]',	'2021-10-21 05:42:34',	'2021-10-21 05:10:04',	'2021-10-21 05:42:34'),
(44,	'App\\Models\\User',	3,	'authToken',	'5fc488691606065ba2f719f83fcd49bccaed097fbbd484cac50ac9aadc09a4f1',	'[\"*\"]',	'2021-10-21 08:03:49',	'2021-10-21 07:49:07',	'2021-10-21 08:03:49'),
(45,	'App\\Models\\User',	3,	'authToken',	'709a3c89a7a1e9d63bf842fb9ae023c82d1a29c70cdd039bc22808aa053a95db',	'[\"*\"]',	'2021-10-21 08:22:56',	'2021-10-21 08:22:54',	'2021-10-21 08:22:56'),
(46,	'App\\Models\\User',	3,	'authToken',	'4afa4d4cf77aec2cd7fd380514c0f6712976727422fdae399de274cf37225335',	'[\"*\"]',	'2021-10-21 08:42:02',	'2021-10-21 08:33:18',	'2021-10-21 08:42:02'),
(47,	'App\\Models\\User',	3,	'authToken',	'38f3d7ad8b77d3dbf27d3510bfc668c18f5e0f4ed38d43c0ccb5d443df1f2e63',	'[\"*\"]',	'2021-10-21 08:50:28',	'2021-10-21 08:42:27',	'2021-10-21 08:50:28'),
(48,	'App\\Models\\User',	3,	'authToken',	'62b8744b0d8d0519d65bbbf6c5a4988d00a41aad2ae0fd8beb2819d4828443c7',	'[\"*\"]',	'2021-10-21 09:36:45',	'2021-10-21 08:54:22',	'2021-10-21 09:36:45'),
(50,	'App\\Models\\User',	3,	'authToken',	'8d946c541a18cec10ecdd2d0b7817359c3041bc9c438b4cb41c2dfd32d6bf068',	'[\"*\"]',	'2021-10-21 09:55:01',	'2021-10-21 09:37:24',	'2021-10-21 09:55:01'),
(51,	'App\\Models\\User',	3,	'authToken',	'385189d943f360d0c021b4547914f0463876fd2e0bc455e85d104709e16cdbf4',	'[\"*\"]',	'2021-10-21 09:58:17',	'2021-10-21 09:57:46',	'2021-10-21 09:58:17'),
(52,	'App\\Models\\User',	3,	'authToken',	'4e1ad71dd289e740d4864c8b165393554212177fc07f605a42072be260907286',	'[\"*\"]',	'2021-10-21 10:31:38',	'2021-10-21 09:58:20',	'2021-10-21 10:31:38'),
(53,	'App\\Models\\User',	3,	'authToken',	'5cded8ee62041d3b56194b5dfc258112a55595fc96e458824ef84d7243a67272',	'[\"*\"]',	'2021-10-21 10:32:14',	'2021-10-21 10:32:13',	'2021-10-21 10:32:14'),
(56,	'App\\Models\\User',	3,	'authToken',	'64ffc7589f35eb7b9412be9ced072cd6af61fe2463be5a63feef083b08343783',	'[\"*\"]',	'2021-10-21 11:04:22',	'2021-10-21 11:03:01',	'2021-10-21 11:04:22'),
(57,	'App\\Models\\User',	3,	'authToken',	'5479fb60f61df6da40bbd1c90d410bb5278119085d18c98851aec3e32f7b789f',	'[\"*\"]',	'2021-10-21 11:22:31',	'2021-10-21 11:22:30',	'2021-10-21 11:22:31'),
(58,	'App\\Models\\User',	3,	'authToken',	'75695ce2c03487b7a9ae37427b6412a2dfd61dd5c849ce8a571ba273e12092a5',	'[\"*\"]',	'2021-10-21 11:22:37',	'2021-10-21 11:22:37',	'2021-10-21 11:22:37'),
(59,	'App\\Models\\User',	3,	'authToken',	'24d1429e7855d6ae7c1cc4c79b2647e69b913ae285fdb18568afa2bbf109ad3c',	'[\"*\"]',	'2021-10-22 08:49:54',	'2021-10-21 11:23:18',	'2021-10-22 08:49:54'),
(60,	'App\\Models\\User',	3,	'authToken',	'fa6a703c095516fb704d78a06b5015147ab5f2ef0bfdaafd2c176de43c4e38a2',	'[\"*\"]',	'2021-10-22 08:24:34',	'2021-10-21 11:44:42',	'2021-10-22 08:24:34'),
(61,	'App\\Models\\User',	3,	'authToken',	'900749425b998a10500fd12888ad7c004e62e805fcb92d72d1f738419f567722',	'[\"*\"]',	'2021-10-22 08:29:07',	'2021-10-22 08:24:52',	'2021-10-22 08:29:07');

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1h2xqrw7V7McT8GmlU9ImJzSlGGBKXD0s32uRpL3',	1,	'192.168.100.70',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 Edg/94.0.992.50',	'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiZWxLYXlKUGNUckZxM3RLYzRXN2dJTG5WbGNqV1ZuYUh4OUV5cTUzZSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUxOiJodHRwOi8vMTkyLjE2OC4xMDAuNzA6ODAwMC9kYXNoYm9hcmQvY29pbldpdGhkcmF3YWwiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkeWNRcFRnNUw1bzI1ZkFhVk45eXZaTzQxSkVKS3EveHFkUGFZUVNZaTJURmRsbTUySlZucGUiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHljUXBUZzVMNW8yNWZBYVZOOXl2Wk80MUpFSktxL3hxZFBhWVFTWWkyVEZkbG01MkpWbnBlIjt9',	1634921676),
('qYLf4trFkV5v6LsMQCkYu8Cprf9zxoQYpymDlIRA',	NULL,	'192.168.100.70',	'PostmanRuntime/7.28.4',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUd2RTVyaWppeEk3cGdYa2YzeGc4UWxRTUlzcWlabGh3UDgxQ0JvVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xOTIuMTY4LjEwMC43MDo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',	1634841824);

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) NOT NULL,
  `waste_banks_id` bigint(20) unsigned DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `total_price` double(8,2) NOT NULL DEFAULT '0.00',
  `shipping_price` double(8,2) NOT NULL DEFAULT '0.00',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MANUAL',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `waste_banks_id` (`waste_banks_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`waste_banks_id`) REFERENCES `waste_banks` (`id`) ON DELETE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `transactions` (`id`, `users_id`, `waste_banks_id`, `address`, `total_price`, `shipping_price`, `status`, `payment`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1,	2,	1,	'Kota Cimahi',	2000.00,	100.00,	'SUCCESS',	'MANUAL',	NULL,	'2021-04-15 02:11:14',	'2021-04-15 02:11:52'),
(2,	2,	1,	'Kota Cimahi',	2000.00,	100.00,	'SUCCESS',	'MANUAL',	NULL,	'2021-04-15 02:30:45',	'2021-10-20 10:35:02'),
(3,	2,	1,	'Kota Cimahi',	2000.00,	100.00,	'PENDING',	'MANUAL',	NULL,	'2021-04-15 02:32:37',	'2021-04-15 02:32:37'),
(4,	3,	1,	'Marsemoon',	206.00,	0.00,	'SUCCESS',	'MANUAL',	NULL,	'2021-05-05 04:53:30',	'2021-10-20 11:09:43'),
(5,	3,	1,	'Marsemoon',	200.00,	0.00,	'SUCCESS',	'MANUAL',	NULL,	'2021-05-05 04:54:07',	'2021-10-20 11:10:40'),
(6,	3,	1,	'Marsemoon',	285.00,	0.00,	'SUCCESS',	'MANUAL',	NULL,	'2021-05-05 05:19:05',	'2021-10-20 11:15:24'),
(7,	3,	1,	'Marsemoon',	215.00,	0.00,	'SUCCESS',	'MANUAL',	NULL,	'2021-05-05 05:44:39',	'2021-10-20 11:15:53'),
(8,	3,	1,	'Marsemoon',	285.00,	0.00,	'PENDING',	'MANUAL',	NULL,	'2021-05-05 05:48:44',	'2021-05-05 05:48:44'),
(23,	3,	1,	'jalan-jalan',	525.00,	0.00,	'SUCCESS',	'MANUAL',	NULL,	'2021-10-18 13:00:40',	'2021-10-22 09:50:18'),
(25,	3,	1,	'dfhhff',	200.00,	0.00,	'PENDING',	'MANUAL',	NULL,	'2021-10-18 13:08:03',	'2021-10-18 13:08:03'),
(26,	3,	1,	'jalan',	400.00,	0.00,	'PENDING',	'MANUAL',	NULL,	'2021-10-19 01:01:27',	'2021-10-19 01:01:27'),
(27,	3,	1,	'tttttttt',	25.00,	0.00,	'PENDING',	'MANUAL',	NULL,	'2021-10-21 03:54:54',	'2021-10-21 03:54:54');

DROP TABLE IF EXISTS `transaction_items`;
CREATE TABLE `transaction_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) NOT NULL,
  `wastes_id` bigint(20) unsigned NOT NULL,
  `transactions_id` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wastes_id` (`wastes_id`),
  CONSTRAINT `transaction_items_ibfk_1` FOREIGN KEY (`wastes_id`) REFERENCES `wastes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `transaction_items` (`id`, `users_id`, `wastes_id`, `transactions_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1,	2,	1,	1,	2,	'2021-04-15 02:11:14',	'2021-04-15 02:11:14'),
(2,	2,	2,	1,	2,	'2021-04-15 02:11:14',	'2021-04-15 02:11:14'),
(3,	2,	3,	1,	2,	'2021-04-15 02:11:14',	'2021-04-15 02:11:14'),
(4,	2,	1,	2,	2,	'2021-04-15 02:30:45',	'2021-04-15 02:30:45'),
(5,	2,	2,	2,	2,	'2021-04-15 02:30:45',	'2021-04-15 02:30:45'),
(6,	2,	3,	2,	2,	'2021-04-15 02:30:45',	'2021-04-15 02:30:45'),
(7,	2,	1,	3,	2,	'2021-04-15 02:32:37',	'2021-04-15 02:32:37'),
(8,	3,	5,	4,	1,	'2021-05-05 04:53:30',	'2021-05-05 04:53:30'),
(9,	3,	1,	5,	1,	'2021-05-05 04:54:07',	'2021-05-05 04:54:07'),
(10,	3,	2,	6,	1,	'2021-05-05 05:19:05',	'2021-05-05 05:19:05'),
(11,	3,	6,	7,	1,	'2021-05-05 05:44:39',	'2021-05-05 05:44:39'),
(12,	3,	3,	7,	1,	'2021-05-05 05:44:39',	'2021-05-05 05:44:39'),
(13,	3,	2,	8,	1,	'2021-05-05 05:48:44',	'2021-05-05 05:48:44'),
(14,	3,	1,	21,	2,	'2021-10-18 12:59:47',	'2021-10-18 12:59:47'),
(15,	3,	2,	21,	2,	'2021-10-18 12:59:48',	'2021-10-18 12:59:48'),
(16,	3,	3,	21,	2,	'2021-10-18 12:59:48',	'2021-10-18 12:59:48'),
(17,	3,	1,	22,	2,	'2021-10-18 13:00:30',	'2021-10-18 13:00:30'),
(18,	3,	2,	22,	2,	'2021-10-18 13:00:30',	'2021-10-18 13:00:30'),
(19,	3,	3,	22,	2,	'2021-10-18 13:00:30',	'2021-10-18 13:00:30'),
(20,	3,	2,	23,	3,	'2021-10-18 13:00:40',	'2021-10-18 13:00:40'),
(21,	3,	6,	23,	3,	'2021-10-18 13:00:40',	'2021-10-18 13:00:40'),
(25,	3,	3,	25,	1,	'2021-10-18 13:08:03',	'2021-10-18 13:08:03'),
(26,	3,	1,	26,	4,	'2021-10-19 01:01:27',	'2021-10-19 01:01:27'),
(27,	3,	6,	27,	1,	'2021-10-21 03:54:54',	'2021-10-21 03:54:54');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `username`, `phone`, `roles`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1,	'M Putra Aryandi',	'm.putra.a16@gmail.com',	'putra',	'089610526045',	'ADMIN',	NULL,	'$2y$10$ycQpTg5L5o25fAaVN9yvZO41JEJKq/xqdPaYQSYi2TFdlm52JVnpe',	NULL,	NULL,	NULL,	NULL,	NULL,	'2021-10-15 23:45:25',	'2021-10-15 23:45:25'),
(2,	'tes',	'tes@mail.com',	'@test',	'0855555555',	'USER',	'2021-10-16 10:15:39',	'$2y$10$ycQpTg5L5o25fAaVN9yvZO41JEJKq/xqdPaYQSYi2TFdlm52JVnpe',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(3,	'StafaBand',	'ba@mail.com',	'bandot',	'089610524545',	'USER',	NULL,	'$2y$10$uRVhwkeEvKgMbKNKIdU0RuWe8J6Qj9t8DCdZJZ8pUcofQxQU/7pYK',	NULL,	NULL,	NULL,	NULL,	NULL,	'2021-10-16 05:04:35',	'2021-10-21 09:58:32'),
(4,	'Bank Sampah Kartini',	'kartini@gmail.com',	'kartini',	'0812454545',	'PARTNER',	NULL,	'$2y$10$/YYOU86Ep9M7MYazLIzidOtl5KdSweneMyDrVLmJGoN4EuF9quNVW',	NULL,	NULL,	NULL,	NULL,	NULL,	'2021-10-20 11:27:20',	'2021-10-20 11:27:20');

DROP TABLE IF EXISTS `wastes`;
CREATE TABLE `wastes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wastes` (`id`, `name`, `price`, `description`, `unit`, `tags`, `categories_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1,	'Pet Bening Kecil',	100.00,	'Botol pet bening berukuran kecil',	'kg',	'pet',	1,	NULL,	'2021-10-15 17:00:04',	'2021-10-15 17:00:04'),
(2,	'Pet Bening Sedang',	150.00,	'Botol pet bening berukuran sedang',	'kg',	'pet',	1,	NULL,	'2021-10-15 17:00:47',	'2021-10-15 17:00:04'),
(3,	'Pet Bening Besar',	200.00,	'botol pet bening berukuran besar',	'kg',	'pet',	1,	NULL,	'2021-10-15 17:01:38',	'2021-10-15 17:00:04'),
(4,	'Kardus',	200.00,	'kardus yang masih utuh dan tidak basah',	'kg',	'kertas',	2,	NULL,	'2021-10-15 17:02:19',	'2021-10-15 17:00:04'),
(5,	'Kertas',	50.00,	'kertas bekas penggunaan tulis maupun cetak',	'kg',	'kertas',	2,	NULL,	'2021-10-15 17:03:01',	'2021-10-15 17:00:04'),
(6,	'Sampah Masyarakat',	25.00,	'sampah masyarakat yang sudah tidak berguna',	'pcs',	'masyarakat',	3,	NULL,	'2021-10-15 17:03:48',	'2021-10-15 17:00:04');

DROP TABLE IF EXISTS `waste_banks`;
CREATE TABLE `waste_banks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `waste_banks` (`id`, `name`, `address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1,	'Bank Sampah Kartini',	'JL.Kartini Bukit  ',	NULL,	NULL,	NULL),
(2,	'Bank Sampah KGS',	'no. 2819, Jl. Sersan Zaini No.rt. 27, 2 Ilir, Kec. Ilir Tim. II, Kota Palembang, Sumatera Selatan 30163',	NULL,	NULL,	NULL);

DROP TABLE IF EXISTS `waste_categories`;
CREATE TABLE `waste_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `waste_categories` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1,	'plastik',	NULL,	'2021-10-15 16:49:18',	NULL),
(2,	'kertas',	NULL,	'2021-10-15 16:49:24',	NULL),
(3,	'lainnya',	NULL,	'2021-10-15 16:50:15',	NULL);

DROP TABLE IF EXISTS `waste_galleries`;
CREATE TABLE `waste_galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `wastes_id` bigint(20) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `waste_galleries` (`id`, `wastes_id`, `url`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1,	1,	'gallery/Pet-Bening-1500ml.png',	NULL,	NULL,	NULL),
(2,	2,	'gallery/Pet-Bening-1500ml.png',	NULL,	NULL,	NULL),
(3,	3,	'gallery/Pet-Bening-1500ml.png',	NULL,	NULL,	NULL),
(4,	4,	'gallery/Pet-Bening-1500ml.png',	NULL,	NULL,	NULL),
(5,	5,	'gallery/Pet-Bening-1500ml.png',	NULL,	NULL,	NULL),
(6,	6,	'gallery/Pet-Bening-1500ml.png',	NULL,	NULL,	NULL);

-- 2021-10-26 19:06:17
