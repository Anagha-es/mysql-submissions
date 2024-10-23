create database querying_data
use querying_data
CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(100),
    Population INT,
    Area FLOAT
);

CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating FLOAT,
    Country_Id INT,
    Country_name VARCHAR(100),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);

INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331000000, 9833517),
(2, 'Canada', 37742154, 9984670),
(3, 'UK', 67886011, 243610),
(4, 'India', 1380004385, 3287263),
(5, 'Australia', 25499884, 7692024),
(6, 'Germany', 83783942, 357022),
(7, 'France', 65273511, 551695),
(8, 'Brazil', 212559417, 8515767),
(9, 'Japan', 126476461, 377975),
(10, 'South Africa', 59308690, 1219090);

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'James', 'don', 331000000, 4.7, 1, 'USA'),
(2, 'Jany', 'Smith', 37742154, 4.2, 2, 'Canada'),
(3, 'Alice', 'Johnson', 67886011, 4.8, 3, 'UK'),
(4, 'Bob', 'marly', 1380004385, 3.5, 4, 'India'),
(5, 'Charlie', 'Davis', 25499884, 4.9, 5, 'Australia'),
(6, 'Emily', 'Wilson', 83783942, 4.1, 6, 'Germany'),
(7, 'Michael', 'Taylor', 65273511, 5.0, 7, 'France'),
(8, 'Emma', 'Thomas', 212559417, 4.4, 8, 'Brazil'),
(9, 'Oliver', 'twist', 126476461, 4.0, 9, 'Japan'),
(10, 'Isabella', 'Clark', 59308690, 4.6, 10, 'South Africa');

SELECT DISTINCT Country_name FROM Persons;
SELECT Fname AS First_Name, Lname AS Last_Name FROM Persons;
SELECT * FROM Persons WHERE Rating > 4.0;
SELECT * FROM Country WHERE Population > 1000000;
SELECT * FROM Persons WHERE Country_name = 'USA' OR Rating > 4.5;
SELECT * FROM Persons WHERE Country_name IS NULL;
SELECT * FROM Persons WHERE Country_name IN ('USA', 'Canada', 'UK');
SELECT * FROM Persons WHERE Country_name NOT IN ('India', 'Australia');
SELECT * FROM Country WHERE Population BETWEEN 500000 AND 2000000;
SELECT * FROM Country WHERE Country_name NOT LIKE 'C%';