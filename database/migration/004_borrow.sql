-- Find books that are currently borrowed
SELECT
    br.borrow_id,

    -- Student Name
    CONCAT(st.student_first_name, ' ', st.student_last_name) AS student_name,

    -- Books
    bk.book_title,
    bk.book_author,
    bk.book_category,

    -- Borrow Date
    br.borrow_date

FROM borrow br

INNER JOIN students st
    ON br.student_id = st.student_id

INNER JOIN books bk
    ON br.book_id = bk.book_id

WHERE br.borrow_return_date IS NULL

ORDER BY br.borrow_date DESC;

-- Return a book
UPDATE borrow
SET borrow_return_date = CURRENT_TIMESTAMP
WHERE borrow_id = 1
    AND borrow_return_date IS NULL;

-- View returned books
SELECT
    br.borrow_id,

    -- Student Name
    CONCAT(st.student_first_name, ' ', st.student_last_name) AS student_name,

    -- Books
    bk.book_title,
    bk.book_author,
    bk.book_category,

    -- Borrow Date
    br.borrow_date

FROM borrow br

INNER JOIN students st
    ON br.student_id = st.student_id

INNER JOIN books bk
    ON br.book_id = bk.book_id

WHERE br.borrow_return_date IS NOT NULL
ORDER BY borrow_date DESC;
