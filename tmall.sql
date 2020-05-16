-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 14, 2020 at 03:35 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.29-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tmall`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Cars', 'cars', NULL, NULL),
(2, 'Mobiles', 'mobiles', NULL, NULL),
(3, 'Electronics and appliances', 'electronics', NULL, NULL),
(4, 'Bikes', 'bikes', NULL, NULL),
(5, 'Furniture', 'furniture', NULL, NULL),
(6, 'Pets', 'pets', NULL, NULL),
(8, 'Books, Sports and hobbies', 'books-sports-hobbies', NULL, NULL),
(9, 'Fashion', 'fashion', NULL, NULL),
(10, 'Services', 'services', NULL, NULL),
(11, 'Real Estate', 'real-estate', NULL, NULL),
(12, 'Kids', 'kids', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `local_govts`
--

CREATE TABLE `local_govts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `local_govt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `local_govts`
--

INSERT INTO `local_govts` (`id`, `state_id`, `local_govt`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aba North', NULL, NULL),
(2, 1, 'Aba South', NULL, NULL),
(3, 1, 'Arochukwu', NULL, NULL),
(4, 1, 'Bende', NULL, NULL),
(5, 1, 'Ikwuano', NULL, NULL),
(6, 1, 'Isiala Ngwa North', NULL, NULL),
(7, 1, 'Isiala Ngwa South', NULL, NULL),
(8, 1, 'Isuikwuato', NULL, NULL),
(9, 1, 'Obi Ngwa', NULL, NULL),
(10, 1, 'Ohafia', NULL, NULL),
(11, 1, 'Osisioma', NULL, NULL),
(12, 1, 'Ugwunagbo', NULL, NULL),
(13, 1, 'Ukwa East', NULL, NULL),
(14, 1, 'Ukwa West', NULL, NULL),
(15, 1, 'Umuahia North', NULL, NULL),
(16, 1, 'Umuahia South', NULL, NULL),
(17, 1, 'Umu Nneochi', NULL, NULL),
(18, 2, 'Demsa', NULL, NULL),
(19, 2, 'Fufure', NULL, NULL),
(20, 2, 'Ganye', NULL, NULL),
(21, 2, 'Gayuk', NULL, NULL),
(22, 2, 'Gombi', NULL, NULL),
(23, 2, 'Grie', NULL, NULL),
(24, 2, 'Hong', NULL, NULL),
(25, 2, 'Jada', NULL, NULL),
(26, 2, 'Larmurde', NULL, NULL),
(27, 2, 'Madagali', NULL, NULL),
(28, 2, 'Maiha', NULL, NULL),
(29, 2, 'Mayo Belwa', NULL, NULL),
(30, 2, 'Michika', NULL, NULL),
(31, 2, 'Mubi North', NULL, NULL),
(32, 2, 'Mubi South', NULL, NULL),
(33, 2, 'Numan', NULL, NULL),
(34, 2, 'Shelleng', NULL, NULL),
(35, 2, 'Song', NULL, NULL),
(36, 2, 'Toungo', NULL, NULL),
(37, 2, 'Yola North', NULL, NULL),
(38, 2, 'Yola South', NULL, NULL),
(39, 3, 'Abak', NULL, NULL),
(40, 3, 'Eastern Obolo', NULL, NULL),
(41, 3, 'Eket', NULL, NULL),
(42, 3, 'Esit Eket', NULL, NULL),
(43, 3, 'Essien Udim', NULL, NULL),
(44, 3, 'Etim Ekpo', NULL, NULL),
(45, 3, 'Etinan', NULL, NULL),
(46, 3, 'Ibeno', NULL, NULL),
(47, 3, 'Ibesikpo Asutan', NULL, NULL),
(48, 3, 'Ibiono-Ibom', NULL, NULL),
(49, 3, 'Ika', NULL, NULL),
(50, 3, 'Ikono', NULL, NULL),
(51, 3, 'Ikot Abasi', NULL, NULL),
(52, 3, 'Ikot Ekpene', NULL, NULL),
(53, 3, 'Ini', NULL, NULL),
(54, 3, 'Itu', NULL, NULL),
(55, 3, 'Mbo', NULL, NULL),
(56, 3, 'Mkpat-Enin', NULL, NULL),
(57, 3, 'Nsit-Atai', NULL, NULL),
(58, 3, 'Nsit-Ibom', NULL, NULL),
(59, 3, 'Nsit-Ubium', NULL, NULL),
(60, 3, 'Obot Akara', NULL, NULL),
(61, 3, 'Okobo', NULL, NULL),
(62, 3, 'Onna', NULL, NULL),
(63, 3, 'Oron', NULL, NULL),
(64, 3, 'Oruk Anam', NULL, NULL),
(65, 3, 'Udung-Uko', NULL, NULL),
(66, 3, 'Ukanafun', NULL, NULL),
(67, 3, 'Uruan', NULL, NULL),
(68, 3, 'Urue-Offong/Oruko', NULL, NULL),
(69, 3, 'Uyo', NULL, NULL),
(70, 4, 'Aguata', NULL, NULL),
(71, 4, 'Anambra East', NULL, NULL),
(72, 4, 'Anambra West', NULL, NULL),
(73, 4, 'Anaocha', NULL, NULL),
(74, 4, 'Awka North', NULL, NULL),
(75, 4, 'Awka South', NULL, NULL),
(76, 4, 'Ayamelum', NULL, NULL),
(77, 4, 'Dunukofia', NULL, NULL),
(78, 4, 'Ekwusigo', NULL, NULL),
(79, 4, 'Idemili North', NULL, NULL),
(80, 4, 'Idemili South', NULL, NULL),
(81, 4, 'Ihiala', NULL, NULL),
(82, 4, 'Njikoka', NULL, NULL),
(83, 4, 'Nnewi North', NULL, NULL),
(84, 4, 'Nnewi South', NULL, NULL),
(85, 4, 'Ogbaru', NULL, NULL),
(86, 4, 'Onitsha North', NULL, NULL),
(87, 4, 'Onitsha South', NULL, NULL),
(88, 4, 'Orumba North', NULL, NULL),
(89, 4, 'Orumba South', NULL, NULL),
(90, 4, 'Oyi', NULL, NULL),
(91, 5, 'Alkaleri', NULL, NULL),
(92, 5, 'Bauchi', NULL, NULL),
(93, 5, 'Bogoro', NULL, NULL),
(94, 5, 'Damban', NULL, NULL),
(95, 5, 'Darazo', NULL, NULL),
(96, 5, 'Dass', NULL, NULL),
(97, 5, 'Gamawa', NULL, NULL),
(98, 5, 'Ganjuwa', NULL, NULL),
(99, 5, 'Giade', NULL, NULL),
(100, 5, 'Itas/Gadau', NULL, NULL),
(101, 5, 'Jama\'are', NULL, NULL),
(102, 5, 'Katagum', NULL, NULL),
(103, 5, 'Kirfi', NULL, NULL),
(104, 5, 'Misau', NULL, NULL),
(105, 5, 'Ningi', NULL, NULL),
(106, 5, 'Shira', NULL, NULL),
(107, 5, 'Tafawa Balewa', NULL, NULL),
(108, 5, 'Toro', NULL, NULL),
(109, 5, 'Warji', NULL, NULL),
(110, 5, 'Zaki', NULL, NULL),
(111, 6, 'Brass', NULL, NULL),
(112, 6, 'Ekeremor', NULL, NULL),
(113, 6, 'Kolokuma/Opokuma', NULL, NULL),
(114, 6, 'Nembe', NULL, NULL),
(115, 6, 'Ogbia', NULL, NULL),
(116, 6, 'Sagbama', NULL, NULL),
(117, 6, 'Southern Ijaw', NULL, NULL),
(118, 6, 'Yenagoa', NULL, NULL),
(119, 7, 'Agatu', NULL, NULL),
(120, 7, 'Apa', NULL, NULL),
(121, 7, 'Ado', NULL, NULL),
(122, 7, 'Buruku', NULL, NULL),
(123, 7, 'Gboko', NULL, NULL),
(124, 7, 'Guma', NULL, NULL),
(125, 7, 'Gwer East', NULL, NULL),
(126, 7, 'Gwer West', NULL, NULL),
(127, 7, 'Katsina-Ala', NULL, NULL),
(128, 7, 'Konshisha', NULL, NULL),
(129, 7, 'Kwande', NULL, NULL),
(130, 7, 'Logo', NULL, NULL),
(131, 7, 'Makurdi', NULL, NULL),
(132, 7, 'Obi', NULL, NULL),
(133, 7, 'Ogbadibo', NULL, NULL),
(134, 7, 'Ohimini', NULL, NULL),
(135, 7, 'Oju', NULL, NULL),
(136, 7, 'Okpokwu', NULL, NULL),
(137, 7, 'Oturkpo', NULL, NULL),
(138, 7, 'Tarka', NULL, NULL),
(139, 7, 'Ukum', NULL, NULL),
(140, 7, 'Ushongo', NULL, NULL),
(141, 7, 'Vandeikya', NULL, NULL),
(142, 8, 'Abadam', NULL, NULL),
(143, 8, 'Askira/Uba', NULL, NULL),
(144, 8, 'Bama', NULL, NULL),
(145, 8, 'Bayo', NULL, NULL),
(146, 8, 'Biu', NULL, NULL),
(147, 8, 'Chibok', NULL, NULL),
(148, 8, 'Damboa', NULL, NULL),
(149, 8, 'Dikwa', NULL, NULL),
(150, 8, 'Gubio', NULL, NULL),
(151, 8, 'Guzamala', NULL, NULL),
(152, 8, 'Gwoza', NULL, NULL),
(153, 8, 'Hawul', NULL, NULL),
(154, 8, 'Jere', NULL, NULL),
(155, 8, 'Kaga', NULL, NULL),
(156, 8, 'Kala/Balge', NULL, NULL),
(157, 8, 'Konduga', NULL, NULL),
(158, 8, 'Kukawa', NULL, NULL),
(159, 8, 'Kwaya Kusar', NULL, NULL),
(160, 8, 'Mafa', NULL, NULL),
(161, 8, 'Magumeri', NULL, NULL),
(162, 8, 'Maiduguri', NULL, NULL),
(163, 8, 'Marte', NULL, NULL),
(164, 8, 'Mobbar', NULL, NULL),
(165, 8, 'Monguno', NULL, NULL),
(166, 8, 'Ngala', NULL, NULL),
(167, 8, 'Nganzai', NULL, NULL),
(168, 8, 'Shani', NULL, NULL),
(169, 9, 'Abi', NULL, NULL),
(170, 9, 'Akamkpa', NULL, NULL),
(171, 9, 'Akpabuyo', NULL, NULL),
(172, 9, 'Bakassi', NULL, NULL),
(173, 9, 'Bekwarra', NULL, NULL),
(174, 9, 'Biase', NULL, NULL),
(175, 9, 'Boki', NULL, NULL),
(176, 9, 'Calabar Municipal', NULL, NULL),
(177, 9, 'Calabar South', NULL, NULL),
(178, 9, 'Etung', NULL, NULL),
(179, 9, 'Ikom', NULL, NULL),
(180, 9, 'Obanliku', NULL, NULL),
(181, 9, 'Obubra', NULL, NULL),
(182, 9, 'Obudu', NULL, NULL),
(183, 9, 'Odukpani', NULL, NULL),
(184, 9, 'Ogoja', NULL, NULL),
(185, 9, 'Yakuur', NULL, NULL),
(186, 9, 'Yala', NULL, NULL),
(187, 10, 'Aniocha North', NULL, NULL),
(188, 10, 'Aniocha South', NULL, NULL),
(189, 10, 'Bomadi', NULL, NULL),
(190, 10, 'Burutu', NULL, NULL),
(191, 10, 'Ethiope East', NULL, NULL),
(192, 10, 'Ethiope West', NULL, NULL),
(193, 10, 'Ika North East', NULL, NULL),
(194, 10, 'Ika South', NULL, NULL),
(195, 10, 'Isoko North', NULL, NULL),
(196, 10, 'Isoko South', NULL, NULL),
(197, 10, 'Ndokwa East', NULL, NULL),
(198, 10, 'Ndokwa West', NULL, NULL),
(199, 10, 'Okpe', NULL, NULL),
(200, 10, 'Oshimili North', NULL, NULL),
(201, 10, 'Oshimili South', NULL, NULL),
(202, 10, 'Patani', NULL, NULL),
(203, 10, 'Sapele, Delta', NULL, NULL),
(204, 10, 'Udu', NULL, NULL),
(205, 10, 'Ughelli North', NULL, NULL),
(206, 10, 'Ughelli South', NULL, NULL),
(207, 10, 'Ukwuani', NULL, NULL),
(208, 10, 'Uvwie', NULL, NULL),
(209, 10, 'Warri North', NULL, NULL),
(210, 10, 'Warri South', NULL, NULL),
(211, 10, 'Warri South West', NULL, NULL),
(212, 11, 'Abakaliki', NULL, NULL),
(213, 11, 'Afikpo North', NULL, NULL),
(214, 11, 'Afikpo South', NULL, NULL),
(215, 11, 'Ebonyi', NULL, NULL),
(216, 11, 'Ezza North', NULL, NULL),
(217, 11, 'Ezza South', NULL, NULL),
(218, 11, 'Ikwo', NULL, NULL),
(219, 11, 'Ishielu', NULL, NULL),
(220, 11, 'Ivo', NULL, NULL),
(221, 11, 'Izzi', NULL, NULL),
(222, 11, 'Ohaozara', NULL, NULL),
(223, 11, 'Ohaukwu', NULL, NULL),
(224, 11, 'Onicha', NULL, NULL),
(225, 12, 'Akoko-Edo', NULL, NULL),
(226, 12, 'Egor', NULL, NULL),
(227, 12, 'Esan Central', NULL, NULL),
(228, 12, 'Esan North-East', NULL, NULL),
(229, 12, 'Esan South-East', NULL, NULL),
(230, 12, 'Esan West', NULL, NULL),
(231, 12, 'Etsako Central', NULL, NULL),
(232, 12, 'Etsako East', NULL, NULL),
(233, 12, 'Etsako West', NULL, NULL),
(234, 12, 'Igueben', NULL, NULL),
(235, 12, 'Ikpoba Okha', NULL, NULL),
(236, 12, 'Orhionmwon', NULL, NULL),
(237, 12, 'Oredo', NULL, NULL),
(238, 12, 'Ovia North-East', NULL, NULL),
(239, 12, 'Ovia South-West', NULL, NULL),
(240, 12, 'Owan East', NULL, NULL),
(241, 12, 'Owan West', NULL, NULL),
(242, 12, 'Uhunmwonde', NULL, NULL),
(243, 13, 'Ado Ekiti', NULL, NULL),
(244, 13, 'Efon', NULL, NULL),
(245, 13, 'Ekiti East', NULL, NULL),
(246, 13, 'Ekiti South-West', NULL, NULL),
(247, 13, 'Ekiti West', NULL, NULL),
(248, 13, 'Emure', NULL, NULL),
(249, 13, 'Gbonyin', NULL, NULL),
(250, 13, 'Ido Osi', NULL, NULL),
(251, 13, 'Ijero', NULL, NULL),
(252, 13, 'Ikere', NULL, NULL),
(253, 13, 'Ikole', NULL, NULL),
(254, 13, 'Ilejemeje', NULL, NULL),
(255, 13, 'Irepodun/Ifelodun', NULL, NULL),
(256, 13, 'Ise/Orun', NULL, NULL),
(257, 13, 'Moba', NULL, NULL),
(258, 13, 'Oye', NULL, NULL),
(259, 14, 'Aninri', NULL, NULL),
(260, 14, 'Awgu', NULL, NULL),
(261, 14, 'Enugu East', NULL, NULL),
(262, 14, 'Enugu North', NULL, NULL),
(263, 14, 'Enugu South', NULL, NULL),
(264, 14, 'Ezeagu', NULL, NULL),
(265, 14, 'Igbo Etiti', NULL, NULL),
(266, 14, 'Igbo Eze North', NULL, NULL),
(267, 14, 'Igbo Eze South', NULL, NULL),
(268, 14, 'Isi Uzo', NULL, NULL),
(269, 14, 'Nkanu East', NULL, NULL),
(270, 14, 'Nkanu West', NULL, NULL),
(271, 14, 'Nsukka', NULL, NULL),
(272, 14, 'Oji River', NULL, NULL),
(273, 14, 'Udenu', NULL, NULL),
(274, 14, 'Udi', NULL, NULL),
(275, 14, 'Uzo Uwani', NULL, NULL),
(276, 15, 'Abaji', NULL, NULL),
(277, 15, 'Bwari', NULL, NULL),
(278, 15, 'Gwagwalada', NULL, NULL),
(279, 15, 'Kuje', NULL, NULL),
(280, 15, 'Kwali', NULL, NULL),
(281, 15, 'Municipal Area Council', NULL, NULL),
(282, 16, 'Akko', NULL, NULL),
(283, 16, 'Balanga', NULL, NULL),
(284, 16, 'Billiri', NULL, NULL),
(285, 16, 'Dukku', NULL, NULL),
(286, 16, 'Funakaye', NULL, NULL),
(287, 16, 'Gombe', NULL, NULL),
(288, 16, 'Kaltungo', NULL, NULL),
(289, 16, 'Kwami', NULL, NULL),
(290, 16, 'Nafada', NULL, NULL),
(291, 16, 'Shongom', NULL, NULL),
(292, 16, 'Yamaltu/Deba', NULL, NULL),
(293, 17, 'Aboh Mbaise', NULL, NULL),
(294, 17, 'Ahiazu Mbaise', NULL, NULL),
(295, 17, 'Ehime Mbano', NULL, NULL),
(296, 17, 'Ezinihitte', NULL, NULL),
(297, 17, 'Ideato North', NULL, NULL),
(298, 17, 'Ideato South', NULL, NULL),
(299, 17, 'Ihitte/Uboma', NULL, NULL),
(300, 17, 'Ikeduru', NULL, NULL),
(301, 17, 'Isiala Mbano', NULL, NULL),
(302, 17, 'Isu', NULL, NULL),
(303, 17, 'Mbaitoli', NULL, NULL),
(304, 17, 'Ngor Okpala', NULL, NULL),
(305, 17, 'Njaba', NULL, NULL),
(306, 17, 'Nkwerre', NULL, NULL),
(307, 17, 'Nwangele', NULL, NULL),
(308, 17, 'Obowo', NULL, NULL),
(309, 17, 'Oguta', NULL, NULL),
(310, 17, 'Ohaji/Egbema', NULL, NULL),
(311, 17, 'Okigwe', NULL, NULL),
(312, 17, 'Orlu', NULL, NULL),
(313, 17, 'Orsu', NULL, NULL),
(314, 17, 'Oru East', NULL, NULL),
(315, 17, 'Oru West', NULL, NULL),
(316, 17, 'Owerri Municipal', NULL, NULL),
(317, 17, 'Owerri North', NULL, NULL),
(318, 17, 'Owerri West', NULL, NULL),
(319, 17, 'Unuimo', NULL, NULL),
(320, 18, 'Auyo', NULL, NULL),
(321, 18, 'Babura', NULL, NULL),
(322, 18, 'Biriniwa', NULL, NULL),
(323, 18, 'Birnin Kudu', NULL, NULL),
(324, 18, 'Buji', NULL, NULL),
(325, 18, 'Dutse', NULL, NULL),
(326, 18, 'Gagarawa', NULL, NULL),
(327, 18, 'Garki', NULL, NULL),
(328, 18, 'Gumel', NULL, NULL),
(329, 18, 'Guri', NULL, NULL),
(330, 18, 'Gwaram', NULL, NULL),
(331, 18, 'Gwiwa', NULL, NULL),
(332, 18, 'Hadejia', NULL, NULL),
(333, 18, 'Jahun', NULL, NULL),
(334, 18, 'Kafin Hausa', NULL, NULL),
(335, 18, 'Kazaure', NULL, NULL),
(336, 18, 'Kiri Kasama', NULL, NULL),
(337, 18, 'Kiyawa', NULL, NULL),
(338, 18, 'Kaugama', NULL, NULL),
(339, 18, 'Maigatari', NULL, NULL),
(340, 18, 'Malam Madori', NULL, NULL),
(341, 18, 'Miga', NULL, NULL),
(342, 18, 'Ringim', NULL, NULL),
(343, 18, 'Roni', NULL, NULL),
(344, 18, 'Sule Tankarkar', NULL, NULL),
(345, 18, 'Taura', NULL, NULL),
(346, 18, 'Yankwashi', NULL, NULL),
(347, 19, 'Birnin Gwari', NULL, NULL),
(348, 19, 'Chikun', NULL, NULL),
(349, 19, 'Giwa', NULL, NULL),
(350, 19, 'Igabi', NULL, NULL),
(351, 19, 'Ikara', NULL, NULL),
(352, 19, 'Jaba', NULL, NULL),
(353, 19, 'Jema\'a', NULL, NULL),
(354, 19, 'Kachia', NULL, NULL),
(355, 19, 'Kaduna North', NULL, NULL),
(356, 19, 'Kaduna South', NULL, NULL),
(357, 19, 'Kagarko', NULL, NULL),
(358, 19, 'Kajuru', NULL, NULL),
(359, 19, 'Kaura', NULL, NULL),
(360, 19, 'Kauru', NULL, NULL),
(361, 19, 'Kubau', NULL, NULL),
(362, 19, 'Kudan', NULL, NULL),
(363, 19, 'Lere', NULL, NULL),
(364, 19, 'Makarfi', NULL, NULL),
(365, 19, 'Sabon Gari', NULL, NULL),
(366, 19, 'Sanga', NULL, NULL),
(367, 19, 'Soba', NULL, NULL),
(368, 19, 'Zangon Kataf', NULL, NULL),
(369, 19, 'Zaria', NULL, NULL),
(370, 20, 'Ajingi', NULL, NULL),
(371, 20, 'Albasu', NULL, NULL),
(372, 20, 'Bagwai', NULL, NULL),
(373, 20, 'Bebeji', NULL, NULL),
(374, 20, 'Bichi', NULL, NULL),
(375, 20, 'Bunkure', NULL, NULL),
(376, 20, 'Dala', NULL, NULL),
(377, 20, 'Dambatta', NULL, NULL),
(378, 20, 'Dawakin Kudu', NULL, NULL),
(379, 20, 'Dawakin Tofa', NULL, NULL),
(380, 20, 'Doguwa', NULL, NULL),
(381, 20, 'Fagge', NULL, NULL),
(382, 20, 'Gabasawa', NULL, NULL),
(383, 20, 'Garko', NULL, NULL),
(384, 20, 'Garun Mallam', NULL, NULL),
(385, 20, 'Gaya', NULL, NULL),
(386, 20, 'Gezawa', NULL, NULL),
(387, 20, 'Gwale', NULL, NULL),
(388, 20, 'Gwarzo', NULL, NULL),
(389, 20, 'Kabo', NULL, NULL),
(390, 20, 'Kano Municipal', NULL, NULL),
(391, 20, 'Karaye', NULL, NULL),
(392, 20, 'Kibiya', NULL, NULL),
(393, 20, 'Kiru', NULL, NULL),
(394, 20, 'Kumbotso', NULL, NULL),
(395, 20, 'Kunchi', NULL, NULL),
(396, 20, 'Kura', NULL, NULL),
(397, 20, 'Madobi', NULL, NULL),
(398, 20, 'Makoda', NULL, NULL),
(399, 20, 'Minjibir', NULL, NULL),
(400, 20, 'Nasarawa', NULL, NULL),
(401, 20, 'Rano', NULL, NULL),
(402, 20, 'Rimin Gado', NULL, NULL),
(403, 20, 'Rogo', NULL, NULL),
(404, 20, 'Shanono', NULL, NULL),
(405, 20, 'Sumaila', NULL, NULL),
(406, 20, 'Takai', NULL, NULL),
(407, 20, 'Tarauni', NULL, NULL),
(408, 20, 'Tofa', NULL, NULL),
(409, 20, 'Tsanyawa', NULL, NULL),
(410, 20, 'Tudun Wada', NULL, NULL),
(411, 20, 'Ungogo', NULL, NULL),
(412, 20, 'Warawa', NULL, NULL),
(413, 20, 'Wudil', NULL, NULL),
(414, 21, 'Bakori', NULL, NULL),
(415, 21, 'Batagarawa', NULL, NULL),
(416, 21, 'Batsari', NULL, NULL),
(417, 21, 'Baure', NULL, NULL),
(418, 21, 'Bindawa', NULL, NULL),
(419, 21, 'Charanchi', NULL, NULL),
(420, 21, 'Dandume', NULL, NULL),
(421, 21, 'Danja', NULL, NULL),
(422, 21, 'Dan Musa', NULL, NULL),
(423, 21, 'Daura', NULL, NULL),
(424, 21, 'Dutsi', NULL, NULL),
(425, 21, 'Dutsin Ma', NULL, NULL),
(426, 21, 'Faskari', NULL, NULL),
(427, 21, 'Funtua', NULL, NULL),
(428, 21, 'Ingawa', NULL, NULL),
(429, 21, 'Jibia', NULL, NULL),
(430, 21, 'Kafur', NULL, NULL),
(431, 21, 'Kaita', NULL, NULL),
(432, 21, 'Kankara', NULL, NULL),
(433, 21, 'Kankia', NULL, NULL),
(434, 21, 'Katsina', NULL, NULL),
(435, 21, 'Kurfi', NULL, NULL),
(436, 21, 'Kusada', NULL, NULL),
(437, 21, 'Mai\'Adua', NULL, NULL),
(438, 21, 'Malumfashi', NULL, NULL),
(439, 21, 'Mani', NULL, NULL),
(440, 21, 'Mashi', NULL, NULL),
(441, 21, 'Matazu', NULL, NULL),
(442, 21, 'Musawa', NULL, NULL),
(443, 21, 'Rimi', NULL, NULL),
(444, 21, 'Sabuwa', NULL, NULL),
(445, 21, 'Safana', NULL, NULL),
(446, 21, 'Sandamu', NULL, NULL),
(447, 21, 'Zango', NULL, NULL),
(448, 22, 'Aleiro', NULL, NULL),
(449, 22, 'Arewa Dandi', NULL, NULL),
(450, 22, 'Argungu', NULL, NULL),
(451, 22, 'Augie', NULL, NULL),
(452, 22, 'Bagudo', NULL, NULL),
(453, 22, 'Birnin Kebbi', NULL, NULL),
(454, 22, 'Bunza', NULL, NULL),
(455, 22, 'Dandi', NULL, NULL),
(456, 22, 'Fakai', NULL, NULL),
(457, 22, 'Gwandu', NULL, NULL),
(458, 22, 'Jega', NULL, NULL),
(459, 22, 'Kalgo', NULL, NULL),
(460, 22, 'Koko/Besse', NULL, NULL),
(461, 22, 'Maiyama', NULL, NULL),
(462, 22, 'Ngaski', NULL, NULL),
(463, 22, 'Sakaba', NULL, NULL),
(464, 22, 'Shanga', NULL, NULL),
(465, 22, 'Suru', NULL, NULL),
(466, 22, 'Wasagu/Danko', NULL, NULL),
(467, 22, 'Yauri', NULL, NULL),
(468, 22, 'Zuru', NULL, NULL),
(469, 23, 'Adavi', NULL, NULL),
(470, 23, 'Ajaokuta', NULL, NULL),
(471, 23, 'Ankpa', NULL, NULL),
(472, 23, 'Bassa', NULL, NULL),
(473, 23, 'Dekina', NULL, NULL),
(474, 23, 'Ibaji', NULL, NULL),
(475, 23, 'Idah', NULL, NULL),
(476, 23, 'Igalamela Odolu', NULL, NULL),
(477, 23, 'Ijumu', NULL, NULL),
(478, 23, 'Kabba/Bunu', NULL, NULL),
(479, 23, 'Kogi', NULL, NULL),
(480, 23, 'Lokoja', NULL, NULL),
(481, 23, 'Mopa Muro', NULL, NULL),
(482, 23, 'Ofu', NULL, NULL),
(483, 23, 'Ogori/Magongo', NULL, NULL),
(484, 23, 'Okehi', NULL, NULL),
(485, 23, 'Okene', NULL, NULL),
(486, 23, 'Olamaboro', NULL, NULL),
(487, 23, 'Omala', NULL, NULL),
(488, 23, 'Yagba East', NULL, NULL),
(489, 23, 'Yagba West', NULL, NULL),
(490, 24, 'Asa', NULL, NULL),
(491, 24, 'Baruten', NULL, NULL),
(492, 24, 'Edu', NULL, NULL),
(493, 24, 'Ekiti, Kwara State', NULL, NULL),
(494, 24, 'Ifelodun', NULL, NULL),
(495, 24, 'Ilorin East', NULL, NULL),
(496, 24, 'Ilorin South', NULL, NULL),
(497, 24, 'Ilorin West', NULL, NULL),
(498, 24, 'Irepodun', NULL, NULL),
(499, 24, 'Isin', NULL, NULL),
(500, 24, 'Kaiama', NULL, NULL),
(501, 24, 'Moro', NULL, NULL),
(502, 24, 'Offa', NULL, NULL),
(503, 24, 'Oke Ero', NULL, NULL),
(504, 24, 'Oyun', NULL, NULL),
(505, 24, 'Pategi', NULL, NULL),
(506, 25, 'Agege', NULL, NULL),
(507, 25, 'Ajeromi-Ifelodun', NULL, NULL),
(508, 25, 'Alimosho', NULL, NULL),
(509, 25, 'Amuwo-Odofin', NULL, NULL),
(510, 25, 'Apapa', NULL, NULL),
(511, 25, 'Badagry', NULL, NULL),
(512, 25, 'Epe', NULL, NULL),
(513, 25, 'Eti Osa', NULL, NULL),
(514, 25, 'Ibeju-Lekki', NULL, NULL),
(515, 25, 'Ifako-Ijaiye', NULL, NULL),
(516, 25, 'Ikeja', NULL, NULL),
(517, 25, 'Ikorodu', NULL, NULL),
(518, 25, 'Kosofe', NULL, NULL),
(519, 25, 'Lagos Island', NULL, NULL),
(520, 25, 'Lagos Mainland', NULL, NULL),
(521, 25, 'Mushin', NULL, NULL),
(522, 25, 'Ojo', NULL, NULL),
(523, 25, 'Oshodi-Isolo', NULL, NULL),
(524, 25, 'Shomolu', NULL, NULL),
(525, 25, 'Surulere, Lagos State', NULL, NULL),
(526, 26, 'Akwanga', NULL, NULL),
(527, 26, 'Awe', NULL, NULL),
(528, 26, 'Doma', NULL, NULL),
(529, 26, 'Karu', NULL, NULL),
(530, 26, 'Keana', NULL, NULL),
(531, 26, 'Keffi', NULL, NULL),
(532, 26, 'Kokona', NULL, NULL),
(533, 26, 'Lafia', NULL, NULL),
(534, 26, 'Nasarawa', NULL, NULL),
(535, 26, 'Nasarawa Egon', NULL, NULL),
(536, 26, 'Obi', NULL, NULL),
(537, 26, 'Toto', NULL, NULL),
(538, 26, 'Wamba', NULL, NULL),
(539, 27, 'Agaie', NULL, NULL),
(540, 27, 'Agwara', NULL, NULL),
(541, 27, 'Bida', NULL, NULL),
(542, 27, 'Borgu', NULL, NULL),
(543, 27, 'Bosso', NULL, NULL),
(544, 27, 'Chanchaga', NULL, NULL),
(545, 27, 'Edati', NULL, NULL),
(546, 27, 'Gbako', NULL, NULL),
(547, 27, 'Gurara', NULL, NULL),
(548, 27, 'Katcha', NULL, NULL),
(549, 27, 'Kontagora', NULL, NULL),
(550, 27, 'Lapai', NULL, NULL),
(551, 27, 'Lavun', NULL, NULL),
(552, 27, 'Magama', NULL, NULL),
(553, 27, 'Mariga', NULL, NULL),
(554, 27, 'Mashegu', NULL, NULL),
(555, 27, 'Mokwa', NULL, NULL),
(556, 27, 'Moya', NULL, NULL),
(557, 27, 'Paikoro', NULL, NULL),
(558, 27, 'Rafi', NULL, NULL),
(559, 27, 'Rijau', NULL, NULL),
(560, 27, 'Shiroro', NULL, NULL),
(561, 27, 'Suleja', NULL, NULL),
(562, 27, 'Tafa', NULL, NULL),
(563, 27, 'Wushishi', NULL, NULL),
(564, 28, 'Abeokuta North', NULL, NULL),
(565, 28, 'Abeokuta South', NULL, NULL),
(566, 28, 'Ado-Odo/Ota', NULL, NULL),
(567, 28, 'Egbado North', NULL, NULL),
(568, 28, 'Egbado South', NULL, NULL),
(569, 28, 'Ewekoro', NULL, NULL),
(570, 28, 'Ifo', NULL, NULL),
(571, 28, 'Ijebu East', NULL, NULL),
(572, 28, 'Ijebu North', NULL, NULL),
(573, 28, 'Ijebu North East', NULL, NULL),
(574, 28, 'Ijebu Ode', NULL, NULL),
(575, 28, 'Ikenne', NULL, NULL),
(576, 28, 'Imeko Afon', NULL, NULL),
(577, 28, 'Ipokia', NULL, NULL),
(578, 28, 'Obafemi Owode', NULL, NULL),
(579, 28, 'Odeda', NULL, NULL),
(580, 28, 'Odogbolu', NULL, NULL),
(581, 28, 'Ogun Waterside', NULL, NULL),
(582, 28, 'Remo North', NULL, NULL),
(583, 28, 'Shagamu', NULL, NULL),
(584, 29, 'Akoko North-East', NULL, NULL),
(585, 29, 'Akoko North-West', NULL, NULL),
(586, 29, 'Akoko South-West', NULL, NULL),
(587, 29, 'Akoko South-East', NULL, NULL),
(588, 29, 'Akure North', NULL, NULL),
(589, 29, 'Akure South', NULL, NULL),
(590, 29, 'Ese Odo', NULL, NULL),
(591, 29, 'Idanre', NULL, NULL),
(592, 29, 'Ifedore', NULL, NULL),
(593, 29, 'Ilaje', NULL, NULL),
(594, 29, 'Ile Oluji/Okeigbo', NULL, NULL),
(595, 29, 'Irele', NULL, NULL),
(596, 29, 'Odigbo', NULL, NULL),
(597, 29, 'Okitipupa', NULL, NULL),
(598, 29, 'Ondo East', NULL, NULL),
(599, 29, 'Ondo West', NULL, NULL),
(600, 29, 'Ose', NULL, NULL),
(601, 29, 'Owo', NULL, NULL),
(602, 30, 'Atakunmosa East', NULL, NULL),
(603, 30, 'Atakunmosa West', NULL, NULL),
(604, 30, 'Aiyedaade', NULL, NULL),
(605, 30, 'Aiyedire', NULL, NULL),
(606, 30, 'Boluwaduro', NULL, NULL),
(607, 30, 'Boripe', NULL, NULL),
(608, 30, 'Ede North', NULL, NULL),
(609, 30, 'Ede South', NULL, NULL),
(610, 30, 'Ife Central', NULL, NULL),
(611, 30, 'Ife East', NULL, NULL),
(612, 30, 'Ife North', NULL, NULL),
(613, 30, 'Ife South', NULL, NULL),
(614, 30, 'Egbedore', NULL, NULL),
(615, 30, 'Ejigbo', NULL, NULL),
(616, 30, 'Ifedayo', NULL, NULL),
(617, 30, 'Ifelodun', NULL, NULL),
(618, 30, 'Ila', NULL, NULL),
(619, 30, 'Ilesa East', NULL, NULL),
(620, 30, 'Ilesa West', NULL, NULL),
(621, 30, 'Irepodun', NULL, NULL),
(622, 30, 'Irewole', NULL, NULL),
(623, 30, 'Isokan', NULL, NULL),
(624, 30, 'Iwo', NULL, NULL),
(625, 30, 'Obokun', NULL, NULL),
(626, 30, 'Odo Otin', NULL, NULL),
(627, 30, 'Ola Oluwa', NULL, NULL),
(628, 30, 'Olorunda', NULL, NULL),
(629, 30, 'Oriade', NULL, NULL),
(630, 30, 'Orolu', NULL, NULL),
(631, 30, 'Osogbo', NULL, NULL),
(632, 31, 'Afijio', NULL, NULL),
(633, 31, 'Akinyele', NULL, NULL),
(634, 31, 'Atiba', NULL, NULL),
(635, 31, 'Atisbo', NULL, NULL),
(636, 31, 'Egbeda', NULL, NULL),
(637, 31, 'Ibadan North', NULL, NULL),
(638, 31, 'Ibadan North-East', NULL, NULL),
(639, 31, 'Ibadan North-West', NULL, NULL),
(640, 31, 'Ibadan South-East', NULL, NULL),
(641, 31, 'Ibadan South-West', NULL, NULL),
(642, 31, 'Ibarapa Central', NULL, NULL),
(643, 31, 'Ibarapa East', NULL, NULL),
(644, 31, 'Ibarapa North', NULL, NULL),
(645, 31, 'Ido', NULL, NULL),
(646, 31, 'Irepo', NULL, NULL),
(647, 31, 'Iseyin', NULL, NULL),
(648, 31, 'Itesiwaju', NULL, NULL),
(649, 31, 'Iwajowa', NULL, NULL),
(650, 31, 'Kajola', NULL, NULL),
(651, 31, 'Lagelu', NULL, NULL),
(652, 31, 'Ogbomosho North', NULL, NULL),
(653, 31, 'Ogbomosho South', NULL, NULL),
(654, 31, 'Ogo Oluwa', NULL, NULL),
(655, 31, 'Olorunsogo', NULL, NULL),
(656, 31, 'Oluyole', NULL, NULL),
(657, 31, 'Ona Ara', NULL, NULL),
(658, 31, 'Orelope', NULL, NULL),
(659, 31, 'Ori Ire', NULL, NULL),
(660, 31, 'Oyo', NULL, NULL),
(661, 31, 'Oyo East', NULL, NULL),
(662, 31, 'Saki East', NULL, NULL),
(663, 31, 'Saki West', NULL, NULL),
(664, 31, 'Surulere, Oyo State', NULL, NULL),
(665, 32, 'Bokkos', NULL, NULL),
(666, 32, 'Barkin Ladi', NULL, NULL),
(667, 32, 'Bassa', NULL, NULL),
(668, 32, 'Jos East', NULL, NULL),
(669, 32, 'Jos North', NULL, NULL),
(670, 32, 'Jos South', NULL, NULL),
(671, 32, 'Kanam', NULL, NULL),
(672, 32, 'Kanke', NULL, NULL),
(673, 32, 'Langtang South', NULL, NULL),
(674, 32, 'Langtang North', NULL, NULL),
(675, 32, 'Mangu', NULL, NULL),
(676, 32, 'Mikang', NULL, NULL),
(677, 32, 'Pankshin', NULL, NULL),
(678, 32, 'Qua\'an Pan', NULL, NULL),
(679, 32, 'Riyom', NULL, NULL),
(680, 32, 'Shendam', NULL, NULL),
(681, 32, 'Wase', NULL, NULL),
(682, 33, 'Abua/Odual', NULL, NULL),
(683, 33, 'Ahoada East', NULL, NULL),
(684, 33, 'Ahoada West', NULL, NULL),
(685, 33, 'Akuku-Toru', NULL, NULL),
(686, 33, 'Andoni', NULL, NULL),
(687, 33, 'Asari-Toru', NULL, NULL),
(688, 33, 'Bonny', NULL, NULL),
(689, 33, 'Degema', NULL, NULL),
(690, 33, 'Eleme', NULL, NULL),
(691, 33, 'Emuoha', NULL, NULL),
(692, 33, 'Etche', NULL, NULL),
(693, 33, 'Gokana', NULL, NULL),
(694, 33, 'Ikwerre', NULL, NULL),
(695, 33, 'Khana', NULL, NULL),
(696, 33, 'Obio/Akpor', NULL, NULL),
(697, 33, 'Ogba/Egbema/Ndoni', NULL, NULL),
(698, 33, 'Ogu/Bolo', NULL, NULL),
(699, 33, 'Okrika', NULL, NULL),
(700, 33, 'Omuma', NULL, NULL),
(701, 33, 'Opobo/Nkoro', NULL, NULL),
(702, 33, 'Oyigbo', NULL, NULL),
(703, 33, 'Port Harcourt', NULL, NULL),
(704, 33, 'Tai', NULL, NULL),
(705, 34, 'Binji', NULL, NULL),
(706, 34, 'Bodinga', NULL, NULL),
(707, 34, 'Dange Shuni', NULL, NULL),
(708, 34, 'Gada', NULL, NULL),
(709, 34, 'Goronyo', NULL, NULL),
(710, 34, 'Gudu', NULL, NULL),
(711, 34, 'Gwadabawa', NULL, NULL),
(712, 34, 'Illela', NULL, NULL),
(713, 34, 'Isa', NULL, NULL),
(714, 34, 'Kebbe', NULL, NULL),
(715, 34, 'Kware', NULL, NULL),
(716, 34, 'Rabah', NULL, NULL),
(717, 34, 'Sabon Birni', NULL, NULL),
(718, 34, 'Shagari', NULL, NULL),
(719, 34, 'Silame', NULL, NULL),
(720, 34, 'Sokoto North', NULL, NULL),
(721, 34, 'Sokoto South', NULL, NULL),
(722, 34, 'Tambuwal', NULL, NULL),
(723, 34, 'Tangaza', NULL, NULL),
(724, 34, 'Tureta', NULL, NULL),
(725, 34, 'Wamako', NULL, NULL),
(726, 34, 'Wurno', NULL, NULL),
(727, 34, 'Yabo', NULL, NULL),
(728, 35, 'Ardo Kola', NULL, NULL),
(729, 35, 'Bali', NULL, NULL),
(730, 35, 'Donga', NULL, NULL),
(731, 35, 'Gashaka', NULL, NULL),
(732, 35, 'Gassol', NULL, NULL),
(733, 35, 'Ibi', NULL, NULL),
(734, 35, 'Jalingo', NULL, NULL),
(735, 35, 'Karim Lamido', NULL, NULL),
(736, 35, 'Kumi', NULL, NULL),
(737, 35, 'Lau', NULL, NULL),
(738, 35, 'Sardauna', NULL, NULL),
(739, 35, 'Takum', NULL, NULL),
(740, 35, 'Ussa', NULL, NULL),
(741, 35, 'Wukari', NULL, NULL),
(742, 35, 'Yorro', NULL, NULL),
(743, 35, 'Zing', NULL, NULL),
(744, 36, 'Bade', NULL, NULL),
(745, 36, 'Bursari', NULL, NULL),
(746, 36, 'Damaturu', NULL, NULL),
(747, 36, 'Fika', NULL, NULL),
(748, 36, 'Fune', NULL, NULL),
(749, 36, 'Geidam', NULL, NULL),
(750, 36, 'Gujba', NULL, NULL),
(751, 36, 'Gulani', NULL, NULL),
(752, 36, 'Jakusko', NULL, NULL),
(753, 36, 'Karasuwa', NULL, NULL),
(754, 36, 'Machina', NULL, NULL),
(755, 36, 'Nangere', NULL, NULL),
(756, 36, 'Nguru', NULL, NULL),
(757, 36, 'Potiskum', NULL, NULL),
(758, 36, 'Tarmuwa', NULL, NULL),
(759, 36, 'Yunusari', NULL, NULL),
(760, 36, 'Yusufari', NULL, NULL),
(761, 37, 'Anka', NULL, NULL),
(762, 37, 'Bakura', NULL, NULL),
(763, 37, 'Birnin Magaji/Kiyaw', NULL, NULL),
(764, 37, 'Bukkuyum', NULL, NULL),
(765, 37, 'Bungudu', NULL, NULL),
(766, 37, 'Gummi', NULL, NULL),
(767, 37, 'Gusau', NULL, NULL),
(768, 37, 'Kaura Namoda', NULL, NULL),
(769, 37, 'Maradun', NULL, NULL),
(770, 37, 'Maru', NULL, NULL),
(771, 37, 'Shinkafi', NULL, NULL),
(772, 37, 'Talata Mafara', NULL, NULL),
(773, 37, 'Chafe', NULL, NULL),
(774, 37, 'Zurmi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2020_05_06_231335_create_states_table', 1),
(5, '2020_05_06_231505_create_local_govts_table', 1),
(6, '2020_05_06_231651_create_categories_table', 1),
(7, '2020_05_06_231830_create_products_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('preciousaang@mail.com', '$2y$10$TjU3K3y6v22wkoIFz2xIUetlFhn7q2WgBFbGqQQ8jO5p/bLbGcOBC', '2020-05-14 12:51:41'),
('precious@mail.com', '$2y$10$PYxj0I23oHir7HYKiey.TOuruVn3t4umB6OlxQznvTnzcvjJtWR8u', '2020-05-14 12:54:42'),
('preciousaang@gmail.com', '$2y$10$j0t7NrZ2W0.WCXN6eqM.r.iWsWVRulZGQYLChFavQ3KrVUycGCOlC', '2020-05-14 13:19:32');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 1, 'My Viva', '9d2635cc37dbba1a65ac039641f055e35afb85a3f428323353590e59c796bfa6', '[\"*\"]', '2020-05-13 21:37:33', '2020-05-13 21:37:10', '2020-05-13 21:37:33'),
(2, 'App\\User', 1, 'dfd', 'fec88bceb609a922e049f50ca9ddefc0e57c4f2c15e6ff7301abc4431807cfae', '[\"*\"]', '2020-05-13 22:41:57', '2020-05-13 21:41:30', '2020-05-13 22:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `views` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `slug`, `summary`, `user_id`, `category_id`, `views`, `approved`, `featured`, `product_image`, `region_id`, `created_at`, `updated_at`) VALUES
(1, 'Innjoo fire 2', 30000, 'Innjoo-fire-2', 'Good Phone', 1, 2, 98, 1, 0, '[\"img_39553195315330608221709955517.png\",\"img_14544748551533060822642027406.png\",\"img_20275672915330608221910226513.jpg\",\"img_7154161251533060822844122858.\",\"img_20811529671533060822373375933.\",\"img_20003667431533060822582875940.\",\"img_67360933015330608222097935145.\"]', 250, '2018-07-31 17:13:42', '2020-05-12 13:10:42'),
(2, 'Toyota corolla', 3500000, 'Toyota-corolla', 'Toyota corolla 2011 model with reverse camera chilling a/c accident free buy and use nothing to fix and duty paid.', 3, 1, 121, 1, 0, '[\"img_198641925115332136381409127515.jpg\",\"img_185939984315332136381489841021.jpg\",\"img_51832182915332136381327890630.jpg\",\"img_1350185771533213638432559375.jpg\",\"img_60393319015332136381627408999.jpg\",\"img_14573291141533213638138508081.jpg\",\"img_12035144911533213638189139472.jpg\"]', 521, '2018-08-02 11:40:38', NULL),
(7, 'Shoes', 10000, 'Shoes', 'Very good and nice', 5, 5, 79, 1, 0, '[\"img_20504221315333690441838957136.jpg\",\"img_208891361615333690441217932092.jpg\",\"img_173411593415333690441685640294.jpg\",\"img_172315447515333690441081262121.\",\"img_200576107615333690441850875393.\",\"img_161511783015333690441051230518.\",\"img_18971094315333690441571793361.\"]', 525, '2018-08-04 06:50:44', NULL),
(9, 'Fairly used clothes', 1000, 'Fairly-used-clothes', 'First grade UK/US used clothes', 5, 9, 55, 0, 0, '[\"img_3951421361533477038170816359.jpeg\",\"img_101174773153347703863966205.jpg\",\"img_213415432115334770381459877366.jpeg\",\"img_121280504515334770381557268447.\",\"img_5036404151533477038577831131.\",\"img_13684690941533477038626836912.\",\"img_19687690391533477038611576937.\"]', 525, '2018-08-05 12:50:38', '2020-05-11 14:04:22'),
(10, 'Toyota Sienna', 2500000, 'Toyota-Sienna', 'Toyota Sienna leather seats power doors and boot nothing to fix duty paid.', 5, 1, 72, 1, 0, '[\"img_5557090981533477315981529289.jpg\",\"img_19174653861533477315936979198.jpg\",\"img_62492476415334773151847941668.jpg\",\"img_21025095851533477315206287575.jpg\",\"img_11986246331533477315364939254.\",\"img_97426918915334773151049730754.\",\"img_146990338215334773151067324848.\"]', 508, '2018-08-05 12:55:15', NULL),
(11, 'Lexus', 2000000, 'Lexus', 'Lexus ex330', 6, 1, 100, 1, 0, '[\"img_3769493031533479334907763365.jpg\",\"img_35236986015334793342054604769.jpg\",\"img_1474463121533479334452204308.jpg\",\"img_14823260615334793341036684951.\",\"img_15729801231533479334182161572.\",\"img_15503592561533479334522404681.\",\"img_157903303815334793341131047893.\"]', 525, '2018-08-05 13:28:54', NULL),
(12, 'Toyota hilux', 9000000, 'Toyota-hilux', 'Toyota hilux 2012 model', 3, 1, 51, 1, 0, '[\"img_123582467115334793401274583055.jpg\",\"img_46383093515334793402026979884.jpg\",\"img_8919097241533479340851233709.jpg\",\"img_134786503715334793401020744846.jpg\",\"img_87727174015334793401981124440.jpg\",\"img_48871210215334793401162900810.\",\"img_7423334551533479340133268254.\"]', 508, '2018-08-05 13:29:00', NULL),
(14, 'Honda Accord', 1500000, 'Honda-Accord', 'Nothing to fix duty paid.', 2, 1, 74, 1, 0, '[\"img_11215802101533493463204755621.jpg\",\"img_19087602421533493463814233032.jpg\",\"img_3508719381533493463510988064.jpg\",\"img_4393879421533493463900581134.jpg\",\"img_63319591015334934631999513503.\",\"img_197258192015334934631523778276.\",\"img_13279207515334934631215465436.\"]', 525, '2018-08-05 17:24:23', NULL),
(15, 'Volkswagen', 2600000, 'Volkswagen', 'Volkswagen 2013 Model Nothing to fix duty paid', 2, 1, 43, 1, 0, '[\"img_20204605551533493708517516151.jpg\",\"img_16357802831533493708716991236.jpg\",\"img_2635192151533493708943166629.jpg\",\"img_18129868821533493708339645118.\",\"img_127836697615334937081407032230.\",\"img_4202185421533493708681904530.\",\"img_13949856581533493708585270315.\"]', 525, '2018-08-05 17:28:28', NULL),
(17, 'Toyota corolla', 5500000, 'Toyota-corolla', 'Toyota corolla 2014 model in super condition mint standard', 3, 1, 41, 1, 0, '[\"img_73528928115335359561618393431.png\",\"img_31766859415335359561928648039.png\",\"img_95737601515335359561047488716.png\",\"img_16138206311533535956699152000.png\",\"img_92151402715335359561667503332.png\",\"img_162364974815335359561750401094.\",\"img_188282987815335359561813450999.\"]', 508, '2018-08-06 05:12:36', NULL),
(18, 'Adiddas shoes', 15000, 'Adiddas-shoes', 'Affordable shoes for all sizes', 5, 9, 107, 1, 0, '[\"img_207267939415336435184556978.jpeg\",\"img_43391437215336435182118146111.jpeg\",\"img_59156506115336435181246388394.jpeg\",\"img_47693718215336435181609245394.\",\"img_213359980115336435181120700213.\",\"img_166601962415336435182147095409.\",\"img_10749504041533643518281098988.\"]', 525, '2018-08-07 11:05:18', NULL),
(19, 'Mercedes ml350 4matic', 6500000, 'Mercedes-ml350-4matic', '4matic Mercedes Benz ml 350 foreign use duty paid buy and drive', 3, 1, 43, 1, 0, '[\"img_18358591481533855933751335659.png\",\"img_18162852501533855933476548061.png\",\"img_17494888411533855933914353214.png\",\"img_10302353061533855933349327459.\",\"img_6228740281533855933901497405.\",\"img_1364872773153385593325359537.\",\"img_1900361544153385593394131680.\"]', 508, '2018-08-09 22:05:33', NULL),
(20, 'used shoes', 1500, 'used-shoes', 'First grade fairly used shoes', 2, 9, 55, 1, 0, '[\"img_60060005915338897701697241879.jpg\",\"img_25347523115338897701115831927.jpg\",\"img_7211782031533889770507562821.jpg\",\"img_3590324891533889770928527024.\",\"img_11647895031533889770214979164.\",\"img_194759431315338897701940514894.\",\"img_81434456015338897701390125384.\"]', 525, '2018-08-10 07:29:30', NULL),
(21, 'Toyota Highlander', 1500000, 'Toyota-Highlander', 'Toyota Highlander', 3, 1, 73, 1, 0, '[\"img_9706681015338920131215600168.jpg\",\"img_387547591533892013525855901.jpg\",\"img_6583093711533892013571073964.jpg\",\"img_10689551881533892013476912449.jpg\",\"img_156264970715338920131442775795.jpg\",\"img_37274027315338920131367092680.\",\"img_7540814461533892013933596616.\"]', 508, '2018-08-10 08:06:53', NULL),
(22, 'Lexus Rx 330', 3500000, 'Lexus-Rx-330', 'Lexus Rx330 2006 model black on milk interior, extremely clean buy and drive nothing to fix', 3, 1, 44, 1, 0, '[\"img_161652398015340634461038368275.jpg\",\"img_19620623271534063446239367533.jpg\",\"img_21005452341534063446560319241.jpg\",\"img_93673690715340634461997281953.jpg\",\"img_17721618901534063446759255894.\",\"img_42561818315340634461770430259.\",\"img_214678966515340634461766373188.\"]', 509, '2018-08-12 07:44:06', NULL),
(24, 'Clothes', 1500, 'Clothes', 'Used clothes for sale', 12, 9, 55, 1, 0, '[\"img_92658652015340812591370599785.png\",\"img_7029174015340812591822052112.png\",\"img_168714067515340812591208386916.png\",\"img_192677465215340812592020884722.\",\"img_7929809951534081259617003239.\",\"img_93527509715340812591926128382.\",\"img_45596242015340812591454486470.\"]', 523, '2018-08-12 12:40:59', NULL),
(25, 'Volvo xc90', 2500000, 'Volvo-xc90', '2006 Volvo xc90 automatic transmission full options duty paid buy and drive nothing to fix', 3, 1, 92, 1, 0, '[\"img_100538222415344215301439735660.jpg\",\"img_2882501741534421530834775707.jpg\",\"img_14420731591534421530519942684.jpg\",\"img_151919321015344215302094374386.jpg\",\"img_16828046901534421530487264952.jpg\",\"img_59108518615344215301180166074.jpg\",\"img_183146800315344215301107114186.jpg\"]', 510, '2018-08-16 11:12:10', NULL),
(26, 'Volvo xc90', 2500000, 'Volvo-xc90', '2006 xc90 model automatic transmission full options duty paid buy and drive nothing to fix', 3, 1, 45, 1, 0, '[\"img_1375776461534524127113975076.jpg\",\"img_159148270815345241271072514521.jpg\",\"img_39321458115345241271759565630.jpg\",\"img_20325735121534524127923731500.jpg\",\"img_107830406515345241271790231896.jpg\",\"img_202889149715345241271322510247.jpg\",\"img_7452015321534524127270492525.\"]', 508, '2018-08-17 15:42:07', NULL),
(27, 'Wig', 15000, 'Wig', 'Neatly braided human hair wig', 23, 9, 65, 1, 0, '[\"img_131023455315358163971041875371.jpg\",\"img_3621272661535816397538233047.jpg\",\"img_189628453715358163971534586095.jpg\",\"img_38960419415358163971921733410.\",\"img_108581069515358163971379078644.\",\"img_15467352491535816397468673268.\",\"img_5825375611535816397834362702.\"]', 508, '2018-09-01 14:39:57', NULL),
(28, 'Toyota highlander 2006 3seaters', 3500000, 'Toyota-highlander-2006-3seaters', 'Very clean Toyota highlander 2006 3seaters silver color is available for sale, the car is in good shape', 24, 1, 43, 1, 0, '[\"img_116257134515358846901409082477.jpg\",\"img_15445800151535884690233463008.jpg\",\"img_17596721921535884690794917091.jpg\",\"img_126047225915358846901970621220.jpg\",\"img_18169498961535884690380229180.\",\"img_11815893331535884690653669028.\",\"img_5054668581535884690814100949.\"]', 510, '2018-09-02 09:38:10', NULL),
(29, 'Toyota Camry silver 2010', 3900000, 'Toyota-Camry-silver-2010', 'Toyota Camry full option available for sale at a give away price in apapa road, everything is in good condition', 24, 1, 40, 1, 0, '[\"img_18077569051535885500833205320.jpg\",\"img_89747037315358855001349536662.jpg\",\"img_119222451535885500871067734.jpg\",\"img_146836137315358855001975079840.\",\"img_20355056931535885500219390579.\",\"img_132821247915358855001621661825.\",\"img_8992948661535885500846440792.\"]', 510, '2018-09-02 09:51:40', NULL),
(30, 'tokunbo and naija use', 1, 'tokunbo-and-naija-use', 'i sell tokubo vechiles and naija used', 29, 1, 41, 1, 0, '[\"img_8894220641536168914912433163.jpg\",\"img_19731369211536168914973856457.jpg\",\"img_55728840415361689141609165535.jpg\",\"img_19318720951536168914195176136.jpg\",\"img_155166889415361689141263612178.jpg\",\"img_82904128015361689141970028555.jpg\",\"img_70332392215361689141121005673.jpg\"]', 508, '2018-09-05 16:35:14', NULL),
(33, 'Toyota sequoia', 2800000, 'Toyota-sequoia', 'Toyota sequoia 2003 model automatic transmission leather seats full options duty paid buy and drive nothing to fix', 3, 1, 48, 1, 0, '[\"img_12471170741536260937750698515.jpg\",\"img_10973910815362609371839220689.jpg\",\"img_122321822415362609372028514528.jpg\",\"img_20419474051536260937319349771.jpg\",\"img_44295290515362609371510139880.jpg\",\"img_129068162215362609371055631706.\",\"img_4489259391536260937964048818.\"]', 508, '2018-09-06 18:08:57', NULL),
(34, 'Toyota Highlander', 6500000, 'Toyota-Highlander', 'Toyota Highlander 2010 model automatic transmission leather seats full options duty paid buy and drive nothing to fix, with DVD screen', 3, 1, 40, 1, 0, '[\"img_13773662081536261154723931288.jpg\",\"img_163367951536261154294188501.jpg\",\"img_9295184181536261154734938250.jpg\",\"img_12143017015362611541907566971.jpg\",\"img_15415459571536261154125245571.\",\"img_202679183215362611542048573868.\",\"img_12715272571536261154115592254.\"]', 510, '2018-09-06 18:12:34', NULL),
(35, 'Toyota Highlander', 6500000, 'Toyota-Highlander', 'Toyota Highlander 2010 automatic transmission full options duty paid buy and drive nothing to fix', 3, 1, 48, 1, 0, '[\"img_20132134501536261279329784234.jpg\",\"img_32838741515362612791785402168.jpg\",\"img_723446761536261279294535304.jpg\",\"img_93802221536261279408852591.\",\"img_2136840101536261279439180966.\",\"img_16800288831536261279975530461.\",\"img_88489693215362612791202969532.\"]', 510, '2018-09-06 18:14:39', NULL),
(36, 'Toyota Highlander', 6500000, 'Toyota-Highlander', 'Toyota Highlander 2010 model automatic transmission leather seats full options duty paid buy and drive nothing to fix', 3, 1, 40, 1, 0, '[\"img_40467862115362614401775746920.jpg\",\"img_167397321815362614401051775191.jpg\",\"img_17697514821536261440428036035.jpg\",\"img_193928916715362614401535795791.jpg\",\"img_17747219811536261440788699019.\",\"img_4862994801536261440667324656.\",\"img_19658290101536261440257965634.\"]', 510, '2018-09-06 18:17:20', NULL),
(37, 'Toyota Highlander', 6500000, 'Toyota-Highlander', 'Toyota Highlander 2010model automatic transmission full options duty paid buy and drive nothing to fix', 3, 1, 42, 1, 0, '[\"img_53638603115362616531698548489.jpg\",\"img_6895377771536261653943333101.jpg\",\"img_4990411541536261653257868324.jpg\",\"img_195685299115362616531322948655.\",\"img_16938502611536261653161942726.\",\"img_85233585215362616531356359130.\",\"img_79693902815362616531253635349.\"]', 510, '2018-09-06 18:20:53', NULL),
(38, 'Toyota Highlander', 14500000, 'Toyota-Highlander', 'Toyota Highlander 2014 model full options duty paid buy and drive nothing to fix leather seats just like brand new', 3, 1, 43, 1, 0, '[\"img_114488370515362618331922380790.jpg\",\"img_19519328011536261833888499275.jpg\",\"img_7582823331536261833539585533.jpg\",\"img_173908476615362618331939067005.jpg\",\"img_120817000915362618331701832559.\",\"img_107503573615362618331449269529.\",\"img_59236615415362618331243931756.\"]', 510, '2018-09-06 18:23:53', NULL),
(39, 'Nissan cabstar', 2500000, 'Nissan-cabstar', 'Nissan cabaret mini truck', 3, 1, 42, 1, 0, '[\"img_124860154315362620631590831119.jpg\",\"img_19909764441536262063894951017.jpg\",\"img_30684912015362620631423532411.jpg\",\"img_4717671815362620631399621849.\",\"img_371375615362620631954649890.\",\"img_57687946715362620631311480363.\",\"img_152659627515362620631606248492.\"]', 508, '2018-09-06 18:27:43', NULL),
(40, 'Lexus Rx330', 2200000, 'Lexus-Rx330', 'Lexus Rx 330 registered,', 3, 1, 41, 1, 0, '[\"img_17269675651536262239540288358.jpg\",\"img_19240104731536262239440119821.jpg\",\"img_50829666715362622391115628570.jpg\",\"img_146589726315362622391224318068.\",\"img_149983028715362622391574675693.\",\"img_99899071715362622391920647939.\",\"img_3984781301536262239612216737.\"]', 506, '2018-09-06 18:30:39', NULL),
(41, 'Toyota Highlander', 7000000, 'Toyota-Highlander', 'Toyota Highlander', 3, 1, 41, 1, 0, '[\"img_4401996131536262423431219701.jpg\",\"img_8401926231536262423601591619.jpg\",\"img_5296422441536262423805741206.jpg\",\"img_17812953331536262423191965521.\",\"img_115592397915362624231114398984.\",\"img_16457547361536262423960946481.\",\"img_178182940215362624231577687903.\"]', 510, '2018-09-06 18:33:43', NULL),
(42, 'Mercedes Benz ml 320', 900000, 'Mercedes-Benz-ml-320', 'Mercedes Benz ml 320 registered', 3, 1, 47, 1, 0, '[\"img_158436745415362994551987024998.jpg\",\"img_484470671536299455778689615.jpg\",\"img_89053096215362994552138070494.jpg\",\"img_7250978631536299455287950881.\",\"img_8540810831536299455176846986.\",\"img_982010389153629945548115241.\",\"img_20366063361536299455878152381.\"]', 508, '2018-09-07 04:50:55', NULL),
(43, 'Toyota hilux', 9500000, 'Toyota-hilux', 'Toyota hilux 2013 model', 3, 1, 42, 1, 0, '[\"img_131396214615362996411890293465.png\",\"img_15710705481536299641570581909.png\",\"img_173792879715362996411062645606.png\",\"img_94943221015362996411887683406.png\",\"img_1834825971536299641587343102.\",\"img_93940778215362996411582017975.\",\"img_117987342715362996411286190094.\"]', 510, '2018-09-07 04:54:01', NULL),
(44, 'Mercedes Benz G wagon', 35000000, 'Mercedes-Benz-G-wagon', 'Mercedes Benz Gwagon', 3, 1, 91, 1, 0, '[\"img_101325671315363012622094452602.jpg\",\"img_4683702961536301262615814697.jpg\",\"img_153248442815363012621508721211.jpg\",\"img_81651289415363012621590221431.jpg\",\"img_10538090761536301262717004313.\",\"img_18187975415363012622114939056.\",\"img_146476316815363012621374026567.\"]', 509, '2018-09-07 05:21:02', NULL),
(45, 'Lexus  Rx 350', 4200000, 'Lexus--Rx-350', 'Rx 350 Lexus 2009 model', 3, 1, 48, 1, 0, '[\"img_212728044115363015811443820096.jpg\",\"img_17680133101536301581253686753.jpg\",\"img_10769117381536301581874386664.jpg\",\"img_45751822515363015811395580714.jpg\",\"img_12985381501536301581942045228.jpg\",\"img_42834719115363015811015393876.\",\"img_19610266721536301581230024936.\"]', 508, '2018-09-07 05:26:21', NULL),
(46, 'Toyota Rav4', 1900000, 'Toyota-Rav4', 'Toyota Rav4 registered 2008 model', 3, 1, 52, 1, 0, '[\"img_189727771015363024311662078144.jpg\",\"img_4773567771536302431315268145.jpg\",\"img_5816868081536302431777189793.jpg\",\"img_125914768015363024312088018820.jpg\",\"img_645111781536302431448166677.\",\"img_13754656151536302431549153228.\",\"img_126798331615363024311975893045.\"]', 506, '2018-09-07 05:40:31', NULL),
(47, 'Toyota Rav4', 3500000, 'Toyota-Rav4', 'Toyota Rav4 2008 model', 3, 1, 47, 1, 0, '[\"img_212141900915363028111353270607.jpg\",\"img_18301317721536302811411979667.jpg\",\"img_12806645391536302811220817297.jpg\",\"img_159042766215363028111428768564.jpg\",\"img_8621420001536302811337785841.\",\"img_13520582021536302811284776124.\",\"img_940736261536302811427227675.\"]', 510, '2018-09-07 05:46:51', NULL),
(48, 'Lexus Ex350', 3500000, 'Lexus-Ex350', 'Ex350 Lexus 2007 model', 3, 1, 43, 1, 0, '[\"img_49071663115363167971511195794.jpg\",\"img_212014288715363167971677560250.jpg\",\"img_1226413011536316797513497920.jpg\",\"img_10131476351536316797961046176.jpg\",\"img_123330811215363167971483747203.jpg\",\"img_5743147651536316797789016222.\",\"img_84940509815363167971809224162.\"]', 508, '2018-09-07 09:39:57', NULL),
(49, 'Toyota corolla', 6500000, 'Toyota-corolla', 'Toyota corolla 2014 model just like brand new.', 3, 1, 47, 1, 0, '[\"img_12346931931536324805479758136.jpg\",\"img_16948812871536324805571292022.jpg\",\"img_12116328071536324805981249281.jpg\",\"img_65892603315363248051321689252.jpg\",\"img_14988583415363248051152596891.\",\"img_74208281315363248052034214299.\",\"img_11973562921536324805579376773.\"]', 508, '2018-09-07 11:53:25', NULL),
(50, 'Toyota Rav4', 8500000, 'Toyota-Rav4', 'Toyota Rav4 2013 model', 3, 1, 46, 1, 0, '[\"img_20077041101536324954344224772.jpg\",\"img_3503391281536324954259230896.jpg\",\"img_175550724115363249541778365445.jpg\",\"img_7771113341536324954466255315.jpg\",\"img_17230888911536324954898534895.jpg\",\"img_24265705215363249541509427778.jpg\",\"img_212026680415363249541677522941.\"]', 508, '2018-09-07 11:55:54', NULL),
(51, 'Toyota Camry', 2400000, 'Toyota-Camry', 'Toyota Camry 2007 model', 3, 1, 44, 1, 0, '[\"img_151154615015363253231839257353.jpg\",\"img_25106636715363253231023837551.jpg\",\"img_17316855431536325323180572784.jpg\",\"img_92743246215363253231604397699.jpg\",\"img_138739547915363253231673903242.\",\"img_129107772015363253231726015528.\",\"img_13443600741536325323248386603.\"]', 508, '2018-09-07 12:02:03', NULL),
(52, 'Toyota Camry', 2500000, 'Toyota-Camry', 'Toyota Camry 2008 model', 3, 1, 44, 1, 0, '[\"img_5832778131536325748793304022.jpg\",\"img_7600538291536325748982400687.jpg\",\"img_18829035291536325748216856629.jpg\",\"img_2413844871536325748298157383.jpg\",\"img_6584046781536325748728258188.\",\"img_16209180211536325748325323758.\",\"img_7774429681536325748425525378.\"]', 508, '2018-09-07 12:09:08', NULL),
(53, 'Toyota camry', 2500000, 'Toyota-camry', 'Toyota Camry 2007 model', 3, 1, 44, 1, 0, '[\"img_4443913941536326278414978820.jpg\",\"img_38554075415363262781117888274.jpg\",\"img_68198888415363262781066793536.jpg\",\"img_28456083215363262781297023887.jpg\",\"img_8996145315363262782089486719.\",\"img_31342197615363262781079509816.\",\"img_7534925691536326278639413677.\"]', 508, '2018-09-07 12:17:58', NULL),
(54, 'Toyota Sienna', 6500000, 'Toyota-Sienna', 'Toyota Sienna 2012 model super clean duty paid buy and drive nothing to fix', 3, 1, 47, 1, 0, '[\"img_202895948515363590371717734147.jpg\",\"img_124600990915363590371800042789.jpg\",\"img_199344171415363590371435724497.jpg\",\"img_94795457915363590371723008561.jpg\",\"img_221270721536359037688940833.jpg\",\"img_18535834761536359037520304066.\",\"img_162173596115363590371001073193.\"]', 508, '2018-09-07 21:23:57', NULL),
(55, 'Toyota Sienna', 6500000, 'Toyota-Sienna', 'Toyota Sienna 2012 model, fabric seats duty paid buy and drive nothing to fix', 3, 1, 45, 1, 0, '[\"img_4664497271536378677650081103.jpg\",\"img_2285513015363786772138633887.jpg\",\"img_21432475911536378677465281003.jpg\",\"img_140300109015363786771060624454.jpg\",\"img_209541102515363786771082604225.jpg\",\"img_285103815363786771739140215.jpg\",\"img_15672432931536378677743623830.jpg\"]', 508, '2018-09-08 02:51:17', NULL),
(56, 'Honda accord', 4500000, 'Honda-accord', 'Honda accord 2011model', 3, 1, 44, 1, 0, '[\"img_13214022771536384267641696894.jpg\",\"img_155533646915363842671231547210.jpg\",\"img_3890036261536384267999131978.jpg\",\"img_14469354351536384267454030317.\",\"img_39641668215363842671901743733.\",\"img_112041975815363842671367128514.\",\"img_4116327141536384267537965252.\"]', 508, '2018-09-08 04:24:27', NULL),
(57, 'Mercedes Benz GL550', 14500000, 'Mercedes-Benz-GL550', 'Mercedes Benz GL550 2012 model full options duty paid buy and drive nothing to fix', 3, 1, 41, 1, 0, '[\"img_13384504721536421096704634044.jpg\",\"img_47424185715364210961765201338.jpg\",\"img_14720927971536421096561749164.jpg\",\"img_67871912915364210961915153795.jpg\",\"img_137843197915364210961073757489.jpg\",\"img_46294863115364210961152918271.\",\"img_94372979715364210961044234640.\"]', 509, '2018-09-08 14:38:16', NULL),
(58, 'Mercedes Benz', 14000000, 'Mercedes-Benz', 'Mercedes Benz GL550 2012 model full options duty paid buy and drive nothing to fix', 3, 1, 40, 1, 0, '[\"img_158988532015364334282090470910.jpg\",\"img_162543827115364334281917483000.jpg\",\"img_3895197381536433428731498354.jpg\",\"img_120762908515364334281198388348.jpg\",\"img_814808721536433428471893651.jpg\",\"img_68805039015364334281213425313.\",\"img_162763789715364334281586668158.\"]', 508, '2018-09-08 18:03:48', NULL),
(59, 'Mercedes Benz', 14000000, 'Mercedes-Benz', 'Mercedes Benz GL550 2012 model', 3, 1, 40, 1, 0, '[\"img_169980878715364336311517930556.jpg\",\"img_24823385315364336311624434085.jpg\",\"img_188359109415364336311588187979.jpg\",\"img_12937668151536433631318364375.jpg\",\"img_158560940415364336311096680249.\",\"img_21307329451536433631213399806.\",\"img_13847454431536433631750669592.\"]', 508, '2018-09-08 18:07:11', NULL),
(60, 'Mercedes Benz', 25000000, 'Mercedes-Benz', 'Mercedes Benz Gwagon', 3, 1, 48, 1, 0, '[\"img_183428099415364338542131995608.jpg\",\"img_155037133215364338541040918857.jpg\",\"img_54055467115364338541188399019.jpg\",\"img_13572230761536433854558641342.jpg\",\"img_1539080651536433854682103379.\",\"img_14924709761536433854707743869.\",\"img_19815167801536433854756525248.\"]', 510, '2018-09-08 18:10:54', NULL),
(61, 'Mercedes Benz Gwagon', 25000000, 'Mercedes-Benz-Gwagon', 'Mercedes Benz Gwagon', 3, 1, 42, 1, 0, '[\"img_26124448515364341741399623548.jpg\",\"img_109077448515364341741218193206.jpg\",\"img_6172198061536434174719677846.jpg\",\"img_181246399315364341741571032712.jpg\",\"img_22552200815364341741827724724.\",\"img_171589284215364341741574127677.\",\"img_18948203861536434174926614669.\"]', 510, '2018-09-08 18:16:14', NULL),
(62, 'Mercedes Benz E350', 4500000, 'Mercedes-Benz-E350', 'Mercedes Benz  E350 2010 model', 3, 1, 40, 1, 0, '[\"img_199814098515364392981302755733.jpg\",\"img_14425196251536439298827592388.jpg\",\"img_12098406291536439298813835202.jpg\",\"img_8290967461536439298461398336.jpg\",\"img_10005193051536439298751245167.jpg\",\"img_791117693153643929862311471.\",\"img_130964913915364392981302371333.\"]', 508, '2018-09-08 19:41:38', NULL),
(63, 'Mercedes Benz coup', 700000, 'Mercedes-Benz-coup', 'Mercedes Benz coup 2004 model', 3, 1, 40, 1, 0, '[\"img_18477450411536439594912424208.jpg\",\"img_14700687761536439594854185376.jpg\",\"img_18110848071536439594351148667.jpg\",\"img_29256902015364395942019469122.jpg\",\"img_18722263051536439594988041034.\",\"img_29810068115364395942068946007.\",\"img_19416706251536439594171720278.\"]', 508, '2018-09-08 19:46:34', NULL),
(64, 'Toyota Camry', 5800000, 'Toyota-Camry', 'Toyota Camry 2014 model duty paid buy and drive nothing to fix', 3, 1, 41, 1, 0, '[\"img_165877892715364398791895076752.jpg\",\"img_4101092781536439879618520023.jpg\",\"img_260065535153643987910269355.jpg\",\"img_20496432511536439879149165674.jpg\",\"img_10431021621536439879512536430.\",\"img_6430402451536439879204780937.\",\"img_11569599991536439879604409473.\"]', 508, '2018-09-08 19:51:19', NULL),
(65, 'Mercedes Benz GLK', 12000000, 'Mercedes-Benz-GLK', '2010 Mercedes Benz GLK duty paid buy and drive nothing to fix', 3, 1, 41, 1, 0, '[\"img_7705915971536451885299903853.jpg\",\"img_180146623915364518851968766321.jpg\",\"img_17250267471536451885622508771.jpg\",\"img_6217337011536451885586132026.\",\"img_9294349091536451885924674293.\",\"img_54280433015364518851691518460.\",\"img_200255625815364518851158455872.\"]', 508, '2018-09-08 23:11:25', NULL),
(66, 'Crossfire', 3500000, 'Crossfire', 'Crossfire 2006 model duper clean duty paid buy and drive nothing to fix', 3, 1, 40, 1, 0, '[\"img_70257873415364524091248074285.jpg\",\"img_48369906215364524091890439889.jpg\",\"img_5558458061536452409464212672.jpg\",\"img_4061513031536452409276878259.jpg\",\"img_9583845491536452409336574715.jpg\",\"img_14396028441536452409883953398.jpg\",\"img_9584170641536452409908513548.\"]', 507, '2018-09-08 23:20:09', NULL),
(67, 'Mercedes Benz GLK', 13000000, 'Mercedes-Benz-GLK', 'Mercedes Benz GLK 2013 model', 3, 1, 41, 1, 0, '[\"img_10982378491536452630320339050.jpg\",\"img_11995677911536452630449402527.jpg\",\"img_17525131031536452630294808195.jpg\",\"img_14161275721536452630698185480.\",\"img_83044407115364526302104317966.\",\"img_14829084581536452630271224777.\",\"img_12971072291536452630837135451.\"]', 508, '2018-09-08 23:23:50', NULL),
(68, 'Honda pilot', 1200000, 'Honda-pilot', 'Honda pilot 2005 model registered', 3, 1, 42, 1, 0, '[\"img_101718592615365275781017800298.jpg\",\"img_91970979115365275782118070850.jpg\",\"img_20858349591536527578492180321.jpg\",\"img_9337205051536527578651788595.jpg\",\"img_142969499815365275781955743488.jpg\",\"img_79049593715365275781247697989.\",\"img_12088436571536527578167568859.\"]', 509, '2018-09-09 20:12:58', NULL),
(69, 'Mercedes Benz Gwagon', 18000000, 'Mercedes-Benz-Gwagon', 'Mercedes Benz Gwagon registered very clean', 3, 1, 45, 1, 0, '[\"img_5632085011536527815529115826.jpg\",\"img_11337993321536527815151482514.jpg\",\"img_6050309751536527815722661924.jpg\",\"img_196132870315365278151290955517.jpg\",\"img_43743037415365278151049826056.\",\"img_72967027615365278151428152894.\",\"img_19567218081536527815841224429.\"]', 509, '2018-09-09 20:16:55', NULL),
(70, 'Toyota Highlander', 2600000, 'Toyota-Highlander', 'Toyota Highlander 2006 model duty paid buy and drive nothing to fix leather seats', 3, 1, 43, 1, 0, '[\"img_146932304815365288241786441737.jpg\",\"img_3889980081536528824312971235.jpg\",\"img_351392981536528824159164956.jpg\",\"img_12248248941536528824347032482.jpg\",\"img_11824491611536528824304794770.jpg\",\"img_6671521091536528824772632617.\",\"img_8992235921536528824764353964.\"]', 508, '2018-09-09 20:33:44', NULL),
(71, 'Toyota Highlander', 2600000, 'Toyota-Highlander', 'Toyota Highlander 2006 model duty paid buy and drive nothing to fix leather seats', 3, 1, 52, 1, 0, '[\"img_961771667153652929753820508.jpg\",\"img_84731612215365292971279112207.jpg\",\"img_131622094015365292971082940231.jpg\",\"img_654450071536529297769843609.jpg\",\"img_147701967115365292971794621023.jpg\",\"img_97744870815365292971404985778.\",\"img_20918720171536529297146805433.\"]', 508, '2018-09-09 20:41:37', NULL),
(72, 'Different brands', 2000000, 'Different-brands', 'Visit Kenmore auto park at no 1 Oke afa bridge by mass burial along Isolo ikotun road by javy fuel station to buy your choice car', 3, 1, 42, 1, 0, '[\"img_99053203715365308341467784482.jpg\",\"img_15529674711536530834634938995.jpg\",\"img_4101190815365308341296672215.jpg\",\"img_5192241881536530834667305374.\",\"img_25125712615365308341979482027.\",\"img_4124817761536530834716646272.\",\"img_178577349215365308341671058103.\"]', 508, '2018-09-09 21:07:14', NULL),
(73, 'Toyota corolla', 1700000, 'Toyota-corolla', 'Toyota corolla 2005 model Tokunbo duty paid buy and drive nothing to fix', 3, 1, 45, 1, 0, '[\"img_99685233715365533471251070928.jpg\",\"img_34721757815365533471947486320.jpg\",\"img_58247533915365533471472989683.jpg\",\"img_12058407715365533471089024765.jpg\",\"img_79788618715365533471042079755.\",\"img_26143968915365533471609411339.\",\"img_14403176641536553347966704362.\"]', 508, '2018-09-10 03:22:27', NULL),
(74, 'Toyota corolla', 1700000, 'Toyota-corolla', 'Toyota corolla 2005 model Tokunbo duty paid buy and drive nothing to fix', 3, 1, 91, 1, 0, '[\"img_180341403715365534521219801107.jpg\",\"img_156375360615365534521325392549.jpg\",\"img_264024154153655345211019401.jpg\",\"img_102392840115365534521352801901.jpg\",\"img_7271512115365534521288553840.\",\"img_17145036751536553452740513177.\",\"img_4314315521536553452103313818.\"]', 508, '2018-09-10 03:24:12', NULL),
(75, 'Clothes', 10000, 'Clothes', 'Wedding attire for bride and groom', 34, 9, 49, 1, 0, '[\"img_62088053315369282601272438186.jpg\",\"img_5586704181536928260432699266.jpg\",\"img_28072402915369282601881674211.jpg\",\"img_14919507291536928260594807658.jpg\",\"img_12276224191536928260572050488.\",\"img_85991047615369282601950928878.\",\"img_5096938391536928260918567765.\"]', 523, '2018-09-14 11:31:00', NULL),
(76, 'Toyota Camry', 1700000, 'Toyota-Camry', 'Toyota Camry 2005 model accident free duty paid buy and drive nothing to fix', 3, 1, 39, 1, 0, '[\"img_65043278415375837471958240346.jpg\",\"img_17888938515375837471132184860.jpg\",\"img_15488420121537583747763223203.jpg\",\"img_158485890415375837471369586523.jpg\",\"img_13425481801537583747629164735.jpg\",\"img_139957924715375837471433274090.\",\"img_13127056381537583747222014848.\"]', 508, '2018-09-22 01:35:47', NULL),
(77, 'Toyota Camry', 1700000, 'Toyota-Camry', 'Toyota Camry 2005 model accident free duty paid buy and drive nothing to fix', 3, 1, 46, 1, 0, '[\"img_90098056715375839231522938254.jpg\",\"img_142019622215375839231908841855.jpg\",\"img_53807726415375839232121562017.jpg\",\"img_1748748251537583923627606748.jpg\",\"img_17672245351537583923811721780.jpg\",\"img_18112130191537583923568085624.\",\"img_18314125701537583923532047109.\"]', 508, '2018-09-22 01:38:43', NULL),
(78, 'Toyota Camry', 1700000, 'Toyota-Camry', 'Toyota Camry 2005 model accident free duty paid buy and drive nothing to fix', 3, 1, 47, 1, 0, '[\"img_43971892315375841192094913997.jpg\",\"img_36243021615375841191694425746.jpg\",\"img_103962000415375841191245974989.jpg\",\"img_83126209415375841191731167487.jpg\",\"img_12591069681537584119265481548.jpg\",\"img_18264922361537584119644345860.\",\"img_162148221315375841191301570665.\"]', 508, '2018-09-22 01:41:59', NULL),
(79, 'Toyota corolla', 1650000, 'Toyota-corolla', 'Toyota corolla 2004 model accident free duty paid buy and drive nothing to fix', 3, 1, 47, 1, 0, '[\"img_16417010461537584704114781060.jpg\",\"img_18336105215375847041817053010.jpg\",\"img_39744154515375847041197817180.jpg\",\"img_163122431915375847041602603399.jpg\",\"img_189580393915375847041326746014.jpg\",\"img_152544869915375847042070874929.\",\"img_69529947915375847041159773574.\"]', 508, '2018-09-22 01:51:44', NULL),
(80, 'Toyota Avalon', 2900000, 'Toyota-Avalon', 'Toyota Avalon xls 2007 model super clean leather seats automatic transmission air-condition duty paid', 3, 1, 54, 1, 0, '[\"img_15192616791538598093456717276.jpg\",\"img_14083549141538598093546189292.jpg\",\"img_7686361831538598093728601983.jpg\",\"img_131657762015385980931498570223.jpg\",\"img_8165737031538598093686234853.jpg\",\"img_121634431315385980931173632042.jpg\",\"img_36446371515385980931278192459.jpg\"]', 508, '2018-10-03 19:21:33', NULL),
(81, 'Toyota Avalon', 2900000, 'Toyota-Avalon', 'Toyota Avalon 2007 model tomb start with legless entry full options duty paid', 3, 1, 44, 1, 0, '[\"img_45537984415385986812111866021.jpg\",\"img_59018750815385986811057884829.jpg\",\"img_10856627461538598681146707665.jpg\",\"img_11500535571538598681858905325.jpg\",\"img_143950568615385986811755202692.jpg\",\"img_175304172815385986811723205400.jpg\",\"img_8210050111538598681596213295.\"]', 508, '2018-10-03 19:31:21', NULL),
(82, 'Mercedes Benz c230', 2300000, 'Mercedes-Benz-c230', 'Mercedes Benz c230 white horse full options duty paid', 3, 1, 60, 1, 0, '[\"img_86744534815385990881248525549.jpg\",\"img_2275037451538599088668334928.jpg\",\"img_18628038401538599088169651197.jpg\",\"img_17126540661538599088758362478.jpg\",\"img_124038078115385990881203516468.jpg\",\"img_2462328151538599088585215447.jpg\",\"img_4785378161538599088850538767.\"]', 508, '2018-10-03 19:38:08', NULL),
(83, 'Mercedes Benz ml350 4matic', 3600000, 'Mercedes-Benz-ml350-4matic', 'Mercedes Benz ML350 4matic Nigerian used fully loaded with full duty paid, buy and drive nothing to fix', 38, 1, 42, 1, 0, '[\"img_114675227015393590801162760177.jpg\",\"img_66959481215393590801995550935.jpg\",\"img_31209875915393590801975901408.jpg\",\"img_198960633115393590801868026251.jpg\",\"img_155726335715393590802005768417.jpg\",\"img_12555695171539359080800465652.\",\"img_24164872715393590801866386679.\"]', 508, '2018-10-12 14:44:40', NULL),
(84, 'Mimi cooper', 8600000, 'Mimi-cooper', 'Minicooper 2013 model', 38, 1, 46, 1, 0, '[\"img_72831938115393593642055107405.jpg\",\"img_3258504615393593642089506278.jpg\",\"img_63714503415393593641919984587.jpg\",\"img_8877057071539359364576828136.\",\"img_69055047115393593642025656110.\",\"img_126846208415393593641854126053.\",\"img_133513237815393593642014510216.\"]', 508, '2018-10-12 14:49:24', NULL),
(86, 'Ford bus', 2000000, 'Ford-bus', 'Ford transit bus long frame 6 boot', 3, 1, 70, 1, 0, '[\"img_118105361415421763541489132322.jpg\",\"img_196031652515421763541590426518.jpg\",\"img_126025380315421763542047258271.jpg\",\"img_8016435461542176354506526426.jpg\",\"img_152791851715421763541515426807.\",\"img_82512310515421763542072103074.\",\"img_162570731115421763541178249425.\"]', 508, '2018-11-14 05:19:14', NULL),
(87, 'Toyota camey', 1500000, 'Toyota-camey', 'Nigerian used Toyota camry 2010 model buy and drive nothing to fix', 3, 1, 43, 1, 0, '[\"img_175832544215437790211635148907.jpg\",\"img_16485199951543779021409091176.jpg\",\"img_157195939915437790211862082777.jpg\",\"img_99379650315437790211216517265.jpg\",\"img_4775320641543779021844851532.jpg\",\"img_69726787615437790211474976913.jpg\",\"img_844463081154377902131582066.jpg\"]', 508, '2018-12-02 18:30:21', NULL),
(88, 'Toyota sienna', 1200000, 'Toyota-sienna', '2004 Nigerian used Toyota sienna in a very good condition buy and drive nothing to fix', 3, 1, 36, 1, 0, '[\"img_205041444315437792071572587640.jpg\",\"img_16802746761543779207825063562.jpg\",\"img_11576495291543779207651532823.jpg\",\"img_144463656615437792071930875851.jpg\",\"img_4271920551543779207765317510.jpg\",\"img_92493631515437792072027033778.\",\"img_98482102015437792071039649601.\"]', 508, '2018-12-02 18:33:27', NULL),
(89, 'Hyundai santafe', 1500000, 'Hyundai-santafe', 'Hyundai santafe 4*4 Nigerian used in very good condition buy and drive nothing to fix', 3, 1, 39, 1, 0, '[\"img_10130973721543779624919354633.jpg\",\"img_1037521655154377962432295376.jpg\",\"img_208461383415437796241402909613.jpg\",\"img_7529863251543779624488985315.jpg\",\"img_142314524615437796242135287196.\",\"img_3125646491543779624668264718.\",\"img_11555654211543779624221234857.\"]', 508, '2018-12-02 18:40:24', NULL),
(90, 'Honda civic', 800000, 'Honda-civic', 'Nigerian used Honda civic economical to use buy and drive', 3, 1, 43, 1, 0, '[\"img_1440893421543779849669598164.jpg\",\"img_15441157091543779849204759131.jpg\",\"img_29954681615437798491973737346.jpg\",\"img_76685529415437798492064027161.jpg\",\"img_1796514721543779849107662030.\",\"img_184507626415437798491646282268.\",\"img_11937338751543779849584285168.\"]', 508, '2018-12-02 18:44:09', NULL),
(91, 'Toyota Camry', 2200000, 'Toyota-Camry', 'Toyota Camry 2007 model fabric', 3, 1, 41, 1, 0, '[\"img_205704135515451303231627282874.jpg\",\"img_46710963615451303231060092548.jpg\",\"img_20474697115451303231502200238.jpg\",\"img_17436618731545130323869647967.jpg\",\"img_3462140181545130323315929681.\",\"img_2080619311545130323334854064.\",\"img_3511801281545130323804620111.\"]', 510, '2018-12-18 09:52:03', NULL),
(92, 'man volks truck', 2800000, 'man-volks-truck', 'Man volks truck tokunbo', 3, 1, 40, 1, 0, '[\"img_19349761041545130977280093115.jpg\",\"img_16529079815451309771291686808.jpg\",\"img_10257590731545130977679211757.jpg\",\"img_84380147115451309771184128686.jpg\",\"img_6069215081545130977379207804.\",\"img_18136935791545130977456486400.\",\"img_5853573491545130977424227927.\"]', 523, '2018-12-18 10:02:57', NULL),
(93, 'Toyota highlander', 5300000, 'Toyota-highlander', 'Toyota highlander 2008 model', 3, 1, 38, 1, 0, '[\"img_46110847815451312011248994949.jpg\",\"img_8300491391545131201163563513.jpg\",\"img_18254670931545131201237026626.jpg\",\"img_34640192615451312011791504781.jpg\",\"img_182922994515451312012074731185.\",\"img_133151093215451312011940218365.\",\"img_1171420615451312011108721651.\"]', 508, '2018-12-18 10:06:41', NULL),
(94, 'Pictures', 200000, 'Pictures', 'This is a picture ad', 40, 1, 37, 1, 0, '[\"img_102126076115467874941410310973.jpeg\",\"img_10755295001546787494388246732.jpeg\",\"img_45906438015467874941864291444.jpeg\",\"img_3252242581546787494235547572.\",\"img_35531263015467874941651883464.\",\"img_153422600015467874941491966543.\",\"img_9665220531546787494147101093.\"]', 98, '2019-01-06 14:11:34', NULL),
(95, 'Picture Ad', 743747, 'Picture-Ad', 'This is a picture ad', 40, 1, 39, 1, 0, '[\"img_182648478315467875931868324867.jpeg\",\"img_201939140315467875932141708916.jpeg\",\"img_147550124215467875931399113844.jpeg\",\"img_59025103415467875931548185159.\",\"img_96720181515467875931771572242.\",\"img_83574099215467875932088200053.\",\"img_154136410715467875931515434528.\"]', 95, '2019-01-06 14:13:13', NULL),
(96, 'Ttt5ttthh', 885, 'Ttt5ttthh', 'Vibgfgjhfffvhhvg\r\nHhhhhhbbb\r\nHhhhhhjdfgkghhj', 40, 1, 40, 1, 0, '[\"img_126463889515467882621606027475.jpeg\",\"img_8473042051546788262438904953.jpeg\",\"img_9420896651546788262521530471.jpeg\",\"img_11458302151546788262156951922.\",\"img_70089491115467882622077213910.\",\"img_1087329662154678826243666812.\",\"img_82687164215467882621016987157.\"]', 215, '2019-01-06 14:24:22', NULL),
(97, 'Uffufjcjcjvj', 65467, 'Uffufjcjcjvj', 'Ggdggcghnfbb', 40, 1, 38, 1, 0, '[\"img_1476036730154678971385901853.jpeg\",\"img_254706781546789713906745853.jpeg\",\"img_5557009781546789713111570654.jpeg\",\"img_6455630011546789713420090959.\",\"img_13632677421546789713334955899.\",\"img_117723705315467897133076694.\",\"img_37404518415467897132111080105.\"]', 191, '2019-01-06 14:48:33', NULL),
(98, 'So fyfyxyx', 6655, 'So-fyfyxyx', 'Ufufufulhfs', 40, 1, 35, 1, 0, '[\"img_81369747115467897881651505918.jpg\",\"img_9428073681546789788608868416.jpeg\",\"img_19732541201546789788104831749.jpg\",\"img_9785854871546789788726431357.\",\"img_63619347315467897881801285373.\",\"img_7014455221546789788625993628.\",\"img_158181849915467897881942076412.\"]', 116, '2019-01-06 14:49:48', NULL),
(99, 'Ytghjkggu', 46646, 'Ytghjkggu', 'Gkvkjggv', 40, 1, 44, 1, 0, '[\"img_128801892915467900771411738167.jpg\",\"img_141140552015467900771869455120.png\",\"img_7377685411546790077939801550.jpeg\",\"img_127261838115467900772076625802.\",\"img_7464953115467900771554135259.\",\"img_2068809511546790077581591203.\",\"img_159522991415467900771195261583.\"]', 97, '2019-01-06 14:54:37', NULL),
(100, 'Yttfdugc', 456, 'Yttfdugc', 'Ggfuhvghh', 40, 1, 41, 1, 0, '[\"img_8538695921546790192880171328.jpg\",\"img_9386715321546790192756054775.jpeg\",\"img_8350461621546790192593112113.jpeg\",\"img_23214494415467901922047045170.\",\"img_195585957715467901921504996226.\",\"img_18791913361546790192706622177.\",\"img_15796421691546790192996504019.\"]', 721, '2019-01-06 14:56:32', NULL),
(101, 'Fine ad', 6447474, 'Fine-ad', 'Hdhdusgshdhrurjdhd', 40, 1, 38, 1, 0, '[\"img_84781000015467991711501942055.jpeg\",\"img_116509127815467991711345785358.jpeg\",\"img_6277583315467991711922630161.jpeg\",\"img_190248555715467991711293633585.\",\"img_7770245901546799171590794561.\",\"img_6030577571546799171571325212.\",\"img_17308162315467991711270962128.\"]', 710, '2019-01-06 17:26:11', NULL),
(102, 'Udhdhdydbcjci', 6373838, 'Udhdhdydbcjci', 'Hjdufxhdhchcjgichfyfyftguhfh.\r\n\r\n\r\n\r\nFuck you', 40, 1, 38, 1, 0, '[\"img_145812814815468001982064318263.jpeg\",\"img_381942170154680019844550829.jpeg\",\"img_31849796915468001981454149722.jpeg\",\"img_7181854721546800198861205788.jpeg\",\"img_8988453341546800198664969722.\",\"img_71830758615468001981183587798.\",\"img_85598651615468001981440221285.\"]', 1, '2019-01-06 17:43:18', NULL),
(103, 'Tree hillðŸ˜‚ðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜€ðŸ˜„ðŸ˜„ðŸ˜„ðŸ˜„ðŸ—ï¸ðŸŒ‹ðŸ–ï¸ðŸ—»ðŸ–ï¸ðŸŒ', 788484, 'Tree-hillðŸ˜‚ðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜€ðŸ˜„ðŸ˜„ðŸ˜„ðŸ˜„ðŸ—ï¸ðŸŒ‹ðŸ–ï¸ðŸ—»ðŸ–ï¸ðŸŒ', 'Hdhdudjduddjdjdhdhd', 40, 1, 0, 1, 0, '[\"img_238527821546800881813415260.jpeg\",\"img_142964151115468008811112667997.jpg\",\"img_20030225521546800881750410040.jpg\",\"img_126678033915468008812009066678.\",\"img_201715079215468008811999491145.\",\"img_16735432915468008811466737984.\",\"img_17603204731546800881224998054.\"]', 81, '2019-01-06 17:54:41', NULL),
(104, 'ðŸ˜ï¸ðŸŸï¸ðŸ˜ï¸ðŸŸï¸ðŸ—ï¸ðŸŸï¸ðŸ—ï¸ðŸŸï¸ðŸ˜ï¸ðŸ›ï¸ðŸ˜ï¸ðŸ›ï¸ðŸ˜ï¸ðŸ›ï¸ðŸ', 2147483647, 'ðŸ˜ï¸ðŸŸï¸ðŸ˜ï¸ðŸŸï¸ðŸ—ï¸ðŸŸï¸ðŸ—ï¸ðŸŸï¸ðŸ˜ï¸ðŸ›ï¸ðŸ˜ï¸ðŸ›ï¸ðŸ˜ï¸ðŸ›ï¸ðŸ˜ï¸ðŸ›ï¸ðŸšï¸ðŸ›ï¸ðŸ˜ï¸ðŸ¿ï¸ðŸ°ðŸ¦ðŸ«ðŸ¿ï¸ðŸ«ðŸ‡ðŸ¹ðŸ‡ðŸ¹ðŸ‡ðŸ¹ðŸ‡ðŸ¹ðŸ‡ð', 'Hdhdhdhdhddhdhdhbbxxhxyxhxtxtsgsfstsghdhdxhxhxhx\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nDhdhdhdhdhrhehwjejegdvdofjrhrhdixfdhdjddhdhdtaksygrhdhdhrhdrhdhfhfjghcfjðŸ¿ï¸ðŸ«ðŸ¿ï¸ðŸ«ðŸ¿ï¸ðŸ«ðŸ¿ï¸ðŸ«ðŸ¿ï¸ðŸ«ðŸ˜ðŸŽ†ðŸŽðŸŽðŸŽ', 40, 1, 0, 1, 0, '[\"img_89471165415468014541899801832.jpeg\",\"img_110959958115468014541432302161.jpg\",\"img_16629808821546801454779751796.jpg\",\"img_1350654681154680145497404835.\",\"img_3995979815468014541726108068.\",\"img_62214594615468014541452322108.\",\"img_1918204151546801454112098211.\"]', 574, '2019-01-06 18:04:14', NULL),
(105, 'dfkdljfdlkjfdlkj', 84848, 'dfkdljfdlkjfdlkj', 'dafj;aj;dfjkd;kfjd;fjk\r\ndaf;ljkdf;kljfdf\r\ndafjkda;fjd;fkj', 40, 1, 39, 1, 0, '[\"img_11229449881546810414691325856.jpg\",\"img_2046240571154681041498309735.jpg\",\"img_1134699341154681041493592107.jpg\",\"img_74206758615468104141887909874.\",\"img_108434227515468104141775535390.\",\"img_13779738715468104141671210047.\",\"img_8727235461546810414939048321.\"]', 362, '2019-01-06 20:33:34', NULL),
(106, 'dd;fkjdffljk', 494393, 'dd;fkjdffljk', 'ad;k;fjkd;afjk;dajd;fjkd;lfjkd;ajf;jdhfldjhf\r\nda;jkdf;ljkd;afjdfdf;kjdaf;klj\r\nadfjkdf;kj', 40, 1, 8, 1, 0, '[\"img_2433065461546810544873266589.jpg\",\"img_88817167215468105441682641996.jpg\",\"img_10572802181546810544974874798.JPG\",\"img_13559393191546810544723518424.\",\"img_142591298415468105441931801931.\",\"img_6327908951546810544149515863.\",\"img_14261915721546810544196792529.\"]', 255, '2019-01-06 20:35:44', NULL),
(107, 'skdfjdfldj', 49849, 'skdfjdfldj', 'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', 40, 1, 37, 1, 0, '[\"img_27572090215468106751828946863.jpg\",\"img_15657230091546810675747938447.jpg\",\"img_206355285315468106751335405259.gif\",\"img_100945199615468106751240972344.\",\"img_17456110071546810675656830389.\",\"img_87930566015468106751106940150.\",\"img_8433987215468106751567419971.\"]', 290, '2019-01-06 20:37:55', NULL),
(108, 'oyiuyiuyuiy', 2147483647, 'oyiuyiuyuiy', 'oiiouiouiouiouiouipio', 40, 1, 40, 1, 0, '[\"img_8577564831546812343936051770.jpg\",\"img_176178851615468123431551432775.jpg\",\"img_6942804015468123431598089483.jpeg\",\"img_5131198571546812343510220921.\",\"img_2254618415468123431765228852.\",\"img_33644986615468123431820849571.\",\"img_19252477415468123432046170599.\"]', 232, '2019-01-06 21:05:43', NULL),
(109, 'Mitsubishi canter', 4500000, 'Mitsubishi-canter', 'Mitsubishi canter, Nigerian used very clean ,buy and drive nothing to fix', 3, 1, 52, 0, 0, '[\"img_20109819291548200848163788423.jpg\",\"img_180574059215482008482128610350.jpg\",\"img_128884777015482008481715477998.jpg\",\"img_213181174815482008481811117604.jpg\",\"img_163072207915482008481944256465.\",\"img_8217616651548200848171250497.\",\"img_7676057651548200848827765096.\"]', 510, '2019-01-22 22:47:28', '2020-05-11 13:50:09'),
(110, 'Cadillac escalade', 11500000, 'Cadillac-escalade', 'Cadillac escalade 2008 model full options buy and drive nothing to fix', 3, 1, 40, 1, 0, '[\"img_98433307215482011481819802921.png\",\"img_8269220615482011481514816787.png\",\"img_16013756711548201148853965776.png\",\"img_12990748515482011482074995250.png\",\"img_209843732015482011481760544046.\",\"img_10703788071548201148795900088.\",\"img_13427930151548201148461636217.\"]', 510, '2019-01-22 22:52:28', NULL),
(111, 'Toyota Rav4', 8500000, 'Toyota-Rav4', 'Toyota Rav4 2013 model ,just like brand new', 3, 1, 40, 1, 0, '[\"img_768816603154820156378823717.jpg\",\"img_6740877871548201563566091635.jpg\",\"img_133001942515482015632036562363.jpg\",\"img_55588319215482015632030959410.jpg\",\"img_16691157651548201563532446627.jpg\",\"img_21431373871548201563732514574.jpg\",\"img_8021843041548201563274832721.\"]', 508, '2019-01-22 22:59:23', NULL),
(112, 'Toyota Camry', 2300000, 'Toyota-Camry', 'Toyota Camry 2007 model tokunbo buy and drive nothing to fix', 3, 1, 41, 1, 0, '[\"img_108765951154820182093491018.jpg\",\"img_141918524515482018201157214638.jpg\",\"img_9827610781548201820130372012.jpg\",\"img_5561386041548201820718680338.jpg\",\"img_228784615482018201814780734.\",\"img_101316155015482018201468580807.\",\"img_165328525315482018201437998033.\"]', 510, '2019-01-22 23:03:40', NULL),
(113, 'Mercedes Benz', 3500000, 'Mercedes-Benz', 'Mercedes Benz 350 4matic Nigerian used ,just like tokunbo', 3, 1, 43, 1, 0, '[\"img_54860757915482021741945365282.jpg\",\"img_115657535315482021741108179338.jpg\",\"img_20669993881548202174625964478.jpg\",\"img_30108055915482021742038107386.jpg\",\"img_17108502471548202174708303884.jpg\",\"img_33707284515482021741025177142.\",\"img_87416855515482021741674719501.\"]', 510, '2019-01-22 23:09:34', NULL),
(114, 'Toyota highlander', 2900000, 'Toyota-highlander', 'Toyota highlander 2004 model 3 seat row fabric', 3, 1, 45, 1, 0, '[\"img_24538895715482024331040956848.jpg\",\"img_67807886115482024331865125512.jpg\",\"img_49228406315482024331922930676.jpg\",\"img_7505179581548202433148150373.\",\"img_1184362681548202433404779841.\",\"img_147691184015482024331208401535.\",\"img_28089893915482024331175839597.\"]', 508, '2019-01-22 23:13:53', NULL);
INSERT INTO `products` (`id`, `title`, `price`, `slug`, `summary`, `user_id`, `category_id`, `views`, `approved`, `featured`, `product_image`, `region_id`, `created_at`, `updated_at`) VALUES
(115, 'KIA sorento', 2200000, 'KIA-sorento', 'KIA sorento 2004 model leather seats very clean automatic chilling a/c buy and drive nothing to fix', 3, 1, 52, 1, 0, '[\"img_84096140915482027811877780998.jpg\",\"img_10998705351548202781604936309.jpg\",\"img_10408229051548202781373515898.jpg\",\"img_21245085211548202781148724676.jpg\",\"img_1767072141154820278116924506.\",\"img_11364891571548202781823947667.\",\"img_122086703815482027811585779143.\"]', 508, '2019-01-22 23:19:41', NULL),
(116, 'ford ranger', 2000000, 'ford-ranger', 'Ford Ranger pick up tokunbo automatic with chilling a/c buy and drive nothing to fix', 3, 1, 44, 1, 0, '[\"img_98842230215482030751819458958.jpg\",\"img_72234267315482030751789725643.jpg\",\"img_163734036915482030751028544060.jpg\",\"img_16021884651548203075614718696.jpg\",\"img_12363621001548203075874364106.\",\"img_113809443115482030757524933.\",\"img_161365397515482030751967883810.\"]', 508, '2019-01-22 23:24:35', NULL),
(117, 'Toyota sienna', 2000000, 'Toyota-sienna', 'Toyota sienna 2004 model Le ,very neat buy and drive', 3, 1, 45, 1, 0, '[\"img_168899669115482033451400780206.jpg\",\"img_5657175591548203345297444781.jpg\",\"img_66584520215482033451156833955.jpg\",\"img_11509764051548203345285930571.jpg\",\"img_14279846551548203345227468929.\",\"img_18712271591548203345122879587.\",\"img_4239198501548203345224670095.\"]', 510, '2019-01-22 23:29:05', NULL),
(118, 'Honda crv', 1500000, 'Honda-crv', 'Honda crv 2003 model very neat just like brand new', 3, 1, 41, 1, 0, '[\"img_809929732154820360538705632.jpg\",\"img_19263218891548203605780877730.jpg\",\"img_158712290215482036051847330971.jpg\",\"img_197004184215482036051633418352.jpg\",\"img_8879213421548203605429556666.\",\"img_49602765915482036051244744468.\",\"img_12054771831548203605660472853.\"]', 509, '2019-01-22 23:33:25', NULL),
(119, 'Toyota sienna', 1500000, 'Toyota-sienna', 'Toyota sienna 2002 model extremely clean', 3, 1, 41, 1, 0, '[\"img_345918581548203845558037028.jpg\",\"img_42184531515482038452030018004.jpg\",\"img_19484125301548203845461535240.jpg\",\"img_10362237601548203845627401018.jpg\",\"img_67174575115482038451413900774.jpg\",\"img_12339108515482038451871222093.\",\"img_374576008154820384564964255.\"]', 506, '2019-01-22 23:37:25', NULL),
(120, 'Rx 350', 8500000, 'Rx-350', 'Lexus Rx 350 2010 model', 3, 1, 45, 1, 0, '[\"img_11726048821548204004813694702.jpg\",\"img_10421503315482040041078375527.jpg\",\"img_172481124915482040041026728877.jpg\",\"img_1644191733154820400424920292.\",\"img_13802378461548204004578021294.\",\"img_126300947915482040041474714462.\",\"img_2955565691548204004602741046.\"]', 510, '2019-01-22 23:40:04', NULL),
(121, 'Toyota Rav4', 2000000, 'Toyota-Rav4', 'Used Toyota Rav4 2008 model', 3, 1, 57, 1, 0, '[\"img_155441073315482042501738784111.jpg\",\"img_18536920621548204250694678518.jpg\",\"img_186664115415482042501774765796.jpg\",\"img_552498547154820425037862639.jpg\",\"img_398196481548204250798950379.\",\"img_37504744315482042501141874202.\",\"img_1135327587154820425011991354.\"]', 518, '2019-01-22 23:44:10', NULL),
(122, 'toyota camry', 600000, 'toyota-camry', 'Toyota Camry drop light used buy and drive nothing to fix', 3, 1, 43, 1, 0, '[\"img_1978306081548204421549860612.jpg\",\"img_147497722815482044211646617831.jpg\",\"img_3784529001548204421813576779.jpg\",\"img_16752721241548204421813492635.jpg\",\"img_206981574415482044211154864069.\",\"img_12414138831548204421155459383.\",\"img_28543268115482044211313051039.\"]', 512, '2019-01-22 23:47:01', NULL),
(123, 'ford galaxy', 1500000, 'ford-galaxy', '2006 model ford galaxy automatic very clean buy and drive nothing to fix', 3, 1, 42, 1, 0, '[\"img_3115559715482053161225909115.jpg\",\"img_93805040915482053161297150993.jpg\",\"img_78021500015482053169179950.jpg\",\"img_5864639031548205316286522754.jpg\",\"img_8536488561548205316177500109.\",\"img_8697448061548205316241965975.\",\"img_151250634715482053161839077438.\"]', 510, '2019-01-23 00:01:56', NULL),
(124, 'Toyota Hilux', 13000000, 'Toyota-Hilux', 'Toyota Hilux 2014 model extremely neat', 3, 1, 40, 1, 0, '[\"img_136085196615484466601144210812.jpg\",\"img_103304207515484466602016713082.jpg\",\"img_62644701015484466601950902107.jpg\",\"img_97550664415484466601701743434.\",\"img_18443541121548446660536315336.\",\"img_1119216415154844666053784489.\",\"img_137849844615484466601134053967.\"]', 510, '2019-01-25 19:04:20', NULL),
(125, 'Honda pilot', 1800000, 'Honda-pilot', 'Honda pilot 2004 very clean', 3, 1, 45, 1, 0, '[\"img_200241210015484472111275232906.jpg\",\"img_18854538221548447211939889613.jpg\",\"img_8108904511548447211311604247.jpg\",\"img_85223522315484472111672794704.jpg\",\"img_11405576211548447211681911500.jpg\",\"img_971450221548447211700667540.\",\"img_149157194615484472111246680293.\"]', 508, '2019-01-25 19:13:31', NULL),
(126, 'Chevrolet Astra', 2000000, 'Chevrolet-Astra', 'Chevrolet Astra (school bus)', 3, 1, 45, 1, 0, '[\"img_48963767415484475141485359645.jpg\",\"img_129399095715484475142029496683.jpg\",\"img_140092982615484475141597526654.jpg\",\"img_17580008041548447514263908885.jpg\",\"img_53579686715484475141649074518.\",\"img_188138592215484475141824639675.\",\"img_54925859115484475141479641838.\"]', 508, '2019-01-25 19:18:34', NULL),
(127, 'Toyota sienna', 1600000, 'Toyota-sienna', 'Toyota sienna 1999 model brilliant white Superbowl condition', 3, 1, 42, 1, 0, '[\"img_8871905515484478261082448333.jpg\",\"img_6719876021548447826322393137.jpg\",\"img_6119023001548447826507031069.jpg\",\"img_86915576215484478261619536762.jpg\",\"img_66011415715484478261136385176.jpg\",\"img_7053352751548447826248741027.\",\"img_6696783015484478261026943235.\"]', 509, '2019-01-25 19:23:46', NULL),
(128, 'Mercedes Benz', 6500000, 'Mercedes-Benz', 'Mercedes Benz c300 2010 model', 3, 1, 40, 1, 0, '[\"img_24904661615484481122045084578.jpg\",\"img_102424080015484481121628328890.jpg\",\"img_60779388615484481121265133026.jpg\",\"img_87646997915484481121117593246.jpg\",\"img_219303631548448112438579410.\",\"img_18789708291548448112122841363.\",\"img_209381128315484481121871135818.\"]', 510, '2019-01-25 19:28:32', NULL),
(129, 'Toyota thundra', 11000000, 'Toyota-thundra', '2011 Toyota thundra pick up , like brand new buy and drive nothing to fix and full duty paid .', 3, 1, 25, 1, 0, '[\"img_140015498015665170611048790978.jpg\",\"img_92463322415665170611871051456.jpg\",\"img_180977683715665170611693969217.jpg\",\"img_76262701715665170611933860740.jpg\",\"img_154572216415665170611878926745.jpg\",\"img_5881430641566517061791140958.jpg\",\"img_1847312630156651706119521755.jpg\"]', 508, '2019-08-22 22:37:41', NULL),
(130, 'Toyota thundra', 11000000, 'Toyota-thundra', '2011 Toyota thundra pick up , like brand new buy and drive nothing to fix and full duty paid .', 3, 1, 25, 1, 0, '[\"img_74091475415665173311681646642.jpg\",\"img_15936918581566517331740444730.jpg\",\"img_67406429715665173311639260525.jpg\",\"img_20886604691566517331269515060.jpg\",\"img_14974228715665173311172363253.jpg\",\"img_394900321566517331692867225.jpg\",\"img_25474452515665173311849885490.jpg\"]', 508, '2019-08-22 22:42:11', NULL),
(131, 'Toyota corolla', 1700000, 'Toyota-corolla', 'Tokunbo Toyota corolla 2004 model ash colour accident free low millage ,buy and drive.', 3, 1, 22, 1, 0, '[\"img_20900770181570148340927666691.jpg\",\"img_5821152821570148340735675799.jpg\",\"img_115548188515701483401419073099.jpg\",\"img_19763353901570148340681902695.jpg\",\"img_18554605431570148340914252084.jpg\",\"img_208550309115701483402089311123.\",\"img_113902890415701483401061825973.\"]', 523, '2019-10-03 23:19:00', NULL),
(132, 'Toyota matrix', 1500000, 'Toyota-matrix', 'Very clean tokunbo matrix , buy and drive nothing to fix', 3, 1, 22, 1, 0, '[\"img_10314461651570148618428948435.jpg\",\"img_14244586731570148618791652511.jpg\",\"img_12144263461570148618450989792.jpg\",\"img_20540665351570148618475439798.jpg\",\"img_154044176515701486181581008532.jpg\",\"img_15944244161570148618241174745.\",\"img_177435009715701486181665648490.\"]', 508, '2019-10-03 23:23:38', NULL),
(133, 'Toyota camry', 700000, 'Toyota-camry', 'Fairly used drop light Toyota Camry neat buy and drive', 3, 1, 24, 1, 0, '[\"img_16501900361570149064154655613.jpg\",\"img_21049163301570149064342520739.jpg\",\"img_3391376321570149064456374621.jpg\",\"img_5454323551570149064214359536.jpg\",\"img_19772137581570149064451273251.jpg\",\"img_14096450281570149064831939523.\",\"img_13815750161570149064584039739.\"]', 523, '2019-10-03 23:31:04', NULL),
(134, 'Infiniti fx50', 4500000, 'Infiniti-fx50', 'Infiniti fx50 2009 model super clean buy and drive nothing to fix', 3, 1, 16, 1, 0, '[\"img_207440631015752128021143492970.jpg\",\"img_17180234971575212802316019030.jpg\",\"img_140745254715752128022033414345.jpg\",\"img_71826404715752128021038881722.jpg\",\"img_18167900381575212802582999767.jpg\",\"img_75471670615752128021830067487.jpg\",\"img_19366242415752128021139859298.jpg\"]', 508, '2019-12-01 14:06:42', NULL),
(135, 'Ford focus', 950000, 'Ford-focus', 'Tokunbo ford focus manual gear xtreamely neat buy and drive nothing to fix.', 3, 1, 18, 1, 0, '[\"img_176295128415752138432141406776.jpg\",\"img_15506946031575213843450988666.jpg\",\"img_131971746315752138431253022067.jpg\",\"img_167198081915752138431244222483.jpg\",\"img_14125395121575213843287495252.jpg\",\"img_123945303815752138431866268212.jpg\",\"img_12939809051575213843681581275.jpg\"]', 508, '2019-12-01 14:24:03', NULL),
(136, 'Infiniti fx50', 3000000, 'Infiniti-fx50', 'Infiniti fx50 2008 model in super condition, fairly used', 3, 1, 17, 1, 0, '[\"img_896884215157521440046323517.jpg\",\"img_179455852115752144001530720629.jpg\",\"img_182767473115752144001351661525.jpg\",\"img_11645797361575214400459348042.jpg\",\"img_9283892141575214400691323941.jpg\",\"img_128836710815752144001005376569.jpg\",\"img_3970082121575214400462621916.\"]', 508, '2019-12-01 14:33:20', NULL),
(137, 'Book', 4000, 'book', 'dafdkafjd', 1, 4, 0, 1, 0, '[\"ppZC8ABLkpvInVuO5n7ULqUBw6yzDw1h7MjUKfXO.jpeg\",\"aRnpidSAX0Y9Tku0sdKxAiunmukXVYq45Nras7RZ.jpeg\",\"n8sQvNDfKJVsaKqWOtHfRku8O4c5iW3sXaRh5xuQ.jpeg\"]', 508, '2020-05-09 16:11:40', '2020-05-12 13:00:37'),
(138, 'The post title', 800, 'post-title', 'This is anoterh', 1, 3, 2, 1, 0, '[\"j5icrftzN38dp80FjiqWtDCghBiDtPxMjw68MbeT.jpeg\",\"fAtw1Z3wrzyuSWiws6KQB1VAoJBqPTAAi17n5zbv.jpeg\",\"lIOgDoB1v5s5jm6DqtS5ZMvpgaAMHNUHyjBZW0F2.jpeg\",\"MqBMM5AxCftE6XtGVchuiZEULIpdXLm8fkqxw4x3.jpeg\"]', 330, '2020-05-13 22:16:53', '2020-05-13 23:07:13'),
(139, 'Nice Product', 90000, 'nice-product', 'This is a very nice post', 1, 1, 15, 1, 0, '[\"4f54qgzclQNjzMAUsGzSUBhd72SCkjRLke5NsE5D.jpeg\",\"vMThhxNCJbrka4v9OTS1wq0FSvqUyfLl4cm5dayY.jpeg\",\"gY9MIZGIYV6ORPeQGuXzrnJ9yBMJTuBE6P57Vkbe.jpeg\"]', 508, '2020-05-14 12:13:11', '2020-05-14 13:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state`, `created_at`, `updated_at`) VALUES
(1, 'Abia State', NULL, NULL),
(2, 'Adamawa State', NULL, NULL),
(3, 'Akwa Ibom State', NULL, NULL),
(4, 'Anambra State', NULL, NULL),
(5, 'Bauchi State', NULL, NULL),
(6, 'Bayelsa State', NULL, NULL),
(7, 'Benue State', NULL, NULL),
(8, 'Borno State', NULL, NULL),
(9, 'Cross River State', NULL, NULL),
(10, 'Delta State', NULL, NULL),
(11, 'Ebonyi State', NULL, NULL),
(12, 'Edo State', NULL, NULL),
(13, 'Ekiti State', NULL, NULL),
(14, 'Enugu State', NULL, NULL),
(15, 'FCT', NULL, NULL),
(16, 'Gombe State', NULL, NULL),
(17, 'Imo State', NULL, NULL),
(18, 'Jigawa State', NULL, NULL),
(19, 'Kaduna State', NULL, NULL),
(20, 'Kano State', NULL, NULL),
(21, 'Katsina State', NULL, NULL),
(22, 'Kebbi State', NULL, NULL),
(23, 'Kogi State', NULL, NULL),
(24, 'Kwara State', NULL, NULL),
(25, 'Lagos State', NULL, NULL),
(26, 'Nasarawa State', NULL, NULL),
(27, 'Niger State', NULL, NULL),
(28, 'Ogun State', NULL, NULL),
(29, 'Ondo State', NULL, NULL),
(30, 'Osun State', NULL, NULL),
(31, 'Oyo State', NULL, NULL),
(32, 'Plateau State', NULL, NULL),
(33, 'Rivers State', NULL, NULL),
(34, 'Sokoto State', NULL, NULL),
(35, 'Taraba State', NULL, NULL),
(36, 'Yobe State', NULL, NULL),
(37, 'Zamfara State', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `is_admin`, `full_name`, `username`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Precious Aang', 'preciousaang', '08098939289', 'preciousaang@gmail.com', NULL, '$2y$10$li/VKtmspZn6XlzjgorWxOyPS4EyNRAanfkkh4rJ0EXcdVRsnoRj2', 'YYOHSvgmvEP6TnGaBwjtYtytiDsXpBbMqHM4bdOzoi52MvaSNDb1tAymfUGF', NULL, '2020-05-13 20:38:02'),
(2, 1, 'Komi Agbessi', 'boga4sure', '08023162135', 'agbessikomiphilips@gmail.com', NULL, '8d5004c9c74259ab775f63f7131da077814a7636', NULL, NULL, NULL),
(3, 0, 'nwigwe okey', 'josy', '08096157029', 'nwigweo@yahoo.com', NULL, '8d5004c9c74259ab775f63f7131da077814a7636', NULL, NULL, NULL),
(4, 1, 'nwigwe okechukwu', 'ebubechukwu', '08056353919', 'nwigweo@outlook.com', NULL, '8d5004c9c74259ab775f63f7131da077814a7636', NULL, NULL, NULL),
(5, 0, 'Agbessi Amevi', 'komi4sure', '08063455245', 'webmirandum@gmail.com', NULL, '8d5004c9c74259ab775f63f7131da077814a7636', NULL, NULL, NULL),
(6, 0, 'emmanuel dehinde', 'Deeo', '08084346527', 'emmanueldehinde1990@gmail.com', NULL, 'b8ac3eda7d56c724634db900b727f3b0cb40643a', NULL, NULL, NULL),
(12, 0, 'Chisom Ebule', 'Mikky', '08164725252', 'michealebule@yahoo.com', NULL, 'da20aa110d79f3dae4367d5fb938e27153999dd4', NULL, NULL, NULL),
(13, 0, 'Peter Kariuki Mutuura', 'Karis', '12345678910', 'peterkariukimutuura@gmail.com', NULL, 'to8C29LaGycCI', NULL, NULL, NULL),
(14, 0, 'peterkariukimutuura', 'peterkariukimutuura', '01234567891', 'karisthewebogfromrukuna@gmail.com', NULL, 'toPKqvgOmq3FM', NULL, NULL, NULL),
(18, 0, 'Akeredolu Bayo Victor', 'Doctor', '08060677451', 'Victorakeredolu7@gmail.comcom', NULL, '7ee4e1a419f7817cf3065d915ddb4843f0d54409', NULL, NULL, NULL),
(19, 0, 'Nwaigwe 0zoemena', 'Archbishop', '07033719095', 'Ozoemenanwaigwe@yahoo.com', NULL, '34e2d7e5f511734fe8544029ddb38ca364024480', NULL, NULL, NULL),
(20, 0, 'Celestine Ifeanyi', 'celerich2001', '08066427622', 'Celerich2001@yahoo.com', NULL, 'e06bb3bb016d9e9b726d8b588c158b2493008b97', NULL, NULL, NULL),
(21, 0, 'sam ikhide peters', 'vallibra', '08182399476', 'vclimited.sp@gmail.com', NULL, '7ffa32165e3a3be4b8c761f9b7148934a14f1ef1', NULL, NULL, NULL),
(22, 0, 'kenbright', 'bright', '09022255311', 'bright@email.com', NULL, 'cc1d2d97d6cd84d31b4e63b23c1bfcf167d35c29', NULL, NULL, NULL),
(23, 0, 'Ajoke', 'Shola', '08023918435', 'Julie2akintade@hotmail.com', NULL, 'bce7cfadddcc3b0e1c0d25ea28d7aa7f992d9433', NULL, NULL, NULL),
(24, 0, 'Paul Jude', 'Paul_jay', '08067845075', 'pauljude23@yahoo.com', NULL, '939afe9f793388a4aa78702028160e2accf70e30', NULL, NULL, NULL),
(25, 0, 'Moses I.U', 'Jedidiah 1', '08135837286', 'freemoses386@gmail.com', NULL, '28497ba1ea0f93d4f59b5ee0639c4a085f0f5e46', NULL, NULL, NULL),
(26, 0, 'Tony kanu', 'tonykanu0101', '08033548873', 'kanutonychidozie@yahoo.com', NULL, '48d8327e219b5e1b361bf908fe5d0e4dbae78066', NULL, NULL, NULL),
(27, 0, 'Sunny ukpe', 'Sunny_motors', '08132421506', 'pauljuds23@yahoo.com', NULL, '69491766e4879f887ca53e5d157a1e7904d35564', NULL, NULL, NULL),
(28, 0, 'Ibeh Moses .U.', 'Moses1', '08090810964', 'moses.i@cars45.com', NULL, '28497ba1ea0f93d4f59b5ee0639c4a085f0f5e46', NULL, NULL, NULL),
(29, 0, 'Ademola Owojori', 'kullysueventures', '07033644483', 'ademolaowojori@gmail.com', NULL, '742800f5b065ec372b6cfa0acc27c7eb0e720a66', NULL, NULL, NULL),
(30, 0, 'Nwigwe Edith Ogechukwu', 'Ifeoma', '08034551286', 'Edithshallom@gmail.com', NULL, '8d5004c9c74259ab775f63f7131da077814a7636', NULL, NULL, NULL),
(31, 0, 'David Adu', 'M-Sel', '08090568823', 'sirgare33@gmail.com', NULL, '99c3c7e32f2e47eee79ef56b19c4889aaea87a37', NULL, NULL, NULL),
(32, 0, 'Adetoro abiola', 'Beecarz', '09077211145', 'Hardeytorohardeywarley@gmail.com', NULL, '9d921f3d7d0c117f86118515b8a73167da739c6f', NULL, NULL, NULL),
(33, 0, 'Chigozie', 'Toch\'s motors2', '08034370890', 'muomatobias@gmail.com', NULL, '892bed9ba3080039f5fa4fc9263b8f19d44c4064', NULL, NULL, NULL),
(34, 0, 'DOSUNMU TITILAYO ELIZABETH', 'Titilayor', '09023275831', 'titilayoadefunke29@gmail.com', NULL, 'f8789766a63ed834c9b8c913fb656591bd16f568', NULL, NULL, NULL),
(35, 0, 'obasi nonso', 'nonny', '08032473653', 'nonsoobasi1@gmail.com', NULL, '24f9b3b1c31f0c8afca28b6bd2fb1d2f5d6f6f72', NULL, NULL, NULL),
(36, 0, 'obasi nonso', 'nonny boy', '08032473653', 'obasinonso3247@gmail.com', NULL, '24f9b3b1c31f0c8afca28b6bd2fb1d2f5d6f6f72', NULL, NULL, NULL),
(37, 0, 'Banjo michael', 'Keizzmann', '09083413680', 'Keizzmannbanjo@gmail.com', NULL, '59177c87a8bbbd849e85e279b8dac76cf7bea909', NULL, NULL, NULL),
(38, 0, 'Henry enwereaku', 'Moncadet', '08033227946', 'moncadet2000@gmail.com', NULL, '76a437a004859874447a3b4345eb0cc72b8ca775', NULL, NULL, NULL),
(39, 0, 'Gxdgdh hhhh', 'Yygcjfhfu', '08123234345', 'Dhdhc@dc.bb', NULL, '85136c79cbf9fe36bb9d05d0639c70c265c18d37', NULL, NULL, NULL),
(40, 0, 'Jude Lekan', 'judelekan', '08023045678', 'Judelekan@gmail.com', NULL, '5e6ca68abb32c18b375edb168ecc863a3c95bf7a', NULL, NULL, NULL),
(41, 0, 'Ekwueme Johnson', 'onyeocha Jesus 1', '07038897552', 'onyeochajesus50@gmail.com', NULL, 'a4a904c23d3d5bf46dc25e17d09fc95b08fb4fc5', NULL, NULL, NULL),
(42, 0, 'Precious One', 'preciousone', '08098983843', 'precious@mail.com', NULL, '$2y$10$dwqKn0DYMm.WTtieNxLIj.JG7P220oRaSr..9D8rDrKNYDpRUaT/C', 'zguslKX9YBl624Fm5ncbsVJRzMOapuVcQ9IPttRzIX9XyvTTkFIDXuAaKQZx', '2020-05-07 14:08:31', '2020-05-14 12:53:35'),
(45, 0, 'Precious One', 'preciousone1', '08098983845', 'preciousone@mail.com', NULL, '$2y$10$kjtiFk3n9DNqK/zzJCcDZO.hQjC/WD42sGlFMUy4sse.FiFsF/r1.', NULL, '2020-05-13 20:04:07', '2020-05-13 20:04:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `local_govts`
--
ALTER TABLE `local_govts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `local_govts_state_id_foreign` (`state_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_region_foreign` (`region_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `local_govts`
--
ALTER TABLE `local_govts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=775;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `local_govts`
--
ALTER TABLE `local_govts`
  ADD CONSTRAINT `local_govts_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_region_foreign` FOREIGN KEY (`region_id`) REFERENCES `local_govts` (`id`),
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
