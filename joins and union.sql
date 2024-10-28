use d41
SELECT *
FROM Country AS c
INNER JOIN Persons AS p ON c.Id = p.Country_id;

SELECT *
FROM Country AS c
LEFT JOIN Persons AS p ON c.Id = p.Country_id;

SELECT *
FROM Country AS c
RIGHT JOIN Persons AS p ON c.Id = p.Country_id;

SELECT DISTINCT Country_name
FROM Country
UNION
SELECT DISTINCT Country_name
FROM Persons;

SELECT Country_name
FROM Country
UNION ALL
SELECT Country_name
FROM Persons;

SELECT Id, Fname, Lname, Population, ROUND(Rating) AS RoundedRating, Country_id, Country_name
FROM Persons;
