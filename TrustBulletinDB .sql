-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 13 mai 2022 à 17:43
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `TrustBulletinDB`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `phone` int(11) NOT NULL,
  `dateExp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `phone`, `dateExp`) VALUES
(0, 'admin', 'string', 'AP7kjs3LwbqQ/CHDYe3rCP0hsz1AHOOck3da+UmAz/vZ0SNUFY+6ifN1NniLOoxlPg==', 0, 'string');

-- --------------------------------------------------------

--
-- Structure de la table `ansiControls`
--

CREATE TABLE `ansiControls` (
  `id` int(11) NOT NULL,
  `reference` varchar(10) NOT NULL,
  `type` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ansiControls`
--

INSERT INTO `ansiControls` (`id`, `reference`, `type`, `title`, `description`) VALUES
(1, 'A.5.1.1', 'Organisationnel', 'Politiques de sécurité de l’information ', 'Un ensemble de politiques\r\nde sécurité de\r\nl’information (PSI) doit être\r\ndéfini,\r\napprouvé par la direction,\r\ndiffusé et communiqué aux\r\nsalariés et aux tiers\r\nconcernés. '),
(2, 'A.5.1.2', 'Organisationnel', 'Revue des politiques de\r\nsécurité de\r\nl’information ', 'Les politiques de sécurité\r\nde l’information doivent\r\nêtre revues à intervalles\r\nprogrammés ou en cas de\r\nchangements majeurs pour\r\ngarantir leur pertinence,\r\nleur adéquation et leur\r\neffectivité dans le temps. '),
(3, 'A.6.1.1', 'Organisationnel', '1 Fonctions et\r\nresponsabilités liées à la sécurité de l’information  ', 'Toutes les responsabilités\r\nen matière de sécurité de l’information doivent\r\nêtre définies et attribuées.  '),
(4, 'A.6.1.2 ', 'Organisationnel', 'Séparation des tâches ', 'Les tâches et les domaines\r\nde responsabilité\r\nincompatibles doivent être\r\ncloisonnés pour limiter les\r\npossibilités de modification\r\nou de mauvais usage, non\r\nautorisé(e) ou involontaire,\r\ndes actifs de l’organisme. '),
(5, 'A.6.1.3 ', 'Organisationnel', 'Relations avec les\r\nautorités ', 'Des relations appropriées\r\navec les autorités\r\ncompétentes doivent être\r\nentretenues. '),
(6, 'A.6.1.4 ', 'Organisationnel', '4 Relations avec des\r\ngroupes de travail\r\nspécialisés ', 'Des relations appropriées\r\navec des groupes d’intérêt,\r\ndes forums spécialisés dans\r\nla sécurité et des\r\nassociations\r\nprofessionnelles doivent\r\nêtre entretenues. '),
(7, 'A.6.1.5 ', 'Organisationnel', 'La sécurité de\r\nl’information\r\ndans la gestion\r\nde projet ', 'La sécurité de l’information\r\ndoit être considérée dans\r\nla gestion de projet,\r\nquel que soit le type de\r\nprojet concerné.'),
(8, 'A.6.2.1 ', 'Organisationnel', 'Politique en matière\r\nd’appareils mobiles ', 'Une politique et des\r\nmesures de sécurité\r\ncomplémentaires doivent\r\nêtre adoptées pour gérer\r\nles risques découlant de\r\nl’utilisation des appareils\r\nmobiles. '),
(9, 'A.6.2.2 ', 'Organisationnel', 'Télétravail ', 'Une politique et des\r\nmesures de sécurité\r\ncomplémentaires doivent\r\nêtre mises en œuvre pour\r\nprotéger les informations\r\nconsultées, traitées ou\r\nstockées sur des sites de\r\ntélétravail. '),
(10, 'A.7.1.1 ', 'Organisationnel', 'Sélection des candidats  ', 'Des vérifications doivent\r\nêtre effectuées sur tous les\r\ncandidats à l’embauche\r\nconformément aux lois,\r\naux règlements et à\r\nl’éthique et être\r\nproportionnées aux\r\nexigences métier, à la classification des\r\ninformations accessibles et\r\naux risques identifiés.  '),
(11, 'A.7.1.2 ', 'Organisationnel', 'Termes et conditions\r\nd’embauche ', 'Les accords contractuels\r\nentre les salariés et les\r\nsous-traitants doivent\r\npréciser leurs\r\nresponsabilités et celles de\r\nl’organisme en matière de\r\nsécurité de l’information. '),
(12, 'A.7.2.1 ', 'Organisationnel', 'Responsabilités de la\r\ndirection ', 'La direction doit demander\r\nà tous les salariés et soustraitants d’appliquer\r\nles règles de sécurité de\r\nl’information conformément aux\r\npolitiques et aux\r\nprocédures en vigueur\r\ndans l’organisme.'),
(13, 'A.7.2.2 ', 'Organisationnel', 'Sensibilisation,\r\napprentissage\r\net formation à\r\nla sécurité de\r\nl’information', 'L’ensemble des salariés de\r\nl’organisme et, quand cela\r\nest pertinent, des soustraitants, doit bénéficier\r\nd’une sensibilisation et de\r\nformations adaptées et\r\nrecevoir régulièrement les\r\nmises à jour des politiques\r\net procédures de\r\nl’organisme s’appliquant à\r\nleurs fonctions. '),
(14, 'A.7.2.3 ', 'Organisationnel', 'Processus disciplinaire ', 'Un processus disciplinaire\r\nformel et connu de tous\r\ndoit exister pour prendre\r\ndes mesures à l’encontre\r\ndes salariés ayant enfreint\r\nles règles liées à la sécurité\r\nde l’information.'),
(15, 'A.7.3.1', 'Organisationnel', 'Achèvement ou\r\nmodification\r\ndes responsabilités\r\nassociées au\r\ncontrat de travail ', 'Les responsabilités et les\r\nmissions liées à la sécurité\r\nde l’information qui\r\nrestent valables à l’issue de\r\nla rupture, du terme ou de\r\nla modification du\r\ncontrat de travail, doivent\r\nêtre définies,\r\ncommuniquées au salarié\r\nou au sous-traitant, et\r\nappliquées.'),
(16, 'A.7.3.1', 'Technique', 'Achèvement ou\r\nmodification\r\ndes responsabilités\r\nassociées au\r\ncontrat de travail ', 'Les responsabilités et les\r\nmissions liées à la sécurité\r\nde l’information qui\r\nrestent valables à l’issue de\r\nla rupture, du terme ou de\r\nla modification du\r\ncontrat de travail, doivent\r\nêtre définies,\r\ncommuniquées au salarié\r\nou au sous-traitant, et\r\nappliquées.'),
(17, 'A.8.1.1 ', 'Organisationnel', 'Inventaire des actifs ', 'Les actifs associés à\r\nl’information et aux\r\nmoyens de traitement de\r\nl’information\r\ndoivent être identifiés et\r\nun inventaire de ces actifs\r\ndoit être dressé\r\net tenu à jour. '),
(18, 'A.8.1.2', 'Organisationnel', 'Propriété des actifs ', 'Les actifs figurant à\r\nl’inventaire doivent être\r\nattribués à un propriétaire. '),
(19, 'A.8.1.3', 'Organisationnel', 'Utilisation correcte des\r\nactifs ', 'Les règles d’utilisation\r\ncorrecte de l’information,\r\nles actifs associés à\r\nl’information et les moyens\r\nde traitement de\r\nl’information doivent être\r\nidentifiées, documentées\r\net mises en œuvre. '),
(20, 'A.8.1.4', 'Organisationnel', 'Restitution des actifs ', 'Tous les salariés et les\r\nutilisateurs tiers doivent\r\nrestituer la totalité des\r\nactifs de l’organisme qu’ils\r\nont en leur possession au\r\nterme de la période\r\nd’emploi, du contrat ou de\r\nl’accord. '),
(21, 'A.8.1.4', 'Technique', 'Restitution des actifs ', 'Tous les salariés et les\r\nutilisateurs tiers doivent\r\nrestituer la totalité des\r\nactifs de l’organisme qu’ils\r\nont en leur possession au\r\nterme de la période\r\nd’emploi, du contrat ou de\r\nl’accord. '),
(22, 'A.8.2.1', 'Organisationnel', 'Classification des\r\ninformations ', 'Les informations doivent\r\nêtre classifiées en termes\r\nd’exigences légales, de\r\nvaleur, de caractère\r\ncritique et de sensibilité au\r\nregard d’une divulgation ou\r\nmodification non autorisée.'),
(23, 'A.8.2.1', 'Technique', 'Classification des\r\ninformations ', 'Les informations doivent\r\nêtre classifiées en termes\r\nd’exigences légales, de\r\nvaleur, de caractère\r\ncritique et de sensibilité au\r\nregard d’une divulgation ou\r\nmodification non autorisée.'),
(24, 'A.8.2.2', 'Organisationnel', 'Marquage des\r\ninformations', 'Un ensemble approprié de\r\nprocédures pour le\r\nmarquage de l’information\r\ndoit être élaboré et mis en\r\nœuvre conformément au plan de classification\r\nadopté par l’organisme. '),
(25, 'A.8.2.3', 'Organisationnel', 'Manipulation des actifs', 'Des procédures de\r\ntraitement de l’information\r\ndoivent être élaborées et\r\nmises en œuvre\r\nconformément au plan de\r\nclassification de\r\nl’information\r\nadopté par l’organisme. '),
(26, 'A.8.2.3', 'Physique', 'Manipulation des actifs', 'Des procédures de\r\ntraitement de l’information\r\ndoivent être élaborées et\r\nmises en œuvre\r\nconformément au plan de\r\nclassification de\r\nl’information\r\nadopté par l’organisme. '),
(27, 'A.8.3.1 ', 'Physique', 'Gestion des supports\r\namovibles ', 'Des procédures de gestion\r\ndes supports amovibles\r\ndoivent être mises en\r\nœuvre conformément au\r\nplan de classification\r\nadopté par l’organisme. '),
(28, 'A.8.3.1 ', 'Organisationnel', 'Gestion des supports\r\namovibles ', 'Des procédures de gestion\r\ndes supports amovibles\r\ndoivent être mises en\r\nœuvre conformément au\r\nplan de classification\r\nadopté par l’organisme. '),
(29, 'A.8.3.2 ', 'Organisationnel', 'Mise au rebut des\r\nsupports ', 'Les supports qui ne sont\r\nplus nécessaires doivent\r\nêtre mis au rebut de\r\nmanière sécurisée en\r\nsuivant des procédures\r\nformelles. '),
(30, 'A.8.3.3 ', 'Organisationnel', 'Transfert physique des\r\nsupports', 'Les supports contenant de\r\nl’information doivent être\r\nprotégés contre les accès\r\nnon autorisés, les erreurs\r\nd’utilisation et l’altération\r\nlors du transport. '),
(31, 'A.8.3.3 ', 'Physique', 'Transfert physique des\r\nsupports', 'Les supports contenant de\r\nl’information doivent être\r\nprotégés contre les accès\r\nnon autorisés, les erreurs\r\nd’utilisation et l’altération\r\nlors du transport. '),
(32, 'A.9.1.1', 'Organisationnel', 'Politique de contrôle\r\nd’accès', 'Une politique de contrôle\r\nd’accès doit être établie,\r\ndocumentée et revue sur la base des exigences\r\nmétier et de sécurité de\r\nl’information. '),
(33, 'A.9.1.2', 'Organisationnel', 'Accès aux réseaux et\r\naux services réseau ', 'Les utilisateurs doivent\r\navoir uniquement accès au\r\nréseau et aux services\r\nréseau pour lesquels ils ont\r\nspécifiquement reçu une\r\nautorisation.'),
(34, 'A.9.2.1 ', 'Technique', 'Enregistrement et\r\ndésinscription des\r\nutilisateurs', 'Un processus formel\r\nd’enregistrement et de\r\ndésinscription des\r\nutilisateurs\r\ndoit être mis en œuvre\r\npour permettre\r\nl’attribution des droits\r\nd’accès. '),
(35, 'A.9.2.2 ', 'Technique', 'Distribution des accès\r\naux utilisateurs ', 'Un processus formel de\r\ndistribution des accès aux\r\nutilisateurs doit être mis\r\nen œuvre pour attribuer et\r\nretirer des droits d’accès à\r\ntous types d’utilisateurs sur\r\nl’ensemble des services et\r\ndes systèmes. '),
(36, 'A.9.2.3', 'Technique', 'Gestion des droits\r\nd’accès à privilèges ', 'L’allocation et l’utilisation\r\ndes droits d’accès à\r\nprivilèges doivent être\r\nrestreintes et contrôlées. '),
(37, 'A.9.2.4', 'Technique', 'Gestion des\r\ninformations\r\nsecrètes\r\nd’authentification des\r\nutilisateurs ', 'L’attribution des\r\ninformations secrètes\r\nd’authentification doit être\r\nréalisée dans le cadre d’un\r\nprocessus de gestion\r\nformel. '),
(38, 'A.9.2.5', 'Technique', 'Revue des droits\r\nd’accès utilisateurs  ', 'Les propriétaires d’actifs\r\ndoivent vérifier les droits\r\nd’accès des utilisateurs à\r\nintervalles réguliers. '),
(39, 'A.9.2.6', 'Technique', 'Suppression ou\r\nadaptation\r\ndes droits d’accès ', 'Les droits d’accès aux\r\ninformations et aux\r\nmoyens de traitement des\r\ninformations de l’ensemble\r\ndes salariés et utilisateurs\r\ntiers doivent être\r\nsupprimés à la fin de leur\r\npériode d’emploi, ou\r\nadaptés en cas de\r\nmodification du contrat ou\r\nde l’accord. '),
(40, 'A.9.3.1 ', 'Technique', 'Utilisation\r\nd’informations\r\nsecrètes\r\nd’authentification', 'Les utilisateurs doivent\r\nsuivre les pratiques de\r\nl’organisme pour\r\nl’utilisation des informations secrètes\r\nd’authentification. '),
(41, 'A.9.4.1', 'Technique', 'Restriction d’accès à l’information ', 'L’accès à l’information et aux fonctions d’application\r\nsystème doit être restreint\r\nconformément à la\r\npolitique de contrôle\r\nd’accès.'),
(42, 'A.9.4.2', 'Technique', 'Sécuriser les\r\nprocédures\r\nde connexion ', 'Lorsque la politique de\r\ncontrôle d’accès l’exige,\r\nl’accès aux systèmes et aux\r\napplications doit être\r\ncontrôlé par une procédure\r\nde connexion sécurisée.'),
(43, 'A.9.4.3', 'Technique', 'SSystème de gestion des\r\nmots de passe ', 'Les systèmes qui gèrent les\r\nmots de passe doivent être\r\ninteractifs et doivent\r\ngarantir la qualité des mots\r\nde passe.'),
(44, 'A.9.4.4', 'Technique', 'Utilisation de\r\nprogrammes\r\nutilitaires à\r\nprivilèges  ', 'L’utilisation des\r\nprogrammes utilitaires\r\npermettant de contourner\r\nles mesures de sécurité\r\nd’un système ou d’une\r\napplication doit être\r\nlimitée et étroitement contrôlée. '),
(45, 'A.9.4.5', 'Technique', 'Contrôle d’accès au\r\ncode source des\r\nprogrammes ', 'L’accès au code source des\r\nprogrammes doit être\r\nrestreint.'),
(46, 'A.10.1.1', 'Technique', 'Politique d’utilisation\r\ndes mesures\r\ncryptographiques', 'Une politique d’utilisation\r\ndes mesures\r\ncryptographiques en vue\r\nde protéger l’information\r\ndoit être élaborée et mise\r\nen œuvre. '),
(47, 'A.10.1.1', 'Organisationnel', 'Politique d’utilisation\r\ndes mesures\r\ncryptographiques', 'Une politique d’utilisation\r\ndes mesures\r\ncryptographiques en vue\r\nde protéger l’information\r\ndoit être élaborée et mise\r\nen œuvre. '),
(48, 'A.10.1.2', 'Organisationnel', 'Gestion des clés ', 'Une politique sur\r\nl’utilisation, la protection etla durée de vie des clés\r\ncryptographiques doit être\r\nélaborée et mise en œuvre\r\ntout au long de leur cycle\r\nde vie.  '),
(49, 'A.11.1.1 ', 'Physique', 'Périmètre de sécurité\r\nphysique ', 'Des périmètres de sécurité\r\ndoivent être définis et\r\nutilisés pour protéger les\r\nzones contenant\r\nl’information sensible ou\r\ncritique et les moyens de\r\ntraitement de\r\nl’information. '),
(50, 'A.11.1.2', 'Physique', 'Contrôle d’accès\r\nphysique ', 'Les zones sécurisées\r\ndoivent être protégées par\r\ndes contrôles adéquats à\r\nl’entrée pour s’assurer que\r\nseul le personnel autorisé\r\nest admis. '),
(51, 'A.11.1.2', 'Technique', 'Contrôle d’accès\r\nphysique ', 'Les zones sécurisées\r\ndoivent être protégées par\r\ndes contrôles adéquats à\r\nl’entrée pour s’assurer que\r\nseul le personnel autorisé\r\nest admis. '),
(52, 'A.11.1.2', 'Organisationnel', 'Contrôle d’accès\r\nphysique ', 'Les zones sécurisées\r\ndoivent être protégées par\r\ndes contrôles adéquats à\r\nl’entrée pour s’assurer que\r\nseul le personnel autorisé\r\nest admis. '),
(53, 'A.11.1.3', 'Physique', 'Sécurisation des\r\nbureaux, des salles et\r\ndes équipements', 'Des mesures de sécurité\r\nphysique aux bureaux, aux\r\nsalles et aux équipements\r\ndoivent être conçues et\r\nappliquées. '),
(54, 'A.11.1.3', 'Organisationnel', 'Sécurisation des\r\nbureaux, des salles et\r\ndes équipements', 'Des mesures de sécurité\r\nphysique aux bureaux, aux\r\nsalles et aux équipements\r\ndoivent être conçues et\r\nappliquées. '),
(55, 'A.11.1.4', 'Physique', 'Protection contre les\r\nmenaces extérieures et\r\nenvironnementales ', 'Des mesures de protection\r\nphysique contre les\r\ndésastres naturels, les\r\nattaques malveillantes ou\r\nles accidents doivent être\r\nconçues et appliquées. '),
(56, 'A.11.1.5', 'Physique', 'Travail dans les zones\r\nsécurisées ', 'Des procédures pour le\r\ntravail dans les zones\r\nsécurisées doivent être\r\nconçues et appliquées. '),
(57, 'A.11.1.5', 'Organisationnel', 'Travail dans les zones\r\nsécurisées ', 'Des procédures pour le\r\ntravail dans les zones\r\nsécurisées doivent être\r\nconçues et appliquées. '),
(58, 'A.11.1.6', 'Physique', 'Zones de livraison et\r\nde chargement ', 'Les points d’accès tels que\r\nles zones de livraison et de\r\nchargement et les\r\nautres points par lesquels\r\ndes personnes non\r\nautorisées peuvent\r\npénétrer dans les locaux\r\ndoivent être contrôlés et, si\r\npossible, isolés des moyens\r\nde traitement de\r\nl’information, de façon à\r\néviter les accès non\r\nautorisés. '),
(59, 'A.11.2.1 ', 'Physique', 'Emplacement et\r\nprotection\r\ndes matériels ', 'Les matériels doivent être\r\nlocalisés et protégés de\r\nmanière à réduire les\r\nrisques liés à des menaces\r\net des dangers\r\nenvironnementaux et les\r\npossibilités d’accès non\r\nautorisé. '),
(60, 'A.11.2.2', 'Technique', 'Services généraux', 'Les matériels doivent être\r\nprotégés des coupures de\r\ncourant et autres\r\nperturbations dues à une\r\ndéfaillance des services\r\ngénéraux. '),
(61, 'A.11.2.3', 'Physique', 'Sécurité du câblage ', 'Les câbles électriques ou\r\nde télécommunication\r\ntransportant des données\r\nou supportant les services d’information doivent être\r\nprotégés contre toute\r\ninterception ou tout\r\ndommage. '),
(62, 'A.11.2.4', 'Technique', 'Maintenance des\r\nmatériels', 'Les matériels doivent être\r\nentretenus correctement\r\npour garantir leur\r\ndisponibilité permanente et leur intégrité. '),
(63, 'A.11.2.4', 'Organisationnel', 'Maintenance des\r\nmatériels', 'Les matériels doivent être\r\nentretenus correctement\r\npour garantir leur\r\ndisponibilité permanente et leur intégrité. '),
(64, 'A.11.2.5', 'Organisationnel', 'Sortie des actifs ', 'Les matériels, les\r\ninformations ou les\r\nlogiciels des locaux de\r\nl’organisme\r\nne doivent pas sortir sans\r\nautorisation préalable. '),
(65, 'A.11.2.6', 'Organisationnel', ' Sécurité des matériels\r\net des actifs hors des\r\nlocaux ', 'Des mesures de sécurité\r\ndoivent être appliquées\r\naux matériels utilisés hors des locaux de l’organisme\r\nen tenant compte des\r\ndifférents risques associés\r\nau travail hors site. '),
(66, 'A.11.2.6', 'Physique', ' Sécurité des matériels\r\net des actifs hors des\r\nlocaux ', 'Des mesures de sécurité\r\ndoivent être appliquées\r\naux matériels utilisés hors des locaux de l’organisme\r\nen tenant compte des\r\ndifférents risques associés\r\nau travail hors site. '),
(67, 'A.11.2.6', 'Technique', ' Sécurité des matériels\r\net des actifs hors des\r\nlocaux ', 'Des mesures de sécurité\r\ndoivent être appliquées\r\naux matériels utilisés hors des locaux de l’organisme\r\nen tenant compte des\r\ndifférents risques associés\r\nau travail hors site. '),
(68, 'A.11.2.7', 'Technique', 'Mise au rebut ou\r\nrecyclage\r\nsécurisé(e) des\r\nmatériels ', 'Tous les composants des\r\nmatériels contenant des\r\nsupports de stockage\r\ndoivent être vérifiés pour\r\ns’assurer que toute donnée\r\nsensible a bien été\r\nsupprimée et que tout\r\nlogiciel sous licence a bien\r\nété désinstallé ou écrasé\r\nde façon sécurisée, avant\r\nleur mise au rebut ou leur\r\nréutilisation. '),
(69, 'A.11.2.7', 'Organisationnel', 'Mise au rebut ou\r\nrecyclage\r\nsécurisé(e) des\r\nmatériels ', 'Tous les composants des\r\nmatériels contenant des\r\nsupports de stockage\r\ndoivent être vérifiés pour\r\ns’assurer que toute donnée\r\nsensible a bien été\r\nsupprimée et que tout\r\nlogiciel sous licence a bien\r\nété désinstallé ou écrasé\r\nde façon sécurisée, avant\r\nleur mise au rebut ou leur\r\nréutilisation. '),
(70, 'A.11.2.8', 'Organisationnel', 'Matériels utilisateur\r\nlaissés sans surveillance', 'Les utilisateurs doivent\r\ns’assurer que les matériels non surveillés sont\r\ndotés d’une protection\r\nappropriée. '),
(71, 'A.11.2.8', 'Technique', 'Matériels utilisateur\r\nlaissés sans surveillance', 'Les utilisateurs doivent\r\ns’assurer que les matériels non surveillés sont\r\ndotés d’une protection\r\nappropriée. '),
(72, 'A.11.2.9', 'Organisationnel', 'Politique du bureau\r\npropre et de l’écran\r\nvide ', 'Une politique du bureau\r\npropre pour les documents\r\npapier et les supports\r\nde stockage amovibles, et\r\nune politique de l’écran vide pour les\r\nmoyens de traitement de\r\nl’information doivent être\r\nadoptées. '),
(73, 'A.11.2.9', 'Physique', 'Politique du bureau\r\npropre et de l’écran\r\nvide ', 'Une politique du bureau\r\npropre pour les documents\r\npapier et les supports\r\nde stockage amovibles, et\r\nune politique de l’écran vide pour les\r\nmoyens de traitement de\r\nl’information doivent être\r\nadoptées. '),
(74, 'A.11.2.9', 'Technique', 'Politique du bureau\r\npropre et de l’écran\r\nvide ', 'Une politique du bureau\r\npropre pour les documents\r\npapier et les supports\r\nde stockage amovibles, et\r\nune politique de l’écran vide pour les\r\nmoyens de traitement de\r\nl’information doivent être\r\nadoptées. '),
(75, 'A.12.1.1', 'Organisationnel', 'Procédures\r\nd’exploitation\r\ndocumentées ', 'Les procédures\r\nd’exploitation doivent être\r\ndocumentées et mises à\r\ndisposition de tous les\r\nutilisateurs concernés.'),
(76, 'A.12.1.2', 'Organisationnel', 'Gestion des\r\nchangements ', 'Les changements apportés\r\nà l’organisme, aux\r\nprocessus métier, aux\r\nsystèmes et moyens de\r\ntraitement de l’information\r\nayant une incidence sur la\r\nsécurité de l’information\r\ndoivent être contrôlés. '),
(77, 'A.12.1.2', 'Organisationnel', 'Gestion des\r\nchangements ', 'Les changements apportés\r\nà l’organisme, aux\r\nprocessus métier, aux\r\nsystèmes et moyens de\r\ntraitement de l’information\r\nayant une incidence sur la\r\nsécurité de l’information\r\ndoivent être contrôlés. '),
(78, 'A.12.1.3', 'Organisationnel', 'Dimensionnement', 'L’utilisation des ressources\r\ndoit être surveillée et\r\najustée et des projections\r\nsur les dimensionnements\r\nfuturs doivent être\r\neffectuées pour garantir les\r\nperformances exigées du\r\nsystème. '),
(79, 'A.12.1.3', 'Technique', 'Dimensionnement', 'L’utilisation des ressources\r\ndoit être surveillée et\r\najustée et des projections\r\nsur les dimensionnements\r\nfuturs doivent être\r\neffectuées pour garantir les\r\nperformances exigées du\r\nsystème. '),
(80, 'A.12.1.4', 'Technique', 'Séparation des\r\nenvironnements de\r\ndéveloppement, de\r\ntest\r\net d’exploitation ', 'Les environnements de\r\ndéveloppement, de test et\r\nd’exploitation doivent être\r\nséparés pour réduire les\r\nrisques d’accès ou de\r\nchangements non autorisés\r\ndans l’environnement en\r\nexploitation. '),
(81, 'A.12.2.1', 'Organisationnel', 'Mesures contre les\r\nlogiciels malveillants ', 'Des mesures de détection,\r\nde prévention et de\r\nrécupération conjuguées à\r\nune sensibilisation des\r\nutilisateurs adaptée,\r\ndoivent être mises en\r\nœuvre pour se protéger\r\ncontre les logiciels\r\nmalveillants.'),
(82, 'A.12.2.1', 'Technique', 'Mesures contre les\r\nlogiciels malveillants ', 'Des mesures de détection,\r\nde prévention et de\r\nrécupération conjuguées à\r\nune sensibilisation des\r\nutilisateurs adaptée,\r\ndoivent être mises en\r\nœuvre pour se protéger\r\ncontre les logiciels\r\nmalveillants.'),
(83, 'A.12.3.1', 'Technique', 'Sauvegarde des\r\ninformations ', 'Des copies de sauvegarde\r\nde l’information, des\r\nlogiciels et des images\r\nsystèmes doivent être\r\nréalisés et testés\r\nrégulièrement\r\nconformément à une\r\npolitique de sauvegarde\r\nconvenue. '),
(84, 'A.12.3.1', 'Physique', 'Sauvegarde des\r\ninformations ', 'Des copies de sauvegarde\r\nde l’information, des\r\nlogiciels et des images\r\nsystèmes doivent être\r\nréalisés et testés\r\nrégulièrement\r\nconformément à une\r\npolitique de sauvegarde\r\nconvenue. '),
(85, 'A.12.3.1', 'Organisationnel', 'Sauvegarde des\r\ninformations ', 'Des copies de sauvegarde\r\nde l’information, des\r\nlogiciels et des images\r\nsystèmes doivent être\r\nréalisés et testés\r\nrégulièrement\r\nconformément à une\r\npolitique de sauvegarde\r\nconvenue. '),
(86, 'A.12.4.1', 'Organisationnel', 'Journalisation des\r\névénements ', 'Des journaux\r\nd’événements enregistrant\r\nles activités de l’utilisateur,\r\nles exceptions, les\r\ndéfaillances et les\r\névénements liés à la\r\nsécurité de l’information\r\ndoivent être créés, tenus à jour et vérifiés\r\nrégulièrement. '),
(87, 'A.12.4.1', 'Technique', 'Journalisation des\r\névénements ', 'Des journaux\r\nd’événements enregistrant\r\nles activités de l’utilisateur,\r\nles exceptions, les\r\ndéfaillances et les\r\névénements liés à la\r\nsécurité de l’information\r\ndoivent être créés, tenus à jour et vérifiés\r\nrégulièrement. '),
(88, 'A.12.4.2', 'Technique', 'Protection de\r\nl’information\r\njournalisée ', 'Les moyens de\r\njournalisation et\r\nd’information journalisée\r\ndoivent être protégés\r\ncontre les risques de\r\nfalsification ou d’accès non\r\nautorisé. '),
(89, 'A.12.4.3', 'Technique', 'Journaux\r\nadministrateur\r\net opérateur ', 'Les activités de\r\nl’administrateur système et\r\nde l’opérateur système\r\ndoivent être journalisées,\r\nprotégées et vérifiées\r\nrégulièrement. '),
(90, 'A.12.4.4', 'Technique', 'Synchronisation des\r\nhorloges ', 'Les horloges de l’ensemble\r\ndes systèmes de traitement\r\nde l’information concernés\r\nd’un organisation ou d’un\r\ndomaine de sécurité\r\ndoivent être\r\nsynchronisées sur une\r\nsource de référence\r\ntemporelle unique. '),
(91, 'A.12.5.1', 'Technique', 'Installation de logiciels\r\nsur des systèmes en\r\nexploitation ', 'Des procédures doivent\r\nêtre mises en œuvre pour\r\ncontrôler l’installation de\r\nlogiciel sur des systèmes en\r\nexploitation. '),
(92, 'A.12.5.1', 'Organisationnel', 'Installation de logiciels\r\nsur des systèmes en\r\nexploitation ', 'Des procédures doivent\r\nêtre mises en œuvre pour\r\ncontrôler l’installation de\r\nlogiciel sur des systèmes en\r\nexploitation. '),
(93, 'A.12.6.1', 'Organisationnel', 'Gestion des\r\nvulnérabilités\r\ntechniques ', 'Des informations sur les\r\nvulnérabilités techniques\r\ndes systèmes d’information\r\nen exploitation doivent\r\nêtre obtenues en temps\r\nopportun, l’exposition\r\nde l’organisme à ces\r\nvulnérabilités doit être\r\névaluée et les mesures\r\nappropriées doivent être\r\nprises pour traiter le risque\r\nassocié.'),
(94, 'A.12.6.1', 'Technique', 'Gestion des\r\nvulnérabilités\r\ntechniques ', 'Des informations sur les\r\nvulnérabilités techniques\r\ndes systèmes d’information\r\nen exploitation doivent\r\nêtre obtenues en temps\r\nopportun, l’exposition\r\nde l’organisme à ces\r\nvulnérabilités doit être\r\névaluée et les mesures\r\nappropriées doivent être\r\nprises pour traiter le risque\r\nassocié.'),
(95, 'A.12.6.2', 'Organisationnel', 'Restrictions liées à\r\nl’installation de\r\nlogiciels', 'Des règles régissant\r\nl’installation de logiciels\r\npar les utilisateurs doivent\r\nêtre établies et mises en\r\nœuvre. '),
(96, 'A.12.7.1', 'Organisationnel', 'Mesures relatives à\r\nl’audit des systèmes\r\nd’information', 'Les exigences et activités\r\nd’audit impliquant des\r\nvérifications sur des\r\nsystèmes en exploitation\r\ndoivent être prévues avec\r\nsoin et validées afin de\r\nréduire au minimum les\r\nperturbations subies par\r\nles processus métier. '),
(97, 'A.13.1.1', 'Organisationnel', 'Contrôle des réseaux ', 'Les réseaux doivent être\r\ngérés et contrôlés pour protéger l’information\r\ncontenue dans les\r\nsystèmes et les\r\napplications. '),
(98, 'A.13.1.1', 'Technique', 'Contrôle des réseaux ', 'Les réseaux doivent être\r\ngérés et contrôlés pour protéger l’information\r\ncontenue dans les\r\nsystèmes et les\r\napplications. '),
(99, 'A.13.1.2', 'Organisationnel', 'Sécurité des services\r\nde réseau ', 'Pour tous les services de\r\nréseau, les mécanismes de\r\nsécurité, les niveaux de\r\nservice et les exigences de\r\ngestion, doivent être\r\nidentifiés et intégrés dans les accords de services de\r\nréseau, que ces services\r\nsoient fournis en interne\r\nou externalisés. '),
(100, 'A.13.1.3', 'Technique', 'Cloisonnement des\r\nréseaux ', 'Les groupes de services\r\nd’information,\r\nd’utilisateurs et de\r\nsystèmes d’information\r\ndoivent être cloisonnés sur\r\nles réseaux. '),
(101, 'A.13.2.1', 'Organisationnel', 'Politiques et\r\nprocédures\r\nde transfert de\r\nl’information ', 'Des politiques, des\r\nprocédures et des mesures\r\nde transfert formelles\r\ndoivent être mises en place\r\npour protéger les transferts\r\nd’information transitant\r\npar tous types\r\nd’équipements de\r\ncommunication. '),
(102, 'A.13.2.1', 'Technique', 'Politiques et\r\nprocédures\r\nde transfert de\r\nl’information ', 'Des politiques, des\r\nprocédures et des mesures\r\nde transfert formelles\r\ndoivent être mises en place\r\npour protéger les transferts\r\nd’information transitant\r\npar tous types\r\nd’équipements de\r\ncommunication. '),
(103, 'A.13.2.2', 'Organisationnel', 'Accords en matière de\r\ntransfert d’information ', 'Des accords doivent traiter\r\ndu transfert sécurisé de\r\nl’information liée à\r\nl’activité entre l’organisme\r\net les tiers.'),
(104, 'A.13.2.2', 'Technique', 'Accords en matière de\r\ntransfert d’information ', 'Des accords doivent traiter\r\ndu transfert sécurisé de\r\nl’information liée à\r\nl’activité entre l’organisme\r\net les tiers.'),
(105, 'A.13.2.3', 'Technique', 'Messagerie\r\nélectronique ', 'L’information transitant\r\npar la messagerie\r\nélectronique doit être\r\nprotégée de manière\r\nappropriée. '),
(106, 'A.13.2.3', 'Organisationnel', 'Messagerie\r\nélectronique ', 'L’information transitant\r\npar la messagerie\r\nélectronique doit être\r\nprotégée de manière\r\nappropriée. '),
(107, 'A.13.2.4', 'Organisationnel', 'Engagements de\r\nconfidentialité ou de\r\nnon-divulgation ', 'Les exigences en matière\r\nd’engagements de\r\nconfidentialité ou de nondivulgation, doivent être\r\nidentifiées, vérifiées\r\nrégulièrement et\r\ndocumentées\r\nconformément aux besoins\r\nde l’organisme. '),
(108, 'A.14.1.1', 'Organisationnel', 'Analyse et spécification\r\ndes exigences de\r\nsécurité de\r\nl’information ', 'Les exigences liées à la\r\nsécurité de l’information\r\ndoivent être intégrées aux\r\nexigences des nouveaux\r\nsystèmes d’information ou\r\ndes améliorations de\r\nsystèmes d’information\r\nexistants. '),
(109, 'A.14.1.2', 'Organisationnel', 'Sécurisation des\r\nservices\r\nd’application sur\r\nles réseaux publics', 'Les informations liées aux\r\nservices d’application\r\ntransmises sur les réseaux\r\npublics doivent être\r\nprotégées contre les\r\nactivités frauduleuses, les\r\ndifférents\r\ncontractuels, ainsi que la\r\ndivulgation et la\r\nmodification non\r\nautorisées. '),
(110, 'A.14.1.2', 'Technique', 'Sécurisation des\r\nservices\r\nd’application sur\r\nles réseaux publics', 'Les informations liées aux\r\nservices d’application\r\ntransmises sur les réseaux\r\npublics doivent être\r\nprotégées contre les\r\nactivités frauduleuses, les\r\ndifférents\r\ncontractuels, ainsi que la\r\ndivulgation et la\r\nmodification non\r\nautorisées. '),
(111, 'A.14.1.3', 'Technique', 'Protection des\r\ntransactions\r\nliées aux services\r\nd’application ', 'Les informations\r\nimpliquées dans les\r\ntransactions liées aux\r\nservices\r\nd’application doivent être\r\nprotégées pour empêcher\r\nune transmission\r\nincomplète, des erreurs\r\nd’acheminement, la\r\nmodification non autorisée,\r\nla divulgation non\r\nautorisée, la duplication\r\nnon autorisée du message\r\nou sa réémission.'),
(112, 'A.14.2.1', 'Organisationnel', 'Politique de\r\ndéveloppement\r\nsécurisé ', 'Des règles de\r\ndéveloppement des\r\nlogiciels et des systèmes\r\ndoivent être\r\nétablies et appliquées aux\r\ndéveloppements de\r\nl’organisme.'),
(113, 'A.14.2.2', 'Organisationnel', 'Procédures de contrôle\r\ndes changements de\r\nsystème ', 'Les changements des\r\nsystèmes dans le cadre du\r\ncycle de développement\r\ndoivent être contrôlés par\r\nle biais de procédures\r\nformelles. '),
(114, 'A.14.2.3', 'Technique', 'Revue technique des\r\napplications après\r\nchangement apporté à\r\nla plateforme\r\nd’exploitation', 'Lorsque des changements\r\nsont apportés aux\r\nplateformes d’exploitation,\r\nles applications critiques\r\nmétier doivent être\r\nvérifiées et testées afin de\r\nvérifier\r\nl’absence de tout effet\r\nindésirable sur l’activité ou\r\nsur la sécurité. '),
(115, 'A.14.2.4', 'Organisationnel', 'Restrictions relatives\r\naux changements\r\napportés aux progiciels ', 'Les modifications des\r\nprogiciels ne doivent pas\r\nêtre encouragées, être\r\nlimitées aux changements\r\nnécessaires et tout\r\nchangement doit être\r\nstrictement contrôlé. '),
(116, 'A.14.2.5', 'Organisationnel', 'Principes d’ingénierie de la sécurité des\r\nsystèmes', 'Des principes d’ingénierie de la sécurité des systèmes\r\ndoivent être établis,\r\ndocumentés, tenus à jour\r\net appliqués à tous les\r\ntravaux de mise en œuvre\r\ndes systèmes\r\nd’information. '),
(117, 'A.14.2.6', 'Organisationnel', 'Environnement de\r\ndéveloppement\r\nsécurisé ', 'Les organismes doivent\r\nétablir des environnements\r\nde développement\r\nsécurisés pour les tâches\r\nde développement et\r\nd’intégration du système, qui englobe l’intégralité du\r\ncycle de vie du\r\ndéveloppement du\r\nsystème, et en assurer la\r\nprotection de manière\r\nappropriée. '),
(118, 'A.14.2.6', 'Technique', 'Environnement de\r\ndéveloppement\r\nsécurisé ', 'Les organismes doivent\r\nétablir des environnements\r\nde développement\r\nsécurisés pour les tâches\r\nde développement et\r\nd’intégration du système, qui englobe l’intégralité du\r\ncycle de vie du\r\ndéveloppement du\r\nsystème, et en assurer la\r\nprotection de manière\r\nappropriée. '),
(119, 'A.14.2.7', 'Organisationnel', 'Développement\r\nexternalisé ', 'L’organisme doit superviser\r\net contrôler l’activité de\r\ndéveloppement du\r\nsystème externalisée. '),
(120, 'A.14.2.8', 'Technique', 'Test de la sécurité du\r\nsystème ', 'Les tests de fonctionnalité\r\nde la sécurité doivent être\r\nréalisés pendant le\r\ndéveloppement.'),
(121, 'A.14.2.9', 'Technique', 'Test de conformité du\r\nsystème ', 'Des programmes de test de\r\nconformité et des critères\r\nassociés doivent être\r\ndéterminés pour les\r\nnouveaux systèmes\r\nd’information, les mises à\r\njour et les nouvelles\r\nversions. '),
(122, 'A.14.3.1', 'Technique', 'Protection des données\r\nde test ', 'Les données de test\r\ndoivent être sélectionnées\r\navec soin, protégées et\r\nContrôlées.'),
(123, 'A.14.3.1', 'Organisationnel', 'Protection des données\r\nde test ', 'Les données de test\r\ndoivent être sélectionnées\r\navec soin, protégées et\r\nContrôlées.'),
(124, 'A.15.1.1', 'Organisationnel', 'Politique de sécurité\r\nde l’information dans\r\nles relations avec les\r\nfournisseurs ', 'Des exigences de sécurité\r\nde l’information pour\r\nlimiter les risques résultant\r\nde l’accès des fournisseurs\r\naux actifs de l’organisme\r\ndoivent être acceptées par\r\nle fournisseur et\r\ndocumentées'),
(125, 'A.15.1.2', 'Organisationnel', 'La sécurité dans les\r\naccords conclus avec\r\nles fournisseurs', 'Les exigences applicables\r\nliées à la sécurité de\r\nl’information doivent être\r\nétablies et convenues avec\r\nchaque fournisseur\r\npouvant accéder, traiter,\r\nstocker, communiquer ou\r\nfournir des composants de l’infrastructure\r\ninformatique destinés à\r\nl’information de\r\nl’organisme. '),
(126, 'A.15.1.3', 'Organisationnel', 'Chaîne\r\nd’approvisionnement\r\ndes produits et\r\ndes services\r\ninformatiques', 'Les accords conclus avec\r\nles fournisseurs doivent\r\ninclure des exigences sur le\r\ntraitement des risques liés\r\nà la sécurité de\r\nl’information associé à la\r\nchaîne\r\nd’approvisionnement des\r\nproduits et des services\r\ninformatiques. '),
(127, 'A.15.2.1', 'Organisationnel', 'Surveillance et revue\r\ndes services des\r\nfournisseurs ', 'Les organismes doivent\r\nsurveiller, vérifier et\r\nauditer à intervalles\r\nréguliers la prestation des\r\nservices assurés par les\r\nfournisseurs. '),
(128, 'A.15.2.2', 'Organisationnel', 'Gestion des\r\nchangements\r\napportés dans\r\nles services des\r\nfournisseurs ', 'Les changements effectués\r\ndans les prestations de\r\nservice des fournisseurs,\r\ncomprenant le maintien et\r\nl’amélioration des\r\npolitiques, procédures et\r\nmesures existant en\r\nmatière de sécurité de\r\nl’information, doivent être\r\ngérés en tenant compte du\r\ncaractère critique de\r\nl’information, des systèmes\r\net des processus concernés\r\net de la réappréciation des\r\nrisques.'),
(129, 'A.16.1.1', 'Organisationnel', 'Responsabilités et\r\nprocédures ', 'Des responsabilités et des\r\nprocédures permettant de\r\ngarantir une réponse\r\nrapide, efficace et\r\npertinente doivent être\r\nétablies en cas d’incident\r\nlié à la\r\nsécurité de l’information.'),
(130, 'A.16.1.2', 'Organisationnel', 'Signalement des\r\névénements\r\nliés à la sécurité\r\nde l’information ', 'Les événements liés à la\r\nsécurité de l’information\r\ndoivent être signalés dans\r\nles meilleurs délais par les\r\nvoies hiérarchiques\r\nappropriées.'),
(131, 'A.16.1.3', 'Organisationnel', 'Signalement des failles\r\nliées à la sécurité de\r\nl’information ', 'Les salariés et les soustraitants utilisant les\r\nsystèmes et services\r\nd’information de\r\nl’organisme doivent noter\r\net signaler toute faille de\r\nsécurité observée ou\r\nsoupçonnée dans les\r\nsystèmes ou services.'),
(132, 'A.16.1.4', 'Technique', 'Appréciation des\r\névénements\r\nliés à la sécurité\r\nde l’information et\r\nprise de décision ', 'Les événements liés à la\r\nsécurité de l’information\r\ndoivent être appréciés et\r\nil doit être décidé s’il faut\r\nles classer comme\r\nincidents liés à la sécurité\r\nde l’information. '),
(133, 'A.16.1.5', 'Technique', 'Réponse aux incidents\r\nliés à la sécurité de\r\nl’information', 'Les incidents liés à la\r\nsécurité de l’information\r\ndoivent être traités\r\nconformément aux\r\nprocédures documentées.'),
(134, 'A.16.1.5', 'Organisationnel', 'Réponse aux incidents\r\nliés à la sécurité de\r\nl’information', 'Les incidents liés à la\r\nsécurité de l’information\r\ndoivent être traités\r\nconformément aux\r\nprocédures documentées.'),
(135, 'A.16.1.6', 'Technique', 'Tirer des\r\nenseignements\r\ndes incidents\r\nliés à la sécurité de\r\nl’information ', 'Les connaissances\r\nrecueillies suite à l’analyse\r\net la résolution d’incidents\r\ndoivent être utilisées pour\r\nréduire la probabilité ou\r\nl’impact d’incidents\r\nultérieurs. '),
(136, 'A.16.1.7', 'Organisationnel', 'Collecte de preuves ', 'L’organisme doit définir et appliquer des procédures\r\nd’identification, de\r\ncollecte, d’acquisition et de\r\nprotection de l’information\r\npouvant servir de preuve. '),
(137, 'A.17.1.1', 'Organisationnel', 'Organisation de la\r\ncontinuité de la\r\nsécurité de\r\nl’information', 'L’organisme doit\r\ndéterminer ses exigences\r\nen matière de sécurité de\r\nl’information et de\r\ncontinuité de management de la sécurité de\r\nl’information dans des\r\nsituations défavorables,\r\ncomme lors d’une crise ou\r\nd’un sinistre.'),
(138, 'A.17.1.2', 'Organisationnel', 'Mise en œuvre de la\r\ncontinuité de la\r\nsécurité\r\nde l’information ', 'L’organisme doit établir,\r\ndocumenter, mettre en\r\nœuvre et tenir à jour des\r\nprocessus, des procédures\r\net des mesures permettant\r\nde fournir le niveau requis\r\nde continuité de sécurité\r\nde l’information au cours\r\nd’une situation défavorable. '),
(139, 'A.17.1.3', 'Organisationnel', 'Vérifier, revoir et\r\névaluer la continuité de\r\nla sécurité de\r\nl’information ', 'L’organisme doit vérifier\r\nles mesures de continuité\r\nde la sécurité de\r\nl’information mises en\r\nœuvre à intervalles réguliers afin de s’assurer\r\nqu’elles sont valables et\r\nefficaces dans des\r\nsituations défavorables. '),
(140, 'A.17.2.1', 'Technique', ' Disponibilité des\r\nmoyens de traitement\r\nde l’information ', 'Des moyens de traitement\r\nde l’information doivent\r\nêtre mis en œuvre avec\r\nsuffisamment de\r\nredondances pour\r\nrépondre aux exigences de\r\ndisponibilité. '),
(141, 'A.18.1.1', 'Organisationnel', 'Identification de la\r\nlégislation et des\r\nexigences\r\ncontractuelles\r\napplicables ', 'Toutes les exigences\r\nlégales, statutaires,\r\nréglementaires et\r\ncontractuelles en vigueur,\r\nainsi que l’approche\r\nadoptée par l’organisme\r\npour satisfaire à ces\r\nexigences, doivent être\r\nexplicitement définies,\r\ndocumentées et mises à\r\njour pour chaque système\r\nd’information et pour\r\nl’organisme elle-même. '),
(142, 'A.18.1.2', 'Organisationnel', 'Droits de propriété\r\nintellectuelle ', 'Des procédures\r\nappropriées doivent être\r\nmises en œuvre pour\r\ngarantir la conformité avec\r\nles exigences légales,\r\nréglementaires et\r\ncontractuelles relatives à la\r\npropriété intellectuelle et à l’usage des licences de\r\nlogiciels propriétaires.'),
(143, 'A.18.1.2', 'Technique', 'Droits de propriété\r\nintellectuelle ', 'Des procédures\r\nappropriées doivent être\r\nmises en œuvre pour\r\ngarantir la conformité avec\r\nles exigences légales,\r\nréglementaires et\r\ncontractuelles relatives à la\r\npropriété intellectuelle et à l’usage des licences de\r\nlogiciels propriétaires.'),
(144, 'A.18.1.3', 'Organisationnel', 'Protection des\r\nenregistrements ', 'Les enregistrements\r\ndoivent être protégés de la\r\nperte, de la destruction, de\r\nla falsification, des accès\r\nnon autorisés et des\r\ndiffusions non autorisées,\r\nconformément aux\r\nexigences légales,\r\nréglementaires,\r\ncontractuelles et aux\r\nexigences métier. '),
(145, 'A.18.1.3', 'Technique', 'Protection des\r\nenregistrements ', 'Les enregistrements\r\ndoivent être protégés de la\r\nperte, de la destruction, de\r\nla falsification, des accès\r\nnon autorisés et des\r\ndiffusions non autorisées,\r\nconformément aux\r\nexigences légales,\r\nréglementaires,\r\ncontractuelles et aux\r\nexigences métier. '),
(146, 'A.18.1.4', 'Organisationnel', 'Protection de la vie\r\nprivée et protection\r\ndes données à\r\ncaractère personnel ', 'La protection de la vie\r\nprivée et la protection des\r\ndonnées à caractère\r\npersonnel doivent être\r\ngaranties telles que\r\nl’exigent la législation ou\r\nles réglementations\r\napplicables, et les clauses\r\ncontractuelles le cas\r\néchéant. '),
(147, 'A.18.1.5', 'Organisationnel', 'Réglementation\r\nrelative aux mesures\r\ncryptographiques', 'Des mesures\r\ncryptographiques doivent\r\nêtre prises conformément\r\naux accords, législation et\r\nréglementations\r\napplicables.'),
(148, 'A.18.2.1', 'Organisationnel', 'Revue indépendante\r\nde la sécurité de\r\nl’information', 'Des revues régulières et\r\nindépendantes de\r\nl’approche retenue par\r\nl’organisme pour gérer et\r\nmettre en œuvre la\r\nsécurité de l’information (à\r\nsavoir le suivi des objectifs\r\nde sécurité, les mesures,\r\nles politiques, les\r\nprocédures et les\r\nprocessus relatifs à la\r\nsécurité de l’information)\r\ndoivent être effectuées à\r\nintervalles définis ou lorsque des changements\r\nimportants sont\r\nintervenus.'),
(149, 'A.18.2.2', 'Organisationnel', 'Conformité avec\r\nles politiques et les\r\nnormes de sécurité', 'Les responsables doivent\r\nrégulièrement vérifier la\r\nconformité du traitement\r\nde l’information et des\r\nprocédures dont ils sont\r\nchargés au regard des\r\npolitiques, des normes de\r\nsécurité applicables et\r\nautres exigences de\r\nsécurité. '),
(150, 'A.18.2.3', 'Organisationnel', 'Vérification de la\r\nconformité technique', 'Les systèmes d’information\r\ndoivent être examinés\r\nrégulièrement quant à\r\nleur conformité avec les\r\npolitiques et les normes de\r\nsécurité de l’information\r\nde l’organisme.');

