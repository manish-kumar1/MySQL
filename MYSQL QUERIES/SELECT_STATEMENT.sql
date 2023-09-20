
-- SELECT STATEMENT
/*
SELECT field_name1, field_name 2,... field_nameN   
FROM table_name1, table_name2...  
[WHERE condition]  
[GROUP BY field_name(s)]  
[HAVING condition]   
[ORDER BY field_name(s)]  
[OFFSET M ][LIMIT N];  
*/
-- SYNTAX FOR ALL FIELDS
/*
SELECT * FROM tables [WHERE conditions]  
[GROUP BY fieldName(s)]  
[HAVING condition]   
[ORDER BY fieldName(s)]  
[OFFSET M ][LIMIT N];  
*/
-- SINGLE COLUMN FROM THE TABLE
SELECT NAME FROM EMPLOYEE;

-- MULTIPLE COLUMN FROM THE TABLE
SELECT ID, EMAIL, SALARY FROM EMPLOYEE;

-- ALL COLUMN FROM THE TABLE
SELECT *FROM EMPLOYEE;