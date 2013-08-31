DROP TABLE IF EXISTS `maiid_artist_details`;
DROP TABLE IF EXISTS `maiid_card_content_mapping`;
DROP TABLE IF EXISTS `maiid_card_tag`;
DROP TABLE IF EXISTS `maiid_favourite_card`;
DROP TABLE IF EXISTS `maiid_skill_set`;
DROP TABLE IF EXISTS `maiid_artist_exp`;
DROP TABLE IF EXISTS `maiid_search_key`;
DROP TABLE IF EXISTS `maiid_artist_award`;
DROP TABLE IF EXISTS `maiid_card`;
DROP TABLE IF EXISTS `maiid_template_block`;
DROP TABLE IF EXISTS `maiid_favourite_card_group`;
DROP TABLE IF EXISTS `maiid_search_key_type`;
DROP TABLE IF EXISTS `maiid_skill_set_type`;
DROP TABLE IF EXISTS `maiid_template`;
DROP TABLE IF EXISTS `maiid_audience`;
DROP TABLE IF EXISTS `maiid_artist`;

CREATE TABLE `maiid_artist` (
       `id` INTEGER NOT NULL AUTO_INCREMENT
     , `email` VARCHAR(50) NOT NULL
     , `password` VARCHAR(50) NOT NULL
     , `lastname` VARCHAR(50) NOT NULL
     , `firstname` VARCHAR(50) NOT NULL
     , `gender` VARCHAR(50) NOT NULL
     , `district` VARCHAR(50) NOT NULL
     , `dateofbirth` VARCHAR(50) NOT NULL
     , PRIMARY KEY (`id`)
);

CREATE TABLE `maiid_audience` (
       `id` INTEGER NOT NULL AUTO_INCREMENT
     , `username` VARCHAR(50) NOT NULL
     , `password` VARCHAR(50) NOT NULL
     , PRIMARY KEY (`id`)
);

CREATE TABLE `maiid_template` (
       `id` INTEGER NOT NULL AUTO_INCREMENT
     , PRIMARY KEY (`id`)
);

CREATE TABLE `maiid_skill_set_type` (
       `id` INTEGER NOT NULL AUTO_INCREMENT
     , `shortname` VARCHAR(50) NOT NULL
     , `fullname` VARCHAR(50) NOT NULL
     , `pathicon` VARCHAR(50) NOT NULL
     , PRIMARY KEY (`id`)
);

CREATE TABLE `maiid_search_key_type` (
       `id` INTEGER NOT NULL AUTO_INCREMENT
     , `type` VARCHAR(50) NOT NULL
     , PRIMARY KEY (`id`)
);

CREATE TABLE `maiid_favourite_card_group` (
       `id` INTEGER NOT NULL AUTO_INCREMENT
     , `aid` INTEGER NOT NULL
     , PRIMARY KEY (`id`)
     , INDEX (`id`)
     , CONSTRAINT `FK_maiid_favourite_card_group_1_1` FOREIGN KEY (`id`)
                  REFERENCES `maiid_audience` (`id`)
);

CREATE TABLE `maiid_template_block` (
       `id` INTEGER NOT NULL AUTO_INCREMENT
     , `tid` INTEGER NOT NULL
     , `x` INTEGER NOT NULL
     , `y` INTEGER NOT NULL
     , `width` INTEGER NOT NULL
     , `height` INTEGER NOT NULL
     , `order` INTEGER NOT NULL
     , `staticContent` VARCHAR(50) NOT NULL
     , `type` VARCHAR(50) NOT NULL
     , PRIMARY KEY (`id`)
     , INDEX (`id`)
     , CONSTRAINT `FK_maiid_template_block_1_1` FOREIGN KEY (`id`)
                  REFERENCES `maiid_template` (`id`)
);

CREATE TABLE `maiid_card` (
       `id` INTEGER NOT NULL AUTO_INCREMENT
     , `aid` INTEGER NOT NULL
     , `tid` INTEGER NOT NULL
     , `title` VARCHAR(50) NOT NULL
     , PRIMARY KEY (`id`)
     , INDEX (`aid`)
     , CONSTRAINT `FK_maiid_card_1_1` FOREIGN KEY (`aid`)
                  REFERENCES `maiid_artist` (`id`)
);

CREATE TABLE `maiid_artist_award` (
       `id` INTEGER NOT NULL
     , `aid` INTEGER NOT NULL
     , `date` DATE NOT NULL
     , `grading` VARCHAR(50) NOT NULL
     , `competition` VARCHAR(50) NOT NULL
     , `organizer` VARCHAR(50) NOT NULL
     , `description` VARCHAR(50) NOT NULL
     , PRIMARY KEY (`id`)
     , INDEX (`aid`)
     , CONSTRAINT `FK_maiid_artist_award_1_1` FOREIGN KEY (`aid`)
                  REFERENCES `maiid_artist` (`id`)
);

