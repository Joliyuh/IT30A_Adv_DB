-- Students SQL #1
SELECT * FROM students;

-- Students Query #2 - Select students order by id ASC
SELECT * FROM students
    ORDER BY student_id ASC;

-- Students Query #3 - Select students order by id DESC
SELECT * FROM students
    ORDER BY student_id DESC;

-- Students Query #4 - Select students order by last_name ASC
SELECT 
    student_last_name,
    student_first_name
FROM students
ORDER BY student_last_name ASC;

-- Students Query #5 - Select students order by last_name DESC
SELECT 
    student_last_name,
    student_first_name
FROM students
ORDER BY student_last_name DESC;

-- Students Query #6 - Select students order by first_name ASC
SELECT 
    student_first_name,
    student_last_name
FROM students
ORDER BY student_first_name ASC;

-- Students Query #7 - Select students order by first_name DESC
SELECT 
    student_first_name,
    student_last_name
FROM students
ORDER BY student_first_name DESC;

-- Students Query #8 - Select student with specific id number
SELECT 
    student_first_name,
    student_last_name
FROM students
WHERE student_id = 1
LIMIT 1;

-- Students Query #9 - update student firstname, lastname using specific id
UPDATE students
SET
    student_first_name = 'Joliyuh',
    student_last_name = 'Felixie'
WHERE student_id = 1;








SELECT 
    student_last_name,
    student_first_name
FROM students
ORDER BY student_first_name ASC;