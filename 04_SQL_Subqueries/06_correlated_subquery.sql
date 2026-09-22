
-- CORRELATED SUBQUERY
-- A correlated subquery depends on the outer query.
-- The subquery executes for each row of the outer query.


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


-- Find employees whose salary is greater
-- than the average salary of their own department

SELECT e.name , e.department , e.salary
FROM employees AS e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees AS e2
    WHERE e2.department = e.department
);