CREATE TABLE `maiid_search_key` (
       `id` INTEGER NOT NULL AUTO_INCREMENT
     , `tid` INTEGER NOT NULL
     , `key` VARCHAR(50) NOT NULL
     , PRIMARY KEY (`id`)
     , INDEX (`id`)
     , CONSTRAINT `FK_maiid_search_key_1_1` FOREIGN KEY (`id`)
                  REFERENCES `maiid_search_key_type` (`id`)
);

CREATE TABLE `maiid_artist_exp` (
       `id` INTEGER NOT NULL AUTO_INCREMENT
     , `aid` INTEGER NOT NULL
     , `date` DATE NOT NULL
     , `position` VARCHAR(50) NOT NULL
     , `job` VARCHAR(50) NOT NULL
     , `company` VARCHAR(50) NOT NULL
     , `employee` VARCHAR(50) NOT NULL
     , `description` VARCHAR(50) NOT NULL
     , PRIMARY KEY (`id`)
     , INDEX (`aid`)
     , CONSTRAINT `FK_maiid_artist_exp_1_1` FOREIGN KEY (`aid`)
                  REFERENCES `maiid_artist` (`id`)
);

CREATE TABLE `maiid_skill_set` (
       `id` INTEGER NOT NULL AUTO_INCREMENT
     , `aid` INTEGER NOT NULL
     , `tid` INTEGER NOT NULL
     , PRIMARY KEY (`id`)
     , INDEX (`aid`)
     , CONSTRAINT `FK_maiid_skill_set_1_2` FOREIGN KEY (`aid`)
                  REFERENCES `maiid_artist` (`id`)
     , INDEX (`tid`)
     , CONSTRAINT `FK_maiid_skill_set_1_1` FOREIGN KEY (`tid`)
                  REFERENCES `maiid_skill_set_type` (`id`)
);

CREATE TABLE `maiid_favourite_card` (
       `id` INTEGER NOT NULL AUTO_INCREMENT
     , `cid` INTEGER NOT NULL
     , `gid` INTEGER NOT NULL
     , PRIMARY KEY (`id`)
     , INDEX (`id`)
     , CONSTRAINT `FK_maiid_favourite_card_1_1` FOREIGN KEY (`id`)
                  REFERENCES `maiid_favourite_card_group` (`id`)
     , INDEX (`id`)
     , CONSTRAINT `FK_maiid_favourite_card_1_2` FOREIGN KEY (`id`)
                  REFERENCES `maiid_card` (`id`)
);

CREATE TABLE `maiid_card_tag` (
       `id` INTEGER NOT NULL AUTO_INCREMENT
     , `cid` INTEGER NOT NULL
     , `key` VARCHAR(50) NOT NULL
     , PRIMARY KEY (`id`)
     , INDEX (`id`)
     , CONSTRAINT `FK_maiid_card_tag_1_1` FOREIGN KEY (`id`)
                  REFERENCES `maiid_card` (`id`)
);

CREATE TABLE `maiid_card_content_mapping` (
       `id` INTEGER NOT NULL AUTO_INCREMENT
     , `cid` INTEGER NOT NULL
     , `blockid` INTEGER NOT NULL
     , `customerContent` VARCHAR(50) NOT NULL
     , PRIMARY KEY (`id`)
     , INDEX (`id`)
     , CONSTRAINT `FK_maiid_card_content_mapping_1_2` FOREIGN KEY (`id`)
                  REFERENCES `maiid_template_block` (`id`)
     , INDEX (`cid`)
     , CONSTRAINT `FK_maiid_card_content_mapping_1_1` FOREIGN KEY (`cid`)
                  REFERENCES `maiid_card` (`id`)
);

CREATE TABLE `maiid_artist_details` (
       `id` INTEGER NOT NULL AUTO_INCREMENT
     , `aid` INTEGER NOT NULL
     , `crew` VARCHAR(50) NOT NULL
     , `height` VARCHAR(50) NOT NULL
     , `weight` VARCHAR(50) NOT NULL
     , `chest` VARCHAR(50)
     , `waist` VARCHAR(50) NOT NULL
     , `hip` VARCHAR(50)
     , `dresssize` VARCHAR(50)
     , `haircolor` VARCHAR(50)
     , PRIMARY KEY (`id`)
     , INDEX (`aid`)
     , CONSTRAINT `FK_maiid_artist_details_1_1` FOREIGN KEY (`aid`)
                  REFERENCES `maiid_artist` (`id`)
);

