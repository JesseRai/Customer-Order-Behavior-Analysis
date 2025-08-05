SELECT o.order_id, c.name AS customer, p.product_name, oi.quantity, oi.price
 FROM  order_items oi
 JOIN orders o ON oi.order_id = o.order_id
 JOIN customers c ON o.customer_id = c.customer_id
 JOIN products p ON oi.product_id = p.product_id
 ORDER BY o.order_id;

 SELECT 
 	c.name AS customer,
 	ROUND(SUM(o.total_price), 2) AS lifetime_value
 FROM orders o
 JOIN customers c ON o.customer_id = c.customer_id
 GROUP BY c.name
 ORDER BY lifetime_value DESC;

 SELECT 
 	p.product_name,
 	SUM(oi.quantity) AS total_quantity
 FROM order_items oi
 JOIN products p ON oi.product_id = p.product_id
 GROUP BY p.product_name
 ORDER BY total_quantity DESC;

 SELECT 
 	p.category,
 	ROUND(SUM(oi.quantity * oi.price), 2) AS total_revenue
 FROM order_items oi
 JOIN products p ON oi.product_id = p.product_id
 GROUP BY p.category
 ORDER BY total_revenue DESC;

 SELECT 
 	c.name,
 	COUNT(o.order_id) AS order_count,
 	CASE
 		WHEN COUNT(o.order_id) >= 3 THEN 'High'
 		WHEN COUNT(o.order_id) = 2 THEN 'Medium'
 		ELSE 'Low'
 	END AS segment
 FROM customers c
 JOIN orders o ON c.customer_id = o.customer_id
 GROUP BY c.name
 ORDER BY order_count DESC;

 SELECT 
 	DATE_TRUNC('month', order_date) AS month,
 	COUNT(order_id) AS total_orders,
 	ROUND(SUM(total_price), 2) AS revenue
 FROM orders
 GROUP BY month
 ORDER BY month;
