SELECT "city", COUNT("city") AS "Schools in the City" FROM "schools" GROUP BY "city" HAVING COUNT("city") <= 3  ORDER BY "Schools in the City" DESC, "city";
