
-- EXISTS KEYWORD
/*
The EXISTS operator in MySQL is a type of Boolean operator which returns the true or false result. 
It is used in combination with a subquery and checks the existence of data in a subquery.
It means if a subquery returns any record, this operator returns true. Otherwise, it will return false.
*/

-- SYNTAX
/*
SELECT col_names  
FROM tab_name  
WHERE [NOT] EXISTS (  
    SELECT col_names   
    FROM tab_name   
    WHERE condition  
);  
*/

CREATE TABLE customerS(  
  cust_id int NOT NULL,  
  name varchar(35),  
  occupation varchar(25),  
  age int  
);  

CREATE TABLE orders (  
    order_id int NOT NULL,   
    cust_id int,   
    prod_name varchar(45),  
    order_date date  
); 

INSERT INTO customerS(cust_id, name, occupation, age)   
VALUES (101, 'Peter', 'Engineer', 32),  
(102, 'Joseph', 'Developer', 30),  
(103, 'John', 'Leader', 28),  
(104, 'Stephen', 'Scientist', 45),  
(105, 'Suzi', 'Carpenter', 26),  
(106, 'Bob', 'Actor', 25),  
(107, NULL, NULL, NULL);  


INSERT INTO orders (order_id, cust_id, prod_name, order_date)   
VALUES (1, '101', 'Laptop', '2020-01-10'),  
(2, '103', 'Desktop', '2020-02-12'),  
(3, '106', 'Iphone', '2020-02-15'),  
(4, '104', 'Mobile', '2020-03-05'),  
(5, '102', 'TV', '2020-03-20');  

SELECT name, occupation 
FROM customerS  
WHERE EXISTS (SELECT * FROM Orders   
			  WHERE customerS.cust_id = Orders.cust_id); 

-- NOT EXISTS
SELECT name, occupation 
FROM customerS  
WHERE NOT EXISTS (SELECT * FROM Orders   
				  WHERE customerS.cust_id = Orders.cust_id); 
                  
-- EXISTS With DELETE Statement
-- Suppose we want to delete a record from the Orders table whose order_id = 3, execute the following query that deletes the record from Orders table permanently:

DELETE FROM Orders WHERE EXISTS (  
SELECT * FROM customerS   
WHERE order_id = 3);

-- If we want to check whether a row exists in a table or not, use the following query:

SELECT EXISTS(SELECT * from customerS WHERE cust_id=104) AS Result;    