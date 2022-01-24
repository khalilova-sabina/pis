-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 11, 2022 at 04:22 PM
-- Server version: 8.0.15
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(2) NOT NULL,
  `title` varchar(50) NOT NULL,
  `amount` int(10) NOT NULL,
  `period` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`, `amount`, `period`) VALUES
(1, 'Английский для начинающих', 1000, '6 месяцев'),
(2, 'Английский для начинающих', 1000, '6 месяцев');

-- --------------------------------------------------------

--
-- Table structure for table `oplata`
--

CREATE TABLE `oplata` (
  `id` int(2) NOT NULL,
  `FIO` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `amount` int(10) NOT NULL,
  `period` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oplata`
--

INSERT INTO `oplata` (`id`, `FIO`, `date`, `amount`, `period`) VALUES
(1, 'Бугера Кристиан Сергеевич', '2021-12-23', 12000, '6 месяцев'),
(3, 'Чуприна Юлия Анатольевна', '2021-12-23', 12000, '6 месяцев'),
(4, 'Миронюк Татьяна Алексеевна', '2022-01-13', 10000, '6'),
(5, 'Миронюк Татьяна Алексеевна', '2022-01-13', 10000, '6');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `name`, `email`, `phone`, `message`) VALUES
(1, 'Сабина', 'sabina@mail.ru', '+79786090325', 'Test'),
(2, 'Test', 'test@gmail.com', '+79782050466', '3232'),
(4, 'Test', 'test@gmail.com', '+79787523607', 'dsadsa');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(2) NOT NULL,
  `FIO` varchar(50) NOT NULL,
  `snils` varchar(14) NOT NULL,
  `age` int(2) NOT NULL,
  `education` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Online',
  `phone` varchar(15) NOT NULL,
  `course` varchar(20) NOT NULL,
  `login` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `groupp` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Не выбрана'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `FIO`, `snils`, `age`, `education`, `phone`, `course`, `login`, `password`, `groupp`) VALUES
(1, 'Бугера Кристиан Сергеевич', '156-143-156 11', 20, 'online', '+79788563241', 'англ с нуля', 'bugera', 'bugera', 'А-0'),
(2, 'Чуприна Юлия Анатольевна', '166-180-456 13', 20, 'online', '+79788464608', 'англ с нуля', 'chuprina', 'churpina', 'А-0'),
(3, 'Халилова Сабина', '123-850-850 56', 18, 'Online', '+79786090325', 'Для начинающих', '123456', '123456', 'Не выбрана'),
(5, 'Халилова Ленура Энверовна', '189-850-850 56', 18, 'Online', '+79786090325', 'Начальный уровень', '123457', '123456', 'Не выбрана'),
(6, 'Миронюк Татьяна Алексеевна', '183-089-679 09', 23, 'Online', '+79782050465', 'Для начинающих', '123458', '123456', 'Не выбрана');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(2) NOT NULL,
  `login` varchar(50) NOT NULL,
  `parol` int(50) NOT NULL,
  `fff` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `login`, `parol`, `fff`) VALUES
(1, 'test@mail.ru', 123456, 1234);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oplata`
--
ALTER TABLE `oplata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oplata`
--
ALTER TABLE `oplata`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
