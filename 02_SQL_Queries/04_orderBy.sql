-- ORDER BY
-- Used to sort the result in ascending or descending order


-- 1. Sort students by marks in ascending order
SELECT *
FROM student
ORDER BY marks ASC;


-- 2. Sort students by marks in descending order
SELECT *
FROM student
ORDER BY marks DESC;


-- 3. Sort students by name
SELECT *
FROM student
ORDER BY name ASC;


-- 4. Sort students by age in descending order
SELECT *
FROM student
ORDER BY age DESC;


-- 5. Sort using multiple columns
SELECT *
FROM student
ORDER BY age ASC, marks DESC;


-- 6. ORDER BY with WHERE
SELECT *
FROM student
WHERE marks > 80
ORDER BY marks DESC;


-- 7. ORDER BY using column position
SELECT name, marks
FROM student
ORDER BY 2 DESC;
