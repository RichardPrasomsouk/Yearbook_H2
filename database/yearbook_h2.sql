-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 26 oct. 2023 à 08:45
-- Version du serveur : 5.7.24
-- Version de PHP : 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `yearbook_h2`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `reading_estimation_time` int(11) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` longtext COLLATE utf8mb4_unicode_ci,
  `introduction` longtext COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_reader` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pictures` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linked_documents` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `created_at`, `updated_at`, `reading_estimation_time`, `body`, `sub_title`, `introduction`, `title`, `media_reader`, `pictures`, `linked_documents`) VALUES
(2, 2, '2023-01-17', NULL, 7, '“Arrêtez de coder, apprenez à développer” \r\n\r\nCoder. Développer. Avez-vous remarqué que l\'on emploie indifféremment un mot et l\'autre ? Sont-ils strictement équivalents ?\r\n\r\nDévelopper, on voit bien : on développe des sites Web, des applications mobiles, des jeux, de l\'informatique embarquée... on facilite des métiers existants en les dématérialisant, on crée de nouveaux usages, on ouvre de nouveaux horizons.\r\n\r\nFort bien.\r\n\r\nMais pourquoi coder ? Le mot évoque la cryptographie, champ de savoir dans lequel un message n\'est plus directement intelligible par les humains. C’est logique puisque le code est destiné aux machines. Cela remonte aux cartes perforées des orgues de Barbarie - on encode une musique - et des métiers à tisser - on encode un motif - ancêtres de l\'ordinateur.\r\n\r\nApprendre à parler aux machines, c’est la base. De la même manière que la farine est la matière première du boulanger, le code est notre matière première, à nous développeurs et développeuses. Ne vous laissez pas attirer par les sirènes du Management, avec un grand \"M\". Le management ne saurait être une fin en soi. Le management n\'est qu\'un moyen, éventuellement nécessaire, pour atteindre un objectif : développer un produit, faire bouger les lignes, résoudre des problèmes.\r\n\r\nDévelopper notre société, bâtir un meilleur futur, tel est notre objectif.\r\n\r\nSeulement voilà, coder, parler à des machines ne suffit pas. Le code est chose sociale : on écrit du code pour des humains, sinon on en serait encore à l\'assembleur, qui lui est un langage qui « parle aux machines ». Au contraire, les langages usuels - HTML, CSS, JavaScript, Python, Go, you name it - se situent à un très haut niveau. Ce sont des protocoles d’interface Homme/Machine. On parle d\'ailleurs de langages de programmation, de grammaire, de syntaxe, de mots-clefs, tous ces emprunts à la linguistique ne sont pas anodins : quand on code, on s\'adresse en fait à des humains.\r\n\r\nA bien y regarder, le code ne réalise-t-il pas l\'ambition de l\'Esperanto ? Une lingua franca permettant à deux personnes de se comprendre malgré la distance et les différences de culture, de religion peut-être. Là réside la beauté de l\'open source.\r\n\r\nParler à des machines ne suffit pas. Mon code marche ne suffit donc pas. Cela, peu de développeurs et de développeuses le comprennent. La tension du marché du travail est telle qu\'il est aujourd’hui facile de trouver un emploi après quelques mois d\'un bootcamp, comme il en fleurit par dizaines ces dernières années. Pourquoi ne pas s\'en contenter, alors, en bons adeptes du \"Sam\'suf it ? Nous ne saurions nous satisfaire de produire un code passable, \"juste ok\". Comme Oscar Wilde, contentons-nous du meilleur !\r\n\r\nSoyons des artisans du code. Aimons le travail bien fait, et même, osons le mot, la perfection. Abandonner l\'idée de perfection, c\'est abandonner l\'idée même d\'amélioration, l\'idée du mieux, l\'idée du bien. Soyons ambitieux, visons haut et n\'ayons de cesse de progresser, de transmettre, de créer, de retravailler, d\'améliorer, de consolider, de faire vivre notre passion pour le code.\r\n\r\nEt concrètement ?\r\n\r\nCe ne sont pas de vaines paroles : l\'artisanat logiciel, software craftsmanship, recouvre un ensemble de pratiques qui trouvent leur origine dans l\'*Extreme Programming des années 1990. L\'agilité en est indissociable. Ce savoir met l\'accent sur la lisibilité du code, les pratiques de test et la modularisation, trois composantes qui sont autant de gages d\'un programme capable d\'évoluer sur le long terme et donc de durer.\r\n\r\nUn code trop dur à comprendre, un code qui ne fonctionne plus à la moindre modification, c\'est un code bon à jeter. Impossible d\'y rajouter des fonctionnalités, impossible même de le maintenir en état. Un tel code, c\'est un manoir qui tombe en ruine : c\'est du gâchis. Ce savoir est finalement peu enseigné, car peu de personnes le maîtrisent. C\'est ma raison d\'enseigner auprès d\'entreprises, que j\'aide à produire du meilleur code, et auprès d\'HETIC, qui, avant les autres, a compris l\'importance de l\'artisanat logiciel.\r\n\r\nAlors... Arrêtez de coder, apprenez à développer !', '', 'Coder. Développer. Avez-vous remarqué que l\'on emploie indifféremment un mot et l\'autre ? Sont-ils strictement équivalents ?\r\n\r\nDévelopper, on voit bien : on développe des sites Web, des applications mobiles, des jeux, de l\'informatique embarquée... on facilite des métiers existants en les dématérialisant, on crée de nouveaux usages, on ouvre de nouveaux horizons.\r\n\r\nFort bien.\r\n\r\nMais pourquoi coder ? Le mot évoque la cryptographie, champ de savoir dans lequel un message n\'est plus directement intelligible par les humains. C’est logique puisque le code est destiné aux machines. Cela remonte aux cartes perforées des orgues de Barbarie - on encode une musique - et des métiers à tisser - on encode un motif - ancêtres de l\'ordinateur.', 'EDITO Dev - “Arrêtez de coder, apprenez à développer” par Mathieu Eveillard - Expert en qualité logicielle/Artisanat logiciel, Intervenant et formateur Hetic', NULL, NULL, NULL),
(3, 2, '2023-03-29', NULL, 12, 'La vie, c\'est des problèmes. Voilà qui est dit, il commence bien cet article. Nous rencontrons des problèmes en permanence : chercher un sens à ce que l’on fait, gagner sa vie, rendre un projet à temps ou même parler à un public. Moi le premier, j\'ai fait face à foule de problèmes : dans mes relations humaines, dans mon orientation (deux réorientations au compteur, ce n’est pas rien), dans mon travail de développeur, dans les cours que j\'ai donné, j\'en passe et des meilleurs. On se retrouve chaque jour devant eux. La vie ne se fait pas sans problèmes.\r\n\r\nJ\'ai longtemps été en désarroi face à ce constat, pourquoi diable suis-je obligé de m\'infliger ça? Mais finalement, s’il y a des problèmes, c’est que l’on est en vie. C\'est parce que nous sommes en vie que nous désirons avoir de bonnes relations, avoir de bonnes occupations, ou encore avoir un travail qui nous plait. Les problèmes ne sont que la manifestation de nos besoins et envies qui font ce que nous sommes, et le voir c’est un premier pas vers leur résolution. Mark Manson, un auteur de notre époque, dit même que la vie, c\'est choisir les problèmes que l\'on a envie d\'avoir, en voilà une sagesse.\r\n\r\nAlors, puisqu’ils font partie intégrante de nous-même et que l’on ne peut en réchapper, comment les aborder, ces problèmes? Quels moyens avons-nous à disposition pour les résoudre au quotidien, dans nos projets, dans nos relations, dans nos jobs?\r\n\r\nLe point de départ de ma réponse réside dans la nature même des problèmes : ils marquent les limites de nos capacités et de notre connaissance. Il nous faut donc, pour dépasser ces limites, des outils et du savoir. Des extensions de l’esprit et du corps qui permettent d’accomplir notre ouvrage, quel qu’il soit. Après 7 ans d’études et encore plus d’années de problèmes, j’aimerais vous donner des pistes pour rendre votre vie plus simple, plus pleine, plus belle. Des pistes pour vous aider à devenir des aventuriers du quotidien.\r\n\r\nJe nous vois tous comme des explorateurs, des arpenteurs du monde qui cherchent à accomplir toujours plus et à repousser les frontières de la connaissance. Il y a donc, selon moi, deux choses qui font l’apanage de l’explorateur moderne : ses outils, et son savoir.\r\n\r\nAméliorer et agrandir sa boîte à outils\r\nCette partie, la plus évidente, recouvre tous les outils dont nous faisons un usage évident au quotidien, ordinateur, téléphones, casque audio, etc, mais elle comprend aussi les logiciels : VS Code, Figma, Slack, etc. Grâce à eux, nous travaillons avec des gens à travers le monde, nous développons, nous designons et bien d’autres merveilles. Mais nous ne sommes pas habitués, je trouve, à chercher au-delà de ce que l’on utilise pour notre artisanat quotidien.\r\n\r\nOr, parmi la galaxie d’outils qui existent, certains permettent de dépasser des limites auxquelles on ne pense pas.\r\nLe plus important d’entre eux, pour moi, est Obsidian. C’est un logiciel que j’utilise tous les jours et qui permet de prendre magnifiquement des notes, mais aussi de les organiser, les lier entre elles. Il résout le problème de dispersion de l’information que l’on reçoit pendant nos cours, nos veilles, nos lectures, nos consommations de vidéos. Mais au-delà, il permet de créer un formidable réseau de connaissances personnelles, en reliant les informations entre elles comme un Wikipédia personnel. Il permet d’avoir un véritable deuxième cerveau.\r\n\r\nLe plus important d’entre eux, pour moi, est Obsidian. C’est un logiciel que j’utilise tous les jours et qui permet de prendre magnifiquement des notes, mais aussi de les organiser, les lier entre elles. Il résout le **problème de dispersion de l’information** que l’on reçoit pendant nos cours, nos veilles*,* nos lectures, nos consommations de vidéos. Mais au-delà, il permet de créer un formidable **réseau de connaissances** personnelles, en reliant les informations entre elles comme un Wikipédia personnel. Il permet d’avoir un véritable **deuxième cerveau**.\r\n\r\nIl est notre *carte du monde* qui nous guide dans nos expéditions*,* notre *journal de bord* que l’on actualise à chaque découverte.\r\n\r\nC’est un outil qui, une fois couplé à des méthodes de *Personnal Knowledge Management* comme PARA et l’atomisation (qui permettent un rangement très efficace de ses documents et notes, mais aussi de les traiter pour en tirer une vraie valeur au-delà de la simple collection), devient un impressionnant levier pour comprendre ce qui est, et agir sur ce qui peut devenir. Ce système outil + méthode devient un véritable moteur de ce qui est le plus essentiel : le savoir (more about that down a few lines, folks).\r\n\r\nAprès l’organisation de son savoir, un bon explorateur se doit d\'organiser ses tâches et sa feuille de route. Pour cela, je recommande chaudement des outils comme Todoist, ou si on est plus aventureux, comme Notion. Ils aident à résoudre foule de **problèmes d’oublis, de procrastination, d’organisation, de priorisation, de stress**. On peut les coupler avec la méthode PARA à nouveau, on peut utiliser un système de priorisation comme la matrice d\'Eisenhower, et/ou implémenter la superbe méthode Getting Things Done.\r\n\r\nEn parallèle de cela, je vous conseille d’utiliser un calendrier et tout y recenser : deadlines, sorties entre amis, oraux, etc. Créez une adresse email personnelle et une professionnelle/scolaire et reliez-les chacune à un calendrier que vous synchronisez dans un logiciel comme Cron ou Apple Calendar. C’est sûrement le conseil le plus évident, mais le plus efficace pour faciliter son quotidien.\r\n\r\n**Bien évidemment, ces suggestions sont un point de départ et c’est à chacun de construire son propre couteau suisse, pour ses propres problèmes. L’important est l’élan!** Avoir de tels éléments dans sa *boîte à outils* permet de repousser les frontières de ce que l’on peut faire, de s’imaginer de plus grandes ambitions, de faciliter et pousser à la collaboration avec ses pairs et de vivre dans une plus grande sérénité (et c’est un stressé qui vous le dit), mais ces outils prennent tout leur sens quand ils sont couplés à la connaissance.\r\n\r\n**Développer sa culture et son savoir**\r\n\r\n**Le savoir est l’ensemble des informations que l’on a sur le monde, stockées sous forme de souvenirs et d’intuitions. C’est dans le savoir que l’on trouve nos idées pour résoudre les problèmes, dans lequel on puise pour raisonner et analyser.**\r\n\r\nL’explorateur averti (et un explorateur averti en vaut deux) est celui qui est clairvoyant, celui qui en sait un rayon. Sa connaissance des choses lui permet certes de résoudre un problème qui survient - comme un bug, ou comprendre les besoins d’un client, ou encore chapeauter une équipe - mais elle lui permet aussi de faire le choix de sa prochaine destination, de sa prochaine orientation. Ce point est essentiel si on ne veut pas tourner en rond.\r\n\r\nSi je consacre une partie de cet article à quelque chose qui semble évident, c’est parce que cela ne l’est pas tant. De par notre culture cartésienne, nous sommes formés à cloisonner la connaissance : la science avec la science, la technique avec la technique, la philosophie avec la philosophie - enfin, vous avez compris. Mais les frontières, ça n’existe que sur les cartes et dans les esprits. Le monde est complexe, tout est tissé ensemble. **On ne nous a pas appris la curiosité, seulement le par cœur et l’application, ce qui fait que nous manquons d’élan.** Or, c’est cet élan initiateur, ce mouvement vers l’information, qui fait d’une personne un acteur compétent et un modificateur impactant.\r\n\r\nC’est à l’aide de cette curiosité et des outils et méthodes (rappelez-vous, c’était déjà il y a deux paragraphes), qu’il est possible de reprendre le pouvoir sur les problèmes qui surviennent. Aujourd’hui, il est extrêmement facile de faire de la veille (flux RSS, journaux tech et design, chaînes Youtube, etc), de trouver de la documentation, de trouver des experts avec qui discuter (aucun expert ne sera ennuyé de partager du savoir sur sa passion, alors allez donc les chercher sur Linkedin, allez chercher les alumni). **Vous pouvez devenir des *cartographes* de la réalité, affiner information après information votre modèle du monde : du web à la psychologie, en passant par l’histoire et l’économie. Car ce modèle est celui qui vous permet d’analyser les évènements, de faire des prédictions, de comprendre les problèmes.**\r\n\r\nBien loin de mes études, je ne serai jamais assez reconnaissant d\'avoir rencontré, pendant mes expéditions curieuses, des scientifiques comme Robert Sapolsky, Andrew Huberman ou Stephen Hawking qui m’ont permis d’en savoir plus sur moi-même, sur l’univers que j’occupe, et m’ont permis d’être plus libre de mes choix. Et ils sont à portée de doigts.\r\n\r\n**Cette connaissance globale m’a permis de faire des rencontres importantes dans tous les milieux, d’être plus qu’un codeur, de comprendre les enjeux de mon travail et de développer des projets qui me touchent. Que demande le peuple!**\r\n\r\nJ’ai à cœur d’ajouter, pour tout ce qu’elle m’a apporté, même la philo (ô le vilain mot) - qui paraît si rebutante - peut vous apporter beaucoup et partout. Nombre de philosophies - comme l’épicurisme, ou le stoïcisme, comme les idées de Spinoza ou de Sartre, ou des spiritualités comme le bouddhisme (qu’est-ce que ça fait ici, je croyais qu’on était des gens sérieux, nous) - parlent de choses aussi simples que la vie, le quotidien, les problèmes, le besoin de sens, la joie et la tristesse, les plaisirs. **Je ne compte plus le nombre de fois qu’une lecture ou une simple vidéo de vulgarisation sur ces idées a changé ma vision du monde et de moi-même.** Si j\'arrivais à décomplexer votre vision de la philosophie et à vous faire consulter un de ces sujets, ne serait-ce que quelques minutes,\r\n\r\nalors, ma mission ici sera déjà remplie car je sais d’expérience tout ce que cela peut apporter à une personne.\r\n\r\nAujourd\'hui, j\'ai dans les mains une carte à moi, certes encore petite et approximative face à l’étendue du monde, mais dont je suis fier. J’ai une carte qui me permet de me diriger dans l’océan des problèmes et que j’ai construite simplement, vidéo après vidéo, article après article, bouquin après bouquin. J’ai pris plaisir à chaque étape de sa construction, constatant avec joie l’amélioration de ma capacité de jugement et le fruit de son application. **À notre ère d\'informations et de complexité sans précédent, si nous désirons être maîtres de notre évolution, il est nécessaire d\'entreprendre cette quête merveilleuse qu\'est la recherche de savoir.**\r\n\r\nJ’aimerais terminer en parlant une dernière fois de moi. À mon échelle, j\'ai décidé de créer des cours sur ces sujets, de passer du temps à trouver des outils, à écrire et à poursuivre cette quête du savoir. C’est par cet élan que j’ai trouvé une voie qui me convient, que j’ai pu aider mes proches et mes pairs sur des sujets extrêmement variés, que j’ai pu convaincre des personnes de travailler avec moi, et j’espère insuffler chez vous la même petite flamme. **Le savoir est le réenchantement du regard et les outils sont les mains de la vie.**\r\n\r\nEnfin (ah, enfin ça y est, on arrive au bout), je suis convaincu que c’est en agissant en communauté, en mettant en commun nos outils et notre curiosité, que nous arriverons à créer du sens et que nous trouverons les moyens d’atteindre nos objectifs. **Il nous suffit simplement de nous nourrir de la joie d\'apprendre et de créer, et de surfer sur le plaisir du partage pour que, tous ensemble, nous devenions une *flotte d\'explorateurs* prêts à cartographier tout ce qui bouge, prêts à résoudre tous les problèmes que la mer nous enverra.**\r\n\r\n**Nous avons un grand pouvoir, alors montons à bord de la curiosité, hissons haut nos outils, et cap sur l\'inconnu!**\r\n\r\n**NB : *Cette année, j\'ai le plaisir d\'animer, de coordonner et de participer à un mouvement avec l\'ensemble des actuels étudiant-e-s d\'HETIC : OpenBoX, qui est un dispositif de partage de connaissance de pair-à-pair, sur des sujets qui vont du développement informatique à la prise de parole ou à la gestion de son savoir, entre autres. Je suis enthousiasmé par la vivacité et l\'énergie de ce collectif libre et indépendant au sein du campus Hetic!***', 'Dans l’économie de la connaissance, l’organisation de ses savoirs est une compétence indispensable. Tout le monde sur le pont!', NULL, 'La Quête du Savoir', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `articles_tags`
--

CREATE TABLE `articles_tags` (
  `articles_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles_tags`
--

INSERT INTO `articles_tags` (`articles_id`, `tags_id`) VALUES
(2, 3),
(2, 6),
(3, 7);

-- --------------------------------------------------------

--
-- Structure de la table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `author_first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biography` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `website_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `authors`
--

INSERT INTO `authors` (`id`, `author_first_name`, `author_last_name`, `biography`, `website_url`, `github_url`, `linkedin_url`, `author_status`) VALUES
(1, 'Quentin', 'Maillard', 'il est cool', NULL, NULL, NULL, 'alumni'),
(3, 'Mathieu', 'Eveillard', '', NULL, NULL, 'https://www.linkedin.com/in/meveillard/ Mathieu Eveillard', 'Développeur'),
(4, 'Grégoire', 'Charassin', '', NULL, NULL, 'https://www.linkedin.com/in/gcharrassin/', 'Designer '),
(5, 'Adrien', 'Rivierre', '', NULL, NULL, 'https://www.linkedin.com/in/adrienrivierre/', 'Designer');

-- --------------------------------------------------------

--
-- Structure de la table `authors_articles`
--

CREATE TABLE `authors_articles` (
  `authors_id` int(11) NOT NULL,
  `articles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `authors_articles`
--

INSERT INTO `authors_articles` (`authors_id`, `articles_id`) VALUES
(1, 3),
(3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'Interview', NULL),
(2, 'Edito', NULL),
(3, 'Journal de Bord', NULL),
(4, 'Témoignage Métier', NULL),
(5, 'Vidéo', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20231023120616', '2023-10-23 12:07:27', 43),
('DoctrineMigrations\\Version20231023124319', '2023-10-23 12:43:45', 22),
('DoctrineMigrations\\Version20231025102120', '2023-10-25 10:21:48', 771);

-- --------------------------------------------------------

--
-- Structure de la table `external_links`
--

CREATE TABLE `external_links` (
  `id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `block_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `image_edge`
--

CREATE TABLE `image_edge` (
  `id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `block_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `image_side`
--

CREATE TABLE `image_side` (
  `id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `pictures` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `block_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `linked_documents`
--

CREATE TABLE `linked_documents` (
  `id` int(11) NOT NULL,
  `link_id` int(11) DEFAULT NULL,
  `block_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `paragraph`
--

CREATE TABLE `paragraph` (
  `id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `block_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `quote`
--

CREATE TABLE `quote` (
  `id` int(11) NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `block_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `quote`
--

INSERT INTO `quote` (`id`, `text`, `author`, `article_id`, `block_order`) VALUES
(3, 'Parler à des machines ne suffit pas. “Mon code marche\" ne suffit donc pas. Cela, peu de développeurs et de développeuses le comprennent.', 'Mathieu Eveillard', NULL, 1),
(4, 'Or, parmi la galaxie d’outils qui existent, certains permettent de dépasser des limites auxquelles on ne pense pas.', 'Quentin Maillard', NULL, 2);

-- --------------------------------------------------------

--
-- Structure de la table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `pictures` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `block_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `block_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tags`
--

INSERT INTO `tags` (`id`, `name`, `block_order`) VALUES
(2, 'design', 0),
(3, 'craftmanship', 1),
(4, 'figma', 2),
(5, 'projet', 3),
(6, 'code', 4),
(7, 'veille', 5);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BFDD316812469DE2` (`category_id`);

--
-- Index pour la table `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD PRIMARY KEY (`articles_id`,`tags_id`),
  ADD KEY `IDX_354053611EBAF6CC` (`articles_id`),
  ADD KEY `IDX_354053618D7B4FB4` (`tags_id`);

--
-- Index pour la table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `authors_articles`
--
ALTER TABLE `authors_articles`
  ADD PRIMARY KEY (`authors_id`,`articles_id`),
  ADD KEY `IDX_7F98407F6DE2013A` (`authors_id`),
  ADD KEY `IDX_7F98407F1EBAF6CC` (`articles_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `external_links`
--
ALTER TABLE `external_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E3CFD29B7294869C` (`article_id`);

--
-- Index pour la table `image_edge`
--
ALTER TABLE `image_edge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_873C39F87294869C` (`article_id`);

--
-- Index pour la table `image_side`
--
ALTER TABLE `image_side`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D1BBF12B7294869C` (`article_id`);

--
-- Index pour la table `linked_documents`
--
ALTER TABLE `linked_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B4B2BD83ADA40271` (`link_id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `paragraph`
--
ALTER TABLE `paragraph`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7DD398627294869C` (`article_id`);

--
-- Index pour la table `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6B71CBF47294869C` (`article_id`);

--
-- Index pour la table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `external_links`
--
ALTER TABLE `external_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `image_edge`
--
ALTER TABLE `image_edge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `image_side`
--
ALTER TABLE `image_side`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `linked_documents`
--
ALTER TABLE `linked_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `paragraph`
--
ALTER TABLE `paragraph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `quote`
--
ALTER TABLE `quote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `FK_BFDD316812469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD CONSTRAINT `FK_354053611EBAF6CC` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_354053618D7B4FB4` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `authors_articles`
--
ALTER TABLE `authors_articles`
  ADD CONSTRAINT `FK_7F98407F1EBAF6CC` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_7F98407F6DE2013A` FOREIGN KEY (`authors_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `external_links`
--
ALTER TABLE `external_links`
  ADD CONSTRAINT `FK_E3CFD29B7294869C` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);

--
-- Contraintes pour la table `image_edge`
--
ALTER TABLE `image_edge`
  ADD CONSTRAINT `FK_873C39F87294869C` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);

--
-- Contraintes pour la table `image_side`
--
ALTER TABLE `image_side`
  ADD CONSTRAINT `FK_D1BBF12B7294869C` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);

--
-- Contraintes pour la table `linked_documents`
--
ALTER TABLE `linked_documents`
  ADD CONSTRAINT `FK_B4B2BD83ADA40271` FOREIGN KEY (`link_id`) REFERENCES `articles` (`id`);

--
-- Contraintes pour la table `paragraph`
--
ALTER TABLE `paragraph`
  ADD CONSTRAINT `FK_7DD398627294869C` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);

--
-- Contraintes pour la table `quote`
--
ALTER TABLE `quote`
  ADD CONSTRAINT `FK_6B71CBF47294869C` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
