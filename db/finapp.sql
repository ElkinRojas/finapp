-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-11-2021 a las 19:19:54
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `finapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `glossary`
--

CREATE TABLE `glossary` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `photo` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `glossary`
--

INSERT INTO `glossary` (`id`, `name`, `description`, `photo`, `link`) VALUES
(1, 'ACTIVO', 'Representa los bienes y derechos de la empresa. Dentro del concepto de bienes están el efectivo, los inventarios, los activos fijos, etc. Dentro del concepto de derechos se pueden clasificar las cuentas por cobrar, las inversiones en papel del mercado, las valorizaciones, etc.', 'https://lh3.googleusercontent.com/proxy/Wsn-yZB5iQIn_0f9FbJICJ4Eme-OqlCWZ7R2zXgSn3uqb-habZthLzQmDMub3wzuBtGGXhFRobnaHPfenrotr1nNxl2aO5aKco8whBRKA4wKaStSjSZCtUm4lZw', 'https://www.youtube.com/watch?v=4jN1g_jHq'),
(2, 'AHORRO PRIVADO', 'Es la diferencia entre los ingresos y el consumo de las unidades familiares y de las empresas.\r\n', 'https://slideplayer.es/slide/3280910/11/images/5/El+Ahorro+Privado.jpg', 'https://www.youtube.com/watch?v=fW10tK-yA_Q'),
(3, 'PERFIL DE INVERSIÓN', 'dnvsidvnsidfvsndgivdsngvisdvndivnidvnxivndixvnd', 'http://tivalsa.com/wp-content/uploads/2016/07/perfil-de-inversionista-tivalsa.png', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fblog.tivalsa.com%2Fperfil-de-inversionista%2F&psig=AOvVaw1GwJ3sQBJJMApfjNBCnajN&ust=1634402975745000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNjX-NnvzPMCFQAAAAAdAAAAABAJ'),
(4, 'PERFIL DE INVERSIÓN', 'El perfil del inversionista es una clasificación que se realiza a las personas interesadas en invertir, con el objetivo de ubicarlos en grupos que delimiten rasgos generales en su comportamiento de inversión. En otras palabras: es una radiografía que permite conocer a fondo las características del inversionista, que son la base para determinar el tipo de instrumentos financieros con los cuales es ideal que realice la inversión.', 'http://tivalsa.com/wp-content/uploads/2016/07/perfil-de-inversionista-tivalsa.png', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fblog.tivalsa.com%2Fperfil-de-inversionista%2F&psig=AOvVaw1GwJ3sQBJJMApfjNBCnajN&ust=1634402975745000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNjX-NnvzPMCFQAAAAAdAAAAABAJ'),
(5, 'PERFIL DE INVERSIÓN', 'El perfil del inversionista es una clasificación que se realiza a las personas interesadas en invertir, con el objetivo de ubicarlos en grupos que delimiten rasgos generales en su comportamiento de inversión. En otras palabras: es una radiografía que permite conocer a fondo las características del inversionista, que son la base para determinar el tipo de instrumentos financieros con los cuales es ideal que realice la inversión.', 'http://tivalsa.com/wp-content/uploads/2016/07/perfil-de-inversionista-tivalsa.png', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fblog.tivalsa.com%2Fperfil-de-inversionista%2F&psig=AOvVaw1GwJ3sQBJJMApfjNBCnajN&ust=1634402975745000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNjX-NnvzPMCFQAAAAAdAAAAABAJ'),
(6, 'PERFIL DE INVERSIÓN', 'El perfil del inversionista es una clasificación que se realiza a las personas interesadas en invertir, con el objetivo de ubicarlos en grupos que delimiten rasgos generales en su comportamiento de inversión. En otras palabras: es una radiografía que permite conocer a fondo las características del inversionista, que son la base para determinar el tipo de instrumentos financieros con los cuales es ideal que realice la inversión.', 'http://tivalsa.com/wp-content/uploads/2016/07/perfil-de-inversionista-tivalsa.png', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fblog.tivalsa.com%2Fperfil-de-inversionista%2F&psig=AOvVaw1GwJ3sQBJJMApfjNBCnajN&ust=1634402975745000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNjX-NnvzPMCFQAAAAAdAAAAABAJ'),
(7, 'PERFIL DE INVERSIÓN', 'El perfil del inversionista es una clasificación que se realiza a las personas interesadas en invertir, con el objetivo de ubicarlos en grupos que delimiten rasgos generales en su comportamiento de inversión. En otras palabras: es una radiografía que permite conocer a fondo las características del inversionista, que son la base para determinar el tipo de instrumentos financieros con los cuales es ideal que realice la inversión.', 'http://tivalsa.com/wp-content/uploads/2016/07/perfil-de-inversionista-tivalsa.png', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fblog.tivalsa.com%2Fperfil-de-inversionista%2F&psig=AOvVaw1GwJ3sQBJJMApfjNBCnajN&ust=1634402975745000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNjX-NnvzPMCFQAAAAAdAAAAABAJ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `questions`
--

INSERT INTO `questions` (`id`, `user`, `type`, `question`, `answer`) VALUES
(1, 1, 2, '¿Cómo espera que evolucione su capacidad de ahorro en los próximos años?', '3'),
(2, 1, 2, 'La palabra riesgo para usted significa:', '1'),
(3, 1, 2, 'Si su inversión comienza a perder valor, ¿qué haría?', '2'),
(4, 0, 1, '7. Su empresa está vendiendo de acciones a los empleados. En tres años, la compañía planea vender al público la empresa. Hasta entonces, usted no será capaz de vender sus acciones y no recibirá dividendos. Sin embargo, su inversión podría multiplicarse por lo menos 10 veces cuando la empresa salga al público. ¿Qué cantidad de dinero invertiría?', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `request` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `requests`
--

INSERT INTO `requests` (`id`, `request`) VALUES
(1, '1. Cada opcion es distinta\n2. Este apartado solo se utiliza en internet\n3. Dolar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `document` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `document`, `name`, `password`) VALUES
(1, '1098807101', 'ELKIN ROJAS', '123456'),
(13, '12345678', 'prueba registro', '123456'),
(14, '1097453213', 'Elkin Alejandro', '12345678'),
(15, '1000000', 'PRUEBA MARTES', '123456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `glossary`
--
ALTER TABLE `glossary`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `glossary`
--
ALTER TABLE `glossary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
