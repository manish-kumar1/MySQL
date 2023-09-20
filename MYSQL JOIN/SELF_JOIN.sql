
-- SELF JOIN

/*
A SELF JOIN is a join that is used to join a table with itself. In the previous sections, we have learned about the joining of the table with the other tables using different JOINS, such as INNER, LEFT, RIGHT, and CROSS JOIN. However, there is a need to combine data with other data in the same table itself. In that case, we use Self Join.

We can perform Self Join using table aliases. The table aliases allow us not to use the same table name twice with a single statement. If we use the same table name more than one time in a single query without table aliases, it will throw an error.

The table aliases enable us to use the temporary name of the table that we are going to use in the query. Let us understand the table aliases with the following explanation.

Suppose we have a table named "student" that is going to use twice in the single query. To aliases the student table, we can write it as:

Select … FROM student AS S1   
INNER JOIN student AS S2;  

SYNTAX

SELECT s1.col_name, s2.col_name...  
FROM table1 AS s1, table1 s2  
WHERE s1.common_col_name = s2.common_col_name;  
*/

SELECT S1.CUSTOMER_ID, S2.OCCUPATION
FROM CUSTOMER AS S1, CUSTOMER S2
WHERE (S1.CUSTOMER_ID = S2.CUSTOMER_ID OR S1.QUALIFICATION <> S2.QUALIFICATION);