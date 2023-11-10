-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 10 nov. 2023 à 15:22
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
(2, 2, '2023-01-17', NULL, 7, '“Arrêtez de coder, apprenez à développer” \n\nCoder. Développer. Avez-vous remarqué que l\'on emploie indifféremment un mot et l\'autre ? Sont-ils strictement équivalents ?\n\nDévelopper, on voit bien : on développe des sites Web, des applications mobiles, des jeux, de l\'informatique embarquée... on facilite des métiers existants en les dématérialisant, on crée de nouveaux usages, on ouvre de nouveaux horizons.\n\nFort bien.\n\nMais pourquoi coder ? Le mot évoque la cryptographie, champ de savoir dans lequel un message n\'est plus directement intelligible par les humains. C’est logique puisque le code est destiné aux machines. Cela remonte aux cartes perforées des orgues de Barbarie - on encode une musique - et des métiers à tisser - on encode un motif - ancêtres de l\'ordinateur.\n\nApprendre à parler aux machines, c’est la base. De la même manière que la farine est la matière première du boulanger, le code est notre matière première, à nous développeurs et développeuses. Ne vous laissez pas attirer par les sirènes du Management, avec un grand \"M\". Le management ne saurait être une fin en soi. Le management n\'est qu\'un moyen, éventuellement nécessaire, pour atteindre un objectif : développer un produit, faire bouger les lignes, résoudre des problèmes.\n\nDévelopper notre société, bâtir un meilleur futur, tel est notre objectif.\n\nSeulement voilà, coder, parler à des machines ne suffit pas. Le code est chose sociale : on écrit du code pour des humains, sinon on en serait encore à l\'assembleur, qui lui est un langage qui « parle aux machines ». Au contraire, les langages usuels - HTML, CSS, JavaScript, Python, Go, you name it - se situent à un très haut niveau. Ce sont des protocoles d’interface Homme/Machine. On parle d\'ailleurs de langages de programmation, de grammaire, de syntaxe, de mots-clefs, tous ces emprunts à la linguistique ne sont pas anodins : quand on code, on s\'adresse en fait à des humains.\n\nA bien y regarder, le code ne réalise-t-il pas l\'ambition de l\'Esperanto ? Une lingua franca permettant à deux personnes de se comprendre malgré la distance et les différences de culture, de religion peut-être. Là réside la beauté de l\'open source.\n\nParler à des machines ne suffit pas. Mon code marche ne suffit donc pas. Cela, peu de développeurs et de développeuses le comprennent. La tension du marché du travail est telle qu\'il est aujourd’hui facile de trouver un emploi après quelques mois d\'un bootcamp, comme il en fleurit par dizaines ces dernières années. Pourquoi ne pas s\'en contenter, alors, en bons adeptes du \"Sam\'suf it ? Nous ne saurions nous satisfaire de produire un code passable, \"juste ok\". Comme Oscar Wilde, contentons-nous du meilleur !\n\nSoyons des artisans du code. Aimons le travail bien fait, et même, osons le mot, la perfection. Abandonner l\'idée de perfection, c\'est abandonner l\'idée même d\'amélioration, l\'idée du mieux, l\'idée du bien. Soyons ambitieux, visons haut et n\'ayons de cesse de progresser, de transmettre, de créer, de retravailler, d\'améliorer, de consolider, de faire vivre notre passion pour le code.\n\nEt concrètement ?\n\nCe ne sont pas de vaines paroles : l\'artisanat logiciel, software craftsmanship, recouvre un ensemble de pratiques qui trouvent leur origine dans l\'*Extreme Programming des années 1990. L\'agilité en est indissociable. Ce savoir met l\'accent sur la lisibilité du code, les pratiques de test et la modularisation, trois composantes qui sont autant de gages d\'un programme capable d\'évoluer sur le long terme et donc de durer.\n\nUn code trop dur à comprendre, un code qui ne fonctionne plus à la moindre modification, c\'est un code bon à jeter. Impossible d\'y rajouter des fonctionnalités, impossible même de le maintenir en état. Un tel code, c\'est un manoir qui tombe en ruine : c\'est du gâchis. Ce savoir est finalement peu enseigné, car peu de personnes le maîtrisent. C\'est ma raison d\'enseigner auprès d\'entreprises, que j\'aide à produire du meilleur code, et auprès d\'HETIC, qui, avant les autres, a compris l\'importance de l\'artisanat logiciel.\n\nAlors... Arrêtez de coder, apprenez à développer !', '', 'Coder. Développer. Avez-vous remarqué que l\'on emploie indifféremment un mot et l\'autre ? Sont-ils strictement équivalents ?\r\n\r\nDévelopper, on voit bien : on développe des sites Web, des applications mobiles, des jeux, de l\'informatique embarquée... on facilite des métiers existants en les dématérialisant, on crée de nouveaux usages, on ouvre de nouveaux horizons.\r\n\r\nFort bien.\r\n\r\nMais pourquoi coder ? Le mot évoque la cryptographie, champ de savoir dans lequel un message n\'est plus directement intelligible par les humains. C’est logique puisque le code est destiné aux machines. Cela remonte aux cartes perforées des orgues de Barbarie - on encode une musique - et des métiers à tisser - on encode un motif - ancêtres de l\'ordinateur.', 'EDITO Dev - “Arrêtez de coder, apprenez à développer” par Mathieu Eveillard - Expert en qualité logicielle/Artisanat logiciel, Intervenant et formateur Hetic', NULL, NULL, NULL),
(3, 2, '2023-03-29', NULL, 12, '**MANIFESTE Humanités numériques - “La Quête du Savoir”** \r\n\r\n**par Quentin Maillard, Fo𝐫𝐦𝐚𝐭𝐞𝐮𝐫 𝚎𝚗 𝚖é𝚝𝚑𝚘𝚍𝚘𝚕𝚘𝚐𝚒𝚎𝚜 𝚍𝚎 𝚕\'𝚊𝚙𝚙𝚛𝚎𝚗𝚝𝚒𝚜𝚜𝚊𝚐𝚎 𝚎𝚝 𝚍𝚞 𝚝𝚛𝚊𝚟𝚊𝚒𝚕, 𝐎𝐯𝐞𝐫-𝐒𝐭𝐚𝐜𝐤 𝐒𝐨𝐟𝐭𝐰𝐚𝐫𝐞 𝐄𝐧𝐠𝐢𝐧𝐞𝐞𝐫**\r\n\r\n**TITRE : La Quête du Savoir**\r\n\r\nLa vie, c\'est des problèmes. Voilà qui est dit, il commence bien cet article. Nous rencontrons des problèmes en permanence : chercher un sens à ce que l’on fait, gagner sa vie, rendre un projet à temps ou même parler à un public. Moi le premier, j\'ai fait face à foule de problèmes : dans mes relations humaines, dans mon orientation (deux réorientations au compteur, ce n’est pas rien), dans mon travail de développeur, dans les cours que j\'ai donné, j\'en passe et des meilleurs. On se retrouve chaque jour devant eux. La vie ne se fait pas sans problèmes.\r\n\r\nJ\'ai longtemps été en désarroi face à ce constat, pourquoi diable suis-je obligé de m\'infliger ça? Mais finalement, s’il y a des problèmes, c’est que l’on est en vie. C\'est parce que nous sommes en vie que nous désirons avoir de bonnes relations, avoir de bonnes occupations, ou encore avoir un travail qui nous plait. Les problèmes ne sont que la manifestation de nos besoins et envies qui font ce que nous sommes, et le voir c’est un premier pas vers leur résolution. Mark Manson, un auteur de notre époque, dit même que la vie, c\'est choisir les problèmes que l\'on a envie d\'avoir, en voilà une sagesse.\r\n\r\nAlors, puisqu’ils font partie intégrante de nous-même et que l’on ne peut en réchapper, comment les aborder, ces problèmes? Quels moyens avons-nous à disposition pour les résoudre au quotidien, dans nos projets, dans nos relations, dans nos jobs?\r\n\r\nLe point de départ de ma réponse réside dans la nature même des problèmes : ils marquent les limites de nos **capacités** et de notre **connaissance**. Il nous faut donc, pour dépasser ces limites, des **outils** et du **savoir**. Des extensions de l’esprit et du corps qui permettent d’accomplir notre ouvrage, quel qu’il soit. Après 7 ans d’études et encore plus d’années de problèmes, j’aimerais vous donner des pistes pour rendre votre vie plus simple, plus pleine, plus belle. Des pistes pour vous aider à devenir des aventuriers du quotidien.\r\n\r\n**Je nous vois tous comme des *explorateurs*, des arpenteurs du monde qui cherchent à accomplir toujours plus et à repousser les frontières de la connaissance. Il y a donc, selon moi, deux choses qui font l’apanage de l’explorateur moderne : ses outils, et son savoir.**', 'Dans l’économie de la connaissance, l’organisation de ses savoirs est une compétence indispensable. Tout le monde sur le pont!', NULL, 'La Quête du Savoir', NULL, 'maillard.png', NULL),
(12, 1, '2023-10-17', NULL, 5, '**Brontis G.** : A propos de The Witcher : « Il y a déjà un très bon choix de lore, celui d’avoir choisi la mythologie du sorceleur et des romans. Il y avait déjà un bon lore existant. Dans la mise en œuvre de cet univers pour les jeux de cette taille, il faut en général plusieurs jours pour s’y habituer. L’autre jour, je me baladais sur Hogwart Legacy où je ne connais absolument rien à Harry Potter ou aux différentes maisons, hormis Gryffondor. Je suis bluffé de voir que l’on n’a pas besoin de connaître l’univers pour se sentir immergé et c’est ce que le studio de développement a réussi à faire. C’est ce que CD Projekt a également réussi à faire avec The Witcher 3.\r\n\r\nC’est emblématique, on se croirait au moyen-âge, mais on n’est pas au moyen-âge ni dans n’importe quel pays qui existe. Pour moi, la quintessence, c’est le DLC Blood and Wine à Toussaint où on sait qu’on est en France même si on n’est pas en France.\r\n\r\nArriver à transposer des choses avec lesquelles les gens se sentent tellement à l’aise alors qu’on est pas du tout dans quelque chose qui est ni du vécu ni du réel, pour moi c’est un travail titanesque. A chaque fois qu’on tourne la tête, on voit un détail. Par exemple chez Ubisoft, ils développent des jeux mais ne vont pas au-delà, ils font des easter-eggs mais uniquement à propos d’autres jeux de leur studio. Alors que dans The Witcher 3, il y a de nombreuses références à la pop culture, on sent que les game designers s’amusent. Quand on ouvre la carte du jeu, voir autant d’éléments dessus peut sembler déconcertant, mais là, je prenais du plaisir à aller chercher des indices, explorer les différentes zones de jeu. C’est un jeu moddable à 100%, dans d’autres jeux, j’aurais ouvert la ligne de commande et j’aurais tapé un code pour avoir les éléments que je veux pour crafter mon armure de sorceleur. Alors que là, non, je vais chercher les ressources pour la crafter. »', NULL, '**Brontis et les jeux-vidéos : « Le jeu vidéo me permet de connaître les étudiants et d’échanger avec eux sur d’innombrables sujets. C’est notre culture commune, qui est au cœur de la transformation digitale du monde »**\r\n\r\n**Icône d’HETIC depuis 20 ans, geek parmi les geek, après de nombreuses années comme responsable des admissions Bachelors à HETIC, Brontis Guilloux a pris en 2021 la direction de l’ensemble des cursus Bachelors.** Joueur PC avant tout, même s\' il lui est arrivé d’acheter des consoles, dont la PS4 pour jouer à *The Last Of Us.* Brontis a une préférence pour les RPG (jeu de rôle de l’anglais Role Playing Game), il essaie de jouer à tout et reste à l’affût des dernières sorties.\r\n\r\n**Marie-Gwenaelle Fahem est étudiante en Bachelor Développement, après des formations au CNAM,  à WebForce, puis un parcours certifiant à OpenClassRoom, elle décide de consolider ses bonnes pratiques avec un parcours en 3 ans, dont deux en alternance à HETIC.** Perfectionniste et précise, Marie-Gwenaelle est une gameuse de longue date, fan de *The Witcher 3.*****\r\n\r\n**Elle interroge ici son directeur de formation sur la pertinence des jeux vidéo en partant de *The Witcher* qu’elle connaît et aime particulièrement :**', 'ITW Jeu Vidéo - “Dis-moi à quoi tu joues et je te dirai qui tu es”  Brontis Guilloux', NULL, NULL, NULL),
(13, 1, '2023-08-01', NULL, 5, '**Michel Cadennes** : La promesse du web sémantique c\'est pouvoir constituer ce qu\'on appelle des ontologies. Une ontologie, autrement dit, c\'est un « vocabulaire contrôlé », ou un thésaurus, permettant de modéliser un ensemble de connaissances dans un domaine précis.(La santé, ou la bibliographie, la logistique etc) sous forme d’un réseau de concepts liés entre eux par des relations dites sémantiques (fondées schématiquement sur des formes grammaticales, « est l’ami de », « est un symptôme de », « est né à », « est publié par », etc.) C’est le fondement de ce qu’on appelle le « web des données ». Le web est un réseau de documents liés entre eux, et le web des données va appliquer le même principe à des graphes de données structurées. Ça veut dire qu\'on va pouvoir créer des applications qui accèderont à ces données sur la base de formats ouverts et partagés par tout le monde. C’est ce que l’on appelle aussi des « communs numériques ».\r\n\r\nContrairement aux modèles qu\'on a l\'habitude d\'utiliser, les ontologies du web sémantique sont aussi aisément extensibles, ce qui permet une grande modularité des modèles. L’idée derrière tout ça, ce serait de mieux agréger les connaissances dispersées sur le web, de la même manière qu’une page Wikipedia est l’agrégation des contributions des utilisateurs. Un exemple très accessible d’application, c’est *Wikidata*, la version sémantique de *Wikipedia*. Tim Berners-Lee, avec le projet *Solid*, travaille à refonder le web sur des bases sémantiques (sous le nom de « linked data »).\r\n\r\nPar ailleurs, le web sémantique permet de faire de l\'inférence, du calcul logique sur des propositions, de faire des syllogismes, par exemple, je peux dire que « tout développeur est un être humain, donc si je rencontre quelque part, dans la description d\'une ontologie, la notion de développeur, je peux en déduire qu’on fait référence à un être humain ! » Ça, ça me plaisait beaucoup parce que je me suis toujours intéressé d\'une part à l\'intelligence artificielle, d\'autre part à la logique, au raisonnement, au langage, et donc je me disais qu\'avec le web sémantique, on pourrait marier le web avec du calcul logique, et donc faire des inférences et augmenter en quelque sorte la capacité, je dirais, déductive des connaissances qui sont disponibles sur le web. Mais il reste de gros problèmes théoriques et pratiques à résoudre, d’une part à cause du caractère distribué du web et d’autre part en raison du fait que le web est un « monde ouvert », ce qui est la source de multiples paradoxes que la logique n’aime pas trop.', 'Michel Cadennes, artisan de l\'IA.', 'Michel Cadennes est intervenant à HETIC en architecture des modèles informatiques. Il participe depuis dix ans à l\'Assemblée Virtuelle qui est un collectif de développeurs dont l\'objectif est de fournir au « monde associatif du bien commun » des outils de partage de connaissances, basé sur les technologies du web sémantique, leur permettant de garder le contrôle de leurs données, il est interrogé par Marie-Gwenaëlle Fahem qui termine sa première année de Bachelor\r\nDéveloppeur Web.', 'ITW Architecture Dev', NULL, 'michel.png', NULL),
(14, 5, '2022-10-08', NULL, 7, '- **Loïck Ledigabel** : Co-founder @Slowy, Ex-Senior Staff Engineer, BackMarket : Slowly\r\n\r\nNom du fichier : techaimpactcommerce\r\n\r\n- **Sabrina Nedjah** : Product Designer, Maze (aujourdh\'ui chez Shine) : Le métier de Product Designer\r\n\r\nNom du fichier : design\r\n\r\n- **Mathieu Crucq** : CEO Brainsonic : Marketing Digital\r\n\r\nNom du fichier : 1430_marketingdigital\r\n\r\n- **Jan Kasper Jakubowski et Phoebe Beigbeder** : Blockchain developer : La Blockchain, les Crypto, les NFT\r\n\r\nNom du fichier : blockchainnft\r\n\r\n- **Alexandre Hoyau** : Président de l\'association eSport F9 HETIC : Le E-Sport zet ses innovations business\r\n\r\nNom du fichier : esport\r\n\r\n- **Olivier Feix** : Expert Cybersécurité, HETIC Groupe Galileo Global Education: Le CyberCampus GGE\r\n\r\nNom du fichier : Cybersécurité\r\n\r\n- **Paul Emile Victor et Leo Largillet** : Product Manager, BlaBlaCar et membre de la Confédération Nationale des Junior-Entreprises : Président de la Junior-Entreprise Synerg\'hetic : Le mouvement des Junior Entreprises\r\n\r\nNom du fichier : entreprenariat\r\n\r\n- **Stan Larroque** : Founder Lynx VR : Le casque de réalité mixte LYNX\r\n\r\nNom du fichier : metavers\r\n\r\n- **Gautier Bories** : Co-founder RIDE Space, ex The Galion Project : Space Tech\r\n\r\nNom du fichier : spacetech\r\n\r\n- **Affiss Song** : Co-founder Bloom Alternance : Ed Tech\r\n\r\nNom du fichier : edtech\r\n\r\n- **Igor Smirnoff** : Co-founder LISA Foundation, NFT Factory : NFT, Art et Culture\r\n\r\nNom du fichier : ndfartetculture\r\n\r\n- **Vanessa Chaddouk** : COO Bcovery : Publicité digitale responsable\r\n\r\nNom du fichier : pubbascarbone\r\n\r\n- **Dominique Crochu** : Co-founder Mixity : Tech à impact, inclusion\r\n\r\nNom du fichier : inclusion\r\n\r\n- **Martin Malinvaud** : Fondateur de Food Truck Agency, Entrepreneur\r\n\r\nNom du fichier : 1400_marketingdigital\r\n\r\n- **Julien Da Silva** : Lead Developer @CityTaps : CityTaps Tech for Good\r\n\r\nNom du fichier : techforgood', NULL, NULL, 'VIDEOS - Salon L’Etudiant - Le Figaro', NULL, 'etudiant.png', NULL),
(15, 5, '2023-10-03', NULL, 4, 'Contenu multimédia', NULL, NULL, 'VIDEO - MP4 - Extrait filmé de l’Event “Faisons de Station F Station H!”', NULL, 'stationf.jpeg', NULL),
(16, 3, '2018-01-01', NULL, 6, '**Adrien** : Rapidement, ça va être dur (rires). J’ai 30 ans, j’ai deux enfants, je fais une reconversion professionnelle à Hetic parce qu’au départ, j’ai travaillé en ébénisterie en tant que menuisier. J’ai fait pas mal de choses à la fin du lycée où j’ai fait un BMA d’ébénisterie. J’ai travaillé sur les marchés, La Poste, en hôtellerie et dans divers petits boulots à plein temps.\n\nAprès une pause de deux ans entre la fin de mon diplôme et le moment où je suis retourné en menuiserie, je me suis mis directement en auto-entrepreneur avec un collectif en sous-traitance. La ville de Montreuil nous prêtait les locaux désaffectés d’Emmaüs, en attendant qu’un promoteur reprenne le terrain. J’ai fait ça pendant deux ans, des charpentes aussi et des tiny houses.\n\nAvec un autre camarade, nous avons monté une boite de menuiserie en 2016, TacticBois (parce qu’on nous appelle Tic et Tac), après avoir été escroqué de 8000 euros par l’entreprise qui nous sous-traitait. Notre atelier était à Maisons-Alfort et nous avons fait cela pendant trois ans.\n\nJ’ai eu ma première fille en 2018, en 2019, nous avons fermé la société, nous n’étions pas endettés, mais nous n’arrivions pas à nous rémunérer. Nous avons décidé de fermer. On cherchait de la sous-traitance quand cette personne nous a proposé de travailler dans sa boite, un poste à responsabilité pour 2300 euros net. J’étais chef d’atelier et j’y suis resté un an et demi.\n\nD’un côté, j’ai eu pas mal de galères en menuiserie, mais de l’autre, j’ai eu pas mal d’expériences de bon niveau : j’ai été auto-entrepreneur, chef d’entreprise, chef d’atelier et les deux derniers sur ces trois se sont un peu mal terminées.', '# PARCOURS - Réorientation professionnelle - ITW Adrien Quimbre - Bachelor Web 2ème Année - “Il ne faut pas s’arrêter à la première peur, en reconversion professionnelle!” - par Marie René, Bachelor Web 1re Année\r\n\r\n### **PARCOURS - Réorientation professionnelle - ITW Adrien Quimbre - Bachelor Web 2ème Année -**', NULL, 'PARCOURS - Réorientation professionnelle - ITW Adrien Quimbre - Bachelor Web 2ème Année', NULL, 'entretien.png', NULL),
(17, 3, '2022-10-12', NULL, 4, 'Pour moi, un infographiste 3D Temps Réel est avant tout un infographiste 3D, assez généraliste, qui peut faire vivre la 3D en direct, via des interactions de l\'utilisateur :\r\n\r\nJeux-Vidéo, applications, Réalité Augmentée, Réalité Virtuelle : ce sont les usages de la 3D Temps Réel. L\'autre visage de la 3D est la 3D précalculée : c\'est celle que l\'on voit au cinéma, en publicité, etc. Là où une image de 3D temps réel est calculée en direct par le support de l\'utilisateur, une image précalculée l\'a été en amont pendant des minutes, voir des heures.  Un exemple simple peut être celui des cinématiques de jeu-vidéo plus ou moins anciens : la différence de qualité d\'image entre le gameplay et des cinématiques était choquante. Cela s\'explique simplement par le fait que les cinématiques sont des vidéos calculées à l\'avance, alors que le gameplay doit être calculé en direct par la machine, car tout peut arriver en 3D Temps Réel, on ne peut pas prévoir ce que va faire l\'utilisateur.\r\n\r\nDe nos jours, en terme de qualité, la 3D Temps Réel égale peu à peu la 3D Précalculée, alors qu\'elle possède un avantage de taille : son gain de temps.\r\n\r\nJe pense qu\'un infographiste 3D Temps Réel peut très bien s\'adapter et faire de la 3D Précalculée, ces deux mondes tendent à se joindre.\r\n\r\n- **Pourquoi s’être orienté vers la 3D, est-ce que tu t’y étais déjà essayé avant Hetic ?**\r\n\r\nAvant d’arriver à Hetic, je m\'étais un peu essayé à la 3D. Une première fois, vers l\'age de 12 ans, mon grand-frère m\'avait trouvé un crack de 3Ds Max, ça a duré une petite semaine, je me suis amusé, mais j\'ai vite atteint mes limites. Plusieurs années après ça, un peu plus d\'un an avant ma rentrée à Hetic, je m\'y suis replongé, sur Blender cette fois-ci, et les choses sérieuses ont commencé !\r\n\r\nPlusieurs raisons expliquent cette orientation vers la 3D. Je peux, logiquement, citer le domaine du jeu-vidéo, mais aussi de l\'automobile, du cinéma, et enfin de l\'impression 3D !\r\n\r\nMon père, ne s\'y connaissant pas vraiment en 3D mais étant intéressé par les nouvelles technologies, avait fait l\'acquisition d\'une imprimante 3D. On peut dire que ça m\'a un petit peu influencé.\r\n\r\n- **A cette époque avais-tu une vision claire des métiers de la 3D et savais-tu exactement vers quoi tu voulais aller ?**\r\n\r\nLes premiers secteurs de métiers auxquels on relie la 3D sont logiquement le cinéma et les jeux-vidéo. Il est sûr que ça donne envie, mais l\'une des premières choses que l\'on nous ai dites à Hetic était que ces secteurs, certes intéressants, étaient difficiles : concurrence, horaires, périodes intenses de travail (rush / crunch), le tout pour des salaires plus faibles sous prétexte que les employés vivent de leur passion.\r\n\r\nPersonnellement, je n\'avais pas d\'idée précise du secteur où j\'allais me diriger. Comme je l\'ai dit plus tôt, j\'avais quelques pistes comme l\'automobile, le jeu-vidéo, le cinéma, mais rien de sûr : Je savais que la 3D m\'intéressait et qu\'au final, on la retrouvait dans tous les domaines. Après ces trois années à Hetic, je me retrouve dans le milieu de la publicité dans l\'horlogerie : une passion assez récente pour moi.\r\n\r\n- **Concernant ton insertion professionnelle as-tu fait des stages et des alternances? Et que penses-tu de l’importance de la réalisation de projets?**\r\n\r\nJ\'ai commencé mon stage de 6 mois chez Le Truc à Genève une semaine après ma soutenance de fin d\'études. Je n\'ai pas eu l\'occasion de faire un stage pendant mes études, même si cela m\'aurait sans doute aidé !\r\n\r\nLa réalisation de projets personnels est cruciale lorsqu\'on étudie dans un domaine aussi visuel que la 3D : c\'est la première chose que vont regarder les personnes susceptibles de nous recruter, bien avant le diplôme, car il n\'y a pour moi pas meilleur indicateur de niveau de compétences.', 'Alumni P2021', 'Pas d\'intro', 'PARCOURS - ITW Dylan Golé - alumni P2021 -', NULL, 'entretien.png', NULL),
(18, 4, '2022-10-17', NULL, 7, 'J’ai découvert l’IT et le développement sur le tard. Pour donner un peu de contexte, j’ai eu mon bac en 2015, j’ai poursuivi sur une licence de psychologie\r\nobtenue en 2018 puis un DU d’addictologie en 2020 après un an de césure à Edimbourg en Ecosse. Je n’ai découvert mon domaine actuel que lors du confinement, quand je cherchais à automatiser les processus de calcul de statistiques pour la recherche. Voyant l’état du marché universitaire et médical, j’ai décidé de me réorienter. Après une année en tant que développeur étudiant, j’ai découvert la gestion de projet. Et j’ai trouvé une alternance hybride en Développement / Product Owner (PO) puis 100% PO dans mon entreprise actuelle.\r\n\r\nEn dehors de mon expérience technique acquise lors de mes études et de ma première alternance, ma seule expérience de gestion était celle de chef de guilde sur World of Warcraft. Ca peut paraître dérisoire pour qui n’a jamais eu à gérer un large groupe de joueurs mais on retrouve énormément de similarités avec le métier de Product Owner et la chefferie de projet en général. On doit définir la roadmap de la guilde, ses objectifs, définir les jours de présence, les créneaux de jeu, régler les potentiels conflits et tout cela en essayant de ne laisser personne en arrière. Outre l’aspect ludique, cette expérience permet à la fois d’apprendre à gérer les aspects techniques et humains d’un projet. Si le métier de Product Owner ne vous dit rien de concret, vous pouvez vous accrocher à cette image grossière mais reflétant justement une composante importante de la gestion de projet. En-dehors de cette\r\npartie pilotage, il existe deux autres pans importants du métier.', 'Le métier de Product Owner selon Dorian Cannone', 'Pas d\'intro', 'PRODUCT OWNER - Témoignage métier - Dorian Cannone - Mastère Product Manager', NULL, 'dorian.png', NULL),
(19, 4, '2022-10-17', NULL, 8, 'J’ai baigné très tôt dans les domaines de la création, de l’art, du numérique et de\r\nl’architecture, notamment par l’intermédiaire de mes parents, tous deux architectes, et de mon oncle, qui m\'initie aux algorithmes avant mes 10 ans.\r\nDe mes 6 à 16 ans, des courts d’arts m’apporteront la connaissance des différents\r\nmouvements, des techniques et leurs pratiques ainsi que leurs œuvres et me permettront à de très nombreuses reprises de surprendre dans mes choix graphiques et de cultiver ma curiosité sans relâche.\r\nC’est l\'ensemble de ces points communs entre les architectures réseaux, les bâtiments, Internet et l\'art qui me permettront par la suite d\'embrasser un large spectre de la conception numérique, du marketing au développement, avec l\'envie et le besoin de développer une expertise forte en design de produits numériques.\r\nJe sors ensuite de ma zone de confort et décide de découvrir le métier de designer en rejoignant pour mon stage de deuxième année l’agence HAVAS Paris, puis de me confronter à la barrière de la langue en rejoignant MediaMonks à Amsterdam, où j’ai pu apprendre l’anglais et renforcer considérablement mes compétences en design et faire la connaissance de mes premiers mentors.', NULL, 'Issue du programme Grande École d’HETIC (Promotion 2021), j’ai fait mes armes dans les agences HAVAS Paris et MediaMonks Amsterdam avant de m’intéresser au design produit chez Withings, pour enfin rejoindre Maze en tant que Product Designer, d’abord lors de mon stage en alternance de 5 ème année, puis en tant qu’employée depuis décembre 2021. \r\nJ’ai à cœur d’être le porte-voix des utilisateurs dans les discussions, d’améliorer la collaboration entre designers et développeurs grâce aux Design Operations et aux design systems et de développer la culture de la recherche utilisateur au sein des organisations.', 'DESIGN - Témoignage métier -', NULL, 'sabrina.png', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `articles_authors`
--

CREATE TABLE `articles_authors` (
  `authors_id` int(11) NOT NULL,
  `articles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles_authors`
--

INSERT INTO `articles_authors` (`authors_id`, `articles_id`) VALUES
(1, 3),
(1, 14),
(3, 2),
(3, 17),
(4, 18),
(5, 13),
(6, 12),
(7, 15),
(8, 16),
(9, 19);

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
(3, 7),
(12, 6),
(13, 5),
(14, 7),
(16, 6),
(17, 5),
(18, 5),
(19, 2);

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
(3, 'Lucas', 'Rimbault', '', NULL, NULL, 'https://www.linkedin.com/in/meveillard/ Mathieu Eveillard', 'Développeur'),
(4, 'Dorian', 'Cannone', '', NULL, NULL, 'https://www.linkedin.com/in/gcharrassin/', 'Designer '),
(5, 'Michel', 'Cadennes', '', NULL, NULL, 'https://www.linkedin.com/in/adrienrivierre/', 'Designer'),
(6, 'Brontis', 'Guilloux', '', NULL, NULL, NULL, ''),
(7, 'Denys', 'Chomel', '', NULL, NULL, NULL, ''),
(8, 'Marie', 'René', '', NULL, NULL, NULL, ''),
(9, 'Sabrina', 'Nedjah', '', NULL, NULL, NULL, '');

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
('DoctrineMigrations\\Version20231110095628', '2023-11-10 09:56:35', 645);

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

--
-- Déchargement des données de la table `paragraph`
--

INSERT INTO `paragraph` (`id`, `article_id`, `text`, `block_order`) VALUES
(1, 2, '“Arrêtez de coder, apprenez à développer” \r\n\r\nCoder. Développer. Avez-vous remarqué que l\'on emploie indifféremment un mot et l\'autre ? Sont-ils strictement équivalents ?\r\n\r\nDévelopper, on voit bien : on développe des sites Web, des applications mobiles, des jeux, de l\'informatique embarquée... on facilite des métiers existants en les dématérialisant, on crée de nouveaux usages, on ouvre de nouveaux horizons.\r\n\r\nFort bien.\r\n\r\nMais pourquoi coder ? Le mot évoque la cryptographie, champ de savoir dans lequel un message n\'est plus directement intelligible par les humains. C’est logique puisque le code est destiné aux machines. Cela remonte aux cartes perforées des orgues de Barbarie - on encode une musique - et des métiers à tisser - on encode un motif - ancêtres de l\'ordinateur.\r\n\r\nApprendre à parler aux machines, c’est la base. De la même manière que la farine est la matière première du boulanger, le code est notre matière première, à nous développeurs et développeuses. Ne vous laissez pas attirer par les sirènes du Management, avec un grand \"M\". Le management ne saurait être une fin en soi. Le management n\'est qu\'un moyen, éventuellement nécessaire, pour atteindre un objectif : développer un produit, faire bouger les lignes, résoudre des problèmes.\r\n\r\nDévelopper notre société, bâtir un meilleur futur, tel est notre objectif.\r\n\r\nSeulement voilà, coder, parler à des machines ne suffit pas. Le code est chose sociale : on écrit du code pour des humains, sinon on en serait encore à l\'assembleur, qui lui est un langage qui « parle aux machines ». Au contraire, les langages usuels - HTML, CSS, JavaScript, Python, Go, you name it - se situent à un très haut niveau. Ce sont des protocoles d’interface Homme/Machine. On parle d\'ailleurs de langages de programmation, de grammaire, de syntaxe, de mots-clefs, tous ces emprunts à la linguistique ne sont pas anodins : quand on code, on s\'adresse en fait à des humains.\r\n\r\nA bien y regarder, le code ne réalise-t-il pas l\'ambition de l\'Esperanto ? Une lingua franca permettant à deux personnes de se comprendre malgré la distance et les différences de culture, de religion peut-être. Là réside la beauté de l\'open source.\r\n\r\nParler à des machines ne suffit pas. Mon code marche ne suffit donc pas. Cela, peu de développeurs et de développeuses le comprennent. La tension du marché du travail est telle qu\'il est aujourd’hui facile de trouver un emploi après quelques mois d\'un bootcamp, comme il en fleurit par dizaines ces dernières années. Pourquoi ne pas s\'en contenter, alors, en bons adeptes du \"Sam\'suf it ? Nous ne saurions nous satisfaire de produire un code passable, \"juste ok\". Comme Oscar Wilde, contentons-nous du meilleur !\r\n\r\nSoyons des artisans du code. Aimons le travail bien fait, et même, osons le mot, la perfection. Abandonner l\'idée de perfection, c\'est abandonner l\'idée même d\'amélioration, l\'idée du mieux, l\'idée du bien. Soyons ambitieux, visons haut et n\'ayons de cesse de progresser, de transmettre, de créer, de retravailler, d\'améliorer, de consolider, de faire vivre notre passion pour le code.\r\n\r\nEt concrètement ?\r\n\r\nCe ne sont pas de vaines paroles : l\'artisanat logiciel, software craftsmanship, recouvre un ensemble de pratiques qui trouvent leur origine dans l\'*Extreme Programming des années 1990. L\'agilité en est indissociable. Ce savoir met l\'accent sur la lisibilité du code, les pratiques de test et la modularisation, trois composantes qui sont autant de gages d\'un programme capable d\'évoluer sur le long terme et donc de durer.\r\n\r\nUn code trop dur à comprendre, un code qui ne fonctionne plus à la moindre modification, c\'est un code bon à jeter. Impossible d\'y rajouter des fonctionnalités, impossible même de le maintenir en état. Un tel code, c\'est un manoir qui tombe en ruine : c\'est du gâchis. Ce savoir est finalement peu enseigné, car peu de personnes le maîtrisent. C\'est ma raison d\'enseigner auprès d\'entreprises, que j\'aide à produire du meilleur code, et auprès d\'HETIC, qui, avant les autres, a compris l\'importance de l\'artisanat logiciel.\r\n\r\nAlors... Arrêtez de coder, apprenez à développer !', 2),
(2, 3, '**MANIFESTE Humanités numériques - “La Quête du Savoir”** \n\n**par Quentin Maillard, Fo𝐫𝐦𝐚𝐭𝐞𝐮𝐫 𝚎𝚗 𝚖é𝚝𝚑𝚘𝚍𝚘𝚕𝚘𝚐𝚒𝚎𝚜 𝚍𝚎 𝚕\'𝚊𝚙𝚙𝚛𝚎𝚗𝚝𝚒𝚜𝚜𝚊𝚐𝚎 𝚎𝚝 𝚍𝚞 𝚝𝚛𝚊𝚟𝚊𝚒𝚕, 𝐎𝐯𝐞𝐫-𝐒𝐭𝐚𝐜𝐤 𝐒𝐨𝐟𝐭𝐰𝐚𝐫𝐞 𝐄𝐧𝐠𝐢𝐧𝐞𝐞𝐫**\n\n**TITRE : La Quête du Savoir**\n\nLa vie, c\'est des problèmes. Voilà qui est dit, il commence bien cet article. Nous rencontrons des problèmes en permanence : chercher un sens à ce que l’on fait, gagner sa vie, rendre un projet à temps ou même parler à un public. Moi le premier, j\'ai fait face à foule de problèmes : dans mes relations humaines, dans mon orientation (deux réorientations au compteur, ce n’est pas rien), dans mon travail de développeur, dans les cours que j\'ai donné, j\'en passe et des meilleurs. On se retrouve chaque jour devant eux. La vie ne se fait pas sans problèmes.\n\nJ\'ai longtemps été en désarroi face à ce constat, pourquoi diable suis-je obligé de m\'infliger ça? Mais finalement, s’il y a des problèmes, c’est que l’on est en vie. C\'est parce que nous sommes en vie que nous désirons avoir de bonnes relations, avoir de bonnes occupations, ou encore avoir un travail qui nous plait. Les problèmes ne sont que la manifestation de nos besoins et envies qui font ce que nous sommes, et le voir c’est un premier pas vers leur résolution. Mark Manson, un auteur de notre époque, dit même que la vie, c\'est choisir les problèmes que l\'on a envie d\'avoir, en voilà une sagesse.\n\nAlors, puisqu’ils font partie intégrante de nous-même et que l’on ne peut en réchapper, comment les aborder, ces problèmes? Quels moyens avons-nous à disposition pour les résoudre au quotidien, dans nos projets, dans nos relations, dans nos jobs?\n\nLe point de départ de ma réponse réside dans la nature même des problèmes : ils marquent les limites de nos **capacités** et de notre **connaissance**. Il nous faut donc, pour dépasser ces limites, des **outils** et du **savoir**. Des extensions de l’esprit et du corps qui permettent d’accomplir notre ouvrage, quel qu’il soit. Après 7 ans d’études et encore plus d’années de problèmes, j’aimerais vous donner des pistes pour rendre votre vie plus simple, plus pleine, plus belle. Des pistes pour vous aider à devenir des aventuriers du quotidien.\n\n**Je nous vois tous comme des *explorateurs*, des arpenteurs du monde qui cherchent à accomplir toujours plus et à repousser les frontières de la connaissance. Il y a donc, selon moi, deux choses qui font l’apanage de l’explorateur moderne : ses outils, et son savoir.**', 1),
(3, 12, '**Brontis G.** : A propos de The Witcher : « Il y a déjà un très bon choix de lore, celui d’avoir choisi la mythologie du sorceleur et des romans. Il y avait déjà un bon lore existant. Dans la mise en œuvre de cet univers pour les jeux de cette taille, il faut en général plusieurs jours pour s’y habituer. L’autre jour, je me baladais sur Hogwart Legacy où je ne connais absolument rien à Harry Potter ou aux différentes maisons, hormis Gryffondor. Je suis bluffé de voir que l’on n’a pas besoin de connaître l’univers pour se sentir immergé et c’est ce que le studio de développement a réussi à faire. C’est ce que CD Projekt a également réussi à faire avec The Witcher 3.\r\n\r\nC’est emblématique, on se croirait au moyen-âge, mais on n’est pas au moyen-âge ni dans n’importe quel pays qui existe. Pour moi, la quintessence, c’est le DLC Blood and Wine à Toussaint où on sait qu’on est en France même si on n’est pas en France.\r\n\r\nArriver à transposer des choses avec lesquelles les gens se sentent tellement à l’aise alors qu’on est pas du tout dans quelque chose qui est ni du vécu ni du réel, pour moi c’est un travail titanesque. A chaque fois qu’on tourne la tête, on voit un détail. Par exemple chez Ubisoft, ils développent des jeux mais ne vont pas au-delà, ils font des easter-eggs mais uniquement à propos d’autres jeux de leur studio. Alors que dans The Witcher 3, il y a de nombreuses références à la pop culture, on sent que les game designers s’amusent. Quand on ouvre la carte du jeu, voir autant d’éléments dessus peut sembler déconcertant, mais là, je prenais du plaisir à aller chercher des indices, explorer les différentes zones de jeu. C’est un jeu moddable à 100%, dans d’autres jeux, j’aurais ouvert la ligne de commande et j’aurais tapé un code pour avoir les éléments que je veux pour crafter mon armure de sorceleur. Alors que là, non, je vais chercher les ressources pour la crafter. »', 1),
(4, 13, '**Michel Cadennes** : La promesse du web sémantique c\'est pouvoir constituer ce qu\'on appelle des ontologies. Une ontologie, autrement dit, c\'est un « vocabulaire contrôlé », ou un thésaurus, permettant de modéliser un ensemble de connaissances dans un domaine précis.(La santé, ou la bibliographie, la logistique etc) sous forme d’un réseau de concepts liés entre eux par des relations dites sémantiques (fondées schématiquement sur des formes grammaticales, « est l’ami de », « est un symptôme de », « est né à », « est publié par », etc.) C’est le fondement de ce qu’on appelle le « web des données ». Le web est un réseau de documents liés entre eux, et le web des données va appliquer le même principe à des graphes de données structurées. Ça veut dire qu\'on va pouvoir créer des applications qui accèderont à ces données sur la base de formats ouverts et partagés par tout le monde. C’est ce que l’on appelle aussi des « communs numériques ».\r\n\r\nContrairement aux modèles qu\'on a l\'habitude d\'utiliser, les ontologies du web sémantique sont aussi aisément extensibles, ce qui permet une grande modularité des modèles. L’idée derrière tout ça, ce serait de mieux agréger les connaissances dispersées sur le web, de la même manière qu’une page Wikipedia est l’agrégation des contributions des utilisateurs. Un exemple très accessible d’application, c’est *Wikidata*, la version sémantique de *Wikipedia*. Tim Berners-Lee, avec le projet *Solid*, travaille à refonder le web sur des bases sémantiques (sous le nom de « linked data »).\r\n\r\nPar ailleurs, le web sémantique permet de faire de l\'inférence, du calcul logique sur des propositions, de faire des syllogismes, par exemple, je peux dire que « tout développeur est un être humain, donc si je rencontre quelque part, dans la description d\'une ontologie, la notion de développeur, je peux en déduire qu’on fait référence à un être humain ! » Ça, ça me plaisait beaucoup parce que je me suis toujours intéressé d\'une part à l\'intelligence artificielle, d\'autre part à la logique, au raisonnement, au langage, et donc je me disais qu\'avec le web sémantique, on pourrait marier le web avec du calcul logique, et donc faire des inférences et augmenter en quelque sorte la capacité, je dirais, déductive des connaissances qui sont disponibles sur le web. Mais il reste de gros problèmes théoriques et pratiques à résoudre, d’une part à cause du caractère distribué du web et d’autre part en raison du fait que le web est un « monde ouvert », ce qui est la source de multiples paradoxes que la logique n’aime pas trop.', 1),
(5, 16, '**Adrien** : Rapidement, ça va être dur (rires). J’ai 30 ans, j’ai deux enfants, je fais une reconversion professionnelle à Hetic parce qu’au départ, j’ai travaillé en ébénisterie en tant que menuisier. J’ai fait pas mal de choses à la fin du lycée où j’ai fait un BMA d’ébénisterie. J’ai travaillé sur les marchés, La Poste, en hôtellerie et dans divers petits boulots à plein temps.\r\n\r\nAprès une pause de deux ans entre la fin de mon diplôme et le moment où je suis retourné en menuiserie, je me suis mis directement en auto-entrepreneur avec un collectif en sous-traitance. La ville de Montreuil nous prêtait les locaux désaffectés d’Emmaüs, en attendant qu’un promoteur reprenne le terrain. J’ai fait ça pendant deux ans, des charpentes aussi et des tiny houses.\r\n\r\nAvec un autre camarade, nous avons monté une boite de menuiserie en 2016, TacticBois (parce qu’on nous appelle Tic et Tac), après avoir été escroqué de 8000 euros par l’entreprise qui nous sous-traitait. Notre atelier était à Maisons-Alfort et nous avons fait cela pendant trois ans.\r\n\r\nJ’ai eu ma première fille en 2018, en 2019, nous avons fermé la société, nous n’étions pas endettés, mais nous n’arrivions pas à nous rémunérer. Nous avons décidé de fermer. On cherchait de la sous-traitance quand cette personne nous a proposé de travailler dans sa boite, un poste à responsabilité pour 2300 euros net. J’étais chef d’atelier et j’y suis resté un an et demi.\r\n\r\nD’un côté, j’ai eu pas mal de galères en menuiserie, mais de l’autre, j’ai eu pas mal d’expériences de bon niveau : j’ai été auto-entrepreneur, chef d’entreprise, chef d’atelier et les deux derniers sur ces trois se sont un peu mal terminées.', 1),
(6, 17, 'Pour moi, un infographiste 3D Temps Réel est avant tout un infographiste 3D, assez généraliste, qui peut faire vivre la 3D en direct, via des interactions de l\'utilisateur :\r\n\r\nJeux-Vidéo, applications, Réalité Augmentée, Réalité Virtuelle : ce sont les usages de la 3D Temps Réel. L\'autre visage de la 3D est la 3D précalculée : c\'est celle que l\'on voit au cinéma, en publicité, etc. Là où une image de 3D temps réel est calculée en direct par le support de l\'utilisateur, une image précalculée l\'a été en amont pendant des minutes, voir des heures.  Un exemple simple peut être celui des cinématiques de jeu-vidéo plus ou moins anciens : la différence de qualité d\'image entre le gameplay et des cinématiques était choquante. Cela s\'explique simplement par le fait que les cinématiques sont des vidéos calculées à l\'avance, alors que le gameplay doit être calculé en direct par la machine, car tout peut arriver en 3D Temps Réel, on ne peut pas prévoir ce que va faire l\'utilisateur.\r\n\r\nDe nos jours, en terme de qualité, la 3D Temps Réel égale peu à peu la 3D Précalculée, alors qu\'elle possède un avantage de taille : son gain de temps.\r\n\r\nJe pense qu\'un infographiste 3D Temps Réel peut très bien s\'adapter et faire de la 3D Précalculée, ces deux mondes tendent à se joindre.\r\n\r\n- **Pourquoi s’être orienté vers la 3D, est-ce que tu t’y étais déjà essayé avant Hetic ?**\r\n\r\nAvant d’arriver à Hetic, je m\'étais un peu essayé à la 3D. Une première fois, vers l\'age de 12 ans, mon grand-frère m\'avait trouvé un crack de 3Ds Max, ça a duré une petite semaine, je me suis amusé, mais j\'ai vite atteint mes limites. Plusieurs années après ça, un peu plus d\'un an avant ma rentrée à Hetic, je m\'y suis replongé, sur Blender cette fois-ci, et les choses sérieuses ont commencé !\r\n\r\nPlusieurs raisons expliquent cette orientation vers la 3D. Je peux, logiquement, citer le domaine du jeu-vidéo, mais aussi de l\'automobile, du cinéma, et enfin de l\'impression 3D !\r\n\r\nMon père, ne s\'y connaissant pas vraiment en 3D mais étant intéressé par les nouvelles technologies, avait fait l\'acquisition d\'une imprimante 3D. On peut dire que ça m\'a un petit peu influencé.\r\n\r\n- **A cette époque avais-tu une vision claire des métiers de la 3D et savais-tu exactement vers quoi tu voulais aller ?**\r\n\r\nLes premiers secteurs de métiers auxquels on relie la 3D sont logiquement le cinéma et les jeux-vidéo. Il est sûr que ça donne envie, mais l\'une des premières choses que l\'on nous ai dites à Hetic était que ces secteurs, certes intéressants, étaient difficiles : concurrence, horaires, périodes intenses de travail (rush / crunch), le tout pour des salaires plus faibles sous prétexte que les employés vivent de leur passion.\r\n\r\nPersonnellement, je n\'avais pas d\'idée précise du secteur où j\'allais me diriger. Comme je l\'ai dit plus tôt, j\'avais quelques pistes comme l\'automobile, le jeu-vidéo, le cinéma, mais rien de sûr : Je savais que la 3D m\'intéressait et qu\'au final, on la retrouvait dans tous les domaines. Après ces trois années à Hetic, je me retrouve dans le milieu de la publicité dans l\'horlogerie : une passion assez récente pour moi.\r\n\r\n- **Concernant ton insertion professionnelle as-tu fait des stages et des alternances? Et que penses-tu de l’importance de la réalisation de projets?**\r\n\r\nJ\'ai commencé mon stage de 6 mois chez Le Truc à Genève une semaine après ma soutenance de fin d\'études. Je n\'ai pas eu l\'occasion de faire un stage pendant mes études, même si cela m\'aurait sans doute aidé !\r\n\r\nLa réalisation de projets personnels est cruciale lorsqu\'on étudie dans un domaine aussi visuel que la 3D : c\'est la première chose que vont regarder les personnes susceptibles de nous recruter, bien avant le diplôme, car il n\'y a pour moi pas meilleur indicateur de niveau de compétences.', 1),
(7, 18, 'J’ai découvert l’IT et le développement sur le tard. Pour donner un peu de contexte, j’ai eu mon bac en 2015, j’ai poursuivi sur une licence de psychologie\r\nobtenue en 2018 puis un DU d’addictologie en 2020 après un an de césure à Edimbourg en Ecosse. Je n’ai découvert mon domaine actuel que lors du confinement, quand je cherchais à automatiser les processus de calcul de statistiques pour la recherche. Voyant l’état du marché universitaire et médical, j’ai décidé de me réorienter. Après une année en tant que développeur étudiant, j’ai découvert la gestion de projet. Et j’ai trouvé une alternance hybride en Développement / Product Owner (PO) puis 100% PO dans mon entreprise actuelle.\r\n\r\nEn dehors de mon expérience technique acquise lors de mes études et de ma première alternance, ma seule expérience de gestion était celle de chef de guilde sur World of Warcraft. Ca peut paraître dérisoire pour qui n’a jamais eu à gérer un large groupe de joueurs mais on retrouve énormément de similarités avec le métier de Product Owner et la chefferie de projet en général. On doit définir la roadmap de la guilde, ses objectifs, définir les jours de présence, les créneaux de jeu, régler les potentiels conflits et tout cela en essayant de ne laisser personne en arrière. Outre l’aspect ludique, cette expérience permet à la fois d’apprendre à gérer les aspects techniques et humains d’un projet. Si le métier de Product Owner ne vous dit rien de concret, vous pouvez vous accrocher à cette image grossière mais reflétant justement une composante importante de la gestion de projet. En-dehors de cette\r\npartie pilotage, il existe deux autres pans importants du métier.', 1),
(8, 19, 'J’ai baigné très tôt dans les domaines de la création, de l’art, du numérique et de\r\nl’architecture, notamment par l’intermédiaire de mes parents, tous deux architectes, et de mon oncle, qui m\'initie aux algorithmes avant mes 10 ans.\r\nDe mes 6 à 16 ans, des courts d’arts m’apporteront la connaissance des différents\r\nmouvements, des techniques et leurs pratiques ainsi que leurs œuvres et me permettront à de très nombreuses reprises de surprendre dans mes choix graphiques et de cultiver ma curiosité sans relâche.\r\nC’est l\'ensemble de ces points communs entre les architectures réseaux, les bâtiments, Internet et l\'art qui me permettront par la suite d\'embrasser un large spectre de la conception numérique, du marketing au développement, avec l\'envie et le besoin de développer une expertise forte en design de produits numériques.\r\nJe sors ensuite de ma zone de confort et décide de découvrir le métier de designer en rejoignant pour mon stage de deuxième année l’agence HAVAS Paris, puis de me confronter à la barrière de la langue en rejoignant MediaMonks à Amsterdam, où j’ai pu apprendre l’anglais et renforcer considérablement mes compétences en design et faire la connaissance de mes premiers mentors.', 1);

-- --------------------------------------------------------

--
-- Structure de la table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL
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
(3, 'Parler à des machines ne suffit pas. “Mon code marche\" ne suffit donc pas. Cela, peu de développeurs et de développeuses le comprennent.', 'Mathieu Eveillard', 2, 1),
(4, 'Or, parmi la galaxie d’outils qui existent, certains permettent de dépasser des limites auxquelles on ne pense pas.', 'Quentin Maillard', 2, 3),
(5, 'Or, parmi la galaxie d’outils qui existent, certains permettent de dépasser des limites auxquelles on ne pense pas.', 'Quentin Maillard', 3, 2),
(6, 'Dis-moi à quoi tu joues et je te dirai qui tu es.', 'Brontis Guilloux', 12, 2),
(7, 'Ce qui m\'intéresse le plus dans l\'informatique, c\'est de discuter avec les gens.', 'Michel Cadennes', 13, 2),
(8, 'Il ne faut pas s’arrêter à la première peur, en reconversion professionnelle!', 'Marie René', 16, 2),
(9, 'Qu’est-ce qu’un infographiste 3D Temps Réel ?', 'Lucas Rimbault', 17, 2),
(10, 'Ma seule expérience de gestion de projet, c’était chef de guilde sur World of Warcraft.', 'Dorian Cadonne', 18, 2),
(11, 'Cultiver une curiosité insatiable', 'Sabrina Nedjah', 19, 2);

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
  `block_order` int(11) DEFAULT NULL
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
-- Structure de la table `title`
--

CREATE TABLE `title` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`) VALUES
(1, 'baptou94', '[]', '$2y$13$KpT.JJpMwaAKzrVfrW4XWOeXWWsn4149A9Z7IrLypnSicq1Dj.FIa');

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
-- Index pour la table `articles_authors`
--
ALTER TABLE `articles_authors`
  ADD PRIMARY KEY (`articles_id`,`authors_id`),
  ADD KEY `IDX_CB694EF06DE2013A` (`authors_id`),
  ADD KEY `IDX_CB694EF01EBAF6CC` (`articles_id`);

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
-- Index pour la table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

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
-- Index pour la table `title`
--
ALTER TABLE `title`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `quote`
--
ALTER TABLE `quote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- AUTO_INCREMENT pour la table `title`
--
ALTER TABLE `title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `FK_BFDD316812469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `articles_authors`
--
ALTER TABLE `articles_authors`
  ADD CONSTRAINT `FK_7F98407F1EBAF6CC` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_7F98407F6DE2013A` FOREIGN KEY (`authors_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD CONSTRAINT `FK_354053611EBAF6CC` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_354053618D7B4FB4` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

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
