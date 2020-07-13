-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-07-2020 a las 17:51:07
-- Versión del servidor: 10.3.17-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `citasdb`
--
CREATE DATABASE IF NOT EXISTS `citasdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `citasdb`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_servicios`
--

CREATE TABLE `cat_servicios` (
  `id` int(3) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `servicio` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `mixto` tinyint(1) NOT NULL,
  `familiar` tinyint(1) NOT NULL,
  `civil` tinyint(1) NOT NULL,
  `penal` tinyint(1) NOT NULL,
  `mercantil` tinyint(1) NOT NULL,
  `tradicional` tinyint(1) NOT NULL,
  `tribunal` tinyint(1) NOT NULL,
  `archivo1` tinyint(1) NOT NULL,
  `archivo2` tinyint(1) NOT NULL,
  `archivo3` tinyint(1) NOT NULL,
  `buzon` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id` int(10) NOT NULL,
  `id_servicio` int(5) NOT NULL,
  `servicio` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `detalles` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `hora` time NOT NULL,
  `fecha` date NOT NULL,
  `id_beneficiario` int(11) NOT NULL,
  `id_juzgado` int(3) NOT NULL,
  `estatus` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `asistio` varchar(2) COLLATE latin1_spanish_ci DEFAULT NULL,
  `alta` varchar(15) COLLATE latin1_spanish_ci DEFAULT NULL,
  `alta_fecha` datetime DEFAULT NULL,
  `confirmada` varchar(15) COLLATE latin1_spanish_ci DEFAULT NULL,
  `confirmada_fecha` datetime DEFAULT NULL,
  `cancelada` varchar(15) COLLATE latin1_spanish_ci DEFAULT NULL,
  `cancelada_fecha` datetime DEFAULT NULL,
  `eliminada` varchar(15) COLLATE latin1_spanish_ci DEFAULT NULL,
  `eliminada_fecha` datetime DEFAULT NULL,
  `correo` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `expediente1` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `expediente2` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `expediente3` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `expediente4` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `expediente5` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diasInhabiles`
--

CREATE TABLE `diasInhabiles` (
  `id` int(3) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distritos`
--

CREATE TABLE `distritos` (
  `id` int(2) NOT NULL,
  `distrito` varchar(50) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `estadisticas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `estadisticas` (
`id` int(10)
,`id_servicio` int(5)
,`servicio` varchar(60)
,`detalles` text
,`hora` time
,`fecha` date
,`id_beneficiario` int(11)
,`id_juzgado` int(3)
,`estatus` varchar(20)
,`asistio` varchar(2)
,`alta` varchar(15)
,`alta_fecha` datetime
,`confirmada` varchar(15)
,`confirmada_fecha` datetime
,`cancelada` varchar(15)
,`cancelada_fecha` datetime
,`eliminada` varchar(15)
,`eliminada_fecha` datetime
,`correo` varchar(100)
,`expediente1` varchar(20)
,`expediente2` varchar(20)
,`expediente3` varchar(20)
,`expediente4` varchar(20)
,`expediente5` varchar(20)
,`juzgado` varchar(512)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id_estado` int(11) NOT NULL DEFAULT 0,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` VALUES(1, 'AGUASCALIENTES');
INSERT INTO `estados` VALUES(2, 'BAJA CALIFORNIA');
INSERT INTO `estados` VALUES(3, 'BAJA CALIFORNIA SUR');
INSERT INTO `estados` VALUES(4, 'CAMPECHE');
INSERT INTO `estados` VALUES(5, 'COAHUILA');
INSERT INTO `estados` VALUES(6, 'COLIMA');
INSERT INTO `estados` VALUES(7, 'CHIAPAS');
INSERT INTO `estados` VALUES(8, 'CHIHUAHUA');
INSERT INTO `estados` VALUES(9, 'DISTRITO FEDERAL');
INSERT INTO `estados` VALUES(10, 'DURANGO');
INSERT INTO `estados` VALUES(11, 'GUANAJUATO');
INSERT INTO `estados` VALUES(12, 'GUERRERO');
INSERT INTO `estados` VALUES(13, 'HIDALGO');
INSERT INTO `estados` VALUES(14, 'JALISCO');
INSERT INTO `estados` VALUES(15, 'MEXICO');
INSERT INTO `estados` VALUES(16, 'MICHOACAN');
INSERT INTO `estados` VALUES(17, 'MORELOS');
INSERT INTO `estados` VALUES(18, 'NAYARIT');
INSERT INTO `estados` VALUES(19, 'NUEVO LEON');
INSERT INTO `estados` VALUES(20, 'OAXACA');
INSERT INTO `estados` VALUES(21, 'PUEBLA');
INSERT INTO `estados` VALUES(22, 'QUERETARO');
INSERT INTO `estados` VALUES(23, 'QUINTANA ROO');
INSERT INTO `estados` VALUES(24, 'SAN LUIS POTOSI');
INSERT INTO `estados` VALUES(25, 'SINALOA');
INSERT INTO `estados` VALUES(26, 'SONORA');
INSERT INTO `estados` VALUES(27, 'TABASCO');
INSERT INTO `estados` VALUES(28, 'TAMAULIPAS');
INSERT INTO `estados` VALUES(29, 'TLAXCALA');
INSERT INTO `estados` VALUES(30, 'VERACRUZ');
INSERT INTO `estados` VALUES(31, 'YUCATAN');
INSERT INTO `estados` VALUES(32, 'ZACATECAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horasBloqueadas`
--

CREATE TABLE `horasBloqueadas` (
  `id` int(6) NOT NULL,
  `id_juzgado` int(5) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `fecha_movimiento` timestamp NOT NULL DEFAULT current_timestamp(),
  `activo` int(1) NOT NULL,
  `detalles` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juzgados`
--

CREATE TABLE `juzgados` (
  `id` int(11) NOT NULL,
  `distrito` varchar(256) DEFAULT NULL,
  `juzgado` varchar(512) DEFAULT NULL,
  `correo` varchar(512) DEFAULT NULL,
  `celular` varchar(128) DEFAULT NULL,
  `telefono` varchar(128) DEFAULT NULL,
  `domicilio` varchar(256) DEFAULT NULL,
  `ciudad` varchar(256) DEFAULT NULL,
  `estado` varchar(128) DEFAULT NULL,
  `cp` varchar(64) DEFAULT NULL,
  `notas` text DEFAULT NULL,
  `id_roles` int(11) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `id_distrito` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id_municipio` int(11) NOT NULL DEFAULT 0,
  `descripcion` varchar(100) DEFAULT NULL,
  `id_estado` int(11) NOT NULL DEFAULT 0,
  `id_distrito` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` VALUES(1, 'AGUASCALIENTES', 1, 0);
INSERT INTO `municipios` VALUES(2, 'ASIENTOS', 1, 0);
INSERT INTO `municipios` VALUES(3, 'CALVILLO', 1, 0);
INSERT INTO `municipios` VALUES(4, 'COSIO', 1, 0);
INSERT INTO `municipios` VALUES(5, 'JESUS MARIA', 1, 0);
INSERT INTO `municipios` VALUES(6, 'PABELLON DE ARTEAGA', 1, 0);
INSERT INTO `municipios` VALUES(7, 'RINCON DE ROMOS', 1, 0);
INSERT INTO `municipios` VALUES(8, 'SAN JOSE DE GRACIA', 1, 0);
INSERT INTO `municipios` VALUES(9, 'TEPEZALA', 1, 0);
INSERT INTO `municipios` VALUES(10, 'EL LLANO', 1, 0);
INSERT INTO `municipios` VALUES(11, 'SAN FRANCISCO DE LOS ROMO', 1, 0);
INSERT INTO `municipios` VALUES(1, 'ENSENADA', 2, 0);
INSERT INTO `municipios` VALUES(2, 'MEXICALI', 2, 0);
INSERT INTO `municipios` VALUES(3, 'TECATE', 2, 0);
INSERT INTO `municipios` VALUES(4, 'TIJUANA', 2, 0);
INSERT INTO `municipios` VALUES(5, 'PLAYAS DE ROSARITO', 2, 0);
INSERT INTO `municipios` VALUES(1, 'COMONDU', 3, 0);
INSERT INTO `municipios` VALUES(2, 'MULEGE', 3, 0);
INSERT INTO `municipios` VALUES(3, 'LA PAZ', 3, 0);
INSERT INTO `municipios` VALUES(4, 'LOS CABOS', 3, 0);
INSERT INTO `municipios` VALUES(5, 'LORETO', 3, 0);
INSERT INTO `municipios` VALUES(1, 'CALKINI', 4, 0);
INSERT INTO `municipios` VALUES(2, 'CAMPECHE', 4, 0);
INSERT INTO `municipios` VALUES(3, 'CARMEN', 4, 0);
INSERT INTO `municipios` VALUES(4, 'CHAMPOTON', 4, 0);
INSERT INTO `municipios` VALUES(5, 'HECELCHAKAN', 4, 0);
INSERT INTO `municipios` VALUES(6, 'HOPELCHEN', 4, 0);
INSERT INTO `municipios` VALUES(7, 'PALIZADA', 4, 0);
INSERT INTO `municipios` VALUES(8, 'TENABO', 4, 0);
INSERT INTO `municipios` VALUES(9, 'ESCARCEGA', 4, 0);
INSERT INTO `municipios` VALUES(10, 'CALAKMUL', 4, 0);
INSERT INTO `municipios` VALUES(11, 'CANDELARIA', 4, 0);
INSERT INTO `municipios` VALUES(1, 'ABASOLO', 5, 0);
INSERT INTO `municipios` VALUES(2, 'ACUÑA', 5, 5);
INSERT INTO `municipios` VALUES(3, 'ALLENDE', 5, 4);
INSERT INTO `municipios` VALUES(4, 'ARTEAGA', 5, 0);
INSERT INTO `municipios` VALUES(5, 'CANDELA', 5, 0);
INSERT INTO `municipios` VALUES(6, 'CASTAÑOS', 5, 0);
INSERT INTO `municipios` VALUES(7, 'CUATROCIENEGAS', 5, 0);
INSERT INTO `municipios` VALUES(8, 'ESCOBEDO', 5, 0);
INSERT INTO `municipios` VALUES(9, 'FRANCISCO I MADERO', 5, 7);
INSERT INTO `municipios` VALUES(10, 'FRONTERA', 5, 2);
INSERT INTO `municipios` VALUES(11, 'GENERAL CEPEDA', 5, 0);
INSERT INTO `municipios` VALUES(12, 'GUERRERO', 5, 0);
INSERT INTO `municipios` VALUES(13, 'HIDALGO', 5, 0);
INSERT INTO `municipios` VALUES(14, 'JIMENEZ', 5, 0);
INSERT INTO `municipios` VALUES(15, 'JUAREZ', 5, 0);
INSERT INTO `municipios` VALUES(16, 'LAMADRID', 5, 0);
INSERT INTO `municipios` VALUES(17, 'MATAMOROS', 5, 6);
INSERT INTO `municipios` VALUES(18, 'MONCLOVA', 5, 2);
INSERT INTO `municipios` VALUES(19, 'MORELOS', 5, 0);
INSERT INTO `municipios` VALUES(20, 'MUZQUIZ', 5, 0);
INSERT INTO `municipios` VALUES(21, 'NADADORES', 5, 0);
INSERT INTO `municipios` VALUES(22, 'NAVA', 5, 0);
INSERT INTO `municipios` VALUES(23, 'OCAMPO', 5, 0);
INSERT INTO `municipios` VALUES(24, 'PARRAS DE LA FUENTE', 5, 8);
INSERT INTO `municipios` VALUES(25, 'PIEDRAS NEGRAS', 5, 4);
INSERT INTO `municipios` VALUES(26, 'PROGRESO', 5, 0);
INSERT INTO `municipios` VALUES(27, 'RAMOS ARIZPE', 5, 0);
INSERT INTO `municipios` VALUES(28, 'SABINAS', 5, 3);
INSERT INTO `municipios` VALUES(29, 'SACRAMENTO', 5, 0);
INSERT INTO `municipios` VALUES(30, 'SALTILLO', 5, 1);
INSERT INTO `municipios` VALUES(31, 'SAN BUENAVENTURA', 5, 0);
INSERT INTO `municipios` VALUES(32, 'SAN JUAN DE SABINAS', 5, 0);
INSERT INTO `municipios` VALUES(33, 'SAN PEDRO', 5, 7);
INSERT INTO `municipios` VALUES(34, 'SIERRA MOJADA', 5, 0);
INSERT INTO `municipios` VALUES(35, 'TORREON', 5, 6);
INSERT INTO `municipios` VALUES(36, 'VIESCA', 5, 0);
INSERT INTO `municipios` VALUES(37, 'VILLA UNION', 5, 0);
INSERT INTO `municipios` VALUES(38, 'ZARAGOZA', 5, 0);
INSERT INTO `municipios` VALUES(1, 'ARMERIA', 6, 0);
INSERT INTO `municipios` VALUES(2, 'COLIMA', 6, 0);
INSERT INTO `municipios` VALUES(3, 'COMALA', 6, 0);
INSERT INTO `municipios` VALUES(4, 'COQUIMATLAN', 6, 0);
INSERT INTO `municipios` VALUES(5, 'CUAUHTEMOC', 6, 0);
INSERT INTO `municipios` VALUES(6, 'IXTLAHUACAN', 6, 0);
INSERT INTO `municipios` VALUES(7, 'MANZANILLO', 6, 0);
INSERT INTO `municipios` VALUES(8, 'MINATITLAN', 6, 0);
INSERT INTO `municipios` VALUES(9, 'TECOMAN', 6, 0);
INSERT INTO `municipios` VALUES(10, 'VILLA DE ALVAREZ', 6, 0);
INSERT INTO `municipios` VALUES(1, 'ACACOYAGUA', 7, 0);
INSERT INTO `municipios` VALUES(2, 'ACALA', 7, 0);
INSERT INTO `municipios` VALUES(3, 'ACAPETAHUA', 7, 0);
INSERT INTO `municipios` VALUES(4, 'ALTAMIRANO', 7, 0);
INSERT INTO `municipios` VALUES(5, 'AMATAN', 7, 0);
INSERT INTO `municipios` VALUES(6, 'AMATENANGO DE LA FRONTERA', 7, 0);
INSERT INTO `municipios` VALUES(7, 'AMATENANGO DEL VALLE', 7, 0);
INSERT INTO `municipios` VALUES(8, 'ANGEL ALBINO CORZO', 7, 0);
INSERT INTO `municipios` VALUES(9, 'ARRIAGA', 7, 0);
INSERT INTO `municipios` VALUES(10, 'BEJUCAL DE OCAMPO', 7, 0);
INSERT INTO `municipios` VALUES(11, 'BELLA VISTA', 7, 0);
INSERT INTO `municipios` VALUES(12, 'BERRIOZABAL', 7, 0);
INSERT INTO `municipios` VALUES(13, 'BOCHIL', 7, 0);
INSERT INTO `municipios` VALUES(14, 'EL BOSQUE', 7, 0);
INSERT INTO `municipios` VALUES(15, 'CACAHOATAN', 7, 0);
INSERT INTO `municipios` VALUES(16, 'CATAZAJA', 7, 0);
INSERT INTO `municipios` VALUES(17, 'CINTALAPA', 7, 0);
INSERT INTO `municipios` VALUES(18, 'COAPILLA', 7, 0);
INSERT INTO `municipios` VALUES(19, 'COMITAN DE DOMINGUEZ', 7, 0);
INSERT INTO `municipios` VALUES(20, 'LA CONCORDIA', 7, 0);
INSERT INTO `municipios` VALUES(21, 'COPAINALA', 7, 0);
INSERT INTO `municipios` VALUES(22, 'CHALCHIHUITAN', 7, 0);
INSERT INTO `municipios` VALUES(23, 'CHAMULA', 7, 0);
INSERT INTO `municipios` VALUES(24, 'CHANAL', 7, 0);
INSERT INTO `municipios` VALUES(25, 'CHAPULTENANGO', 7, 0);
INSERT INTO `municipios` VALUES(26, 'CHENALHO', 7, 0);
INSERT INTO `municipios` VALUES(27, 'CHIAPA DE CORZO', 7, 0);
INSERT INTO `municipios` VALUES(28, 'CHIAPILLA', 7, 0);
INSERT INTO `municipios` VALUES(29, 'CHICOASEN', 7, 0);
INSERT INTO `municipios` VALUES(30, 'CHICOMUSELO', 7, 0);
INSERT INTO `municipios` VALUES(31, 'CHILON', 7, 0);
INSERT INTO `municipios` VALUES(32, 'ESCUINTLA', 7, 0);
INSERT INTO `municipios` VALUES(33, 'FRANCISCO LEON', 7, 0);
INSERT INTO `municipios` VALUES(34, 'FRONTERA COMALAPA', 7, 0);
INSERT INTO `municipios` VALUES(35, 'FRONTERA HIDALGO', 7, 0);
INSERT INTO `municipios` VALUES(36, 'LA GRANDEZA', 7, 0);
INSERT INTO `municipios` VALUES(37, 'HUEHUETAN', 7, 0);
INSERT INTO `municipios` VALUES(38, 'HUIXTAN', 7, 0);
INSERT INTO `municipios` VALUES(39, 'HUITIUPAN', 7, 0);
INSERT INTO `municipios` VALUES(40, 'HUIXTLA', 7, 0);
INSERT INTO `municipios` VALUES(41, 'LA INDEPENDENCIA', 7, 0);
INSERT INTO `municipios` VALUES(42, 'IXHUATAN', 7, 0);
INSERT INTO `municipios` VALUES(43, 'IXTACOMITAN', 7, 0);
INSERT INTO `municipios` VALUES(44, 'IXTAPA', 7, 0);
INSERT INTO `municipios` VALUES(45, 'IXTAPANGAJOYA', 7, 0);
INSERT INTO `municipios` VALUES(46, 'JIQUIPILAS', 7, 0);
INSERT INTO `municipios` VALUES(47, 'JITOTOL', 7, 0);
INSERT INTO `municipios` VALUES(48, 'JUAREZ', 7, 0);
INSERT INTO `municipios` VALUES(49, 'LARRAINZAR', 7, 0);
INSERT INTO `municipios` VALUES(50, 'LA LIBERTAD', 7, 0);
INSERT INTO `municipios` VALUES(51, 'MAPASTEPEC', 7, 0);
INSERT INTO `municipios` VALUES(52, 'LAS MARGARITAS', 7, 0);
INSERT INTO `municipios` VALUES(53, 'MAZAPA DE MADERO', 7, 0);
INSERT INTO `municipios` VALUES(54, 'MAZATAN', 7, 0);
INSERT INTO `municipios` VALUES(55, 'METAPA', 7, 0);
INSERT INTO `municipios` VALUES(56, 'MITONTIC', 7, 0);
INSERT INTO `municipios` VALUES(57, 'MOTOZINTLA', 7, 0);
INSERT INTO `municipios` VALUES(58, 'NICOLAS RUIZ', 7, 0);
INSERT INTO `municipios` VALUES(59, 'OCOSINGO', 7, 0);
INSERT INTO `municipios` VALUES(60, 'OCOTEPEC', 7, 0);
INSERT INTO `municipios` VALUES(61, 'OCOZOCOAUTLA DE ESPINOSA', 7, 0);
INSERT INTO `municipios` VALUES(62, 'OSTUACAN', 7, 0);
INSERT INTO `municipios` VALUES(63, 'OSUMACINTA', 7, 0);
INSERT INTO `municipios` VALUES(64, 'OXCHUC', 7, 0);
INSERT INTO `municipios` VALUES(65, 'PALENQUE', 7, 0);
INSERT INTO `municipios` VALUES(66, 'PANTELHO', 7, 0);
INSERT INTO `municipios` VALUES(67, 'PANTEPEC', 7, 0);
INSERT INTO `municipios` VALUES(68, 'PICHUCALCO', 7, 0);
INSERT INTO `municipios` VALUES(69, 'PIJIJIAPAN', 7, 0);
INSERT INTO `municipios` VALUES(70, 'EL PORVENIR', 7, 0);
INSERT INTO `municipios` VALUES(71, 'VILLA COMALTITLAN', 7, 0);
INSERT INTO `municipios` VALUES(72, 'PUEBLO NUEVO SOLISTAHUACAN', 7, 0);
INSERT INTO `municipios` VALUES(73, 'RAYON', 7, 0);
INSERT INTO `municipios` VALUES(74, 'REFORMA', 7, 0);
INSERT INTO `municipios` VALUES(75, 'LAS ROSAS', 7, 0);
INSERT INTO `municipios` VALUES(76, 'SABANILLA', 7, 0);
INSERT INTO `municipios` VALUES(77, 'SALTO DE AGUA', 7, 0);
INSERT INTO `municipios` VALUES(78, 'SAN CRISTOBAL DE LAS CASAS', 7, 0);
INSERT INTO `municipios` VALUES(79, 'SAN FERNANDO', 7, 0);
INSERT INTO `municipios` VALUES(80, 'SILTEPEC', 7, 0);
INSERT INTO `municipios` VALUES(81, 'SIMOJOVEL', 7, 0);
INSERT INTO `municipios` VALUES(82, 'SITALA', 7, 0);
INSERT INTO `municipios` VALUES(83, 'SOCOLTENANGO', 7, 0);
INSERT INTO `municipios` VALUES(84, 'SOLOSUCHIAPA', 7, 0);
INSERT INTO `municipios` VALUES(85, 'SOYALO', 7, 0);
INSERT INTO `municipios` VALUES(86, 'SUCHIAPA', 7, 0);
INSERT INTO `municipios` VALUES(87, 'SUCHIATE', 7, 0);
INSERT INTO `municipios` VALUES(88, 'SUNUAPA', 7, 0);
INSERT INTO `municipios` VALUES(89, 'TAPACHULA', 7, 0);
INSERT INTO `municipios` VALUES(90, 'TAPALAPA', 7, 0);
INSERT INTO `municipios` VALUES(91, 'TAPILULA', 7, 0);
INSERT INTO `municipios` VALUES(92, 'TECPATAN', 7, 0);
INSERT INTO `municipios` VALUES(93, 'TENEJAPA', 7, 0);
INSERT INTO `municipios` VALUES(94, 'TEOPISCA', 7, 0);
INSERT INTO `municipios` VALUES(96, 'TILA', 7, 0);
INSERT INTO `municipios` VALUES(97, 'TONALA', 7, 0);
INSERT INTO `municipios` VALUES(98, 'TOTOLAPA', 7, 0);
INSERT INTO `municipios` VALUES(99, 'LA TRINITARIA', 7, 0);
INSERT INTO `municipios` VALUES(100, 'TUMBALA', 7, 0);
INSERT INTO `municipios` VALUES(101, 'TUXTLA GUTIERREZ', 7, 0);
INSERT INTO `municipios` VALUES(102, 'TUXTLA CHICO', 7, 0);
INSERT INTO `municipios` VALUES(103, 'TUZANTAN', 7, 0);
INSERT INTO `municipios` VALUES(104, 'TZIMOL', 7, 0);
INSERT INTO `municipios` VALUES(105, 'UNION JUAREZ', 7, 0);
INSERT INTO `municipios` VALUES(106, 'VENUSTIANO CARRANZA', 7, 0);
INSERT INTO `municipios` VALUES(107, 'VILLA CORZO', 7, 0);
INSERT INTO `municipios` VALUES(108, 'VILLAFLORES', 7, 0);
INSERT INTO `municipios` VALUES(109, 'YAJALON', 7, 0);
INSERT INTO `municipios` VALUES(110, 'SAN LUCAS', 7, 0);
INSERT INTO `municipios` VALUES(111, 'ZINACANTAN', 7, 0);
INSERT INTO `municipios` VALUES(112, 'SAN JUAN CANCUC', 7, 0);
INSERT INTO `municipios` VALUES(113, 'ALDAMA CHIAPAS', 7, 0);
INSERT INTO `municipios` VALUES(117, 'MONTECRISTO DE GUERRERO', 7, 0);
INSERT INTO `municipios` VALUES(118, 'SAN ANDRES DURAZNAL', 7, 0);
INSERT INTO `municipios` VALUES(119, 'SANTIAGO EL PINAR', 7, 0);
INSERT INTO `municipios` VALUES(120, 'BENEMERITO DE LAS AMERICAS', 7, 0);
INSERT INTO `municipios` VALUES(121, 'MARQUES DE COMILLAS', 7, 0);
INSERT INTO `municipios` VALUES(575, 'ALDAMA', 7, 0);
INSERT INTO `municipios` VALUES(576, 'MARAVILLA TENEJAPA', 7, 0);
INSERT INTO `municipios` VALUES(1, 'AHUMADA', 8, 0);
INSERT INTO `municipios` VALUES(2, 'ALDAMA', 8, 0);
INSERT INTO `municipios` VALUES(3, 'ALLENDE', 8, 0);
INSERT INTO `municipios` VALUES(4, 'AQUILES SERDAN', 8, 0);
INSERT INTO `municipios` VALUES(5, 'ASCENSION', 8, 0);
INSERT INTO `municipios` VALUES(6, 'BACHINIVA', 8, 0);
INSERT INTO `municipios` VALUES(7, 'BALLEZA', 8, 0);
INSERT INTO `municipios` VALUES(8, 'BATOPILAS', 8, 0);
INSERT INTO `municipios` VALUES(9, 'BOCOYNA', 8, 0);
INSERT INTO `municipios` VALUES(10, 'BUENAVENTURA', 8, 0);
INSERT INTO `municipios` VALUES(11, 'CAMARGO', 8, 0);
INSERT INTO `municipios` VALUES(12, 'CARICHI', 8, 0);
INSERT INTO `municipios` VALUES(13, 'CASAS GRANDES', 8, 0);
INSERT INTO `municipios` VALUES(14, 'CORONADO', 8, 0);
INSERT INTO `municipios` VALUES(15, 'COYAME', 8, 0);
INSERT INTO `municipios` VALUES(16, 'LA CRUZ', 8, 0);
INSERT INTO `municipios` VALUES(17, 'CUAUHTEMOC', 8, 0);
INSERT INTO `municipios` VALUES(18, 'CUSIHUIRIACHI', 8, 0);
INSERT INTO `municipios` VALUES(19, 'CHIHUAHUA', 8, 0);
INSERT INTO `municipios` VALUES(20, 'CHINIPAS', 8, 0);
INSERT INTO `municipios` VALUES(21, 'DELICIAS', 8, 0);
INSERT INTO `municipios` VALUES(22, 'DOCTOR BELISARIO DOMINGUEZ', 8, 0);
INSERT INTO `municipios` VALUES(23, 'GALEANA', 8, 0);
INSERT INTO `municipios` VALUES(24, 'SANTA ISABEL', 8, 0);
INSERT INTO `municipios` VALUES(25, 'GOMEZ FARIAS', 8, 0);
INSERT INTO `municipios` VALUES(26, 'GRAN MORELOS', 8, 0);
INSERT INTO `municipios` VALUES(27, 'GUACHOCHI', 8, 0);
INSERT INTO `municipios` VALUES(28, 'GUADALUPE', 8, 0);
INSERT INTO `municipios` VALUES(29, 'GUADALUPE Y CALVO', 8, 0);
INSERT INTO `municipios` VALUES(30, 'GUAZAPARES', 8, 0);
INSERT INTO `municipios` VALUES(31, 'GUERRERO', 8, 0);
INSERT INTO `municipios` VALUES(32, 'HIDALGO DEL PARRAL', 8, 0);
INSERT INTO `municipios` VALUES(33, 'HUEJOTITAN', 8, 0);
INSERT INTO `municipios` VALUES(34, 'IGNACIO ZARAGOZA', 8, 0);
INSERT INTO `municipios` VALUES(35, 'JANOS', 8, 0);
INSERT INTO `municipios` VALUES(36, 'JIMENEZ', 8, 0);
INSERT INTO `municipios` VALUES(37, 'JUAREZ', 8, 0);
INSERT INTO `municipios` VALUES(38, 'JULIMES', 8, 0);
INSERT INTO `municipios` VALUES(39, 'LOPEZ', 8, 0);
INSERT INTO `municipios` VALUES(40, 'MADERA', 8, 0);
INSERT INTO `municipios` VALUES(41, 'MAGUARICHI', 8, 0);
INSERT INTO `municipios` VALUES(42, 'MANUEL BENAVIDES', 8, 0);
INSERT INTO `municipios` VALUES(43, 'MATACHI', 8, 0);
INSERT INTO `municipios` VALUES(44, 'MATAMOROS', 8, 0);
INSERT INTO `municipios` VALUES(45, 'MEOQUI', 8, 0);
INSERT INTO `municipios` VALUES(46, 'MORELOS', 8, 0);
INSERT INTO `municipios` VALUES(47, 'MORIS', 8, 0);
INSERT INTO `municipios` VALUES(48, 'NAMIQUIPA', 8, 0);
INSERT INTO `municipios` VALUES(49, 'NONOAVA', 8, 0);
INSERT INTO `municipios` VALUES(50, 'NUEVO CASAS GRANDES', 8, 0);
INSERT INTO `municipios` VALUES(51, 'OCAMPO', 8, 0);
INSERT INTO `municipios` VALUES(52, 'OJINAGA', 8, 0);
INSERT INTO `municipios` VALUES(53, 'PRAXEDIS G GUERRERO', 8, 0);
INSERT INTO `municipios` VALUES(54, 'RIVA PALACIO', 8, 0);
INSERT INTO `municipios` VALUES(55, 'ROSALES', 8, 0);
INSERT INTO `municipios` VALUES(56, 'ROSARIO', 8, 0);
INSERT INTO `municipios` VALUES(57, 'SAN FRANCISCO DE BORJA', 8, 0);
INSERT INTO `municipios` VALUES(58, 'SAN FRANCISCO DE CONCHOS', 8, 0);
INSERT INTO `municipios` VALUES(59, 'SAN FRANCISCO DEL ORO', 8, 0);
INSERT INTO `municipios` VALUES(60, 'SANTA BARBARA', 8, 0);
INSERT INTO `municipios` VALUES(61, 'SATEVO', 8, 0);
INSERT INTO `municipios` VALUES(62, 'SAUCILLO', 8, 0);
INSERT INTO `municipios` VALUES(63, 'TEMOSACHI', 8, 0);
INSERT INTO `municipios` VALUES(64, 'EL TULE', 8, 0);
INSERT INTO `municipios` VALUES(65, 'URIQUE', 8, 0);
INSERT INTO `municipios` VALUES(66, 'URUACHI', 8, 0);
INSERT INTO `municipios` VALUES(67, 'VALLE DE ZARAGOZA', 8, 0);
INSERT INTO `municipios` VALUES(1, 'ALVARO OBREGON', 9, 0);
INSERT INTO `municipios` VALUES(2, 'AZCAPOTZALCO', 9, 0);
INSERT INTO `municipios` VALUES(3, 'BENITO JUAREZ', 9, 0);
INSERT INTO `municipios` VALUES(4, 'COYOACAN', 9, 0);
INSERT INTO `municipios` VALUES(5, 'CUAJIMALPA DE MORELOS', 9, 0);
INSERT INTO `municipios` VALUES(6, 'CUAUHTEMOC', 9, 0);
INSERT INTO `municipios` VALUES(7, 'GUSTAVO A MADERO', 9, 0);
INSERT INTO `municipios` VALUES(8, 'IZTACALCO', 9, 0);
INSERT INTO `municipios` VALUES(9, 'IZTAPALAPA', 9, 0);
INSERT INTO `municipios` VALUES(10, 'MAGDALENA CONTRERAS LA', 9, 0);
INSERT INTO `municipios` VALUES(11, 'MIGUEL HIDALGO', 9, 0);
INSERT INTO `municipios` VALUES(12, 'MILPA ALTA', 9, 0);
INSERT INTO `municipios` VALUES(13, 'TLAHUAC', 9, 0);
INSERT INTO `municipios` VALUES(14, 'TLALPAN', 9, 0);
INSERT INTO `municipios` VALUES(15, 'VENUSTIANO CARRANZA', 9, 0);
INSERT INTO `municipios` VALUES(16, 'XOCHIMILCO', 9, 0);
INSERT INTO `municipios` VALUES(1, 'CANATLAN', 10, 0);
INSERT INTO `municipios` VALUES(2, 'CANELAS', 10, 0);
INSERT INTO `municipios` VALUES(3, 'CONETO DE COMONFORT', 10, 0);
INSERT INTO `municipios` VALUES(4, 'CUENCAME', 10, 0);
INSERT INTO `municipios` VALUES(5, 'DURANGO', 10, 0);
INSERT INTO `municipios` VALUES(6, 'GENERAL SIMON BOLIVAR', 10, 0);
INSERT INTO `municipios` VALUES(7, 'GOMEZ PALACIO', 10, 0);
INSERT INTO `municipios` VALUES(8, 'GUADALUPE VICTORIA', 10, 0);
INSERT INTO `municipios` VALUES(9, 'GUANACEVI', 10, 0);
INSERT INTO `municipios` VALUES(10, 'HIDALGO', 10, 0);
INSERT INTO `municipios` VALUES(11, 'INDE', 10, 0);
INSERT INTO `municipios` VALUES(12, 'LERDO', 10, 0);
INSERT INTO `municipios` VALUES(13, 'MAPIMI', 10, 0);
INSERT INTO `municipios` VALUES(14, 'MEZQUITAL', 10, 0);
INSERT INTO `municipios` VALUES(15, 'NAZAS', 10, 0);
INSERT INTO `municipios` VALUES(16, 'NOMBRE DE DIOS', 10, 0);
INSERT INTO `municipios` VALUES(17, 'OCAMPO', 10, 0);
INSERT INTO `municipios` VALUES(18, 'EL ORO', 10, 0);
INSERT INTO `municipios` VALUES(19, 'OTAEZ', 10, 0);
INSERT INTO `municipios` VALUES(20, 'PANUCO DE CORONADO', 10, 0);
INSERT INTO `municipios` VALUES(21, 'PE&ON BLANCO', 10, 0);
INSERT INTO `municipios` VALUES(22, 'POANAS', 10, 0);
INSERT INTO `municipios` VALUES(23, 'PUEBLO NUEVO', 10, 0);
INSERT INTO `municipios` VALUES(24, 'RODEO', 10, 0);
INSERT INTO `municipios` VALUES(25, 'SAN BERNARDO', 10, 0);
INSERT INTO `municipios` VALUES(26, 'SAN DIMAS', 10, 0);
INSERT INTO `municipios` VALUES(27, 'SAN JUAN DE GUADALUPE', 10, 0);
INSERT INTO `municipios` VALUES(28, 'SAN JUAN DEL RIO', 10, 0);
INSERT INTO `municipios` VALUES(29, 'SAN LUIS DEL CORDERO', 10, 0);
INSERT INTO `municipios` VALUES(30, 'SAN PEDRO DEL GALLO', 10, 0);
INSERT INTO `municipios` VALUES(31, 'SANTA CLARA', 10, 0);
INSERT INTO `municipios` VALUES(32, 'SANTIAGO PAPASQUIARO', 10, 0);
INSERT INTO `municipios` VALUES(33, 'SUCHIL', 10, 0);
INSERT INTO `municipios` VALUES(34, 'TAMAZULA', 10, 0);
INSERT INTO `municipios` VALUES(35, 'TEPEHUANES', 10, 0);
INSERT INTO `municipios` VALUES(36, 'TLAHUALILO', 10, 0);
INSERT INTO `municipios` VALUES(37, 'TOPIA', 10, 0);
INSERT INTO `municipios` VALUES(38, 'VICENTE GUERRERO', 10, 0);
INSERT INTO `municipios` VALUES(39, 'NUEVO IDEAL', 10, 0);
INSERT INTO `municipios` VALUES(1, 'ABASOLO', 11, 0);
INSERT INTO `municipios` VALUES(2, 'ACAMBARO', 11, 0);
INSERT INTO `municipios` VALUES(3, 'ALLENDE', 11, 0);
INSERT INTO `municipios` VALUES(4, 'APASEO EL ALTO', 11, 0);
INSERT INTO `municipios` VALUES(5, 'APASEO EL GRANDE', 11, 0);
INSERT INTO `municipios` VALUES(6, 'ATARJEA', 11, 0);
INSERT INTO `municipios` VALUES(7, 'CELAYA', 11, 0);
INSERT INTO `municipios` VALUES(8, 'MANUEL DOBLADO', 11, 0);
INSERT INTO `municipios` VALUES(9, 'COMONFORT', 11, 0);
INSERT INTO `municipios` VALUES(10, 'CORONEO', 11, 0);
INSERT INTO `municipios` VALUES(11, 'CORTAZAR', 11, 0);
INSERT INTO `municipios` VALUES(12, 'CUERAMARO', 11, 0);
INSERT INTO `municipios` VALUES(13, 'DOCTOR MORA', 11, 0);
INSERT INTO `municipios` VALUES(14, 'DOLORES HIDALGO CUNA DE LA INDEPENDENCIA NACIONAL', 11, 0);
INSERT INTO `municipios` VALUES(15, 'GUANAJUATO', 11, 0);
INSERT INTO `municipios` VALUES(16, 'HUANIMARO', 11, 0);
INSERT INTO `municipios` VALUES(17, 'IRAPUATO', 11, 0);
INSERT INTO `municipios` VALUES(18, 'JARAL DEL PROGRESO', 11, 0);
INSERT INTO `municipios` VALUES(19, 'JERECUARO', 11, 0);
INSERT INTO `municipios` VALUES(20, 'LEON', 11, 0);
INSERT INTO `municipios` VALUES(21, 'MOROLEON', 11, 0);
INSERT INTO `municipios` VALUES(22, 'OCAMPO', 11, 0);
INSERT INTO `municipios` VALUES(23, 'PENJAMO', 11, 0);
INSERT INTO `municipios` VALUES(24, 'PUEBLO NUEVO', 11, 0);
INSERT INTO `municipios` VALUES(25, 'PURISIMA DEL RINCON', 11, 0);
INSERT INTO `municipios` VALUES(26, 'ROMITA', 11, 0);
INSERT INTO `municipios` VALUES(27, 'SALAMANCA', 11, 0);
INSERT INTO `municipios` VALUES(28, 'SALVATIERRA', 11, 0);
INSERT INTO `municipios` VALUES(29, 'SAN DIEGO DE LA UNION', 11, 0);
INSERT INTO `municipios` VALUES(30, 'SAN FELIPE', 11, 0);
INSERT INTO `municipios` VALUES(31, 'SAN FRANCISCO DEL RINCON', 11, 0);
INSERT INTO `municipios` VALUES(32, 'SAN JOSE ITURBIDE', 11, 0);
INSERT INTO `municipios` VALUES(33, 'SAN LUIS DE LA PAZ', 11, 0);
INSERT INTO `municipios` VALUES(34, 'SANTA CATARINA', 11, 0);
INSERT INTO `municipios` VALUES(35, 'SANTA CRUZ DE JUVENTINO ROSAS', 11, 0);
INSERT INTO `municipios` VALUES(36, 'SANTIAGO MARAVATIO', 11, 0);
INSERT INTO `municipios` VALUES(37, 'SILAO', 11, 0);
INSERT INTO `municipios` VALUES(38, 'TARANDACUAO', 11, 0);
INSERT INTO `municipios` VALUES(39, 'TARIMORO', 11, 0);
INSERT INTO `municipios` VALUES(40, 'TIERRA BLANCA', 11, 0);
INSERT INTO `municipios` VALUES(41, 'URIANGATO', 11, 0);
INSERT INTO `municipios` VALUES(42, 'VALLE DE SANTIAGO', 11, 0);
INSERT INTO `municipios` VALUES(43, 'VICTORIA', 11, 0);
INSERT INTO `municipios` VALUES(44, 'VILLAGRAN', 11, 0);
INSERT INTO `municipios` VALUES(45, 'XICHU', 11, 0);
INSERT INTO `municipios` VALUES(46, 'YURIRIA', 11, 0);
INSERT INTO `municipios` VALUES(1, 'ACAPULCO DE JUAREZ', 12, 0);
INSERT INTO `municipios` VALUES(2, 'AHUACUOTZINGO', 12, 0);
INSERT INTO `municipios` VALUES(3, 'AJUCHITLAN DEL PROGRESO', 12, 0);
INSERT INTO `municipios` VALUES(4, 'ALCOZAUCA DE GUERRERO', 12, 0);
INSERT INTO `municipios` VALUES(5, 'ALPOYECA', 12, 0);
INSERT INTO `municipios` VALUES(6, 'APAXTLA', 12, 0);
INSERT INTO `municipios` VALUES(7, 'ARCELIA', 12, 0);
INSERT INTO `municipios` VALUES(8, 'ATENANGO DEL RIO', 12, 0);
INSERT INTO `municipios` VALUES(9, 'ATLAMAJALCINGO DEL MONTE', 12, 0);
INSERT INTO `municipios` VALUES(10, 'ATLIXTAC', 12, 0);
INSERT INTO `municipios` VALUES(11, 'ATOYAC DE ALVAREZ', 12, 0);
INSERT INTO `municipios` VALUES(12, 'AYUTLA DE LOS LIBRES', 12, 0);
INSERT INTO `municipios` VALUES(13, 'AZOYU', 12, 0);
INSERT INTO `municipios` VALUES(14, 'BENITO JUAREZ', 12, 0);
INSERT INTO `municipios` VALUES(15, 'BUENAVISTA DE CUELLAR', 12, 0);
INSERT INTO `municipios` VALUES(16, 'COAHUAYUTLA DE JOSE MARIA IZAZAGA', 12, 0);
INSERT INTO `municipios` VALUES(17, 'COCULA', 12, 0);
INSERT INTO `municipios` VALUES(18, 'COPALA', 12, 0);
INSERT INTO `municipios` VALUES(19, 'COPALILLO', 12, 0);
INSERT INTO `municipios` VALUES(20, 'COPANATOYAC', 12, 0);
INSERT INTO `municipios` VALUES(21, 'COYUCA DE BENITEZ', 12, 0);
INSERT INTO `municipios` VALUES(22, 'COYUCA DE CATALAN', 12, 0);
INSERT INTO `municipios` VALUES(23, 'CUAJINICUILAPA', 12, 0);
INSERT INTO `municipios` VALUES(24, 'CUALAC', 12, 0);
INSERT INTO `municipios` VALUES(25, 'CUAUTEPEC', 12, 0);
INSERT INTO `municipios` VALUES(26, 'CUETZALA DEL PROGRESO', 12, 0);
INSERT INTO `municipios` VALUES(27, 'CUTZAMALA DE PINZON', 12, 0);
INSERT INTO `municipios` VALUES(28, 'CHILAPA DE ALVAREZ', 12, 0);
INSERT INTO `municipios` VALUES(29, 'CHILPANCINGO DE LOS BRAVO', 12, 0);
INSERT INTO `municipios` VALUES(30, 'FLORENCIO VILLARREAL', 12, 0);
INSERT INTO `municipios` VALUES(31, 'GENERAL CANUTO A NERI', 12, 0);
INSERT INTO `municipios` VALUES(32, 'GENERAL HELIODORO CASTILLO', 12, 0);
INSERT INTO `municipios` VALUES(33, 'HUAMUXTITLAN', 12, 0);
INSERT INTO `municipios` VALUES(34, 'HUITZUCO DE LOS FIGUEROA', 12, 0);
INSERT INTO `municipios` VALUES(35, 'IGUALA DE LA INDEPENDENCIA', 12, 0);
INSERT INTO `municipios` VALUES(36, 'IGUALAPA', 12, 0);
INSERT INTO `municipios` VALUES(37, 'IXCATEOPAN DE CUAUHTEMOC', 12, 0);
INSERT INTO `municipios` VALUES(38, 'JOSE AZUETA', 12, 0);
INSERT INTO `municipios` VALUES(39, 'JUAN R ESCUDERO', 12, 0);
INSERT INTO `municipios` VALUES(40, 'LEONARDO BRAVO', 12, 0);
INSERT INTO `municipios` VALUES(41, 'MALINALTEPEC', 12, 0);
INSERT INTO `municipios` VALUES(42, 'MARTIR DE CUILAPAN', 12, 0);
INSERT INTO `municipios` VALUES(43, 'METLATONOC', 12, 0);
INSERT INTO `municipios` VALUES(44, 'MOCHITLAN', 12, 0);
INSERT INTO `municipios` VALUES(45, 'OLINALA', 12, 0);
INSERT INTO `municipios` VALUES(46, 'OMETEPEC', 12, 0);
INSERT INTO `municipios` VALUES(47, 'PEDRO ASCENCIO ALQUISIRAS', 12, 0);
INSERT INTO `municipios` VALUES(48, 'PETATLAN', 12, 0);
INSERT INTO `municipios` VALUES(49, 'PILCAYA', 12, 0);
INSERT INTO `municipios` VALUES(50, 'PUNGARABATO', 12, 0);
INSERT INTO `municipios` VALUES(51, 'QUECHULTENANGO', 12, 0);
INSERT INTO `municipios` VALUES(52, 'SAN LUIS ACATLAN', 12, 0);
INSERT INTO `municipios` VALUES(53, 'SAN MARCOS', 12, 0);
INSERT INTO `municipios` VALUES(54, 'SAN MIGUEL TOTOLAPAN', 12, 0);
INSERT INTO `municipios` VALUES(55, 'TAXCO DE ALARCON', 12, 0);
INSERT INTO `municipios` VALUES(56, 'TECOANAPA', 12, 0);
INSERT INTO `municipios` VALUES(57, 'TECPAN DE GALEANA', 12, 0);
INSERT INTO `municipios` VALUES(58, 'TELOLOAPAN', 12, 0);
INSERT INTO `municipios` VALUES(59, 'TEPECOACUILCO DE TRUJANO', 12, 0);
INSERT INTO `municipios` VALUES(60, 'TETIPAC', 12, 0);
INSERT INTO `municipios` VALUES(61, 'TIXTLA DE GUERRERO', 12, 0);
INSERT INTO `municipios` VALUES(62, 'TLACOACHISTLAHUACA', 12, 0);
INSERT INTO `municipios` VALUES(63, 'TLACOAPA', 12, 0);
INSERT INTO `municipios` VALUES(64, 'TLALCHAPA', 12, 0);
INSERT INTO `municipios` VALUES(65, 'TLALIXTAQUILLA DE MALDONADO', 12, 0);
INSERT INTO `municipios` VALUES(66, 'TLAPA DE COMONFORT', 12, 0);
INSERT INTO `municipios` VALUES(67, 'TLAPEHUALA', 12, 0);
INSERT INTO `municipios` VALUES(68, 'LA UNION', 12, 0);
INSERT INTO `municipios` VALUES(69, 'XALPATLAHUAC', 12, 0);
INSERT INTO `municipios` VALUES(70, 'XOCHIHUEHUETLAN', 12, 0);
INSERT INTO `municipios` VALUES(71, 'XOCHISTLAHUACA', 12, 0);
INSERT INTO `municipios` VALUES(72, 'ZAPOTITLAN TABLAS', 12, 0);
INSERT INTO `municipios` VALUES(73, 'ZIRANDARO', 12, 0);
INSERT INTO `municipios` VALUES(74, 'ZITLALA', 12, 0);
INSERT INTO `municipios` VALUES(75, 'EDUARDO NERI', 12, 0);
INSERT INTO `municipios` VALUES(76, 'ACATEPEC', 12, 0);
INSERT INTO `municipios` VALUES(77, 'MARQUELIA', 12, 0);
INSERT INTO `municipios` VALUES(78, 'JOSE JOAQUIN DE HERRERA', 12, 0);
INSERT INTO `municipios` VALUES(79, 'COCHOAPA EL GRANDE', 12, 0);
INSERT INTO `municipios` VALUES(80, 'ILIATENCO', 12, 0);
INSERT INTO `municipios` VALUES(1, 'ACATLAN', 13, 0);
INSERT INTO `municipios` VALUES(2, 'ACAXOCHITLAN', 13, 0);
INSERT INTO `municipios` VALUES(3, 'ACTOPAN', 13, 0);
INSERT INTO `municipios` VALUES(4, 'AGUA BLANCA DE ITURBIDE', 13, 0);
INSERT INTO `municipios` VALUES(5, 'AJACUBA', 13, 0);
INSERT INTO `municipios` VALUES(6, 'ALFAJAYUCAN', 13, 0);
INSERT INTO `municipios` VALUES(7, 'ALMOLOYA', 13, 0);
INSERT INTO `municipios` VALUES(8, 'APAN', 13, 0);
INSERT INTO `municipios` VALUES(9, 'EL ARENAL', 13, 0);
INSERT INTO `municipios` VALUES(10, 'ATITALAQUIA', 13, 0);
INSERT INTO `municipios` VALUES(11, 'ATLAPEXCO', 13, 0);
INSERT INTO `municipios` VALUES(12, 'ATOTONILCO EL GRANDE', 13, 0);
INSERT INTO `municipios` VALUES(13, 'ATOTONILCO DE TULA', 13, 0);
INSERT INTO `municipios` VALUES(14, 'CALNALI', 13, 0);
INSERT INTO `municipios` VALUES(15, 'CARDONAL', 13, 0);
INSERT INTO `municipios` VALUES(16, 'CUAUTEPEC DE HINOJOSA', 13, 0);
INSERT INTO `municipios` VALUES(17, 'CHAPANTONGO', 13, 0);
INSERT INTO `municipios` VALUES(18, 'CHAPULHUACAN', 13, 0);
INSERT INTO `municipios` VALUES(19, 'CHILCUAUTLA', 13, 0);
INSERT INTO `municipios` VALUES(20, 'ELOXOCHITLAN', 13, 0);
INSERT INTO `municipios` VALUES(21, 'EMILIANO ZAPATA', 13, 0);
INSERT INTO `municipios` VALUES(22, 'EPAZOYUCAN', 13, 0);
INSERT INTO `municipios` VALUES(23, 'FRANCISCO I MADERO', 13, 0);
INSERT INTO `municipios` VALUES(24, 'HUASCA DE OCAMPO', 13, 0);
INSERT INTO `municipios` VALUES(25, 'HUAUTLA', 13, 0);
INSERT INTO `municipios` VALUES(26, 'HUAZALINGO', 13, 0);
INSERT INTO `municipios` VALUES(27, 'HUEHUETLA', 13, 0);
INSERT INTO `municipios` VALUES(28, 'HUEJUTLA DE REYES', 13, 0);
INSERT INTO `municipios` VALUES(29, 'HUICHAPAN', 13, 0);
INSERT INTO `municipios` VALUES(30, 'IXMIQUILPAN', 13, 0);
INSERT INTO `municipios` VALUES(31, 'JACALA DE LEDEZMA', 13, 0);
INSERT INTO `municipios` VALUES(32, 'JALTOCAN', 13, 0);
INSERT INTO `municipios` VALUES(33, 'JUAREZ HIDALGO', 13, 0);
INSERT INTO `municipios` VALUES(34, 'LOLOTLA', 13, 0);
INSERT INTO `municipios` VALUES(35, 'METEPEC', 13, 0);
INSERT INTO `municipios` VALUES(36, 'SAN AGUSTIN METZQUITITLAN', 13, 0);
INSERT INTO `municipios` VALUES(37, 'METZTITLAN', 13, 0);
INSERT INTO `municipios` VALUES(38, 'MINERAL DEL CHICO', 13, 0);
INSERT INTO `municipios` VALUES(39, 'MINERAL DEL MONTE', 13, 0);
INSERT INTO `municipios` VALUES(40, 'LA MISION', 13, 0);
INSERT INTO `municipios` VALUES(41, 'MIXQUIAHUALA DE JUAREZ', 13, 0);
INSERT INTO `municipios` VALUES(42, 'MOLANGO DE ESCAMILLA', 13, 0);
INSERT INTO `municipios` VALUES(43, 'NICOLAS FLORES', 13, 0);
INSERT INTO `municipios` VALUES(44, 'NOPALA DE VILLAGRAN', 13, 0);
INSERT INTO `municipios` VALUES(45, 'OMITLAN DE JUAREZ', 13, 0);
INSERT INTO `municipios` VALUES(46, 'SAN FELIPE ORIZATLAN', 13, 0);
INSERT INTO `municipios` VALUES(47, 'PACULA', 13, 0);
INSERT INTO `municipios` VALUES(48, 'PACHUCA DE SOTO', 13, 0);
INSERT INTO `municipios` VALUES(49, 'PISAFLORES', 13, 0);
INSERT INTO `municipios` VALUES(50, 'PROGRESO DE OBREGON', 13, 0);
INSERT INTO `municipios` VALUES(51, 'MINERAL DE LA REFORMA', 13, 0);
INSERT INTO `municipios` VALUES(52, 'SAN AGUSTIN TLAXIACA', 13, 0);
INSERT INTO `municipios` VALUES(53, 'SAN BARTOLO TUTOTEPEC', 13, 0);
INSERT INTO `municipios` VALUES(54, 'SAN SALVADOR', 13, 0);
INSERT INTO `municipios` VALUES(55, 'SANTIAGO DE ANAYA', 13, 0);
INSERT INTO `municipios` VALUES(56, 'SANTIAGO TULANTEPEC DE LUGO GUERRERO', 13, 0);
INSERT INTO `municipios` VALUES(57, 'SINGUILUCAN', 13, 0);
INSERT INTO `municipios` VALUES(58, 'TASQUILLO', 13, 0);
INSERT INTO `municipios` VALUES(59, 'TECOZAUTLA', 13, 0);
INSERT INTO `municipios` VALUES(60, 'TENANGO DE DORIA', 13, 0);
INSERT INTO `municipios` VALUES(61, 'TEPEAPULCO', 13, 0);
INSERT INTO `municipios` VALUES(62, 'TEPEHUACAN DE GUERRERO', 13, 0);
INSERT INTO `municipios` VALUES(63, 'TEPEJI DEL RIO DE OCAMPO', 13, 0);
INSERT INTO `municipios` VALUES(64, 'TEPETITLAN', 13, 0);
INSERT INTO `municipios` VALUES(65, 'TETEPANGO', 13, 0);
INSERT INTO `municipios` VALUES(66, 'VILLA DE TEZONTEPEC', 13, 0);
INSERT INTO `municipios` VALUES(67, 'TEZONTEPEC DE ALDAMA', 13, 0);
INSERT INTO `municipios` VALUES(68, 'TIANGUISTENGO', 13, 0);
INSERT INTO `municipios` VALUES(69, 'TIZAYUCA', 13, 0);
INSERT INTO `municipios` VALUES(70, 'TLAHUELILPAN', 13, 0);
INSERT INTO `municipios` VALUES(71, 'TLAHUILTEPA', 13, 0);
INSERT INTO `municipios` VALUES(72, 'TLANALAPA', 13, 0);
INSERT INTO `municipios` VALUES(73, 'TLANCHINOL', 13, 0);
INSERT INTO `municipios` VALUES(74, 'TLAXCOAPAN', 13, 0);
INSERT INTO `municipios` VALUES(75, 'TOLCAYUCA', 13, 0);
INSERT INTO `municipios` VALUES(76, 'TULA DE ALLENDE', 13, 0);
INSERT INTO `municipios` VALUES(77, 'TULANCINGO DE BRAVO', 13, 0);
INSERT INTO `municipios` VALUES(78, 'XOCHIATIPAN', 13, 0);
INSERT INTO `municipios` VALUES(79, 'XOCHICOATLAN', 13, 0);
INSERT INTO `municipios` VALUES(80, 'YAHUALICA', 13, 0);
INSERT INTO `municipios` VALUES(81, 'ZACUALTIPAN DE ANGELES', 13, 0);
INSERT INTO `municipios` VALUES(82, 'ZAPOTLAN DE JUAREZ', 13, 0);
INSERT INTO `municipios` VALUES(83, 'ZEMPOALA', 13, 0);
INSERT INTO `municipios` VALUES(84, 'ZIMAPAN', 13, 0);
INSERT INTO `municipios` VALUES(1, 'ACATIC', 14, 0);
INSERT INTO `municipios` VALUES(2, 'ACATLAN DE JUAREZ', 14, 0);
INSERT INTO `municipios` VALUES(3, 'AHUALULCO DE MERCADO', 14, 0);
INSERT INTO `municipios` VALUES(4, 'AMACUECA', 14, 0);
INSERT INTO `municipios` VALUES(5, 'AMATITAN', 14, 0);
INSERT INTO `municipios` VALUES(6, 'AMECA', 14, 0);
INSERT INTO `municipios` VALUES(7, 'ANTONIO ESCOBEDO', 14, 0);
INSERT INTO `municipios` VALUES(8, 'ARANDAS', 14, 0);
INSERT INTO `municipios` VALUES(9, 'EL ARENAL', 14, 0);
INSERT INTO `municipios` VALUES(10, 'ATEMAJAC DE BRIZUELA', 14, 0);
INSERT INTO `municipios` VALUES(11, 'ATENGO', 14, 0);
INSERT INTO `municipios` VALUES(12, 'ATENGUILLO', 14, 0);
INSERT INTO `municipios` VALUES(13, 'ATOTONILCO EL ALTO', 14, 0);
INSERT INTO `municipios` VALUES(14, 'ATOYAC', 14, 0);
INSERT INTO `municipios` VALUES(15, 'AUTLAN DE NAVARRO', 14, 0);
INSERT INTO `municipios` VALUES(16, 'AYOTLAN', 14, 0);
INSERT INTO `municipios` VALUES(17, 'AYUTLA', 14, 0);
INSERT INTO `municipios` VALUES(18, 'LA BARCA', 14, 0);
INSERT INTO `municipios` VALUES(19, 'BOLA&OS', 14, 0);
INSERT INTO `municipios` VALUES(20, 'CABO CORRIENTES', 14, 0);
INSERT INTO `municipios` VALUES(21, 'CASIMIRO CASTILLO', 14, 0);
INSERT INTO `municipios` VALUES(22, 'CIHUATLAN', 14, 0);
INSERT INTO `municipios` VALUES(23, 'ZAPOTLAN EL GRANDE', 14, 0);
INSERT INTO `municipios` VALUES(24, 'COCULA', 14, 0);
INSERT INTO `municipios` VALUES(25, 'COLOTLAN', 14, 0);
INSERT INTO `municipios` VALUES(26, 'CONCEPCION DE BUENOS AIRES', 14, 0);
INSERT INTO `municipios` VALUES(27, 'CUAUTITLAN', 14, 0);
INSERT INTO `municipios` VALUES(28, 'CUAUTLA', 14, 0);
INSERT INTO `municipios` VALUES(29, 'CUQUIO', 14, 0);
INSERT INTO `municipios` VALUES(30, 'CHAPALA', 14, 0);
INSERT INTO `municipios` VALUES(31, 'CHIMALTITAN', 14, 0);
INSERT INTO `municipios` VALUES(32, 'CHIQUILISTLAN', 14, 0);
INSERT INTO `municipios` VALUES(33, 'DEGOLLADO', 14, 0);
INSERT INTO `municipios` VALUES(34, 'EJUTLA', 14, 0);
INSERT INTO `municipios` VALUES(35, 'ENCARNACION DE DIAZ', 14, 0);
INSERT INTO `municipios` VALUES(36, 'ETZATLAN', 14, 0);
INSERT INTO `municipios` VALUES(37, 'EL GRULLO', 14, 0);
INSERT INTO `municipios` VALUES(38, 'GUACHINANGO', 14, 0);
INSERT INTO `municipios` VALUES(39, 'GUADALAJARA', 14, 0);
INSERT INTO `municipios` VALUES(40, 'HOSTOTIPAQUILLO', 14, 0);
INSERT INTO `municipios` VALUES(41, 'HUEJUCAR', 14, 0);
INSERT INTO `municipios` VALUES(42, 'HUEJUQUILLA EL ALTO', 14, 0);
INSERT INTO `municipios` VALUES(43, 'LA HUERTA', 14, 0);
INSERT INTO `municipios` VALUES(44, 'IXTLAHUACAN DE LOS MEMBRILLOS', 14, 0);
INSERT INTO `municipios` VALUES(45, 'IXTLAHUACAN DEL RIO', 14, 0);
INSERT INTO `municipios` VALUES(46, 'JALOSTOTITLAN', 14, 0);
INSERT INTO `municipios` VALUES(47, 'JAMAY', 14, 0);
INSERT INTO `municipios` VALUES(48, 'JESUS MARIA', 14, 0);
INSERT INTO `municipios` VALUES(49, 'JILOTLAN DE LOS DOLORES', 14, 0);
INSERT INTO `municipios` VALUES(50, 'JOCOTEPEC', 14, 0);
INSERT INTO `municipios` VALUES(51, 'JUANACATLAN', 14, 0);
INSERT INTO `municipios` VALUES(52, 'JUCHITLAN', 14, 0);
INSERT INTO `municipios` VALUES(53, 'LAGOS DE MORENO', 14, 0);
INSERT INTO `municipios` VALUES(54, 'EL LIMON', 14, 0);
INSERT INTO `municipios` VALUES(55, 'MAGDALENA', 14, 0);
INSERT INTO `municipios` VALUES(56, 'MANUEL M DIEGUEZ', 14, 0);
INSERT INTO `municipios` VALUES(57, 'MANZANILLA DE LA PAZ LA', 14, 0);
INSERT INTO `municipios` VALUES(58, 'MASCOTA', 14, 0);
INSERT INTO `municipios` VALUES(59, 'MAZAMITLA', 14, 0);
INSERT INTO `municipios` VALUES(60, 'MEXTICACAN', 14, 0);
INSERT INTO `municipios` VALUES(61, 'MEZQUITIC', 14, 0);
INSERT INTO `municipios` VALUES(62, 'MIXTLAN', 14, 0);
INSERT INTO `municipios` VALUES(63, 'OCOTLAN', 14, 0);
INSERT INTO `municipios` VALUES(64, 'OJUELOS DE JALISCO', 14, 0);
INSERT INTO `municipios` VALUES(65, 'PIHUAMO', 14, 0);
INSERT INTO `municipios` VALUES(66, 'PONCITLAN', 14, 0);
INSERT INTO `municipios` VALUES(67, 'PUERTO VALLARTA', 14, 0);
INSERT INTO `municipios` VALUES(68, 'VILLA PURIFICACION', 14, 0);
INSERT INTO `municipios` VALUES(69, 'QUITUPAN', 14, 0);
INSERT INTO `municipios` VALUES(70, 'EL SALTO', 14, 0);
INSERT INTO `municipios` VALUES(71, 'SAN CRISTOBAL DE LA BARRANCA', 14, 0);
INSERT INTO `municipios` VALUES(72, 'SAN DIEGO DE ALEJANDRIA', 14, 0);
INSERT INTO `municipios` VALUES(73, 'SAN JUAN DE LOS LAGOS', 14, 0);
INSERT INTO `municipios` VALUES(74, 'SAN JULIAN', 14, 0);
INSERT INTO `municipios` VALUES(75, 'SAN MARCOS', 14, 0);
INSERT INTO `municipios` VALUES(76, 'SAN MARTIN DE BOLA&OS', 14, 0);
INSERT INTO `municipios` VALUES(77, 'SAN MARTIN HIDALGO', 14, 0);
INSERT INTO `municipios` VALUES(78, 'SAN MIGUEL EL ALTO', 14, 0);
INSERT INTO `municipios` VALUES(79, 'GOMEZ FARIAS', 14, 0);
INSERT INTO `municipios` VALUES(80, 'SAN SEBASTIAN DEL OESTE', 14, 0);
INSERT INTO `municipios` VALUES(81, 'SANTA MARIA DE LOS ANGELES', 14, 0);
INSERT INTO `municipios` VALUES(82, 'SAYULA', 14, 0);
INSERT INTO `municipios` VALUES(83, 'TALA', 14, 0);
INSERT INTO `municipios` VALUES(84, 'TALPA DE ALLENDE', 14, 0);
INSERT INTO `municipios` VALUES(85, 'TAMAZULA DE GORDIANO', 14, 0);
INSERT INTO `municipios` VALUES(86, 'TAPALPA', 14, 0);
INSERT INTO `municipios` VALUES(87, 'TECALITLAN', 14, 0);
INSERT INTO `municipios` VALUES(88, 'TECOLOTLAN', 14, 0);
INSERT INTO `municipios` VALUES(89, 'TECHALUTA DE MONTENEGRO', 14, 0);
INSERT INTO `municipios` VALUES(90, 'TENAMAXTLAN', 14, 0);
INSERT INTO `municipios` VALUES(91, 'TEOCALTICHE', 14, 0);
INSERT INTO `municipios` VALUES(92, 'TEOCUITATLAN DE CORONA', 14, 0);
INSERT INTO `municipios` VALUES(93, 'TEPATITLAN DE MORELOS', 14, 0);
INSERT INTO `municipios` VALUES(94, 'TEQUILA', 14, 0);
INSERT INTO `municipios` VALUES(95, 'TEUCHITLAN', 14, 0);
INSERT INTO `municipios` VALUES(96, 'TIZAPAN EL ALTO', 14, 0);
INSERT INTO `municipios` VALUES(97, 'TLAJOMULCO DE ZU&IGA', 14, 0);
INSERT INTO `municipios` VALUES(98, 'TLAQUEPAQUE', 14, 0);
INSERT INTO `municipios` VALUES(99, 'TOLIMAN', 14, 0);
INSERT INTO `municipios` VALUES(100, 'TOMATLAN', 14, 0);
INSERT INTO `municipios` VALUES(101, 'TONALA', 14, 0);
INSERT INTO `municipios` VALUES(102, 'TONAYA', 14, 0);
INSERT INTO `municipios` VALUES(103, 'TONILA', 14, 0);
INSERT INTO `municipios` VALUES(104, 'TOTATICHE', 14, 0);
INSERT INTO `municipios` VALUES(105, 'TOTOTLAN', 14, 0);
INSERT INTO `municipios` VALUES(106, 'TUXCACUESCO', 14, 0);
INSERT INTO `municipios` VALUES(107, 'TUXCUECA', 14, 0);
INSERT INTO `municipios` VALUES(108, 'TUXPAN', 14, 0);
INSERT INTO `municipios` VALUES(109, 'UNION DE SAN ANTONIO', 14, 0);
INSERT INTO `municipios` VALUES(110, 'UNION DE TULA', 14, 0);
INSERT INTO `municipios` VALUES(111, 'VALLE DE GUADALUPE', 14, 0);
INSERT INTO `municipios` VALUES(112, 'VALLE DE JUAREZ', 14, 0);
INSERT INTO `municipios` VALUES(113, 'SAN GABRIEL', 14, 0);
INSERT INTO `municipios` VALUES(114, 'VILLA CORONA', 14, 0);
INSERT INTO `municipios` VALUES(115, 'VILLA GUERRERO', 14, 0);
INSERT INTO `municipios` VALUES(116, 'VILLA HIDALGO', 14, 0);
INSERT INTO `municipios` VALUES(117, 'CA&ADAS DE OBREGON', 14, 0);
INSERT INTO `municipios` VALUES(118, 'YAHUALICA DE GONZALEZ GALLO', 14, 0);
INSERT INTO `municipios` VALUES(119, 'ZACOALCO DE TORRES', 14, 0);
INSERT INTO `municipios` VALUES(120, 'ZAPOPAN', 14, 0);
INSERT INTO `municipios` VALUES(121, 'ZAPOTILTIC', 14, 0);
INSERT INTO `municipios` VALUES(122, 'ZAPOTITLAN DE VADILLO', 14, 0);
INSERT INTO `municipios` VALUES(123, 'ZAPOTLAN DEL REY', 14, 0);
INSERT INTO `municipios` VALUES(124, 'ZAPOTLANEJO', 14, 0);
INSERT INTO `municipios` VALUES(1, 'ACAMBAY', 15, 0);
INSERT INTO `municipios` VALUES(2, 'ACOLMAN', 15, 0);
INSERT INTO `municipios` VALUES(3, 'ACULCO', 15, 0);
INSERT INTO `municipios` VALUES(4, 'ALMOLOYA DE ALQUISIRAS', 15, 0);
INSERT INTO `municipios` VALUES(5, 'ALMOLOYA DE JUAREZ', 15, 0);
INSERT INTO `municipios` VALUES(6, 'ALMOLOYA DEL RIO', 15, 0);
INSERT INTO `municipios` VALUES(7, 'AMANALCO', 15, 0);
INSERT INTO `municipios` VALUES(8, 'AMATEPEC', 15, 0);
INSERT INTO `municipios` VALUES(9, 'AMECAMECA', 15, 0);
INSERT INTO `municipios` VALUES(10, 'APAXCO', 15, 0);
INSERT INTO `municipios` VALUES(11, 'ATENCO', 15, 0);
INSERT INTO `municipios` VALUES(12, 'ATIZAPAN', 15, 0);
INSERT INTO `municipios` VALUES(13, 'ATIZAPAN DE ZARAGOZA', 15, 0);
INSERT INTO `municipios` VALUES(14, 'ATLACOMULCO', 15, 0);
INSERT INTO `municipios` VALUES(15, 'ATLAUTLA', 15, 0);
INSERT INTO `municipios` VALUES(16, 'AXAPUSCO', 15, 0);
INSERT INTO `municipios` VALUES(17, 'AYAPANGO', 15, 0);
INSERT INTO `municipios` VALUES(18, 'CALIMAYA', 15, 0);
INSERT INTO `municipios` VALUES(19, 'CAPULHUAC', 15, 0);
INSERT INTO `municipios` VALUES(20, 'COACALCO', 15, 0);
INSERT INTO `municipios` VALUES(21, 'COATEPEC HARINAS', 15, 0);
INSERT INTO `municipios` VALUES(22, 'COCOTITLAN', 15, 0);
INSERT INTO `municipios` VALUES(23, 'COYOTEPEC', 15, 0);
INSERT INTO `municipios` VALUES(24, 'CUAUTITLAN', 15, 0);
INSERT INTO `municipios` VALUES(25, 'CHALCO', 15, 0);
INSERT INTO `municipios` VALUES(26, 'CHAPA DE MOTA', 15, 0);
INSERT INTO `municipios` VALUES(27, 'CHAPULTEPEC', 15, 0);
INSERT INTO `municipios` VALUES(28, 'CHIAUTLA', 15, 0);
INSERT INTO `municipios` VALUES(29, 'CHICOLOAPAN', 15, 0);
INSERT INTO `municipios` VALUES(30, 'CHICONCUAC', 15, 0);
INSERT INTO `municipios` VALUES(31, 'CHIMALHUACAN', 15, 0);
INSERT INTO `municipios` VALUES(32, 'DONATO GUERRA', 15, 0);
INSERT INTO `municipios` VALUES(33, 'ECATEPEC', 15, 0);
INSERT INTO `municipios` VALUES(34, 'ECATZINGO', 15, 0);
INSERT INTO `municipios` VALUES(35, 'HUEHUETOCA', 15, 0);
INSERT INTO `municipios` VALUES(36, 'HUEYPOXTLA', 15, 0);
INSERT INTO `municipios` VALUES(37, 'HUIXQUILUCAN', 15, 0);
INSERT INTO `municipios` VALUES(38, 'ISIDRO FABELA', 15, 0);
INSERT INTO `municipios` VALUES(39, 'IXTAPALUCA', 15, 0);
INSERT INTO `municipios` VALUES(40, 'IXTAPAN DE LA SAL', 15, 0);
INSERT INTO `municipios` VALUES(41, 'IXTAPAN DEL ORO', 15, 0);
INSERT INTO `municipios` VALUES(42, 'IXTLAHUACA', 15, 0);
INSERT INTO `municipios` VALUES(43, 'JALATLACO', 15, 0);
INSERT INTO `municipios` VALUES(44, 'JALTENCO', 15, 0);
INSERT INTO `municipios` VALUES(45, 'JILOTEPEC', 15, 0);
INSERT INTO `municipios` VALUES(46, 'JILOTZINGO', 15, 0);
INSERT INTO `municipios` VALUES(47, 'JIQUIPILCO', 15, 0);
INSERT INTO `municipios` VALUES(48, 'JOCOTITLAN', 15, 0);
INSERT INTO `municipios` VALUES(49, 'JOQUICINGO', 15, 0);
INSERT INTO `municipios` VALUES(50, 'JUCHITEPEC', 15, 0);
INSERT INTO `municipios` VALUES(51, 'LERMA', 15, 0);
INSERT INTO `municipios` VALUES(52, 'MALINALCO', 15, 0);
INSERT INTO `municipios` VALUES(53, 'MELCHOR OCAMPO', 15, 0);
INSERT INTO `municipios` VALUES(54, 'METEPEC', 15, 0);
INSERT INTO `municipios` VALUES(55, 'MEXICALCINGO', 15, 0);
INSERT INTO `municipios` VALUES(56, 'MORELOS', 15, 0);
INSERT INTO `municipios` VALUES(57, 'NAUCALPAN', 15, 0);
INSERT INTO `municipios` VALUES(58, 'NEZAHUALCOYOTL', 15, 0);
INSERT INTO `municipios` VALUES(59, 'NEXTLALPAN', 15, 0);
INSERT INTO `municipios` VALUES(60, 'NICOLAS ROMERO', 15, 0);
INSERT INTO `municipios` VALUES(61, 'NOPALTEPEC', 15, 0);
INSERT INTO `municipios` VALUES(62, 'OCOYOACAC', 15, 0);
INSERT INTO `municipios` VALUES(63, 'OCUILAN', 15, 0);
INSERT INTO `municipios` VALUES(64, 'EL ORO', 15, 0);
INSERT INTO `municipios` VALUES(65, 'OTUMBA', 15, 0);
INSERT INTO `municipios` VALUES(66, 'OTZOLOAPAN', 15, 0);
INSERT INTO `municipios` VALUES(67, 'OTZOLOTEPEC', 15, 0);
INSERT INTO `municipios` VALUES(68, 'OZUMBA', 15, 0);
INSERT INTO `municipios` VALUES(69, 'PAPALOTLA', 15, 0);
INSERT INTO `municipios` VALUES(70, 'LA PAZ', 15, 0);
INSERT INTO `municipios` VALUES(71, 'POLOTITLAN', 15, 0);
INSERT INTO `municipios` VALUES(72, 'RAYON', 15, 0);
INSERT INTO `municipios` VALUES(73, 'SAN ANTONIO LA ISLA', 15, 0);
INSERT INTO `municipios` VALUES(74, 'SAN FELIPE DEL PROGRESO', 15, 0);
INSERT INTO `municipios` VALUES(75, 'SAN MARTIN DE LAS PIRAMIDES', 15, 0);
INSERT INTO `municipios` VALUES(76, 'SAN MATEO ATENCO', 15, 0);
INSERT INTO `municipios` VALUES(77, 'SAN SIMON DE GUERRERO', 15, 0);
INSERT INTO `municipios` VALUES(78, 'SANTO TOMAS', 15, 0);
INSERT INTO `municipios` VALUES(79, 'SOYANIQUILPAN DE JUAREZ', 15, 0);
INSERT INTO `municipios` VALUES(80, 'SULTEPEC', 15, 0);
INSERT INTO `municipios` VALUES(81, 'TECAMAC', 15, 0);
INSERT INTO `municipios` VALUES(82, 'TEJUPILCO', 15, 0);
INSERT INTO `municipios` VALUES(83, 'TEMAMATLA', 15, 0);
INSERT INTO `municipios` VALUES(84, 'TEMASCALAPA', 15, 0);
INSERT INTO `municipios` VALUES(85, 'TEMASCALCINGO', 15, 0);
INSERT INTO `municipios` VALUES(86, 'TEMASCALTEPEC', 15, 0);
INSERT INTO `municipios` VALUES(87, 'TEMOAYA', 15, 0);
INSERT INTO `municipios` VALUES(88, 'TENANCINGO', 15, 0);
INSERT INTO `municipios` VALUES(89, 'TENANGO DEL AIRE', 15, 0);
INSERT INTO `municipios` VALUES(90, 'TENANGO DEL VALLE', 15, 0);
INSERT INTO `municipios` VALUES(91, 'TEOLOYUCAN', 15, 0);
INSERT INTO `municipios` VALUES(92, 'TEOTIHUACAN', 15, 0);
INSERT INTO `municipios` VALUES(93, 'TEPETLAOXTOC', 15, 0);
INSERT INTO `municipios` VALUES(94, 'TEPETLIXPA', 15, 0);
INSERT INTO `municipios` VALUES(95, 'TEPOTZOTLAN', 15, 0);
INSERT INTO `municipios` VALUES(96, 'TEQUIXQUIAC', 15, 0);
INSERT INTO `municipios` VALUES(97, 'TEXCALTITLAN', 15, 0);
INSERT INTO `municipios` VALUES(98, 'TEXCALYACAC', 15, 0);
INSERT INTO `municipios` VALUES(99, 'TEXCOCO', 15, 0);
INSERT INTO `municipios` VALUES(100, 'TEZOYUCA', 15, 0);
INSERT INTO `municipios` VALUES(101, 'TIANGUISTENCO', 15, 0);
INSERT INTO `municipios` VALUES(102, 'TIMILPAN', 15, 0);
INSERT INTO `municipios` VALUES(103, 'TLALMANALCO', 15, 0);
INSERT INTO `municipios` VALUES(104, 'TLALNEPANTLA', 15, 0);
INSERT INTO `municipios` VALUES(105, 'TLATLAYA', 15, 0);
INSERT INTO `municipios` VALUES(106, 'TOLUCA', 15, 0);
INSERT INTO `municipios` VALUES(107, 'TONATICO', 15, 0);
INSERT INTO `municipios` VALUES(108, 'TULTEPEC', 15, 0);
INSERT INTO `municipios` VALUES(109, 'TULTITLAN', 15, 0);
INSERT INTO `municipios` VALUES(110, 'VALLE DE BRAVO', 15, 0);
INSERT INTO `municipios` VALUES(111, 'VILLA DE ALLENDE', 15, 0);
INSERT INTO `municipios` VALUES(112, 'VILLA DEL CARBON', 15, 0);
INSERT INTO `municipios` VALUES(113, 'VILLA GUERRERO', 15, 0);
INSERT INTO `municipios` VALUES(114, 'VILLA VICTORIA', 15, 0);
INSERT INTO `municipios` VALUES(115, 'XONACATLAN', 15, 0);
INSERT INTO `municipios` VALUES(116, 'ZACAZONAPAN', 15, 0);
INSERT INTO `municipios` VALUES(117, 'ZACUALPAN', 15, 0);
INSERT INTO `municipios` VALUES(118, 'ZINACANTEPEC', 15, 0);
INSERT INTO `municipios` VALUES(119, 'ZUMPAHUACAN', 15, 0);
INSERT INTO `municipios` VALUES(120, 'ZUMPANGO', 15, 0);
INSERT INTO `municipios` VALUES(121, 'CUAUTITLAN IZCALLI', 15, 0);
INSERT INTO `municipios` VALUES(122, 'VALLE DE CHALCO SOLIDARIDAD', 15, 0);
INSERT INTO `municipios` VALUES(123, 'LUVIANOS', 15, 0);
INSERT INTO `municipios` VALUES(124, 'SAN JOSE DEL RINCON', 15, 0);
INSERT INTO `municipios` VALUES(572, 'TONANITLA', 15, 0);
INSERT INTO `municipios` VALUES(1, 'ACUITZIO', 16, 0);
INSERT INTO `municipios` VALUES(2, 'AGUILILLA', 16, 0);
INSERT INTO `municipios` VALUES(3, 'ALVARO OBREGON', 16, 0);
INSERT INTO `municipios` VALUES(4, 'ANGAMACUTIRO', 16, 0);
INSERT INTO `municipios` VALUES(5, 'ANGANGUEO', 16, 0);
INSERT INTO `municipios` VALUES(6, 'APATZINGAN', 16, 0);
INSERT INTO `municipios` VALUES(7, 'APORO', 16, 0);
INSERT INTO `municipios` VALUES(8, 'AQUILA', 16, 0);
INSERT INTO `municipios` VALUES(9, 'ARIO', 16, 0);
INSERT INTO `municipios` VALUES(10, 'ARTEAGA', 16, 0);
INSERT INTO `municipios` VALUES(11, 'BRISE&AS', 16, 0);
INSERT INTO `municipios` VALUES(12, 'BUENAVISTA', 16, 0);
INSERT INTO `municipios` VALUES(13, 'CARACUARO', 16, 0);
INSERT INTO `municipios` VALUES(14, 'COAHUAYANA', 16, 0);
INSERT INTO `municipios` VALUES(15, 'COALCOMAN', 16, 0);
INSERT INTO `municipios` VALUES(16, 'COENEO', 16, 0);
INSERT INTO `municipios` VALUES(17, 'CONTEPEC', 16, 0);
INSERT INTO `municipios` VALUES(18, 'COPANDARO', 16, 0);
INSERT INTO `municipios` VALUES(19, 'COTIJA', 16, 0);
INSERT INTO `municipios` VALUES(20, 'CUITZEO', 16, 0);
INSERT INTO `municipios` VALUES(21, 'CHARAPAN', 16, 0);
INSERT INTO `municipios` VALUES(22, 'CHARO', 16, 0);
INSERT INTO `municipios` VALUES(23, 'CHAVINDA', 16, 0);
INSERT INTO `municipios` VALUES(24, 'CHERAN', 16, 0);
INSERT INTO `municipios` VALUES(25, 'CHILCHOTA', 16, 0);
INSERT INTO `municipios` VALUES(26, 'CHINICUILA', 16, 0);
INSERT INTO `municipios` VALUES(27, 'CHUCANDIRO', 16, 0);
INSERT INTO `municipios` VALUES(28, 'CHURINTZIO', 16, 0);
INSERT INTO `municipios` VALUES(29, 'CHURUMUCO', 16, 0);
INSERT INTO `municipios` VALUES(30, 'ECUANDUREO', 16, 0);
INSERT INTO `municipios` VALUES(31, 'EPITACIO HUERTA', 16, 0);
INSERT INTO `municipios` VALUES(32, 'ERONGARICUARO', 16, 0);
INSERT INTO `municipios` VALUES(33, 'GABRIEL ZAMORA', 16, 0);
INSERT INTO `municipios` VALUES(34, 'HIDALGO', 16, 0);
INSERT INTO `municipios` VALUES(35, 'LA HUACANA', 16, 0);
INSERT INTO `municipios` VALUES(36, 'HUANDACAREO', 16, 0);
INSERT INTO `municipios` VALUES(37, 'HUANIQUEO', 16, 0);
INSERT INTO `municipios` VALUES(38, 'HUETAMO', 16, 0);
INSERT INTO `municipios` VALUES(39, 'HUIRAMBA', 16, 0);
INSERT INTO `municipios` VALUES(40, 'INDAPARAPEO', 16, 0);
INSERT INTO `municipios` VALUES(41, 'IRIMBO', 16, 0);
INSERT INTO `municipios` VALUES(42, 'IXTLAN', 16, 0);
INSERT INTO `municipios` VALUES(43, 'JACONA', 16, 0);
INSERT INTO `municipios` VALUES(44, 'JIMENEZ', 16, 0);
INSERT INTO `municipios` VALUES(45, 'JIQUILPAN', 16, 0);
INSERT INTO `municipios` VALUES(46, 'JUAREZ', 16, 0);
INSERT INTO `municipios` VALUES(47, 'JUNGAPEO', 16, 0);
INSERT INTO `municipios` VALUES(48, 'LAGUNILLAS', 16, 0);
INSERT INTO `municipios` VALUES(49, 'MADERO', 16, 0);
INSERT INTO `municipios` VALUES(50, 'MARAVATIO', 16, 0);
INSERT INTO `municipios` VALUES(51, 'MARCOS CASTELLANOS', 16, 0);
INSERT INTO `municipios` VALUES(52, 'LAZARO CARDENAS', 16, 0);
INSERT INTO `municipios` VALUES(53, 'MORELIA', 16, 0);
INSERT INTO `municipios` VALUES(54, 'MORELOS', 16, 0);
INSERT INTO `municipios` VALUES(55, 'MUGICA', 16, 0);
INSERT INTO `municipios` VALUES(56, 'NAHUATZEN', 16, 0);
INSERT INTO `municipios` VALUES(57, 'NOCUPETARO', 16, 0);
INSERT INTO `municipios` VALUES(58, 'NUEVO PARANGARICUTIRO', 16, 0);
INSERT INTO `municipios` VALUES(59, 'NUEVO URECHO', 16, 0);
INSERT INTO `municipios` VALUES(60, 'NUMARAN', 16, 0);
INSERT INTO `municipios` VALUES(61, 'OCAMPO', 16, 0);
INSERT INTO `municipios` VALUES(62, 'PAJACUARAN', 16, 0);
INSERT INTO `municipios` VALUES(63, 'PANINDICUARO', 16, 0);
INSERT INTO `municipios` VALUES(64, 'PARACUARO', 16, 0);
INSERT INTO `municipios` VALUES(65, 'PARACHO', 16, 0);
INSERT INTO `municipios` VALUES(66, 'PATZCUARO', 16, 0);
INSERT INTO `municipios` VALUES(67, 'PENJAMILLO', 16, 0);
INSERT INTO `municipios` VALUES(68, 'PERIBAN', 16, 0);
INSERT INTO `municipios` VALUES(69, 'LA PIEDAD', 16, 0);
INSERT INTO `municipios` VALUES(70, 'PUREPERO', 16, 0);
INSERT INTO `municipios` VALUES(71, 'PURUANDIRO', 16, 0);
INSERT INTO `municipios` VALUES(72, 'QUERENDARO', 16, 0);
INSERT INTO `municipios` VALUES(73, 'QUIROGA', 16, 0);
INSERT INTO `municipios` VALUES(74, 'COJUMATLAN DE REGULES', 16, 0);
INSERT INTO `municipios` VALUES(75, 'LOS REYES', 16, 0);
INSERT INTO `municipios` VALUES(76, 'SAHUAYO', 16, 0);
INSERT INTO `municipios` VALUES(77, 'SAN LUCAS', 16, 0);
INSERT INTO `municipios` VALUES(78, 'SANTA ANA MAYA', 16, 0);
INSERT INTO `municipios` VALUES(79, 'SALVADOR ESCALANTE', 16, 0);
INSERT INTO `municipios` VALUES(80, 'SENGUIO', 16, 0);
INSERT INTO `municipios` VALUES(81, 'SUSUPUATO', 16, 0);
INSERT INTO `municipios` VALUES(82, 'TACAMBARO', 16, 0);
INSERT INTO `municipios` VALUES(83, 'TANCITARO', 16, 0);
INSERT INTO `municipios` VALUES(84, 'TANGAMANDAPIO', 16, 0);
INSERT INTO `municipios` VALUES(85, 'TANGANCICUARO', 16, 0);
INSERT INTO `municipios` VALUES(86, 'TANHUATO', 16, 0);
INSERT INTO `municipios` VALUES(87, 'TARETAN', 16, 0);
INSERT INTO `municipios` VALUES(88, 'TARIMBARO', 16, 0);
INSERT INTO `municipios` VALUES(89, 'TEPALCATEPEC', 16, 0);
INSERT INTO `municipios` VALUES(90, 'TINGAMBATO', 16, 0);
INSERT INTO `municipios` VALUES(91, 'TINGUINDIN', 16, 0);
INSERT INTO `municipios` VALUES(92, 'TIQUICHEO DE NICOLAS ROMERO', 16, 0);
INSERT INTO `municipios` VALUES(93, 'TLALPUJAHUA', 16, 0);
INSERT INTO `municipios` VALUES(94, 'TLAZAZALCA', 16, 0);
INSERT INTO `municipios` VALUES(95, 'TOCUMBO', 16, 0);
INSERT INTO `municipios` VALUES(96, 'TUMBISCATIO', 16, 0);
INSERT INTO `municipios` VALUES(97, 'TURICATO', 16, 0);
INSERT INTO `municipios` VALUES(98, 'TUXPAN', 16, 0);
INSERT INTO `municipios` VALUES(99, 'TUZANTLA', 16, 0);
INSERT INTO `municipios` VALUES(100, 'TZINTZUNTZAN', 16, 0);
INSERT INTO `municipios` VALUES(101, 'TZITZIO', 16, 0);
INSERT INTO `municipios` VALUES(102, 'URUAPAN', 16, 0);
INSERT INTO `municipios` VALUES(103, 'VENUSTIANO CARRANZA', 16, 0);
INSERT INTO `municipios` VALUES(104, 'VILLAMAR', 16, 0);
INSERT INTO `municipios` VALUES(105, 'VISTA HERMOSA', 16, 0);
INSERT INTO `municipios` VALUES(106, 'YURECUARO', 16, 0);
INSERT INTO `municipios` VALUES(107, 'ZACAPU', 16, 0);
INSERT INTO `municipios` VALUES(108, 'ZAMORA', 16, 0);
INSERT INTO `municipios` VALUES(109, 'ZINAPARO', 16, 0);
INSERT INTO `municipios` VALUES(110, 'ZINAPECUARO', 16, 0);
INSERT INTO `municipios` VALUES(111, 'ZIRACUARETIRO', 16, 0);
INSERT INTO `municipios` VALUES(112, 'ZITACUARO', 16, 0);
INSERT INTO `municipios` VALUES(113, 'JOSE SIXTO VERDUZCO', 16, 0);
INSERT INTO `municipios` VALUES(1, 'AMACUZAC', 17, 0);
INSERT INTO `municipios` VALUES(2, 'ATLATLAHUCAN', 17, 0);
INSERT INTO `municipios` VALUES(3, 'AXOCHIAPAN', 17, 0);
INSERT INTO `municipios` VALUES(4, 'AYALA', 17, 0);
INSERT INTO `municipios` VALUES(5, 'COATLAN DEL RIO', 17, 0);
INSERT INTO `municipios` VALUES(6, 'CUAUTLA', 17, 0);
INSERT INTO `municipios` VALUES(7, 'CUERNAVACA', 17, 0);
INSERT INTO `municipios` VALUES(8, 'EMILIANO ZAPATA', 17, 0);
INSERT INTO `municipios` VALUES(9, 'HUITZILAC', 17, 0);
INSERT INTO `municipios` VALUES(10, 'JANTETELCO', 17, 0);
INSERT INTO `municipios` VALUES(11, 'JIUTEPEC', 17, 0);
INSERT INTO `municipios` VALUES(12, 'JOJUTLA', 17, 0);
INSERT INTO `municipios` VALUES(13, 'JONACATEPEC', 17, 0);
INSERT INTO `municipios` VALUES(14, 'MAZATEPEC', 17, 0);
INSERT INTO `municipios` VALUES(15, 'MIACATLAN', 17, 0);
INSERT INTO `municipios` VALUES(16, 'OCUITUCO', 17, 0);
INSERT INTO `municipios` VALUES(17, 'PUENTE DE IXTLA', 17, 0);
INSERT INTO `municipios` VALUES(18, 'TEMIXCO', 17, 0);
INSERT INTO `municipios` VALUES(19, 'TEPALCINGO', 17, 0);
INSERT INTO `municipios` VALUES(20, 'TEPOZTLAN', 17, 0);
INSERT INTO `municipios` VALUES(21, 'TETECALA', 17, 0);
INSERT INTO `municipios` VALUES(22, 'TETELA DEL VOLCAN', 17, 0);
INSERT INTO `municipios` VALUES(23, 'TLALNEPANTLA', 17, 0);
INSERT INTO `municipios` VALUES(24, 'TLALTIZAPAN', 17, 0);
INSERT INTO `municipios` VALUES(25, 'TLAQUILTENANGO', 17, 0);
INSERT INTO `municipios` VALUES(26, 'TLAYACAPAN', 17, 0);
INSERT INTO `municipios` VALUES(27, 'TOTOLAPAN', 17, 0);
INSERT INTO `municipios` VALUES(28, 'XOCHITEPEC', 17, 0);
INSERT INTO `municipios` VALUES(29, 'YAUTEPEC', 17, 0);
INSERT INTO `municipios` VALUES(30, 'YECAPIXTLA', 17, 0);
INSERT INTO `municipios` VALUES(31, 'ZACATEPEC', 17, 0);
INSERT INTO `municipios` VALUES(32, 'ZACUALPAN', 17, 0);
INSERT INTO `municipios` VALUES(33, 'TEMOAC', 17, 0);
INSERT INTO `municipios` VALUES(1, 'ACAPONETA', 18, 0);
INSERT INTO `municipios` VALUES(2, 'AHUACATLAN', 18, 0);
INSERT INTO `municipios` VALUES(3, 'AMATLAN DE CA&AS', 18, 0);
INSERT INTO `municipios` VALUES(4, 'COMPOSTELA', 18, 0);
INSERT INTO `municipios` VALUES(5, 'HUAJICORI', 18, 0);
INSERT INTO `municipios` VALUES(6, 'IXTLAN DEL RIO', 18, 0);
INSERT INTO `municipios` VALUES(7, 'JALA', 18, 0);
INSERT INTO `municipios` VALUES(8, 'XALISCO', 18, 0);
INSERT INTO `municipios` VALUES(9, 'EL NAYAR', 18, 0);
INSERT INTO `municipios` VALUES(10, 'ROSAMORADA', 18, 0);
INSERT INTO `municipios` VALUES(11, 'RUIZ', 18, 0);
INSERT INTO `municipios` VALUES(12, 'SAN BLAS', 18, 0);
INSERT INTO `municipios` VALUES(13, 'SAN PEDRO LAGUNILLAS', 18, 0);
INSERT INTO `municipios` VALUES(14, 'SANTA MARIA DEL ORO', 18, 0);
INSERT INTO `municipios` VALUES(15, 'SANTIAGO IXCUINTLA', 18, 0);
INSERT INTO `municipios` VALUES(16, 'TECUALA', 18, 0);
INSERT INTO `municipios` VALUES(17, 'TEPIC', 18, 0);
INSERT INTO `municipios` VALUES(18, 'TUXPAN', 18, 0);
INSERT INTO `municipios` VALUES(19, 'LA YESCA', 18, 0);
INSERT INTO `municipios` VALUES(20, 'BAHIA DE BANDERAS', 18, 0);
INSERT INTO `municipios` VALUES(1, 'ABASOLO', 19, 0);
INSERT INTO `municipios` VALUES(2, 'AGUALEGUAS', 19, 0);
INSERT INTO `municipios` VALUES(3, 'LOS ALDAMAS', 19, 0);
INSERT INTO `municipios` VALUES(4, 'ALLENDE', 19, 0);
INSERT INTO `municipios` VALUES(5, 'ANAHUAC', 19, 0);
INSERT INTO `municipios` VALUES(6, 'APODACA', 19, 0);
INSERT INTO `municipios` VALUES(7, 'ARAMBERRI', 19, 0);
INSERT INTO `municipios` VALUES(8, 'BUSTAMANTE', 19, 0);
INSERT INTO `municipios` VALUES(9, 'CADEREYTA JIMENEZ', 19, 0);
INSERT INTO `municipios` VALUES(10, 'CARMEN', 19, 0);
INSERT INTO `municipios` VALUES(11, 'CERRALVO', 19, 0);
INSERT INTO `municipios` VALUES(12, 'CIENEGA DE FLORES', 19, 0);
INSERT INTO `municipios` VALUES(13, 'CHINA', 19, 0);
INSERT INTO `municipios` VALUES(14, 'DOCTOR ARROYO', 19, 0);
INSERT INTO `municipios` VALUES(15, 'DOCTOR COSS', 19, 0);
INSERT INTO `municipios` VALUES(16, 'DOCTOR GONZALEZ', 19, 0);
INSERT INTO `municipios` VALUES(17, 'GALEANA', 19, 0);
INSERT INTO `municipios` VALUES(18, 'GARCIA', 19, 0);
INSERT INTO `municipios` VALUES(19, 'SAN PEDRO GARZA GARCIA', 19, 0);
INSERT INTO `municipios` VALUES(20, 'GENERAL BRAVO', 19, 0);
INSERT INTO `municipios` VALUES(21, 'GENERAL ESCOBEDO', 19, 0);
INSERT INTO `municipios` VALUES(22, 'GENERAL TERAN', 19, 0);
INSERT INTO `municipios` VALUES(23, 'GENERAL TREVI&O', 19, 0);
INSERT INTO `municipios` VALUES(24, 'GENERAL ZARAGOZA', 19, 0);
INSERT INTO `municipios` VALUES(25, 'GENERAL ZUAZUA', 19, 0);
INSERT INTO `municipios` VALUES(26, 'GUADALUPE', 19, 0);
INSERT INTO `municipios` VALUES(27, 'LOS HERRERAS', 19, 0);
INSERT INTO `municipios` VALUES(28, 'HIGUERAS', 19, 0);
INSERT INTO `municipios` VALUES(29, 'HUALAHUISES', 19, 0);
INSERT INTO `municipios` VALUES(30, 'ITURBIDE', 19, 0);
INSERT INTO `municipios` VALUES(31, 'JUAREZ', 19, 0);
INSERT INTO `municipios` VALUES(32, 'LAMPAZOS DE NARANJO', 19, 0);
INSERT INTO `municipios` VALUES(33, 'LINARES', 19, 0);
INSERT INTO `municipios` VALUES(34, 'MARIN', 19, 0);
INSERT INTO `municipios` VALUES(35, 'MELCHOR OCAMPO', 19, 0);
INSERT INTO `municipios` VALUES(36, 'MIER Y NORIEGA', 19, 0);
INSERT INTO `municipios` VALUES(37, 'MINA', 19, 0);
INSERT INTO `municipios` VALUES(38, 'MONTEMORELOS', 19, 0);
INSERT INTO `municipios` VALUES(39, 'MONTERREY', 19, 0);
INSERT INTO `municipios` VALUES(40, 'PARAS', 19, 0);
INSERT INTO `municipios` VALUES(41, 'PESQUERIA', 19, 0);
INSERT INTO `municipios` VALUES(42, 'LOS RAMONES', 19, 0);
INSERT INTO `municipios` VALUES(43, 'RAYONES', 19, 0);
INSERT INTO `municipios` VALUES(44, 'SABINAS HIDALGO', 19, 0);
INSERT INTO `municipios` VALUES(45, 'SALINAS VICTORIA', 19, 0);
INSERT INTO `municipios` VALUES(46, 'SAN NICOLAS DE LOS GARZA', 19, 0);
INSERT INTO `municipios` VALUES(47, 'HIDALGO', 19, 0);
INSERT INTO `municipios` VALUES(48, 'SANTA CATARINA', 19, 0);
INSERT INTO `municipios` VALUES(49, 'SANTIAGO', 19, 0);
INSERT INTO `municipios` VALUES(50, 'VALLECILLO', 19, 0);
INSERT INTO `municipios` VALUES(51, 'VILLALDAMA', 19, 0);
INSERT INTO `municipios` VALUES(1, 'ABEJONES', 20, 0);
INSERT INTO `municipios` VALUES(2, 'ACATLAN DE PEREZ FIGUEROA', 20, 0);
INSERT INTO `municipios` VALUES(3, 'ASUNCION CACALOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(4, 'ASUNCION CUYOTEPEJI', 20, 0);
INSERT INTO `municipios` VALUES(5, 'ASUNCION IXTALTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(6, 'ASUNCION NOCHIXTLAN', 20, 0);
INSERT INTO `municipios` VALUES(7, 'ASUNCION OCOTLAN', 20, 0);
INSERT INTO `municipios` VALUES(8, 'ASUNCION TLACOLULITA', 20, 0);
INSERT INTO `municipios` VALUES(9, 'AYOTZINTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(10, 'EL BARRIO DE LA SOLEDAD', 20, 0);
INSERT INTO `municipios` VALUES(11, 'CALIHUALA', 20, 0);
INSERT INTO `municipios` VALUES(12, 'CANDELARIA LOXICHA', 20, 0);
INSERT INTO `municipios` VALUES(13, 'CIENEGA DE ZIMATLAN (LA CIENE', 20, 0);
INSERT INTO `municipios` VALUES(14, 'CIUDAD IXTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(15, 'COATECAS ALTAS', 20, 0);
INSERT INTO `municipios` VALUES(16, 'COICOYAN DE LAS FLORES', 20, 0);
INSERT INTO `municipios` VALUES(17, 'LA COMPA&IA', 20, 0);
INSERT INTO `municipios` VALUES(18, 'CONCEPCION BUENAVISTA', 20, 0);
INSERT INTO `municipios` VALUES(19, 'CONCEPCION PAPALO', 20, 0);
INSERT INTO `municipios` VALUES(20, 'CONSTANCIA DEL ROSARIO', 20, 0);
INSERT INTO `municipios` VALUES(21, 'COSOLAPA', 20, 0);
INSERT INTO `municipios` VALUES(22, 'COSOLTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(23, 'CUILAPAN DE GUERRERO', 20, 0);
INSERT INTO `municipios` VALUES(24, 'CUYAMECALCO VILLA DE ZARAGOZA', 20, 0);
INSERT INTO `municipios` VALUES(25, 'CHAHUITES', 20, 0);
INSERT INTO `municipios` VALUES(26, 'CHALCATONGO DE HIDALGO', 20, 0);
INSERT INTO `municipios` VALUES(27, 'SAN JUAN CHIQUIHUITLAN', 20, 0);
INSERT INTO `municipios` VALUES(28, 'EJUTLA DE CRESPO', 20, 0);
INSERT INTO `municipios` VALUES(29, 'ELOXOCHITLAN DE FLORES MAGON', 20, 0);
INSERT INTO `municipios` VALUES(30, 'EL ESPINAL', 20, 0);
INSERT INTO `municipios` VALUES(31, 'TAMAZULAPAM DEL ESPIRITU SANTO', 20, 0);
INSERT INTO `municipios` VALUES(32, 'FRESNILLO DE TRUJANO', 20, 0);
INSERT INTO `municipios` VALUES(33, 'GUADALUPE ETLA', 20, 0);
INSERT INTO `municipios` VALUES(34, 'GUADALUPE RAMIREZ', 20, 0);
INSERT INTO `municipios` VALUES(35, 'GUELATAO DE JUAREZ', 20, 0);
INSERT INTO `municipios` VALUES(36, 'GUEVEA DE HUMBOLDT', 20, 0);
INSERT INTO `municipios` VALUES(37, 'MESONES HIDALGO', 20, 0);
INSERT INTO `municipios` VALUES(38, 'VILLA HIDALGO', 20, 0);
INSERT INTO `municipios` VALUES(39, 'HUAJUAPAM DE LEON', 20, 0);
INSERT INTO `municipios` VALUES(40, 'HUAUTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(41, 'HUAUTLA DE JIMENEZ', 20, 0);
INSERT INTO `municipios` VALUES(42, 'IXTLAN DE JUAREZ', 20, 0);
INSERT INTO `municipios` VALUES(43, 'JUCHITAN DE ZARAGOZA', 20, 0);
INSERT INTO `municipios` VALUES(44, 'LOMA BONITA', 20, 0);
INSERT INTO `municipios` VALUES(45, 'MAGDALENA APASCO', 20, 0);
INSERT INTO `municipios` VALUES(46, 'MAGDALENA JALTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(47, 'SANTA MAGDALENA JICOTLAN', 20, 0);
INSERT INTO `municipios` VALUES(48, 'MAGDALENA MIXTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(49, 'MAGDALENA OCOTLAN', 20, 0);
INSERT INTO `municipios` VALUES(50, 'MAGDALENA PE&ASCO', 20, 0);
INSERT INTO `municipios` VALUES(51, 'MAGDALENA TEITIPAC', 20, 0);
INSERT INTO `municipios` VALUES(52, 'MAGDALENA TEQUISISTLAN', 20, 0);
INSERT INTO `municipios` VALUES(53, 'MAGDALENA TLACOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(54, 'MAGDALENA ZAHUATLAN', 20, 0);
INSERT INTO `municipios` VALUES(55, 'MARISCALA DE JUAREZ', 20, 0);
INSERT INTO `municipios` VALUES(56, 'MARTIRES DE TACUBAYA', 20, 0);
INSERT INTO `municipios` VALUES(57, 'MATIAS ROMERO', 20, 0);
INSERT INTO `municipios` VALUES(58, 'MAZATLAN DE FLORES', 20, 0);
INSERT INTO `municipios` VALUES(59, 'MIAHUATLAN DE PORFIRIO DIAZ', 20, 0);
INSERT INTO `municipios` VALUES(60, 'MIXISTLAN DE LA REFORMA', 20, 0);
INSERT INTO `municipios` VALUES(61, 'MONJAS', 20, 0);
INSERT INTO `municipios` VALUES(62, 'NATIVIDAD', 20, 0);
INSERT INTO `municipios` VALUES(63, 'NAZARENO ETLA', 20, 0);
INSERT INTO `municipios` VALUES(64, 'NEJAPA DE MADERO', 20, 0);
INSERT INTO `municipios` VALUES(65, 'IXPANTEPEC NIEVES', 20, 0);
INSERT INTO `municipios` VALUES(66, 'SANTIAGO NILTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(67, 'OAXACA DE JUAREZ', 20, 0);
INSERT INTO `municipios` VALUES(68, 'OCOTLAN DE MORELOS', 20, 0);
INSERT INTO `municipios` VALUES(69, 'LA PE', 20, 0);
INSERT INTO `municipios` VALUES(70, 'PINOTEPA DE DON LUIS', 20, 0);
INSERT INTO `municipios` VALUES(71, 'PLUMA HIDALGO', 20, 0);
INSERT INTO `municipios` VALUES(72, 'SAN JOSE DEL PROGRESO', 20, 0);
INSERT INTO `municipios` VALUES(73, 'PUTLA VILLA DE GUERRERO', 20, 0);
INSERT INTO `municipios` VALUES(74, 'SANTA CATARINA QUIOQUITANI', 20, 0);
INSERT INTO `municipios` VALUES(75, 'REFORMA DE PINEDA', 20, 0);
INSERT INTO `municipios` VALUES(76, 'LA REFORMA', 20, 0);
INSERT INTO `municipios` VALUES(77, 'REYES ETLA', 20, 0);
INSERT INTO `municipios` VALUES(78, 'ROJAS DE CUAUHTEMOC', 20, 0);
INSERT INTO `municipios` VALUES(79, 'SALINA CRUZ', 20, 0);
INSERT INTO `municipios` VALUES(80, 'SAN AGUSTIN AMATENGO', 20, 0);
INSERT INTO `municipios` VALUES(81, 'SAN AGUSTIN ATENANGO', 20, 0);
INSERT INTO `municipios` VALUES(82, 'SAN AGUSTIN CHAYUCO', 20, 0);
INSERT INTO `municipios` VALUES(83, 'SAN AGUSTIN DE LAS JUNTAS', 20, 0);
INSERT INTO `municipios` VALUES(84, 'SAN AGUSTIN ETLA', 20, 0);
INSERT INTO `municipios` VALUES(85, 'SAN AGUSTIN LOXICHA', 20, 0);
INSERT INTO `municipios` VALUES(86, 'SAN AGUSTIN TLACOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(87, 'SAN AGUSTIN YATARENI', 20, 0);
INSERT INTO `municipios` VALUES(88, 'SAN ANDRES CABECERA NUEVA', 20, 0);
INSERT INTO `municipios` VALUES(89, 'SAN ANDRES DINICUITI', 20, 0);
INSERT INTO `municipios` VALUES(90, 'SAN ANDRES HUAXPALTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(91, 'SAN ANDRES HUAYAPAM', 20, 0);
INSERT INTO `municipios` VALUES(92, 'SAN ANDRES IXTLAHUACA', 20, 0);
INSERT INTO `municipios` VALUES(93, 'SAN ANDRES LAGUNAS', 20, 0);
INSERT INTO `municipios` VALUES(94, 'SAN ANDRES NUXI&O', 20, 0);
INSERT INTO `municipios` VALUES(95, 'SAN ANDRES PAXTLAN', 20, 0);
INSERT INTO `municipios` VALUES(96, 'SAN ANDRES SINAXTLA', 20, 0);
INSERT INTO `municipios` VALUES(97, 'SAN ANDRES SOLAGA', 20, 0);
INSERT INTO `municipios` VALUES(98, 'SAN ANDRES TEOTILALPAM', 20, 0);
INSERT INTO `municipios` VALUES(99, 'SAN ANDRES TEPETLAPA', 20, 0);
INSERT INTO `municipios` VALUES(100, 'SAN ANDRES YAA', 20, 0);
INSERT INTO `municipios` VALUES(101, 'SAN ANDRES ZABACHE', 20, 0);
INSERT INTO `municipios` VALUES(102, 'SAN ANDRES ZAUTLA', 20, 0);
INSERT INTO `municipios` VALUES(103, 'SAN ANTONINO CASTILLO VELASCO', 20, 0);
INSERT INTO `municipios` VALUES(104, 'SAN ANTONINO EL ALTO', 20, 0);
INSERT INTO `municipios` VALUES(105, 'SAN ANTONINO MONTE VERDE', 20, 0);
INSERT INTO `municipios` VALUES(106, 'SAN ANTONIO ACUTLA', 20, 0);
INSERT INTO `municipios` VALUES(107, 'SAN ANTONIO DE LA CAL', 20, 0);
INSERT INTO `municipios` VALUES(108, 'SAN ANTONIO HUITEPEC', 20, 0);
INSERT INTO `municipios` VALUES(109, 'SAN ANTONIO NANAHUATIPAM', 20, 0);
INSERT INTO `municipios` VALUES(110, 'SAN ANTONIO SINICAHUA', 20, 0);
INSERT INTO `municipios` VALUES(111, 'SAN ANTONIO TEPETLAPA', 20, 0);
INSERT INTO `municipios` VALUES(112, 'SAN BALTAZAR CHICHICAPAM', 20, 0);
INSERT INTO `municipios` VALUES(113, 'SAN BALTAZAR LOXICHA', 20, 0);
INSERT INTO `municipios` VALUES(114, 'SAN BALTAZAR YATZACHI EL BAJO', 20, 0);
INSERT INTO `municipios` VALUES(115, 'SAN BARTOLO COYOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(116, 'SAN BARTOLOME AYAUTLA', 20, 0);
INSERT INTO `municipios` VALUES(117, 'SAN BARTOLOME LOXICHA', 20, 0);
INSERT INTO `municipios` VALUES(118, 'SAN BARTOLOME QUIALANA', 20, 0);
INSERT INTO `municipios` VALUES(119, 'SAN BARTOLOME YUCUA&E', 20, 0);
INSERT INTO `municipios` VALUES(120, 'SAN BARTOLOME ZOOGOCHO', 20, 0);
INSERT INTO `municipios` VALUES(121, 'SAN BARTOLO SOYALTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(122, 'SAN BARTOLO YAUTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(123, 'SAN BERNARDO MIXTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(124, 'SAN BLAS ATEMPA', 20, 0);
INSERT INTO `municipios` VALUES(125, 'SAN CARLOS YAUTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(126, 'SAN CRISTOBAL AMATLAN', 20, 0);
INSERT INTO `municipios` VALUES(127, 'SAN CRISTOBAL AMOLTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(128, 'SAN CRISTOBAL LACHIRIOAG', 20, 0);
INSERT INTO `municipios` VALUES(129, 'SAN CRISTOBAL SUCHIXTLAHUACA', 20, 0);
INSERT INTO `municipios` VALUES(130, 'SAN DIONISIO DEL MAR', 20, 0);
INSERT INTO `municipios` VALUES(131, 'SAN DIONISIO OCOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(132, 'SAN DIONISIO OCOTLAN', 20, 0);
INSERT INTO `municipios` VALUES(133, 'SAN ESTEBAN ATATLAHUCA', 20, 0);
INSERT INTO `municipios` VALUES(134, 'SAN FELIPE JALAPA DE DIAZ', 20, 0);
INSERT INTO `municipios` VALUES(135, 'SAN FELIPE TEJALAPAM', 20, 0);
INSERT INTO `municipios` VALUES(136, 'SAN FELIPE USILA', 20, 0);
INSERT INTO `municipios` VALUES(137, 'SAN FRANCISCO CAHUACUA', 20, 0);
INSERT INTO `municipios` VALUES(138, 'SAN FRANCISCO CAJONOS', 20, 0);
INSERT INTO `municipios` VALUES(139, 'SAN FRANCISCO CHAPULAPA', 20, 0);
INSERT INTO `municipios` VALUES(140, 'SAN FRANCISCO CHINDUA', 20, 0);
INSERT INTO `municipios` VALUES(141, 'SAN FRANCISCO DEL MAR', 20, 0);
INSERT INTO `municipios` VALUES(142, 'SAN FRANCISCO HUEHUETLAN', 20, 0);
INSERT INTO `municipios` VALUES(143, 'SAN FRANCISCO IXHUATAN', 20, 0);
INSERT INTO `municipios` VALUES(144, 'SAN FRANCISCO JALTEPETONGO', 20, 0);
INSERT INTO `municipios` VALUES(145, 'SAN FRANCISCO LACHIGOLO', 20, 0);
INSERT INTO `municipios` VALUES(146, 'SAN FRANCISCO LOGUECHE', 20, 0);
INSERT INTO `municipios` VALUES(147, 'SAN FRANCISCO NUXA&O', 20, 0);
INSERT INTO `municipios` VALUES(148, 'SAN FRANCISCO OZOLOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(149, 'SAN FRANCISCO SOLA', 20, 0);
INSERT INTO `municipios` VALUES(150, 'SAN FRANCISCO TELIXTLAHUACA', 20, 0);
INSERT INTO `municipios` VALUES(151, 'SAN FRANCISCO TEOPAN', 20, 0);
INSERT INTO `municipios` VALUES(152, 'SAN FRANCISCO TLAPANCINGO', 20, 0);
INSERT INTO `municipios` VALUES(153, 'SAN GABRIEL MIXTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(154, 'SAN ILDEFONSO AMATLAN', 20, 0);
INSERT INTO `municipios` VALUES(155, 'SAN ILDEFONSO SOLA', 20, 0);
INSERT INTO `municipios` VALUES(156, 'SAN ILDEFONSO VILLA ALTA', 20, 0);
INSERT INTO `municipios` VALUES(157, 'SAN JACINTO AMILPAS', 20, 0);
INSERT INTO `municipios` VALUES(158, 'SAN JACINTO TLACOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(159, 'SAN JERONIMO COATLAN', 20, 0);
INSERT INTO `municipios` VALUES(160, 'SAN JERONIMO SILACAYOAPILLA', 20, 0);
INSERT INTO `municipios` VALUES(161, 'SAN JERONIMO SOSOLA', 20, 0);
INSERT INTO `municipios` VALUES(162, 'SAN JERONIMO TAVICHE', 20, 0);
INSERT INTO `municipios` VALUES(163, 'SAN JERONIMO TECOATL', 20, 0);
INSERT INTO `municipios` VALUES(164, 'SAN JORGE NUCHITA', 20, 0);
INSERT INTO `municipios` VALUES(165, 'SAN JOSE AYUQUILA', 20, 0);
INSERT INTO `municipios` VALUES(166, 'SAN JOSE CHILTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(167, 'SAN JOSE DEL PE&ASCO', 20, 0);
INSERT INTO `municipios` VALUES(168, 'SAN JOSE ESTANCIA GRANDE', 20, 0);
INSERT INTO `municipios` VALUES(169, 'SAN JOSE INDEPENDENCIA', 20, 0);
INSERT INTO `municipios` VALUES(170, 'SAN JOSE LACHIGUIRI', 20, 0);
INSERT INTO `municipios` VALUES(171, 'SAN JOSE TENANGO', 20, 0);
INSERT INTO `municipios` VALUES(172, 'SAN JUAN ACHIUTLA', 20, 0);
INSERT INTO `municipios` VALUES(173, 'SAN JUAN ATEPEC', 20, 0);
INSERT INTO `municipios` VALUES(174, 'ANIMAS TRUJANO', 20, 0);
INSERT INTO `municipios` VALUES(175, 'SAN JUAN BAUTISTA ATATLAHUCA', 20, 0);
INSERT INTO `municipios` VALUES(176, 'SAN JUAN BAUTISTA COIXTLAHUACA', 20, 0);
INSERT INTO `municipios` VALUES(177, 'SAN JUAN BAUTISTA CUICATLAN', 20, 0);
INSERT INTO `municipios` VALUES(178, 'SAN JUAN BAUTISTA GUELACHE', 20, 0);
INSERT INTO `municipios` VALUES(179, 'SAN JUAN BAUTISTA JAYACATLAN', 20, 0);
INSERT INTO `municipios` VALUES(180, 'SAN JUAN BAUTISTA LO DE SOTO', 20, 0);
INSERT INTO `municipios` VALUES(181, 'SAN JUAN BAUTISTA SUCHITEPEC', 20, 0);
INSERT INTO `municipios` VALUES(182, 'SAN JUAN BAUTISTA TLACOATZINTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(183, 'SAN JUAN BAUTISTA TLACHICHILCO', 20, 0);
INSERT INTO `municipios` VALUES(184, 'SAN JUAN BAUTISTA TUXTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(185, 'SAN JUAN CACAHUATEPEC', 20, 0);
INSERT INTO `municipios` VALUES(186, 'SAN JUAN CIENEGUILLA', 20, 0);
INSERT INTO `municipios` VALUES(187, 'SAN JUAN COATZOSPAM', 20, 0);
INSERT INTO `municipios` VALUES(188, 'SAN JUAN COLORADO', 20, 0);
INSERT INTO `municipios` VALUES(189, 'SAN JUAN COMALTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(190, 'SAN JUAN COTZOCON', 20, 0);
INSERT INTO `municipios` VALUES(191, 'SAN JUAN CHICOMEZUCHIL', 20, 0);
INSERT INTO `municipios` VALUES(192, 'SAN JUAN CHILATECA', 20, 0);
INSERT INTO `municipios` VALUES(193, 'SAN JUAN DEL ESTADO', 20, 0);
INSERT INTO `municipios` VALUES(194, 'SAN JUAN DEL RIO', 20, 0);
INSERT INTO `municipios` VALUES(195, 'SAN JUAN DIUXI', 20, 0);
INSERT INTO `municipios` VALUES(196, 'SAN JUAN EVANGELISTA ANALCO', 20, 0);
INSERT INTO `municipios` VALUES(197, 'SAN JUAN GUELAVIA', 20, 0);
INSERT INTO `municipios` VALUES(198, 'SAN JUAN GUICHICOVI', 20, 0);
INSERT INTO `municipios` VALUES(199, 'SAN JUAN IHUALTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(200, 'SAN JUAN JUQUILA MIXES', 20, 0);
INSERT INTO `municipios` VALUES(201, 'SAN JUAN JUQUILA VIJANOS', 20, 0);
INSERT INTO `municipios` VALUES(202, 'SAN JUAN LACHAO', 20, 0);
INSERT INTO `municipios` VALUES(203, 'SAN JUAN LACHIGALLA', 20, 0);
INSERT INTO `municipios` VALUES(204, 'SAN JUAN LAJARCIA', 20, 0);
INSERT INTO `municipios` VALUES(205, 'SAN JUAN LALANA', 20, 0);
INSERT INTO `municipios` VALUES(206, 'SAN JUAN DE LOS CUES', 20, 0);
INSERT INTO `municipios` VALUES(207, 'SAN JUAN MAZATLAN', 20, 0);
INSERT INTO `municipios` VALUES(208, 'SAN JUAN MIXTEPEC JUXTLAHUACA', 20, 0);
INSERT INTO `municipios` VALUES(209, 'SAN JUAN MIXTEPEC MIAHUATLAN', 20, 0);
INSERT INTO `municipios` VALUES(210, 'SAN JUAN &UMI', 20, 0);
INSERT INTO `municipios` VALUES(211, 'SAN JUAN OZOLOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(212, 'SAN JUAN PETLAPA', 20, 0);
INSERT INTO `municipios` VALUES(213, 'SAN JUAN QUIAHIJE', 20, 0);
INSERT INTO `municipios` VALUES(214, 'SAN JUAN QUIOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(215, 'SAN JUAN SAYULTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(216, 'SAN JUAN TABAA', 20, 0);
INSERT INTO `municipios` VALUES(217, 'SAN JUAN TAMAZOLA', 20, 0);
INSERT INTO `municipios` VALUES(218, 'SAN JUAN TEITA', 20, 0);
INSERT INTO `municipios` VALUES(219, 'SAN JUAN TEITIPAC', 20, 0);
INSERT INTO `municipios` VALUES(220, 'SAN JUAN TEPEUXILA', 20, 0);
INSERT INTO `municipios` VALUES(221, 'SAN JUAN TEPOSCOLULA', 20, 0);
INSERT INTO `municipios` VALUES(222, 'SAN JUAN YAE', 20, 0);
INSERT INTO `municipios` VALUES(223, 'SAN JUAN YATZONA', 20, 0);
INSERT INTO `municipios` VALUES(224, 'SAN JUAN YUCUITA', 20, 0);
INSERT INTO `municipios` VALUES(225, 'SAN LORENZO', 20, 0);
INSERT INTO `municipios` VALUES(226, 'SAN LORENZO ALBARRADAS', 20, 0);
INSERT INTO `municipios` VALUES(227, 'SAN LORENZO CACAOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(228, 'SAN LORENZO CUAUNECUILTITLA', 20, 0);
INSERT INTO `municipios` VALUES(229, 'SAN LORENZO TEXMELUCAN', 20, 0);
INSERT INTO `municipios` VALUES(230, 'SAN LORENZO VICTORIA', 20, 0);
INSERT INTO `municipios` VALUES(231, 'SAN LUCAS CAMOTLAN', 20, 0);
INSERT INTO `municipios` VALUES(232, 'SAN LUCAS OJITLAN', 20, 0);
INSERT INTO `municipios` VALUES(233, 'SAN LUCAS QUIAVINI', 20, 0);
INSERT INTO `municipios` VALUES(234, 'SAN LUCAS ZOQUIAPAM', 20, 0);
INSERT INTO `municipios` VALUES(235, 'SAN LUIS AMATLAN', 20, 0);
INSERT INTO `municipios` VALUES(236, 'SAN MARCIAL OZOLOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(237, 'SAN MARCOS ARTEAGA', 20, 0);
INSERT INTO `municipios` VALUES(238, 'SAN MARTIN DE LOS CANSECOS', 20, 0);
INSERT INTO `municipios` VALUES(239, 'SAN MARTIN HUAMELULPAM', 20, 0);
INSERT INTO `municipios` VALUES(240, 'SAN MARTIN ITUNYOSO', 20, 0);
INSERT INTO `municipios` VALUES(241, 'SAN MARTIN LACHILA', 20, 0);
INSERT INTO `municipios` VALUES(242, 'SAN MARTIN PERAS', 20, 0);
INSERT INTO `municipios` VALUES(243, 'SAN MARTIN TILCAJETE', 20, 0);
INSERT INTO `municipios` VALUES(244, 'SAN MARTIN TOXPALAN', 20, 0);
INSERT INTO `municipios` VALUES(245, 'SAN MARTIN ZACATEPEC', 20, 0);
INSERT INTO `municipios` VALUES(246, 'SAN MATEO CAJONOS', 20, 0);
INSERT INTO `municipios` VALUES(247, 'CAPULALPAM DE MENDEZ', 20, 0);
INSERT INTO `municipios` VALUES(248, 'SAN MATEO DEL MAR', 20, 0);
INSERT INTO `municipios` VALUES(249, 'SAN MATEO YOLOXOCHITLAN', 20, 0);
INSERT INTO `municipios` VALUES(250, 'SAN MATEO ETLATONGO', 20, 0);
INSERT INTO `municipios` VALUES(251, 'SAN MATEO NEJAPAM', 20, 0);
INSERT INTO `municipios` VALUES(252, 'SAN MATEO PE&ASCO', 20, 0);
INSERT INTO `municipios` VALUES(253, 'SAN MATEO PI&AS', 20, 0);
INSERT INTO `municipios` VALUES(254, 'SAN MATEO RIO HONDO', 20, 0);
INSERT INTO `municipios` VALUES(255, 'SAN MATEO SINDIHUI', 20, 0);
INSERT INTO `municipios` VALUES(256, 'SAN MATEO TLAPILTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(257, 'SAN MELCHOR BETAZA', 20, 0);
INSERT INTO `municipios` VALUES(258, 'SAN MIGUEL ACHIUTLA', 20, 0);
INSERT INTO `municipios` VALUES(259, 'SAN MIGUEL AHUEHUETITLAN', 20, 0);
INSERT INTO `municipios` VALUES(260, 'SAN MIGUEL ALOAPAM', 20, 0);
INSERT INTO `municipios` VALUES(261, 'SAN MIGUEL AMATITLAN', 20, 0);
INSERT INTO `municipios` VALUES(262, 'SAN MIGUEL AMATLAN', 20, 0);
INSERT INTO `municipios` VALUES(263, 'SAN MIGUEL COATLAN', 20, 0);
INSERT INTO `municipios` VALUES(264, 'SAN MIGUEL CHICAHUA', 20, 0);
INSERT INTO `municipios` VALUES(265, 'SAN MIGUEL CHIMALAPA', 20, 0);
INSERT INTO `municipios` VALUES(266, 'SAN MIGUEL DEL PUERTO', 20, 0);
INSERT INTO `municipios` VALUES(267, 'SAN MIGUEL DEL RIO', 20, 0);
INSERT INTO `municipios` VALUES(268, 'SAN MIGUEL EJUTLA', 20, 0);
INSERT INTO `municipios` VALUES(269, 'SAN MIGUEL EL GRANDE', 20, 0);
INSERT INTO `municipios` VALUES(270, 'SAN MIGUEL HUAUTLA', 20, 0);
INSERT INTO `municipios` VALUES(271, 'SAN MIGUEL MIXTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(272, 'SAN MIGUEL PANIXTLAHUACA', 20, 0);
INSERT INTO `municipios` VALUES(273, 'SAN MIGUEL PERAS', 20, 0);
INSERT INTO `municipios` VALUES(274, 'SAN MIGUEL PIEDRAS', 20, 0);
INSERT INTO `municipios` VALUES(275, 'SAN MIGUEL QUETZALTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(276, 'SAN MIGUEL SANTA FLOR', 20, 0);
INSERT INTO `municipios` VALUES(277, 'VILLA SOLA DE VEGA', 20, 0);
INSERT INTO `municipios` VALUES(278, 'NUEVO SOYALTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(279, 'SAN MIGUEL SUCHIXTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(280, 'SAN MIGUEL TALEA DE CASTRO', 20, 0);
INSERT INTO `municipios` VALUES(281, 'SAN MIGUEL TECOMATLAN', 20, 0);
INSERT INTO `municipios` VALUES(282, 'SAN MIGUEL TENANGO', 20, 0);
INSERT INTO `municipios` VALUES(283, 'SAN MIGUEL TEQUIXTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(284, 'SAN MIGUEL TILQUIAPAM', 20, 0);
INSERT INTO `municipios` VALUES(285, 'SAN MIGUEL TLACAMAMA', 20, 0);
INSERT INTO `municipios` VALUES(286, 'SAN MIGUEL TLACOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(287, 'SAN MIGUEL TULANCINGO', 20, 0);
INSERT INTO `municipios` VALUES(288, 'SAN MIGUEL YOTAO', 20, 0);
INSERT INTO `municipios` VALUES(289, 'SAN NICOLAS', 20, 0);
INSERT INTO `municipios` VALUES(290, 'SAN NICOLAS HIDALGO', 20, 0);
INSERT INTO `municipios` VALUES(291, 'SAN PABLO COATLAN', 20, 0);
INSERT INTO `municipios` VALUES(292, 'SAN PABLO CUATRO VENADOS', 20, 0);
INSERT INTO `municipios` VALUES(293, 'SAN PABLO ETLA', 20, 0);
INSERT INTO `municipios` VALUES(294, 'SAN PABLO HUITZO', 20, 0);
INSERT INTO `municipios` VALUES(295, 'SAN PABLO HUIXTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(296, 'SAN PABLO MACUILTIANGUIS', 20, 0);
INSERT INTO `municipios` VALUES(297, 'SAN PABLO TIJALTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(298, 'SAN PABLO VILLA DE MITLA', 20, 0);
INSERT INTO `municipios` VALUES(299, 'SAN PABLO YAGANIZA', 20, 0);
INSERT INTO `municipios` VALUES(300, 'SAN PEDRO AMUZGOS', 20, 0);
INSERT INTO `municipios` VALUES(301, 'SAN PEDRO APOSTOL', 20, 0);
INSERT INTO `municipios` VALUES(302, 'SAN PEDRO ATOYAC', 20, 0);
INSERT INTO `municipios` VALUES(303, 'SAN PEDRO CAJONOS', 20, 0);
INSERT INTO `municipios` VALUES(304, 'SAN PEDRO CANTAROS COXCALTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(305, 'SAN PEDRO COMITANCILLO', 20, 0);
INSERT INTO `municipios` VALUES(306, 'SAN PEDRO EL ALTO', 20, 0);
INSERT INTO `municipios` VALUES(307, 'SAN PEDRO HUAMELULA', 20, 0);
INSERT INTO `municipios` VALUES(308, 'SAN PEDRO HUILOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(309, 'SAN PEDRO IXCATLAN', 20, 0);
INSERT INTO `municipios` VALUES(310, 'SAN PEDRO IXTLAHUACA', 20, 0);
INSERT INTO `municipios` VALUES(311, 'SAN PEDRO JALTEPETONGO', 20, 0);
INSERT INTO `municipios` VALUES(312, 'SAN PEDRO JICAYAN', 20, 0);
INSERT INTO `municipios` VALUES(313, 'SAN PEDRO JOCOTIPAC', 20, 0);
INSERT INTO `municipios` VALUES(314, 'SAN PEDRO JUCHATENGO', 20, 0);
INSERT INTO `municipios` VALUES(315, 'SAN PEDRO MARTIR', 20, 0);
INSERT INTO `municipios` VALUES(316, 'SAN PEDRO MARTIR QUIECHAPA', 20, 0);
INSERT INTO `municipios` VALUES(317, 'SAN PEDRO MARTIR YUCUXACO', 20, 0);
INSERT INTO `municipios` VALUES(318, 'SAN PEDRO MIXTEPEC JUQUILA', 20, 0);
INSERT INTO `municipios` VALUES(319, 'SAN PEDRO MIXTEPEC-MIAHUATLAN', 20, 0);
INSERT INTO `municipios` VALUES(320, 'SAN PEDRO MOLINOS', 20, 0);
INSERT INTO `municipios` VALUES(321, 'SAN PEDRO NOPALA', 20, 0);
INSERT INTO `municipios` VALUES(322, 'SAN PEDRO OCOPETATILLO', 20, 0);
INSERT INTO `municipios` VALUES(323, 'SAN PEDRO OCOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(324, 'SAN PEDRO POCHUTLA', 20, 0);
INSERT INTO `municipios` VALUES(325, 'SAN PEDRO QUIATONI', 20, 0);
INSERT INTO `municipios` VALUES(326, 'SAN PEDRO SOCHIAPAM', 20, 0);
INSERT INTO `municipios` VALUES(327, 'SAN PEDRO TAPANATEPEC', 20, 0);
INSERT INTO `municipios` VALUES(328, 'SAN PEDRO TAVICHE', 20, 0);
INSERT INTO `municipios` VALUES(329, 'SAN PEDRO TEOZACOALCO', 20, 0);
INSERT INTO `municipios` VALUES(330, 'SAN PEDRO TEUTILA', 20, 0);
INSERT INTO `municipios` VALUES(331, 'SAN PEDRO TIDAA', 20, 0);
INSERT INTO `municipios` VALUES(332, 'SAN PEDRO TOPILTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(333, 'SAN PEDRO TOTOLAPAN', 20, 0);
INSERT INTO `municipios` VALUES(334, 'SAN PEDRO TUTUTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(335, 'SAN PEDRO YANERI', 20, 0);
INSERT INTO `municipios` VALUES(336, 'SAN PEDRO YOLOX', 20, 0);
INSERT INTO `municipios` VALUES(337, 'SAN PEDRO Y SAN PABLO AYUTLA', 20, 0);
INSERT INTO `municipios` VALUES(338, 'VILLA DE ETLA', 20, 0);
INSERT INTO `municipios` VALUES(339, 'SAN PEDRO Y SAN PABLO TEPOSCOLULA', 20, 0);
INSERT INTO `municipios` VALUES(340, 'SAN PEDRO Y SAN PABLO TEQUIXTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(341, 'SAN PEDRO YUCUNAMA', 20, 0);
INSERT INTO `municipios` VALUES(342, 'SAN RAYMUNDO JALPAN', 20, 0);
INSERT INTO `municipios` VALUES(343, 'SAN SEBASTIAN ABASOLO', 20, 0);
INSERT INTO `municipios` VALUES(344, 'SAN SEBASTIAN COATLAN', 20, 0);
INSERT INTO `municipios` VALUES(345, 'SAN SEBASTIAN IXCAPA', 20, 0);
INSERT INTO `municipios` VALUES(346, 'SAN SEBASTIAN NICANANDUTA', 20, 0);
INSERT INTO `municipios` VALUES(347, 'SAN SEBASTIAN RIO HONDO', 20, 0);
INSERT INTO `municipios` VALUES(348, 'SAN SEBASTIAN TECOMAXTLAHUACA', 20, 0);
INSERT INTO `municipios` VALUES(349, 'SAN SEBASTIAN TEITIPAC', 20, 0);
INSERT INTO `municipios` VALUES(350, 'SAN SEBASTIAN TUTLA', 20, 0);
INSERT INTO `municipios` VALUES(351, 'SAN SIMON ALMOLONGAS', 20, 0);
INSERT INTO `municipios` VALUES(352, 'SAN SIMON ZAHUATLAN', 20, 0);
INSERT INTO `municipios` VALUES(353, 'SANTA ANA', 20, 0);
INSERT INTO `municipios` VALUES(354, 'SANTA ANA ATEIXTLAHUACA', 20, 0);
INSERT INTO `municipios` VALUES(355, 'SANTA ANA CUAUHTEMOC', 20, 0);
INSERT INTO `municipios` VALUES(356, 'SANTA ANA DEL VALLE', 20, 0);
INSERT INTO `municipios` VALUES(357, 'SANTA ANA TAVELA', 20, 0);
INSERT INTO `municipios` VALUES(358, 'SANTA ANA TLAPACOYAN', 20, 0);
INSERT INTO `municipios` VALUES(359, 'SANTA ANA YARENI', 20, 0);
INSERT INTO `municipios` VALUES(360, 'SANTA ANA ZEGACHE', 20, 0);
INSERT INTO `municipios` VALUES(361, 'SANTA CATALINA QUIERI', 20, 0);
INSERT INTO `municipios` VALUES(362, 'SANTA CATARINA CUIXTLA', 20, 0);
INSERT INTO `municipios` VALUES(363, 'SANTA CATARINA IXTEPEJI', 20, 0);
INSERT INTO `municipios` VALUES(364, 'SANTA CATARINA JUQUILA', 20, 0);
INSERT INTO `municipios` VALUES(365, 'SANTA CATARINA LACHATAO', 20, 0);
INSERT INTO `municipios` VALUES(366, 'SANTA CATARINA LOXICHA', 20, 0);
INSERT INTO `municipios` VALUES(367, 'SANTA CATARINA MECHOACAN', 20, 0);
INSERT INTO `municipios` VALUES(368, 'SANTA CATARINA MINAS', 20, 0);
INSERT INTO `municipios` VALUES(369, 'SANTA CATARINA QUIANE', 20, 0);
INSERT INTO `municipios` VALUES(370, 'SANTA CATARINA TAYATA', 20, 0);
INSERT INTO `municipios` VALUES(371, 'SANTA CATARINA TICUA', 20, 0);
INSERT INTO `municipios` VALUES(372, 'SANTA CATARINA YOSONOTU', 20, 0);
INSERT INTO `municipios` VALUES(373, 'SANTA CATARINA ZAPOQUILA', 20, 0);
INSERT INTO `municipios` VALUES(374, 'SANTA CRUZ ACATEPEC', 20, 0);
INSERT INTO `municipios` VALUES(375, 'SANTA CRUZ AMILPAS', 20, 0);
INSERT INTO `municipios` VALUES(376, 'SANTA CRUZ DE BRAVO', 20, 0);
INSERT INTO `municipios` VALUES(377, 'SANTA CRUZ ITUNDUJIA', 20, 0);
INSERT INTO `municipios` VALUES(378, 'SANTA CRUZ MIXTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(379, 'SANTA CRUZ NUNDACO', 20, 0);
INSERT INTO `municipios` VALUES(380, 'SANTA CRUZ PAPALUTLA', 20, 0);
INSERT INTO `municipios` VALUES(381, 'SANTA CRUZ TACACHE DE MINA', 20, 0);
INSERT INTO `municipios` VALUES(382, 'SANTA CRUZ TACAHUA', 20, 0);
INSERT INTO `municipios` VALUES(383, 'SANTA CRUZ TAYATA', 20, 0);
INSERT INTO `municipios` VALUES(384, 'SANTA CRUZ XITLA', 20, 0);
INSERT INTO `municipios` VALUES(385, 'SANTA CRUZ XOXOCOTLAN', 20, 0);
INSERT INTO `municipios` VALUES(386, 'SANTA CRUZ ZENZONTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(387, 'SANTA GERTRUDIS', 20, 0);
INSERT INTO `municipios` VALUES(388, 'SANTA INES DEL MONTE', 20, 0);
INSERT INTO `municipios` VALUES(389, 'SANTA INES YATZECHE', 20, 0);
INSERT INTO `municipios` VALUES(390, 'SANTA LUCIA DEL CAMINO', 20, 0);
INSERT INTO `municipios` VALUES(391, 'SANTA LUCIA MIAHUATLAN', 20, 0);
INSERT INTO `municipios` VALUES(392, 'SANTA LUCIA MONTEVERDE', 20, 0);
INSERT INTO `municipios` VALUES(393, 'SANTA LUCIA OCOTLAN', 20, 0);
INSERT INTO `municipios` VALUES(394, 'SANTA MARIA ALOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(395, 'SANTA MARIA APASCO', 20, 0);
INSERT INTO `municipios` VALUES(396, 'SANTA MARIA LA ASUNCION', 20, 0);
INSERT INTO `municipios` VALUES(397, 'HEROICA CIUDAD DE TLAXIACO', 20, 0);
INSERT INTO `municipios` VALUES(398, 'AYOQUEZCO DE ALDAMA', 20, 0);
INSERT INTO `municipios` VALUES(399, 'SANTA MARIA ATZOMPA', 20, 0);
INSERT INTO `municipios` VALUES(400, 'SANTA MARIA CAMOTLAN', 20, 0);
INSERT INTO `municipios` VALUES(401, 'SANTA MARIA COLOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(402, 'SANTA MARIA CORTIJOS', 20, 0);
INSERT INTO `municipios` VALUES(403, 'SANTA MARIA COYOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(404, 'SANTA MARIA CHACHOAPAM', 20, 0);
INSERT INTO `municipios` VALUES(405, 'SANTA MARIA CHILAPA DE DIAZ', 20, 0);
INSERT INTO `municipios` VALUES(406, 'SANTA MARIA CHILCHOTLA', 20, 0);
INSERT INTO `municipios` VALUES(407, 'SANTA MARIA CHIMALAPA', 20, 0);
INSERT INTO `municipios` VALUES(408, 'SANTA MARIA DEL ROSARIO', 20, 0);
INSERT INTO `municipios` VALUES(409, 'SANTA MARIA DEL TULE', 20, 0);
INSERT INTO `municipios` VALUES(410, 'SANTA MARIA ECATEPEC', 20, 0);
INSERT INTO `municipios` VALUES(411, 'SANTA MARIA GUELACE', 20, 0);
INSERT INTO `municipios` VALUES(412, 'SANTA MARIA GUIENAGATI', 20, 0);
INSERT INTO `municipios` VALUES(413, 'SANTA MARIA HUATULCO', 20, 0);
INSERT INTO `municipios` VALUES(414, 'SANTA MARIA HUAZOLOTITLAN', 20, 0);
INSERT INTO `municipios` VALUES(415, 'SANTA MARIA IPALAPA', 20, 0);
INSERT INTO `municipios` VALUES(416, 'SANTA MARIA IXCATLAN', 20, 0);
INSERT INTO `municipios` VALUES(417, 'SANTA MARIA JACATEPEC', 20, 0);
INSERT INTO `municipios` VALUES(418, 'SANTA MARIA JALAPA DEL MARQUES', 20, 0);
INSERT INTO `municipios` VALUES(419, 'SANTA MARIA JALTIANGUIS', 20, 0);
INSERT INTO `municipios` VALUES(420, 'SANTA MARIA LACHIXIO', 20, 0);
INSERT INTO `municipios` VALUES(421, 'SANTA MARIA MIXTEQUILLA', 20, 0);
INSERT INTO `municipios` VALUES(422, 'SANTA MARIA NATIVITAS', 20, 0);
INSERT INTO `municipios` VALUES(423, 'SANTA MARIA NDUAYACO', 20, 0);
INSERT INTO `municipios` VALUES(424, 'SANTA MARIA OZOLOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(425, 'SANTA MARIA PAPALO', 20, 0);
INSERT INTO `municipios` VALUES(426, 'SANTA MARIA PE&OLES', 20, 0);
INSERT INTO `municipios` VALUES(427, 'SANTA MARIA PETAPA', 20, 0);
INSERT INTO `municipios` VALUES(428, 'SANTA MARIA QUIEGOLANI', 20, 0);
INSERT INTO `municipios` VALUES(429, 'SANTA MARIA SOLA', 20, 0);
INSERT INTO `municipios` VALUES(430, 'SANTA MARIA TATALTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(431, 'SANTA MARIA TECOMAVACA', 20, 0);
INSERT INTO `municipios` VALUES(432, 'SANTA MARIA TEMAXCALAPA', 20, 0);
INSERT INTO `municipios` VALUES(433, 'SANTA MARIA TEMAXCALTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(434, 'SANTA MARIA TEOPOXCO', 20, 0);
INSERT INTO `municipios` VALUES(435, 'SANTA MARIA TEPANTLALI', 20, 0);
INSERT INTO `municipios` VALUES(436, 'SANTA MARIA TEXCATITLAN', 20, 0);
INSERT INTO `municipios` VALUES(437, 'SANTA MARIA TLAHUITOLTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(438, 'SANTA MARIA TLALIXTAC', 20, 0);
INSERT INTO `municipios` VALUES(439, 'SANTA MARIA TONAMECA', 20, 0);
INSERT INTO `municipios` VALUES(440, 'SANTA MARIA TOTOLAPILLA', 20, 0);
INSERT INTO `municipios` VALUES(441, 'SANTA MARIA XADANI', 20, 0);
INSERT INTO `municipios` VALUES(442, 'SANTA MARIA YALINA', 20, 0);
INSERT INTO `municipios` VALUES(443, 'SANTA MARIA YAVESIA', 20, 0);
INSERT INTO `municipios` VALUES(444, 'SANTA MARIA YOLOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(445, 'SANTA MARIA YOSOYUA', 20, 0);
INSERT INTO `municipios` VALUES(446, 'SANTA MARIA YUCUHITI', 20, 0);
INSERT INTO `municipios` VALUES(447, 'SANTA MARIA ZACATEPEC', 20, 0);
INSERT INTO `municipios` VALUES(448, 'SANTA MARIA ZANIZA', 20, 0);
INSERT INTO `municipios` VALUES(449, 'SANTA MARIA ZOQUITLAN', 20, 0);
INSERT INTO `municipios` VALUES(450, 'SANTIAGO AMOLTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(451, 'SANTIAGO APOALA', 20, 0);
INSERT INTO `municipios` VALUES(452, 'SANTIAGO APOSTOL', 20, 0);
INSERT INTO `municipios` VALUES(453, 'SANTIAGO ASTATA', 20, 0);
INSERT INTO `municipios` VALUES(454, 'SANTIAGO ATITLAN', 20, 0);
INSERT INTO `municipios` VALUES(455, 'SANTIAGO AYUQUILILLA', 20, 0);
INSERT INTO `municipios` VALUES(456, 'SANTIAGO CACALOXTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(457, 'SANTIAGO CAMOTLAN', 20, 0);
INSERT INTO `municipios` VALUES(458, 'SANTIAGO COMALTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(459, 'SANTIAGO CHAZUMBA', 20, 0);
INSERT INTO `municipios` VALUES(460, 'SANTIAGO CHOAPAM', 20, 0);
INSERT INTO `municipios` VALUES(461, 'SANTIAGO DEL RIO', 20, 0);
INSERT INTO `municipios` VALUES(462, 'SANTIAGO HUAJOLOTITLAN', 20, 0);
INSERT INTO `municipios` VALUES(463, 'SANTIAGO HUAUCLILLA', 20, 0);
INSERT INTO `municipios` VALUES(464, 'SANTIAGO IHUITLAN PLUMAS', 20, 0);
INSERT INTO `municipios` VALUES(465, 'SANTIAGO IXCUINTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(466, 'SANTIAGO IXTAYUTLA', 20, 0);
INSERT INTO `municipios` VALUES(467, 'SANTIAGO JAMILTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(468, 'SANTIAGO JOCOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(469, 'SANTIAGO JUXTLAHUACA', 20, 0);
INSERT INTO `municipios` VALUES(470, 'SANTIAGO LACHIGUIRI', 20, 0);
INSERT INTO `municipios` VALUES(471, 'SANTIAGO LALOPA', 20, 0);
INSERT INTO `municipios` VALUES(472, 'SANTIAGO LAOLLAGA', 20, 0);
INSERT INTO `municipios` VALUES(473, 'SANTIAGO LAXOPA', 20, 0);
INSERT INTO `municipios` VALUES(474, 'SANTIAGO LLANO GRANDE', 20, 0);
INSERT INTO `municipios` VALUES(475, 'SANTIAGO MATATLAN', 20, 0);
INSERT INTO `municipios` VALUES(476, 'SANTIAGO MILTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(477, 'SANTIAGO MINAS', 20, 0);
INSERT INTO `municipios` VALUES(478, 'SANTIAGO NACALTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(479, 'SANTIAGO NEJAPILLA', 20, 0);
INSERT INTO `municipios` VALUES(480, 'SANTIAGO NUNDICHE', 20, 0);
INSERT INTO `municipios` VALUES(481, 'SANTIAGO NUYOO', 20, 0);
INSERT INTO `municipios` VALUES(482, 'SANTIAGO PINOTEPA NACIONAL', 20, 0);
INSERT INTO `municipios` VALUES(483, 'SANTIAGO SUCHILQUITONGO', 20, 0);
INSERT INTO `municipios` VALUES(484, 'SANTIAGO TAMAZOLA', 20, 0);
INSERT INTO `municipios` VALUES(485, 'SANTIAGO TAPEXTLA', 20, 0);
INSERT INTO `municipios` VALUES(486, 'VILLA TEJUPAM DE LA UNION', 20, 0);
INSERT INTO `municipios` VALUES(487, 'SANTIAGO TENANGO', 20, 0);
INSERT INTO `municipios` VALUES(488, 'SANTIAGO TEPETLAPA', 20, 0);
INSERT INTO `municipios` VALUES(489, 'SANTIAGO TETEPEC', 20, 0);
INSERT INTO `municipios` VALUES(490, 'SANTIAGO TEXCALCINGO', 20, 0);
INSERT INTO `municipios` VALUES(491, 'SANTIAGO TEXTITLAN', 20, 0);
INSERT INTO `municipios` VALUES(492, 'SANTIAGO TILANTONGO', 20, 0);
INSERT INTO `municipios` VALUES(493, 'SANTIAGO TILLO', 20, 0);
INSERT INTO `municipios` VALUES(494, 'SANTIAGO TLAZOYALTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(495, 'SANTIAGO XANICA', 20, 0);
INSERT INTO `municipios` VALUES(496, 'SANTIAGO XIACUI', 20, 0);
INSERT INTO `municipios` VALUES(497, 'SANTIAGO YAITEPEC', 20, 0);
INSERT INTO `municipios` VALUES(498, 'SANTIAGO YAVEO', 20, 0);
INSERT INTO `municipios` VALUES(499, 'SANTIAGO YOLOMECATL', 20, 0);
INSERT INTO `municipios` VALUES(500, 'SANTIAGO YOSONDUA', 20, 0);
INSERT INTO `municipios` VALUES(501, 'SANTIAGO YUCUYACHI', 20, 0);
INSERT INTO `municipios` VALUES(502, 'SANTIAGO ZACATEPEC', 20, 0);
INSERT INTO `municipios` VALUES(503, 'SANTIAGO ZOOCHILA', 20, 0);
INSERT INTO `municipios` VALUES(504, 'NUEVO ZOQUIAPAM', 20, 0);
INSERT INTO `municipios` VALUES(505, 'SANTO DOMINGO INGENIO', 20, 0);
INSERT INTO `municipios` VALUES(506, 'SANTO DOMINGO ALBARRADAS', 20, 0);
INSERT INTO `municipios` VALUES(507, 'SANTO DOMINGO ARMENTA', 20, 0);
INSERT INTO `municipios` VALUES(508, 'SANTO DOMINGO CHIHUITAN', 20, 0);
INSERT INTO `municipios` VALUES(509, 'SANTO DOMINGO DE MORELOS', 20, 0);
INSERT INTO `municipios` VALUES(510, 'SANTO DOMINGO IXCATLAN', 20, 0);
INSERT INTO `municipios` VALUES(511, 'SANTO DOMINGO NUXAA', 20, 0);
INSERT INTO `municipios` VALUES(512, 'SANTO DOMINGO OZOLOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(513, 'SANTO DOMINGO PETAPA', 20, 0);
INSERT INTO `municipios` VALUES(514, 'SANTO DOMINGO ROAYAGA', 20, 0);
INSERT INTO `municipios` VALUES(515, 'SANTO DOMINGO TEHUANTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(516, 'SANTO DOMINGO TEOJOMULCO', 20, 0);
INSERT INTO `municipios` VALUES(517, 'SANTO DOMINGO TEPUXTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(518, 'SANTO DOMINGO TLATAYAPAM', 20, 0);
INSERT INTO `municipios` VALUES(519, 'SANTO DOMINGO TOMALTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(520, 'SANTO DOMINGO TONALA', 20, 0);
INSERT INTO `municipios` VALUES(521, 'SANTO DOMINGO TONALTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(522, 'SANTO DOMINGO XAGACIA', 20, 0);
INSERT INTO `municipios` VALUES(523, 'SANTO DOMINGO YANHUITLAN', 20, 0);
INSERT INTO `municipios` VALUES(524, 'SANTO DOMINGO YODOHINO', 20, 0);
INSERT INTO `municipios` VALUES(525, 'SANTO DOMINGO ZANATEPEC', 20, 0);
INSERT INTO `municipios` VALUES(526, 'SANTOS REYES NOPALA', 20, 0);
INSERT INTO `municipios` VALUES(527, 'SANTOS REYES PAPALO', 20, 0);
INSERT INTO `municipios` VALUES(528, 'SANTOS REYES TEPEJILLO', 20, 0);
INSERT INTO `municipios` VALUES(529, 'SANTOS REYES YUCUNA', 20, 0);
INSERT INTO `municipios` VALUES(530, 'SANTO TOMAS JALIEZA', 20, 0);
INSERT INTO `municipios` VALUES(531, 'SANTO TOMAS MAZALTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(532, 'SANTO TOMAS OCOTEPEC', 20, 0);
INSERT INTO `municipios` VALUES(533, 'SANTO TOMAS TAMAZULAPAM', 20, 0);
INSERT INTO `municipios` VALUES(534, 'SAN VICENTE COATLAN', 20, 0);
INSERT INTO `municipios` VALUES(535, 'SAN VICENTE LACHIXIO', 20, 0);
INSERT INTO `municipios` VALUES(536, 'SAN VICENTE NU&U', 20, 0);
INSERT INTO `municipios` VALUES(537, 'SILACAYOAPAM', 20, 0);
INSERT INTO `municipios` VALUES(538, 'SITIO DE XITLAPEHUA', 20, 0);
INSERT INTO `municipios` VALUES(539, 'SOLEDAD ETLA', 20, 0);
INSERT INTO `municipios` VALUES(540, 'VILLA DE TAMAZULAPAM DEL PROGRESO', 20, 0);
INSERT INTO `municipios` VALUES(541, 'TANETZE DE ZARAGOZA', 20, 0);
INSERT INTO `municipios` VALUES(542, 'TANICHE', 20, 0);
INSERT INTO `municipios` VALUES(543, 'TATALTEPEC DE VALDES', 20, 0);
INSERT INTO `municipios` VALUES(544, 'TEOCOCUILCO DE MARCOS PEREZ', 20, 0);
INSERT INTO `municipios` VALUES(545, 'TEOTITLAN DE FLORES MAGON', 20, 0);
INSERT INTO `municipios` VALUES(546, 'TEOTITLAN DEL VALLE', 20, 0);
INSERT INTO `municipios` VALUES(547, 'SANTIAGO TEOTONGO', 20, 0);
INSERT INTO `municipios` VALUES(548, 'TEPELMEME VILLA DE MORELOS', 20, 0);
INSERT INTO `municipios` VALUES(549, 'TEZOATLAN DE SEGURA Y LUNA', 20, 0);
INSERT INTO `municipios` VALUES(550, 'SAN JERONIMO TLACOCHAHUAYA', 20, 0);
INSERT INTO `municipios` VALUES(551, 'TLACOLULA DE MATAMOROS', 20, 0);
INSERT INTO `municipios` VALUES(552, 'TLACOTEPEC PLUMAS', 20, 0);
INSERT INTO `municipios` VALUES(553, 'TLALIXTAC DE CABRERA', 20, 0);
INSERT INTO `municipios` VALUES(554, 'TOTONTEPEC VILLA DE MORELOS', 20, 0);
INSERT INTO `municipios` VALUES(555, 'TRINIDAD ZAACHILA', 20, 0);
INSERT INTO `municipios` VALUES(556, 'LA TRINIDAD VISTA HERMOSA', 20, 0);
INSERT INTO `municipios` VALUES(557, 'UNION HIDALGO', 20, 0);
INSERT INTO `municipios` VALUES(558, 'VALERIO TRUJANO', 20, 0);
INSERT INTO `municipios` VALUES(559, 'SAN JUAN BAUTISTA VALLE NACIONAL', 20, 0);
INSERT INTO `municipios` VALUES(560, 'VILLA DIAZ ORDAZ', 20, 0);
INSERT INTO `municipios` VALUES(561, 'YAXE', 20, 0);
INSERT INTO `municipios` VALUES(562, 'MAGDALENA YODOCONO DE PORFIRIO DIAZ', 20, 0);
INSERT INTO `municipios` VALUES(563, 'YOGANA', 20, 0);
INSERT INTO `municipios` VALUES(564, 'YUTANDUCHI DE GUERRERO', 20, 0);
INSERT INTO `municipios` VALUES(565, 'VILLA DE ZAACHILA', 20, 0);
INSERT INTO `municipios` VALUES(566, 'ZAPOTITLAN DEL RIO', 20, 0);
INSERT INTO `municipios` VALUES(567, 'ZAPOTITLAN LAGUNAS', 20, 0);
INSERT INTO `municipios` VALUES(568, 'ZAPOTITLAN PALMAS', 20, 0);
INSERT INTO `municipios` VALUES(569, 'SANTA INES DE ZARAGOZA', 20, 0);
INSERT INTO `municipios` VALUES(570, 'ZIMATLAN DE ALVAREZ', 20, 0);
INSERT INTO `municipios` VALUES(1, 'ACAJETE', 21, 0);
INSERT INTO `municipios` VALUES(2, 'ACATENO', 21, 0);
INSERT INTO `municipios` VALUES(3, 'ACATLAN', 21, 0);
INSERT INTO `municipios` VALUES(4, 'ACATZINGO', 21, 0);
INSERT INTO `municipios` VALUES(5, 'ACTEOPAN', 21, 0);
INSERT INTO `municipios` VALUES(6, 'AHUACATLAN', 21, 0);
INSERT INTO `municipios` VALUES(7, 'AHUATLAN', 21, 0);
INSERT INTO `municipios` VALUES(8, 'AHUAZOTEPEC', 21, 0);
INSERT INTO `municipios` VALUES(9, 'AHUEHUETITLA', 21, 0);
INSERT INTO `municipios` VALUES(10, 'AJALPAN', 21, 0);
INSERT INTO `municipios` VALUES(11, 'ALBINO ZERTUCHE', 21, 0);
INSERT INTO `municipios` VALUES(12, 'ALJOJUCA', 21, 0);
INSERT INTO `municipios` VALUES(13, 'ALTEPEXI', 21, 0);
INSERT INTO `municipios` VALUES(14, 'AMIXTLAN', 21, 0);
INSERT INTO `municipios` VALUES(15, 'AMOZOC', 21, 0);
INSERT INTO `municipios` VALUES(16, 'AQUIXTLA', 21, 0);
INSERT INTO `municipios` VALUES(17, 'ATEMPAN', 21, 0);
INSERT INTO `municipios` VALUES(18, 'ATEXCAL', 21, 0);
INSERT INTO `municipios` VALUES(19, 'ATLIXCO', 21, 0);
INSERT INTO `municipios` VALUES(20, 'ATOYATEMPAN', 21, 0);
INSERT INTO `municipios` VALUES(21, 'ATZALA', 21, 0);
INSERT INTO `municipios` VALUES(22, 'ATZITZIHUACAN', 21, 0);
INSERT INTO `municipios` VALUES(23, 'ATZITZINTLA', 21, 0);
INSERT INTO `municipios` VALUES(24, 'AXUTLA', 21, 0);
INSERT INTO `municipios` VALUES(25, 'AYOTOXCO DE GUERRERO', 21, 0);
INSERT INTO `municipios` VALUES(26, 'CALPAN', 21, 0);
INSERT INTO `municipios` VALUES(27, 'CALTEPEC', 21, 0);
INSERT INTO `municipios` VALUES(28, 'CAMOCUAUTLA', 21, 0);
INSERT INTO `municipios` VALUES(29, 'CAXHUACAN', 21, 0);
INSERT INTO `municipios` VALUES(30, 'COATEPEC', 21, 0);
INSERT INTO `municipios` VALUES(31, 'COATZINGO', 21, 0);
INSERT INTO `municipios` VALUES(32, 'COHETZALA', 21, 0);
INSERT INTO `municipios` VALUES(33, 'COHUECAN', 21, 0);
INSERT INTO `municipios` VALUES(34, 'CORONANGO', 21, 0);
INSERT INTO `municipios` VALUES(35, 'COXCATLAN', 21, 0);
INSERT INTO `municipios` VALUES(36, 'COYOMEAPAN', 21, 0);
INSERT INTO `municipios` VALUES(37, 'COYOTEPEC', 21, 0);
INSERT INTO `municipios` VALUES(38, 'CUAPIAXTLA DE MADERO', 21, 0);
INSERT INTO `municipios` VALUES(39, 'CUAUTEMPAN', 21, 0);
INSERT INTO `municipios` VALUES(40, 'CUAUTINCHAN', 21, 0);
INSERT INTO `municipios` VALUES(41, 'CUAUTLANCINGO', 21, 0);
INSERT INTO `municipios` VALUES(42, 'CUAYUCA DE ANDRADE', 21, 0);
INSERT INTO `municipios` VALUES(43, 'CUETZALAN DEL PROGRESO', 21, 0);
INSERT INTO `municipios` VALUES(44, 'CUYOACO', 21, 0);
INSERT INTO `municipios` VALUES(45, 'CHALCHICOMULA DE SESMA', 21, 0);
INSERT INTO `municipios` VALUES(46, 'CHAPULCO', 21, 0);
INSERT INTO `municipios` VALUES(47, 'CHIAUTLA', 21, 0);
INSERT INTO `municipios` VALUES(48, 'CHIAUTZINGO', 21, 0);
INSERT INTO `municipios` VALUES(49, 'CHICONCUAUTLA', 21, 0);
INSERT INTO `municipios` VALUES(50, 'CHICHIQUILA', 21, 0);
INSERT INTO `municipios` VALUES(51, 'CHIETLA', 21, 0);
INSERT INTO `municipios` VALUES(52, 'CHIGMECATITLAN', 21, 0);
INSERT INTO `municipios` VALUES(53, 'CHIGNAHUAPAN', 21, 0);
INSERT INTO `municipios` VALUES(54, 'CHIGNAUTLA', 21, 0);
INSERT INTO `municipios` VALUES(55, 'CHILA', 21, 0);
INSERT INTO `municipios` VALUES(56, 'CHILA DE LA SAL', 21, 0);
INSERT INTO `municipios` VALUES(57, 'CHILA HONEY', 21, 0);
INSERT INTO `municipios` VALUES(58, 'CHILCHOTLA', 21, 0);
INSERT INTO `municipios` VALUES(59, 'CHINANTLA', 21, 0);
INSERT INTO `municipios` VALUES(60, 'DOMINGO ARENAS', 21, 0);
INSERT INTO `municipios` VALUES(61, 'ELOXOCHITLAN', 21, 0);
INSERT INTO `municipios` VALUES(62, 'EPATLAN', 21, 0);
INSERT INTO `municipios` VALUES(63, 'ESPERANZA', 21, 0);
INSERT INTO `municipios` VALUES(64, 'FRANCISCO Z MENA', 21, 0);
INSERT INTO `municipios` VALUES(65, 'GENERAL FELIPE ANGELES', 21, 0);
INSERT INTO `municipios` VALUES(66, 'GUADALUPE', 21, 0);
INSERT INTO `municipios` VALUES(67, 'GUADALUPE VICTORIA', 21, 0);
INSERT INTO `municipios` VALUES(68, 'HERMENEGILDO GALEANA', 21, 0);
INSERT INTO `municipios` VALUES(69, 'HUAQUECHULA', 21, 0);
INSERT INTO `municipios` VALUES(70, 'HUATLATLAUCA', 21, 0);
INSERT INTO `municipios` VALUES(71, 'HUAUCHINANGO', 21, 0);
INSERT INTO `municipios` VALUES(72, 'HUEHUETLA', 21, 0);
INSERT INTO `municipios` VALUES(73, 'HUEHUETLAN EL CHICO', 21, 0);
INSERT INTO `municipios` VALUES(74, 'HUEJOTZINGO', 21, 0);
INSERT INTO `municipios` VALUES(75, 'HUEYAPAN', 21, 0);
INSERT INTO `municipios` VALUES(76, 'HUEYTAMALCO', 21, 0);
INSERT INTO `municipios` VALUES(77, 'HUEYTLALPAN', 21, 0);
INSERT INTO `municipios` VALUES(78, 'HUITZILAN DE SERDAN', 21, 0);
INSERT INTO `municipios` VALUES(79, 'HUITZILTEPEC', 21, 0);
INSERT INTO `municipios` VALUES(80, 'IGNACIO ALLENDE', 21, 0);
INSERT INTO `municipios` VALUES(81, 'IXCAMILPA DE GUERRERO', 21, 0);
INSERT INTO `municipios` VALUES(82, 'IXCAQUIXTLA', 21, 0);
INSERT INTO `municipios` VALUES(83, 'IXTACAMAXTITLAN', 21, 0);
INSERT INTO `municipios` VALUES(84, 'IXTEPEC', 21, 0);
INSERT INTO `municipios` VALUES(85, 'IZUCAR DE MATAMOROS', 21, 0);
INSERT INTO `municipios` VALUES(86, 'JALPAN', 21, 0);
INSERT INTO `municipios` VALUES(87, 'JOLALPAN', 21, 0);
INSERT INTO `municipios` VALUES(88, 'JONOTLA', 21, 0);
INSERT INTO `municipios` VALUES(89, 'JOPALA', 21, 0);
INSERT INTO `municipios` VALUES(90, 'JUAN C BONILLA', 21, 0);
INSERT INTO `municipios` VALUES(91, 'JUAN GALINDO', 21, 0);
INSERT INTO `municipios` VALUES(92, 'JUAN N MENDEZ', 21, 0);
INSERT INTO `municipios` VALUES(93, 'LAFRAGUA', 21, 0);
INSERT INTO `municipios` VALUES(94, 'LIBRES', 21, 0);
INSERT INTO `municipios` VALUES(95, 'LA MAGDALENA TLATLAUQUITEPEC', 21, 0);
INSERT INTO `municipios` VALUES(96, 'MAZAPILTEPEC DE JUAREZ', 21, 0);
INSERT INTO `municipios` VALUES(97, 'MIXTLA', 21, 0);
INSERT INTO `municipios` VALUES(98, 'MOLCAXAC', 21, 0);
INSERT INTO `municipios` VALUES(99, 'CA&ADA MORELOS', 21, 0);
INSERT INTO `municipios` VALUES(100, 'NAUPAN', 21, 0);
INSERT INTO `municipios` VALUES(101, 'NAUZONTLA', 21, 0);
INSERT INTO `municipios` VALUES(102, 'NEALTICAN', 21, 0);
INSERT INTO `municipios` VALUES(103, 'NICOLAS BRAVO', 21, 0);
INSERT INTO `municipios` VALUES(104, 'NOPALUCAN', 21, 0);
INSERT INTO `municipios` VALUES(105, 'OCOTEPEC', 21, 0);
INSERT INTO `municipios` VALUES(106, 'OCOYUCAN', 21, 0);
INSERT INTO `municipios` VALUES(107, 'OLINTLA', 21, 0);
INSERT INTO `municipios` VALUES(108, 'ORIENTAL', 21, 0);
INSERT INTO `municipios` VALUES(109, 'PAHUATLAN', 21, 0);
INSERT INTO `municipios` VALUES(110, 'PALMAR DE BRAVO', 21, 0);
INSERT INTO `municipios` VALUES(111, 'PANTEPEC', 21, 0);
INSERT INTO `municipios` VALUES(112, 'PETLALCINGO', 21, 0);
INSERT INTO `municipios` VALUES(113, 'PIAXTLA', 21, 0);
INSERT INTO `municipios` VALUES(114, 'PUEBLA', 21, 0);
INSERT INTO `municipios` VALUES(115, 'QUECHOLAC', 21, 0);
INSERT INTO `municipios` VALUES(116, 'QUIMIXTLAN', 21, 0);
INSERT INTO `municipios` VALUES(117, 'RAFAEL LARA GRAJALES', 21, 0);
INSERT INTO `municipios` VALUES(118, 'LOS REYES DE JUAREZ', 21, 0);
INSERT INTO `municipios` VALUES(119, 'SAN ANDRES CHOLULA', 21, 0);
INSERT INTO `municipios` VALUES(120, 'SAN ANTONIO CA&ADA', 21, 0);
INSERT INTO `municipios` VALUES(121, 'SAN DIEGO LA MESA TOCHIMILTZI', 21, 0);
INSERT INTO `municipios` VALUES(122, 'SAN FELIPE TEOTLALCINGO', 21, 0);
INSERT INTO `municipios` VALUES(123, 'SAN FELIPE TEPATLAN', 21, 0);
INSERT INTO `municipios` VALUES(124, 'SAN GABRIEL CHILAC', 21, 0);
INSERT INTO `municipios` VALUES(125, 'SAN GREGORIO ATZOMPA', 21, 0);
INSERT INTO `municipios` VALUES(126, 'SAN JERONIMO TECUANIPAN', 21, 0);
INSERT INTO `municipios` VALUES(127, 'SAN JERONIMO XAYACATLAN', 21, 0);
INSERT INTO `municipios` VALUES(128, 'SAN JOSE CHIAPA', 21, 0);
INSERT INTO `municipios` VALUES(129, 'SAN JOSE MIAHUATLAN', 21, 0);
INSERT INTO `municipios` VALUES(130, 'SAN JUAN ATENCO', 21, 0);
INSERT INTO `municipios` VALUES(131, 'SAN JUAN ATZOMPA', 21, 0);
INSERT INTO `municipios` VALUES(132, 'SAN MARTIN TEXMELUCAN', 21, 0);
INSERT INTO `municipios` VALUES(133, 'SAN MARTIN TOTOLTEPEC', 21, 0);
INSERT INTO `municipios` VALUES(134, 'SAN MATIAS TLALANCALECA', 21, 0);
INSERT INTO `municipios` VALUES(135, 'SAN MIGUEL IXITLAN', 21, 0);
INSERT INTO `municipios` VALUES(136, 'SAN MIGUEL XOXTLA', 21, 0);
INSERT INTO `municipios` VALUES(137, 'SAN NICOLAS BUENOS AIRES', 21, 0);
INSERT INTO `municipios` VALUES(138, 'SAN NICOLAS DE LOS RANCHOS', 21, 0);
INSERT INTO `municipios` VALUES(139, 'SAN PABLO ANICANO', 21, 0);
INSERT INTO `municipios` VALUES(140, 'SAN PEDRO CHOLULA', 21, 0);
INSERT INTO `municipios` VALUES(141, 'SAN PEDRO YELOIXTLAHUACA', 21, 0);
INSERT INTO `municipios` VALUES(142, 'SAN SALVADOR EL SECO', 21, 0);
INSERT INTO `municipios` VALUES(143, 'SAN SALVADOR EL VERDE', 21, 0);
INSERT INTO `municipios` VALUES(144, 'SAN SALVADOR HUIXCOLOTLA', 21, 0);
INSERT INTO `municipios` VALUES(145, 'SAN SEBASTIAN TLACOTEPEC', 21, 0);
INSERT INTO `municipios` VALUES(146, 'SANTA CATARINA TLALTEMPAN', 21, 0);
INSERT INTO `municipios` VALUES(147, 'SANTA INES AHUATEMPAN', 21, 0);
INSERT INTO `municipios` VALUES(148, 'SANTA ISABEL CHOLULA', 21, 0);
INSERT INTO `municipios` VALUES(149, 'SANTIAGO MIAHUATLAN', 21, 0);
INSERT INTO `municipios` VALUES(150, 'HUEHUETLAN EL GRANDE', 21, 0);
INSERT INTO `municipios` VALUES(151, 'SANTO TOMAS HUEYOTLIPAN', 21, 0);
INSERT INTO `municipios` VALUES(152, 'SOLTEPEC', 21, 0);
INSERT INTO `municipios` VALUES(153, 'TECALI DE HERRERA', 21, 0);
INSERT INTO `municipios` VALUES(154, 'TECAMACHALCO', 21, 0);
INSERT INTO `municipios` VALUES(155, 'TECOMATLAN', 21, 0);
INSERT INTO `municipios` VALUES(156, 'TEHUACAN', 21, 0);
INSERT INTO `municipios` VALUES(157, 'TEHUITZINGO', 21, 0);
INSERT INTO `municipios` VALUES(158, 'TENAMPULCO', 21, 0);
INSERT INTO `municipios` VALUES(159, 'TEOPANTLAN', 21, 0);
INSERT INTO `municipios` VALUES(160, 'TEOTLALCO', 21, 0);
INSERT INTO `municipios` VALUES(161, 'TEPANCO DE LOPEZ', 21, 0);
INSERT INTO `municipios` VALUES(162, 'TEPANGO DE RODRIGUEZ', 21, 0);
INSERT INTO `municipios` VALUES(163, 'TEPATLAXCO DE HIDALGO', 21, 0);
INSERT INTO `municipios` VALUES(164, 'TEPEACA', 21, 0);
INSERT INTO `municipios` VALUES(165, 'TEPEMAXALCO', 21, 0);
INSERT INTO `municipios` VALUES(166, 'TEPEOJUMA', 21, 0);
INSERT INTO `municipios` VALUES(167, 'TEPETZINTLA', 21, 0);
INSERT INTO `municipios` VALUES(168, 'TEPEXCO', 21, 0);
INSERT INTO `municipios` VALUES(169, 'TEPEXI DE RODRIGUEZ', 21, 0);
INSERT INTO `municipios` VALUES(170, 'TEPEYAHUALCO', 21, 0);
INSERT INTO `municipios` VALUES(171, 'TEPEYAHUALCO DE CUAUHTEMOC', 21, 0);
INSERT INTO `municipios` VALUES(172, 'TETELA DE OCAMPO', 21, 0);
INSERT INTO `municipios` VALUES(173, 'TETELES DE AVILA CASTILLO', 21, 0);
INSERT INTO `municipios` VALUES(174, 'TEZIUTLAN', 21, 0);
INSERT INTO `municipios` VALUES(175, 'TIANGUISMANALCO', 21, 0);
INSERT INTO `municipios` VALUES(176, 'TILAPA', 21, 0);
INSERT INTO `municipios` VALUES(177, 'TLACOTEPEC DE BENITO JUAREZ', 21, 0);
INSERT INTO `municipios` VALUES(178, 'TLACUILOTEPEC', 21, 0);
INSERT INTO `municipios` VALUES(179, 'TLACHICHUCA', 21, 0);
INSERT INTO `municipios` VALUES(180, 'TLAHUAPAN', 21, 0);
INSERT INTO `municipios` VALUES(181, 'TLALTENANGO', 21, 0);
INSERT INTO `municipios` VALUES(182, 'TLANEPANTLA', 21, 0);
INSERT INTO `municipios` VALUES(183, 'TLAOLA', 21, 0);
INSERT INTO `municipios` VALUES(184, 'TLAPACOYA', 21, 0);
INSERT INTO `municipios` VALUES(185, 'TLAPANALA', 21, 0);
INSERT INTO `municipios` VALUES(186, 'TLATLAUQUITEPEC', 21, 0);
INSERT INTO `municipios` VALUES(187, 'TLAXCO', 21, 0);
INSERT INTO `municipios` VALUES(188, 'TOCHIMILCO', 21, 0);
INSERT INTO `municipios` VALUES(189, 'TOCHTEPEC', 21, 0);
INSERT INTO `municipios` VALUES(190, 'TOTOLTEPEC DE GUERRERO', 21, 0);
INSERT INTO `municipios` VALUES(191, 'TULCINGO', 21, 0);
INSERT INTO `municipios` VALUES(192, 'TUZAMAPAN DE GALEANA', 21, 0);
INSERT INTO `municipios` VALUES(193, 'TZICATLACOYAN', 21, 0);
INSERT INTO `municipios` VALUES(194, 'VENUSTIANO CARRANZA', 21, 0);
INSERT INTO `municipios` VALUES(195, 'VICENTE GUERRERO', 21, 0);
INSERT INTO `municipios` VALUES(196, 'XAYACATLAN DE BRAVO', 21, 0);
INSERT INTO `municipios` VALUES(197, 'XICOTEPEC', 21, 0);
INSERT INTO `municipios` VALUES(198, 'XICOTLAN', 21, 0);
INSERT INTO `municipios` VALUES(199, 'XIUTETELCO', 21, 0);
INSERT INTO `municipios` VALUES(200, 'XOCHIAPULCO', 21, 0);
INSERT INTO `municipios` VALUES(201, 'XOCHILTEPEC', 21, 0);
INSERT INTO `municipios` VALUES(202, 'XOCHITLAN DE VICENTE SUAREZ', 21, 0);
INSERT INTO `municipios` VALUES(203, 'XOCHITLAN TODOS SANTOS', 21, 0);
INSERT INTO `municipios` VALUES(204, 'YAONAHUAC', 21, 0);
INSERT INTO `municipios` VALUES(205, 'YEHUALTEPEC', 21, 0);
INSERT INTO `municipios` VALUES(206, 'ZACAPALA', 21, 0);
INSERT INTO `municipios` VALUES(207, 'ZACAPOAXTLA', 21, 0);
INSERT INTO `municipios` VALUES(208, 'ZACATLAN', 21, 0);
INSERT INTO `municipios` VALUES(209, 'ZAPOTITLAN', 21, 0);
INSERT INTO `municipios` VALUES(210, 'ZAPOTITLAN DE MENDEZ', 21, 0);
INSERT INTO `municipios` VALUES(211, 'ZARAGOZA', 21, 0);
INSERT INTO `municipios` VALUES(212, 'ZAUTLA', 21, 0);
INSERT INTO `municipios` VALUES(213, 'ZIHUATEUTLA', 21, 0);
INSERT INTO `municipios` VALUES(214, 'ZINACATEPEC', 21, 0);
INSERT INTO `municipios` VALUES(215, 'ZONGOZOTLA', 21, 0);
INSERT INTO `municipios` VALUES(216, 'ZOQUIAPAN', 21, 0);
INSERT INTO `municipios` VALUES(217, 'ZOQUITLAN', 21, 0);
INSERT INTO `municipios` VALUES(1, 'AMEALCO DE BONFIL', 22, 0);
INSERT INTO `municipios` VALUES(2, 'PINAL DE AMOLES', 22, 0);
INSERT INTO `municipios` VALUES(3, 'ARROYO SECO', 22, 0);
INSERT INTO `municipios` VALUES(4, 'CADEREYTA DE MONTES', 22, 0);
INSERT INTO `municipios` VALUES(5, 'COLON', 22, 0);
INSERT INTO `municipios` VALUES(6, 'CORREGIDORA', 22, 0);
INSERT INTO `municipios` VALUES(7, 'EZEQUIEL MONTES', 22, 0);
INSERT INTO `municipios` VALUES(8, 'HUIMILPAN', 22, 0);
INSERT INTO `municipios` VALUES(9, 'JALPAN DE SERRA', 22, 0);
INSERT INTO `municipios` VALUES(10, 'LANDA DE MATAMOROS', 22, 0);
INSERT INTO `municipios` VALUES(11, 'EL MARQUES', 22, 0);
INSERT INTO `municipios` VALUES(12, 'PEDRO ESCOBEDO', 22, 0);
INSERT INTO `municipios` VALUES(13, 'PE&AMILLER', 22, 0);
INSERT INTO `municipios` VALUES(14, 'SANTIAGO DE QUERETARO', 22, 0);
INSERT INTO `municipios` VALUES(15, 'SAN JOAQUIN', 22, 0);
INSERT INTO `municipios` VALUES(16, 'SAN JUAN DEL RIO', 22, 0);
INSERT INTO `municipios` VALUES(17, 'TEQUISQUIAPAN', 22, 0);
INSERT INTO `municipios` VALUES(18, 'TOLIMAN', 22, 0);
INSERT INTO `municipios` VALUES(1, 'COZUMEL', 23, 0);
INSERT INTO `municipios` VALUES(2, 'FELIPE CARRILLO PUERTO', 23, 0);
INSERT INTO `municipios` VALUES(3, 'ISLA MUJERES', 23, 0);
INSERT INTO `municipios` VALUES(4, 'OTHON P BLANCO', 23, 0);
INSERT INTO `municipios` VALUES(5, 'BENITO JUAREZ', 23, 0);
INSERT INTO `municipios` VALUES(6, 'JOSE MA MORELOS', 23, 0);
INSERT INTO `municipios` VALUES(7, 'LAZARO CARDENAS', 23, 0);
INSERT INTO `municipios` VALUES(8, 'SOLIDARIDAD', 23, 0);
INSERT INTO `municipios` VALUES(1, 'AHUALULCO', 24, 0);
INSERT INTO `municipios` VALUES(2, 'ALAQUINES', 24, 0);
INSERT INTO `municipios` VALUES(3, 'AQUISMON', 24, 0);
INSERT INTO `municipios` VALUES(4, 'ARMADILLO DE LOS INFANTE', 24, 0);
INSERT INTO `municipios` VALUES(5, 'CARDENAS', 24, 0);
INSERT INTO `municipios` VALUES(6, 'CATORCE', 24, 0);
INSERT INTO `municipios` VALUES(7, 'CEDRAL', 24, 0);
INSERT INTO `municipios` VALUES(8, 'CERRITOS', 24, 0);
INSERT INTO `municipios` VALUES(9, 'CERRO DE SAN PEDRO', 24, 0);
INSERT INTO `municipios` VALUES(10, 'CIUDAD DEL MAIZ', 24, 0);
INSERT INTO `municipios` VALUES(11, 'CIUDAD FERNANDEZ', 24, 0);
INSERT INTO `municipios` VALUES(12, 'TANCANHUITZ DE SANTOS', 24, 0);
INSERT INTO `municipios` VALUES(13, 'CIUDAD VALLES', 24, 0);
INSERT INTO `municipios` VALUES(14, 'COXCATLAN', 24, 0);
INSERT INTO `municipios` VALUES(15, 'CHARCAS', 24, 0);
INSERT INTO `municipios` VALUES(16, 'EBANO', 24, 0);
INSERT INTO `municipios` VALUES(17, 'GUADALCAZAR', 24, 0);
INSERT INTO `municipios` VALUES(18, 'HUEHUETLAN', 24, 0);
INSERT INTO `municipios` VALUES(19, 'LAGUNILLAS', 24, 0);
INSERT INTO `municipios` VALUES(20, 'MATEHUALA', 24, 0);
INSERT INTO `municipios` VALUES(21, 'MEXQUITIC DE CARMONA', 24, 0);
INSERT INTO `municipios` VALUES(22, 'MOCTEZUMA', 24, 0);
INSERT INTO `municipios` VALUES(23, 'RAYON', 24, 0);
INSERT INTO `municipios` VALUES(24, 'RIO VERDE', 24, 0);
INSERT INTO `municipios` VALUES(25, 'SALINAS', 24, 0);
INSERT INTO `municipios` VALUES(26, 'SAN ANTONIO', 24, 0);
INSERT INTO `municipios` VALUES(27, 'SAN CIRO DE ACOSTA', 24, 0);
INSERT INTO `municipios` VALUES(28, 'SAN LUIS POTOSI', 24, 0);
INSERT INTO `municipios` VALUES(29, 'SAN MARTIN CHALCHICUAUTLA', 24, 0);
INSERT INTO `municipios` VALUES(30, 'SAN NICOLAS TOLENTINO', 24, 0);
INSERT INTO `municipios` VALUES(31, 'SANTA CATARINA', 24, 0);
INSERT INTO `municipios` VALUES(32, 'SANTA MARIA DEL RIO', 24, 0);
INSERT INTO `municipios` VALUES(33, 'SANTO DOMINGO', 24, 0);
INSERT INTO `municipios` VALUES(34, 'SAN VICENTE TANCUAYALAB', 24, 0);
INSERT INTO `municipios` VALUES(35, 'SOLEDAD DE GRACIANO SANCHEZ', 24, 0);
INSERT INTO `municipios` VALUES(36, 'TAMASOPO', 24, 0);
INSERT INTO `municipios` VALUES(37, 'TAMAZUNCHALE', 24, 0);
INSERT INTO `municipios` VALUES(38, 'TAMPACAN', 24, 0);
INSERT INTO `municipios` VALUES(39, 'TAMPAMOLON CORONA', 24, 0);
INSERT INTO `municipios` VALUES(40, 'TAMUIN', 24, 0);
INSERT INTO `municipios` VALUES(41, 'TANLAJAS', 24, 0);
INSERT INTO `municipios` VALUES(42, 'TANQUIAN DE ESCOBEDO', 24, 0);
INSERT INTO `municipios` VALUES(43, 'TIERRANUEVA', 24, 0);
INSERT INTO `municipios` VALUES(44, 'VANEGAS', 24, 0);
INSERT INTO `municipios` VALUES(45, 'VENADO', 24, 0);
INSERT INTO `municipios` VALUES(46, 'VILLA DE ARRIAGA', 24, 0);
INSERT INTO `municipios` VALUES(47, 'VILLA DE GUADALUPE', 24, 0);
INSERT INTO `municipios` VALUES(48, 'VILLA DE LA PAZ', 24, 0);
INSERT INTO `municipios` VALUES(49, 'VILLA DE RAMOS', 24, 0);
INSERT INTO `municipios` VALUES(50, 'VILLA DE REYES', 24, 0);
INSERT INTO `municipios` VALUES(51, 'VILLA HIDALGO', 24, 0);
INSERT INTO `municipios` VALUES(52, 'VILLA JUAREZ', 24, 0);
INSERT INTO `municipios` VALUES(53, 'AXTLA DE TERRAZAS', 24, 0);
INSERT INTO `municipios` VALUES(54, 'XILITLA', 24, 0);
INSERT INTO `municipios` VALUES(55, 'ZARAGOZA', 24, 0);
INSERT INTO `municipios` VALUES(56, 'VILLA DE ARISTA', 24, 0);
INSERT INTO `municipios` VALUES(57, 'MATLAPA', 24, 0);
INSERT INTO `municipios` VALUES(58, 'EL NARANJO', 24, 0);
INSERT INTO `municipios` VALUES(1, 'AHOME', 25, 0);
INSERT INTO `municipios` VALUES(2, 'ANGOSTURA', 25, 0);
INSERT INTO `municipios` VALUES(3, 'BADIRAGUATO', 25, 0);
INSERT INTO `municipios` VALUES(4, 'CONCORDIA', 25, 0);
INSERT INTO `municipios` VALUES(5, 'COSALA', 25, 0);
INSERT INTO `municipios` VALUES(6, 'CULIACAN', 25, 0);
INSERT INTO `municipios` VALUES(7, 'CHOIX', 25, 0);
INSERT INTO `municipios` VALUES(8, 'ELOTA', 25, 0);
INSERT INTO `municipios` VALUES(9, 'ESCUINAPA', 25, 0);
INSERT INTO `municipios` VALUES(10, 'EL FUERTE', 25, 0);
INSERT INTO `municipios` VALUES(11, 'GUASAVE', 25, 0);
INSERT INTO `municipios` VALUES(12, 'MAZATLAN', 25, 0);
INSERT INTO `municipios` VALUES(13, 'MOCORITO', 25, 0);
INSERT INTO `municipios` VALUES(14, 'EL ROSARIO', 25, 0);
INSERT INTO `municipios` VALUES(15, 'SALVADOR ALVARADO', 25, 0);
INSERT INTO `municipios` VALUES(16, 'SAN IGNACIO', 25, 0);
INSERT INTO `municipios` VALUES(17, 'SINALOA', 25, 0);
INSERT INTO `municipios` VALUES(18, 'NAVOLATO', 25, 0);
INSERT INTO `municipios` VALUES(1, 'ACONCHI', 26, 0);
INSERT INTO `municipios` VALUES(2, 'AGUA PRIETA', 26, 0);
INSERT INTO `municipios` VALUES(3, 'ALAMOS', 26, 0);
INSERT INTO `municipios` VALUES(4, 'ALTAR', 26, 0);
INSERT INTO `municipios` VALUES(5, 'ARIVECHI', 26, 0);
INSERT INTO `municipios` VALUES(6, 'ARIZPE', 26, 0);
INSERT INTO `municipios` VALUES(7, 'ATIL', 26, 0);
INSERT INTO `municipios` VALUES(8, 'BACADEHUACHI', 26, 0);
INSERT INTO `municipios` VALUES(9, 'BACANORA', 26, 0);
INSERT INTO `municipios` VALUES(10, 'BACERAC', 26, 0);
INSERT INTO `municipios` VALUES(11, 'BACOACHI', 26, 0);
INSERT INTO `municipios` VALUES(12, 'BACUM', 26, 0);
INSERT INTO `municipios` VALUES(13, 'BANAMICHI', 26, 0);
INSERT INTO `municipios` VALUES(14, 'BAVIACORA', 26, 0);
INSERT INTO `municipios` VALUES(15, 'BAVISPE', 26, 0);
INSERT INTO `municipios` VALUES(16, 'BENJAMIN HILL', 26, 0);
INSERT INTO `municipios` VALUES(17, 'CABORCA', 26, 0);
INSERT INTO `municipios` VALUES(18, 'CAJEME', 26, 0);
INSERT INTO `municipios` VALUES(19, 'CANANEA', 26, 0);
INSERT INTO `municipios` VALUES(20, 'CARBO', 26, 0);
INSERT INTO `municipios` VALUES(21, 'LA COLORADA', 26, 0);
INSERT INTO `municipios` VALUES(22, 'CUCURPE', 26, 0);
INSERT INTO `municipios` VALUES(23, 'CUMPAS', 26, 0);
INSERT INTO `municipios` VALUES(24, 'DIVISADEROS', 26, 0);
INSERT INTO `municipios` VALUES(25, 'EMPALME', 26, 0);
INSERT INTO `municipios` VALUES(26, 'ETCHOJOA', 26, 0);
INSERT INTO `municipios` VALUES(27, 'FRONTERAS', 26, 0);
INSERT INTO `municipios` VALUES(28, 'GRANADOS', 26, 0);
INSERT INTO `municipios` VALUES(29, 'GUAYMAS', 26, 0);
INSERT INTO `municipios` VALUES(30, 'HERMOSILLO', 26, 0);
INSERT INTO `municipios` VALUES(31, 'HUACHINERA', 26, 0);
INSERT INTO `municipios` VALUES(32, 'HUASABAS', 26, 0);
INSERT INTO `municipios` VALUES(33, 'HUATABAMPO', 26, 0);
INSERT INTO `municipios` VALUES(34, 'HUEPAC', 26, 0);
INSERT INTO `municipios` VALUES(35, 'IMURIS', 26, 0);
INSERT INTO `municipios` VALUES(36, 'MAGDALENA', 26, 0);
INSERT INTO `municipios` VALUES(37, 'MAZATAN', 26, 0);
INSERT INTO `municipios` VALUES(38, 'MOCTEZUMA', 26, 0);
INSERT INTO `municipios` VALUES(39, 'NACO', 26, 0);
INSERT INTO `municipios` VALUES(40, 'NACORI CHICO', 26, 0);
INSERT INTO `municipios` VALUES(41, 'NACOZARI DE GARCIA', 26, 0);
INSERT INTO `municipios` VALUES(42, 'NAVOJOA', 26, 0);
INSERT INTO `municipios` VALUES(43, 'NOGALES', 26, 0);
INSERT INTO `municipios` VALUES(44, 'ONAVAS', 26, 0);
INSERT INTO `municipios` VALUES(45, 'OPODEPE', 26, 0);
INSERT INTO `municipios` VALUES(46, 'OQUITOA', 26, 0);
INSERT INTO `municipios` VALUES(47, 'PITIQUITO', 26, 0);
INSERT INTO `municipios` VALUES(48, 'PUERTO PE&ASCO', 26, 0);
INSERT INTO `municipios` VALUES(49, 'QUIRIEGO', 26, 0);
INSERT INTO `municipios` VALUES(50, 'RAYON', 26, 0);
INSERT INTO `municipios` VALUES(51, 'ROSARIO', 26, 0);
INSERT INTO `municipios` VALUES(52, 'SAHUARIPA', 26, 0);
INSERT INTO `municipios` VALUES(53, 'SAN FELIPE DE JESUS', 26, 0);
INSERT INTO `municipios` VALUES(54, 'SAN JAVIER', 26, 0);
INSERT INTO `municipios` VALUES(55, 'SAN LUIS RIO COLORADO', 26, 0);
INSERT INTO `municipios` VALUES(56, 'SAN MIGUEL DE HORCASITAS', 26, 0);
INSERT INTO `municipios` VALUES(57, 'SAN PEDRO DE LA CUEVA', 26, 0);
INSERT INTO `municipios` VALUES(58, 'SANTA ANA', 26, 0);
INSERT INTO `municipios` VALUES(59, 'SANTA CRUZ', 26, 0);
INSERT INTO `municipios` VALUES(60, 'SARIC', 26, 0);
INSERT INTO `municipios` VALUES(61, 'SOYOPA', 26, 0);
INSERT INTO `municipios` VALUES(62, 'SUAQUI GRANDE', 26, 0);
INSERT INTO `municipios` VALUES(63, 'TEPACHE', 26, 0);
INSERT INTO `municipios` VALUES(64, 'TRINCHERAS', 26, 0);
INSERT INTO `municipios` VALUES(65, 'TUBUTAMA', 26, 0);
INSERT INTO `municipios` VALUES(66, 'URES', 26, 0);
INSERT INTO `municipios` VALUES(67, 'VILLA HIDALGO', 26, 0);
INSERT INTO `municipios` VALUES(68, 'VILLA PESQUEIRA', 26, 0);
INSERT INTO `municipios` VALUES(69, 'YECORA', 26, 0);
INSERT INTO `municipios` VALUES(70, 'GENERAL PLUTARCO ELIAS CALLES', 26, 0);
INSERT INTO `municipios` VALUES(71, 'BENITO JUAREZ', 26, 0);
INSERT INTO `municipios` VALUES(72, 'SAN IGNACIO RIO MUERTO', 26, 0);
INSERT INTO `municipios` VALUES(1, 'BALANCAN', 27, 0);
INSERT INTO `municipios` VALUES(2, 'CARDENAS', 27, 0);
INSERT INTO `municipios` VALUES(3, 'CENTLA', 27, 0);
INSERT INTO `municipios` VALUES(4, 'CENTRO', 27, 0);
INSERT INTO `municipios` VALUES(5, 'COMALCALCO', 27, 0);
INSERT INTO `municipios` VALUES(6, 'CUNDUACAN', 27, 0);
INSERT INTO `municipios` VALUES(7, 'EMILIANO ZAPATA', 27, 0);
INSERT INTO `municipios` VALUES(8, 'HUIMANGUILLO', 27, 0);
INSERT INTO `municipios` VALUES(9, 'JALAPA', 27, 0);
INSERT INTO `municipios` VALUES(10, 'JALPA DE MENDEZ', 27, 0);
INSERT INTO `municipios` VALUES(11, 'JONUTA', 27, 0);
INSERT INTO `municipios` VALUES(12, 'MACUSPANA', 27, 0);
INSERT INTO `municipios` VALUES(13, 'NACAJUCA', 27, 0);
INSERT INTO `municipios` VALUES(14, 'PARAISO', 27, 0);
INSERT INTO `municipios` VALUES(15, 'TACOTALPA', 27, 0);
INSERT INTO `municipios` VALUES(16, 'TEAPA', 27, 0);
INSERT INTO `municipios` VALUES(17, 'TENOSIQUE', 27, 0);
INSERT INTO `municipios` VALUES(1, 'ABASOLO', 28, 0);
INSERT INTO `municipios` VALUES(2, 'ALDAMA', 28, 0);
INSERT INTO `municipios` VALUES(3, 'ALTAMIRA', 28, 0);
INSERT INTO `municipios` VALUES(4, 'ANTIGUO MORELOS', 28, 0);
INSERT INTO `municipios` VALUES(5, 'BURGOS', 28, 0);
INSERT INTO `municipios` VALUES(6, 'BUSTAMANTE', 28, 0);
INSERT INTO `municipios` VALUES(7, 'CAMARGO', 28, 0);
INSERT INTO `municipios` VALUES(8, 'CASAS', 28, 0);
INSERT INTO `municipios` VALUES(9, 'CIUDAD MADERO', 28, 0);
INSERT INTO `municipios` VALUES(10, 'CRUILLAS', 28, 0);
INSERT INTO `municipios` VALUES(11, 'GOMEZ FARIAS', 28, 0);
INSERT INTO `municipios` VALUES(12, 'GONZALEZ', 28, 0);
INSERT INTO `municipios` VALUES(13, 'GUEMEZ', 28, 0);
INSERT INTO `municipios` VALUES(14, 'GUERRERO', 28, 0);
INSERT INTO `municipios` VALUES(15, 'GUSTAVO DIAZ ORDAZ', 28, 0);
INSERT INTO `municipios` VALUES(16, 'HIDALGO', 28, 0);
INSERT INTO `municipios` VALUES(17, 'JAUMAVE', 28, 0);
INSERT INTO `municipios` VALUES(18, 'JIMENEZ', 28, 0);
INSERT INTO `municipios` VALUES(19, 'LLERA', 28, 0);
INSERT INTO `municipios` VALUES(20, 'MAINERO', 28, 0);
INSERT INTO `municipios` VALUES(21, 'EL MANTE', 28, 0);
INSERT INTO `municipios` VALUES(22, 'MATAMOROS', 28, 0);
INSERT INTO `municipios` VALUES(23, 'MENDEZ', 28, 0);
INSERT INTO `municipios` VALUES(24, 'MIER', 28, 0);
INSERT INTO `municipios` VALUES(25, 'MIGUEL ALEMAN', 28, 0);
INSERT INTO `municipios` VALUES(26, 'MIQUIHUANA', 28, 0);
INSERT INTO `municipios` VALUES(27, 'NUEVO LAREDO', 28, 0);
INSERT INTO `municipios` VALUES(28, 'NUEVO MORELOS', 28, 0);
INSERT INTO `municipios` VALUES(29, 'OCAMPO', 28, 0);
INSERT INTO `municipios` VALUES(30, 'PADILLA', 28, 0);
INSERT INTO `municipios` VALUES(31, 'PALMILLAS', 28, 0);
INSERT INTO `municipios` VALUES(32, 'REYNOSA', 28, 0);
INSERT INTO `municipios` VALUES(33, 'RIO BRAVO', 28, 0);
INSERT INTO `municipios` VALUES(34, 'SAN CARLOS', 28, 0);
INSERT INTO `municipios` VALUES(35, 'SAN FERNANDO', 28, 0);
INSERT INTO `municipios` VALUES(36, 'SAN NICOLAS', 28, 0);
INSERT INTO `municipios` VALUES(37, 'SOTO LA MARINA', 28, 0);
INSERT INTO `municipios` VALUES(38, 'TAMPICO', 28, 0);
INSERT INTO `municipios` VALUES(39, 'TULA', 28, 0);
INSERT INTO `municipios` VALUES(40, 'VALLE HERMOSO', 28, 0);
INSERT INTO `municipios` VALUES(41, 'VICTORIA', 28, 0);
INSERT INTO `municipios` VALUES(42, 'VILLAGRAN', 28, 0);
INSERT INTO `municipios` VALUES(43, 'XICOTENCATL', 28, 0);
INSERT INTO `municipios` VALUES(1, 'AMAXAC DE GUERRERO', 29, 0);
INSERT INTO `municipios` VALUES(2, 'APETATITLAN DE A CARBAJAL', 29, 0);
INSERT INTO `municipios` VALUES(3, 'ATLANGATEPEC', 29, 0);
INSERT INTO `municipios` VALUES(4, 'ALTZAYANCA', 29, 0);
INSERT INTO `municipios` VALUES(5, 'APIZACO', 29, 0);
INSERT INTO `municipios` VALUES(6, 'CALPULALPAN', 29, 0);
INSERT INTO `municipios` VALUES(7, 'EL CARMEN TEQUEXQUITLA', 29, 0);
INSERT INTO `municipios` VALUES(8, 'CUAPIAXTLA', 29, 0);
INSERT INTO `municipios` VALUES(9, 'CUAXOMULCO', 29, 0);
INSERT INTO `municipios` VALUES(10, 'CHIAUTEMPAN', 29, 0);
INSERT INTO `municipios` VALUES(11, 'MU&OZ DE DOMINGO ARENAS', 29, 0);
INSERT INTO `municipios` VALUES(12, 'ESPA&ITA', 29, 0);
INSERT INTO `municipios` VALUES(13, 'HUAMANTLA', 29, 0);
INSERT INTO `municipios` VALUES(14, 'HUEYOTLIPAN', 29, 0);
INSERT INTO `municipios` VALUES(15, 'IXTACUIXTLA DE M MATAMOROS', 29, 0);
INSERT INTO `municipios` VALUES(16, 'IXTENCO', 29, 0);
INSERT INTO `municipios` VALUES(17, 'MAZATECOCHCO DE JOSE MA MORELOS', 29, 0);
INSERT INTO `municipios` VALUES(18, 'CONTLA DE JUAN CUAMATZI', 29, 0);
INSERT INTO `municipios` VALUES(19, 'TEPETITLA DE LARDIZABAL', 29, 0);
INSERT INTO `municipios` VALUES(20, 'SANCTORUM DE LAZARO CARDENAS', 29, 0);
INSERT INTO `municipios` VALUES(21, 'NANACAMILPA DE MARIANO ARISTA', 29, 0);
INSERT INTO `municipios` VALUES(22, 'ACUAMANALA DE MIGUEL HIDALGO', 29, 0);
INSERT INTO `municipios` VALUES(23, 'NATIVITAS', 29, 0);
INSERT INTO `municipios` VALUES(24, 'PANOTLA', 29, 0);
INSERT INTO `municipios` VALUES(25, 'SAN PABLO DEL MONTE', 29, 0);
INSERT INTO `municipios` VALUES(26, 'SANTA CRUZ TLAXCALA', 29, 0);
INSERT INTO `municipios` VALUES(27, 'TENANCINGO', 29, 0);
INSERT INTO `municipios` VALUES(28, 'TEOLOCHOLCO', 29, 0);
INSERT INTO `municipios` VALUES(29, 'TEPEYANCO', 29, 0);
INSERT INTO `municipios` VALUES(30, 'TERRENATE', 29, 0);
INSERT INTO `municipios` VALUES(31, 'TETLA', 29, 0);
INSERT INTO `municipios` VALUES(32, 'TETLATLAHUCA', 29, 0);
INSERT INTO `municipios` VALUES(33, 'TLAXCALA', 29, 0);
INSERT INTO `municipios` VALUES(34, 'TLAXCO', 29, 0);
INSERT INTO `municipios` VALUES(35, 'TOCATLAN', 29, 0);
INSERT INTO `municipios` VALUES(36, 'TOTOLAC', 29, 0);
INSERT INTO `municipios` VALUES(37, 'Z DE TRINIDAD SANCHEZ SANTOS', 29, 0);
INSERT INTO `municipios` VALUES(38, 'TZOMPANTEPEC', 29, 0);
INSERT INTO `municipios` VALUES(39, 'XALOZTOC', 29, 0);
INSERT INTO `municipios` VALUES(40, 'XALTOCAN', 29, 0);
INSERT INTO `municipios` VALUES(41, 'PAPALOTLA DE XICOHTENCATL', 29, 0);
INSERT INTO `municipios` VALUES(42, 'XICOTZINGO', 29, 0);
INSERT INTO `municipios` VALUES(43, 'YAUHQUEMEHCAN', 29, 0);
INSERT INTO `municipios` VALUES(44, 'ZACATELCO', 29, 0);
INSERT INTO `municipios` VALUES(45, 'BENITO JUAREZ', 29, 0);
INSERT INTO `municipios` VALUES(46, 'EMILIANO ZAPATA', 29, 0);
INSERT INTO `municipios` VALUES(47, 'LAZARO CARDENAS', 29, 0);
INSERT INTO `municipios` VALUES(48, 'LA MAGDALENA TLALTELULCO', 29, 0);
INSERT INTO `municipios` VALUES(49, 'SAN DAMIAN TEXOLOC', 29, 0);
INSERT INTO `municipios` VALUES(50, 'SAN FRANCISCO TETLANOHCA', 29, 0);
INSERT INTO `municipios` VALUES(51, 'SAN JERONIMO ZACUALPAN', 29, 0);
INSERT INTO `municipios` VALUES(52, 'SAN JOSE TEACALCO', 29, 0);
INSERT INTO `municipios` VALUES(53, 'SAN JUAN HUACTZINCO', 29, 0);
INSERT INTO `municipios` VALUES(54, 'SAN LORENZO AXOCOMANITLA', 29, 0);
INSERT INTO `municipios` VALUES(55, 'SAN LUCAS TECOPILCO', 29, 0);
INSERT INTO `municipios` VALUES(56, 'SANTA ANA NOPALUCAN', 29, 0);
INSERT INTO `municipios` VALUES(57, 'SANTA POLONIA TEACALCO', 29, 0);
INSERT INTO `municipios` VALUES(58, 'SANTA CATARINA AYOMETLA', 29, 0);
INSERT INTO `municipios` VALUES(59, 'SANTA CRUZ QUILEHTLA', 29, 0);
INSERT INTO `municipios` VALUES(60, 'SANTA ISABEL XILOXOXTLA', 29, 0);
INSERT INTO `municipios` VALUES(1, 'ACAJETE', 30, 0);
INSERT INTO `municipios` VALUES(2, 'ACATLAN', 30, 0);
INSERT INTO `municipios` VALUES(3, 'ACAYUCAN', 30, 0);
INSERT INTO `municipios` VALUES(4, 'ACTOPAN', 30, 0);
INSERT INTO `municipios` VALUES(5, 'ACULA', 30, 0);
INSERT INTO `municipios` VALUES(6, 'ACULTZINGO', 30, 0);
INSERT INTO `municipios` VALUES(7, 'CAMARON DE TEJEDA', 30, 0);
INSERT INTO `municipios` VALUES(8, 'ALPATLAHUAC', 30, 0);
INSERT INTO `municipios` VALUES(9, 'ALTO LUCERO', 30, 0);
INSERT INTO `municipios` VALUES(10, 'ALTOTONGA', 30, 0);
INSERT INTO `municipios` VALUES(11, 'ALVARADO', 30, 0);
INSERT INTO `municipios` VALUES(12, 'AMATITLAN', 30, 0);
INSERT INTO `municipios` VALUES(13, 'NARANJOS AMATLAN', 30, 0);
INSERT INTO `municipios` VALUES(14, 'AMATLAN DE LOS REYES', 30, 0);
INSERT INTO `municipios` VALUES(15, 'ANGEL R CABADA', 30, 0);
INSERT INTO `municipios` VALUES(16, 'LA ANTIGUA', 30, 0);
INSERT INTO `municipios` VALUES(17, 'APAZAPAN', 30, 0);
INSERT INTO `municipios` VALUES(18, 'AQUILA', 30, 0);
INSERT INTO `municipios` VALUES(19, 'ASTACINGA', 30, 0);
INSERT INTO `municipios` VALUES(20, 'ATLAHUILCO', 30, 0);
INSERT INTO `municipios` VALUES(21, 'ATOYAC', 30, 0);
INSERT INTO `municipios` VALUES(22, 'ATZACAN', 30, 0);
INSERT INTO `municipios` VALUES(23, 'ATZALAN', 30, 0);
INSERT INTO `municipios` VALUES(24, 'TLALTETELA', 30, 0);
INSERT INTO `municipios` VALUES(25, 'AYAHUALULCO', 30, 0);
INSERT INTO `municipios` VALUES(26, 'BANDERILLA', 30, 0);
INSERT INTO `municipios` VALUES(27, 'BENITO JUAREZ', 30, 0);
INSERT INTO `municipios` VALUES(28, 'BOCA DEL RIO', 30, 0);
INSERT INTO `municipios` VALUES(29, 'CALCAHUALCO', 30, 0);
INSERT INTO `municipios` VALUES(30, 'CAMERINO Z MENDOZA', 30, 0);
INSERT INTO `municipios` VALUES(31, 'CARRILLO PUERTO', 30, 0);
INSERT INTO `municipios` VALUES(32, 'CATEMACO', 30, 0);
INSERT INTO `municipios` VALUES(33, 'CAZONES DE HERRERA', 30, 0);
INSERT INTO `municipios` VALUES(34, 'CERRO AZUL', 30, 0);
INSERT INTO `municipios` VALUES(35, 'CITLALTEPETL', 30, 0);
INSERT INTO `municipios` VALUES(36, 'COACOATZINTLA', 30, 0);
INSERT INTO `municipios` VALUES(37, 'COAHUITLAN', 30, 0);
INSERT INTO `municipios` VALUES(38, 'COATEPEC', 30, 0);
INSERT INTO `municipios` VALUES(39, 'COATZACOALCOS', 30, 0);
INSERT INTO `municipios` VALUES(40, 'COATZINTLA', 30, 0);
INSERT INTO `municipios` VALUES(41, 'COETZALA', 30, 0);
INSERT INTO `municipios` VALUES(42, 'COLIPA', 30, 0);
INSERT INTO `municipios` VALUES(43, 'COMAPA', 30, 0);
INSERT INTO `municipios` VALUES(44, 'CORDOBA', 30, 0);
INSERT INTO `municipios` VALUES(45, 'COSAMALOAPAN', 30, 0);
INSERT INTO `municipios` VALUES(46, 'COSAUTLAN DE CARVAJAL', 30, 0);
INSERT INTO `municipios` VALUES(47, 'COSCOMATEPEC', 30, 0);
INSERT INTO `municipios` VALUES(48, 'COSOLEACAQUE', 30, 0);
INSERT INTO `municipios` VALUES(49, 'COTAXTLA', 30, 0);
INSERT INTO `municipios` VALUES(50, 'COXQUIHUI', 30, 0);
INSERT INTO `municipios` VALUES(51, 'COYUTLA', 30, 0);
INSERT INTO `municipios` VALUES(52, 'CUICHAPA', 30, 0);
INSERT INTO `municipios` VALUES(53, 'CUITLAHUAC', 30, 0);
INSERT INTO `municipios` VALUES(54, 'CHACALTIANGUIS', 30, 0);
INSERT INTO `municipios` VALUES(55, 'CHALMA', 30, 0);
INSERT INTO `municipios` VALUES(56, 'CHICONAMEL', 30, 0);
INSERT INTO `municipios` VALUES(57, 'CHICONQUIACO', 30, 0);
INSERT INTO `municipios` VALUES(58, 'CHICONTEPEC', 30, 0);
INSERT INTO `municipios` VALUES(59, 'CHINAMECA', 30, 0);
INSERT INTO `municipios` VALUES(60, 'CHINAMPA DE GOROSTIZA', 30, 0);
INSERT INTO `municipios` VALUES(61, 'LAS CHOAPAS', 30, 0);
INSERT INTO `municipios` VALUES(62, 'CHOCAMAN', 30, 0);
INSERT INTO `municipios` VALUES(63, 'CHONTLA', 30, 0);
INSERT INTO `municipios` VALUES(64, 'CHUMATLAN', 30, 0);
INSERT INTO `municipios` VALUES(65, 'EMILIANO ZAPATA', 30, 0);
INSERT INTO `municipios` VALUES(66, 'ESPINAL', 30, 0);
INSERT INTO `municipios` VALUES(67, 'FILOMENO MATA', 30, 0);
INSERT INTO `municipios` VALUES(68, 'FORTIN', 30, 0);
INSERT INTO `municipios` VALUES(69, 'GUTIERREZ ZAMORA', 30, 0);
INSERT INTO `municipios` VALUES(70, 'HIDALGOTITLAN', 30, 0);
INSERT INTO `municipios` VALUES(71, 'HUATUSCO', 30, 0);
INSERT INTO `municipios` VALUES(72, 'HUAYACOCOTLA', 30, 0);
INSERT INTO `municipios` VALUES(73, 'HUEYAPAN DE OCAMPO', 30, 0);
INSERT INTO `municipios` VALUES(74, 'HUILOAPAN DE CUAUHTEMOC', 30, 0);
INSERT INTO `municipios` VALUES(75, 'IGNACIO DE LA LLAVE', 30, 0);
INSERT INTO `municipios` VALUES(76, 'ILAMATLAN', 30, 0);
INSERT INTO `municipios` VALUES(77, 'ISLA', 30, 0);
INSERT INTO `municipios` VALUES(78, 'IXCATEPEC', 30, 0);
INSERT INTO `municipios` VALUES(79, 'IXHUACAN DE LOS REYES', 30, 0);
INSERT INTO `municipios` VALUES(80, 'IXHUATLAN DEL CAFE', 30, 0);
INSERT INTO `municipios` VALUES(81, 'IXHUATLANCILLO', 30, 0);
INSERT INTO `municipios` VALUES(82, 'IXHUATLAN DEL SURESTE', 30, 0);
INSERT INTO `municipios` VALUES(83, 'IXHUATLAN DE MADERO', 30, 0);
INSERT INTO `municipios` VALUES(84, 'IXMATLAHUACAN', 30, 0);
INSERT INTO `municipios` VALUES(85, 'IXTACZOQUITLAN', 30, 0);
INSERT INTO `municipios` VALUES(86, 'JALACINGO', 30, 0);
INSERT INTO `municipios` VALUES(87, 'JALAPA', 30, 0);
INSERT INTO `municipios` VALUES(88, 'JALCOMULCO', 30, 0);
INSERT INTO `municipios` VALUES(89, 'JALTIPAN', 30, 0);
INSERT INTO `municipios` VALUES(90, 'JAMAPA', 30, 0);
INSERT INTO `municipios` VALUES(91, 'JESUS CARRANZA', 30, 0);
INSERT INTO `municipios` VALUES(92, 'XICO', 30, 0);
INSERT INTO `municipios` VALUES(93, 'JILOTEPEC', 30, 0);
INSERT INTO `municipios` VALUES(94, 'JUAN RODRIGUEZ CLARA', 30, 0);
INSERT INTO `municipios` VALUES(95, 'JUCHIQUE DE FERRER', 30, 0);
INSERT INTO `municipios` VALUES(96, 'LANDERO Y COSS', 30, 0);
INSERT INTO `municipios` VALUES(97, 'LERDO DE TEJADA', 30, 0);
INSERT INTO `municipios` VALUES(98, 'MAGDALENA', 30, 0);
INSERT INTO `municipios` VALUES(99, 'MALTRATA', 30, 0);
INSERT INTO `municipios` VALUES(100, 'MANLIO FABIO ALTAMIRANO', 30, 0);
INSERT INTO `municipios` VALUES(101, 'MARIANO ESCOBEDO', 30, 0);
INSERT INTO `municipios` VALUES(102, 'MARTINEZ DE LA TORRE', 30, 0);
INSERT INTO `municipios` VALUES(103, 'MECATLAN', 30, 0);
INSERT INTO `municipios` VALUES(104, 'MECAYAPAN', 30, 0);
INSERT INTO `municipios` VALUES(105, 'MEDELLIN', 30, 0);
INSERT INTO `municipios` VALUES(106, 'MIAHUATLAN', 30, 0);
INSERT INTO `municipios` VALUES(107, 'LAS MINAS', 30, 0);
INSERT INTO `municipios` VALUES(108, 'MINATITLAN', 30, 0);
INSERT INTO `municipios` VALUES(109, 'MISANTLA', 30, 0);
INSERT INTO `municipios` VALUES(110, 'MIXTLA DE ALTAMIRANO', 30, 0);
INSERT INTO `municipios` VALUES(111, 'MOLOACAN', 30, 0);
INSERT INTO `municipios` VALUES(112, 'NAOLINCO', 30, 0);
INSERT INTO `municipios` VALUES(113, 'NARANJAL', 30, 0);
INSERT INTO `municipios` VALUES(114, 'NAUTLA', 30, 0);
INSERT INTO `municipios` VALUES(115, 'NOGALES', 30, 0);
INSERT INTO `municipios` VALUES(116, 'OLUTA', 30, 0);
INSERT INTO `municipios` VALUES(117, 'OMEALCA', 30, 0);
INSERT INTO `municipios` VALUES(118, 'ORIZABA', 30, 0);
INSERT INTO `municipios` VALUES(119, 'OTATITLAN', 30, 0);
INSERT INTO `municipios` VALUES(120, 'OTEAPAN', 30, 0);
INSERT INTO `municipios` VALUES(121, 'OZULUAMA', 30, 0);
INSERT INTO `municipios` VALUES(122, 'PAJAPAN', 30, 0);
INSERT INTO `municipios` VALUES(123, 'PANUCO', 30, 0);
INSERT INTO `municipios` VALUES(124, 'PAPANTLA', 30, 0);
INSERT INTO `municipios` VALUES(125, 'PASO DEL MACHO', 30, 0);
INSERT INTO `municipios` VALUES(126, 'PASO DE OVEJAS', 30, 0);
INSERT INTO `municipios` VALUES(127, 'LA PERLA', 30, 0);
INSERT INTO `municipios` VALUES(128, 'PEROTE', 30, 0);
INSERT INTO `municipios` VALUES(129, 'PLATON SANCHEZ', 30, 0);
INSERT INTO `municipios` VALUES(130, 'PLAYA VICENTE', 30, 0);
INSERT INTO `municipios` VALUES(131, 'POZA RICA DE HIDALGO', 30, 0);
INSERT INTO `municipios` VALUES(132, 'LAS VIGAS DE RAMIREZ', 30, 0);
INSERT INTO `municipios` VALUES(133, 'PUEBLO VIEJO', 30, 0);
INSERT INTO `municipios` VALUES(134, 'PUENTE NACIONAL', 30, 0);
INSERT INTO `municipios` VALUES(135, 'RAFAEL DELGADO', 30, 0);
INSERT INTO `municipios` VALUES(136, 'RAFAEL LUCIO', 30, 0);
INSERT INTO `municipios` VALUES(137, 'LOS REYES', 30, 0);
INSERT INTO `municipios` VALUES(138, 'RIO BLANCO', 30, 0);
INSERT INTO `municipios` VALUES(139, 'SALTABARRANCA', 30, 0);
INSERT INTO `municipios` VALUES(140, 'SAN ANDRES TENEJAPAN', 30, 0);
INSERT INTO `municipios` VALUES(141, 'SAN ANDRES TUXTLA', 30, 0);
INSERT INTO `municipios` VALUES(142, 'SAN JUAN EVANGELISTA', 30, 0);
INSERT INTO `municipios` VALUES(143, 'SANTIAGO TUXTLA', 30, 0);
INSERT INTO `municipios` VALUES(144, 'SAYULA DE ALEMAN', 30, 0);
INSERT INTO `municipios` VALUES(145, 'SOCONUSCO', 30, 0);
INSERT INTO `municipios` VALUES(146, 'SOCHIAPA', 30, 0);
INSERT INTO `municipios` VALUES(147, 'SOLEDAD ATZOMPA', 30, 0);
INSERT INTO `municipios` VALUES(148, 'SOLEDAD DE DOBLADO', 30, 0);
INSERT INTO `municipios` VALUES(149, 'SOTEAPAN', 30, 0);
INSERT INTO `municipios` VALUES(150, 'TAMALIN', 30, 0);
INSERT INTO `municipios` VALUES(151, 'TAMIAHUA', 30, 0);
INSERT INTO `municipios` VALUES(152, 'TAMPICO ALTO', 30, 0);
INSERT INTO `municipios` VALUES(153, 'TANCOCO', 30, 0);
INSERT INTO `municipios` VALUES(154, 'TANTIMA', 30, 0);
INSERT INTO `municipios` VALUES(155, 'TANTOYUCA', 30, 0);
INSERT INTO `municipios` VALUES(156, 'TATATILA', 30, 0);
INSERT INTO `municipios` VALUES(157, 'CASTILLO DE TEAYO', 30, 0);
INSERT INTO `municipios` VALUES(158, 'TECOLUTLA', 30, 0);
INSERT INTO `municipios` VALUES(159, 'TEHUIPANGO', 30, 0);
INSERT INTO `municipios` VALUES(160, 'TEMAPACHE', 30, 0);
INSERT INTO `municipios` VALUES(161, 'TEMPOAL', 30, 0);
INSERT INTO `municipios` VALUES(162, 'TENAMPA', 30, 0);
INSERT INTO `municipios` VALUES(163, 'TENOCHTITLAN', 30, 0);
INSERT INTO `municipios` VALUES(164, 'TEOCELO', 30, 0);
INSERT INTO `municipios` VALUES(165, 'TEPATLAXCO', 30, 0);
INSERT INTO `municipios` VALUES(166, 'TEPETLAN', 30, 0);
INSERT INTO `municipios` VALUES(167, 'TEPETZINTLA', 30, 0);
INSERT INTO `municipios` VALUES(168, 'TEQUILA', 30, 0);
INSERT INTO `municipios` VALUES(169, 'JOSE AZUETA', 30, 0);
INSERT INTO `municipios` VALUES(170, 'TEXCATEPEC', 30, 0);
INSERT INTO `municipios` VALUES(171, 'TEXHUACAN', 30, 0);
INSERT INTO `municipios` VALUES(172, 'TEXISTEPEC', 30, 0);
INSERT INTO `municipios` VALUES(173, 'TEZONAPA', 30, 0);
INSERT INTO `municipios` VALUES(174, 'TIERRA BLANCA', 30, 0);
INSERT INTO `municipios` VALUES(175, 'TIHUATLAN', 30, 0);
INSERT INTO `municipios` VALUES(176, 'TLACOJALPAN', 30, 0);
INSERT INTO `municipios` VALUES(177, 'TLACOLULAN', 30, 0);
INSERT INTO `municipios` VALUES(178, 'TLACOTALPAN', 30, 0);
INSERT INTO `municipios` VALUES(179, 'TLACOTEPEC DE MEJIA', 30, 0);
INSERT INTO `municipios` VALUES(180, 'TLACHICHILCO', 30, 0);
INSERT INTO `municipios` VALUES(181, 'TLALIXCOYAN', 30, 0);
INSERT INTO `municipios` VALUES(182, 'TLALNELHUAYOCAN', 30, 0);
INSERT INTO `municipios` VALUES(183, 'TLAPACOYAN', 30, 0);
INSERT INTO `municipios` VALUES(184, 'TLAQUILPAN', 30, 0);
INSERT INTO `municipios` VALUES(185, 'TLILAPAN', 30, 0);
INSERT INTO `municipios` VALUES(186, 'TOMATLAN', 30, 0);
INSERT INTO `municipios` VALUES(187, 'TONAYAN', 30, 0);
INSERT INTO `municipios` VALUES(188, 'TOTUTLA', 30, 0);
INSERT INTO `municipios` VALUES(189, 'TUXPAN', 30, 0);
INSERT INTO `municipios` VALUES(190, 'TUXTILLA', 30, 0);
INSERT INTO `municipios` VALUES(191, 'URSULO GALVAN', 30, 0);
INSERT INTO `municipios` VALUES(192, 'VEGA DE ALATORRE', 30, 0);
INSERT INTO `municipios` VALUES(193, 'VERACRUZ', 30, 0);
INSERT INTO `municipios` VALUES(194, 'VILLA ALDAMA', 30, 0);
INSERT INTO `municipios` VALUES(195, 'XOXOCOTLA', 30, 0);
INSERT INTO `municipios` VALUES(196, 'YANGA', 30, 0);
INSERT INTO `municipios` VALUES(197, 'YECUATLAN', 30, 0);
INSERT INTO `municipios` VALUES(198, 'ZACUALPAN', 30, 0);
INSERT INTO `municipios` VALUES(199, 'ZARAGOZA', 30, 0);
INSERT INTO `municipios` VALUES(200, 'ZENTLA', 30, 0);
INSERT INTO `municipios` VALUES(201, 'ZONGOLICA', 30, 0);
INSERT INTO `municipios` VALUES(202, 'ZONTECOMATLAN', 30, 0);
INSERT INTO `municipios` VALUES(203, 'ZOZOCOLCO DE HIDALGO', 30, 0);
INSERT INTO `municipios` VALUES(204, 'AGUA DULCE', 30, 0);
INSERT INTO `municipios` VALUES(205, 'EL HIGO', 30, 0);
INSERT INTO `municipios` VALUES(206, 'NANCHITAL DE LAZARO CARDENAS DEL RIO', 30, 0);
INSERT INTO `municipios` VALUES(207, 'TRES VALLES', 30, 0);
INSERT INTO `municipios` VALUES(208, 'CARLOS A CARRILLO', 30, 0);
INSERT INTO `municipios` VALUES(209, 'UXPANAPA', 30, 0);
INSERT INTO `municipios` VALUES(210, 'TATAHUICAPAN DE JUAREZ', 30, 0);
INSERT INTO `municipios` VALUES(571, 'SOCHIAPAN', 30, 0);
INSERT INTO `municipios` VALUES(573, 'SAN RAFAEL', 30, 0);
INSERT INTO `municipios` VALUES(1, 'ABALA', 31, 0);
INSERT INTO `municipios` VALUES(2, 'ACANCEH', 31, 0);
INSERT INTO `municipios` VALUES(3, 'AKIL', 31, 0);
INSERT INTO `municipios` VALUES(4, 'BACA', 31, 0);
INSERT INTO `municipios` VALUES(5, 'BOKOBA', 31, 0);
INSERT INTO `municipios` VALUES(6, 'BUCTZOTZ', 31, 0);
INSERT INTO `municipios` VALUES(7, 'CACALCHEN', 31, 0);
INSERT INTO `municipios` VALUES(8, 'CALOTMUL', 31, 0);
INSERT INTO `municipios` VALUES(9, 'CANSAHCAB', 31, 0);
INSERT INTO `municipios` VALUES(10, 'CANTAMAYEC', 31, 0);
INSERT INTO `municipios` VALUES(11, 'CELESTUN', 31, 0);
INSERT INTO `municipios` VALUES(12, 'CENOTILLO', 31, 0);
INSERT INTO `municipios` VALUES(13, 'CONKAL', 31, 0);
INSERT INTO `municipios` VALUES(14, 'CUNCUNUL', 31, 0);
INSERT INTO `municipios` VALUES(15, 'CUZAMA', 31, 0);
INSERT INTO `municipios` VALUES(16, 'CHACSINKIN', 31, 0);
INSERT INTO `municipios` VALUES(17, 'CHANKOM', 31, 0);
INSERT INTO `municipios` VALUES(18, 'CHAPAB', 31, 0);
INSERT INTO `municipios` VALUES(19, 'CHEMAX', 31, 0);
INSERT INTO `municipios` VALUES(20, 'CHICXULUB PUEBLO', 31, 0);
INSERT INTO `municipios` VALUES(21, 'CHICHIMILA', 31, 0);
INSERT INTO `municipios` VALUES(22, 'CHIKINDZONOT', 31, 0);
INSERT INTO `municipios` VALUES(23, 'CHOCHOLA', 31, 0);
INSERT INTO `municipios` VALUES(24, 'CHUMAYEL', 31, 0);
INSERT INTO `municipios` VALUES(25, 'DZAN', 31, 0);
INSERT INTO `municipios` VALUES(26, 'DZEMUL', 31, 0);
INSERT INTO `municipios` VALUES(27, 'DZIDZANTUN', 31, 0);
INSERT INTO `municipios` VALUES(28, 'DZILAM DE BRAVO', 31, 0);
INSERT INTO `municipios` VALUES(29, 'DZILAM GONZALEZ', 31, 0);
INSERT INTO `municipios` VALUES(30, 'DZITAS', 31, 0);
INSERT INTO `municipios` VALUES(31, 'DZONCAUICH', 31, 0);
INSERT INTO `municipios` VALUES(32, 'ESPITA', 31, 0);
INSERT INTO `municipios` VALUES(33, 'HALACHO', 31, 0);
INSERT INTO `municipios` VALUES(34, 'HOCABA', 31, 0);
INSERT INTO `municipios` VALUES(35, 'HOCTUN', 31, 0);
INSERT INTO `municipios` VALUES(36, 'HOMUN', 31, 0);
INSERT INTO `municipios` VALUES(37, 'HUHI', 31, 0);
INSERT INTO `municipios` VALUES(38, 'HUNUCMA', 31, 0);
INSERT INTO `municipios` VALUES(39, 'IXIL', 31, 0);
INSERT INTO `municipios` VALUES(40, 'IZAMAL', 31, 0);
INSERT INTO `municipios` VALUES(41, 'KANASIN', 31, 0);
INSERT INTO `municipios` VALUES(42, 'KANTUNIL', 31, 0);
INSERT INTO `municipios` VALUES(43, 'KAUA', 31, 0);
INSERT INTO `municipios` VALUES(44, 'KINCHIL', 31, 0);
INSERT INTO `municipios` VALUES(45, 'KOPOMA', 31, 0);
INSERT INTO `municipios` VALUES(46, 'MAMA', 31, 0);
INSERT INTO `municipios` VALUES(47, 'MANI', 31, 0);
INSERT INTO `municipios` VALUES(48, 'MAXCANU', 31, 0);
INSERT INTO `municipios` VALUES(49, 'MAYAPAN', 31, 0);
INSERT INTO `municipios` VALUES(50, 'MERIDA', 31, 0);
INSERT INTO `municipios` VALUES(51, 'MOCOCHA', 31, 0);
INSERT INTO `municipios` VALUES(52, 'MOTUL', 31, 0);
INSERT INTO `municipios` VALUES(53, 'MUNA', 31, 0);
INSERT INTO `municipios` VALUES(54, 'MUXUPIP', 31, 0);
INSERT INTO `municipios` VALUES(55, 'OPICHEN', 31, 0);
INSERT INTO `municipios` VALUES(56, 'OXKUTZCAB', 31, 0);
INSERT INTO `municipios` VALUES(57, 'PANABA', 31, 0);
INSERT INTO `municipios` VALUES(58, 'PETO', 31, 0);
INSERT INTO `municipios` VALUES(59, 'PROGRESO', 31, 0);
INSERT INTO `municipios` VALUES(60, 'QUINTANA ROO', 31, 0);
INSERT INTO `municipios` VALUES(61, 'RIO LAGARTOS', 31, 0);
INSERT INTO `municipios` VALUES(62, 'SACALUM', 31, 0);
INSERT INTO `municipios` VALUES(63, 'SAMAHIL', 31, 0);
INSERT INTO `municipios` VALUES(64, 'SANAHCAT', 31, 0);
INSERT INTO `municipios` VALUES(65, 'SAN FELIPE', 31, 0);
INSERT INTO `municipios` VALUES(66, 'SANTA ELENA', 31, 0);
INSERT INTO `municipios` VALUES(67, 'SEYE', 31, 0);
INSERT INTO `municipios` VALUES(68, 'SINANCHE', 31, 0);
INSERT INTO `municipios` VALUES(69, 'SOTUTA', 31, 0);
INSERT INTO `municipios` VALUES(70, 'SUCILA', 31, 0);
INSERT INTO `municipios` VALUES(71, 'SUDZAL', 31, 0);
INSERT INTO `municipios` VALUES(72, 'SUMA', 31, 0);
INSERT INTO `municipios` VALUES(73, 'TAHDZIU', 31, 0);
INSERT INTO `municipios` VALUES(74, 'TAHMEK', 31, 0);
INSERT INTO `municipios` VALUES(75, 'TEABO', 31, 0);
INSERT INTO `municipios` VALUES(76, 'TECOH', 31, 0);
INSERT INTO `municipios` VALUES(77, 'TEKAL DE VENEGAS', 31, 0);
INSERT INTO `municipios` VALUES(78, 'TEKANTO', 31, 0);
INSERT INTO `municipios` VALUES(79, 'TEKAX', 31, 0);
INSERT INTO `municipios` VALUES(80, 'TEKIT', 31, 0);
INSERT INTO `municipios` VALUES(81, 'TEKOM', 31, 0);
INSERT INTO `municipios` VALUES(82, 'TELCHAC PUEBLO', 31, 0);
INSERT INTO `municipios` VALUES(83, 'TELCHAC PUERTO', 31, 0);
INSERT INTO `municipios` VALUES(84, 'TEMAX', 31, 0);
INSERT INTO `municipios` VALUES(85, 'TEMOZON', 31, 0);
INSERT INTO `municipios` VALUES(86, 'TEPAKAN', 31, 0);
INSERT INTO `municipios` VALUES(87, 'TETIZ', 31, 0);
INSERT INTO `municipios` VALUES(88, 'TEYA', 31, 0);
INSERT INTO `municipios` VALUES(89, 'TICUL', 31, 0);
INSERT INTO `municipios` VALUES(90, 'TIMUCUY', 31, 0);
INSERT INTO `municipios` VALUES(91, 'TINUM', 31, 0);
INSERT INTO `municipios` VALUES(92, 'TIXCACALCUPUL', 31, 0);
INSERT INTO `municipios` VALUES(93, 'TIXKOKOB', 31, 0);
INSERT INTO `municipios` VALUES(94, 'TIXMEUAC', 31, 0);
INSERT INTO `municipios` VALUES(95, 'TIXPEUAL', 31, 0);
INSERT INTO `municipios` VALUES(96, 'TIZIMIN', 31, 0);
INSERT INTO `municipios` VALUES(97, 'TUNKAS', 31, 0);
INSERT INTO `municipios` VALUES(98, 'TZUCACAB', 31, 0);
INSERT INTO `municipios` VALUES(99, 'UAYMA', 31, 0);
INSERT INTO `municipios` VALUES(100, 'UCU', 31, 0);
INSERT INTO `municipios` VALUES(101, 'UMAN', 31, 0);
INSERT INTO `municipios` VALUES(102, 'VALLADOLID', 31, 0);
INSERT INTO `municipios` VALUES(103, 'XOCCHEL', 31, 0);
INSERT INTO `municipios` VALUES(104, 'YAXCABA', 31, 0);
INSERT INTO `municipios` VALUES(105, 'YAXKUKUL', 31, 0);
INSERT INTO `municipios` VALUES(106, 'YOBAIN', 31, 0);
INSERT INTO `municipios` VALUES(1, 'APOZOL', 32, 0);
INSERT INTO `municipios` VALUES(2, 'APULCO', 32, 0);
INSERT INTO `municipios` VALUES(3, 'ATOLINGA', 32, 0);
INSERT INTO `municipios` VALUES(4, 'BENITO JUAREZ', 32, 0);
INSERT INTO `municipios` VALUES(5, 'CALERA', 32, 0);
INSERT INTO `municipios` VALUES(6, 'CA&ITAS DE FELIPE PESCADOR', 32, 0);
INSERT INTO `municipios` VALUES(7, 'CONCEPCION DEL ORO', 32, 0);
INSERT INTO `municipios` VALUES(8, 'CUAUHTEMOC', 32, 0);
INSERT INTO `municipios` VALUES(9, 'CHALCHIHUITES', 32, 0);
INSERT INTO `municipios` VALUES(10, 'FRESNILLO', 32, 0);
INSERT INTO `municipios` VALUES(11, 'TRINIDAD GARCIA DE LA CADENA', 32, 0);
INSERT INTO `municipios` VALUES(12, 'GENARO CODINA', 32, 0);
INSERT INTO `municipios` VALUES(13, 'GENERAL ENRIQUE ESTRADA', 32, 0);
INSERT INTO `municipios` VALUES(14, 'GENERAL FRANCISCO R MURGUIA', 32, 0);
INSERT INTO `municipios` VALUES(15, 'GENERAL JOAQUIN AMARO', 32, 0);
INSERT INTO `municipios` VALUES(16, 'GENERAL PANFILO NATERA', 32, 0);
INSERT INTO `municipios` VALUES(17, 'GUADALUPE', 32, 0);
INSERT INTO `municipios` VALUES(18, 'HUANUSCO', 32, 0);
INSERT INTO `municipios` VALUES(19, 'JALPA', 32, 0);
INSERT INTO `municipios` VALUES(20, 'JEREZ', 32, 0);
INSERT INTO `municipios` VALUES(21, 'JIMENEZ DEL TEUL', 32, 0);
INSERT INTO `municipios` VALUES(22, 'JUAN ALDAMA', 32, 0);
INSERT INTO `municipios` VALUES(23, 'JUCHIPILA', 32, 0);
INSERT INTO `municipios` VALUES(24, 'LORETO', 32, 0);
INSERT INTO `municipios` VALUES(25, 'LUIS MOYA', 32, 0);
INSERT INTO `municipios` VALUES(26, 'MAZAPIL', 32, 0);
INSERT INTO `municipios` VALUES(27, 'MELCHOR OCAMPO', 32, 0);
INSERT INTO `municipios` VALUES(28, 'MEZQUITAL DEL ORO', 32, 0);
INSERT INTO `municipios` VALUES(29, 'MIGUEL AUZA', 32, 0);
INSERT INTO `municipios` VALUES(30, 'MOMAX', 32, 0);
INSERT INTO `municipios` VALUES(31, 'MONTE ESCOBEDO', 32, 0);
INSERT INTO `municipios` VALUES(32, 'MORELOS', 32, 0);
INSERT INTO `municipios` VALUES(33, 'MOYAHUA DE ESTRADA', 32, 0);
INSERT INTO `municipios` VALUES(34, 'NOCHISTLAN DE MEJIA', 32, 0);
INSERT INTO `municipios` VALUES(35, 'NORIA DE ANGELES', 32, 0);
INSERT INTO `municipios` VALUES(36, 'OJOCALIENTE', 32, 0);
INSERT INTO `municipios` VALUES(37, 'PANUCO', 32, 0);
INSERT INTO `municipios` VALUES(38, 'PINOS', 32, 0);
INSERT INTO `municipios` VALUES(39, 'RIO GRANDE', 32, 0);
INSERT INTO `municipios` VALUES(40, 'SAIN ALTO', 32, 0);
INSERT INTO `municipios` VALUES(41, 'EL SALVADOR', 32, 0);
INSERT INTO `municipios` VALUES(42, 'SOMBRERETE', 32, 0);
INSERT INTO `municipios` VALUES(43, 'SUSTICACAN', 32, 0);
INSERT INTO `municipios` VALUES(44, 'TABASCO', 32, 0);
INSERT INTO `municipios` VALUES(45, 'TEPECHITLAN', 32, 0);
INSERT INTO `municipios` VALUES(46, 'TEPETONGO', 32, 0);
INSERT INTO `municipios` VALUES(47, 'TEUL DE GONZALEZ ORTEGA', 32, 0);
INSERT INTO `municipios` VALUES(48, 'TLALTENANGO DE SANCHEZ ROMAN', 32, 0);
INSERT INTO `municipios` VALUES(49, 'VALPARAISO', 32, 0);
INSERT INTO `municipios` VALUES(50, 'VETAGRANDE', 32, 0);
INSERT INTO `municipios` VALUES(51, 'VILLA DE COS', 32, 0);
INSERT INTO `municipios` VALUES(52, 'VILLA GARCIA', 32, 0);
INSERT INTO `municipios` VALUES(53, 'VILLA GONZALEZ ORTEGA', 32, 0);
INSERT INTO `municipios` VALUES(54, 'VILLA HIDALGO', 32, 0);
INSERT INTO `municipios` VALUES(55, 'VILLANUEVA', 32, 0);
INSERT INTO `municipios` VALUES(56, 'ZACATECAS', 32, 0);
INSERT INTO `municipios` VALUES(57, 'TRANCOSO', 32, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apPaterno` varchar(45) DEFAULT NULL,
  `apMaterno` varchar(45) DEFAULT NULL,
  `fechaNac` date DEFAULT NULL,
  `domicilio` varchar(100) DEFAULT NULL,
  `idEstado` int(11) DEFAULT NULL,
  `idMunicipio` int(11) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `activo` int(11) DEFAULT 0,
  `hash` varchar(32) DEFAULT NULL,
  `idRol` int(11) DEFAULT NULL,
  `id_juzgado` int(11) NOT NULL DEFAULT 0,
  `id_distrito` int(2) NOT NULL DEFAULT 0,
  `curp` varchar(18) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `fecha_altas` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura para la vista `estadisticas`
--
DROP TABLE IF EXISTS `estadisticas`;
-- Error leyendo la estructura de la tabla citasdb.estadisticas: #1142 - SHOW VIEW comando negado para usuario: 'bdrespaldos'@'localhost' para tabla 'estadisticas'

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cat_servicios`
--
ALTER TABLE `cat_servicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `diasInhabiles`
--
ALTER TABLE `diasInhabiles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `distritos`
--
ALTER TABLE `distritos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `horasBloqueadas`
--
ALTER TABLE `horasBloqueadas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `juzgados`
--
ALTER TABLE `juzgados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_roles` (`id_roles`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id_municipio`,`id_estado`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cat_servicios`
--
ALTER TABLE `cat_servicios`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `diasInhabiles`
--
ALTER TABLE `diasInhabiles`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `distritos`
--
ALTER TABLE `distritos`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horasBloqueadas`
--
ALTER TABLE `horasBloqueadas`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `juzgados`
--
ALTER TABLE `juzgados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
