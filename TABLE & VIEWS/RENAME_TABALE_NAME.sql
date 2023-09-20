
-- RENAME TABLE NAME
/*
SINGLE RENAME TABLE NAME
SYNTAX
RENAME TABLE OLD_TABLE_NAME TO NEW_TABLE_NAME;
*/
RENAME TABLE STUDENT TO STUDENTS;

/* 
MULTIPLE RENAME TABLE NAME
SYSTAX -> 
RENAME TABLE OLD_TABLE_NAME TO NEW_TABLE_NAME,
			 OLD_TABLE_NAME2 TO NEW_TABLE_NAME2,
             OLD_TABLE_NAME3 TO NEW_TABLE_NAME3,
             ------,
             ------,
             OLD_TABLE_NAMEn TO NEW_TABLE_NAMEn ;
*/

-- RENAME TABLE statement for moving a table from one database to other database
RENAME TABLE current_db.tablel_name TO other_db.tablel_name;  