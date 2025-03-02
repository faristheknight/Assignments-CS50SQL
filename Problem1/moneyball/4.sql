SELECT "first_name", "last_name", "salary" FROM "players" JOIN "salaries" ON "salaries"."player_id" = "players"."id" ORDER BY "salary", "first_name", "last_name", "player_id"  LIMI
T 50;
