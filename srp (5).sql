-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2023 at 04:36 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srp`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `user_id` int(11) NOT NULL,
  `aemail` varchar(50) NOT NULL,
  `apassword` varchar(200) NOT NULL,
  `asession` int(11) DEFAULT NULL,
  `who` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`user_id`, `aemail`, `apassword`, `asession`, `who`) VALUES
(1, 'admin1@gmail.com', '1234', 0, 'a'),
(3, 'admin2@gmail.com', '1234', NULL, 'a');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `p` int(11) NOT NULL,
  `sno` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `q` varchar(100) NOT NULL,
  `ans` varchar(200) NOT NULL,
  `ansby` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`p`, `sno`, `email`, `q`, `ans`, `ansby`) VALUES
(12, 14, 'peterparker@gmail.com', 'what is ceg', 'This was deleted', 'hi@g.com'),
(14, 18, 'johnsmith@gmail.com', 'when is the convocation day?', ' ', 'peterparker@gmail.com'),
(18, 18, 'johnsmith@gmail.com', 'when is the convocation day?', 'feb 23', 'admin1@gmail.com'),
(24, 14, 'peterparker@gmail.com', 'what is ceg', 'This was deleted', 'johnsmith@gmail.com'),
(26, 15, 'johnsmith@gmail.com', 'how to get into civil?', 'This was deleted by admin', 'peterparker@gmail.com'),
(27, 15, 'johnsmith@gmail.com', 'how to get into civil?', 'Tnea Councilling', 'admin2@gmail.com'),
(28, 15, 'johnsmith@gmail.com', 'how to get into civil?', 'tneaaa abcedddddddddddddddddddddddddddddd', 'admin1@gmail.com'),
(29, 15, 'johnsmith@gmail.com', 'how to get into civil?', 'through tneaa', 'admin1@gmail.com'),
(30, 19, 'johnsmith@gmail.com', 'What is the marking scheme?', 'xxxx', 'admin1@gmail.com'),
(31, 21, 'johnsmith@gmail.com', 'what is tnea', 'Tamil nadu Engineering Admission Online Home - TNEA.', 'peterparker@gmail.com'),
(32, 21, 'johnsmith@gmail.com', 'what is tnea', 'Where The councilling happens for tn coilleges', 'admin1@gmail.com'),
(33, 14, 'peterparker@gmail.com', 'what is ceg', 'Very waste college', 'admin1@gmail.com'),
(35, 22, 'johnsmith@gmail.com', 'how are u?', 'naan epdi iruntha unakennada ', 'peterparker@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `sno` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `des` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `venue` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`sno`, `title`, `des`, `date`, `venue`) VALUES
(10, 'efef', 'dweetty1', '2023-05-05', 'ww'),
(11, '12345', '1234', '0000-00-00', 'ss'),
(14, 'Workshop4', 'Workshop on building materials', '2023-04-09', 'Red Building');

-- --------------------------------------------------------

--
-- Table structure for table `papers`
--

CREATE TABLE `papers` (
  `sno` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `path` varchar(200) NOT NULL,
  `papername` varchar(500) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `papers`
--

INSERT INTO `papers` (`sno`, `name`, `mail`, `path`, `papername`, `description`) VALUES
(7, 'admin1@gmail.com', 'admin1@gmail.com', 'D:/login_node/public/Reserachp/Automatic_Fire_Detection.pdf', 'FireDetection', 'dd'),
(10, 'johnsmith@gmail.com', 'johnsmith@gmail.com', 'D:/login_node/public/Reserachp/IOT-Raspberry Pi Pico.pdf', 'iot', 'iottt'),
(11, 'johnsmith@gmail.com', 'johnsmith@gmail.com', 'D:/login_node/public/Reserachp/SRP Report.pdf', 'SRP', 'My report'),
(12, 'admin1@gmail.com', 'admin1@gmail.com', 'D:/login_node/public/Reserachp/IJARCCE 40.pdf', 'Text Summariser', 'Research Paper on text summarizer');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `sno` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `q` varchar(300) NOT NULL,
  `ans` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`sno`, `email`, `q`, `ans`) VALUES
(14, 'peterparker@gmail.com', 'what is ceg', 'done'),
(15, 'johnsmith@gmail.com', 'how to get into civil?', 'done'),
(17, 'johnsmith@gmail.com', 'how much to score', ''),
(18, 'johnsmith@gmail.com', 'when is the convocation day?', 'done'),
(19, 'johnsmith@gmail.com', 'What is the marking scheme?', 'done'),
(21, 'johnsmith@gmail.com', 'what is tnea', 'done'),
(22, 'johnsmith@gmail.com', 'how are u?', 'done'),
(24, 'peterparker@gmail.com', 'ABCD?', ''),
(25, 'peterparker@gmail.com', 'Are the materials provided useful?', '');

-- --------------------------------------------------------

--
-- Table structure for table `researchlogin`
--

CREATE TABLE `researchlogin` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `researchlogin`
--

INSERT INTO `researchlogin` (`user_id`, `user_email`, `user_password`) VALUES
(1, 'r1@g.com', '1234'),
(2, 'r2@g.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_session_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_email`, `user_password`, `user_session_id`) VALUES
(1, 'johnsmith@gmail.com', 'password', ''),
(2, 'peterparker@gmail.com', 'password', ''),
(3, 'hi@g.com', '123', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`p`),
  ADD KEY `sno` (`sno`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `papers`
--
ALTER TABLE `papers`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `researchlogin`
--
ALTER TABLE `researchlogin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `papers`
--
ALTER TABLE `papers`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `researchlogin`
--
ALTER TABLE `researchlogin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`sno`) REFERENCES `questions` (`sno`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
