/*
MIN() -> 
MIN() function in MySQL is used to return the minimum value in a set of values from the table. 
It is an aggregate function that is useful when we need to find the smallest number, selecting the least expensive product, etc.
*/
-- MIN()
SELECT MIN(income) AS Minimum_Income FROM CUSTOMER;  

-- MIN() WITH WHERE CLAUSE
SELECT MIN(income) AS Minimum_Income   
FROM CUSTOMER   
WHERE QUALIFICATION = 'BTECH' OR QUALIFICATION = 'MBA';  

-- MIN() WITH GROUP BY
SELECT OCCUPATION, MIN(WORKING_HOURS) AS Minimum_Income   
FROM WORKER   
GROUP BY OCCUPATION; 

-- MIN() WITH HAVING CLAUSE
SELECT OCCUPATION, MIN(WORKING_HOURS) AS Minimum_WORKING_HOURS   
FROM WORKER   
GROUP BY OCCUPATION  
HAVING MIN(WORKING_HOURS) < 12;  

-- MIN() WITH DISTINCT 
SELECT OCCUPATION, MIN(DISTINCT WORKING_HOURS) AS MINIMUM_WORKIN_HOURS   
FROM WORKER   
GROUP BY OCCUPATION;  