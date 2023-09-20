
CREATE TABLE EMP_DETAILS(    
    ID INT AUTO_INCREMENT PRIMARY KEY,     
    NAME VARCHAR(45),     
    EMAIL VARCHAR(45),    
    PHONE VARCHAR(15),     
    CITY VARCHAR(25),  
    UNIQUE KEY UNIQUE_KEY(EMAIL)  
);  

SHOW INDEXES FROM EMP_DETAILS;

INSERT INTO EMP_DETAILS(ID, NAME, EMAIL, PHONE, CITY)    
VALUES (1, 'Peter', 'peter@javatpoint.com', '49562959223', 'Texas'),    
(2, 'Suzi', 'suzi@javatpoint.com', '70679834522', 'California'),    
(3, 'Joseph', 'joseph@javatpoint.com', '09896765374', 'Alaska');  

INSERT INTO EMP_DETAILS(ID, NAME, EMAIL, PHONE, CITY)   
VALUES (2, 'Suzi', 'suzi@javatpoint.com', '70679834522', 'Texas'); 

DROP INDEX INDEX_NAME_PHONE ON EMP_DETAILS;


CREATE UNIQUE INDEX INDEX_NAME_PHONE
ON EMP_DETAILS(NAME, PHONE) INVISIBLE COMMENT 'EMPLOYEE DETAILS';

SHOW INDEXES FROM EMP_DETAILS;