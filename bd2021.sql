-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le : Ven 20 Mai 2022 à 16:59
-- Version du serveur: 5.5.20
-- Version de PHP: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bd2021`
--

-- --------------------------------------------------------

--
-- Structure de la table `meusure`
--

CREATE TABLE IF NOT EXISTS `meusure` (
  `IdStation` int(11) NOT NULL,
  `Annee` int(11) NOT NULL,
  `Saison` varchar(9) NOT NULL,
  `Temperature` decimal(5,2) NOT NULL,
  `Pluie` int(11) NOT NULL,
  PRIMARY KEY (`IdStation`,`Annee`,`Saison`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `meusure`
--

INSERT INTO `meusure` (`IdStation`, `Annee`, `Saison`, `Temperature`, `Pluie`) VALUES
(60715, 2018, 'Ete', '30.60', 24),
(60715, 2018, 'Hiver', '13.50', 150),
(60715, 2019, 'Printemps', '25.60', 80),
(60731, 2018, 'Ete', '33.60', 10),
(60731, 2018, 'Hiver', '17.60', 100),
(60731, 2019, 'Automne', '30.00', 11),
(60780, 2019, 'Ete', '42.30', 0),
(60780, 2019, 'Hiver', '16.60', 10);

-- --------------------------------------------------------

--
-- Structure de la table `station`
--

CREATE TABLE IF NOT EXISTS `station` (
  `IdStation` int(11) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Ville` varchar(30) NOT NULL,
  PRIMARY KEY (`IdStation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `station`
--

INSERT INTO `station` (`IdStation`, `Nom`, `Ville`) VALUES
(60715, 'Carthage', 'Tunis'),
(60731, 'Enfidha-aeroport', 'Sousse'),
(60780, 'El-Borma', 'tataouine');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `meusure`
--
ALTER TABLE `meusure`
  ADD CONSTRAINT `meusure_ibfk_1` FOREIGN KEY (`IdStation`) REFERENCES `station` (`IdStation`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
