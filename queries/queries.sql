SELECT * FROM customers;
------------------------------------------------------------
SELECT name, phone FROM customers;
-------------------------------------------------------------
SELECT DISTINCT address FROM customers; ---without repetition
---------------------------------------------------------------
SELECT COUNT(DISTINCT email) FROM customers;
-----------------------------------------------------------------
SELECT COUNT(*) AS DistinctAddress 
FROM (SELECT DISTINCT address FROM customers) AS distinct_address;
---------------------------------------------------------------------
SELECT * FROM products
--WHERE stock_quantity = 12
WHERE supplier_id > 3;
----------------------------------------------------------------------
SELECT * FROM products
ORDER BY price DESC; --ASC|DESC;
-----------------------------------------------------------------------
SELECT * FROM products
ORDER BY name DESC;
-------------------------------------------------------------------------