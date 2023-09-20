-- UPADATE QUERY

/*
UPDATE table_name     
SET column_name1 = new-value1,   
        column_name2=new-value2, ...    
[WHERE Clause] 
*/

UPDATE EMPLOYEE
SET NAME = 'SURAJ',
    LOCATION = 'BANGLURO',
    EMAIL = 'srj@gmail.com',
    SALARY = 80000
    WHERE ID = 121;

SELECT *FROM EMPLOYEE;

UPDATE EMPLOYEE
SET EMAIL = REPLACE(EMAIL, '@gmail.com', '@yahoo.com')
WHERE ID = 121;

SELECT *FROM EMPLOYEE;