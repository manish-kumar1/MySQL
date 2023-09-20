USE MYDATABASE;

-- To remove this error, we first need to alter the table storage engine to MyISAM with the following query and then used the repair table statement.

ALTER TABLE STUDENTS ENGINE = 'MyISAM';

REPAIR TABLE STUDENTS;