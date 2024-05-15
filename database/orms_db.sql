-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2024 at 01:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_list`
--

CREATE TABLE `activity_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `image_path` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_list`
--

INSERT INTO `activity_list` (`id`, `name`, `description`, `status`, `image_path`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Party Overnight', 'Basta haha Ug Naay Girls Lami jud mag party.', 1, 'WPS JPG Picture file (.jpg)', 0, '2022-01-08 13:12:13', '2024-05-15 19:20:31'),
(2, 'Bino-aka Botilya pag mahubog Overnight', 'Join Our Daily Activity Bino-aka Botilya', 1, 'uploads/activitys/2.png?v=1641618857', 1, '2022-01-08 13:14:17', '2024-05-15 19:21:46'),
(3, 'Diving', 'Naay Swimming Pool dana Pag Dive Dive pero Chada tong mo Dive kag walay Tubig.', 1, 'uploads/activitys/3.png?v=1641618898', 0, '2022-01-08 13:14:58', '2024-05-15 19:01:08'),
(4, 'Island Hopping', 'Ay Island Hoping Buang Shot Ta Sa Island', 1, 'uploads/activitys/4.png?v=1641618928', 0, '2022-01-08 13:15:27', '2024-05-15 19:01:08'),
(5, 'test', 'exam', 0, 'uploads/activitys/5.png?v=1641618949', 1, '2022-01-08 13:15:49', '2024-05-15 19:01:08'),
(6, 'One Piece', '', 1, '', 1, '2024-05-15 19:22:04', '2024-05-15 19:26:11'),
(7, 'One Piece', '', 1, '', 1, '2024-05-15 19:22:13', '2024-05-15 19:26:23'),
(8, 'One Piece', '&lt;p&gt;Enjoy Party Overnight only here in @TwinHearts&lt;/p&gt;', 1, '', 1, '2024-05-15 19:23:17', '2024-05-15 19:27:44'),
(9, 'One Piece', '&lt;p&gt;Enjoy Party Overnight only here in @TwinHearts&lt;br&gt;&lt;/p&gt;', 1, '', 0, '2024-05-15 19:27:57', NULL),
(10, 'One Piece', '&lt;p&gt;Enjoy Party Overnight only here in @TwinHearts&lt;br&gt;&lt;/p&gt;', 1, '', 0, '2024-05-15 19:28:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `message_list`
--

CREATE TABLE `message_list` (
  `id` int(30) NOT NULL,
  `fullname` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation_list`
--

CREATE TABLE `reservation_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `room_id` int(30) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `fullname` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Pending, 1 = Confirmed, 2=Cancelled',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation_list`
--

INSERT INTO `reservation_list` (`id`, `code`, `room_id`, `check_in`, `check_out`, `fullname`, `contact`, `email`, `address`, `status`, `date_created`, `date_updated`) VALUES
(4, '202405-0001', 1, '2024-05-17', '2024-05-28', 'kuya Dan', '09678732169', 'KuyaDan@gmail.com', 'Nabulod', 1, '2024-05-15 19:10:43', '2024-05-15 19:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `room_list`
--

CREATE TABLE `room_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `type` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `image_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_list`
--

INSERT INTO `room_list` (`id`, `name`, `type`, `description`, `price`, `image_path`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Room 101', 'Single', 'Stay in Overnight Reserve Your Beds @Jasaan Twin Hearts', 1200, 'uploads/rooms/1.png?v=1641606821', 1, 0, '2024-01-08 09:53:41', '2024-05-15 18:54:04'),
(2, 'Room 102', 'Double', 'Stay in Overnight with Your Jowa(Naol) Reserve Your Beds @Jasaan Twin Hearts', 2500, 'uploads/rooms/2.png?v=1641608206', 1, 0, '2022-01-08 10:16:45', '2024-05-15 18:56:29'),
(3, 'Room 103', 'Family', 'Stay in Overnight with your Family Reserve Your Beds @Jasaan Twin Hearts', 3500, 'uploads/rooms/3.png?v=1641608243', 1, 0, '2022-01-08 10:17:23', '2024-05-15 18:56:29'),
(4, 'Room 103', 'Double', 'Stay in Overnight with Your Jowa(Naol) Reserve Your Beds @Jasaan Twin Hearts', 1300, 'uploads/rooms/4.png?v=1641608280', 1, 0, '2022-01-08 10:17:59', '2024-05-15 18:56:29'),
(5, 'Room 105', 'Double', 'Stay in Overnight with Your Jowa(Naol) Reserve Your Beds @Jasaan Twin Hearts', 1600, 'uploads/rooms/5.png?v=1641608319', 1, 0, '2022-01-08 10:18:39', '2024-05-15 18:56:29');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Twin Hearts Resort Management'),
(6, 'short_name', 'TwinHearts Resort'),
(11, 'logo', 'uploads/logo-1641604371.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1641604371.png'),
(15, 'content', 'Array'),
(16, 'email', 'MuragTarung@gmail.com'),
(17, 'contact', '09678732169'),
(18, 'from_time', '11:00'),
(19, 'to_time', '21:30'),
(20, 'address', 'Twin Hearts Spring Resort Jasaan Misamis Oriental');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Admin-TRM', NULL, 'MuragTarung', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatar-1.png?v=1639468007', NULL, 1, 1, '2021-01-20 14:02:37', '2024-05-15 18:32:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_list`
--
ALTER TABLE `activity_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_list`
--
ALTER TABLE `message_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation_list`
--
ALTER TABLE `reservation_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `room_list`
--
ALTER TABLE `room_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `activity_list`
--
ALTER TABLE `activity_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `message_list`
--
ALTER TABLE `message_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reservation_list`
--
ALTER TABLE `reservation_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room_list`
--
ALTER TABLE `room_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservation_list`
--
ALTER TABLE `reservation_list`
  ADD CONSTRAINT `reservation_list_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
