CREATE DATABASE Optimization;
USE Optimization;

-- NOToptimized (AI-generated) query
EXPLAIN ANALYZE
SELECT
  c.customer_id,
  c.first_name,
  c.last_name,
  c.city,
  COUNT(o.order_id) AS total_orders,
  SUM(o.quantity * p.price) AS total_spent,
  MAX(o.order_date) AS last_order_date
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
WHERE c.city = 'Kyiv'
  AND (o.status = 'SHIPPED' OR o.status = 'NEW')
GROUP BY c.customer_id, c.first_name, c.last_name, c.city
HAVING total_orders > 0
ORDER BY total_spent DESC;

-- optymized query
ALTER TABLE customers 
ADD PRIMARY KEY (customer_id);

ALTER TABLE products 
ADD PRIMARY KEY (product_id);

ALTER TABLE orders 
ADD PRIMARY KEY (order_id);

ALTER TABLE customers MODIFY city VARCHAR(100);
ALTER TABLE orders MODIFY status VARCHAR(20);

CREATE INDEX idx_customers_city ON customers(city);
CREATE INDEX idx_products_id_price ON products(product_id, price);
CREATE INDEX idx_orders_status_customer ON orders(status, customer_id);

EXPLAIN ANALYZE
WITH filtered_orders AS (
    SELECT o.customer_id, o.product_id, o.quantity, o.order_date
    FROM orders o
    JOIN customers c USE INDEX (idx_customers_city)
      ON o.customer_id = c.customer_id
    WHERE o.status IN ('SHIPPED', 'NEW') AND c.city = 'Kyiv'
)
SELECT f.customer_id,
    c.first_name, c.last_name, c.city,
    COUNT(*) AS total_orders,
    SUM(f.quantity * p.price) AS total_spent,
    MAX(f.order_date) AS last_order_date
FROM filtered_orders f
JOIN customers c  ON f.customer_id = c.customer_id
JOIN products p USE INDEX (idx_products_id_price) ON f.product_id = p.product_id
GROUP BY f.customer_id, c.first_name, c.last_name, c.city
ORDER BY total_spent DESC;
