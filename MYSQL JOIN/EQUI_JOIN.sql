-- EQUI JOIN
/*
The process is called joining when we combine two or more tables based on some common columns and a join condition. 
An equijoin is an operation that combines multiple tables based on equality or matching column values in the associated tables.

We can use the equal sign (=) comparison operator to refer to equality in the WHERE clause. 
This joining operation returns the same result when we use the JOIN keyword with the ON clause and then specifying the column names and their associated tables.
*/

/*
SYNTAX 
SELECT column_name (s)  
FROM table_name1, table_name2, ...., table_nameN  
WHERE table_name1.column_name = table_name2.column_name;  

OR
SELECT (column_list | *)  
FROM table_name1   
JOIN table_name2   
ON table_name1.column_name = table_name2.column_name;
*/

SELECT CUST.CUSTOMER_NAME, CUST.OCCUPATION, STUD.BRANCH, CUST.INCOME
FROM CUSTOMER AS CUST, STUDENT AS STUD
WHERE CUST.INCOME = STUD.FEES;

-- JOIN THREE TABLES

SELECT CUST.CUSTOMER_NAME, STUD.BRANCH, FAC.ADDRESS
FROM CUSTOMER AS CUST, STUDENT AS STUD, FACULTY AS FAC
WHERE (CUST.INCOME = STUD.FEES AND STUD.FEES = FAC.SALARY);