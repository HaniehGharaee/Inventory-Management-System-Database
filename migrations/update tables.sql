ALTER TABLE orders
ALTER COLUMN total_amount TYPE MONEY
USING total_amount :: MONEY
---------------------------------------------------------
ALTER TABLE orders
ALTER COLUMN order_date TYPE DATE
USING order_date :: DATE
----------------------------------------------------------
ALTER TABLE orderDetails
ADD COLUMN order_id INT NOT NULL
ADD CONSTRAINT fk_orderDetails_order
FOREIGN KEY (order_id) REFERENCES orders(id)
ON DELETE CASCADE; 
-----------------------------------------------------------
ALTER TABLE orderDetails
ALTER COLUMN unit_price TYPE MONEY
USING unit_price :: MONEY
------------------------------------------------------------
ALTER TABLE orderDetails
ALTER COLUMN total_price TYPE MONEY
USING total_price :: MONEY
-------------------------------------------------------------
ALTER TABLE products
ALTER COLUMN price TYPE MONEY
USING price :: MONEY
---------------------------------------------------------------
ALTER TABLE payments
ALTER COLUMN payment_date TYPE DATE
USING payment_date :: DATE
---------------------------------------------------------------
ALTER TABLE payments
ALTER COLUMN amount TYPE MONEY
USING amount :: MONEY