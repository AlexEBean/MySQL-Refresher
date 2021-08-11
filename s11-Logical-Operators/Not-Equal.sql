SELECT title FROM books WHERE released_year = 2017;
 
SELECT title FROM books WHERE released_year != 2017;
 
SELECT title, author_lname FROM books WHERE author_lname = 'Harris' ORDER BY author_lname;
 
SELECT title, author_lname FROM books WHERE author_lname != 'Harris' ORDER BY author_lname;