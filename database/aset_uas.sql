-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jan 2024 pada 01.34
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aset_uas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_08_170813_create_pemilik_table', 2),
(6, '2024_01_08_171531_create_petugas_table', 3),
(7, '2014_10_12_100000_create_password_resets_table', 4),
(8, '2024_01_08_233143_create_petugas_table', 5),
(9, '2024_01_08_233532_create_petugas_table', 6),
(10, '2024_01_08_233820_create_pemilik_table', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemilik`
--

CREATE TABLE `pemilik` (
  `id_pemilik` varchar(20) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `no_tel` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `aset` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemilik`
--

INSERT INTO `pemilik` (`id_pemilik`, `nama`, `no_tel`, `email`, `aset`, `alamat`, `created_at`, `updated_at`) VALUES
('0001', 'Hakim', '089664454667', 'hakim@hakim.com', 'Bangunan', 'Bandung', '2024-01-08 16:51:39', '2024-01-08 16:59:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` varchar(20) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `no_tel` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama`, `no_tel`, `email`, `alamat`, `created_at`, `updated_at`) VALUES
('0001', 'Hakim', '089615627168', 'hakim@hakim.com', 'Tanjungsari', '2024-01-08 16:47:57', '2024-01-08 16:47:57'),
('1001', 'Ms. Camila Homenick PhD', '08911122233', 'stewart.rowe@example.org', 'Indonesia', '2024-01-08 16:37:11', '2024-01-08 16:37:11'),
('1002', 'Mina Schiller', '08911122233', 'jermaine32@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1004', 'Meda Funk', '08911122233', 'rfeil@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1005', 'Enrico Hettinger', '08911122233', 'mccullough.ezekiel@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1007', 'Rafaela Gusikowski', '08911122233', 'vita.zboncak@example.com', 'Indonesia', '2024-01-08 16:37:11', '2024-01-08 16:37:11'),
('1009', 'Mr. Sanford Miller', '08911122233', 'purdy.malachi@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1010', 'Herbert Lebsack I', '08911122233', 'phane@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1023', 'Miss Estella Crist', '08911122233', 'buddy.greenfelder@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1024', 'Ms. Norma Wiza', '08911122233', 'stanton.harris@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1025', 'Erich Stanton III', '08911122233', 'alva82@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1026', 'Zachary Dietrich', '08911122233', 'harber.margarette@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1028', 'Ismael Runte', '08911122233', 'hsawayn@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1033', 'Mrs. Alanna Upton', '08911122233', 'janie.feil@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1034', 'Chasity Anderson', '08911122233', 'patsy.grimes@example.net', 'Indonesia', '2024-01-08 16:37:11', '2024-01-08 16:37:11'),
('1037', 'Ross Langosh', '08911122233', 'xhansen@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1039', 'Talia Hagenes', '08911122233', 'gspinka@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1042', 'Sally Spencer', '08911122233', 'scrist@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1043', 'Mr. Devonte Ziemann MD', '08911122233', 'ankunding.elda@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1046', 'Rex Mills', '08911122233', 'hayley.grady@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1047', 'Serenity Marvin', '08911122233', 'santa30@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1049', 'Laurie Kutch', '08911122233', 'jack93@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1050', 'Mr. Jessy Rempel', '08911122233', 'holden62@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1053', 'Jettie Wyman', '08911122233', 'lynch.lenna@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1055', 'Sheldon Schinner', '08911122233', 'collins.rebeka@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1056', 'Joel Hickle DDS', '08911122233', 'taya12@example.org', 'Indonesia', '2024-01-08 16:37:11', '2024-01-08 16:37:11'),
('1059', 'Lilly Mosciski', '08911122233', 'jenifer.bayer@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1060', 'Prof. Selina Davis', '08911122233', 'edgar.yost@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1062', 'Sidney Fadel', '08911122233', 'wilma.kautzer@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1065', 'Ofelia Von', '08911122233', 'nkoch@example.com', 'Indonesia', '2024-01-08 16:37:11', '2024-01-08 16:37:11'),
('1067', 'Abbie Jenkins', '08911122233', 'eborer@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1069', 'Melvina Schmitt', '08911122233', 'allen.okuneva@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1072', 'Dr. Rollin Ernser IV', '08911122233', 'xohara@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1073', 'Jonathan Koch IV', '08911122233', 'sdickens@example.org', 'Indonesia', '2024-01-08 16:37:11', '2024-01-08 16:37:11'),
('1074', 'Prof. Laila Haley', '08911122233', 'hkautzer@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1079', 'Alycia Renner', '08911122233', 'milford.fritsch@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1082', 'Bette Funk', '08911122233', 'qvandervort@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1083', 'Allie Bauch DVM', '08911122233', 'raul.klein@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1084', 'Axel Ortiz', '08911122233', 'howell.wolf@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1085', 'Brandy Gibson DVM', '08911122233', 'bechtelar.rebeka@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1086', 'Kira Spinka', '08911122233', 'collin.deckow@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1090', 'Prof. Kayley Funk DDS', '08911122233', 'laurie.barton@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1091', 'Newell Schmeler', '08911122233', 'johnpaul71@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1092', 'Georgette McLaughlin', '08911122233', 'treutel.kenneth@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1093', 'Ms. Else Murphy', '08911122233', 'alberto.mcdermott@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1098', 'Eva Rippin', '08911122233', 'abbott.kelsie@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1099', 'Mrs. Anabel Walsh', '08911122233', 'forest.mertz@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1101', 'Prof. Talon Ortiz V', '08911122233', 'adams.domenic@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1103', 'Hillary Roberts III', '08911122233', 'buford.heathcote@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1105', 'Garret Rodriguez', '08911122233', 'conn.jorge@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1107', 'Jaleel Schowalter', '08911122233', 'cyrus.okeefe@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1108', 'Leslie Hintz', '08911122233', 'zbreitenberg@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1109', 'Sean Murphy', '08911122233', 'jarret56@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1110', 'Mr. Santos Ruecker II', '08911122233', 'enid56@example.org', 'Indonesia', '2024-01-08 16:37:11', '2024-01-08 16:37:11'),
('1114', 'Garrett Hills PhD', '08911122233', 'ritchie.aliza@example.com', 'Indonesia', '2024-01-08 16:37:11', '2024-01-08 16:37:11'),
('1115', 'Sienna Schaden', '08911122233', 'vpollich@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1118', 'Lura Stanton', '08911122233', 'schmidt.jeromy@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1121', 'Prof. Lilliana Mitchell III', '08911122233', 'liana.stamm@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1125', 'Jillian Kirlin MD', '08911122233', 'lila.mccullough@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1128', 'Mr. Hipolito Lowe V', '08911122233', 'franco.zulauf@example.com', 'Indonesia', '2024-01-08 16:37:11', '2024-01-08 16:37:11'),
('1131', 'Prof. Rodger Satterfield', '08911122233', 'hyatt.vincenza@example.net', 'Indonesia', '2024-01-08 16:37:11', '2024-01-08 16:37:11'),
('1132', 'Dr. Davion Spinka IV', '08911122233', 'stiedemann.devan@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1133', 'Kayden Ortiz', '08911122233', 'pollich.favian@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1134', 'Prof. Vernon Wyman V', '08911122233', 'opaucek@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1136', 'Kelvin Roberts', '08911122233', 'jayda.towne@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1139', 'Marcus Little', '08911122233', 'vondricka@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1140', 'Dr. Dax Gusikowski III', '08911122233', 'graciela.lebsack@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1141', 'Julia Schulist', '08911122233', 'koepp.peggie@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1142', 'Howard Walter', '08911122233', 'diamond75@example.org', 'Indonesia', '2024-01-08 16:37:11', '2024-01-08 16:37:11'),
('1143', 'Dr. Katarina Rolfson', '08911122233', 'sabryna.kilback@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1144', 'Krista Heidenreich', '08911122233', 'celine.kuhic@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1145', 'Malvina Barrows', '08911122233', 'mueller.dora@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1146', 'Bobby Dach', '08911122233', 'igleichner@example.net', 'Indonesia', '2024-01-08 16:37:11', '2024-01-08 16:37:11'),
('1151', 'Amari Hahn', '08911122233', 'hirthe.anais@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1153', 'Miss Lue Harvey', '08911122233', 'vilma.swift@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1155', 'Mr. Torey Renner I', '08911122233', 'iyundt@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1157', 'Prof. Curtis Kunde', '08911122233', 'constantin74@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1159', 'Bernadette Hauck', '08911122233', 'norris46@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1160', 'Astrid West', '08911122233', 'langworth.dayana@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1162', 'Dejah Orn', '08911122233', 'heaney.katlynn@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1163', 'Dr. Lyla Hamill III', '08911122233', 'rowan.casper@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1164', 'Ms. Elyssa Daniel II', '08911122233', 'wolf.cathryn@example.net', 'Indonesia', '2024-01-08 16:37:11', '2024-01-08 16:37:11'),
('1165', 'Mr. Emerald Block', '08911122233', 'gutkowski.asha@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1168', 'Alexie White', '08911122233', 'ava.oberbrunner@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1169', 'Wyman Jakubowski', '08911122233', 'hane.nelson@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1172', 'Flo DuBuque', '08911122233', 'ebert.makenzie@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1173', 'Adrien Ondricka', '08911122233', 'coralie27@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1174', 'Vergie Brakus', '08911122233', 'fmurphy@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1175', 'Antonetta Romaguera', '08911122233', 'nwillms@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1176', 'William Stanton', '08911122233', 'kessler.violette@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1177', 'Judge Klein', '08911122233', 'jaskolski.carmela@example.com', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1178', 'Karina Luettgen', '08911122233', 'barrett.sipes@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1181', 'Elenora Veum', '08911122233', 'epfannerstill@example.net', 'Indonesia', '2024-01-08 16:37:11', '2024-01-08 16:37:11'),
('1183', 'Mrs. Antonina Cremin', '08911122233', 'wwaelchi@example.net', 'Indonesia', '2024-01-08 16:37:11', '2024-01-08 16:37:11'),
('1184', 'Alessia O\'Connell', '08911122233', 'angelica.feil@example.org', 'Indonesia', '2024-01-08 16:37:11', '2024-01-08 16:37:11'),
('1185', 'Dr. Lauren Kulas DDS', '08911122233', 'becker.leanna@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1190', 'Candelario Zboncak', '08911122233', 'brycen59@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1191', 'Mr. Ruben Armstrong II', '08911122233', 'era44@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1192', 'Prof. Kallie Schamberger', '08911122233', 'xmueller@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1197', 'Monica Wolf', '08911122233', 'ihirthe@example.net', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12'),
('1199', 'Prof. Lacey McKenzie', '08911122233', 'lmiller@example.org', 'Indonesia', '2024-01-08 16:37:12', '2024-01-08 16:37:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ruslan Hakim', 'ruslan@ruslan.com', '2024-01-08 10:05:00', '$2y$12$VINMfbBkivwvGdpi/IetS.36cZ1AqZtl9VKBdw592m7YeLV4NMrya', 'QKLV50t8rA', '2024-01-08 10:05:03', '2024-01-08 11:25:54'),
(2, 'Lawrence Koss DDS', 'kendall.klein@example.net', '2024-01-08 10:05:00', '$2y$12$xX4XJAurdOK5AVj7g4jkh.XDX8e/afKMcGgMgvFmxcBskVLaZUpka', '1EGkNuz5OT', '2024-01-08 10:05:03', '2024-01-08 10:05:03'),
(3, 'Zion Homenick', 'ggrimes@example.org', '2024-01-08 10:05:00', '$2y$12$63nsv4T7tAynGtZtCbtx5eNYKR2G19yp8JyLe4Ydx28yBiK8Dhv3i', 'YL2ox24g9V', '2024-01-08 10:05:03', '2024-01-08 10:05:03'),
(4, 'Prof. Derrick Ryan', 'dubuque.clemmie@example.com', '2024-01-08 10:05:01', '$2y$12$VwkPsHcKX33fI7P0UWOgve60JCKL0.7eQ5V300lC/.udo58LLPVhW', 'ZSXYfulLOn', '2024-01-08 10:05:03', '2024-01-08 10:05:03'),
(5, 'Kari Ondricka', 'grady.kiera@example.com', '2024-01-08 10:05:01', '$2y$12$nNMYiAxa5.ydG./pKe2nMO8D9L.jHUqDKWycYZOkOBkCNwJvwFsuu', '5JV25c0fnl', '2024-01-08 10:05:03', '2024-01-08 10:05:03'),
(6, 'Mr. Kirk Funk', 'rhowe@example.com', '2024-01-08 10:05:01', '$2y$12$9KPe9g/3AEp9wzHwV7jXuO/Y1ut6sQzAPOlW6BmcPy8nn9Z6c4AWW', '9LIBt8z3mT', '2024-01-08 10:05:03', '2024-01-08 10:05:03'),
(7, 'Mossie Herzog', 'mathias.senger@example.org', '2024-01-08 10:05:02', '$2y$12$3fm6.cV9TuYrROQIUxS3FeDkMBurpT5m2XMkOuXNXAm4l2GK4TR3.', 'O7uKwKmftK', '2024-01-08 10:05:03', '2024-01-08 10:05:03'),
(8, 'Niko Kuhic', 'violette.beahan@example.com', '2024-01-08 10:05:02', '$2y$12$p7uG2oWvl2C9y5j4gnp1AOJx.ePaHE3kfQktZnHxRhvQ6xe3GHily', 'PkN6185l2g', '2024-01-08 10:05:03', '2024-01-08 10:05:03'),
(9, 'Prof. Elnora Walker', 'fay.ellis@example.net', '2024-01-08 10:05:02', '$2y$12$lGIUaSoUALTAL73eTAagkuD.TFMbWnfmr2WyV5ds0/NzqJ9NwnoMm', 'TCQ5kOE0qw', '2024-01-08 10:05:03', '2024-01-08 10:05:03'),
(10, 'Dennis Anderson Sr.', 'njohns@example.net', '2024-01-08 10:05:03', '$2y$12$UWlSxZfvm24B22dlT8.beuTdIA/0DXa5NSSVlmjQQar3w1vwbbZvC', 'iQnM0T6HTZ', '2024-01-08 10:05:03', '2024-01-08 10:05:03'),
(11, 'Ruslan Hakim', 'rs@rs.com', NULL, '$2y$12$SMtLhkTiY.Mu9jG/wvR1uOnSoC1eZp4kzrE6uT/xitX/5f.0HGDd6', 'zqVdRumaYwuVs69ZRMQ222r8aGMhl4dxBpfT1GtYRsvh0D2Em5uP6mhtXQ3Q', '2024-01-08 11:16:53', '2024-01-08 11:16:53'),
(128, 'Ruslan Hakim', 'hfhj@ytdgf.com', NULL, '$2y$12$H5QJ2ZxIh3xeT0LJi6fXROi0mv.iunP2L919sYMLKZHATPyILh4X6', NULL, '2024-01-08 11:25:17', '2024-01-08 11:25:17');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pemilik`
--
ALTER TABLE `pemilik`
  ADD PRIMARY KEY (`id_pemilik`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
