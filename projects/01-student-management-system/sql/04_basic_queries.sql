-- ============================================================
-- Student Management System
-- Basic SQL Queries
-- ============================================================

USE student_management;

-- ============================================================
-- 1. Display All Students
-- ============================================================

SELECT *
FROM student;

-- ============================================================
-- 2. Display Student Name and Email
-- ============================================================

SELECT
    student_name,
    email
FROM student;

-- ============================================================
-- 3. Find Second-Year Students
-- ============================================================

SELECT *
FROM student
WHERE year = 2;

-- ============================================================
-- 4. Find Female Students
-- ============================================================

SELECT *
FROM student
WHERE gender = 'Female';

-- ============================================================
-- 5. Sort Students Alphabetically
-- ============================================================

SELECT *
FROM student
ORDER BY student_name;

-- ============================================================
-- 6. Sort Marks from Highest to Lowest
-- ============================================================

SELECT *
FROM marks
ORDER BY marks DESC;

-- ============================================================
-- 7. Update Student Phone Number
-- ============================================================

UPDATE student
SET phone = '9999999999'
WHERE student_id = 1;

-- Verify Update

SELECT *
FROM student
WHERE student_id = 1;

-- ============================================================
-- 8. Delete a Student Record
-- ============================================================

-- Example only:
-- The following query deletes student ID 10 if that record exists.

DELETE FROM student
WHERE student_id = 10;

-- Verify

SELECT *
FROM student
WHERE student_id = 10;
