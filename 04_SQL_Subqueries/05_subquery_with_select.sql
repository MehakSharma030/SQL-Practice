```sql
-- SUBQUERY WITH SELECT
-- A subquery can be used inside the SELECT clause
-- to calculate or retrieve a value for each result.


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


-- Subquery inside SELECT
-- Display each employee's salary along with
-- the average salary of all employees

SELECT name , salary, (SELECT AVG(salary) FROM employees) AS average_salary
FROM employees;







