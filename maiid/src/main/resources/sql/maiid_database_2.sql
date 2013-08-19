DROP TABLE "maiid_favourite_card";
DROP TABLE "maiid_card_content_mapping";
DROP TABLE "maiid_card_tag";
DROP TABLE "maiid_search_key";
DROP TABLE "maiid_artist_details";
DROP TABLE "maiid_artist_award";
DROP TABLE "maiid_artist_exp";
DROP TABLE "maiid_skill_set";
DROP TABLE "maiid_card";
DROP TABLE "maiid_template_block";
DROP TABLE "maiid_favourite_card_group";
DROP TABLE "maiid_artist";
DROP TABLE "maiid_template";
DROP TABLE "maiid_search_key_type";
DROP TABLE "maiid_skill_set_type";
DROP TABLE "maiid_audience";

CREATE TABLE "maiid_audience" (
       "id" SERIAL NOT NULL
     , PRIMARY KEY ("id")
);

CREATE TABLE "maiid_skill_set_type" (
       "id" SERIAL NOT NULL
     , "shortname" VARCHAR NOT NULL
     , "fullname" VARCHAR NOT NULL
     , "pathicon" VARCHAR NOT NULL
     , PRIMARY KEY ("id")
);

CREATE TABLE "maiid_search_key_type" (
       "id" SERIAL NOT NULL
     , "type" VARCHAR NOT NULL
     , PRIMARY KEY ("id")
);

CREATE TABLE "maiid_template" (
       "id" SERIAL NOT NULL
     , PRIMARY KEY ("id")
);

CREATE TABLE "maiid_artist" (
       "id" SERIAL NOT NULL
     , "email" VARCHAR NOT NULL
     , "password" VARCHAR NOT NULL
     , "lastname" VARCHAR NOT NULL
     , "firstname" VARCHAR NOT NULL
     , "gender" VARCHAR NOT NULL
     , "district" VARCHAR NOT NULL
     , "dateofbirth" VARCHAR NOT NULL
     , PRIMARY KEY ("id")
);

CREATE TABLE "maiid_favourite_card_group" (
       "id" SERIAL NOT NULL
     , "aid" INTEGER NOT NULL
     , PRIMARY KEY ("id")
     , CONSTRAINT "FK_maiid_favourite_card_group_1" FOREIGN KEY ("aid")
                  REFERENCES "maiid_audience" ("id")
);

CREATE TABLE "maiid_template_block" (
       "id" SERIAL NOT NULL
     , "tid" INTEGER NOT NULL
     , "x" INTEGER NOT NULL
     , "y" INTEGER NOT NULL
     , "width" INTEGER NOT NULL
     , "height" INTEGER NOT NULL
     , "order" INTEGER NOT NULL
     , "staticContent" VARCHAR NOT NULL
     , "type" VARCHAR NOT NULL
     , PRIMARY KEY ("id")
     , CONSTRAINT "FK_maiid_template_block_1" FOREIGN KEY ("tid")
                  REFERENCES "maiid_template" ("id")
);

CREATE TABLE "maiid_card" (
       "id" SERIAL NOT NULL
     , "aid" INTEGER NOT NULL
     , "tid" INTEGER NOT NULL
     , "title" VARCHAR NOT NULL
     , PRIMARY KEY ("id")
     , CONSTRAINT "FK_maiid_card_1" FOREIGN KEY ("aid")
                  REFERENCES "maiid_artist" ("id")
);

CREATE TABLE "maiid_skill_set" (
       "id" SERIAL NOT NULL
     , "aid" INTEGER NOT NULL
     , "tid" INTEGER NOT NULL
     , PRIMARY KEY ("id")
     , CONSTRAINT "FK_maiid_skill_set_1" FOREIGN KEY ("aid")
                  REFERENCES "maiid_artist" ("id")
     , CONSTRAINT "FK_maiid_skill_set_2" FOREIGN KEY ("tid")
                  REFERENCES "maiid_skill_set_type" ("id")
);

CREATE TABLE "maiid_artist_exp" (
       "id" SERIAL NOT NULL
     , "aid" INTEGER NOT NULL
     , "date" DATE NOT NULL
     , "position" VARCHAR NOT NULL
     , "job" VARCHAR NOT NULL
     , "company" VARCHAR NOT NULL
     , "employee" VARCHAR NOT NULL
     , "description" VARCHAR NOT NULL
     , PRIMARY KEY ("id")
     , CONSTRAINT "FK_maiid_artist_exp_1" FOREIGN KEY ("aid")
                  REFERENCES "maiid_artist" ("id")
);

CREATE TABLE "maiid_artist_award" (
       "id" INTEGER NOT NULL
     , "aid" INTEGER NOT NULL
     , "date" DATE NOT NULL
     , "grading" VARCHAR NOT NULL
     , "competition" VARCHAR NOT NULL
     , "organizer" VARCHAR NOT NULL
     , "description" VARCHAR NOT NULL
     , PRIMARY KEY ("id")
     , CONSTRAINT "FK_maiid_artist_award_1" FOREIGN KEY ("aid")
                  REFERENCES "maiid_artist" ("id")
);

CREATE TABLE "maiid_artist_details" (
       "id" SERIAL NOT NULL
     , "aid" INTEGER NOT NULL
     , "crew" VARCHAR NOT NULL
     , "height" VARCHAR NOT NULL
     , "weight" VARCHAR NOT NULL
     , "chest" VARCHAR
     , "waist" VARCHAR
     , "hip" VARCHAR
     , "dresssize" VARCHAR
     , "haircolor" VARCHAR
     , PRIMARY KEY ("id")
     , CONSTRAINT "FK_maiid_artist_details_1" FOREIGN KEY ("aid")
                  REFERENCES "maiid_artist" ("id")
);

CREATE TABLE "maiid_search_key" (
       "id" SERIAL NOT NULL
     , "tid" INTEGER NOT NULL
     , "key" VARCHAR NOT NULL
     , PRIMARY KEY ("id")
     , CONSTRAINT "FK_maiid_search_key_1" FOREIGN KEY ("tid")
                  REFERENCES "maiid_search_key_type" ("id")
);

CREATE TABLE "maiid_card_tag" (
       "id" SERIAL NOT NULL
     , "cid" INTEGER NOT NULL
     , "key" VARCHAR NOT NULL
     , PRIMARY KEY ("id")
     , CONSTRAINT "FK_maiid_card_tag_1" FOREIGN KEY ("cid")
                  REFERENCES "maiid_card" ("id")
);

CREATE TABLE "maiid_card_content_mapping" (
       "id" SERIAL NOT NULL
     , "cid" INTEGER NOT NULL
     , "blockid" INTEGER NOT NULL
     , "customerContent" CHAR(10) NOT NULL
     , PRIMARY KEY ("id")
     , CONSTRAINT "FK_maiid_card_content_mapping_2" FOREIGN KEY ("blockid")
                  REFERENCES "maiid_template_block" ("id")
     , CONSTRAINT "FK_maiid_card_content_mapping_1" FOREIGN KEY ("cid")
                  REFERENCES "maiid_card" ("id")
);

CREATE TABLE "maiid_favourite_card" (
       "id" SERIAL NOT NULL
     , "cid" INTEGER NOT NULL
     , "gid" INTEGER NOT NULL
     , PRIMARY KEY ("id")
     , CONSTRAINT "FK_TABLE_5_2" FOREIGN KEY ("cid")
                  REFERENCES "maiid_card" ("id")
     , CONSTRAINT "FK_maiid_favourite_card_2" FOREIGN KEY ("gid")
                  REFERENCES "maiid_favourite_card_group" ("id")
);

