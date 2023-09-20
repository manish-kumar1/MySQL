
-- HAVING CLAUSE
/*
SYNTAX ->
SELECT expression1, expression2, ... expression_n,   
aggregate_function (expression)  
FROM tables  
[WHERE conditions]  
GROUP BY expression1, expression2, ... expression_n  
HAVING condition; 
*/

INSERT IGNORE INTO FACULTY VALUES
(10, 'JOSHEPH', 'falf@gmail.com', '354535646', 32000, 'CALFORNIA');

SELECT NAME, SUM(SALARY) AS "TOTAL SALARY"  
FROM FACULTY  
GROUP BY NAME 
HAVING SUM(SALARY) > 25000;  