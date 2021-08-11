SELECT first_name, last_name, order_date, amount
FROM customers c
LEFT JOIN orders o
    ON c.id = o.customer_id; 

SELECT 
    first_name, 
    last_name,
    IFNULL(SUM(amount), 0) AS total_spent
FROM customers c
LEFT JOIN orders o
    ON c.id = o.customer_id
GROUP BY customers.id
ORDER BY total_spent;