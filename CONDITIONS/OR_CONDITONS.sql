
-- OR CONDITION -> AND condition is used with SELECT, INSERT, UPDATE or DELETE statements to test two or more conditions in an individual query.
/* 
SYNTAX ->
	WHERE CONDITION_1
    OR CONDITION_2
    .... 
    OR CONDITION_N;
*/

SELECT *
FROM STUDENT 
WHERE BRANCH = 'ECE' OR FEES < 30000;