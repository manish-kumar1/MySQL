
-- AND -> AND condition is used with SELECT, INSERT, UPDATE or DELETE statements to test two or more conditions in an individual query.

/* 
SYNTAX ->
	WHERE CONDITION_1
    AND CONDITION_2
    .... 
    AND CONDITION_N;
*/

SELECT *
FROM STUDENT
WHERE BRANCH = 'CSE' AND FEES >= 25000;

