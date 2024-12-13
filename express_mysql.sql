-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2024 at 08:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `express_mysql`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` char(36) NOT NULL DEFAULT uuid(),
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `published_year` int(11) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `isbn` varchar(13) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `published_year`, `stock`, `isbn`, `created_at`, `updated_at`) VALUES
('27a08c11-b923-11ef-ada2-a83b760cde66', 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 5, '9780743273565', '2024-12-13 07:23:31', '2024-12-13 07:23:31'),
('27a09a04-b923-11ef-ada2-a83b760cde66', 'To Kill a Mockingbird', 'Harper Lee', 1960, 2, '9780446310789', '2024-12-13 07:23:31', '2024-12-13 07:33:11'),
('27a09aa8-b923-11ef-ada2-a83b760cde66', '1984', 'George Orwell', 1949, 4, '9780451524935', '2024-12-13 07:23:31', '2024-12-13 07:23:31'),
('27a09ad9-b923-11ef-ada2-a83b760cde66', 'Pride and Prejudice', 'Jane Austen', 1813, 6, '9780141439518', '2024-12-13 07:23:31', '2024-12-13 07:23:31'),
('27a09afc-b923-11ef-ada2-a83b760cde66', 'The Catcher in the Rye', 'J.D. Salinger', 1951, 3, '9780316769488', '2024-12-13 07:23:31', '2024-12-13 07:23:31'),
('27a09b1f-b923-11ef-ada2-a83b760cde66', 'The Hobbit', 'J.R.R. Tolkien', 1937, 7, '9780547928227', '2024-12-13 07:23:31', '2024-12-13 07:23:31'),
('27a09b40-b923-11ef-ada2-a83b760cde66', 'The Da Vinci Code', 'Dan Brown', 2003, 3, '9780307474278', '2024-12-13 07:23:31', '2024-12-13 07:32:47'),
('27a09b64-b923-11ef-ada2-a83b760cde66', 'The Alchemist', 'Paulo Coelho', 1988, 5, '9780062315007', '2024-12-13 07:23:31', '2024-12-13 07:23:31'),
('27a09b89-b923-11ef-ada2-a83b760cde66', 'The Little Prince', 'Antoine de Saint-Exupéry', 1943, 8, '9780156012195', '2024-12-13 07:23:31', '2024-12-13 07:23:31'),
('27a09bd6-b923-11ef-ada2-a83b760cde66', 'Brave New World', 'Aldous Huxley', 1932, 4, '9780060850524', '2024-12-13 07:23:31', '2024-12-13 07:23:31'),
('27a09bf6-b923-11ef-ada2-a83b760cde66', 'The Lord of the Rings', 'J.R.R. Tolkien', 1954, 6, '9780618640157', '2024-12-13 07:23:31', '2024-12-13 07:23:31'),
('27a09c15-b923-11ef-ada2-a83b760cde66', 'Harry Potter and the Sorcerers Stone', 'J.K. Rowling', 1997, 7, '9780590353427', '2024-12-13 07:23:31', '2024-12-13 07:23:31'),
('27a09c38-b923-11ef-ada2-a83b760cde66', 'The Chronicles of Narnia', 'C.S. Lewis', 1950, 5, '9780066238501', '2024-12-13 07:23:31', '2024-12-13 07:23:31'),
('27a09c7a-b923-11ef-ada2-a83b760cde66', 'One Hundred Years of Solitude', 'Gabriel García Márquez', 1967, 2, '9780060883287', '2024-12-13 07:23:31', '2024-12-13 07:31:41'),
('27a09c9c-b923-11ef-ada2-a83b760cde66', 'The Hunger Games', 'Suzanne Collins', 2008, 6, '9780439023481', '2024-12-13 07:23:31', '2024-12-13 07:23:31'),
('27a09cb9-b923-11ef-ada2-a83b760cde66', 'The Road', 'Cormac McCarthy', 2006, 4, '9780307387899', '2024-12-13 07:23:31', '2024-12-13 07:23:31'),
('27a09cde-b923-11ef-ada2-a83b760cde66', 'The Kite Runner', 'Khaled Hosseini', 2003, 5, '9781594631931', '2024-12-13 07:23:31', '2024-12-13 07:23:31'),
('27a09cfd-b923-11ef-ada2-a83b760cde66', 'The Girl with the Dragon Tattoo', 'Stieg Larsson', 2005, 2, '9780307949486', '2024-12-13 07:23:31', '2024-12-13 07:32:20'),
('27a09d1e-b923-11ef-ada2-a83b760cde66', 'The Book Thief', 'Markus Zusak', 2005, 6, '9780375842207', '2024-12-13 07:23:31', '2024-12-13 07:23:31'),
('27a09d3d-b923-11ef-ada2-a83b760cde66', 'Life of Pi', 'Yann Martel', 2001, 5, '9780156027328', '2024-12-13 07:23:31', '2024-12-13 07:23:31');

-- --------------------------------------------------------

--
-- Table structure for table `borrowings`
--

CREATE TABLE `borrowings` (
  `id` char(36) NOT NULL DEFAULT uuid(),
  `book_id` char(36) DEFAULT NULL,
  `member_id` char(36) DEFAULT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'BORROWED',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrowings`
