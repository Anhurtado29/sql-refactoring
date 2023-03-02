-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-03-2023 a las 01:50:50
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gilded_rose`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_item`
--

CREATE TABLE `categoria_item` (
  `idcategoria_item` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `new_item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

CREATE TABLE `item` (
  `iditem` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sellIn` int(11) NOT NULL,
  `quality` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `item`
--

INSERT INTO `item` (`iditem`, `name`, `sellIn`, `quality`) VALUES
(20, '+5 Dexterity Vest', 8, 19),
(21, 'Aged Brie', 0, 0),
(22, 'Elixir of the Mongoose', 3, 6),
(23, 'Sulfuras, Hand of Ragnaros', 0, 80),
(24, 'Sulfuras, Hand of Ragnaros', -1, 80),
(25, 'Backstage passes to a TAFKAL80ETC concert', 13, 20),
(26, 'Backstage passes to a TAFKAL80ETC concert', 8, 50),
(27, 'Backstage passes to a TAFKAL80ETC concert', 3, 50),
(28, 'Conjured Mana Cake', 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `new_item`
--

CREATE TABLE `new_item` (
  `idnew_item` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sellIn` int(11) NOT NULL,
  `quality` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria_item`
--
ALTER TABLE `categoria_item`
  ADD PRIMARY KEY (`idcategoria_item`),
  ADD KEY `new_item_fk` (`new_item_id`),
  ADD KEY `item_fk` (`item_id`);

--
-- Indices de la tabla `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`iditem`);

--
-- Indices de la tabla `new_item`
--
ALTER TABLE `new_item`
  ADD PRIMARY KEY (`idnew_item`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria_item`
--
ALTER TABLE `categoria_item`
  MODIFY `idcategoria_item` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `item`
--
ALTER TABLE `item`
  MODIFY `iditem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `new_item`
--
ALTER TABLE `new_item`
  MODIFY `idnew_item` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categoria_item`
--
ALTER TABLE `categoria_item`
  ADD CONSTRAINT `item_fk` FOREIGN KEY (`item_id`) REFERENCES `item` (`iditem`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `new_item_fk` FOREIGN KEY (`new_item_id`) REFERENCES `new_item` (`idnew_item`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
