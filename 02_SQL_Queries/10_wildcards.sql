%   -- zero or more characters
_   -- exactly one character

-- Starts with M
SELECT * FROM student
WHERE name LIKE 'M%';

-- Ends with a
SELECT * FROM student
WHERE name LIKE '%a';

-- Contains e
SELECT * FROM student
WHERE name LIKE '%e%';

-- Exactly 5 characters
SELECT * FROM student
WHERE name LIKE '_____';
