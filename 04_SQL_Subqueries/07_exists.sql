
-- EXISTS
-- EXISTS checks whether a subquery returns at least one row.
-- If the subquery returns one or more rows , EXISTS returns TRUE.


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


-- Create Employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    salary INT
);


-- Insert data
INSERT INTO employees (emp_id, name, dept_id, salary) VALUES
(101, 'Mehak', 1, 60000),
(102, 'Teena', 2, 50000),
(103, 'Rahul', 1, 55000),
(104, 'Aman', 4, 45000);


-- Find departments that have at least one employee

SELECT dept_name
FROM departments AS d
WHERE EXISTS (
    SELECT 1
    FROM employees AS e
    WHERE e.dept_id = d.dept_id
);




