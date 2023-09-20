

-- selected information like as hostname, password expiration status, and account locking

SELECT user, host, account_locked, password_expired FROM MYSQL.USER; 
