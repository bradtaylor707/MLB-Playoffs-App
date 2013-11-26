USE mlb_playoffs;

LOCK TABLES manager WRITE;

SET foreign_key_checks = 0;

INSERT INTO manager VALUES
('Clint Hurdle', 'Pirates'),
('Joe Maddon','Rays'),
('Mike Matheny','Cardinals'),
('Bob Melvin','Athletics'),
('Fredi Gonzalez','Braves'),
('John Farrell','Red Sox'),
('Jim Leyland','Tigers'),
('Don Mattingly','Dodgers');

SET foreign_key_checks = 1;

UNLOCK TABLES;
