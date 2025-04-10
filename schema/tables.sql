create type order_status_enum AS enum ('Pending', 'Shipped', 'Delivered', 'Cancelled');

create type payment_method_enum AS enum ('Credit Card', 'Cash', 'PayPal', 'Bank Transfer');

create type status_enum AS enum ('In Transit', 'Delivered', 'Returned');

create type type_enum AS enum ('purchase', 'sale', 'return'); -- 'transfer' 

create table categories(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  description TEXT,
  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW()
);

create table suppliers(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  contact_name VARCHAR(255),
  phone VARCHAR(20) NOT NULL,
  email VARCHAR(255) UNIQUE,
  address TEXT,
  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW()
);

create table products(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  category_id INT NOT NULL,
  supplier_id INT Not NULL,
  price MONEY NOT NULL,
  stock_quantity INT NOT NULL DEFAULT 0,
  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE,
  FOREIGN KEY (supplier_id) REFERENCES suppliers(id) ON DELETE SET NULL
);

create table inventory(
  id SERIAL PRIMARY KEY,
  product_id INT NOT NULL,
  initial_stock INT CHECK (initial_stock >= 0),
  current_stock INT CHECK (current_stock >= 0),
  last_updated TIMESTAMP DEFAULT NOW(),
  CONSTRAINT fk_inventory_product FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE
);

create table customers(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  phone VARCHAR(255) NOT NULL,
  email VARCHAR(255) UNIQUE,
  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW()
);

create table orders(
  id SERIAL PRIMARY KEY,
  customer_id INT NOT NULL,
  order_date DATE DEFAULT NOW(),
  order_status order_status_enum NOT NULL,
  total_amount MONEY NOT NULL,
  CONSTRAINT fk_orders_customer FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE CASCADE
);

create table orderDetails(
  id SERIAL PRIMARY KEY,
  order_id INT NOT NULL,
  product_id INT NOT NULL,
  quantity INT CHECK (quantity > 0),
  unit_price MONEY NOT NULL,
  total_price MONEY NOT NULL,
  CONSTRAINT fk_orderDetails_order FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE,
  CONSTRAINT fk_orderDetails_product FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE
);

create table payments(
  id SERIAL PRIMARY KEY,
  order_id INT NOT NULL,
  amount MONEY NOT NULL,----
  payment_date DATE DEFAULT NOW(),---------
  payment_method payment_method_enum NOT NULL,
  CONSTRAINT fk_payments_order FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE
);

create table shipment(
  id SERIAL PRIMARY KEY,
  order_id INT NOT NULL,
  tracking_number INT NOT NULL,
  status status_enum NOT NULL,
  delivery_date TIMESTAMP DEFAULT NOW(),
  CONSTRAINT fk_shipment_order FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE
);

create table returns(
  id SERIAL PRIMARY KEY,
  order_id INT NOT NULL,
  product_id INT NOT NULL,
  quantity INT CHECK (quantity > 0),
  return_date TIMESTAMP DEFAULT NOW(),
  return_reason VARCHAR(255) NOT NULL,
  CONSTRAINT fk_returns_product FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE,
  CONSTRAINT fk_returns_order FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE
);

create table transactions(
  id SERIAL PRIMARY KEY,
  product_id INT NOT NULL,
  return_id INT,
  supplier_id INT, -- برای تراکنش‌های خرید (purchase)
  customer_id INT,  -- برای تراکنش‌های فروش (sale)
  type type_enum NOT NULL,
  quantity INT CHECK (quantity >= 0),
  unit_price DECIMAL(10,2) NOT NULL,
  total_price DECIMAL(10,2) NOT NULL,
  date TIMESTAMPTZ DEFAULT NOW(),
  CONSTRAINT fk_transactions_product FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE,
  CONSTRAINT fk_transactions_return FOREIGN KEY (return_id) REFERENCES returns(id) ON DELETE CASCADE,
  CONSTRAINT fk_transactions_supplier FOREIGN KEY (supplier_id) REFERENCES suppliers(id) ON DELETE CASCADE,
  CONSTRAINT fk_transactions_customer FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE CASCADE
);
