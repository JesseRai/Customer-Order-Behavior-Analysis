REATE TABLE customers (
 	customer_id SERIAL PRIMARY KEY,
 	name TEXT,
 	location TEXT
 	);

 CREATE TABLE products (
 	product_id SERIAL PRIMARY KEY,
 	product_name TEXT,
 	category TEXT
 	);
	
 CREATE TABLE orders (
 	order_id SERIAL PRIMARY KEY,
 	customer_id INT REFERENCES customers(customer_id),
 	order_date DATE,
 	total_price NUMERIC
 	);

 CREATE TABLE order_items (
 	order_item_id SERIAL PRIMARY KEY,
 	order_id INT REFERENCES orders(order_id),
 	product_id INT REFERENCES products(product_id),
 	quantity INT,
 	price NUMERIC
 	);
