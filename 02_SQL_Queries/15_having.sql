-- HAVING in SQL
-- HAVING is used to filter groups created by GROUP BY.
-- It is commonly used with aggregate functions.

-- Cities having more than 2 students
SELECT city, COUNT(*) AS total_students
FROM student
GROUP BY city
HAVING COUNT(*) > 2;


-- Cities having average age greater than 20
SELECT city, AVG(age) AS average_age
FROM student
GROUP BY city
HAVING AVG(age) > 20;


-- Cities having maximum age greater than 21
SELECT city, MAX(age) AS maximum_age
FROM student
GROUP BY city
HAVING MAX(age) > 21;


-- Cities having total age greater than 60
SELECT city, SUM(age) AS total_age
FROM student
GROUP BY city
HAVING SUM(age) > 60; 
