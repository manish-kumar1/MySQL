-- BETWEEN CONDITION
-- The MYSQL BETWEEN condition specifies how to retrieve values from an expression within a specific range. It is used with SELECT, INSERT, UPDATE and DELETE statement.

-- expression BETWEEN value1 AND value2;   

SELECT ID, NAME
FROM FACULTY
WHERE ID BETWEEN 1 AND 3;