-- C -> create -- add data
INSERT INTO student VALUES (101 , "Mehak" , 20);

-- R -> read -- display data
SELECT * from student;

-- U -> update -- modify data
UPDATE student
SET age = 21
WHERE rollNo = 101;

-- D -> delete -- remove rows
DELETE FROM student 
WHERE rollNo = 101;
