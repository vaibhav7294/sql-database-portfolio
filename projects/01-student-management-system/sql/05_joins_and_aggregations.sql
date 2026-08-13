-- ============================================================
-- Student Management System
-- JOINs and Aggregation Queries
-- ============================================================

USE student_management;

-- ============================================================
-- 1. Students with Their Departments
-- ============================================================

SELECT
    s.student_name,
    d.department_name
FROM student s
JOIN department d
    ON s.department_id = d.department_id;

-- ============================================================
-- 2. Students and Their Courses
-- ============================================================

SELECT
    s.student_name,
    c.course_name
FROM student s
JOIN enrollment e
    ON s.student_id = e.student_id
JOIN course c
    ON e.course_id = c.course_id;

-- ============================================================
-- 3. Students, Courses and Marks
-- ============================================================

SELECT
    s.student_name,
    c.course_name,
    m.marks
FROM marks m
JOIN student s
    ON m.student_id = s.student_id
JOIN course c
    ON m.course_id = c.course_id;

-- ============================================================
-- 4. Average Marks by Course
-- ============================================================

SELECT
    c.course_name,
    AVG(m.marks) AS average_marks
FROM marks m
JOIN course c
    ON m.course_id = c.course_id
GROUP BY c.course_name;

-- ============================================================
-- 5. Highest Marks
-- ============================================================

SELECT
    MAX(marks) AS highest_marks
FROM marks;

-- ============================================================
-- 6. Lowest Marks
-- ============================================================

SELECT
    MIN(marks) AS lowest_marks
FROM marks;

-- ============================================================
-- 7. Overall Average Marks
-- ============================================================

SELECT
    AVG(marks) AS average_marks
FROM marks;

-- ============================================================
-- 8. Total Marks
-- ============================================================

SELECT
    SUM(marks) AS total_marks
FROM marks;

-- ============================================================
-- 9. Total Mark Records
-- ============================================================

SELECT
    COUNT(*) AS total_records
FROM marks;

-- ============================================================
-- 10. Average Marks by Student
-- ============================================================

SELECT
    student_id,
    AVG(marks) AS average_marks
FROM marks
GROUP BY student_id
ORDER BY average_marks DESC;

-- ============================================================
-- 11. Average Marks with Student Names
-- ============================================================

SELECT
    s.student_name,
    AVG(m.marks) AS average_marks
FROM marks m
JOIN student s
    ON m.student_id = s.student_id
GROUP BY s.student_id, s.student_name
ORDER BY average_marks DESC;

-- ============================================================
-- 12. Students with Average Marks Above 80
-- ============================================================

SELECT
    s.student_name,
    AVG(m.marks) AS average_marks
FROM marks m
JOIN student s
    ON m.student_id = s.student_id
GROUP BY s.student_id, s.student_name
HAVING AVG(m.marks) > 80;

-- ============================================================
-- 13. Attendance Percentage
-- ============================================================

SELECT
    student_id,
    course_id,
    attended_classes,
    total_classes,
    ROUND(
        (attended_classes / total_classes) * 100,
        2
    ) AS attendance_percentage
FROM attendance;

-- ============================================================
-- 14. Students with Attendance Below 75%
-- ============================================================

SELECT
    s.student_name,
    c.course_name,
    ROUND(
        (a.attended_classes / a.total_classes) * 100,
        2
    ) AS attendance_percentage
FROM attendance a
JOIN student s
    ON a.student_id = s.student_id
JOIN course c
    ON a.course_id = c.course_id
WHERE (a.attended_classes / a.total_classes) * 100 < 75;
