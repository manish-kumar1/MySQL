
-- FIRST() -> first function is used to return the first value of the selected column. Here, we use limit clause to select first record or more.

/*
SELECT column_name  
FROM table_name  
LIMIT 1;  
*/

SELECT NAME, OCCUPATION   
FROM WORKER  
LIMIT 1;  


SELECT NAME, OCCUPATION   
FROM WORKER  
LIMIT 2; 