-- --------------------------------------------------------

--
-- Structure de la table `asset`
--

CREATE TABLE `asset` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `status` varchar(15) DEFAULT NULL,
  `reviews` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `vendor` text DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `owner` varchar(20) DEFAULT NULL,
  `custodian` varchar(20) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `confidentiality` varchar(10) DEFAULT NULL,
  `integrity` varchar(10) DEFAULT NULL,
  `availability` varchar(10) DEFAULT NULL,
  `criticality` varchar(10) DEFAULT NULL,
  `classification` varchar(20) DEFAULT NULL,
  `category` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `asset`
--

INSERT INTO `asset` (`id`, `name`, `status`, `reviews`, `type`, `vendor`, `quantity`, `description`, `location`, `owner`, `custodian`, `user`, `confidentiality`, `integrity`, `availability`, `criticality`, `classification`, `category`) VALUES
(881, 'cpe:2.3:o:microsoft:windows_98:-:*:*:*:*:*:*:*', 'Active', 0, 'Software', 'microsoft', 2, '..', '...', '...', '2', 'user 2', 'High', 'Very High', 'Moderate', 'Very High', 'test2', 'tsr333');

-- --------------------------------------------------------

--
-- Structure de la table `assignControl`
--

CREATE TABLE `assignControl` (
  `id` int(11) NOT NULL,
  `reference` varchar(10) NOT NULL,
  `title` text NOT NULL,
  `type` varchar(15) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `audit`
--

CREATE TABLE `audit` (
  `id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `risk` text NOT NULL,
  `controlRef` varchar(10) NOT NULL,
  `controlTitle` text NOT NULL,
  `controlDescription` text NOT NULL,
  `controlLevel` text NOT NULL,
  `controlValue` int(11) DEFAULT NULL,
  `impactXlikelihood` int(11) DEFAULT NULL,
  `recommendedActions` text DEFAULT NULL,
  `dateRecommAction` text DEFAULT NULL,
  `isValidated` tinyint(1) DEFAULT NULL,
  `dateValidation` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `audit`
--

INSERT INTO `audit` (`id`, `status`, `risk`, `controlRef`, `controlTitle`, `controlDescription`, `controlLevel`, `controlValue`, `impactXlikelihood`, `recommendedActions`, `dateRecommAction`, `isValidated`, `dateValidation`) VALUES
(50, 'Validated', 'Malicious code may bypass the outdated anti-malware software and result in compromising the information.\r\n', 'A.6.1.2 ', 'Séparation des tâches ', 'Les tâches et les domaines\r\nde responsabilité\r\nincompatibles doivent être\r\ncloisonnés pour limiter les\r\npossibilités de modification\r\nou de mauvais usage, non\r\nautorisé(e) ou involontaire,\r\ndes actifs de l’organisme. ', 'Limited improvement opportunity', 4, 15, '1 Fonctions et\r\nresponsabilités liées à la sécurité de l’information  ', 'Apr 10, 2022, 1:42:27 AM', 1, NULL),
(264, 'Under Validation', 'Malicious code may bypass the outdated anti-malware software and result in compromising the information.\r\n', 'A.6.1.1', '1 Fonctions et\r\nresponsabilités liées à la sécurité de l’information  ', 'Toutes les responsabilités\r\nen matière de sécurité de l’information doivent\r\nêtre définies et attribuées.  ', 'Moderate improvement opportunity', 3, 15, 'Politiques de sécurité de l’information ', 'Apr 10, 2022, 1:42:27 AM', 0, NULL),
(682, 'On Going', 'Malicious code may bypass the outdated anti-malware software and result in compromising the information.\r\n', 'A.6.1.1', '1 Fonctions et\r\nresponsabilités liées à la sécurité de l’information  ', 'Toutes les responsabilités\r\nen matière de sécurité de l’information doivent\r\nêtre définies et attribuées.  ', 'N/A', NULL, 15, NULL, 'Apr 10, 2022, 1:42:27 AM', NULL, NULL),
(936, 'On Going', 'Malicious code may bypass the outdated anti-malware software and result in compromising the information.\r\n', 'A.6.1.2 ', 'Séparation des tâches ', 'Les tâches et les domaines\r\nde responsabilité\r\nincompatibles doivent être\r\ncloisonnés pour limiter les\r\npossibilités de modification\r\nou de mauvais usage, non\r\nautorisé(e) ou involontaire,\r\ndes actifs de l’organisme. ', 'N/A', NULL, 15, NULL, 'Apr 10, 2022, 1:42:27 AM', NULL, NULL),
(984, 'On Going', 'Malicious code may bypass the outdated anti-malware software and result in compromising the information.\r\n', 'A.6.1.2 ', 'Séparation des tâches ', 'Les tâches et les domaines\r\nde responsabilité\r\nincompatibles doivent être\r\ncloisonnés pour limiter les\r\npossibilités de modification\r\nou de mauvais usage, non\r\nautorisé(e) ou involontaire,\r\ndes actifs de l’organisme. ', 'N/A', NULL, 15, NULL, 'Apr 10, 2022, 1:42:27 AM', NULL, NULL),
(988, 'On Going', 'Malicious code may bypass the outdated anti-malware software and result in compromising the information.\r\n', 'A.6.1.1', '1 Fonctions et\r\nresponsabilités liées à la sécurité de l’information  ', 'Toutes les responsabilités\r\nen matière de sécurité de l’information doivent\r\nêtre définies et attribuées.  ', 'N/A', NULL, 15, NULL, 'Apr 10, 2022, 1:42:27 AM', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `controls`
--

CREATE TABLE `controls` (
  `id` int(11) NOT NULL,
  `reference` varchar(10) NOT NULL,
  `type` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `controls`
--

INSERT INTO `controls` (`id`, `reference`, `type`, `title`, `description`) VALUES
(0, 'C.5.3.6', 'Organisational', 'Control1', 'Description'),
(1, 'A.5.1.1', 'Organisationnel', 'Politiques de sécurité de l’information ', 'Un ensemble de politiques\r\nde sécurité de\r\nl’information (PSI) doit être\r\ndéfini,\r\napprouvé par la direction,\r\ndiffusé et communiqué aux\r\nsalariés et aux tiers\r\nconcernés. '),
(2, 'A.5.1.2', 'Organisationnel', 'Revue des politiques de\r\nsécurité de\r\nl’information ', 'Les politiques de sécurité\r\nde l’information doivent\r\nêtre revues à intervalles\r\nprogrammés ou en cas de\r\nchangements majeurs pour\r\ngarantir leur pertinence,\r\nleur adéquation et leur\r\neffectivité dans le temps. '),
(3, 'A.6.1.1', 'Organisationnel', '1 Fonctions et\r\nresponsabilités liées à la sécurité de l’information  ', 'Toutes les responsabilités\r\nen matière de sécurité de l’information doivent\r\nêtre définies et attribuées.  '),
(4, 'A.6.1.2 ', 'Organisationnel', 'Séparation des tâches ', 'Les tâches et les domaines\r\nde responsabilité\r\nincompatibles doivent être\r\ncloisonnés pour limiter les\r\npossibilités de modification\r\nou de mauvais usage, non\r\nautorisé(e) ou involontaire,\r\ndes actifs de l’organisme. '),
(5, 'A.6.1.3 ', 'Organisationnel', 'Relations avec les\r\nautorités ', 'Des relations appropriées\r\navec les autorités\r\ncompétentes doivent être\r\nentretenues. '),
(6, 'A.6.1.4 ', 'Organisationnel', '4 Relations avec des\r\ngroupes de travail\r\nspécialisés ', 'Des relations appropriées\r\navec des groupes d’intérêt,\r\ndes forums spécialisés dans\r\nla sécurité et des\r\nassociations\r\nprofessionnelles doivent\r\nêtre entretenues. '),
(7, 'A.6.1.5 ', 'Organisationnel', 'La sécurité de\r\nl’information\r\ndans la gestion\r\nde projet ', 'La sécurité de l’information\r\ndoit être considérée dans\r\nla gestion de projet,\r\nquel que soit le type de\r\nprojet concerné.'),
(8, 'A.6.2.1 ', 'Organisationnel', 'Politique en matière\r\nd’appareils mobiles ', 'Une politique et des\r\nmesures de sécurité\r\ncomplémentaires doivent\r\nêtre adoptées pour gérer\r\nles risques découlant de\r\nl’utilisation des appareils\r\nmobiles. '),
(9, 'A.6.2.2 ', 'Organisationnel', 'Télétravail ', 'Une politique et des\r\nmesures de sécurité\r\ncomplémentaires doivent\r\nêtre mises en œuvre pour\r\nprotéger les informations\r\nconsultées, traitées ou\r\nstockées sur des sites de\r\ntélétravail. '),
(10, 'A.7.1.1 ', 'Organisationnel', 'Sélection des candidats  ', 'Des vérifications doivent\r\nêtre effectuées sur tous les\r\ncandidats à l’embauche\r\nconformément aux lois,\r\naux règlements et à\r\nl’éthique et être\r\nproportionnées aux\r\nexigences métier, à la classification des\r\ninformations accessibles et\r\naux risques identifiés.  '),
(11, 'A.7.1.2 ', 'Organisationnel', 'Termes et conditions\r\nd’embauche ', 'Les accords contractuels\r\nentre les salariés et les\r\nsous-traitants doivent\r\npréciser leurs\r\nresponsabilités et celles de\r\nl’organisme en matière de\r\nsécurité de l’information. '),
(12, 'A.7.2.1 ', 'Organisationnel', 'Responsabilités de la\r\ndirection ', 'La direction doit demander\r\nà tous les salariés et soustraitants d’appliquer\r\nles règles de sécurité de\r\nl’information conformément aux\r\npolitiques et aux\r\nprocédures en vigueur\r\ndans l’organisme.'),
(13, 'A.7.2.2 ', 'Organisationnel', 'Sensibilisation,\r\napprentissage\r\net formation à\r\nla sécurité de\r\nl’information', 'L’ensemble des salariés de\r\nl’organisme et, quand cela\r\nest pertinent, des soustraitants, doit bénéficier\r\nd’une sensibilisation et de\r\nformations adaptées et\r\nrecevoir régulièrement les\r\nmises à jour des politiques\r\net procédures de\r\nl’organisme s’appliquant à\r\nleurs fonctions. '),
(14, 'A.7.2.3 ', 'Organisationnel', 'Processus disciplinaire ', 'Un processus disciplinaire\r\nformel et connu de tous\r\ndoit exister pour prendre\r\ndes mesures à l’encontre\r\ndes salariés ayant enfreint\r\nles règles liées à la sécurité\r\nde l’information.'),
(15, 'A.7.3.1', 'Organisationnel', 'Achèvement ou\r\nmodification\r\ndes responsabilités\r\nassociées au\r\ncontrat de travail ', 'Les responsabilités et les\r\nmissions liées à la sécurité\r\nde l’information qui\r\nrestent valables à l’issue de\r\nla rupture, du terme ou de\r\nla modification du\r\ncontrat de travail, doivent\r\nêtre définies,\r\ncommuniquées au salarié\r\nou au sous-traitant, et\r\nappliquées.'),
(16, 'A.7.3.1', 'Technique', 'Achèvement ou\r\nmodification\r\ndes responsabilités\r\nassociées au\r\ncontrat de travail ', 'Les responsabilités et les\r\nmissions liées à la sécurité\r\nde l’information qui\r\nrestent valables à l’issue de\r\nla rupture, du terme ou de\r\nla modification du\r\ncontrat de travail, doivent\r\nêtre définies,\r\ncommuniquées au salarié\r\nou au sous-traitant, et\r\nappliquées.'),
(17, 'A.8.1.1 ', 'Organisationnel', 'Inventaire des actifs ', 'Les actifs associés à\r\nl’information et aux\r\nmoyens de traitement de\r\nl’information\r\ndoivent être identifiés et\r\nun inventaire de ces actifs\r\ndoit être dressé\r\net tenu à jour. '),
(18, 'A.8.1.2', 'Organisationnel', 'Propriété des actifs ', 'Les actifs figurant à\r\nl’inventaire doivent être\r\nattribués à un propriétaire. '),
(19, 'A.8.1.3', 'Organisationnel', 'Utilisation correcte des\r\nactifs ', 'Les règles d’utilisation\r\ncorrecte de l’information,\r\nles actifs associés à\r\nl’information et les moyens\r\nde traitement de\r\nl’information doivent être\r\nidentifiées, documentées\r\net mises en œuvre. '),
(20, 'A.8.1.4', 'Organisationnel', 'Restitution des actifs ', 'Tous les salariés et les\r\nutilisateurs tiers doivent\r\nrestituer la totalité des\r\nactifs de l’organisme qu’ils\r\nont en leur possession au\r\nterme de la période\r\nd’emploi, du contrat ou de\r\nl’accord. '),
(21, 'A.8.1.4', 'Technique', 'Restitution des actifs ', 'Tous les salariés et les\r\nutilisateurs tiers doivent\r\nrestituer la totalité des\r\nactifs de l’organisme qu’ils\r\nont en leur possession au\r\nterme de la période\r\nd’emploi, du contrat ou de\r\nl’accord. '),
(22, 'A.8.2.1', 'Organisationnel', 'Classification des\r\ninformations ', 'Les informations doivent\r\nêtre classifiées en termes\r\nd’exigences légales, de\r\nvaleur, de caractère\r\ncritique et de sensibilité au\r\nregard d’une divulgation ou\r\nmodification non autorisée.'),
(23, 'A.8.2.1', 'Technique', 'Classification des\r\ninformations ', 'Les informations doivent\r\nêtre classifiées en termes\r\nd’exigences légales, de\r\nvaleur, de caractère\r\ncritique et de sensibilité au\r\nregard d’une divulgation ou\r\nmodification non autorisée.'),
(24, 'A.8.2.2', 'Organisationnel', 'Marquage des\r\ninformations', 'Un ensemble approprié de\r\nprocédures pour le\r\nmarquage de l’information\r\ndoit être élaboré et mis en\r\nœuvre conformément au plan de classification\r\nadopté par l’organisme. '),
(25, 'A.8.2.3', 'Organisationnel', 'Manipulation des actifs', 'Des procédures de\r\ntraitement de l’information\r\ndoivent être élaborées et\r\nmises en œuvre\r\nconformément au plan de\r\nclassification de\r\nl’information\r\nadopté par l’organisme. '),
(26, 'A.8.2.3', 'Physique', 'Manipulation des actifs', 'Des procédures de\r\ntraitement de l’information\r\ndoivent être élaborées et\r\nmises en œuvre\r\nconformément au plan de\r\nclassification de\r\nl’information\r\nadopté par l’organisme. '),
(27, 'A.8.3.1 ', 'Physique', 'Gestion des supports\r\namovibles ', 'Des procédures de gestion\r\ndes supports amovibles\r\ndoivent être mises en\r\nœuvre conformément au\r\nplan de classification\r\nadopté par l’organisme. '),
(28, 'A.8.3.1 ', 'Organisationnel', 'Gestion des supports\r\namovibles ', 'Des procédures de gestion\r\ndes supports amovibles\r\ndoivent être mises en\r\nœuvre conformément au\r\nplan de classification\r\nadopté par l’organisme. '),
(29, 'A.8.3.2 ', 'Organisationnel', 'Mise au rebut des\r\nsupports ', 'Les supports qui ne sont\r\nplus nécessaires doivent\r\nêtre mis au rebut de\r\nmanière sécurisée en\r\nsuivant des procédures\r\nformelles. '),
(30, 'A.8.3.3 ', 'Organisationnel', 'Transfert physique des\r\nsupports', 'Les supports contenant de\r\nl’information doivent être\r\nprotégés contre les accès\r\nnon autorisés, les erreurs\r\nd’utilisation et l’altération\r\nlors du transport. '),
(31, 'A.8.3.3 ', 'Physique', 'Transfert physique des\r\nsupports', 'Les supports contenant de\r\nl’information doivent être\r\nprotégés contre les accès\r\nnon autorisés, les erreurs\r\nd’utilisation et l’altération\r\nlors du transport. '),
(32, 'A.9.1.1', 'Organisationnel', 'Politique de contrôle\r\nd’accès', 'Une politique de contrôle\r\nd’accès doit être établie,\r\ndocumentée et revue sur la base des exigences\r\nmétier et de sécurité de\r\nl’information. '),
(33, 'A.9.1.2', 'Organisationnel', 'Accès aux réseaux et\r\naux services réseau ', 'Les utilisateurs doivent\r\navoir uniquement accès au\r\nréseau et aux services\r\nréseau pour lesquels ils ont\r\nspécifiquement reçu une\r\nautorisation.'),
(34, 'A.9.2.1 ', 'Technique', 'Enregistrement et\r\ndésinscription des\r\nutilisateurs', 'Un processus formel\r\nd’enregistrement et de\r\ndésinscription des\r\nutilisateurs\r\ndoit être mis en œuvre\r\npour permettre\r\nl’attribution des droits\r\nd’accès. '),
(35, 'A.9.2.2 ', 'Technique', 'Distribution des accès\r\naux utilisateurs ', 'Un processus formel de\r\ndistribution des accès aux\r\nutilisateurs doit être mis\r\nen œuvre pour attribuer et\r\nretirer des droits d’accès à\r\ntous types d’utilisateurs sur\r\nl’ensemble des services et\r\ndes systèmes. '),
(36, 'A.9.2.3', 'Technique', 'Gestion des droits\r\nd’accès à privilèges ', 'L’allocation et l’utilisation\r\ndes droits d’accès à\r\nprivilèges doivent être\r\nrestreintes et contrôlées. '),
(37, 'A.9.2.4', 'Technique', 'Gestion des\r\ninformations\r\nsecrètes\r\nd’authentification des\r\nutilisateurs ', 'L’attribution des\r\ninformations secrètes\r\nd’authentification doit être\r\nréalisée dans le cadre d’un\r\nprocessus de gestion\r\nformel. '),
(38, 'A.9.2.5', 'Technique', 'Revue des droits\r\nd’accès utilisateurs  ', 'Les propriétaires d’actifs\r\ndoivent vérifier les droits\r\nd’accès des utilisateurs à\r\nintervalles réguliers. '),
(39, 'A.9.2.6', 'Technique', 'Suppression ou\r\nadaptation\r\ndes droits d’accès ', 'Les droits d’accès aux\r\ninformations et aux\r\nmoyens de traitement des\r\ninformations de l’ensemble\r\ndes salariés et utilisateurs\r\ntiers doivent être\r\nsupprimés à la fin de leur\r\npériode d’emploi, ou\r\nadaptés en cas de\r\nmodification du contrat ou\r\nde l’accord. '),
(40, 'A.9.3.1 ', 'Technique', 'Utilisation\r\nd’informations\r\nsecrètes\r\nd’authentification', 'Les utilisateurs doivent\r\nsuivre les pratiques de\r\nl’organisme pour\r\nl’utilisation des informations secrètes\r\nd’authentification. '),
(41, 'A.9.4.1', 'Technique', 'Restriction d’accès à l’information ', 'L’accès à l’information et aux fonctions d’application\r\nsystème doit être restreint\r\nconformément à la\r\npolitique de contrôle\r\nd’accès.'),
(42, 'A.9.4.2', 'Technique', 'Sécuriser les\r\nprocédures\r\nde connexion ', 'Lorsque la politique de\r\ncontrôle d’accès l’exige,\r\nl’accès aux systèmes et aux\r\napplications doit être\r\ncontrôlé par une procédure\r\nde connexion sécurisée.'),
(43, 'A.9.4.3', 'Technique', 'SSystème de gestion des\r\nmots de passe ', 'Les systèmes qui gèrent les\r\nmots de passe doivent être\r\ninteractifs et doivent\r\ngarantir la qualité des mots\r\nde passe.'),
(44, 'A.9.4.4', 'Technique', 'Utilisation de\r\nprogrammes\r\nutilitaires à\r\nprivilèges  ', 'L’utilisation des\r\nprogrammes utilitaires\r\npermettant de contourner\r\nles mesures de sécurité\r\nd’un système ou d’une\r\napplication doit être\r\nlimitée et étroitement contrôlée. '),
(45, 'A.9.4.5', 'Technique', 'Contrôle d’accès au\r\ncode source des\r\nprogrammes ', 'L’accès au code source des\r\nprogrammes doit être\r\nrestreint.'),
(46, 'A.10.1.1', 'Technique', 'Politique d’utilisation\r\ndes mesures\r\ncryptographiques', 'Une politique d’utilisation\r\ndes mesures\r\ncryptographiques en vue\r\nde protéger l’information\r\ndoit être élaborée et mise\r\nen œuvre. '),
(47, 'A.10.1.1', 'Organisationnel', 'Politique d’utilisation\r\ndes mesures\r\ncryptographiques', 'Une politique d’utilisation\r\ndes mesures\r\ncryptographiques en vue\r\nde protéger l’information\r\ndoit être élaborée et mise\r\nen œuvre. '),
(48, 'A.10.1.2', 'Organisationnel', 'Gestion des clés ', 'Une politique sur\r\nl’utilisation, la protection etla durée de vie des clés\r\ncryptographiques doit être\r\nélaborée et mise en œuvre\r\ntout au long de leur cycle\r\nde vie.  '),
(49, 'A.11.1.1 ', 'Physique', 'Périmètre de sécurité\r\nphysique ', 'Des périmètres de sécurité\r\ndoivent être définis et\r\nutilisés pour protéger les\r\nzones contenant\r\nl’information sensible ou\r\ncritique et les moyens de\r\ntraitement de\r\nl’information. '),
(50, 'A.11.1.2', 'Physique', 'Contrôle d’accès\r\nphysique ', 'Les zones sécurisées\r\ndoivent être protégées par\r\ndes contrôles adéquats à\r\nl’entrée pour s’assurer que\r\nseul le personnel autorisé\r\nest admis. '),
(51, 'A.11.1.2', 'Technique', 'Contrôle d’accès\r\nphysique ', 'Les zones sécurisées\r\ndoivent être protégées par\r\ndes contrôles adéquats à\r\nl’entrée pour s’assurer que\r\nseul le personnel autorisé\r\nest admis. '),
(52, 'A.11.1.2', 'Organisationnel', 'Contrôle d’accès\r\nphysique ', 'Les zones sécurisées\r\ndoivent être protégées par\r\ndes contrôles adéquats à\r\nl’entrée pour s’assurer que\r\nseul le personnel autorisé\r\nest admis. '),
(53, 'A.11.1.3', 'Physique', 'Sécurisation des\r\nbureaux, des salles et\r\ndes équipements', 'Des mesures de sécurité\r\nphysique aux bureaux, aux\r\nsalles et aux équipements\r\ndoivent être conçues et\r\nappliquées. '),
(54, 'A.11.1.3', 'Organisationnel', 'Sécurisation des\r\nbureaux, des salles et\r\ndes équipements', 'Des mesures de sécurité\r\nphysique aux bureaux, aux\r\nsalles et aux équipements\r\ndoivent être conçues et\r\nappliquées. '),
(55, 'A.11.1.4', 'Physique', 'Protection contre les\r\nmenaces extérieures et\r\nenvironnementales ', 'Des mesures de protection\r\nphysique contre les\r\ndésastres naturels, les\r\nattaques malveillantes ou\r\nles accidents doivent être\r\nconçues et appliquées. '),
(56, 'A.11.1.5', 'Physique', 'Travail dans les zones\r\nsécurisées ', 'Des procédures pour le\r\ntravail dans les zones\r\nsécurisées doivent être\r\nconçues et appliquées. '),
(57, 'A.11.1.5', 'Organisationnel', 'Travail dans les zones\r\nsécurisées ', 'Des procédures pour le\r\ntravail dans les zones\r\nsécurisées doivent être\r\nconçues et appliquées. '),
(58, 'A.11.1.6', 'Physique', 'Zones de livraison et\r\nde chargement ', 'Les points d’accès tels que\r\nles zones de livraison et de\r\nchargement et les\r\nautres points par lesquels\r\ndes personnes non\r\nautorisées peuvent\r\npénétrer dans les locaux\r\ndoivent être contrôlés et, si\r\npossible, isolés des moyens\r\nde traitement de\r\nl’information, de façon à\r\néviter les accès non\r\nautorisés. '),
(59, 'A.11.2.1 ', 'Physique', 'Emplacement et\r\nprotection\r\ndes matériels ', 'Les matériels doivent être\r\nlocalisés et protégés de\r\nmanière à réduire les\r\nrisques liés à des menaces\r\net des dangers\r\nenvironnementaux et les\r\npossibilités d’accès non\r\nautorisé. '),
(60, 'A.11.2.2', 'Technique', 'Services généraux', 'Les matériels doivent être\r\nprotégés des coupures de\r\ncourant et autres\r\nperturbations dues à une\r\ndéfaillance des services\r\ngénéraux. '),
(61, 'A.11.2.3', 'Physique', 'Sécurité du câblage ', 'Les câbles électriques ou\r\nde télécommunication\r\ntransportant des données\r\nou supportant les services d’information doivent être\r\nprotégés contre toute\r\ninterception ou tout\r\ndommage. '),
(62, 'A.11.2.4', 'Technique', 'Maintenance des\r\nmatériels', 'Les matériels doivent être\r\nentretenus correctement\r\npour garantir leur\r\ndisponibilité permanente et leur intégrité. '),
(63, 'A.11.2.4', 'Organisationnel', 'Maintenance des\r\nmatériels', 'Les matériels doivent être\r\nentretenus correctement\r\npour garantir leur\r\ndisponibilité permanente et leur intégrité. '),
(64, 'A.11.2.5', 'Organisationnel', 'Sortie des actifs ', 'Les matériels, les\r\ninformations ou les\r\nlogiciels des locaux de\r\nl’organisme\r\nne doivent pas sortir sans\r\nautorisation préalable. '),
(65, 'A.11.2.6', 'Organisationnel', ' Sécurité des matériels\r\net des actifs hors des\r\nlocaux ', 'Des mesures de sécurité\r\ndoivent être appliquées\r\naux matériels utilisés hors des locaux de l’organisme\r\nen tenant compte des\r\ndifférents risques associés\r\nau travail hors site. '),
(66, 'A.11.2.6', 'Physique', ' Sécurité des matériels\r\net des actifs hors des\r\nlocaux ', 'Des mesures de sécurité\r\ndoivent être appliquées\r\naux matériels utilisés hors des locaux de l’organisme\r\nen tenant compte des\r\ndifférents risques associés\r\nau travail hors site. '),
(67, 'A.11.2.6', 'Technique', ' Sécurité des matériels\r\net des actifs hors des\r\nlocaux ', 'Des mesures de sécurité\r\ndoivent être appliquées\r\naux matériels utilisés hors des locaux de l’organisme\r\nen tenant compte des\r\ndifférents risques associés\r\nau travail hors site. '),
(68, 'A.11.2.7', 'Technique', 'Mise au rebut ou\r\nrecyclage\r\nsécurisé(e) des\r\nmatériels ', 'Tous les composants des\r\nmatériels contenant des\r\nsupports de stockage\r\ndoivent être vérifiés pour\r\ns’assurer que toute donnée\r\nsensible a bien été\r\nsupprimée et que tout\r\nlogiciel sous licence a bien\r\nété désinstallé ou écrasé\r\nde façon sécurisée, avant\r\nleur mise au rebut ou leur\r\nréutilisation. '),
(69, 'A.11.2.7', 'Organisationnel', 'Mise au rebut ou\r\nrecyclage\r\nsécurisé(e) des\r\nmatériels ', 'Tous les composants des\r\nmatériels contenant des\r\nsupports de stockage\r\ndoivent être vérifiés pour\r\ns’assurer que toute donnée\r\nsensible a bien été\r\nsupprimée et que tout\r\nlogiciel sous licence a bien\r\nété désinstallé ou écrasé\r\nde façon sécurisée, avant\r\nleur mise au rebut ou leur\r\nréutilisation. '),
(70, 'A.11.2.8', 'Organisationnel', 'Matériels utilisateur\r\nlaissés sans surveillance', 'Les utilisateurs doivent\r\ns’assurer que les matériels non surveillés sont\r\ndotés d’une protection\r\nappropriée. '),
(71, 'A.11.2.8', 'Technique', 'Matériels utilisateur\r\nlaissés sans surveillance', 'Les utilisateurs doivent\r\ns’assurer que les matériels non surveillés sont\r\ndotés d’une protection\r\nappropriée. '),
(72, 'A.11.2.9', 'Organisationnel', 'Politique du bureau\r\npropre et de l’écran\r\nvide ', 'Une politique du bureau\r\npropre pour les documents\r\npapier et les supports\r\nde stockage amovibles, et\r\nune politique de l’écran vide pour les\r\nmoyens de traitement de\r\nl’information doivent être\r\nadoptées. '),
(73, 'A.11.2.9', 'Physique', 'Politique du bureau\r\npropre et de l’écran\r\nvide ', 'Une politique du bureau\r\npropre pour les documents\r\npapier et les supports\r\nde stockage amovibles, et\r\nune politique de l’écran vide pour les\r\nmoyens de traitement de\r\nl’information doivent être\r\nadoptées. '),
(74, 'A.11.2.9', 'Technique', 'Politique du bureau\r\npropre et de l’écran\r\nvide ', 'Une politique du bureau\r\npropre pour les documents\r\npapier et les supports\r\nde stockage amovibles, et\r\nune politique de l’écran vide pour les\r\nmoyens de traitement de\r\nl’information doivent être\r\nadoptées. '),
(75, 'A.12.1.1', 'Organisationnel', 'Procédures\r\nd’exploitation\r\ndocumentées ', 'Les procédures\r\nd’exploitation doivent être\r\ndocumentées et mises à\r\ndisposition de tous les\r\nutilisateurs concernés.'),
(76, 'A.12.1.2', 'Organisationnel', 'Gestion des\r\nchangements ', 'Les changements apportés\r\nà l’organisme, aux\r\nprocessus métier, aux\r\nsystèmes et moyens de\r\ntraitement de l’information\r\nayant une incidence sur la\r\nsécurité de l’information\r\ndoivent être contrôlés. '),
(77, 'A.12.1.2', 'Organisationnel', 'Gestion des\r\nchangements ', 'Les changements apportés\r\nà l’organisme, aux\r\nprocessus métier, aux\r\nsystèmes et moyens de\r\ntraitement de l’information\r\nayant une incidence sur la\r\nsécurité de l’information\r\ndoivent être contrôlés. '),
(78, 'A.12.1.3', 'Organisationnel', 'Dimensionnement', 'L’utilisation des ressources\r\ndoit être surveillée et\r\najustée et des projections\r\nsur les dimensionnements\r\nfuturs doivent être\r\neffectuées pour garantir les\r\nperformances exigées du\r\nsystème. '),
(79, 'A.12.1.3', 'Technique', 'Dimensionnement', 'L’utilisation des ressources\r\ndoit être surveillée et\r\najustée et des projections\r\nsur les dimensionnements\r\nfuturs doivent être\r\neffectuées pour garantir les\r\nperformances exigées du\r\nsystème. '),
(80, 'A.12.1.4', 'Technique', 'Séparation des\r\nenvironnements de\r\ndéveloppement, de\r\ntest\r\net d’exploitation ', 'Les environnements de\r\ndéveloppement, de test et\r\nd’exploitation doivent être\r\nséparés pour réduire les\r\nrisques d’accès ou de\r\nchangements non autorisés\r\ndans l’environnement en\r\nexploitation. '),
(81, 'A.12.2.1', 'Organisationnel', 'Mesures contre les\r\nlogiciels malveillants ', 'Des mesures de détection,\r\nde prévention et de\r\nrécupération conjuguées à\r\nune sensibilisation des\r\nutilisateurs adaptée,\r\ndoivent être mises en\r\nœuvre pour se protéger\r\ncontre les logiciels\r\nmalveillants.'),
(82, 'A.12.2.1', 'Technique', 'Mesures contre les\r\nlogiciels malveillants ', 'Des mesures de détection,\r\nde prévention et de\r\nrécupération conjuguées à\r\nune sensibilisation des\r\nutilisateurs adaptée,\r\ndoivent être mises en\r\nœuvre pour se protéger\r\ncontre les logiciels\r\nmalveillants.'),
(83, 'A.12.3.1', 'Technique', 'Sauvegarde des\r\ninformations ', 'Des copies de sauvegarde\r\nde l’information, des\r\nlogiciels et des images\r\nsystèmes doivent être\r\nréalisés et testés\r\nrégulièrement\r\nconformément à une\r\npolitique de sauvegarde\r\nconvenue. '),
(84, 'A.12.3.1', 'Physique', 'Sauvegarde des\r\ninformations ', 'Des copies de sauvegarde\r\nde l’information, des\r\nlogiciels et des images\r\nsystèmes doivent être\r\nréalisés et testés\r\nrégulièrement\r\nconformément à une\r\npolitique de sauvegarde\r\nconvenue. '),
(85, 'A.12.3.1', 'Organisationnel', 'Sauvegarde des\r\ninformations ', 'Des copies de sauvegarde\r\nde l’information, des\r\nlogiciels et des images\r\nsystèmes doivent être\r\nréalisés et testés\r\nrégulièrement\r\nconformément à une\r\npolitique de sauvegarde\r\nconvenue. '),
(86, 'A.12.4.1', 'Organisationnel', 'Journalisation des\r\névénements ', 'Des journaux\r\nd’événements enregistrant\r\nles activités de l’utilisateur,\r\nles exceptions, les\r\ndéfaillances et les\r\névénements liés à la\r\nsécurité de l’information\r\ndoivent être créés, tenus à jour et vérifiés\r\nrégulièrement. '),
(87, 'A.12.4.1', 'Technique', 'Journalisation des\r\névénements ', 'Des journaux\r\nd’événements enregistrant\r\nles activités de l’utilisateur,\r\nles exceptions, les\r\ndéfaillances et les\r\névénements liés à la\r\nsécurité de l’information\r\ndoivent être créés, tenus à jour et vérifiés\r\nrégulièrement. '),
(88, 'A.12.4.2', 'Technique', 'Protection de\r\nl’information\r\njournalisée ', 'Les moyens de\r\njournalisation et\r\nd’information journalisée\r\ndoivent être protégés\r\ncontre les risques de\r\nfalsification ou d’accès non\r\nautorisé. '),
(89, 'A.12.4.3', 'Technique', 'Journaux\r\nadministrateur\r\net opérateur ', 'Les activités de\r\nl’administrateur système et\r\nde l’opérateur système\r\ndoivent être journalisées,\r\nprotégées et vérifiées\r\nrégulièrement. '),
(90, 'A.12.4.4', 'Technique', 'Synchronisation des\r\nhorloges ', 'Les horloges de l’ensemble\r\ndes systèmes de traitement\r\nde l’information concernés\r\nd’un organisation ou d’un\r\ndomaine de sécurité\r\ndoivent être\r\nsynchronisées sur une\r\nsource de référence\r\ntemporelle unique. '),
(91, 'A.12.5.1', 'Technique', 'Installation de logiciels\r\nsur des systèmes en\r\nexploitation ', 'Des procédures doivent\r\nêtre mises en œuvre pour\r\ncontrôler l’installation de\r\nlogiciel sur des systèmes en\r\nexploitation. '),
(92, 'A.12.5.1', 'Organisationnel', 'Installation de logiciels\r\nsur des systèmes en\r\nexploitation ', 'Des procédures doivent\r\nêtre mises en œuvre pour\r\ncontrôler l’installation de\r\nlogiciel sur des systèmes en\r\nexploitation. '),
(93, 'A.12.6.1', 'Organisationnel', 'Gestion des\r\nvulnérabilités\r\ntechniques ', 'Des informations sur les\r\nvulnérabilités techniques\r\ndes systèmes d’information\r\nen exploitation doivent\r\nêtre obtenues en temps\r\nopportun, l’exposition\r\nde l’organisme à ces\r\nvulnérabilités doit être\r\névaluée et les mesures\r\nappropriées doivent être\r\nprises pour traiter le risque\r\nassocié.'),
(94, 'A.12.6.1', 'Technique', 'Gestion des\r\nvulnérabilités\r\ntechniques ', 'Des informations sur les\r\nvulnérabilités techniques\r\ndes systèmes d’information\r\nen exploitation doivent\r\nêtre obtenues en temps\r\nopportun, l’exposition\r\nde l’organisme à ces\r\nvulnérabilités doit être\r\névaluée et les mesures\r\nappropriées doivent être\r\nprises pour traiter le risque\r\nassocié.'),
(95, 'A.12.6.2', 'Organisationnel', 'Restrictions liées à\r\nl’installation de\r\nlogiciels', 'Des règles régissant\r\nl’installation de logiciels\r\npar les utilisateurs doivent\r\nêtre établies et mises en\r\nœuvre. '),
(96, 'A.12.7.1', 'Organisationnel', 'Mesures relatives à\r\nl’audit des systèmes\r\nd’information', 'Les exigences et activités\r\nd’audit impliquant des\r\nvérifications sur des\r\nsystèmes en exploitation\r\ndoivent être prévues avec\r\nsoin et validées afin de\r\nréduire au minimum les\r\nperturbations subies par\r\nles processus métier. '),
(97, 'A.13.1.1', 'Organisationnel', 'Contrôle des réseaux ', 'Les réseaux doivent être\r\ngérés et contrôlés pour protéger l’information\r\ncontenue dans les\r\nsystèmes et les\r\napplications. '),
(98, 'A.13.1.1', 'Technique', 'Contrôle des réseaux ', 'Les réseaux doivent être\r\ngérés et contrôlés pour protéger l’information\r\ncontenue dans les\r\nsystèmes et les\r\napplications. '),
(99, 'A.13.1.2', 'Organisationnel', 'Sécurité des services\r\nde réseau ', 'Pour tous les services de\r\nréseau, les mécanismes de\r\nsécurité, les niveaux de\r\nservice et les exigences de\r\ngestion, doivent être\r\nidentifiés et intégrés dans les accords de services de\r\nréseau, que ces services\r\nsoient fournis en interne\r\nou externalisés. '),
(100, 'A.13.1.3', 'Technique', 'Cloisonnement des\r\nréseaux ', 'Les groupes de services\r\nd’information,\r\nd’utilisateurs et de\r\nsystèmes d’information\r\ndoivent être cloisonnés sur\r\nles réseaux. '),
(101, 'A.13.2.1', 'Organisationnel', 'Politiques et\r\nprocédures\r\nde transfert de\r\nl’information ', 'Des politiques, des\r\nprocédures et des mesures\r\nde transfert formelles\r\ndoivent être mises en place\r\npour protéger les transferts\r\nd’information transitant\r\npar tous types\r\nd’équipements de\r\ncommunication. '),
(102, 'A.13.2.1', 'Technique', 'Politiques et\r\nprocédures\r\nde transfert de\r\nl’information ', 'Des politiques, des\r\nprocédures et des mesures\r\nde transfert formelles\r\ndoivent être mises en place\r\npour protéger les transferts\r\nd’information transitant\r\npar tous types\r\nd’équipements de\r\ncommunication. '),
(103, 'A.13.2.2', 'Organisationnel', 'Accords en matière de\r\ntransfert d’information ', 'Des accords doivent traiter\r\ndu transfert sécurisé de\r\nl’information liée à\r\nl’activité entre l’organisme\r\net les tiers.'),
(104, 'A.13.2.2', 'Technique', 'Accords en matière de\r\ntransfert d’information ', 'Des accords doivent traiter\r\ndu transfert sécurisé de\r\nl’information liée à\r\nl’activité entre l’organisme\r\net les tiers.'),
(105, 'A.13.2.3', 'Technique', 'Messagerie\r\nélectronique ', 'L’information transitant\r\npar la messagerie\r\nélectronique doit être\r\nprotégée de manière\r\nappropriée. '),
(106, 'A.13.2.3', 'Organisationnel', 'Messagerie\r\nélectronique ', 'L’information transitant\r\npar la messagerie\r\nélectronique doit être\r\nprotégée de manière\r\nappropriée. '),
(107, 'A.13.2.4', 'Organisationnel', 'Engagements de\r\nconfidentialité ou de\r\nnon-divulgation ', 'Les exigences en matière\r\nd’engagements de\r\nconfidentialité ou de nondivulgation, doivent être\r\nidentifiées, vérifiées\r\nrégulièrement et\r\ndocumentées\r\nconformément aux besoins\r\nde l’organisme. '),
(108, 'A.14.1.1', 'Organisationnel', 'Analyse et spécification\r\ndes exigences de\r\nsécurité de\r\nl’information ', 'Les exigences liées à la\r\nsécurité de l’information\r\ndoivent être intégrées aux\r\nexigences des nouveaux\r\nsystèmes d’information ou\r\ndes améliorations de\r\nsystèmes d’information\r\nexistants. '),
(109, 'A.14.1.2', 'Organisationnel', 'Sécurisation des\r\nservices\r\nd’application sur\r\nles réseaux publics', 'Les informations liées aux\r\nservices d’application\r\ntransmises sur les réseaux\r\npublics doivent être\r\nprotégées contre les\r\nactivités frauduleuses, les\r\ndifférents\r\ncontractuels, ainsi que la\r\ndivulgation et la\r\nmodification non\r\nautorisées. '),
(110, 'A.14.1.2', 'Technique', 'Sécurisation des\r\nservices\r\nd’application sur\r\nles réseaux publics', 'Les informations liées aux\r\nservices d’application\r\ntransmises sur les réseaux\r\npublics doivent être\r\nprotégées contre les\r\nactivités frauduleuses, les\r\ndifférents\r\ncontractuels, ainsi que la\r\ndivulgation et la\r\nmodification non\r\nautorisées. '),
(111, 'A.14.1.3', 'Technique', 'Protection des\r\ntransactions\r\nliées aux services\r\nd’application ', 'Les informations\r\nimpliquées dans les\r\ntransactions liées aux\r\nservices\r\nd’application doivent être\r\nprotégées pour empêcher\r\nune transmission\r\nincomplète, des erreurs\r\nd’acheminement, la\r\nmodification non autorisée,\r\nla divulgation non\r\nautorisée, la duplication\r\nnon autorisée du message\r\nou sa réémission.'),
(112, 'A.14.2.1', 'Organisationnel', 'Politique de\r\ndéveloppement\r\nsécurisé ', 'Des règles de\r\ndéveloppement des\r\nlogiciels et des systèmes\r\ndoivent être\r\nétablies et appliquées aux\r\ndéveloppements de\r\nl’organisme.'),
(113, 'A.14.2.2', 'Organisationnel', 'Procédures de contrôle\r\ndes changements de\r\nsystème ', 'Les changements des\r\nsystèmes dans le cadre du\r\ncycle de développement\r\ndoivent être contrôlés par\r\nle biais de procédures\r\nformelles. '),
(114, 'A.14.2.3', 'Technique', 'Revue technique des\r\napplications après\r\nchangement apporté à\r\nla plateforme\r\nd’exploitation', 'Lorsque des changements\r\nsont apportés aux\r\nplateformes d’exploitation,\r\nles applications critiques\r\nmétier doivent être\r\nvérifiées et testées afin de\r\nvérifier\r\nl’absence de tout effet\r\nindésirable sur l’activité ou\r\nsur la sécurité. '),
(115, 'A.14.2.4', 'Organisationnel', 'Restrictions relatives\r\naux changements\r\napportés aux progiciels ', 'Les modifications des\r\nprogiciels ne doivent pas\r\nêtre encouragées, être\r\nlimitées aux changements\r\nnécessaires et tout\r\nchangement doit être\r\nstrictement contrôlé. '),
(116, 'A.14.2.5', 'Organisationnel', 'Principes d’ingénierie de la sécurité des\r\nsystèmes', 'Des principes d’ingénierie de la sécurité des systèmes\r\ndoivent être établis,\r\ndocumentés, tenus à jour\r\net appliqués à tous les\r\ntravaux de mise en œuvre\r\ndes systèmes\r\nd’information. '),
(117, 'A.14.2.6', 'Organisationnel', 'Environnement de\r\ndéveloppement\r\nsécurisé ', 'Les organismes doivent\r\nétablir des environnements\r\nde développement\r\nsécurisés pour les tâches\r\nde développement et\r\nd’intégration du système, qui englobe l’intégralité du\r\ncycle de vie du\r\ndéveloppement du\r\nsystème, et en assurer la\r\nprotection de manière\r\nappropriée. '),
(118, 'A.14.2.6', 'Technique', 'Environnement de\r\ndéveloppement\r\nsécurisé ', 'Les organismes doivent\r\nétablir des environnements\r\nde développement\r\nsécurisés pour les tâches\r\nde développement et\r\nd’intégration du système, qui englobe l’intégralité du\r\ncycle de vie du\r\ndéveloppement du\r\nsystème, et en assurer la\r\nprotection de manière\r\nappropriée. '),
(119, 'A.14.2.7', 'Organisationnel', 'Développement\r\nexternalisé ', 'L’organisme doit superviser\r\net contrôler l’activité de\r\ndéveloppement du\r\nsystème externalisée. '),
(120, 'A.14.2.8', 'Technique', 'Test de la sécurité du\r\nsystème ', 'Les tests de fonctionnalité\r\nde la sécurité doivent être\r\nréalisés pendant le\r\ndéveloppement.'),
(121, 'A.14.2.9', 'Technique', 'Test de conformité du\r\nsystème ', 'Des programmes de test de\r\nconformité et des critères\r\nassociés doivent être\r\ndéterminés pour les\r\nnouveaux systèmes\r\nd’information, les mises à\r\njour et les nouvelles\r\nversions. '),
(122, 'A.14.3.1', 'Technique', 'Protection des données\r\nde test ', 'Les données de test\r\ndoivent être sélectionnées\r\navec soin, protégées et\r\nContrôlées.'),
(123, 'A.14.3.1', 'Organisationnel', 'Protection des données\r\nde test ', 'Les données de test\r\ndoivent être sélectionnées\r\navec soin, protégées et\r\nContrôlées.'),
(124, 'A.15.1.1', 'Organisationnel', 'Politique de sécurité\r\nde l’information dans\r\nles relations avec les\r\nfournisseurs ', 'Des exigences de sécurité\r\nde l’information pour\r\nlimiter les risques résultant\r\nde l’accès des fournisseurs\r\naux actifs de l’organisme\r\ndoivent être acceptées par\r\nle fournisseur et\r\ndocumentées'),
(125, 'A.15.1.2', 'Organisationnel', 'La sécurité dans les\r\naccords conclus avec\r\nles fournisseurs', 'Les exigences applicables\r\nliées à la sécurité de\r\nl’information doivent être\r\nétablies et convenues avec\r\nchaque fournisseur\r\npouvant accéder, traiter,\r\nstocker, communiquer ou\r\nfournir des composants de l’infrastructure\r\ninformatique destinés à\r\nl’information de\r\nl’organisme. '),
(126, 'A.15.1.3', 'Organisationnel', 'Chaîne\r\nd’approvisionnement\r\ndes produits et\r\ndes services\r\ninformatiques', 'Les accords conclus avec\r\nles fournisseurs doivent\r\ninclure des exigences sur le\r\ntraitement des risques liés\r\nà la sécurité de\r\nl’information associé à la\r\nchaîne\r\nd’approvisionnement des\r\nproduits et des services\r\ninformatiques. '),
(127, 'A.15.2.1', 'Organisationnel', 'Surveillance et revue\r\ndes services des\r\nfournisseurs ', 'Les organismes doivent\r\nsurveiller, vérifier et\r\nauditer à intervalles\r\nréguliers la prestation des\r\nservices assurés par les\r\nfournisseurs. '),
(128, 'A.15.2.2', 'Organisationnel', 'Gestion des\r\nchangements\r\napportés dans\r\nles services des\r\nfournisseurs ', 'Les changements effectués\r\ndans les prestations de\r\nservice des fournisseurs,\r\ncomprenant le maintien et\r\nl’amélioration des\r\npolitiques, procédures et\r\nmesures existant en\r\nmatière de sécurité de\r\nl’information, doivent être\r\ngérés en tenant compte du\r\ncaractère critique de\r\nl’information, des systèmes\r\net des processus concernés\r\net de la réappréciation des\r\nrisques.'),
(129, 'A.16.1.1', 'Organisationnel', 'Responsabilités et\r\nprocédures ', 'Des responsabilités et des\r\nprocédures permettant de\r\ngarantir une réponse\r\nrapide, efficace et\r\npertinente doivent être\r\nétablies en cas d’incident\r\nlié à la\r\nsécurité de l’information.'),
(130, 'A.16.1.2', 'Organisationnel', 'Signalement des\r\névénements\r\nliés à la sécurité\r\nde l’information ', 'Les événements liés à la\r\nsécurité de l’information\r\ndoivent être signalés dans\r\nles meilleurs délais par les\r\nvoies hiérarchiques\r\nappropriées.'),
(131, 'A.16.1.3', 'Organisationnel', 'Signalement des failles\r\nliées à la sécurité de\r\nl’information ', 'Les salariés et les soustraitants utilisant les\r\nsystèmes et services\r\nd’information de\r\nl’organisme doivent noter\r\net signaler toute faille de\r\nsécurité observée ou\r\nsoupçonnée dans les\r\nsystèmes ou services.'),
(132, 'A.16.1.4', 'Technique', 'Appréciation des\r\névénements\r\nliés à la sécurité\r\nde l’information et\r\nprise de décision ', 'Les événements liés à la\r\nsécurité de l’information\r\ndoivent être appréciés et\r\nil doit être décidé s’il faut\r\nles classer comme\r\nincidents liés à la sécurité\r\nde l’information. '),
(133, 'A.16.1.5', 'Technique', 'Réponse aux incidents\r\nliés à la sécurité de\r\nl’information', 'Les incidents liés à la\r\nsécurité de l’information\r\ndoivent être traités\r\nconformément aux\r\nprocédures documentées.'),
(134, 'A.16.1.5', 'Organisationnel', 'Réponse aux incidents\r\nliés à la sécurité de\r\nl’information', 'Les incidents liés à la\r\nsécurité de l’information\r\ndoivent être traités\r\nconformément aux\r\nprocédures documentées.'),
(135, 'A.16.1.6', 'Technique', 'Tirer des\r\nenseignements\r\ndes incidents\r\nliés à la sécurité de\r\nl’information ', 'Les connaissances\r\nrecueillies suite à l’analyse\r\net la résolution d’incidents\r\ndoivent être utilisées pour\r\nréduire la probabilité ou\r\nl’impact d’incidents\r\nultérieurs. '),
(136, 'A.16.1.7', 'Organisationnel', 'Collecte de preuves ', 'L’organisme doit définir et appliquer des procédures\r\nd’identification, de\r\ncollecte, d’acquisition et de\r\nprotection de l’information\r\npouvant servir de preuve. '),
(137, 'A.17.1.1', 'Organisationnel', 'Organisation de la\r\ncontinuité de la\r\nsécurité de\r\nl’information', 'L’organisme doit\r\ndéterminer ses exigences\r\nen matière de sécurité de\r\nl’information et de\r\ncontinuité de management de la sécurité de\r\nl’information dans des\r\nsituations défavorables,\r\ncomme lors d’une crise ou\r\nd’un sinistre.'),
(138, 'A.17.1.2', 'Organisationnel', 'Mise en œuvre de la\r\ncontinuité de la\r\nsécurité\r\nde l’information ', 'L’organisme doit établir,\r\ndocumenter, mettre en\r\nœuvre et tenir à jour des\r\nprocessus, des procédures\r\net des mesures permettant\r\nde fournir le niveau requis\r\nde continuité de sécurité\r\nde l’information au cours\r\nd’une situation défavorable. '),
(139, 'A.17.1.3', 'Organisationnel', 'Vérifier, revoir et\r\névaluer la continuité de\r\nla sécurité de\r\nl’information ', 'L’organisme doit vérifier\r\nles mesures de continuité\r\nde la sécurité de\r\nl’information mises en\r\nœuvre à intervalles réguliers afin de s’assurer\r\nqu’elles sont valables et\r\nefficaces dans des\r\nsituations défavorables. '),
(140, 'A.17.2.1', 'Technique', ' Disponibilité des\r\nmoyens de traitement\r\nde l’information ', 'Des moyens de traitement\r\nde l’information doivent\r\nêtre mis en œuvre avec\r\nsuffisamment de\r\nredondances pour\r\nrépondre aux exigences de\r\ndisponibilité. '),
(141, 'A.18.1.1', 'Organisationnel', 'Identification de la\r\nlégislation et des\r\nexigences\r\ncontractuelles\r\napplicables ', 'Toutes les exigences\r\nlégales, statutaires,\r\nréglementaires et\r\ncontractuelles en vigueur,\r\nainsi que l’approche\r\nadoptée par l’organisme\r\npour satisfaire à ces\r\nexigences, doivent être\r\nexplicitement définies,\r\ndocumentées et mises à\r\njour pour chaque système\r\nd’information et pour\r\nl’organisme elle-même. '),
(142, 'A.18.1.2', 'Organisationnel', 'Droits de propriété\r\nintellectuelle ', 'Des procédures\r\nappropriées doivent être\r\nmises en œuvre pour\r\ngarantir la conformité avec\r\nles exigences légales,\r\nréglementaires et\r\ncontractuelles relatives à la\r\npropriété intellectuelle et à l’usage des licences de\r\nlogiciels propriétaires.'),
(143, 'A.18.1.2', 'Technique', 'Droits de propriété\r\nintellectuelle ', 'Des procédures\r\nappropriées doivent être\r\nmises en œuvre pour\r\ngarantir la conformité avec\r\nles exigences légales,\r\nréglementaires et\r\ncontractuelles relatives à la\r\npropriété intellectuelle et à l’usage des licences de\r\nlogiciels propriétaires.'),
(144, 'A.18.1.3', 'Organisationnel', 'Protection des\r\nenregistrements ', 'Les enregistrements\r\ndoivent être protégés de la\r\nperte, de la destruction, de\r\nla falsification, des accès\r\nnon autorisés et des\r\ndiffusions non autorisées,\r\nconformément aux\r\nexigences légales,\r\nréglementaires,\r\ncontractuelles et aux\r\nexigences métier. '),
(145, 'A.18.1.3', 'Technique', 'Protection des\r\nenregistrements ', 'Les enregistrements\r\ndoivent être protégés de la\r\nperte, de la destruction, de\r\nla falsification, des accès\r\nnon autorisés et des\r\ndiffusions non autorisées,\r\nconformément aux\r\nexigences légales,\r\nréglementaires,\r\ncontractuelles et aux\r\nexigences métier. '),
(146, 'A.18.1.4', 'Organisationnel', 'Protection de la vie\r\nprivée et protection\r\ndes données à\r\ncaractère personnel ', 'La protection de la vie\r\nprivée et la protection des\r\ndonnées à caractère\r\npersonnel doivent être\r\ngaranties telles que\r\nl’exigent la législation ou\r\nles réglementations\r\napplicables, et les clauses\r\ncontractuelles le cas\r\néchéant. '),
(147, 'A.18.1.5', 'Organisationnel', 'Réglementation\r\nrelative aux mesures\r\ncryptographiques', 'Des mesures\r\ncryptographiques doivent\r\nêtre prises conformément\r\naux accords, législation et\r\nréglementations\r\napplicables.'),
(148, 'A.18.2.1', 'Organisationnel', 'Revue indépendante\r\nde la sécurité de\r\nl’information', 'Des revues régulières et\r\nindépendantes de\r\nl’approche retenue par\r\nl’organisme pour gérer et\r\nmettre en œuvre la\r\nsécurité de l’information (à\r\nsavoir le suivi des objectifs\r\nde sécurité, les mesures,\r\nles politiques, les\r\nprocédures et les\r\nprocessus relatifs à la\r\nsécurité de l’information)\r\ndoivent être effectuées à\r\nintervalles définis ou lorsque des changements\r\nimportants sont\r\nintervenus.'),
(149, 'A.18.2.2', 'Organisationnel', 'Conformité avec\r\nles politiques et les\r\nnormes de sécurité', 'Les responsables doivent\r\nrégulièrement vérifier la\r\nconformité du traitement\r\nde l’information et des\r\nprocédures dont ils sont\r\nchargés au regard des\r\npolitiques, des normes de\r\nsécurité applicables et\r\nautres exigences de\r\nsécurité. '),
(150, 'A.18.2.3', 'Organisationnel', 'Vérification de la\r\nconformité technique', 'Les systèmes d’information\r\ndoivent être examinés\r\nrégulièrement quant à\r\nleur conformité avec les\r\npolitiques et les normes de\r\nsécurité de l’information\r\nde l’organisme.'),
(8355, 'farouk', 'Physique', 'oih ', 'kjkhn pijb oi oijh oi iuh io'),
(34966, 'cc', 'Technique', 'ce', 'cc'),
(354925, 'qergez', 'Technique', 'lsjkrv', ';kqrn'),
(400876, 'ff', 'Technical', 'aa', 'kjgh oig ougy'),
(425225, 'ihboiu', 'Technical', 'lkjb', 'lkj oijbno'),
(543684, 'zz', 'Technique', 'zzz', 'zzz'),
(552655, 'xx', 'Organisationnel', 'xx', 'xx'),
(649767, 'C.1.1.1', 'Physical', 'lskjvrbe', 'qslkjfn  oisdbfvodsji'),
(789129, 'exmpl', 'Technique', 'exmpl', 'exmpl'),
(891130, 'aa', 'Technique', 'aa', 'aa');

-- --------------------------------------------------------

--
-- Structure de la table `gapAnalysis`
--

CREATE TABLE `gapAnalysis` (
  `id` int(11) NOT NULL,
  `ismsStage` text NOT NULL,
  `requiredTargetState` text NOT NULL,
  `isoClause` text NOT NULL,
  `statement` text NOT NULL,
  `conformity` text NOT NULL,
  `observations` text NOT NULL,
  `recommendations` text NOT NULL,
  `informalComment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `gapAnalysis`
--

INSERT INTO `gapAnalysis` (`id`, `ismsStage`, `requiredTargetState`, `isoClause`, `statement`, `conformity`, `observations`, `recommendations`, `informalComment`) VALUES
(1, 'Plan', 'ISMS Scope', 'The scope and boundaries of the information security management system\r\n                                should be documented in terms of the characteristics of the business, the organization,\r\n                                its location, assets and technology and considering following points:', '4.1 Understanding the organization and its context', 'The organization shall determine external and internal issues that are relevant to its\r\n                                purpose and that affect its ability to achieve the intended outcome(s) of its\r\n                                information security management system.', '[value-7]', '[value-8]', '[value-9]'),
(2, 'Plan', 'ISMS Scope', 'The scope and boundaries of the information security management system\r\n                                should be documented in terms of the characteristics of the business, the organization,\r\n                                its location, assets and technology and considering following points:', '4.2 Understanding the needs and expectations of interested parties (a)', 'a) The organization shall determine interested parties that are relevant to the\r\n                                information security management system; ', 'Major non-conformities', '[8]', 'value'),
(3, 'Plan', 'ISMS Scope', 'The scope and boundaries of the information security management system\r\n                                should be documented in terms of the characteristics of the business, the organization,\r\n                                its location, assets and technology and considering following points:', '4.2 Understanding the needs and expectations of interested parties (b)', 'b) The organization shall determine the requirements of these interested parties\r\n                                relevant to information security. ', 'Minor non-conformities', '[00]', 'value!!');

-- --------------------------------------------------------

--
-- Structure de la table `incident`
--

CREATE TABLE `incident` (
  `id` int(11) NOT NULL,
  `criteria` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `threat` text DEFAULT NULL,
  `vulnerability` text DEFAULT NULL,
  `incidentScenario` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `incident`
--

INSERT INTO `incident` (`id`, `criteria`, `category`, `threat`, `vulnerability`, `incidentScenario`) VALUES
(1, '', '[value-2]', '[value-3]', '[value-4]', '[value-5]'),
(2, 'Confideantiality', 'Software', 'Theft of Software Source Code\r\n', 'Unsupervised work by outside staff or staff working outside normal business  hours', 'N/A'),
(3, 'Confideantiality', 'Software', 'Malicious software\r\n', 'Unsupervised work by outside staff or staff working outside normal business  hours', 'Malicious code may bypass the outdated anti-malware software and result in compromising the information.\r\n'),
(4, 'Integrity', 'Software', 'Malicious software\r\n', 'Unsupervised work by outside staff or staff working outside normal business  hours', 'Malicious code may bypass the outdated anti-malware software and result in compromising the information.\r\n'),
(5, 'Availability', 'Software', 'Malicious software\r\n', 'Unsupervised work by outside staff or staff working outside normal business  hours', 'Malicious code may bypass the outdated anti-malware software and result in compromising the information.\r\n'),
(6, 'Availability', 'Software', 'Malicious software\r\n', 'Lack of updates for malicious code protection software', 'Malicious code may bypass the outdated anti-malware software and result in compromising the information.\r\n'),
(7, 'Confidentiality', 'Software', 'Malicious software\r\n', 'Lack of updates for malicious code protection software', 'Malicious code may bypass the outdated anti-malware software and result in compromising the information.\r\n'),
(8, 'Availability', 'Software', 'Malicious software\r\n', 'Lack of updates for malicious code protection software', 'Malicious code may bypass the outdated anti-malware software and result in compromising the information.\r\n'),
(9, 'Availability', 'Software', 'Malicious software\r\n', 'Unsupervised work by outside staff or staff working outside normal business  hours', 'Malicious code may bypass the outdated anti-malware software and result in compromising the information.'),
(10, 'Integrity', 'Software', 'Malicious software\r\n', 'Unsupervised work by outside staff or staff working outside normal business  hours', 'Malicious code may bypass the outdated anti-malware software and result in compromising the information.'),
(11, 'Confidentiality', 'Software', 'Malicious software\r\n', 'Unsupervised work by outside staff or staff working outside normal business  hours', 'Malicious code may bypass the outdated anti-malware software and result in compromising the information.'),
(12, 'Confidentiality', 'Software', 'Corruption of information', 'Unprotected storage', 'If the information is stored locally or unprotected / unencrypted it may results in disclosure of information'),
(13, 'Availability', 'Software', 'Corruption of information', 'Unprotected storage', 'If the information is stored locally or unprotected / unencrypted it may results in disclosure of information'),
(14, 'Integrity', 'Software', 'Corruption of information', 'Unprotected storage', 'If the information is stored locally or unprotected / unencrypted it may results in disclosure of information'),
(15, 'Availability', 'Hardware', 'Equipment failure\r\n', 'Susceptibility of equipment to humidity, dust and soiling', 'Equipment within the service that is not properly sited or protected from inevitable environmental factors, may be damaged immediately or well before end-of-life period.\r\n'),
(16, 'Availability', 'Hardware', 'Equipment failure\r\n', 'Susceptibility of equipment to humidity, dust and soiling', 'Equipment within the service that is not properly sited or protected from inevitable environmental factors, may be damaged immediately or well before end-of-life period.'),
(17, 'Confidentiality', 'Hardware', 'Equipment failure\r\n', 'Susceptibility of equipment to humidity, dust and soiling', 'Equipment within the service that is not properly sited or protected from inevitable environmental factors, may be damaged immediately or well before end-of-life period.'),
(18, 'Integrity', 'Hardware', 'Equipment failure\r\n', 'Susceptibility of equipment to humidity, dust and soiling', 'Equipment within the service that is not properly sited or protected from inevitable environmental factors, may be damaged immediately or well before end-of-life period.'),
(19, 'Integrity', 'People', 'Disclosure of sensitive information\r\n', 'Lack of awareness', 'Employees may intentionally / unintentionally may compromise information by use of administrative / utilities tools '),
(20, 'Availability', 'People', 'Disclosure of sensitive information\r\n', 'Lack of awareness', 'Employees may intentionally / unintentionally may compromise information by use of administrative / utilities tools '),
(21, 'Confidentiality', 'People', 'Disclosure of sensitive information', 'Lack of awareness', 'Employees may intentionally / unintentionally may compromise information by use of administrative / utilities tools '),
(22, 'Confidentiality', 'People', 'Labour Disputes / Industrial Action', 'Lack of awareness on the policy and procedures, lack of organisational coordination, lack of mangement commitment.', 'Employees may intentionally / unintentionally may compromise information by use of administrative / utilities tools'),
(23, 'Integrity', 'People', 'Labour Disputes / Industrial Action', 'Lack of awareness on the policy and procedures, lack of organisational coordination, lack of mangement commitment.', 'Employees may intentionally / unintentionally may compromise information by use of administrative / utilities tools');

-- --------------------------------------------------------

--
-- Structure de la table `myOrganization`
--

CREATE TABLE `myOrganization` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `sector` text NOT NULL,
  `environment` text NOT NULL,
  `phone` int(11) NOT NULL,
  `website` text DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `modifType` text DEFAULT NULL,
  `modifTime` text DEFAULT NULL,
  `modifPerson` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `myOrganization`
--

INSERT INTO `myOrganization` (`id`, `name`, `sector`, `environment`, `phone`, `website`, `location`, `modifType`, `modifTime`, `modifPerson`) VALUES
(0, 'string', 'string', 'string', 0, 'string', 'string', 'string', 'string', 'string'),
(621302, 'lkqsjvbe', 'qslkjfv', 'sljf nd', 0, 'slkfjve', 'sdlifjve', 'wkjfe', 'May 10, 2022, 11:09:16 AM', NULL),
(1265696, 'psodj', 'qspodc', 'sodjce', 77, 'sfkljd ', 'xjc hb', 'xwxjh d', 'May 10, 2022, 11:10:09 AM', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `orgContext`
--

CREATE TABLE `orgContext` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` int(11) NOT NULL,
  `owner` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `metric` text NOT NULL,
  `successCriteria` text NOT NULL,
  `securityServices` text NOT NULL,
  `assetRisks` text NOT NULL,
  `thirdPartyRisks` text NOT NULL,
  `businessContinuities` text NOT NULL,
  `projects` text NOT NULL,
  `securityPolicies` text NOT NULL,
  `programIssues` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `risk`
--

CREATE TABLE `risk` (
  `id` int(11) NOT NULL,
  `applicableAsset` varchar(20) NOT NULL,
  `riskName` text NOT NULL,
  `riskOwner` text NOT NULL,
  `impactXlikelihood` int(11) DEFAULT NULL,
  `level` varchar(10) NOT NULL,
  `controlTitle` text NOT NULL,
  `controlDescription` text NOT NULL,
  `risidualRisk` text NOT NULL,
  `actionPlan` text NOT NULL,
  `status` varchar(30) NOT NULL,
  `reviews` int(11) NOT NULL,
  `reviewDate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `risk`
--

INSERT INTO `risk` (`id`, `applicableAsset`, `riskName`, `riskOwner`, `impactXlikelihood`, `level`, `controlTitle`, `controlDescription`, `risidualRisk`, `actionPlan`, `status`, `reviews`, `reviewDate`) VALUES
(50, 'DataBase', 'Malicious code may bypass the outdated anti-malware software and result in compromising the information.\r\n', 'user 1', 15, 'High', 'Séparation des tâches ', 'Les tâches et les domaines\r\nde responsabilité\r\nincompatibles doivent être\r\ncloisonnés pour limiter les\r\npossibilités de modification\r\nou de mauvais usage, non\r\nautorisé(e) ou involontaire,\r\ndes actifs de l’organisme. ', 'Moderate', '1 Fonctions et\r\nresponsabilités liées à la sécurité de l’information  ', 'Treated', 0, 'Apr 10, 2022, 1:42:27 AM'),
(264, 'database', 'Malicious code may bypass the outdated anti-malware software and result in compromising the information.\r\n', 'asset 1', 15, 'High', '1 Fonctions et\r\nresponsabilités liées à la sécurité de l’information  ', 'Toutes les responsabilités\r\nen matière de sécurité de l’information doivent\r\nêtre définies et attribuées.  ', '', '', 'Evaluated', 0, 'Apr 10, 2022, 1:42:27 AM'),
(682, 'fbfd', 'Malicious code may bypass the outdated anti-malware software and result in compromising the information.\r\n', ' xdfd', 15, 'High', '1 Fonctions et\r\nresponsabilités liées à la sécurité de l’information  ', 'Toutes les responsabilités\r\nen matière de sécurité de l’information doivent\r\nêtre définies et attribuées.  ', '', '', 'Evaluated', 0, 'Apr 10, 2022, 1:42:27 AM'),
(936, 'fbfd', 'Malicious code may bypass the outdated anti-malware software and result in compromising the information.\r\n', ' xdfd', 15, 'High', 'Séparation des tâches ', 'Les tâches et les domaines\r\nde responsabilité\r\nincompatibles doivent être\r\ncloisonnés pour limiter les\r\npossibilités de modification\r\nou de mauvais usage, non\r\nautorisé(e) ou involontaire,\r\ndes actifs de l’organisme. ', '', '', 'Evaluated', 0, 'Apr 10, 2022, 1:42:27 AM'),
(984, 'database', 'Malicious code may bypass the outdated anti-malware software and result in compromising the information.\r\n', 'asset 1', 15, 'High', 'Séparation des tâches ', 'Les tâches et les domaines\r\nde responsabilité\r\nincompatibles doivent être\r\ncloisonnés pour limiter les\r\npossibilités de modification\r\nou de mauvais usage, non\r\nautorisé(e) ou involontaire,\r\ndes actifs de l’organisme. ', '', '', 'Evaluated', 0, 'Apr 10, 2022, 1:42:27 AM'),
(988, 'DataBase', 'Malicious code may bypass the outdated anti-malware software and result in compromising the information.\r\n', 'user 1', 15, 'High', '1 Fonctions et\r\nresponsabilités liées à la sécurité de l’information  ', 'Toutes les responsabilités\r\nen matière de sécurité de l’information doivent\r\nêtre définies et attribuées.  ', '', '', 'Evaluated', 0, 'Apr 10, 2022, 1:42:27 AM');

-- --------------------------------------------------------

--
-- Structure de la table `standard`
--

CREATE TABLE `standard` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `year` varchar(4) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `superAdmin`
--

CREATE TABLE `superAdmin` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `superAdmin`
--

INSERT INTO `superAdmin` (`id`, `name`, `password`) VALUES
(0, 'admin', 'pa$$w0rd');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `role` text NOT NULL,
  `dateRegistred` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `dateRegistred`, `status`) VALUES
(1025585, 'ijqsbrcijo', 'oijrh ', 'jjecdd', 'CISO', 'May 4, 2022, 11:54:36 AM', 'Active'),
(8430140, 'mdslkvf', 'mlsknvmoe', 'sùf,l', 'CRO', 'ùdfv', 'Active');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ansiControls`
--
ALTER TABLE `ansiControls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `assignControl`
--
ALTER TABLE `assignControl`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `audit`
--
ALTER TABLE `audit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `controls`
--
ALTER TABLE `controls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `gapAnalysis`
--
ALTER TABLE `gapAnalysis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `myOrganization`
--
ALTER TABLE `myOrganization`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orgContext`
--
ALTER TABLE `orgContext`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `risk`
--
ALTER TABLE `risk`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `standard`
--
ALTER TABLE `standard`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `superAdmin`
--
ALTER TABLE `superAdmin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ansiControls`
--
ALTER TABLE `ansiControls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT pour la table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=882;

--
-- AUTO_INCREMENT pour la table `audit`
--
ALTER TABLE `audit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=997;

--
-- AUTO_INCREMENT pour la table `gapAnalysis`
--
ALTER TABLE `gapAnalysis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `incident`
--
ALTER TABLE `incident`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8430141;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
