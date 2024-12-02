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
