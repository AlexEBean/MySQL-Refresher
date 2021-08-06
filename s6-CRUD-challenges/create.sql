CREATE TABLE


CREATE DATABASE shirts_db;
 
USE shirts_db;
  
CREATE TABLE shirts(
	shirt_id SERIAL PRIMARY KEY,
    article VARCHAR(100),
    color VARCHAR(100),
    shirt_size VARCHAR(100),
    last_worn INT
);
 
INSERT INTO shirts (article, color, shirt_size, last_worn) 
VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

SELECT * FROM shirts;

INSERT INTO shirts (article, color, shirt_size, last_worn) 
VALUES ('polo shirt', 'purple', 'M', 50);

SELECT * FROM shirts;