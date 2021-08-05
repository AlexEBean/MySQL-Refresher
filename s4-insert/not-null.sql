INSERT INTO cats(name) VALUES('Alabama'); 

SELECT * FROM cats;

-- Age will be NULL

INSERT INTO cats() VALUES();

-- If it doesn't throw an error, this will make a row with both columns as NULL.  

CREATE TABLE cats2 (
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
  );

--  NOT NULL prevents something being null, but  it will throw a warning that the respective column does not have a default value

INSERT INTO cats2(name) VALUES('Texas');

SELECT * FROM cats2;