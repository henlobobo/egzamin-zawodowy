SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Struktura tabeli dla tabeli `samochody`
--

CREATE TABLE `samochody` (
  `id` int(10) UNSIGNED NOT NULL,
  `marka` text,
  `model` text,
  `rocznik` year(4) DEFAULT NULL,
  `kolor` text,
  `stan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `samochody`
--

INSERT INTO `samochody` (`id`, `marka`, `model`, `rocznik`, `kolor`, `stan`) VALUES
(1, 'Fiat', 'Punto', 2016, 'czerwony', 'bardzo dobry'),
(2, 'Fiat', 'Punto', 2002, 'czerwony', 'dobry'),
(3, 'Fiat', 'Punto', 2007, 'niebieski', 'bardzo bobry'),
(4, 'Opel', 'Corsa', 2016, 'grafitowy', 'bardzo dobry'),
(5, 'Opel', 'Astra', 2003, 'niebieski', 'porysowany lakier'),
(6, 'Toyota', 'Corolla', 2016, 'czerwony', 'bardzo dobry'),
(7, 'Toyota', 'Corolla', 2014, 'szary', 'dobry'),
(8, 'Toyota', 'Yaris', 2004, 'granatowy', 'dobry');

ALTER TABLE `samochody`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `samochody`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;



---------------------------------------------------------------------------------------------------------------------

SELECT marka, model FROM samochody WHERE samochody.kolor = "czerwony";
UPDATE samochody SET stan = "dobry" WHERE rocznik = 2003;
CREATE USER "andrzej"@"localhost" IDENTIFIED BY "andrzej1@";
GRANT SELECT, UPDATE ON samochody TO "andrzej"@"localhost";