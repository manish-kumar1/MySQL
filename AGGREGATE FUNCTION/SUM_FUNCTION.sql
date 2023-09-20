

/*
SUM() -> sum() function is used to return the total summed value of an expression. 
It returns NULL if the result set does not have any rows. It is one of the kinds of aggregate functions in MySQL.

SYNTAX ->
SELECT SUM(aggregate_expression)    
FROM tables    
[WHERE conditions]; 

*/
CREATE TABLE WORKER(
	ID INT,
    NAME VARCHAR(43),
    OCCUPATION VARCHAR(34),
    WORKING_HOURS INT 
);

INSERT INTO WORKER 
(ID, NAME, OCCUPATION, WORKING_HOURS)
VALUES
(1, 'JOSHEPH', 'BUSINESS', 10),
(2, 'STEPHEN', 'DOCTOR', 15),
(3, 'MARK', 'ENGINEER', 12),
(4, 'PETER', 'TEACHER', 9),
(1, 'JOSHEPH', 'BUSINESS', 10),
(2, 'STEPHEN', 'DOCTOR', 15),
(4, 'PETER', 'TEACHER', 9),
(3, 'MARK', 'ENGINEER', 12),
(1, 'JOSHEPH', 'BUSINESS', 10),
(4, 'PETER', 'TEACHER', 9);


-- SUM()
SELECT SUM(ID) AS 'TOTAL_ID' FROM WORKER;

-- SUM() WITH WHERE CLAUSE
SELECT SUM(ID) TOTAL_ID 
FROM WORKER
WHERE ID >= 3;

-- SUM() WITH GROUP BY 
SELECT ID, NAME, OCCUPATION,
SUM(WORKING_HOURS) AS 'TOTAL_WORKING_HOURS' 
FROM WORKER
GROUP BY OCCUPATION;