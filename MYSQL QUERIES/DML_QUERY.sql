-- MYSQL QUERIES
-- SYNTAX -> CREATE DATABASE DATABASE_NAME;
CREATE DATABASE DB1;

-- SELECT/USE DATABASE
-- SYNTAX -> USE DATABASE_NAME;
USE DB1;

-- CREATE QUERY -> create query is used to create a table, view, procedure and function. For example
/*
SYNTAX -> 
CREATE TABLE TABLE_NAME(
	COLUMN_NAME1 COLUMN_DEFINITION,
    COLUMN_NAME2 COLUMN_DEFINITAION,
    ------------ ------------------,
    COLUMN_NAMEn COLUMN_DEFINITAION,
    PRIMARY KEY(COLUMN_NAME)
);
*/
CREATE TABLE EMPLOYEE(
	ID INT NOT NULL AUTO_INCREMENT,
    NAME VARCHAR(40),
    EMAIL VARCHAR(50),
    SALARY INT,
    DEPARTMENT VARCHAR(50),
    PRIMARY KEY(ID)
);
DESC EMPLOYEE;

-- ALTER QUERY -> alter query is used to add, modify, delete or drop colums of a table. Let's see a query to add column in customers table:
/*
SYNTAX ->

ALTER TABLE TABLE_NAME
ADD COLUMN (COLUMN_NAME1 COLUMN_DEFINITION),
		   (COLUMN_NAME2 COLUMN_DEFINITAION),
           .............,
           (COLUMN_NAMEn COLUMN_DEFINITAION);
*/
ALTER TABLE EMPLOYEE
ADD COLUMN LOCATION VARCHAR(40);

DESC EMPLOYEE;

-- INSERT QUERY -> insert query is used to insert records into table. For example:
/*
SYNTAX -> 
INSERT INTO TABLE_NAME
(COLUMN_NAME, COLUMN_NAME, COLUMN_NAME, ........)
VALUES
(DATA, DATA, DATA, .......),
(DATA, DATA, DATA, .......),
..........................,
(DATAn, DATAn, DATAn, .....);
*/
INSERT INTO EMPLOYEE
(ID, NAME, EMAIL, SALARY, DEPARTMENT, LOCATION)
 VALUES
 (101, 'MANISH', 'mani@gmail.com', 30000, 'IT', 'BHOPAL'),
 (121, 'SANJU', 'sanju@gmail.com', 40000, 'AI', 'BIHAR'),
 (120, 'SANDIP', 'sendi@gmail.com', 20000, 'ML', 'BANGULUR'),
 (150, 'NOMAN', 'noman@gmail.com', 34000, 'HR', 'RAJSTHAN');
 
 -- SELECT QUERY -> select query is used to fetch records from database. For example
 -- SYNTAX -> SELECT *FROM TABLE_NAME;
 SELECT *FROM EMPLOYEE;
 
 -- UPDATE QUERY -> update query is used to update records of a table. For example
 -- SYNTAX -> UPDATA TABLE_NAME SET COLUMN_NAME = DATA, COLUMN_NAME = DATA, ...., WHERE COLUMN_NAME = DATA ;
 UPDATE EMPLOYEE SET NAME = 'MISTER', LOCATION = 'NEPAL' WHERE ID = 101;
 
 SELECT *FROM EMPLOYEE;
 
 -- DELETE QUERY -> DELETE query is used to delete records of a table from table. For example:
 -- SYNTAX -> DELETE FROM TABLE_NAME WHERE COLUMN_NAME = DATA;
 DELETE FROM EMPLOYEE WHERE ID = 121;
 
 SELECT *FROM EMPLOYEE;
 
 -- SYNTAX TRUNCATE TABLE TABLE_NAME
 TRUNCATE TABLE EMPLOYEE;
 
 -- DROP TABLE TABLE_NAME
 DROP TABLE EMPLOYEE;