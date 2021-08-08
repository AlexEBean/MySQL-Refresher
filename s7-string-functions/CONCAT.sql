SELECT
  CONCAT(author_fname, ' ', author_lname)
FROM books;

-- 'Jhumpa Lahiri'
-- 'Neil Gaiman'

SELECT 
    CONCAT_WS(' - ', title, author_fname, author_lname) 
FROM books;

-- 'The Namesake - Jhumpa - Lahiri'
-- 'Norse Mythology - Neil - Gaiman'
