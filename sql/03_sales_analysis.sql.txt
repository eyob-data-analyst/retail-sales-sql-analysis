--Query 1: Monthly sales revenue
---Business question: How much revenue did the shop generate each month?
SELECT
    DATE_TRUNC('month', o.order_date)::DATE AS sales_month,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY DATE_TRUNC('month', o.order_date)
ORDER BY sales_month;
 
---Query 2: Top five customers by spending
---Business question: Which customers generate the most sales?
SELECT
    c.customer_id,
    c.customer_name,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.quantity * oi.unit_price) AS total_spending
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY
    c.customer_id,
    c.customer_name
ORDER BY total_spending DESC
LIMIT 5;

 
---Query 3: Best-selling products
---Business question: Which products generate the most revenue, and how many units sell?
SELECT
    p.product_id,
    p.product_name,
    SUM(oi.quantity) AS units_sold,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM products p
JOIN order_items oi
    ON p.product_id = oi.product_id
GROUP BY
    p.product_id,
    p.product_name
ORDER BY total_revenue DESC;

--Query 4: Revenue by product category

--Business question: Which product categories contribute the most revenue?
SELECT
    p.category,
    SUM(oi.quantity) AS units_sold,
    SUM(oi.quantity * oi.unit_price) AS category_revenue,
    ROUND(
        100.0 * SUM(oi.quantity * oi.unit_price)
        / SUM(SUM(oi.quantity * oi.unit_price)) OVER (),
        2
    ) AS revenue_percentage
FROM products p
JOIN order_items oi
    ON p.product_id = oi.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;
