-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2024 at 07:40 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `al_esqfellow`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievement`
--

CREATE TABLE `achievement` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `non_academic` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `achievement`
--

INSERT INTO `achievement` (`id`, `name`, `image`, `slug`, `academic`, `non_academic`, `created_at`, `updated_at`) VALUES
(1, 'Alisha Zaharani', 'achievement\\July2024\\kfVZybKx7iR6TUhh8qIv.jpeg', NULL, '<ul>\r\n<li style=\"box-sizing: border-box;\">Peringkat 1, kelas 1 SMA semester genap</li>\r\n<li style=\"box-sizing: border-box;\">Peringkat 3, kelas 1 SMA semester ganjil</li>\r\n</ul>', '<ul>\r\n<li>Juara 1 Lomba Cipta Puisi, Hari Santri Nasional 2022</li>\r\n<li>Juara 2 Lomba Tari Saman, Muharram 2020</li>\r\n<li>Sekretaris Organisasi Central Basic Improving of Language 2022</li>\r\n<li>Sekretaris Acara PORSENI (Pekan Olahraga dan Seni) 2022</li>\r\n<li>Panitia Latihan Dasar Kepemimpinan</li>\r\n<li>Peserta Olimpiade Sastra Nasional 2023</li>\r\n</ul>', '2024-07-23 20:56:41', '2024-07-23 20:56:41'),
(2, 'Muhammad Faturrohman', 'achievement\\July2024\\NDYX42H5E419qALlqorS.jpeg', NULL, NULL, '<ul>\r\n<li>Tasmi Al-Quran bil Ghaib 20 Juz sekali duduk.</li>\r\n</ul>', '2024-07-23 20:58:13', '2024-07-23 20:58:13'),
(3, 'Fatiyah Latifah', 'achievement\\July2024\\0XVxzVQo8hBasFm9NXiU.jpeg', NULL, NULL, '<p><span style=\"color: #212529; font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Noto Sans\', \'Liberation Sans\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Tasmi Al-Quran bil Ghaib 20 Juz sekali duduk.</span></p>', '2024-07-23 21:24:27', '2024-07-23 21:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `awardee`
--

CREATE TABLE `awardee` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_hero` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awardee`
--

INSERT INTO `awardee` (`id`, `name`, `image`, `position`, `about`, `id_hero`, `slug`, `created_at`, `updated_at`, `year`) VALUES
(1, 'Muhammad Nur Alif', 'awardee\\July2024\\gKUSpEAcwpT63la152hH.jpg', 'Mahasiswa', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Noto Sans\', \'Liberation Sans\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ratione quod impedit, inventore nisi quam atque, voluptas distinctio ut tempora vel iure ea, quasi rerum maiores. Cupiditate magni repellendus hic amet.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Noto Sans\', \'Liberation Sans\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Placeat id, quam ad laborum sit saepe nemo sequi, accusamus sunt explicabo nostrum. Temporibus, repellat possimus doloribus dicta commodi dolorum debitis ipsam blanditiis unde, nesciunt reprehenderit recusandae officiis, rerum velit?</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Noto Sans\', \'Liberation Sans\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Molestias eius saepe quas veniam voluptatum, cupiditate, laudantium nulla assumenda dolores ipsa harum exercitationem numquam quae architecto suscipit id aliquid maiores amet. Eos, soluta? Dolor officiis culpa magni praesentium doloribus.</p>', 1, 'muhammad-nur-alif', '2023-07-04 05:17:00', '2024-07-16 02:54:36', 2024),
(2, 'Muhammad Nur Algans', 'awardee\\July2024\\lZclylaM37Cobr2Cpvq4.jpg', 'Mahasiswa thn 2020/2023', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Noto Sans\', \'Liberation Sans\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ratione quod impedit, inventore nisi quam atque, voluptas distinctio ut tempora vel iure ea, quasi rerum maiores. Cupiditate magni repellendus hic amet.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Noto Sans\', \'Liberation Sans\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Placeat id, quam ad laborum sit saepe nemo sequi, accusamus sunt explicabo nostrum. Temporibus, repellat possimus doloribus dicta commodi dolorum debitis ipsam blanditiis unde, nesciunt reprehenderit recusandae officiis, rerum velit?</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Noto Sans\', \'Liberation Sans\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Molestias eius saepe quas veniam voluptatum, cupiditate, laudantium nulla assumenda dolores ipsa harum exercitationem numquam quae architecto suscipit id aliquid maiores amet. Eos, soluta? Dolor officiis culpa magni praesentium doloribus.</p>', 2, 'muhammad-nur-algans', '2023-07-04 05:17:00', '2024-07-16 02:55:08', 2023),
(3, 'Muhammad Nur Aldev', 'awardee\\July2024\\RDZFxXpaZFjB3LdGhSGe.jpg', 'Mahasiswa thn 2024/2025', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ratione quod impedit, inventore nisi quam atque, voluptas distinctio ut tempora vel iure ea, quasi rerum maiores. Cupiditate magni repellendus hic amet. Placeat id, quam ad laborum sit saepe nemo sequi, accusamus sunt explicabo nostrum. Temporibus, repellat possimus doloribus dicta commodi dolorum debitis ipsam blanditiis unde, nesciunt reprehenderit recusandae officiis, rerum velit?</p>\r\n<p>Molestias eius saepe quas veniam voluptatum, cupiditate, laudantium nulla assumenda dolores ipsa harum exercitationem numquam quae architecto suscipit id aliquid maiores amet. Eos, soluta? Dolor officiis culpa magni praesentium doloribus.</p>', 3, 'muhammad-nur-aldev', '2023-07-04 05:17:00', '2024-07-16 02:55:54', 2024),
(4, 'Muhammad Nur Alive', 'awardee\\July2024\\b1SlHC9xgOE7Fo785I6m.jpg', 'Mahasiswa thn 2024/2025', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ratione quod impedit, inventore nisi quam atque, voluptas distinctio ut tempora vel iure ea, quasi rerum maiores. Cupiditate magni repellendus hic amet. Placeat id, quam ad laborum sit saepe nemo sequi, accusamus sunt explicabo nostrum. Temporibus, repellat possimus doloribus dicta commodi dolorum debitis ipsam blanditiis unde, nesciunt reprehenderit recusandae officiis, rerum velit?</p>\r\n<p>Molestias eius saepe quas veniam voluptatum, cupiditate, laudantium nulla assumenda dolores ipsa harum exercitationem numquam quae architecto suscipit id aliquid maiores amet. Eos, soluta? Dolor officiis culpa magni praesentium doloribus.</p>', 3, 'muhammad-nur-alive', '2023-07-04 05:17:00', '2024-07-16 02:56:26', 2024),
(5, 'Muammar Ganteng', 'awardee\\July2024\\38ELT99aVFlWIaeScs31.jpg', 'Mahasiswa th 2023/2024', '<p>[pasdlka\'ps; d\'a;skda \'s;dkal;sdkja sdjqowihje lasndlk aslkdnaslk daslkdhoiasdjlkas dnlkasjdialosjdn lkasdn lkasdnlkasdnalk sdnlasjdqoiwpjh elknaslkd alksnasda</p>', 3, 'muammar-ganteng', '2023-07-06 07:41:00', '2024-07-16 02:54:03', 2023);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pakai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `pakai`, `created_at`, `updated_at`) VALUES
(3, 'banners\\July2024\\f3bOXJIh1AHSm5lEdxsS.png', '1', '2023-07-04 07:04:00', '2024-07-16 04:25:05'),
(4, 'banners\\July2024\\shpb9D7QusyFvjl49hrk.png', '1', '2023-07-04 07:05:00', '2024-07-16 04:24:37');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 5, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 5, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(24, 5, 'job', 'text', 'Job', 0, 1, 1, 1, 1, 1, '{}', 6),
(25, 5, 'instansi', 'text', 'Instansi', 0, 1, 1, 1, 1, 1, '{}', 7),
(26, 5, 'about', 'rich_text_box', 'About', 0, 1, 1, 1, 1, 1, '{}', 8),
(27, 5, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 9),
(28, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(29, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(30, 5, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 4),
(32, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(33, 6, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(34, 6, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(35, 6, 'position', 'text', 'Position', 0, 1, 1, 1, 1, 1, '{}', 5),
(36, 6, 'about', 'rich_text_box', 'About', 0, 1, 1, 1, 1, 1, '{}', 6),
(37, 6, 'id_hero', 'hidden', 'Id Hero', 0, 1, 1, 1, 1, 1, '{}', 7),
(38, 6, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 8),
(39, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(40, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(41, 6, 'awardee_belongsto_hero_relationship', 'relationship', 'heroes', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Hero\",\"table\":\"heroes\",\"type\":\"belongsTo\",\"column\":\"id_hero\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"awardee\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(42, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(43, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(44, 7, 'pakai', 'checkbox', 'Pakai', 0, 1, 1, 1, 1, 1, '{\"on\":\"Banner dipakai\",\"off\":\"Tidak dipakai\",\"checked\":false}', 3),
(45, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(46, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(47, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(48, 8, 'icon', 'text', 'ID Icon (ambil di iconify.design)', 0, 1, 1, 1, 1, 1, '{\"description\":\"cari lalu copy dan paste -> id icon <- dari icon-sets.iconify.design\"}', 2),
(49, 8, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(50, 8, 'embed', 'code_editor', 'Embed', 0, 1, 1, 1, 1, 1, '{}', 4),
(51, 8, 'link', 'text_area', 'Link', 0, 1, 1, 1, 1, 1, '{}', 5),
(52, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(53, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(54, 9, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(55, 9, 'name', 'text', 'Name', 0, 1, 1, 0, 0, 1, '{}', 2),
(56, 9, 'email', 'text', 'Email', 0, 1, 1, 0, 0, 1, '{}', 3),
(57, 9, 'no', 'number', 'No', 0, 1, 1, 0, 0, 1, '{}', 4),
(58, 9, 'messages', 'text_area', 'Messages', 0, 1, 1, 0, 0, 1, '{}', 5),
(59, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 6),
(60, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(61, 12, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(62, 12, 'page', 'text', 'Page', 0, 1, 1, 0, 1, 1, '{}', 2),
(63, 12, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(64, 12, 'desc', 'text_area', 'Desc', 0, 1, 1, 1, 1, 1, '{}', 4),
(65, 12, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(66, 12, 'keyword', 'text_area', 'Keyword', 0, 1, 1, 1, 1, 1, '{}', 6),
(67, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(68, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(69, 6, 'year', 'select_dropdown', 'Year', 0, 1, 1, 1, 1, 1, '{\"default\":\"2023\",\"options\":{\"2023\":\"2023\",\"2024\":\"2024\",\"2025\":\"2025\",\"2026\":\"2026\",\"2027\":\"2027\",\"2028\":\"2028\",\"2029\":\"2029\",\"2030\":\"2030\",\"2031\":\"2031\",\"2032\":\"2032\",\"2033\":\"2033\",\"2034\":\"2034\",\"2035\":\"2035\"}}', 2),
(70, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(71, 14, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(72, 14, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 3),
(73, 14, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(74, 14, 'excerpt', 'text_area', 'Excerpt', 0, 1, 1, 1, 1, 1, '{}', 5),
(75, 14, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 1, 1, 1, 1, 1, '{}', 6),
(76, 14, 'meta_description', 'text_area', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 7),
(77, 14, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 8),
(78, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(79, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(80, 5, 'year', 'select_dropdown', 'Year', 0, 1, 1, 1, 1, 1, '{\"default\":\"2023\",\"options\":{\"2023\":\"2023\",\"2024\":\"2024\",\"2025\":\"2025\",\"2026\":\"2026\",\"2027\":\"2027\",\"2028\":\"2028\",\"2029\":\"2029\",\"2030\":\"2030\",\"2031\":\"2031\",\"2032\":\"2032\",\"2033\":\"2033\",\"2034\":\"2034\",\"2035\":\"2035\"}}', 2),
(81, 5, 'featured', 'checkbox', 'Featured (Tonjolkan)', 0, 1, 1, 1, 1, 1, '{\"on\":\"Featured\",\"off\":\"No Featured\",\"checked\":true}', 5),
(82, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(83, 15, 'menu', 'text', 'Menu', 0, 1, 1, 1, 1, 1, '{}', 2),
(84, 15, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 3),
(85, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(86, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(87, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(88, 13, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(89, 13, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(90, 13, 'slug', 'hidden', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 4),
(91, 13, 'academic', 'rich_text_box', 'Academic', 0, 1, 1, 1, 1, 1, '{}', 5),
(92, 13, 'non_academic', 'rich_text_box', 'Non Academic', 0, 1, 1, 1, 1, 1, '{}', 6),
(93, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(94, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2023-07-02 21:29:24', '2023-07-02 21:29:24'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-07-02 21:29:24', '2023-07-02 21:29:24'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-07-02 21:29:24', '2023-07-02 21:29:24'),
(5, 'heroes', 'heroes', 'Hero', 'Heroes', 'voyager-medal-rank-star', 'App\\Models\\Hero', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-07-04 05:04:39', '2024-07-16 03:01:03'),
(6, 'awardee', 'awardee', 'Awardee', 'Awardees', 'voyager-star-two', 'App\\Models\\Awardee', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-07-04 05:10:32', '2024-07-16 02:15:10'),
(7, 'banners', 'banners', 'Banner', 'Banners', 'voyager-images', 'App\\Models\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-07-04 07:03:31', '2023-07-04 07:03:31'),
(8, 'sosmeds', 'sosmeds', 'Sosmed', 'Sosmeds', 'voyager-chat', 'App\\Models\\Sosmed', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-07-04 07:18:45', '2023-07-04 07:18:45'),
(9, 'mails', 'mails', 'Mail', 'Mails', 'voyager-mail', 'App\\Models\\Mail', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-07-05 15:50:00', '2023-07-05 15:50:00'),
(12, 'metas', 'metas', 'Meta', 'Metas', 'voyager-code', 'App\\Models\\Meta', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-07-06 05:31:08', '2023-07-06 05:31:08'),
(13, 'achievement', 'achievement', 'Achievement', 'Achievements', 'voyager-trophy', 'App\\Models\\Achievement', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-16 02:24:14', '2024-07-23 20:45:53'),
(14, 'news', 'news', 'News', 'News', 'voyager-news', 'App\\Models\\News', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-07-16 02:27:28', '2024-07-16 02:27:28'),
(15, 'extender_menu', 'extender-menu', 'Extender Menu', 'Extender Menus', 'voyager-puzzle', 'App\\Models\\ExtenderMenu', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-18 02:42:20', '2024-07-18 02:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `extender_menu`
--

CREATE TABLE `extender_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extender_menu`
--

INSERT INTO `extender_menu` (`id`, `menu`, `link`, `created_at`, `updated_at`) VALUES
(1, 'contribute', 'https://generasiemas.esqbs.ac.id/', '2024-07-24 21:48:38', '2024-07-24 21:48:38');

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
-- Table structure for table `heroes`
--

CREATE TABLE `heroes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instansi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `heroes`
--

