
CREATE DATABASE practice;
USE practice;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50),
    age INT
);

INSERT INTO employees 
VALUES
(1, 'Aman', 'IT', 60000, 'Delhi', 24),
(2, 'Priya', 'HR', 45000, 'Mumbai', 27),
(3, 'Rahul', 'IT', 75000, 'Delhi', 29),
(4, 'Sneha', 'Finance', 55000, 'Pune', 26),
(5, 'Karan', 'IT', 50000, 'Mumbai', 23),
(6, 'Neha', 'HR', 65000, 'Delhi', 31),
(7, 'Rohit', 'Finance', 70000, 'Pune', 30),
(8, 'Anjali', 'IT', 80000, 'Chandigarh', 28),
(9, 'Vikas', 'HR', 40000, 'Mumbai', 22),
(10, 'Simran', 'Finance', 60000, 'Delhi', 25);

-- Query: 

-- 🟢 Level 1 — Basic
-- Q1. Display all employees.
SELECT * from employees;

-- Q2. Display only the name and salary of all employees.
SELECT name , salary FROM employees;

-- Q3. Find employees whose salary is greater than 60000.
SELECT name FROM employees 
WHERE salary > 60000;

-- Q4. Find employees who belong to the IT department.
SELECT * FROM employees
WHERE department = "IT";

-- Q5. Find employees who live in Delhi.
SELECT * FROM employees
WHERE city = "Delhi";

-- Q6. Display employees whose age is less than or equal to 25.
SELECT name , age 
FROM employees
WHERE age <= 25;

-- Q7. Display all unique departments.
SELECT DISTINCT(department)
FROM employees;

-- Q8. Display all unique cities
SELECT DISTINCT city 
FROM employees;


-- 🟡 Level 2 — Filtering + Sorting

-- Q9. Find employees whose salary is between 50000 and 70000.
SELECT name , salary 
FROM employees
WHERE salary between 50000 and 70000;

-- Q10. Find employees whose department is either IT or HR.
SELECT name , department 
FROM employees
WHERE department in ("IT" , "HR");

-- Q11. Find employees who are not from Mumbai.
SELECT name  , city
FROM employees
WHERE city != "Mumbai";

-- Q12. Display employees whose name starts with A.
SELECT name 
FROM employees 
WHERE name LIKE "A%";

-- Q13. Display employees whose name ends with a.
SELECT name 
FROM employees 
WHERE name LIKE "%a";

-- Q14. Display employees whose salary is greater than 50000 and who belong to IT.
SELECT name , salary , department 
FROM employees 
WHERE salary > 50000 and department = "IT";

-- Q15. Display employees whose age is between 25 and 30.
SELECT name 
FROM employees 
WHERE age BETWEEN 25 and 30;

-- Q16. Display employees sorted by salary from highest to lowest.
SELECT name , salary 
FROM employees 
ORDER BY salary DESC;

-- Q17. Display employees sorted by age from lowest to highest.
SELECT name , age 
FROM employees 
ORDER BY age ASC;

-- Q18. Display the top 3 highest-paid employees.
SELECT name 
FROM employees 
ORDER BY salary DESC
LIMIT 3;

-- 🟠 Level 3 — Aggregate Functions

-- Q19. Find the total number of employees.
SELECT COUNT(*) 
FROM employees;

-- Q20. Find the highest salary.
SELECT MAX(salary)
FROM employees;

-- Q21. Find the lowest salary.
SELECT MIN(salary)
FROM employees;

-- Q22. Find the average salary of all employees.
SELECT AVG(salary)
FROM employees;

-- Q23. Find the total salary paid to all employees.
SELECT sum(salary)
FROM employees;

-- Q24. Find the number of employees working in the IT department.
SELECT COUNT(*) 
FROM employees 
WHERE department = "IT";


-- 🔴 Level 4 — GROUP BY + HAVING

-- Q25. Find the number of employees in each department.
SELECT department , COUNT(*) as no_of_emp
FROM employees 
GROUP BY department;

-- Q26. Find the average salary of each department.
SELECT department , AVG(salary)
FROM employees 
GROUP BY department;

-- Q27. Find the maximum salary in each department.
SELECT department , MAX(salary)
FROM employees 
GROUP BY department;

-- Q28. Find the minimum salary in each department.
SELECT department , MIN(salary)
FROM employees 
GROUP BY department;

-- Q29. Find the total salary paid by each department.
SELECT department , SUM(salary)
FROM employees 
GROUP BY department;

-- Q30. Display departments having more than 2 employees
SELECT department , COUNT(*)
FROM employees 
GROUP BY department
HAVING COUNT(*) > 2;

-- Q31. Display departments whose average salary is greater than 60000
SELECT department , AVG(salary)
FROM employees 
GROUP BY department
HAVING AVG(salary) > 60000;

-- 🟠 CHALLENGING QUESTIONS

-- Q32. Find the employee(s) having the highest salary.
SELECT name , salary
FROM employees 
WHERE salary = (SELECT MAX(salary) FROM employees);


-- Q33. Find the employee(s) having the lowest salary.
SELECT name , salary
FROM employees 
WHERE salary = (SELECT MIN(salary) FROM employees);

-- Q34. Find the second-highest salary.
SELECT name , salary
FROM employees 
ORDER BY salary DESC
LIMIT 1
OFFSET 1;

-- Q35. Find the number of employees in each city.
SELECT city , COUNT(*) 
FROM employees 
GROUP BY city;

-- Q36. Find the average salary of employees from Delhi.
SELECT AVG(salary)
FROM employees
WHERE city = "Delhi";

-- Q37. Find the department with the highest average salary.
SELECT department , AVG(salary)
FROM employees 
GROUP BY department 
ORDER BY AVG(salary) DESC 
LIMIT 1;

-- Q38. Find employees whose salary is greater than the overall average salary.
SELECT name , salary 
FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);

