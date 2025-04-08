INSERT INTO customers (id, name, address, phone, email, created_at, updated_at)
VALUES
 (1, 'Maria Anders', 'ObereStr.57', '49-3816003', 'maria.anders@yahoo.com', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00'),
 (2, 'Hanna Moos', 'Forsterstr.57', '49-1866002', 'hanna.moos@yahoo.com', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00'),
 (3, 'Henriette Pfalzheim', 'Mehrheimerstr.369', '49-2816003', 'henriette.pfalzheim@gmail.com', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00'),
 (4, 'Alexander Feuer', 'Heerstr.22', '49-8866003', 'alexander.feuer@gmail.com', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00'),
 (5, 'Renate Messner', 'Magazinweg 7', '49-3816003', 'renate.messner@yahoo.com', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00'),
 (6, 'Philip Cramer', 'Maubelstr. 90', '49-9866003', 'philip.cramer@yahoo.com', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00'),
 (7, 'Peter Franken', 'Berliner Platz 43','49-4816003', 'peter.franken@gmail.com', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00'),
 (8, 'Sven Ottlieb', 'Walserweg 21', '49-7866003', 'sven.ottlieb@gmail.com', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00'),
 (9, 'Rita Müller', 'Adenauerallee 900', '49-5816003', 'rita.müller@yahoo.com', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00'),
 (10, 'Horst Kloss', 'Taucherstraße 10', '49-9866003', 'horst.kloss@yahoo.com', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00');

INSERT INTO categories (id, name, description, created_at, updated_at)
VALUES
      (1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00'),
      (2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00' ),
      (3, 'Confections', 'Desserts, candies, and sweet breads', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00'),
      (4, 'Dairy Products',	'Cheeses', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00' ),
      (5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00' ),
      (6, 'Meat/Poultry', 'Prepared meats', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00' ),
      (7, 'Produce', 'Dried fruit and bean curd', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00') ,
      (8, 'Seafood',  'Seaweed and fish', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00' );

INSERT INTO suppliers (id, name, contact_name, phone, email, address, created_at, updated_at)
VALUES
      (1, 'Exotic Liquid', 'Charlotte Cooper', '(171) 555-2222', Null, '49 Gilbert St.', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00'),
      (2, 'New Orleans Cajun Delights', 'Shelley Burke', '(100) 555-4822', Null, 'P.O. Box 78934' , '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00' ),
      (3, 'Specialty Biscuits, Ltd.', 'Peter Wilson', '(161) 555-4448',Null, '29 King Way', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00'),
      (4, 'Bigfoot Breweries', 'Cheryl Saylor', '(503) 555-9931',Null, '3400-8th Avenue Suite 210', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00' ),
      (5, 'New England Seafood Cannery', 'Robb Merchant', '(617) 555-3267',Null, 'Order Processing Dept. 2100 Paul Revere Blvd.' ,  '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00' ),
      (6, 'Ma Maison', 	'Jean-Guy Lauzon', '(514) 555-9022', Null, '2960 Rue St. Laurent', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00' ),
      (7, 'Heli Süßwaren GmbH & Co. KG', 'Petra Winkler' , '(010) 9984510' , Null, 'Tiergartenstraße 5', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00') ,
      (8, 'Plutzer Lebensmittelgroßmärkte AG', 'Martin Bein', '(069) 992755', Null, 'Bogenallee 51' , '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00' ),
	(9, 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', '(04721) 8713', Null, 'Frahmredder 112a', '2025-04-06T09:40:41+00:00', '2025-04-06T09:40:41+00:00' );

INSERT INTO products (id, name, description, supplier_id, category_id, price, stock_quantity, created_at, updated_at )
VALUES
	(1, 'Aniseed Syrup', '12 - 550 ml bottles', 1, 2, 10, 12, '2025-04-07T05:27:47+00:00', '2025-04-07T05:27:47+00:00'),
	(2, 'Chef Anton Seasoning', '48 - 6 oz jars', 2, 2, 22, 48, '2025-04-07T05:27:47+00:00', '2025-04-07T05:27:47+00:00'),
	(3, 'Gumbo Mix', '36 boxes', 2, 2, 21.35, 36, '2025-04-07T05:27:47+00:00', '2025-04-07T05:27:47+00:00'),
	(4, 'Boysenberry Spread', '12 - 8 oz jars', 3, 2, 25, 12, '2025-04-07T05:27:47+00:00', '2025-04-07T05:27:47+00:00'),
	(5, 'Organic Dried Pears', '12 - 1 lb pkgs.', 3, 7, 30, 12, '2025-04-07T05:27:47+00:00', '2025-04-07T05:27:47+00:00'),
	(6, 'Cranberry Sauce', '12 - 12 oz jars', 3, 2, 40, 12, '2025-04-07T05:27:47+00:00', '2025-04-07T05:27:47+00:00'),
	(7, 'Konbu', '2 kg box ', 6, 8, 6, 2, '2025-04-07T05:27:47+00:00', '2025-04-07T05:27:47+00:00'),
	(8, 'Tofu', '40 - 100 g pkgs.', 6, 7, 23.25, 40, '2025-04-07T05:27:47+00:00', '2025-04-07T05:27:47+00:00');

INSERT INTO orders (id, customer_id, order_date, order_status, total_amount )
VALUES 
      (10248, 1, '2025-04-06', 'Delivered', '$8.7500' ),
      (10249, 2, '2025-04-06', 'Delivered', '$56.250'),
      (10250, 3, '2025-04-06', 'Delivered', '$85.675'),
      (10251, 4, '2025-04-07', 'Shipped', '$200.000'),
      (10252, 5, '2025-04-07', 'Shipped', '$145.600'),
      (10253, 6, '2025-04-07', 'Shipped', '$75.650'),
      (10254, 7, '2025-04-08', 'Pending', '$92.575'),
      (10255, 8, '2025-04-08', 'Pending', '$19.575'),
      (10256, 9, '2025-04-08', 'Pending', '$75.650'),
      (10257, 10, '2025-04-08', 'Cancelled', '$137.500');

	  