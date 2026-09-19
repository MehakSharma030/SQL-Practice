
-- SELF JOIN
-- A SELF JOIN is used to join a table with itself.
-- Here, employees are related to their managers.


-- Create Employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT,
    salary INT
);


-- Insert data
INSERT INTO employees (emp_id, name, manager_id, salary) 
VALUES
(101, 'Mehak', NULL, 80000),
(102, 'Teena', 101, 60000),
(103, 'Rahul', 101, 55000),
(104, 'Aman', 102, 45000);


-- SELF JOIN
SELECT
    employee.name AS employee_name,
    manager.name AS manager_name
FROM employees AS employee
LEFT JOIN employees AS manager
ON employee.manager_id = manager.emp_id;





