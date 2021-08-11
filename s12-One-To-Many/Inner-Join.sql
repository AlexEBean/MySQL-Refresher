-- Implicit INNER JOIN

SELECT first_name, last_name, order_date, amount
FROM customers, orders 
    WHERE customers.id = orders.customer_id;

-- Explicit INNER JOIN

SELECT * FROM customers
JOIN orders
    ON customers.id = orders.customer_id;