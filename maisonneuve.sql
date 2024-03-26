-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 25 mars 2024 à 22:23
-- Version du serveur : 5.7.39
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `maisonneuve`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` json DEFAULT NULL,
  `texte` json DEFAULT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `texte`, `date`, `created_at`, `updated_at`, `user_id`) VALUES
(29, '{\"en\": \"The Benefits of Participating in Extracurricular Activities\", \"fr\": \"Les avantages de la participation aux activités parascolaires\"}', '{\"en\": \"Engaging in extracurricular activities can enrich your school experience by developing social skills, bolstering your resume, and allowing you to explore new interests. Discover how these activities can help you thrive outside of the classroom.\", \"fr\": \"Participer à des activités parascolaires peut enrichir votre expérience scolaire en développant des compétences sociales, en renforçant votre CV et en vous permettant de découvrir de nouveaux centres d\'intérêt. Découvrez comment ces activités peuvent vous aider à vous épanouir en dehors des cours.\"}', '2024-03-25', '2024-03-26 00:29:27', '2024-03-26 01:15:58', 732),
(30, '{\"en\": \"The Importance of Balancing Student Life and Personal Life\", \"fr\": \"L\'importance de l\'équilibre entre vie étudiante et vie personnelle\"}', '{\"en\": \"Finding balance between academic demands and your personal life is crucial for your mental and physical well-being. Explore practical tips for effectively managing your time and preserving your health during your studies.\", \"fr\": \"Trouver l\'équilibre entre les exigences scolaires et votre vie personnelle est essentiel pour votre bien-être mental et physique. Découvrez des conseils pratiques pour gérer votre temps efficacement et préserver votre santé pendant vos études.\"}', '2024-03-25', '2024-03-25 19:17:54', '2024-03-26 02:01:52', 731),
(31, '{\"en\": \"Effective Strategies for Exam Preparation\", \"fr\": \"Stratégies efficaces pour la préparation aux examens\"}', '{\"en\": \"Exam preparation can be stressful, but with the right strategies, you can maximize your academic success. Discover effective revision techniques, stress management tips, and ways to stay focused during your study sessions.\", \"fr\": \"La préparation aux examens peut être stressante, mais avec les bonnes stratégies, vous pouvez maximiser votre réussite académique. Découvrez des techniques de révision efficaces, des conseils de gestion du stress et des moyens de rester concentré pendant vos révisions.\"}', '2024-03-25', '2024-03-26 00:32:52', '2024-03-26 00:32:52', 732),
(32, '{\"en\": \"The Importance of Cultural Diversity in Learning\", \"fr\": \"L\'importance de la diversité culturelle dans l\'apprentissage\"}', '{\"en\": \"Cultural diversity enriches learning by offering diverse perspectives and fostering intercultural understanding. Explore how the inclusion of different cultures in the school environment can stimulate creativity and encourage mutual respect.\", \"fr\": \"La diversité culturelle enrichit l\'apprentissage en offrant des perspectives variées et en favorisant la compréhension interculturelle. Découvrez comment l\'inclusion de différentes cultures dans l\'environnement scolaire peut stimuler la créativité et encourager le respect mutuel.\"}', '2024-03-25', '2024-03-25 19:17:54', '2024-03-25 19:17:54', 731),
(33, '{\"en\": \"The Challenges of Distance Learning and How to Overcome Them\", \"fr\": \"Les défis de l\'apprentissage à distance et comment les surmonter\"}', '{\"en\": \"Distance learning presents unique challenges such as time management, motivation, and communication. Explore strategies to overcome these challenges and succeed in an online learning environment.\", \"fr\": \"L\'apprentissage à distance présente des défis uniques, tels que la gestion du temps, la motivation et la communication. Explorez des stratégies pour surmonter ces défis et réussir dans un environnement d\'apprentissage en ligne.\"}', '2024-03-25', '2024-03-26 00:32:52', '2024-03-26 00:32:52', 732),
(34, '{\"en\": \"The Impact of Social Media on Student Life\", \"fr\": \"L\'impact des réseaux sociaux sur la vie étudiante\"}', '{\"en\": \"Social media plays an increasingly significant role in student life, but its use can have both positive and negative effects. Discover how to manage your online presence responsibly and use social media as a tool for connection and learning.\", \"fr\": \"Les réseaux sociaux jouent un rôle croissant dans la vie étudiante, mais leur utilisation peut avoir des effets positifs et négatifs. Découvrez comment gérer votre présence en ligne de manière responsable et utiliser les réseaux sociaux comme outil de connexion et d\'apprentissage\"}', '2024-03-25', '2024-03-25 19:17:54', '2024-03-25 19:17:54', 731);

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_de_naissance` date NOT NULL,
  `ville_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `adresse`, `telephone`, `date_de_naissance`, `ville_id`, `created_at`, `updated_at`, `user_id`) VALUES
(1, '61217 McCullough Common\nKochtown, SD 87998', '+1-530-201-1191', '1998-08-24', 11, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 1),
(2, '2137 Lea Wells\nJermaineville, PA 51539-4173', '320.322.0877', '1999-05-12', 15, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 2),
(3, '723 McGlynn Brooks\nJonashaven, RI 86276', '+1-435-793-5796', '1999-11-10', 4, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 3),
(4, '871 Anderson Trace\nEast Richardfort, ME 36681-0287', '+1-501-804-7057', '1997-08-03', 10, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 4),
(5, '25817 Khalil Meadow Apt. 619\nAlfredaport, ND 01093-7604', '+1-214-548-6788', '2003-05-13', 11, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 5),
(6, '3828 Gleason Mission\nAngelinemouth, NV 85995', '475.573.8624', '1994-11-13', 5, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 6),
(7, '38069 Luettgen Knolls\nMayertfort, VT 23933-8948', '(253) 568-4391', '2003-12-06', 2, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 7),
(8, '609 Anita Neck Apt. 323\nSouth Ulisestown, MO 25829', '1-341-517-2433', '1995-12-24', 10, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 8),
(9, '25337 Hudson Parkway\nWest Jacky, HI 05405-0069', '+1-239-393-5663', '2003-08-15', 1, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 9),
(10, '74727 Verla Glen\nShaniechester, TN 66026', '1-224-635-4942', '2003-07-16', 13, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 10),
(11, '98755 Hettinger Springs Suite 220\nPort Vaughnmouth, NC 36841-7246', '+19709408259', '2003-03-05', 1, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 11),
(12, '35609 Johns Road Suite 522\nWest Aurore, OK 34888', '+1 (303) 895-8792', '2001-07-08', 10, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 12),
(13, '49196 Granville Throughway\nEast Delphineborough, MI 00000-9800', '+1.770.318.3503', '1996-06-17', 12, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 13),
(14, '833 Durgan Burgs\nEphraimside, MN 11569-5745', '+1-442-782-8101', '1997-05-15', 7, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 14),
(15, '246 Heathcote Mall\nRowemouth, VA 33850', '(559) 598-2179', '1999-12-13', 13, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 15),
(16, '33097 Vandervort Trail\nVandervortbury, OR 58968', '1-830-968-1724', '2002-05-21', 13, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 16),
(17, '667 Borer Avenue Apt. 588\nEast Saraibury, AR 71524', '+1-207-395-9757', '1994-05-10', 2, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 17),
(18, '45176 Emilie Hill Apt. 371\nHauckchester, NH 87399-3032', '+1 (463) 836-3536', '2003-11-24', 12, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 18),
(19, '228 Amiya Pine Suite 922\nFlavieland, DC 76109-4058', '+12728944409', '2000-01-17', 11, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 19),
(20, '100 Birdie Flat Apt. 096\nNew Guillermohaven, CO 39029', '+1-203-414-5037', '2001-08-26', 9, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 20),
(21, '7763 Weber Walk Apt. 167\nWest Javontemouth, CA 16925', '+17258960082', '2005-10-14', 14, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 21),
(22, '168 Jayde Estates\nBartellton, WV 62459-6519', '+1.959.391.0317', '2001-06-13', 3, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 22),
(23, '4132 Stacey Corner\nEast Lorenz, WA 94774', '+1 (820) 617-9475', '2003-08-24', 12, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 23),
(24, '418 Pollich Highway Suite 986\nEphraimland, NE 49375', '+1.680.516.0989', '1994-07-20', 3, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 24),
(25, '68402 Twila Port Suite 693\nRomagueraview, MI 86219', '+1 (361) 433-9092', '1998-03-08', 9, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 25),
(26, '41409 Morissette Circle\nEast Rylee, ME 92789-8298', '704-630-3586', '1997-02-09', 11, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 26),
(27, '7385 Frami Center\nLake Clemmieport, RI 83126', '1-979-885-9426', '1997-07-09', 7, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 27),
(28, '77684 Heloise Run\nLake Jamieborough, WV 52048-7813', '1-629-826-6145', '1995-01-06', 11, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 28),
(29, '2198 Elliott Via Apt. 935\nWest Rogeliomouth, MN 98774', '501-365-8931', '2000-09-22', 1, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 29),
(30, '96075 Chandler Pike\nStrackeburgh, ID 16527', '223.616.1166', '2000-06-22', 14, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 30),
(31, '86923 Block Lakes Apt. 479\nVernonville, MO 07289-0913', '380.540.3401', '2002-12-16', 6, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 31),
(32, '37182 Halie Orchard\nPort Jeffrey, AK 22761-8570', '832-653-6798', '1995-04-24', 1, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 32),
(33, '12695 Imogene Villages\nEast Freda, MI 20456-1854', '+1.432.324.2701', '2005-07-12', 10, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 33),
(34, '892 Carissa Motorway Suite 201\nNorth Dominicstad, WV 23995-7127', '848-502-4885', '2003-01-26', 5, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 34),
(35, '14393 Shanahan Greens Suite 752\nWest Ezraside, NY 43421-0301', '724.745.8831', '2001-08-29', 13, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 35),
(36, '3872 Matteo Isle\nLake Louveniahaven, ME 85447', '689-946-9810', '2002-03-17', 6, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 36),
(37, '6593 Quinten Cliff\nHerthafort, CA 08151', '+1-339-994-1265', '2002-10-24', 10, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 37),
(38, '683 Libby Falls Apt. 454\nEast Lonzo, OK 07953-2321', '667.593.8945', '2005-10-26', 8, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 38),
(39, '697 Elza Divide Apt. 125\nPort Floy, MI 79613-0373', '657.356.6673', '1996-02-17', 4, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 39),
(40, '147 Hassan Gardens Apt. 079\nSouth Juana, WY 27436', '432-275-5286', '1995-09-21', 12, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 40),
(41, '7514 Jenkins Plaza\nWest Allan, MA 34186', '1-570-431-7250', '1998-11-16', 7, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 41),
(42, '3694 Kris Lodge Suite 496\nLake Jaycee, HI 18908-4616', '+16825840584', '2000-12-24', 1, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 42),
(43, '5991 Elza Lake\nEast Zenaport, OR 00808', '(386) 888-8557', '1995-06-01', 9, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 43),
(44, '5616 Joyce Plaza Suite 242\nBotsfordberg, CA 59337-3569', '1-412-335-7973', '1994-12-26', 3, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 44),
(45, '881 Carter Fall\nPort Krisview, TN 69336-1659', '1-769-458-8330', '2000-06-11', 15, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 45),
(46, '147 Tromp Views\nSchmidtton, NH 23064-1691', '+1-954-799-4611', '1998-02-24', 11, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 46),
(47, '56059 Torphy Haven Apt. 795\nNevahaven, LA 38737', '989-522-5554', '1994-09-29', 5, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 47),
(48, '4833 Fritsch Junctions Apt. 360\nDestinyport, WY 78209-5115', '1-954-460-2898', '1999-10-22', 13, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 48),
(49, '139 Swift Ferry\nLake Rosarioview, CO 69713', '+1 (616) 363-8775', '1999-03-07', 10, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 49),
(50, '2435 Keely Estate\nFerminville, WY 82250', '(906) 628-7718', '1997-02-19', 12, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 50),
(51, '346 Astrid Freeway\nRolfsonmouth, LA 06155-8649', '1-828-485-4472', '2002-04-20', 9, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 51),
(52, '90166 Altenwerth Forges\nBergnaumland, GA 18282-9410', '480-308-6473', '2000-09-18', 12, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 52),
(53, '216 Zboncak Mission Apt. 221\nPort Roxaneton, NH 04435', '757.891.5787', '2004-01-03', 4, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 53),
(54, '523 Boehm Mews\nLebsackshire, UT 11999', '+14844834741', '2005-03-09', 2, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 54),
(55, '27135 Sipes Prairie Apt. 541\nPagacmouth, MD 80336-5543', '239-714-4080', '1998-08-20', 5, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 55),
(56, '45191 Gregory Points\nWest Korbin, CT 64186', '(248) 234-1852', '2002-02-23', 14, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 56),
(57, '277 Enid Centers Apt. 263\nEstelleview, WI 72307', '+1.838.288.7044', '1998-12-04', 7, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 57),
(58, '2227 Bauch Common Apt. 785\nWest Nedraland, OK 13953-9726', '1-220-489-9807', '2000-06-14', 11, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 58),
(59, '3340 Marisa Crossroad\nWest Shainachester, AL 82007', '209.952.9914', '1999-11-08', 5, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 59),
(60, '8936 Bailee Lodge Apt. 481\nPort Paulside, MO 74549-7099', '(785) 446-1393', '2004-09-03', 10, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 60),
(61, '7785 Bins Keys Suite 233\nRogersside, AR 22630', '(484) 647-6880', '1994-12-28', 15, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 61),
(62, '1813 Thelma Cliff Suite 846\nWest Jonathan, ID 94878', '978-495-1311', '2003-12-19', 5, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 62),
(63, '5393 Howe Bypass Suite 697\nNorth Kennithchester, FL 20033', '1-231-294-3995', '1995-07-14', 14, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 63),
(64, '548 Audie Tunnel Apt. 455\nToyview, VT 70447-7924', '(726) 965-9699', '1997-02-26', 6, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 64),
(65, '82048 Nina Viaduct Apt. 550\nLake Alexandreaborough, KY 51515-5293', '+1-228-563-8272', '2000-10-26', 4, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 65),
(66, '651 King Summit\nPort Ulises, MS 47787', '+1 (385) 416-8419', '1997-06-04', 15, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 66),
(67, '6009 Hills Centers\nJazmintown, UT 81542', '720.955.2254', '2001-11-10', 10, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 67),
(68, '599 Cheyenne Expressway Apt. 364\nWest Raina, GA 68267-2167', '1-541-436-4470', '1996-09-06', 14, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 68),
(69, '4034 Bergstrom Cape\nWest Madalineberg, MS 44485', '(765) 888-7563', '2006-02-11', 8, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 69),
(70, '4292 Robel View Suite 907\nPort Vallie, AR 40498', '+1-930-739-1574', '2005-07-22', 2, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 70),
(71, '728 Emory Flats\nEliseohaven, MA 55636', '(502) 820-2852', '2000-04-28', 7, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 71),
(72, '62140 Timothy Plains Suite 481\nHayeshaven, SD 93578-2406', '210-667-7689', '1995-10-26', 8, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 72),
(73, '490 Cristal Loop Suite 424\nKeyonton, LA 31538', '+1.430.712.6967', '2001-07-09', 4, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 73),
(74, '304 Gleason Loaf Suite 643\nKulasborough, WV 10125', '332-323-4276', '2005-08-11', 10, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 74),
(75, '5523 Francisco Gardens Suite 038\nPort Jazmin, MI 54151', '+1-727-878-0379', '2005-10-14', 11, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 75),
(76, '787 Volkman Loaf Suite 816\nKolbyview, NJ 15377', '1-573-405-3403', '2000-06-11', 12, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 76),
(77, '210 Weimann Field Apt. 815\nHenryview, NM 48759', '1-402-304-4864', '2003-02-10', 15, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 77),
(78, '81716 Brekke Plaza Apt. 129\nPort Foster, GA 22019', '680-930-1086', '1996-01-04', 3, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 78),
(79, '158 Christina Expressway Apt. 583\nCyrilshire, MO 58133', '689-409-8258', '1995-05-19', 2, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 79),
(80, '989 Hallie Route Suite 097\nHeathcoteton, FL 68581-5804', '1-903-839-0720', '2002-06-01', 3, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 80),
(81, '8655 Herman Branch Suite 068\nShaniyaborough, CT 12345', '+1-973-745-4257', '1999-02-02', 14, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 81),
(82, '816 Brooks Knoll\nPfannerstillstad, MS 17259', '(913) 799-0047', '2000-09-17', 3, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 82),
(83, '60715 Demario Island\nLake Jenifer, RI 31887-8145', '+1.424.591.5626', '2001-09-11', 12, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 83),
(84, '48336 Thiel Tunnel\nCummingstown, AK 23473-2409', '+1-301-464-1122', '1995-02-10', 14, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 84),
(85, '5227 Grimes Mountain\nSouth Athenahaven, UT 47179', '1-336-775-0528', '2001-08-02', 9, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 85),
(86, '22980 Powlowski Rapid\nRextown, NH 39744-3185', '323.458.4138', '1999-08-29', 7, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 86),
(87, '9139 Reed Mews Suite 699\nLake Revahaven, NY 79100-7546', '1-609-213-4906', '1995-01-31', 6, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 87),
(88, '530 Bednar Canyon Apt. 614\nPort Arelyshire, TX 91696-3193', '+15702701661', '2004-12-15', 15, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 88),
(89, '32583 Kris Branch Apt. 037\nBoganville, VT 78639', '1-480-335-8245', '1994-08-13', 3, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 89),
(90, '641 Thiel Street\nAdelineburgh, TN 01425-9979', '1-712-703-4068', '2005-06-13', 11, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 90),
(91, '289 Torp Radial Apt. 407\nSolonberg, ID 71926-3645', '+1.907.845.6690', '1998-10-15', 10, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 91),
(92, '8705 Bins Courts\nDickensbury, OK 39727', '762-879-1562', '2002-12-17', 10, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 92),
(93, '4888 Adella Island\nAidabury, KS 72496', '+1 (305) 661-1041', '2001-11-07', 4, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 93),
(94, '446 Piper Point\nWest Tania, CO 79187-3076', '947-895-5762', '2005-06-24', 8, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 94),
(95, '882 Marta Parkway\nEast Raphaelleshire, OH 98090-0294', '1-269-796-9176', '2002-07-29', 9, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 95),
(96, '538 Alisha Key\nPort Flavie, RI 51906-6778', '681-905-6906', '2001-12-08', 5, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 96),
(97, '67714 Kaela Inlet\nSouth Toniton, WI 73912', '+1-754-497-7849', '2003-03-26', 1, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 97),
(98, '51627 Ayana Rest\nNorth Busterland, MI 99179', '+1.808.297.6443', '2002-05-18', 15, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 98),
(99, '4244 Jordy Place\nWest Marielleberg, DC 41581-5290', '747-710-2202', '2004-08-20', 5, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 99),
(100, '4010 Keira Islands\nNorth Breanashire, MD 55720-0026', '+12818748804', '1997-04-11', 7, '2024-03-20 02:26:29', '2024-03-20 02:26:29', 100),
(101, '3475 rue Saint-Urbain', '4506269146', '1998-04-16', 13, '2024-03-25 09:41:48', '2024-03-25 09:41:48', 731),
(121, '14 rue Panet', '4506269148', '2000-03-26', 12, '2024-03-26 00:06:05', '2024-03-26 00:06:05', 732);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_13_154930_create_villes_table', 1),
(6, '2024_02_14_154922_create_étudiants_table', 1),
(7, '2024_03_18_215602_create_articles_table', 2),
(8, '2024_03_18_220306_create_categories_table', 3),
(9, '2024_03_19_213723_add_user_id_to_etudiants_table', 4);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `repertoires`
--

CREATE TABLE `repertoires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fichier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chemin_fichier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre` json NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `repertoires`
--

INSERT INTO `repertoires` (`id`, `fichier`, `chemin_fichier`, `titre`, `date`, `created_at`, `updated_at`, `user_id`) VALUES
(17, 'N7fUlmz7Gei7HDq5S5POBGpvldxrl4xbCGRJI0FI.pdf', 'fichiers/N7fUlmz7Gei7HDq5S5POBGpvldxrl4xbCGRJI0FI.pdf', '{\"en\": \"File Test\", \"fr\": \"Test fichier\"}', '2024-03-26', '2024-03-25 19:18:38', '2024-03-26 02:16:35', 731),
(19, '1ROr5aFSL8fb7tXr3MM3TIfGuoRCH7M6XOBtdRP5.pdf', 'fichiers/1ROr5aFSL8fb7tXr3MM3TIfGuoRCH7M6XOBtdRP5.pdf', '{\"en\": \"Test\", \"fr\": null}', '2024-03-25', '2024-03-26 01:22:51', '2024-03-26 02:18:02', 732),
(20, 'd96DXoGo5ER3zjROEnTc1NIXrYh5vdCzumSVafJI.pdf', 'fichiers/d96DXoGo5ER3zjROEnTc1NIXrYh5vdCzumSVafJI.pdf', '{\"en\": \"File Test\", \"fr\": \"Test fichier\"}', '2024-03-26', '2024-03-25 19:18:38', '2024-03-26 02:16:55', 731),
(21, 'Ly8HfhWs312OrJ6VnDUJlaTPtehd9Xan6KPdIpxo.pdf', 'fichiers/Ly8HfhWs312OrJ6VnDUJlaTPtehd9Xan6KPdIpxo.pdf', '{\"en\": \"Test\", \"fr\": \"Test\"}', '2024-03-25', '2024-03-26 01:22:51', '2024-03-26 02:19:48', 732),
(22, 'IhLrSsLYTREMtTp1BdUn5FzoGkLFAkDZxFDGvGP2.pdf', 'fichiers/IhLrSsLYTREMtTp1BdUn5FzoGkLFAkDZxFDGvGP2.pdf', '{\"en\": \"File Test\", \"fr\": \"Test fichier\"}', '2024-03-26', '2024-03-25 19:18:38', '2024-03-26 02:17:09', 731),
(23, 'PQzLBbtWr5QJR6yaGbGxOol2lMpJHMcnEHWewlS2.pdf', 'fichiers/PQzLBbtWr5QJR6yaGbGxOol2lMpJHMcnEHWewlS2.pdf', '{\"en\": \"Test\", \"fr\": null}', '2024-03-25', '2024-03-26 01:22:51', '2024-03-26 02:18:34', 732),
(24, 'NHYY2N04pH6E9K7Ad0AAVDoeHasyvJkndUezDS32.pdf', 'fichiers/NHYY2N04pH6E9K7Ad0AAVDoeHasyvJkndUezDS32.pdf', '{\"en\": \"File Test\", \"fr\": \"Test fichier\"}', '2024-03-26', '2024-03-25 19:18:38', '2024-03-26 02:17:21', 731);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bethel West', 'xbins@murray.com', NULL, '123456', NULL, NULL, NULL),
(2, 'Eleonore Schmidt', 'amir.klein@boehm.com', NULL, '123456', NULL, NULL, NULL),
(3, 'Aileen Ankunding', 'lkling@kunde.info', NULL, '123456', NULL, NULL, NULL),
(4, 'Hank Hammes', 'wbradtke@gmail.com', NULL, '123456', NULL, NULL, NULL),
(5, 'Madisyn Kreiger', 'flarson@gmail.com', NULL, '123456', NULL, NULL, NULL),
(6, 'Khalil Ward', 'hilpert.florida@yahoo.com', NULL, '123456', NULL, NULL, NULL),
(7, 'Jackeline Hauck', 'sjohns@yahoo.com', NULL, '123456', NULL, NULL, NULL),
(8, 'Elody Macejkovic', 'predovic.felton@mclaughlin.com', NULL, '123456', NULL, NULL, NULL),
(9, 'Avery Prohaska', 'usteuber@denesik.com', NULL, '123456', NULL, NULL, NULL),
(10, 'Joana Cormier', 'garry.kiehn@gmail.com', NULL, '123456', NULL, NULL, NULL),
(11, 'Nadia Lemke', 'hermann.casper@cummings.com', NULL, '123456', NULL, NULL, NULL),
(12, 'Abel O\'Connell', 'chaim61@yahoo.com', NULL, '123456', NULL, NULL, NULL),
(13, 'Keagan Veum', 'jwalker@yahoo.com', NULL, '123456', NULL, NULL, NULL),
(14, 'Brionna Crist', 'veda.rosenbaum@hotmail.com', NULL, '123456', NULL, NULL, NULL),
(15, 'Gillian Stroman', 'hkutch@gmail.com', NULL, '123456', NULL, NULL, NULL),
(16, 'Jalon Daniel', 'enrique.harris@ohara.com', NULL, '123456', NULL, NULL, NULL),
(17, 'Lauriane Mohr', 'ernestine.wiza@hirthe.org', NULL, '123456', NULL, NULL, NULL),
(18, 'Eliezer Ondricka', 'gerhold.ova@yahoo.com', NULL, '123456', NULL, NULL, NULL),
(19, 'Carmella Swaniawski', 'lueilwitz.samara@labadie.net', NULL, '123456', NULL, NULL, NULL),
(20, 'Matilde Hodkiewicz', 'weber.glenda@gerhold.com', NULL, '123456', NULL, NULL, NULL),
(21, 'Desiree Dach', 'krystel.yost@howell.net', NULL, '123456', NULL, NULL, NULL),
(22, 'Stephon Cronin', 'flavio.grady@hotmail.com', NULL, '123456', NULL, NULL, NULL),
(23, 'Andreanne Cremin', 'ebalistreri@walker.biz', NULL, '123456', NULL, NULL, NULL),
(24, 'Mckenna Walker', 'morissette.jeramie@yahoo.com', NULL, '123456', NULL, NULL, NULL),
(25, 'Patience Connelly', 'milo86@gmail.com', NULL, '123456', NULL, NULL, NULL),
(26, 'Reese Huel', 'green.josianne@yahoo.com', NULL, '123456', NULL, NULL, NULL),
(27, 'Joshuah Mann', 'mollie72@yahoo.com', NULL, '123456', NULL, NULL, NULL),
(28, 'Shyanne Huel', 'alberto.erdman@gmail.com', NULL, '123456', NULL, NULL, NULL),
(29, 'Vicenta Maggio', 'neoma62@lind.com', NULL, '123456', NULL, NULL, NULL),
(30, 'Brennan Yundt', 'breanne11@wuckert.com', NULL, '123456', NULL, NULL, NULL),
(31, 'Toby Schimmel', 'irving.volkman@hotmail.com', NULL, '123456', NULL, NULL, NULL),
(32, 'Haven Hintz', 'sterling92@wunsch.com', NULL, '123456', NULL, NULL, NULL),
(33, 'Dylan Lockman', 'eloisa70@langosh.com', NULL, '123456', NULL, NULL, NULL),
(34, 'Fae Hirthe', 'rashawn32@gmail.com', NULL, '123456', NULL, NULL, NULL),
(35, 'Coty Cronin', 'russ23@yahoo.com', NULL, '123456', NULL, NULL, NULL),
(36, 'Anita Little', 'jnicolas@gmail.com', NULL, '123456', NULL, NULL, NULL),
(37, 'Mariano Hyatt', 'abbey.franecki@hotmail.com', NULL, '123456', NULL, NULL, NULL),
(38, 'Jovani Ryan', 'lbotsford@hahn.biz', NULL, '123456', NULL, NULL, NULL),
(39, 'Daisha Windler', 'bkiehn@hackett.biz', NULL, '123456', NULL, NULL, NULL),
(40, 'Jaden Dach', 'gusikowski.heber@gmail.com', NULL, '123456', NULL, NULL, NULL),
(41, 'Sammie Abshire', 'gislason.charley@yahoo.com', NULL, '123456', NULL, NULL, NULL),
(42, 'Maurice Labadie', 'nkoepp@aufderhar.biz', NULL, '123456', NULL, NULL, NULL),
(43, 'Nelda Fahey', 'laurianne.smitham@rice.com', NULL, '123456', NULL, NULL, NULL),
(44, 'Jaron Denesik', 'flatley.heather@yahoo.com', NULL, '123456', NULL, NULL, NULL),
(45, 'Vaughn Robel', 'grippin@lakin.com', NULL, '123456', NULL, NULL, NULL),
(46, 'Carli Harris', 'patsy00@yahoo.com', NULL, '123456', NULL, NULL, NULL),
(47, 'Mohammed Murazik', 'nwolff@hotmail.com', NULL, '123456', NULL, NULL, NULL),
(48, 'Rico Mohr', 'winston58@miller.com', NULL, '123456', NULL, NULL, NULL),
(49, 'Estefania Walsh', 'luna02@huels.info', NULL, '123456', NULL, NULL, NULL),
(50, 'Lori Dare', 'otis.hegmann@cole.com', NULL, '123456', NULL, NULL, NULL),
(51, 'Savanah Botsford', 'carmela.thompson@tromp.org', NULL, '123456', NULL, NULL, NULL),
(52, 'Kaylee O\'Connell', 'zdaugherty@oreilly.com', NULL, '123456', NULL, NULL, NULL),
(53, 'Erling Hermiston', 'zlubowitz@yahoo.com', NULL, '123456', NULL, NULL, NULL),
(54, 'Ruth Klein', 'nicola16@durgan.info', NULL, '123456', NULL, NULL, NULL),
(55, 'Demetrius Purdy', 'abel.mayert@quitzon.com', NULL, '123456', NULL, NULL, NULL),
(56, 'Pearline Steuber', 'geoffrey.krajcik@yahoo.com', NULL, '123456', NULL, NULL, NULL),
(57, 'Vallie Gislason', 'xlarson@hotmail.com', NULL, '123456', NULL, NULL, NULL),
(58, 'Norberto Hirthe', 'arnoldo.macejkovic@kohler.com', NULL, '123456', NULL, NULL, NULL),
(59, 'Baylee Stamm', 'tremblay.kamren@hotmail.com', NULL, '123456', NULL, NULL, NULL),
(60, 'Ferne Schaefer', 'sarina.little@hotmail.com', NULL, '123456', NULL, NULL, NULL),
(61, 'Lessie Kovacek', 'dkrajcik@yahoo.com', NULL, '123456', NULL, NULL, NULL),
(62, 'Meagan Jakubowski', 'oliver20@casper.org', NULL, '123456', NULL, NULL, NULL),
(63, 'Rachelle Parisian', 'bruce17@tillman.info', NULL, '123456', NULL, NULL, NULL),
(64, 'Adela Wehner', 'johnpaul23@hotmail.com', NULL, '123456', NULL, NULL, NULL),
(65, 'Fletcher Hirthe', 'alfredo.ziemann@hill.biz', NULL, '123456', NULL, NULL, NULL),
(66, 'Tia Ernser', 'adams.faye@pacocha.net', NULL, '123456', NULL, NULL, NULL),
(67, 'Wava Turcotte', 'ilemke@gmail.com', NULL, '123456', NULL, NULL, NULL),
(68, 'Devan Denesik', 'kallie.hansen@kshlerin.biz', NULL, '123456', NULL, NULL, NULL),
(69, 'Americo Breitenberg', 'koepp.madalyn@weissnat.net', NULL, '123456', NULL, NULL, NULL),
(70, 'Sasha Kunze', 'mikel.lebsack@gmail.com', NULL, '123456', NULL, NULL, NULL),
(71, 'Jolie Osinski', 'vheidenreich@gmail.com', NULL, '123456', NULL, NULL, NULL),
(72, 'Mathilde Quigley', 'walter.aracely@hotmail.com', NULL, '123456', NULL, NULL, NULL),
(73, 'Barbara Lindgren', 'breanna.rogahn@muller.com', NULL, '123456', NULL, NULL, NULL),
(74, 'Breana Lakin', 'amya17@hotmail.com', NULL, '123456', NULL, NULL, NULL),
(75, 'Lydia Lakin', 'natalia14@runolfsson.net', NULL, '123456', NULL, NULL, NULL),
(76, 'Norwood Powlowski', 'vsauer@yahoo.com', NULL, '123456', NULL, NULL, NULL),
(77, 'Micah Schaden', 'lesch.calista@yahoo.com', NULL, '123456', NULL, NULL, NULL),
(78, 'Alfonso Bauch', 'naomie.hegmann@gmail.com', NULL, '123456', NULL, NULL, NULL),
(79, 'Ruth Cruickshank', 'dglover@gmail.com', NULL, '123456', NULL, NULL, NULL),
(80, 'Tyra Hermann', 'psauer@hotmail.com', NULL, '123456', NULL, NULL, NULL),
(81, 'Jalen Feil', 'crona.kristin@yahoo.com', NULL, '123456', NULL, NULL, NULL),
(82, 'Rhett Stark', 'nconnelly@hotmail.com', NULL, '123456', NULL, NULL, NULL),
(83, 'Orrin Marks', 'smante@hartmann.net', NULL, '123456', NULL, NULL, NULL),
(84, 'Leonora Kuvalis', 'johnnie.bode@morissette.info', NULL, '123456', NULL, NULL, NULL),
(85, 'Destini Stoltenberg', 'celine77@hotmail.com', NULL, '123456', NULL, NULL, NULL),
(86, 'Ettie Ledner', 'bfeeney@dach.biz', NULL, '123456', NULL, NULL, NULL),
(87, 'Damon Williamson', 'katlynn46@lynch.com', NULL, '123456', NULL, NULL, NULL),
(88, 'Maurine Bernhard', 'dbeer@rau.com', NULL, '123456', NULL, NULL, NULL),
(89, 'Phoebe Pouros', 'barry.schroeder@gmail.com', NULL, '123456', NULL, NULL, NULL),
(90, 'Blair Bogisich', 'ugraham@yahoo.com', NULL, '123456', NULL, NULL, NULL),
(91, 'Dane Jerde', 'eunice37@lakin.com', NULL, '123456', NULL, NULL, NULL),
(92, 'Mara Purdy', 'feest.cathy@olson.com', NULL, '123456', NULL, NULL, NULL),
(93, 'Wilton Murazik', 'marcella.konopelski@greenholt.com', NULL, '123456', NULL, NULL, NULL),
(94, 'Dashawn Toy', 'schiller.hiram@yahoo.com', NULL, '123456', NULL, NULL, NULL),
(95, 'Lavinia Prosacco', 'wyman.alana@hotmail.com', NULL, '123456', NULL, NULL, NULL),
(96, 'Sydnie Shields', 'stokes.cheyenne@denesik.com', NULL, '123456', NULL, NULL, NULL),
(97, 'Kristian Lockman', 'erdman.murray@botsford.com', NULL, '123456', NULL, NULL, NULL),
(98, 'Golden Cormier', 'krogahn@hotmail.com', NULL, '123456', NULL, NULL, NULL),
(99, 'Geovany Satterfield', 'stracke.hester@west.biz', NULL, '123456', NULL, NULL, NULL),
(100, 'Lionel Effertz', 'vandervort.gilbert@yahoo.com', NULL, '123456', NULL, NULL, NULL),
(731, 'Aitana Malevialle', 'aitanamalevialle@gmail.com', NULL, '$2y$12$U0VIrHde4dtoQGB4Oq1jsu2GXybPKTFSJjNRnAsQ9jwG.IbekM5S2', NULL, '2024-03-25 09:41:48', '2024-03-25 09:41:48'),
(732, 'Maelle Andre', 'maelleandre@gmail.com', NULL, '$2y$12$52gfLTlvYnaGC4jdtsHjv.Hoz/8W1oYzhY1iymeg/E/ezUf7O1tt6', NULL, '2024-03-26 00:06:05', '2024-03-26 00:06:05');

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'Thielport', '2024-02-14 21:25:08', '2024-02-14 21:25:08'),
(2, 'West Willfurt', '2024-02-14 21:25:08', '2024-02-14 21:25:08'),
(3, 'West Micheleton', '2024-02-14 21:25:08', '2024-02-14 21:25:08'),
(4, 'East Randallfort', '2024-02-14 21:25:08', '2024-02-14 21:25:08'),
(5, 'South Catherinemouth', '2024-02-14 21:25:08', '2024-02-14 21:25:08'),
(6, 'Reginaldtown', '2024-02-14 21:25:08', '2024-02-14 21:25:08'),
(7, 'Port Wendyfort', '2024-02-14 21:25:08', '2024-02-14 21:25:08'),
(8, 'Kristofershire', '2024-02-14 21:25:08', '2024-02-14 21:25:08'),
(9, 'New Tracybury', '2024-02-14 21:25:08', '2024-02-14 21:25:08'),
(10, 'North Trevor', '2024-02-14 21:25:08', '2024-02-14 21:25:08'),
(11, 'Willyport', '2024-02-14 21:25:08', '2024-02-14 21:25:08'),
(12, 'Mayertbury', '2024-02-14 21:25:08', '2024-02-14 21:25:08'),
(13, 'New Ericaville', '2024-02-14 21:25:08', '2024-02-14 21:25:08'),
(14, 'Bernhardview', '2024-02-14 21:25:08', '2024-02-14 21:25:08'),
(15, 'New Lonniefurt', '2024-02-14 21:25:08', '2024-02-14 21:25:08');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_articles_user_id` (`user_id`) USING BTREE;

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_etudiants_ville_id` (`ville_id`),
  ADD KEY `fk_etudiants_user_id` (`user_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `repertoires`
--
ALTER TABLE `repertoires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `repertoires`
--
ALTER TABLE `repertoires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=733;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `fk_article_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_user_id_articles` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD CONSTRAINT `fk_etudiant_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `étudiants_ville_id_foreign` FOREIGN KEY (`ville_id`) REFERENCES `villes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `repertoires`
--
ALTER TABLE `repertoires`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
