-- Создаём таблицу исполнителей
CREATE TABLE musicians (
    ID serial PRIMARY KEY,
    "name" varchar(255) NOT NULL UNIQUE
);

DROP TABLE musicians CASCADE;


-- Создаём таблицу жанров
CREATE TABLE genres (
    ID serial PRIMARY KEY,
    "name" varchar(255) NOT NULL UNIQUE
);

DROP TABLE genres CASCADE;


-- Создаём таблицу альбомов
CREATE TABLE albums (
    ID serial PRIMARY KEY,
    "name" varchar(255) NOT NULL,
    release_year integer
        CHECK (release_year >= 0 AND release_year <= EXTRACT(YEAR FROM current_date)::integer)
);

DROP TABLE albums CASCADE;


-- Создаём таблицу треков
CREATE TABLE tracks (
    ID serial PRIMARY KEY,
    "name" varchar(255) NOT NULL,
    album_id integer REFERENCES albums(ID),
    duration_sec integer CHECK (duration_sec > 0)
);

DROP TABLE tracks CASCADE;


-- Создаём таблицу сборников
CREATE TABLE collections (
    ID serial PRIMARY KEY,
    "name" varchar(255) NOT NULL,
    release_year integer
        CHECK (release_year >= 0 AND release_year <= EXTRACT(YEAR FROM current_date)::integer)
);

DROP TABLE collecions CASCADE;


-- Создаём таблицу связи исполнителей и жанров
CREATE TABLE musician_genre (
    musician_id integer REFERENCES musicians(ID),
    genre_id integer REFERENCES genres(ID),
    PRIMARY KEY (musician_id, genre_id)
);

DROP TABLE musician_genre CASCADE;


-- Создаём таблицу связи исполнителей с альбомами
CREATE TABLE musician_album (
    musician_id integer REFERENCES musicians(ID),
    album_id integer REFERENCES albums(ID),
    PRIMARY KEY (musician_id, album_id)
);

DROP TABLE musician_album CASCADE;


-- Создаём таблицу связи трека и сборника
CREATE TABLE track_collection (
    track_id integer REFERENCES tracks(ID),
    collection_id integer REFERENCES collections(ID),
    PRIMARY KEY (track_id, collection_id)
);

DROP TABLE track_collection CASCADE;