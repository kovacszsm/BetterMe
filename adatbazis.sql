-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Jan 06. 21:46
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `adatbazis`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `FelhasznaloNev` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `SALT` varchar(64) NOT NULL,
  `HASH` varchar(64) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Jogosultsag` int(1) NOT NULL,
  `Aktiv` int(1) NOT NULL,
  `RegisztracioDatuma` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `user`
--

INSERT INTO `user` (`Id`, `FelhasznaloNev`, `SALT`, `HASH`, `Email`, `Jogosultsag`, `Aktiv`, `RegisztracioDatuma`) VALUES
(1, 'KovacsZS', 'jQGX8grO1yjNqhiZbtROcseiqj1NVZJd2iqlfxPx1GKLJ9H8smnLJ9dloScCK6Zp', 'dcedbd2d352d19c6eae0dfb12271b74d985c825b8d774afd2abd0d101b6e57ef', 'kovacszs@gmail.com', 9, 1, '2024-11-25 07:33:49');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `FelhasznaloNev` (`FelhasznaloNev`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
