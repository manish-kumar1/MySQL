
-- MYSQL ALTER TABLE
-- ADD A COLUMN IN THE TABLE

/*
ADD MULTIPLE COLUMN IN EXISTING TABLE

 ADD( COLUMN_NAME1 COLUMN_DEFINITION,
     COLUMN_NAME2 COUMN_DEFINATION,
     COLUMN_NAME3 COLUMN_DEFINATION,
	 ...........  ................
	 COLUMN_NAMEn COLUMN_DEFINATIONn_);
*/

/*
ADD SINGLE COLUMN

ALTER TABLE TABLE_NAME
ADD (COLUMN_NAME COLUMN_DEFINITION);
*/

ALTER TABLE STUDENT
ADD COLLEGE VARCHAR(50);