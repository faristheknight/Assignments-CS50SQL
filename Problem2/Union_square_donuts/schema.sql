CREATE TABLE IF NOT EXISTS "Ingredients" (
    "id" INTEGER,
    "name" TEXT,
    "price" REAL,
    "quantity" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS"Donuts" (
    "id" INTEGER,
    "name" TEXT,
    "gluten_free" INTEGER NOT NULL CHECK ("gluten_free" IN (0,1)),
    "price" REAL,
    PRIMARY KEY("id")
);


CREATE TABLE IF NOT EXISTS "Orders" (
    "order_number" INTEGER,
    "donut_id" INTEGER,
    "quantity" INTEGER,
    FOREIGN KEY("donut_id")REFERENCES "Donuts(id)"
);

CREATE TABLE IF NOT EXISTS "Customers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT,
    "order_number" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS "Donut_Ingredients" (
    "ingredient_id" INTEGER,
    "donut_id" INTEGER,
    FOREIGN KEY("ingredient_id") REFERENCES "Ingredients(id)",
    FOREIGN KEY("donut_id") REFERENCES "Donuts(id)",
    PRIMARY KEY("ingredient_id", "donut_id")
);
