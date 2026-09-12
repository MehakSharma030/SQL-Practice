-- LIMIT
-- Used to restrict the number of rows returned by a query


-- 1. Get only the first 2 students
SELECT *
FROM student
LIMIT 2;


-- 2. Get the top 3 students based on marks
SELECT *
FROM student
ORDER BY marks DESC
LIMIT 3;


-- 3. Get the student with the highest marks
SELECT *
FROM student
ORDER BY marks DESC
LIMIT 1;


-- 4. Get the 2 students with the lowest marks
SELECT *
FROM student
ORDER BY marks ASC
LIMIT 2;

