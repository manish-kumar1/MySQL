
USE MYDATABASE;

-- CHANGE COLUMN NAME
/*
MULTIPLE CHANGE COLUMNS NAME
SYNTAX
ALTER TABLE table_name   
CHANGE old_column_name1 new_column_name1 Data Type,  
CHANGE old_column_name2 new_column_name2 Data Type,  
...  
...  
CHANGE old_column_nameN new_column_nameN Data Type;  
*/

ALTER TABLE STUDENTS
CHANGE COLUMN LOCATION ADDRESS VARCHAR(40);

SELECT *FROM STUDENTS;