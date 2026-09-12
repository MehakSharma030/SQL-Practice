-- LIKE Operator in SQL

-- Names starting with 'M'
SELECT * FROM student
WHERE name LIKE 'M%';

-- Names ending with 'a'
SELECT * FROM student
WHERE name LIKE '%a';

-- Names containing 'e'
SELECT * FROM student
WHERE name LIKE '%e%';

-- Names with exactly 5 characters
SELECT * FROM student
WHERE name LIKE '_____';

-- Names where the second character is 'e'
SELECT * FROM student
WHERE name LIKE '_e%';

-- NOT LIKE
SELECT * FROM student
WHERE name NOT LIKE 'M%';




