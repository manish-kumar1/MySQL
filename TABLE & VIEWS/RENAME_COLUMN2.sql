-- RENAME COLUMN NAME
/*
MULTIPLE RENAME COLUMNS NAME

ALTER TABLE table_name   
RENAME COLUMN old_column_name1 TO new_column_name1,  
RENAME COLUMN old_column_name2 TO new_column_name2,  
...  
...  
RENAME COLUMN old_column_nameN TO new_column_nameN; 
*/
ALTER TABLE STUDENTS
RENAME COLUMN STATUS TO ACTIVE;

DESC STUDENTS;

SELECT *FROM STUDENTS;