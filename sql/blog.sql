-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  lun. 01 juin 2020 à 08:35
-- Version du serveur :  5.7.26
-- Version de PHP :  7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Structure de la table `Author`
--

CREATE TABLE `Author` (
  `Id` tinyint(3) UNSIGNED NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Author`
--

INSERT INTO `Author` (`Id`, `FirstName`, `LastName`) VALUES
(1, 'John', 'Doe');

-- --------------------------------------------------------

--
-- Structure de la table `Category`
--

CREATE TABLE `Category` (
  `Id` tinyint(3) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Category`
--

INSERT INTO `Category` (`Id`, `Name`) VALUES
(2, 'Jeux-Vidéos'),
(1, 'Voyages');

-- --------------------------------------------------------

--
-- Structure de la table `Comment`
--

CREATE TABLE `Comment` (
  `Id` mediumint(8) UNSIGNED NOT NULL,
  `NickName` varchar(30) DEFAULT NULL,
  `Contents` text NOT NULL,
  `CreationTimestamp` datetime NOT NULL,
  `Post_Id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Post`
--

CREATE TABLE `Post` (
  `Id` smallint(5) UNSIGNED NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Contents` text NOT NULL,
  `CreationTimestamp` datetime NOT NULL,
  `Author_Id` tinyint(3) UNSIGNED DEFAULT NULL,
  `Category_Id` tinyint(3) UNSIGNED DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Post`
--

INSERT INTO `Post` (`Id`, `Title`, `Contents`, `CreationTimestamp`, `Author_Id`, `Category_Id`, `Image`) VALUES
(3, 'BLEACH', 'Le récit commence en 2001 au Japon dans la ville fictive de Karakura. Ichigo Kurosaki, lycéen de 15 ans, arrive à voir, entendre et toucher les âmes des morts depuis qu\'il est tout petit. Un soir, sa routine quotidienne vient à être bouleversée à la suite de sa rencontre avec une shinigami (死神?, littéralement « dieu de la mort »), Rukia Kuchiki, et la venue d\'un monstre appelé hollow. Ce dernier étant venu dévorer les âmes de sa famille et la shinigami venue le protéger ayant été blessée par sa faute, Ichigo accepte de devenir lui-même un shinigami afin de les sauver.\r\n\r\nCependant, le transfert de pouvoir, censé être temporaire et partiel, est complet et ne s\'achève pas. Ichigo est forcé de prendre la responsabilité de la tâche incombant à Rukia Kuchiki. Il commence donc la chasse aux hollows tout en protégeant les âmes humaines.\r\n\r\nLe début est centré sur une chasse aux mauvais esprits relativement peu puissants, avec un simple sabre. L\'histoire va peu à peu se diriger vers un vaste complot mystico-politique après l\'apparition des premiers autres shinigami. Les batailles au sabre du commencement vont alors se métamorphoser en combats dantesques avec des armes aux pouvoirs surprenants et variés, et parfois aux proportions gigantesques.', '2020-06-01 10:24:33', 1, 2, 'bleach.jpg'),
(4, 'MY HERO ACADEMIA', 'Dans un monde où 80 % de la population mondiale possède des super-pouvoirs, ici nommés \"Alters\" (個性, Kosei?), n\'importe qui peut devenir un héros ou, s\'il le souhaite, un criminel. Le manga suit les aventures de Izuku Midoriya \"Deku\", l\'un des rares humains ne possédant pas d\'Alter, qui rêve pourtant de rejoindre la filière super-héroïque de la grande académie Yuei (勇井高校, Yūei Kōkō?) et de devenir un jour un des plus grands héros de son époque, à l\'image de son héros, All Might !', '2020-06-01 10:25:52', 1, 2, 'myheroacademia.jpg'),
(5, 'ONE PUNCH MAN', 'Saitama est un jeune homme sans emploi, déprimé et sans but profond dans sa vie. Un jour, il rencontre un homme-crabe qui recherche un jeune garçon avec un menton fendu comme un cul selon ses termes. Saitama finit par rencontrer ce jeune garçon et décide de le sauver de l\'homme-crabe, qu\'il arrive à battre difficilement. Dès lors, Saitama décide de devenir un super-héros et s’entraîne pendant trois ans très sérieusement : 100 pompes, 100 squats, 100 abdos et 10 km de course au quotidien et il n\'y a pas de conditions de chauffage ni de climatisation . À la fin de son entrainement si intense qu\'il en perd ses cheveux, il remarque qu\'il est devenu tellement fort qu\'il parvient désormais à battre tous ses adversaires d\'un seul coup de poing. Sa force démesurée est pour lui source de problèmes, puisqu\'il ne trouve pas d\'adversaires à sa taille et s\'ennuie dans son métier de héros car les combats ne lui procurent plus aucune sensation ni aucune adrénaline... Bien qu\'il ait mis un terme à un bon nombre de menaces toutes plus dangereuses les unes que les autres, personne ne semble remarquer l\'incroyable capacité de Saitama, à l\'exception de son ami et disciple Genos, un jeune homme devenu cyborg2.', '2020-06-01 10:26:57', 1, 2, 'opm.jpg'),
(6, 'DEMON SLAYER', 'Dans un Japon de l\'ère Taishō, Tanjirō est le fils aîné d\'une famille dont le père est décédé. Pour subvenir aux besoins de celle-ci, il part vendre du charbon en ville. Malgré les difficultés de la vie, ils réussissent à trouver un peu de bonheur dans leur quotidien. Un jour, à cause des rumeurs qui circulent à propos d\'un démon (鬼, Oni?) mangeur d\'hommes qui traînerait dans les parages la nuit tombée, il est dans l\'impossibilité de rentrer chez lui et finit par passer la nuit chez un Bon Samaritain de la ville.\r\n\r\nSeulement, tout bascule à son retour lorsqu\'il retrouve sa famille massacrée par un démon. Nezuko, l\'une de ses petites sœurs, est la seule survivante mais elle a aussi été transformée en démon… Étonnamment, celle-ci montre encore des signes d\'émotions et de pensées humaines. C\'est un long périple qui attend le jeune héros et sa petite sœur afin de trouver un antidote pour la rendre à nouveau humaine et venger le reste de sa famille.', '2020-06-01 10:28:25', 1, 2, 'demon-slayer.jpg'),
(7, 'JOJO\'S BIZARRE ADVENTURE', 'JoJo\'s Bizarre Adventure (ジョジョの奇妙な冒険, JoJo no kimyō na bōken?) est un manga de Hirohiko Araki. Il a été prépublié entre 1986 et 2004 dans l\'hebdomadaire Weekly Shōnen Jump, et est prépublié depuis 2005 dans le mensuel Ultra Jump à la suite du changement de cible éditoriale opéré dans la septième partie du manga. La version française est d\'abord sortie aux éditions J\'ai lu en 46 tomes, mais la publication est abandonnée en 2006 à la fin de la quatrième partie. Tonkam a alors repris l\'édition en 2007 à partir de la cinquième partie, Golden Wind. L\'éditeur réédite par la suite les quatre premières parties.\r\n\r\nLe manga est adapté en une série d\'OAV de treize épisodes, qui retrace une partie de la troisième partie du manga, produite par Studio A.P.P.P. et éditée en France par Déclic Images. Une adaptation en série télévisée d\'animation de 26 épisodes produite par David Production est diffusée entre octobre 2012 et mars 2013 et adapte les deux premières parties du manga. L\'adaptation de la troisième partie est diffusée entre avril 2014 et juin 2015. L\'adaptation de la quatrième partie est diffusée entre avril et décembre 2016. L\'adaptation de la cinquième partie est diffusée entre octobre 2018 et juillet 2019. Dans les pays francophones, la série est diffusée en simulcast par Crunchyroll et ADN. Les parties 1 à 3 sont disponibles depuis le 1er mars 2020 sur Netflix France.', '2020-06-01 10:30:23', 1, 2, 'Jojos.jpg'),
(8, 'FAIRY TAIL', 'L’histoire se focalise principalement sur les missions effectuées par l’une des équipes de la guilde Fairy Tail, composée de Natsu Dragnir (chasseur de dragon de feu), Lucy Heartfilia (constellationniste) et Happy (un Exceed, chat bleu pouvant se faire pousser des ailes, voler et parler), qui seront très vite rejoints par Erza Scarlett (mage chevalier) et Grey Fullbuster (Mage de glaces puis plus tard Chasseur de démons de Glace), deux autres membres de la fameuse guilde. Ils sont rejoints au cours de l\'aventure par Carla (une chatte blanche Exceed, comme Happy), Wendy (chasseuse de dragon céleste), et par bien d\'autres.', '2020-06-01 10:31:23', 1, 2, 'fairytail.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Author`
--
ALTER TABLE `Author`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Index pour la table `Comment`
--
ALTER TABLE `Comment`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CreationTimestamp` (`CreationTimestamp`),
  ADD KEY `Post_Id` (`Post_Id`);

--
-- Index pour la table `Post`
--
ALTER TABLE `Post`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Title` (`Title`),
  ADD KEY `CreationTimestamp` (`CreationTimestamp`),
  ADD KEY `Author_Id` (`Author_Id`),
  ADD KEY `Category_Id` (`Category_Id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Author`
--
ALTER TABLE `Author`
  MODIFY `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Category`
--
ALTER TABLE `Category`
  MODIFY `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `Comment`
--
ALTER TABLE `Comment`
  MODIFY `Id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Post`
--
ALTER TABLE `Post`
  MODIFY `Id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Comment`
--
ALTER TABLE `Comment`
  ADD CONSTRAINT `Comment_ibfk_1` FOREIGN KEY (`Post_Id`) REFERENCES `Post` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `Post`
--
ALTER TABLE `Post`
  ADD CONSTRAINT `Post_ibfk_1` FOREIGN KEY (`Author_Id`) REFERENCES `Author` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Post_ibfk_2` FOREIGN KEY (`Category_Id`) REFERENCES `Category` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE;
