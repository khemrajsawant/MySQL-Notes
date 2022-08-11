DROP DATABASE IF EXISTS test_func;
CREATE DATABASE test_func;
USE test_func;
-- 1. Scalar Functions

-- Create a table 
CREATE TABLE Employee
(
 EmpID INT PRIMARY KEY,
 FirstName VARCHAR(100) NULL,
 LastName VARCHAR(100) NULL,
 Salary INT NULL,
 Address VARCHAR(100) NULL
);
-- Insert Data
INSERT INTO Employee(EmpID,FirstName,LastName,Salary,Address) VALUES(1,"Mohan",'Chauahn',20000,'Delhi');
INSERT INTO Employee(EmpID,FirstName,LastName,Salary,Address) VALUES(2,'Asif','Khan',15000,'Delhi');
INSERT INTO Employee(EmpID,FirstName,LastName,Salary,Address) VALUES(3,'Bhuvnesh','Shakya',56000,'Noida');
INSERT INTO Employee(EmpID,FirstName,LastName,Salary,Address) VALUES(4,'Deepak','Kumar',19000,'Noida');
-- See created table
DELIMITER //

CREATE FUNCTION fnGetEmpFullName(
 firstname VARCHAR(50),
  lastname VARCHAR(50)
)
returns VARCHAR(101)  DETERMINISTIC
 return CONCAT_WS(" ", firstname, lastname)
//

DELIMITER ;

Select fnGetEmpFullName(FirstName,LastName) as Name, Salary from Employee;


