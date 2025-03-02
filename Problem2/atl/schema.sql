CREATE TABLE IF NOT EXISTS "Passengers" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "first_name" TEXT,
    "last_name" TEXT,
    "age" INTEGER,
    "flight_id" INTEGER,
    FOREIGN KEY(flight_id) REFERENCES Flights(id)
);

CREATE TABLE IF NOT EXISTS "Check_ins" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "passenger_id" INTEGER,
    "check_in_time" TIMESTAMP,
    "flight_id" INTEGER
);

CREATE TABLE IF NOT EXISTS "Airlines" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "name" TEXT,
    "terminal" TEXT
);

CREATE TABLE IF NOT EXISTS "Flights" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "flight_number" INTEGER,
    "name" TEXT,
    "airline_id" INTEGER,
    "dep_airport" TEXT,
    "arrival_airport" TEXT,
    "dep_time" TIMESTAMP,
    "arrival_time" TIMESTAMP,
    FOREIGN KEY(airline_id) REFERENCES Airlines(id)
);
