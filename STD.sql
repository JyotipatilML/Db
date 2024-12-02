Create database jpatil
use jpatil




-- Step 1: Create the Student table
CREATE TABLE Student (
    Roll_no INT PRIMARY KEY,
    s_name VARCHAR(50),
    Class VARCHAR(20),
    address VARCHAR(100),
    department VARCHAR(50)
);

-- Step 2: Insert 5 records into the Student table
INSERT INTO Student (Roll_no, s_name, Class, address, department) VALUES
(1, 'Alice Green', '10A', '123 Maple Street', 'Science'),
(2, 'Bob White', '10B', '456 Elm Avenue', 'Mathematics'),
(3, 'Charlie Black', '9A', '789 Oak Lane', 'Arts'),
(4, 'Diana Brown', '10C', '321 Pine Court', 'Commerce'),
(5, 'Eve Smith', '9B', '654 Cedar Road', 'Science');

- Step 3: Display the table
SELECT * FROM Student;


##########################################################################################
Aggregate Functions

-- 1. Count the total number of students
SELECT COUNT(*) AS Total_Students FROM Student;

-- 2. Find the maximum Roll_no
SELECT MAX(Roll_no) AS Max_Roll_no FROM Student;

-- 3. Find the minimum Roll_no
SELECT MIN(Roll_no) AS Min_Roll_no FROM Student;

-- 4. Find the average Roll_no
SELECT AVG(Roll_no) AS Average_Roll_no FROM Student;

-- 5. Count students in each department
SELECT department, COUNT(*) AS Students_Per_Department
FROM Student
GROUP BY department;

-- 6. Find the maximum and minimum Roll_no grouped by department
SELECT department, MAX(Roll_no) AS Max_Roll_no, MIN(Roll_no) AS Min_Roll_no
FROM Student
GROUP BY department;

##########################################################################################

Perform the String functions.***************
SELECT s_name, UPPER(s_name) AS Uppercase_Name FROM Student;
SELECT s_name, LOWER(s_name) AS Lowercase_Name FROM Student;
SELECT s_name, LENGTH(s_name) AS Name_Length FROM Student;
SELECT s_name, Class, CONCAT(s_name, ' - ', Class) AS Name_Class_Concat FROM Student;
SELECT s_name, SUBSTRING(s_name, 1, 5) AS Name_Substring FROM Student;
SELECT s_name, REPLACE(s_name, 'Alice', 'Alicia') AS Name_Replaced FROM Student;
SELECT s_name, TRIM(s_name) AS Trimmed_Name FROM Student;
##########################################################################################



Perform the Math functions.***************
SELECT Roll_no, Roll_no + 10 AS Added_Value FROM Student;
SELECT Roll_no, Roll_no - 5 AS Subtracted_Value FROM Student;
SELECT Roll_no, Roll_no * 2 AS Multiplied_Value FROM Student;
SELECT Roll_no, POWER(Roll_no, 2) AS Powered_Value FROM Student;
SELECT Roll_no, Roll_no / 2 AS Divided_Value FROM Student;
SELECT Roll_no, MOD(Roll_no, 2) AS Modulus_Value FROM Student;
SELECT Roll_no, ROUND(Roll_no / 3.0, 2) AS Rounded_Value FROM Student;
SELECT Roll_no, SQRT(Roll_no) AS Square_Root FROM Student;
SELECT Roll_no, ABS(Roll_no - 3) AS Absolute_Value FROM Student;

##########################################################################################

*Perform the Date functions*.**********
ALTER TABLE Student ADD admission_date DATE;

-- Insert some sample dates for demonstration
UPDATE Student SET admission_date = 
    CASE 
        WHEN Roll_no = 1 THEN '2023-01-15'
        WHEN Roll_no = 2 THEN '2023-02-10'
        WHEN Roll_no = 3 THEN '2023-03-05'
        WHEN Roll_no = 4 THEN '2023-04-20'
        WHEN Roll_no = 5 THEN '2023-05-15'
    END;

-- View the updated table
SELECT * FROM Student;

SELECT 
    Roll_no, 
    admission_date, 
    YEAR(admission_date) AS Admission_Year, 
    MONTH(admission_date) AS Admission_Month, 
    DAY(admission_date) AS Admission_Day 
FROM Student;


SELECT 
    Roll_no, 
    admission_date, 
    DATE_ADD(admission_date, INTERVAL 30 DAY) AS Admission_Date_Plus_30_Days 
FROM Student;


SELECT 
    Roll_no, 
    admission_date, 
    DATEDIFF(CURDATE(), admission_date) AS Days_Since_Admission 
FROM Student;


SELECT 
    Roll_no, 
    admission_date, 
    DAYNAME(admission_date) AS Day_Name 
FROM Student;



SELECT 
    Roll_no, 
    admission_date, 
    DATE_FORMAT(admission_date, '%d-%m-%Y') AS Formatted_Date 
FROM Student;



SELECT 
    CURDATE() AS Current_Date, 
    CURTIME() AS Current_Time, 
    NOW() AS Current_DateTime;

