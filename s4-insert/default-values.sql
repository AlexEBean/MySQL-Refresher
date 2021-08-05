CREATE TABLE cats3 ( 
     name VARCHAR(100) DEFAULT 'unnamed',
     age  INT DEFAULT 99
  ); 

INSERT INTO cats3(age) 
  VALUES(13);

-- Name will default to 'unamed'