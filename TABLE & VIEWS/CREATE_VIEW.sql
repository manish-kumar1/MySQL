/*
VIEW -> A view is a database object that has no values. Its contents are based on the base table. 
It contains rows and columns similar to the real table. In MySQL, the View is a virtual table created by a query by joining one or more tables. 
It is operated similarly to the base table but does not contain any data of its own

CREATE [OR REPLACE] VIEW view_name AS    
SELECT columns    
FROM tables    
[WHERE conditions];  
*/

CREATE VIEW ST AS    
SELECT NAME, PLAN     
FROM MEMBERSHIPS;  

SELECT *FROM ST;

DROP VIEW TABLE_NAME;