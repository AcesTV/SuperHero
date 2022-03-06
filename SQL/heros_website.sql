-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 06 mars 2022 à 22:46
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `heros_website`
--

-- --------------------------------------------------------

--
-- Structure de la table `association_hero_incident_list`
--

DROP TABLE IF EXISTS `association_hero_incident_list`;
CREATE TABLE IF NOT EXISTS `association_hero_incident_list` (
  `ID_HERO` int(11) NOT NULL,
  `ID_INCIDENT_LIST` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `association_hero_incident_list`
--

INSERT INTO `association_hero_incident_list` (`ID_HERO`, `ID_INCIDENT_LIST`) VALUES
(1, 1),
(1, 9),
(1, 10),
(2, 1),
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `heros`
--

DROP TABLE IF EXISTS `heros`;
CREATE TABLE IF NOT EXISTS `heros` (
  `ID_HERO` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `CITY` varchar(255) NOT NULL,
  `CITY_LAT` varchar(255) NOT NULL,
  `CITY_LONG` varchar(255) NOT NULL,
  `PHONE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_HERO`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `heros`
--

INSERT INTO `heros` (`ID_HERO`, `NAME`, `PASSWORD`, `CITY`, `CITY_LAT`, `CITY_LONG`, `PHONE`) VALUES
(1, 'BREANT Nicolas', '$2a$10$busvSCTjg8UjcaewWo..QeZ4/LhnxjD6Vj67H2wy7lwwJZwXhA07m', 'Saint Aubin Les Elbeuf', '49.3027', '1.0197', '+33652543516'),
(2, 'Aces', '$2a$10$f9ZHzlgGZuInYMzlEL36Q.vKjjRNzaXxFRY9LYkSbaNnyHvqEydsa', 'Elbeuf', '49.28711', '1.0108998', '+33652543516');

-- --------------------------------------------------------

--
-- Structure de la table `incidents_list`
--

DROP TABLE IF EXISTS `incidents_list`;
CREATE TABLE IF NOT EXISTS `incidents_list` (
  `ID_INCIDENT_LIST` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_INCIDENT_LIST`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `incidents_list`
--

INSERT INTO `incidents_list` (`ID_INCIDENT_LIST`, `NAME`) VALUES
(1, 'Incendie'),
(2, 'Accident routier'),
(3, 'Accident fluviale '),
(4, 'Accident aérien'),
(5, 'Eboulement'),
(6, 'Invasion de serpent'),
(7, 'Fuite de gaz'),
(8, 'Manifestation'),
(9, 'Braquage'),
(10, 'Evasion d’un prisonnier');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
