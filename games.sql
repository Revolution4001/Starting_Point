-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 23 Cze 2018, 20:01
-- Wersja serwera: 10.1.13-MariaDB
-- Wersja PHP: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `games`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `producer` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `platform` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `price` float(7,2) NOT NULL,
  `age_requirements` int(7) NOT NULL,
  `digital` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `games`
--

INSERT INTO `games` (`id`, `name`, `producer`, `publisher`, `type`, `platform`, `price`, `age_requirements`, `digital`) VALUES
(2, 'The Witcher 3: Wild Hunt', 'CD Projekt RED', 'Bandai Namco Entertainment ', 'rpg', 'PS4', 199.99, 18, 1),
(4, 'Diablo III', 'Blizzard Entertainment', 'Blizzard Entertainment', 'Hack and Slash', 'PC', 69.99, 18, 1),
(6, 'Max Payne2', 'Remedy Entertainment', 'Rockstar Games', 'Shooter TPP', 'PC', 29.99, 18, 0),
(13, 'Max Payne2', 'Remedy Entertainment', 'Rockstar Games', 'Shooter TPP', 'PC', 29.99, 18, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `pass` varchar(200) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `login`, `pass`) VALUES
(9, 'root', '55a0f9a01a57b764befd1afa3deeeda8'),
(10, 'guest', '46f94c8de14fb36680850768ff1b7f2a');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
