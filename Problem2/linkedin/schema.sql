CREATE TABLE IF NOT EXISTS "Users" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT,
    "username" TEXT,
    "password" TEXT,
    "college_id" INTEGER,
    "company_id" INTEGER,
     PRIMARY KEY("id"),
     FOREIGN KEY(college_id) REFERENCES Colleges(id),
     FOREIGN KEY(company_id) REFERENCES Companies(id)
);

CREATE TABLE IF NOT EXISTS "Colleges" (
    "id" INTEGER,
    "name" TEXT,
    "type" TEXT,
    "city" TEXT,
    "state" TEXT,
    "country" TEXT,
    "year" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS "Companies" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "industry" TEXT,
    "city" TEXT,
    "state" TEXT,
    "country" TEXT,
     PRIMARY KEY("id")
);

