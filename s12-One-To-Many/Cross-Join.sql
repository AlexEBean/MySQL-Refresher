SELECT id FROM customers WHERE last_name = 'George';
SELECT * FROM orders WHERE customer_id = 1;

-- This is the same thing using a subquery

SELECT * FROM orders WHERE customer_id =
    (
        SELECT id FROM customers
        WHERE last_name='George'
    );


-- This puts every combination of customer and order together

SELECT * FROM customers, orders;

-- This is the same thing

SELECT * FROM customers
CROSS JOIN orders;
