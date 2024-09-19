-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Wrz 19, 2024 at 10:23 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `expensen`
--

CREATE TABLE `expensen` (
  `id` int(11) NOT NULL,
  `price` float NOT NULL,
  `data` date NOT NULL,
  `user_ID` varchar(100) NOT NULL,
  `category_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expensen`
--

INSERT INTO `expensen` (`id`, `price`, `data`, `user_ID`, `category_ID`) VALUES
(1, -53, '2024-01-15', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 8),
(2, -143, '2024-01-12', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 7),
(3, -131, '2024-02-12', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 1),
(4, -131, '2024-02-12', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 1),
(5, 111, '2024-03-12', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 9),
(6, -113, '2024-03-18', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 3),
(7, -113, '2024-04-18', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 3),
(8, -53, '2024-04-18', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 8),
(9, -55, '2024-05-18', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 7),
(10, 172, '2024-05-18', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 7),
(11, 107, '2024-06-18', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 1),
(12, -131, '2024-06-18', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 1),
(13, -238, '2024-07-18', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 1),
(14, 73, '2024-07-18', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 4),
(15, -147, '2024-08-18', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 5),
(16, -57, '2024-08-18', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 1),
(17, 96, '2024-09-18', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 9),
(18, 198, '2024-09-18', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 6),
(19, 18, '2024-10-18', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 9),
(20, -104, '2024-10-18', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 7),
(21, 171, '2024-11-18', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 7),
(22, -41, '2024-11-18', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 8),
(23, 16, '2024-12-18', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 7),
(24, -71, '2024-12-18', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 8),
(25, -1000, '2024-05-10', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42', 11),
(26, -51, '2024-09-19', '1', 11),
(27, -51, '2024-09-19', '1', 11);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `options`
--

CREATE TABLE `options` (
  `Id` int(11) NOT NULL,
  `emoji` varchar(5) NOT NULL,
  `description` varchar(20) NOT NULL,
  `user_ID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`Id`, `emoji`, `description`, `user_ID`) VALUES
(1, '💪', 'Gym', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42'),
(2, '🍔', 'Food', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42'),
(3, '🛒', 'Groceries', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42'),
(4, '🚗', 'Gas', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42'),
(5, '💻', 'Electronics', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42'),
(6, '🏠', 'House', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42'),
(7, '📱', 'Phone Bill', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42'),
(8, '🖼', 'sport', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42'),
(9, '💸', 'Deposit Money', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42'),
(10, '🎸', 'Muzyka', 'user_2f5aBo5vnxPUzQFZ8wids0wfz42'),
(11, '👠', 'kurwy', '1');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `expensen`
--
ALTER TABLE `expensen`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expensen`
--
ALTER TABLE `expensen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
