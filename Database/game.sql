USE mlb_playoffs;

LOCK TABLES game WRITE;

SET foreign_key_checks = 0;

INSERT INTO game VALUES

('NLDSA1','2013-10-3','Frank Overton','Miguel Garcia','John Smith','Franklin Just','Cardinals','Pirates'),
('NLDSA2','2013-10-4','Frank Overton','Miguel Garcia','John Smith','Franklin Just','Carginals','Pirates'),
('NLDSA3','2013-10-6','Frank Overton','Miguel Garcia','John Smith','Franklin Just','Pirates','Cardinals'),
('NLDSA4','2013-10-7','Frank Overton','Miguel Garcia','John Smith','Franklin Just','Pirates','Cardinals'),
('NLDSA5','2013-10-9','Frank Overton','Miguel Garcia','John Smith','Franklin Just','Cardinals','Pirates'),

('NLDSB1','2013-10-3','John Setting','Andrew Gibeau','Riley Fewell','Brad Taylor','Braves','Dodgers'),
('NLDSB2','2013-10-4','John Setting','Andrew Gibeau','Riley Fewell','Brad Taylor','Braves','Dodgers'),
('NLDSB3','2013-10-6','John Setting','Andrew Gibeau','Riley Fewell','Brad Taylor','Dodgers','Braves'),
('NLDSB4','2013-10-7','John Setting','Andrew Gibeau','Riley Fewell','Brad Taylor','Dodgers','Braves'),

('ALDSA1','2013-10-4','Ivan Rodriguez','Ali Kooshesh','Aaron Cheever','David Fisher','Red Sox','Rays'),
('ALDSA2','2013-10-5','Ivan Rodriguez','Ali Kooshesh','Aaron Cheever','David Fisher','Red Sox','Rays'),
('ALDSA3','2013-10-7','Ivan Rodriguez','Ali Kooshesh','Aaron Cheever','David Fisher','Rays','Red Sox'),
('ALDSA4','2013-10-8','Ivan Rodriguez','Ali Kooshesh','Aaron Cheever','David Fisher','Rays','Red Sox'),

('ALDSB1','2013-10-4','Andrew Gibearu','Riley Fewell','Brad Taylor','Frank Overton','Athletics','Tigers'),
('ALDSB2','2013-10-5','Andrew Gibearu','Riley Fewell','Brad Taylor','Frank Overton','Athletics','Tigers'),
('ALDSB3','2013-10-7','Andrew Gibearu','Riley Fewell','Brad Taylor','Frank Overton','Tigers','Athletics'),
('ALDSB4','2013-10-8','Andrew Gibearu','Riley Fewell','Brad Taylor','Frank Overton','Tigers','Athletics'),
('ALDSB5','2013-10-10','Andrew Gibearu','Riley Fewell','Brad Taylor','Frank Overton','Athletics','Tigers'),


('NLCS1','2013-10-11','Alfred McManus','Miguel Garcia','Franklin Just','John Smith','Dodgers','Cardinals'),
('NLCS2','2013-10-12','Alfred McManus','Miguel Garcia','Franklin Just','John Smith','Dodgers','Cardinals'),
('NLCS3','2013-10-14','Alfred McManus','Miguel Garcia','Franklin Just','John Smith','Cardinals','Dodgers'),
('NLCS4','2013-10-15','Alfred McManus','Miguel Garcia','Franklin Just','John Smith','Cardinals','Dodgers'),
('NLCS5','2013-10-16','Alfred McManus','Miguel Garcia','Franklin Just','John Smith','Cardinals','Dodgers'),
('NLCS6','2013-10-18','Alfred McManus','Miguel Garcia','Franklin Just','John Smith','Dodgers','Cardinals'),

('ALCS1','2013-10-12','Ashley Post','Emily Hitch','Nicole Fetch','Nicole Fetch','Tigers','Red Sox'),
('ALCS2','2013-10-13','Ashley Post','Emily Hitch','Nicole Fetch','Nicole Fetch','Tigers','Red Sox'),
('ALCS3','2013-10-15','Ashley Post','Emily Hitch','Nicole Fetch','Nicole Fetch','Red Sox','Tigers'),
('ALCS4','2013-10-16','Ashley Post','Emily Hitch','Nicole Fetch','Nicole Fetch','Red Sox','Tigers'),
('ALCS5','2013-10-17','Ashley Post','Emily Hitch','Nicole Fetch','Nicole Fetch','Red Sox','Tigers'),
('ALCS6','2013-10-19','Ashley Post','Emily Hitch','Nicole Fetch','Nicole Fetch','Tigers','Red Sox'),

('WS1','2013-10-23','Alfred McManus','Miguel Garcia','Franklin Just','John Smith','Tigers','Red Sox'),
('WS2','2013-10-24','Ashley Post','Emily Hitch','Nicole Fetch','Frank Overton','Tigers','Red Sox'),
('WS3','2013-10-26','Alfred McManus','Miguel Garcia','Franklin Just','John Smith','Red Sox','Tigers'),
('WS4','2013-10-27','Ashley Post','Emily Hitch','Nicole Fetch','Frank Overton','Red Sox','Tigers'),
('WS5','2013-10-28','Ashley Post','Emily Hitch','Nicole Fetch','Frank Overton','Red Sox','Tigers'),
('WS6','2013-10-30','Alfred McManus','Miguel Garcia','Franklin Just','John Smith','Tigers','Red Sox');

SET foreign_key_checks = 1;

UNLOCK TABLES;
