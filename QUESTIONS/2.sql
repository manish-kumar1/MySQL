
CREATE TABLE EMPLOYEE(
	EMP_ID INT NOT NULL AUTO_INCREMENT,
    FIRST_NAME VARCHAR(40),
    LAST_NAME VARCHAR(43),
    EMAIL VARCHAR(44) UNIQUE,
    PHONE_NO VARCHAR(20),
    DEPARTMENT VARCHAR(39),
    ADDRESS VARCHAR(43),
    SALARY INT,
    PRIMARY KEY(EMP_ID)
);
INSERT INTO EMPLOYEE
(EMP_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NO, DEPARTMENT, ADDRESS, SALARY)
VALUES
(1, 'Martin', 'King', 'martin@yahoo.com', '4304830430', 'CSE', 'Los Angeles', 1400),
(2, 'Peter', 'Aderson', 'peter@yahoo.com', '1556574162', 'ME', 'Washington', 1000),
(3, 'Jonson', 'Roy', 'jonson@yahoo.com', '9857458145', 'CIVIL', 'New York', 1200),
(4, 'John', 'Abrahm', 'john@yahoo.com', '7744714525', 'EEE', 'Los Angeles', 800),
(5, 'Belamidir', 'Putin', 'putin@yahoo.com', '6278458614', 'ECE', 'Washington', 1500),
(6, 'Alezary', 'Josheph', 'alezary@yahoo.com', '8492048122', 'CSE', 'Texus', 1400),
(7, 'Joe', 'Root', 'root@yahoo.com', '8745851478', 'ME', 'Calfornia', 1000),
(8, 'Stebin', 'Ben', 'stebin@yahoo.com', '8521479856', 'CSE', 'Texus', 1300),
(9, 'Elon', 'Musk', 'aleon@yahoo.com', '7744112255', 'ECE', 'Calfornia', 1100),
(10, 'Alex', 'Sen', 'alex@yahoo.com', '8844662232', 'CSE', 'New York', 1200);

SELECT *FROM EMPLOYEE;

SELECT FIRST_NAME
FROM EMPLOYEE
WHERE FIRST_NAME LIKE '%Z%';

SELECT FIRST_NAME 
FROM EMPLOYEE
WHERE DEPARTMENT = 'CSE'AND FIRST_NAME LIKE 'A%';