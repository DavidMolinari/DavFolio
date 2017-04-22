INSERT INTO `competence` (`libelle`, `value`) VALUES
('Développement Web', 70),
('Symfony', 65),
('Développement Client Lourd', 70),
('Design', 80),
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
  ('meh', NOW(), 'Description à la con lorem ipsum meh', 'meh.fr', '666', 'projet cool test megh', 'Design'),
  ('meh', NOW(), 'Description à la con lorem ipsum meh', 'meh.fr', 'pigier1', 'projet cool test megh', 'Design'),
  ('meh', NOW(), 'Description à la con lorem ipsum meh', 'meh.fr', '666', 'projet cool test megh', 'Design'),
  ('meh', NOW(), 'Description à la con lorem ipsum meh', 'meh.fr', 'pigier1', 'projet cool test megh', 'Design'),
  ('meh', NOW(), 'Description à la con lorem ipsum meh', 'meh.fr', '666', 'projet cool test megh', 'Design'),
  ('meh', NOW(), 'Description à la con lorem ipsum meh', 'meh.fr', 'pigier1', 'projet cool test megh', 'Design'),
  ('meh', NOW(), 'Description à la con lorem ipsum meh', 'meh.fr', '666', 'projet cool test megh', 'Design');



INSERT INTO `projet` (`titre`,`date`, `description`,`link`, `nomImage`, `remarque`, `categorie`) VALUES
  ('meh', NOW(), 'Description à la con lorem ipsum meh', 'meh.fr', 'knossos', 'projet cool test megh', 'Design'),
  ('meh', NOW(), 'Description à la con lorem ipsum meh', 'meh.fr', 'siomag', 'projet cool test megh', 'Design'),
  ('meh', NOW(), 'Description à la con lorem ipsum meh', 'meh.fr', 'wikisio', 'projet cool test megh', 'Design');