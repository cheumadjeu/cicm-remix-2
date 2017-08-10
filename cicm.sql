-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 10 Août 2017 à 15:25
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cicm`
--

-- --------------------------------------------------------

--
-- Structure de la table `calendrier`
--

CREATE TABLE `calendrier` (
  `bgcolor` varchar(25) NOT NULL,
  `cni_personne` varchar(100) NOT NULL,
  `date_attribution_service` varchar(25) NOT NULL,
  `date_liberation_service` varchar(25) NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `calendrier`
--

INSERT INTO `calendrier` (`bgcolor`, `cni_personne`, `date_attribution_service`, `date_liberation_service`, `id`) VALUES
('419145', '111409891', '02/08/2017', '04/08/2017', 1),
('358887', '111409891', '11/08/2017', '26/08/2017', 2),
('992128', '156728295', '03/04/2017', '08/04/2017', 10),
('175387', '156728295', '20/06/2017', '26/06/2017', 8),
('441613', '156728295', '02/03/2017', '15/03/2017', 9),
('620915', '814451245', '29/04/2017', '03/05/2017', 11),
('692566', '116876436', '10/10/2017', '07/12/2017', 12),
('238138', '116876436', '29/04/2017', '03/05/2017', 13),
('252281', '116876436', '08/02/2018', '19/01/2018', 14);

-- --------------------------------------------------------

--
-- Structure de la table `journalisation`
--

CREATE TABLE `journalisation` (
  `code_journalisation` varchar(100) NOT NULL,
  `information` text NOT NULL,
  `adresse_ip` varchar(50) NOT NULL,
  `CNI` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `cni_personne` int(11) NOT NULL,
  `nom_personne` varchar(50) NOT NULL,
  `sexe` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `vehicules` text NOT NULL,
  `contact` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `don` text NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `categorie` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `personne`
--

INSERT INTO `personne` (`cni_personne`, `nom_personne`, `sexe`, `photo`, `vehicules`, `contact`, `login`, `password`, `don`, `email`, `categorie`) VALUES
(620178953, 'Rodrigue Cheumadjeu', 'M', 'pic01.jpg', 'TOYATA ;2002; CE 215 K', 677123467, 'admin', 'admin', '200', 'cheu@gmail.com', 'personel'),
(672999919, 'Tona Ntjam', 'M', 'pic02.jpg', 'RAV 4 ;1979; CE 285 K', 679167818, 'tona', 'tona', '1000', 'tona@yy.fr', 'personel'),
(156728295, 'Tionang nadege ', 'M', 'zz.png', '2012;HUMMER ;CE 254', 677878889, '', '', '2500', 'nadege@tt.fr', 'customer'),
(201765779, 'Tankeu Guillome', 'M', 'zz.png', ' CE 224 ;2003;NORAV 4 ', 677756544, '', '', '1000', 'Tankeu@gmail.cm', 'customer'),
(111409890, 'CICM', '', 'pic05.jpg', '', 69541487, 'cicm', 'cim', '', 'contact@cicm.cm', 'admin'),
(814451245, 'tamo pierre armand', 'M', 'zz.png', 'Mercedes ;CE 225  ;lbenz2008', 645515874, 'totooo', '', '', 'toto@yrh.e', 'customer'),
(116876436, 'Tabi arnaud', 'M', 'zz.png', '4556;UY7;UYO', 2147483647, '', '', '', 'cheguy@jh.fr', 'customer'),
(111409891, 'Toto', 'M', 'zz.png', ' 78j;yut;ffrfCr', 766775667, '', '', '', 'ghhj@uhu.fr', 'customer'),
(111546378, 'TAMO simon', 'M', 'zz.png', '987;34;7', 867568698, '', '', '', 'hjgh@jij.fr', 'customer'),
(123654321, 'Marcelle france', 'M', 'zz.png', 'CE351;JKH;kjlkj', 676765576, '', '', '', 'jhghj@jh.com', 'customer');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `ordre` bigint(20) UNSIGNED NOT NULL,
  `code_service` varchar(100) NOT NULL,
  `nom_service` varchar(100) NOT NULL,
  `prix_unitaire` int(11) NOT NULL,
  `categorie` varchar(100) NOT NULL,
  `statut` varchar(100) NOT NULL,
  `photos` varchar(100) NOT NULL,
  `standing` varchar(100) NOT NULL,
  `quantite_stock` int(11) NOT NULL,
  `desription` text NOT NULL,
  `beneficiaire` varchar(100) NOT NULL,
  `date_attribution_service` varchar(100) NOT NULL,
  `date_liberation_service` varchar(100) NOT NULL,
  `deliver_service_agent` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `services`
--

INSERT INTO `services` (`ordre`, `code_service`, `nom_service`, `prix_unitaire`, `categorie`, `statut`, `photos`, `standing`, `quantite_stock`, `desription`, `beneficiaire`, `date_attribution_service`, `date_liberation_service`, `deliver_service_agent`) VALUES
(1, '40.8-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, 'pivot', '201765779', '03/08/2017', '10/08/2017', '20178953'),
(2, '40.9-15', 'chambre_15', 15000, 'chambre', 'indisponible', '', '3*', 1, 'pivot', '111409890', '', '', ''),
(3, '40.10-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, 'pivot', '201765779', '01/08/2017', '07/09/2017', ''),
(4, '40.12-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, 'pivot', '201765779', '01/08/2017', '07/09/2017', ''),
(5, '40.13-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, 'pivot', '653455456', '07/11/2017', '07/31/2017', ''),
(6, '40.14-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, 'pivot', '653455456', '03/08/2017', '10/08/2017', ''),
(7, '40.15-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, 'pivot', '79825281', '07/10/2017', '07/31/2017', ''),
(8, '40.16-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, 'pivot', '79825281', '07/04/2017', '07/26/2017', ''),
(9, '40.17-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, 'pivot', '79825281', '07/04/2017', '07/26/2017', ''),
(10, '40.18-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, 'pivot', '15672829', '07/07/2017', '07/31/2017', ''),
(11, '40.19-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, 'pivot', '15672829', '07/07/2017', '07/31/2017', ''),
(12, '40.20-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, 'pivot', '15672829', '07/07/2017', '07/07/2017', ''),
(13, '40.21-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, 'pivot', '201765779', '01/08/2017', '18/08/2017', ''),
(14, '40.22-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, 'pivot', '111409890', '', '', ''),
(15, '16-10', 'chambre_10', 10000, 'chambre', 'libre', '', '2*', 1, 'pivot', '', '03/08/2017', '10/08/2017', ''),
(16, '13-10', 'chambre_10', 10000, 'chambre', 'libre', '', '2*', 1, 'pivot', '111409890', '', '', ''),
(17, '12-10', 'chambre_10', 10000, 'chambre', 'libre', '', '2*', 1, 'pivot', '111409890', '', '', ''),
(18, '40.28-20', 'chambre_20', 20000, 'chambre', 'libre', '', '4*', 1, 'pivot', '111409890', '', '', ''),
(19, '40.18-20', 'chambre_20', 20000, 'chambre', 'libre', '', '4*', 1, 'pivot', '111409890', '', '', ''),
(20, '40.23-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, 'pivot', '111409890', '', '', ''),
(21, '40.24-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, 'pivot', '111409890', '', '', ''),
(22, '40.25-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, 'pivot', '111409890', '', '', ''),
(23, '40.26-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, 'pivot', '111409890', '', '', ''),
(24, '40.27-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, 'pivot', '15672829', '07/07/2017', '07/31/2017', ''),
(25, '40.28-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, 'pivot', '15672829', '07/07/2017', '07/31/2017', ''),
(26, '40.29-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, 'pivot', '111409890', '', '', ''),
(27, '17-10', 'chambre_10', 10000, 'chambre', 'indisponible', '', '2*', 1, 'pivot', '111409890', '', '', ''),
(28, '20-10', 'chambre_10', 10000, 'chambre', 'libre', '', '2*', 1, 'pivot', '111409890', '', '', ''),
(29, '21-10', 'chambre_10', 10000, 'chambre', 'libre', '', '2*', 1, 'pivot', '111409890', '', '', ''),
(30, '24-10', 'chambre_10', 10000, 'chambre', 'libre', '', '2*', 1, 'pivot', '111409890', '', '', ''),
(31, '25-10', 'chambre_10', 10000, 'chambre', 'libre', '', '2*', 1, 'pivot', '111409890', '', '', ''),
(32, '28-10', 'chambre_10', 10000, 'chambre', 'libre', '', '2*', 1, 'pivot', '111409890', '', '', ''),
(33, '10-06', 'chambre_06', 6000, 'chambre', 'libre', '', '1*', 1, 'pivot', '111409890', '', '', ''),
(34, '11-06', 'chambre_06', 6000, 'chambre', 'libre', '', '1*', 1, 'pivot', '116876436', '05/04/2017', '18/08/2017', ''),
(35, '15-06', 'chambre_06', 6000, 'chambre', 'libre', '', '1*', 1, 'pivot', '116876436', '05/04/2017', '18/08/2017', ''),
(36, '18-06', 'chambre_06', 6000, 'chambre', 'libre', '', '1*', 1, 'pivot', '116876436', '05/04/2017', '18/08/2017', ''),
(37, '19-06', 'chambre_06', 6000, 'chambre', 'libre', '', '1*', 1, 'pivot', '111409890', '', '', ''),
(38, '22-06', 'chambre_06', 6000, 'chambre', 'libre', '', '1*', 1, 'pivot', '111409890', '', '', ''),
(39, '23-06', 'chambre_06', 6000, 'chambre', 'libre', '', '1*', 1, 'pivot', '20176577', '07/04/2017', '07/24/2017', ''),
(40, '26-06', 'chambre_06', 6000, 'chambre', 'libre', '', '1*', 1, 'pivot', '79825281', '07/07/2017', '07/07/2017', ''),
(41, '27-06', 'chambre_06', 6000, 'chambre', 'libre', '', '1*', 1, 'pivot', '156432', '07/04/2017', '07/24/2017', ''),
(42, 'pdej25', 'petit dejeuner 2500', 2500, 'gastronomie', '', '', '', 1, 'pivot', '', '', '', ''),
(43, 'repsoir', 'repas soir 4000', 4000, 'gastronomie', '', '', '', 1, 'pivot', '', '', '', ''),
(44, 'Jus ', 'Jus 600', 600, 'boissons', '', '', '', 1, 'pivot', '', '', '', ''),
(45, 'beer', 'biere', 1000, 'boissons', '', '', '', 1, 'pivot', '', '', '', ''),
(46, 'che-hoe', 'Nettoyage chemise homme', 500, 'linge_salle', '', '', '', 1, 'pivot', '', '', '', ''),
(47, 'pan-hoe', 'Nettoyage pantalon homme', 800, 'linge_salle', '', '', '', 1, 'pivot', '', '', '', ''),
(48, 'jup-cuir', 'Nettoyage de jupe en cuir ', 4000, '', '', '', '', 1, 'pivot', '', '', '', ''),
(49, 'rob-mar', 'Nettoyage robe de mariage', 18000, 'linge_salle', '', '', '', 1, 'pivot', '', '', '', ''),
(50, 'cul-mix', 'Nettoyage culotte', 500, 'linge_salle', '', '', '', 1, 'pivot', '', '', '', ''),
(51, 'lin_beb', 'Nettoyage linge bebe', 250, 'linge_salle', '', '', '', 1, 'pivot', '', '', '', ''),
(52, 'cou-lit', 'Nettoyage couvre lit', 2000, 'linge_salle', '', '', '', 1, 'pivot', '', '', '', ''),
(53, 'moquet', 'Nettoyage moquette', 4000, 'linge_salle', '', '', '1', 0, 'pivot', '', '', '', ''),
(54, 'net-nap', 'Nappe', 1000, 'linge_salle', '', '', '1', 0, 'pivot', '', '', '', ''),
(55, 'net-cra', 'Nettoyage cravate', 300, 'linge_Salle', '', '', '1', 0, 'pivot', '', '', '', ''),
(56, 'ens-bas', 'Nettoyage ensemble bassin', 2000, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(57, 'gan-sim', 'nettoyage gangoura simple', 1500, 'linge_salle', '', '', '', 1, 'pivot', '', '', '', ''),
(58, 'gan-pie', 'Nettoyage gangoura 3 pieces', 3000, 'linge_salle', '', '', '', 1, 'pivot', '', '', '', ''),
(59, 'net-nou', 'nettoyage nounous', 1000, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(60, 'ens-pag', 'nettoyage ensemble pagne ', 1000, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(61, 'dem-hoe', 'Nettoyage demenbre homme', 300, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(62, 'pan-jea', 'Nettoyage pantalon jeans ', 1000, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(63, 'net-tri', 'nettoyage tricot', 500, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(64, 'net-polo', 'Nettoyage polo', 500, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(65, 'pet-rid', 'Nettoyage petit rideau', 750, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(66, 'grd-rid', 'nettoyage grand rideau', 1500, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(67, 'tai-ore', 'nettoyage taie d\'oreiller', 300, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(68, 'net-cou', 'nettoyage couverture ', 2500, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(69, 'ser-pte', 'Nettoyage serviette petite', 500, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(70, 'gde-ser', 'Nettoyage grande serviette', 1000, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(71, 'dra-lit', 'Nettoyage draps de lit', 800, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(72, 'net-sou', 'Nettoyage soutane', 1500, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(73, 'net-pij', 'Nettoyage pijament', 1000, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(74, 'net-rob', 'Nettoyage robe', 1000, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(75, 'chau-hoe', 'Nettoyage chaussure homme', 500, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(76, 'net-chau', 'Nettoyage Chaussette', 300, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(77, 'jup-pli', 'Nettoyage jupe plisse', 1500, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(78, 'net-ten', 'Nettoyage tenis', 1000, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(79, 'sou-vet', 'Nettoyage sous vetement ', 300, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(80, 'net-cas', 'Nettoyage nettoyage casquette', 500, 'linge_Salle', '', '', '', 1, 'pivot', '', '', '', ''),
(82, 'GS.F-200', 'salle de 200 places 130000', 130000, 'salle', 'libre', '', '5*', 1, 'pivot', '111409890', '', '', ''),
(81, 'GS.C-200', 'salle de 200 places 100000', 100000, 'salle', 'libre', '', '5*', 1, 'pivot', '111409890', '', '', ''),
(83, 'PS-35', 'salle de 35 places 65000', 65000, 'salle', 'indisponible', '', '3*', 1, 'pivot', '111409890', '', '', ''),
(84, 'PS-25', 'salle de 25 places 45000', 45000, 'salle', 'indisponible', '', '2*', 1, 'pivot', '111409890', '', '', ''),
(85, 'PS-18', 'salle de 18 places 30000', 30000, 'salle', 'libre', '', '1*', 1, 'pivot', '111409890', '', '', ''),
(86, 'PS-10', 'salle de 10 places 25000', 25000, 'salle', 'libre', '', '1*', 1, 'pivot', '814451245', '19/07/2017', '31/07/2017', ''),
(118, '40.8-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 07:04:05', '156728295', '11/08/2017', '12/08/2017', '20178953'),
(117, '40.8-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 06:13:42', '156728295', '17/08/2017', '19/08/2017', '20178953'),
(116, '40.8-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 06:13:31', '156728295', '10/08/2017', '15/08/2017', '20178953'),
(115, '40.8-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 06:13:21', '156728295', '01/08/2017', '03/08/2017', '20178953'),
(119, '40.8-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 07:04:14', '156728295', '22/08/2017', '24/08/2017', '20178953'),
(120, '40.8-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 07:10:14', '156728295', '25/08/2017', '30/08/2017', '20178953'),
(121, '40.8-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 07:10:28', '156728295', '31/08/2017', '31/08/2017', '20178953'),
(122, '40.8-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 07:10:46', '156728295', '01/09/2017', '13/10/2017', '20178953'),
(123, '40.8-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 07:15:52', '123654321', '12/08/2017', '23/08/2017', '20178953'),
(124, '40.8-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 07:16:06', '123654321', '30/08/2017', '14/09/2017', '20178953'),
(125, '40.8-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 07:19:44', '111409891', '02/08/2017', '04/08/2017', '20178953'),
(126, '40.8-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 08:28:02', '111409891', '11/08/2017', '26/08/2017', '20178953'),
(127, '40.8-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 08:28:13', '111409891', '30/08/2017', '21/09/2017', '20178953'),
(128, '40.8-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 12:28:50', '111409891', '08/09/2017', '31/10/2017', '20178953'),
(129, '40.8-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 13:47:52', '156728295', '01/06/2017', '16/06/2017', '20178953'),
(130, '40.8-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 13:49:15', '156728295', '20/06/2017', '26/06/2017', '20178953'),
(131, '40.12-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 15:13:13', '156728295', '02/03/2017', '15/03/2017', ''),
(132, '40.12-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 15:15:27', '156728295', '03/04/2017', '08/04/2017', ''),
(133, '40.21-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 15:16:49', '814451245', '29/04/2017', '03/05/2017', ''),
(134, '40.21-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 15:18:57', '116876436', '10/10/2017', '07/12/2017', ''),
(135, '40.21-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 15:19:48', '116876436', '29/04/2017', '03/05/2017', ''),
(136, '40.8-15', 'chambre_15', 15000, 'chambre', 'libre', '', '3*', 1, '2017-08-10 15:21:26', '116876436', '08/02/2018', '19/01/2018', '20178953');

-- --------------------------------------------------------

--
-- Structure de la table `sollicitation`
--

CREATE TABLE `sollicitation` (
  `nom_service` varchar(100) NOT NULL,
  `cni_personne` varchar(100) NOT NULL,
  `date_sollicitation_service` varchar(100) NOT NULL,
  `quantite_commandee` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `sollicitation`
--

INSERT INTO `sollicitation` (`nom_service`, `cni_personne`, `date_sollicitation_service`, `quantite_commandee`) VALUES
('chambre_15', '79825281', '27/06/2017', 1),
('chambre_10', '79825281', '08/07/2017', 2),
('chambre_20', '79825281', '08/07/2017', 1),
('petit dejeuner 2500', '79825281', '08/07/2017', 3),
('Jus 600', '79825281', '08/07/2017', 3),
('chambre_15', '79825281', '08/07/2017', 6),
('petit dejeuner 2500', '20176577', '08/07/2017', 4),
('petit dejeuner 2500', '7587858750', '14/07/2017', 1),
('petit dejeuner 2500', '6762872', '14/07/2017', 1),
('repas soir 4000', '201765779', '18/07/2017', 1),
('petit dejeuner 2500', '578909', '14/07/2017', 5),
('repas soir 4000', '687998', '14/07/2017', 1),
('petit dejeuner 2500', '634892771', '14/07/2017', 4),
('chambre_20', '634892771', '14/07/2017', 1),
('Nettoyage de jupe en cuir', '201765779', '18/07/2017', 1),
('Nettoyage chemise homme', '201765779', '18/07/2017', 3),
('Nettoyage chemise homme', '156728295', '18/07/2017', 3),
('repas soir 4000', '156728295', '18/07/2017', 3),
('Jus 600', '156728295', '18/07/2017', 2),
('Nettoyage couvre lit', '201765779', '18/07/2017', 3),
('petit dejeuner 2500', '156728295', '18/07/2017', 4),
('Jus 600', '201765779', '18/07/2017', 7),
('Jus 600', '156728295', '19/07/2017', 5),
('repas soir 4000', '156728295', '19/07/2017', 2),
('petit dejeuner 2500', '156728295', '19/07/2017', 2),
('repas soir 4000', '123654321', '19/07/2017', 3),
('Nettoyage de jupe en cuir', '123654321', '19/07/2017', 4),
('Nettoyage chemise homme', '156728295', '19/07/2017', 4);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `calendrier`
--
ALTER TABLE `calendrier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `journalisation`
--
ALTER TABLE `journalisation`
  ADD PRIMARY KEY (`code_journalisation`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`cni_personne`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`code_service`,`beneficiaire`,`date_attribution_service`),
  ADD UNIQUE KEY `ordre` (`ordre`);

--
-- Index pour la table `sollicitation`
--
ALTER TABLE `sollicitation`
  ADD PRIMARY KEY (`nom_service`,`cni_personne`,`date_sollicitation_service`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `calendrier`
--
ALTER TABLE `calendrier`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `ordre` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
