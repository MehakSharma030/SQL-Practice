-- SELECT Statement
-- Used to retrieve data from a table

CREATE TABLE student (
    id INT,
    name VARCHAR(50),
    age INT,
    marks INT,
    city VARCHAR(50)
);

INSERT INTO student VALUES
(1, 'Mehak', 20, 85, 'Ludhiana'),
(2, 'Teena', 21, 90, 'Delhi'),
(3, 'Rahul', 20, 75, 'Mumbai'),
(4, 'Aman', 22, 88, 'Chandigarh');


-- 1. Select all columns
SELECT * FROM student;


-- 2. Select specific columns
SELECT name, age FROM student;


-- 3. Select a single column
SELECT name FROM student;


-- 4. Select multiple columns
SELECT name, marks, city FROM student;


-- 5. Select with an expression
SELECT name, marks + 5 AS updated_marks
FROM student;


