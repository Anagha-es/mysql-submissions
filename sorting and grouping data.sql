use d41
CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(100),
    Population INT,
    Area INT
);

CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating DECIMAL(3, 2),
    Country_id INT,
    Country_name VARCHAR(100)
);


INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'CountryA', 100000, 50000),
(2, 'CountryB', 200000, 70000),
(3, 'CountryC', 300000, 80000),
(4, 'CountryD', 400000, 60000),
(5, 'CountryE', 500000, 90000),
(6, 'CountryF', 600000, 95000),
(7, 'CountryG', 700000, 85000),
(8, 'CountryH', 800000, 75000),
(9, 'CountryI', 900000, 100000),
(10, 'CountryJ', 1000000, 110000);


INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_id, Country_name) VALUES
(1, 'John', 'Doe', 1000, 4.5, 1, 'CountryA'),
(2, 'Jane', 'Smith', 2000, 3.8, 2, 'CountryB'),
(3, 'Alice', NULL, 1500, 4.0, 3, 'CountryC'),
(4, 'Bob', 'Johnson', 2500, 4.1, 4, 'CountryD'),
(5, 'Charlie', NULL, 3000, 3.5, 5, 'CountryE'),
(6, 'David', 'Williams', 1800, 4.9, 1, 'CountryA'),
(7, 'Emma', 'Brown', 2200, 2.8, 2, 'CountryB'),
(8, 'Frank', 'Jones', 1600, 3.6, 3, 'CountryC'),
(9, 'Grace', 'Davis', 2100, 4.3, 4, 'CountryD'),
(10, 'Hannah', 'Miller', 1900, 4.7, 5, 'CountryE');


SELECT LEFT(Country_name, 3) AS Short_Name FROM Country;

SELECT CONCAT(Fname, ' ', Lname) AS Full_Name FROM Persons;

SELECT COUNT(DISTINCT Country_name) AS Unique_Countries FROM Persons;

SELECT MAX(Population) AS Max_Population FROM Country;

SELECT MIN(Population) AS Min_Population FROM Persons;

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_id, Country_name) VALUES
(11, 'john', NULL, 1700, 3.2, 1, 'CountryA'),
(12, 'mathew', NULL, 2100, 4.4, 2, 'CountryB');

SELECT COUNT(Lname) AS Count_Lname FROM Persons;

SELECT COUNT(*) AS Total_Rows FROM Persons;

SELECT Population FROM Country LIMIT 3;

SELECT * FROM Country ORDER BY RAND() LIMIT 3;

SELECT * FROM Persons ORDER BY Rating DESC;

SELECT Country_name, SUM(Population) AS Total_Population
FROM Persons
GROUP BY Country_name;

SELECT Country_name, SUM(Population) AS Total_Population
FROM Persons
GROUP BY Country_name
HAVING Total_Population > 50000;

SELECT Country_name, COUNT(*) AS Total_Persons, AVG(Rating) AS Average_Rating
FROM Persons
GROUP BY Country_name
HAVING COUNT(*) > 2
ORDER BY Average_Rating ASC;
