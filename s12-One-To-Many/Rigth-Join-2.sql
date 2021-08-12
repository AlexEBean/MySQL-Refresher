SELECT 
    first_name,
    last_name,
    order_date, 
    amount, 
    SUM(amount)
FROM customers c
RIGHT JOIN orders o
    ON c.id = o.customer_id
GROUP BY first_name, last_name;

SELECT 
    IFNULL(first_name,'MISSING') AS first, 
    IFNULL(last_name,'USER') as last, 
    order_date, 
    amount, 
    SUM(amount)
FROM customers c
RIGHT JOIN orders o
    ON c.id = o.customer_id
GROUP BY first_name, last_name;