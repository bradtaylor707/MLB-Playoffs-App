USE mlb_playoffs;

LOCK TABLES stadium WRITE;

SET foreign_key_checks = 0;

INSERT INTO stadium VALUES
('PNC Park','Pittsburgh','Pirates',38496,2001,325,399,320),
('Tropicana Field','St. Petersburg','Rays',40473,1990,315,404,322),
('Busch Stadium','St. Louis','Cardinals',46861,2006,336,400,335),
('O.Co Coliseum','Oakland','Athletics',63132,1966,330,400,330),
('Turner Field','Atlanta','Braves',50096,1996,335,401,330),
('Fenway Park','Boston','Red Sox',37400,1912,310,390,302),
('Comerica Park','Detroit','Tigers',41782,2000,345,420,330),
('Dodger Stadium','Los Angeles','Dodgers',56000,1962,330,400,330);

SET foreign_key_checks = 1;

UNLOCK TABLES;
