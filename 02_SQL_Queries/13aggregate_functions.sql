-- Aggregate Functions in SQL

-- COUNT() → counts the number of rows
SELECT COUNT(*) AS total_students
FROM student;

-- SUM() → calculates the total
SELECT SUM(age) AS total_age
FROM student;

-- AVG() → calculates the average
SELECT AVG(age) AS average_age
FROM student;

-- MIN() → finds the minimum value
SELECT MIN(age) AS minimum_age
FROM student;

-- MAX() → finds the maximum value
SELECT MAX(age) AS maximum_age
FROM student;
