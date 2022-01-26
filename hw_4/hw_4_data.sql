ALTER SEQUENCE musicians_id_seq RESTART WITH 1;
ALTER SEQUENCE genres_id_seq RESTART WITH 1;
ALTER SEQUENCE albums_id_seq RESTART WITH 1;
ALTER SEQUENCE collections_id_seq RESTART WITH 1;


-- Заполняем таблицу исполнителей
INSERT INTO musicians ("name")
VALUES ('Three Days Grace'),
       ('Thousand Foot Krutch'),
       ('Sum 41'),
       ('Hollywood Undead'),
       ('Placebo'),
       ('Amaranthe'),
       ('Linkin Park'),
       ('Skillet'),
       ('Alan Walker'),
       ('Lana Del Rey'),
       ('Maroon 5'),
       ('Imagine Dragons');

   
DELETE FROM musicians;


-- Заполняем таблицу жанров
INSERT INTO genres ("name")
VALUES ('indi pop'),
       ('alternative rock'),
       ('power metal'),
       ('nu metal'),
       ('punk rock'),
       ('rap rock'),
       ('electronic rock'),
       ('electro house'),
       ('christian rock'),
       ('pop rock');


DELETE FROM genres;


-- Запоняем таблицу альбомов
INSERT INTO albums ("name", release_year)
VALUES ('One-X', 2006),
       ('Human', 2015),
       ('The End Is Where We Begin', 2012),
       ('Oxygen: Inhale', 2014),
       ('Does This Look Infected', 2002),
       ('13 Voices', 2016),
       ('Swan Songs', 2008),
       ('Five', 2017),
       ('A Place For Us To Dream', 2016),
       ('Try Better Next Time', 2022),
       ('MASSIVE ADDICTIVE', 2014),
       ('MAXIMALISM', 2016),
       ('Manifest', 2020),
       ('Meteora', 2003),
       ('Hybrid Theory', 2000),
       ('One More Light', 2017),
       ('Vital Signs', 2013),
       ('Unleashed Beyond', 2017),
       ('Different World', 2018),
       ('World Of Walker', 2021),
       ('Born To Die', 2012),
       ('Singles', 2015),
       ('Evolve', 2017),
       ('Origins', 2018),
       ('Night Visions', 2013);

       
DELETE FROM albums;


-- Заполняем таблицу треков
INSERT INTO tracks ("name", album_id, duration_sec)
VALUES ('Time of Dying', 1, 186),
       ('Pain', 1, 202),
       ('Never Too Late', 1, 209),
       ('Animal I Have Become', 1, 231),
       ('I Am Machine', 2, 200),
       ('Fallen Angel', 2, 186),
       ('War of Change', 3, 231),
       ('Courtesy Call', 3, 236),
       ('Be Somebody', 3, 222),
       ('Oxygen', 4, 232),
       ('Untraveled Road', 4, 236),
       ('Still Waiting', 5, 159),
       ('The Hell Song', 5, 198),
       ('War', 6, 209),
       ('The Fall and The Rise', 6, 189),
       ('Breaking The Chain', 6, 243),
       ('Fake My Own Death', 6, 194),
       ('Twisted By Design', 6, 329),
       ('Undead', 7, 265),
       ('Everywhere I Go', 7, 210),
       ('No. 5', 7, 185),
       ('California Dreaming', 8, 234),
       ('Whatever It Takes', 8, 187),
       ('Riot', 8, 227),
       ('Meds', 9, 174),
       ('Every You, Every Me', 9, 214),
       ('Sorrounded By Spies', 10, 314),
       ('Beautiful James', 10, 248),
       ('Digital World', 11, 197),
       ('Drop Dead Cynical', 11, 197),
       ('Unreal', 11, 216),
       ('Exhale', 11, 223),
       ('True', 11, 211),
       ('Maximize', 12, 189),
       ('Boomerang', 12, 202),
       ('Archangel', 13, 203),
       ('The Game', 13, 181),
       ('Numb', 14, 187),
       ('Faint', 14, 164),
       ('Breaking The Habit', 14, 196),
       ('In The End', 15, 216),
       ('Crawling', 15, 208),
       ('My December', 15, 260),
       ('One More Light', 16, 255),
       ('Talking To Myself', 16, 231),
       ('Hero', 17, 186),
       ('Comatose', 17, 230),
       ('Awake and Alive', 17, 209),
       ('Monster', 17, 177),
       ('Feel Invincible', 18, 229),
       ('The Resistance', 18, 232),
       ('Faded', 19, 212),
       ('Alone', 19, 160),
       ('Sing Me to Sleep', 19, 187),
       ('Darkside', 19, 211),
       ('Diamond Heart', 19, 240),
       ('Sorry', 20, 165),
       ('Paradise', 20, 183),
       ('Born To Die', 21, 286),
       ('Summertime Sadness', 21, 263),
       ('This Love', 22, 205),
       ('Animals', 22, 230),
       ('Wake Up Call', 22, 196),
       ('Believer', 23, 204),
       ('Thunder', 23, 187),
       ('Natural', 24, 189),
       ('Bad Liar', 24, 260),
       ('Radioactive', 25, 188),
       ('Demons', 25, 177);


