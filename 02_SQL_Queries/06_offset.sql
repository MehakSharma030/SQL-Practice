
-- OFFSET
-- Used to skip a specific number of rows
-- Usually used with LIMIT

SELECT *
FROM table_name
LIMIT number_of_rows
OFFSET number_of_rows_to_skip;

-- 1. Skip the first 2 rows
SELECT *
FROM student
LIMIT 2 OFFSET 2;


-- 2. Skip the first row and get the next 2 rows
SELECT *
FROM student
LIMIT 2 OFFSET 1;


-- 3. Get the 3rd student
SELECT *
FROM student
LIMIT 1 OFFSET 2;


-- 4. Get the 4th and 5th students
SELECT *
FROM student
LIMIT 2 OFFSET 3;


-- 5. OFFSET with ORDER BY
-- Skip the top 2 students and get the next 2
SELECT *
FROM student
ORDER BY marks DESC
LIMIT 2 OFFSET 2;
