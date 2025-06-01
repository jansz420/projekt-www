-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 02, 2025 at 12:09 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lunchito_boxito`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `diety`
--

CREATE TABLE `diety` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) DEFAULT NULL,
  `cena` decimal(6,2) DEFAULT NULL,
  `kalorycznosc` int(11) DEFAULT NULL,
  `opis` text DEFAULT NULL,
  `wege` tinyint(1) DEFAULT NULL,
  `zdjecie` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diety`
--

INSERT INTO `diety` (`id`, `nazwa`, `cena`, `kalorycznosc`, `opis`, `wege`, `zdjecie`) VALUES
(1, 'Fit Balance', 64.99, 1800, 'Zbilansowana dieta dla osób dbających o linię, oparta na lekkostrawnych produktach i zdrowych tłuszczach.', 0, 'fit_balance.png'),
(2, 'Green Power', 68.99, 2000, 'Pełnowartościowa dieta wegetariańska z dużą ilością warzyw, roślin strączkowych i superfoods.', 1, 'green_power.png'),
(3, 'Keto Boost', 75.99, 2500, 'Dieta ketogeniczna dla osób na redukcji lub chcących spalać tłuszcz bez głodu. Dużo tłuszczu, mało węglowodanów.', 0, 'keto_boost.png'),
(4, 'Vegan Vitality', 70.99, 2200, 'W 100% roślinna dieta bogata w białko roślinne, witaminy i błonnik. Idealna dla aktywnych wegan.', 1, 'vegan_vitality.png'),
(5, 'Office Box', 60.99, 1600, 'Lekka dieta idealna do pracy – szybkie, zdrowe posiłki gotowe do zabrania ze sobą.', 0, 'office_box.png'),
(6, 'Fit Vege 1500', 62.99, 1500, 'Wegetariańska dieta odchudzająca z naciskiem na smak i różnorodność.', 1, 'fit_vege.png'),
(7, 'Low FODMAP Care', 78.99, 1800, 'Dieta dla osób z problemami trawiennymi – lekkostrawna, eliminująca fermentujące cukry.', 1, 'low_fodmap_care.png'),
(8, 'Paleo Classic', 80.00, 2300, 'Dieta oparta na naturalnych, nieprzetworzonych produktach zwierzęcych i roślinnych, eliminująca zboża i nabiał.', 0, 'paleo_classic.png'),
(9, 'Sport Muscle', 85.00, 3000, 'Wysoko białkowa dieta dla osób aktywnych fizycznie i budujących masę mięśniową.', 0, 'sport_muscle.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kontakt`
--

CREATE TABLE `kontakt` (
  `id` int(11) NOT NULL,
  `imie` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tresc` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kontakt`
--

INSERT INTO `kontakt` (`id`, `imie`, `email`, `tresc`) VALUES
(1, 'Maciej', 'maciej@kox.klox', 'Mega żarcie. Czy możecie dodać nową dietę?'),
(2, 'Maciej', 'maciej@kox.klox', 'Mega żarcie. Czy możecie dodać nową dietę?'),
(3, 'Maciej', 'maciej@kox.klox', 'Mega żarcie. Czy możecie dodać nową dietę?'),
(4, 'Piotr', 'piotr@lok.pok', 'Zatrułem się. ZWROT PIENIĘDZY!!!!!!');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `diety`
--
ALTER TABLE `diety`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `kontakt`
--
ALTER TABLE `kontakt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diety`
--
ALTER TABLE `diety`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kontakt`
--
ALTER TABLE `kontakt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
