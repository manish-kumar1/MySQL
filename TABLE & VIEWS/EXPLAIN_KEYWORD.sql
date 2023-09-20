
/*
The EXPLAIN keyword is synonyms to the DESCRIBE statement, which is used to obtain information about how MySQL executes the queries. 
It can work with INSERT, SELECT, DELETE, UPDATE, and REPLACE queries

If we want to show the execution plan of a SELECT statement, we can use the query as below:

*/
-- SYNTAX -> EXPLAIN SELECT*FROM TABLE_NAME;

EXPLAIN SELECT*FROM STUDENTS;