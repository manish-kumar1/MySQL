-- NOT EQUAL -> MySQL Not Equal is an inequality operator that used for returning a set of rows after comparing two expressions that are not equal. 
-- The MySQL contains two types of Not Equal operator, which are (< >) and (! =).

SELECT *
FROM EMPLOYEE
WHERE ADDRESS <> "LOS ANGELES";  -- OR ADDRESS != "LOS ANGELES";