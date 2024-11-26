use d41
create table teachers 
(id int primary key,
Name varchar(100),
subject varchar (100),
experience int,
salary decimal (10,2)); 

INSERT INTO teachers (id,name,subject,experience,salary) 
values 
(1,'john doe','math',5,50000),
(2,'jane smith','science',12,55000),
(3,'alice johnson','history',8,45000),
(4,'bob brown','english',15,60000),
(5,'charlie davis','geography',3,42000),
(6,'diana chaplin','physics',20,75000),
(7,'edward wilson','biology',7,48000),
(8,'fiona clark','chemistry',2,43000);

CREATE TABLE teacher_log (
    teacher_id INT,
    action VARCHAR(50),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP);


DELIMITER //

CREATE TRIGGER before_insert_teacher
BEFORE INSERT ON teachers
FOR EACH ROW
BEGIN
    IF NEW.salary < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Salary cannot be negative';
    END IF;
END //

DELIMITER ;

DELIMITER //

CREATE TRIGGER after_insert_teacher
AFTER INSERT ON teachers
FOR EACH ROW
BEGIN
    INSERT INTO teacher_log (teacher_id, action, timestamp)
    VALUES (NEW.id, 'INSERT', CURRENT_TIMESTAMP);
END //

DELIMITER ;

DELIMITER //

CREATE TRIGGER before_delete_teacher
BEFORE DELETE ON teachers
FOR EACH ROW
BEGIN
    IF OLD.experience > 10 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot delete teacher with more than 10 years of experience';
    END IF;
END //

DELIMITER ;


DELIMITER //

CREATE TRIGGER after_delete_teacher
AFTER DELETE ON teachers
FOR EACH ROW
BEGIN
    INSERT INTO teacher_log (teacher_id, action, timestamp)
    VALUES (OLD.id, 'DELETE', CURRENT_TIMESTAMP);
END //

DELIMITER ;