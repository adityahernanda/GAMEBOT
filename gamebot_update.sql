-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jun 2023 pada 03.49
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamebot`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `gamebot`
--

CREATE TABLE `gamebot` (
  `idgame` varchar(11) NOT NULL,
  `idgenre` varchar(11) NOT NULL,
  `nama__game` varchar(100) DEFAULT NULL,
  `processor` varchar(100) DEFAULT NULL,
  `ram` varchar(100) DEFAULT NULL,
  `storage_game` varchar(100) DEFAULT NULL,
  `gpu` varchar(100) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `harga` int(100) DEFAULT NULL,
  `jumlah_review` int(100) DEFAULT NULL,
  `reviewp` int(100) DEFAULT NULL,
  `reviewn` int(100) DEFAULT NULL,
  `hasilpersen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gamebot`
--

INSERT INTO `gamebot` (`idgame`, `idgenre`, `nama__game`, `processor`, `ram`, `storage_game`, `gpu`, `genre`, `harga`, `jumlah_review`, `reviewp`, `reviewn`, `hasilpersen`) VALUES
('1', 'A1', 'STAR WARS Jedi: Survivor', 'Intel Core i7-7700 | Ryzen 5 1400', '8 GB RAM', '155 GB', 'GTX 1070 | Radeon RX 580', 'Action', 759000, 18087, 10047, 8040, '80'),
('10', 'A10', 'Red Dead Redemption 2', 'Intel Core  i7-4770K| AMD Ryzen 5 1500X', '12 GB RAM', '150 GB', 'Nvidia GeForce GTX 1060|AMD Radeon RX 480', 'Adventure', 640000, 400492, 361240, 39252, '89'),
('100', 'A100', 'FINAL FANTASY XV WINDOWS EDITION', 'Intel™ Core™ i5-2500', '8 GB RAM', '100 GB', 'NVIDIA™ GeForce™ GTX 760', 'Strategy', 695000, 45238, 37412, 7826, '79'),
('101', 'A101', 'Identity', 'Intel Quad-core ', '8 GB RAM', '14 GB', 'NVIDIA GeForce 470 GTX', 'Simulation', 140000, 2072, 369, 1703, '78'),
('102', 'A102', 'Godus', 'Intel Core 2', '1 GB RAM', '1 GB', 'NVIDIA Geforce 210', 'Strategy', 116000, 7179, 1809, 5307, '65'),
('103', 'A103', 'Mirror 2: Project X', 'Intel Core i5-3570', '8 GB RAM', '10 GB', 'NVIDIA GeForce GTX 1050', 'Strategy', 20000, 117214, 30244, 86970, '65'),
('104', 'A104', 'Umbrella Corps', 'Intel Core i3-4160', '4 GB RAM', '13 GB', 'NVIDIA GeForce GTX460', 'Action', 160000, 2835, 840, 1995, '58'),
('105', 'A105', 'Urban Empire', 'Intel i5-2400', '6 GB RAM', '4 GB', 'NVIDIA GeForce GTX 560', 'Simulation', 345000, 2423, 822, 1601, '51'),
('106', 'A106', 'NVIDIA GeForce GTX 560™', 'AMD Ryzen 5 1600| Intel Core i5 6600K', '8 GB RAM', '100 GB', 'AMD Radeon RX 560|Nvidia GeForce GTX 1050 Ti', 'Action', 659000, 189322, 67724, 121598, '56'),
('107', 'A107', 'SuperPower 3', 'Intel Quad Core', '8 GB RAM', '25 GB', 'Nvidia© GeForce™ GTX 750Ti', 'Simulation', 279000, 1102, 117, 985, '88'),
('108', 'A108', 'Resident Evil Re:Verse', 'AMD Ryzen 3 1200 / Intel Core i5-7500', '8 GB RAM', '', 'AMD Radeon RX 560 |NVIDIA GeForce GTX 1050 Ti', 'Action', 138000, 3741, 1351, 2390, '57'),
('109', 'A109', 'Retirement Simulator', 'Intel Core I5', '2 GB RAM', '2 GB', 'NVIDIA GeForce GTX 750', 'Simulation', 90000, 4051, 1478, 2573, '57'),
('11', 'A11', 'Call of Duty©: Modern Warfare©', 'Intel Core i3-4340 | AMD FX-6300', '8GB RAM', '175 GB', 'NVIDIA GeForce GTX 670 |AMD Radeon HD 7950', 'Action', 812000, 1439, 996, 443, '56'),
('110', 'A110', 'Blood Bowl 3', 'Intel Core i5-2300', '6 GB RAM', '12 GB', 'Nvidia GeForce GTX 650', 'Strategy', 246000, 2584, 957, 1627, '59'),
('111', 'A111', 'Cube World', 'AMD Ryzen 3 - 1200|Intel Core i5 2400', '2 GB RAM', '500 MB', 'NVIDIA GeForce GTX 660', 'Adventure', 109000, 18114, 6743, 11371, '59'),
('112', 'A112', 'Cultivation Tales', 'Intel Quad Core i5-2300', '8 GB RAM', '30 GB', 'Nvidia GeForce GTX 960| AMD Radeon R9 380', 'Adventure', 147000, 13368, 4986, 8382, '59'),
('113', 'A113', 'Cities XXL', 'INTEL DUAL-CORE', '3 GB RAM', '8 GB', 'NVIDIA GEFORCE GTX 260', 'Simulation', 90000, 2225, 852, 1373, '62'),
('114', 'A114', 'Batman™: Arkham Origins Blackgate - Deluxe Edition', 'Intel Core 2 Duo', '2 GB RAM', '3 GB', 'NVIDIA GeForce GTX 560', 'Action', 136000, 2232, 927, 1305, '71'),
('115', 'A115', 'Airport Simulator 2014', 'Intel Pentium', '2 GB RAM', '200 MB', 'Nvidia Geforce GTX 560', 'Simulation', 480000, 1017, 175, 842, '79'),
('116', 'A116', 'Wild West Dynasty', 'Intel Core i5-6600', '16 GB RAM', '30 GB', 'NVIDIA GeForce GTX 1060, AMD Radeon RX 590', 'Adventure', 249000, 1285, 381, 904, '58'),
('117', 'A117', 'MONOPOLY©PLUS', 'Intel Core i3-550', '4 GB RAM', '2 GB', 'NVIDIA GeForce GTX460', 'Simulation', 149000, 13382, 5770, 7612, '76'),
('118', 'A118', 'New Gundam Breaker', 'Intel Core 2 Quad', '4 GB RAM', '12 GB', 'GeForce GTX 460', 'Action', 550000, 2184, 956, 1228, '78'),
('119', 'A119', 'Wolfenstein: Youngblood', 'Ryzen 5 1400 or Intel Core i5-3570', '8 GB RAM', '40 GB', 'Nvidia GTX 770', 'Action', 266000, 11883, 5359, 6524, '82'),
('12', 'A12', 'Call of Duty©: Modern Warfare© II', 'Intel Core i3-6100|Core i5-2500K|AMD Ryzen 3 1200', '8 GB RAM', '125 GB', 'NVIDIA GeForce GTX 960|AMD Radeon RX 470', 'Action', 1025000, 363988, 223000, 140988, '63'),
('120', 'A120', 'WILD HEARTS™', 'Intel Core i5-8400 / AMD Ryzen 5 2600', '12 GB RAM', '80 GB', 'GeForce GTX 1060', 'Action', 759000, 10026, 4605, 5421, '85'),
('121', 'A121', 'XIII', 'Intel i5-4460', '8 GB RAM', '25 GB', 'NVIDIA GeForce 260', 'Action', 300000, 1069, 283, 786, '64'),
('122', 'A122', 'Torchlight III', 'Intel Quad-Core', '4 GB RAM', '10 GB', 'NVIDIA GeForce 470 GTX', 'Action', 280000, 10614, 4960, 5654, '88'),
('123', 'A123', 'Warhammer 40,000: Dawn of War III', 'Intel  i3 2000', '4 GB RAM', '50 GB', 'NVIDIA GeForce 460', 'Strategy', 355000, 20722, 9796, 10926, '90'),
('124', 'A124', 'Tom Clancy\'s Splinter Cell Double Agent©', 'Pentium 4', '1 GB RAM', '8 GB', 'Intel HD 3000', 'Action', 99000, 1383, 537, 846, '63'),
('125', 'A125', 'Agony', 'Intel Core i5-8400', '8 GB RAM', '17 GB', 'Radeon R9 280 or Nvidia GeForce GTX 660', 'Action', 96000, 2652, 1256, 1396, '90'),
('126', 'A126', '武侠乂 The Swordsmen X', 'Intel Core i5-4430', '8 GB RAM', '15 GB', 'NVIDIA GeForce GTX 750ti', 'Action', 186000, 3514, 1672, 1842, '91'),
('127', 'A127', 'ATLAS', 'Intel Core i5-2400', '4 GB RAM', '120 GB', 'NVIDIA GTX 770', 'Simulation', 140000, 41454, 19742, 21712, '91'),
('128', 'A128', 'Empire of Sin', 'Intel© Core™ i3-530', '4 GB RAM', '10 GB', 'Nvidia GeForce  GTX 460| AMD© Radeon™ R7 250', 'Strategy', 170000, 5477, 2610, 2867, '91'),
('129', 'A129', 'Sword and Fairy Inn 2', 'Intel Core i5 4460', '8 GB RAM', '5 GB', 'NVIDIA GeForce GTX 760', 'Simulation', 160000, 2055, 982, 1073, '92'),
('13', 'A13', 'Tom Clancy\'s Rainbow Six© Siege', 'Intel Core i3 560|AMD Phenom II X4 945', '6 GB RAM', '61 GB', 'NVIDIA GeForce GTX 460|AMD Radeon HD 5870', 'Action', 205000, 1133440, 979196, 154244, '84'),
('130', 'A130', 'Wo Long: Fallen Dynasty', 'Intel©Core™ i5-8400|AMD Ryzen™ 5 3400G', '8 GB RAM', '60 GB', 'GeForce GTX 1650|Radeon RX 570 ', 'Action', 870000, 21639, 10361, 11278, '92'),
('131', 'A131', 'Might & Magic: Heroes VI', 'Intel  Core 2 Duo', '1 GB RAM', '8 GB', 'Intel HD 3000', 'Strategy', 205000, 8133, 3902, 4231, '92'),
('132', 'A132', 'Hunt Down The Freeman', 'Intel©Core™ 2 Duo', '4 GB RAM', '38 GB', 'Intel HD 3000', 'Action', 70000, 3173, 1530, 1643, '93'),
('133', 'A133', 'Hood: Outlaws & Legends', 'Intel Core i5-3570K', '8 GB RAM', '40 GB', 'GeForce GTX 660', 'Action', 169000, 7609, 3707, 3902, '95'),
('134', 'A134', 'Heat', 'Intel Core i7-4770 @ 3.4 GHz |AMD Ryzen 5 1300X', '16 GB RAM', '70 GB', 'Nvidia GPU GeForce 970 GTX| AMD RX560', 'Adventure', 110000, 2874, 1424, 1450, '98'),
('135', 'A135', 'Dungeons & Dragons: Dark Alliance', 'Intel Core i5-6600', '8 GB RAM', '50 GB', 'AMD Radeon R7 360 / NVIDIA GTX 750 ti', 'Action', 140000, 4594, 2291, 2303, '99'),
('136', 'A136', 'Mighty No. 9', 'Intel Core 2 Duo', '4 GB RAM', '2 GB', 'Nvidia GeForce GTX 550 Ti', 'Action', 135000, 3155, 1577, 1578, '100'),
('137', 'A137', 'StarDrive', 'Intel Pentium', '3 GB RAM', '2 GB', 'Intel HD 4000', 'Strategy', 140000, 1437, 632, 805, '79'),
('138', 'A138', 'Sid Meier\'s Starships', 'Intel Core 2 Duo', '2 GB RAM', '841 MB', 'Intel HD 4000', 'Strategy', 116000, 2284, 1124, 1160, '97'),
('139', 'A139', 'Front Page Sports Football', 'Intel Core i3', '2 GB RAM', '2 GB', 'Intel HD 4000', 'Sports', 90000, 62, 6, 56, '89'),
('14', 'A14', 'Devil May Cry 4 Special Edition', 'Intel Core 2 Duo |AMD Athlon', '2 GB RAM', '27 GB', 'NVIDIA GeForce 8800 GTS|AMD Radeon HD 3850', 'Action', 205000, 13261, 11970, 1291, '89'),
('140', 'A140', 'Art of Murder - The Secret Files', 'Intel Pentium 4', '2 GB RAM', '300 MB', 'Intel HD 3000', 'Adventure', 40000, 86, 10, 76, '13'),
('141', 'A141', 'NEW LIFE', 'Intel Core i5-2400', '8 GB RAM', '10 GB', 'GeForce GTX 660', 'Simulation', 83000, 175, 22, 153, '86'),
('142', 'A142', 'Pro Gamer Manager 2', 'Intel Core 2 Duo', '4 GB RAM', '4 GB', 'Intel HD 3000', 'Simulation', 135000, 166, 24, 142, '83'),
('143', 'A143', 'Pro Rugby Manager 2015', 'Intel Core 2 Duo', '1 GB RAM', '4 GB', 'Intel HD', 'Sports', 90000, 161, 33, 128, '74'),
('144', 'A144', 'Professional Farmer 2017', 'Intel Core 2 Duo', '4 GB RAM', '5 GB', 'NVIDIA GeForce GTX 280', 'Simulation', 74000, 221, 70, 151, '54'),
('145', 'A145', 'Age of Survival', 'Intel: i3', '4 GB RAM', '6 GB', 'NVidia Geforce 460GTX', 'Simulation', 130000, 234, 25, 209, '88'),
('146', 'A146', 'World Ship Simulator', 'Intel: i3', '4 GB RAM', '3 GB', 'Nvidia Geforce GTX 470', 'Simulation', 140000, 252, 52, 200, '74'),
('147', 'A147', 'Madden NFL 23', 'Intel Core i3-6100', '8 GB RAM', '50 GB', 'Radeon RX 460|GeForce GTX 660', 'Sports', 659000, 4821, 2325, 2496, '93'),
('148', 'A148', 'EA SPORTS ™PGA TOUR™', 'Ryzen 5 1600 / Core i5 6600k', '8 GB RAM', '100 GB', 'Radeon RX 570 /Geforce GTX 1050 Ti', 'Sports', 759000, 687, 335, 352, '95'),
('149', 'A149', 'Redfall', 'Intel Core i5-8400 @ 2.80GHz or AMD Ryzen 5 1600', '16 GB RAM', '100 GB', 'AMD RX 580 / NV GTX 1070', 'Action', 759000, 2291, 651, 1640, '60'),
('15', 'A15', 'Devil May Cry 5', 'Intel Core i5-4460|AMD FX-6300', '8 GB RAM', '35 GB', 'NVIDIA GeForce GTX 760|AMD Radeon R7 260x', 'Action', 424000, 101161, 96602, 4559, '95'),
('150', 'A150', 'RollerCoaster Tycoon World™', 'Intel Core i5', '4 GB RAM', '10 GB', 'GeForce GTX 460', 'Simulation', 115000, 5599, 1382, 4217, '67'),
('151', 'A151', 'Flatout 3: Chaos & Destruction', 'Intel© 2 GHz dual core CPU', '2 GB RAM', '16 GB', 'Nvidia GeForce 8600+ / AMD Radeon HD X2600+', 'Racing', 270000, 3344, 557, 2787, '80'),
('152', 'A152', 'Erzurum', 'Intel Core i5-2500', '4 GB RAM', '6 GB', 'Nvidia GeForce GTX 780 or AMD Radeon R9 290', 'Adventure', 10000, 3857, 1509, 2348, '64'),
('153', 'A153', 'Olympic Games Tokyo 2020 - The Official Video Game™', 'Intel Core i5-2300', '4 GB RAM', '15 GB', 'Nvidia GeForce GTS 450', 'Sports', 629000, 2545, 1182, 1363, '87'),
('154', 'A154', 'Viking: Battle for Asgard', 'Intel Core 2 Duo', '2 GB RAM', '6 GB', 'GeForce 8600 GS', 'Action', 136000, 2204, 1069, 1135, '94'),
('155', 'A155', 'Overlord: Fellowship of Evil', 'Intel Core i3', '4 GB RAM', '5 GB', 'Intel HD 3000', 'Action', 70000, 640, 149, 491, '70'),
('156', 'A156', 'Despair', 'Intel Core 2 Duo', '2 GB RAM', '2 GB', 'Intel HD 3000', 'Action', 10000, 1873, 642, 1231, '52'),
('157', 'A157', 'Infestation: Survivor Stories 2020', 'Intel Quad Core', '4 GB RAM', '10 GB', 'Nvidia GTX 460', 'Action', 50000, 25525, 10670, 14855, '72'),
('158', 'A158', 'Ninja Guy', 'IIntel Core 2 Duo', '2 GB RAM', '500 MB', 'Intel HD 3000', 'Action', 20000, 163, 43, 120, '64'),
('159', 'A159', 'Robot vs Birds Zombies', 'IIntel Core 2 Duo', '4 GB RAM', '200 MB', 'Intel HD 3000', 'Action', 10000, 114, 35, 79, '56'),
('16', 'A16', 'NieR:Automata™', ' Intel Core i3 2100|AMD A8-6500', '4 GB RAM', '50 GB', 'NVIDIA GeForce GTX 770|AMD Radeon R9 270X', 'Action', 579000, 116404, 99788, 16616, '83'),
('160', 'A160', 'You Are Not The Hero', 'Intel Pentium', '1 GB RAM', '300 MB', 'Intel HD 3000', 'Adventure', 116000, 37, 8, 29, '28'),
('161', 'A161', 'Survival Is Not Enough', 'Intel Core i3', '4 GB RAM', '1 GB', 'GeForce GT 730', 'Action', 46000, 52, 18, 34, '53'),
('162', 'A162', 'Not My Day!', 'Intel dual core', '4 GB RAM', '6 GB', 'Nvidia geforce gtx 560 ti', 'Simulation', 20000, 23, 5, 18, '72'),
('163', 'A163', 'Final Quest II', 'Intel dual core', '2 GB RAM', '100 MB', 'Intel HD 3000', 'Strategy', 9000, 164, 67, 97, '69'),
('164', 'A164', 'T.A.R.S', 'Intel Quad Core', '4 GB RAM', '2 GB', 'GT 1030', 'Action', 18000, 24, 9, 15, '40'),
('165', 'A165', 'Long Car Journey - A Road Trip Game', 'Intel I3 3220', '4 GB RAM', '5 GB', 'GTX 1070 ', 'Action', 50000, 20, 7, 13, '46'),
('166', 'A166', 'Order No. 227: Not One Step Back!', 'Intel Quad Core', '2 GB RAM', '250 MB', 'Intel HD 3000', 'Action', 40000, 74, 28, 46, '61'),
('167', 'A167', 'Robotex', 'Intel Quad Core', '2 GB RAM', '1 GB', 'Nvidia GT 240', 'Action', 46000, 866, 271, 595, '54'),
('168', 'A168', 'Gotham Knights', 'Intel Core i5-9600', '8 GB RAM', '45 GB', 'NVIDIA GeForce GTX 1660 Ti OR AMD Radeon RX 590', 'Action', 749000, 14000, 6540, 7560, '85'),
('169', 'A169', 'The Callisto Protocol™', 'Intel©Core™ i5-8400', '8 GB RAM', '75 GB', 'NVIDIA© GeForce™ GTX 1060 or AMD Radeon™ RX 580', 'Action', 600000, 26500, 10240, 16260, '63'),
('17', 'A17', 'NieR Replicant ver.1.22474487139', 'AMD Ryzen 3 1300X|Intel Core i5-6400', '8 GB RAM', '26 GB', ' AMD Radeon R9 270X|NVIDIA GeForce GTX 960', 'Action', 879000, 20687, 18257, 2430, '87'),
('170', 'A170', 'Wolfenstein: Cyberpilot', 'Intel Core i5-4590', '8 GB RAM', '30 GB', 'Nvidia GeForce GTX 1070', 'Action', 266000, 264, 122, 142, '86'),
('171', 'A171', 'Devil\'s Hunt', 'Intel Core i5', '8 GB RAM', '26 GB', 'Nvidia GT 240', 'Action', 130000, 894, 354, 540, '66'),
('172', 'A172', 'CONTRA: ROGUE CORPS', 'Intel Core i5-4590', '4 GB RAM', '14 GB', 'NVIDIA GeForce GTX 650', 'Action', 485000, 199, 83, 116, '72'),
('173', 'A173', 'Left Alive', 'Intel© Core™ i5-2400', '8 GB RAM', '35 GB', 'NVIDIA© GeForce™ GTX 1050', 'Action', 825000, 752, 215, 537, '29'),
('174', 'A174', 'Eternity: The Last Unicorn', 'Intel Quad Core', '4 GB RAM', '14 GB', 'NVIDIA© GeForce GTX 970', 'Adventure', 166000, 191, 68, 123, '55'),
('175', 'A175', 'OCEAN CITY RACING', 'Intel Quad Core', '2 GB RAM', '5 GB', 'Nvidia GTX 460', 'Racing', 18000, 695, 245, 450, '54'),
('176', 'A176', 'Pro Rugby Manager 2015', 'Intel dual core', '1 GB RAM', '4 GB', 'Intel HD 3000', 'Sports', 90000, 161, 33, 128, '74'),
('177', 'A177', 'Vendetta - Curse of Raven\'s Cry', 'Intel dual core', '4 GB RAM', '18 GB', 'Geforce GTX 460', 'Action', 140000, 599, 297, 302, '98'),
('178', 'A178', 'The Tactics of War', 'Intel dual core', '4 GB RAM', '1 GB', 'Geforce GT 460', 'Action', 752000, 13, 3, 10, '70'),
('179', 'A179', 'Rambo The Video Game + Baker Team DLC', 'Intel dual core', '2 GB RAM', '8 GB', 'GeForce GT 650', 'Action', 200000, 567, 236, 331, '71'),
('18', 'A18', 'Like a Dragon: Ishin!', 'Intel Core i5-3470|AMD Ryzen 3 1200', '8 GB RAM', '60 GB', 'NVIDIA GeForce GTX 960|AMD Radeon RX 460', 'Action', 648000, 2933, 2470, 463, '81'),
('180', 'A180', 'Choo-Choo Charles', 'Intel Quad Core', '4 GB RAM', '3 GB', 'Geforce GTX 460', 'Action', 166000, 5000, 2450, 2650, '89'),
('181', 'A181', 'Baldo: The Guardian Owls', 'Intel dual core', '4 GB RAM', '2 GB', 'Intel HD 3000', 'Action', 120000, 173, 66, 107, '62'),
('182', 'A182', 'ELEX', 'Intel Core i5 3570', '8 GB RAM', '35 GB', 'NVIDIA GTX 660', 'Adventure', 269000, 4200, 2000, 2200, '91'),
('183', 'A183', 'Sacred 3', 'Pentium 4', '2 GB RAM', '25 GB', 'Nvidia GeForce GT 610', 'Action', 115000, 4263, 1124, 3139, '64'),
('184', 'A184', 'FAST & FURIOUS CROSSROADS', 'Intel Core i5 3450', '8 GB RAM', '50 GB', 'NVIDIA GTX680', 'Racing', 400000, 156, 73, 83, '88'),
('185', 'A185', 'Autobahn Police Simulator', 'Intel Quad Core', '4 GB RAM', '5 GB', 'NVIDIA GTX 760', 'Racing', 91000, 2117, 637, 1480, '57'),
('186', 'A186', 'Stronghold 3 Gold', 'Intel dual core', '2 GB RAM', '5 GB', 'Intel HD 3000', 'Strategy', 200000, 4294, 1367, 2927, '53'),
('187', 'A187', '16bit Trader', 'Intel dual core', '2 GB RAM', '3 GB', 'Intel HD 3000', 'Strategy', 25000, 1706, 719, 987, '73'),
('188', 'A188', 'Fear The Wolves', 'Intel Core i3-2130', '8 GB RAM', '16 GB', 'GeForce GTX 650 Ti', 'Action', 39000, 3436, 1599, 1837, '87'),
('189', 'A189', 'New kind of adventure', 'Intel dual core', '2 GB RAM', '1 GB', 'Intel HD 3000', 'Adventure', 9000, 1497, 618, 879, '70'),
('19', 'A19', 'Sekiro: Shadows Die Twice - GOTY Edition', 'Intel Core i3-2100 | AMD FX-6300', '4 GB RAM', '25 GB', 'NVIDIA GeForce GTX 760 | AMD Radeon HD 7950', 'Action', 730000, 230445, 219551, 10894, '95'),
('190', 'A190', 'Mozart Requiem', 'Intel© Core™ i5-2400', '4 GB RAM', '2 GB', 'GeForce GTX 650 Ti', 'Adventure', 140000, 20, 9, 11, '82'),
('191', 'A191', 'Gungrave G.O.R.E', 'i7-4470k', '16 GB RAM', '30 GB', 'NVIDIA© GeForce™ GTX 1050', 'Action', 700000, 295, 100, 195, '51'),
('192', 'A192', 'BeachHead', 'Intel i3-6100/AMD Ryzen 3 1200', '10 GB RAM', '5 GB', 'NVIDIA© GeForce™ GTX 1050', 'Action', 110000, 61, 20, 41, '51'),
('193', 'A193', 'HELL ARCHITECT - DEFINITIVE EDITION', 'Intel Core i5-750', '4 GB RAM', '4 GB', 'Intel HD 4000', 'Simulation', 120000, 369, 106, 263, '60'),
('194', 'A194', 'Power & Revolution 2020 Edition', 'Intel dual core', '4 GB RAM', '6 GB', 'Intel HD 4000', 'Simulation', 210000, 822, 296, 526, '56'),
('195', 'A195', 'Let\'s Sing 2016', 'Intel Quad Core', '4 GB RAM', '5 GB', 'Nvidia GT 520', 'Simulation', 110000, 58, 28, 30, '93'),
('196', 'A196', 'Gunvolt Chronicles: Luminous Avenger iX 2', 'Intel Quad Core', '8 GB RAM', '10 GB', 'Intel HD 4000', 'Action', 160000, 353, 104, 249, '58'),
('197', 'A197', 'Fingered', 'Intel dual core', '2 GB RAM', '2 GB', 'Intel HD 3000', 'Simulation', 20000, 904, 224, 680, '67'),
('198', 'A198', 'Soldiers of the Universe', 'Intel Core i3-3225', '4 GB RAM', '15 GB', 'nVidia GeForce GTX 500', 'Action', 40000, 450, 206, 244, '84'),
('199', 'A199', 'Fantasy Blacksmith', 'Intel dual core', '4 GB RAM', '2 GB', 'Intel HD 3000', 'Simulation', 70000, 1555, 762, 793, '96'),
('2', 'A2', 'STAR WARS Jedi: Fallen Order™', 'Intel i3-3220', '8 GB RAM', '55 GB', 'AMD Radeon HD 7750|NVIDIA GeForce GTX 650', 'Action', 480000, 125952, 112433, 13519, '88'),
('20', 'A20', 'ELDEN RING', ' INTEL CORE I5-8400|AMD RYZEN 3 3300X', '12 GB RAM', '60 GB', 'NVIDIA GEFORCE GTX 1060|AMD RADEON RX 580 ', 'Action', 560000, 669370, 615104, 54266, '91'),
('200', 'A200', 'ShipLord', 'Intel dual core', '1 GB RAM', '2 GB', 'Intel HD 3000', 'Action', 162000, 659, 300, 359, '84'),
('21', 'A21', 'Resident Evil 4 Remake', 'AMD Ryzen 3 1200 / Intel Core i5-7500', '8 GB RAM', '60 GB', 'AMD Radeon RX 560|NVIDIA GeForce GTX 1050 Ti', 'Action', 831000, 77689, 75714, 1975, '97'),
('22', 'A22', 'Ready Or Not', 'Intel Core i5-4430 / AMD FX-6300', '8 GB RAM', '90 GB', 'NVIDIA GeForce GTX 960 2GB / AMD Radeon R7 370', 'Action', 200000, 103881, 95125, 8756, '91'),
('23', 'A23', 'Monster Hunter', 'Intel© Core™ i5 4460|AMD Ryzen™ 3 3200G', '8GB RAM', '52 GB', 'NVIDIA© GeForce™ GTX 760|AMD Radeon™ R7 260x ', 'Action', 335000, 381025, 328559, 52466, '84'),
('24', 'A24', 'Resident Evil Village', 'AMD Ryzen 3 1200|Intel Core i5-7500', '8 GB RAM', '50 GB', 'AMD Radeon RX 560| NVIDIA GeForce GTX 1050 Ti', 'Action', 554000, 92598, 88663, 3935, '96'),
('25', 'A25', 'Umberella Corps', 'Intel Core i3-4160', '4 GB RAM', '13 GB', 'NVIDIA GeForce GTX460', 'Action', 200000, 2830, 838, 1992, '58'),
('26', 'A26', 'Snow Runner', 'Intel i3-4130 3.4 GHz / AMD Ryzen 3 2200', '8 GB RAM', '20 GB', 'GeForce GTX 660 / Radeon R9 270', 'Simulation', 249000, 22182, 19733, 2449, '88'),
('27', 'A27', 'Euro Truck Simulator 2', 'Intel Dual core', '4 GB RAM', '12 GB', 'GeForce GTS 450', 'Simulation', 170000, 642986, 626325, 16661, '97'),
('28', 'A28', 'Train Sim World© 3', 'Intel Core i5-4690|AMD Ryzen 5 1500X', '8 GB RAM', '50 GB', 'NVIDIA GeForce GTX 750 Ti or AMD Radeon RX 460', 'Simulation', 210000, 2429, 1956, 473, '76'),
('29', 'A29', 'Microsoft Flight Simulator', 'Intel i5-4460 | AMD Ryzen 3 1200', '8 GB RAM', '150 GB', 'NVIDIA GTX 770 | AMD Radeon RX 570', 'Simulation', 790000, 46801, 36573, 10228, '72'),
('3', 'A3', 'Marvel\'s Spider-Man Remastered', 'Intel Core i3-4160', '8 GB RAM', '75 GB', 'NVIDIA GTX 950|AMD Radeon RX 470', 'Action', 879000, 61931, 59797, 2134, '96'),
('30', 'A30', 'Construction Simulator', 'Intel Core i5-4460', '8 GB RAM', '10 GB', 'Nvidia GTX 960 |AMD Radeon Pro 570', 'Simulation', 300000, 5771, 4669, 1102, '76'),
('31', 'A31', 'Dying Light', 'Intel© Core™ i5-2500', '4 GB RAM', '40 GB', 'NVIDIA© GeForce™ GTX 560', 'Action', 258000, 379757, 361201, 18556, '95'),
('32', 'A32', 'Planet Zoo', 'Intel i5-2500', '8 GB RAM', '16 GB', 'NVIDIA GeForce GTX 770|AMD Radeon R9 270X', 'Simulation', 440000, 67903, 61490, 6413, '90'),
('33', 'A33', 'House Flipper', 'Intel Core i3', '4 GB RAM', '6 GB', 'GeForce GTX 560|AMD R7-260X', 'Simulation', 207000, 74067, 69486, 4581, '93'),
('34', 'A34', 'PowerWash Simulator', 'Intel i5-760', '4 GB RAM', '6 GB', 'GeForce GTX 760|AMD R7-260X', 'Simulation', 349000, 34911, 34070, 841, '98'),
('35', 'A35', 'Farming Simulator 22', 'Intel Core i5-3330', '8 GB RAM', '35 GB', 'GeForce GTX 660 |AMD Radeon R7 265', 'Simulation', 325285, 46595, 42241, 4354, '90'),
('36', 'A36', 'Bus Simulator 21', 'Intel Core i3-2120', '8 GB RAM', '18 GB', 'NVIDIA GeForce GTX 760|AMD Radeon R9 280', 'Simulation', 420000, 3406, 2367, 1039, '56'),
('37', 'A37', 'Car Mechanic Simulator 2021', 'Intel Core i5 4690|AMD Ryzen 5 1500X', '8 GB RAM', '35 GB', 'NVidia GeForce GTX 760', 'Simulation', 207000, 19066, 18268, 798, '96'),
('38', 'A38', 'Thief Simulator', 'Intel Core i5', '8 GB RAM', '5 GB', 'NVidia GeForce GTX 750', 'Simulation', 166000, 22332, 19543, 2789, '86'),
('39', 'A39', 'Crusader Kings III', 'Intel© Core™ i3-2120 / AMD© FX 6350', '6 GB RAM', '8 GB', 'Nvidia© GeForce™ GTX 660|AMD© Radeon™ HD 7870', 'Simulation', 376000, 89336, 82351, 6985, '92'),
('4', 'A4', 'Marvel\'s Spider-Man: Miles Morales', 'Intel Core i3-4160', '8 GB RAM', '75 GB', 'NVIDIA GTX 950|AMD Radeon RX 470', 'Action', 729000, 15484, 14520, 964, '93'),
('40', 'A40', 'Sid Meier\'s Civilization© VI', 'Intel Core i3', '4 GB RAM', '17 GB', 'nVidia 450|AMD 5570', 'Simulation', 600000, 265011, 225109, 39902, '82'),
('41', 'A41', 'Frostpunk', 'Intel Dual Core', '4 GB RAM', '8 GB', 'GeForce GTX 660| Radeon R7 370', 'Simulation', 246000, 90644, 83267, 7377, '91'),
('42', 'A42', 'Against the Storm', 'Intel i3-4160', '4 GB RAM', '5 GB', 'Nvidia GeForce GTX 650|AMD Radeon HD 7750', 'Simulation', 200000, 10534, 10063, 471, '95'),
('43', 'A43', 'Jurassic World Evolution 2', 'Intel i5-4590', '8 GB RAM', '14 GB', 'NVIDIA GeForce GTX 1050Ti', 'Simulation', 450000, 19137, 16371, 2766, '83'),
('44', 'A44', 'Anno 1800', 'Intel i5 3470', '8 GB RAM', '60 GB', 'NVIDIA GeForce 670 GTX|AMD Radeon R9 285', 'Simulation', 619000, 8792, 7073, 1719, '76'),
('45', 'A45', 'Europa Universalis IV', 'Intel© Core™ i3-2105', '4 GB RAM', '6 GB', 'Nvidia© GeForce GTX 460|AMD© Radeon HD 5850', 'Simulation', 351000, 116169, 100882, 15287, '85'),
('46', 'A46', 'Cities: Skylines', 'Intel© Core™ I7 930', '8 GB RAM', '4 GB', 'Nvidia© GeForce™ GTS 450', 'Simulation', 260000, 228897, 213505, 15392, '93'),
('47', 'A47', 'Tropico 6', 'Intel i3-2000', '8 GB RAM', '16 GB', 'Geforce GTX 750', 'Simulation', 456000, 23061, 20086, 2975, '85'),
('48', 'A48', 'Planet Coaster', 'Intel i5-2300', '8 GB RAM', '8 GB', 'nVidia GTX 560', 'Simulation', 583000, 59229, 53991, 5238, '90'),
('49', 'A49', 'Hotel Renovator', 'Intel Core i3-4130', '8 GB RAM', '60 GB', 'Geforce GTX 750 Ti', 'Simulation', 219000, 1224, 966, 258, '73'),
('5', 'A5', 'Hogwarts Legacy', 'Intel Core i5-6600|AMD Ryzen 5 1400', '16 GB RAM', '85 GB', 'NVIDIA GeForce GTX 960|AMD Radeon RX 470', 'Adventure', 749000, 199508, 183978, 15530, '92'),
('50', 'A50', 'American Truck Simulator', 'Intel Core2 Duo', '4 GB RAM', '7 GB', 'GeForce GTS 450', 'Simulation', 170000, 126419, 122177, 4242, '97'),
('51', 'A51', 'EA SPORTS™ FIFA 23', 'Intel Core i5 6600k or AMD Ryzen 5 1600', '8 GB RAM', '100 GB', 'NVIDIA GeForce GTX 1050 Ti|AMD Radeon RX 570', 'Sports', 759000, 103957, 53660, 50297, '94'),
('52', 'A52', 'NBA 2K23', 'Intel© Core™ i3-2100', '4 GB RAM', '110 GB', 'NVIDIA© GeForce™ GT 450', 'Sports', 659000, 28549, 17847, 10702, '60'),
('53', 'A53', 'Undisputed', 'Intel i5 7500', '8 GB RAM', '40 GB', 'GeForce GTX 1660 |AMD Rx 590', 'Sports', 360000, 7399, 5707, 1692, '70'),
('54', 'A54', 'WWE 2K23', 'Intel Core i5-3550', '8 GB RAM', '80 GB', 'GeForce GTX 1060 |Radeon RX 480', 'Sports', 649000, 1870, 1480, 390, '74'),
('55', 'A55', 'Rollerdrome', 'Intel Core i5-2125', '4 GB RAM', '25 GB', 'GeForce GT 630', 'Sports', 325000, 1322, 1231, 91, '93'),
('56', 'A56', 'OlliOlli World', 'Intel dual core', '4 GB RAM', '6 GB', 'GeForce GT 430', 'Sports', 329000, 1188, 1089, 99, '91'),
('57', 'A57', 'FIFA 22', 'Intel Core i3-6100', '8GB RAM', '50 GB', 'NVIDIA GTX 660', 'Sports', 660000, 115747, 92863, 22884, '75'),
('58', 'A58', 'F1© 22', 'Intel Core i3-2130', '8 GB RAM', '80 GB', 'NVIDIA GTX 1050 Ti|AMD RX 470', 'Sports', 659000, 22635, 15577, 7058, '55'),
('59', 'A59', 'GRID Legends', 'Intel i3 2130', '8GB RAM', '50 GB', 'NVIDIA GTX 950|AMD RADEON RX 460', 'Sports', 659000, 1640, 1207, 433, '64'),
('6', 'A6', 'Back 4 Blood', 'Intel Core i5-6600 |AMD Ryzen 5 2600', '8 GB RAM', '40 GB', 'NVIDIA GeForce GTX 1050 Ti|AMD Radeon RX 570', 'Action', 749000, 46331, 30357, 15974, '53'),
('60', 'A60', 'RIDE 4', 'Intel Core i5-2500', '8GB RAM', '43 GB', 'NVIDIA GeForce GTX 960', 'Sports', 499000, 8598, 6986, 1612, '77'),
('61', 'A61', 'Monster Energy Supercross - The Official Videogame 6', 'Intel Core i5-4590|AMD Ryzen 5 2500U', '8 GB RAM', '20 GB', 'GeForce GTX 1050|Radeon RX 560X', 'Sports', 499000, 134, 81, 53, '65'),
('62', 'A62', 'Football Manager 2023', 'Intel Core 2', '4 GB RAM', '7 GB', 'NVIDIA GeForce 9600M GT', 'Sports', 619000, 12156, 10660, 1496, '86'),
('63', 'A63', 'Skater XL - The Ultimate Skateboarding Game', 'Intel core i5', '8 GB RAM', '5 GB', 'GTX 950', 'Sports', 164000, 18192, 15693, 2499, '84'),
('64', 'A64', 'Forza Horizon 4', 'Intel i3-4170', '8 GB RAM', '80 GB', 'NVidia 650TI', 'Racing', 250000, 179393, 159418, 19975, '87'),
('65', 'A65', 'Forza Horizon 5', 'Intel i5-4460 or AMD Ryzen 3 1200', '8 GB RAM', '110 GB', 'NVidia GTX 970 OR AMD RX 470', 'Racing', 700000, 115356, 101464, 13892, '86'),
('66', 'A66', 'Assetto Corsa', 'Intel Core 2 Duo', '2 GB RAM', '15 GB', 'Nvidia GeForce GT 460', 'Racing', 110000, 93930, 86727, 7203, '92'),
('67', 'A67', 'The Crew™ 2', 'Intel Core i5-2400', '8 GB RAM', '50 GB', 'NVIDIA GeForce GTX 660', 'Racing', 515000, 65346, 52985, 12361, '77'),
('68', 'A68', 'DiRT Rally 2.0', 'Intel Core i3 2130', '8 GB RAM', '100 GB', 'NVIDIA GTX650Ti', 'Racing', 120000, 32960, 28632, 4328, '85'),
('69', 'A69', 'DIRT 5', 'Intel Core i3 2130', '8GB RAM', '60 GB', 'AMD RX 480|NVIDIA GTX 970', 'Racing', 250000, 5712, 3026, 2686, '89'),
('7', 'A7', 'Left 4 Dead 2', 'Pentium 4', '2 GB RAM', '13 GB', 'NVidia 6600', 'Action', 91000, 732525, 714361, 18164, '97'),
('70', 'A70', 'Need for Speed™ Payback', 'Intel i3 6300', '6 GB RAM', '30 GB', 'NVIDIA GeForce™ GTX 750 Ti', 'Racing', 379000, 18776, 16145, 2631, '84'),
('71', 'A71', 'Need for Speed™ Unbound', 'Ryzen 5 2600, Core i5-8600', '8 GB RAM', '50 GB', 'RX 570, GTX 1050 Ti', 'Racing', 759000, 12376, 7748, 4628, '60'),
('72', 'A72', 'Need for Speed™ Heat', 'Core i5-3570', '8 GB RAM', '50 GB', 'NVIDIA: GeForce GTX 760', 'Racing', 759000, 86072, 71411, 14661, '79'),
('73', 'A73', 'Burnout™ Paradise Remastered', 'Intel i3 2120', '4 GB RAM', '8 GB', 'NVidia GT 450', 'Racing', 239000, 5153, 3185, 1968, '62'),
('74', 'A74', 'CarX Drift Racing Online', 'Intel i5 4590 or AMD Ryzen3 1200', '4 GB RAM', '6 GB', 'GeForce 950GT', 'Racing', 96000, 61267, 58493, 2774, '95'),
('75', 'A75', 'Wreckfest', 'Intel© Core™ i3', '8 GB RAM', '32 GB', 'NVIDIA Geforce© GTX™ 560', 'Racing', 254000, 33302, 29115, 4187, '86'),
('76', 'A76', 'XCOM©: Chimera Squad', 'Intel Quad Core', '4 GB RAM', '18 GB', 'GeForce 650', 'Strategy', 210000, 20871, 15108, 5763, '62'),
('77', 'A77', 'Marvel\'s Midnight Suns', 'AMD Ryzen 3-2200G / Intel Core i5-4430', '8 GB RAM', '60 GB', 'AMD RX 470 / GeForce GTX 960', 'Strategy', 649000, 11747, 9305, 2442, '74'),
('78', 'A78', 'Phantom Brigade', 'Intel Core i7-4790K or AMD Ryzen 5 2600X', '12 GB RAM', '10 GB', 'NVIDIA GeForce GTX 970|AMD Radeon R9 290X', 'Strategy', 245000, 2162, 1689, 473, '72'),
('79', 'A79', 'Company of Heroes 3', 'Intel i5 6000', '8 GB RAM', '40 GB', 'NVIDIA GeForce GTX 950|AMD Radeon R9 370', 'Strategy', 640000, 16223, 8841, 7382, '83'),
('8', 'A8', 'World War Z', 'AMD A10-5700 / Intel Core i3-3220', '8 GB RAM', '?50 GB', 'AMD R7-240 |GForce 650Ti', 'Action', 289000, 13560, 11303, 2257, '80'),
('80', 'A80', 'Steel Division 2', 'Intel i3-2100', '4 GB RAM', '50 GB', 'Nvidia GeForce GT 1030', 'Strategy', 479000, 7028, 5569, 1459, '74'),
('81', 'A81', 'Age of Empires II: Definitive Edition', 'Intel Core 2 Duo', '4 GB RAM', '15 GB', 'NVIDIA© GeForce™ GT 420', 'Strategy', 265000, 121784, 115458, 6326, '95'),
('82', 'A82', 'Age of Empires III: Definitive Edition', 'Intel i3-2105', '8 GB RAM', '42 GB', 'GeForce GT 430', 'Strategy', 109000, 33204, 27245, 5959, '78'),
('83', 'A83', 'Total War: THREE KINGDOMS', 'Intel Core 2 Duo', '4 GB RAM', '60 GB', 'GTX 650 Ti', 'Strategy', 541000, 94994, 67669, 27325, '60'),
('84', 'A84', 'HUMANKIND™', 'Intel i5 4000', '8 GB RAM', '25 GB', 'NVIDIA GTX 770|AMD R9 290', 'Strategy', 500000, 22239, 15058, 7181, '52'),
('85', 'A85', 'ENDLESS™ Space 2', 'Intel i3 4000', '4 GB RAM', '8 GB', 'NVidia 550Ti', 'Strategy', 270000, 20378, 17007, 3371, '80'),
('86', 'A86', 'Total War: WARHAMMER III', 'Intel i3/Ryzen 3 series', '6 GB RAM', '120 GB', 'Nvidia GTX 900', 'Strategy', 648999, 69373, 51415, 17958, '65'),
('87', 'A87', 'Company of Heroes 2', 'Intel Core2 Duo', '2 GB RAM', '30 GB', 'GeForce GTX 470', 'Strategy', 136000, 100748, 79278, 21470, '73'),
('88', 'A88', 'Age of Empires IV: Anniversary Edition', 'Intel Core i5-6300U or AMD Ryzen 5 2400G', '8 GB RAM', '50 GB', 'Nvidia GeForce 970 GPU or AMD Radeon RX 570 GPU', 'Strategy', 249999, 50277, 43498, 6779, '84'),
('89', 'A89', 'Against the Storm', 'Intel i3-4160', '4 GB RAM', '5 GB', 'Nvidia GeForce GTX 650 or AMD Radeon HD 7750', 'Strategy', 200000, 10566, 10095, 471, '95'),
('9', 'A9', 'The Last of Us Part I', 'AMD Ryzen 5 1500X|Intel Core i7-4770K', '16 GB RAM', '100 GB', 'AMD Radeon RX 470 | NVIDIA GeForce GTX 970', 'Action', 879000, 31488, 16648, 14840, '89'),
('90', 'A90', 'Dune: Spice Wars', 'Intel Core i5|AMD Ryzen 5', '8 GB RAM', '4 GB', 'NVidia GTX 1050 / AMD RX550', 'Strategy', 299000, 7359, 6019, 1340, '78'),
('91', 'A91', 'Stellaris', 'Intel©Core™ i3-530', '4 GB RAM', '10 GB', 'Nvidia© GeForce™ GTX 560 Ti', 'Strategy', 300000, 146983, 130082, 16901, '87'),
('92', 'A92', 'Cult of the Lamb', 'Intel Core i3-3240', '4 GB RAM', '4 GB', 'GeForce GTX 560 Ti', 'Strategy', 149999, 50328, 47373, 2955, '94'),
('93', 'A93', 'Terra Nil', 'Intel Core i5-4590', '8 GB RAM', '2 GB', 'GeForce GTX 760 / Radeon RX 560X', 'Strategy', 207000, 27765, 25442, 433, '91'),
('94', 'A94', 'Persona 5 Royal', 'Intel Core i7-4790|AMD Ryzen 5 1500X', '8 GB RAM', '41 GB', 'Nvidia GeForce GTX 650 Ti | AMD Radeon R7 360', 'Strategy', 798000, 35572, 34585, 987, '97'),
('95', 'A95', 'Persona 4 Golden', 'Intel Core 2 Duo', '2 GB RAM', '14 GB', 'Nvidia GeForce GTX 460', 'Strategy', 260000, 62396, 60598, 1798, '97'),
('96', 'A96', 'OCTOPATH TRAVELER™', 'Intel© Core™ i3-3210', '4 GB RAM', '5 GB', 'NVIDIA© GeForce™ GTX 750', 'Strategy', 570000, 12689, 10980, 1709, '84'),
('97', 'A97', 'OCTOPATH TRAVELER II', 'Intel© Core™ i3-6100', '8 GB RAM', '10 GB', 'AMD Radeon™ RX 460 / NVIDIA© GeForce™ GTX 750', 'Strategy', 749000, 5185, 5005, 180, '96'),
('98', 'A98', 'Wartales', 'Intel Core i5|Ryzen 5', '8 GB RAM', '30 GB', 'NVidia GTX 1050 / AMD RX550', 'Strategy', 380000, 15399, 14034, 1365, '90'),
('99', 'A99', 'Yakuza: Like a Dragon', 'Intel Core i5-3470|AMD Ryzen 5 1400', '8 GB RAM', '40 GB', 'Nvidia GeForce GTX 660', 'Strategy', 799000, 20771, 19883, 888, '96');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `gamebot`
--
ALTER TABLE `gamebot`
  ADD PRIMARY KEY (`idgame`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
