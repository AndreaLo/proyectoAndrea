-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 24, 2017 at 07:33 PM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tienda`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'Zapatos', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRfjSAmfVwnoX6O4X1MSRcsfeybbf-ojgoW5culjbvRA1q3flAacg', '2017-02-21 23:00:00', '2017-02-21 23:00:00'),
(2, 'Bolsos', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCzpWxSAaQxyOjgB0exhdEDEecP-jGVuBMNyFMkieQ6__XzsEK', '2017-02-21 23:00:00', '2017-02-21 23:00:00'),
(3, 'Blusas', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGFZxXQfHr_jHRX0OnOKgFoCFmMtKZBClxTB7hjcM9SsBTMWos', '2017-02-21 23:00:00', '2017-02-21 23:00:00'),
(4, 'Faldas', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRINAMcctWpsISNW8yww3ssC3yfDGVh6IGSZjjuV5dkFrwmsWSesg', '2017-02-21 23:00:00', '2017-02-21 23:00:00'),
(5, 'Pantalones', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR9GxVo98RYxal4yyQ8RmCEykFj6VLTxZo5UxKx-JhDzL-CZYHO', '2017-02-21 23:00:00', '2017-02-21 23:00:00'),
(6, 'Vestidos', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQylnqoSiyR3WMj5p7EqK-SfRz9z4aNTAclrEk39PU79y5z9Mz5Jw', '2017-02-23 23:00:00', '2017-02-23 23:00:00'),
(7, 'Chaquetas', 'http://www.decueroonline.com/wp-content/uploads/2016/11/Chaqueta-de-Cuero-Sinttico-Cazadora-Biker-de-Polipiel-para-Mujer-0-300x300.jpg', '2017-02-22 23:00:00', '2017-02-22 23:00:00'),
(8, 'Complementos', 'http://coquettecollier.com/356-thickbox_default/collar-cordon.jpg', '2017-02-22 23:00:00', '2017-02-22 23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_02_22_184544_create_productos_table', 2),
(4, '2017_02_22_184559_create_categorias_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `precio` double(8,2) NOT NULL,
  `novedad` tinyint(1) NOT NULL DEFAULT '0',
  `imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `categoria_id`, `precio`, `novedad`, `imagen`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 1, 125.00, 0, 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS9hhUc6DuGEloqzvcW9Nl7o2YuixtxvRpH3n_WyM8SQGO-977Z-Q', 'Zapato de punta en color rojo intenso. Tacón de aguja de 7,5 cm.\r\nDetalles en camel y tachuelas doradas. Cierre de hebilla. Material: charol', NULL, NULL),
