CREATE DATABASE managers_details;
use managers_details;
CREATE TABLE Managers(
manager_id int primary key,
First_name varchar(50),
last_name varchar(35),
DOB date ,
Age int check (age>=18),
last_update timestamp default current_timestamp,
gender char(1) check(gender in ('M','F','O')),
Department varchar(50) not null,
salary decimal (10,2) not null );
INSERT INTO Managers (Manager_Id, First_name, Last_Name, DOB, Age, Last_update, Gender, Department, Salary)
VALUES
(1, 'John', 'Doe', '1980-05-15', 44, CURRENT_TIMESTAMP, 'M', 'IT', 30000),
(2, 'Aaliya', 'Khan', '1990-07-20', 34, CURRENT_TIMESTAMP, 'F', 'HR', 28000),
(3, 'Robert', 'Smith', '1975-03-10', 49, CURRENT_TIMESTAMP, 'M', 'Finance', 35000),
(4, 'Emily', 'Johnson', '1985-11-25', 38, CURRENT_TIMESTAMP, 'F', 'IT', 26000),
(5, 'Michael', 'Brown', '1988-01-30', 36, CURRENT_TIMESTAMP, 'M', 'Marketing', 24000),
(6, 'Sarah', 'Davis', '1995-04-12', 29, CURRENT_TIMESTAMP, 'F', 'Finance', 22000),
(7, 'David', 'Wilson', '1982-09-22', 41, CURRENT_TIMESTAMP, 'M', 'IT', 31000),
(8, 'Olivia', 'Martinez', '1993-12-05', 30, CURRENT_TIMESTAMP, 'F', 'HR', 23000),
(9, 'Daniel', 'Garcia', '1979-06-17', 45, CURRENT_TIMESTAMP, 'M', 'Marketing', 20000),
(10, 'Sophia', 'Lopez', '1984-10-08', 39, CURRENT_TIMESTAMP, 'F', 'IT', 27000);
SELECT First_name, Last_Name, DOB
FROM Managers
WHERE Manager_Id = 1;
SELECT First_name, Last_Name, Salary * 12 AS Annual_Income
FROM Managers;
SELECT *
FROM Managers
WHERE First_name <> 'Aaliya';
SELECT * 
FROM Managers 
WHERE Department = 'IT' AND Salary > 25000;
SELECT * 
FROM Managers 
WHERE Salary BETWEEN 10000 AND 35000;