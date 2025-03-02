DROP TABLE IF EXISTS meteorites_temp;

DROP TABLE IF EXISTS meteorites;

CREATE TABLE IF NOT EXISTS meteorites_temp (
    "name" TEXT,
    "id" INTEGER,
    "nametype" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" REAL,
    "long" REAL
);

.import --csv meteorites.csv meteorites_temp

CREATE TABLE IF NOT EXISTS meteorites (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" REAL,
    "long" REAL
);

UPDATE meteorites_temp SET mass = NULL WHERE mass = "";

UPDATE meteorites_temp SET year = NULL WHERE year = "";

UPDATE meteorites_temp SET lat = NULL WHERE lat = "";

UPDATE meteorites_temp SET long = NULL WHERE long = "";

DELETE FROM meteorites_temp WHERE nametype = "Relict";

INSERT INTO meteorites (name, class, mass, discovery, year, lat, long) SELECT trim(name), trim(class), ROUND(mass, 2) AS mass, trim(discovery), CAST(year AS INTEGER), ROUND(lat, 2) AS lat, ROUND(long, 2) AS long FROM meteorites_temp ORDER BY year, name;