(2, 1, 75.00, 1, 'https://ae01.alicdn.com/kf/HTB1UmUiKpXXXXcgXpXXq6xXFXXX1/Free-Shipping-Women-Casual-Office-Work-Shoes-Single-Comfortable-lady-Heel-Shoes-Ladies-Leather-Oxfords-Shoes.jpg', 'Botín bajo de charol en color negro. Cierre con cordones. Tacón ancho, altura 4cm. Ideal para el dia a dia. Deseño muy versatil', '2017-02-21 23:00:00', '2017-02-21 23:00:00'),
(3, 1, 42.00, 0, 'https://ae01.alicdn.com/kf/HTB1GNJNJFXXXXaaXVXXq6xXFXXXb/Ankle-Boots-For-Women-Boots-Square-Heels-Pointed-Toe-Botas-Women-Winter-Shoes-Platform-Martin-Motorcycle.jpg', 'Botín en tono rojo vino. Material impermeable. Cierre con cremallera lateral. plataforma de 1.5 cm', '2017-02-21 23:00:00', '2017-02-21 23:00:00'),
(4, 1, 40.00, 0, 'http://g01.a.alicdn.com/kf/HTB1cMm6KVXXXXcpXFXXq6xXFXXXi/2017-Nueva-llegada-Negro-marr%C3%B3n-PU-Slip-on-zapatos-de-las-mujeres-Planas-de-Gran-tama%C3%B1o.jpg', 'Zapatilla en marron clarito, decorado con troquelados que forman n dibujo. Ideales para el dia a dia. Material: piel. Suela con margen en blanco.', '2017-02-21 23:00:00', '2017-02-21 23:00:00'),
(5, 1, 65.00, 0, 'https://ae01.alicdn.com/kf/HTB170qDKXXXXXaoXpXXq6xXFXXXS/-font-b-Yellow-b-font-Snake-Embossed-Leather-Pointed-Toe-font-b-Women-b-font.jpg', 'Zapato de tacón de aguja. Color amarillo. Textura de piel de serpiente. Altura del tacón de 8cm.', '2017-02-21 23:00:00', '2017-02-21 23:00:00'),
(6, 1, 32.00, 1, 'https://ae01.alicdn.com/kf/HTB11OVAIpXXXXaeXpXXq6xXFXXXE/Moda-zapatos-de-tac%C3%B3n-alto-de-las-mujeres-plataforma-de-zapatos-de-punta-abierta-tacones-delgados.jpg', 'Zapato de verano en color turquesa. Tacon ancho y altura de 9cm, Material de ante.\r\nDiseño fresquito elegante y alegre.', '2017-02-21 23:00:00', '2017-02-21 23:00:00'),
(7, 1, 32.00, 1, 'https://ae01.alicdn.com/kf/HTB1G.pdIXXXXXaRXFXXq6xXFXXXX/Hot-2016-New-Fashion-Womens-font-b-Shoes-b-font-Peep-toe-Pumps-Sexy-Thick-font.jpg', 'Zapato en tonos naranjas. Abierto por delante. Tacón de aguja de 8 cm. Fresquitos y elegantes', NULL, NULL),
(8, 1, 78.00, 0, 'http://g04.a.alicdn.com/kf/HTB17gzFJVXXXXXTaXXXq6xXFXXXg/Women-Boots-2015-Fashion-Thick-High-Heel-Double-Buckle-Elastic-Bootie-Zip-Martins-Ankle-Boots-Fashion.jpg', 'Botin vaquero en color marrón de piel. Apertura elastica plataforma de 3cm. Comodos y versatiles.', NULL, NULL),
(9, 2, 43.00, 0, 'https://s-media-cache-ak0.pinimg.com/736x/ea/94/bc/ea94bcf4a4878a80ab2994b7f9848b39.jpg', 'Bolso en blanco de medida grande. Multiples compartimentos. Cremalleras en dorado.', NULL, NULL),
(10, 2, 35.00, 1, 'https://bolsobag.files.wordpress.com/2014/08/shopper-bag-de-piel-para-mujer-rosa.jpg', 'Bolso en rojo. Material de goma impermeable. Tamaño grande. Multiples compartimentos. Cremallera dorada', NULL, NULL),
(11, 2, 25.00, 1, 'http://g02.a.alicdn.com/kf/HTB1yiS9HVXXXXbLXVXXq6xXFXXXH/2015-Nuevos-Bolsos-de-charol-Tote-Moda-para-mujer-Bolsos-Del-Mensajero-Del-Hombro-de-Las.jpg', 'Bolso cruzado tamaño mediano. Material de tela. Estampado floreado. Fondo oscuro y flores en rojo.', NULL, NULL),
(12, 2, 20.00, 0, 'https://ae01.alicdn.com/kf/HTB1I9rDJVXXXXXdXFXXq6xXFXXX9/Espl&eacute;ndido-Famoso-Marcas-Bolsos-2016-de-Lujo-Elegante-Mujer-Bolsos-Grandes-de-Las-Mujeres-de-LA.jpg', 'Bolso de tamaño pequeño, tira cruzada. Material en piel, color turquesa. Amplio espacio.', NULL, NULL),
(13, 2, 25.00, 0, 'http://asmoda.com/img/complementos/1776_1.jpg', 'Bolso en amarillo de tamaño grande. Múltiples compartimentos. Cremallera en dorado. Material de charol', NULL, NULL),
(14, 2, 30.00, 0, 'https://www.lomasdemoda.com/imagenes/productos/SJF084/SJF0841.jpg', '', NULL, NULL),
(15, 2, 40.00, 0, 'http://www.solo-regalos-originales.com/images/productos/lista/grandes/Muy%20bonito%20Bolso%20Grabado%20Marr%C3%B3n%20Gr..jpg', 'Bolso informal de tamaño mediano. Color en marrón clarito. Tira para llevar cruzado.', NULL, NULL),
(16, 2, 30.00, 0, 'https://ae01.alicdn.com/kf/HTB17ECvKXXXXXcmXpXXq6xXFXXX9/2016-Mujeres-del-Resorte-Bolsos-de-La-Armadura-de-La-Borla-de-Las-Mujeres-de-LA.jpg', 'Bolso en negro de estampado escamado. Material en polipiel. Cremallera en plateado. Amplios compartimentos.', NULL, NULL),
(17, 3, 15.00, 1, 'https://media.linio.cl/p/generic-1828-9343302-1-product.jpg', 'Blusa ligera en color azúl electrico. Escote en punta. Botones en dorado. Mangas en tres cuartos.', NULL, NULL),
(18, 3, 15.00, 0, 'http://g03.a.alicdn.com/kf/HTB1fn6vIpXXXXcxXVXXq6xXFXXXW/-font-b-Women-b-font-Tops-font-b-Yellow-b-font-Chiffon-font-b-Blouse.jpg', 'Blusa en color azul turquesa. Material ligero y fresco. Manga corta. Ancha y fresquita', NULL, NULL),
(19, 3, 10.00, 0, 'https://ae01.alicdn.com/kf/HTB1XJvYPXXXXXcFaXXXq6xXFXXXn/TFGS-Autumn-font-b-Female-b-font-Wine-font-b-Red-b-font-Long-sleeved-Chiffon.jpg', 'Blusa en rojo con cuello tipo bebe en blanco y mangas con detalles en blanco. Tela de gasa', NULL, NULL),
(20, 3, 20.00, 0, 'https://ae01.alicdn.com/kf/HTB1WMxsIXXXXXX4XFXXq6xXFXXX3/Sl-azul-amarillo-color-natural-2015-mujeres-de-moda-casual-blusa-de-la-gasa-delgado-oficina.jpg', 'Blusa en amarillo, ancha y fresquita. Diseño comodo y versatil. Tela de gasa. Manga corta', NULL, NULL),
(21, 3, 25.00, 1, 'https://ae01.alicdn.com/kf/HTB1NocVLpXXXXbpXpXXq6xXFXXX0/2016-Mujeres-Del-Oto&ntilde;o-Tops-Peter-Pan-de-La-Gasa-de-Manga-Larga-Blusa-de-Las.jpg', 'Camisa en color rosa pastel con detalles en blanco. Bordado en hilo blanco en el centro.', NULL, NULL),
(22, 3, 25.00, 0, 'http://i.ebayimg.com/00/s/ODAwWDgwMA==/z/qMsAAOSwintXSBUU/$_35.JPG', 'Blusa de manga corta y tela fresquita. Estampado de pajaritos con el fondo blanco.', NULL, NULL),
(23, 4, 25.00, 1, 'http://ropaparagorditas.org/wp-content/uploads/2015/06/Faldas-voladas-plus-size-6.jpg', 'Falda ancha y estrecha en cintura de color azúl pitugo. Tela de satén', NULL, NULL),
(24, 4, 30.00, 0, 'https://ae01.alicdn.com/kf/HTB1dG14OFXXXXXaapXXq6xXFXXXd/-font-b-Rose-b-font-Prints-font-b-Skirts-b-font-font-b-Womens-b.jpg', 'Falda de volante con estampado floreado y fondo en tono claro.', NULL, NULL),
(25, 5, 35.00, 0, 'http://www.bestshopping.es/WebRoot/StoreES/Shops/63731684/5053/17D7/4415/C3A1/F3FD/C0A8/29BB/6326/Lois_Jeans_Pantalon_Casual_Mujer_Neylyttc_Monicly_1.jpg', 'Tejanos largos en color rojo, ajustados y de pitillo. ', NULL, NULL),
(26, 5, 25.00, 1, 'http://marialuisamaestre.es/969-thickbox/pantalon-mujer-vaquero-aplicaciones-cambio.jpg', 'Tjano clarito largo y de pitillo. Ajustados y comodos.', NULL, NULL),
(27, 6, 35.00, 0, 'https://ae01.alicdn.com/kf/HTB1twp8LXXXXXXjXpXXq6xXFXXXV/Vestidos-Women-font-b-Dress-b-font-Pinup-Vintage-50s-Retro-Rockabilly-Club-font-b-Dress.jpg', 'Elegante vestido rojo. Falda de volante y cintura ajustada.', NULL, NULL),
(28, 7, 40.00, 0, 'http://www.decueroonline.com/wp-content/uploads/2016/11/Chaqueta-de-Cuero-Sinttico-Cazadora-Biker-de-Polipiel-para-Mujer-0-300x300.jpg', 'Chaqueta de cuero marrón. Corta y ajustada.', NULL, NULL),
(29, 8, 15.00, 0, 'https://ae01.alicdn.com/kf/HTB1SN.4HFXXXXacXXXXq6xXFXXXB/Collar-de-la-declaraci%C3%B3n-2016-nuevos-collares-para-las-mujeres-dise%C3%B1o-multicolor-resina-collares-de-cristal.jpg', 'Collar ostentoso multicolor.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
