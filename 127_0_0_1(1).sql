-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2016 at 08:54 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamingplace`
--
CREATE DATABASE IF NOT EXISTS `gamingplace` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gamingplace`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Xbox One Games'),
(2, 'PS4'),
(3, 'Mintendo Wii Games'),
(4, 'Xbox 360 Games'),
(5, 'PS3 Games'),
(6, 'kugjtf');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `adress2` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zipcode` int(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `transaction`, `qty`, `price`, `adress`, `adress2`, `city`, `state`, `zipcode`) VALUES
(1, 1, 1, '0', 1, '59.99', 'El Mahkma ST', '', 'Minya', 'Minya', 2),
(2, 1, 1, '0', 1, '59.99', 'cairo', '', 'cairo', 'nasr', 2),
(3, 5, 3, '0', 2, '119.98', '17 el mahkma st', 'anything', 'minya', 'minya', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `description`, `image`, `price`) VALUES
(1, 1, 'Destuny', 'A dark shadow has fallen over our worlds. Oryx, The Taken King, is hell-bent on vengeance and is raising an army of corrupted “Taken” forces by manipulating the Darkness itself. You must find a way into his impenetrable Dreadnaught ship to defeat The Taken King before he and his dark army consume our civilization and bring our solar system to ruin.\r\nDestiny: The Taken King, the next great adventure in the first person shooter Destiny universe, introduces a new story campaign and quests, new enemies to fight, new locations to explore, new Strikes and Crucible maps, a new Raid that will put players to the ultimate test, and more. To stand up to the challenge, players will have access to three new devastating Guardian subclasses, and a massive arsenal of weapons, armor, and gear.', 'game1.jpg', '59.99'),
(2, 1, 'Call of Duty: Ghosts', 'Call of Duty: Ghosts is a 2013 first-person shooter video game developed by Infinity Ward, with assistance from Raven Software, Neversoft and Certain Affinity. Published by Activision, it is the tenth primary installment in the Call of Duty series and the sixth developed by Infinity Ward. The video game was released for Microsoft Windows, PlayStation 3, Xbox 360, and Wii U on November 5, 2013, with Treyarch handling the port for the Wii U. The game was released with the launch of next-generation consoles PlayStation 4 and Xbox One.', 'game2.jpg', '59.99'),
(3, 5, 'Watch Dogs', 'Set in Chicago, where a central network of computers connects everyone and everything, Watch_Dogs explores the impact of technology within our society. Using the city as your weapon, you will embark on a personal mission to inflict your own brand of justice.\r\n\r\nChicago''s overarching network is known as the Central Operating System (ctOS), and it controls almost all of the city''s technology and information - including key data on all of the city''s residents.', 'game3.jpg', '49.99'),
(4, 1, 'Sniper Elit', 'Sniper Elite (also known as Sniper Elite: Berlin 1945) is a third-person tactical shooter stealth video game developed by Rebellion Developments and published by MC2 France in Europe and by Namco Hometek in North America, in 2005. In 2012, to coincide with the release of the remake Sniper Elite V2, it was re-issued through Steam by Rebellion itself. A sequel titled Sniper Elite III was released in 2014.\r\n\r\nThe main character of Sniper Elite is Karl Fairburne, an American OSS secret agent disguised as a German sniper. He is inserted into the Battle of Berlin in 1945, during the final days of World War II, with the critical objective of obtaining German nuclear technology before the Soviet Union.', 'game4.jpg', '49.99'),
(5, 2, 'Batman Arkham Night', 'atman: Arkham Knight is a 2015 action-adventure video game developed by Rocksteady Studios. It is the sequel to the 2011 video game Batman: Arkham City, and is the fourth in the Batman: Arkham series. The game has been released by Warner Bros. Interactive Entertainment for the PlayStation 4, Xbox One, and PC. It was released worldwide on June 23, 2015.[1] The game is the third game in the franchise to be developed by Rocksteady, the team which created both Asylum, City.', 'game5.jpg', '59.99'),
(6, 2, 'Shadow of Mordor', 'The story of the game takes place between the events of The Hobbit and The Lord of the Rings. The players control Talion, a ranger who was killed by the Black Hand of Sauron. Talion''s spirit merged with the wraith of the Elf Lord Celebrimbor, and together they try to avenge the death of their loved ones. Players can engage in melee combat, and utilize some of the wraith abilities to fight against enemies. The game uses the Nemesis System, which allows the artificial intelligence of non-playable characters to remember the death of the game''s protagonist and react accordingly.', 'game6.jpg', '49.99');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `join_date`) VALUES
(1, 'Kemo', 'Ashrf', 'k.ashrf911@gmail.com', 'Kemo', '12345', '2016-04-25 07:41:37'),
(2, 'kareem', 'ashrf', 'kemo.mody911@gmail.com', 'kemoooo', '45c144eb46f06589b17b9fa25946ed57', '2016-05-15 17:30:45'),
(3, 'admin', 'admin', 'admin@gmail.com', 'admin', '45c144eb46f06589b17b9fa25946ed57', '2016-05-16 05:41:24'),
(4, 'fady', 'mounir', 'fadymounir@yahoo.com', 'fady mounir', '81dc9bdb52d04dc20036dbd8313ed055', '2016-05-16 10:28:39'),
(5, 'hamada', 'ibrahim', 'hasgd@jhgds.com', 'asdasd', 'a8f5f167f44f4964e6c998dee827110c', '2016-05-25 11:56:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
