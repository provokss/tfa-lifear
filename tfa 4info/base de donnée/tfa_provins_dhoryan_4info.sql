-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 12 juin 2023 à 13:36
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tfa provins dhoryan 4info`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id_article` int(11) NOT NULL,
  `image` varchar(300) NOT NULL,
  `type` int(11) NOT NULL,
  `price` float NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id_article`, `image`, `type`, `price`, `name`, `description`) VALUES
(1, 'appareil-de-mesure-du-no-exhale-evernoa.jpg', 1, 990, 'Mesure du NO exhalé, EVERNOA', 'Evernoa est un dispositif portable de mesure du FeNO qui a fait l’objet d’études cliniques. Rapide et très précis, il facilite le diagnostic et la surveillance de l’asthme en fournissant des informations utiles sur l’inflammation des voies respiratoires.'),
(2, 'Kits de tests pour mesure du FeNO EVERNOA.jpg', 1, 150, 'Kits de 100 tests pour mesure du FeNO EVERNOA', 'Evernoa est un dispositif portable de mesure du FeNO qui a fait l’objet d’études cliniques. Rapide et très précis, il facilite le diagnostic et la surveillance de l’asthme en fournissant des informations utiles sur l’inflammation des voies respiratoires. Avec ce kit, vous pourrez réaliser 100 tests (durée de validité 18 mois)'),
(3, 'Kits de tests pour mesure du FeNO EVERNOA.jpg', 1, 450, 'Kits de 300 tests pour mesure du FeNO EVERNOA', 'Evernoa est un dispositif portable de mesure du FeNO qui a fait l’objet d’études cliniques. Rapide et très précis, il facilite le diagnostic et la surveillance de l’asthme en fournissant des informations utiles sur l’inflammation des voies respiratoires. Avec ce kit, vous pourrez réaliser 300 tests (durée de validité 18 mois)'),
(4, 'Kits de tests pour mesure du FeNO EVERNOA.jpg', 1, 750, 'Kits de 500 tests pour mesure du FeNO EVERNOA', 'Evernoa est un dispositif portable de mesure du FeNO qui a fait l’objet d’études cliniques. Rapide et très précis, il facilite le diagnostic et la surveillance de l’asthme en fournissant des informations utiles sur l’inflammation des voies respiratoires. Avec ce kit, vous pourrez réaliser 500 tests (durée de validité 18 mois)'),
(5, 'minispir-light-spirometre-connecte-avec-test-post-broncho-dilatateur.jpg', 2, 990, 'Spiromètre connecté avec test post broncho-dilatateur, MINISPIR LIGHT®', 'MINISPIR LIGHT® MIR, spiromètre USB connecté avec test post broncho-dilatateur, mesure les paramètres essentiels pour un diagnostic de spirométrie et s’avère idéal pour le médecin généraliste par simplicité et la rapidité d’affichage des mesures : CVF, CV, VEMS, VEM6, VEMS/CVF, DEP, DEM25-75%, CVIF, âge pulmonaire, CVI.\r\n\r\nLe dépistage de l’asthme et la BPCO n’a jamais été aussi intuitif et peu coûteux'),
(6, 'spirometre-connecte-new-minispir-pour-une-analyse-respiratoire-complete.jpg', 2, 1305, 'Spiromètre connecté NEW MINISPIR ® : pour une analyse respiratoire complète', 'Spiromètre connecté à un PC via USB, le NEW MINISPIR ® est un mini laboratoire multifonctions pour une analyse respiratoire complète.\r\n\r\nIl fonctionne avec le logiciel WINSPIROPRO® qui peut être aisément interfacé à une base de données ou à un logiciel hospitalier.'),
(7, 'spirodoc-spirometre-de-poche-a-ecran-tactile-4-en-1.jpg', 2, 1900, 'Spiromètre à écran tactile 4 en 1, SPIRODOC', 'Spiromètre à écran tactile 4 en 1, SPIRODOC se décline en 3 versions : spiromètre, oxymètre, spiromètre avec oxymétrie. Il permet donc de nombreuses utilisations.'),
(8, 'spirometre-portable-spirobank-ii-advanced-mini-laboratoire-portatif.jpg', 2, 1320, 'Spiromètre portable SPIROBANK II Advanced, Mini laboratoire portatif', 'Spirobank II advanced est un spiromètre portable MIR, véritable mini laboratoire de poche qui fonctionne avec le logiciel Winspiro PRO® pour PC.'),
(9, 'spirometre-portable-spirobank-ii-advanced-plus-spirometrie-et-oxymetrie.jpg', 2, 1500, 'Spiromètre portable SPIROBANK II Advanced Plus, spirométrie et oxymétrie', 'Spiromètre portable et connecté le SPIROBANK II Advanced Plus offre une spirométrie complète avec option oxymétrie.\r\n\r\n\r\n'),
(10, 'spirometre-de-poche-spirobank-ii-basic.jpg', 2, 1200, 'Spiromètre SPIROBANK II basic', 'Le SPIROBANK II basic, est le spiromètre idéal pour dépister et le suivre les patients. Il s’adresse aux Médecins de famille, médecine du travail, kinésithérapeutes,…'),
(11, 'turbines-mono-patient-pour-spirometres-mir-60-pcs.jpg', 2, 174, 'Turbines mono-patient pour spiromètres MIR (60 pcs)', 'Les turbines mono-patient pour spiromètres MIR, Flowmir®, pour spiromètres MIR, fonctionnent avec tous les spiromètres MIR : Minispir Light, new Minispir, Spirobank II, Spirolab, Spirodoc,…'),
(12, 'spirometre-connecte-ios-et-android-pneumoconnect-sur-tablette-depistage-maladies-respiratoires.jpg', 2, 600, 'Spiromètre connecté IOS et Android : PneumoConnect sur tablette, dépistage maladies respiratoires', 'PneumoConnect sur tablette, dépistage maladies respiratoires.\r\n\r\nPneumoConnect est une  solution compacte pour tablette (IOS et Androïd) permettant  un dépistage précoce et rapide des maladies respiratoires.\r\n\r\nIl permet d’effectuer un test de souffle à l’aide d’un spiromètre connecté à une tablette en Bluetooth et sa base de données regroupe la liste des patients ainsi que l’historique de leurs tests.'),
(13, 'pack-pneumo-pharma-suivi-des-maladies-chroniques-en-officine-ios-et-android.jpg', 2, 834, 'Suivi des maladies chroniques en officine, Pack PNEUMO Pharma', 'Pack PNEUMO Pharma : suivi des maladies chroniques en officine. Il comprend :\r\n\r\n1 Spirobank Smart (mesures : DEP, CVF, VEMS, VEM6)\r\n1 an d’accès à la plateforme sécurisé PneumoPharma (hébergeur sécurisé HDS)\r\n2 boites de turbines Flowmir monopatient\r\n1 embout pédiatrique réutilisable.\r\nEN OPTION : tablette Archos (9,7″)'),
(14, 'pince-nez-re-utilisable.jpg', 2, 23, 'Pince-nez ré-utilisable par 10', 'Pince-nez ré-utilisable par 10'),
(15, 'pince-nez-re-utilisable.jpg', 2, 195, 'Pince-nez ré-utilisable par 100', 'Pince-nez ré-utilisable par 100'),
(16, 'pince-nez-mono-patient-jetable.jpg', 2, 10, 'Pince-nez mono-patient (jetable) par 10', 'v+Pince-nez mono-patient (jetable) par 10'),
(17, 'pince-nez-mono-patient-jetable.jpg', 2, 81, 'Pince-nez mono-patient (jetable) par 100', 'Pince-nez mono-patient (jetable) par 100'),
(18, 'spirometre-connecte-ios-spirobank-ii-smart-pour-ipad-spirometre.jpg', 2, 1200, 'Spiromètre SPIROBANK II SMART pour iPad avec oxymétrie', 'Le spiromètre SPIROBANK II Smart fonctionne avec un iPad. C\'est le spiromètre portable idéal pour dépister et suivre les patients. Il s’adresse aux Médecins de famille, médecine du travail, kinésithérapeutes,…'),
(19, 'spirometre-connecte-ios-spirobank-ii-smart-pour-ipad-spirometre.jpg', 2, 1000, 'Spiromètre SPIROBANK II SMART pour iPad', 'Le spiromètre SPIROBANK II Smart fonctionne avec un iPad. C\'est le spiromètre portable idéal pour dépister et suivre les patients. Il s’adresse aux Médecins de famille, médecine du travail, kinésithérapeutes,…'),
(20, 'capteur-silicone-enfant-pour-oxymetre-professionnel-de-poignet.jpg', 2, 22, 'Velcro PC60E, 100 mm pour capteur nourrisson (oxymètre de pouls)', 'Velcro PC60E, 100 mm pour capteur nourrisson (oxymètre de pouls)'),
(21, 'capteur-silicone-enfant-pour-oxymetre-professionnel-de-poignet.jpg', 2, 24, 'Velcro PC60E, 130 mm pour capteur nourrisson (oxymètre de pouls)', 'Velcro PC60E, 130 mm pour capteur nourrisson (oxymètre de pouls)'),
(22, 'polywatch-depistage-et-aide-au-diagnostic-de-lapnee-du-sommeil.jpg', 3, 537, 'Apnée du sommeil, PolyWatch dépistage et aide au diagnostic', 'Dépistage et aide au diagnostic de l’apnée du sommeil, PolyWatch YH-600B Pro permet, simplement et à domicile, d’effectuer un examen nocturne du sommeil grâce à un oxymètre de poignet. Son logiciel très complet délivre un rapport du test de sommeil et un diagnostic précis*.\r\n\r\n*Ce diagnostic doit être validé par un professionnel de santé formé au diagnostic des pathologies du sommeil'),
(23, 'capteur-silicone-enfant-pour-oxymetre-professionnel-de-poignet-pc68b.jpg', 3, 42, 'Capteur nourrisson pour PC68B oxymètre professionnel de poignet', '\r\nCapteur nourrisson \"velcro\" pour oxymètre de poignet PC68B.  Il est livré seul sans l’oxymètre PC68B'),
(24, 'oxymetre-professionnel-de-poignet-pc68b.jpg', 3, 210, 'Oxymètre professionnel de poignet PC68B', 'Oxymètre professionnel de poignet PC68B, l’oxymétrie en continu tout simplement. Livrée avec un capteur adulte silicone.'),
(25, 'capteur-silicone-enfant-pour-oxymetre-professionnel-de-poignet-pc68b (1).jpg', 3, 42, 'Capteur silicone pour PC68B enfant pour oxymètre de poignet', 'Capteur silicone enfant pour oxymètre de poignet PC68B.  Il est livré seul sans l’oxymètre PC68B.'),
(26, 'capteur-silicone-enfant-pour-oxymetre-professionnel-de-poignet-pc68b.jpg', 3, 22, 'Velcro PC68B, 100 mm pour capteur nourrisson (oxymètre de poignet)', 'Bandes velcro de 100 mm pour capteur nourrisson d\'oxymètre de poignet PC68B.  '),
(27, 'capteur-silicone-enfant-pour-oxymetre-professionnel-de-poignet-pc68b.jpg', 3, 24, 'Velcro PC68B, 130 mm pour capteur nourrisson (oxymètre de poignet)', 'Bandes velcro de 130 mm pour capteur nourrisson d\'oxymètre de poignet PC68B.  '),
(28, 'capteur-silicone-enfant-pour-oxymetre-professionnel-de-poignet.jpg', 4, 24, 'Velcro PC60E, 130 mm pour capteur nourrisson (oxymètre de pouls)', 'Bandes velcro de 130 mm pour capteur nourrisson d\'oxymètre de poignet PC68B.  '),
(29, 'oxymetre-de-pouls-professionnel-pc60b-oxymetre-professionnel-pc60b.jpg', 4, 22, 'Oxymètre de pouls professionnel PC60B', 'Oxymètre de pouls ultra résistant, le PC60B accompagne au mieux les professionnels de santé dans leur quotidien, il est garantit 3 ans contre les chutes de hauteur de moins d’un mètre.'),
(30, 'oxymetre-de-pouls-professionel-pour-bebe-oxywatch.jpg', 4, 105, 'Oxymètre de pouls professionel pour bébé OXYWATCH', 'Modèle pour enfants à partir de 2 ans environ (épaisseur du doigt : 5 mm).\r\n'),
(31, 'oxymetre-de-pouls-professionnel-pocket-loxymetre-pour-tous-les-ages.jpg', 4, 252, 'Oxymètre de pouls professionnel POCKET, l’oxymètre pour tous les âges', 'POCKET, l’oxymètre pour tous les âges – livré avec capteur adulte'),
(32, 'p60e-loxymetre-de-pouls-professionnel-pour-tous-les-ages.jpg', 4, 90, 'Oxymètre de pouls professionnel pour tous les âges, PC60E', 'L’ oxymètre de pouls PC 60E est fiable et précis et d’un excellent rapport qualité / prix. Il s’avère idéal pour les professionnels de santé en ville. Il convient aussi bien aux adultes (capteur intégré) qu’aux enfants dès la naissance, grâce à trois types de capteurs (en options) à brancher :\r\n\r\nCapteur pédiatrique à pince (5 à 10 ans) VENDU A PART\r\nCapteur nourrisson avec velcro VENDU A PART\r\nCapteur pédiatrique souple, réutilisable et immergeable (5 à 10 ans) VENDU A PART'),
(33, 'capteur-nourrisson-pour-oxymetre-de-pouls-professionnel-p60e.jpg', 4, 50, 'Capteur nourrisson pour PC60E oxymètre de pouls professionnel', 'Capteur nourrisson pour oxymètre de pouls P60E. Il est livré seul sans l’oxymètre P60E\r\n\r\nL’ oxymètre de pouls PC60E est fiable, précis et d’un excellent rapport qualité / prix. Il s’avère idéal pour les professionnels de santé en ville. Avec ses 3 choix de capteurs, il s\'adapte à tous les âges. Le capteur nourrisson, réutilisable s\'adaptant au pied du bébé pour simplifier la pose.\r\n\r\n'),
(34, 'capteur-pediatrique-souple-pour-oxymetre-de-pouls-professionnel-p60e.jpg', 4, 50, 'Capteur Pédiatrique souple pour PC60E oxymètre de pouls professionnel', 'Capteur Pédiatrique souple pour oxymètre de pouls P60E. Il est livré seul sans l’oxymètre P60E\r\n\r\nL’ oxymètre de pouls PC 60E est fiable et précis et d’un excellent rapport qualité / prix. Il s’avère idéal pour les professionnels de santé en ville. Avec son capteur pédiatrique souple, réutilisable et immergeable, il s’adaptera aux enfants de 5 à 10 ans'),
(35, 'capteur-pediatrique-pince-pour-oxymetre-de-pouls-professionnel-p60e.jpg', 4, 50, 'Capteur Pédiatrique Pince pour PC60E oxymètre de pouls professionnel', 'Capteur Pédiatrique Pince pour oxymètre de pouls P60E. Il est livré seul, sans l’oxymètre P60E\r\n\r\nL’oxymètre de pouls PC 60E est fiable et précis et d’un excellent rapport qualité / prix. Il s’avère idéal pour les professionnels de santé en ville. Avec son capteur pédiatrique à pince, réutilisable, il s’adaptera aux enfants de 5 à 10 ans'),
(36, 'oxymetre-professionnel-de-poignet-pc68b (1).jpg', 4, 210, 'Oxymètre professionnel de poignet PC68B', 'Oxymètre professionnel de poignet PC68B, l’oxymétrie en continu tout simplement. Livrée avec un capteur adulte silicone.'),
(37, 'capteur-silicone-adulte-pour-oxymetre-professionnel-de-poignet-pc68b.jpg', 4, 42, 'Capteur silicone adulte pour PC68B oxymètre professionnel de poignet', 'Capteur silicone adulte pour oxymètre de poignet PC68B.  Il est livré seul sans l’oxymètre PC68B.'),
(38, 'capteur-silicone-enfant-pour-oxymetre-professionnel-de-poignet-pc68b.jpg', 4, 42, 'Capteur nourrisson pour PC68B oxymètre professionnel de poignet', 'Capteur nourrisson \"velcro\" pour oxymètre de poignet PC68B.  Il est livré seul sans l’oxymètre PC68B.'),
(39, 'capteur-silicone-enfant-pour-oxymetre-professionnel-de-poignet-pc68b (1).jpg', 4, 42, 'Capteur silicone pour PC68B enfant pour oxymètre de poignet', 'Capteur silicone enfant pour oxymètre de poignet PC68B.  Il est livré seul sans l’oxymètre PC68B.'),
(40, 'capteur-silicone-enfant-pour-oxymetre-professionnel-de-poignet-pc68b.jpg', 4, 22, 'Velcro PC68B, 100 mm pour capteur nourrisson (oxymètre de poignet)', 'Bandes velcro de 100 mm pour capteur nourrisson d\'oxymètre de poignet PC68B.  '),
(41, 'capteur-silicone-enfant-pour-oxymetre-professionnel-de-poignet-pc68b.jpg', 4, 24, 'Velcro PC68B, 130 mm pour capteur nourrisson (oxymètre de poignet)', 'Bandes velcro de 130 mm pour capteur nourrisson d\'oxymètre de poignet PC68B.  '),
(42, 'capteur-silicone-enfant-pour-oxymetre-professionnel-de-poignet.jpg', 4, 22, 'Velcro PC60E, 100 mm pour capteur nourrisson (oxymètre de pouls)', 'Bandes velcro de 100 mm pour capteur nourrisson d\'oxymètre de pouls PC60E.  '),
(43, 'pack-mesure-du-souffle.jpg', 5, 18, 'Pack mesure du souffle', 'Un pack \"mesure du Souffle\" pour le dépistage et le suivi de l\'asthme.'),
(44, 'debimetre-inspiratoire-in-check-dial-g16-pour-leducation-therapeutique.jpg', 5, 40, 'Débimètre inspiratoire IN-CHECK DIAL G16 pour l’éducation thérapeutique', 'IN-CHECK DIAL G16 pour l’éducation thérapeutique du patient à la bonne prise de l’inhalateur\r\nL’In-Check DIAL G16, équipé d’embouts jetables, est un dispositif médical multi-patients destiné à une utilisation professionnelle.Il peut être réglé pour simuler la résistance de l’inhalateur prescrit et générer l’inhalation appropriée : lente et douce pour les inhalateurs en aérosol, rapide et puissant pour les dispositifs en poudre.'),
(45, 'debimetre-expiratoire-de-pointe-peak-flow-mini-wright-enfant.jpg', 5, 23, 'PEAK FLOW MINI-WRIGHT ENFANT', 'Débitmètre de pointe : Avec le PEAK FLOW MINI-WRIGHT enfants : souffler, c’est jouer !\r\n\r\nUn modèle spécifique pour les enfants, mais aussi pour les faibles débits avec une échelle allant de 30 et 400 L/Min. Le MINI-WRIGHT Enfants est équipé d’un moulin incitatif et ludique qui facilite l\'apprentissage chez les tous petits.\r\n\r\nÉtalonnage individuel exclusif une excellente reproductibilité. Il est l’appareil le plus utilisé et le plus apprécié des professionnels de santé.'),
(46, 'debimetre-de-point-peak-flow-mini-wright-standard-la-reference.jpg', 5, 23, 'PEAK FLOW MINI-WRIGHT standard : la référence', 'Débitmètre de pointe, le PEAK FLOW MINI-WRIGHT standard est la référence incontestable.\r\nIl offre une précision jamais égalée dans la mesure du DEP de par un calibrage individuel qui lui assure une excellente reproductibilité. Il est l’appareil le plus utilisé et le plus apprécié des professionnels de santé.'),
(47, 'debimetre-de-point-peak-flow-airzone-le-debitmetre-de-pointe-pratique-et-visuel.jpg', 5, 23, 'Peak Flow AIRZONE, le débitmètre de pointe pratique et visuel', 'Débitmètre de pointe AIRZONE, il est pratique et visuel pour les patients. Très apprécié pour sa petite taille et sa poignée très pratique, ses curseurs de couleurs rouge, jaune et verte, positionnés sur recommandation du médecin, constituent une aide visuelle pour le patient qui situe immédiatement l’état de son souffle lors de chaque mesure, par rapport à ses valeurs théoriques. L’AIRZONE lui assure ainsi un suivi régulier et personnalisé.'),
(48, 'debimetre-inspiratoire-in-check-dial-g16-pour-leducation-therapeutique.jpg', 6, 40, 'Débimètre inspiratoire DIAL G16 pour l’éducation thérapeutique', 'Débitmètre de pointe INSPIRATOIRE, le DIAL G16 aide à l’éducation thérapeutique du patient à la bonne prise de médicament par inhalateur.\r\nLe DIAL G16, équipé d’embouts jetables, est un dispositif médical multi-patients destiné à une utilisation professionnelle.Il peut être réglé pour simuler la résistance de l’inhalateur prescrit et générer l’inhalation appropriée : lente et douce pour les inhalateurs en aérosol, rapide et puissant pour les dispositifs en poudre.'),
(49, 'debimetre-inspiratoire-in-check-peak-flow-nasal-avec-2-masques.jpg', 6, 36, 'Débimètre inspiratoire IN-CHECK, Peak Flow Nasal avec 2 masques', 'IN-CHECK, Peak Flow Nasal avec 2 masques\r\n\r\nAlternative de 1ere intention, simple, bon marché et non invasive, à la rhinomanométie, l’In-Check Nasal est un appareil portable de mesure du PNIF (Peak Nasal Inspiratory Flow) qui aide au suivi de l’obstruction nasale, au cabinet comme au domicile. Il permet aussi d’évaluer l’efficacité des décongestifs.'),
(50, 'masque-pour-pnif.jpg', 6, 5, 'Masque Enfant pour PNIF', 'Masque facial enfant avec valve'),
(51, 'masque-adulte-pour-pnif.jpg', 6, 6, 'Masque Adulte pour PNIF', 'masque facial adulte avec valve'),
(52, 'embout-carton-double-voie-o-20-mm.jpg', 7, 13, 'Embout carton double voie Ø 20 mm (par 100 unités)', 'Embout carton double voie Ø 20 mm pour peak flow, pelliculé pour un meilleur confort de l’utilisateur – quantité 100 unités'),
(53, 'embout-carton-double-voie-o-20-mm.jpg', 7, 55, 'Embout carton double voie Ø 20 mm (par 500 unités)', 'Embout carton double voie pour peak flow, pelliculé pour un meilleur confort de l’utilisateur\r\nØ 20 mm – quantité 500 unités'),
(54, 'embout-carton-double-voie-o-28-mm.jpg', 7, 13, 'Embout carton double voie Ø 28 mm (par 100 unités)', 'Embout carton double voie pour peak flow standard, e-Mini-Wright, … pelliculé pour un meilleur confort de l’utilisateur\r\nØ 28 mm – quantité 100 unités'),
(55, 'embout-carton-double-voie-o-28-mm.jpg', 7, 55, 'Embout carton double voie Ø 28 mm (par 500 unités)', 'Embout carton double voie pour peak flow standard, e-Mini-Wright, … pelliculé pour un meilleur confort de l’utilisateur\r\nØ 28 mm – quantité 500 unités'),
(56, 'embout-carton-a-valve-anti-retour-expiratoire-o-28-mm.jpg', 7, 29, 'Embout carton à valve anti-retour (expiratoire) Ø 28 mm (par 50 unités)', 'Embout carton à valve anti-retour pour éviter toute contamination, pelliculé pour un meilleur confort de l’utilisateur.\r\nPour peak flow standard, e-Mini-Wright, …\r\nØ 28 mm – quantité 50 unités'),
(57, 'embout-carton-a-valve-anti-retour-expiratoire-o-28-mm.jpg', 7, 46, 'Embout carton à valve anti-retour (expiratoire) Ø 28 mm (par 100 unités)', 'Embout carton à valve anti-retour par 100 pour éviter toute contamination, pelliculé pour un meilleur confort de l’utilisateur.\r\nPour peak flow standard, e-Mini-Wright, …\r\nØ 28 mm – quantité 100 unités'),
(58, 'embout-carton-a-valve-anti-retour-expiratoire-o-28-mm.jpg', 7, 198, 'Embout carton à valve anti-retour (expiratoire) Ø 28 mm (par 500 unités)', 'Embout carton à valve anti-retour pour éviter toute contamination, pelliculé pour un meilleur confort de l’utilisateur.\r\nPour peak flow standard, e-Mini-Wright, …\r\nØ 28 mm – quantité 500 unités'),
(59, 'embout-carton-a-valve-anti-retour-inspiratoire-o-28-mm.jpg', 7, 29, 'Embout carton à valve anti-retour (inspiratoire) Ø 28 mm (par 50 unités)', 'Embout carton à valve anti-retour pour éviter toute contamination, pelliculé pour un meilleur confort de l’utilisateur.\r\nPour In-Check (Peak Flow inspiratoire), …\r\nØ 28 mm – quantité 50 unités'),
(60, 'embout-plastique-double-voie-o-20-mm-par-10-unites.jpg', 7, 24, 'Embout plastique double voie Ø 20 mm (par 10 unités)', 'Embout plastique double voie, pour peak flow enfant, Airzone, … stérilisable\r\nØ 20 mm  – quantité 10 unités'),
(61, 'embout-plastique-conique-o-28-mm-par-15-unites.jpg', 7, 24, 'Embout plastique conique Ø 28 mm (par 15 unités)', 'Embout plastique conique Ø 28 mm (par 15 unités), pour Peak flow standard, e-Mini-Wright, … stérilisable\r\nDouble voie, pour enfant et adultes : Ø d’entrée : 28 mm et Ø de sortie de 20 mm\r\n\r\nQuantité 15 unités'),
(62, 'turbines-mono-patient-pour-spirometres-mir-60-pcs.jpg', 7, 174, 'Turbines mono-patient pour spiromètres MIR (60 pcs)', 'Les turbines mono-patient pour spiromètres MIR, Flowmir®, pour spiromètres MIR, fonctionnent avec tous les spiromètres MIR : Minispir Light, new Minispir, Spirobank II, Spirolab, Spirodoc,…'),
(63, 'embout-plastique-conique-o-28-mm-par-15-unites (1).jpg', 7, 24, 'Embout plastique réducteur s\'adaptant sur Ø 28 mm (par 15 unités)', 'Embout réducteur en plastique s\'adaptant sur des dispositifs de diamètre Ø 28 mm.'),
(64, 'thermometre-frontal-et-tympanique.jpg', 8, 60, 'Thermomètre frontal et tympanique', 'Thermomètre infrarouge JUMPER le 2 en 1'),
(65, 'chambre-d-inhalation-avec-masque-bebe-able-spacer-2-anti-microbienne.jpg', 9, 15, 'Chambre d\'inhalation bébé, ABLE SPACER 2, anti-microbienne', 'Anti microbienne et antistatique, ABLE SPACER 2 avec masque nourrisson est idéale pour les petits de 0 à 12 mois environ grâce à son masque adapté et sa valve étudiée spécifiquement pour les faibles débits inspiratoires* (10 L/min) qui garantit la bonne prise du médicament* sans effort.\r\n\r\nCette valve est également double voie afin d’éviter toute déperdition de médicament.\r\n\r\n*études disponibles sur demande (réalisées par des laboratoires indépendants)'),
(66, 'chambre-d-inhalation-avec-masque-bebe-able-spacer-2-anti-microbienne.jpg', 9, 15, 'Chambre d\'inhalation enfant, ABLE SPACER 2, anti-microbienne', 'Chambre d\'inhalation anti microbienne et antistatique, ABLE SPACER 2 avec masque enfant est idéale pour les petits de 1 à 6 ans environ. Son masque adapté et sa valve étudiée spécifiquement pour les faibles débits inspiratoires (10 L/min) garantissent la bonne prise du médicament sans effort. \r\n\r\nCette valve est également double voie afin d’éviter toute déperdition de médicament.\r\n\r\n*études disponibles sur demande (réalisées par des laboratoires indépendants)'),
(67, 'chambre-d-inhalation-avec-masque-bebe-able-spacer-2-anti-microbienne.jpg', 9, 15, 'Chambre d\'inhalation adulte (avec masque), ABLE SPACER 2, anti-microbienne', 'Anti microbienne et antistatique, ABLE SPACER 2 avec masque adulte est idéale pour les personnes âgées et les insuffisants respiratoires grâce à son masque grand format et sa valve étudiée spécifiquement pour les faibles débits inspiratoires* (10 L/min) qui garantit la bonne prise du médicament* sans effort.\r\n\r\nCette valve est également double voie afin d’éviter toute déperdition de médicament.\r\n\r\n*études disponibles sur demande (réalisées par des laboratoires indépendants)'),
(68, 'chambre-d-inhalation-a-partir-de-6-ans-able-spacer-2-anti-microbienne.jpg', 9, 15, 'Chambre d\'inhalation ABLE SPACER 2 anti-microbienne', 'Anti microbienne et antistatique, ABLE SPACER 2 est idéale pour les insuffisants respiratoires grâce à sa valve étudiée spécifiquement pour les faibles débits inspiratoires* (10 L/min) qui garantit la bonne prise du médicament* sans effort.\r\n\r\nCette valve est également double voie afin d’éviter toute déperdition de médicament.\r\n\r\n*études disponibles sur demande (réalisées par des laboratoires indépendants)'),
(69, 'chambre-d-inhalation-repliable-anti-microbienne.jpg', 9, 15, 'Chambre d’inhalation repliable, A2A, anti-microbienne', 'Anti microbienne et antistatique, A2A est le modèle repliable de l\'ABLE SPACER 2.  Idéale pour glisser dans le sac à main, le cartable, le sac de sport … elle est discrète et efficace*\r\n\r\n*études disponibles sur demande (réalisées par des laboratoires indépendants)'),
(70, 'chambre-d-inhalation-jetable-dispozable.jpg', 9, 95, 'Chambre d\'inhalation jetable, mono-patient DISPOZ\'ABLE (Sachet de 50 unités)', 'Chambre d\'inhalation d\'urgence, jetable, DISPOZ’ABLE est un nouveau concept. Elle garantit le respect de l\'hygiène médicale, évite les infections croisées et sécurise le patient.\r\n\r\nUtilisée aux urgences, aux EFR, en cabinet pour la gestion des urgences, c’est une réponse rapide à moindre coût pour une délivrance rapide et immédiate du médicament.\r\n\r\nDISPOZ\'ABLE est un dispositif monopatient, à utilisation unique, jetable (recyclable).\r\n\r\nSon design simple et intuitif permet de l’assembler rapidement.'),
(71, 'chambre-d-inhalation-jetable-dispozable.jpg', 9, 183, 'Chambre d\'inhalation jetable, mono-patient, DISPOZ\'ABLE (Sachet de 100 unités)', 'Chambre d\'inhalation d\'urgence, jetable, DISPOZ’ABLE est un nouveau concept. Elle garantit le respect de l\'hygiène médicale, évite les infections croisées et sécurise le patient.\r\n\r\nUtilisée aux urgences, aux EFR, en cabinet pour la gestion des urgences, c’est une réponse rapide à moindre coût pour une délivrance rapide et immédiate du médicament.\r\n\r\nDispoz’ABLE Spacer est un dispositif monopatient, à utilisation unique, jetable (recyclable).\r\n\r\nSon design simple et intuitif permet de l’assembler rapidement.'),
(72, 'chambre-d-inhalation-jetable-dispozable.jpg', 9, 358, 'Chambre d\'inhalation Chambre d\'inhalation jetable, mono-patient,, DISPOZ\'ABLE (Sachet de 200 unités)', 'Chambre d\'inhalation d\'urgence, jetable, la chambre d\'inhalation DISPOZ’ABLE est un nouveau concept. Elle garantit le respect de l\'hygiène médicale, évite les infections croisées et sécurise le patient.\r\n\r\nUtilisée aux urgences, aux EFR, en cabinet pour la gestion des urgences, c’est une réponse rapide à moindre coût pour une délivrance rapide et immédiate du médicament.\r\n\r\nDispoz’ABLE Spacer est un dispositif monopatient, à utilisation unique, jetable (recyclable).'),
(73, 'masque-adulte-pour-chambre-d-inhalation-able-spacer2.jpg', 9, 6, 'Masque adulte pour chambre d\'inhalation Able Spacer2', 'Masque adulte pour chambre d\'inhalation Able Spacer2'),
(74, 'masque-pour-chambre-d-inhalation-able-spacer2.jpg', 9, 6, 'Masque Enfant pour chambre d\'inhalation Able Spacer2', 'Masque Enfant pour chambre d\'inhalation Able Spacer2'),
(75, 'masque-pour-chambre-d-inhalation-able-spacer2.jpg', 9, 6, 'Masque Nourrisson pour chambre d\'inhalation Able Spacer2', 'Masque Nourrisson pour chambre d\'inhalation Able Spacer2'),
(76, 'turboneb.jpg', 10, 300, 'Nébuliseur pneumatique TURBONEB', 'Le Turboneb 2 est un nébuliseur pneumatique à fonctionnement continu, ce qui lui permet de fonctionner à froid pour une utilisation exigeante à l\'hôpital. '),
(77, 'nebuliseur-pneumatique-econoneb-a-debit-eleve.jpg', 10, 262, 'Nébuliseur pneumatique professionnel ECONONEB à débit élévé', 'Le compresseur nébuliseur Econoneb fonctionne en continu, à froid, pour une utilisation exigeante. Un appareil fiable, idéal pour relever les défis de l’hôpital et de la clinique. L’Econoneb a un débit élevé qui convient à la nébulisation de bronchodilatateurs , de corticostéroïdes  et d’antibiotiques. L’Econoneb est livré avec un kit de démarrage : 1 masque enfant, 1 masque adulte et un embout buccal.'),
(78, 'nebuliseur-pneumatique-econoneb-a-debit-eleve (1).jpg', 10, 252, 'Nébuliseur pneumatique professionnel AC200 robustesse et performance', 'Compresseur pneumatique parmi les plus puissants, l’AC 2000, associé à son nébuliseur, permet une nébulisation rapide et de qualité.\r\n\r\nRobuste et simple d’utilisation, l’AC 2000 est idéal pour la location et une utilisation intensive.\r\nIl est livré avec 1 masque enfant, 1 masque adulte et un embout buccal.\r\nPrise en charge de la location et du kit de nébulisation pour chaque patient : tubulure, capsule et masque.'),
(79, 'nebuliseur-pneumatique-econoneb-a-debit-eleve1.jpg', 10, 104, 'Nébuliseur pneumatique professionnel AIRMED 1000', 'Nébuliseur pneumatique AIRMED 1000, compact et d’un excellent rapport qualité/prix\r\n\r\nL’AirMed 1000 est compact, fiable et d’un excellent rapport qualité /prix, ce qui le rend idéal pour une utilisation à domicile.\r\n\r\nAssocié à son nébuliseur, il permet une nébulisation rapide et de qualité.'),
(80, 'filtre-de-sortie-pour-airmed-1000-par-5-unites.jpg', 10, 5, 'Filtre de sortie pour nébuliseur pneumatique AIRMED 1000 (par 5 unités)', 'Filtre de sortie pour le nébuliseur pneumatique AIRMED 1000, à changer tous les mois\r\nQuantité : 5 unités'),
(81, 'kit-de-nebulisation-avec-embout-buccal-pour-ac2000-et-airmed1000.jpg', 10, 7, 'Kit de nébulisation Microneb III avec embout buccal', 'Le kit de nébulisation Microneb III avec embout buccal s’adapte sur les compresseurs / nébuliseurs AC 2000 et AIRMED 1000.\r\nLe kit comprend une tubulure,  un nébuliseur et un embout buccal. A changer tous les mois pour les traitements de longue durée.'),
(82, 'kit-de-nebulisation-avec-masque-adulte-pour-aimed100-et-ac2000.jpg', 10, 7, 'Kit de nébulisation Microneb III avec masque adulte', 'Le kit de nébulisation Microneb III avec masque adulte s’adapte sur les compresseurs / nébuliseurs AC 2000 et AIRMED 1000.\r\nLe kit comprend une tubulure,  un nébuliseur et un masque adulte. A changer tous les mois pour les traitements de longue durée.'),
(83, 'kit-de-nebulisation-avec-masque-enfant-pour-airmed1000-et-ac2000.jpg', 10, 7, 'Kit de nébulisation Microneb III avec masque enfant', 'Le kit de nébulisation Microneb III avec masque enfant s’adapte sur les compresseurs / nébuliseurs AC 2000 et AIRMED 1000.\r\nLe kit comprend une tubulure,  un nébuliseur et un masque enfant. A changer tous les mois pour les traitements de longue durée.'),
(84, 'generateur-d-aerosol-pneumatique-avec-effet-sonique-st24-de-systam.jpg', 10, 736, 'Générateur d\'aérosol pneumatique avec effet sonique ST24 de SYSTAM', 'L\'effet sonique pour des traitements ORL plus efficaces\r\nIndiqués pour les traitements par aérosolthérapie médicamenteuse à visée O.R.L ou pulmonaire, le ST 24 de SYSTAM est un dispositif simple d\'utilisation et d\'entretien. Son effet sonique renforce l\'efficacité du traitement en visée O.R.L.\r\n\r\n'),
(85, 'kit-sonique-enfant-pour-generateur-d-aerosol-st24-de-systam.jpg', 10, 12, 'Kit sonique enfant pour générateur d\'aérosol à effet sonique ST24 de SYSTAM', 'Un kit \"sonique\" enfant pour le générateur d\'aérosol ST24\r\nIndiqués pour les traitements par aérosolthérapie médicamenteuse à visée O.R.L ou pulmonaire, le ST 24 de SYSTAM est un dispositif simple d\'utilisation et d\'entretien. Son effet sonique renforce l\'efficacité du traitement en visée O.R.L.\r\n\r\nLe kit est composé d\'un masque pour enfant, d\'une tubulure double et d\'un nébuliseur.'),
(86, 'kit-sonique-enfant-pour-generateur-d-aerosol-st24-de-systam (1).jpg', 10, 12, 'Kit sonique adulte pour générateur d\'aérosol à effet sonique ST24 de SYSTAM', 'Indiqués pour les traitements par aérosolthérapie médicamenteuse à visée O.R.L ou pulmonaire, le ST 24 de SYSTAM est un dispositif simple d\'utilisation et d\'entretien. Son effet sonique renforce l\'efficacité du traitement en visée O.R.L.\r\n\r\nLe kit est composé d\'un masque pour adulte, d\'un embout nasal, d\'une tubulure double et d\'un nébuliseur.'),
(87, 'filtre-de-sortie-pour-airmed-1000-par-5-unites (1).jpg', 10, 10, 'Kit filtres pour nébuliseurs pneumatiques Turboneb et Econoneb', 'Kit composé de deux filtres d\'entrée, d\'un filtre de sortie et d\'une clé de montage pour les nébuliseur pneumatiques Econoneb et Turboneb à changer tous les 6 mois'),
(88, 'filtre-de-sortie-pour-airmed-1000-par-5-unites (2).jpg', 10, 3, 'Filtre d\'entrée pour nébuliseur pneumatique AC2000 (par 2 unités)', 'Filtre d\'entrée pour nébuliseurs pneumatiques AC2000, Econoneb, Turboneb à changer tous les 6 mois\r\nQuantité : par sachet de 2 unités'),
(89, 'filtre-sortie-pour-generateur-de-nebulisation.jpg', 10, 3, 'Filtre sortie pour générateur de nébulisation', 'Filtre de sortie pour générateur de nébulisation ECONONEB, AC2000, TURBONEB'),
(90, 'filtre-sortie-pour-generateur-de-nebulisation.jpg', 10, 16, 'Filtre de sortie pour nébuliseurs pneumatiques (par 5 unités)', 'Filtre d\'entrée pour nébuliseurs pneumatiques AC2000, Econoneb, Turboneb à changer tous les 6 mois\r\nQuantité : par sachet de 2 unités'),
(91, 'oxy2-oreiller-ergonomique-bacteriostatique-pour-patient-appareille.jpg', 11, 70, 'Oreiller ergonomique /apnée du sommeil, OXY2', 'Oreiller bactériostatique pour patient appareillé, OXY2 révolutionne le quotidien des personnes appareillées pendant la nuit par sa forme unique. Répondant aux exigences hospitalières, il est facile à entretenir et apporte un vrai plus aux utilisateurs par son confort et son innovation.'),
(92, 'oxy2-oreiller-ergonomique-bacteriostatique-pour-patient-appareille.jpg', 11, 12, 'Taie d’oreiller pour oreiller ergonomique OXY2 – 70 x 50 cm', 'Taie zippée 100 % coton pour oreiller OXY 2'),
(93, 'filtres-pour-spirometres-incitatifs-pulmogain-pulmovol.jpg', 12, 6, 'Filtres pour spiromètres incitatifs Pulmogain, Pulmovol', 'Filtres Pulmogain, Pulmovol, sachet de 10 filtres'),
(94, 'kit-pour-pulmovol-pulmogain-et-pulmolift-embout-tube-filtre.jpg', 12, 3, 'Kit pour Pulmovol, Pulmogain et Pulmolift (embout – tube – filtre)', 'Kit pour Pulmovol, Pulmogain et Pulmolift  composé d’un embout buccal, un filtre et un tube souple.'),
(95, 'respilift-spirometre-incitatif-expiratoire.jpg', 12, 10, 'RESPILIFT, spiromètre incitatif expiratoire', 'RESPILIFT, spiromètre incitatif complémentaire aux autres spiromètres incitatifs, pour une ré-éducation respiratoire totale\r\nRESPILIFT est un dispositif complémentaire de PULMOGAIN. Muni d’une valve unidirectionnelle, il s’intègre à l’un d’eux, et permet d’exécuter un cycle respiratoire continu : inspiration et expiration.'),
(96, 'spirometre-incitatif-pulmogain-dispositif-dentrainement-pour-le-renforcement-des-muscles-pulmonaires.jpg', 12, 11, 'Spiromètre incitatif RESPIROGRAM/PULMOGAIN, dispositif d’entrainement pour le renforcement des muscles pulmonaires', 'PULMOGAIN, dispositif d’entrainement à l’inspiration pour renforcer les poumons\r\n\r\nLes exercices pratiqués avec PULMO-GAIN apportent les bénéfices suivants :\r\n\r\nDilatation des alvéoles pulmonaires pour une respiration plus aisée,\r\nAmélioration du transit du mucus dans les voies respiratoires surtout en BPCO,\r\nEntrainement du patient afin d’optimiser l’inhalation de traitement en poudre.'),
(97, 'spirometre-incitatif-volumetrique-voldyn-2500.jpg', 12, 15, 'Spiromètre incitatif volumétrique VOLDYN 2500', 'Spiromètre incitatif volumétrique VOLDYN 2500. \r\n\r\nDispositif d’entraînement volumétrique à l’inspiration profonde, le Voldyne 2500 permet de développer le volume et la capacité respiratoire.\r\n\r\nCompact, il est facile à utiliser grâce à sa poignée et une graduation imprimée sur les 2 côtés pour convenir aux droitiers comme aux gauchers.'),
(98, 'spirometre-incitatif-volumetrique-voldyn-5000.jpg', 12, 15, 'Spiromètre incitatif volumétrique VOLDYN 4000', 'Spiromètre incitatif volumétrique VOLDYN 4000. \r\n\r\nDispositif d’entraînement volumétrique à l’inspiration profonde, le Voldyne 5000 permet de développer le volume et la capacité respiratoire.\r\n\r\nCompact, il est facile à utiliser grâce à sa poignée et une graduation imprimée sur les 2 côtés pour convenir aux droitiers comme aux gauchers.'),
(99, 'spirometre-incitatif-volumetrique-voldyn-2500 (1).jpg', 12, 15, 'Spiromètre incitatif volumétrique VOLDYN 5000', 'Spiromètre incitatif volumétrique VOLDYN 5000. \r\n\r\nDispositif d’entraînement volumétrique à l’inspiration profonde, le Voldyne 2500 permet de développer le volume et la capacité respiratoire.\r\n\r\nCompact, il est facile à utiliser grâce à sa poignée et une graduation imprimée sur les 2 côtés pour convenir aux droitiers comme aux gauchers.'),
(100, 'desembrement-bronchique-flutter.jpg', 13, 54, 'Désencombrement pulmonaire Flutter', ' Le FLUTTER est un dispositif mécanique de nettoyage et de restauration des voies respiratoires (Dispositif Médical Classe 1). Simple a utiliser, son efficacité dans le traitement des pathologies chroniques respiratoires a été démontré par de nombreuses études.'),
(101, 'sangle-thoracique-250x5cm-pour-kinesitherapie-respiratoire.jpg', 14, 32, 'Sangle thoracique 250x5cm pour kinésithérapie respiratoire', 'Sangle thoracique 250x5cm pour kinésithérapie respiratoire'),
(102, 'sangle-thoracique-250x5cm-pour-kinesitherapie-respiratoire (1).jpg', 14, 15, 'Sangle thoracique 100x5cm pour kinésithérapie respiratoire', 'Sangle thoracique 100x5cm pour kinésithérapie respiratoire\r\n'),
(103, 'pack-dentrainement-respiratoire-adulte-2.jpg', 15, 137, 'Entrainement respiratoire, Pack adulte 1', 'Pack d’entrainement respiratoire adulte 1. Destiné aux patients atteints de mucoviscidose, BPCO ou en rééducation respiratoire.'),
(104, 'pack-dentrainement-respiratoire-adulte-4.jpg', 15, 137, 'Entrainement respiratoire, Pack adulte 2', 'Pack d’entrainement respiratoire adulteadlte. Destiné aux patients atteints de mucoviscidose, BPCO ou en rééducation respiratoire.'),
(105, 'pack-dentrainement-respiratoire-enfant-2.jpg', 15, 99, 'Entrainement respiratoire, Pack enfant', 'Pack d’entrainement respiratoire enfant. Destiné aux patients atteints de mucoviscidose, asthme chronique ou en rééducation respiratoire.'),
(106, 'simex-cuff-m-dispositif-d-aspiration-sous-glottique-automatique-et-intermittente.jpg', 16, 5000, 'Aspiration sous-glottique automatique et intermittente, SIMEX Cuff M', 'Le système d’aspiration sous-glottique Cuff M de simex, représente la solution la plus avancée en matière d’aspiration sous-glottique des voies aériennes supérieures grâce à son mode de thérapie automatique et intermittent à la pointe de la technologie.'),
(107, 'simex-cuff-m-recipient-pour-secretions-jetable-250-cc.jpg', 16, 32, 'SIMEX Cuff M, Récipient pour sécrétions jetable 250 cc\r\n', 'Récipient pour sécrétions jetable avec gélifiant intégré qui évite les contamination. Existe en 2 versions : 250 cc et 750 cc.'),
(108, 'simex-cuff-m-recipient-pour-secretions-jetable-250-cc.jpg', 16, 36, 'SIMEX Cuff M, Récipient pour sécrétions jetable 750 cc', 'Récipient pour sécrétions jetable avec gélifiant intégré qui évite les contamination. Existe en 2 versions : 250 cc et 750 cc.\r\n\r\n\r\n'),
(109, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10.jpg', 16, 75, 'Sonde endotrachéale taille ID 5,0 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles'),
(110, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10.jpg', 16, 75, 'Sonde endotrachéale taille ID 5,5 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles'),
(111, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10.jpg', 16, 75, 'Sonde endotrachéale taille ID 6 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles'),
(112, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10.jpg', 16, 75, 'Sonde endotrachéale taille ID 6,5 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles'),
(113, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10.jpg', 16, 75, 'Sonde endotrachéale taille ID 7 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles'),
(114, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10.jpg', 16, 75, 'Sonde endotrachéale taille ID 7,5 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles'),
(115, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10.jpg', 16, 75, 'Sonde endotrachéale taille ID 8 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles'),
(116, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10.jpg', 16, 75, 'Sonde endotrachéale taille ID 8,5 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles'),
(117, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10.jpg', 16, 75, 'Sonde endotrachéale taille ID 9 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles'),
(118, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10.jpg', 16, 75, 'Sonde endotrachéale taille ID 9,5 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles'),
(119, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10.jpg', 16, 75, 'Sonde endotrachéale taille ID 10 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles'),
(120, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5.jpg', 16, 85, 'Canule de trachéotomie Taille ID 5,0 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(121, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5.jpg', 16, 85, 'Canule de trachéotomie Taille ID 5,5 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(122, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5.jpg', 16, 85, 'Canule de trachéotomie Taille ID 6,0 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(123, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5.jpg', 16, 85, 'Canule de trachéotomie Taille ID 6,5 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(124, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5.jpg', 16, 85, 'Canule de trachéotomie Taille ID 7,0 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(125, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5.jpg', 16, 85, 'Canule de trachéotomie Taille ID 7,5 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(126, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5.jpg', 16, 85, 'Canule de trachéotomie Taille ID 8,0 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(127, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5.jpg', 16, 85, 'Canule de trachéotomie Taille ID 8,5 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(128, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5.jpg', 16, 85, 'Canule de trachéotomie Taille ID 9,0 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(129, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5.jpg', 16, 85, 'Canule de trachéotomie Taille ID 9,5 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(130, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5.jpg', 16, 85, 'Canule de trachéotomie Taille ID 10 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(131, 'comfortcough-ii-dispositif-daide-a-la-toux-avec-mode-percussion.jpg', 17, 384, 'Aide à la toux, in-exsufflateur avec mode percussion COMFORTCOUGH II', 'Appareil d’aide à la toux innovant, l\'in-exsufflateur COMFORTCOUGH II® de SEOIL est un 2 en 1 qui intègre également un mode percussions intra-pulmonaires.\r\nIl propose plusieurs fonctionnalités : modes manuel et automatique, vibrations oscillatoires, déclenchement synchronisé à chaque inspiration du patient et plusieurs options : Pédale de commande et support à roulettes.'),
(132, 'comfortcough-ii-dispositif-daide-a-la-toux-avec-mode-percussion.jpg', 17, 395, 'Aide à la toux, percussion et oxymétrie COMFORTCOUGH II', 'Appareil d’aide à la toux innovant, l\'in-exsufflateur COMFORTCOUGH II® de SEOIL est un 2 en 1 qui intègre également un mode percussions intra-pulmonaires.\r\n\r\nCette version permet la mesure de l\'oxymétrie avec un capteur adulte. Il existe une version sans oxymétrie\r\nIl propose plusieurs fonctionnalités : modes manuel et automatique, vibrations oscillatoires, déclenchement synchronisé à chaque inspiration du patient et plusieurs options : Pédale de commande et support à roulettes.'),
(133, 'filtre-antimicrobien-hum.jpg', 17, 16, 'Filtre antimicrobien HUM (vendus par 10)', 'Filtre antimicrobien pour dispositifs médicaux'),
(134, 'desembrement-bronchique-flutter (1).jpg', 18, 54, 'Désencombrement pulmonaire Flutter', ' Le FLUTTER est un dispositif mécanique de nettoyage et de restauration des voies respiratoires (Dispositif Médical Classe 1). Simple a utiliser, son efficacité dans le traitement des pathologies chroniques respiratoires a été démontré par de nombreuses études.'),
(135, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5 (1).jpg', 19, 85, 'Canule de trachéotomie Taille ID 5,0 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(136, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5 (1).jpg', 19, 85, 'Canule de trachéotomie Taille ID 5,5 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(137, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5 (1).jpg', 19, 85, 'Canule de trachéotomie Taille ID 6,0 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(138, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5 (1).jpg', 19, 85, 'Canule de trachéotomie Taille ID 6,5 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(139, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5 (1).jpg', 19, 85, 'Canule de trachéotomie Taille ID 7,0 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(140, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5 (1).jpg', 19, 85, 'Canule de trachéotomie Taille ID 7,5 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(141, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5 (1).jpg', 19, 85, 'Canule de trachéotomie Taille ID 8,0 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(142, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5 (1).jpg', 19, 85, 'Canule de trachéotomie Taille ID 8,5 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(143, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5 (1).jpg', 19, 85, 'Canule de trachéotomie Taille ID 9,0 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(144, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5 (1).jpg', 19, 85, 'Canule de trachéotomie Taille ID 9,5 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(145, 'canule-de-tracheotomie-taille-id-50-avec-aspiration-subglottique-a-ballonnet-par-5 (1).jpg', 19, 85, 'Canule de trachéotomie Taille ID 10,0 avec aspiration subglottique à ballonnet par 5', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions I.D. disponibles, du 5,0 au 10,0'),
(146, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10 (1).jpg', 19, 75, 'Sonde endotrachéale taille ID 5,0 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles'),
(147, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10 (1).jpg', 19, 75, 'Sonde endotrachéale taille ID 5,5 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles');
INSERT INTO `article` (`id_article`, `image`, `type`, `price`, `name`, `description`) VALUES
(148, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10 (1).jpg', 19, 75, 'Sonde endotrachéale taille ID 6,0 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles'),
(149, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10 (1).jpg', 19, 75, 'Sonde endotrachéale taille ID 6,5 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles'),
(150, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10 (1).jpg', 19, 75, 'Sonde endotrachéale taille ID 7,0 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles'),
(151, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10 (1).jpg', 19, 75, 'Sonde endotrachéale taille ID 7,5 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles'),
(152, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10 (1).jpg', 19, 75, 'Sonde endotrachéale taille ID 8,0 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles'),
(153, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10 (1).jpg', 19, 75, 'Sonde endotrachéale taille ID 8,5 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles'),
(154, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10 (1).jpg', 19, 75, 'Sonde endotrachéale taille ID 9,0 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles'),
(155, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10 (1).jpg', 19, 75, 'Sonde endotrachéale taille ID 9,5 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles'),
(156, 'sonde-endotracheale-taille-id-50-a-ballonnet-avec-canal-d-aspiration-par-10 (1).jpg', 19, 75, 'Sonde endotrachéale taille ID 10,0 à ballonnet avec canal d\'aspiration par 10', 'Sonde endotrachéale à ballonnet avec canal d\'aspiration. 11 dimensions disponibles'),
(157, 'extension-de-masque-pour-preserver-les-oreilles.jpg', 20, 6, '10 extensions de masque pour préserver les oreilles', 'L’extension de masque libère de l’inconfort causé aux oreilles par les élastiques des masques faciaux. En polypropylène (recyclable), il mesure 174 x 30 mm et comporte 3 positions d’extension de 8,11 et 14 cm. Encre végétale.'),
(158, 'visieres-de-protection-crystal-protect.jpg', 20, 9, 'Visières de protection CRYSTAL PROTECT', 'Visières de protection CRYSTAL PROTECT\r\n\r\nLa visière Crystal Protect, fabriquée en France, est une solution parfaite pour protéger le visage des projections. Associée à un masque, elle permet de se protéger efficacement contre les gouttelettes et les éclaboussures. Peut être portée par- dessus des lunettes et un masque.\r\n\r\nCe modèle de visière est léger et son écran est rigide. Concept simplifié pour une facilité d’entretien maximale.'),
(159, 'oreiller-anti-acariens-acastop-6060-cm.jpg', 21, 47, 'Oreiller anti-acariens ACASTOP 60×60 cm', 'Oreiller anti-acariens ACASTOP 60×60 cm  innove pour faciliter la vie des personnes allergiques aux acariens. Fini le double emballage de la literie, l’oreiller technique ACASTOP® s’utilise comme un oreiller classique sauf qu’il fait barrage aux acariens !'),
(160, 'oreiller-anti-acariens-acastop-5070-cm.jpg', 21, 47, 'Oreiller anti-acariens ACASTOP 50×70 cm', 'Oreiller anti-acariens ACASTOP 50×70 cm  innove pour faciliter la vie des personnes allergiques aux acariens. Fini le double emballage de la literie, l’oreiller technique ACASTOP® s’utilise comme un oreiller classique sauf qu’il fait barrage aux acariens !'),
(161, 'couette-anti-acariens-hiver-140200-cm.jpg', 21, 126, 'Couette anti-acariens HIVER 140×200 cm', 'Innovation ACASTOP®, la couette anti-acariens HIVER 200×200 cm simplifie les changements de literie pour les personnes allergiques aux acariens. Fini le double emballage de la literie, la couette ACASTOP® s’utilise comme une couette classique sauf qu’elle fait barrage aux acariens !'),
(162, 'couette-anti-acariens-hiver-140200-cm.jpg', 21, 166, 'Couette anti-acariens HIVER 200×200 cm', 'Innovation ACASTOP®, la couette anti-acariens HIVER 200×200 cm simplifie les changements de literie pour les personnes allergiques aux acariens. Fini le double emballage de la literie, la couette ACASTOP® s’utilise comme une couette classique sauf qu’elle fait barrage aux acariens !'),
(163, 'couette-anti-acariens-hiver-140200-cm.jpg', 21, 190, 'Couette anti-acariens HIVER 220×240 cm', 'Innovation ACASTOP®, la couette anti-acariens HIVER 220×240 cm simplifie les changements de literie pour les personnes allergiques aux acariens. Fini le double emballage de la literie, la couette ACASTOP® s’utilise comme une couette classique sauf qu’elle fait barrage aux acariens !'),
(164, 'housse-matelas-anti-acarien-90x190x15-18cm-acastop.jpg', 21, 85, 'Housse matelas anti-acarien- 90x190x15-18cm ACASTOP', 'Les housses de matelas ACASTOP® existent en 12 dimensions et répondent à toutes les tailles de matelas.\r\n\r\nLes housses de matelas anti-acarien ACASTOP® ne comportent pas de produit chimique acaricide, c\'est le tissage du tissu qui fait barrage aux acariens. Elles sont recommandées par l\'AFPRAL (Association Française de Prévention des Allergies)'),
(165, 'housse-matelas-anti-acarien-90x190x15-18cm-acastop.jpg', 21, 86, 'Housse matelas anti-acarien- 90x190x18-21cm ACASTOP\r\n', 'Les housses de matelas ACASTOP® existent en 12 dimensions et répondent à toutes les tailles de matelas.\r\n\r\nLes housses de matelas anti-acarien ACASTOP® ne comportent pas de produit chimique acaricide, c\'est le tissage du tissu qui fait barrage aux acariens. Elles sont recommandées par l\'AFPRAL (Association Française de Prévention des Allergies)'),
(166, 'housse-matelas-anti-acarien-90x190x15-18cm-acastop.jpg', 21, 88, 'Housse matelas anti-acarien- 90x200x18-21cm ACASTOP\r\n', 'Les housses de matelas ACASTOP® existent en 12 dimensions et répondent à toutes les tailles de matelas.\r\n\r\nLes housses de matelas anti-acarien ACASTOP® ne comportent pas de produit chimique acaricide, c\'est le tissage du tissu qui fait barrage aux acariens. Elles sont recommandées par l\'AFPRAL (Association Française de Prévention des Allergies)'),
(167, 'housse-matelas-anti-acarien-90x190x15-18cm-acastop.jpg', 21, 88, 'Housse matelas anti-acarien- 90x200x15-18cm ACASTOP\r\n', 'Les housses de matelas ACASTOP® existent en 12 dimensions et répondent à toutes les tailles de matelas.\r\n\r\nLes housses de matelas anti-acarien ACASTOP® ne comportent pas de produit chimique acaricide, c\'est le tissage du tissu qui fait barrage aux acariens. Elles sont recommandées par l\'AFPRAL (Association Française de Prévention des Allergies)'),
(168, 'housse-matelas-anti-acarien-90x190x15-18cm-acastop.jpg', 21, 102, 'Housse matelas anti-acarien- 140x190x15-18cm ACASTOP\r\n', 'Les housses de matelas ACASTOP® existent en 12 dimensions et répondent à toutes les tailles de matelas.\r\n\r\nLes housses de matelas anti-acarien ACASTOP® ne comportent pas de produit chimique acaricide, c\'est le tissage du tissu qui fait barrage aux acariens. Elles sont recommandées par l\'AFPRAL (Association Française de Prévention des Allergies)'),
(169, 'housse-matelas-anti-acarien-90x190x15-18cm-acastop.jpg', 21, 104, 'Housse matelas anti-acarien- 140x190x18-21cm ACASTOP\r\n', 'Les housses de matelas ACASTOP® existent en 12 dimensions et répondent à toutes les tailles de matelas.\r\n\r\nLes housses de matelas anti-acarien ACASTOP® ne comportent pas de produit chimique acaricide, c\'est le tissage du tissu qui fait barrage aux acariens. Elles sont recommandées par l\'AFPRAL (Association Française de Prévention des Allergies)'),
(170, 'housse-matelas-anti-acarien-90x190x15-18cm-acastop.jpg', 21, 104, 'Housse matelas anti-acarien- 140x200x18-21cm ACASTOP\r\n', 'Les housses de matelas ACASTOP® existent en 12 dimensions et répondent à toutes les tailles de matelas.\r\n\r\nLes housses de matelas anti-acarien ACASTOP® ne comportent pas de produit chimique acaricide, c\'est le tissage du tissu qui fait barrage aux acariens. Elles sont recommandées par l\'AFPRAL (Association Française de Prévention des Allergies)'),
(171, 'housse-matelas-anti-acarien-90x190x15-18cm-acastop.jpg', 21, 102, 'Housse matelas anti-acarien- 140x200x15-18cm ACASTOP\r\n', 'Les housses de matelas ACASTOP® existent en 12 dimensions et répondent à toutes les tailles de matelas.\r\n\r\nLes housses de matelas anti-acarien ACASTOP® ne comportent pas de produit chimique acaricide, c\'est le tissage du tissu qui fait barrage aux acariens. Elles sont recommandées par l\'AFPRAL (Association Française de Prévention des Allergies)'),
(172, 'housse-matelas-anti-acarien-90x190x15-18cm-acastop.jpg', 21, 119, 'Housse matelas anti-acarien- 160x200x15-18cm ACASTOP\r\n', 'Les housses de matelas ACASTOP® existent en 12 dimensions et répondent à toutes les tailles de matelas.\r\n\r\nLes housses de matelas anti-acarien ACASTOP® ne comportent pas de produit chimique acaricide, c\'est le tissage du tissu qui fait barrage aux acariens. Elles sont recommandées par l\'AFPRAL (Association Française de Prévention des Allergies)'),
(173, 'housse-matelas-anti-acarien-90x190x15-18cm-acastop.jpg', 21, 120, 'Housse matelas anti-acarien- 160x200x18-21cm ACASTOP\r\n', 'Les housses de matelas ACASTOP® existent en 12 dimensions et répondent à toutes les tailles de matelas.\r\n\r\nLes housses de matelas anti-acarien ACASTOP® ne comportent pas de produit chimique acaricide, c\'est le tissage du tissu qui fait barrage aux acariens. Elles sont recommandées par l\'AFPRAL (Association Française de Prévention des Allergies)'),
(174, 'housse-matelas-anti-acarien-90x190x15-18cm-acastop.jpg', 21, 135, 'Housse matelas anti-acarien- 180x200x18-21cm ACASTOP\r\n', 'Les housses de matelas ACASTOP® existent en 12 dimensions et répondent à toutes les tailles de matelas.\r\n\r\nLes housses de matelas anti-acarien ACASTOP® ne comportent pas de produit chimique acaricide, c\'est le tissage du tissu qui fait barrage aux acariens. Elles sont recommandées par l\'AFPRAL (Association Française de Prévention des Allergies)'),
(175, 'housse-matelas-anti-acarien-90x190x15-18cm-acastop (1).jpg', 21, 43, 'Housse matelas anti-acarien bébés ACASTOP\r\n', 'Les housses de matelas ACASTOP® existent en 12 dimensions et répondent à toutes les tailles de matelas.\r\n\r\nLes housses de matelas anti-acarien ACASTOP® ne comportent pas de produit chimique acaricide, c\'est le tissage du tissu qui fait barrage aux acariens. Elles sont recommandées par l\'AFPRAL (Association Française de Prévention des Allergies)'),
(176, 'tee-shirt-enfant-anti-uv-pirate-2-ans-les-ultraviolettes.jpg', 22, 23, 'Tee-shirt anti-UV enfant 2 ans « Pirate » – LES ULTRAVIOLETTES', 'Terminé les tee-shirts anti-UV qui collent, retiennent le sable et qu’on ne portent que sur la plage. Les tee-shirts anti-UV LES ULTRAVIOLETTES sont créés par une styliste pour le fun mais se réfèrent à la norme la plus drastique pour la protection contre le soleil.  En effet, certifiés UPF 50+ selon la norme australienne (AS/NZA 4399), ils garantissent aux enfants une protection maximale contre les ultra-violets que ce soit en promenade, sur la plage ou lors de la baignade.'),
(177, 'tee-shirt-enfant-anti-uv-pirate-2-ans-les-ultraviolettes.jpg', 22, 24, 'Tee-shirt anti-UV enfant 4 ans « Pirate » – LES ULTRAVIOLETTES', 'Terminé les tee-shirts anti-UV qui collent, retiennent le sable et qu’on ne portent que sur la plage. Les tee-shirts anti-UV LES ULTRAVIOLETTES sont créés par une styliste pour le fun mais se réfèrent à la norme la plus drastique pour la protection contre le soleil.  En effet, certifiés UPF 50+ selon la norme australienne (AS/NZA 4399), ils garantissent aux enfants une protection maximale contre les ultra-violets que ce soit en promenade, sur la plage ou lors de la baignade.'),
(178, 'tee-shirt-enfant-anti-uv-pirate-2-ans-les-ultraviolettes.jpg', 22, 25, 'Tee-shirt anti-UV enfant 6 ans « Pirate » – LES ULTRAVIOLETTES', 'Terminé les tee-shirts anti-UV qui collent, retiennent le sable et qu’on ne portent que sur la plage. Les tee-shirts anti-UV LES ULTRAVIOLETTES sont créés par une styliste pour le fun mais se réfèrent à la norme la plus drastique pour la protection contre le soleil.  En effet, certifiés UPF 50+ selon la norme australienne (AS/NZA 4399), ils garantissent aux enfants une protection maximale contre les ultra-violets que ce soit en promenade, sur la plage ou lors de la baignade.'),
(179, 'tee-shirt-anti-uv-confetti-6-ans-les-ultraviolettes.jpg', 22, 25, 'Tee-shirt anti-UV enfant 6 ans « Confetti » – LES ULTRAVIOLETTES', 'Terminé les tee-shirts anti-UV qui collent, retiennent le sable et qu’on ne portent que sur la plage. Les tee-shirts anti-UV LES ULTRAVIOLETTES sont créés par une styliste pour le fun mais se réfèrent à la norme la plus drastique pour la protection contre le soleil.  En effet, certifiés UPF 50+ selon la norme australienne (AS/NZA 4399), ils garantissent aux enfants une protection maximale contre les ultra-violets que ce soit en promenade, sur la plage ou lors de la baignade.'),
(180, 'tee-shirt-anti-uv-confetti-6-ans-les-ultraviolettes.jpg', 22, 24, 'Tee-shirt anti-UV enfant 4 ans « Confetti » LES ULTRAVIOLETTES', 'Terminé les tee-shirts anti-UV qui collent, retiennent le sable et qu’on ne portent que sur la plage. Les tee-shirts anti-UV LES ULTRAVIOLETTES sont créés par une styliste pour le fun mais se réfèrent à la norme la plus drastique pour la protection contre le soleil.  En effet, certifiés UPF 50+ selon la norme australienne (AS/NZA 4399), ils garantissent aux enfants une protection maximale contre les ultra-violets que ce soit en promenade, sur la plage ou lors de la baignade.'),
(181, 'tee-shirt-anti-uv-confetti-6-ans-les-ultraviolettes.jpg', 22, 23, 'Tee-shirt anti-UV enfants 2ans « Confetti » LES ULTRAVIOLETTES', 'Terminé les tee-shirts anti-UV qui collent, retiennent le sable et qu’on ne portent que sur la plage. Les tee-shirts anti-UV LES ULTRAVIOLETTES sont créés par une styliste pour le fun mais se réfèrent à la norme la plus drastique pour la protection contre le soleil.  En effet, certifiés UPF 50+ selon la norme australienne (AS/NZA 4399), ils garantissent aux enfants une protection maximale contre les ultra-violets que ce soit en promenade, sur la plage ou lors de la baignade.'),
(182, 'aldanex-traitement-et-prevention-des-dermites-liees-a-l-incontinence.jpg', 23, 27, 'Aldanex, traitement et prévention des dermites liées à l\'incontinence', 'ALDANEX® est le produit approprié pour le traitement des dermites liées à la macération, en prévention ou en traitement. \r\nALDANEX® agit également en protection des peaux irritées, crevassées et sèches, peau périlésionnelle...'),
(183, 'pareplaie-prevention-dapparition-des-plaies-de-choc-prevention-d-escarre-et-maintien-des-pansements.jpg', 23, 149, 'Prévention des plaies de choc, d&#039;escarre et maintien des pansements, PAREPLAIE® Taille M', 'Dispositif médical de prévention d’apparition des plaies, PAREPLAIE® est constitué de gel de polymère synthétique microporeux souple et confortable. Il est vendu par paire et existe en différentes tailles (tableau ci-dessous)Seul dispositif médical dans son domaine, PAREPLAIE® est un dispositif médical pour la protection des peaux fragiles et sensibles. Il bénéficie d&#039;un remboursement sécurité sociale pour la prévention / protection des escarres.'),
(184, 'predictor-thermometre-digital-flex.2003.jpg', 8, 12.33, 'Predictor Thermomètre Digital Flex', 'Mesure rapidement et précisément la température.'),
(185, 'a10726.png', 8, 88, 'TFI 260 infrarood thermometer', 'De Ebro TFI 260 infrarood thermometer is een handzame, praktische infrarood thermometer met laseraanwijzing. De opvolger van de TFI 250 wordt gebruikt voor contactloze temperatuurmeting via infrarood voor inspectie van inkomende goederen, voedsel in vitrines of levensmiddelen in opslag. Deze infrarood thermometer is daarom uiterst geschikt voor gebruik in bijvoorbeeld (groot)keukens, voedseldistributie en koelruimtes.  De TFI 260 infrarood thermometer van Ebro voldoet aan de richtlijnen van HACCP, BRC, IFS en ISO 22000. Tevens wordt het instrument geleverd inclusief ISO-kalibratiecertificaat.'),
(186, 'thermometre-electronique-frontal-colson-flash-temps_1.jpg', 8, 68, 'Thermomètre électronique frontal Colson Flash Temp', 'Température sans contact sûre et hygiénique Mesure : 34.0°C à 42.2°C Mémoire des 30 dernières mesures Arrêt automatique Socle et housse souple de rangement');

-- --------------------------------------------------------

--
-- Structure de la table `id_objets`
--

CREATE TABLE `id_objets` (
  `id_types` int(11) NOT NULL,
  `types_produits` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `id_objets`
--

INSERT INTO `id_objets` (`id_types`, `types_produits`) VALUES
(1, 'Mesure du NO exhalé'),
(2, 'Spirométrie'),
(3, 'Apnée du sommeil'),
(4, 'Oxymètres de pouls'),
(5, 'Débimètre de pointe Peak Flow '),
(6, 'IN-CHECK, Peak Flow Nasal Inspiratoire (PNIF)'),
(7, 'Embouts Adaptateurs Turbines '),
(8, 'Thermomètres  '),
(9, 'Chambres d\'inhalation'),
(10, 'Nébuliseurs'),
(11, 'Oreiller pour personne appareillée'),
(12, 'Spiromètres incitatifs'),
(13, 'Désencombrement pulmonaire Flutter'),
(14, 'Sangles thoraciques'),
(15, 'Pack d\'entrainement respiratoire : mucoviscidose, BPCO, asthme,... '),
(16, 'Aspiration sous-glottique '),
(17, 'DM d\'aide à la toux avec mode percussion '),
(18, 'FLUTTER '),
(19, 'Canules de trachéotomie et d\'intubation'),
(20, 'Equipements de protection'),
(21, 'Literie anti-acariens'),
(22, 'Protection anti UV'),
(23, 'Protection des plaies');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `prenom` varchar(250) NOT NULL,
  `photo` varchar(350) NOT NULL,
  `email` varchar(250) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `etoile` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `name`, `prenom`, `photo`, `email`, `message`, `etoile`) VALUES
(20, 'dhoryan', 'provins', 'OIG.jpg', 'dhoryan@lifear.com', 'je test le site web pour voir si il fonctionne bien :}', 5);

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE `panier` (
  `id_panier` int(11) NOT NULL,
  `nom_utilisateur` varchar(250) NOT NULL,
  `prenom_utilisateur` varchar(250) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `name_article` varchar(350) NOT NULL,
  `prix_article` float NOT NULL,
  `id_article` int(11) NOT NULL,
  `nombres` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `ID_utilisateur` int(11) NOT NULL,
  `email` text NOT NULL,
  `mot_de_passe` text NOT NULL,
  `date_inscription` datetime NOT NULL DEFAULT current_timestamp(),
  `prenom` text NOT NULL,
  `nom` text NOT NULL,
  `photo` text NOT NULL,
  `rank` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`ID_utilisateur`, `email`, `mot_de_passe`, `date_inscription`, `prenom`, `nom`, `photo`, `rank`) VALUES
(1, 'dhoryan@lifear.com', '$2y$10$ePksfR3YBRkTLCr4fC3J8O8GlQak0BCi.JTRl7sYNxej.eyadIatu', '2023-04-03 11:08:45', 'provins', 'dhoryan', 'OIG.jpg', 1),
(2, 'noé@gmail.com', '$2y$10$El3BfibklMHDHB7qvJjXIepEmdIMjSvOiICfVhQGXak6.DPwmET.K', '2023-03-30 10:39:43', 'noé', 'lacroix', '934062.jpg', 4),
(3, 'gaspard@gmail.com', '$2y$10$QVS048PxePi9bC6rsEaYqO2xDTJhd3AYmJoaTxLGs5vE60ju2EikK', '2022-04-08 16:03:39', 'gaspard', 'Périquet', '704042.jpg', 2),
(4, 'lucas_c@gmail.com', '$2y$10$NCO9.XaWXdi68E/ox6fns.QoGrb6Hb7zBzo9mYtzAoG6kvBI9NAYu', '2022-04-04 21:49:54', 'lucas', 'colinet', '704042.jpg', 3),
(5, 'lucas_j@gmail.com', '$2y$10$NCO9.XaWXdi68E/ox6fns.QoGrb6Hb7zBzo9mYtzAoG6kvBI9NAYu', '2022-04-04 21:49:54', 'lucas', 'jauniaux', '729115.jpg', 3),
(6, 'fred@gmail.com', '$2y$10$HdxgNmegRc0ThpqEPGpQEe7E2P9u4yHrH6BTxiiKEPclChcVuNShm', '2022-04-04 21:49:54', 'frederic', 'Mboty', '934062.jpg', 4),
(7, 'thibault@gmail.com', '$2y$10$NCO9.XaWXdi68E/ox6fns.QoGrb6Hb7zBzo9mYtzAoG6kvBI9NAYu', '2022-04-04 21:49:54', 'Thibault', 'Ganseman', '704042.jpg', 3),
(8, 'paco@gmail.com', '$2y$10$rwtrt/rMLDfxx0xa/3c2SeEo4eIaAP2n2FUdpVSYBzk9AD5eXQsV.', '2022-04-27 15:15:31', 'paco', 'Bearzatto', '934062.jpg', 4),
(9, 'bruno@gmail.com', '$2y$10$bTpCS97YkOFgazyCOtbaQ.PNYqU82k4Yu980jPfP8kUVRjRTSfWKS', '2023-04-11 13:35:17', 'bruno', 'de vocht', '910139.jpg', 1),
(10, 'guigui@gmail.com', '$2y$10$6H6/Xi6XmgSbss.s/pc5gOxYgJhEEadsj95tRWtUFiOrjIDRhVIty', '2023-06-02 14:22:27', 'Hugo', 'Guignies', '934062.jpg', 4),
(11, 'manon@gmail.com', '$2y$10$74AhcVhhBL9o55.Bz5CZ2.x8LjOmVWwer1cBr/Apz31/eXMbyz7Ae', '2023-06-02 14:22:27', 'Manon', 'Gobert', '932496.jpg', 3),
(12, 'cyril@gmail.com', '$2y$10$gBul3fy2M./A0hJAbl3fqOedWOnIEbp9c/SEr6/IrY8cAEi12K37K', '2023-06-02 14:22:27', 'Cyril', 'Claus\r\n', '932496.jpg', 2),
(13, 'mathis@gmail.com', '$2y$10$NCO9.XaWXdi68E/ox6fns.QoGrb6Hb7zBzo9mYtzAoG6kvBI9NAYu', '2022-04-04 21:49:54', 'Mathis', 'Rasseneur', '704042.jpg', 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id_article`),
  ADD KEY `types` (`type`);

--
-- Index pour la table `id_objets`
--
ALTER TABLE `id_objets`
  ADD PRIMARY KEY (`id_types`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id_panier`),
  ADD KEY `id_article` (`id_article`),
  ADD KEY `id_utilisateur` (`id_utilisateur`),
  ADD KEY `id_article_2` (`id_article`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`ID_utilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433057185;

--
-- AUTO_INCREMENT pour la table `id_objets`
--
ALTER TABLE `id_objets`
  MODIFY `id_types` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `panier`
--
ALTER TABLE `panier`
  MODIFY `id_panier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `ID_utilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`type`) REFERENCES `id_objets` (`id_types`);

--
-- Contraintes pour la table `panier`
--
ALTER TABLE `panier`
  ADD CONSTRAINT `panier_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateurs` (`ID_utilisateur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
