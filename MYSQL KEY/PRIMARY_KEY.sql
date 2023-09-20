

 CREATE TABLE Login(  
   login_id INT AUTO_INCREMENT PRIMARY KEY,  
   username VARCHAR(40),  
   password VARCHAR(55),  
   email VARCHAR(55)  
);
  
INSERT INTO Login(login_id, username, password, email)   
VALUES (1,'Stephen', 15343434532, 'stephen@javatpoint.com'),   
(2, 'Joseph', 35435479495, 'Joseph@javatpoint.com');  

-- INSERT INTO Login(login_id, username, password, email)   -- ERROR CODE:1062. DUPLICATE ENTRY '1' FOR KEY 'LOGIN.PRIMARY'
-- VALUES (1,'Peter', 15343434532, 'peter@javatpoint.com');  



-- MULTTPLE PRIMARY KEY 
CREATE TABLE Students (  
        Student_ID int,   
        Roll_No int,  
        Name varchar(45) NOT NULL,   
        Age int,   
        City varchar(25),  
        Primary Key(Student_ID, Roll_No)  
);  


-- PRIMARY KEY USING ALTER TABLE STATEMENT

 CREATE TABLE Persons (  
        Person_ID int NOT NULL,   
        Name varchar(45),   
        Age int,   
        City varchar(25)  
); 

-- ADD PRIMARY KEY
-- SYNTAX -> ALTER TABLE TABLE_NAME ADD PRIMARY KEY(COLUMN_NAME);

ALTER TABLE Persons ADD PRIMARY KEY(Person_ID);

SHOW INDEXES FROM PERSONS;

-- DROP PRIMARY KEY
-- SYNTAX -> ALTER TABLE TABLE_NAME DROP PRIMARY KEY;

ALTER TABLE PERSONS DROP PRIMARY KEY;

SHOW INDEXES FROM PERSONS;

ALTER TABLE PERSONS ADD PRIMARY KEY PRIMARY_COL(PERSON_ID);
SHOW INDEXES FROM PERSONS;