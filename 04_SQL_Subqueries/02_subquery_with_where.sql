
-- SUBQUERY WITH WHERE
-- A subquery can be used inside the WHERE clause
-- to filter records based on the result of another query.


-- Create Employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- Insert data
INSERT INTO employees (emp_id, name, department, salary) 
VALUES
(101, 'Mehak', 'IT', 60000),
(102, 'Teena', 'HR', 50000),
(103, 'Rahul', 'IT', 55000),
(104, 'Aman', 'Finance', 45000),
(105, 'Simran', 'IT', 70000);

-- Find employees who earn more than the
-- average salary of all employees

SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


