-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2024 at 12:58 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aarsoppgave`
--

-- --------------------------------------------------------

--
-- Table structure for table `bord`
--

CREATE TABLE `bord` (
  `id` int(11) NOT NULL,
  `Nr` int(11) DEFAULT NULL,
  `navn` varchar(40) NOT NULL,
  `komentar` varchar(255) NOT NULL,
  `tid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bord`
--

INSERT INTO `bord` (`id`, `Nr`, `navn`, `komentar`, `tid`) VALUES
(3, 4, 'tias', 'sulten', 7),
(4, 6, 'tias', 'sulten', 6),
(5, 3, 'petter', 'f o o d ', 8),
(8, 6, 'matisa', 'sultena', 3),
(16, 3, 'tomas', '', 3),
(17, 1, 'tomas', '', 3),
(20, 1, 'scds', '', 7),
(21, 3, 'tomas', '', 10),
(22, 1, 'jeff', 'killer', 8),
(23, 1, 'kål', 'ssssssssssssssssssssss', 4),
(26, 1, 'parker', 'petter', 10),
(27, 1, 'all', 'allll', 1),
(28, 1, 'jul', 'julhan', 9),
(29, 1, 'jul', 'julhan', 8),
(30, 4, 'pp', 'ppp', 8),
(38, 3, 'Eirik da man', 'Wlaahi', 4),
(39, 1, 'Eirik da man igjen', 'Astagfirullah', 6),
(54, 5, 'sir olav av johanson', 'heloo', 4),
(55, 7, 'sir olav av johanson', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `borgar`
--

CREATE TABLE `borgar` (
  `id` int(11) NOT NULL,
  `brukernavn` varchar(40) NOT NULL,
  `tid` datetime NOT NULL,
  `drop0` varchar(40) NOT NULL,
  `drop1` varchar(40) NOT NULL,
  `drop2` varchar(40) NOT NULL,
  `drop3` varchar(40) NOT NULL,
  `drop4` varchar(40) NOT NULL,
  `drop5` varchar(40) NOT NULL,
  `drop6` varchar(40) NOT NULL,
  `drop7` varchar(40) NOT NULL,
  `drop8` varchar(40) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borgar`
--

INSERT INTO `borgar` (`id`, `brukernavn`, `tid`, `drop0`, `drop1`, `drop2`, `drop3`, `drop4`, `drop5`, `drop6`, `drop7`, `drop8`, `status`) VALUES
(22, 'Navnløss', '2024-02-28 13:02:32', 'topb.png', 'tomatoes.png', 'let.jpg', 'agurk.png', 'lok.png', 'cheddar-cheese.jpg', 'patty.avif', 'majones.png', 'none', ''),
(26, 'Almighty Admin', '2024-05-06 13:11:41', 'topb.png', 'Ketchup.png', 'kløk.png', 'cheddar-cheese.jpg', 'patty.avif', 'none', 'none', 'none', 'bottom.png', 'Ferdig'),
(28, 'Almighty Admin', '2024-05-06 14:28:05', 'topb.png', 'none', 'cheddar-cheese.jpg', 'patty.avif', 'none', 'none', 'none', 'none', 'bottom.png', '0'),
(29, 'Navnløss', '2024-05-13 12:52:57', 'topb.png', 'kløk.png', 'bacong.png', 'cheddar-cheese.jpg', 'patty.avif', 'agurk.png', 'agurk.png', 'let.jpg', 'bottom.png', '0'),
(30, 'Eparador', '2024-05-13 14:40:41', 'topb.png', 'none', 'bacong.png', 'patty.avif', 'agurk.png', 'tomatoes.png', 'let.jpg', 'none', 'bottom.png', 'Ferdig'),
(36, 'Almighty Admin', '2024-06-04 14:50:24', 'topb.png', 'cheddar-cheese.jpg', 'patty.avif', 'cheddar-cheese.jpg', 'patty.avif', 'cheddar-cheese.jpg', 'patty.avif', 'cheddar-cheese.jpg', 'bottom.png', '0'),
(37, 'Almighty Admin', '2024-06-04 14:50:50', 'topb.png', 'patty.avif', 'cheddar-cheese.jpg', 'patty.avif', 'cheddar-cheese.jpg', 'patty.avif', 'cheddar-cheese.jpg', 'patty.avif', 'bottom.png', '0'),
(39, 'Navnløss', '2024-06-09 18:50:07', 'topb.png', 'bacong.png', 'bacong.png', 'cheddar-cheese.jpg', 'patty.avif', 'agurk.png', 'let.jpg', 'tomatoes.png', 'bottom.png', 'Ferdig');

-- --------------------------------------------------------

--
-- Table structure for table `reviw`
--

