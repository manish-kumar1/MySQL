
-- LIKE OPERATOR '%C' -> PRINT ACCORDING TO END CHARRACTER 'C'
SELECT FIRSTNAME, BRANCH
FROM STUDENT
WHERE BRANCH LIKE '%E' OR FIRSTNAME LIKE '%T';

-- START CHARACTER 'R%' 
SELECT FIRSTNAME 
FROM STUDENT
WHERE FIRSTNAME LIKE 'R%';

-- 
-- WHERE CustomerName LIKE '%or%' ->	Finds any values that have "or" in any position
SELECT FIRSTNAME
FROM STUDENT
WHERE FIRSTNAME LIKE '%AT%';

-- WHERE CustomerName LIKE '_o%'	Finds any values that have "o" in the second position
SELECT FIRSTNAME
FROM STUDENT
WHERE FIRSTNAME LIKE '_O%';

-- WHERE CustomerName LIKE 'a_%'	Finds any values that start with "a" and are at least 2 characters in length
SELECT FIRSTNAME
FROM STUDENT
WHERE FIRSTNAME LIKE 'M_%';

-- WHERE CustomerName LIKE 'a__%'	Finds any values that start with "a" and are at least 3 characters in length
SELECT FIRSTNAME
FROM STUDENT
WHERE FIRSTNAME LIKE 'M__%';

-- WHERE ContactName LIKE 'a%o'	Finds any values that start with "a" and ends with "o"
SELECT FIRSTNAME
FROM STUDENT
WHERE FIRSTNAME LIKE 'V%T';
