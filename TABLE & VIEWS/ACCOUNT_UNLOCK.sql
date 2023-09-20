
-- ACCOUNT UNLOCK
/*
SYNTAX
ALTER USER IF EXISTS USER_NAME@LOCALHOST ACCOUNT UNLOCK;
*/
ALTER USER IF EXISTS MANISH@LOCALHOST ACCOUNT UNLOCK;

-- IF WE WANT TO SEE USER DETAILS
/*
SYNTAX
SELECT USER, HOST, ACCOUNT_LOCKED
FROM MYSQL.USER
WHERE USER = USER_NAME AND HOST = 'LOCALHOST';
*/

SELECT USER, HOST, ACCOUNT_LOCKED
FROM MYSQL.USER
WHERE USER = 'MANISH' AND HOST = 'LOCALHOST';

-- MySQL also allows us to unlock multiple user accounts at the same time by using the below statement
/*
ALTER USER [IF EXISTS]   
    user_account_name1, user_account_name2, ...  
ACCOUNT UNLOCK;  
*/