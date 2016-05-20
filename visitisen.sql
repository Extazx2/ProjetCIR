-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 20 Mai 2016 à 18:13
-- Version du serveur :  5.7.11-log
-- Version de PHP :  5.6.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `visitisen`
--

-- --------------------------------------------------------

--
-- Structure de la table `ambassadeur`
--

CREATE TABLE `ambassadeur` (
  `idAmba` int(10) UNSIGNED NOT NULL,
  `login` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `poste` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ambassadeur_tache`
--

CREATE TABLE `ambassadeur_tache` (
  `idAmba` int(10) UNSIGNED NOT NULL,
  `idTache` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `chemin`
--

CREATE TABLE `chemin` (
  `qra` int(10) UNSIGNED NOT NULL,
  `qrb` int(10) UNSIGNED NOT NULL,
  `distance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `faq`
--

CREATE TABLE `faq` (
  `idFaq` int(255) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `reponse` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `poi`
--

CREATE TABLE `poi` (
  `idPoi` int(10) UNSIGNED NOT NULL,
  `salle` int(11) NOT NULL,
  `actif` int(11) NOT NULL,
  `idQr` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `qr`
--

CREATE TABLE `qr` (
  `idQr` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `posx` int(11) NOT NULL,
  `posy` int(11) NOT NULL,
  `etage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tache`
--

CREATE TABLE `tache` (
  `idTache` int(10) UNSIGNED NOT NULL,
  `nomTache` varchar(255) NOT NULL,
  `heure` date NOT NULL,
  `salle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `ambassadeur`
--
ALTER TABLE `ambassadeur`
  ADD PRIMARY KEY (`idAmba`);

--
-- Index pour la table `ambassadeur_tache`
--
ALTER TABLE `ambassadeur_tache`
  ADD PRIMARY KEY (`idAmba`,`idTache`),
  ADD KEY `idTache` (`idTache`);

--
-- Index pour la table `chemin`
--
ALTER TABLE `chemin`
  ADD PRIMARY KEY (`qra`,`qrb`),
  ADD KEY `qrb` (`qrb`);

--
-- Index pour la table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`idFaq`);

--
-- Index pour la table `poi`
--
ALTER TABLE `poi`
  ADD PRIMARY KEY (`idPoi`),
  ADD KEY `idQr` (`idQr`);

--
-- Index pour la table `qr`
--
ALTER TABLE `qr`
  ADD PRIMARY KEY (`idQr`);

--
-- Index pour la table `tache`
--
ALTER TABLE `tache`
  ADD PRIMARY KEY (`idTache`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `ambassadeur`
--
ALTER TABLE `ambassadeur`
  MODIFY `idAmba` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `faq`
--
ALTER TABLE `faq`
  MODIFY `idFaq` int(255) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `poi`
--
ALTER TABLE `poi`
  MODIFY `idPoi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `qr`
--
ALTER TABLE `qr`
  MODIFY `idQr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tache`
--
ALTER TABLE `tache`
  MODIFY `idTache` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `ambassadeur_tache`
--
ALTER TABLE `ambassadeur_tache`
  ADD CONSTRAINT `ambassadeur_tache_ibfk_1` FOREIGN KEY (`idAmba`) REFERENCES `ambassadeur` (`idAmba`),
  ADD CONSTRAINT `ambassadeur_tache_ibfk_2` FOREIGN KEY (`idTache`) REFERENCES `tache` (`idTache`);

--
-- Contraintes pour la table `chemin`
--
ALTER TABLE `chemin`
  ADD CONSTRAINT `chemin_ibfk_1` FOREIGN KEY (`qra`) REFERENCES `qr` (`idQr`),
  ADD CONSTRAINT `chemin_ibfk_2` FOREIGN KEY (`qrb`) REFERENCES `qr` (`idQr`);

--
-- Contraintes pour la table `poi`
--
ALTER TABLE `poi`
  ADD CONSTRAINT `poi_ibfk_1` FOREIGN KEY (`idQr`) REFERENCES `qr` (`idQr`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
