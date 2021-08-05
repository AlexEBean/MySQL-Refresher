-- SELECT * 
-- will give all columns
-- You can replace the * with column names to get specific columns

SELECT * FROM cats; 

SELECT name FROM cats; 

SELECT age FROM cats; 

SELECT cat_id FROM cats; 

SELECT name, age FROM cats; 

SELECT cat_id, name, age FROM cats; 

SELECT age, breed, name, cat_id FROM cats; 

SELECT cat_id, name, age, breed FROM cats; 


-- WHERE

SELECT * FROM cats WHERE age = 4; 

SELECT * FROM cats WHERE name = 'Egg'; 

SELECT * FROM cats WHERE name = 'egG'; 

-- casing matters


