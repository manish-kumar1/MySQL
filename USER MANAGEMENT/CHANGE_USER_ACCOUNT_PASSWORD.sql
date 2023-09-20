
-- CHANGE MYSQL USER PASSWORD

-- THERE ARE THREE WAY TO CHANGE USER PASSWORD
-- 1. UPDATE Statement
-- 2. SET PASSWORD Statement
-- 3. ALTER USER Statement

-- USING UPDATE STATEMENT
 -- UPDATE user SET password = PASSWORD('jtp12345') WHERE user = 'USER_NAME' AND host = 'localhost';  
 
 -- USING SET PASSWORD STATEMENT
 SET PASSWORD FOR 'peter'@'localhost' = 'jtp12345';  
 
 
 -- CHANGE USER ACCOUNT PASSWORD USING ALTER USER STATEMENT
 ALTER USER peter@localhost IDENTIFIED BY 'jtp123';  