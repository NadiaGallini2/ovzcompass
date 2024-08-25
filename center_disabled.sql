-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 24 2024 г., 04:52
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `center_disabled`
--

-- --------------------------------------------------------

--
-- Структура таблицы `creative_abilities`
--

CREATE TABLE `creative_abilities` (
  `id_creative_ability` int(11) NOT NULL,
  `name_creative_ability` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `direction_training`
--

CREATE TABLE `direction_training` (
  `id_direction_training` int(11) NOT NULL,
  `name_direction_training` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `nosology`
--

CREATE TABLE `nosology` (
  `id_nosology` int(11) NOT NULL,
  `name_nosology` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `nosology`
--

INSERT INTO `nosology` (`id_nosology`, `name_nosology`) VALUES
(1, 'Инвалид с детства'),
(2, 'Нарушение слуха'),
(3, 'Нарушение зрения'),
(4, 'Нарушение речи'),
(5, 'Нарушение опорно-двигательного аппарата'),
(6, 'Соматическое заболевание');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL,
  `name_role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id_student` int(11) NOT NULL,
  `name_student` varchar(255) NOT NULL,
  `date_birth` date NOT NULL,
  `id_direction_training` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `student_creative_abilities`
--

CREATE TABLE `student_creative_abilities` (
  `id_student_creative_ability` int(11) NOT NULL,
  `id_student` int(11) DEFAULT NULL,
  `id_creative_ability` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `student_nosology`
--

CREATE TABLE `student_nosology` (
  `id_student_nosology` int(11) NOT NULL,
  `id_student` int(11) DEFAULT NULL,
  `id_nosology` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `name_user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `date_birth_user` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users_students`
--

CREATE TABLE `users_students` (
  `id_user_student` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_student` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `creative_abilities`
--
ALTER TABLE `creative_abilities`
  ADD PRIMARY KEY (`id_creative_ability`);

--
-- Индексы таблицы `direction_training`
--
ALTER TABLE `direction_training`
  ADD PRIMARY KEY (`id_direction_training`);

--
-- Индексы таблицы `nosology`
--
ALTER TABLE `nosology`
  ADD PRIMARY KEY (`id_nosology`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_role`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id_student`),
  ADD KEY `id_direction_training` (`id_direction_training`);

--
-- Индексы таблицы `student_creative_abilities`
--
ALTER TABLE `student_creative_abilities`
  ADD PRIMARY KEY (`id_student_creative_ability`),
  ADD KEY `id_student` (`id_student`),
  ADD KEY `id_creative_ability` (`id_creative_ability`);

--
-- Индексы таблицы `student_nosology`
--
ALTER TABLE `student_nosology`
  ADD PRIMARY KEY (`id_student_nosology`),
  ADD KEY `id_student` (`id_student`),
  ADD KEY `id_nosology` (`id_nosology`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_role` (`id_role`);

--
-- Индексы таблицы `users_students`
--
ALTER TABLE `users_students`
  ADD PRIMARY KEY (`id_user_student`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_student` (`id_student`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `creative_abilities`
--
ALTER TABLE `creative_abilities`
  MODIFY `id_creative_ability` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `direction_training`
--
ALTER TABLE `direction_training`
  MODIFY `id_direction_training` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `nosology`
--
ALTER TABLE `nosology`
  MODIFY `id_nosology` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id_student` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `student_creative_abilities`
--
ALTER TABLE `student_creative_abilities`
  MODIFY `id_student_creative_ability` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `student_nosology`
--
ALTER TABLE `student_nosology`
  MODIFY `id_student_nosology` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users_students`
--
ALTER TABLE `users_students`
  MODIFY `id_user_student` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`id_direction_training`) REFERENCES `direction_training` (`id_direction_training`);

--
-- Ограничения внешнего ключа таблицы `student_creative_abilities`
--
ALTER TABLE `student_creative_abilities`
  ADD CONSTRAINT `student_creative_abilities_ibfk_1` FOREIGN KEY (`id_student`) REFERENCES `students` (`id_student`),
  ADD CONSTRAINT `student_creative_abilities_ibfk_2` FOREIGN KEY (`id_creative_ability`) REFERENCES `creative_abilities` (`id_creative_ability`);

--
-- Ограничения внешнего ключа таблицы `student_nosology`
--
ALTER TABLE `student_nosology`
  ADD CONSTRAINT `student_nosology_ibfk_1` FOREIGN KEY (`id_student`) REFERENCES `students` (`id_student`),
  ADD CONSTRAINT `student_nosology_ibfk_2` FOREIGN KEY (`id_nosology`) REFERENCES `nosology` (`id_nosology`);

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id_role`);

--
-- Ограничения внешнего ключа таблицы `users_students`
--
ALTER TABLE `users_students`
  ADD CONSTRAINT `users_students_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `users_students_ibfk_2` FOREIGN KEY (`id_student`) REFERENCES `students` (`id_student`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
