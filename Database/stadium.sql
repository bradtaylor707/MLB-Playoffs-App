USE mlb_playoffs;

LOCK TABLES stadium WRITE;

SET foreign_key_checks = 0;

INSERT INTO stadium VALUES
('PNC Park','Pittsburgh','Pirates',38496,2001,325,399,320,'Pitcher'),
('Tropicana Field','St. Petersburg','Rays',40473,1990,315,404,322,'Pitcher'),
('Busch Stadium','St. Louis','Cardinals',46861,2006,336,400,335,'Pitcher'),
('O.Co Coliseum','Oakland','Athletics',63132,1966,330,400,330,'Pitcher'),
('Turner Field','Atlanta','Braves',50096,1996,335,401,330,'Pitcher'),
('Fenway Park','Boston','Red Sox',37400,1912,310,390,302,'Pitcher'),
('Comerica Park','Detroit','Tigers',41782,2000,345,420,330,'Hitter'),
('Dodger Stadium','Los Angeles','Dodgers',56000,1962,330,400,330,'Pitcher');

SET foreign_key_checks = 1;

UNLOCK TABLES;
