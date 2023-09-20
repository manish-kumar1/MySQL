
CREATE TABLE memberships (  
    id INT AUTO_INCREMENT PRIMARY KEY,  
    name VARCHAR(55) NOT NULL,  
    email VARCHAR(55) NOT NULL,  
    plan VARCHAR(45) NOT NULL,  
    validity_date DATE NOT NULL  
) ENGINE = MyISAM;   

 INSERT INTO memberships (name, email, plan, validity_date)  
VALUES('Stephen', 'stephen@javatpoint.com', 'Gold', '2020-06-13'),  
      ('Jenifer', 'jenifer@javatpoint.com', 'Platinum', '2020-06-10'),  
      ('david', 'david@javatpoint.com', 'Silver', '2020-06-15');  
      
--  we have created the MyISAM storage engine table, the repair table statement does not issue any error. See the below statement:
REPAIR TABLE memberships QUICK EXTENDED;  


-- If we use the REPAIR TABLE statement with the table that does not exist in our selected database, MySQL gives an error message. 
REPAIR TABLE service_memberships QUICK EXTENDED;  
