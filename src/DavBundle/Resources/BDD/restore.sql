INSERT INTO `competence` (`libelle`, `value`) VALUES
('Html / Css', 80),
('Php', 70),
('Javascript', 60),
('Symfony', 65),
('C#', 65),
('Design', 80),
('Java', 60),
('SQL / PLSQL', 70),
('Linux', 70),
('Gestion de Projet', 75);


INSERT INTO `etude` (`periode`, `libelle`, `description`, `cote`, `inverse`) VALUES
('2014 - 2015', 'Développement et Administration Systèmes d''Information Expert', 'FORMATION AU GRÉTA VAR-MED
', 'left', 'right'),
  ('2015 - 2017', 'BTS Services Informatiques aux Organisations', 'Option SLAM : Développeur', 'right', 'left'),
  ('2011 - 2012', 'Diplôme national du baccalauréat', 'série : ECONOMIQUE ET SOCIALOPTION ANGLAIS RENFORCÉ', 'left', 'right'),
  ('2012 - 2013', 'Université Sofia Antipolis', 'PREMIÈRE ANNÉE DE LICENCE INFORMATIQUE', 'right', 'left'),
  ('2007 - 2008', 'Diplôme national du brevet', 'Mention AB', 'right', 'left');


select * from david;

INSERT INTO `experience` (`periode`, `nomEntreprise`, `metier`, `description`, `cote`, `inverse`) VALUES
  ('2014 - 2015', 'Freelance', 'Designer / Web Designer', 'Je travaille à mon compte, pour de petits projets en Design / Web Design
Création de Logos, Flyers, Tracts, Bannières publicitaires, etc.', 'left', 'right'),
  ('2015 - 2017', 'Dirisi', 'STAGE : DÉVELOPPEUR', 'Stage effectué sur deux ans : 5 semaines la première année et 6 semaines la deuxième année, deux stages où j\'ai
  fait de la correction mineur, de la MCO ( Maintient en condition opérationnelle ), de l\'évolutif, du développement d\'algorithmes etc.', 'right', 'left'),
  ('2015 - 2017', 'Vakarm', 'TRADUCTEUR / CO-RÉDACTEUR', 'Je travaille en collaboration avec la structure Vakarm pour la rédaction, la traduction ( Anglais > Français et inversement ) et la correction de multiples articles de News et Brèves.', 'left', 'right'),
  ('2015 - 2017', 'LAN''OSTRESS', 'ADMINISTRATEUR COMPÉTITIONS E-SPORT', 'Gestion de configurations de serveurs de jeu ( GLOBAL OFFENSIVE )', 'right', 'left'),
  ('2014-2015', 'MEDIATECH', 'STAGE: MAINTENANCE INFORMATIQUE', 'J''ai travaillé en tant que stagiaire pour le compte de Mediatech en maintenance informatique, j''ai acquis certaines connaissances que je n''avais pas en Hardware.', 'left', 'right'),
  ('2011 - 2017', 'Petits boulots', 'DIVERS', 'J''ai travaillé pendant quelques années en tant que serveur, plongeur, récéptionniste, manutentionnaire, etc.
Je maintiens à l''heure actuelle le poste de plongeur certains jours par semaine.', 'right', 'left');

INSERT INTO `david` (`nom`, `prenom`, `age`, `numAdresse`, `adresse`, `cp`, `ville`, `Pays`, `mail`, `tel`) VALUES
  ('MOLINARI', 'David', 24, '03', 'Rue Dumont d\'Urville', 83000, 'Toulon', 'France', 'david@rmolinari.net', '0789877747');


INSERT INTO `projet` (`titre`,`date`, `description`,`link`, `nomImage`, `remarque`, `categorie`) VALUES
  ('Accès Wifi', '1970-01-01 00:00:01', 'Application qui fournit un service de demande d''accés Wifi à des étudiants,
  les étudiants ont la possibilité de se connecter, ajouter des appareils, et soumettre des demandes d''accès.
Les administrateurs quant à eux, ont un pannel d''administration permettant de voir toutes les demandes, de les valider
 ou non et d''avoir une vue sur l''historique de toutes les demandes.', 'https://git.sevenn.fr/DMTS/AWProject_Reborn', 'Awp', '', 'dev'),
  ('Génération de lettre d\'excuses', '2016-07-06 00:00:01', 'Petite application développée en C# qui permet de générer
   des lettres d\'éxcuses pour des absences, ou des retards en respectant le format imposé par l\'établissement dans le
   simple bût de s\'amuser avec :-)', 'https://github.com/DavidMolinari/Excuses', 'excuses', '', 'dev'),
  ('Flappy Bird', '2016-06-06 00:00:01', 'Petit jeux vidéo en 2D développé sous Java',
   'https://github.com/DavidMolinari/Simple-FlappyBird', 'flappybird', 'knossos', 'dev'),
  ('Projet K', '2016-06-06 00:00:01', 'Projet réalisé pour le compte de la Direction interarmées des réseaux d\'infrastructures et du système d''information de la défense, où l''on a participé au développement d''une application RETEX ou plutôt de retour et de gestion d''anomalies, embarquée dans les sous marins, avec du contenu à diffusion restreinte voir même du Confidentiel défense mais je n''ai pas manipulé ce dernier contenu.
Knossos est une application Java qui tourne sur un serveur JBOS ( un serveur d''applications JAVA EE ) avec un framework respectant le design pattern du modèle MVC fait maison, et la téchnologie GWT.
J''ai eu diverses tâches au cours de ce projet comme :
	- Des correctifs de bug mineurs
	- De la gestion de version sous GIT
	- Un chantier d''export en CSV
	- Des propositions évolutives
	- De la mise en page sur JasperSoft Studio
	- De la création et modification d''IHM
	- Et du développement Back-End d''algorithmes, de méthodes, etc.
', '', 'knossos', '', 'dev'),
  ('Nolark', '2016-06-21 00:00:01', 'Transforamation d''un site web réalisé en TP en plusieurs facettes :
  une version plus attrayante au premier regard, ainsi qu''une version entièrement refaite sur le framework
  Symfony dans le bût de la présenter en démonstration au salon du numérique. ',
   'https://github.com/BtsSioBona/Nolark', 'nolark', '', 'dev'),
  ('Pigier Création Toulon', '2016-06-21 00:00:01', 'Réalisation de divers Flyers, Porte documents pour Pigier,
  l\'école du style et de la beauté à Toulon.',
   '', 'pigier1', 'http://imgur.com/a/p03WW', 'design'),
  ('Portfolio', '2017-03-21 00:00:01', 'Réalisation de mon portfolio sous Symfony et Twig, les informations sont toutes stoquées dans la base de données.',
   'https://github.com/DavidMolinari/DavFolio', 'portfolio', '', 'dev'),
  ('Pralines et Moi', '2016-03-27 00:00:01', 'Réalisation de Logo pour le compte de Pralines et Moi.',
   '', 'pralinesEtMoi', 'pm', 'design'),
  ('RSS ENHANCED', '2016-01-12 00:00:01', 'Réalisation de mon portfolio sous Symfony et Twig, les informations sont toutes stoquées dans la base de données.',
   'https://github.com/DavidMolinari/simple-RSSReader', 'RSS', '', 'dev'),
  ('SIOMAG', '2016-05-11 00:00:01', 'Réalisation de la couverture d''un magazine entièrement fait par les élèves de BTS SIO.',
   'https://madmagz.com/fr/magazine/760204#/', 'siomag', '', 'design'),
  ('Text Editor', '2016-02-01 00:00:01', 'Réalisation d\'un petit éditeur de texte en C#.',
   'https://github.com/DavidMolinari/Simple-Text-Editor', 'texteditor', '', 'dev'),
  ('WIKI BTS SIO BONA', '2016-05-21 00:00:01', 'Projet collaboratif, où j\'ai mis en place à disposition des élèves
  de BTS SIO principalement un Wiki qui rassemble toutes les petites trouvailles, les problèmes réccurents de tout
  langage informatique.C\'est un projet libre, ouvert à n\'importe quelle personne qui veut y participer à condition
  de respecter certaines contraites de contributions.',
   'https://github.com/BtsSioBona/Wiki', 'wikisio', '', 'dev');


INSERT INTO `interet` (`libelle`, `nomFichier`) VALUES
  ('Bootstrap', 'bootstrap.svg'),
  ('Codepen', 'codepen.svg'),
  ('Discord', 'discord.svg'),
  ('Elementary Os', 'elementary.svg'),
  ('Git', 'git.svg'),
  ('GitKraken', 'gitkraken.svg'),
  ('GitLab', 'gitlab.svg'),
  ('IntellJ', 'intellj.svg'),
  ('Reddit', 'reddit.svg'),
  ('Stack Overflow', 'stackoverflow.svg'),
  ('Symfony', 'symfony.svg'),
  ('Taiga', 'taiga.svg');