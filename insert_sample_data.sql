 INSERT INTO customers (name, location) VALUES
 ('Alice Smith', 'London'),
 ('Bob Johnson', 'Manchester'),
 ('Charlie Lee', 'Birmingham'),
 ('Diana Grant', 'Leeds');

 INSERT INTO products(product_name, category) VALUES
 ('Wireless Mouse', 'Electronics'),
 ('Bluetooth Speaker', 'Electronics'),
 ('Running Shoes', 'Footwear'),
 ('T-Shirt', 'Apparel'),
 ('Water Bottle', 'Accessories');

 INSERT INTO orders(customer_id, order_date, total_price) VALUES
 (1, '2025-07-01', 59.98),
 (2, '2025-07-02', 99.99),
 (1, '2025-07-10', 34.99),
 (3, '2025-07-12', 49.99),
 (4, '2025-07-15', 79.98);

 INSERT INTO order_items(order_id, product_id, quantity, price) VALUES
 (1, 1, 1, 29.99),
 (1, 5, 1, 29.99),
 (2, 2, 1, 99.99),
 (3, 4, 1, 34.99),
 (4, 3, 1, 49.99),
 (5, 3, 1, 39.99),
 (5, 5, 2, 19.99);
