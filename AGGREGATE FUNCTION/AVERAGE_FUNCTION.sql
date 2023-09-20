
/*
AVG() ->
avg() is an aggregate function used to return the average value of an expression in various records.

SYNTAX -
SELECT AVG(aggregate_expression)    
FROM tables    
[WHERE conditions];  
*/
-- AVG()
SELECT AVG(working_hours) Avg_working_hours FROM WORKER;  

-- AVG() WITH WHERE CLAUSE
SELECT AVG(WORKING_HOURS)
AS 'AVERAGE_WORKING_HOURS' 
FROM WORKER 
WHERE WORKING_HOURS >= 12;

-- AVG() WITH GROUP BY
SELECT OCCUPATION, AVG(working_hours) Avg_working_hours 
FROM WORKER 
GROUP BY occupation;

-- AVG() WITH HAVING
SELECT occupation, 
AVG(working_hours) Avg_working_hours   
FROM WORKER  
GROUP BY occupation   
HAVING AVG(working_hours)>9;  

-- AVG() WITH DISTINCT
SELECT occupation,   
AVG(DISTINCT working_hours) Avg_working_hours  
FROM WORKER 
GROUP BY occupation;  