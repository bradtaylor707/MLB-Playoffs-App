USE mlb_playoffs;

LOCK TABLES schedule WRITE;

SET foreign_key_checks = 0;

INSERT INTO schedule (gameDate, stadium_id, awayTeam_id, homeTeam_id, winner_id, gameTitle_id, ifNecessary) VALUES
('2013-10-3','Busch Stadium','Pirates','Cardinals','Cardinals','NLDSA1','F'),
('2013-10-4','Busch Stadium','Pirates','Cardinals','Pirates','NLDSA2','F'),
('2013-10-6','PNC Park','Cardinals','Pirates','Pirates','NLDSA3','F'),
('2013-10-7','PNC Park','Cardinals','Pirates','Cardinals','NLDSA4','F'),
('2013-10-9','Busch Stadium','Pirates','Cardinals','Cardinals','NLDSA5','F'),

('2013-10-3','Turner Field','Dodgers','Braves','Dodgers','NLDSB1','F'),
('2013-10-4','Turner Field','Dodgers','Braves','Braves','NLDSB2','F'),
('2013-10-6','Dodger Stadium','Braves','Dodgers','Dodgers','NLDSB3','F'),
('2013-10-7','Dodger Stadium','Braves','Dodgers','Dodgers','NLDSB4','F'),
('2013-10-9','Turner Field','Dodgers','Braves','','NLDSB5','T'),

('2013-10-4','Fenway Park','Rays','Red Sox','Red Sox','ALDSA1','F'),
('2013-10-5','Fenway Park','Rays','Red Sox','Red Sox','ALDSA2','F'),
('2013-10-7','Tropicana Field','Red Sox','Rays','Rays','ALDSA3','F'),
('2013-10-8','Tropicana Field','Red Sox','Rays','Red Sox','ALDSA4','F'),
('2013-10-10','Fenway Park','Rays','Red Sox','','ALDSA5','T'),

('2013-10-4','O.Co Coliseum','Tigers','Athletics','Tigers','ALDSB1','F'),
('2013-10-5','O.Co Coliseum','Tigers','Athletics','Athletics','ALDSB2','F'),
('2013-10-7','Comerica Park','Athletics','Tigers','Athletics','ALDSB3','F'),
('2013-10-8','Comerica Park','Athletics','Tigers','Tigers','ALDSB4','F'),
('2013-10-10','O.Co Coliseum','Tigers','Athletics','Tigers','ALDSB5','F'),

('2013-10-11','Busch Stadium','Dodgers','Cardinals','Cardinals','NLCS1','F'),
('2013-10-12','Busch Stadium','Dodgers','Cardinals','Cardinals','NLCS2','F'),
('2013-10-14','Dodger Stadium','Cardinals','Dodgers','Dodgers','NLCS3','F'),
('2013-10-15','Dodger Stadium','Cardinals','Dodgers','Cardinals','NLCS4','F'),
('2013-10-16','Dodger Stadium','Cardinals','Dodgers','Dodgers','NLCS5','F'),
('2013-10-18','Busch Stadium','Dodgers','Cardinals','Dodgers','NLCS6','F'),
('2013-10-19','Busch Stadium','Dodgers','Cardinals','','NLCS7','T'),

('2013-10-12','Fenway Park','Tigers','Red Sox','Tigers','ALCS1','F'),
('2013-10-13','Fenway Park','Tigers','Red Sox','Red Sox','ALCS2','F'),
('2013-10-15','Comerica Park','Red Sox','Tigers','Red Sox','ALCS3','F'),
('2013-10-16','Comerica Park','Red Sox','Tigers','Tigers','ALCS4','F'),
('2013-10-17','Comerica Park','Red Sox','Tigers','Red Sox','ALCS5','F'),
('2013-10-19','Fenway Park','Tigers','Red Sox','Red Sox','ALCS6','F'),
('2013-10-20','Fenway Park','Tigers','Red Sox','','ALCS7','T'),

('2013-10-23','Fenway Park','Cardinals','Red Sox','Red Sox','WS1','F'),
('2013-10-24','Fenway Park','Cardinals','Red Sox','Cardinals','WS2','F'),
('2013-10-26','Busch Stadium','Red Sox','Cardinals','Cardinals','WS3','F'),
('2013-10-27','Busch Stadium','Red Sox','Cardinals','Red Sox','WS4','F'),
('2013-10-28','Busch Stadium','Red Sox','Cardinals','Red Sox','WS5','F'),
('2013-10-30','Fenway Park','Cardinals','Red Sox','Red Sox','WS6','F'),
('2013-10-31','Fenway Park','Cardinals','Red Sox','','WS7','T');

SET foreign_key_checks = 1;

UNLOCK TABLES;
