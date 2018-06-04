-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 02 2018 г., 13:25
-- Версия сервера: 10.1.30-MariaDB
-- Версия PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `phpshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
(1, 'Для пищеварительного тракта', 1, 1),
(2, 'Сердечно-сосудистые средства', 2, 1),
(3, 'Дерматология', 3, 1),
(4, 'Противомикробные препараты', 4, 1),
(5, 'Для нервной системы', 5, 1),
(6, 'Прочие препараты', 6, 1),
(7, 'Детские товары', 7, 1),
(8, 'БАДы', 8, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `price` float NOT NULL,
  `availability` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `code`, `price`, `availability`, `brand`, `description`, `status`) VALUES
(1, 'Бускопан', 1, 1839707, 359, 1, 'Boehringer Ingelheim', 'гиосцина бутилбромид	10 мг\r\nВспомогательные вещества: кальция гидрофосфат (кальций гидрогенфосфат безводный), крахмал кукурузный высушенный, крахмал картофельный гидролизованный (крахмал растворимый), кремния диоксид коллоидный, винная кислота, стеариновая кислота.\r\n\r\nСостав оболочки: повидон (поливинилпирролидон), сахароза, тальк, акации камедь (аравийская камедь), титана диоксид, макрогол 6000 (полиэтиленгликоль 6000), карнаубский воск, воск пчелиный белый (воск белый).', 1),
(2, 'Дульколакс', 1, 2343847, 233, 0, 'Boehringer Ingelheim', 'бисакодил	5 мг\r\nВспомогательные вещества: крахмал кукурузный, глицерол 85%, крахмал кукурузный растворимый, лактоза, магния стеарат.\r\nСостав оболочки: сахароза, тальк, акации камедь, титана диоксид, сополимер метакриловой кислоты и метилметакрилата (1:2) (Эудрагит S100), сополимер метакриловой кислоты и метилметакрилата (1:1) (Эудрагит L100), масло семян клещевины обыкновенной (масло касторовое), магния стеарат, макрогол (полиэтиленгликоль) 6000, краситель железа оксид желтый (Е172), воск пчелиный белый, воск карнаубский, шеллак.', 1),
(3, 'Домперидон', 1, 2028027, 83, 1, 'Алси Фарма', 'Активное вещество: домперидон 10 мг; \r\nВспомогательные вещества: целлюлоза микрокристаллическая — 60,00 мг, крахмал прежелатинизированный — 19,46 мг, кремния диоксид коллоидный (аэросил) — 0,09 мг, магния стеарат — 0,45 мг, поливиниловый спирт - 1,44мг, макрогол (полиэтиленгликоль) – 0,73 мг, тальк – 0,53 мг, титана диоксид – 0,90 мг.', 1),
(4, 'Аллапинин', 2, 2019487, 220, 1, 'Фармстандарт', '1 таблетка содержит лаппаконитина гидробромид 25 мг.\r\nАллапинин вызывает замедление предсердно-желудочковой и внутрижелудочковой проводимости, укорачивает эффективный и функциональный рефрактерные периоды в предсердиях и желудочках. Оказывает умеренное спазмолитическое, коронарорасширяющее, холинолитическое и седативное действие. Биодоступность составляет 39% - подвергается интенсивной пресистемной биотрансформации. ', 1),
(5, 'Валидол', 2, 1953212, 20, 1, 'Фармстандарт', 'Валидол оказывает умеренное рефлекторное сосудорасширяющее действие, обладает седативным эффектом (оказывает успокаивающее действие на центральную нервную систему). \r\nДействие препарата в значительной степени обусловлено рефлекторными реакциями, связанными с раздражением чувствительных нервных окончаний. Валидол по своему действию близок к ментолу. Раздражение рецепторов слизистых оболочек сопровождается стимуляцией образования и высвобождения энкефалинов, эндорфинов, динорфинов и пептидов, играющих важную роль в регуляции болевых ощущений, проницаемости сосудов и других процессов. Под влиянием раздражающих веществ высвобождается ряд других эндогенных физиологически активных соединений (гистамин, кинины и др). При сублингвальном применении действие препарата развивается через 5 мин.', 1),
(6, 'Бепантен крем', 3, 1602042, 767, 0, 'GP Grenzach Produktions ', 'крем для наружного применения 5%; туба алюминиевая 100 г, пачка картонная 1; Действующее вещество\r\nДекспантенол*(Dexpanthenolum)', 1),
(7, 'Контрактубекс', 3, 2028367, 919, 1, 'Merz Pharma GmbH & Co. KGaA', 'крем для наружного применения 5%; туба алюминиевая 100 г, пачка картонная 1; Действующее вещество\r\nАллантоин + Гепарин натрия + Лука репчатого луковиц экстракт(Allantoinum + Heparinum natrium + extractum Allii cepae)', 1),
(8, '5-НОК', 4, 1129365, 202, 1, 'Lek', 'Фармакологическое действие — антибактериальное.\r\nОбразует комплексы с металлсодержащими ферментами микробной клетки и блокирует ее метаболизм. Активен в отношении грамположительных и грамотрицательных бактерий, некоторых грибов (рода Candida и др.).', 1),
(9, 'Депанкин Хроносфера', 5, 1128670, 562, 1, 'Sanofi-Winthrop Industrie ', 'Противоэпилептический препарат, оказывает центральное миорелаксирующее и седативное действие.\r\nПроявляет противоэпилептическую активность при различных типах эпилепсии. Основной механизм действия, по-видимому, связан с воздействием вальпроевой кислоты на GABA-эргическую систему: повышает содержание GABA в ЦНС и активирует GABA-эргическую передачу.', 1),
(10, 'Эспераль', 6, 683364, 210, 1, 'Sofarimex Industria Quimica and Farmaceutica', 'Фармакологическая группа\r\nСредства для коррекции нарушений при алкоголизме, токсико- и наркомании\r\nНозологическая классификация (МКБ-10)\r\nF10.2 Синдром алкогольной зависимости\r\nT56.8 Токсическое действие других металлов', 1),
(11, 'Бутылочка Avent', 7, 355025, 359, 1, 'Avent', 'Срок годности\r\n5 лет\r\nОписание лекарственной формы\r\nБУТЫЛОЧКА АВЕНТ 125МЛ', 1),
(12, 'Рыбий жир', 8, 1563832, 185, 1, 'Тева', 'Биологически активная добавка к пище, дополнительный источник полиненасыщенных жирных кислот Омега-3 (эйкозапентаеновой и докозагексаеновой кислот). Содержание полиненасыщенных жирных кислот Омега-3 (ПНЖК Омега-3) не менее 35 %, в том числе эйкозапентаеновой кислоты С 20:5 – не менее 18 %, докозагексаеновой кислоты С 22:6 – не менее 12 %.', 1),
(13, 'Аевит', 8, 1233655, 102, 1, 'Киевский витаминный завод', 'Состав\r\n1 капсула мягкая препарата Аевит содержит:\r\nРетинола пальмитата (витамин А) – 100000 МЕ;\r\nАльфа-токоферола ацетата (витамин Е) – 0,1г;\r\nВспомогательные вещества.\r\n\r\n\r\nФармакологическое действие\r\nАевит – комплексный витаминный препарат, обладающий антиоксидантным и иммуностимулирующим действием. Кроме того, компоненты препарата принимают участие в различных физиологических процессах в организме, в том числе стимулируют размножение эпителиальных клеток и рост костей, участвуют в процессах регенерации тканей, влияют на белковый и липидный обмен, а также необходимы для поддержания репродуктивной и зрительной функции. ', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_comment` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `products` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_order`
--

INSERT INTO `product_order` (`id`, `user_name`, `user_phone`, `user_comment`, `user_id`, `date`, `products`, `status`) VALUES
(49, 'Дарья', '12345678978', 'срочно', 1, '2018-01-26 23:03:31', '{\"13\":5,\"12\":1,\"1\":1}', 1),
(2, 'Дарья', '12345678978', '', 1, '2018-01-26 22:11:21', '{\"13\":1,\"12\":1}', 1),
(50, 'Дарья', '12345678978', '', 1, '2018-01-27 00:08:30', '{\"13\":2,\"1\":1}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Дарья', 'daria@mail.com', '111111', 'admin'),
(2, 'Мария', 'maria@mail.com', '2222222', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;