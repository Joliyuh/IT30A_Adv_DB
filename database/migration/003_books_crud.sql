-- Book SQL #1
SELECT * FROM books;

-- Book Query #2 - Select book order by id ASC
SELECT * FROM books
ORDER BY book_id ASC;

-- Book Query #3 - Select books order by id DESC
SELECT * FROM books
    ORDER BY book_id DESC;

-- Book Query #4 - Select books order by title ASC
SELECT 
    book_title,
    book_author,
    book_category
FROM books
    ORDER BY book_title ASC;

-- Book Query #5 - Select books order by title DESC
SELECT 
    book_title,
    book_author,
    book_category
FROM books
    ORDER BY book_title DESC;

-- Book Query #6 - Select books order by author ASC
SELECT 
    book_title,
    book_author,
    book_category
FROM books
    ORDER BY book_author ASC;

-- Book Query #7 - Select books order by author DESC
SELECT 
    book_title,
    book_author,
    book_category
FROM books
    ORDER BY book_author DESC;

-- Book Query #8 - Select books with specific id number
SELECT 
    book_title,
    book_author,
    book_category
FROM books
WHERE book_id = 5
LIMIT 1;

-- Book Query #9 - Update book title and author using specific id number
UPDATE books
SET
    book_title = "The Catcher in the Rye",
    book_author = "D.J. Salinger",
    book_category = "noitcif"
WHERE book_id = 5;









