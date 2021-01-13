-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jan 2021 pada 05.16
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodejs1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `datas`
--

CREATE TABLE `datas` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `hp` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `datas`
--

INSERT INTO `datas` (`id`, `nama`, `hp`, `email`, `alamat`, `createdAt`, `updatedAt`) VALUES
(9, 'muhamad gerald', 89999, 'gerald@gerald.com', 'a', '2021-01-13', '2021-01-13'),
(10, 'muhamad gerald', 89999, 'admin@admin.com', 'jhkhjkhjk', '2021-01-13', '2021-01-13'),
(11, 'Ariana Grande', 89999, 'admin@admin.com', 'asasasa', '2021-01-13', '2021-01-13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `datas`
--
ALTER TABLE `datas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `datas`
--
ALTER TABLE `datas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
