-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 02-08-2024 a las 15:24:44
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
-- Base de datos: `controldeacceso`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `matricula` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `cuatrimestre` int(11) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `estado` enum('permitido','pendiente','denegado') NOT NULL,
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `matricula`, `nombre`, `cuatrimestre`, `correo`, `estado`, `fecha_registro`) VALUES
(1, '220070697', 'Jose Fabian Muñozcano Guzman', 9, 'j.muxozcano.g656@edu.utc.mx', 'permitido', '2024-05-20 16:21:52'),
(2, '220073267', 'Lorena Sanchez Miranda', 9, 'l.sanchez.m623@edu.utc.mx', 'permitido', '2024-05-20 16:25:41'),
(3, '230085132', 'Alexia Itzel Baeza Torres', 6, 'a.baeza.t919@edu.utc.mx', 'permitido', '2024-05-20 19:05:57'),
(4, '220069348', 'Luis Angel Mosco Salazar', 9, 'l.mosco.s776@edu.utc.mx', 'permitido', '2024-06-04 14:17:06'),
(6, '12345', 'Juan Pérez', 1, 'juan.perez@instituto.edu.mx', 'permitido', '2024-06-23 13:48:35'),
(7, '12346', 'Ana Gómez', 2, 'ana.gomez@instituto.edu.mx', 'pendiente', '2024-06-23 13:48:35'),
(8, '12347', 'Luis García', 3, 'luis.garcia@instituto.edu.mx', 'denegado', '2024-06-23 13:48:35'),
(9, '240120596', 'GARCIA CABALLERO DIANA ELENA', 9, 'juan.perez@example.com', 'permitido', '2024-06-25 14:40:37'),
(10, '240128487', 'HERNANDEZ ZAMITIZ ARIANA ', 9, 'maria.garcia@example.com', 'denegado', '2024-06-25 14:40:37'),
(11, '240128385', 'MOLINA SOLIS IRVIN ', 9, 'luis.martinez@example.com', 'permitido', '2024-06-25 14:40:37'),
(12, '230113205', 'OLMOS SANTOS FERNANDO ', 9, 'ana.lopez@example.com', 'denegado', '2024-06-25 14:40:37'),
(13, '240125213', 'PEREZ CAMACHO CAMILA ', 9, 'carlos.rodriguez@example.com', 'permitido', '2024-06-25 14:40:37'),
(14, '240113970', 'SALVADOR MARTINEZ ZUÑIGA', 9, 'laura.gonzalez@example.com', 'denegado', '2024-06-25 14:40:37'),
(15, '240129323', 'SANCHEZ BAUTISTA GLADYS BRISEYDA ', 9, 'jorge.fernandez@example.com', 'permitido', '2024-06-25 14:40:38'),
(16, '240123015', 'TALIN RENDON PATRICIA ', 9, 'sofia.herrera@example.com', 'denegado', '2024-06-25 14:40:38'),
(17, '240123639', 'AGUIRRE FATIMA ', 9, 'pablo.sanchez@example.com', 'permitido', '2024-06-25 14:40:38'),
(18, '240119985', 'ANDRADE ENRIQUEZ DANIELA ITZEL', 9, 'beatriz.torres@example.com', 'denegado', '2024-06-25 14:40:38'),
(19, '240124447', 'ARELLANO LOPEZ VALERIA ANDREA', 9, 'miguel.morales@example.com', 'permitido', '2024-06-25 14:40:38'),
(20, '240123009', 'BOTELLO TORRES CRISTOPHER ', 9, 'elena.ramos@example.com', 'denegado', '2024-06-25 14:40:38'),
(21, '240126082', 'CARDENAS BECERRA VICTORIA MARISOL ', 9, 'andres.gomez@example.com', 'permitido', '2024-06-25 14:40:38'),
(22, '240130610', 'CHINO SANTOS JESUS GABRIEL', 9, 'natalia.ruiz@example.com', 'denegado', '2024-06-25 14:40:38'),
(23, '240123538', 'CRUZ MORENO KEYLA GALILEA ', 9, 'fernando.vargas@example.com', 'permitido', '2024-06-25 14:40:38'),
(24, '240120692', 'FUENTES IBARRA JESUS EDUARDO', 9, 'carmen.mendoza@example.com', 'denegado', '2024-06-25 14:40:38'),
(25, '240121567', 'GARCIA LUCIA SAUL ', 9, 'ricardo.castillo@example.com', 'permitido', '2024-06-25 14:40:38'),
(26, '240125140', 'GARCIA SARMIENTO HELDER BRIDANI ', 9, 'veronica.martin@example.com', 'denegado', '2024-06-25 14:40:38'),
(27, '20231001', 'Juan Pérez Martínez', 2, 'juan.perez@example.com', 'permitido', '2024-06-25 15:14:14'),
(28, '20231002', 'María García López', 3, 'maria.garcia@example.com', 'denegado', '2024-06-25 15:14:14'),
(29, '20231003', 'Luis Martínez Hernández', 1, 'luis.martinez@example.com', 'permitido', '2024-06-25 15:14:14'),
(30, '20231004', 'Ana López Gómez', 4, 'ana.lopez@example.com', 'denegado', '2024-06-25 15:14:14'),
(31, '20231005', 'Carlos Rodríguez Díaz', 5, 'carlos.rodriguez@example.com', 'permitido', '2024-06-25 15:14:14'),
(32, '20231006', 'Laura González Torres', 2, 'laura.gonzalez@example.com', 'denegado', '2024-06-25 15:14:14'),
(33, '20231007', 'Jorge Fernández Ruiz', 3, 'jorge.fernandez@example.com', 'permitido', '2024-06-25 15:14:14'),
(34, '20231008', 'Sofía Herrera Morales', 1, 'sofia.herrera@example.com', 'denegado', '2024-06-25 15:14:14'),
(35, '20231009', 'Pablo Sánchez Vargas', 4, 'pablo.sanchez@example.com', 'permitido', '2024-06-25 15:14:14'),
(36, '20231010', 'Beatriz Torres Castillo', 5, 'beatriz.torres@example.com', 'denegado', '2024-06-25 15:14:14'),
(37, '20231021', 'Javier Aguilar Martínez', 2, 'javier.aguilar@example.com', 'permitido', '2024-06-26 21:31:14'),
(38, '20231022', 'Rosa Jiménez Hernández', 3, 'rosa.jimenez@example.com', 'denegado', '2024-06-26 21:31:14'),
(39, '20231023', 'David Santos López', 1, 'david.santos@example.com', 'permitido', '2024-06-26 21:31:14'),
(40, '20231024', 'Patricia Morales Pérez', 4, 'patricia.morales@example.com', 'denegado', '2024-06-26 21:31:14'),
(41, '20231025', 'Alejandro Castillo Ruiz', 5, 'alejandro.castillo@example.com', 'permitido', '2024-06-26 21:31:14'),
(42, '20231026', 'Claudia Rivera Sánchez', 2, 'claudia.rivera@example.com', 'denegado', '2024-06-26 21:31:14'),
(43, '20231027', 'Sergio Ramírez García', 3, 'sergio.ramirez@example.com', 'permitido', '2024-06-26 21:31:14'),
(44, '20231028', 'Lucía Herrera Jiménez', 1, 'lucia.herrera@example.com', 'denegado', '2024-06-26 21:31:14'),
(45, '20231029', 'Andrés Martínez Torres', 4, 'andres.martinez@example.com', 'permitido', '2024-06-26 21:31:14'),
(46, '20231030', 'Raquel Fernández Vargas', 5, 'raquel.fernandez@example.com', 'denegado', '2024-06-26 21:31:14'),
(47, '20231032', 'Julia Sánchez Morales', 3, 'julia.sanchez@example.com', 'denegado', '2024-06-29 16:34:34'),
(48, '20231033', 'Manuel Torres López', 1, 'manuel.torres@example.com', 'permitido', '2024-06-29 16:34:34'),
(49, '20231034', 'Daniela Ruiz Fernández', 4, 'daniela.ruiz@example.com', 'denegado', '2024-06-29 16:34:34'),
(50, '20231031', 'Roberto Vargas Gómez', 2, 'roberto.vargas@example.com', 'permitido', '2024-06-29 16:34:34'),
(51, '20231036', 'Fernando López Martínez', 3, 'fernando.lopez@example.com', 'denegado', '2024-06-30 13:26:58'),
(52, '20231037', 'Gabriela Ortega Sánchez', 1, 'gabriela.ortega@example.com', 'permitido', '2024-06-30 13:26:58'),
(53, '20231038', 'Mario Hernández Ruiz', 4, 'mario.hernandez@example.com', 'denegado', '2024-06-30 13:26:58'),
(54, '20231039', 'Alejandra Vega Morales', 5, 'alejandra.vega@example.com', 'permitido', '2024-06-30 13:26:58'),
(55, '20231040', 'Santiago Silva Fernández', 2, 'santiago.silva@example.com', 'denegado', '2024-06-30 13:26:58'),
(56, '20231041', 'Lucía Pérez Jiménez', 3, 'lucia.perez@example.com', 'permitido', '2024-06-30 13:26:58'),
(57, '20231042', 'Enrique Ramírez Torres', 1, 'enrique.ramirez@example.com', 'denegado', '2024-06-30 13:26:58'),
(58, '20231043', 'Teresa Díaz Vargas', 4, 'teresa.diaz@example.com', 'permitido', '2024-06-30 13:26:58'),
(59, '20231044', 'Alfredo Gómez Mendoza', 5, 'alfredo.gomez@example.com', 'denegado', '2024-06-30 13:26:58'),
(60, '20231045', 'Valeria Romero Martínez', 2, 'valeria.romero@example.com', 'permitido', '2024-06-30 13:26:58'),
(61, '20231046', 'Javier Luna Castillo', 3, 'javier.luna@example.com', 'denegado', '2024-06-30 13:26:58'),
(62, '20231047', 'Paula Navarro Reyes', 1, 'paula.navarro@example.com', 'permitido', '2024-06-30 13:26:58'),
(63, '20231048', 'Emilio Morales García', 4, 'emilio.morales@example.com', 'denegado', '2024-06-30 13:26:58'),
(64, '20231049', 'Rocío González Herrera', 5, 'rocio.gonzalez@example.com', 'permitido', '2024-06-30 13:26:58'),
(65, '20231050', 'Antonio Flores López', 2, 'antonio.flores@example.com', 'denegado', '2024-06-30 13:26:58'),
(66, '20231051', 'Marta Ramírez Torres', 3, 'marta.ramirez@example.com', 'permitido', '2024-06-30 13:26:58'),
(67, '20231052', 'Juan Carlos Pérez Díaz', 1, 'juancarlos.perez@example.com', 'denegado', '2024-06-30 13:26:58'),
(68, '20231053', 'Sandra Reyes Vargas', 4, 'sandra.reyes@example.com', 'permitido', '2024-06-30 13:26:58'),
(69, '20231054', 'Diego Ortega Jiménez', 5, 'diego.ortega@example.com', 'denegado', '2024-06-30 13:26:58'),
(70, '20231055', 'Alicia Moreno Sánchez', 2, 'alicia.moreno@example.com', 'permitido', '2024-06-30 13:26:58'),
(71, '20231056', 'Carlos Núñez López', 3, 'carlos.nunez@example.com', 'denegado', '2024-06-30 13:26:58'),
(72, '20231057', 'Patricia Fernández Ruiz', 1, 'patricia.fernandez@example.com', 'permitido', '2024-06-30 13:26:58'),
(73, '20231058', 'Pedro García Jiménez', 4, 'pedro.garcia@example.com', 'denegado', '2024-06-30 13:26:58'),
(74, '20231059', 'Marcela Rivas Torres', 5, 'marcela.rivas@example.com', 'permitido', '2024-06-30 13:26:58'),
(75, '20231060', 'Ricardo Sánchez Gómez', 2, 'ricardo.sanchez@example.com', 'denegado', '2024-06-30 13:26:58'),
(76, '20231061', 'Laura Pérez Navarro', 3, 'laura.perez@example.com', 'permitido', '2024-06-30 13:26:58'),
(77, '20231062', 'José Luis Rodríguez Díaz', 1, 'joseluis.rodriguez@example.com', 'denegado', '2024-06-30 13:26:58'),
(78, '20231063', 'Claudia Vargas Ortega', 4, 'claudia.vargas@example.com', 'permitido', '2024-06-30 13:26:58'),
(79, '20231064', 'Manuel López Ramírez', 5, 'manuel.lopez@example.com', 'denegado', '2024-06-30 13:26:58'),
(80, '20231065', 'Sofía Hernández Muñoz', 2, 'sofia.hernandez@example.com', 'permitido', '2024-06-30 13:26:58'),
(81, '20231066', 'Diego Torres Martínez', 3, 'diego.torres@example.com', 'denegado', '2024-06-30 13:26:58'),
(82, '20231067', 'Sara Ruiz Fernández', 1, 'sara.ruiz@example.com', 'permitido', '2024-06-30 13:26:58'),
(83, '20231068', 'Luis Castillo Sánchez', 4, 'luis.castillo@example.com', 'denegado', '2024-06-30 13:26:58'),
(84, '20231069', 'Andrea Jiménez Vega', 5, 'andrea.jimenez@example.com', 'permitido', '2024-06-30 13:26:58'),
(85, '20231070', 'Felipe Navarro Pérez', 2, 'felipe.navarro@example.com', 'denegado', '2024-06-30 13:26:58'),
(86, '20231071', 'Isabel Morales Romero', 3, 'isabel.morales@example.com', 'permitido', '2024-06-30 13:26:58'),
(87, '20231072', 'Alejandro Ríos López', 1, 'alejandro.rios@example.com', 'denegado', '2024-06-30 13:26:58'),
(88, '20231073', 'Victoria Torres Gómez', 4, 'victoria.torres@example.com', 'permitido', '2024-06-30 13:26:58'),
(89, '20231074', 'Samuel Flores Sánchez', 5, 'samuel.flores@example.com', 'denegado', '2024-06-30 13:26:58'),
(90, '20231075', 'Elena Pérez Muñoz', 2, 'elena.perez@example.com', 'permitido', '2024-06-30 13:26:58'),
(91, '20231076', 'Alberto Ruiz Ortega', 3, 'alberto.ruiz@example.com', 'denegado', '2024-06-30 13:26:58'),
(92, '20231077', 'Gabriela Rodríguez Díaz', 1, 'gabriela.rodriguez@example.com', 'permitido', '2024-06-30 13:26:58'),
(93, '20231078', 'Juan Morales Castillo', 4, 'juan.morales@example.com', 'denegado', '2024-06-30 13:26:58'),
(94, '20231080', 'Francisco Ramírez Vega', 2, 'francisco.ramirez@example.com', 'denegado', '2024-06-30 13:26:58'),
(95, '20231081', 'Marta Fernández Muñoz', 3, 'marta.fernandez@example.com', 'permitido', '2024-06-30 13:26:58'),
(96, '20231082', 'Ernesto Jiménez López', 1, 'ernesto.jimenez@example.com', 'denegado', '2024-06-30 13:26:58'),
(97, '20231083', 'Inés Torres Sánchez', 4, 'ines.torres@example.com', 'permitido', '2024-06-30 13:26:58'),
(98, '20231084', 'Mario Gutiérrez Pérez', 5, 'mario.gutierrez@example.com', 'denegado', '2024-06-30 13:26:58'),
(99, '20231086', 'Laura Álvarez Jiménez', 3, 'laura.alvarez@example.com', 'denegado', '2024-06-30 15:07:29'),
(100, '20231087', 'Víctor Navarro Fernández', 1, 'victor.navarro@example.com', 'permitido', '2024-06-30 15:07:29'),
(101, '20231088', 'Camila Herrera Rodríguez', 4, 'camila.herrera@example.com', 'denegado', '2024-06-30 15:07:29'),
(102, '20231089', 'Eduardo Gutiérrez Muñoz', 5, 'eduardo.gutierrez@example.com', 'permitido', '2024-06-30 15:07:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `rol` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password_hash`, `nombre`, `apellido`, `email`, `rol`, `fecha_registro`) VALUES
(1, 'Yessica Lizbeth Rivera Espinoza', '$2y$10$JOZRHD37ncraNK3FdiCnD.a7RMuDVVzThjJfP3kQRVVZg/AgbUJk2', 'Yessica Lisbeth', 'Rivera Espinoza ', 'yessica.rivera@utc.mx', 'coordinadora', '2024-05-18 03:18:45'),
(2, 'Jessica Rocio Anica Galindo', '$2y$10$gIa/r8MoEm9SUjXH9oCu2OPQF0T.A2At.ZMUae9Oicwihy4eo.qR.', 'Jesica Rocio ', 'Anica Galindo', 'jesica.anica@utc.mx', 'coordinadora', '2024-05-19 00:39:30'),
(3, 'Cynthia Bruno Robledo', '$2y$10$JOwubTq1CbW7HyPkVCGZXulHA41f8uFeEF0JDakjIHkqSyhPmwU6C', 'Cynthia', 'Bruno Robledo', 'cynthia.bruno@utc.mx', 'cobranza\r\n', '2024-05-19 00:46:28'),
(4, 'Maren Zuleyca Vera Maldonado', '$2y$10$Fxn64U2RpCeh6SdjP8Wp2ONhURYEucNQaTEYCiLQZFUgr1yDmt4se', 'Maren Zuleyca', 'Vera Maldonado', 'maren.vera@utc.mx', 'directora', '2024-05-19 00:59:11'),
(12, 'Jose Fabian Muñozcano Guzman', '$2y$10$0syk7IMJYnPr9E5W7ndUTeNOS6GV6qLFUmCY2HrV6fSBRhDFjXzPq', 'Jose Fabian', 'Muñozcano Guzman', 'j.muxozcano.g656@utc.mx', 'coordinadora', '2024-07-31 20:53:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
