-- Create 
        -- INSERT INTO
-- Read
        -- SELECT
-- Update
-- Delete



-- Preparing data so we can start with new tables that already have information we can use

DROP TABLE cats

CREATE TABLE cats ( 
    cat_id SERIAL PRIMARY KEY, 
    name   VARCHAR(100), 
    breed  VARCHAR(100), 
    age    INT 
);

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);