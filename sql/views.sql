CREATE VIEW customer_ltv AS
SELECT
 c.name AS customer,
 SUM(o.total_price) AS lifetime_val
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.name;

SELECT * FROM customer_ltv ORDER BY lifetime_val DESC;
