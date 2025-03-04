-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: sql308.byetcluster.com
-- Tiempo de generación: 04-03-2025 a las 17:53:50
-- Versión del servidor: 10.6.19-MariaDB
-- Versión de PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `thsi_38097478_profesores`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acompanante`
--

CREATE TABLE `acompanante` (
  `actividad_id` int(3) NOT NULL,
  `profesor_id` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `acompanante`
--

INSERT INTO `acompanante` (`actividad_id`, `profesor_id`) VALUES
(22, 9),
(25, 5),
(25, 8),
(25, 11),
(28, 2),
(29, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id` int(5) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `coste` decimal(8,2) NOT NULL,
  `total_alumnos` int(3) NOT NULL,
  `objetivo` varchar(255) NOT NULL,
  `hora_inicio_id` int(2) NOT NULL,
  `hora_fin_id` int(2) NOT NULL,
  `profesor_id` int(3) NOT NULL,
  `tipo_id` int(2) NOT NULL,
  `departamento_id` int(3) NOT NULL,
  `aprobada` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id`, `titulo`, `fecha_inicio`, `fecha_fin`, `coste`, `total_alumnos`, `objetivo`, `hora_inicio_id`, `hora_fin_id`, `profesor_id`, `tipo_id`, `departamento_id`, `aprobada`) VALUES
(28, 'sadas', '2025-02-07', '2025-02-27', '342423.00', 4324, '0', 24, 18, 10, 2, 3, 1),
(29, '213312', '2025-02-13', '2025-02-28', '23.00', 234, '0', 19, 13, 6, 1, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int(3) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `nombre`) VALUES
(1, 'Lengua'),
(2, 'Matematicas'),
(3, 'Ingles'),
(4, 'Frances'),
(6, 'Historia'),
(7, 'Informatica'),
(8, 'Defensa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horas`
--

CREATE TABLE `horas` (
  `id` int(2) NOT NULL,
  `hora` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `horas`
--

INSERT INTO `horas` (`id`, `hora`) VALUES
(24, '00:00:00'),
(1, '01:00:00'),
(3, '03:00:00'),
(4, '04:00:00'),
(5, '05:00:00'),
(6, '06:00:00'),
(7, '07:00:00'),
(8, '08:00:00'),
(9, '09:00:00'),
(10, '10:00:00'),
(11, '11:00:00'),
(12, '12:00:00'),
(13, '13:00:00'),
(14, '14:00:00'),
(15, '15:00:00'),
(16, '16:00:00'),
(17, '17:00:00'),
(18, '18:00:00'),
(19, '19:00:00'),
(20, '20:00:00'),
(21, '21:00:00'),
(22, '22:00:00'),
(23, '23:00:00'),
(2, '02:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id` int(3) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_departamento` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id`, `nombre`, `id_departamento`) VALUES
(1, 'Jose Luis Nunez ', 6),
(2, 'Rocio Alvarez ', 2),
(3, 'Bernat Costa', 7),
(4, 'Jose Carlos Trabajador', 5),
(5, 'Paco Maestre', 4),
(6, 'Alejandro Gomez', 3),
(7, 'Rafael Gallardo', 1),
(8, 'Pepe Villuela', 1),
(9, 'Pepe Villuela2', 1),
(10, 'Pepe Villuela22', 3),
(11, 'Pepe Villuela222', 3),
(13, 'Indiana Jones', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id` int(2) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id`, `nombre`) VALUES
(1, 'extraescolares'),
(2, 'complementaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(5) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `contrasena` varchar(100) NOT NULL,
  `rol` varchar(2) DEFAULT 'us',
  `email` varchar(100) NOT NULL
) ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `contrasena`, `rol`, `email`) VALUES
(1, 'joseluisnunez', '$2y$10$X5f4Kfy2.Ph3vIa0Mhxjl.DTBEULitb9x4bxA6.5oO013FhMLtUKq', 'ad', 'joseluisnunez@iesamachado.org'),
(2, 'vicedirector', '$2y$10$X5f4Kfy2.Ph3vIa0Mhxjl.DTBEULitb9x4bxA6.5oO013FhMLtUKq', 'ad', 'vicedirector@iesamachado.org'),
(3, 'extraescolares', '$2y$10$X5f4Kfy2.Ph3vIa0Mhxjl.DTBEULitb9x4bxA6.5oO013FhMLtUKq', 'ad', 'extraescolares@iesamachado.org'),
(5, 'daniel', '$2y$10$ViL/cA2eHHxPpwqqXR.7iuRIw3soJ5bcmXI7ygIdkYwkWZQ0RaY5W', 'ad', 'danielbarrio@iesamachado.org'),
(11, 'nombre', '$2y$10$z4FwAilU0z0VGv9RmbnQi.MQtQ63Ak.AVGp7aH7FLWm/SlPzZKc62', 'us', 'nombre@iesamachado.org'),
(10, 'indiana', '$2y$10$eQM2aeRcHGYtaP7aC3fcsObvch64WUAU1rjNYOtgEbZVSvnpoAPvi', 'ad', 'indianajones@iesamachado.org');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acompanante`
--
ALTER TABLE `acompanante`
  ADD PRIMARY KEY (`actividad_id`,`profesor_id`),
  ADD KEY `profesor_id` (`profesor_id`);

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hora_inicio_id` (`hora_inicio_id`),
  ADD KEY `hora_fin_id` (`hora_fin_id`),
  ADD KEY `profesor_id` (`profesor_id`),
  ADD KEY `tipo_id` (`tipo_id`),
  ADD KEY `departamento_id` (`departamento_id`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `horas`
--
ALTER TABLE `horas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `horas`
--
ALTER TABLE `horas`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
