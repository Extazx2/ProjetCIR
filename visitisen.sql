SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `ambassadeur` (
  `idAmba` int(255) UNSIGNED NOT NULL,
  `login` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `poste` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ambassadeur_tache` (
  `idAmba` int(255) UNSIGNED NOT NULL,
  `idTache` int(255) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `chemin` (
  `qra` int(255) UNSIGNED NOT NULL,
  `qrb` int(255) UNSIGNED NOT NULL,
  `distance` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `faq` (
  `idFaq` int(255) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `reponse` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `poi` (
  `idPoi` int(255) UNSIGNED NOT NULL,
  `salle` int(255) NOT NULL,
  `actif` int(255) NOT NULL,
  `idQr` int(255) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `qr` (
  `idQr` int(255) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `posx` int(255) NOT NULL,
  `posy` int(255) NOT NULL,
  `etage` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tache` (
  `idTache` int(255) UNSIGNED NOT NULL,
  `nomTache` varchar(255) NOT NULL,
  `heure` date NOT NULL,
  `salle` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `ambassadeur`
  ADD PRIMARY KEY (`idAmba`);

ALTER TABLE `ambassadeur_tache`
  ADD PRIMARY KEY (`idAmba`,`idTache`),
  ADD KEY `idTache` (`idTache`);

ALTER TABLE `chemin`
  ADD PRIMARY KEY (`qra`,`qrb`),
  ADD KEY `qrb` (`qrb`);

ALTER TABLE `faq`
  ADD PRIMARY KEY (`idFaq`);

ALTER TABLE `poi`
  ADD PRIMARY KEY (`idPoi`),
  ADD KEY `idQr` (`idQr`);

ALTER TABLE `qr`
  ADD PRIMARY KEY (`idQr`);

ALTER TABLE `tache`
  ADD PRIMARY KEY (`idTache`);


ALTER TABLE `ambassadeur`
  MODIFY `idAmba` int(255) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `faq`
  MODIFY `idFaq` int(255) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `poi`
  MODIFY `idPoi` int(255) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `qr`
  MODIFY `idQr` int(255) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `tache`
  MODIFY `idTache` int(255) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `ambassadeur_tache`
  ADD CONSTRAINT `ambassadeur_tache_ibfk_1` FOREIGN KEY (`idAmba`) REFERENCES `ambassadeur` (`idAmba`),
  ADD CONSTRAINT `ambassadeur_tache_ibfk_2` FOREIGN KEY (`idTache`) REFERENCES `tache` (`idTache`);

ALTER TABLE `chemin`
  ADD CONSTRAINT `chemin_ibfk_1` FOREIGN KEY (`qra`) REFERENCES `qr` (`idQr`),
  ADD CONSTRAINT `chemin_ibfk_2` FOREIGN KEY (`qrb`) REFERENCES `qr` (`idQr`);

ALTER TABLE `poi`
  ADD CONSTRAINT `poi_ibfk_1` FOREIGN KEY (`idQr`) REFERENCES `qr` (`idQr`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
