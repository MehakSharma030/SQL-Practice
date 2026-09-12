----------------------------------
----TABLE OPERATIONS--------------
----------------------------------

-- creating a table
CREATE TABLE student(
  rollNo INT PRIMARY KEY,
  name VARCHAR(50),
  age INT
);

-- display all tables
SHOW TABLES;

-- describe table structure/schema
DESC student;

-- insert data in table
INSERT INTO student
VALUES
(10 , "A" , 20),
(11 , "B" , 21),
(12 , "C" , 19),
(13 , "D" , 22);

-- add new coloum
ALTER TABLE student
ADD COLUMN city VARCHAR(10);

-- modify an existing coloum
ALTER TABLE student
MODIFY COLUMN age INT NOT NULL;

-- change column name of the table
ALTER TABLE student
CHANGE name student_name VARCHAR(50);

--  rename table name
ALTER TABLE student
RENAME TO student_details;

-- delete a particular row
DELETE FROM student_details
WHERE rollNo = 12;

-- delete a column in a table
ALTER TABLE student_details
DROP COLUMN city;

-- delete all the data of the table(will preserve its structure)
TRUNCATE TABLE student_details;

-- delete the whole table (will not preserve its structure too)
 DROP TABLE student_details;






