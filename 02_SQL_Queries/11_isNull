-- IS NULL Operator in SQL

-- Create table
CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    salary INT
);

-- Insert data
INSERT INTO employee VALUES
(1, 'Mehak', 'mehak@gmail.com', 50000),
(2, 'Teena', NULL, 45000),
(3, 'Rahul', 'rahul@gmail.com', NULL),
(4, 'Aman', NULL, 55000);

-- Find employees whose email is NULL
SELECT * FROM employee
WHERE email IS NULL;

-- Find employees whose salary is NULL
SELECT * FROM employee
WHERE salary IS NULL;

-- Find employees whose email is NOT NULL
SELECT * FROM employee
WHERE email IS NOT NULL;

-- Find employees whose salary is NOT NULL
SELECT * FROM employee
WHERE salary IS NOT NULL;


