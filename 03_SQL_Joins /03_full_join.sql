
-- FULL OUTER JOIN
-- MySQL does not directly support FULL OUTER JOIN.
-- We can achieve it using LEFT JOIN (UNION) RIGHT JOIN 


-- Create Departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Insert data
INSERT INTO departments (dept_id, dept_name) 
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');


-- Create Employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    salary INT
);

-- Insert data
INSERT INTO employees (emp_id, name, dept_id, salary) 
VALUES
(101, 'Mehak', 1, 60000),
(102, 'Teena', 2, 50000),
(103, 'Rahul', 1, 55000),
(104, 'Aman', 4, 45000);


-- FULL OUTER JOIN using UNION

SELECT
    employees.emp_id,
    employees.name,
    departments.dept_name,
    employees.salary
FROM employees
LEFT JOIN departments
ON employees.dept_id = departments.dept_id

UNION

SELECT
    employees.emp_id,
    employees.name,
    departments.dept_name,
    employees.salary
FROM employees
RIGHT JOIN departments
ON employees.dept_id = departments.dept_id;
