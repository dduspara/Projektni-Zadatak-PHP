-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2023 at 11:33 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bazapodataka`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `picture` varchar(255) NOT NULL,
  `archive` enum('Y','N') NOT NULL,
  `more_pictures` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `date`, `picture`, `archive`, `more_pictures`) VALUES
(1, 'Obnovljeno Prvo i Drugo maksimirsko jezero', 'Posjetitelji parka Maksimir i zoološkog vrta, unazad više od pola godine svjedoče opsežnim radovima na prostoru parka. Tijekom izvođenja radova dio postojećih staza i prostora parka bio je privremeno nedostupan iz sigurnosnih radova. Stoga smo izuzetno zadovoljni da smo dana 15. prosinca 2021. završili fazu radova vezanu uz obnovu jezera te smo mogli krenuti s njihovim ponovnim punjenjem. Voda se pušta u Drugo maksimirsko jezero iz kojeg će se ubrzo preliti i u Prvo jezero. Brzinu punjenja diktira količina vode u potoku Bliznec koji opskrbljuje jezera s vodom.', '2023-01-03 17:21:12', 'news-sl3.jpg', 'N', 1),
(2, 'Primopredaja specijalnoga navalnog vatrogasnog vozila', 'Danas je Javnoj vatrogasnoj postrojbi Grada Zagreba uručeno specijalno navalno vatrogasno vozilo.\r\nRadi se o vozilu za borbu protiv velikih požara, ali se korist i u hitnim intervencijama, npr. u prometnim nesrećama i drugim akcijama spašavanja, a godišnje zatreba na oko 350 intervencija.\r\nNovo navalno vatrogasno vozilo je opremljeno s dvostrukom kabinom za šest vatrogasaca, spremnikom za vodu i pjenila te je svojom kvalitetom u europskome vrhu autoindustrije.\r\nKupljeno vozilo domaće je proizvodnje, odnosno od zagrebačke tvrtke koja izvozi diljem svijeta.', '2023-01-04 10:21:53', 'news-sl1.jpg', 'Y', 2),
(3, 'Novi Hrvatski prirodoslovni muzej po mjeri svjetskih metropola', 'Početak radova odvija se u okviru EU projekta „Čuvar baštine kao katalizator razvoja, istraživanja i učenja – novi Hrvatski prirodoslovni muzej”, a obilježava povodom 35. godišnjice ujedinjenja triju muzeja u današnji Hrvatski prirodoslovni muzej.\r\n\r\nProjekt vrijedan više od 118 milijuna kuna će po svom završetku krajem 2023. godine omogućiti potpunu rekonstrukciju i dogradnju Palače Amadeo, ugradnju suvremene prezentacijske i multimedijalne opreme za prezentaciju izabranog fundusa te nove laboratorije opremljene modernom tehnologijom koji će biti na raspolaganju svim korisnicima muzeja.\r\n\r\nRadove su otvorili gradonačelnik Grada Zagreba Tomislav Tomašević i ravnateljica Hrvatskog prirodoslovnog muzeja Tatjana Vlahović.\r\n\r\nOvaj, trenutačno najveći projekt u kulturi u Gradu Zagrebu te jedan od kapitalnih u Republici Hrvatskoj, završit će krajem 2023. godine kada će građani i posjetitelji grada Zagreba moći uživati u novom sjaju potpuno obnovljene Palače Amadeo.', '2023-01-03 18:27:49', 'news-sl2.jpg', 'N', 3),
(4, 'Predstavljanje 94 mil. kn vrijednog projekta smanjenja komunalnog otpada u Gradu Zagrebu', 'Grad Zagreb provodi EU projekt „Interventna mjera za smanjenje odlaganja komunalnog otpada nastalog u Gradu Zagrebu“.\r\n\r\nProjektom će se unaprijediti sustav odvojenog prikupljanja otpada te time postići smanjenje odlaganja miješanog komunalnog otpada sukladno obavezama propisanim Zakonom o održivom gospodarenju otpadom i ciljevima iz Plana gospodarenja otpadom Republike Hrvatske 2017. - 2022.\r\n\r\nProjekt je sufinancirala Europska unije iz Operativnog programa „Konkurentnost i kohezija 2014. – 2020.“. Ukupna vrijednost projekta je 93.973.317,60 kn, od čega je udio EU sufinanciranja 75.678.598,97, a provodi se od 10. studenog 2015. do 31. prosinca 2022. godine.\r\n\r\nProjekt ima za cilj unaprjeđenje sustava gospodarenja otpadom kroz smanjenje količina miješanog komunalnog otpada, povećanje stope odvojenog prikupljanja otpada na području Grada Zagreba i doprinos održivom razvoju i održivosti resursa.', '2023-01-03 18:37:52', 'news-sl4.jpg', 'N', 4),
(5, 'Trešnjevka dobila novi objekt Osnovne škole August Šenoa', 'Zbog ekspanzije broja stambenih zgrada u ovome dijelu GČ Trešnjevka sjever, potrebna je bila nova školska zgrada.\r\n\r\nZa drugu fazu je planirano da se poveća njezin kapacitet na 20 razrednih odjela za učenike od 1. do 8. razreda i da se izgradi vanjsko sportsko igralište nakon što se riješe imovinsko-pravni odnosi.\r\n\r\nNova područna škola se sastoji od 8 učionica razredne nastave, dviju za nastavu informatike, dviju za izbornu nastavu te od kuhinje s blagovaonicom, knjižnice i dvodijelne sportske dvorane, a može ju pohađati 240-ero učenika od 1. do 4. razreda.\r\n\r\nVrijednost radova je 41,5 milijuna kuna te 4 milijuna kuna opreme.', '2023-01-04 10:20:42', 'news-sl5.jpg', 'Y', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL,
  `picture1` varchar(255) NOT NULL,
  `picture2` varchar(255) NOT NULL,
  `picture3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `picture1`, `picture2`, `picture3`) VALUES
