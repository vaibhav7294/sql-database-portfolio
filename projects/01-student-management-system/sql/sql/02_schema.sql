-- ============================================================
-- Student Management System
-- Database Schema
-- ============================================================

USE student_management;

-- ============================================================
-- 1. Department Table
-- ============================================================

CREATE TABLE IF NOT EXISTS department (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

-- ============================================================
-- 2. Student Table
-- ============================================================

CREATE TABLE IF NOT EXISTS student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    gender VARCHAR(10),
    date_of_birth DATE,
    department_id INT,
    year INT,

    FOREIGN KEY (department_id)
        REFERENCES department(department_id)
);

-- ============================================================
-- 3. Course Table
-- ============================================================

CREATE TABLE IF NOT EXISTS course (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    credits INT NOT NULL,
    department_id INT,

    FOREIGN KEY (department_id)
        REFERENCES department(department_id)
);

-- ============================================================
-- 4. Enrollment Table
-- ============================================================

CREATE TABLE IF NOT EXISTS enrollment (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date DATE,

    FOREIGN KEY (student_id)
        REFERENCES student(student_id),

    FOREIGN KEY (course_id)
        REFERENCES course(course_id),

    UNIQUE (student_id, course_id)
);

-- ============================================================
-- 5. Marks Table
-- ============================================================

CREATE TABLE IF NOT EXISTS marks (
    mark_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    marks INT NOT NULL,
    exam_type VARCHAR(30) NOT NULL,

    FOREIGN KEY (student_id)
        REFERENCES student(student_id),

    FOREIGN KEY (course_id)
        REFERENCES course(course_id),

    CHECK (marks BETWEEN 0 AND 100)
);

-- ============================================================
-- 6. Attendance Table
-- ============================================================

CREATE TABLE IF NOT EXISTS attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    total_classes INT NOT NULL,
    attended_classes INT NOT NULL,

    FOREIGN KEY (student_id)
        REFERENCES student(student_id),

    FOREIGN KEY (course_id)
        REFERENCES course(course_id),

    CHECK (total_classes >= 0),
    CHECK (attended_classes >= 0),
    CHECK (attended_classes <= total_classes)
);

-- ============================================================
-- Verify Tables
-- ============================================================

SHOW TABLES;
