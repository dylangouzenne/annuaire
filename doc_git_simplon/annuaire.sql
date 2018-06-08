-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 07 Juin 2018 à 09:41
-- Version du serveur :  5.7.22-0ubuntu0.16.04.1
-- Version de PHP :  7.2.5-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `annuaire`
--

-- --------------------------------------------------------

--
-- Structure de la table `appartenir`
--

CREATE TABLE `appartenir` (
  `fk_contact` int(11) NOT NULL,
  `fk_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `appartenir`
--

INSERT INTO `appartenir` (`fk_contact`, `fk_group`) VALUES
(1, 1),
(1, 2),
(18, 2),
(1, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3);

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `entreprise` text NOT NULL,
  `datenaissance` text NOT NULL,
  `rue` text NOT NULL,
  `cp` varchar(5) NOT NULL,
  `ville` text NOT NULL,
  `email` text NOT NULL,
  `telephone` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `contacts`
--

INSERT INTO `contacts` (`id`, `nom`, `prenom`, `entreprise`, `datenaissance`, `rue`, `cp`, `ville`, `email`, `telephone`) VALUES
(1, 'Chirot', 'Aurélien', 'Simplon.co', '13/04/81', '1 rue Darwin', '32000', 'Auch', 'achirot@simplon.co', '677132122'),
(3, 'Philippe', 'Jonathan', 'Simplon.co', '', '', '', '', 'philippe1jonathan@gmail.com', ''),
(4, 'Cano Simon', 'Luc', 'Simplon.co', '', '', '', '', 'luc.cano@hotmail.fr', ''),
(5, 'Badji', 'Adeline', 'Simplon.co', '', '', '', '', 'adeline.contact@gmail.com', ''),
(6, 'Lupi', 'Marc', 'Simplon.co', '', '', '', '', 'marc.lupi@protonmail.com', ''),
(7, 'Kurowski', 'Alexandra', 'Simplon.co', '', '', '', '', 'alexandrakuro@gmail.com', ''),
(8, 'Oliveira Ribeiro', 'Marco', 'Simplon.co', '', '', '', '', 'marcorib1@hotmail.com', ''),
(9, 'Zarrik', 'Houssine', 'Simplon.co', '', '', '', '', 'houssine.zarrik@orange.fr', ''),
(10, 'Gouzenne', 'Dylan', 'Simplon.co', '', '', '', '', 'dylan.gouzenne@gmail.com', ''),
(11, 'Sandras', 'Benjamin', 'Simplon.co', '', '', '', '', 'bensand77@hotmail.fr', ''),
(12, 'Morais', 'Helder', 'Simplon.co', '', '', '', '', 'morais.helder@hotmail.fr', ''),
(13, 'Segond', 'Zakia', 'Simplon.co', '', '', '', '', 'segondzakia@live.fr', ''),
(14, 'Taha', 'Max', 'Simplon.co', '', '', '', '', 'tahamohamedfr@gmail.com', ''),
(15, 'Lasportes', 'Nicolas', 'Simplon.co', '', '', '', '', 'nicolas.lasportes@gmail.com', ''),
(16, 'Clerc', 'Nathan', 'Simplon.co', '', '', '', '', 'clerc-nathan@hotmail.fr', ''),
(17, 'Ahmed', 'Dania', 'Simplon.co', '', '', '', '', '94daniak@live.fr', ''),
(18, 'Gatien', 'Océane', 'Simplon.co', '', '', '', '', '', '0642489808');

-- --------------------------------------------------------

--
-- Structure de la table `groupes`
--

CREATE TABLE `groupes` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `groupes`
--

INSERT INTO `groupes` (`id`, `nom`) VALUES
(2, 'simplonAuch1'),
(3, 'simplonAuch2'),
(1, 'simplonRodez1');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD UNIQUE KEY `fk_contact` (`fk_contact`,`fk_group`),
  ADD KEY `fk_group` (`fk_group`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `groupes`
--
ALTER TABLE `groupes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `groupes`
--
ALTER TABLE `groupes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD CONSTRAINT `appartenir_ibfk_1` FOREIGN KEY (`fk_contact`) REFERENCES `contacts` (`id`),
  ADD CONSTRAINT `appartenir_ibfk_2` FOREIGN KEY (`fk_group`) REFERENCES `groupes` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
