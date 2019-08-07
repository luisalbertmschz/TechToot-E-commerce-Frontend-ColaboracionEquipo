-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-07-2019 a las 22:35:35
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `ruta`, `fecha`) VALUES
(1, 'Portatiles y tablets', 'portatiles-y-tablets', '2019-06-14 00:55:41'),
(2, 'Accesorios para tablets', 'accesorios-para-tablets', '2019-06-14 00:54:59'),
(3, 'Electronica para oficina ', 'electronica-para-oficina', '2019-06-14 05:10:04'),
(4, 'Accesorios para portatil', 'accesorios-para-portatil', '2019-06-14 00:56:15'),
(5, 'Almacenamiento', 'almacenamiento', '0000-00-00 00:00:00'),
(6, 'Redes', 'redes', '0000-00-00 00:00:00'),
(7, 'Software', 'software', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantilla`
--

CREATE TABLE `plantilla` (
  `id` int(11) NOT NULL,
  `barraSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `textoSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `colorFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `colorTexto` text COLLATE utf8_spanish_ci NOT NULL,
  `logo` text COLLATE utf8_spanish_ci NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `redesSociales` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plantilla`
--

INSERT INTO `plantilla` (`id`, `barraSuperior`, `textoSuperior`, `colorFondo`, `colorTexto`, `logo`, `icono`, `redesSociales`, `fecha`) VALUES
(1, '#202C79', '#FFFFFF', '#202C79', '#FFFFFF', 'Vistas/plantilla/large_techtoot_0.png', 'Vistas/plantilla/favicon-96x96.png', '[\r\n    {\r\n        \"red\": \"fa-facebook\",\r\n        \"estilo\": \"facebooBlanco\",\r\n        \"url\": \"http://facebook.com/\"\r\n    },\r\n    \r\n    {\r\n        \"red\": \"fa-youtube\",\r\n        \"estilo\": \"youtubeBlanco\",\r\n        \"url\": \"http://youtube.com/\"\r\n    },\r\n\r\n    {\r\n        \"red\": \"fa-twitter\",\r\n        \"estilo\": \"twitterBlanco\",\r\n        \"url\": \"http://twitter.com/\"\r\n    },\r\n\r\n    {\r\n        \"red\": \"fa-instagram\",\r\n        \"estilo\": \"instagramBlanco\",\r\n        \"url\": \"http://instagram.com/\"\r\n    }\r\n]', '2019-06-10 17:11:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `subcategoria` text COLLATE utf8_spanish_ci NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `subcategoria`, `id_categoria`, `ruta`, `fecha`) VALUES
(1, 'Ordenadores portatiles', 1, 'ordenadores-portatiles', '0000-00-00 00:00:00'),
(2, 'Portatiles para gaming', 1, 'portatiles-para-gaming', '0000-00-00 00:00:00'),
(3, 'Tablets', 1, 'tablets', '0000-00-00 00:00:00'),
(4, 'Tablets 2 en 1', 1, 'tablets-2-en-1', '0000-00-00 00:00:00'),
(5, 'Fablets', 1, 'fablets', '0000-00-00 00:00:00'),
(6, 'Equipos de sobremesa', 1, 'equipos-de-sobremesa', '0000-00-00 00:00:00'),
(7, 'Fundas tablet', 2, 'fundas-tablet', '0000-00-00 00:00:00'),
(8, 'Soportes tablet', 2, 'soportes-tablet', '0000-00-00 00:00:00'),
(9, 'Lapices táctiles', 2, 'lapices-tactiles', '2019-06-10 22:47:56'),
(10, 'Cargadores tablet', 2, 'cargadores-tablet', '0000-00-00 00:00:00'),
(11, 'Adhesivos tablet', 2, 'adhesivos-tablet', '0000-00-00 00:00:00'),
(12, 'Suministros para impresoras', 3, 'suministros-para-impresora', '0000-00-00 00:00:00'),
(13, 'Piezas de impresoras 3D', 3, 'piezas-de-impresoras-3d', '0000-00-00 00:00:00'),
(14, 'Impresoras 3D', 3, 'impresoras-3d', '0000-00-00 00:00:00'),
(15, 'Impresoras', 3, 'impresoras-3d', '0000-00-00 00:00:00'),
(16, 'Escaners', 3, 'escaners', '0000-00-00 00:00:00'),
(17, 'Telefonos y accesorios', 3, 'telefonos-y-accesorios', '0000-00-00 00:00:00'),
(18, 'Fundas y estuches', 4, 'fundas-y-estuches', '0000-00-00 00:00:00'),
(19, 'Baterías', 4, 'baterias', '2019-06-10 22:47:42'),
(20, 'Teclados de repuesto', 4, 'teclados-de-repuesto', '0000-00-00 00:00:00'),
(21, 'Pantallas LCD', 4, 'pantallas-lcd', '0000-00-00 00:00:00'),
(22, 'Adaptadores', 4, 'adaptadores', '0000-00-00 00:00:00'),
(23, 'Memorias USB', 5, 'memorias-usb', '0000-00-00 00:00:00'),
(24, 'Tarjetas de memoria', 5, 'tarjetas-de-memoria', '0000-00-00 00:00:00'),
(25, 'Discos duros externos', 5, 'discos-duros-externos', '0000-00-00 00:00:00'),
(26, 'Carcasas HDD', 5, 'carcasas-hdd', '0000-00-00 00:00:00'),
(27, 'Discos SSD', 5, 'discos-ssd', '0000-00-00 00:00:00'),
(28, 'Routers inalambricos', 6, 'routers-inalambricos', '0000-00-00 00:00:00'),
(29, 'Tarjetas de red', 6, 'tarjetas-de-red', '0000-00-00 00:00:00'),
(30, 'Modems 3G', 6, 'modems-3g', '0000-00-00 00:00:00'),
(31, 'Combos modem y router', 6, 'combos-modem-y-router', '0000-00-00 00:00:00'),
(32, 'Herramientas de red ', 6, 'herramientas-de-red', '0000-00-00 00:00:00'),
(33, 'Microsoft', 7, 'microsoft', '0000-00-00 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
