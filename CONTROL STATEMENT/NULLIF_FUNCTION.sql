-- NULLIF -> The NULLIF function accepts two expressions, and if the first expression is equal to the second expression, 
-- it returns the NULL. Otherwise, it returns the first expression.

-- SYNTAX -> SELECT NULLIF(EXPRESSION_1, EXPRESSION_2);

SELECT NULLIF("javaTpoint", "javaTpoint") AS 'ANS';

SELECT NULLIF("Hello", "404");    

SELECT NULLIF(9,5) AS 'RESULT';  

SELECT 1/NULLIF(0,0) AS ANS;  



CREATE TABLE CUSTOMER (  
  CUSTOMER_ID INT UNSIGNED NOT NULL AUTO_INCREMENT,  
  CUSTOMER_NAME VARCHAR(45) NOT NULL,  
  OCCUPATION VARCHAR(45) NOT NULL,  
  INCOME VARCHAR(15) NOT NULL,  
  QUALIFICATION VARCHAR(45) NOT NULL,
  PRIMARY KEY(CUSTOMER_ID)
);  

INSERT INTO CUSTOMER 
(CUSTOMER_ID, CUSTOMER_NAME, OCCUPATION, INCOME, QUALIFICATION)
VALUES
(1, 'John Miller', 'Developer', '20000', 'Btech'),
(2, 'Mark Robert', 'Enginneer', '40000', 'Btech'),
(3, 'Reyan Watson', 'Scientists', '60000', 'MSc'),
(4, 'Shane Trump', 'Businessman', '10000', 'MBA'),  
(5, 'Adam Obama', 'Manager', '80000', 'MBA'),
(6, 'Rincky Ponting', 'Cricketer', '200000', 'Btech');  

SELECT *FROM CUSTOMER;

SELECT CUSTOMER_NAME, OCCUPATION, QUALIFICATION, 
NULLIF(QUALIFICATION, "BTECH") AS RESULT
FROM CUSTOMER;