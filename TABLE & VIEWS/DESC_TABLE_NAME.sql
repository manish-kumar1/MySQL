
-- DESCRIBE TABLE STRUCTURE(INFORMATION) OF EXISTING TABLE
DESC mydatabase.students;

-- If we want to show the columns information of a table from another database or not available in the current database, we can use the following query:

-- SYNTAX -> SHOW COLUMNS FROM database_name.table_name;
SHOW COLUMNS FROM mydatabase.students;  
-- OR 
-- SYNTAX -> SHOW COLUMNS FROM table_name IN database_name;
SHOW COLUMNS FROM CUSTOMER IN BAZAAR;