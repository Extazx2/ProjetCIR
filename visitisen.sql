-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 07 Juin 2016 à 16:32
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
-- Structure de la table `chemin`
--

CREATE TABLE `chemin` (
  `qra` int(255) UNSIGNED NOT NULL,
  `qrb` int(255) UNSIGNED NOT NULL,
  `distance` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `chemin`
--

INSERT INTO `chemin` (`qra`, `qrb`, `distance`) VALUES
(1, 2, 3),
(2, 24, 7),
(5, 6, 5),
(5, 9, 4),
(6, 7, 5),
(6, 9, 4),
(7, 8, 5),
(7, 9, 4),
(8, 9, 4),
(9, 10, 5),
(9, 13, 6),
(9, 25, 10),
(11, 12, 3),
(13, 11, 3),
(14, 15, 3),
(15, 16, 20),
(15, 26, 15),
(16, 17, 2),
(19, 22, 10),
(19, 23, 10),
(20, 21, 2),
(20, 22, 2),
(21, 22, 2),
(22, 23, 10),
(24, 25, 1),
(24, 26, 1),
(24, 27, 1),
(25, 26, 1),
(25, 27, 1),
(26, 16, 10),
(26, 27, 1),
(27, 22, 10),
(27, 23, 15);

-- --------------------------------------------------------

--
-- Structure de la table `etage`
--

CREATE TABLE `etage` (
  `idEtage` int(255) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `min` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `etage`
--

INSERT INTO `etage` (`idEtage`, `img`, `libelle`, `min`) VALUES
(1, 'etage0.png', 'rez de chaussee', 'RDC'),
(2, 'etage1.png', '1er etage', '1'),
(3, 'etage2.png', '2eme etage', '2'),
(4, 'etage3.png', '3eme etage', '3');

-- --------------------------------------------------------

--
-- Structure de la table `faq`
--

CREATE TABLE `faq` (
  `idFaq` int(255) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `reponse` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `faq`
--

INSERT INTO `faq` (`idFaq`, `question`, `reponse`) VALUES
(2, 'Prepa implantee Sciences de l’Ingenieur (CSI)', '2 annees de classes prepa conventionnees\r\nLes cycles preparatoires de l\'ISEN sont conventionnes avec l\'Education Nationale. Les enseignants sont pour la plupart agreges et les programmes sont ceux de MPSI et PSI.\r\n\r\nLe premier objectif de ces deux annees de premier cycle ISEN est d\'ouvrir et de former aux sciences. Les mathematiques, la physique, les sciences industrielles sont, en effet, les outils et les cles qui permettront l\'evolution en cycle ingenieur.\r\n\r\nLe second objectif est de demarrer une formation d\'ingenieur des la sortie du BAC, de se projeter vers un metier. 2 ans de premier cycle constituent l\'apprentissage du travail personnel, des premiers projets de groupe, du premier stage...\r\n\r\nEnfin le systeme de prepa implantee est adapte à plusieurs « types » de candidats :\r\n\r\n> ceux qui savent dejà quelle ecole, ils souhaitent integrer et ne souhaitent pas retarder leur entree de deux ans,\r\n\r\n> ceux qui souhaitent choisir leur formation et ne pas être soumis aux resultats d\'un concours,\r\n\r\n> ceux qui preferent organiser leur travail sur le controle continu plutot que de sanctionner deux annees d\'etudes sur un concours.'),
(3, 'Prepa Rebond', 'L’ISEN (Brest-Lille-Toulon) offre la perspective aux etudiants de 1ere annee PACES recales de ne pas perdre une annee complete et de poursuivre des etudes scientifiques en integrant fin janvier 2016 une classe preparatoire rebond en vue d’obtenir un diplôme d’ingenieur.\r\n \r\nL’objectif de cette formation est de permettre aux etudiants de valider la 1ere annee de classes preparatoires en 6 mois et ainsi d’acceder en 2eme annee des la rentree suivante.\r\n \r\nAu terme de ces deux annees, les etudiants pourront poursuivre leur cursus au sein du cycle ingenieur de l’ISEN.'),
(4, 'Cycle Informatique et Reseaux (CIR)', 'Preparation en 3 ans\r\nVous vous passionnez pour l\'informatique et les reseaux\r\nVous souhaitez devenir ingenieur\r\nLe Cycle Informatique et Reseaux vous est destine !\r\n\r\nLe Cycle Informatique et Reseaux (CIR) est dispense pendant les trois premieres annees d\'etude. Il s\'adresse aux eleves de Terminale S ou STI2D.\r\n\r\n Propose sur les sites de Brest, Lille, Rennes et Toulon, ce cycle s\'adresse aux etudiants souhaitant decouvrir l\'univers de l\'informatique et des reseaux des la sortie de Terminale. Le contenu de ce cursus comprend des bases scientifiques solides tout en permettant d\'aborder, des la premiere annee, les techniques appliquees dans les domaines du developpement logiciel, du web, des reseaux et de leur securite, des bases de donnees, ... \r\n\r\nCe parcours donne lieu à un diplôme de type « Bachelor of Technology » en fin de 3eme annee. Ce diplôme permet à l\'etudiant de poursuivre les etudes d\'ingenieur ISEN dans la majeure de son choix offrant au-delà de l\'informatique et des reseaux, une ouverture vers l\'electronique, l\'automatique-robotique, le traitement de signal et les telecommunications.'),
(5, 'Apres une Classe Preparatoire aux Grandes Ecoles avec le Concours "FESIC Prepa"', 'Vous pouvez integrer les ecoles ISEN directement à Bac+2 après une Classe Preparatoire PC, PSI, MP et PT.');

-- --------------------------------------------------------

--
-- Structure de la table `qr`
--

CREATE TABLE `qr` (
  `idQr` int(255) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `salle` int(255) DEFAULT NULL,
  `libelle` text,
  `posx` int(255) NOT NULL,
  `posy` int(255) NOT NULL,
  `idEtage` int(255) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `qr`
--

INSERT INTO `qr` (`idQr`, `nom`, `type`, `salle`, `libelle`, `posx`, `posy`, `idEtage`) VALUES
(1, 'toilette', 'wc', NULL, NULL, 232, 102, 1),
(2, 'Foyer', 'poi', NULL, 'Un endroit libre d\'acces ou vous pourrez prendre un cafe, manger un morceau ou encore attendre la prochaine visite.', 197, 119, 1),
(5, 'BIOST', 'poi', 142, 'Salle de presentation de la majeur BIOST.', 101, 378, 2),
(6, 'CIR', 'poi', 143, 'Salle de presentation de la specialite CIR', 164, 376, 2),
(7, 'CSI', 'poi', 144, 'Salle de presentation de la specialitee CSI.', 234, 374, 2),
(8, 'BTS prepa', 'poi', 146, 'Presentation du BTS prepa.', 334, 375, 2),
(9, 'Clubs', 'poi', NULL, 'Hall avec chaque club presentant ses activitees', 177, 300, 2),
(10, 'prepa rebond', 'poi', 132, 'Presentation de la prepa rebond.', 235, 231, 2),
(11, 'labo de langues', 'poi', 138, 'Presentation des langues disponible a l\'ISEN', 72, 178, 2),
(12, 'Ingenieur de Projet', 'poi', 138, NULL, 119, 181, 2),
(13, 'Salle SI', 'poi', 140, 'Presentation des cours de SI', 89, 233, 2),
(14, 'TP electronique', 'poi', 229, 'Presentation des tp d\'electronique', 91, 182, 3),
(15, 'Admissions BAC+2', 'poi', 229, 'Presentation de l\'admission par le concours post prepa', 126, 196, 3),
(16, 'Robotique', 'poi', 213, 'Presentation de la majeur robotique', 518, 122, 3),
(17, 'Systemes Embarques', 'poi', 213, 'Presentation de la majeur systeme embarque', 564, 113, 3),
(18, 'Bassin', 'poi', 213, NULL, 160, 520, 3),
(19, 'Energie', 'poi', 317, 'Presentation de la majeur energie', 66, 179, 4),
(20, 'Bio-Medicales', 'poi', 311, 'Presentation de la majeur bio-medicale', 269, 170, 4),
(21, 'Telecom et Reseaux', 'poi', 310, 'Presentation de la majeur telecom et reseaux', 315, 170, 4),
(22, 'Labo Opto', 'poi', 311, 'Presentation du laboratoire d\'optique', 292, 195, 4),
(23, 'Genie Logiciel', 'poi', 335, 'Presentation de la majeur genie logiciel', 153, 371, 4),
(24, 'escalier', 'esc', NULL, NULL, 245, 175, 1),
(25, 'escalier', 'esc', NULL, NULL, 400, 270, 2),
(26, 'escalier', 'esc', NULL, NULL, 400, 270, 3),
(27, 'escalier', 'esc', NULL, NULL, 400, 270, 4);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `chemin`
--
ALTER TABLE `chemin`
  ADD PRIMARY KEY (`qra`,`qrb`),
  ADD KEY `qrb` (`qrb`);

--
-- Index pour la table `etage`
--
ALTER TABLE `etage`
  ADD PRIMARY KEY (`idEtage`);

--
-- Index pour la table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`idFaq`);

--
-- Index pour la table `qr`
--
ALTER TABLE `qr`
  ADD PRIMARY KEY (`idQr`),
  ADD KEY `idEtage` (`idEtage`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `etage`
--
ALTER TABLE `etage`
  MODIFY `idEtage` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `faq`
--
ALTER TABLE `faq`
  MODIFY `idFaq` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `qr`
--
ALTER TABLE `qr`
  MODIFY `idQr` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `chemin`
--
ALTER TABLE `chemin`
  ADD CONSTRAINT `chemin_ibfk_1` FOREIGN KEY (`qra`) REFERENCES `qr` (`idQr`),
  ADD CONSTRAINT `chemin_ibfk_2` FOREIGN KEY (`qrb`) REFERENCES `qr` (`idQr`);

--
-- Contraintes pour la table `qr`
--
ALTER TABLE `qr`
  ADD CONSTRAINT `qr_ibfk_1` FOREIGN KEY (`idEtage`) REFERENCES `etage` (`idEtage`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
