SELECT author_fname, 
       author_lname, 
       MIN(released_year) 
FROM   books 
GROUP  BY author_lname, 
          author_fname;

-- Produces a list of authors with the year they published their first book.  The list is organized alphabetically by last name, then first name
 
SELECT
  author_fname,
  author_lname,
  MAX(pages)
FROM books
GROUP BY author_lname,
         author_fname;

-- Produces a list of authors with the most pages they have written for a single book.  The list is organized alphabetically by last name, then first name

SELECT
  CONCAT(author_fname, ' ', author_lname) AS author,
  MAX(pages) AS 'longest book'
FROM books
GROUP BY author_lname,
         author_fname;

-- Produces a cleaner result with the same information as the previous command