SELECT "year", ROUND(AVG("salary")) AS "Average Salary Per Year" FROM "salaries" GROUP BY "year" ORDER BY "year" DESC;
