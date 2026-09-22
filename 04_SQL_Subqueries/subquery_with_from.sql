
-- SUBQUERY WITH FROM
-- A subquery can be used inside the FROM clause.
-- The result of the subquery acts like a temporary table.


-- Create Employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);


-- Insert data
INSERT INTO employees (emp_id, name, department, salary) VALUES
(101, 'Mehak', 'IT', 60000),
(102, 'Teena', 'HR', 50000),
(103, 'Rahul', 'IT', 55000),
(104, 'Aman', 'Finance', 45000),
(105, 'Simran', 'IT', 70000);


-- Subquery in FROM
-- First create a temporary result containing
-- employees with salary greater than 50000

SELECT name, department, salary
FROM (
    SELECT name, department, salary
    FROM employees
    WHERE salary > 50000
) AS high_salary_employees;






