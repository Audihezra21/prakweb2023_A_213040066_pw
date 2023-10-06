-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 06, 2023 at 11:54 AM
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
-- Database: `buku`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `penulis_buku` varchar(50) DEFAULT NULL,
  `penerbit_buku` varchar(50) DEFAULT NULL,
  `tahun_terbit` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul_buku`, `penulis_buku`, `penerbit_buku`, `tahun_terbit`) VALUES
(1, 'To kill a Mockingbird', 'Harper Lee', 'J.B Lippincott& Co.', '1960'),
(2, '1984', 'George Orwell', 'Secker & Warburg', '1949'),
(3, 'The Great Gasby', 'F. Scott Fitzgerald', 'Charles Scribner Sons', '1925'),
(4, 'Pride and Prejudice', 'Jane Austen', NULL, '1813'),
(5, 'The Catcher in The Rye', 'J.D Salinger', 'Little, Brown and Company', '1951'),
(6, 'The Hobbit', 'J.R.R Tolkien', 'George Allen & Unwin', '1937'),
(7, 'The Lord of The Ring', 'J.R.R Tolkien', 'George Allen & Unwin  ', '1955'),
(8, 'Harry Potter and the Sorcerer\'s Stone', 'J.K Rowling', 'Bloomsbury', '1997'),
(9, 'The Alchemist', 'Paulo Coelho', 'Rocco in Brazil', '1988'),
(10, 'Brave New World', 'Aldous Huxley', 'Chatto & Windus', '1932');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
