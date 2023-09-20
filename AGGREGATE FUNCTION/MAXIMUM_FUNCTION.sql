/*
MAX() ->alterMAX() function is used to return the maximum value in a set of values of an expression. 
This aggregate function is useful when we need to find the maximum number, selecting the most expensive product, or getting the largest payment to the customer from your table.

SELECT MAX(DISTINCT aggregate_expression)    
FROM table_name(s)    
[WHERE conditions];  
*/

-- MAX()
SELECT MAX(income) AS "Maximum Income" FROM CUSTOMER;  

-- MAX() WITH WHERE CLAUSE
SELECT MAX(income) AS "Maximum_Income"   
FROM customer   
WHERE QUALIFICATION = 'MBA';

-- MAX() WITH GROUP BY
SELECT OCCUPATION, MAX(WORKING_HOURS) AS "Maximum WORKING_HOURS"   
FROM WORKER   
GROUP BY OCCUPATION; 

-- MAX() WITH HAVING CLAUSE
SELECT OCCUPATION, MAX(WORKING_HOURS) AS "MAXIMUM_WORKING_HOURS"   
FROM WORKER  
GROUP BY OCCUPATION  
HAVING MAX(WORKING_HOURS) <= 12;  


-- MAX() WITH GROUP BY
SELECT OCCUPATION, MAX(DISTINCT WORKING_HOURS) AS "MAXIMUM WORKING_HOURS"   
FROM WORKER 
GROUP BY OCCUPATION;  


-- MAX() FUNCTION IN SUBQUERY
SELECT * FROM CUSTOMER WHERE   
INCOME = (SELECT MAX(INCOME) FROM CUSTOMER); 