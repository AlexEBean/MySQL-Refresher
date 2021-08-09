SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';

-- Pulls anything that has 'da' has part of the first name
 
SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';

-- Pulls anything that has a first name that starts with 'da'
 
SELECT title FROM books WHERE  title LIKE 'the';

-- This doesn't work because it's looking  for 'the'
 
SELECT title FROM books WHERE  title LIKE '%the';

-- This doesn't work either because it's looking for a titles that end with 'the'
 
SELECT title FROM books WHERE title LIKE '%the%';

-- This is what we want if we are looking for all books where 'the' is anywhere in the title.