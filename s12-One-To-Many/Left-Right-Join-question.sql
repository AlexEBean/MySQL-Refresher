

SELECT * FROM customers c
LEFT JOIN orders o
    ON c.id = o.customer_id;

-- Same result between above and below

SELECT * FROM orders o
RIGHT JOIN customers c
    ON c.id = o.customer_id;    



SELECT * FROM orders
LEFT JOIN customers
    ON customers.id = orders.customer_id;    

-- Same result between above and below

SELECT * FROM customers
RIGHT JOIN orders
    ON customers.id = orders.customer_id