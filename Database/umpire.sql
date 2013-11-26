USE mlb_playoffs;

LOCK TABLES umpire WRITE;

SET foreign_key_checks = 0;

INSERT INTO umpire VALUES
('Frank Overton','First Base',61573),
('Miguel Garcia','Second Base',64321),
('Alfred McManus','Second Base',24525),
('John Smith','Home Plate',102482),
('John Setting','Home Plate',92751),
('Franklin Just','Third Base',64364),
('Brad Taylor','Second Base',35255),
('Riley Fewell','First Base',52155),
('Ali Kooshesh','Home Plate',24004),
('Andrew Gibeau','First Base',50125),
('Ivan Rodriguez','Second Base',100252),
('Aaron Cheever','Third Base',72304),
('David Fisher','Home Plate',14259);

SET foreign_key_checks = 1;

UNLOCK TABLES;
