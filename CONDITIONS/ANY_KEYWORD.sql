
-- ANY KEYWORD
-- The ANY keyword is a MySQL operator that returns the Boolean value TRUE if the comparison is TRUE for ANY of the subquery condition. In other words, 
-- this keyword returns true if any of the subquery condition is fulfilled when the SQL query is executed.

-- SYNTAX
-- operand comparison_operator ANY (subquery) 
-- =  >  <  >=  <=  <>  !=  

-- SYNTAX
/*
SELECT column_lists 
FROM table_name1 
WHERE column_name Operator ANY (SELECT column_name FROM table_name2 WHERE condition);   
*/
USE COLLEGE;

SELECT NAME, SALARY
FROM FACULTY
WHERE SALARY < ANY (SELECT FEES 
				  FROM STUDENT WHERE (SALARY = 30000 AND FEES = 30000));
                  