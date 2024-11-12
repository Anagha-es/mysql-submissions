create database sp
use sp;
create table worker
(worker_id int primary key,
firstname char(25),
lastname char(25),
salary int(15),
joiningdate datetime,
department char(25));


DELIMITER //

CREATE PROCEDURE AddWorker(
    IN p_WorkerId INT,
    IN p_FirstName CHAR(25),
    IN p_LastName CHAR(25),
    IN p_Salary INT,
    IN p_JoiningDate DATETIME,
    IN p_Department CHAR(25)
)
BEGIN
    INSERT INTO Worker (Worker_Id, FirstName, LastName, Salary, JoiningDate, Department)
    VALUES (p_WorkerId, p_FirstName, p_LastName, p_Salary, p_JoiningDate, p_Department);
END //

DELIMITER ;

call addworker(101,'john','doe',50000,'11-12-24','hr');

DELIMITER $$

CREATE PROCEDURE getsalarybyworkerid(
IN p_worker_id int,
OUT p_salary int)
begin
 select salary into p_salary
 from worker
 where worker_id = p_worker_id;
 
 END$$
 
 DELIMITER ; 
 
 CALL getsalarybyworkerid(101,@salary);
 select @salary as workersalary;


DELIMITER $$
CREATE PROCEDURE updateworkerdepartment
( IN p_worker_id int,
IN p_department char(25))
begin 
update worker 
set department = p_department
where worker_id = p_worker_id;
END $$

DELIMITER ;

CALL updateworkerdepartment(101,'finance');

DELIMITER $$ 

CREATE PROCEDURE getworkercountbydepartment
( IN p_department char(25),
OUT p_workercount int )
begin
select count(*) into p_workercount
from worker
where department = p_department;
END$$

DELIMITER ;

CALL getworkercountbydepartment ('HR',@workercount);
select @workercount as workercount;

DELIMITER $$

CREATE PROCEDURE getaveragesalarybydepartment 
(IN p_department char(25),
OUT p_avgsalary decimal(10,2))
begin
 select avg(salary) into p_avgsalary
 from worker 
 where department = p_department;
 END $$ 
 
 DELIMITER ;
 
 
CALL getaveragesalarybydepartment( 'finance', @avgsalary );
select @avgsalary as averagesalary;