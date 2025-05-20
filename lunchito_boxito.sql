-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 20, 2025 at 04:56 PM
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
-- Struktura tabeli dla tabeli `dania`
--

CREATE TABLE `dania` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(100) NOT NULL,
  `rodzaj_posilku` enum('sniadanie','drugie_sniadanie','obiad','podwieczorek','kolacja') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dania`
--

INSERT INTO `dania` (`id`, `nazwa`, `rodzaj_posilku`) VALUES
(1, 'Owsianka z owocami i orzechami', 'sniadanie'),
(2, 'Jajecznica z warzywami', 'sniadanie'),
(3, 'Smoothie bowl z bananem i szpinakiem', 'sniadanie'),
(4, 'Omlet z serem i szpinakiem', 'sniadanie'),
(5, 'Kanapki z awokado i twarogiem', 'sniadanie'),
(6, 'Jogurt naturalny z orzechami', 'drugie_sniadanie'),
(7, 'Smoothie owocowo-warzywne', 'drugie_sniadanie'),
(8, 'Garść orzechów i suszonych owoców', 'drugie_sniadanie'),
(9, 'Kanapka z szynką lub hummusem', 'drugie_sniadanie'),
(10, 'Marchewki z hummusem lub dipem ziołowym', 'drugie_sniadanie'),
(11, 'Grillowany kurczak z kaszą i warzywami', 'obiad'),
(12, 'Curry z ciecierzycą i warzywami', 'obiad'),
(13, 'Pieczony łosoś z ziemniakami i brokułami', 'obiad'),
(14, 'Sałatka z quinoa, awokado i warzywami', 'obiad'),
(15, 'Makaron pełnoziarnisty z mięsem lub tofu i warzywami', 'obiad'),
(16, 'Sałatka z rukolą, pomidorami i serem feta lub indykiem', 'kolacja'),
(17, 'Zupa krem z dyni lub brokułów', 'kolacja'),
(18, 'Omlet warzywny', 'kolacja'),
(19, 'Pieczone warzywa z dipem lub mięsem', 'kolacja'),
(20, 'Kanapki z hummusem lub wędliną', 'kolacja'),
(21, 'Mus owocowy z jogurtem', 'podwieczorek'),
(22, 'Orzechy włoskie i suszone owoce', 'podwieczorek'),
(23, 'Koktajl z mango i mleka kokosowego', 'podwieczorek'),
(24, 'Pieczone jabłka z cynamonem', 'podwieczorek'),
(25, 'Batony owsiane z miodem', 'podwieczorek');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dieta_dania`
--

CREATE TABLE `dieta_dania` (
  `id` int(11) NOT NULL,
  `dieta_id` int(11) DEFAULT NULL,
  `danie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dieta_dania`
--

INSERT INTO `dieta_dania` (`id`, `dieta_id`, `danie_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 5),
(4, 1, 6),
(5, 1, 9),
(6, 1, 10),
(7, 1, 11),
(8, 1, 13),
(9, 1, 15),
(10, 1, 16),
(11, 1, 17),
(12, 1, 20),
(13, 1, 21),
(14, 1, 24),
(15, 2, 1),
(16, 2, 3),
(17, 2, 5),
(18, 2, 7),
(19, 2, 8),
(20, 2, 10),
(21, 2, 12),
(22, 2, 14),
(23, 2, 15),
(24, 2, 16),
(25, 2, 17),
(26, 2, 18),
(27, 2, 21),
(28, 2, 22),
(29, 3, 2),
(30, 3, 4),
(31, 3, 5),
(32, 3, 6),
(33, 3, 9),
(34, 3, 10),
(35, 3, 11),
(36, 3, 13),
(37, 3, 19),
(38, 3, 18),
(39, 3, 19),
(40, 3, 20),
(41, 3, 22),
(42, 3, 25),
(43, 4, 1),
(44, 4, 3),
(45, 4, 5),
(46, 4, 7),
(47, 4, 8),
(48, 4, 10),
(49, 4, 12),
(50, 4, 14),
(51, 4, 15),
(52, 4, 16),
(53, 4, 17),
(54, 4, 18),
(55, 4, 21),
(56, 4, 23),
(57, 5, 2),
(58, 5, 5),
(59, 5, 4),
(60, 5, 6),
(61, 5, 9),
(62, 5, 10),
(63, 5, 11),
(64, 5, 13),
(65, 5, 15),
(66, 5, 16),
(67, 5, 20),
(68, 5, 19),
(69, 5, 24),
(70, 5, 25),
(71, 6, 1),
(72, 6, 3),
(73, 6, 5),
(74, 6, 7),
(75, 6, 8),
(76, 6, 10),
(77, 6, 12),
(78, 6, 14),
(79, 6, 15),
(80, 6, 16),
(81, 6, 17),
(82, 6, 18),
(83, 6, 21),
(84, 6, 22),
(85, 7, 1),
(86, 7, 3),
(87, 7, 5),
(88, 7, 8),
(89, 7, 10),
(90, 7, 7),
(91, 7, 14),
(92, 7, 12),
(93, 7, 15),
(94, 7, 16),
(95, 7, 17),
(96, 7, 18),
(97, 7, 22),
(98, 7, 23),
(99, 8, 2),
(100, 8, 4),
(101, 8, 5),
(102, 8, 6),
(103, 8, 9),
(104, 8, 10),
(105, 8, 11),
(106, 8, 13),
(107, 8, 19),
(108, 8, 19),
(109, 8, 20),
(110, 8, 18),
(111, 8, 24),
(112, 8, 25),
(113, 9, 2),
(114, 9, 4),
(115, 9, 5),
(116, 9, 6),
(117, 9, 9),
(118, 9, 10),
(119, 9, 11),
(120, 9, 13),
(121, 9, 15),
(122, 9, 16),
(123, 9, 19),
(124, 9, 20),
(125, 9, 21),
(126, 9, 25);

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
-- Struktura tabeli dla tabeli `zamowienia_jednorazowe`
--

CREATE TABLE `zamowienia_jednorazowe` (
  `id` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `numer_telefonu` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `adres` text NOT NULL,
  `dzien_dostawy` date NOT NULL,
  `dieta_id` int(11) NOT NULL,
  `ilosc` int(11) NOT NULL,
  `cena` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dania`
--
ALTER TABLE `dania`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `dieta_dania`
--
ALTER TABLE `dieta_dania`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dieta_id` (`dieta_id`),
  ADD KEY `danie_id` (`danie_id`);

--
-- Indeksy dla tabeli `diety`
--
ALTER TABLE `diety`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zamowienia_jednorazowe`
--
ALTER TABLE `zamowienia_jednorazowe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dieta_id` (`dieta_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dania`
--
ALTER TABLE `dania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `dieta_dania`
--
ALTER TABLE `dieta_dania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `diety`
--
ALTER TABLE `diety`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `zamowienia_jednorazowe`
--
ALTER TABLE `zamowienia_jednorazowe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dieta_dania`
--
ALTER TABLE `dieta_dania`
  ADD CONSTRAINT `dieta_dania_ibfk_1` FOREIGN KEY (`dieta_id`) REFERENCES `diety` (`id`),
  ADD CONSTRAINT `dieta_dania_ibfk_2` FOREIGN KEY (`danie_id`) REFERENCES `dania` (`id`);

--
-- Constraints for table `zamowienia_jednorazowe`
--
ALTER TABLE `zamowienia_jednorazowe`
  ADD CONSTRAINT `zamowienia_jednorazowe_ibfk_1` FOREIGN KEY (`dieta_id`) REFERENCES `diety` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
