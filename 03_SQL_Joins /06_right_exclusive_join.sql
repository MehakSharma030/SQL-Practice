
-- RIGHT EXCLUSIVE JOIN
-- Returns only the rows from the RIGHT table
-- that do NOT have a matching row in the LEFT table.


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


-- RIGHT EXCLUSIVE JOIN
SELECT
    employees.emp_id,
    employees.name,
    departments.dept_id,
    departments.dept_name
FROM employees
RIGHT JOIN departments
ON employees.dept_id = departments.dept_id
WHERE employees.emp_id IS NULL;




