ALTER TABLE orders
ALTER COLUMN total_amount TYPE MONEY
USING total_amount :: MONEY
---------------------------------------------------------
ALTER TABLE orders
ALTER COLUMN order_date TYPE DATE
USING order_date :: DATE