--

INSERT INTO `borrowings` (`id`, `book_id`, `member_id`, `borrow_date`, `return_date`, `status`, `created_at`, `updated_at`) VALUES
('287b456f-b924-11ef-ada2-a83b760cde66', '27a09a04-b923-11ef-ada2-a83b760cde66', 'c04cbf64-b923-11ef-ada2-a83b760cde66', '2024-12-13', NULL, 'BORROWED', '2024-12-13 07:30:42', '2024-12-13 07:30:42'),
('2e492169-b924-11ef-ada2-a83b760cde66', '27a09a04-b923-11ef-ada2-a83b760cde66', '849e07a9-b923-11ef-ada2-a83b760cde66', '2024-12-13', '2024-12-13', 'RETURNED', '2024-12-13 07:30:51', '2024-12-13 07:32:58'),
('365a8353-b924-11ef-ada2-a83b760cde66', '27a09a04-b923-11ef-ada2-a83b760cde66', '849e0970-b923-11ef-ada2-a83b760cde66', '2024-12-13', '2024-12-13', 'RETURNED', '2024-12-13 07:31:05', '2024-12-13 07:33:11'),
('4048353d-b924-11ef-ada2-a83b760cde66', '27a09b40-b923-11ef-ada2-a83b760cde66', '849e08e8-b923-11ef-ada2-a83b760cde66', '2024-12-13', NULL, 'BORROWED', '2024-12-13 07:31:22', '2024-12-13 07:31:22'),
('45933365-b924-11ef-ada2-a83b760cde66', '27a09b40-b923-11ef-ada2-a83b760cde66', '849e06e0-b923-11ef-ada2-a83b760cde66', '2024-12-13', '2024-12-13', 'RETURNED', '2024-12-13 07:31:30', '2024-12-13 07:32:47'),
('4bd19beb-b924-11ef-ada2-a83b760cde66', '27a09c7a-b923-11ef-ada2-a83b760cde66', '849e06e0-b923-11ef-ada2-a83b760cde66', '2024-12-13', NULL, 'BORROWED', '2024-12-13 07:31:41', '2024-12-13 07:31:41'),
('5170456a-b924-11ef-ada2-a83b760cde66', '27a09cfd-b923-11ef-ada2-a83b760cde66', '849e06e0-b923-11ef-ada2-a83b760cde66', '2024-12-13', NULL, 'BORROWED', '2024-12-13 07:31:50', '2024-12-13 07:31:50'),
('63428dd8-b924-11ef-ada2-a83b760cde66', '27a09cfd-b923-11ef-ada2-a83b760cde66', '849e08e8-b923-11ef-ada2-a83b760cde66', '2024-12-13', NULL, 'BORROWED', '2024-12-13 07:32:20', '2024-12-13 07:32:20');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` char(36) NOT NULL DEFAULT uuid(),
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
('849df5d7-b923-11ef-ada2-a83b760cde66', 'John Doe', 'john.doe@email.com', '081234567890', '123 Main St, City', '2024-12-13 07:26:07', '2024-12-13 07:26:07'),
('849e0651-b923-11ef-ada2-a83b760cde66', 'Jane Smith', 'jane.smith@email.com', '081234567891', '456 Oak Ave, Town', '2024-12-13 07:26:07', '2024-12-13 07:26:07'),
('849e06e0-b923-11ef-ada2-a83b760cde66', 'Robert Johnson', 'robert.j@email.com', '081234567892', '789 Pine Rd, Village', '2024-12-13 07:26:07', '2024-12-13 07:26:07'),
('849e071a-b923-11ef-ada2-a83b760cde66', 'Mary Williams', 'mary.w@email.com', '081234567893', '321 Elm St, Borough', '2024-12-13 07:26:07', '2024-12-13 07:26:07'),
('849e0740-b923-11ef-ada2-a83b760cde66', 'Michael Brown', 'michael.b@email.com', '081234567894', '654 Maple Dr, District', '2024-12-13 07:26:07', '2024-12-13 07:26:07'),
('849e0765-b923-11ef-ada2-a83b760cde66', 'Sarah Davis', 'sarah.d@email.com', '081234567895', '987 Cedar Ln, County', '2024-12-13 07:26:07', '2024-12-13 07:26:07'),
('849e0789-b923-11ef-ada2-a83b760cde66', 'James Wilson', 'james.w@email.com', '081234567896', '147 Birch Ave, State', '2024-12-13 07:26:07', '2024-12-13 07:26:07'),
('849e07a9-b923-11ef-ada2-a83b760cde66', 'Emily Taylor', 'emily.t@email.com', '081234567897', '258 Spruce St, Province', '2024-12-13 07:26:07', '2024-12-13 07:26:07'),
('849e07ce-b923-11ef-ada2-a83b760cde66', 'David Anderson', 'david.a@email.com', '081234567898', '369 Ash Rd, Territory', '2024-12-13 07:26:07', '2024-12-13 07:26:07'),
('849e0815-b923-11ef-ada2-a83b760cde66', 'Lisa Thomas', 'lisa.t@email.com', '081234567899', '741 Walnut Ct, Region', '2024-12-13 07:26:07', '2024-12-13 07:26:07'),
('849e0848-b923-11ef-ada2-a83b760cde66', 'Kevin Martin', 'kevin.m@email.com', '081234567800', '852 Cherry Ln, Area', '2024-12-13 07:26:07', '2024-12-13 07:26:07'),
('849e0869-b923-11ef-ada2-a83b760cde66', 'Jennifer White', 'jennifer.w@email.com', '081234567801', '963 Palm Ave, Zone', '2024-12-13 07:26:07', '2024-12-13 07:26:07'),
('849e088a-b923-11ef-ada2-a83b760cde66', 'Christopher Lee', 'chris.l@email.com', '081234567802', '159 Beach Rd, Sector', '2024-12-13 07:26:07', '2024-12-13 07:26:07'),
('849e08ac-b923-11ef-ada2-a83b760cde66', 'Amanda Clark', 'amanda.c@email.com', '081234567803', '357 Coast St, District', '2024-12-13 07:26:07', '2024-12-13 07:26:07'),
('849e08cb-b923-11ef-ada2-a83b760cde66', 'Daniel Martinez', 'daniel.m@email.com', '081234567804', '468 River Dr, County', '2024-12-13 07:26:07', '2024-12-13 07:26:07'),
('849e08e8-b923-11ef-ada2-a83b760cde66', 'Michelle Garcia', 'michelle.g@email.com', '081234567805', '789 Lake Ave, State', '2024-12-13 07:26:07', '2024-12-13 07:26:07'),
('849e090a-b923-11ef-ada2-a83b760cde66', 'Andrew Robinson', 'andrew.r@email.com', '081234567806', '951 Ocean Blvd, Province', '2024-12-13 07:26:07', '2024-12-13 07:26:07'),
('849e0931-b923-11ef-ada2-a83b760cde66', 'Patricia Rodriguez', 'patricia.r@email.com', '081234567807', '753 Bay St, Territory', '2024-12-13 07:26:07', '2024-12-13 07:26:07'),
('849e0953-b923-11ef-ada2-a83b760cde66', 'Joseph Hall', 'joseph.h@email.com', '081234567808', '246 Harbor Rd, Region', '2024-12-13 07:26:07', '2024-12-13 07:26:07'),
('849e0970-b923-11ef-ada2-a83b760cde66', 'Nicole King', 'nicole.k@email.com', '081234567809', '135 Port Ave, Area', '2024-12-13 07:26:07', '2024-12-13 07:26:07'),
('c04cbf64-b923-11ef-ada2-a83b760cde66', 'Nurul Hidayatullah', 'nurul@gmail.com', '089669930253', 'Cikarang', '2024-12-13 07:27:47', '2024-12-13 07:27:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `isbn` (`isbn`);

--
-- Indexes for table `borrowings`
--
ALTER TABLE `borrowings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrowings`
--
ALTER TABLE `borrowings`
  ADD CONSTRAINT `borrowings_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `borrowings_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
