create database school
use school
create table Student
(Roll_no int,
_Name varchar (15),
Marks int,
grade char(1))
ALTER TABLE Student ADD COLUMN (CONTACT varchar(10))
ALTER TABLE Student DROP COLUMN grade;
RENAME TABLE Student to CLASSTEN;
TRUNCATE TABLE CLASSTEN;
DROP TABLE CLASSTEN;