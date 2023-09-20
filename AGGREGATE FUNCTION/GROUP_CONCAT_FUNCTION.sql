
CREATE TABLE EMP(
	EMPID INT,
    FNAME VARCHAR(34),
    LNAME VARCHAR(43),
    DEPTID INT,
    DESIGNATION VARCHAR(34)
);

INSERT INTO EMP
(EMPID, FNAME, LNAME, DEPTID, DESIGNATION)
VALUES
(1, 'DEVID', 'MILLER', 2, 'ENGINEER'),
(2, 'PETER', 'WATSON', 3, 'MANAGER'),
(3, 'MARK', 'BOUCHER', 1, 'SCIENTIST'),
(2, 'PETER', 'WATSON', 3, 'BDE'),
(1, 'DEVID', 'MILLER', 2, 'DEVELOPER'),
(4, 'ADAM', 'WARNER', 4, 'RECEPTIONIST'),
(3, 'MARK', 'BOUCHER', 1, 'ENGINEER'),
(4, 'ADAM', 'WARNER', 4, 'CLERK');

SELECT  EMPID,
GROUP_CONCAT(DESIGNATION) AS "DESIGNATION" 
FROM EMP 
GROUP BY EMPID;
