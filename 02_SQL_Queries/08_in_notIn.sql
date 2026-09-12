-- Create table
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

-- Insert data
INSERT INTO student VALUES
(1, 'Mehak', 20, 'Ludhiana'),
(2, 'Teena', 21, 'Delhi'),
(3, 'Rahul', 20, 'Mumbai'),
(4, 'Aman', 22, 'Delhi'),
(5, 'Simran', 21, 'Ludhiana');

-- IN Operator
SELECT * FROM student
WHERE city IN ('Delhi', 'Ludhiana');

-- IN with numbers
SELECT * FROM student
WHERE age IN (20, 22);

-- NOT IN
SELECT * FROM student
WHERE city NOT IN ('Delhi', 'Ludhiana');
