-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 22 juil. 2020 à 23:50
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `useregistration`
--

-- --------------------------------------------------------

--
-- Structure de la table `cities`
--

CREATE TABLE `cities` (
  `city` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cities`
--

INSERT INTO `cities` (`city`) VALUES
('Rennes'),
('Lille'),
('Paris'),
('Reims'),
('Rouen'),
('Milan'),
('Mysore'),
('Tehran'),
('Shanghai'),
('Toulouse'),
('Casablanca'),
('Barcelona'),
('Montpellier'),
('Mexico City'),
('Clermont-Ferrant'),
('Nantes'),
('Deusto'),
('Segonzac'),
('Budapest'),
('Laval (QUEBEC)'),
('Nice'),
('La Rochelle'),
('Rochefort'),
('Cognac'),
('Florence'),
('Lyon'),
('Saint-Etienne'),
('New York'),
('Rome'),
('Marseille'),
('Bordeaux'),
('Toulon'),
('Le Havre'),
('Oxford'),
('Caen'),
('Brest'),
('Strasbourg'),
('London'),
('Miami'),
('Firenze'),
('Milan'),
('Aix-en-Provence'),
('Angers'),
('Tours'),
('Angers'),
('Tours');

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `levels`
--

CREATE TABLE `levels` (
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `levels`
--

INSERT INTO `levels` (`level`) VALUES
('Bachelor'),
('Master'),
('MBA'),
('PhD');

-- --------------------------------------------------------

--
-- Structure de la table `progs`
--

CREATE TABLE `progs` (
  `Name` varchar(135) DEFAULT NULL,
  `Language` varchar(57) DEFAULT NULL,
  `city` varchar(73) DEFAULT NULL,
  `type` varchar(63) DEFAULT NULL,
  `level` varchar(28) DEFAULT NULL,
  `length` varchar(34) DEFAULT NULL,
  `fee` varchar(137) DEFAULT NULL,
  `intake` varchar(29) DEFAULT NULL,
  `school` varchar(26) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `progs`
--

INSERT INTO `progs` (`Name`, `Language`, `city`, `type`, `level`, `length`, `fee`, `intake`, `school`) VALUES
('Bachelor IBPM Major Finance & Banking', 'English Or French', 'Rennes', 'Business & Management', 'Bachelor ', '3 years', '9,000 per year', 'September', 'Rennes Business school'),
('Bachelor IBPM Major: Purchase and Supply chain', 'English Or French', 'Rennes', 'Business & Management', 'Bachelor ', '3 years', '9,000 per year', 'September', 'Rennes Business school'),
('Bachelor IBPM Major: Marketing', 'English Or French', 'Rennes', 'Business & Management', 'Bachelor ', '3 years', '9,000 per year', 'September', 'Rennes Business school'),
('Bachelor IBPM', 'First year in English 2nd & 3rd Year in English or French', 'Rennes', 'Business & Management', 'Bachelor ', '3 years', '9,000 per year', 'September', 'Rennes Business school'),
(' MSc in International Accounting,\nManagement Control & Auditing', 'English ', 'Rennes', 'Business & Management', 'Master', '15 months ', 'Total 18200  euros', 'September', 'Rennes Business school'),
('MSc in International Finance', 'English ', 'Rennes', 'Business & Management', 'Master', '15 months', 'Total 18200  euros', 'September', 'Rennes Business school'),
('MSc in Financial Data Intelligence', 'English ', 'Rennes', 'Business & Management', 'Master', '15 months', 'Total 18200  euros', 'September', 'Rennes Business school'),
('MSc in Data & Business Analytics', 'English ', 'Rennes', 'Computer Science & IT\n', 'Master', '15 months', 'Total 18200  euros', 'September', 'Rennes Business school'),
('MSc in Supply Chain Management', 'English ', 'Rennes', 'Business & Management', 'Master', '15 months', 'Total 18200  euros', 'September', 'Rennes Business school'),
('MSc in Sustainable Management & Eco-innovation', 'English ', 'Rennes', 'Environmental Studies & Earth Sciences ', 'Master', '15 months', 'Total 18200  euros', 'September', 'Rennes Business school'),
('MSc in Innovation & Entrepreneurship', 'English ', 'Rennes', 'Business & Management', 'Master', '15 months', 'Total 18200  euros', 'September', 'Rennes Business school'),
('MSc in Strategic and Digital Marketing', 'English ', 'Rennes', 'Business & ManagementSocial Sciences', 'Master', '15 months', 'Total 18200  euros', 'September', 'Rennes Business school'),
('MSc in International Luxury & Brand Management', 'English ', 'Rennes', 'Applied Sciences & Professions', 'Master', '15 months', 'Total 18200  euros', 'January or September', 'Rennes Business school'),
('MSc in International Human Resource Management', 'English ', 'Rennes', 'Business & Management', 'Master', '15 months', 'Total 18200  euros', 'September', 'Rennes Business school'),
('MSc in Sports, Tourism Management', 'English ', 'Rennes', 'Hospitality, Leisure & Sports', 'Master', '15 months', 'Total 18200  euros', 'September', 'Rennes Business school'),
('MSc in Creative Project Management, Culture & Design', 'English ', 'Rennes', 'Business & Management', 'Master', '15 months', 'Total 18200  euros', 'September', 'Rennes Business school'),
('MSc in Global Business Management', 'English ', 'Rennes', 'Business & Management', 'Master', '15 months', 'Total 18200  euros', 'September or January', 'Rennes Business school'),
('MSc in International Negotiation and Business Development', 'English ', 'Rennes', 'Business & Management', 'Master', '15 months', 'Total 18200  euros', 'September', 'Rennes Business school'),
('MSc in International Management', 'English ', 'Rennes', 'Business & Management', 'Master', '15 months', 'Total 18200  euros', 'January or September', 'Rennes Business school'),
(' MIM in International Accounting,\nManagement Control & Auditing', 'English', 'Rennes', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'September', 'Rennes Business school'),
('MIM in International Finance', 'English', 'Rennes', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'September', 'Rennes Business school'),
('MIM in Financial Data Intelligence', 'English', 'Rennes', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'Sept', 'Rennes Business school'),
('MIM in Data & Business Analytics', 'English', 'Rennes', 'Computer Science & IT\n', 'Master', '2 years', '12 500 euros per year', 'Sept', 'Rennes Business school'),
('MIM in Supply Chain Management', 'English', 'Rennes', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'Sept', 'Rennes Business school'),
('MIM in Sustainable Management & Eco-innovation', 'English', 'Rennes', 'Environmental Studies & Earth Sciences ', 'Master', '2 years', '12 500 euros per year', 'Sept', 'Rennes Business school'),
('MIM in Innovation & Entrepreneurship', 'English', 'Rennes', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'Sept', 'Rennes Business school'),
('MIM in Strategic and Digital Marketing', 'English', 'Rennes', 'Social Sciences\n', 'Master', '2 years', '12 500 euros per year', 'Sept', 'Rennes Business school'),
('MIM in International Luxury & Brand Management', 'English', 'Rennes', 'Applied Sciences & Professions', 'Master', '2 years', '12 500 euros per year', 'Sept', 'Rennes Business school'),
('MIM in International Human Resource Management', 'English', 'Rennes', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'Sept', 'Rennes Business school'),
('MIM in Sports, Tourism Management', 'English', 'Rennes', 'Hospitality, Leisure & Sports', 'Master', '2 years', '12 500 euros per year', 'Sept', 'Rennes Business school'),
('MIM in Creative Project Management, Culture & Design', 'English', 'Rennes', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'Sept', 'Rennes Business school'),
('MIM in Global Business Management', 'English', 'Rennes', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'Sept', 'Rennes Business school'),
('MIM in International Negotiation and Business Development', 'English', 'Rennes', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'Sept', 'Rennes Business school'),
('MIM in International Management', 'English', 'Rennes', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'Sept', 'Rennes Business school'),
('IMBA ', 'English', 'Rennes', 'Business & Management', 'MBA', '1 year', 'Total 20 000 euros', 'January or September', 'Rennes Business school'),
('Executive MBA', 'English', 'Rennes', 'Business & Management', 'MBA', '1 year', 'Total 31 000 euros', 'November', 'Rennes Business school'),
('Bachelor Grande école', 'English', 'Lille or Paris', 'Business & Management', 'Bachelor', '3 years', '10 480 / years', 'September', 'IESEG'),
('Bachelor International Business', 'English', 'Lille or Paris', 'Business & Management', 'Bachelor', '3 years', '9 223 / years', 'September', 'IESEG'),
('MIM Audit – Control', 'English', 'Lille or Paris', 'Business & Management', 'Master', '2 years', '€11,480 / years', 'September', 'IESEG'),
('MIM International Business Economics', 'English', 'Lille or Paris', 'Business & Management', 'Master', '2 years', '€11,480 / years', 'September', 'IESEG'),
('MIM Entrepreneurship and Innovation', 'English', 'Lille or Paris', 'Business & Management', 'Master', '2 years', '€11,480 / years', 'September', 'IESEG'),
('MIM Finance', 'English', 'Lille or Paris', 'Business & Management', 'Master', '2 years', '€11,480 / years', 'September', 'IESEG'),
('MIM Human Resources Management', 'English', 'Lille or Paris', 'Business & Management', 'Master', '2 years', '€11,480 / years', 'September', 'IESEG'),
('MIM Operations Management', 'English', 'Lille or Paris', 'Business & Management', 'Master', '2 years', '€11,480 / years', 'September', 'IESEG'),
('MIM Information Systems Management', 'English', 'Lille or Paris', 'Business & Management', 'Master', '2 years', '€11,480 / years', 'September', 'IESEG'),
('MIM Marketing', 'English', 'Lille or Paris', 'Business & Management', 'Master', '2 years', '€11,480 / years', 'September', 'IESEG'),
('MIM International Negotiation & Sales Management', 'English', 'Lille or Paris', 'Business & Management', 'Master', '2 years', '€11,480 / years', 'September', 'IESEG'),
('MSc in International Business - January', 'English', 'Lille', 'Business & Management', 'Master', '15 months', 'Total 15 500 euros', 'January, September', 'IESEG'),
('MSc in Fashion Management', 'English', 'Paris', 'Applied Sciences & Professions', 'Master', '15 months', 'Total 17 500 euros', 'September', 'IESEG'),
('MSc in International Accounting Audit & Control', 'English', 'Paris', 'Business & Management', 'Master', '15 months', 'Total 15 000 euros', 'September', 'IESEG'),
('MSc in Finance', 'English', 'Paris', 'Business & Management', 'Master', '15 months', 'Total 16 500 euros', 'September', 'IESEG'),
('MSc in Investment Banking & Capital Markets', 'English', 'Lille', 'Business & Management', 'Master', '15 months', 'Total 15 000 euros', 'September', 'IESEG'),
('MSc in Digital Marketing & CRM\n', 'English', 'Lille', 'Business & Management', 'Master', '15 months', 'Total 15 750 euros', 'September', 'IESEG'),
('MSc in Business Analysis & Consulting\n', 'English', 'Paris', 'Business & Management', 'Master', '15 months', 'Total 15 750 euros', 'September', 'IESEG'),
('MSc in International Business Negotiation\n', 'English', 'Paris', 'Business & Management', 'Master', '15 months', 'Total 15 500 euros', 'September', 'IESEG'),
('MSc in Big Data Analytics for Business\n', 'English', 'Lille', 'Computer Science & IT\n', 'Master', '15 months', 'Total 16 500 euros', 'September', 'IESEG'),
('MSc in Entrepreneurship & Innovation\n', 'English', 'Paris', 'Business & Management', 'Master', '15 months', 'open soon', 'September', 'IESEG'),
('MSc in International Business & Technology\n', 'English', 'Paris', 'Business & Management', 'Master', '15 months', 'Total 16 000 euros', 'September', 'IESEG'),
('International MBA', 'English', 'Paris', 'Business & Management', 'MBA', '1 year', 'Total 26 000 euros', 'September', 'IESEG'),
('MBA in Leadership and Coding', 'English', 'Paris', 'Business & Management', 'MBA', '1 year', 'Total 30 000 euros', 'October', 'IESEG'),
('Executive MBA', 'English', 'Paris', 'Business & Management', 'MBA', '2 years', 'Total 39 000 euros', 'October', 'IESEG'),
('Global BBA Business Track', 'English', 'Reims, Rouen and Paris (1st year)', 'Business & Management ', 'Bachelor', '4 years', '€ 9,950 per year', 'September', 'NEOMA'),
('Global BBA Business entrepreneurship track', 'English', 'Reims, Rouen and Paris (1st year)', 'Business & Management ', 'Bachelor', '4 years', '€ 9,950 per year', 'September', 'NEOMA'),
('Global BBA Business association track', 'English', 'Reims, Rouen and Paris (1st year)', 'Business & Management ', 'Bachelor', '4 years', '€ 9,950 per year', 'September', 'NEOMA'),
('Global BBA Business apprenticeship track', 'English', 'Reims, Rouen and Paris (1st year)', 'Business & Management ', 'Bachelor', '4 years', '€ 9,950 per year', 'September', 'NEOMA'),
('Master in Management Corporate Finance', 'English', 'Rouen or Reims', 'Business & Management ', 'Master', '2 years', 'Total 27 000 euros', 'September', 'NEOMA'),
('Master in Management Financial Markets & Technologies', 'English', 'Rouen or Reims', 'Business & Management ', 'Master', '2 years', 'Total 27 000 euros', 'September', 'NEOMA'),
('Master in Management Finance, Investment & Wealth Management (allow to prepare for the CFA® certification)', 'English', 'Rouen or Reims', 'Business & Management ', 'Master', '2 years', 'Total 27 000 euros', 'September', 'NEOMA'),
('Master in Management Accounting, Auditing & Advisory', 'English', 'Rouen or Reims', 'Business & Management ', 'Master', '2 years', 'Total 27 000 euros', 'September', 'NEOMA'),
('Master in Management International Marketing & Brand Management', 'English', 'Rouen or Reims', 'Business & Management ', 'Master', '2 years', 'Total 27 000 euros', 'September', 'NEOMA'),
('Master in Management Digital Expertise for Marketing', 'English', 'Rouen or Reims', 'Business & Management ', 'Master', '2 years', 'Total 27 000 euros', 'September', 'NEOMA'),
('Master in Management Luxury Marketing', 'English', 'Rouen or Reims', 'Applied Sciences & Professions / Business & Management ', 'Master', '2 years', 'Total 27 000 euros', 'September', 'NEOMA'),
('Master in Management Wine & Gastronomy - Marketing Savoir-Faire & Terroir in a Disruptive World', 'English', 'Rouen or Reims', 'Applied Sciences & Professions / Business & Management ', 'Master', '2 years', 'Total 27 000 euros', 'September', 'NEOMA'),
('Master in Management Marketing French Excellence (with the participation of ESMOD Fashion Business)', 'English', 'Rouen or Reims', 'Arts, Design & Architecture ', 'Master', '2 years', 'Total 27 000 euros', 'September', 'NEOMA'),
('Master in Management Supply Chain Management', 'English', 'Rouen or Reims', 'Business & Management ', 'Master', '2 years', 'Total 27 000 euros', 'September', 'NEOMA'),
('Master in Management Cultural and Creative Industries', 'English', 'Rouen or Reims', 'Business & Management ', 'Master', '2 years', 'Total 27 000 euros', 'September', 'NEOMA'),
('Master in Management Entrepreneurship & Innovation (in partnership with KPMG)', 'English', 'Rouen or Reims', 'Business & Management ', 'Master', '2 years', 'Total 27 000 euros', 'September', 'NEOMA'),
('Master in Management Global Management', 'English', 'Rouen or Reims', 'Business & Management ', 'Master', '2 years', 'Total 27 000 euros', 'September', 'NEOMA'),
('Master in Management International Project Development ( PRINCE2 ® certification)', 'English', 'Rouen or Reims', 'Business & Management ', 'Master', '2 years', 'Total 27 000 euros', 'September', 'NEOMA'),
('Master in Management Human Resources Consulting', 'English', 'Rouen or Reims', 'Business & Management ', 'Master', '2 years', 'Total 27 000 euros', 'September', 'NEOMA'),
('Master in Management Chartered Financial Analyst track (CFA®)', 'English', 'Rouen or Reims', 'Business & Management ', 'Master', '2 years', 'Total 27 000 euros', 'September', 'NEOMA'),
('Master in Management entrepreneurship track', 'English', 'Rouen or Reims', 'Business & Management ', 'Master', '2 years', 'Total 27 000 euros', 'September', 'NEOMA'),
('Master in Management Risk and Financial Technologies track', 'English', 'Rouen or Reims', 'Business & Management ', 'Master', '2 years', 'Total 27 000 euros', 'September', 'NEOMA'),
('MSC INTERNATIONAL MARKETING AND BRAND MANAGEMENT', 'English', 'Rouen or Reims', 'Business & Management ', 'Master', '15 months', '16 900 euros', 'September', 'NEOMA'),
('International Master in Luxury Management', 'English', 'Reims and Milan', 'Arts, Design & Architecture ', 'Master', '19 months', '€19,500', 'September', 'NEOMA'),
('MSC ACCOUNTING, AUDITING & ADVISORY', 'English', 'Rouen or Reims', 'Business & Management ', 'Master', '15 months', '16 900 euros', 'September', 'NEOMA'),
('MSC CORPORATE FINANCE', 'English', 'Rouen or Reims', 'Business & Management ', 'Master', '15 months', '16 900 euros', 'September', 'NEOMA'),
('MSC CULTURAL AND CREATIVE INDUSTRIES', 'English', 'Rouen', 'Business & Management ', 'Master', '15 months', '16 900 euros', 'September', 'NEOMA'),
('MSC DIGITAL EXPERTISE FOR MARKETING', 'English', 'Rouen or Reims', 'Business & Management ', 'Master', '15 months', '16 900 euros', 'September', 'NEOMA'),
('MSC ENTREPRENEURSHIP & INNOVATION', 'English', 'Rouen or Reims', 'Business & Management ', 'Master', '15 months', '16 900 euros', 'September', 'NEOMA'),
('MSC FINANCE, INVESTMENT AND WEALTH MANAGEMENT', 'English', 'Rouen or Reims', 'Business & Management ', 'Master', '15 months', '16 900 euros', 'September', 'NEOMA'),
('MSC FINANCIAL MARKETS AND TECHNOLOGIES', 'English', 'Rouen', 'Business & Management ', 'Master', '15 months', '16 900 euros', 'September', 'NEOMA'),
('MSC GLOBAL MANAGEMENT', 'English', 'Reims', 'Business & Management ', 'Master', '15 months', '16 900 euros', 'September', 'NEOMA'),
('MSC HUMAN RESOURCES AND CONSULTING', 'English', 'Reims', 'Business & Management ', 'Master', '15 months', '16 900 euros', 'September', 'NEOMA'),
('MSC INTERNATIONAL PROJECT DEVELOPMENT', 'English', 'Rouen', 'Business & Management ', 'Master', '15 months', '16 900 euros', 'September', 'NEOMA'),
('MSC LUXURY MARKETING', 'English', 'Paris', 'Applied Sciences & Professions / Business & Management ', 'Master', '15 months', '16 900 euros', 'September', 'NEOMA'),
('MSC MARKETING FRENCH EXCELLENCE', 'English', 'Rouen', 'Business & Management ', 'Master', '15 months', '16 900 euros', 'September', 'NEOMA'),
('MSC SUPPLY CHAIN MANAGEMENT', 'English', 'Rouen', 'Business & Management ', 'Master', '15 months', '16 900 euros', 'September', 'NEOMA'),
('MSC WINE & GASTRONOMY - MARKETING SAVOIR-FAIRE & TERROIR IN A DISRUPTIVE WORLD', 'English', 'Reims', 'Applied Sciences & Professions / Business & Management ', 'Master', '15 months', '16 900 euros', 'September', 'NEOMA'),
('Global Executive MBA', 'English', 'Paris / Tehran\n', 'Business & Management ', 'Master', '15 months', '37 000 euros ', 'September', 'NEOMA'),
('Advanced Master\nBusiness Development and Key Account Management (Part time)\n', 'French', 'Paris', 'Business & Management ', 'Master', '12 months', '16 500 euros', 'September', 'NEOMA'),
('Advanced Masters\nCorporate Communications Strategies', 'French', 'Paris', 'Business & Management ', 'Master', '12 months', '16 500 euros', 'September', 'NEOMA'),
('Advanced Masters\nMarketing and Data Analytics', 'French', 'Paris', 'Business & Management ', 'Master', '12 months', '16 500 euros', 'September', 'NEOMA'),
('Advanced Masters\nMarketing Research and Decision Making', 'French', 'Paris', 'Business & Management ', 'Master', '12 months', '16 500 euros', 'September', 'NEOMA'),
('Advanced Masters\n INTERNATIONAL FINANCIAL ANALYSIS - FINANCIAL MANAGEMENT AND STRATEGY', 'French', 'Paris', 'Business & Management ', 'Master', '12 months', '16 500 euros', 'September', 'NEOMA'),
('Mastère Spécialisé / Msc en Alternance\nDigital & Innovative Supply Chain', 'French', 'Paris', 'Business & Management ', 'Master', '12 months', '16 500 euros', 'September', 'NEOMA'),
('Doctorate of Business Administration', 'English', 'Shanghai/ Rouen', 'Business & Management ', 'PhD/DBA', '3 years', '50,000 total fees', 'April', 'NEOMA'),
('PhD in Management', 'English', 'Paris, Reims, Rouen', 'Business & Management ', 'PhD', '3 years', '10, 000 euros per year', 'September', 'NEOMA'),
('Bachelor in Management major Hospitality and tourism management', 'English', 'Toulouse', 'Hospitality, Leisure & Sports ', 'Bachelor', '3', 'Total 31 200 ', 'September', 'TBS'),
('Bachelor in Management major Aviation management', 'English', 'Toulouse', ' Engineering & Technology', 'Bachelor', '3', 'Total 31 200 ', 'September', 'TBS'),
('Bachelor in Management major International business management', 'English', 'Toulouse', 'Business & Management ', 'Bachelor', '3', 'Total 31 200', 'September', 'TBS'),
('Bachelor in Management major Innovation management', 'English', 'Toulouse', 'Business & Management ', 'Bachelor', '3', 'Total 31 200', 'September', 'TBS'),
('Bachelor in Management major Luxury and fashion management', 'English', 'Toulouse\n3rd year in Barcelona', 'Arts, Design & Architecture / Business & Management ', 'Bachelor', '3', 'Total 31 200', 'September', 'TBS'),
('Bachelor in Management major Digital marketing', 'English', 'Toulouse\n3rd year in Barcelona', 'Business & Management ', 'Bachelor', '3', 'Total 31 200', 'September', 'TBS'),
('Bachelor in Management major Entrepreneurship', 'English', 'Toulouse\n3rd year in Barcelona', 'Business & Management ', 'Bachelor', '3', 'Total 31 200', 'September', 'TBS'),
('Bachelor in Management major Finance', 'English', 'Toulouse\n3rd year in Casablanca', 'Business & Management ', 'Bachelor', '3', 'Total 31 200', 'September', 'TBS'),
('Master in Management major Finance', 'English', 'Toulouse & Barcelona', 'Business & Management ', 'Master', '2', 'Total 28 000', 'September', 'TBS'),
('Master in Management major Management', 'English', 'Toulouse & Barcelona', 'Business & Management ', 'Master', '2', 'Total 28 000', 'September', 'TBS'),
('Master in Management major Marketing', 'English', 'Toulouse & Barcelona', 'Business & Management ', 'Master', '2', 'Total 28 000', 'September', 'TBS'),
('Master in Management major Business Analytics', 'English', 'Toulouse & Barcelona', 'Business & Management ', 'Master', '2', 'Total 28 000', 'September', 'TBS'),
('Master in Management major Big data', 'English', 'Toulouse & Barcelona', 'Computer Science & IT', 'Master', '2', 'Total 28 000', 'September', 'TBS'),
('Master in Management major International business', 'English', 'Toulouse & Barcelona', 'Business & Management ', 'Master', '2', 'Total 28 000', 'September', 'TBS'),
('Master in Management major Entrepreneurship', 'English', 'Toulouse & Barcelona', 'Business & Management ', 'Master', '2', 'Total 28 000', 'September', 'TBS'),
('Master in Management major Audit & controlling', 'English', 'Toulouse & Barcelona', 'Business & Management ', 'Master', '2', 'Total 28 000', 'September', 'TBS'),
('MSc International Business', 'English', 'Toulouse & Barcelona', 'Business & Management ', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('MSc Consulting and Strategic Management', 'English', 'Toulouse', 'Business & Management ', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('MSc Strategic Innovation Management', 'English', 'Toulouse', 'Business & Management ', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('MSc Entrepreuneurship and Business Development', 'English', 'Toulouse', 'Business & Management ', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('MSc Management of human Ressources', 'English', 'Toulouse', 'Business & Management ', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('MSc Banking and International Finance', 'English', 'Toulouse', 'Business & Management ', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('MSc Corporate Finance and Advisory', 'English', 'Toulouse', 'Business & Management ', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('MSc Equity Research and Investment Management', 'English', 'Toulouse', 'Business & Management ', 'Master', '12 months', 'Total 18 000', 'September', 'TBS'),
('MSc Digital marketing and e-commerce', 'English', 'Toulouse', 'Business & Management ', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('MSc Marketing, Management & Communication', 'English', 'Toulouse, Paris, Casablanca', 'Business & Management ', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('MSc Marketing Business to Consumer (B2C)', 'English', 'Toulouse', 'Business & Management ', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('MSc Purchasing and Supply Chain Management', 'English', 'Toulouse', 'Business & Management ', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('MSc Supply Chain and Lean Management', 'English', 'Toulouse', 'Business & Management ', 'Master', '12 months', 'Total 18 000', 'September', 'TBS'),
('MSc Big data, Marketing and Management', 'English', 'Toulouse', 'Computer Science & IT / Business & Management ', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('MSc Artificial Intelligence and Business Analytics', 'English', 'Toulouse', 'Computer Science & IT', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('MSc Aerospace Management', 'English', 'Toulouse', ' Engineering & Technology', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('MSc Management des Activités Culturelles et Créatives', 'English', 'Toulouse', 'Arts, Design & Architecture', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('MSc Financial Technology and Markets', 'English', 'Paris', 'Business & Management ', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('MSc Controlling and Risk Management', 'English', 'Paris', 'Business & Management ', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('MSc International Luxury Industries Management', 'English', 'Paris', 'Arts, Design & Architecture / Business & Management', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('MSc International Financial Management and Control', 'English', 'Barcelona', 'Business & Management ', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('MSc Marketing Management', 'English', 'Barcelona', 'Business & Management ', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('MSc Fashion and Luxury Marketing Management', 'English', 'Barcelona', 'Arts, Design & Architecture / Business & Management', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('MSc Tourism and Hospitality Management', 'English', 'Barcelona', 'Hospitality, Leisure & Sports ', 'Master', '12 months', 'total 16 500', 'September', 'TBS'),
('Aerospace MBA', 'English', 'Toulouse', ' Engineering & Technology', 'MBA', '18 Months', 'Total 30 000 euros', 'September', 'TBS'),
(' DBA', 'English', 'Toulouse', 'Business & Management ', 'Doctorate/Phd', '4 years', 'Total 32 000 euros', 'January', 'TBS'),
('EMBA', 'French', 'Toulouse', 'Business & Management ', 'MBA', '14 months', 'Total 35,000 euros', 'April', 'TBS'),
('BBA in Global Managment', 'English ', 'Raleigh/ sophia antipolis', 'Business & Managment', 'Bachelor', '4 years', '10,500 euros/year', 'JAN/SEPT', 'SKEMA'),
('BBA in Global Managment Major (​Corporate Finance)', 'English ', 'Raleigh/ sophia antipolis', 'Business & Managment', 'Bachelor', '4 years', '10,500 euros/year', 'JAN/SEPT', 'SKEMA'),
('BBA in Global Managment Major (​Marketing)', 'English ', 'Raleigh/ sophia antipolis', 'Business & Managment', 'Bachelor', '4 years', '10,500 euros/year', 'JAN/SEPT', 'SKEMA'),
('BBA in Global Managment Major (​Entrepreneurship & Business Administration)', 'English ', 'Raleigh/ sophia antipolis', 'Business & Managment', 'Bachelor', '4 years', '10,500 euros/year', 'JAN/SEPT', 'SKEMA'),
('BBA in Global Managment Major (​Marine and Environmental Management)', 'English ', 'Raleigh/ sophia antipolis', 'Business & Managment', 'Bachelor', '4 years', '10,500 euros/year', 'JAN/SEPT', 'SKEMA'),
('BBA in Global Managment Major (​Global Business)', 'English ', 'Raleigh/ sophia antipolis', 'Business & Managment', 'Bachelor', '4 years', '10,500 euros/year', 'JAN/SEPT', 'SKEMA'),
('BBA in Global Managment Major (International Business)', 'English ', 'Raleigh/ sophia antipolis', 'Business & Managment', 'Bachelor', '4 years', '10,500 euros/year', 'JAN/SEPT', 'SKEMA'),
('BBA in Global Managment Major (​Luxury Brand Management)', 'English ', 'Raleigh/ sophia antipolis', 'Business & Managment / Applied Sciences & Professions', 'Bachelor', '4 years', '10,500 euros/year', 'JAN/SEPT', 'SKEMA'),
('BBA in Global Managment Major (​Supply Chain)', 'English ', 'Raleigh/ sophia antipolis', 'Business & Managment', 'Bachelor', '4 years', '10,500 euros/year', 'JAN/SEPT', 'SKEMA'),
('BBA in Global Managment Major (Sustainable Development & Social Responsibility)', 'English ', 'Raleigh/ sophia antipolis', 'Business & Managment', 'Bachelor', '4 years', '10,500 euros/year', 'JAN/SEPT', 'SKEMA'),
('BBA in Global Managment Major (​Engineering & Innovation Management)', 'English ', 'Raleigh/ sophia antipolis', 'Business & Managment', 'Bachelor', '4 years', '10,500 euros/year', 'JAN/SEPT', 'SKEMA'),
('BBA in Global Managment Major (​​​Augmented Intelligence)', 'English ', 'Raleigh/ sophia antipolis', 'Business & Managment', 'Bachelor', '4 years', '10,500 euros/year', 'JAN/SEPT', 'SKEMA'),
('BBA in International Business', 'English ', 'Raleigh', 'Business & Managment', 'Bachelor', '4 years', '10,500 euros/year', 'Sept', 'SKEMA'),
('Masters in Managment Major (Auditing, Man​agement Accounting and Information Systems)', 'English ', 'Paris', 'Computer Science & IT', 'Masters', '2 years', '14,400 euros/year', 'Sept', 'SKEMA'),
('Masters in Managment (Grand Ecolé)  Major ( Corporate Financial Management​	)', 'English ', 'Paris,\nSophia-Antipolis,\nLille,\nBelo Horizonte (Brazil),\nSuzhou (China)', 'Business & Managment', 'Masters', '2 years', '14,400 euros/year', 'Sept', 'SKEMA'),
('Masters in Managment (Grand Ecolé)  major( Financial Markets & Investments​)', 'English ', 'Paris, Sophia​ Antipolis, Raleigh (USA)', 'Business & Managment', 'Masters', '2 years', '14,400 euros/year', 'Sept', 'SKEMA'),
('Masters in Managment (Grand Ecolé)  major ( International Marketing & Business Development​)', 'English ', 'Paris,\nSophia-Antipolis,\nLille,\nBelo Horizonte (Brazil),\n\nSuzhou (China)\n', 'Business & Managment', 'Masters', '2 years', '14,400 euros/year', 'Sept', 'SKEMA'),
('Masters in Managment (Grand Ecolé)  major (Strategic Event Management & Tourism Management​)', 'English ', 'Sophia​ Antipolis', 'Business & Managment', 'Masters', '2 years', '14,400 euros/year', 'Sept', 'SKEMA'),
('Masters in Managment (Grand Ecolé)  major(  Luxury Hospitality& Innovation​)', 'English ', 'Paris', 'Applied Sciences & Professions / Hospitality, Leisure & Sports\n', 'Masters', '2 years', '14,400 euros/year', 'Sept', 'SKEMA'),
('Masters in Managment (Grand Ecolé)  major( Luxury & Fashion Management​)', 'English ', 'Sophia​ Antipolis, Suzhou (China)', 'Arts, Design & Architecture ', 'Masters', '2 years', '14,400 euros/year', 'Sept', 'SKEMA'),
('Masters in Managment (Grand Ecolé)  major( Global Luxury and Management)', 'English ', 'Raleigh (semester 1) / \nParis ​(semester 2)', 'Applied Sciences & Professions / Business & Managment', 'Masters', '2 years', '14,400 euros/year', 'Sept', 'SKEMA'),
('Masters in Managment (Grand Ecolé)  major( International Business​)', 'English ', 'Paris,\nRaleigh (USA),\nBelo Horizonte (Brazil),\nSuzhou (China)\n', 'Business & Managment', 'Masters', '2 years', '14,400 euros/year', 'Sept', 'SKEMA'),
('Masters in Managment (Grand Ecolé)  major( Entrepreneurship & Innovation​)\n', 'English ', 'Sophia Antipolis, Suzhou', 'Business & Managment', 'Masters', '2 years', '14,400 euros/year', 'Sept', 'SKEMA'),
('Masters in Managment (Grand Ecolé)  major( International Human Resources & Performance Management)', 'English ', 'Paris\n', 'Social Sciences', 'Masters', '2 years', '14,400 euros/year', 'Sept', 'SKEMA'),
('Masters in Managment (Grand Ecolé)  major( Digital Marketing)', 'English ', 'Sophia Antipolis', 'Business & Managment', 'Masters', '2 years', '14,400 euros/year', 'Sept', 'SKEMA'),
('Masters in Managment (Grand Ecolé)  major( Business Consulting & Digital Transformation)', 'English ', 'Sophia Antipolis', 'Business & Managment', 'Masters', '2 years', '14,400 euros/year', 'Sept', 'SKEMA'),
('Masters in Managment (Grand Ecolé)  major( Supply Chain & Purchasing​​)', 'English ', 'Lille ', 'Business & Managment', 'Masters', '2 years', '14,400 euros/year', 'Sept', 'SKEMA'),
('Masters in Managment (Grand Ecolé)  major( Project and Programme Management​​)       ', 'English ', '​Lille, Paris, Belo Horizonte (Brazil)\n\n', 'Business & Managment', 'Masters', '2 years', '14,400 euros/year', 'Sept', 'SKEMA'),
('Masters in Managment (Grand Ecolé)  major( International Strategy & Influence)', 'English ', 'Paris', 'Social Sciences', 'Masters', '2 years', '14,400 euros/year', 'Sept', 'SKEMA'),
('Masters in Managment (Grand Ecolé)  major( ​Digital Business, Data Analysis & Management )       ', 'English ', 'Sophia Antipolis', 'Computer Science & IT', 'Masters', '2 years', '14,400 euros/year', 'Sept', 'SKEMA'),
('Masters in Managment (Grand Ecolé)  major( ​MSc Artificial Intelligence for Business Transformation)', 'English ', 'Paris', 'Computer Science & IT', 'Masters', '2 years', '14,400 euros/year', 'Sept', 'SKEMA'),
('Masters in Managment (Grand Ecolé)  major( ​MSc Entrepreneurship & Sustainable Design)', 'English ', '​Sophia Antipolis (and Cagnes sur Mer)', 'Business & Managment', 'Masters', '2 years', '14,400 euros/year', 'Sept', 'SKEMA'),
('MSc Financial Markets and Investments', 'English ', 'Sophia-Antipolis, Paris, Raleigh', 'Business & Managment', 'Masters', '1 year', '21,500 euros', 'Sept', 'SKEMA'),
('MSC AUDITING, MANAGEMENT ACCOUNTING & INFORMATION SYSTEMS', 'English ', 'Paris', 'Computer Science & IT', 'Masters', '1 year', '17,000 Euros ', 'Sept', 'SKEMA'),
('MSC CORPORATE FINANCIAL MANAGEMENT', 'English ', 'Paris, Sophia-Antipolis, Belo Horizonte, Suzhou', 'Business & Managment', 'Masters', '1 year', '17,000 Euros ', 'September/Jan', 'SKEMA'),
('MSC DIGITAL BUSINESS, DATA ANALYSIS & MANAGEMENT', 'English ', 'Sophia-Antipolis', 'Computer Science & IT', 'Masters', '1 year', '17,000 Euros ', 'Sept', 'SKEMA'),
('MSC INTERNATIONAL HUMAN RESOURCES & PERFORMANCE MANAGEMENT', 'English ', 'Paris', 'Social Sciences', 'Masters', '1 year', '17,000 Euros ', 'Sept/Jan', 'SKEMA'),
('MSC PROJECT AND PROGRAMME MANAGEMENT & BUSINESS DEVELOPMENT', 'English ', 'Paris, Lille, Belo Horizonte', 'Business & Managment', 'Masters', '1 year', '17,000 Euros ', 'Sept/Jan', 'SKEMA'),
('​MSC STRATEGIC EVENT MANAGEMENT & TOURISM MANAGEMENT', 'English ', 'Sophia-Antipolis', 'Business & Managment', 'Masters', '1 year', '17,000 Euros ', 'Sept/Jan', 'SKEMA'),
('MSC SUPPLY CHAIN MANAGEMENT & PURCHASING\n', 'English ', 'Lille ', 'Business & Managment', 'Masters', '1 year', '17,000 Euros ', 'Sept/Jan', 'SKEMA'),
('MSC DIGITAL MARKETING', 'English ', 'Sophia-Antipolis', 'Business & Managment', 'Masters', '1 year', '17,000 Euros ', 'Sept/Jan', 'SKEMA'),
('MSC GLOBAL LUXURY AND MANAGEMENT ​DUAL MASTER\'S DEGREE', 'English ', 'Sophia-Antipolis, Raleigh', 'Business & Managment', 'Masters', '1 year', '25,000 euro', 'Sept/Jan', 'SKEMA'),
('MSC INTERNATIONAL MARKETING & BUSINESS DEVELOPMENT\n', 'English ', 'Paris, Sophia-Antipolis, Lille, Belo Horizonte, Suzhou', 'Business & Managment', 'Masters', '1 year', '17,000 Euros ', 'Sept/Jan', 'SKEMA'),
('MSC LUXURY & FASHION MANAGEMENT\n', 'English ', 'Sophia-Antipolis, Suzhou', 'Business & Managment', 'Masters', '1 year', '19,000 euro', 'Sept/Jan', 'SKEMA'),
('MSC LUXURY HOSPITALITY & INNOVATION\n', 'English ', 'Paris', 'Hospitality, Leisure & Sports', 'Masters', '1 year', '25,000 euros', 'Sept', 'SKEMA'),
('MSC ARTIFICIAL INTELLIGENCE FOR BUSINESS TRANSFORMATION', 'English ', 'Paris', 'Computer Science & IT', 'Masters', '1 year', '25,000 euros', 'Sept', 'SKEMA'),
('MSC BUSINESS CONSULTING & DIGITAL TRANSFORMATION\n', 'English ', 'Sophia-Antipolis', 'Business & Managment', 'Masters', '1 year', '17,000 Euros ', 'Sept/Jan', 'SKEMA'),
('MSC ENTREPRENEURSHIP & INNOVATION\n', 'English ', 'Sophia-Antipolis, Suzhou', 'Business & Managment', 'Masters', '1 year', '17,000 Euros ', 'Sept/Jan', 'SKEMA'),
('MSC ENTREPRENEURSHIP & SUSTAINABLE DESIGN\n', 'English ', 'Sophia-Antipolis, SDS campus in Cagnes-sur-Mer', 'Business & Managment', 'Masters', '1 year', '25,000 euros', 'Sept', 'SKEMA'),
('MSC INTERNATIONAL BUSINESS', 'English ', 'Paris, Raleigh, Suzhou, Brazil (FDC, Sao Paulo), Cape Town', 'Business & Managment', 'Masters', '1 year', '17,000 Euros ', 'Sept/Jan', 'SKEMA'),
('Msc International Strategy & Influence\n', 'English ', 'Paris', 'Social Sciences', 'Masters', '1 year', '17,000 Euros ', 'Sept/Jan', 'SKEMA'),
('MS AUDITING, MANAGEMENT ACCOUNTING & INFORMATION SYSTEMS (MS EXPERT EN CONTRÔLE DE GESTION, AUDIT ET GESTION DE SYSTÈMES D’INFORMATION)', 'French', 'Paris, Lille', 'Computer Science & IT', 'Specialized Master', '1 year', '15 000 euros \n', 'Oct/Feb', 'SKEMA'),
('MS WEALTH MANAGEMENT (MS MANAGER EN GESTION DE PATRIMOINE FINANCIER)', 'French', 'Paris', 'Business & Managment', 'Specialized Master', '1 year', '15 000 euros', 'Oct', 'SKEMA'),
('MS CORPORATE FISCAL MANAGEMENT (MS EXPERT EN GESTION FISCALE DE L\'ENTREPRISE)', 'French', 'Lille ', 'Business & Managment', 'Specialized Master', '1 year', '15,000 euros', 'Oct/Feb', 'SKEMA'),
('MS MARKETING DATA & E-COMMERCE (MS MANAGER MARKETING DATA ET COMMERCE ELECTRONIQUE)', 'French', 'Paris, Lille', 'Computer Science & IT', 'Specialized Master', '1 year', '15 000  euros\n', 'Oct/Feb', 'SKEMA'),
('MS SUPPLY CHAIN MANAGEMENT & PURCHASING (MS MANAGEMENT DE LA CHAÎNE LOGISTIQUE ET ACHATS)', 'English/French', 'Paris/Lille', 'Business & Managment', 'Specialized Master', '1 year', '17,000 Euros', 'Oct/Feb', 'SKEMA'),
('MS PROJECT AND PROGRAMME MANAGEMENT & BUSINESS DEVELOPMENT (MS MANAGEMENT DES PROJETS ET PROGRAMMES)', 'French', 'Paris/Lille', 'Business & Managment', 'Specialized Master', '1 year', '15 000  euros\n', 'Oct/Feb', 'SKEMA'),
('GLOBAL EXECUTIVE MBA', 'English', 'Paris', 'Business & Managment', 'MBA', '18-24 month Part time', '32,000 euros', 'Feb/Sept', 'SKEMA'),
('DBA', 'English', 'Lille ', 'Business & Managment', 'DBA', '3 years', '29,000 euros', 'Aug/Feb', 'SKEMA'),
('Digital DBA', 'English', '', 'Business & Managment', 'DBA', '3 years', '25,000 euros', 'Jan/April,july, OCt', 'SKEMA'),
('Bachelor of International Business Administration', 'English', 'Montpellier', 'Business & Management', 'Bachelor', '3 years', 'Year 1 and 2 = 10 900 euros', 'September', 'Montpelier Business School'),
('Bachelor of International Business Administration (GLOBAL TRACK)', 'English', 'Montpellier', 'Business & Management', 'Bachelor', '4 years', 'Year 1 = 10 900 euros\n Year 2 and 3 = 12 000 euros', 'September', 'Montpelier Business School'),
('MIM Advance Finance', 'English', 'Montpellier', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'September', 'Montpelier Business School'),
('MIM Energy and Environemental Finance', 'English', 'Montpellier', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'September', 'Montpelier Business School'),
('MIM Responsible Finance', 'English', 'Montpellier', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'September', 'Montpelier Business School'),
('MIM Innovative Finance', 'English', 'Montpellier', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'September', 'Montpelier Business School'),
('MIM Digital Marketing', 'English', 'Montpellier', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'September', 'Montpelier Business School'),
('MIM Corporate Finance', 'English', 'Montpellier', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'September', 'Montpelier Business School'),
('MIM Business Model Developer', 'English', 'Montpellier', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'September', 'Montpelier Business School'),
('MIM Advance Marketing', 'English', 'Montpellier', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'September', 'Montpelier Business School'),
('MIM French Excellence, Luxury and Fashion', 'English', 'Montpellier', 'Applied Sciences & Professions', 'Master', '2 years', '12 500 euros per year', 'September', 'Montpelier Business School'),
('MIM Food and Wine Management', 'English', 'Montpellier', 'Applied Sciences & Professions', 'Master', '2 years', '12 500 euros per year', 'September', 'Montpelier Business School'),
('MIM Tourism and Hospitality Management', 'English', 'Montpellier', 'Hospitality, Leisure & Sports', 'Master', '2 years', '12 500 euros per year', 'September', 'Montpelier Business School'),
('MIM Digital Management', 'English', 'Montpellier', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'September', 'Montpelier Business School'),
('MIM Data Sciences, Big Data and Artificial Intelligence', 'English', 'Montpellier', 'Computer Science & IT', 'Master', '2 years', '12 500 euros per year', 'September', 'Montpelier Business School'),
('MIM Lean Operation Management', 'English', 'Montpellier', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'September', 'Montpelier Business School'),
('MIM Supply Chain Management', 'English', 'Montpellier', 'Bachelors in Hospitality, Leisure & Sports', 'Master', '2 years', '12 500 euros per year', 'September', 'Montpelier Business School'),
('MIM International Supply Chain Management', 'English', 'Montpellier', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'September', 'Montpelier Business School'),
('MIM Corporate Social Responsibility', 'English', 'Montpellier', 'Business & Management', 'Master', '2 years', '12 500 euros per year', 'September', 'Montpelier Business School'),
('Msc Tri-continental in Entrepreneurship & Innovation (TMEI)', 'English', 'Mysore, Montpellier, Mexico City', 'Business & Management', 'Master', '15 months', 'Total = 16 500 euros', 'September', 'Montpelier Business School'),
('Msc Advance Finance', 'English', 'Montpellier', 'Business & Management', 'Master', '18 months', 'Total= 13 900 euros', 'September', 'Montpelier Business School'),
('Msc Energy and Environemental Finance', 'English', 'Montpellier', 'Business & Management', 'Master', '18 months', 'Total= 13 900 euros', 'September', 'Montpelier Business School'),
('Msc Responsible Finance', 'English', 'Montpellier', 'Business & Management', 'Master', '18 months', 'Total= 13 900 euros', 'September', 'Montpelier Business School'),
('Msc Innovative Finance', 'English', 'Montpellier', 'Business & Management', 'Master', '18 months', 'Total= 13 900 euros', 'September', 'Montpelier Business School'),
('Msc Digital Marketing', 'English', 'Montpellier', 'Business & Management', 'Master', '18 months', 'Total= 13 900 euros', 'September', 'Montpelier Business School'),
('Msc Corporate Finance', 'English', 'Montpellier', 'Business & Management', 'Master', '18 months', 'Total= 13 900 euros', 'September', 'Montpelier Business School'),
('Msc Business Model Developer', 'English', 'Montpellier', 'Business & Management', 'Master', '18 months', 'Total= 13 900 euros', 'September', 'Montpelier Business School'),
('Msc Advance Marketing', 'English', 'Montpellier', 'Business & Management', 'Master', '18 months', 'Total= 13 900 euros', 'September', 'Montpelier Business School'),
('Msc French Excellence, Luxury and Fashion', 'English', 'Montpellier', 'Applied Sciences & Professions', 'Master', '18 months', 'Total= 13 900 euros', 'September', 'Montpelier Business School'),
('Msc Food and Wine Management', 'English', 'Montpellier', 'Applied Sciences & Professions', 'Master', '18 months', 'Total= 13 900 euros', 'September', 'Montpelier Business School'),
('Msc Tourism and Hospitality Management', 'English', 'Montpellier', 'Hospitality, Leisure & Sports', 'Master', '18 months', 'Total= 13 900 euros', 'September', 'Montpelier Business School'),
('Msc Digital Management', 'English', 'Montpellier', 'Business & Management', 'Master', '18 months', 'Total= 13 900 euros', 'September', 'Montpelier Business School'),
('Msc Data Sciences, Big Data and Artificial Intelligence', 'English', 'Montpellier', 'Computer Science & IT', 'Master', '18 months', 'Total= 13 900 euros', 'September', 'Montpelier Business School'),
('Msc Lean Operation Management', 'English', 'Montpellier', 'Business & Management', 'Master', '18 months', 'Total= 13 900 euros', 'September', 'Montpelier Business School'),
('Msc Supply Chain Management', 'English', 'Montpellier', 'Business & Management', 'Master', '18 months', 'Total= 13 900 euros', 'September', 'Montpelier Business School'),
('Msc International Supply Chain Management', 'English', 'Montpellier', 'Business & Management', 'Master', '18 months', 'Total= 13 900 euros', 'September', 'Montpelier Business School'),
('Msc Corporate Social Responsibility', 'English', 'Montpellier', 'Business & Management', 'Master', '18 months', 'Total= 13 900 euros', 'September', 'Montpelier Business School'),
('Bachelor In Managment', 'French/English ', 'Nantes', 'Business & Management ', 'Bachelor', '1 year', '6 600 per year', 'Sept', 'AUDENCIA'),
('BBA', 'French/English ', 'Nantes', 'Business & Management ', 'Bachelor', '1 year', '8 200 per year', 'Sept', 'AUDENCIA'),
('Msc International Managment', 'English', 'Nantes', 'Business & Management ', 'Master', '1 year', 'Total 18 000 ', 'Sept', 'AUDENCIA'),
('Master in European and International Business Management', 'English', 'Deusto, Nantes, Bradford', 'Business & Management / Social Sciences\n', 'Master', '1 year', 'Total 15 350', 'Sept', 'AUDENCIA'),
('MASTER IN MANAGEMENT (GRANDE ECOLE)', 'English/French', 'Nantes', 'Business & Management ', 'Master', '2 years', '15 000 per year', 'Sept', 'AUDENCIA'),
('MSC IN MANAGEMENT-ENGINEERING (GRANDE ECOLE)', 'English', 'Nantes', 'Business & Management / Engineering & Technology', 'Master', '15 months', 'Total 22 000 euros', 'Sept/Feb', 'AUDENCIA'),
('MSC & MBA IN FOOD & AGRIBUSINESS MANAGEMENT', 'English ', 'Nantes', 'Business & Management / Applied Sciences & Professions\n', 'Master', '1 year', 'Total 16 000 euros', 'Sept', 'AUDENCIA'),
('MSC IN SUPPLY CHAIN AND PURCHASING MANAGEMENT\n', 'English', 'Nantes', 'Business & Management ', 'Master', '1 year', 'Total 17 500 euros', 'Sept/Feb', 'AUDENCIA'),
('MSC IN MANAGEMENT & ENTREPRENEURSHIP IN THE CREATIVE ECONOMY', 'English', 'Nantes', 'Business & Management ', 'Master', '1 year', 'Total 16 000 euros', 'Sept', 'AUDENCIA'),
('MSC IN COGNAC AND SPIRITS MANAGEMENT\n', 'Engnlish', 'Nantes/Segonzac', 'Applied Sciences & Professions', 'Master', '1 year', 'Total 16 000 euros', 'Sept', 'AUDENCIA'),
('MSC IN FINANCIAL TECHNOLOGY & RISK CONTROL', 'English', 'Nantes', 'Business & Management ', 'Master', '1 year', 'total 22 000 euros', 'Sept', 'AUDENCIA'),
('MBA Full time', 'English', 'Nantes', 'Business & Management ', 'MBA', '1 year', 'Total 31 500 euros', 'Sept', 'AUDENCIA'),
('Pre-Msc International Managment', 'English', 'Nantes', 'Business & Management ', 'Master', '2 years', 'Total 23 000 euros', 'Sept', 'AUDENCIA'),
('Pre-MSC & MBA IN FOOD & AGRIBUSINESS MANAGEMENT\n', 'English', 'Nantes', 'Business & Management / Applied Sciences & Professions\n', 'Master', '2 years', 'Total 21 000 euros', 'Sept', 'AUDENCIA'),
('pre-MSC IN SUPPLY CHAIN AND PURCHASING MANAGEMENT\n', 'English', 'Nantes', 'Business & Management ', 'Master', '2 years', 'Total 21 000 euros', 'Sept', 'AUDENCIA'),
('Pre-MSC IN MANAGEMENT & ENTREPRENEURSHIP IN THE CREATIVE ECONOMY', 'English', 'Nantes', 'Business & Management ', 'Master', '2 years', 'Total 21 000 euros', 'Sept', 'AUDENCIA'),
('Pre-MSC IN COGNAC AND SPIRITS MANAGEMENT\n', 'English', 'Nantes', 'Applied Sciences & Professions', 'Master', '2 years', 'Total 21 000 euros', 'Sept', 'AUDENCIA'),
('MIM- Major CORPORATE FINANCE\n', 'English', 'Nantes', 'Business & Management ', 'Master', '2 years', 'Total 29 750 euros', 'Sept', 'AUDENCIA'),
('MIM-Major Financial market', 'English', 'Nantes', 'Business & Management ', 'Master', '2 years', 'Total 29 750 euros', 'Sept', 'AUDENCIA'),
('MIM-Major Risk Managment and Compliance', '', 'Nantes', 'Business & Management ', 'Master', '2 years', 'Total 29 750 euros', 'Sept', 'AUDENCIA'),
('MIM-Major FINANCIAL STRATEGY\n', 'English', 'Nantes', 'Business & Management ', 'Master', '2 years', 'Total 29 750 euros', 'Sept', 'AUDENCIA'),
('MIM-Major  FINANCIAL ANALYSIS & INVESTMENT MANAGEMENT\n', 'English', 'Nantes', 'Business & Management ', 'Master', '2 years', 'Total 29 750 euros', 'Sept', 'AUDENCIA'),
('MIM-Major  MANAGEMENT CONTROL AND AUDITING\n', 'English', 'Nantes', 'Business & Management ', 'Master', '2 years', 'Total 29 750 euros', 'Sept', 'AUDENCIA'),
('MIM- Major MARKETING FOR PRODUCT MANAGERS\n', 'English', 'Nantes', 'Business & Management ', 'Master', '2 years', 'Total 29 750 euros', 'Sept', 'AUDENCIA'),
('MIM- Major COGNAC & SPIRITS MANAGEMENT\n\n', 'English', 'Nantes', 'Applied Sciences & Professions', 'Master', '2 years', 'Total 29 750 euros', 'Sept', 'AUDENCIA'),
('MIM-Major BUSINESS DEVELOPMENT\n', 'French', 'Nantes', 'Business & Management ', 'Master', '2 years', 'Total 29 750 euros', 'Sept', 'AUDENCIA'),
('MIM-Major COMMUNICATION AND MEDIA\n', 'French', 'Nantes', 'Business & Management / Journalism & Media ', 'Master', '2 years', 'Total 29 750 euros', 'Sept', 'AUDENCIA'),
('MIM- Major MARKETING IN THE DIGITAL AGE\n', 'French', 'Nantes', 'Business & Management ', 'Master', '2 years', 'Total 29 750 euros', 'Sept', 'AUDENCIA'),
('MIM- Major MANAGING FOR SUSTAINABLE IMPACT\n', 'English', 'Nantes', 'Business & Management ', 'Master', '2 years', 'Total 29 750 euros', 'Sept', 'AUDENCIA'),
('MIM- Major SUPPLY CHAIN AND PURCHASING MANAGEMENT\n', 'English', 'Nantes', 'Business & Management ', 'Master', '2 years', 'Total 29 750 euros', 'Sept', 'AUDENCIA'),
('MIM-Major MANAGEMENT OF DIGITAL BUSINESS AND INFORMATION TECHNOLOGY\n', 'English', 'Nantes', 'Business & Management ', 'Master', '2 years', 'Total 29 750 euros', 'Sept', 'AUDENCIA'),
('MIM-Major INTERNATIONAL DEVELOPMENT FOR SMES\n', 'English', 'Nantes', 'Business & Management ', 'Master', '2 years', 'Total 29 750 euros', 'Sept', 'AUDENCIA'),
('MIM-Major ENTREPRENEURSHIP\n', 'French', 'Nantes', 'Business & Management ', 'Master', '2 years', 'Total 29 750 euros', 'Sept', 'AUDENCIA'),
('MIM-Major HUMAN RESOURCE MANAGEMENT\n', 'French', 'Nantes', 'Business & Management ', 'Master', '2 years', 'Total 29 750 euros', 'Sept', 'AUDENCIA'),
('MIM-Major ARTS MANAGEMENT\n', 'French', 'Nantes', 'Business & Management ', 'Master', '2 years', 'Total 29 750 euros', 'Sept', 'AUDENCIA'),
('MIM-Major INTERNATIONAL MANAGEMENT OF PUBLIC POLICIES\n', 'French', 'Nantes', 'Business & Management ', 'Master', '2 years', 'Total 29 750 euros', 'Sept', 'AUDENCIA'),
('MiM Major- CREATION & MANAGEMENT OF AUDIO-VISUAL PRODUCTION', 'French', 'Nantes', 'Business & Management ', 'Master', '1year ', 'Total 29 750 euros', 'Sept', 'AUDENCIA'),
('Mastère Spécialisé® Management et Compétences Internationales (MS MCI)', 'French', 'Nantes', 'Business & Management ', 'Specialised Master', '1year ', 'Total 16 000 euros', 'Sept', 'AUDENCIA'),
('Mastère Spécialisé Management Global des Achats et de la Supply Chain', 'French', 'Nantes', 'Business & Management ', 'Specialised Master', '1year ', 'Total 16 000 euros', 'Sept', 'AUDENCIA'),
('Mastère Spécialisé Management des Organisations de Sport', 'French', 'Paris', 'Business & Management ', 'Specialised Master', '1year ', 'Total 16 000 euros', 'Sept', 'AUDENCIA'),
('Mastère Spécialisé Marketing, Design et Création', 'French', 'Nantes', 'Business & Management ', 'Specialised Master', '1year ', 'Total 16 000 euros', 'Sept', 'AUDENCIA'),
('Mastère Spécialisé Stratégies Marketing à l\'Ere Digitale', 'French', 'Nantes', 'Business & Management ', 'Specialised Master', '1year ', 'Total 16 000 euros', 'Sept', 'AUDENCIA');
INSERT INTO `progs` (`Name`, `Language`, `city`, `type`, `level`, `length`, `fee`, `intake`, `school`) VALUES
('Mastère Spécialisé Finance, Risque et Contrôle', 'French', 'Nantes', 'Business & Management ', 'Specialised Master', '1year ', 'Total 17 000 euros ', 'Sept', 'AUDENCIA'),
('Mastère Spécialisé Acteur pour la Transition Énergétique', 'French', 'Nantes', 'Business & Management ', 'Specialised Master', '1year ', 'Total 16 000 euros', 'Sept', 'AUDENCIA'),
('Mastère Spécialisé Management de la Filière Musicale', 'French', 'Paris', 'Business & Management ', 'Specialised Master', '1year ', 'Total 16 000 euros', 'Sept', 'AUDENCIA'),
('DBA', 'English', 'Paris', 'Business & Management ', 'DBA', '3 years', 'Total 32 000 euros', 'Sept/Jan', 'AUDENCIA'),
('EMBA', 'English/French', 'Paris/NANTES', 'Business & Management ', 'EMBA', '1 year', 'Total 38 500 euros', 'April/ Oct', 'AUDENCIA'),
('Undergraduate cycle (Grand Ecole)', 'English', 'Angers, Paris, Aix-en-Provence, Bordeaux and Lyon', 'Business & Management ', 'Bachelor', '3 Years', '10,500 euros per year', 'Sept', 'ESSCA'),
('Bachelor in International Management', 'English', 'Paris, Lyon and Budapest', 'Business & Management ', 'Bachelor', '3 years', '7,600 per year', 'Sept', 'ESSCA'),
('MSc in International Finance', 'English', 'Paris', 'Business & Management ', 'Masters', '1 year', '14,750 euros', 'Sept', 'ESSCA'),
('MSc in Digital and Big Data for Value', 'English', 'Paris', 'Computer Science & IT Degrees / Business & Management ', 'Masters', '1 year', '14,750 euros', 'Sept', 'ESSCA'),
('MSc in Entrepreneurship and Design Thinking', 'English/French', 'Paris and Laval (QUEBEC)', 'Business & Management ', 'Masters', '1 year', '14,750 euros', 'Sept', 'ESSCA'),
('MSc in International Entrepreneurship (part of the IBSA Dual Master’s Degree Program)', 'English', 'Paris', 'Business & Management ', 'Masters', '1 year', '14,750 euros', 'Sept', 'ESSCA'),
('MSc EU-Asia Luxury Marketing\n', 'English', 'Shanghai/ PARIS', 'Business & Management / Applied Sciences & Professions ', 'Masters', '1 year', '14,750 euros', 'Sept', 'ESSCA'),
('MSc EU-Asia Digital Marketing and Business', 'English', 'Shanghai', 'Business & Management ', 'Masters', '1 year', '14,750 euros', 'Sept', 'ESSCA'),
('Msc in International Tourism Management', 'English', 'Shanghai', 'Hospitality, Leisure & Sports Degrees / Business & Management ', 'Masters', '1 year', '14,750 euros', 'Sept', 'ESSCA'),
('M.Sc. in International Business & Enterprise double degree', 'English', 'Nice', 'Business & Management ', 'Master Of Sciences (MSc)', '1 year', '10 000 / year', 'September', 'IPAG'),
('M.Sc. in Finance and Investment double degree', 'English', 'Paris', 'Business & Management ', 'Master Of Sciences (MSc)', '1 year', '10 000 / year', 'September', 'IPAG'),
('M.Sc. in Business Management double degree', 'English', 'Nice', 'Business & Management ', 'Master Of Sciences (MSc)', '1 year', '10 000 / year', 'September', 'IPAG'),
('M.Sc. in International Marketing with Tourism & Events double degree', 'English', 'Nice', 'Business & Management ', 'Master Of Sciences (MSc)', '1 year', '10 000 / year', 'September', 'IPAG'),
('MBA in International Human Resources Management', 'English', 'Paris/Nice', 'Business & Management ', 'MBA', '1 year', '10 000 / year', 'September', 'IPAG'),
('MBA in International Trade', 'English', 'Paris/Nice', 'Business & Management ', 'MBA', '1 year', '10 000 / year', 'September', 'IPAG'),
('MBA In International Hospitality Management', 'English', 'Paris/Nice', 'Business & Management ', 'MBA', '1 year', '10 000 / year', 'September', 'IPAG'),
('MBA in Luxury Brand Management', 'English', 'Paris/Nice', 'Applied Sciences & Professions ', 'MBA', '1 year', '10 000 / year', 'September', 'IPAG'),
('MBA in Energy & Sustainable Development Management', 'English', 'Paris/Nice', 'Business & Management ', 'MBA', '1 year', '10 000 / year', 'September', 'IPAG'),
('Doctorate of Business Administration', 'English', 'Paris', 'Business & Management ', 'Doctorate/PHD', '3 yars', '21 000 euros', 'September', 'IPAG'),
('Le Master 2 en Management & RSE (Bac + 5)', 'French', 'Paris', 'Business & Management ', 'Executive education', '1 year', '10,800 euros ', 'September', 'IPAG'),
('INTERNATIONAL INTEGRATED CYCLE (CII) major Software Engineering ', 'English', 'Paris', 'Computer Science & IT', 'Bachelor', '2 years', '7 500 euros per year', 'September', 'ISEP'),
('INTERNATIONAL INTEGRATED CYCLE (CII) major Embedded systems', 'English', 'Paris', 'Computer Science & IT', 'Bachelor', '2 years', '7 500 euros per year', 'September', 'ISEP'),
('INTERNATIONAL INTEGRATED CYCLE (CII) Wireless Telecommunications and IoT systems', 'English', 'Paris', 'Computer Science & IT', 'Bachelor', '2 years', '7 500 euros per year', 'September', 'ISEP'),
('Master EMBEDDED SYSTEMS\n\n', 'English', 'Paris', 'Computer Science & IT', 'Master ', '2 years', '8 900 euros per year', 'September', 'ISEP'),
('Master EMBEDDED SYSTEMS\n\n', 'English', 'Paris', 'Computer Science & IT', 'Master ', '2 years', '8 900 euros per year', 'September', 'ISEP'),
('Master WIRELESS TELECOMMUNICATION SYSTEMS AND IOT\n\n', 'English', 'Paris', 'Computer Science & IT', 'Master ', '2 years', '8 900 euros per year', 'September', 'ISEP'),
('Bachelor Foundation Year\n\n', 'English', 'La Rochelle, Paris\n', 'Business & Management ', 'Bahelor', '1 year of higher education\n60 ECTS', 'Students from outside the European Union\nBachelor Foundation Year : €7,900', 'October\nFebruary', 'Excelia'),
('Business Foundation Programme', 'English', 'La Rochelle', 'Business & Management ', 'Bahelor', '6 months or 1 year', 'International students\nSemester: €4,885\nYear: €7,155', 'September\nJanuary', 'Excelia'),
('Bachelor in Business major Marketing and Customer Relations', 'English', 'La Rochelle, Tours, Niort, Rochefort', 'Business & Management ', 'Bachelor', '3 Years', 'Students from outside the European Union\nYear 1: €8,600\nYear 2: €8,900\nYear 3: €8,900', 'September\nNovember\nJanuary', 'Excelia'),
('Bachelor in Business major Entrepreneurship - My Future Start-Up', 'English', 'La Rochelle, Tours, Niort, Rochefort', 'Business & Management ', 'Bachelor', '3 Years', 'Students from outside the European Union\nYear 1: €8,600\nYear 2: €8,900\nYear 3: €8,900', 'September\nNovember\nJanuary', 'Excelia'),
('Bachelor in Business major International Affairs Manager', 'English', 'La Rochelle, Tours, Niort, Rochefort', 'Business & Management ', 'Bachelor', '3 Years', 'Students from outside the European Union\nYear 1: €8,600\nYear 2: €8,900\nYear 3: €8,900', 'September\nNovember\nJanuary', 'Excelia'),
('Bachelor in Business major Real Estate Business Manager', 'English', 'La Rochelle, Tours, Niort, Rochefort', 'Applied Sciences & Professions / Business & Management ', 'Bachelor', '3 Years', 'Students from outside the European Union\nYear 1: €8,600\nYear 2: €8,900\nYear 3: €8,900', 'September\nNovember\nJanuary', 'Excelia'),
('Bachelor in Business major Banking and Insurance', 'English', 'La Rochelle, Tours, Niort, Rochefort', 'Business & Management ', 'Bachelor', '3 Years', 'Students from outside the European Union\nYear 1: €8,600\nYear 2: €8,900\nYear 3: €8,900', 'September\nNovember\nJanuary', 'Excelia'),
('Bachelor in Business major Digital Project Manager', 'English', 'La Rochelle, Tours, Niort, Rochefort', 'Business & Management ', 'Bachelor', '3 Years', 'Students from outside the European Union\nYear 1: €8,600\nYear 2: €8,900\nYear 3: €8,900', 'September\nNovember\nJanuary', 'Excelia'),
('Bachelor in Business major Purchasing Manager', 'English', 'La Rochelle, Tours, Niort, Rochefort', 'Business & Management ', 'Bachelor', '3 Years', 'Students from outside the European Union\nYear 1: €8,600\nYear 2: €8,900\nYear 3: €8,900', 'September\nNovember\nJanuary', 'Excelia'),
('Bachelor in Business major Quality, Safety and Environment Manager', 'English', 'La Rochelle, Tours, Niort, Rochefort', 'Business & Management / Environmental Studies & Earth Sciences', 'Bachelor', '3 Years', 'Students from outside the European Union\nYear 1: €8,600\nYear 2: €8,900\nYear 3: €8,900', 'September\nNovember\nJanuary', 'Excelia'),
('Bachelor in Business major Sales Management', 'English', 'La Rochelle, Tours, Niort, Rochefort', 'Business & Management ', 'Bachelor', '3 Years', 'Students from outside the European Union\nYear 1: €8,600\nYear 2: €8,900\nYear 3: €8,900', 'September\nNovember\nJanuary', 'Excelia'),
('Bachelor in Business major Management and Human Resources', 'English', 'La Rochelle, Tours, Niort, Rochefort', 'Business & Management ', 'Bachelor', '3 Years', 'Students from outside the European Union\nYear 1: €8,600\nYear 2: €8,900\nYear 3: €8,900', 'September\nNovember\nJanuary', 'Excelia'),
('Bachelor in Business major Digital Marketing', 'English', 'La Rochelle, Tours, Niort, Rochefort', 'Business & Management ', 'Bachelor', '3 Years', 'Students from outside the European Union\nYear 1: €8,600\nYear 2: €8,900\nYear 3: €8,900', 'September\nNovember\nJanuary', 'Excelia'),
('Bachelor in Business major Wines and Spirits', 'English', 'La Rochelle, Tours, Niort, Rochefort', 'Applied Sciences & Professions / Business & Management ', 'Bachelor', '3 Years', 'Students from outside the European Union\nYear 1: €8,600\nYear 2: €8,900\nYear 3: €8,900', 'September\nNovember\nJanuary', 'Excelia'),
('Bachelor in Business major Sustainable Development Manager', 'English', 'La Rochelle, Tours, Niort, Rochefort', 'Business & Management ', 'Bachelor', '3 Years', 'Students from outside the European Union\nYear 1: €8,600\nYear 2: €8,900\nYear 3: €8,900', 'September\nNovember\nJanuary', 'Excelia'),
('Bachelor Of Business Administration (BBA)', 'English', 'La Rochelle, Paris', 'Business & Management ', 'Bachelor', '4 years', 'Students from outside the European Union\nYear 1: €11,000\nYear 2: €11,000\nYear 3: €11,200\nYear 4: €11,200', 'September', 'Excelia'),
('Bachelor in Communications', 'English', 'La Rochelle', 'Business & Management ', 'Bachelor', '3 Years', 'Students from outside the European Union\nYear 1: €7,900\nYear 2: €7,900\nYear 3: €7,900', 'September', 'Excelia'),
('Bachelor in Web Design\n\n', 'English', 'La Rochelle', 'Business & Management ', 'Bachelor', '3 Years', 'Students from outside the European Union\nYear 1: €7,900\nYear 2: €7,900\nYear 3: €7,900', 'September', 'Excelia'),
('Bachelor in Tourism & Hospitality Management', 'English', 'La Rochelle, Tours, Niort, Rochefort', 'Hospitality, Leisure & Sports ', 'Bachelor', '4 Years', 'Students from outside the European Union\nYear 1: €8,600\nYear 2: €8,900\nYear 3: €8,900', 'September\nJanuary', 'Excelia'),
('Master in Management\n\n', 'English', 'La Rochelle, Tours, Beijing and New Rochelle', 'Business & Management ', 'Bachelor', '2 years', '€12,600 per years', 'September', 'Excelia'),
('Msc Audit and Consultancy', 'English', 'La Rochelle, Niort, Cognac, Florence', 'Business & Management ', 'Master', '12,16 or 24 Months track', '24-month Track and 16-month Track: €13,250 per year\n12-month Track: €15,500', 'September\nJanuary', 'Excelia'),
('Msc Banking, Insurance, Wealth and Real Estate Management', 'English', 'La Rochelle, Niort, Cognac, Florence', 'Business & Management ', 'Master', '12,16 or 24 Months track', '24-month Track and 16-month Track: €13,250 per year\n12-month Track: €15,500', 'September\nJanuary', 'Excelia'),
('Msc Sustainable Development, CSR and Environment', 'English', 'La Rochelle, Niort, Cognac, Florence', 'Business & Management ', 'Master', '12,16 or 24 Months track', '24-month Track and 16-month Track: €13,250 per year\n12-month Track: €15,500', 'September\nJanuary', 'Excelia'),
('Msc International Business Management', 'English', 'La Rochelle, Niort, Cognac, Florence', 'Business & Management ', 'Master', '12,16 or 24 Months track', '24-month Track and 16-month Track: €13,250 per year\n12-month Track: €15,500', 'September\nJanuary', 'Excelia'),
('Msc Purchasing and Supply Chain Management', 'English', 'La Rochelle, Niort, Cognac, Florence', 'Business & Management ', 'Master', '12,16 or 24 Months track', '24-month Track and 16-month Track: €13,250 per year\n12-month Track: €15,500', 'September\nJanuary', 'Excelia'),
('Msc Engineering Business Management', 'English', 'La Rochelle, Niort, Cognac, Florence', 'Business & Management / Engineering & Technology', 'Master', '12,16 or 24 Months track', '24-month Track and 16-month Track: €13,250 per year\n12-month Track: €15,500\n+ 3000 euros', 'September\nJanuary', 'Excelia'),
('Msc Global Luxury and Fashion Management', 'English', 'La Rochelle, Niort, Cognac, Florence', 'Arts, Design & Architecture / Business & Management ', 'Master', '12,16 or 24 Months track', '24-month Track and 16-month Track: €13,250 per year\n12-month Track: €15,500', 'September\nJanuary', 'Excelia'),
('Msc Digital Marketing and Collaborative Strategies', 'English', 'La Rochelle, Niort, Cognac, Florence', 'Business & Management ', 'Master', '12,16 or 24 Months track', '24-month Track and 16-month Track: €13,250 per year\n12-month Track: €15,500', 'September\nJanuary', 'Excelia'),
('Msc International Hospitality Management', 'English', 'La Rochelle, Niort, Cognac, Florence', 'Hospitality, Leisure & Sports ', 'Master', '12,16 or 24 Months track', '24-month Track and 16-month Track: €13,250 per year\n12-month Track: €15,500', 'September\nJanuary', 'Excelia'),
('Msc International Event Management', 'English', 'La Rochelle, Niort, Cognac, Florence', 'Hospitality, Leisure & Sports ', 'Master', '12,16 or 24 Months track', '24-month Track and 16-month Track: €13,250 per year\n12-month Track: €15,500', 'September\nJanuary', 'Excelia'),
('MSc in Destination Management\n\n', 'English', 'La Rochelle', 'Hospitality, Leisure & Sports ', 'Master', '2 years', 'Students from outside the European Union\nTotal: €22,400', 'September\nJanuary', 'Excelia'),
('International Bachelor of Computer Science', 'English', 'Paris', 'Computer Science & IT', 'Bachelor', '3 years', '9,000', 'Sept', 'EPITA'),
('Msc Computer Science', 'English', 'Paris', 'Computer Science & IT', 'Masters', '18 months', '12,900', 'Sept', 'EPITA'),
('Master of Computer Engineering ME', 'English', 'Paris', 'Computer Science & IT', 'Masters', '18 months', '9,930', 'Sept', 'EPITA'),
('Msc Artificial Intelligence Systems', 'English', 'Paris', 'Computer Science & IT', 'Masters', '24 months', '18,000', 'Sept', 'EPITA'),
('ECAM Engineering – Mechanical & Electrical Engineering Degree', 'English', 'Lyon', 'Engineering & Technology ', 'Bachelor', '5 years', 'Years 1 to 3: 6,800 euros/year\nYears 4 & 5: 8,500 euros/year', 'September', 'Ecam Lyon'),
('GLOBAL BBA', 'English', 'Saint-Etienne, Paris, Casablanca, Shanghai', 'Business & Management ', 'Bachelor', '4 years', 'for admission in 1st year: €11,500 per year\nfor admission in 2nd year: €12,500 per year\nfor admission in 3rd year: €13,000 per year', 'September', 'Em Lyon'),
('MIM – Grande Ecole', 'English', 'Lyon', 'Business & Management ', 'Master', '2 years', '17 500 per years', 'September', 'Em Lyon'),
('MSc in Digital Marketing & Data Science', 'English', 'Paris & Shangai', 'Business & Management ', 'Master', '18 months', 'Total 24 500 euros', 'September', 'Em Lyon'),
('MSc in Strategy & Consulting', 'English', 'Paris & Shangai', 'Business & Management ', 'Master', '18 months', 'Total 24 500 euros', 'September', 'Em Lyon'),
('MSc in Supply Chain & Purchaising Management', 'English', 'Lyon & Shangai', 'Business & Management ', 'Master', '18 Months', 'Total 24 500 euros', 'September', 'Em Lyon'),
('MSc in Finance', 'English', 'Lyon', 'Business & Management ', 'Master', '18 months', 'Total 24 500 euros', 'September', 'Em Lyon'),
('MSc in Global Innovation & Entrepreneurship', 'English', 'Lyon, Shanghai and Casablanca', 'Business & Management ', 'Master', '18 months', 'Total 24 500 euros', 'September', 'Em Lyon'),
('MSc in Health Management & Data Intelligence', 'English', 'Lyon, Saint-Etienne & Shanghai', 'Business & Management / Medicine & Health', 'Master', '18 Months', 'Total 24 500 euros', 'September', 'Em Lyon'),
('MSc in High-End Brand Management', 'English', 'Shanghai & Paris', 'Applied Sciences & Professions / Business & Management ', 'Master', '18 months', 'Total 24 500 euros', 'September', 'Em Lyon'),
('MSc in International Hospitality Management', 'English', 'Lyon, Paris & Shanghai', 'Hospitality, Leisure & Sports ', 'Master', '18 months', 'Total 24 500 euros', 'September', 'Em Lyon'),
('MSc in Luxury Management & Marketing', 'English', 'Paris, New York or London or Rome and Shanghai', 'Applied Sciences & Professions / Business & Management ', 'Master', '18 Months', 'Total 34 000 euros', 'September', 'Em Lyon'),
('MSc in Sports Industry Management', 'English', 'Paris & Shanghai', 'Hospitality, Leisure & Sports ', 'Master', '18 months', 'Total 24 500 euros', 'November', 'Em Lyon'),
('International MBA\n', 'English', 'Lyon', 'Business & Management ', 'MBA', '12 months', 'Total 38 500 euros', 'September', 'Em Lyon'),
('EXECUTIVE MBA\n', 'English', 'Paris, Lyon', 'Business & Management ', 'MBA', '20 months', 'Total 45 000 euros', 'October', 'Em Lyon'),
('Bachelor of Business Administration\nMajor FINANCE & ACCOUNTING', 'English ', 'Paris', 'Business & Management ', 'Bachelor ', '3 years', ' 9,950 per year', 'Sept/ Jan', 'PSB'),
('Bachelor of Business Administration\nMajor MARKETING', 'English ', 'Paris', 'Business & Management ', 'Bachelor ', '3 years', ' 9,950 per year', 'Sept/ Jan', 'PSB'),
('Bachelor of Business Administration\nMajor MANAGEMENT', 'English ', 'Paris', 'Business & Management / Business & Management ', 'Bachelor ', '3 years', ' 9,950 per year', 'Sept/ Jan', 'PSB'),
('Bachelor of Business Administration\nMajor LUXURY BRAND MANAGEMENT\n', 'English ', 'Paris', 'Arts, Design & Architecture', 'Bachelor ', '3 years', ' 9,950 per year', 'Sept/ Jan', 'PSB'),
('MSc in Hospitality & Tourism Management', 'English ', 'Paris', 'Hospitality, Leisure & Sports ', 'Masters', '1 year', '13,500 euros total', 'Sept/ Jan', 'PSB'),
('MSc in Hospitality & Tourism Management', 'English ', 'Paris', 'Hospitality, Leisure & Sports ', 'Masters', '2 years', 'Total 17,000', 'Sept/ Jan', 'PSB'),
('MSc in Arts & Cultural Management', 'English ', 'Paris', 'Arts, Design & Architecture ', 'Masters', '1 year', '18,000 total', 'Sept/ Jan', 'PSB'),
('MSc in Arts & Cultural Management', 'English ', 'Paris', 'Arts, Design & Architecture ', 'Masters', '2 years', '21,500 total', 'Sept/ Jan', 'PSB'),
('MSc in International Finance        \n', 'English ', 'Paris', 'Business & Management ', 'Masters', '1 year', '13,500 total', 'Sept', 'PSB'),
('MSc in International Finance        \n', 'English ', 'Paris', 'Business & Management ', 'Masters', '2 years', '17,000 total ', 'Sept', 'PSB'),
('MSc in International Management	', 'English ', 'Paris', 'Business & Management ', 'Masters', '1 year', '13,500 total', 'Sept/ Jan', 'PSB'),
('MSc in International Management	', 'English ', 'Paris', 'Business & Management ', 'Masters', '2 years', '17,000 total ', 'Sept/ Jan', 'PSB'),
('MSc in Purchasing & Supply Chain Management	', 'English ', 'Paris', 'Business & Management ', 'Masters', '1 year', '13,250 total', 'Sept', 'PSB'),
('MSc in Purchasing & Supply Chain Management	', 'English ', 'Paris', 'Business & Management ', 'Masters', '2 years', '17,000 total ', 'Sept', 'PSB'),
('MSc in Marketing Strategy & Data Analytics	', 'English ', 'Paris', 'Business & Management ', 'Masters', '1 year', '13,250 total', 'Sept', 'PSB'),
('MSc in Marketing Strategy & Data Analytics	', 'English ', 'Paris', 'Business & Management ', 'Masters', '2 years', '17,000 total', 'Sept', 'PSB'),
('MSc in Business Consulting and Digital Transformation	', 'English ', 'Paris', 'Business & Management ', 'Masters', '1 year', '13,500 total', 'Sept', 'PSB'),
('MSc in Business Consulting and Digital Transformation	\n', 'English ', 'Paris', 'Business & Management ', 'Masters', '2 years', '17,000 total', 'Sept', 'PSB'),
('MSc in International Marketing and Business Development	', 'English ', 'Paris', 'Business & Management ', 'Masters', '1 year', '13,250 total', 'Sept', 'PSB'),
('MSc in International Marketing and Business Development	', 'English ', 'Paris', 'Business & Management ', 'Masters', '2 years', '17,000 total', 'Sept', 'PSB'),
('MBA', 'English ', 'Paris', 'Business & Management ', 'MBA', '1 year', '17,250 total', 'Sept', 'PSB'),
('DBA', 'English ', 'Paris', 'Business & Management ', 'DBA', '3 years', '31,650 total', 'Dec/April', 'PSB'),
('International BBA', 'English / French', 'MARSEILLE', 'Business & Management ', 'Bachelor', '4 years', '10,500 Per year', 'Sept', 'KEDGE BS'),
('Masters in Managment Grand Ecole  Major Audit-Audit-Expertise Track', 'English', 'BORDEAUX/ MARSEILLE', 'Business & Management ', 'Masters', '2 years', '13200 per year', 'Sept', 'KEDGE BS'),
('Masters in Managment Grand Ecole  Major Entrepreneurship Track', 'English', 'BORDEAUX/ MARSEILLE', 'Business & Management ', 'Masters', '2 years', '13200 per year', 'Sept', 'KEDGE BS'),
('Masters in Managment Grand Ecole  Major China  Track', 'English', 'BORDEAUX/ Suzhou/MARSEILLE', 'Business & Management ', 'Masters', '2 years', '13200 per year', 'Sept', 'KEDGE BS'),
('Master in Managment Double MSc Degrees (Arts & Creative Industries)\n ', 'English', 'BORDEAUX/MARSEILLE/Paris 2nd year', 'Business & Management / Arts, Design & Architecture ', 'Masters', '2 years', '15700 per year', 'Sept', 'KEDGE BS'),
('Master in Managment Double MSc Degrees (International Sport & Event Management (ISEM))\n ', 'English', 'MARSEILLE', 'Hospitality, Leisure & Sports', 'Masters', '2 years', '15700 per year', 'Sept', 'KEDGE BS'),
('Master in Managment Double MSc Degrees (Corporate & Sustainable Finance)', 'English', 'BORDEAUX/ MARSEILLE', 'Business & Management / Environmental Studies & Earth Sciences', 'Masters', '2 years', '15700 per year', 'Sept', 'KEDGE BS'),
('Master in Managment Double MSc Degrees (International Business)', 'English', 'MARSEILLE', 'Business & Management ', 'Masters', '2 years', '15700 per year', 'Sept', 'KEDGE BS'),
('Master in Managment Double MSc Degrees (International Trade & Logistics) ', 'English', 'MARSEILLE', 'Business & Management ', 'Masters', '2 years', '15700 per year', 'Sept', 'KEDGE BS'),
('Master in Managment Double MSc Degrees (Digital Marketing & Sales)', 'English', 'MARSEILLE', 'Business & Management ', 'Masters', '2 years', '15700 per year', 'Sept', 'KEDGE BS'),
('Master in Managment Double MSc Degrees (Marketing & Brand Management)', 'English', 'BORDEAUX/ MARSEILLE', 'Business & Management ', 'Masters', '2 years', '15700 per year', 'Sept', 'KEDGE BS'),
('Master in Managment Double MSc Degrees (Purchasing & Innovation Management (MAI))', 'English', 'Bordeaux', 'Business & Management ', 'Masters', '2 years', '15700 per year', 'Sept', 'KEDGE BS'),
('Master in Managment Double MSc Degrees (Global Supply Chain Management (ISLI))', 'English', 'Bordeaux', 'Business & Management ', 'Masters', '2 years', '15700 per year', 'Sept', 'KEDGE BS'),
('Master in Managment Double MSc Degrees (Wine & Spirits Management)', 'English', 'Bordeaux', 'Business & Management / Arts, Design & Architecture ', 'Masters', '2 years', '15700 per year', 'Sept', 'KEDGE BS'),
('Msc Business Engineering', 'English', 'Toulon', 'Engineering & Technology', 'Masters', '15 months', '16,000 total', 'Sept', 'KEDGE BS'),
('Msc Innovation, Transformation, Entrepreneurship', 'English', 'MARSEILLE', 'Business & Management ', 'Masters', '15 months', '16,000 total', 'Sept', 'KEDGE BS'),
('MSc Management Control and Reporting', 'English', 'MARSEILLE', 'Business & Management ', 'Masters', '15 months', '24,500 total fees', 'Sept', 'KEDGE BS'),
('Msc Corporate Finance', 'English', 'MARSEILLE', 'Business & Management ', 'Masters', '15 months', '24,500 total fees', 'Sept', 'KEDGE BS'),
('MSc Wine & Hospitality Management', 'English', 'BORDEAUX/ PARIS/ LAUSANNE\n', 'Hospitality, Leisure & Sports', 'Masters', '15 months', '26,900 total fees', 'Oct ', 'KEDGE BS'),
('Msc Digital Marketing & sales\n', 'English', 'MARSEILLE', 'Business & Management ', 'Masters', '15 months', '16,000 total', 'Sept', 'KEDGE BS'),
('Msc Digital Marketing & sales\n', 'English', 'MARSEILLE', 'Business & Management ', 'Masters', '15 months', '24,500 total fees', 'Sept', 'KEDGE BS'),
('Msc Arts & Creative Industries management\n', 'English', 'Paris', 'Arts, Design & Architecture ', 'Masters', '15 months', '19,500 total fees', 'Sept', 'KEDGE BS'),
('MSc Banking & Finance', 'English', 'BORDEAUX', 'Business & Management ', 'Masters', '15 months', '24,500 total fees', 'Sept', 'KEDGE BS'),
('MSc in Purchasing & Innovation Management', 'English', 'BORDEAUX', 'Business & Management ', 'Masters', '15 months', '28,000 total fees', 'Sept', 'KEDGE BS'),
('Msc Marketing\n', 'English', 'MARSEILLE/  BORDEAUX / PARIS\n', 'Business & Management ', 'Masters', '15 months', '24,500 total fees', 'Sept', 'KEDGE BS'),
('MSc in Global Supply Chain Management', 'English', 'BORDEAUX', 'Business & Management ', 'Masters', '15 months', '28,000 total fees', 'Sept', 'KEDGE BS'),
('Msc International Trade & Logistics\n', 'English', 'MARSEILLE', 'Business & Management ', 'Masters', '15 months', 'Total 23 500 euros', 'Sept', 'KEDGE BS'),
('MSc in Wine & Spirits Management', 'English', 'BORDEAUX', 'Hospitality, Leisure & Sports', 'Masters', '15 months', '19,500 total fees', 'Sept', 'KEDGE BS'),
('Msc Sustainable Finance', 'English', 'Paris', 'Environmental Studies & Earth Sciences', 'Masters', '15 months', '24,500 total fees', 'Sept', 'KEDGE BS'),
('Msc International Business\n', 'English', 'MARSEILLE/  BORDEAUX\n', 'Business & Management ', 'Masters', '15 months', '24,500 total fees', 'Sept', 'KEDGE BS'),
('MSc Sport - International sport & event management', 'English', 'MARSEILLE', 'Hospitality, Leisure & Sports', 'Masters', '15 months', '16,000 total', 'Sept', 'KEDGE BS'),
('BACHELOR INTERNATIONAL MANAGEMENT major International Business ', 'English', 'Le Havre', ' Business & Management', 'Bachelor', '3 years', 'First and second Year: 7 000 euros\nThird year: 8 000 euros', 'September', 'EM Normandie'),
('BACHELOR INTERNATIONAL MANAGEMENT Logistics and International Trade ', 'English', 'Le Havre', ' Business & Management', 'Bachelor', '3 years', 'First and second Year: 7 000 euros\nThird year: 8 000 euros', 'September', 'EM Normandie'),
('BACHELOR INTERNATIONAL MANAGEMENT major International Business ', 'English', 'Le Havre', ' Business & Management', 'Bachelor', '3 years', 'First and second Year: 7 000 euros\nThird year: 8 000 euros', 'September', 'EM Normandie'),
('Master in Management major Banking, Finance and FinTec', 'English', 'Oxford', ' Business & Management', 'Master', '2 years', '11 000 euros per year', 'September', 'EM Normandie'),
('Master in Management major CROSS-CULTURAL MARKETING & NEGOTIATION', 'English', 'Caen', 'Social Sciences', 'Master', '2 years', '11 000 euros per year', 'September', 'EM Normandie'),
('Master in Management major INTERNATIONAL BUSINESS', 'English', 'Le Havre', ' Business & Management', 'Master', '2 years', '11 000 euros per year', 'September', 'EM Normandie'),
('Master in Management major INTERNATIONAL EVENTS MANAGEMENT', 'English', 'Paris', ' Business & Management', 'Master', '2 years', '11 000 euros per year', 'September', 'EM Normandie'),
('Master in Management major INTERNATIONAL LOGISTICS AND PORT MANAGEMENT', 'English', 'Le Havre', ' Business & Management', 'Master', '2 years', '11 000 euros per year', 'September', 'EM Normandie'),
('Master in Management major SUPPLY CHAIN MANAGEMENT', 'English', 'Le Havre', ' Business & Management', 'Master', '2 years', '11 000 euros per year', 'September', 'EM Normandie'),
('MSC CROSS CULTURAL MARKETING AND NEGOTIATION', 'English', 'Caen', ' Business & Management', 'Master', '14 months', 'Total €12,500', 'September', 'EM Normandie'),
('MSC INTERNATIONAL EVENTS MANAGEMENT', 'English', 'Paris', 'Hospitality, Leisure & Sports', 'Master', '14 months', 'Total €13,500', 'September', 'EM Normandie'),
('MSC INTERNATIONAL LOGISTICS AND PORT MANAGEMENT', 'English', 'Le Havre', ' Business & Management', 'Master', '14 months', 'Total €12,500', 'September', 'EM Normandie'),
('MSC SUPPLY CHAIN MANAGEMENT', 'English', 'Le Havre', ' Business & Management', 'Master', '14 months', 'Total €12,500', 'September', 'EM Normandie'),
('MSC BANKING, FINANCE AND FINTECH', 'English', 'Oxford', ' Business & Management', 'Master', '14 months', 'Total €13,500', 'September', 'EM Normandie'),
('MS MESB - EQUINE INDUSTRY SCIENCES AND MANAGEMENT', 'English', 'Paris, Caen', 'Agriculture & Forestry', 'Master', '14 months', 'Total €11,500', 'September', 'EM Normandie'),
('Grand Diplôme', 'French/English', 'Paris/LONDON', 'Applied Sciences & Professions ', 'Diploma', '9 months', 'Total 47,400 euros', 'Jan, April, July and Oct', 'Le Cordon Bleue'),
('Grand Diplôme® in Professional Immersion', 'English', 'Paris/LONDON', 'Applied Sciences & Professions ', 'Diploma', '9 months', 'Total 49900 euros', 'Jan, April, July and Oct', 'Le Cordon Bleue'),
('Cuisine Diploma with Culinary Management', 'English', 'Paris', 'Applied Sciences & Professions ', 'Diploma', '12 months', 'Total 33,900 euros', 'January, April, July, October', 'Le Cordon Bleue'),
('Cuisine Diploma', 'English', 'Paris', 'Applied Sciences & Professions ', 'Diploma', '9 months', 'Total 27 900 euros', 'January, April, July, October', 'Le Cordon Bleue'),
('Basic Cuisine Certificate', 'English', 'Paris', 'Applied Sciences & Professions ', 'Diploma', '3 weeks', 'Total 10,600 euros', 'January, April, July, October', 'Le Cordon Bleue'),
('Diploma in Culinary Management', 'English', 'Paris', 'Applied Sciences & Professions ', 'Diploma', '3 months', 'Total 7200 euros', 'January, April, July, October', 'Le Cordon Bleue'),
('Pâtisserie Diploma in Professional Immersion', 'English', 'Paris', 'Applied Sciences & Professions ', 'Diploma', '14 months', 'Total 24,500 euros', 'January, April, July, October', 'Le Cordon Bleue'),
('Pâtisserie Diploma', 'English', 'Paris', 'Applied Sciences & Professions ', 'Diploma', '9 months', 'Total 22,000 euros', 'January, April, July, October', 'Le Cordon Bleue'),
('Pâtisserie & Boulangerie Diploma with Professional Immersion', 'English', 'Paris', 'Applied Sciences & Professions ', 'Diploma', '16 months', 'Total 35,400 euros', 'January, April, July, October', 'Le Cordon Bleue'),
('Pâtisserie & Boulangerie Diploma', 'English', 'Paris', 'Applied Sciences & Professions ', 'Diploma', '9 months', 'Total 32 900', 'January, April, July, October', 'Le Cordon Bleue'),
('Diploma in Culinary Management', 'English', 'Paris', 'Applied Sciences & Professions ', 'Diploma', '3 months', 'Total 7,200 euros', 'January, April, July, October', 'Le Cordon Bleue'),
('Basic Pastry Certificate\n', 'English', 'Paris', 'Applied Sciences & Professions ', 'Diploma', '3 weeks', 'Total 8,500 euros', 'January, April, July, October', 'Le Cordon Bleue'),
('Bachelor of Business\nin Culinary Arts (Double degree Paris Dauphine) ', 'English', 'Paris', 'Applied Sciences & Professions ', 'Bachelor', '3 years', '12 500 € for European students\n14 000 € for non European students', 'Sept', 'Le Cordon Bleue'),
('Bachelor of Business\nin International Hospitality Management', 'English', 'Paris', 'Applied Sciences & Professions ', 'Bachelor', '3 years', '12 500 € for European students\n14 000 € for non European students', 'Sept', 'Le Cordon Bleue'),
('Wine and Management programme\n', 'English', 'Paris', 'Applied Sciences & Professions ', 'Diploma', '10 months', 'Total 20 950', 'Sept ', 'Le Cordon Bleue'),
('MBA in International Hospitality and Culinary Leadership', 'English', 'Paris', 'Applied Sciences & Professions ', 'Masters + 3 years experince ', '1 year', 'Total 27,000 Euros ', 'Sept ', 'Le Cordon Bleue'),
('Diplôme de Boulangerie with Culinary Management\n', 'English', 'Paris', 'Applied Sciences & Professions ', 'Diploma', '9 months', 'Total 19,000 euros', 'January, April, July, October', 'Le Cordon Bleue'),
('Boulangerie Diploma', 'English', 'Paris', 'Applied Sciences & Professions ', 'Diploma', '6 months', 'Total 13,000 euros', 'January, April, July, October', 'Le Cordon Bleue'),
('Pâtisserie & Boulangerie Diploma with Professional Immersion', 'English', 'Paris', 'Applied Sciences & Professions ', 'Diploma', '16 months', 'Total 35,400 euros', 'January, April, July, October', 'Le Cordon Bleue'),
('Pâtisserie & Boulangerie Diploma', 'English', 'Paris', 'Applied Sciences & Professions ', 'Diploma', '9 months', 'Total 32,900 euros', 'January, April, July, October', 'Le Cordon Bleue'),
('Basic Boulangerie Certificate', 'English', 'Paris', 'Applied Sciences & Professions ', 'Diploma', '3 weeks', 'Total 7,200 euros', 'January, April, July, October', 'Le Cordon Bleue'),
('Advanced Boulangerie Certificate\n', 'English', 'Paris', 'Applied Sciences & Professions ', 'Diploma', '3 weeks', 'Total 6,500 euros', 'January, April, July, October', 'Le Cordon Bleue'),
('Foundation year in Arts', 'English', 'Paris', 'Arts, Design & Architecture ', 'Foundaiton', '1 year', 'Total: 7,790 euros', 'Sept ', 'ATELIER DE SEVRES PARIS'),
('Bachelor Of Animation', 'English', 'Paris', 'Arts, Design & Architecture ', 'Bachelor', '3 years', '10 590 per year', 'Sept ', 'ATELIER DE SEVRES PARIS'),
('BACHELOR\nBAKERY / SNACKING & BUSINESS', 'English', 'Bordeaux', 'Applied Sciences & Professions ', 'Bachelor', '3 years', '9,900 euros / year', 'Sept', 'institut culinaire'),
('BACHELOR\nSWEET ARTS\n& SALES NETWORK MANAGEMENT', 'English', 'Bordeaux', 'Applied Sciences & Professions ', 'Bachelor', '3 years', '9,900 euros / year', 'Sept', 'institut culinaire'),
('BACHELOR\nSWEET ARTS\n& OPERATIONS MANAGEMENT', 'English', 'Bordeaux', 'Applied Sciences & Professions ', 'Bachelor', '3 years', '9,900 euros / year', 'Sept', 'institut culinaire'),
('BACHELOR\nPASTRY & BUSINESS\n', 'English', 'Bordeaux', 'Applied Sciences & Professions ', 'Bachelor', '3 years', '9,900 euros / year', 'Sept', 'institut culinaire'),
('BACHELOR\nCHOCOLATE & BUSINESS', 'English', 'Bordeaux', 'Applied Sciences & Professions ', 'Bachelor', '3 years', '9,900 euros / year', 'Sept', 'institut culinaire'),
('FRENCH BAKERY\nPROFESSIONAL CERTIFICATE', 'English', 'Bordeaux', 'Applied Sciences & Professions ', 'Diploma (CERTIFICATE) ', '8 months', 'Total 18,300 euros', 'Sept', 'institut culinaire'),
('INTENSIVE INTERNATIONAL PROGRAM\nSNACKING\nMADE IN FRANCE', 'English', 'Bordeaux', 'Applied Sciences & Professions ', 'Diploma (CERTIFICATE) ', '2 months', 'Total 11,300 euros', 'Sept', 'institut culinaire'),
('INTENSIVE INTERNATIONAL PROGRAM\nBAKERY\nMADE IN FRANCE', 'English', 'Bordeaux', 'Applied Sciences & Professions ', 'Diploma (CERTIFICATE) ', '2 months', 'Total 11,300 euros', 'Sept', 'institut culinaire'),
('FRENCH PASTRY\nPROFESSIONAL CERTIFICATE', 'English', 'Bordeaux', 'Applied Sciences & Professions ', 'Diploma (CERTIFICATE) ', '8 months', 'Total 18,300 euros', 'Sept', 'institut culinaire'),
('INTENSIVE INTERNATIONAL PROGRAM\nPASTRY\nMADE IN FRANCE', 'English', 'Bordeaux', 'Applied Sciences & Professions ', 'Diploma (CERTIFICATE) ', '2 months', 'Total 11,300 euros', 'Sept', 'institut culinaire'),
('FRENCH\nCHOCOLATE & CONFECTIONERY\nPROFESSIONAL CERTIFICATE\n', 'English', 'Bordeaux', 'Applied Sciences & Professions ', 'Diploma (CERTIFICATE) ', '8 months', 'Total 18,300 euros', 'Sept', 'institut culinaire'),
('\nFRENCH\nICE CREAM & SORBET\nPROFESSIONAL CERTIFICATE\n', 'English', 'Bordeaux', 'Applied Sciences & Professions ', 'Diploma (CERTIFICATE) ', '8 months', 'Total 18,300 euros', 'Sept', 'institut culinaire'),
('INTENSIVE INTERNATIONAL PROGRAM\nICE CREAM & SORBET\nMADE IN FRANCE', 'English', 'Bordeaux', 'Applied Sciences & Professions ', 'Diploma (CERTIFICATE) ', '2 months', 'Total 11,300 euros', 'Sept', 'institut culinaire'),
('FASHION DESIGNER major Chain and Weft\n', 'English', 'Paris', 'Arts, Design & Architecture ', 'Bachelor', '3', 'Around 9500 per year', 'September', 'Atelier Chardon Savard'),
('FASHION DESIGNER major Chain and Weft\n', 'English', 'Paris', 'Arts, Design & Architecture ', 'Bachelor', '3', 'Around 9500 per year', 'September', 'Atelier Chardon Savard'),
('FASHION DESIGNER major in Pattern making Chain & Weft', 'English', 'Paris', 'Arts, Design & Architecture ', 'Bachelor', '3', 'Around 9500 per year', 'September', 'Atelier Chardon Savard'),
('', 'English', 'Paris', 'Arts, Design & Architecture ', 'Bachelor', '3', 'Around 9500 per year', 'September', 'Atelier Chardon Savard'),
('FASHION DESIGNER major in Trends', 'English', 'Paris', 'Arts, Design & Architecture ', 'Bachelor', '3', 'Around 9500 per year', 'September', 'Atelier Chardon Savard'),
('FASHION DESIGNER major in Accessories', 'English', 'Paris', 'Arts, Design & Architecture ', 'Bachelor', '3', 'Around 9500 per year', 'September', 'Atelier Chardon Savard'),
('Msc Management and Optimization of Supply chains and Transport', 'English', 'Nantes', ' Engineering & Technology', 'Master', '2 years', 'Total 12 000 euros', 'September', 'IMT Atlantique'),
('Msc Project Management for Environmental and Energy Engineering', 'English', 'Nantes', ' Engineering & Technology', 'Master', '2 years', 'Total 12 000 euros', 'September', 'IMT Atlantique'),
('Msc Advanced Nuclear Waste Management', 'English', 'Nantes', ' Engineering & Technology', 'Master', '2 years', 'Total 12 000 euros', 'September', 'IMT Atlantique'),
('Msc Information System Gouvernance', 'English', 'Nantes', ' Engineering & Technology', 'Master', '2 years', 'Total 5 100 euros', 'September', 'IMT Atlantique'),
('Msc Architecture and Engineering for the Internet of Thing', 'English', 'Nantes', ' Engineering & Technology', 'Master', '2 years', 'Total 5 100 euros', 'September', 'IMT Atlantique'),
('MSc Information Technology, track in Architecture and Engineering for the Internet of Things', 'English', 'Brest and Rennes', 'Computer Science & IT', 'Master', '2 years', 'Total 5 100 euros', 'September', 'IMT Atlantique'),
('MSc Information Technology, track in Communication System and Network Engineering', 'English', 'Brest', 'Computer Science & IT', 'Master', '2 years', 'Total 5 100 euros', 'September', 'IMT Atlantique'),
('MSc Information Technology, track in Information System Governance', 'English', 'Brest', 'Computer Science & IT', 'Master', '2 years', 'Total 5 100 euros', 'September', 'IMT Atlantique'),
('MSc Information Technology, track in Data Science', 'English', 'Brest', 'Computer Science & IT', 'Master', '2 years', 'Total 5 100 euros', 'September', 'IMT Atlantique'),
('MSc Management of Production, Logistics and Procurement', 'English', 'Nantes', ' Engineering & Technology', 'Master', '2 years', 'Total 12 000 euros', 'September', 'IMT Atlantique'),
('MSc Nuclear Engineering, track in Advanced Nuclear Waste Management', 'English', 'Nantes', ' Engineering & Technology', 'Master', '2 years', 'Total 12 000 euros', 'September', 'IMT Atlantique'),
('MSc Nuclear Engineering, track in Nuclear Energy Production and Industrial Applications', 'English', 'Nantes', ' Engineering & Technology', 'Master', '2 years', 'Total 12 000 euros', 'September', 'IMT Atlantique'),
('MSc Process and BioProcess Engineering', 'English', 'Nantes', ' Engineering & Technology', 'Master', '2 years', 'Total 12 000 euros', 'September', 'IMT Atlantique'),
('Bachelor in Management and Information Technology \n', 'English', 'Paris', 'Computer Science & IT', 'Bachelor', '3 years', '6 250 euros per year', 'September', 'Mines Telecom '),
('Master in Management  major Business Information Systems for the Digital Era', 'English', 'Paris', 'Computer Science & IT', 'Master', '2 years', 'M1 + M2 = total 13 300 euros\nM2= 7 050 euros', 'September', 'Mines Telecom '),
('Master in Management major International Marketing and Strategy', 'English', 'Paris', 'Computer Science & IT', 'Master', '2 years', 'M1 + M2 = total 13 300 euros\nM2= 7 050 euros', 'September', 'Mines Telecom '),
('Master in Management major Management of Innovation in the Digital Economy (ICT Business Management)', 'English', 'Paris', 'Computer Science & IT', 'Master', '2 years', 'M1 + M2 = total 13 300 euros\nM2= 7 050 euros', 'September', 'Mines Telecom '),
('MSc Informations & Communication Technology Business Management', 'English', 'Paris', 'Computer Science & IT', 'Master', '2 years', '7 500 euros per year', 'September', 'Mines Telecom '),
('MSc International Management', 'English', 'Paris', 'Business & Management ', 'Master', '2 years', '7 500 euros per year', 'September', 'Mines Telecom '),
('Executive MBA: Leading Transformation in a Digital World', 'English', 'Paris', 'Business & Management ', 'MBA', '1 years', 'Total 40 000 euros', 'September', 'Mines Telecom '),
('Foundation course in applied arts / design', 'English', 'Strasbourg', ' Arts, Design & Architecture', 'Foundation', '1 year', ' Total 5 990 euros', 'September', 'LISAA'),
('Bachelor Graphic Design', 'English', 'Paris', ' Arts, Design & Architecture', 'Bachelor', '3 years', '1st year: 7 890€\n2nd and 3rd year: 8 990€', 'September', 'LISAA'),
('Bachelor 2-D/3-D Animation (Paris)\n', 'English', 'Paris', ' Arts, Design & Architecture', 'Bachelor', '3', '1st year: 7 790€\n2nd and 3rd year: 9 290€', 'September', 'LISAA'),
('Bachelor 2-D/3-D Animation (Strasbourg)\n', 'English', 'Strasbourg', ' Arts, Design & Architecture', 'Bachelor', '3', '1st year: 7 990€\n2nd & 3rd years: 9 250€ / year', 'September', 'LISAA'),
('Bachelor Fashion Design / Pattern Making\n', 'English', 'Paris', ' Arts, Design & Architecture', 'Bachelor', '3', '1st year: 10 290€\n2nd year: 11 190€', 'September', 'LISAA'),
('Bachelor Fashion Design / Textile Design\n', 'English', 'Paris', ' Arts, Design & Architecture', 'Bachelor', '3', '1st year: 10 290€\n2nd year: 11 190€', 'September', 'LISAA'),
('Interior Architecture & Design\n', 'English', 'Paris', ' Arts, Design & Architecture', 'Bacherlor to Master', '1 to 5', '1st year: 9 690€\n2nd and 3rd year: 11 190€ per year\n4th and 5th year: 11 290€ per year', 'September', 'LISAA'),
('Master Digital Art Direction (Strasbourg)\n', 'English', 'Strasbourg', ' Arts, Design & Architecture', 'Bachelor to Master', '1 to 5', '1st year: 7 990€\n2nd & 3rd years: 9 250€ / year\n4th year: 9 450€\n5th year: 9 450€', 'September', 'LISAA'),
('Master Fashion Design & Business\n', 'English', 'Paris', ' Arts, Design & Architecture', 'Master', '2 years', '1st year: 7 290€\n2nd year: 6 890€', 'September', 'LISAA'),
('Master Fashion & Luxury Management\n', 'English', 'Paris', ' Arts, Design & Architecture', 'Master', '2 years', '1st year: 7 290€\n2nd year: 6 890€', 'September', 'LISAA'),
('Master Communication & Digital Marketing for Fashion', 'English', 'Paris', ' Arts, Design & Architecture', 'Master', '2 years', '1st year: 7 290€\n2nd year: 6 890€', 'September', 'LISAA'),
('Master Interior Architecture & Global Design\n', 'English', 'Paris', ' Arts, Design & Architecture', 'Master', '2 years', '11 290€ per year', 'September', 'LISAA'),
('Master interior architecture & service design\n', 'English', 'Paris', ' Arts, Design & Architecture', 'Master', '2 years', '11 290€ per year', 'September', 'LISAA'),
('Master interior architecture & connected design', 'English', 'Paris', ' Arts, Design & Architecture', 'Master', '2 years', '11 290€ per year', 'September', 'LISAA'),
('Master interior architecture & culinary design\n', 'English', 'Paris', ' Arts, Design & Architecture', 'Master', '2 years', '11 290€ per year', 'September', 'LISAA'),
('Bachelor: Expertise in French Art', 'English', 'Paris', ' Arts, Design & Architecture', 'Bachelor', '1 year', '6 950 euros', 'September', 'IESA'),
('MBA in Performing Arts Management & Cultural Industries', 'English', 'Paris', ' Arts, Design & Architecture', 'MBA', '1 year', 'total 18 000 euros ', 'January or September', 'IESA'),
('MBA in Art & Luxury Management', 'English', 'Paris', ' Arts, Design & Architecture', 'MBA', '1 year', 'total 18 000 euros ', 'January or September', 'IESA'),
('MBA in Arts and Cultural Management', 'English', 'Paris', ' Arts, Design & Architecture', 'MBA', '1 year', 'total 18 000 euros ', 'January or September', 'IESA'),
('MBA in Contemporary Art: Sales, Display & Collecting', 'English', 'Paris', ' Arts, Design & Architecture', 'MBA', '1 year', 'total 18 000 euros ', 'January or September', 'IESA'),
('MBA in Art Collecting Management', 'English', 'Paris', ' Arts, Design & Architecture', 'MBA', '1 year', 'total 18 000 euros ', 'January or September', 'IESA'),
('Bachelor FASHION DESIGN INTENSIVE\n', 'English', 'Paris/Firenze/ Milan', ' Arts, Design & Architecture', 'Bachelor', '3 years', ' \ntuition fee EU        € 22.360\ntuition fee non-EU        € 24.230\n', 'Sept', 'ISTITUTO MARANGONI'),
('Bachelor FASHION DESIGN & ACCESSORIES\n(womenswear pathway & menswear pathway)\n\n', 'English', 'Firenze/ Milan ', ' Arts, Design & Architecture', 'Bachelor', '3 years', '\n \ntuition fee EU        € 17.800\ntuition fee non-EU        € 20.900', 'Sept', 'ISTITUTO MARANGONI'),
('Bachelor FASHION DESIGN & WOMENSWEAR\n', 'English', 'London', ' Arts, Design & Architecture', 'Bachelor', '3 years', '\n \ntuition fee EU        £ 14.600\ntuition fee non-EU        £ 18.300', 'Sept', 'ISTITUTO MARANGONI'),
('Bachelor FASHION DESIGN & MENSWEAR\n', 'English', 'London', ' Arts, Design & Architecture', 'Bachelor', '3 years', '\n \ntuition fee EU        £ 14.600\ntuition fee non-EU        £ 18.300\n', 'Sept', 'ISTITUTO MARANGONI'),
('Bachelor FASHION DESIGN & MARKETING\n', 'English', 'Milan/ London', ' Arts, Design & Architecture', 'Bachelor', '3 years', '\n \ntuition fee EU        € 19.200\ntuition fee non-EU        € 22.600\n', 'Sept', 'ISTITUTO MARANGONI'),
('Bachelor FASHION STYLING & CREATIVE DIRECTION\n', 'English', 'Paris/Firenze/ Milan/ Miami', ' Arts, Design & Architecture', 'Bachelor', '3 years', ' \ntuition fee EU        € 17.100\ntuition fee non-EU        € 20.300\nMiami :Full time student (12-15 credits) $14,400-18,000 per semester\n', 'Sept', 'ISTITUTO MARANGONI'),
('Bachelor FASHION STYLING & VISUAL MERCHANDISING\n', 'English', 'Milan/London', ' Arts, Design & Architecture', 'Bachelor', '3 years', '\n \ntuition fee EU        € 17.100\ntuition fee non-EU        € 20.500\n', 'Sept', 'ISTITUTO MARANGONI'),
('Bachelor FASHION BUSINESS\n', 'English', 'Paris/Firenze/ Milan/ Miami', ' Arts, Design & Architecture', 'Bachelor', '3 years', ' \ntuition fee EU        € 17.100\ntuition fee non-EU        € 20.500', 'Sept', 'ISTITUTO MARANGONI'),
('Bachelor FASHION BUSINESS & BUYING\n', 'English', 'Milan/ London', ' Arts, Design & Architecture', 'Bachelor', '3 years', '\n \ntuition fee EU        € 17.100\ntuition fee non-EU        € 20.500', 'Sept', 'ISTITUTO MARANGONI'),
('Bachelor FASHION BUSINESS, COMMUNICATION & MEDIA\n', 'English', 'Milan/ London', ' Arts, Design & Architecture', 'Bachelor', '3 years', ' \ntuition fee EU        € 17.100\ntuition fee non-EU        € 20.500', 'Sept', 'ISTITUTO MARANGONI'),
('Masters in FASHION DESIGN WOMENSWEAR\n', 'English', 'Milan/Paris/ London', ' Arts, Design & Architecture', 'Masters', '1 year', '\n \ntuition fee EU        € 26.200\ntuition fee non-EU        € 28.200\n', 'Sept', 'ISTITUTO MARANGONI'),
('Masters in FASHION DESIGN COLLECTION & MARKETING\n', 'English', 'Firenze', ' Arts, Design & Architecture', 'Masters', '1 year', ' \ntuition fee EU        € 26.200\ntuition fee non-EU        € 28.200', 'Sept', 'ISTITUTO MARANGONI'),
('Masters in FASHION STYLING, PHOTOGRAPHY & FILM\n', 'English', 'Milan/Paris/ London/Firenze', ' Arts, Design & Architecture', 'Masters', '1 year', ' \ntuition fee EU        € 26.200\ntuition fee non-EU        € 28.200', 'Sept', 'ISTITUTO MARANGONI'),
('Masters in FASHION PROMOTION, COMMUNICATION & MEDIA\n', 'English', 'Milan/Paris/ London/Firenze', ' Arts, Design & Architecture', 'Masters', '1 year', '\n \ntuition fee EU        € 27.700\ntuition fee non-EU        € 30.100\n', 'Sept', 'ISTITUTO MARANGONI'),
('Masters in FASHION & LUXURY BRAND MANAGEMENT\n', 'English', 'Milan/Paris/ London/Firenze', ' Arts, Design & Architecture', 'Masters', '1 year', ' \ntuition fee EU        € 26.200\ntuition fee non-EU        € 28.200\n', 'Sept', 'ISTITUTO MARANGONI'),
('Masters in FASHION & LUXURY BRAND MANAGEMENT · CROSS-SCHOOL\n', 'English', 'Paris+ London', ' Arts, Design & Architecture', 'Masters', '1 year', '\nenrolment fee        € 5.500\n \ntuition fee EU        € 25.500\ntuition fee non-EU        € 27.600', 'Sept', 'ISTITUTO MARANGONI'),
('Masters in FASHION BUYING & MERCHANDISING / CONTEMPORARY FASHION BUYING\n', 'English', 'Milan/Paris/ London', ' Arts, Design & Architecture', 'Masters', '1 year', '\n tuition fee EU        € 26.200\ntuition fee non-EU        € 28.600', 'Sept', 'ISTITUTO MARANGONI'),
('Masters in  FASHION PRODUCT MANAGEMENT\n', 'English', 'Milan/Firenze', ' Arts, Design & Architecture', 'Masters', '1 year', '\n tuition fee EU        € 26.200\ntuition fee non-EU        € 28.600', 'Sept', 'ISTITUTO MARANGONI'),
('Masters in FASHION BUSINESS & ENTREPRENEURSHIP\n', 'English', 'Milan', ' Arts, Design & Architecture', 'Masters', '1 year', '\n \ntuition fee EU        € 26.200\ntuition fee non-EU        € 28.600', 'Sept', 'ISTITUTO MARANGONI'),
('Masters in LUXURY ACCESSORIES DESIGN & MANAGEMENT\n', 'English', 'Milan/Firenze/london', ' Arts, Design & Architecture', 'Masters', '1 year', '\n \ntuition fee EU        € 26.200\ntuition fee non-EU        € 28.600', 'Sept', 'ISTITUTO MARANGONI'),
('Masters in SPORTSWEAR DESIGN\n', 'English', 'Milan', ' Arts, Design & Architecture', 'Masters', '1 year', '\n \ntuition fee EU        € 26.200\ntuition fee non-EU        € 28.600', 'Sept', 'ISTITUTO MARANGONI'),
('Masters in FASHION BUSINESS, TECHNOLOGY & INNOVATION\n', 'English', 'Milan', ' Arts, Design & Architecture', 'Masters', '1 year', '\n \ntuition fee EU        € 26.200\ntuition fee non-EU        € 28.600', 'Sept', 'ISTITUTO MARANGONI'),
('ACTING IN ENGLISH\n', 'English', 'Paris', 'Arts, Design & Architecture ', 'Bachelor', '3 year', '6 000 euros per year', 'September', 'Cours Florent'),
('Master in Design in Transportation', 'English', 'Paris', 'Engineering & Technology', 'Masters', '2 years', '9,000 euros per year', 'Sept', 'Strate'),
('Masters Master in Design for Smart Cities', 'English', 'Paris', 'Engineering & Technology', 'Masters', '2 years', '9,800 euros per year', 'Sept', 'Strate');
INSERT INTO `progs` (`Name`, `Language`, `city`, `type`, `level`, `length`, `fee`, `intake`, `school`) VALUES
('Master in Design for Smart Cities', 'English', 'Singapore', 'Engineering & Technology', 'Masters', '2 years', '21,000 Singporean dollar per year', 'Sept', 'Strate');

-- --------------------------------------------------------

--
-- Structure de la table `schools`
--

CREATE TABLE `schools` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `schools`
--

INSERT INTO `schools` (`name`) VALUES
('Atelier Chardon Savard'),
('ATELIER DE SEVRES PARIS'),
('AUDENCIA'),
('Cours Florent'),
('Ecam Lyon'),
('Em Lyon'),
('EM Normandie'),
('EPITA'),
('ESSCA'),
('Excelia'),
('IESA'),
('IESEG'),
('IMT Atlantique'),
('Institut culinaire'),
('IPAG'),
('ISEP'),
('ISTITUTO MARANGONI'),
('KEDGE BS'),
('Le Cordon Bleue'),
('LISAA'),
('Mines Telecom '),
('Montpelier Business School'),
('NEOMA'),
('PSB'),
('Rennes Business school'),
('SKEMA'),
('Strate'),
('TBS');

-- --------------------------------------------------------

--
-- Structure de la table `task`
--

CREATE TABLE `task` (
  `ID` int(255) NOT NULL,
  `content` varchar(500) NOT NULL,
  `checked` tinyint(1) NOT NULL,
  `due_date` varchar(2999) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `task`
--

INSERT INTO `task` (`ID`, `content`, `checked`, `due_date`, `date`) VALUES
(16, 'ftyftufgfu yif-t ', 0, 'Jul 29, 2020', 'Jul/20/2020'),
(17, 'salut la team', 0, 'Jul 21, 2020', 'Jul/20/2020'),
(18, 'upload cv', 0, 'Jul 23, 2020', 'Jul/22/2020'),
(19, 'dz', 0, '', 'Jul/22/2020'),
(20, 'fezfz', 0, '', 'Jul/22/2020'),
(21, 'fzfeéfeé', 0, 'Jul 23, 2020', 'Jul/22/2020'),
(22, 'vdvzvz', 0, '', 'Jul/22/2020'),
(23, 'yes ok then', 0, 'Jul 31, 2020', 'Jul/22/2020'),
(24, 'mohamed is beautiful', 0, 'Aug 12, 2020', 'Jul/22/2020'),
(25, 'salut les amis', 0, 'Jul 30, 2020', 'Jul/22/2020');

-- --------------------------------------------------------

--
-- Structure de la table `tasklink`
--

CREATE TABLE `tasklink` (
  `user` varchar(255) NOT NULL,
  `ID_TL` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tasklink`
--

INSERT INTO `tasklink` (`user`, `ID_TL`) VALUES
('dorian123', 16),
('dorian123', 17),
('dorian123', 18),
('dorian123', 19),
('dorian123', 20),
('souhila', 21),
('timburton', 22),
('dorian123', 23),
('dorian123', 24),
('<br /><b>Notice</b>:  Undefined variable: curr_student_username in <b>C:xampphtdocsstudentgatoraccount_student.php</b> on line <b>81</b><br />', 25);

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE `types` (
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `types`
--

INSERT INTO `types` (`type`) VALUES
('Agriculture & Forestry'),
('Applied Sciences & Professions '),
('Arts, Design & Architecture '),
('Bachelors in Hospitality, Leisure & Sports'),
('Business & Management '),
('Computer Science & IT'),
('Engineering & Technology'),
('Environmental Studies & Earth Sciences'),
('Hospitality, Leisure & Sports'),
('Medicine & Health'),
('Social Sciences');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `Name` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `langtest` varchar(255) NOT NULL,
  `langtestresult` varchar(255) NOT NULL,
  `countrywanted` varchar(255) NOT NULL,
  `profile_picture_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subagent` varchar(2999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`Name`, `bio`, `username`, `password`, `email`, `nationality`, `langtest`, `langtestresult`, `countrywanted`, `profile_picture_url`, `subagent`) VALUES
('dsad', '', 'cc', 'cc', 'da', 'Azerbaijan', 'toefl', '', 'France', '', NULL),
('Dorian Roux', 'I Love football and food', 'dorian123', '12345', 'sdadas', 'Christmas Island', 'ielts', '', 'France', 'images/user/dorian123.jpg', 'eliebrosset'),
('Elie Brosset', 'I love new technologies, high-tech and sports. Data Science is my favourite field. ', 'eliebrosset', 'salut123', 'eliebrosset@gmail.com', 'France', 'toiec', '', 'France', 'images/user/eliebrosset.jpg', NULL),
('Julien Assuied', 'I love Constanza roja', 'JA123', 'A12345', 'jojomojo@gmail.com', 'Austria', 'toiec', '', 'France', '', NULL),
('ceda', 'dazdazdaz', 'mario', '123456', 'faefa@elie.fr', 'American Samoa', 'ielts', '', 'UK', '', NULL),
('Mohamed Hassanien', '', 'mhassanien', '1234', 'alymohamed@eisti.eu', 'Bahamas', 'ielts', '', 'France', '', NULL),
('Kiko', 'I love girls', 'qwe', '12345', 'sda', 'Austria', 'toiec', '', 'France', '', NULL),
('souhila arib', 'hello la team', 'souhila', 'saluti', 'souhila@elie.fr', 'Austria', 'ielts', '', 'any', 'images/user/default.png', 'eliebrosset'),
('Omar Hammad', 'I love naos marketing', 'S_Admin', 'admin', 'saasdd', 'Austria', 'toiec', '', 'France', '', NULL),
('tim burton', 'i love sports', 'timburton', '123456', 'dzqdz@oui.fr', 'Algeria', 'toiec', '', 'France', 'images/user/default.png', 'eliebrosset');

-- --------------------------------------------------------

--
-- Structure de la table `users_chat`
--

CREATE TABLE `users_chat` (
  `msg_id` int(11) NOT NULL,
  `sender_username` varchar(100) NOT NULL,
  `receiver_username` varchar(100) NOT NULL,
  `msg_content` varchar(1000) NOT NULL,
  `msg_status` text NOT NULL,
  `msg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users_chat`
--

INSERT INTO `users_chat` (`msg_id`, `sender_username`, `receiver_username`, `msg_content`, `msg_status`, `msg_date`) VALUES
(1, 'S_Admin', 'S_Admin', '', 'read', '2020-06-18 16:35:40'),
(2, 'cc', 'S_Admin', '', 'read', '2020-06-18 16:38:23'),
(3, 'cc', 'S_Admin', 'hola', 'read', '2020-06-18 16:39:49'),
(4, 'cc', 'S_Admin', 'bb', 'read', '2020-06-18 16:41:25'),
(5, 'cc', 'S_Admin', 'bb', 'read', '2020-06-18 16:42:15'),
(6, 'cc', 'S_Admin', 'bb', 'read', '2020-06-18 16:58:22'),
(7, 'cc', 'S_Admin', 'hola', 'read', '2020-06-18 17:02:17'),
(8, 'S_Admin', 'S_Admin', 'hola', 'read', '2020-06-18 21:17:25'),
(9, 'cc', 'S_Admin', 'hola', 'read', '2020-06-18 21:19:44'),
(10, 'cc', 'S_Admin', 'i love you', 'read', '2020-06-18 21:20:24'),
(11, 'cc', 'S_Admin', '', 'read', '2020-06-18 22:02:55'),
(12, 'cc', 'S_Admin', 'test', 'read', '2020-06-18 22:03:52'),
(14, 'cc', 'S_Admin', 'hi', 'read', '2020-06-18 22:58:46'),
(15, 'S_Admin', 'S_Admin', 'hello', 'read', '2020-06-18 23:28:06'),
(16, 'S_Admin', 'S_Admin', 'hi', 'read', '2020-06-18 23:29:51'),
(17, 'S_Admin', 'cc', 'hellooooo', 'read', '2020-06-18 23:33:14'),
(18, 'cc', 'S_Admin', 'asap', 'read', '2020-06-18 23:34:49'),
(19, 'cc', 'S_Admin', 'how are you', 'read', '2020-06-19 15:17:13'),
(20, 'qw', 'S_Admin', 'my name', 'read', '2020-06-19 15:38:43'),
(21, 'qw', 'S_Admin', 'my name', 'read', '2020-06-19 15:39:55'),
(22, 'S_Admin', 'qw', 'zdiceoc,ecnre', 'read', '2020-06-19 15:41:24'),
(23, 'qw', 'S_Admin', 'my name', 'read', '2020-06-19 15:41:41'),
(24, 'S_Admin', 'S_Admin', 'my name', 'read', '2020-06-19 15:47:20'),
(25, 'S_Admin', 'S_Admin', 'hello', 'read', '2020-06-26 14:14:20'),
(26, 'S_Admin', 'S_Admin', 'hello', 'read', '2020-06-26 14:16:25'),
(27, 'S_Admin', 'S_Admin', 'hello', 'read', '2020-06-26 14:18:14'),
(28, 'S_Admin', 'S_Admin', 'hello', 'read', '2020-06-26 14:19:36'),
(29, 'S_Admin', 'S_Admin', 'hello', 'read', '2020-06-26 14:21:01'),
(30, 'S_Admin', 'S_Admin', 'hello', 'read', '2020-06-26 14:21:58'),
(31, 'S_Admin', 'S_Admin', 'hello', 'read', '2020-06-26 14:24:39'),
(32, 'S_Admin', 'S_Admin', 'hello', 'read', '2020-06-26 14:25:17'),
(33, 'S_Admin', 'S_Admin', 'hello', 'read', '2020-06-26 14:28:54'),
(34, 'S_Admin', 'S_Admin', 'hello', 'read', '2020-06-26 14:30:57'),
(35, 'S_Admin', 'S_Admin', 'hello', 'read', '2020-06-26 14:33:16'),
(36, 'S_Admin', 'S_Admin', 'hello', 'read', '2020-06-26 14:34:11'),
(37, 'S_Admin', 'S_Admin', 'hello', 'read', '2020-06-26 14:35:20'),
(38, 'S_Admin', 'S_Admin', 'hello', 'read', '2020-06-26 14:37:10'),
(39, 'S_Admin', 'S_Admin', 'hello', 'read', '2020-06-26 14:38:08'),
(40, 'S_Admin', 'S_Admin', 'hello', 'read', '2020-06-26 14:41:01'),
(41, 'S_Admin', 'cc', ' ', 'read', '2020-06-27 19:01:40'),
(43, 'cc', 'S_Admin', ' ', 'read', '2020-06-27 19:05:55'),
(44, 'cc', 'S_Admin', ' ', 'read', '2020-06-27 19:08:48'),
(45, 'cc', 'S_Admin', 'coucou', 'read', '2020-06-27 19:15:17'),
(46, 'cc', 'S_Admin', 'coucou', 'read', '2020-06-27 19:16:06'),
(48, 'dorian123', 'S_Admin', 'bro', 'read', '2020-06-27 19:30:49'),
(49, 'S_Admin', 'dorian123', 'what can i help u for', 'read', '2020-06-27 19:36:52'),
(50, 'dorian123', 'S_Admin', 'kar', 'read', '2020-06-27 19:47:24'),
(51, 'dorian123', 'S_Admin', 'te amo mama', 'read', '2020-06-28 01:47:23'),
(53, 'dorian123', 'S_Admin', 'ddjjd ciue,dco,ei ijnozojdoeozroooo zoooooooooooooo ooooooooo ooooooooooooooo ooooooooooooo', 'read', '2020-06-28 03:19:13'),
(54, 'dorian123', 'S_Admin', 'hello', 'read', '2020-06-28 22:06:50'),
(55, 'S_Admin', 'dorian123', 'bitch', 'read', '2020-06-28 23:24:36'),
(56, 'S_Admin', 'dorian123', 'everythiing is ugly ', 'read', '2020-06-30 20:36:24'),
(57, 'cc', 'S_Admin', 'lol', 'read', '2020-07-01 03:52:45'),
(58, 'cc', 'S_Admin', 'efrsde', 'read', '2020-07-03 15:39:35'),
(59, 'S_Admin', 'dorian123', 'efrsde', 'read', '2020-07-03 15:40:16'),
(60, 'cc', 'S_Admin', 'hello', 'read', '2020-07-09 20:06:34'),
(61, 'cc', 'S_Admin', 'cdcd', 'read', '2020-07-09 20:19:59'),
(62, 'cc', '', 'hello', 'read', '2020-07-09 20:22:30'),
(63, 'cc', '', 'hello', 'read', '2020-07-09 20:45:49'),
(64, 'cc', '', 'ola', 'read', '2020-07-09 20:46:33'),
(65, 'cc', '', 'gg', 'read', '2020-07-09 20:47:05'),
(66, 'cc', 'S_Admin', 'helloo', 'read', '2020-07-09 20:59:09'),
(67, 'cc', 'S_Admin', 'meb', 'read', '2020-07-09 21:02:11'),
(68, 'cc', 'S_Admin', 'hello', 'read', '2020-07-10 02:19:28'),
(69, 'cc', 'S_Admin', 'hello', 'read', '2020-07-10 02:19:28'),
(70, 'cc', 'S_Admin', 'ola', 'read', '2020-07-10 02:19:34'),
(71, 'cc', 'S_Admin', 'beb', 'read', '2020-07-10 02:20:07'),
(72, 'cc', 'S_Admin', 'br', 'read', '2020-07-10 02:22:36'),
(73, 'S_Admin', '', 'br', 'read', '2020-07-10 02:23:37'),
(74, 'S_Admin', 'mariaroulet', 'hello', 'read', '2020-07-10 02:23:52'),
(75, 'S_Admin', 'mariaroulet', 'hello', 'read', '2020-07-10 02:23:59'),
(76, 'S_Admin', 'mariaroulet', 'hello', 'read', '2020-07-10 02:25:52'),
(77, 'S_Admin', 'dorian123', '123', 'read', '2020-07-10 02:26:26'),
(78, 'S_Admin', 'dorian123', 'hello', 'read', '2020-07-10 02:46:50'),
(79, 'dorian123', 'S_Admin', '14', 'read', '2020-07-10 02:49:26'),
(80, 'dorian123', 'S_Admin', '15', 'read', '2020-07-10 02:50:47'),
(81, 'dorian123', 'S_Admin', '16', 'read', '2020-07-10 02:53:59'),
(82, 'S_Admin', 'dorian123', '17', 'read', '2020-07-10 03:06:34'),
(83, 'S_Admin', 'dorian123', '18', 'read', '2020-07-10 03:06:59'),
(84, 'S_Admin', 'cc', 'kk', 'read', '2020-07-10 03:08:08'),
(85, 'S_Admin', 'dorian123', '20', 'read', '2020-07-10 03:13:59'),
(86, 'dorian123', 'S_Admin', '18', 'read', '2020-07-10 03:17:16'),
(87, 'S_Admin', 'mariaroulet', 'jo', 'read', '2020-07-10 12:05:36'),
(88, 'dorian123', 'S_Admin', '5516', 'read', '2020-07-10 12:06:58'),
(89, 'cc', 'S_Admin', '15272', 'read', '2020-07-10 12:09:19'),
(90, 'cc', 'S_Admin', 'bro', 'read', '2020-07-10 12:45:31'),
(91, 'cc', 'S_Admin', '123', 'read', '2020-07-10 12:46:40'),
(92, 'cc', 'S_Admin', '15', 'read', '2020-07-10 12:50:46'),
(93, 'cc', 'S_Admin', '12', 'read', '2020-07-10 12:51:41'),
(94, 'cc', 'S_Admin', '18', 'read', '2020-07-10 12:51:45'),
(95, 'cc', 'S_Admin', '20', 'read', '2020-07-10 12:51:48'),
(96, 'cc', 'S_Admin', '23', 'read', '2020-07-10 12:59:19'),
(97, 'cc', 'S_Admin', '24', 'read', '2020-07-10 12:59:22'),
(98, 'cc', 'S_Admin', '25', 'read', '2020-07-10 12:59:25'),
(99, 'cc', 'S_Admin', 'broooo', 'read', '2020-07-13 02:51:22'),
(100, 'cc', 'S_Admin', '1542', 'read', '2020-07-13 02:51:31'),
(101, 'dorian123', 'S_Admin', 'hiiii', 'read', '2020-07-13 02:52:14'),
(102, 'dorian123', 'S_Admin', '1', 'read', '2020-07-13 02:52:22'),
(103, 'dorian123', 'S_Admin', '2', 'read', '2020-07-13 02:52:26'),
(104, 'cc', 'S_Admin', '2525', 'read', '2020-07-13 02:54:26'),
(105, 'cc', 'S_Admin', '25254', 'read', '2020-07-13 02:54:32'),
(106, 'cc', 'S_Admin', '22', 'read', '2020-07-13 03:04:56'),
(107, 'cc', 'S_Admin', '54', 'read', '2020-07-13 03:05:03'),
(108, 'dorian123', 'S_Admin', '0.25', 'read', '2020-07-13 03:05:33'),
(109, 'dorian123', 'S_Admin', 'nnn', 'read', '2020-07-13 03:05:38'),
(110, 'dorian123', 'S_Admin', 'uhuy', 'read', '2020-07-13 03:05:42'),
(111, 'cc', 'S_Admin', '1551', 'read', '2020-07-13 03:07:38'),
(112, 'dorian123', 'S_Admin', '79', 'read', '2020-07-13 03:07:57'),
(113, 'dorian123', 'S_Admin', '7894*', 'read', '2020-07-13 03:08:03'),
(114, 'dorian123', 'S_Admin', '33', 'read', '2020-07-13 03:09:07'),
(115, 'cc', 'S_Admin', '22', 'read', '2020-07-13 03:09:40'),
(116, 'dorian123', 'S_Admin', 'wxq', 'read', '2020-07-13 03:27:06'),
(117, 'cc', 'S_Admin', '22', 'read', '2020-07-13 03:29:05'),
(118, 'cc', 'S_Admin', '23', 'read', '2020-07-13 03:30:35'),
(119, 'cc', 'S_Admin', '23', 'read', '2020-07-13 03:30:54'),
(120, 'cc', 'S_Admin', '25', 'read', '2020-07-13 03:31:08'),
(121, 'S_Admin', 'cc', '12', 'read', '2020-07-13 04:21:21'),
(122, 'S_Admin', 'cc', '2', 'read', '2020-07-13 04:42:51'),
(123, 'S_Admin', 'dorian123', '1', 'read', '2020-07-13 04:43:30'),
(124, 'S_Admin', 'dorian123', '2', 'read', '2020-07-13 04:45:09'),
(125, 'S_Admin', 'cc', '1', 'read', '2020-07-13 05:11:31'),
(126, 'dorian123', 'S_Admin', 'qiubo', 'read', '2020-07-13 21:50:17'),
(127, 'dorian123', 'S_Admin', 'bro', 'read', '2020-07-13 21:50:23'),
(128, 'S_Admin', 'cc', 'bro', 'read', '2020-07-14 15:23:39'),
(129, 'S_Admin', 'eecere', 'lol', 'read', '2020-07-14 15:23:53'),
(130, 'S_Admin', 'dorian123', '123', 'read', '2020-07-17 15:08:28'),
(131, 'cc', 'S_Admin', 'hello*', 'read', '2020-07-17 15:08:56'),
(132, 'dorian123', 'S_Admin', 'send', 'read', '2020-07-17 15:09:22'),
(133, 'eliebrosset', 'S_Admin', 'i need help pls', 'read', '2020-07-22 21:25:52');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `users_chat`
--
ALTER TABLE `users_chat`
  ADD PRIMARY KEY (`msg_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `task`
--
ALTER TABLE `task`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `users_chat`
--
ALTER TABLE `users_chat`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
