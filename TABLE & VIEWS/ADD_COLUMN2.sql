
-- ADD COLUMN IN EXISTING TABLE
/*
SYNTAX
ALTER TABLE table_name   
    ADD COLUMN column_name1 column_definition [FIRST|AFTER existing_column],  
    ADD COLUMN column_name2 column_definition [FIRST|AFTER existing_column];  
*/

ALTER TABLE MEMBERSHIPS
    -- ADD COLUMN LOCATION VARCHAR(30) NOT NULL FIRST,
    ADD COLUMN RUPEES_IND INT NOT NULL AFTER PLAN;
    
    SELECT *FROM MEMBERSHIPS;