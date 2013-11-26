USE mlb_playoffs;

LOCK TABLES team WRITE;

SET foreign_key_checks = 0;

INSERT INTO team VALUES
('Pirates','Pittsburg','Clint Hurdle'),
('Rays','Tampa Bay','Joe Maddon'),
('Cardinals','St. Louis','Mike Matheny'),
('Athletics','Oakland','Bob Melvin'),
('Braves','Atlanta','Fredi Gonzalez'),
('Red Sox','Boston','John Farrell'),
('Tigers','Detroit','Jim Leyland'),
('Dodgers','Los Angeles','Don Mattingly');

SET foreign_key_checks = 1;

UNLOCK TABLES;
