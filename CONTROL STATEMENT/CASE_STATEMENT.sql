
/*
CASE STATEMENT -> 
The CASE expression validates various conditions and returns the result when the first condition is true. Once the condition is met, 
it stops traversing and gives the output. If it will not find any condition true, it executes the else block.
 When the else block is not found, it returns a NULL value. 
 The main goal of MySQL CASE statement is to deal with multiple IF statements in the SELECT clause.
*/
/*
SYNTAX ->
CASE value   
    WHEN [compare_value] THEN result   
    [WHEN [compare_value] THEN result ...]   
    [ELSE result]   
END  
*/
SELECT CASE 1
	WHEN 1 THEN 'YES ONE' 
	WHEN 2 THEN 'ITS TWO'
	ELSE " DON'T KNOW "
END AS RESULT;

SELECT CASE 
	BINARY 'B' 
    WHEN 'a' THEN 1 
    WHEN 'b' THEN 2 
END AS RESULT;  



CREATE TABLE STUDENT(
	ID INT NOT NULL AUTO_INCREMENT,
    FIRSTNAME VARCHAR(40),
    LASTNAME VARCHAR(40),
    BRANCH VARCHAR(20),
    AGE INT,
    ADDRESS VARCHAR(40),
    FEES INT,
    PRIMARY KEY(ID)
);

INSERT INTO STUDENT
(ID, FIRSTNAME, LASTNAME, BRANCH, AGE, ADDRESS, FEES)
VALUES
(1, 'Ricky', 'Ponting', 'CSE', 20, 'Indore', 30000),
(2, 'Mark', 'Boucher', 'EEE', 22, 'Bhopal', 25000),
(3, 'Michael', 'Clark', 'CSE', 18, 'Jabalpur', 35000),
(4, 'Peter', 'Fleming', 'CSE', 22, 'Ujjain', 30000),
(5, 'Virat', 'Kohli', 'ECE', 23, 'Jhansi', 25000),
(6, 'Rohit', 'Sharma', 'Civil', 21, 'Narela', 40000);

SELECT *FROM STUDENT;

SELECT ID, FIRSTNAME, LASTNAME,
CASE BRANCH
	WHEN 'CSE' THEN 'Computer Science'
    WHEN 'EEE' THEN 'Electrical Engineering'
    WHEN 'ECE' THEN 'Electronics & Communication'
    ELSE 'Civil Engineering'
END AS Department FROM STUDENT;