CREATE TABLE `reviw` (
  `id` int(11) NOT NULL,
  `brukere` varchar(200) DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `stjerner` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviw`
--

INSERT INTO `reviw` (`id`, `brukere`, `komentar`, `stjerner`) VALUES
(1, 'ole', 'det smakte burger', 4),
(2, 'ANONYM', 'Burger good, yasss', 5),
(10, 'ANONYM', 'me like food', 3),
(12, 'Navnløss', 'AAAAAAAAAAAAAAAAAAAAAA\r\n', 3),
(14, 'tias', 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHH', 4),
(19, 'Navnløss', 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHH', 4),
(24, 'Navnløss', 'Erik approves', 5),
(25, 'Navnløss', 'aaaaaaaaaaa', 5),
(26, 'Almighty Admin', 'burger yum yum in tummy', 4),
(28, 'Navnløss', 'uten brukker', 4),
(29, 'Navnløss', 'hello burger', 5);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `brukernavn` varchar(20) NOT NULL,
  `mld` longtext NOT NULL,
  `tid` datetime NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `brukernavn`, `mld`, `tid`, `status`) VALUES
(16, 'Anonym', 'happy eyeballs', '2024-01-26 13:20:49', 'tomas'),
(17, 'Anonym', 'hjelp meg, jeg vill ha hjelp', '2024-01-29 13:04:15', 'jobbes'),
(18, 'Anonym', 'hjelp\r\n', '2024-01-29 13:29:42', 'venter'),
(19, 'Anonym', 'hjeelp', '2024-01-29 13:29:50', 'ikke'),
(20, 'Anonym', 'heeelp', '2024-01-29 13:29:56', 'venter'),
(21, 'Anonym', 'heeeelp', '2024-01-29 13:30:02', 'løst'),
(43, 'Anonym', 'h', '2024-01-29 13:49:18', 'venter'),
(44, 'Anonym', 'e', '2024-01-29 13:49:22', 'venter'),
(45, 'Anonym', 'l', '2024-01-29 13:49:24', 'venter'),
(46, 'Anonym', 'p', '2024-01-29 13:49:30', 'venter'),
(48, 'Anonym', 'm', '2024-01-29 13:49:36', 'venter'),
(49, 'Anonym', 'e', '2024-01-29 13:49:39', 'venter'),
(50, 'Anonym', '!', '2024-01-29 13:49:41', 'venter'),
(51, 'Anonym', 'jeg blir tiet!', '2024-01-29 13:50:42', 'løst'),
(52, 'Anonym', 'dette er undertrykkelse', '2024-01-29 13:50:50', 'venter'),
(53, 'Anonym', 'mobbing', '2024-01-29 13:50:57', 'jobbes'),
(54, 'Anonym', 'n', '2024-01-29 13:51:24', 'venter'),
(55, 'Anonym', 'e', '2024-01-29 13:51:27', 'venter'),
(56, 'Anonym', 'i', '2024-01-29 13:51:29', 'venter'),
(57, 'Anonym', '!', '2024-01-29 13:51:33', 'venter'),
(58, 'Anonym', 'slem', '2024-01-29 13:52:05', 'venter'),
(59, 'Anonym', 'når jeg klikker på menyen krasjer hele siden og logger meg ut', '2024-01-29 13:53:10', 'venter'),
(60, 'Anonym', 'kødda, d skjedde ikke', '2024-01-29 13:53:17', 'venter');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `admin` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `admin`) VALUES
(3, '123', '202cb962ac59075b964b07152d234b70', 'twd@ewew.com', NULL),
(4, 'Tias', '81dc9bdb52d04dc20036dbd8313ed055', 'ole@gmail.com', NULL),
(5, 'Almighty Admin', '202cb962ac59075b964b07152d234b70', 'epostens_1000@yahoo.com', 'Admin'),
(6, '1234', '81dc9bdb52d04dc20036dbd8313ed055', 'ole@gmail.com', NULL),
(7, 'adrian', '81dc9bdb52d04dc20036dbd8313ed055', 'epostens_1000@yahoo.com', NULL),
(8, 'kokk', '202cb962ac59075b964b07152d234b70', 'koc@ewew.com', 'kokk'),
(9, 'manage', '202cb962ac59075b964b07152d234b70', 'man@ewew.com', 'Manager'),
(10, 'Eparador', 'd93591bdf7860e1e4ee2fca799911215', 'EL@gmail.com', 'Admin'),
(11, '', 'd41d8cd98f00b204e9800998ecf8427e', '', NULL),
(13, 'Maricel', '81dc9bdb52d04dc20036dbd8313ed055', 'Smor@gmail.com', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bord`
--
ALTER TABLE `bord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borgar`
--
ALTER TABLE `borgar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviw`
--
ALTER TABLE `reviw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bord`
--
ALTER TABLE `bord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `borgar`
--
ALTER TABLE `borgar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `reviw`
--
ALTER TABLE `reviw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
