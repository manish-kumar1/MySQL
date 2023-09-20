
-- SHOW COLUMNS OF EXISTING DATABASE AND TABLE

SHOW COLUMNS FROM MYDATABASE.STUDENTS;

-- SHOW COLUMN USING DECS STATEMENT
DESC MYDATABASE.STUDENTS;

-- This query shows the column information that starts with the letter B only.
SHOW COLUMNS FROM MYDATABASE.STUDENTS LIKE'B%';

-- If we want to display hidden column information, we need to add the FULL keyword to the SHOW COLUMNS statement
SHOW FULL COLUMNS FROM MYDATABASE.STUDENTS;