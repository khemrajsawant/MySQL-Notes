-- User Defined Functions
DROP DATABASE IF EXISTS test_func;
CREATE DATABASE test_func;
USE test_func;
-- 1. Scalar Functions

-- Create a table 
CREATE TABLE Employee
(
 EmpID INT PRIMARY KEY,
 FirstName VARCHAR(50) NULL,
 LastName VARCHAR(50) NULL,
 Salary INT NULL,
 Address VARCHAR(100) NULL
);
-- Insert Data
INSERT INTO Employee(EmpID,FirstName,LastName,Salary,Address) VALUES(1,'Mohan','Chauahn',22000,'Delhi');
INSERT INTO Employee(EmpID,FirstName,LastName,Salary,Address) VALUES(2,'Asif','Khan',15000,'Delhi');
INSERT INTO Employee(EmpID,FirstName,LastName,Salary,Address) VALUES(3,'Bhuvnesh','Shakya',19000,'Noida');
INSERT INTO Employee(EmpID,FirstName,LastName,Salary,Address) VALUES(4,'Deepak','Kumar',19000,'Noida');
-- See created table
DELIMITER //

Create function fnGetEmpFullName
(
 FirstName varchar(50),
 LastName varchar(50)
)
returns varchar(101) DETERMINISTIC

Begin return (Select @FirstName + ' '+ @LastName);
end 
//

DELIMITER ;

Select fnGetEmpFullName(FirstName,LastName) as Name, Salary from Employee 



-- 2. Scalar Functions