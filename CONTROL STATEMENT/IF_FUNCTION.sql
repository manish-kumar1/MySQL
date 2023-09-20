-- IF()
/*
The IF function takes three expressions, where the first expression will be evaluated. 
If the first expression evaluates to true, not null, and not zero, it returns the second expression. 
If the result is false, it returns the third expression. 
*/
 
-- SYNTAX -> IF(EXPRESSION_1, EXPRESSION_2, EXPRESSION_3)
-- IF (EXPRESSION_1 WILL BE TRUE, EXECUTE EXPRESSION_2 OTHERWISE EXPRESSION_3)

SELECT IF(200 > 100 , 'YES', 'NO') AS 'RESULT'; 

SELECT IF(23 < 10, 'TRUE', 'FALSE') AS 'RESULT';

SELECT IF('MANISH' = 'MANISHI', 10+12, 10*3) AS 'ANS';

SELECT IF(STRCMP('Rinky Ponting','Yuvraj Singh')=0, 'Correct', 'Wrong');  


SELECT NAME, SALARY, ADDRESS,
IF( (SALARY = 30000 OR SALARY > 30000), ID, 'FALSE')
AS RESULT
FROM FACULTY;