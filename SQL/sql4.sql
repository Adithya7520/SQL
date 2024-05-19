-- Query the total population of all cities in CITY where District is California.

SELECT sum(POPULATION) FROM CITY WHERE DISTRICT = "California";


-- Query the average population of all cities in CITY where District is California.

select avg(population) from CITY WHERE DISTRICT = 'California';

-- Query the average population for all cities in CITY, rounded down to the nearest integer.


select ROUND(avg(POPULATION)) FROM CITY WHERE 1

-- Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
SELECT SUM(POPULATION) FROM CITY WHERE COUNTRYCODE = 'JPN'

-- Query the difference between the maximum and minimum populations in CITY.
SELECT MAX(POPULATION)-MIN(POPULATION) AS RESULT FROM CITY WHERE 1