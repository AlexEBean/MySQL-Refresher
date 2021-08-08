SELECT REVERSE('Hello World');

-- 'dlroW olleH'

SELECT REVERSE(author_fname) FROM books;

-- 'apmuhJ'
-- 'lieN'

SELECT CONCAT(author_fname, ' ', REVERSE(author_fname)) FROM books;

-- 'Jhumpa apmuhJ'
-- 'Neil lieN'