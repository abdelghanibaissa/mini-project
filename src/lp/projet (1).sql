-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 07 fév. 2023 à 20:31
-- Version du serveur : 10.4.19-MariaDB
-- Version de PHP : 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

CREATE TABLE `activite` (
  `id_activite` int(11) NOT NULL,
  `nom_activite` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `heur` time NOT NULL,
  `sujet` varchar(200) NOT NULL,
  `lieu` varchar(100) NOT NULL,
  `img` longblob NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `title_role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id_role`, `title_role`) VALUES
(1, 'role1');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `id_service` int(11) NOT NULL,
  `nom_service` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`id_service`, `nom_service`) VALUES
(1, 'service1');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `telephone` int(15) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(40) NOT NULL,
  `p-img` longblob NOT NULL DEFAULT 'C:\\Users\\argane\\Desktop\\lp-projet-main2\\lp-projet\\src\\lp\\images',
  `nom_service` varchar(50) DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `prenom`, `nom`, `telephone`, `email`, `password`, `p-img`, `nom_service`, `id_role`) VALUES
(6, 'rida', 'argane', 0, '', '', '', 'service1', 1),
(56445, 'rida', 'argane', 5565498, 'dopiedz', 'dizjoaod', '', NULL, NULL),
(56446, 'kxskl', 'DSJK', 555, 'dkadokls', '', 0x433a5c55736572735c617267616e655c4465736b746f705c6c702d70726f6a65742d6d61696e325c6c702d70726f6a65745c7372635c6c705c696d61676573, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `activite`
--
ALTER TABLE `activite`
  ADD PRIMARY KEY (`id_activite`),
  ADD KEY `fk_iduser` (`id_user`),
  ADD KEY `fk_idcat` (`id_categorie`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id_service`),
  ADD UNIQUE KEY `nom_service` (`nom_service`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `fk_idrole` (`id_role`),
  ADD KEY `fk_nom_se` (`nom_service`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `activite`
--
ALTER TABLE `activite`
  MODIFY `id_activite` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56447;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `activite`
--
ALTER TABLE `activite`
  ADD CONSTRAINT `fk_idcat` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`),
  ADD CONSTRAINT `fk_iduser` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_idrole` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`),
  ADD CONSTRAINT `fk_nom_se` FOREIGN KEY (`nom_service`) REFERENCES `service` (`nom_service`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
