SELECT c.name AS name, l.language as language, l.percentage AS percentage 
FROM countries c JOIN languages l
ON c.id = l.country_id
WHERE l.language = "Slovene"
ORDER BY l.percentage DESC;

SELECT countries.name AS name, COUNT(cities.name) AS cities
FROM countries LEFT JOIN cities 
ON countries.id = cities.country_id
GROUP BY countries.name
ORDER BY cities DESC;

SELECT  name , population, country_id 
FROM cities c
WHERE c.population > 500000 AND c.country_id = ( SELECT id FROM countries WHERE countries.name = "Mexico" )
ORDER BY population DESC;

SELECT c.name AS name, l.language AS language, l.percentage AS percentage 
FROM countries c JOIN languages l
ON c.id = l.country_id
WHERE l.percentage > 89
ORDER BY l.percentage DESC;

SELECT name, surface_area, population 
FROM countries
WHERE surface_area < 501 AND population >100000;

SELECT name, government_form,capital, life_expectancy 
FROM countries
WHERE capital > 200 AND government_form ="Constitutional Monarchy" AND life_expectancy > 75;

SELECT countries.name AS country_name, cities.name AS city_name, cities.district, cities.population 
FROM countries JOIN cities 
ON countries.id = cities.country_id
WHERE cities.district = "Buenos Aires"
AND cities.population > 500000
ORDER BY cities.population DESC;

SELECT c.region, COUNT(c.name) AS countries
FROM countries c
GROUP BY c.region
ORDER BY countries DESC;