CREATE TABLE unique_cats (
    cat_id INT NOT NULL,
    name VARCHAR(100), 
    age INT,
    PRIMARY KEY (cat_id)
);

INSERT INTO unique_cats(cat_id, name, age) VALUES(1, 'Fred', 23);

INSERT INTO unique_cats(cat_id, name, age) VALUES(2, 'Louise', 3);


INSERT INTO unique_cats(cat_id, name, age) VALUES(1, 'James', 3);


-- This last one will violate the primary key rule of there being only one with that value.

CREATE TABLE unique_cats2 (
    cat_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);

-- Serial Primary Key will auto-increment so you don't have to remember what number is next.
