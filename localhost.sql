-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2023 a las 00:24:41
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `interfon`
--
CREATE DATABASE IF NOT EXISTS `interfon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `interfon`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `Nom_Departamento` int(11) NOT NULL,
  `ID_Trabajadores` int(11) NOT NULL,
  `Nom_Piso` int(2) NOT NULL,
  `Area_Departamento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`Nom_Departamento`, `ID_Trabajadores`, `Nom_Piso`, `Area_Departamento`) VALUES
(1, 100, 4, 'Desarrollo de Software'),
(8, 101, 4, 'Desarrollo de Software'),
(9, 102, 4, 'Desarrollo de Software'),
(10, 103, 3, 'Marketing Digital'),
(11, 104, 3, 'Marketing Digital'),
(12, 105, 3, 'Marketing Digital'),
(13, 106, 2, 'Recursos Humanos'),
(14, 107, 2, 'Recursos Humanos'),
(15, 108, 2, 'Recursos Humanos'),
(16, 109, 1, 'Diseño Gráfico'),
(17, 110, 1, 'Diseño Gráfico'),
(18, 111, 1, 'Diseño Gráfico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horaentrada`
--

CREATE TABLE `horaentrada` (
  `ID_HoraE` int(11) NOT NULL,
  `Codigo_QR` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `HEntrada` date NOT NULL,
  `Fecha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horasalida`
--

CREATE TABLE `horasalida` (
  `ID_HoraS` int(11) NOT NULL,
  `Codigo_QR` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `HSalida` date NOT NULL,
  `Fecha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadores`
--

CREATE TABLE `trabajadores` (
  `ID_Trabajadores` int(11) NOT NULL,
  `Nombre(s)` varchar(30) NOT NULL,
  `Apellido_Paterno` varchar(15) NOT NULL,
  `Apellido_Materno` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `trabajadores`
--

INSERT INTO `trabajadores` (`ID_Trabajadores`, `Nombre(s)`, `Apellido_Paterno`, `Apellido_Materno`) VALUES
(100, 'Juan', 'Pérez', 'García'),
(101, 'María José', 'López', 'Rodríguez'),
(102, 'Carlos', 'González', 'Martínez'),
(103, 'Laura', 'Hernánde', 'Ramírez'),
(104, 'José Luis', 'Rodríguez', 'López'),
(105, 'Ana María', 'García', 'Pérez'),
(106, 'Luis', 'Martínez', 'González'),
(107, 'Sofia', 'Ramírez', 'Hernández'),
(108, 'Diego Alejandro', 'Fernández', 'Torres'),
(109, 'Elena', 'Díaz', 'Sánchez'),
(110, 'Javier Antonio', 'Castro', 'Jiménez'),
(111, 'Paula Andrea', 'Vargas', 'Mendoza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitantes`
--

CREATE TABLE `visitantes` (
  `Codigo_QR` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Nom_Departamento` int(11) NOT NULL,
  `Nombre(s)` varchar(30) NOT NULL,
  `Apellido_Paterno` varchar(15) NOT NULL,
  `Apellido_Materno` varchar(15) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Telefono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`Nom_Departamento`),
  ADD KEY `ID_Trabajadores` (`ID_Trabajadores`);

--
-- Indices de la tabla `horaentrada`
--
ALTER TABLE `horaentrada`
  ADD PRIMARY KEY (`ID_HoraE`),
  ADD KEY `Codigo_QR` (`Codigo_QR`);

--
-- Indices de la tabla `horasalida`
--
ALTER TABLE `horasalida`
  ADD PRIMARY KEY (`ID_HoraS`),
  ADD KEY `Codigo_QR` (`Codigo_QR`);

--
-- Indices de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  ADD PRIMARY KEY (`ID_Trabajadores`);

--
-- Indices de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  ADD PRIMARY KEY (`Codigo_QR`),
  ADD KEY `Nom_Registro` (`Nom_Departamento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `Nom_Departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `horaentrada`
--
ALTER TABLE `horaentrada`
  MODIFY `ID_HoraE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horasalida`
--
ALTER TABLE `horasalida`
  MODIFY `ID_HoraS` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  MODIFY `ID_Trabajadores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD CONSTRAINT `departamentos_ibfk_1` FOREIGN KEY (`ID_Trabajadores`) REFERENCES `trabajadores` (`ID_Trabajadores`);

--
-- Filtros para la tabla `horaentrada`
--
ALTER TABLE `horaentrada`
  ADD CONSTRAINT `horaentrada_ibfk_1` FOREIGN KEY (`Codigo_QR`) REFERENCES `visitantes` (`Codigo_QR`);

--
-- Filtros para la tabla `horasalida`
--
ALTER TABLE `horasalida`
  ADD CONSTRAINT `horasalida_ibfk_1` FOREIGN KEY (`Codigo_QR`) REFERENCES `visitantes` (`Codigo_QR`);

--
-- Filtros para la tabla `visitantes`
--
ALTER TABLE `visitantes`
  ADD CONSTRAINT `visitantes_ibfk_1` FOREIGN KEY (`Nom_Departamento`) REFERENCES `departamentos` (`Nom_Departamento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
