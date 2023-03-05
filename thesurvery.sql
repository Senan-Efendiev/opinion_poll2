-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 05 2023 г., 08:19
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
-- База данных: `thesurvery`
--

-- --------------------------------------------------------

--
-- Структура таблицы `city`
--

CREATE TABLE `city` (
  `ID` int NOT NULL,
  `ID_city` varchar(100) NOT NULL COMMENT 'Название города'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `city`
--

INSERT INTO `city` (`ID`, `ID_city`) VALUES
(5, 'Казань'),
(3, 'Москва'),
(1, 'Сургут'),
(4, 'Тобольск'),
(2, 'Тюмень');

-- --------------------------------------------------------

--
-- Структура таблицы `question`
--

CREATE TABLE `question` (
  `ID` int NOT NULL COMMENT 'Идентификатор',
  `ID_questions` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Вопросы'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `question`
--

INSERT INTO `question` (`ID`, `ID_questions`) VALUES
(4, 'Красиво обустроены парки?'),
(2, 'Нравится ли вам инфраструктура города?'),
(5, 'Собираетесь навсегда оставаться в этом городе?'),
(1, 'Устраивает ли вас жизнь в этом городе?'),
(3, 'Часто посещаете ТЦ?');

-- --------------------------------------------------------

--
-- Структура таблицы `results`
--

CREATE TABLE `results` (
  `ID` int NOT NULL COMMENT 'Идентификатор',
  `ID_user` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Номер пользователя',
  `ID_question` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Номер вопроса',
  `ID_answers` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Номер ответа',
  `ID_city` varchar(100) NOT NULL COMMENT 'Название города'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `results`
--

INSERT INTO `results` (`ID`, `ID_user`, `ID_question`, `ID_answers`, `ID_city`) VALUES
(1, 'А. М. Воронцова', 'Красиво обустроены парки?', 'Нет', 'Казань'),
(2, 'М. С. Обломов', 'Нравится ли вам инфраструктура города?', 'Да', 'Москва'),
(3, 'В. Л. Карпов', 'Собираетесь навсегда оставаться в этом городе?', 'Затрудняюсь ответить', 'Тобольск'),
(4, 'Е. И. Котов', 'Устраивает ли вас жизнь в этом городе?', 'Скорее - да', 'Сургут'),
(5, 'С. Н. Волочкова', 'Часто посещаете ТЦ?', 'Скорее - нет', 'Тюмень');

-- --------------------------------------------------------

--
-- Структура таблицы `the_answers`
--

CREATE TABLE `the_answers` (
  `ID` int NOT NULL COMMENT 'Идентификатор',
  `ID_answers` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Ответы'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `the_answers`
--

INSERT INTO `the_answers` (`ID`, `ID_answers`) VALUES
(1, 'Да'),
(3, 'Затрудняюсь ответить'),
(5, 'Нет'),
(2, 'Скорее - да'),
(4, 'Скорее - нет');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `ID` int NOT NULL COMMENT 'Идентификатор',
  `ID_User` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Пользователь'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`ID`, `ID_User`) VALUES
(1, 'А. М. Воронцова'),
(5, 'В. Л. Карпов'),
(3, 'Е. И. Котов'),
(4, 'М. С. Обломов'),
(2, 'С. Н. Волочкова');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_city` (`ID_city`);

--
-- Индексы таблицы `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_questions` (`ID_questions`);

--
-- Индексы таблицы `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_question` (`ID_question`),
  ADD KEY `ID_answers` (`ID_answers`),
  ADD KEY `ID_user` (`ID_user`),
  ADD KEY `ID_city` (`ID_city`);

--
-- Индексы таблицы `the_answers`
--
ALTER TABLE `the_answers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_answers` (`ID_answers`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_User` (`ID_User`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `city`
--
ALTER TABLE `city`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `question`
--
ALTER TABLE `question`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `results`
--
ALTER TABLE `results`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `the_answers`
--
ALTER TABLE `the_answers`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор', AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`ID_question`) REFERENCES `question` (`ID_questions`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `results_ibfk_2` FOREIGN KEY (`ID_answers`) REFERENCES `the_answers` (`ID_answers`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `results_ibfk_4` FOREIGN KEY (`ID_user`) REFERENCES `user` (`ID_User`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `results_ibfk_6` FOREIGN KEY (`ID_city`) REFERENCES `city` (`ID_city`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
