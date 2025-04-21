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
SELECT * FROM orderDetails
WHERE NOT quantity > 1;
--------------------------------------------------------------------------------------------
UPDATE payments
SET amount = '$300.500', payment_date = '2025-04-07'
WHERE id = 4;
--------------------------------------------------------------------------------------------
UPDATE suppliers
SET address = 'Washington DC. 49 Gilbert St.'
WHERE id = 1;
--------------------------------------------------------------------------------------------
UPDATE suppliers 
SET address = CASE
    WHEN id = 2 THEN 'Washington DC. P.O. Box 78934'
    WHEN id = 4 THEN 'Washington DC. 3400-8th Avenue Suite 210'
    WHEN id = 8 THEN 'Washington DC. Bogenallee 51'
    ELSE address
END 
WHERE id IN (2, 4, 8)
--------------------------------------------------------------------------------------------
UPDATE suppliers
SET contact_name = 'Juan'
WHERE LOWER(address) LIKE '%Washington DC%';
---------------------------------------------------------
SELECT * FROM suppliers
WHERE address LIKE '%Washington DC%';
----------------------------------------------------------------- 
DELETE FROM customers WHERE name='Peter Franken' 
DELETE FROM customers ---DELETE All Records
-----------------------------------------------------------------
SELECT TOP 3 * FROM customers; ---JUST SQL Server (Microsoft SQL)
SELECT * FROM customers -------Correct query in PostgreSQL:
LIMIT 3;
SELECT TOP 50 PERCENT * FROM customers;---JUST SQL Server
-------------------------------------------------------------------
SELECT * FROM customers
FETCH FIRST 3 ROWS ONLY;
-------------------------------------------------------------------
SELECT * FROM inventory
WHERE current_stock < 100
LIMIT 3;
--------------------------------------------------------------------
SELECT * FROM suppliers
ORDER BY name DESC
LIMIT 3; ----OR FETCH FIRST 3 ROWS ONLY;
--------------------------------------------------------------------
SELECT MIN(price)
FROM Products ---it can with WHERE
SELECT MAX(price)
FROM products ---it can with WHERE
--------------------------------------------------------------------
SELECT MIN(price) AS SmallestPrice
FROM Products
----------------------------------------------------------------------------------------------------------
SELECT MIN(price) AS SmallestPrice, category_id
FROM products
GROUP BY category_id ---Returns the lowest price for each category based on how many categories you have.
------------------------------------------------------------------------------------------------------------
SELECT COUNT(*)
FROM products ---it can with WHERE
------------------------------------------------------------------------------------------------------------
SELECT COUNT(id)
FROM products
WHERE price > '$20'
------------------------------------------------------------------------------------------------------------
SELECT COUNT (DISTINCT quantity) As "quantity Orde Details"
FROM orderDetails
-------------------------------------------------------------------------------------------------------------
SELECT COUNT(*) As "Number of records", quantity
FROM orderDetails
GROUP BY quantity
-------------------------------------------------------------------------------------------------------------
SELECT SUM(quantity) AS total
FROM orderDetails ---it can with WHERE
--WHERE product_id = 11
GROUP BY order_id
-------------------------------------------------------------------------------------------------------------
SELECT initial_stock, SUM(current_stock * 10) AS "Total Quantity" ---AS [Total Quantity] is not support in postgreSql
From inventory 
GROUP BY initial_stock
---------------------------in sum we have a query with LEFT JOIN----------------------------------------------
SELECT AVG(initial_stock) AS "Average Price"
FROM inventory
WHERE product_id = 8
--------------------------------------------------------------------------------------------------------------
SELECT * 
FROM orderDetails AS "AveragePrice"
WHERE total_price::numeric > (
  SELECT AVG(total_price::numeric)
  FROM orderDetails
);
--------------------------------------------------------------------------------------------------------------
SELECT * FROM customers
WHERE address LIKE '%r.57'
-----------------------------------------------------------------------------------------------------------


