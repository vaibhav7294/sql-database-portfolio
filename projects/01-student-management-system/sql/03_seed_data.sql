-- ============================================================
-- Student Management System
-- Sample Data
-- ============================================================

USE student_management;

-- ============================================================
-- Department Data
-- ============================================================

INSERT INTO department (department_name)
VALUES
('Computer Science'),
('Artificial Intelligence and Machine Learning'),
('Electronics and Communication'),
('Electrical Engineering'),
('Mechanical Engineering');

-- ============================================================
-- Student Data
-- ============================================================

INSERT INTO student
(student_name, email, phone, gender, date_of_birth, department_id, year)
VALUES
('Rahul Sharma', 'rahul@gmail.com', '9876543210', 'Male', '2005-04-12', 1, 2),
('Priya Reddy', 'priya@gmail.com', '9876543211', 'Female', '2005-07-21', 2, 2),
('Arjun Kumar', 'arjun@gmail.com', '9876543212', 'Male', '2004-11-10', 1, 3),
('Sneha Rao', 'sneha@gmail.com', '9876543213', 'Female', '2005-01-15', 3, 2),
('Vikram Singh', 'vikram@gmail.com', '9876543214', 'Male', '2004-09-20', 2, 3);

-- ============================================================
-- Course Data
-- ============================================================

INSERT INTO course
(course_name, credits, department_id)
VALUES
('DBMS', 4, 1),
('Python Programming', 4, 1),
('Data Structures', 4, 1),
('Operating Systems', 3, 1),
('Machine Learning', 4, 2),
('Artificial Intelligence', 4, 2),
('Computer Networks', 3, 1),
('Mathematics', 4, 1);

-- ============================================================
-- Enrollment Data
-- ============================================================

INSERT INTO enrollment
(student_id, course_id, enrollment_date)
VALUES
(1, 1, '2026-06-10'),
(1, 2, '2026-06-10'),
(1, 3, '2026-06-10'),
(2, 1, '2026-06-10'),
(2, 5, '2026-06-10'),
(3, 1, '2026-06-11'),
(3, 4, '2026-06-11');

-- ============================================================
-- Marks Data
-- ============================================================

INSERT INTO marks
(student_id, course_id, marks, exam_type)
VALUES
(1, 1, 85, 'Semester'),
(1, 2, 91, 'Semester'),
(1, 3, 78, 'Semester'),
(2, 1, 88, 'Semester'),
(2, 5, 94, 'Semester'),
(3, 1, 67, 'Semester'),
(3, 4, 72, 'Semester');

-- ============================================================
-- Attendance Data
-- ============================================================

INSERT INTO attendance
(student_id, course_id, total_classes, attended_classes)
VALUES
(1, 1, 50, 45),
(1, 2, 50, 47),
(1, 3, 50, 42),
(2, 1, 50, 48),
(2, 5, 50, 46);

-- ============================================================
-- Verify Sample Data
-- ============================================================

SELECT * FROM department;

SELECT * FROM student;

SELECT * FROM course;

SELECT * FROM enrollment;

SELECT * FROM marks;

SELECT * FROM attendance;
