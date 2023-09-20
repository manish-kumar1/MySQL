-- INSERT STATEMENT

/*
SINGLE RECORD IN SINGLE ROW

INSERT INTO table_name ( field1, field2,...fieldN )    
VALUES    
( value1, value2,...valueN );

MULTIPLE RECORD IN MULTIPLE ROW
INSERT INTO table_name VALUES  
( value1, value2,...valueN )  
( value1, value2,...valueN )  
...........  
( value1, value2,...valueN );  
*/

CREATE TABLE People(  
    id int NOT NULL AUTO_INCREMENT,  
    name varchar(45) NOT NULL,  
    occupation varchar(35) NOT NULL,  
    age int,  
    PRIMARY KEY (id)  
);  
-- INSERT SINGLE RECORD IN SINGLE ROW
INSERT INTO People (id, name, occupation, age)   
VALUES (101, 'Peter', 'Engineer', 32);  

-- INSERT MULTIPLE RECORD IN MULTIPLE ROW
INSERT INTO People VALUES  
(102, 'Joseph', 'Developer', 30),  
(103, 'Mike', 'Leader', 28),  
(104, 'Stephen', 'Scientist', 45);  