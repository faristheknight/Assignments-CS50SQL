SELECT ROUND(AVG("0m"), 2) AS "Average Equator Ocean Surface Temperature" from "normals"  WHERE "latitude" BETWEEN "-0.5" AND "0.5" AND "longitude" BETWEEN "-0.5" AND "0.5";