(1, 'news-sl3.jpg', 'news-sl3-2.jpg', 'news-sl3-3.jpg'),
(2, 'news-sl1.jpg', 'news-sl1-2.jpg', 'news-sl1-3.jpg'),
(3, 'news-sl2.jpg', 'news-sl2-2.jpg', 'news-sl2-3.jpg'),
(4, 'news-sl4.jpg', 'news-sl4-2.jpg', 'news-sl4-3.jpeg'),
(5, 'news-sl5.jpg', 'news-sl5-2.jpg', 'news-sl5-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `archive` enum('Y','N') NOT NULL DEFAULT 'Y',
  `role` int(1) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `country`, `city`, `address`, `date`, `username`, `password`, `archive`, `role`) VALUES
(8, 'Dominik', 'Duspara', 'dduspa4@vvg.hr', 'GF', 'Zagreb', 'Zagrebačka', '2023-01-04 10:01:20', 'dominik1', '$2y$12$pTzIhQaBuTAaplFqHQ2r0.vKt9gXoSPpVGlG20KozfUA/nR2ea1M6', 'Y', 1),
(9, 'Ana', 'Anic', 'ana@gmail.com', 'BD', 'Zagreb', 'Zagrebačka ul.', '2023-01-04 10:21:35', 'ana1234', '$2y$12$D0JRDmg.Ra2b7mrchqd8W.xr6HQUM8Gp6TwrbvwFEwNQY6eJDR1rm', 'N', 3),
(14, 'josip', 'josipovic', 'josip@gmail.com', 'BY', 'Minsk', 'ulica', '2023-01-04 10:22:38', 'josip1', '$2y$12$TOC39T5Krn21Jbf1HE5PYeswUEOVeJ5kGcdHj1TL7C9HrcOLyWp9y', 'Y', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `more_pictures` (`more_pictures`);

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pictures`
--
ALTER TABLE `pictures`
  ADD CONSTRAINT `veza` FOREIGN KEY (`id`) REFERENCES `news` (`more_pictures`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
