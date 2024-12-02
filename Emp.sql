Create database jpatil
use jpatil



CREATE TABLE Employee (   
    emp_no INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_address VARCHAR(100),
    salary DECIMAL(10, 2),
    dept_id INT
);


INSERT INTO Employee (emp_no, emp_name, emp_address, salary, dept_id) VALUES
(101, 'John Doe', '123 Elm Street', 55000.00, 1),
(102, 'Jane Smith', '456 Oak Avenue', 62000.00, 2),
(103, 'Mike Johnson', '789 Pine Road', 48000.00, 1),
(104, 'Emily Davis', '321 Birch Lane', 70000.00, 3),
(105, 'Sarah Brown', '654 Cedar Court', 53000.00, 2);


SELECT * FROM Employee;


##########################################################################################
Aggregate Functions

-- Total Salary
SELECT SUM(salary) AS TotalSalary FROM Employee;

-- Average Salary
SELECT AVG(salary) AS AverageSalary FROM Employee;

-- Count of Employees
SELECT COUNT(emp_no) AS EmployeeCount FROM Employee;

-- Maximum Salary
SELECT MAX(salary) AS MaxSalary FROM Employee;

-- Minimum Salary
SELECT MIN(salary) AS MinSalary FROM Employee;

##########################################################################################
String Functions

-- Concatenate employee name and address
SELECT CONCAT(emp_name, ' - ', emp_address) AS NameAndAddress FROM Employee;

-- Convert employee name to uppercase
SELECT UPPER(emp_name) AS UpperCaseName FROM Employee;

-- Convert employee name to lowercase
SELECT LOWER(emp_name) AS LowerCaseName FROM Employee;

-- Get the length of employee names
SELECT LENGTH(emp_name) AS NameLength FROM Employee;

-- Extract the first three characters of employee names
SELECT SUBSTRING(emp_name, 1, 3) AS NamePrefix FROM Employee;

##########################################################################################
Math Functions

-- Absolute value of salary difference from 70000
SELECT emp_name, ABS(salary - 70000) AS AbsDifference FROM Employee;

-- Round salary to the nearest integer
SELECT emp_name, ROUND(salary) AS RoundedSalary FROM Employee;

-- Ceiling of salary
SELECT emp_name, CEIL(salary) AS CeilSalary FROM Employee;

-- Floor of salary
SELECT emp_name, FLOOR(salary) AS FloorSalary FROM Employee;

-- Square of salary
SELECT emp_name, POWER(salary, 2) AS SalarySquare FROM Employee;

##########################################################################################
Date Functions

-- Current date
SELECT CURDATE() AS CurrentDate;

-- Current date and time
SELECT NOW() AS CurrentDateTime;

-- Extract year from current date
SELECT YEAR(CURDATE()) AS CurrentYear;

-- Extract month from current date
SELECT MONTH(CURDATE()) AS CurrentMonth;

-- Calculate days between two dates
SELECT DATEDIFF('2024-12-31', CURDATE()) AS DaysUntilYearEnd;
