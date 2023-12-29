-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Des 2023 pada 14.21
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prak3`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `umur` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `foto`, `umur`, `email`, `alamat`, `created_at`, `updated_at`) VALUES
('G211.21.0125', 'Hilmi', 'foto/5ZH9viIWkpVL684Ze1lxPCA05MxBvAitX7yGUILx.jpg', 20, 'hilmiganteng@gmail.com', 'Kota Semarang', '2023-12-25 22:32:05', '2023-12-25 22:32:05'),
('G211.22.0007', 'Antoine Griezmann', 'foto/FAJVAobhP01mOxyWXIXNGFV4SD7PMrV4FCQUckZm.jpg', 35, 'hilmifm@gmail.com', 'Kota Palu', '2023-12-16 05:20:47', '2023-12-25 22:33:18'),
('G211.22.0080', 'Hilmi FM', 'foto/5e6yksSOO5xhB8pw1PDmzoiPMOW6ZeI5XhUYI0dK.jpg', 21, 'hilmi8@usm.ac', 'Kota Semarang', '2023-12-16 05:27:08', '2023-12-25 22:24:02'),
('G211.22.0120', 'hilmi', 'foto/1WU5Bab63TGWKhZ7cLY3PjIbZ2vWZ0ZtmXq5yeN5.jpg', 22, 'hilmiganteng@usm.ac.id', 'Kota Semarang', '2023-12-16 05:37:06', '2023-12-16 05:37:06'),
('G211.23.0120', 'Dimas Nando Firzaki', 'foto/12rKDItfzBG0uUxytNxI1gUguy867gqBGX5wTfA7.jpg', 87, 'dimsnando10@gmail.com', 'KUDUS DAWE KOTA KRETEK UDUTE SURYA', '2023-12-26 21:06:41', '2023-12-26 21:06:41'),
('G211.23.0125', 'hilmi fathin Maulidani', 'foto/6HS55iuCxokKZFqhcjJk3uQoTQa1uymspynSEzOZ.jpg', 20, 'hilmi@gmail.com', 'Genuk Semarang', '2023-12-25 22:11:31', '2023-12-25 22:11:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2023_12_14_184508_mahasiswa', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hilmi', 'hilmi00@usm.ac.id', NULL, '$2y$12$vPToG2yaVao9fblDOmXB8epJiCbYbcQz93NcDNDU3Ali4OlCdM/om', NULL, '2023-12-16 05:19:52', '2023-12-16 05:19:52'),
(2, 'Hilmi', 'hilmifm@usm.ac.id', NULL, '$2y$12$cOk0YpdHsiJ65pQIdaG5Cujb/2Lp.qgef1iZtE05kVuwVbQSLSCNi', NULL, '2023-12-16 05:25:56', '2023-12-16 05:25:56'),
(3, 'hilmi', 'hilmi8@usm.ac', NULL, '$2y$12$C4Uqdk.2ll3/PU9BAD8XH.eMMmLpvBSuwmrLVvDsFXGPPhh8Q2wVK', NULL, '2023-12-16 05:36:11', '2023-12-16 05:36:11'),
(4, 'hilmi', 'hilmm@usm.ac.id', NULL, '$2y$12$Ii0egGQy1WazVHXFb8OaX.D88UWdt3szT9R.Izt7vt7/rgWhy/W0m', NULL, '2023-12-24 02:58:09', '2023-12-24 02:58:09'),
(5, 'hilmifm', 'hilmifm5@usm.ac.id', NULL, '$2y$12$8LBBrjMVSp7UFHmDqpvXH.g15ZIvMmwE0E9bC2H4uk3o4IT0En0WC', NULL, '2023-12-25 22:09:22', '2023-12-25 22:09:22'),
(6, 'Hilmi Fathin Maulidani', 'hilmifm9@usm.ac.id', NULL, '$2y$12$.Rzl94c.q5jvFkalujMPSe9JPtFBhAozTjo01bw3salIEbmacFoyK', NULL, '2023-12-25 22:31:06', '2023-12-25 22:31:06'),
(7, 'hilmi', 'hilmifm8@usm.ac.id', NULL, '$2y$12$iKM4OaNFdWA2CkFzZ2res.klIVfF80MmO3OVfSfGR2yv5uOkcsCdq', NULL, '2023-12-28 23:59:26', '2023-12-28 23:59:26');

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
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
