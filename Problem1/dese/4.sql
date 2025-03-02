SELECT  city, COUNT("city") AS "Cities With Most Schools" FROM "schools" GROUP BY "city" ORDER BY "Cities With Most Schools" DESC, "city"  LIMIT 10 ;
