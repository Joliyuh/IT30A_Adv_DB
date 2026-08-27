CREATE TABLE books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    book_title VARCHAR(50) NOT NULL,
    book_author VARCHAR(100) NOT NULL,
    book_category VARCHAR(50) NOT NULL,
    book_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO books (book_title, book_author, book_category) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction'),
('To Kill a Mockingbird', 'Harper Lee', 'Fiction'),
('1984', 'George Orwell', 'Dystopian'),
('Pride and Prejudice', 'Jane Austen', 'Romance'),
('The Catcher in the Rye', 'J.D. Salinger', 'Fiction');

CREATE TABLE borrow(
    borrow_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT NOT NULL,
    student_id INT NOT NULL,
    borrow_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    borrow_return_date TIMESTAMP NULL DEFAULT NULL,

    CONSTRAINT fk_borrow_students FOREIGN KEY (student_id)REFERENCES students(student_id),

    CONSTRAINT fk_borrow_book FOREIGN KEY (book_id)
    REFERENCES books(book_id)
);

INSERT INTO borrow (book_id, student_id) VALUES
(1, 2),
(2, 1),
(3, 3);

SELECT 
    br.borrow_id,

    s.student_id,
    CONCAT(
        s.student_first_name,
        ' ',
        s.student_last_name
    ) AS student_name,
    s.student_course,

    b.book_title,
    b.book_author,
    b.book_category,

    br.borrow_date

FROM borrow br
JOIN students s ON 
    br.student_id = s.student_id
JOIN books b ON
    br.book_id = b.book_id

WHERE br.borrow_return_date IS NULL
ORDER BY br.borrow_date DESC;


-- August 27,2026SELECT 
    SELECT 

    br.borrow_id,


    CONCAT(
        s.student_first_name,
        ' ',
        s.student_last_name
    ) AS student_name,
    s.student_course,

    b.book_title,
    b.book_author,
    b.book_category,

    br.borrow_date,
    br.borrow_return_date

FROM borrow br
JOIN students s ON 
    br.student_id = s.student_id
JOIN books b ON
    br.book_id = b.book_id

WHERE br.borrow_return_date IS NULL
ORDER BY br.borrow_date DESC;

UPDATE borrow
SET borrow_return_date = CURRENT_TIMESTAMP
--Set borrow id for the borrowed book you want to return
WHERE borrow_id = 1 AND borrow_return_date IS NULL;


SELECT 
    br.borrow_id,

    CONCAT(
        s.student_first_name,
        ' ',
        s.student_last_name
    ) AS student_name,
    s.student_course,

    b.book_title,
    b.book_author,
    b.book_category,

    br.borrow_date,
    br.borrow_return_date

FROM borrow br
JOIN students s ON 
    br.student_id = s.student_id
JOIN books b ON
    br.book_id = b.book_id

WHERE br.borrow_return_date IS NOT NULL
ORDER BY br.borrow_date DESC;


