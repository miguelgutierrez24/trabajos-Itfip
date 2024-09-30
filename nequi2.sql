-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-09-2024 a las 19:42:52
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `nequi2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guia`
--

CREATE TABLE IF NOT EXISTS `guia` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `num_documento` char(20) NOT NULL,
  `tipo_documento` tinyint(1) NOT NULL,
  `celular` char(12) NOT NULL,
  `correo` char(50) NOT NULL,
  `estrato` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nequi`
--

CREATE TABLE IF NOT EXISTS `nequi` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `num_origen` char(11) NOT NULL,
  `num_destino` char(11) NOT NULL,
  `valor` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `nequi`
--

INSERT INTO `nequi` (`id`, `fecha_sys`, `num_origen`, `num_destino`, `valor`) VALUES
(1, '0000-00-00 00:00:00', '3113182925', '3225678904', 800000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE IF NOT EXISTS `venta` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `valor` tinyint(6) NOT NULL,
  `documento` char(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_churros`
--

CREATE TABLE IF NOT EXISTS `venta_churros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `cantidad` smallint(2) NOT NULL,
  `valor` smallint(5) NOT NULL,
  `sabor` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
