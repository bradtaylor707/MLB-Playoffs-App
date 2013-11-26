USE mlb_playoffs;

LOCK TABLES game_has_umpire WRITE;

SET foreign_key_checks = 0;

INSERT INTO game_has_umpire (umpire_id, umpirePosition, game_id) VALUES
('Alfred McManus','First Base','NLDSA1'),
('Miguel Garcia','Second Base','NLDSA1'),
('Franklin Just','Third Base','NLDSA1'),
('John Smith','Home Plate','NLDSA1'),

('Alfred McManus','First Base','NLDSA2'),
('Miguel Garcia','Second Base','NLDSA2'),
('Franklin Just','Third Base','NLDSA2'),
('John Smith','Home Plate','NLDSA2'),

('Alfred McManus','First Base','NLDSA3'),
('Miguel Garcia','Second Base','NLDSA3'),
('Franklin Just','Third Base','NLDSA3'),
('John Smith','Home Plate','NLDSA3'),

('Alfred McManus','First Base','NLDSA4'),
('Miguel Garcia','Second Base','NLDSA4'),
('Franklin Just','Third Base','NLDSA4'),
('John Smith','Home Plate','NLDSA4'),

('Alfred McManus','First Base','NLDSA5'),
('Miguel Garcia','Second Base','NLDSA5'),
('Franklin Just','Third Base','NLDSA5'),
('John Smith','Home Plate','NLDSA5'),


('Ashley Post','First Base','NLDSB1'),
('Emily Hitch','Second Base','NLDSB1'),
('Nicole Fetch','Third Base','NLDSB1'),
('Frank Overton','Home Plate','NLDSB1'),

('Alfred McManus','First Base','NLDSB2'),
('Miguel Garcia','Second Base','NLDSB2'),
('Franklin Just','Third Base','NLDSB2'),
('John Smith','Home Plate','NLDSB2'),

('Alfred McManus','First Base','NLDSB3'),
('Miguel Garcia','Second Base','NLDSB3'),
('Franklin Just','Third Base','NLDSB3'),
('John Smith','Home Plate','NLDSB3'),

('Alfred McManus','First Base','NLDSB4'),
('Miguel Garcia','Second Base','NLDSB4'),
('Franklin Just','Third Base','NLDSB4'),
('John Smith','Home Plate','NLDSB4'),

('Alfred McManus','First Base','ALDSA1'),
('Miguel Garcia','Second Base','ALDSA1'),
('Franklin Just','Third Base','ALDSA1'),
('John Smith','Home Plate','ALDSA1'),

('Alfred McManus','First Base','ALDSA2'),
('Miguel Garcia','Second Base','ALDSA2'),
('Franklin Just','Third Base','ALDSA2'),
('John Smith','Home Plate','ALDSA2'),

('Alfred McManus','First Base','ALDSA3'),
('Miguel Garcia','Second Base','ALDSA3'),
('Franklin Just','Third Base','ALDSA3'),
('John Smith','Home Plate','ALDSA3'),

('Alfred McManus','First Base','ALDSA4'),
('Miguel Garcia','Second Base','ALDSA4'),
('Franklin Just','Third Base','ALDSA4'),
('John Smith','Home Plate','ALDSA4'),

('Alfred McManus','First Base','ALDSB1'),
('Miguel Garcia','Second Base','ALDSB1'),
('Franklin Just','Third Base','ALDSB1'),
('John Smith','Home Plate','ALDSB1'),

('Alfred McManus','First Base','ALDSB2'),
('Miguel Garcia','Second Base','ALDSB2'),
('Franklin Just','Third Base','ALDSB2'),
('John Smith','Home Plate','ALDSB2'),

('Alfred McManus','First Base','ALDSB3'),
('Miguel Garcia','Second Base','ALDSB3'),
('Franklin Just','Third Base','ALDSB3'),
('John Smith','Home Plate','ALDSB3'),

('Alfred McManus','First Base','ALDSB4'),
('Miguel Garcia','Second Base','ALDSB4'),
('Franklin Just','Third Base','ALDSB4'),
('John Smith','Home Plate','ALDSB4'),

