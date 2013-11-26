USE mlb_playoffs;

LOCK TABLES startingLineup WRITE;

SET foreign_key_checks = 0;

INSERT INTO startingLineup (gameTitle_id, date, awayTeam_id, awayPitcher_id, awayCatcher_id, away1B_id, away2B_id, awaySS_id, away3B_id, awayLF_id, awayCF_id, awayRF_id, awayDH_id, homeTeam_id, homePitcher_id, homeCatcher_id, home1B_id, home2B_id, homeSS_id, home3B_id, homeLF_id, homeCF_id, homeRF_id, homeDH_id) VALUES

('NLDSA1','2013-10-03','Pirates','A.J. Burnett','Russell Martin','Justin Morneau','Neil Walker','Clint Barmes','Pedro Alvarez','Starling Marte','Andrew McCutchen','Marlon Byrd',NULL,'Cardinals','Adam Wainwright','Yadier Molina','Matt Adams','Matt Carpenter','Pete Kozma','David Freese','Matt Holliday','Jon Jay','Carlos Beltran',NULL),
('NLDSA2','2013-10-04','Pirates','Gerrit Cole','Russell Martin','Justin Morneau','Neil Walker','Jordy Mercer','Pedro Alvarez','Starling Marte','Andrew McCutchen','Marlon Byrd',NULL,'Cardinals','Lance Lynn','Yadier Molina','Matt Adams','Matt Carpenter','Daniel Descalso','David Freese','Matt Holliday','Jon Jay','Carlos Beltran',NULL),
('NLDSA3','2013-10-06','Cardinals','Joe Kelly','Yadier Molina','Matt Adams','Matt Carpenter','Pete Kozma','David Freese','Matt Holliday','Jon Jay','Carlos Beltran',NULL,'Pirates','Francisco Liriano','Russell Martin','Justin Morneau','Neil Walker','Clint Barmes','Pedro Alvarez','Starling Marte','Andrew McCutchen','Marlon Byrd',NULL),
('NLDSA4','2013-10-07','Cardinals','Michael Wacha','Yadier Molina','Matt Adams','Matt Carpenter','Pete Kozma','David Freese','Matt Holliday','Jon Jay','Carlos Beltran',NULL,'Pirates','Charlie Morton','Russell Martin','Justin Morneau','Neil Walker','Clint Barmes','Pedro Alvarez','Starling Marte','Andrew McCutchen','Marlon Byrd',NULL),
('NLDSA5','2013-10-09','Pirates','Gerrit Cole','Russell Martin','Justin Morneau','Neil Walker','Clint Barmes','Pedro Alvarez','Starling Marte','Andrew McCutchen','Marlon Byrd',NULL,'Cardinals','Adam Wainwright','Yadier Molina','Matt Adams','Matt Carpenter','Pete Kozma','David Freese','Matt Holliday','Jon Jay','Carlos Beltran',NULL),
('NLDSB1','2013-10-03','Dodgers','Clayton Kershaw','A.J. Ellis','Adrian Gonzalez','Mark Ellis','Hanley Ramirez','Juan Uribe','Carl Crawford','Skip Schumaker','Yasiel Puig',NULL,'Braves','Kris Medlen','Brian McCann','Freddie Freeman','Elliot Johnson','Andrelton Simmons','Chris Johnson','Evan Gattis','Jason Heyward','Justin Upton',NULL),
('NLDSB2','2013-10-04','Dodgers','Zack Greinke','A.J. Ellis','Adrian Gonzalez','Mark Ellis','Hanley Ramirez','Juan Uribe','Carl Crawford','Skip Schumaker','Yasiel Puig',NULL,'Braves','Mike Minor','Brian McCann','Freddie Freeman','Elliot Johnson','Andrelton Simmons','Chris Johnson','Evan Gattis','Jason Heyward','Justin Upton',NULL),
('NLDSB3','2013-10-06','Braves','Julio Teheran','Brian McCann','Freddie Freeman','Elliot Johnson','Andrelton Simmons','Chris Johnson','Evan Gattis','Jason Heyward','Justin Upton',NULL,'Dodgers','Hyun-Jin Ryu','A.J. Ellis','Adrian Gonzalez','Mark Ellis','Hanley Ramirez','Juan Uribe','Carl Crawford','Skip Schumaker','Yasiel Puig',NULL),
('NLDSB4','2013-10-07','Braves','Freddy Garcia','Brian McCann','Freddie Freeman','Elliot Johnson','Andrelton Simmons','Chris Johnson','Evan Gattis','Jason Heyward','Justin Upton',NULL,'Dodgers','Clayton Kershaw','A.J. Ellis','Adrian Gonzalez','Mark Ellis','Hanley Ramirez','Juan Uribe','Carl Crawford','Skip Schumaker','Yasiel Puig',NULL),
('ALDSA1','2013-10-04','Rays','Matt Moore','Jose Lobaton','James Loney','Ben Zobrist','Yunel Escobar','Evan Longoria','Sean Rodriguez','Desmond Jennings','Wil Myers','Delmon Young','Red Sox','Jon Lester','Jarrod Saltalamacchia','Mike Napoli','Dustin Pedroia','Stephen Drew','Will Middlebrooks','Jonny Gomes','Jacoby Ellsbury','Shane Victorino','David Ortiz'),
('ALDSA2','2013-10-05','Rays','David Price','Jose Molina','James Loney','Ben Zobrist','Yunel Escobar','Evan Longoria','David DeJesus','Desmond Jennings','Wil Myers','Delmon Young','Red Sox','John Lackey','David Ross','Mike Napoli','Dustin Pedroia','Stephen Drew','Will Middlebrooks','Jonny Gomes','Jacoby Ellsbury','Shane Victorino','David Ortiz'),
('ALDSA3','2013-10-07','Red Sox','Clay Buchholz','Jarrod Saltalamacchia','Mike Napoli','Dustin Pedroia','Stephen Drew','Will Middlebrooks','Daniel Nava','Jacoby Ellsbury','Shane Victorino','David Ortiz','Rays','Alex Cobb','Jose Molina','James Loney','Ben Zobrist','Yunel Escobar','Evan Longoria','David DeJesus','Desmond Jennings','Wil Myers','Matt Joyce'),
('ALDSA4','2013-10-08','Red Sox','Jake Peavy','Jarrod Saltalamacchia','Mike Napoli','Dustin Pedroia','Stephen Drew','Will Middlebrooks','Daniel Nava','Jacoby Elssbury','Shane Victorino','David Ortiz','Rays','Jeremy Hellickson','Jose Lobaton','James Loney','Ben Zobrist','Yunel Escobar','Evan Longoria','David DeJesus','Desmond Jennings','Wil Myers','Kelly Johnson'),
('ALDSB1','2013-10-04','Tigers','Max Scherzer','Alex Avila','Prince Fielder','Omar Infante','Jose Iglesias','Miguel Cabrera','Andy Dirks','Austin Jackson','Torii Hunter','Victor Martinez','Athletics','Bartolo Colon','Stephen Vogt','Daric Barton','Eric Sogard','Jed Lowrie','Josh Donaldson','Yoenis Cespedes','Coco Crisp','Josh Reddick','Brandon Moss'),
('ALDSB2','2013-10-05','Tigers','Justin Verlander','Alex Avila','Prince Fielder','Omar Infante','Jose Iglesias','Miguel Cabrera','Don Kelly','Austin Jackson','Torii Hunter','Victor Martinez','Athletics','Sonny Gray','Stephen Vogt','Brandon Moss','Eric Sogard','Jed Lowrie','Josh Donaldson','Yoenis Cespedes','Coco Crisp','Josh Reddick','Seth Smith'),
('ALDSB3','2013-10-07','Athletics','Jarrod Parker','Stephen Vogt','Brandon Moss','Eric Sogard','Jed Lowrie','Josh Donaldson','Yoenis Cespedes','Coco Crisp','Josh Reddick','Seth Smith','Tigers','Anibal Sanchez','Alex Avila','Prince Fielder','Omar Infante','Jose Iglesias','Miguel Cabrera','Jhonny Peralta','Austin Jackson','Torii Hunter','Victor Martinez'),
('ALDSB4','2013-10-08','Athletics','Dan Straily','Stephen Vogt','Brandon Moss','Eric Sogard','Jed Lowrie','Josh Donaldson','Yoenis Cespedes','Coco Crisp','Josh Reddick','Seth Smith','Tigers','Doug Fister','Alex Avila','Prince Fielder','Omar Infante','Jose Iglesias','Miguel Cabrera','Jhonny Peralta','Austin Jackson','Torii Hunter','Victor Martinez'),
('ALDSB5','2013-10-10','Tigers','Justin Verlander','Alex Avila','Prince Fielder','Omar Infante','Jhonny Peralta','Miguel Cabrera','Don Kelly','Austin Jackson','Torii Hunter','Victor Martinez','Athletics','Sonny Gray','Stephen Vogt','Brandon Moss','Alberto Callaspo','Jed Lowrie','Josh Donaldson','Yoenis Cespedes','Coco Crisp','Josh Reddick','Seth Smith'),
('NLCS1','2013-10-11','Dodgers','Zack Greinke','A.J. Ellis','Adrian Gonzalez','Mark Ellis','Hanley Ramirez','Juan Uribe','Carl Crawford','Andre Ethier','Yasiel Puig',NULL,'Cardinals','Joe Kelly','Yadier Molina','Matt Adams','Matt Carpenter','Pete Kozma','David Freese','Matt Holliday','Jon Jay','Carlos Beltran',NULL),
('NLCS2','2013-10-12','Dodgers','Clayton Kershaw','A.J. Ellis','Adrian Gonzalez','Mark Ellis','Nick Punto','Juan Uribe','Carl Crawford','Skip Schumaker','Yasiel Puig',NULL,'Cardinals','Michael Wacha','Yadier Molina','Matt Adams','Matt Carpenter','Pete Kozma','David Freese','Matt Holliday','Jon Jay','Carlos Beltran',NULL),
('NLCS3','2013-10-14','Cardinals','Adam Wainwright','Yadier Molina','Matt Adams','Matt Carpenter','Pete Kozma','David Freese','Matt Holliday','Jon Jay','Carlos Beltran',NULL,'Dodgers','Hyun-Jin Ryu','A.J. Ellis','Adrian Gonzalez','Mark Ellis','Hanley Ramirez','Juan Uribe','Carl Crawford','Andre Ethier','Yasiel Puig',NULL),
('NLCS4','2013-10-15','Cardinals','Lance Lynn','Yadier Molina','Matt Adams','Matt Carpenter','Daniel Descalso','David Freese','Matt Holliday','Jon Jay','Carlos Beltran',NULL,'Dodgers','Ricky Nolasco','A.J. Ellis','Adrian Gonzalez','Mark Ellis','Hanley Ramirez','Juan Uribe','Carl Crawford','Andre Ethier','Yasiel Puig',NULL),
('NLCS5','2013-10-16','Cardinals','Joe Kelly','Yadier Molina','Matt Adams','Matt Carpenter','Pete Kozma','David Freese','Matt Holliday','Jon Jay','Carlos Beltran',NULL,'Dodgers','Zack Greinke','A.J. Ellis','Adrian Gonzalez','Mark Ellis','Hanley Ramirez','Juan Uribe','Carl Crawford','Andre Ethier','Yasiel Puig',NULL),
('NLCS6','2013-10-18','Dodgers','Clayton Kershaw','A.J. Ellis','Adrian Gonzalez','Mark Ellis','Hanley Ramirez','Juan Uribe','Carl Crawford','Andre Ethier','Yasiel Puig',NULL,'Cardinals','Michael Wacha','Yadier Molina','Matt Adams','Matt Carpenter','Pete Kozma','David Freese','Matt Holliday','Shane Robinson','Carlos Beltran',NULL),
('ALCS1','2013-10-12','Tigers','Anibal Sanchez','Alex Avila','Prince Fielder','Omar Infante','Jose Iglesias','Miguel Cabrera','Jhonny Peralta','Austin Jackson','Torii Hunter','Victor Martinez','Red Sox','Jon Lester','David Ross','Mike Napoli','Dustin Pedroia','Stephen Drew','Will Middlebrooks','Daniel Nava','Jacoby Ellsbury','Shane Victorino','David Ortiz'),
('ALCS2','2013-10-13','Tigers','Max Scherzer','Alex Avila','Prince Fielder','Omar Infante','Jhonny Peralta','Miguel Cabrera','Don Kelly','Austin Jackson','Torii Hunter','Victor Martinez','Red Sox','Clay Buchholz','Jarrod Saltalamacchia','Mike Carp','Dustin Pedroia','Stephen Drew','Will Middlebrooks','Jonny Gomes','Jacoby Ellsbury','Shane Victorino','David Ortiz'),
('ALCS3','2013-10-15','Red Sox','John Lackey','Jarrod Saltalamacchia','Mike Napoli','Dustin Pedroia','Stephen Drew','Will Middlebrooks','Jonny Gomes','Jacoby Ellsbury','Shane Victorino','David Ortiz','Tigers','Justin Verlander','Alex Avila','Prince Fielder','Omar Infante','Jhonny Peralta','Miguel Cabrera','Andy Dirks','Austin Jackson','Torii Hunter','Victor Martinez'),
('ALCS4','2013-10-16','Red Sox','Jake Peavy','Jarrod Saltalamacchia','Mike Napoli','Dustin Pedroia','Stephen Drew','Will Middlebrooks','Daniel Nava','Jacoby Ellsbury','Shane Victorino','David Ortiz','Tigers','Doug Fister','Alex Avila','Prince Fielder','Omar Infante','Jose Iglesias','Miguel Cabrera','Jhonny Peralta','Austin Jackson','Torii Hunter','Victor Martinez'),
('ALCS5','2013-10-17','Red Sox','Jon Lester','David Ross','Mike Napoli','Dustin Pedroia','Stephen Drew','Xander Bogaerts','Jonny Gomes','Jacoby Ellsbury','Shane Victorino','David Ortiz','Tigers','Anibal Sanchez','Alex Avila','Prince Fielder','Omar Infante','Jose Iglesias','Miguel Cabrera','Jhonny Peralta','Austin Jackson','Torii Hunter','Victor Martinez'),
('ALCS6','2013-10-19','Tigers','Max Scherzer','Alex Avila','Prince Fielder','Omar Infante','Jose Iglesias','Miguel Cabrera','Jhonny Peralta','Austin Jackson','Torii Hunter','Victor Martinez','Red Sox','Clay Buchholz','Jarrod Saltalamacchia','Mike Napoli','Dustin Pedroia','Stephen Drew','Xander Bogaerts','Jonny Gomes','Jacoby Ellsbury','Shane Victorino','David Ortiz'),
('WS1','2013-10-23','Cardinals','Adam Wainwright','Yadier Molina','Matt Adams','Matt Carpenter','Pete Kozma','David Freese','Matt Holliday','Shane Robinson','Carlos Beltran','Allen Craig','Red Sox','Jon Lester','David Ross','Mike Napoli','Dustin Pedroia','Stephen Drew','Xander Bogaerts','Jonny Gomes','Jacoby Ellsbury','Shane Victorino','David Ortiz'),
('WS2','2013-10-24','Cardinals','Michael Wacha','Yadier Molina','Matt Adams','Matt Carpenter','Daniel Descalso','David Freese','Matt Holliday','Jon Jay','Carlos Beltran','Allen Craig','Red Sox','John Lackey','Jarrod Saltalamacchia','Mike Napoli','Dustin Pedroia','Stephen Drew','Xander Bogaerts','Jonny Gomes','Jacoby Ellsbury','Shane Victorino','David Ortiz'),
('WS3','2013-10-26','Red Sox','Jake Peavy','Jarrod Saltalamacchia','David Ortiz','Dustin Pedroia','Stephen Drew','Xander Bogaerts','Daniel Nava','Jacoby Ellsbury','Shane Victorino',NULL,'Cardinals','Joe Kelly','Yadier Molina','Matt Adams','Matt Carpenter','Pete Kozma','David Freese','Matt Holliday','Jon Jay','Carlos Beltran',NULL),
('WS4','2013-10-27','Red Sox','Clay Buccholz','David Ross','David Ortiz','Dustin Pedroia','Stephen Drew','Xander Bogaerts','Jonny Gomes','Jacoby Ellsbury','Daniel Nava',NULL,'Cardinals','Lance Lynn','Yadier Molina','Matt Adams','Matt Carpenter','Daniel Descalso','David Freese','Matt Holliday','Jon Jay','Carlos Beltran',NULL),
('WS5','2013-10-28','Red Sox','Jon Lester','David Ross','David Ortiz','Dustin Pedroia','Stephen Drew','Xander Bogaerts','Jonny Gomes','Jacoby Ellsbury','Daniel Nava',NULL,'Cardinals','Adam Wainwright','Yadier Molina','Allen Craig','Matt Carpenter','Pete Kozma','David Freese','Matt Holliday','Shane Robinson','Carlos Beltran',NULL),
('WS6','2013-10-30','Cardinals','Michael Wacha','Yadier Molina','Matt Adams','Matt Carpenter','Daniel Descalso','David Freese','Matt Holliday','Jon Jay','Carlos Beltran','Allen Craig','Red Sox','John Lackey','David Ross','Mike Napoli','Dustin Pedroia','Stephen Drew','Xander Bogaerts','Jonny Gomes','Jacoby Ellsbury','Shane Victorino','David Ortiz');

SET foreign_key_checks = 1;

UNLOCK TABLES;
