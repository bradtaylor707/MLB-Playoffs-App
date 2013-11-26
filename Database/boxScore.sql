USE mlb_playoffs;

LOCK TABLES boxScore WRITE;

SET foreign_key_checks = 0;

INSERT INTO boxScore VALUES

('NLDSA1',1,9,4,10,3,0,'Adam Wainwright','A.J. Burnett',''),
('NLDSA2',7,1,10,4,0,1,'Gerrit Cole','Lance Lynn',''),
('NLDSA3',3,5,7,8,1,0,'Mark Melancon','Carlos Martinez','Jason Grilli'),
('NLDSA4',2,1,3,1,0,0,'Michael Wacha','Charlie Morton','Trevor Rosenthal'),
('NLDSA5',1,6,8,9,1,0,'Adam Wainwright','Gerrit Cole',''),
('NLDSB1',6,1,11,5,0,0,'Clayton Kershaw','Kris Medlen',''),
('NLDSB2',3,4,10,6,0,0,'Mike Minor','Zack Greinke','Craig Kimbrel'),
('NLDSB3',6,13,10,14,2,0,'Chris Capuano','Julio Teheran',''),
('NLDSB4',3,4,7,11,0,2,'Brian Wilson','David Carpenter','Kenley Jansen'),
('ALDSA1',2,12,4,14,0,0,'Jon Lester','Matt Moore',''),
('ALDSA2',4,7,8,11,2,0,'John Lackey','David Price','Koji Uehara'),
('ALDSA3',4,5,7,11,0,1,'Fernando Rodney','Koji Uehara',''),
('ALDSA4',3,1,6,6,0,0,'Craig Breslow','Jake McGee','Koji Uehara'),
('ALDSB1',3,2,10,3,0,1,'Max Scherzer','Bartolo Colon','Joaquin Benoit'),
('ALDSB2',0,1,4,8,0,0,'Grant Balfour','Al Alburquerque',''),
('ALDSB3',6,3,10,7,0,1,'Jarrod Parker','Anibal Sanchez','Grant Balfour'),
('ALDSB4',6,8,12,9,0,0,'Max Scherzer','Sean Doolittle',''),
('ALDSB5',3,0,8,3,0,0,'Justin Verlander','Sonny Gray','Joaquin Benoit'),
('NLCS1',2,3,9,7,0,0,'Lance Lynn','Chris Withrow',''),
('NLCS2',0,1,5,2,0,1,'Michael Wacha','Clayton Kershaw','Trevor Rosenthal'),
('NLCS3',0,3,4,9,0,0,'Hyun-Jin Ryu','Adam Wainwright','Kenley Jansen'),
('NLCS4',4,2,6,8,0,1,'Lance Lynn','Ricky Nolasco','Trevor Rosenthal'),
('NLCS5',4,6,10,9,0,0,'Zack Greinke','Joe Kelly',''),
('NLCS6',0,9,2,13,2,0,'Michael Wacha','Clayton Kersharw',''),
('ALCS1',1,0,9,1,0,1,'Anibal Sanchez','Jon Lester','Joaquin Benoit'),
('ALCS2',5,6,8,7,1,1,'Koji Uehara','Rick Porcello',''),
('ALCS3',1,0,4,6,0,1,'John Lackey','Justin Verlander','Koji Uehara'),
('ALCS4',3,7,12,9,0,0,'Doug Fister','Jake Peavy',''),
('ALCS5',4,3,10,10,0,1,'Jon Lester','Anibal Sanchez',''),
('ALCS6',2,5,8,5,1,1,'Junichi Tazawa','Max Scherzer',''),
('WS1',1,8,7,8,3,1,'Jon Lester','Adam Wainwright',''),
('WS2',4,2,7,4,1,2,'Michael Wacha','John Lackey','Trevor Rosenthal'),
('WS3',4,5,6,12,2,0,'Trevor Rosenthal','Brandon Workman',''),
('WS4',4,2,6,6,2,0,'Felix Doubront','Lance Lynn','Koji Uehara'),
('WS5',3,1,9,4,0,0,'Jon Lester','Ada, Wainwright','Koji Uehara'),
('WS6',1,6,9,8,1,1,'John Lackey','Michael Wacha','');

SET foreign_key_checks = 1;

UNLOCK TABLES;
