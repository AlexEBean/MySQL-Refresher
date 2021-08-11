-- A good use case for CHAR is anything that has a fixed length, like a state abbreviation or Y / N answer

CREATE TABLE inventory (
    item_name VARCHAR(500),
    price DECIMAL(8, 2),
    quantity INT
);

-- They both store datetime information, but there's a difference in the range, 
-- TIMESTAMP has a smaller range. TIMESTAMP also takes up less space. 
-- TIMESTAMP is used for things like meta-data about when something is created
-- or updated.

SELECT CURTIME();

SELECT CURDATE();

SELECT DAYOFWEEK(NOW());
-- SELECT DAYOFWEEK(CURDATE())' also works
-- SELECT DATE_FORMAT(NOW(), '%w') + 1; is yet another possible solution

SELECT DAYNAME(NOW());
-- SELECT DATE_FORMAT(NOW(), '%W'); also works

SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');

SELECT DATE_FORMAT(NOW(), '%M %D %Y at %h:%i');

CREATE TABLE tweets(
    content VARCHAR(140),
    username VARCHAR(20),
    created_at TIMESTAMP DEFAULT NOW()
);