DELETE FROM tracks;


-- Заполняем таблицу сборников
INSERT INTO collections ("name", release_year)
VALUES ('For Chilling 1', 2020),
       ('For Chilling 2', 2021),
       ('Boss of The Gym', 2019),
       ('Alternative Bands 1', 2020),
       ('Alternative Bands 2', 2019),
       ('Imagine Dragons Mix', 2019),
       ('Pop Rock Hits', 2022),
       ('Summer Mix', 2021);


DELETE FROM collections;


-- Заполняем таблицу треков-сборников
INSERT INTO track_collection 
VALUES (3, 1),
       (11, 1),
       (20, 1),
       (41, 1),
       (55, 1),
       (56, 1),
       (58, 1),
       (59, 1),
       (61, 1),
       (57, 2),
       (62, 2),
       (63, 2),
       (64, 2),
       (65, 2),
       (67, 2),
       (68, 2),
       (69, 2),
       (46, 3),
       (48, 3),
       (49, 3),
       (50, 3),
       (1, 3),
       (2, 3),
       (4, 3),
       (5, 3),
       (63, 3),
       (68, 3),
       (66, 3),
       (5, 4),
       (1, 4),
       (3, 4),
       (8, 4),
       (7, 4),
       (9, 4),
       (11, 4),
       (41, 4),
       (38, 5),
       (40, 5),
       (42, 5),
       (39, 5),
       (6, 5),
       (64, 6),
       (65, 6),
       (66, 6),
       (67, 6),
       (68, 6),
       (69, 6),
       (63, 7),
       (67, 7),
       (68, 7),
       (69, 7),
       (65, 7),
       (61, 7),
       (62, 7),
       (68, 8),
       (67, 8),
       (65, 8),
       (62, 8),
       (58, 8),
       (60, 8),
       (59, 8),
       (56, 8),
       (52, 8),
       (53, 8);


DELETE FROM collections;


-- Заполняем таблицу исполнителей-альбомов
INSERT INTO musician_album
VALUES (1, 1),
       (1, 2),
       (2, 3),
       (2, 4),
       (3, 5),
       (3, 6),
       (4, 7),
       (4, 8),
       (5, 9),
       (5, 10),
       (6, 11),
       (6, 12),
       (6, 13),
       (7, 14),
       (7, 15),
       (7, 16),
       (8, 17),
       (8, 18),
       (9, 19),
       (9, 20),
       (10, 21),
       (11, 22),
       (12, 23),
       (12, 24),
       (12, 25);

   
DELETE FROM musician_album;


-- Заполняем таблицу исполнителей-жанров
INSERT INTO musician_genre 
VALUES (1, 2),
       (1, 4),
       (2, 2),
       (2, 4),
       (2, 9),
       (2, 6),
       (3, 5),
       (3, 2),
       (3, 4),
       (4, 6),
       (4, 2),
       (4, 7),
       (4, 4),
       (5, 2),
       (5, 7),
       (6, 3),
       (7, 6),
       (7, 2),
       (7, 10),
       (7, 4),
       (7, 7),
       (8, 2),
       (8, 9),
       (8, 4),
       (9, 8),
       (10, 1),
       (11, 10),
       (11, 7),
       (12, 7),
       (12, 2),
       (12, 10);

       
DELETE FROM musician_genre CASCADE;