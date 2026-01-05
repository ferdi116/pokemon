-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2026 at 08:19 AM
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
-- Database: `pokemon_fetch`
--

-- --------------------------------------------------------

--
-- Table structure for table `abilities`
--

CREATE TABLE `abilities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `abilities`
--

INSERT INTO `abilities` (`id`, `name`) VALUES
(1, 'overgrow'),
(2, 'blaze'),
(3, 'torrent'),
(4, 'compound-eyes'),
(5, 'shed-skin'),
(6, 'swarm'),
(7, 'keen-eye'),
(8, 'tangled-feet'),
(9, 'run-away'),
(10, 'guts'),
(11, 'intimidate');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2026-01-05-060935', 'App\\Database\\Migrations\\Pokemon', 'default', 'App', 1767593847, 1),
(2, '2026-01-05-061026', 'App\\Database\\Migrations\\Abilities', 'default', 'App', 1767593847, 1),
(3, '2026-01-05-061052', 'App\\Database\\Migrations\\PokemonAbilities', 'default', 'App', 1767593847, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pokemons`
--

CREATE TABLE `pokemons` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `base_experience` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pokemons`
--

INSERT INTO `pokemons` (`id`, `name`, `base_experience`, `weight`, `image_path`) VALUES
(1, 'ivysaur', 142, 130, 'pokemon_images/ivysaur.png'),
(2, 'venusaur', 236, 1000, 'pokemon_images/venusaur.png'),
(3, 'charmeleon', 142, 190, 'pokemon_images/charmeleon.png'),
(4, 'charizard', 240, 905, 'pokemon_images/charizard.png'),
(5, 'wartortle', 142, 225, 'pokemon_images/wartortle.png'),
(6, 'blastoise', 239, 855, 'pokemon_images/blastoise.png'),
(7, 'butterfree', 178, 320, 'pokemon_images/butterfree.png'),
(8, 'kakuna', 72, 100, 'pokemon_images/kakuna.png'),
(9, 'beedrill', 178, 295, 'pokemon_images/beedrill.png'),
(10, 'pidgeotto', 122, 300, 'pokemon_images/pidgeotto.png'),
(11, 'pidgeot', 216, 395, 'pokemon_images/pidgeot.png'),
(12, 'raticate', 145, 185, 'pokemon_images/raticate.png'),
(13, 'ivysaur', 142, 130, 'pokemon_images/ivysaur.png'),
(14, 'venusaur', 236, 1000, 'pokemon_images/venusaur.png'),
(15, 'charmeleon', 142, 190, 'pokemon_images/charmeleon.png'),
(16, 'charizard', 240, 905, 'pokemon_images/charizard.png'),
(17, 'wartortle', 142, 225, 'pokemon_images/wartortle.png'),
(18, 'blastoise', 239, 855, 'pokemon_images/blastoise.png'),
(19, 'butterfree', 178, 320, 'pokemon_images/butterfree.png'),
(20, 'kakuna', 72, 100, 'pokemon_images/kakuna.png'),
(21, 'beedrill', 178, 295, 'pokemon_images/beedrill.png'),
(22, 'pidgeotto', 122, 300, 'pokemon_images/pidgeotto.png'),
(23, 'ivysaur', 142, 130, 'pokemon_images/ivysaur.png'),
(24, 'venusaur', 236, 1000, 'pokemon_images/venusaur.png'),
(25, 'charmeleon', 142, 190, 'pokemon_images/charmeleon.png'),
(26, 'charizard', 240, 905, 'pokemon_images/charizard.png'),
(27, 'wartortle', 142, 225, 'pokemon_images/wartortle.png'),
(28, 'blastoise', 239, 855, 'pokemon_images/blastoise.png'),
(29, 'butterfree', 178, 320, 'pokemon_images/butterfree.png'),
(30, 'kakuna', 72, 100, 'pokemon_images/kakuna.png'),
(31, 'beedrill', 178, 295, 'pokemon_images/beedrill.png'),
(32, 'pidgeotto', 122, 300, 'pokemon_images/pidgeotto.png'),
(33, 'pidgeot', 216, 395, 'pokemon_images/pidgeot.png'),
(34, 'raticate', 145, 185, 'pokemon_images/raticate.png'),
(35, 'fearow', 155, 380, 'pokemon_images/fearow.png'),
(36, 'arbok', 157, 650, 'pokemon_images/arbok.png');

-- --------------------------------------------------------

--
-- Table structure for table `pokemon_abilities`
--

CREATE TABLE `pokemon_abilities` (
  `pokemon_id` int(11) NOT NULL,
  `ability_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pokemon_abilities`
--

INSERT INTO `pokemon_abilities` (`pokemon_id`, `ability_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 5),
(9, 6),
(10, 7),
(10, 8),
(11, 7),
(11, 8),
(12, 9),
(12, 10),
(13, 1),
(14, 1),
(15, 2),
(16, 2),
(17, 3),
(18, 3),
(19, 4),
(20, 5),
(21, 6),
(22, 7),
(22, 8),
(23, 1),
(24, 1),
(25, 2),
(26, 2),
(27, 3),
(28, 3),
(29, 4),
(30, 5),
(31, 6),
(32, 7),
(32, 8),
(33, 7),
(33, 8),
(34, 9),
(34, 10),
(35, 7),
(36, 11),
(36, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `abilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pokemons`
--
ALTER TABLE `pokemons`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abilities`
--
ALTER TABLE `abilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pokemons`
--
ALTER TABLE `pokemons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
