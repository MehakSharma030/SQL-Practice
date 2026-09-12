-- GROUP BY in SQL
-- GROUP BY is used to group rows with the same values.
-- It is commonly used with aggregate functions.

-- Count students in each city
SELECT city, COUNT(*) AS total_students
FROM student
GROUP BY city;


-- Find average age of students in each city
SELECT city, AVG(age) AS average_age
FROM student
GROUP BY city;


-- Find maximum age in each city
SELECT city, MAX(age) AS maximum_age
FROM student
GROUP BY city;


-- Find minimum age in each city
SELECT city, MIN(age) AS minimum_age
FROM student
GROUP BY city;


-- Find total age of students in each city
SELECT city, SUM(age) AS total_age
FROM student
GROUP BY city;
