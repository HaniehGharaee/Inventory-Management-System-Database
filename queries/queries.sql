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
---------------------------------------------------------------------------------------------
SELECT * FROM suppliers
WHERE address LIKE '%Washington DC%';