INSERT INTO `heroes` (`id`, `name`, `job`, `instansi`, `about`, `image`, `created_at`, `updated_at`, `slug`, `year`, `featured`) VALUES
(1, 'IR. Muh. Nur Alif', 'CEO', 'Devtektif', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ratione quod impedit, inventore nisi quam atque, voluptas distinctio ut tempora vel iure ea, quasi rerum maiores.</p>\r\n<p>Cupiditate magni repellendus hic amet. Placeat id, quam ad laborum sit saepe nemo sequi, accusamus sunt explicabo nostrum.</p>\r\n<p>Temporibus, repellat possimus doloribus dicta commodi dolorum debitis ipsam blanditiis unde, nesciunt reprehenderit recusandae officiis, rerum velit? Molestias eius saepe quas veniam voluptatum, cupiditate, laudantium nulla assumenda dolores ipsa harum exercitationem numquam quae architecto suscipit id aliquid maiores amet. Eos, soluta? Dolor officiis culpa magni praesentium doloribus.</p>', 'heroes\\July2024\\wWDc1dVxhi4jtsgpVMCL.jpg', '2023-07-04 05:23:00', '2024-07-16 03:01:26', 'ir-muh-nur-alif', 2023, 1),
(2, 'IR. Muh. Noer Alif', 'CEO', 'Hialdev Digital Solution', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ratione quod impedit, inventore nisi quam atque, voluptas distinctio ut tempora vel iure ea, quasi rerum maiores.</p>\r\n<p>Cupiditate magni repellendus hic amet. Placeat id, quam ad laborum sit saepe nemo sequi, accusamus sunt explicabo nostrum.</p>\r\n<p>Temporibus, repellat possimus doloribus dicta commodi dolorum debitis ipsam blanditiis unde, nesciunt reprehenderit recusandae officiis, rerum velit? Molestias eius saepe quas veniam voluptatum, cupiditate, laudantium nulla assumenda dolores ipsa harum exercitationem numquam quae architecto suscipit id aliquid maiores amet. Eos, soluta? Dolor officiis culpa magni praesentium doloribus.</p>', 'heroes\\July2024\\NZuX6BITDkLXa4Jnm5IX.jpg', '2023-07-04 05:23:00', '2024-07-16 03:01:38', 'ir-muh-noer-alif', 2023, 1),
(3, 'IR. Aldev Ginanjar Agustian', 'Direktur Utama', 'PT Digitalize The World', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ratione quod impedit, inventore nisi quam atque, voluptas distinctio ut tempora vel iure ea, quasi rerum maiores.</p>\r\n<p>Cupiditate magni repellendus hic amet. Placeat id, quam ad laborum sit saepe nemo sequi, accusamus sunt explicabo nostrum.</p>\r\n<p>Temporibus, repellat possimus doloribus dicta commodi dolorum debitis ipsam blanditiis unde, nesciunt reprehenderit recusandae officiis, rerum velit? Molestias eius saepe quas veniam voluptatum, cupiditate, laudantium nulla assumenda dolores ipsa harum exercitationem numquam quae architecto suscipit id aliquid maiores amet. Eos, soluta? Dolor officiis culpa magni praesentium doloribus.</p>', 'heroes\\July2024\\67qJqzwYnOv53a8movQD.jpg', '2023-07-04 05:23:00', '2024-07-16 03:01:52', 'ir-aldev-ginanjar-agustian', 2024, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `messages` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`id`, `name`, `email`, `no`, `messages`, `created_at`, `updated_at`) VALUES
(6, 'Muhammad Nur Alif', 'admin@lmwstore.com', '81723612323', 'lkajsd lka sdjlkas jdlkas jlkasjdlkasjl aksdj lkasjdlkasjdlkas dlkajdlaks djlaksdj laskjdalks djalskd jalsdjalksdjlaskdjlaksdsad', '2023-07-05 16:49:57', '2023-07-05 16:49:57'),
(7, 'Muhammad Nur Alif', 'admin@admin.com', '123123123123', 'asdasd asd asdas asdasd aqwkeq wasdn lkadnlkasndlk as dnlaks dniqwjekqwekl aslkdn', '2023-07-05 17:00:57', '2023-07-05 17:00:57'),
(8, 'Muhammad Nur Alif', 'admin@admin.com', '123123123123', 'asdasd asd asdas asdasd aqwkeq wasdn lkadnlkasndlk as dnlaks dniqwjekqwekl aslkdn', '2023-07-05 17:07:01', '2023-07-05 17:07:01'),
(9, 'Muhammad Nur Alif', 'admin@admin.com', '123123123123', 'asdasd asd asdas asdasd aqwkeq wasdn lkadnlkasndlk as dnlaks dniqwjekqwekl aslkdn', '2023-07-05 17:10:13', '2023-07-05 17:10:13'),
(10, 'alip ganteng', 'user@lmwstore.com', '1231244123', 'asd asda;s;odkasp[ odq[wkel;qk opqwje;lasmdl asmdl;ksa dioashdlksadnalk sdn lsadnalksdn mlkad naksldnk,xzn ,mzx nclkandlkasd', '2023-07-05 17:11:16', '2023-07-05 17:11:16'),
(11, 'alip ganteng', 'user@lmwstore.com', '1231244123', 'asd asda;s;odkasp[ odq[wkel;qk opqwje;lasmdl asmdl;ksa dioashdlksadnalk sdn lsadnalksdn mlkad naksldnk,xzn ,mzx nclkandlkasd', '2023-07-05 17:14:02', '2023-07-05 17:14:02'),
(12, 'Siapa yah ges', 'gatau@haha.com', '827372233', 'Hamdbxusbebdnsja shsns. Dhsshebs shsbs shs ss hsbsehe s', '2023-07-06 07:30:55', '2023-07-06 07:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-07-02 21:29:25', '2023-07-02 21:29:25');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-07-02 21:29:25', '2023-07-02 21:29:25', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2023-07-02 21:29:25', '2023-07-02 21:29:25', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2023-07-02 21:29:25', '2023-07-02 21:29:25', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2023-07-02 21:29:25', '2023-07-02 21:29:25', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2023-07-02 21:29:25', '2023-07-02 21:29:25', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2023-07-02 21:29:25', '2023-07-02 21:29:25', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2023-07-02 21:29:25', '2023-07-02 21:29:25', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2023-07-02 21:29:25', '2023-07-02 21:29:25', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2023-07-02 21:29:25', '2023-07-02 21:29:25', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2023-07-02 21:29:25', '2023-07-02 21:29:25', 'voyager.settings.index', NULL),
(11, 1, 'Heroes', '', '_self', 'voyager-medal-rank-star', NULL, NULL, 15, '2023-07-04 05:04:40', '2023-07-04 05:04:40', 'voyager.heroes.index', NULL),
(12, 1, 'Awardees', '', '_self', 'voyager-star-two', NULL, NULL, 16, '2023-07-04 05:10:32', '2023-07-04 05:10:32', 'voyager.awardee.index', NULL),
(13, 1, 'Banners', '', '_self', 'voyager-images', NULL, NULL, 17, '2023-07-04 07:03:31', '2023-07-04 07:03:31', 'voyager.banners.index', NULL),
(14, 1, 'Sosmeds', '', '_self', 'voyager-chat', NULL, NULL, 18, '2023-07-04 07:18:45', '2023-07-04 07:18:45', 'voyager.sosmeds.index', NULL),
(15, 1, 'Mails', '', '_self', 'voyager-mail', NULL, NULL, 19, '2023-07-05 15:50:01', '2023-07-05 15:50:01', 'voyager.mails.index', NULL),
(16, 1, 'Metas', '', '_self', 'voyager-code', NULL, NULL, 20, '2023-07-06 05:31:09', '2023-07-06 05:31:09', 'voyager.metas.index', NULL),
(17, 1, 'Achievements', '', '_self', 'voyager-trophy', NULL, NULL, 21, '2024-07-16 02:24:14', '2024-07-16 02:24:14', 'voyager.achievement.index', NULL),
(18, 1, 'News', '', '_self', 'voyager-news', NULL, NULL, 22, '2024-07-16 02:27:28', '2024-07-16 02:27:28', 'voyager.news.index', NULL),
(19, 1, 'Extender Menus', '', '_self', 'voyager-puzzle', NULL, NULL, 23, '2024-07-18 02:42:20', '2024-07-18 02:42:20', 'voyager.extender-menu.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `metas`
--

CREATE TABLE `metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metas`
--

INSERT INTO `metas` (`id`, `page`, `title`, `desc`, `image`, `keyword`, `created_at`, `updated_at`) VALUES
(1, 'home', 'ESQ Fellowship | Beasiswa Untuk Generasi Emas STIMIK ESQ', 'Dalam langkah mewujudkan kejayaan Indonesia pada tahun ke-100 yakni Indonesia Emas 2045, tidak dapat dilaksanakan oleh satu orang saja, tidak dapat dilakukan hanya satu tim saja. Sehingga ini adalah tugas kita bersama untuk mewujudkannya.', 'metas\\July2023\\QGk0B64eZf1EXJMLwPHR.png', 'esq, stimik esq, beasiswa stimik esq, esq bussiness school, ebs, fellowship, fellowship esq, kuliah gratis, Sekolah Tinggi Ilmu Manajemen dan Ilmu Komputer ESQ', '2023-07-06 05:34:59', '2023-07-06 05:34:59'),
(2, 'about', 'About | ESQ Fellowship', 'Dalam langkah mewujudkan kejayaan Indonesia pada tahun ke-100 yakni Indonesia Emas 2045, tidak dapat dilaksanakan oleh satu orang saja, tidak dapat dilakukan hanya satu tim saja. Sehingga ini adalah tugas kita bersama untuk mewujudkannya.', 'metas\\July2023\\QGk0B64eZf1EXJMLwPHR.png', 'esq, stimik esq, beasiswa stimik esq, esq bussiness school, ebs, fellowship, fellowship esq, kuliah gratis, Sekolah Tinggi Ilmu Manajemen dan Ilmu Komputer ESQ', '2023-07-06 05:34:59', '2023-07-06 05:34:59'),
(3, 'awardee', 'Awardee| ESQ Fellowship', 'Dalam langkah mewujudkan kejayaan Indonesia pada tahun ke-100 yakni Indonesia Emas 2045, tidak dapat dilaksanakan oleh satu orang saja, tidak dapat dilakukan hanya satu tim saja. Sehingga ini adalah tugas kita bersama untuk mewujudkannya.', 'metas\\July2023\\QGk0B64eZf1EXJMLwPHR.png', 'esq, stimik esq, beasiswa stimik esq, esq bussiness school, ebs, fellowship, fellowship esq, kuliah gratis, Sekolah Tinggi Ilmu Manajemen dan Ilmu Komputer ESQ', '2023-07-06 05:34:59', '2023-07-06 05:34:59'),
(4, 'heroes', 'Para Pahlawan Generasi Emas | ESQ Fellowship', 'Dalam langkah mewujudkan kejayaan Indonesia pada tahun ke-100 yakni Indonesia Emas 2045, tidak dapat dilaksanakan oleh satu orang saja, tidak dapat dilakukan hanya satu tim saja. Sehingga ini adalah tugas kita bersama untuk mewujudkannya.', 'metas\\July2023\\QGk0B64eZf1EXJMLwPHR.png', 'esq, stimik esq, beasiswa stimik esq, esq bussiness school, ebs, fellowship, fellowship esq, kuliah gratis, Sekolah Tinggi Ilmu Manajemen dan Ilmu Komputer ESQ', '2023-07-06 05:34:59', '2023-07-06 05:34:59'),
(5, 'default', 'ESQ Fellowship', 'Dalam langkah mewujudkan kejayaan Indonesia pada tahun ke-100 yakni Indonesia Emas 2045, tidak dapat dilaksanakan oleh satu orang saja, tidak dapat dilakukan hanya satu tim saja. Sehingga ini adalah tugas kita bersama untuk mewujudkannya.', 'metas\\July2023\\zJMZPLXHkGswd2Z3VqmQ.png', 'esq, stimik esq, beasiswa stimik esq, esq bussiness school, ebs, fellowship, fellowship esq, kuliah gratis, Sekolah Tinggi Ilmu Manajemen dan Ilmu Komputer ESQ', '2023-07-06 05:45:00', '2023-07-06 05:48:08'),
(6, 'achievement', 'Achievement', NULL, NULL, NULL, '2024-07-18 01:13:02', '2024-07-18 01:13:02'),
(7, 'regist', 'Daftar Fellowship', NULL, NULL, NULL, '2024-07-18 01:13:23', '2024-07-18 01:13:23'),
(8, 'news', 'News', NULL, NULL, NULL, '2024-07-18 01:13:39', '2024-07-18 01:13:39');

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `image`, `excerpt`, `meta_keywords`, `meta_description`, `content`, `created_at`, `updated_at`) VALUES
(1, 'New Scholarship Opportunities for 2024', 'new-scholarship-opportunities-for-2024', 'images/scholarship-2024.jpg', 'Discover new scholarship opportunities available for students in 2024.', 'scholarship, 2024, education, financial aid', 'Find out about the latest scholarship opportunities for students in 2024. Get details on eligibility, application process, and deadlines.', '<h1>New Scholarship Opportunities for 2024</h1><p>Discover the latest scholarship opportunities available for students in 2024. This year, various organizations are offering scholarships to support students in their educational pursuits.</p><p>Learn about eligibility criteria, application process, and deadlines to take advantage of these opportunities.</p>', '2024-07-24 19:14:33', '2024-07-24 19:14:33'),
(2, 'Tips for Excelling in Online Education', 'tips-for-excelling-in-online-education', 'images/online-education.jpg', 'Learn practical tips for excelling in online education and achieving academic success.', 'online education, tips, academic success, study strategies', 'Get practical tips for excelling in online education. Learn strategies for staying focused, managing time, and achieving academic success.', '<h1>Tips for Excelling in Online Education</h1><p>With the rise of online education, it is essential for students to develop effective study strategies. In this article, we provide practical tips for excelling in online courses and achieving academic success.</p><p>Learn how to stay focused, manage your time, and make the most of your online learning experience.</p>', '2024-07-24 19:14:33', '2024-07-24 19:14:33'),
(3, 'Character Building: Essential Skills for Students', 'character-building-essential-skills-for-students', 'images/character-building.jpg', 'Explore essential skills for character building and personal development in students.', 'character building, personal development, students, skills', 'Learn about essential skills for character building and personal development in students. Discover strategies to foster resilience, empathy, and integrity.', '<h1>Character Building: Essential Skills for Students</h1><p>Character building is a crucial aspect of personal development for students. This article explores essential skills such as resilience, empathy, and integrity that students need to succeed in life.</p><p>Discover strategies to foster these skills and help students become well-rounded individuals.</p>', '2024-07-24 19:14:33', '2024-07-24 19:14:33'),
(4, 'Top Universities Offering Scholarships in 2024', 'top-universities-offering-scholarships-in-2024', 'images/university-scholarships.jpg', 'Find out which top universities are offering scholarships to students in 2024.', 'top universities, scholarships, 2024, education', 'Discover top universities offering scholarships in 2024. Get information on eligibility, application process, and scholarship benefits.', '<h1>Top Universities Offering Scholarships in 2024</h1><p>Many top universities are offering scholarships to students in 2024. This article provides information on eligibility, application process, and benefits of these scholarships.</p><p>Explore opportunities to study at prestigious institutions with financial support.</p>', '2024-07-24 19:14:33', '2024-07-24 19:14:33'),
(5, 'How to Apply for International Scholarships', 'how-to-apply-for-international-scholarships', 'images/international-scholarships.jpg', 'Learn the steps and tips for applying to international scholarships.', 'international scholarships, application tips, study abroad', 'Get tips and step-by-step guidance on how to apply for international scholarships. Learn about eligibility, required documents, and application deadlines.', '<h1>How to Apply for International Scholarships</h1><p>Applying for international scholarships can be a complex process. This article provides step-by-step guidance and tips to help you navigate the application process.</p><p>Learn about eligibility requirements, necessary documents, and important deadlines to increase your chances of success.</p>', '2024-07-24 19:14:33', '2024-07-24 19:14:33'),
(6, 'The Role of Mentorship in Personal Development', 'the-role-of-mentorship-in-personal-development', 'images/mentorship.jpg', 'Understand the importance of mentorship in personal and professional development.', 'mentorship, personal development, professional growth, mentor', 'Explore the role of mentorship in personal and professional development. Learn how to find a mentor and build a successful mentorship relationship.', '<h1>The Role of Mentorship in Personal Development</h1><p>Mentorship plays a vital role in personal and professional development. This article explores the benefits of having a mentor and how to build a successful mentorship relationship.</p><p>Learn how to find a mentor and make the most of the guidance and support they provide.</p>', '2024-07-24 19:14:33', '2024-07-24 19:14:33'),
(7, 'Scholarship Programs for STEM Students', 'scholarship-programs-for-stem-students', 'images/stem-scholarships.jpg', 'Discover scholarship programs specifically for STEM students.', 'STEM scholarships, STEM education, financial aid, STEM programs', 'Find out about scholarship programs available for STEM students. Learn about eligibility criteria, application process, and scholarship benefits.', '<h1>Scholarship Programs for STEM Students</h1><p>There are numerous scholarship programs available specifically for students pursuing studies in Science, Technology, Engineering, and Mathematics (STEM). This article provides information on these programs, including eligibility criteria and application process.</p><p>Take advantage of these opportunities to support your STEM education and career goals.</p>', '2024-07-24 19:14:33', '2024-07-24 19:14:33'),
(8, 'Building a Strong Foundation for Lifelong Learning', 'building-a-strong-foundation-for-lifelong-learning', 'images/lifelong-learning.jpg', 'Learn how to build a strong foundation for lifelong learning and continuous personal growth.', 'lifelong learning, personal growth, education, growth mindset', 'Get tips on building a strong foundation for lifelong learning. Learn strategies to foster curiosity, adaptability, and a growth mindset.', '<h1>Building a Strong Foundation for Lifelong Learning</h1><p>Lifelong learning is essential for continuous personal and professional growth. This article provides tips and strategies for building a strong foundation for lifelong learning.</p><p>Learn how to foster curiosity, adaptability, and a growth mindset to keep learning and growing throughout your life.</p>', '2024-07-24 19:14:33', '2024-07-24 19:14:33'),
(9, 'Developing Leadership Skills in Students', 'developing-leadership-skills-in-students', 'images/leadership-skills.jpg', 'Explore strategies for developing leadership skills in students.', 'leadership skills, students, education, leadership development', 'Learn about strategies for developing leadership skills in students. Discover the importance of leadership education and practical tips for fostering these skills.', '<h1>Developing Leadership Skills in Students</h1><p>Leadership skills are crucial for success in any field. This article explores strategies for developing leadership skills in students, including the importance of leadership education and practical tips for fostering these skills.</p><p>Help students become effective leaders who can make a positive impact in their communities and beyond.</p>', '2024-07-24 19:14:33', '2024-07-24 19:14:33');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(2, 'browse_bread', NULL, '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(3, 'browse_database', NULL, '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(4, 'browse_media', NULL, '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(5, 'browse_compass', NULL, '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(6, 'browse_menus', 'menus', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(7, 'read_menus', 'menus', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(8, 'edit_menus', 'menus', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(9, 'add_menus', 'menus', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(10, 'delete_menus', 'menus', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(11, 'browse_roles', 'roles', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(12, 'read_roles', 'roles', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(13, 'edit_roles', 'roles', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(14, 'add_roles', 'roles', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(15, 'delete_roles', 'roles', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(16, 'browse_users', 'users', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(17, 'read_users', 'users', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(18, 'edit_users', 'users', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(19, 'add_users', 'users', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(20, 'delete_users', 'users', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(21, 'browse_settings', 'settings', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(22, 'read_settings', 'settings', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(23, 'edit_settings', 'settings', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(24, 'add_settings', 'settings', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(25, 'delete_settings', 'settings', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(26, 'browse_heroes', 'heroes', '2023-07-04 05:04:40', '2023-07-04 05:04:40'),
(27, 'read_heroes', 'heroes', '2023-07-04 05:04:40', '2023-07-04 05:04:40'),
(28, 'edit_heroes', 'heroes', '2023-07-04 05:04:40', '2023-07-04 05:04:40'),
(29, 'add_heroes', 'heroes', '2023-07-04 05:04:40', '2023-07-04 05:04:40'),
(30, 'delete_heroes', 'heroes', '2023-07-04 05:04:40', '2023-07-04 05:04:40'),
(31, 'browse_awardee', 'awardee', '2023-07-04 05:10:32', '2023-07-04 05:10:32'),
(32, 'read_awardee', 'awardee', '2023-07-04 05:10:32', '2023-07-04 05:10:32'),
(33, 'edit_awardee', 'awardee', '2023-07-04 05:10:32', '2023-07-04 05:10:32'),
(34, 'add_awardee', 'awardee', '2023-07-04 05:10:32', '2023-07-04 05:10:32'),
(35, 'delete_awardee', 'awardee', '2023-07-04 05:10:32', '2023-07-04 05:10:32'),
(36, 'browse_banners', 'banners', '2023-07-04 07:03:31', '2023-07-04 07:03:31'),
(37, 'read_banners', 'banners', '2023-07-04 07:03:31', '2023-07-04 07:03:31'),
(38, 'edit_banners', 'banners', '2023-07-04 07:03:31', '2023-07-04 07:03:31'),
(39, 'add_banners', 'banners', '2023-07-04 07:03:31', '2023-07-04 07:03:31'),
(40, 'delete_banners', 'banners', '2023-07-04 07:03:31', '2023-07-04 07:03:31'),
(41, 'browse_sosmeds', 'sosmeds', '2023-07-04 07:18:45', '2023-07-04 07:18:45'),
(42, 'read_sosmeds', 'sosmeds', '2023-07-04 07:18:45', '2023-07-04 07:18:45'),
(43, 'edit_sosmeds', 'sosmeds', '2023-07-04 07:18:45', '2023-07-04 07:18:45'),
(44, 'add_sosmeds', 'sosmeds', '2023-07-04 07:18:45', '2023-07-04 07:18:45'),
(45, 'delete_sosmeds', 'sosmeds', '2023-07-04 07:18:45', '2023-07-04 07:18:45'),
(46, 'browse_mails', 'mails', '2023-07-05 15:50:00', '2023-07-05 15:50:00'),
(47, 'read_mails', 'mails', '2023-07-05 15:50:00', '2023-07-05 15:50:00'),
(48, 'edit_mails', 'mails', '2023-07-05 15:50:00', '2023-07-05 15:50:00'),
(49, 'add_mails', 'mails', '2023-07-05 15:50:00', '2023-07-05 15:50:00'),
(50, 'delete_mails', 'mails', '2023-07-05 15:50:00', '2023-07-05 15:50:00'),
(51, 'browse_metas', 'metas', '2023-07-06 05:31:09', '2023-07-06 05:31:09'),
(52, 'read_metas', 'metas', '2023-07-06 05:31:09', '2023-07-06 05:31:09'),
(53, 'edit_metas', 'metas', '2023-07-06 05:31:09', '2023-07-06 05:31:09'),
(54, 'add_metas', 'metas', '2023-07-06 05:31:09', '2023-07-06 05:31:09'),
(55, 'delete_metas', 'metas', '2023-07-06 05:31:09', '2023-07-06 05:31:09'),
(56, 'browse_achievement', 'achievement', '2024-07-16 02:24:14', '2024-07-16 02:24:14'),
(57, 'read_achievement', 'achievement', '2024-07-16 02:24:14', '2024-07-16 02:24:14'),
(58, 'edit_achievement', 'achievement', '2024-07-16 02:24:14', '2024-07-16 02:24:14'),
(59, 'add_achievement', 'achievement', '2024-07-16 02:24:14', '2024-07-16 02:24:14'),
(60, 'delete_achievement', 'achievement', '2024-07-16 02:24:14', '2024-07-16 02:24:14'),
(61, 'browse_news', 'news', '2024-07-16 02:27:28', '2024-07-16 02:27:28'),
(62, 'read_news', 'news', '2024-07-16 02:27:28', '2024-07-16 02:27:28'),
(63, 'edit_news', 'news', '2024-07-16 02:27:28', '2024-07-16 02:27:28'),
(64, 'add_news', 'news', '2024-07-16 02:27:28', '2024-07-16 02:27:28'),
(65, 'delete_news', 'news', '2024-07-16 02:27:28', '2024-07-16 02:27:28'),
(66, 'browse_extender_menu', 'extender_menu', '2024-07-18 02:42:20', '2024-07-18 02:42:20'),
(67, 'read_extender_menu', 'extender_menu', '2024-07-18 02:42:20', '2024-07-18 02:42:20'),
(68, 'edit_extender_menu', 'extender_menu', '2024-07-18 02:42:20', '2024-07-18 02:42:20'),
(69, 'add_extender_menu', 'extender_menu', '2024-07-18 02:42:20', '2024-07-18 02:42:20'),
(70, 'delete_extender_menu', 'extender_menu', '2024-07-18 02:42:20', '2024-07-18 02:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(23, 3),
(24, 1),
(25, 1),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(40, 3),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(49, 1),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1);

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(2, 'user', 'Normal User', '2023-07-02 21:29:25', '2023-07-02 21:29:25'),
(3, 'Captain', 'Captain Avanger', '2023-07-06 05:40:54', '2023-07-06 05:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'ESQ Fellowship', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'ESQ Fellowship - Dashboard', '', 'text', 2, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 6, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\July2024\\YhxUhjKaaJfgriaATYsK.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Fellowship', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Dashboard! Fellowship Site CMS', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\July2024\\jkscGluJgXtYkxrzoaR2.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\July2024\\lbYXxvaAi4qff1EpL6rb.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.favicon', 'Favicon', 'settings\\July2024\\gUKYEuUpo7NNH4np3KU4.png', NULL, 'image', 3, 'Site'),
(13, 'about.about', 'about', '<p>Dalam langkah mewujudkan kejayaan Indonesia pada tahun ke-100 yakni Indonesia Emas 2045, tidak dapat dilaksanakan oleh satu orang saja, tidak dapat dilakukan hanya satu tim saja. Sehingga ini adalah tugas kita bersama untuk mewujudkannya.</p>\r\n<p>Membangkitkan generasi emas dengan pendidikan karakter untuk mewujudkan Indonesia Emas 2045 adalah bagian dari tugas kita semua. Mengumpulkan para pemuda dari berbagai daerah, berbagai suku, berbagai ras, untuk menyatukan visi Indonesia Emas 2045 dimulai dari pendidikan karakter di ESQ Business School.</p>\r\n<p>Bersama-sama ESQ Business School ingin mengajak anda menjadi bagian dari sejarah terwujudnya Indonesia Emas 2045 dengan mengirimkan investasi terbaik melalui program Fellowship Generasi Emas.</p>\r\n<p>Hadirnya program Fellowship Generasi Emas memudahkan anda sebagai pijar cahaya kemajuan Indonesia Emas 2045 untuk memilih anak asuh yang akan dididik di ESQ Business School dengan kriteria yang diinginkan.</p>\r\n<p>Kirimkan putra-putri terbaik daerah anda di ESQ Business School untuk mewujudkan Indonesia Emas 2045.</p>', NULL, 'rich_text_box', 7, 'About'),
(14, 'about.image', 'about image', 'settings\\July2023\\FapM5m8nQYinM73aaJ7P.png', NULL, 'image', 8, 'About'),
(16, 'about.contribute_excerpt', 'Contribute Excerpt', 'Tentu dalam wujud investasi atas perjalanan menuju Indonesia Emas 2045 membutuhkan banyak perjuangan Dengan 182.000.000 anda sudah tercatat dalam perjuangan satu mahasiswa sebagai anak asuh menyelesaikan pendidikan di ESQ Business School selama 4 tahun', NULL, 'text_area', 9, 'About'),
(17, 'about.contribute_background', 'Contribute Background', 'settings\\July2023\\cFB8CO4fw81K5I9oEWK4.png', NULL, 'image', 10, 'About'),
(18, 'about.contribute_desc', 'Contribute Description', '<p>Tentu dalam wujud investasi atas perjalanan menuju Indonesia Emas 2045 membutuhkan banyak perjuangan Dengan 182.000.000 anda sudah tercatat dalam perjuangan satu mahasiswa sebagai anak asuh menyelesaikan pendidikan di ESQ Business School selama 4 tahun</p>\r\n<p>yang menyatukan tiga kecerdasan, yaitu kecerdasan intelektual, kecerdasan emosional, dan kecerdasan spiritual.</p>\r\n<p>Sehingga semakin berlipat jumlah yang ada, semakin banyak pula putra-putri daerah terbaik anda dididik di ESQ Business School untuk bersama-sama melangkah mewujudkan visi Indonesia Emas 2045.</p>', NULL, 'rich_text_box', 11, 'About'),
(19, 'about.contribute_image', 'Contribute Image', 'settings\\July2023\\icl90YnVyYOcx7Z98p0Z.png', NULL, 'image', 12, 'About'),
(20, 'about.benefit_excerpt', 'Benefit Excerpt', 'Tentu dalam wujud investasi atas perjalanan menuju Indonesia Emas 2045 membutuhkan banyak perjuangan Dengan 182.000.000 anda sudah tercatat dalam perjuangan satu mahasiswa sebagai anak asuh menyelesaikan pendidikan di ESQ Business School selama 4 tahun', NULL, 'text_area', 13, 'About'),
(21, 'about.benefit_background', 'Benefit Background', 'settings\\July2023\\6YcpLxusXbYXacGNLH4T.png', NULL, 'image', 14, 'About'),
(22, 'about.benefit_desc', 'Benefit Description', '<p>Tentu dalam wujud investasi atas perjalanan menuju Indonesia Emas 2045 membutuhkan banyak perjuangan Dengan 182.000.000 anda sudah tercatat dalam perjuangan satu mahasiswa sebagai anak asuh menyelesaikan pendidikan di ESQ Business School selama 4 tahun</p>\r\n<p>yang menyatukan tiga kecerdasan, yaitu kecerdasan intelektual, kecerdasan emosional, dan kecerdasan spiritual.</p>\r\n<p>Sehingga semakin berlipat jumlah yang ada, semakin banyak pula putra-putri daerah terbaik anda dididik di ESQ Business School untuk bersama-sama melangkah mewujudkan visi Indonesia Emas 2045.</p>\r\n<p>Tentu dalam wujud investasi atas perjalanan menuju Indonesia Emas 2045 membutuhkan banyak perjuangan Dengan 182.000.000 anda sudah tercatat dalam perjuangan satu mahasiswa sebagai anak asuh menyelesaikan pendidikan di ESQ Business School selama 4 tahun</p>\r\n<p>yang menyatukan tiga kecerdasan, yaitu kecerdasan intelektual, kecerdasan emosional, dan kecerdasan spiritual.</p>\r\n<p>Sehingga semakin berlipat jumlah yang ada, semakin banyak pula putra-putri daerah terbaik anda dididik di ESQ Business School untuk bersama-sama melangkah mewujudkan visi Indonesia Emas 2045.</p>\r\n<p>Tentu dalam wujud investasi atas perjalanan menuju Indonesia Emas 2045 membutuhkan banyak perjuangan Dengan 182.000.000 anda sudah tercatat dalam perjuangan satu mahasiswa sebagai anak asuh menyelesaikan pendidikan di ESQ Business School selama 4 tahun</p>\r\n<p>Sehingga semakin berlipat jumlah yang ada, semakin banyak pula putra-putri daerah terbaik anda dididik di ESQ Business School untuk bersama-sama melangkah mewujudkan visi Indonesia Emas 2045.</p>\r\n<p>Tentu dalam wujud investasi atas perjalanan menuju Indonesia Emas 2045 membutuhkan banyak perjuangan Dengan 182.000.000 anda sudah tercatat dalam perjuangan satu mahasiswa sebagai anak asuh menyelesaikan pendidikan di ESQ Business School selama 4 tahun</p>', NULL, 'rich_text_box', 15, 'About'),
(23, 'about.benefit_image', 'Benefit Image', 'settings\\July2023\\2P5evjKEqiGNMv2jafFK.png', NULL, 'image', 16, 'About'),
(24, 'site.footer', 'Credit Footer', 'Fellowship Program of ESQ Business School', NULL, 'text', 17, 'Site'),
(25, 'contact.wa', 'Contact Whatsapp', '6289671052050', NULL, 'text', 18, 'Contact'),
(26, 'contact.wa_name', 'Contact Whatsapp Name', 'AL', NULL, 'text', 19, 'Contact'),
(27, 'contact.telp', 'Contact Telp', '021 1235642', NULL, 'text', 20, 'Contact'),
(28, 'contact.telp_name', 'Contact Telp Name', 'Admin', NULL, 'text', 21, 'Contact'),
(29, 'contact.mail', 'Contact Mail', 'fellowship@esqbs.ac.id', NULL, 'text', 22, 'Contact'),
(30, 'contact.address', 'Contact Address', 'Jl. Graha Elnusa, RT.3/RW.3 Cilandak Tim, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12560', NULL, 'text_area', 23, 'Contact'),
(31, 'contact.address_link', 'Contact Address Link', 'https://www.google.com/maps/place/Sekolah+Tinggi+Ilmu+Manajemen+dan+Ilmu+Komputer+ESQ+(STIMIK+ESQ)/@-6.2905679,106.8089985,19z/data=!4m6!3m5!1s0x2e69f1fa5d315edd:0x2d6dba94456ff2ab!8m2!3d-6.2906407!4d106.8093539!16s%2Fg%2F1q6lx5v26?entry=ttu', NULL, 'text_area', 24, 'Contact'),
(32, 'section.sec1_title', 'Section 1 - Title', 'What is fellowship generasi emas?', NULL, 'text', 25, 'Section'),
(33, 'section.sec1_excerpt', 'Section 1 - Excerpt', 'Dalam langkah mewujudkan kejayaan Indonesia pada tahun ke-100 yakni Indonesia Emas 2045, tidak dapat dilaksanakan oleh satu orang saja, tidak dapat dilakukan hanya satu tim saja. Sehingga ini adalah tugas kita bersama untuk mewujudkannya.', NULL, 'text_area', 26, 'Section'),
(34, 'section.sec1_link', 'Section 1 - Link to', '/about', NULL, 'text', 27, 'Section'),
(35, 'section.sec1_embed', 'Section 1 - Link Embed Video Youtube', 'https://www.youtube.com/embed/1wRENmD9H_8', NULL, 'text_area', 28, 'Section'),
(36, 'section.sec2_title', 'Section 2 - Title', 'Be a Part of Fellowship Program Beasiswa Indonesia Emas', NULL, 'text', 29, 'Section'),
(37, 'section.sec2_subtitle', 'Section 2 - Subtitle', 'Now! Let\'s', NULL, 'text', 30, 'Section'),
(39, 'section.sec2_embed', 'Section 2 - Link Embed Video Youtube', 'https://www.youtube.com/embed/1wRENmD9H_8', NULL, 'text_area', 32, 'Section'),
(40, 'smtp.MAIL_HOST', 'MAIL HOST', 'smtp.yandex.com', NULL, 'text', 33, 'SMTP'),
(41, 'smtp.MAIL_PORT', 'MAIL PORT', '465', NULL, 'text', 34, 'SMTP'),
(42, 'smtp.MAIL_USERNAME', 'MAIL USERNAME', 'sender@elangmerah.com', NULL, 'text', 36, 'SMTP'),
(43, 'smtp.MAIL_ENCRYPTION', 'MAIL ENCRYPTION', 'SSL', NULL, 'text', 35, 'SMTP'),
(44, 'smtp.MAIL_FROM_ADDRESS', 'MAIL FROM ADDRESS', 'sender@elangmerah.com', NULL, 'text', 38, 'SMTP'),
(45, 'smtp.MAIL_FROM_NAME', 'MAIL FROM NAME', 'ESQ Fellowship', NULL, 'text', 41, 'SMTP'),
(46, 'site.wa', 'Whatsapp Site', '6289671052050', NULL, 'text', 39, 'Site'),
(47, 'site.mail_receiver', 'Mail Site Receiver', 'mnuralif63@gmail.com', NULL, 'text', 40, 'Site'),
(48, 'smtp.MAIL_PASSWORD', 'MAIL PASSWORD', 'euemhatqochzzdcj', NULL, 'text', 37, 'SMTP'),
(49, 'site.logo_stimik', 'Logo STIMIK', 'settings\\July2024\\Lp0KozK9lRokyFcO9lwj.png', NULL, 'image', 42, 'Site'),
(50, 'site.logo_uag', 'Logo UAG', 'settings\\July2024\\EZ6F4EzYrSnHaM7DNawZ.png', NULL, 'image', 43, 'Site'),
(51, 'content.ach_img', 'Content - Achievement Image', 'settings\\July2024\\j5rvuBrWd8Oe5i5zMAKc.png', NULL, 'image', 44, 'Content'),
(52, 'content.ach_content', 'Content - Achievement Content', '<h3>Berbekal 5 Values ESQ Business School yaitu :</h3>\r\n<ul>\r\n<li>Integrity</li>\r\n<li>Passion</li>\r\n<li>Creativity</li>\r\n<li>Loyalty Humility</li>\r\n<li>Professionalism</li>\r\n</ul>\r\n<p>Dan sistem pembelajaran SKI ( Spiritual- Kreatif - Intelektual ) serta lingkungan kampus yang dekat dengan lingkungan bisnis di Menara 165, serta ilmu pendidikan karakter dari ESQ membuat mereka terdorong memiliki mental juara.</p>\r\n<p>Dengan memegang teguh 5 values itulah yang akan menjadikan modal mereka untuk menjadi seorang CEO yang cerdas intelektual, emosional dan spiritual yaitu CEO Berkarakter.</p>\r\n<p>Salam Indonesia Emas 2045.</p>', NULL, 'rich_text_box', 45, 'Content'),
(53, 'site.logo_footer', 'Logo Footer', 'settings\\July2024\\iJJP3IRS86C2hALVOnig.png', NULL, 'image', 46, 'Site'),
(54, 'content.reg_img', 'Content - Regist Image', 'settings\\July2024\\M27z6ESPPKckT7F1nx9W.jpg', NULL, 'image', 47, 'Content'),
(55, 'content.reg_title', 'Content - Regist Title', 'Jadilah Awardee', NULL, 'text', 48, 'Content'),
(56, 'content.reg_desc', 'Content - Regist Description', 'The UAG Way adalah kurikulum berbasis pendidikan karakter yang diterapkan di Universitas Ary Ginanjar. Di Universitas Ary Ginanjar, menyiapkan sebuah model untuk membangun manusia yang kami sebut dengan The UAG Way. Sebuah rumah yang sempurna memiliki pondasi, tiang dan atap.', NULL, 'text_area', 49, 'Content'),
(57, 'content.reg_btn_text', 'Content - Regist Button Text', 'Jadilah Bagian Dari Kami', NULL, 'text', 50, 'Content'),
(58, 'content.reg_btn_link', 'Content - Regist Button Link', 'https://uag.ac.id', NULL, 'text', 51, 'Content'),
(60, 'content.home_hero_title', 'Content - Home Hero Tittle', 'Fellowship Program', NULL, 'text', 52, 'Content'),
(61, 'content.home_hero_subtitle', 'Content - Home Hero Sub Tittle', 'Universitas Ary Ginanjar', NULL, 'text', 53, 'Content'),
(62, 'popup.name', 'Popup - Name Contact', 'Fellowshiper', NULL, 'text', 54, 'Popup'),
(63, 'popup.pp', 'Popup - Photo Profile', 'settings\\July2024\\azpFkZia4I9SwFC3lEpv.webp', NULL, 'image', 55, 'Popup'),
(64, 'popup.chats', 'Popup  - Intro Chats (pisahkan dengan tanda \"|\")', 'Hallo! selamat datang di admin fellowship :D | Kamu mau tanya apa nih? | jangan lupa isi datanya dengan benar yah.. terus tulis pesannya lalu kirim deh!', NULL, 'text_area', 56, 'Popup'),
(65, 'popup.fname', 'Popup - Form Name', 'Siapa nama kamu nih?', NULL, 'text', 57, 'Popup'),
(66, 'popup.femail', 'Popup - Form Email', 'Kalau alamat email kamu?', NULL, 'text', 58, 'Popup'),
(67, 'popup.fno', 'Popup - Form No / Whatsapp', 'Lalu tolong berikan nomor telp /  whatsapp yang dapat aku hubungi :D', NULL, 'text', 59, 'Popup');

-- --------------------------------------------------------

--
-- Table structure for table `sosmeds`
--

CREATE TABLE `sosmeds` (
  `id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `embed` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sosmeds`
--

INSERT INTO `sosmeds` (`id`, `icon`, `name`, `embed`, `link`, `created_at`, `updated_at`) VALUES
(1, 'bi:instagram', 'ESQ Bussiness School', '<iframe class=\"w-100\" style=\"min-height: 30em;\" src=\"https://www.instagram.com/esqbusinessschool/embed\" title=\"Instagram Embeded\" frameborder=\"0\"></iframe>', 'https://www.instagram.com/esqbusinessschool', '2023-07-04 07:21:30', '2023-07-04 07:21:30'),
(2, 'bi:youtube', 'Sekolah Bisnis Berbasis Karakter Terbaik', '<iframe class=\"w-100\" style=\"min-height: 30em;\" src=\"https://www.youtube.com/embed/Usdy98Mc5Dc\" title=\"YouTube video player\" frameborder=\"0\"></iframe>', 'https://www.youtube.com/Usdy98Mc5Dc', '2023-07-05 03:18:35', '2023-07-05 03:18:35'),
(3, 'bi:facebook', 'ESQ Bussiness School', '<iframe class=\"w-100\" style=\"min-height: 30em;\" src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FEsqBusinessSchool&tabs=timeline&width=500&height=331&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId\" frameborder=\"0\"></iframe>', 'https://www.facebook.com/FEsqBusinessSchool', '2023-07-05 03:19:50', '2023-07-05 03:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'The Avengers', 'admin@esqfellowship.com', 'users/default.png', NULL, '$2y$10$/vIWP6dM/GNtOXZfhBRUmuJb0wPYaj/X.blT2/WgzptMHaK0.cfWC', 'PxhVSUuoUAiF5yqQu6i7dvOiWboLuLCve6AQeFsNOYxZEHbAlDQyK5VNxTiw', NULL, '2023-07-02 21:33:05', '2023-07-02 21:33:05'),
(2, 3, 'The Captain', 'captain@esqfellowship.com', 'users/default.png', NULL, '$2y$10$oyyZjMFawx9RDPn7W62gFufvQ7kH.zEvC6cpti33tVDWc7P762nJq', 'HlIgWXA51jBrcFUbdxG7wpvO8O8vvlYBtbeiztwlfTjP2jKTGfMEnQGTdf46', '{\"locale\":\"en\"}', '2023-07-06 05:41:53', '2023-07-06 05:41:53'),
(3, 1, 'AL Super Access', 'al@devtektif.com', 'users/default.png', NULL, '$2y$10$/ESAphfgCOB9.yCS.dGsquqt9kkLCQXcPJtur0e1eB9VEgq5RGeAm', NULL, NULL, '2024-07-16 02:02:24', '2024-07-16 02:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievement`
--
ALTER TABLE `achievement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `awardee`
--
ALTER TABLE `awardee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `extender_menu`
--
ALTER TABLE `extender_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `heroes`
--
ALTER TABLE `heroes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `metas_page_unique` (`page`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
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
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `sosmeds`
--
ALTER TABLE `sosmeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievement`
--
ALTER TABLE `achievement`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `awardee`
--
ALTER TABLE `awardee`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `extender_menu`
--
ALTER TABLE `extender_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `heroes`
--
ALTER TABLE `heroes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `metas`
--
ALTER TABLE `metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `sosmeds`
--
ALTER TABLE `sosmeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
