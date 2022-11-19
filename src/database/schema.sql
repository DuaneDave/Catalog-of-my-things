CREATE DATABASE catalog;

CREATE TABLE item (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  genre_id INT,
  author_id INT,
  label_id INT,
  publish_date DATE,
  archived BOOLEAN,
  FOREIGN KEY (genre_id) REFERENCES genres (id),
);

CREATE TABLE labels (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  title VARCHAR(100),
  color VARCHAR(100),
);

CREATE TABLE books (
  id  INT,
  title VARCHAR(100),
  publisher VARCHAR(100),
  cover_state VARCHAR(100),
  FOREIGN KEY(id) REFERENCES item(id)
);

CREATE TABLE genres (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(100),
);

CREATE TABLE music (
  id  INT,
  title VARCHAR(100),
  on_spotify BOOLEAN,
  FOREIGN KEY(id) REFERENCES item(id)
);

CREATE TABLE authors(
    id INT GENERATED ALWAYS AS IDENTITY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    PRIMARY KEY(id)
);

CREATE TABLE games(
    id INT GENERATED ALWAYS AS IDENTITY,
    publish_date DATE NOT NULL,
    archived BOOLEAN,
    multiplayer BOOLEAN,
    last_played_at DATE NOT NULL,
    games_id INT,
    PRIMARY KEY(id),
    CONSTRAINT fk_authors FOREIGN KEY(games_id) REFERENCES authors(id)
);
