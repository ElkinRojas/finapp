-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2021 a las 03:03:44
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
(3, 'PERFIL DE INVERSIÓN', 'El perfil de riesgo es una característica distintiva de cada inversor y depende de su tolerancia al riesgo de inversión. Es importante conocer este perfil antes de tomar decisiones de inversión en renta variable puesto que los mercados bursátiles son muy cambiantes y esto podría beneficiar su rentabilidad o caso contrario afectarla al punto de perder su capital por completo, por tal razón es importante que identifique el perfil (agresivo, moderado y conservador) más acorde con sus objetivos de inversión y toma de decisiones.', 'http://tivalsa.com/wp-content/uploads/2016/07/perfil-de-inversionista-tivalsa.png', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fblog.tivalsa.com%2Fperfil-de-inversionista%2F&psig=AOvVaw1GwJ3sQBJJMApfjNBCnajN&ust=1634402975745000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNjX-NnvzPMCFQAAAAAdAAAAABAJ'),
(4, 'ACCIONES', 'Las acciones son títulos valores que representan la propiedad de una sociedad anónima, y se distinguen por ser nominativos, libremente negociables y de renta variable. \nLas acciones son títulos valor que representan el capital de una empresa y por ello cuando las adquirimos nos volvemos socios de ésta. Además, recibimos derechos económicos y políticos.\n', 'https://www.rodenasabogados.com/wp-content/uploads/2020/02/tipos-de-acciones-mercantiles.jpeg', 'https://www.youtube.com/watch?v=Emeu2leSNj8'),
(5, 'TIPOS DE ACCIONES', 'En Colombia existen tres tipos de acciones: comunes, preferenciales y privilegiadas.\r\n\r\nAcciones comunes: Acción que tiene la característica de conceder a su titular ciertos derechos de participación en la sociedad emisora, entre los cuales está el recibir dividendos (con diferente periodicidad de ingreso) y el derecho a voto en la Asamblea de accionistas.\r\n\r\nAcciones preferentes: Acción que da a su titular prioridad para pagarle dividendos así no genere utilidad en el año operacional, y en caso de disolución de la empresa el reembolso del capital.\r\n\r\nAcciones privilegiadas: Esta clase de acciones otorga a su titular, además de los derechos consagrados para las acciones ordinarias, algunos privilegios\r\n\r\n\r\n\r\n', 'https://image.slidesharecdn.com/accionesclasestipos-140607092151-phpapp01-171203003842/95/acciones-y-tipos-de-acciones-2-638.jpg?cb=1512261982', 'https://www.youtube.com/watch?v=IvTbUlDBrrg'),
(6, 'DONDE PUEDE INVERTIR EN ACCIONES', 'La Bolsa de Valores de Colombia S.A. es una sociedad anónima domiciliada en Bogotá, Colombia, aliado estratégico del sector financiero y bursátil, líder del Mercado de Capitales Colombiano.\n\nLa Bolsa de Valores de Colombia (BVC) es el operador líder de la infraestructura del mercado de capitales colombiano con presencia en toda la cadena de valor. BVC ofrece soluciones y servicios de Emisores (servicios al emisor y emisiones), Negociación (acceso, transaccional y registro), Post-negociación (administración de riesgos, compensación, liquidación, custodia y administración de valores) e Información (Información de mercado y proveeduría de precios) en los mercados transaccionales y OTC de renta variable, renta fija, derivados y divisas. (BVC, 2021)\n', '', 'https://www.youtube.com/watch?v=I8M6Vn5pX3w'),
(7, 'RECOMENDACIONES', '*Cuando se decida por realizar una inversión, es recomendable que tengamos un superávit de capital o un extra de dinero, no arriesgue el dinero mensual que tiene asignado para sus necesidades básicas.\r\n\r\n*Es muy muy importante, no invertir en acciones que sean desconocidas para usted, busque empresas de sectores de la economía que usted conozca o este familiarizado con su funcionamiento; así tendrá un pre-saber de la empresa y del sector, el cual ira ampliando mediante el análisis fundamental que es un procedimiento básico antes de decidir la inversión en renta variable. \r\n\r\n*Recuerde que los rendimientos que le ofrece la acción de una empresa son variables; es decir, no hay certeza de recibir dividendos y la recuperación del capital invertido cuando compro la acción, porque los dividendos están determinados por el desempeño, utilidad y liquidez que genera la empresa a través del tiempo. No siempre va a existir una ganancia debemos considerar que también se puede perder todo. \r\n\r\n*Si decide invertir en renta variable, busque las entidades correctas y autorizadas en Colombia para realizar este proceso de inversión. por ejemplo, en Colombia la principal entidad en donde se transan estos instrumentos financieros es la bolsa de valores Colombia. bvc.com.co/pps/tibco/portalbvc\r\n\r\n*Usted debe averiguar en el proceso de inversión de renta variable, los costos de entrada de la inversión y los costos de salida, que definen los intermediarios o firmas comisionistas.\r\n', 'https://www.zaplo.es/blog/wp-content/uploads/2019/07/INFOGRAF%C3%8DA_Reglas_para_invertir_de_forma_segura.jpg', 'https://www.youtube.com/watch?v=RlQq9VDRnWM'),
(8, 'ANALISIS TECNICO', 'El análisis técnico es la interpretación de la acción del precio de las acciones subyacentes de una empresa (o cualquier instrumento financiero negociable). \r\nUtiliza saberes matemáticos, estadísticos y financieros para representar gráficamente con indicadores técnicos, el comportamiento o la trayectoria futura de los precios de una acción. Algunos indicadores estadísticos son: El soporte / resistencia del precio, el rango y las tendencias. Identifica patrones y comportamientos de precios históricamente relevantes para ayudar a pronosticar la dirección potencial de la acción. Esta metodología se enfoca solo en el precio de las acciones, no en las operaciones de la empresa.\r\n', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Tecnicoecopetrol.png/1200px-Tecnicoecopetrol.png', 'https://www.youtube.com/watch?v=uOQI2_H6xRA'),
(9, 'PARA QUE SIRVE', 'Cualquiera que negocie o invierta en el mercado de valores o en cualquier otro instrumento financiero negociable debe considerar aprender al menos un nivel básico de análisis técnico. Si su dinero se invierte en una posición que tiene movimiento de precios, el análisis técnico lo ayudará a tomar decisiones mejor informadas sobre cuánto riesgo emplear para la recompensa potencial.', 'https://economipedia.com/wp-content/uploads/Analisis-tecnico-EURUSD-1.jpg', 'https://www.expansion.com/mercados/curso-invertir-bolsa/que-es-el-analisis-tecnico-y-para-que-sirve.html'),
(10, 'METODOLOGIAS', 'Gráficos de acciones  \r\nEl análisis técnico busca interpretar la historia de la acción del precio de una acción. Los gráficos actúan como el lienzo donde se pinta la historia. Los tipos comunes de gráficos son gráficos de velas, de barras y de líneas. Los gráficos trazan los precios en los que se han realizado las operaciones. (Gráfico 1)\r\n\r\nGráficos de velas \r\nLas velas se han convertido en un elemento básico de todas las plataformas comerciales y programa de gráficos para literalmente todos los vehículos comerciales financieros. La profundidad de la información y la simplicidad de los componentes hacen que los gráficos de velas sean los favoritos de los traders. La capacidad de encadenar muchas velas para revelar un patrón subyacente lo convierte en una herramienta convincente al interpretar el historial y las previsiones de la acción del precio. (Gráfico 2)\r\n\r\nMedia móvil \r\nLa media móvil es una medida de tendencia central que recoge el promedio de una serie\r\nde precios pasados. Se dice que es móvil porque conforme pasa un día hay que añadir el\r\ndía siguiente al tiempo que se resta el precio de hace N-1 días (siendo N el número de\r\ndías contenidos en el estadístico). (Gráfico 3)\r\n\r\n\r\n', '', '(Undergroud, 2021)\r\n(Gil, 2014)\r\n'),
(11, 'VENTAJAS', '*Una de las principales ventajas del análisis técnico es que se presenta como una herramienta neutral. Puede aplicarse a prácticamente cualquier instrumento en cualquier plazo, y no depende de las previsiones de un analista.\r\n\r\n*Puede ser un excelente método para determinar los puntos de entrada y salida de una posición, es decir, saber en qué momento comprar o vender.\r\n\r\n*El análisis técnico para su aplicación requiere de pocos datos básicos(precios de la  acción), ya que solo utiliza gráficos históricos de cotizaciones o precios de la acción.\r\n', 'https://image.slidesharecdn.com/filosofia-analisis-tecnico-1233678789992780-3/95/filosofia-analisis-tecnico-17-728.jpg?cb=1233657506', '(Markets, s.f.)'),
(12, 'RECOMENDACIONES', '*No pretenda que con poco tiempo aprenderá a realizar un buen análisis técnico; debe desarrollar el hábito de análisis de datos financieros, tener disciplina y responsabilidad con el análisis de la inversión en renta variable que va a realizar. Recuerde es SU DINERO y hay que darle un uso eficiente y rentable. Empiece analizando gráficos y conjugando de mejor manera alguna de las metodologías para predecir tendencias, esto con el tiempo lo llevara a entender mejor los mercados financieros.\r\n\r\n*Realizar un buen análisis técnico no le garantizará que la estimación o predicción a la fija ocurrirá realmente; recuerde que los mercados bursátiles son impredecibles y sistémicos, y que el precio de la acción en el tiempo está afectado por múltiples variables que usted no puede controlar.\r\n\r\n*El análisis fundamental y el análisis técnico son actividades que se hacen de forma frecuente para tomar la decisión de inversión en renta variable. Recuerde el mercado bursátil es un mercado cambiante, complejo y volátil.\r\n\r\n*Complemente el análisis técnico con el análisis fundamental cuando realice el análisis de inversión para tomar la decisión de invertir en que productos de renta variable.\r\n\r\n*Si necesita ayuda para realizar el análisis técnico busque ayuda profesional de expertos que lo acompañen y guíen en el proceso de inversión (Ing. financieros, entre otros.)\r\n\r\n', 'https://www.novatostradingclub.com/wp-content/uploads/2021/08/AnalisTecnico.jpg', 'https://www.youtube.com/watch?v=QmWXHeMxzdg'),
(13, 'ANALISIS FUNDAMENTAL', 'En el estudio del comportamiento de la acción, con miras a tratar de predecir la\r\nevolución futura de la acción. El análisis fundamental se basa en tratar de recopilar mayor información posible sobre una entidad o una empresa, realizando estudios que nos permitan estimar o predecir el comportamiento futuro de una empresa o una entidad\r\n', 'https://www.bbva.com/wp-content/uploads/2015/03/Analisis-fundamental-BBVA-Trader-Recurso-1024x416.jpg', '(Alfaro & Santos, 2015)'),
(14, 'PARA QUE SIRVE', 'Este tipo de estudio ayuda a proyectar los análisis financieros realizados dentro de la\r\nempresa, dando así los conocimientos sobre la solidez financiera, la liquidez, los gastos y la\r\nrentabilidad. Permite ayudar a ver cómo va la evolución de la empresa para poder ser\r\ncomparadas en el mercado con distintas empresas del sector, estimando lo comportamientos\r\nfuturos de los beneficios brindados por la evolución de la acción. Además, brinda una\r\ninformación clara si la empresa se encuentra siendo sobrevalorada o subvalorada.\r\n', 'https://d31dn7nfpuwjnm.cloudfront.net/images/valoraciones/0026/5615/Depositphotos_32576049_original.jpg?1489297255', 'https://www.youtube.com/watch?v=O28tZrhWoPQ'),
(15, 'CONSIDERACIONES', 'El análisis fundamental. Este se basa en analizar:\r\n\r\nLa situación actual y hacia dónde va la economía global\r\nLa situación actual y hacia dónde va la economía de nuestro país\r\nLa situación actual y las perspectivas del sector en el que trabaja la empresa\r\nLa gestión de la empresa\r\nPara poder estimar el posible crecimiento en el valor de una acción.\r\n', 'https://i.blogs.es/58351e/56397d9c-d9cc-4625-8276-138210176860_what-is-fundamental-analysis_-1-/450_1000.jpeg', 'https://www.youtube.com/watch?v=5ye8eCcqKsU'),
(16, 'PARA QUIEN', 'Los inversores a largo plazo son los que más se benefician con el análisis fundamental, ya que las valoraciones y los precios de las acciones finalmente alcanzan la paridad a largo plazo. Eventos o rumores desencadenan la volatilidad de los precios y estimulan el impulso de un gran volumen, lo que a menudo resulta en brechas de precios hacia arriba o hacia abajo en el mercado previo y posterior.', 'https://www.estrategiasdeinversion.com/uploads/noticias_redaccion/graficos_dentro/201910/analisis-fundamental.jpg', 'https://www.youtube.com/watch?v=IVIxDJrQ-LY'),
(17, 'RECOMENDACIONES', '*Utilice fuentes de información secundarias confiables y relacionadas con la actividad económica de la empresa que está considerando como opción de inversión en renta variable. Significa esto que la información financiera y contable de la empresa debe acudir a la página web oficial de la empresa o de sistemas de información económicos del mercado bursátil, porque es obligatorio que todas las empresas que ofrecen sus acciones en el mercado bursátil deben publicar y hacer accesible la información contable y financiera. \r\n\r\n*No se conforme con utilizar solamente análisis fundamental para la predicción del precio de una acción (instrumento de renta variable); recuerde en los mercados bursátiles el precio de futuro de la acción no es predecible 100% al valor estimado o pronosticado; hacer análisis fundamental no le garantiza que obtenga rentabilidades altas. \r\n\r\n*Relacione el análisis técnico con el análisis fundamental; lea constantemente para mantenerse actualizado de los cambios económicos y operacionales que pueden afectar al país y a la empresa que está considerando como opción de inversión (comprar acciones). Se sugiere consultar datos estadísticos del DANE, banco de la república, Bolsa de valores de Colombia, informes económicos del sector donde está la empresa, informes anuales de las empresas; porque esto le permitirá estar informado y preparado cuando tome la decisión de comprar la acción o vender la acción. referencias\r\n', 'https://folionet.com/wp-content/uploads/2020/08/analysis-5242025_1280.jpg', ''),
(18, 'LECTURAS', 'Diario económico La República  (Cajamarca, 2021) aquí encontrará un artículo donde se exponen las tres modalidades de inversión en acciones. \r\nLink: https://www.larepublica.co/finanzas/conozca-tres-opciones-para-comprar-acciones-en-la-bolsa-de-valores-colombiana-3251818\r\n\r\n(Traders, s.f.) En este sitio web dan una explicación de análisis técnico para personas que apenas estén iniciando, muestra por niveles lo que se debe hacer para aprender a realizar un análisis técnico.\r\nLink: https://www.novatostradingclub.com/formacion-trading/analisis-tecnico/\r\n\r\n(AMV, 2013) esta es la cartilla número 3 en formato pdf proporcionada por educación financiera para todos AMV, en donde se detalla información sobre las acciones.\r\nLink: https://www.credicorpcapitalcolombia.com/uploads/userfiles/file/amv/Cartilla%20Todo%20lo%20que%20debe%20saber%20sobre%20Acciones.pdf\r\n\r\n(Gil, 2014) en este repositorio de la universidad Pontificia ICAI-ICADE de Madrid muestran las principales herramientas y justificación del análisis técnico. \r\nLink. https://repositorio.comillas.edu/xmlui/bitstream/handle/11531/290/TFG000115.pdf?sequence=1\r\n\r\n(Undergroud, 2021) en esta página encontraremos información de todo lo referente a análisis fundamental y análisis técnico, además de un blog en donde tienen varios videos en idioma ingles acerca de inversiones. \r\nLink: https://www.investorsunderground.com/technical-analysis/', 'https://capital.com/files/imgs/glossary/1200x627x1/Fundamental%20Analysis.jpg', '(Cajamarca, 2021),(Traders, s.f.),(AMV, 2013),(Gil, 2014),(Undergroud, 2021)'),
(19, 'GRAFFITI 1', 'Esta frase nos hace pensar en lo importante que es la educación financiera en nuestras vidas; hacer una buena gestión del dinero que tenemos, podemos recibir mejores beneficios inclusive mayores a los ingresos que generamos diariamente.', '', ''),
(20, 'GRAFFITI 2', 'Esta frase nos hace reflexionar que es mayor la ambición que tenemos por generar algún beneficio que ni la misma capacidad de racionalidad, es normal ver personas dejarse llevar por publicidad o especulaciones en los mercados y en muchas de las ocasiones los conllevan a perdidas, en lugar de ser nosotros mismos los protagonistas de nuestras ganancias, por ello es importante realizar un análisis fundamental y técnico a los precios de las inversiones que realiza; pensar antes de actuar.', '', ''),
(21, 'GRAFFITI 3', 'Esta frase hace pensar que si dejamos a un lado la ambición y la avaricia por el dinero y descubres la fórmula del interés compuesto en finanzas entenderás que podrás tener mejores beneficios a partir del dinero que ya tenemos.\r\n\r\nDonde:\r\nI: Rentabilidad \r\nn: Plazo \r\nF: Valor Futuro \r\nP: Valor Presente', '', ''),
(22, 'GRAFFITI 4', 'Definición de economista: es un experto que mañana sabrá explicar por qué las cosas que predijo ayer no han sucedido hoy. (Lawrence J. Peter)\n\nEsta frase hace ver lo que son los mercados bursátiles, son impredecibles… en un lapso de tiempo pueden ocurrir diferentes factores que los afecten y puede que el precio de una acción hoy sea bastante bueno para la posición en la que tenemos, pero en cuestión de tiempo perder todo eso que habíamos logrado construir.\n', '', '(Lawrence J. Peter)'),
(23, 'GRAFFITI 4', 'Esta frase hace ver lo que son los mercados bursátiles, son impredecibles… en un lapso de tiempo pueden ocurrir diferentes factores que los afecten y puede que el precio de una acción hoy sea bastante bueno para la posición en la que tenemos, pero en cuestión de tiempo perder todo eso que habíamos logrado construir.\r\n', '', '(Lawrence J. Peter)');

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
(1, 1, 2, 'Acciones comunes', '3'),
(2, 1, 2, 'Es un sistema que permite examinar y predecir los movimientos de precios en los mercados financieros a partir de datos históricos y estadísticas de mercado\n', '1'),
(3, 1, 2, 'Es una característica distintiva de cada inversor y depende de su tolerancia al riesgo de inversión', '2'),
(77, 1, 1, '1. A 60 días después de depositar dinero en una inversión, su precio cae un 20%. Suponiendo que la información relevante no ha cambiado, ¿qué haría usted?', 'c'),
(78, 1, 1, '2. Su inversión se redujo un 20%, pero es parte de una cartera que se utiliza para cumplir con metas de inversión de tres diferentes horizontes temporales. ¿Qué haría usted si el objetivo era de cinco años? ', 'c'),
(79, 1, 1, '3. El precio de su inversión de retiro sube un 25% un mes después de haberla comprado. Si la información relevante no ha cambiado y tiene la posibilidad de hacer algo ¿qué haría?', 'c'),
(80, 1, 1, '4. Usted está invirtiendo para su jubilación, que es a 15 años. ¿Qué prefiere hacer?', 'c'),
(81, 1, 1, '5. Acaba de ganar un gran premio en un concurso. ¿Cuál escogería? ', 'c'),
(82, 1, 1, '6. Una buena oportunidad de inversión acaba de llegar. Pero usted tiene que pedir prestado el dinero para entrar, ¿sacaría usted un préstamo?', 'c'),
(83, 1, 1, '7. Su empresa está vendiendo de acciones a los empleados. En tres años, la compañía planea vender al público la empresa. Hasta entonces, usted no será capaz de vender sus acciones y no recibirá dividendos. Sin embargo, su inversión podría multiplicarse por lo menos 10 veces cuando la empresa salga al público. ¿Qué cantidad de dinero invertiría? ', 'c'),
(86, 1, 3, 'Si usted compró una acción de Nutresa el 27 de enero de 2021 a un precio de $19.200 y decide venderla el día 27 de agosto de 2021 que está a un precio de $22.300.  ¿Cuál expresión matemática utilizaría para calcular la rentabilidad mensual de esa inversión? ', 'a'),
(87, 1, 3, 'El siguiente significado “es un sistema que permite examinar y predecir los movimientos de precios en los mercados financieros a partir de datos históricos y estadísticas de mercado” es la:', 'c'),
(88, 1, 3, 'Si usted quiere invertir en activos de renta variable a ¿quién acude para hacer esa diligencia? ', 'b'),
(89, 1, 3, '4. Su empresa está vendiendo de acciones a los empleados. En tres años, la compañía planea vender al público la empresa. Hasta entonces, usted no será capaz de vender sus acciones y no recibirá dividendos. Sin embargo, su inversión podría multiplicarse por lo menos 10 veces cuando la empresa salga al público. ¿Qué cantidad de dinero invertiría? ', 'b'),
(90, 1, 3, '5. Una buena oportunidad de inversión acaba de llegar. Pero usted tiene que pedir prestado el dinero para entrar, ¿sacaría usted un préstamo?', 'b'),
(91, 17, 1, '1. A 60 días después de depositar dinero en una inversión, su precio cae un 20%. Suponiendo que la información relevante no ha cambiado, ¿qué haría usted?', 'a'),
(92, 17, 1, '2. Su inversión se redujo un 20%, pero es parte de una cartera que se utiliza para cumplir con metas de inversión de tres diferentes horizontes temporales. ¿Qué haría usted si el objetivo era de cinco años? ', 'b'),
(93, 17, 1, '3. El precio de su inversión de retiro sube un 25% un mes después de haberla comprado. Si la información relevante no ha cambiado y tiene la posibilidad de hacer algo ¿qué haría?', 'c'),
(94, 17, 1, '4. Usted está invirtiendo para su jubilación, que es a 15 años. ¿Qué prefiere hacer?', 'a'),
(95, 17, 1, '5. Acaba de ganar un gran premio en un concurso. ¿Cuál escogería? ', 'c'),
(96, 17, 1, '6. Una buena oportunidad de inversión acaba de llegar. Pero usted tiene que pedir prestado el dinero para entrar, ¿sacaría usted un préstamo?', 'c'),
(97, 17, 1, '7. Su empresa está vendiendo de acciones a los empleados. En tres años, la compañía planea vender al público la empresa. Hasta entonces, usted no será capaz de vender sus acciones y no recibirá dividendos. Sin embargo, su inversión podría multiplicarse por lo menos 10 veces cuando la empresa salga al público. ¿Qué cantidad de dinero invertiría? ', 'a'),
(98, 17, 3, 'Si usted compró una acción de Nutresa el 27 de enero de 2021 a un precio de $19.200 y decide venderla el día 27 de agosto de 2021 que está a un precio de $22.300.  ¿Cuál expresión matemática utilizaría para calcular la rentabilidad mensual de esa inversión? ', 'a'),
(99, 17, 3, 'El siguiente significado “es un sistema que permite examinar y predecir los movimientos de precios en los mercados financieros a partir de datos históricos y estadísticas de mercado” es la:', 'c'),
(100, 13, 1, '1. A 60 días después de depositar dinero en una inversión, su precio cae un 20%. Suponiendo que la información relevante no ha cambiado, ¿qué haría usted?', 'c'),
(101, 1, 2, 'Análisis Fundamental', '5'),
(102, 1, 2, 'Media movil', '4'),
(104, 13, 3, 'Si usted compró una acción de Nutresa el 27 de enero de 2021 a un precio de $19.200 y decide venderla el día 27 de agosto de 2021 que está a un precio de $22.300.  ¿Cuál expresión matemática utilizaría para calcular la rentabilidad mensual de esa inversión?', 'b'),
(105, 13, 3, 'El siguiente significado “es un sistema que permite examinar y predecir los movimientos de precios en los mercados financieros a partir de datos históricos y estadísticas de mercado” es la: ', 'b'),
(106, 13, 3, 'Si usted quiere invertir en activos de renta variable a ¿quién acude para hacer esa diligencia? ', 'a'),
(107, 13, 3, 'Si decide crear una empresa con un capital de $500.000.000 pesos el cual se fracciona en participaciones llamadas acciones, en este caso 100.000 acciones, significa que el valor en libros por acción es:', 'a'),
(108, 13, 3, 'Es la inversión en un activo financiero donde la rentabilidad es incierta; es decir, no está garantizada ni la devolución del capital invertido ni la rentabilidad del activo. La frase anterior representa: ', 'a'),
(109, 1, 1, '1. A 60 días después de depositar dinero en una inversión, su precio cae un 20%. Suponiendo que la información relevante no ha cambiado, ¿qué haría usted?', 'a'),
(110, 1, 3, 'Si usted compró una acción de Nutresa el 27 de enero de 2021 a un precio de $19.200 y decide venderla el día 27 de agosto de 2021 que está a un precio de $22.300.  ¿Cuál expresión matemática utilizaría para calcular la rentabilidad mensual de esa inversión?', 'b'),
(111, 19, 3, 'Si usted compró una acción de Nutresa el 27 de enero de 2021 a un precio de $19.200 y decide venderla el día 27 de agosto de 2021 que está a un precio de $22.300.  ¿Cuál expresión matemática utilizaría para calcular la rentabilidad mensual de esa inversión?', 'b'),
(112, 20, 3, 'Si usted compró una acción de Nutresa el 27 de enero de 2021 a un precio de $19.200 y decide venderla el día 27 de agosto de 2021 que está a un precio de $22.300.  ¿Cuál expresión matemática utilizaría para calcular la rentabilidad mensual de esa inversión?', 'b');

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
(1, '1. Definición de análisis técnico.\r\n\r\n2. Deficición perfil de riesgo.\r\n\r\n3. Tiene la característica de conceder a su titular ciertos derechos de participación en la sociedad emisora, entre los cuales está el recibir dividendos (con diferente periodicidad de ingreso) y el derecho a voto en la Asamblea de accionistas.\r\n\r\n4. Se basa en tratar de recopilar mayor información posible sobre una entidad o una empresa, realizando estudios que nos permitan estimar o predecir el comportamiento futuro de una empresa o una entidad.\r\n\r\n5. Es una medida de tendencia central que recoge el promedio de una serie de precios pasados. Se dice que es móvil porque conforme pasa un día hay que añadir el día siguiente al tiempo que se resta el precio de hace N-1 días (siendo N el número de días contenidos en el estadístico).');

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
(20, '1099375622', 'sustentacion', '123456');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de la tabla `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
