
/*
MYSQL JOIN ->
MySQL JOINS are used with SELECT statement. It is used to retrieve data from multiple tables. It is performed whenever you need to fetch records from two or more tables.

There are three types of join
1. inner join
2. left join
3. right join
*/
/*
1. INNER JOIN
The MySQL INNER JOIN is used to return all rows from multiple tables where the join condition is satisfied. It is the most common type of join.
SYNTAX
SELECT columns  
FROM table1   
INNER JOIN table2  
ON table1.column = table2.column;  
*/
SELECT CUSTOMER.CUSTOMER_ID, CUSTOMER.CUSTOMER_NAME, CUSTOMER.OCCUPATION, ORDERS.PROD_NAME
FROM CUSTOMER 
INNER JOIN ORDERS
ON CUSTOMER.CUSTOMER_ID = ORDER_ID; 

-- LEFT JOIN ->The LEFT OUTER JOIN returns all rows from the left hand table specified in the ON condition and only those rows from the other table where the join condition is fulfilled
/*
SELECT columns  
FROM table1  
LEFT [OUTER] JOIN table2  
ON table1.column = table2.column;  
*/
SELECT CUSTOMER.CUSTOMER_ID, CUSTOMER.CUSTOMER_NAME, CUSTOMER.OCCUPATION, ORDERS.PROD_NAME
FROM CUSTOMER 
LEFT JOIN ORDERS
ON CUSTOMER.CUSTOMER_ID = ORDERS.ORDER_ID;

-- RIGHT JOIN -> The MySQL Right Outer Join returns all rows from the RIGHT-hand table specified in the
-- ON condition and only those rows from the other table where he join condition is fulfilled.

/*
SELECT columns  
FROM table1  
RIGHT [OUTER] JOIN table2  
ON table1.column = table2.column; 
*/

SELECT CUSTOMER.CUSTOMER_ID, CUSTOMER.OCCUPATION, ORDERS.PROD_NAME
FROM CUSTOMER 
RIGHT JOIN ORDERS
ON CUSTOMER.CUSTOMER_ID = ORDERS.ORDER_ID;