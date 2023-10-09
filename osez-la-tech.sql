-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 09 oct. 2023 à 19:56
-- Version du serveur : 10.8.3-MariaDB
-- Version de PHP : 8.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `osez-la-tech`
--

-- --------------------------------------------------------

--
-- Structure de la table `conference`
--

CREATE TABLE `conference` (
  `id` int(11) UNSIGNED NOT NULL,
  `question` varchar(300) DEFAULT NULL,
  `answer` varchar(300) DEFAULT NULL,
  `date` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `conference`
--

INSERT INTO `conference` (`id`, `question`, `answer`, `date`) VALUES
(1, 'Au quotidien, quels objets utilisez-vous qui sont liés au web ?', 'Mon smartphone', '2023-10-09 21:39:04'),
(2, 'Comment imaginez-vous le métier de développeur web ?', 'Créatif, technique et en constante évolution', '2023-10-09 21:47:28'),
(3, 'Que pensez-vous du développement de l&#039;intelligence artificielle durant la dernière année ?', 'Progrès impressionnants, potentiel énorme', '2023-10-09 21:47:38'),
(4, 'Comment imaginez-vous le métier de développeur web ?', 'Création de sites web fonctionnels et esthétiques', '2023-10-09 21:47:46'),
(5, 'Que pensez-vous du développement de l&#039;intelligence artificielle durant la dernière année ?', 'Utile mais pose des questions éthiques', '2023-10-09 21:47:55'),
(6, 'Que pensez-vous du développement de l&#039;intelligence artificielle durant la dernière année ?', 'Crucial pour l&#039;innovation technologique future', '2023-10-09 21:48:04'),
(7, 'Que pensez-vous du développement de l&#039;intelligence artificielle durant la dernière année ?', 'Inquiétant si pas de régulation adéquate', '2023-10-09 21:48:12'),
(8, 'Au quotidien, quels objets utilisez-vous qui sont liés au web ?', 'Smartphone, pour naviguer et communiquer', '2023-10-09 21:48:19'),
(9, 'Que pensez-vous du développement de l&#039;intelligence artificielle durant la dernière année ?', 'Permet d&#039;automatiser et d&#039;optimiser des tâches', '2023-10-09 21:48:27'),
(10, 'Au quotidien, quels objets utilisez-vous qui sont liés au web ?', 'Montre connectée pour mes activités sportives', '2023-10-09 21:48:40'),
(11, 'Comment imaginez-vous le métier de développeur web ?', 'Un mix entre conception artistique et codage', '2023-10-09 21:48:54');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `conference`
--
ALTER TABLE `conference`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `conference`
--
ALTER TABLE `conference`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
