
-- LEFT JOIN

-- Create Departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Insert data into Departments
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

-- Insert data into Employees
INSERT INTO employees (emp_id, name, dept_id, salary) 
VALUES
(101, 'Mehak', 1, 60000),
(102, 'Teena', 2, 50000),
(103, 'Rahul', 1, 55000),
(104, 'Aman', 4, 45000);


-- Apply LEFT JOIN
SELECT
    employees.emp_id,
    employees.name,
    departments.dept_name,
    employees.salary
FROM employees
LEFT JOIN departments
ON employees.dept_id = departments.dept_id;

