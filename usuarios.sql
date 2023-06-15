-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2023 a las 19:12:43
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cursosql`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido1` varchar(30) NOT NULL,
  `apellido2` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido1`, `apellido2`, `email`, `login`, `password`) VALUES
(3, 'Luis', 'Fernandez', 'Gomez', 'luisfg@gmail.com', 'luisfg', '0000'),
(4, 'Carlos', 'Sanz', 'Hernaez', 'csh@gmail.com', 'carlos_00', '0000'),
(5, 'Lucas', 'Gil', 'Gil', 'lgg@gmail.com', 'Lgg', '9999'),
(6, 'Sara', 'García', 'García', 'saragg@gmail.com', 'sara00', '0000'),
(7, 'Lara', 'García', 'Gil', 'laraaa@gmail.com', 'laraa', '000000'),
(8, 'Jose', 'Perez', 'Jimenez', 'jopeji@gmail.com', 'jopeji', '88888888'),
(9, 'Kira', 'Smith', 'Gil', 'kira@gmail.com', 'kira001', '2000'),
(10, 'Alma', 'Portillo', 'Sanz', 'almaps@gmail.com', 'almaps', '3333'),
(11, 'jesus', 'cano', 'rua', 'jesuscr@gmail.com', 'jesuscr', '9999'),
(12, 'Lucas', 'Saraz', 'Hil', 'Lsh@gmail.com', 'LSH', '3333'),
(13, 'Kiam', 'Lewis', 'High', 'Kiamlh@gmail.com', 'Kiam', '0000'),
(15, 'Jimena', 'Ruiz', 'Sanz', 'Jimrs@gmail.com', 'Jim_', '0000'),
(16, 'Lucía', 'Saraz', 'Gomez', 'lucisago@gmail.com', 'lucisago', '0000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
