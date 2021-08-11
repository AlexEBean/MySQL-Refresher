-- DECIMAL(total number of digits, digits after decimal)

-- Also, DECIMAL is best for price because of precision

CREATE TABLE items(price DECIMAL(5,2));
 
INSERT INTO items(price) VALUES(7);
 
INSERT INTO items(price) VALUES(7987654);

-- Error for being longer than 5 digits
-- Or truncated to 999.99
 
INSERT INTO items(price) VALUES(34.88);
 
INSERT INTO items(price) VALUES(298.9999);

-- This is rounded up to 299.00
 
INSERT INTO items(price) VALUES(1.9999);

-- This is rounded up to 2.00
 
SELECT * FROM items;