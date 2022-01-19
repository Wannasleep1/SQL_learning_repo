-- Создаём таблицу жанров
CREATE TABLE IF NOT EXISTS genres (
    ID serial PRIMARY KEY,
    "name" varchar(255) NOT NULL UNIQUE
);

DROP TABLE IF EXISTS genres CASCADE;
 

-- Создаём таблицу исполнителей
CREATE TABLE IF NOT EXISTS musicians (
    ID serial PRIMARY KEY,
    "name" varchar(255) NOT NULL UNIQUE,
    genre_id integer REFERENCES genres(ID)
);

DROP TABLE IF EXISTS musicians CASCADE;


-- Создаём таблицу альбомов
CREATE TABLE IF NOT EXISTS albums (
    ID serial PRIMARY KEY,
    "name" varchar(255) NOT NULL UNIQUE,
    release_year integer NOT NULL
        CHECK (release_year >= 0 AND release_year <= EXTRACT(YEAR FROM current_date)::integer),
    musician_id integer REFERENCES musicians(ID)
);

DROP TABLE IF EXISTS albums CASCADE;


-- Создаём таблицу треков
CREATE TABLE IF NOT EXISTS tracks (
    ID serial PRIMARY KEY,
    "name" varchar(255) NOT NULL UNIQUE,
    album_id integer REFERENCES albums(ID),
    duration_sec integer NOT NULL 
)

DROP TABLE IF EXISTS tracks CASCADE;