-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 16, 2020 at 09:41 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_first`
--

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(18),
(18);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `skill` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `description`, `skill`) VALUES
(8, 'Изучил Core и Syntax (20 уровней)', 'Курсы JavaRush'),
(10, 'Изучаю, стараюсь делать проекты', 'Spring Framework'),
(11, '', 'Maven'),
(12, '', 'Hibernate'),
(13, '', 'MySQL и PostgreSQL'),
(14, '', 'Thymeleaf'),
(15, 'Изучаю насколько возможно', 'Git'),
(16, 'Есть успешный опыт в поднятии сервера WildFly', 'JBoss'),
(17, 'В процессе прочтения', 'Книги SpringInAction, Java (O\'Reilly)');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `salary` int(11) NOT NULL,
  `years` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `company`, `description`, `position`, `salary`, `years`) VALUES
(1, 'ООО \"Банк Подарков\"', 'Работа выходного дня (2 раза в неделю)', 'Системный администратор', 0, 'Октябрь 2009 — январь 2011'),
(2, 'ООО \"РуссДом\"', 'Создание и поддержка IT инфраструктуры компании', 'Системный администратор', 0, 'Октябрь 2009 — январь 2011'),
(3, 'ОАО ВымпелКом', 'Поддержка корпоративных клиентов по фиксированной сети', 'Специалист службы технической поддержки', 0, 'Август 2011 — апрель 2014'),
(4, 'Московский областной центр реструктуризации долговых обязательств', 'Управление IT инфраструктурой компании', 'Инженер', 0, 'Апрель 2014 — январь 2015'),
(5, 'СК Гарант-Столица', 'Поддержка пользователей правовой системы Гарант', 'Специалист по программно-технической поддержке', 0, 'Апрель 2015 — ноябрь 2017'),
(6, 'отель \"THE ROOMS\" Boutique Hotel', 'Управление IT инфраструктурой отеля. Руководство штатом в составе 2-х IT специалистов', 'Руководитель IT-службы', 0, 'Ноябрь 2017 — апрель 2018'),
(7, 'ОАО ВымпелКом', 'Поддержка ключевых клиентов компании по фиксированной сети', 'Ведущий специалист направления персональной технической поддержки выделенных корпоративных клиентов', 0, 'Апрель 2018 — по настоящее время');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
