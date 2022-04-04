-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 04 2022 г., 06:35
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `recipes`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int NOT NULL,
  `name` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `ingredients`
--

INSERT INTO `ingredients` (`id`, `name`) VALUES
(1, 'Манная крупа'),
(2, 'Молоко'),
(5, 'Соль'),
(7, 'Масло сливочное'),
(9, 'Свиные ребрышки'),
(10, 'Картофель '),
(11, 'Морковь '),
(12, 'Лук '),
(13, 'Масло растительное'),
(14, 'Перец '),
(15, 'Специи - по вкусу'),
(16, 'Рис'),
(17, 'Сахар '),
(18, 'Ванилин ');

-- --------------------------------------------------------

--
-- Структура таблицы `name_recipes`
--

CREATE TABLE `name_recipes` (
  `id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time_cooke` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `name_recipes`
--

INSERT INTO `name_recipes` (`id`, `name`, `time_cooke`) VALUES
(1, 'Манная каша', 15),
(2, 'Жаркое из свиных ребрышек', 50),
(3, 'Молочная рисовая каша', 35);

-- --------------------------------------------------------

--
-- Структура таблицы `recipe_ingredients`
--

CREATE TABLE `recipe_ingredients` (
  `id_name_recipe` int NOT NULL,
  `id_name_ingredients` int NOT NULL,
  `value_ingredient` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `recipe_ingredients`
--

INSERT INTO `recipe_ingredients` (`id_name_recipe`, `id_name_ingredients`, `value_ingredient`) VALUES
(2, 10, '1 кг'),
(2, 5, 'по вкусу'),
(2, 11, ' 1-2 шт.'),
(2, 9, '600 г'),
(2, 13, '3 ст. ложки'),
(2, 12, '1-2 шт.'),
(1, 7, '25 г'),
(1, 5, '0,25 ч. ложки (по вкусу)'),
(1, 1, '60-65 г (примерно 7-8 ч. ложек)'),
(1, 2, '400 мл'),
(3, 16, '140 г'),
(3, 2, '560 мл'),
(3, 7, '15-30 г (по вкусу)'),
(3, 5, '1 щепотка');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `name_recipes`
--
ALTER TABLE `name_recipes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `recipe_ingredients`
--
ALTER TABLE `recipe_ingredients`
  ADD KEY `id_name_ingredients` (`id_name_ingredients`),
  ADD KEY `id_name_recipe` (`id_name_recipe`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `name_recipes`
--
ALTER TABLE `name_recipes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `recipe_ingredients`
--
ALTER TABLE `recipe_ingredients`
  ADD CONSTRAINT `recipe_ingredients_ibfk_1` FOREIGN KEY (`id_name_ingredients`) REFERENCES `ingredients` (`id`),
  ADD CONSTRAINT `recipe_ingredients_ibfk_2` FOREIGN KEY (`id_name_recipe`) REFERENCES `name_recipes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
