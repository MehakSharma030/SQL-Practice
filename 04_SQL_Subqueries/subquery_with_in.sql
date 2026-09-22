
-- SUBQUERY WITH IN
-- IN is used with a subquery when the subquery can return multiple values.

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


-- Create Departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);


-- Insert data
INSERT INTO departments (dept_id, dept_name) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');


-- Find employees who belong to departments whose name starts with 'I'

SELECT name , department , salary
FROM employees
WHERE department IN (
    SELECT dept_name
    FROM departments
    WHERE dept_name LIKE 'I%'
);





