-- Q1. Display the Employee name who is getting more than salary 1000.
SELECT NAME 
FROM FACULTY
WHERE SALARY > 25000;

-- Q2. Display the Employee name and salary who is belong from CSE department. 
SELECT FIRST_NAME, salary
FROM EMPLOYEE
WHERE DEPARTMENT = 'CSE';

-- Q3. Write a query to print employee name who is working in CSE department and who name start with 'A'. 
SELECT FIRST_NAME
FROM EMPLOYEE
WHERE FIRST_NAME LIKE 'A%';

-- Q4. Display the employee name who's middle name will be 'Z'. 
SELECT FIRST_NAME
FROM EMPLOYEE
WHERE FIRST_NAME LIKE '%Z%';

-- Q5. Write a query to print Employee name who is working in CSE department and name start with 'a'. 
SELECT FIRST_NAME
FROM EMPLOYEE
WHERE DEPARTMENT = 'CSE' AND FIRST_NAME LIKE'A%';


