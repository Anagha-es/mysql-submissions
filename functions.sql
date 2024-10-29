use d41;
ALTER TABLE Persons ADD COLUMN DOB DATE;
delimiter $$
create function Calculateage(dob date)
returns int
deterministic begin
return year (curdate()) - year (dob) ;
end $$
delimiter ;
SELECT Fname, Lname, CalculateAge(DOB) AS Age FROM Persons;
SELECT Country_name, CHAR_LENGTH(Country_name) AS Country_Name_Length FROM Country;
SELECT Country_name, LEFT(Country_name, 3) AS Country_Initials FROM Country;
SELECT Country_name, UPPER(Country_name) AS Country_Upper, LOWER(Country_name) AS Country_Lower FROM Country;
