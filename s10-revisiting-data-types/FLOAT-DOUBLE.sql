-- They store larger numbers using less space, but it comes at the cost of precision.
-- FLOAT and DOUBLE are approximate.
-- FLOAT will have precision issues after about 7 digits.
-- DOUBLE will have precision issues after about 15 digits.
-- If you're using giant numbers where you don't need to be too precise, then you could use FLOAT or DOUBLE.

CREATE TABLE thingies (price FLOAT);
 
INSERT INTO thingies(price) VALUES (88.45);
 
SELECT * FROM thingies;
 
INSERT INTO thingies(price) VALUES (8877.45);
 
SELECT * FROM thingies;
 
INSERT INTO thingies(price) VALUES (8877665544.45);

-- We get '8877670000' instead
 
SELECT * FROM thingies;