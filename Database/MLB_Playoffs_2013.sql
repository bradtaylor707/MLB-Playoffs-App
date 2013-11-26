BEGIN;

USE mlb_playoffs;

CREATE TABLE `manager` (
    `name` varchar(80) NOT NULL PRIMARY KEY,
    `team` varchar(50) NOT NULL
)
;
CREATE TABLE `team` (
    `name` varchar(50) NOT NULL PRIMARY KEY,
    `location` varchar(50) NOT NULL,
    `manager_id` varchar(80) NOT NULL
)
;
ALTER TABLE `team` ADD CONSTRAINT `manager_id_refs_name_9384d5fc` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`name`);
CREATE TABLE `player` (
    `position` varchar(8) NOT NULL,
    `team_id` varchar(50) NOT NULL,
    `status` varchar(50) NOT NULL,
    `number` integer NOT NULL,
    `name` varchar(80) NOT NULL PRIMARY KEY,
    `bats` varchar(1) NOT NULL,
    `throws` varchar(1) NOT NULL,
    `height` varchar(10) NOT NULL,
    `weight` varchar(10) NOT NULL,
    `birthDate` date NOT NULL
)
;
ALTER TABLE `player` ADD CONSTRAINT `team_id_refs_name_70eb3ca9` FOREIGN KEY (`team_id`) REFERENCES `team` (`name`);
CREATE TABLE `stadium` (
    `name` varchar(50) NOT NULL PRIMARY KEY,
    `location` varchar(50) NOT NULL,
    `team_id` varchar(50) NOT NULL,
    `capacity` integer NOT NULL,
    `yearEstablished` date NOT NULL,
    `leftFieldDimension` integer NOT NULL,
    `centerFieldDimension` integer NOT NULL,
    `rightFieldDimension` integer NOT NULL,
    `pitcherOrHitterStadium` varchar(10) NOT NULL
)
;
ALTER TABLE `stadium` ADD CONSTRAINT `team_id_refs_name_984e0af9` FOREIGN KEY (`team_id`) REFERENCES `team` (`name`);
CREATE TABLE `umpire` (
    `name` varchar(80) NOT NULL PRIMARY KEY,
    `specialty` varchar(50) NOT NULL,
    `salary` integer NOT NULL
)
;
CREATE TABLE `game` (
    `title` varchar(80) NOT NULL PRIMARY KEY,
    `date` date NOT NULL,
    `firstBaseUmpire_id` varchar(80) NOT NULL,
    `secondBaseUmpire_id` varchar(80) NOT NULL,
    `thirdBaseUmpire_id` varchar(80) NOT NULL,
    `homePlateUmpire_id` varchar(80) NOT NULL,
    `homeTeam_id` varchar(50) NOT NULL,
    `awayTeam_id` varchar(50) NOT NULL
)
;
ALTER TABLE `game` ADD CONSTRAINT `firstBaseUmpire_id_refs_name_82cafc3c` FOREIGN KEY (`firstBaseUmpire_id`) REFERENCES `umpire` (`name`);
ALTER TABLE `game` ADD CONSTRAINT `secondBaseUmpire_id_refs_name_82cafc3c` FOREIGN KEY (`secondBaseUmpire_id`) REFERENCES `umpire` (`name`);
ALTER TABLE `game` ADD CONSTRAINT `thirdBaseUmpire_id_refs_name_82cafc3c` FOREIGN KEY (`thirdBaseUmpire_id`) REFERENCES `umpire` (`name`);
ALTER TABLE `game` ADD CONSTRAINT `homePlateUmpire_id_refs_name_82cafc3c` FOREIGN KEY (`homePlateUmpire_id`) REFERENCES `umpire` (`name`);
ALTER TABLE `game` ADD CONSTRAINT `homeTeam_id_refs_name_fd988813` FOREIGN KEY (`homeTeam_id`) REFERENCES `team` (`name`);
ALTER TABLE `game` ADD CONSTRAINT `awayTeam_id_refs_name_fd988813` FOREIGN KEY (`awayTeam_id`) REFERENCES `team` (`name`);
CREATE TABLE `boxScore` (
    `game_id` varchar(80) NOT NULL PRIMARY KEY,
    `awayScore` integer NOT NULL,
    `homeScore` integer NOT NULL,
    `awayHits` integer NOT NULL,
    `homeHits` integer NOT NULL,
    `awayErrors` integer NOT NULL,
    `homeErrors` integer NOT NULL,
    `WP_id` varchar(80) NOT NULL,
    `LP_id` varchar(80) NOT NULL,
    `SV_id` varchar(80) NOT NULL
)
;
ALTER TABLE `boxScore` ADD CONSTRAINT `WP_id_refs_name_90ead78e` FOREIGN KEY (`WP_id`) REFERENCES `player` (`name`);
ALTER TABLE `boxScore` ADD CONSTRAINT `LP_id_refs_name_90ead78e` FOREIGN KEY (`LP_id`) REFERENCES `player` (`name`);
ALTER TABLE `boxScore` ADD CONSTRAINT `SV_id_refs_name_90ead78e` FOREIGN KEY (`SV_id`) REFERENCES `player` (`name`);
ALTER TABLE `boxScore` ADD CONSTRAINT `game_id_refs_title_828533fd` FOREIGN KEY (`game_id`) REFERENCES `game` (`title`);
CREATE TABLE `game_has_umpire` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `umpire_id` varchar(80) NOT NULL,
    `umpirePosition` varchar(50) NOT NULL,
    `game_id` varchar(80) NOT NULL
)
;
ALTER TABLE `game_has_umpire` ADD CONSTRAINT `game_id_refs_title_4c8f7ff3` FOREIGN KEY (`game_id`) REFERENCES `game` (`title`);
ALTER TABLE `game_has_umpire` ADD CONSTRAINT `umpire_id_refs_name_ddd42ce1` FOREIGN KEY (`umpire_id`) REFERENCES `umpire` (`name`);
CREATE TABLE `player_playsin_game` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `name_id` varchar(80) NOT NULL,
    `game_id` varchar(80) NOT NULL
)
;
ALTER TABLE `player_playsin_game` ADD CONSTRAINT `name_id_refs_name_215093e2` FOREIGN KEY (`name_id`) REFERENCES `player` (`name`);
ALTER TABLE `player_playsin_game` ADD CONSTRAINT `game_id_refs_title_de4b4d27` FOREIGN KEY (`game_id`) REFERENCES `game` (`title`);
CREATE TABLE `schedule` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `gameDate` date NOT NULL,
    `stadium_id` varchar(50) NOT NULL,
    `awayTeam_id` varchar(50) NOT NULL,
    `homeTeam_id` varchar(50) NOT NULL,
    `winner_id` varchar(50) NOT NULL,
    `gameTitle_id` varchar(80) NOT NULL,
    `ifNecessary` varchar(1) NOT NULL
)
;
ALTER TABLE `schedule` ADD CONSTRAINT `stadium_id_refs_name_5b9c4708` FOREIGN KEY (`stadium_id`) REFERENCES `stadium` (`name`);
ALTER TABLE `schedule` ADD CONSTRAINT `gameTitle_id_refs_title_604457d0` FOREIGN KEY (`gameTitle_id`) REFERENCES `game` (`title`);
ALTER TABLE `schedule` ADD CONSTRAINT `awayTeam_id_refs_name_e5971f7f` FOREIGN KEY (`awayTeam_id`) REFERENCES `team` (`name`);
ALTER TABLE `schedule` ADD CONSTRAINT `homeTeam_id_refs_name_e5971f7f` FOREIGN KEY (`homeTeam_id`) REFERENCES `team` (`name`);
ALTER TABLE `schedule` ADD CONSTRAINT `winner_id_refs_name_e5971f7f` FOREIGN KEY (`winner_id`) REFERENCES `team` (`name`);
CREATE TABLE `startingLineup` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `gameTitle_id` varchar(80) NOT NULL,
    `date` date NOT NULL,
    `awayTeam_id` varchar(80) NOT NULL,
    `awayPitcher_id` varchar(80) NOT NULL,
    `awayCatcher_id` varchar(80) NOT NULL,
    `away1B_id` varchar(80) NOT NULL,
    `away2B_id` varchar(80) NOT NULL,
    `awaySS_id` varchar(80) NOT NULL,
    `away3B_id` varchar(80) NOT NULL,
    `awayLF_id` varchar(80) NOT NULL,
    `awayCF_id` varchar(80) NOT NULL,
    `awayRF_id` varchar(80) NOT NULL,
    `awayDH_id` varchar(80) NOT NULL,
    `homeTeam_id` varchar(80) NOT NULL,
    `homePitcher_id` varchar(80) NOT NULL,
    `homeCatcher_id` varchar(80) NOT NULL,
    `home1B_id` varchar(80) NOT NULL,
    `home2B_id` varchar(80) NOT NULL,
    `homeSS_id` varchar(80) NOT NULL,
    `home3B_id` varchar(80) NOT NULL,
    `homeLF_id` varchar(80) NOT NULL,
    `homeCF_id` varchar(80) NOT NULL,
    `homeRF_id` varchar(80) NOT NULL,
    `homeDH_id` varchar(80) NOT NULL
)
;
ALTER TABLE `startingLineup` ADD CONSTRAINT `awayTeam_id_refs_name_b0f3d5b7` FOREIGN KEY (`awayTeam_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `awayPitcher_id_refs_name_b0f3d5b7` FOREIGN KEY (`awayPitcher_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `awayCatcher_id_refs_name_b0f3d5b7` FOREIGN KEY (`awayCatcher_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `away1B_id_refs_name_b0f3d5b7` FOREIGN KEY (`away1B_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `away2B_id_refs_name_b0f3d5b7` FOREIGN KEY (`away2B_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `awaySS_id_refs_name_b0f3d5b7` FOREIGN KEY (`awaySS_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `away3B_id_refs_name_b0f3d5b7` FOREIGN KEY (`away3B_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `awayLF_id_refs_name_b0f3d5b7` FOREIGN KEY (`awayLF_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `awayCF_id_refs_name_b0f3d5b7` FOREIGN KEY (`awayCF_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `awayRF_id_refs_name_b0f3d5b7` FOREIGN KEY (`awayRF_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `awayDH_id_refs_name_b0f3d5b7` FOREIGN KEY (`awayDH_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `homeTeam_id_refs_name_b0f3d5b7` FOREIGN KEY (`homeTeam_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `homePitcher_id_refs_name_b0f3d5b7` FOREIGN KEY (`homePitcher_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `homeCatcher_id_refs_name_b0f3d5b7` FOREIGN KEY (`homeCatcher_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `home1B_id_refs_name_b0f3d5b7` FOREIGN KEY (`home1B_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `home2B_id_refs_name_b0f3d5b7` FOREIGN KEY (`home2B_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `homeSS_id_refs_name_b0f3d5b7` FOREIGN KEY (`homeSS_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `home3B_id_refs_name_b0f3d5b7` FOREIGN KEY (`home3B_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `homeLF_id_refs_name_b0f3d5b7` FOREIGN KEY (`homeLF_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `homeCF_id_refs_name_b0f3d5b7` FOREIGN KEY (`homeCF_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `homeRF_id_refs_name_b0f3d5b7` FOREIGN KEY (`homeRF_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `homeDH_id_refs_name_b0f3d5b7` FOREIGN KEY (`homeDH_id`) REFERENCES `player` (`name`);
ALTER TABLE `startingLineup` ADD CONSTRAINT `gameTitle_id_refs_title_8e304a4e` FOREIGN KEY (`gameTitle_id`) REFERENCES `game` (`title`);

COMMIT;
