-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 18 nov. 2022 à 16:47
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tuto`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonce_lpc`
--

DROP TABLE IF EXISTS `annonce_lpc`;
CREATE TABLE IF NOT EXISTS `annonce_lpc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `cat` int(11) NOT NULL,
  `descr` text NOT NULL,
  `prix` float NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_user_annonce` (`user_id`),
  KEY `FK_cat_annonce` (`cat`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `annonce_lpc`
--

INSERT INTO `annonce_lpc` (`id`, `user_id`, `titre`, `cat`, `descr`, `prix`, `img`) VALUES
(1, 1, 'Sleep - Dopesmoker', 1, 'Album de 2002 collector\r\nDisque coloré en vert\r\n\r\n    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 85, 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.QxTNGA7n_dPXOd6S97CKvwHaHa%26pid%3DApi&f=1&ipt=95421a52791ba28aa6ecd3cbff19244a78305e6f33c50871cb3337108e0e9509&ipo=images'),
(2, 3, 'Electric Wizard - Legalize drugs and murder', 3, 'K7 du EP de 2012\r\nExcellent état\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 15, 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmerchbar.imgix.net%2Fproduct%2F4%2F1616%2F21948435%2F803341362154.jpg%3Fw%3D640%26h%3D640&f=1&nofb=1&ipt=9a4b0cfac5379dbd1763808b4d0dd4b8a7f625865e7a63f8e74df3d15fd0690f&ipo=images'),
(3, 3, 'Portishead - Third', 2, '    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 15.5, 'https://upload.wikimedia.org/wikipedia/en/thumb/9/9d/Portishead_-_Third.png/220px-Portishead_-_Third.png'),
(4, 1, 'Portishead - Dummy', 1, '    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 12, 'https://upload.wikimedia.org/wikipedia/en/thumb/6/6b/Portishead_-_Dummy.png/220px-Portishead_-_Dummy.png'),
(5, 3, 'Portishead - Portishead', 1, '    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 14, 'https://upload.wikimedia.org/wikipedia/en/thumb/d/dc/Portishead_-_Portishead.png/220px-Portishead_-_Portishead.png'),
(6, 2, 'Portishead - Portishead', 3, '    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 18, 'https://upload.wikimedia.org/wikipedia/en/thumb/d/dc/Portishead_-_Portishead.png/220px-Portishead_-_Portishead.png');

-- --------------------------------------------------------

--
-- Structure de la table `cat_lpc`
--

DROP TABLE IF EXISTS `cat_lpc`;
CREATE TABLE IF NOT EXISTS `cat_lpc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cat_lpc`
--

INSERT INTO `cat_lpc` (`id`, `name`) VALUES
(1, 'Vinyle'),
(3, 'CD'),
(4, 'K7');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `title`, `descr`, `price`) VALUES
(1, 'tel', 'apareil telephonique', 180.5),
(2, 'citrouille', 'legumes', 2.8),
(3, 'carottes', 'legumes', 1.5),
(4, 'citron ', 'vert', 3),
(5, 'citron', 'jaune', 3);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `login`, `email`, `pwd`) VALUES
(12, 'Jean', 'Jean@Jean', '123');

-- --------------------------------------------------------

--
-- Structure de la table `users_lpc`
--

DROP TABLE IF EXISTS `users_lpc`;
CREATE TABLE IF NOT EXISTS `users_lpc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `tel` (`tel`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users_lpc`
--

INSERT INTO `users_lpc` (`id`, `pseudo`, `email`, `tel`, `pwd`, `img`) VALUES
(1, 'Jean', 'jexn.lxlxnne@gmail.com', '0781059149', '123', NULL),
(2, 'Sarah', 'sarah@gmail.com', '1232323232', '1234', NULL),
(3, 'Jean', 'DDSDSDDS@faree.fr', '12121212', '123', NULL),
(4, 'jean', 'dieu@heaven.com', '121212', '123', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
