--Data quality checks

--Business question: Is the data complete, and are there duplicate or inconsistent records?
-- 1. Check missing customer names
SELECT
    'Missing customer name' AS issue,
    COUNT(*) AS issue_count
FROM customers
WHERE customer_name IS NULL
   OR TRIM(customer_name) = ''

 -- 2. Check missing product categories
SELECT
    'Missing product category',
    COUNT(*)
FROM products
WHERE category IS NULL
   OR TRIM(category) = ''

-- 3. Check duplicate order IDs
SELECT
    'Duplicate order ID',
    COUNT(*)
FROM (
    SELECT order_id
    FROM orders
    GROUP BY order_id
    HAVING COUNT(*) > 1
) d

 -- 4. Check duplicate product lines
SELECT
    'Repeated product within order',
    COUNT(*)
FROM (
    SELECT order_id, product_id
    FROM order_items
    GROUP BY order_id, product_id
    HAVING COUNT(*) > 1
) d

-- 5. Check invalid quantities
SELECT
    'Invalid quantity',
    COUNT(*)
FROM order_items
WHERE quantity IS NULL OR quantity <= 0;
 