('Alfred McManus','First Base','ALDSB5'),
('Miguel Garcia','Second Base','ALDSB5'),
('Franklin Just','Third Base','ALDSB5'),
('John Smith','Home Plate','ALDSB5'),





('Alfred McManus','First Base','NLCS1'),
('Miguel Garcia','Second Base','NLCS1'),
('Franklin Just','Third Base','NLCS1'),
('John Smith','Home Plate','NLCS1'),

('Alfred McManus','First Base','NLCS2'),
('Miguel Garcia','Second Base','NLCS2'),
('Franklin Just','Third Base','NLCS2'),
('John Smith','Home Plate','NLCS2'),

('Alfred McManus','First Base','NLCS3'),
('Miguel Garcia','Second Base','NLCS3'),
('Franklin Just','Third Base','NLCS3'),
('John Smith','Home Plate','NLCS3'),

('Alfred McManus','First Base','NLCS4'),
('Miguel Garcia','Second Base','NLCS4'),
('Franklin Just','Third Base','NLCS4'),
('John Smith','Home Plate','NLCS4'),

('Alfred McManus','First Base','NLCS5'),
('Miguel Garcia','Second Base','NLCS5'),
('Franklin Just','Third Base','NLCS5'),
('John Smith','Home Plate','NLCS5'),

('Alfred McManus','First Base','NLCS6'),
('Miguel Garcia','Second Base','NLCS6'),
('Franklin Just','Third Base','NLCS6'),
('John Smith','Home Plate','NLCS6'),



('Ashley Post','First Base','ALCS1'),
('Emily Hitch','Second Base','ALCS1'),
('Nicole Fetch','Third Base','ALCS1'),
('Frank Overton','Home Plate','ALCS1'),

('Ashley Post','First Base','ALCS2'),
('Emily Hitch','Second Base','ALCS2'),
('Nicole Fetch','Third Base','ALCS2'),
('Frank Overton','Home Plate','ALCS2'),

('Ashley Post','First Base','ALCS3'),
('Emily Hitch','Second Base','ALCS3'),
('Nicole Fetch','Third Base','ALCS3'),
('Frank Overton','Home Plate','ALCS3'),

('Ashley Post','First Base','ALCS4'),
('Emily Hitch','Second Base','ALCS4'),
('Nicole Fetch','Third Base','ALCS4'),
('Frank Overton','Home Plate','ALCS4'),

('Ashley Post','First Base','ALCS5'),
('Emily Hitch','Second Base','ALCS5'),
('Nicole Fetch','Third Base','ALCS5'),
('Frank Overton','Home Plate','ALCS5'),

('Ashley Post','First Base','ALCS6'),
('Emily Hitch','Second Base','ALCS6'),
('Nicole Fetch','Third Base','ALCS6'),
('Frank Overton','Home Plate','ALCS6'),





('Alfred McManus','First Base','WS1'),
('Miguel Garcia','Second Base','WS1'),
('Franklin Just','Third Base','WS1'),
('John Smith','Home Plate','WS1'),

('Ashley Post','First Base','WS2'),
('Emily Hitch','Second Base','WS2'),
('Nicole Fetch','Third Base','WS2'),
('Frank Overton','Home Plate','WS2'),

('Alfred McManus','First Base','WS3'),
('Miguel Garcia','Second Base','WS3'),
('Franklin Just','Third Base','WS3'),
('John Smith','Home Plate','WS3'),

('Ashley Post','First Base','WS4'),
('Emily Hitch','Second Base','WS4'),
('Nicole Fetch','Third Base','WS4'),
('Frank Overton','Home Plate','WS4'),

('Ashley Post','First Base','WS5'),
('Emily Hitch','Second Base','WS5'),
('Nicole Fetch','Third Base','WS5'),
('Frank Overton','Home Plate','WS5'),

('Alfred McManus','First Base','WS6'),
('Miguel Garcia','Second Base','WS6'),
('Franklin Just','Third Base','WS6'),
('John Smith','Home Plate','WS6');


SET foreign_key_checks = 1;

UNLOCK TABLES;
