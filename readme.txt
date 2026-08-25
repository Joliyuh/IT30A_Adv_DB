C:\my_dev\IT34A

1. CREATE DATABASE <database_name>;
2. SHOW DAATABASES;
3. CONNECT <database_name>
4. CREATE TABLE <table_name_in_plural>();
5. INSERT INTO <table_name_in_plural>
    (columns)
    VALUES(values);

Utility Commands
\! cls 
mysqldump -u root -p --databses library_db > C:\my_dev\IT34A\backups\08182026_library_db.sql;

mysqldump -u root -p --databases plixie_db > "C:\my_dev\IT30A\backups\%date:~-4%_%date:~3,2%_%date:~0,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%_plixie_db.sql"

Breakdown:
%date:~-4%_
%date:~3,2%_
%date:~0,2%_
%time:~0,2%_
%time:~3,2%_
%time:~6,2%_
plixie_db.sql"

ALER TABLE students ADD COLUMN student_created_at_TIMESTAMP NULL DEFAULT NULL;
UPDATE students SET student_created_at + CURRENT_TIMESTAMP WHERE student_created_at IS NULL;
ALTER TABLE students MODIFY COLUMN student_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

