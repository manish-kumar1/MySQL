
-- ACCOUNT LOCK
/*
SYNTAX -> 
CREATE USER IF NOT EXISTS USER_NAME
IDENTIFIED BY PASSWORD
ACCOUNT LOCK;
*/
-- CREATE USER
 CREATE USER IF NOT EXISTS MANISH@LOCALHOST
 IDENTIFIED BY 'MANISH@123'
 ACCOUNT LOCK;
 
 -- we will execute the below statement to show the user account and its status:
 SELECT USER, HOST, ACCOUNT_LOCKED
 FROM MYSQL.USER
 WHERE USER = 'MANISH' AND HOST = 'LOCALHOST';
 
 -- we will log in to the MySQL server with a newly created user account markus@localhost as follows:
--  mysql -u MANISH -p
--  enter PASSWORD: 'MANISH@123';

--  we will use the ALTER TABLE LOCK ACCOUNT statement to lock this user account as follows:
ALTER USER USER_NAME@LOCALHOST ACCOUNT LOCK;

SELECT USER, HOST, ACCOUNT_LOCKED
FROM MYSQL.USER
WHERE USER = 'USER_NAME' AND HOST = 'LOCALHOST';

/*
If we want to show the number of attempts to connect to the MySQL Server of locked accounts, we need the locked_connects variables. 
Each time we try to connect the locked user account, MySQL increases this variable's status by 1. See the below command:
*/
SHOW GLOBAL STATUS LIKE 'LOCKED_CONNECTS';