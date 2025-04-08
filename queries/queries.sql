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
SELECT * FROM products
WHERE stock_quantity > 12 AND name LIKE 'T%' AND name LIKE '%u';
--------------------------------------------------------------------------
SELECT * FROM products
WHERE  stock_quantity >= 12 AND (name LIKE 'C%' OR name LIKE '%s');
---------------------------------------------------------------------------
SELECT * FROM products
WHERE  stock_quantity >= 12 AND (name LIKE 'C%' OR name LIKE 'K%');
------------------------------------------------------------------------------------------
SELECT * FROM products
WHERE  stock_quantity >= 12 AND name LIKE 'C%' OR name LIKE 'K%';---Without parenthesis,
------------------------------------------------------------------------------------------
SELECT * FROM orders
WHERE NOT order_status = 'Delivered';
------------------------------------------------------------------------------------------
SELECT * FROM products
WHERE stock_quantity > 12 AND name NOT LIKE 'T%' OR name NOT LIKE '%u';
-------------------------------------------------------------------------------------------
SELECT * FROM products
WHERE category_id NOT BETWEEN 1 AND 6; ---between must be number not string;
--------------------------------------------------------------------------------------------