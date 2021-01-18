-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-01-2021 a las 21:41:49
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blogciencia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `views`, `image`, `body`, `published`, `created_at`, `updated_at`) VALUES
(4, 1, 'Newton y la Luz', 'newton-y-la-luz', 0, 'descargar.jpg', 'En aquella &eacute;poca dominaba la idea de Descartes de que la luz estaba compuesta por peque&ntilde;os corp&uacute;sculos. Los colores eran la mezcla de luz y oscuridad, en distintas proporciones. Antes que Newton, Descartes ya intent&oacute; descomponer la luz, pero s&oacute;lo logr&oacute; obtener los colores rojo y azul.\r\n\r\nNewton emple&oacute; un par de prismas de vidrio que, por entonces, eran populares como juguetes infantiles. As&iacute; que fue un experimento muy barato. Prepar&oacute; una estancia en total oscuridad. S&oacute;lo a trav&eacute;s de un agujero en la ventana entraba un rayo de luz solar. Coloc&oacute; el prisma delante del rayo de luz, de modo que lo atravesara y reflejara la luz en la pared opuesta, a 7 metros de distancia. En la pared aparec&iacute;an los colores del arco iris de forma alargada, uno sobre otro.\r\n\r\nCab&iacute;an dos posibilidades. O bien el prisma daba color a la luz, o la luz era la mezcla de todos los colores y el prisma se limitaba a descomponerla. Para comprobarlo, utiliz&oacute; el segundo prisma. Tras la luz descompuesta en colores coloc&oacute; otra pantalla con un agujero, a unos 3 metros. Por este agujero fue haciendo pasar los colores de uno en uno. De modo que, detr&aacute;s de la pantalla, s&oacute;lo pod&iacute;a verse el color elegido. Por ejemplo, el rojo. Una vez aislado un color, lo hac&iacute;a pasar a trav&eacute;s del segundo prisma y lo reflejaba en otra pared.', 1, '2021-01-13 09:15:35', '2021-01-13 09:15:10'),
(5, 1, 'La tecnología que invadirá nuestras vidas en 2021', 'la-tecnolog-a-que-invadir-nuestras-vidas-en-2021', 0, '06Techfix-illo-jumbo.gif', 'Antes de que el coronavirus transformara nuestras vidas, cada a&ntilde;o las listas de tecnolog&iacute;a popular eran dominadas por aparatos de &uacute;ltima generaci&oacute;n como altavoces inteligentes y televisores curvados. Pero la pandemia nos ha obligado a adoptar tecnolog&iacute;a &uacute;til que a menudo se hab&iacute;a ignorado. Las aplicaciones de nuestros dispositivos, que antes eran poco &uacute;tiles o muy sofisticadas, se convirtieron de repente en herramientas centrales.\r\n\r\nLas aplicaciones de pago electr&oacute;nico como Apple Pay y Square son un ejemplo de ello. Aunque han existido durante a&ntilde;os, algunas personas segu&iacute;an usando tarjetas de cr&eacute;dito y dinero en efectivo. Pero la nueva fobia a los g&eacute;rmenes nos llev&oacute; a probar los pagos por celular sin necesidad de contacto, en vez de pasar la tarjeta.\r\n\r\nLuego est&aacute; la realidad aumentada. La tecnolog&iacute;a, que nos permite interactuar con objetos digitales superpuestos en nuestro mundo f&iacute;sico, lleva m&aacute;s de una d&eacute;cada en desarrollo. Durante a&ntilde;os, parec&iacute;a m&aacute;s futurista que &uacute;til. Pero ahora que no podemos ir f&aacute;cilmente a una tienda f&iacute;sica para probarnos cosas, tomarse una selfi para ver una representaci&oacute;n digital de maquillaje en tu rostro parece una mejor idea.\r\n\r\nEl wifi se est&aacute; volviendo m&aacute;s inteligente\r\nUn problema de la tecnolog&iacute;a dom&eacute;stica que la pandemia subray&oacute; fue nuestra lenta y poco fiable conexi&oacute;n a internet. El a&ntilde;o pasado, mientras la gente se refugiaba para contener la propagaci&oacute;n del coronavirus, la velocidad promedio de internet en todo el mundo se redujo, en parte porque los proveedores de banda ancha fueron aplastados por el tr&aacute;fico pesado.\r\n\r\nAfortunadamente, la tecnolog&iacute;a wifi sigue mejorando. Este a&ntilde;o, veremos una ola de nuevos enrutadores de internet que incluyen wifi 6, un nuevo est&aacute;ndar de red. A diferencia de las actualizaciones inal&aacute;mbricas del pasado, wifi 6 se centrar&aacute; no en la velocidad sino en la eficiencia, compartiendo el ancho de banda entre un gran n&uacute;mero de dispositivos.\r\n\r\nEsto es lo que implica: digamos que tu familia tiene celulares, varias computadoras y una consola de videojuegos. Si todos est&aacute;n en uso y consumen grandes cantidades de datos &mdash;para transmitir video, por ejemplo&mdash; el wifi 6 es m&aacute;s eficaz al proveer ancho de banda a todos los dispositivos al mismo tiempo en vez de dejar que un dispositivo acapare la mayor parte.\r\n\r\nLa eficiencia es especialmente importante porque muchas de nuestras cosas se conectan a Internet, desde relojes hasta televisores, b&aacute;sculas de ba&ntilde;o y termostatos. En promedio, se espera que la cantidad de dispositivos conectados a Internet que posee cada persona aumente a aproximadamente cuatro para 2023, en comparaci&oacute;n con dos en 2018, seg&uacute;n una investigaci&oacute;n de Cisco.\r\n\r\nTecnolog&iacute;a de manos limpias\r\nEl a&ntilde;o pasado fue un punto de inflexi&oacute;n para los pagos m&oacute;viles. Por razones de seguridad, incluso quienes solo aceptaban dinero en efectivo, como los comerciantes de mercados agr&iacute;colas y los puestos de comida, empezaron a aceptar pagos m&oacute;viles.\r\n\r\nEn general, el 67 por ciento de los minoristas estadounidenses aceptan pagos sin contacto, un aumento del 40 por ciento respecto de 2019, seg&uacute;n una encuesta de Forrester. Entre los encuestados, el 19 por ciento dijo haber realizado un pago digital en una tienda por primera vez el pasado mes de mayo.\r\n\r\nLa tecnolog&iacute;a sin contacto no termina con las carteras m&oacute;viles. La llamada Banda Ultra Ancha, una tecnolog&iacute;a de radio relativamente nueva, tambi&eacute;n podr&iacute;a vivir su momento este a&ntilde;o. Esta tecnolog&iacute;a, que utiliza ondas de radio para detectar objetos con extrema precisi&oacute;n, no se ha utilizado mucho desde su debut en los celulares hace casi dos a&ntilde;os. Pero la necesidad de experiencias sin contacto podr&iacute;a cambiar eso, dijo Milanesi de Creative Strategies.\r\n\r\n&iquest;Y c&oacute;mo podr&iacute;a usarse la Banda Ultra Ancha? Digamos que tienes un tel&eacute;fono inteligente y una cafeter&iacute;a cuenta con una tablet y ambos dispositivos cuentan con tecnolog&iacute;a radial. Si te encuentras frente a la tablet, esta es capaz de encontrar tu tel&eacute;fono y aceptar un pago tuyo (y no de la persona detr&aacute;s tuyo en la fila). La tecnolog&iacute;a tambi&eacute;n podr&iacute;a usarse para permitir el acceso a edificios y encender autom&oacute;viles sin necesidad de llaves.', 1, '2021-01-13 09:22:17', '2021-01-13 09:22:07'),
(6, 1, 'La pandemia aceleró tecnologías para sobrevivir el encierro', 'la-pandemia-aceler-tecnolog-as-para-sobrevivir-el-encierro', 0, 'descargar (1).jpg', 'Muchos usuarios han comprado una pantalla nueva, computadoras más poderosas o dispositivos que los han ayudado a vivir la pandemia en el confinamiento, lo que ha provocado que muchas de las tecnológicas centren sus esfuerzos en innovar de acuerdo a estas nuevas necesidades.\r\n\r\nSectores completos se han transformado ante el panorama actual, por ejemplo, el fitness creció su consumo digital en 2020 entre el 30 y 35%; la educación migró a formatos digitales con el uso de herramientas como puede “my Class at home”. Ante esto la CTA proyecta que crecerán este tipo de sectores y los lanzamientos de hardware, robots y dispotivos que logren hacer más llevadera la vida en casa.\r\n\r\n\r\nRobótica\r\n\r\n\r\nLa robótica ve un crecimiento acelerado como solución a los efectos del COVID- 19 en seis sectores específicos: Limpieza, entregas, retail, tareas de contacto directo, salud y aislamiento.\r\n\r\nPor ejemplo, hoy algunas aerolíneas utilizan servicios de desinfección mediante el uso del robot Germ Flacon, o como el caso de Amazon que tiene a sus robots de sanitización. En retail o entregas, Amazon y CVS empiezan a usar drones o robots para hacer entregas, con una mejoría en la rececpción de parte de los usuarios del 86% de los usuarios encuestados por la CTA.\r\n\r\nPantallas y computadoras\r\n\r\nEl uso de pantallas creció de acuerdo con LG un 30% como gadget de uso habitual para jóvenes y niños, mientras que los adultos han incrementado el hábito de uso un 21%, lo que lo coloca como un negocio en crecimiento ascendente durante 2021.\r\n\r\nUn informe de Research and Markets estima que el mercado global de hogares inteligentes crecerá 11.6% hacia 2025 y generará 783,000 millones de dólares sólo en Estados Unidos durante este año, negocio que ha crecido a raíz de la pandemia.\r\nSalud Digital\r\n\r\nLa salud sin duda es uno de los sectores que más ha crecido no solo en función de la pandemia sino con la necesidad de la población a mejorar sus hábitos, monitoreo de signos y estado de salud ante una realidad sin contacto.\r\n\r\nCon ganancias en 2019 superiores a los 365 millones de dólares, la CTA estima un crecimiento en 2020 del 73% en dispositivos de monitoreo de salud conectados a internet, con ingresos que rondan los 632 millones de dólares, cifra que podría duplicarse para el 2024.\r\n', 1, '2021-01-13 09:29:55', '2021-01-13 09:29:35'),
(10, 3, 'Ejemplo5', 'ejemplo5', 0, 'tarea.PNG', 'ejemplo de post', 1, '2021-01-18 06:19:23', '2021-01-18 11:31:46'),
(11, 7, 'Primer articulo', 'primer-articulo', 0, '', 'Este es mi primer articulo', 0, '2021-01-18 20:19:42', '2021-01-18 06:29:48'),
(12, 3, 'Ejemplo2', 'ejemplo2', 0, '', 'Ejemplo2', 0, '2021-01-18 20:20:43', '2021-01-18 20:20:40'),
(13, 3, 'Ejemplo3', 'ejemplo3', 0, 'Sketchpad.png', 'Ejemplo3', 1, '2021-01-18 20:21:04', '2021-01-18 20:21:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_topic`
--

CREATE TABLE `post_topic` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `post_topic`
--

INSERT INTO `post_topic` (`id`, `post_id`, `topic_id`) VALUES
(0, 4, 3),
(0, 10, 2),
(0, 12, 1),
(0, 13, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `topics`
--

INSERT INTO `topics` (`id`, `name`, `slug`) VALUES
(1, 'Ciencia', 'ciencia'),
(2, 'Quimica', 'quimica'),
(3, 'Tecnologia', 'tecnologia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Autor','Admin','Usuario') DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Paco', 'paco@gmail.com', 'Admin', '25d55ad283aa400af464c76d713c07ad', '2021-01-06 00:52:58', '2021-01-06 00:52:58'),
(3, 'John', 'john@example.com', 'Admin', '25d55ad283aa400af464c76d713c07ad', '2021-01-06 00:12:33', '2021-01-06 00:12:33'),
(7, 'Roberto', 'roberto@gmail.com', 'Autor', '25d55ad283aa400af464c76d713c07ad', '2021-01-18 10:26:12', NULL),
(9, 'pacojare', 'pacojare@gmail.com', 'Usuario', '25d55ad283aa400af464c76d713c07ad', '2021-01-18 20:32:49', '2021-01-18 20:32:49');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `post_topic`
--
ALTER TABLE `post_topic`
  ADD UNIQUE KEY `post_id` (`post_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indices de la tabla `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `post_topic`
--
ALTER TABLE `post_topic`
  ADD CONSTRAINT `post_topic_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `post_topic_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
