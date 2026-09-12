-- WHERE Clause
-- Used to filter records based on a condition


-- 1. Select students whose age is 20
SELECT *
FROM student
WHERE age = 20;


-- 2. Students whose marks are greater than 80
SELECT *
FROM student
WHERE marks > 80;


-- 3. Students whose marks are less than 80
SELECT *
FROM student
WHERE marks < 80;


-- 4. Students whose marks are greater than or equal to 85
SELECT *
FROM student
WHERE marks >= 85;


-- 5. Students whose marks are not equal to 85
SELECT *
FROM student
WHERE marks != 85;


-- 6. Select students from Ludhiana
SELECT *
FROM student
WHERE city = 'Ludhiana';

