-- ALIAS in SQL
-- ALIAS is used to give a temporary name to a column or table.

-- Column Alias
SELECT name AS student_name
FROM student;

SELECT name AS student_name, age AS student_age
FROM student;

-- Table Alias
SELECT s.name, s.age
FROM student AS s;

-- AS keyword can also be omitted
SELECT name student_name
FROM student;

SELECT s.name, s.age
FROM student s;
