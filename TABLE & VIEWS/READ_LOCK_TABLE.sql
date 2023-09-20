/*
TABLE LOCKING -> A lock is a mechanism associated with a table used to restrict the unauthorized access of the data in a table. 
MySQL allows a client session to acquire a table lock explicitly to cooperate with other sessions to access the table's data.

MySQL provides two types of locks onto the table
1. READ LOCK: This lock allows a user to only read the data from a table.
2. WRITE LOCK: This lock allows a user to do both reading and writing into a table.

*/
-- CREATING TABLE WHICH NAME IS TABLE_LOCKING
CREATE TABLE TABLE_LOCKING (   
    Id INT NOT NULL AUTO_INCREMENT,   
    Name VARCHAR(50) NOT NULL,   
    Message VARCHAR(80) NOT NULL,  
    PRIMARY KEY (Id)   
);  
-- LOCK THE TABLE FOR ONLY READ
LOCK TABLE TABLE_LOCKING READ;

-- CONNECTION ID
SELECT CONNECTION_ID();  

-- USE TO UNLOCK THE TABLES
UNLOCK TABLES;

-- NOW INSERTING THE DATA IN TABLE_LOCKING
INSERT INTO TABLE_LOCKING (name, message)   
VALUES('Peter', 'Hi'),  
('Joseph', 'Hello'),  
('Mark', 'Welcome'); 

-- DISPLAY THE TABLE INFORMATION
SELECT *FROM TABLE_LOCKING;