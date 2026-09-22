-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 22 sep 2026 om 12:52
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `budget_buddy_2026`
--
CREATE DATABASE IF NOT EXISTS `budget_buddy_2026` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `budget_buddy_2026`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `status`) VALUES
(1, 'Wonen - Huur / hypotheek', NULL, 'inactive'),
(2, 'Wonen - Gas, water, elektriciteit', '', 'inactive'),
(3, 'Wonen - Gemeentelijke belastingen', '', 'inactive'),
(4, 'Wonen - Verzekeringen (inboedel / opstal)', '', 'inactive'),
(5, 'Wonen - Onderhoud woning', '', 'inactive'),
(6, 'Wonen - Servicekosten / VvE', '', 'inactive'),
(7, 'Levensonderhoud - Boodschappen', NULL, 'active'),
(8, 'Levensonderhoud - Drogist / verzorging', '', 'inactive'),
(9, 'Levensonderhoud - Huishoudelijke artikelen', '', 'inactive'),
(10, 'Levensonderhoud - Huisdieren', '', 'inactive'),
(11, 'Vervoer - Brandstof', NULL, 'inactive'),
(12, 'Vervoer - Openbaar vervoer', '', 'inactive'),
(13, 'Vervoer - Autoverzekering', '', 'inactive'),
(14, 'Vervoer - Wegenbelasting', '', 'inactive'),
(15, 'Vervoer - Onderhoud / reparatie', '', 'inactive'),
(16, 'Vervoer - Parkeren', '', 'inactive'),
(17, 'Vervoer - Fiets / scooter', NULL, 'active'),
(18, 'Abonnementen - Telefoon', NULL, 'active'),
(19, 'Abonnementen - Internet', '', 'inactive'),
(20, 'Abonnementen - TV / streaming', '', 'inactive'),
(21, 'Abonnementen - Kranten / lidmaatschappen', '', 'inactive'),
(22, 'Gezondheid - Zorgverzekering', '', 'inactive'),
(23, 'Gezondheid - Eigen risico', '', 'inactive'),
(24, 'Gezondheid - Medicatie', '', 'inactive'),
(25, 'Gezondheid - Tandarts', '', 'inactive'),
(26, 'Gezondheid - Overige zorg', '', 'inactive'),
(27, 'Persoonlijk - Kleding', NULL, 'active'),
(28, 'Persoonlijk - Schoenen', '', 'inactive'),
(29, 'Persoonlijk - Kapper', '', 'inactive'),
(30, 'Persoonlijk - Persoonlijke verzorging', '', 'inactive'),
(31, 'Vrije tijd - Uit eten / drinken', '', 'inactive'),
(32, 'Vrije tijd - Vakantie', NULL, 'inactive'),
(33, 'Vrije tijd - Sport', '', 'inactive'),
(34, 'Vrije tijd - Hobby\'s', '', 'inactive'),
(35, 'Vrije tijd - Uitgaan', NULL, 'active'),
(36, 'Vrije tijd - Cadeaus', '', 'inactive'),
(37, 'Kinderen & onderwijs - Schoolkosten', '', 'inactive'),
(38, 'Kinderen & onderwijs - Kinderopvang', '', 'inactive'),
(39, 'Kinderen & onderwijs - Studie / cursussen', '', 'inactive'),
(40, 'Financiën - Aflossing leningen', '', 'inactive'),
(41, 'Financiën - Creditcard', '', 'inactive'),
(42, 'Financiën - Rente', '', 'inactive'),
(43, 'Financiën - Bankkosten', '', 'inactive'),
(44, 'Overig - Onvoorziene uitgaven', '', 'inactive'),
(45, 'Overig - Donaties', '', 'inactive'),
(46, 'Overig - Overige kosten', '', 'inactive');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20260922094743', '2026-09-22 11:47:58', 66);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexen voor tabel `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0E3BD61CE16BA31DBBF396750` (`queue_name`,`available_at`,`delivered_at`,`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT voor een tabel `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
