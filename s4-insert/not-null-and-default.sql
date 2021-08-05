CREATE TABLE cats4( 
     name VARCHAR(100) NOT NULL DEFAULT 'unnamed',
     age  INT NOT NULL DEFAULT 99
  ); 

--   This is NOT redundant. Things can still be manually set to NULL if we don't specify NOT NULL.