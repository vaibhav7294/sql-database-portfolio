# 🎓 Student Management System

> **A relational database project built with MySQL for managing student information, academic records, course enrollments, and attendance.**

---

## 📌 Project Overview

The **Student Management System** is a relational database project designed to manage and organize academic information within an educational institution.

The system stores and manages data related to **students, departments, courses, enrollments, marks, and attendance**, while maintaining relationships between these entities using primary keys and foreign keys.

The project is designed to demonstrate practical application of **SQL and relational database concepts** through a realistic academic management scenario.

---

## 🎯 Objectives

The main objectives of this project are to:

* 👨‍🎓 Manage student information
* 🏢 Maintain department records
* 📚 Manage course information
* 📝 Track student course enrollments
* 📊 Store and analyze academic marks
* 📅 Monitor student attendance
* 📈 Generate academic performance reports
* 🔗 Implement relationships between multiple tables
* 🧠 Practice SQL through real-world database scenarios

---

## ✨ Key Features

### 👨‍🎓 Student Management

* Store student personal and academic information
* Assign students to departments
* Manage student records

### 🏢 Department Management

* Maintain department information
* Associate students and courses with departments

### 📚 Course Management

* Store course details
* Maintain course credits
* Track courses offered by departments

### 📝 Enrollment Management

* Record student course enrollments
* Track which students are enrolled in which courses

### 📊 Academic Performance

* Store student marks
* Calculate average marks
* Identify high and low performers
* Generate performance reports

### 📅 Attendance Management

* Record total and attended classes
* Calculate attendance percentage
* Identify students with low attendance

---

## 🗄️ Database Entities

The database consists of the following core entities:

| Entity            | Purpose                          |
| ----------------- | -------------------------------- |
| 👨‍🎓 **Student** | Stores student information       |
| 🏢 **Department** | Stores department details        |
| 📚 **Course**     | Stores course information        |
| 📝 **Enrollment** | Tracks student-course enrollment |
| 📊 **Marks**      | Stores academic performance      |
| 📅 **Attendance** | Stores attendance records        |

---

## 🔗 Database Relationships

The database uses relational connections between its entities.

```text
                 🏢 Department
                       │
                       │
                       ▼
                  👨‍🎓 Student
                  │          │
                  │          │
                  ▼          ▼
             📝 Enrollment  📅 Attendance
                  │
                  │
                  ▼
               📚 Course
                  │
                  │
                  ▼
               📊 Marks
```

### Key Relationships

* A **Department** can have multiple Students.
* A **Department** can offer multiple Courses.
* A **Student** can enroll in multiple Courses.
* A **Course** can have multiple Students.
* A **Student** can have multiple Marks records.
* A **Student** can have multiple Attendance records.

---

## 🧠 SQL Concepts Demonstrated

### 🔰 Database Fundamentals

* Database creation
* Table creation
* Data types
* Primary Keys
* Foreign Keys
* Constraints
* Relationships
* Normalization

### ✏️ Data Manipulation

* `SELECT`
* `INSERT`
* `UPDATE`
* `DELETE`
* `WHERE`
* `ORDER BY`
* `DISTINCT`
* `LIMIT`

### 🔗 Multi-Table Queries

* `INNER JOIN`
* `LEFT JOIN`
* `RIGHT JOIN`
* Multiple-table JOINs
* Table aliases

### 📊 Data Analysis

* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`
* `GROUP BY`
* `HAVING`

### 🚀 Advanced SQL

* Subqueries
* `CASE` statements
* Views
* Stored Procedures
* Triggers
* Transactions
* Indexes
* Query optimization

---

## 📁 Project Structure

```text
01-student-management-system/
│
├── 📄 README.md
│
├── 🗃️ sql/
│   ├── 01_database_setup.sql
│   ├── 02_schema.sql
│   ├── 03_seed_data.sql
│   ├── 04_basic_queries.sql
│   ├── 05_joins_and_aggregations.sql
│   └── 06_advanced_queries.sql
│
├── 👁️ views/
│   └── student_performance.sql
│
├── ⚙️ procedures/
│   └── student_procedures.sql
│
├── ⚡ triggers/
│   └── student_triggers.sql
│
└── 📸 docs/
    ├── er-diagram.png
    └── screenshots/
```

---

## 🔄 Project Development Workflow

The project is being developed through the following stages:

```text
💡 Requirements
      ↓
📐 Database Design
      ↓
🔗 Entity & Relationship Modeling
      ↓
🗃️ Schema Creation
      ↓
📥 Sample Data
      ↓
🔍 SQL Queries
      ↓
📊 Data Analysis
      ↓
🚀 Advanced SQL
      ↓
🧪 Testing
      ↓
📚 Documentation
```

---

## 🔍 Example Use Cases

The database is designed to answer practical questions such as:

* 👨‍🎓 Which students belong to a particular department?
* 📚 Which courses is a student enrolled in?
* 📊 What is the average mark for each course?
* 🏆 Who are the top-performing students?
* 📈 Which department has the highest average performance?
* 📅 Which students have attendance below 75%?
* ⚠️ Which students have failed one or more subjects?
* 📚 Which courses have the highest enrollment?
* 📊 What is the overall academic performance of each student?

---

## ▶️ How to Run

### Prerequisites

Before running the project, install:

* 🐬 **MySQL 8.0 or later**
* 💻 **MySQL Workbench** or **MySQL Command Line Client**

### Execution Order

Run the SQL files in the following order:

```text
1️⃣ 01_database_setup.sql
        ↓
2️⃣ 02_schema.sql
        ↓
3️⃣ 03_seed_data.sql
        ↓
4️⃣ 04_basic_queries.sql
        ↓
5️⃣ 05_joins_and_aggregations.sql
        ↓
6️⃣ 06_advanced_queries.sql
```

Additional database objects such as **views, stored procedures, and triggers** can then be created using their respective SQL files.

---

## 📊 Expected Outcomes

After completing the project, the database should be capable of:

* Managing student records
* Managing departments and courses
* Tracking enrollments
* Recording marks and attendance
* Generating academic reports
* Performing multi-table analysis
* Answering real-world academic database queries

---

## 📈 Learning Outcomes

Through this project, I am developing practical experience in:

* 🗄️ Relational database design
* 🔑 Database keys and constraints
* 🔗 Table relationships
* 🔍 SQL querying
* 📊 Data aggregation and analysis
* 🧩 Complex multi-table queries
* 🚀 Advanced SQL features
* 🧪 Database testing and validation
* 📚 Technical documentation

---

## 🚧 Project Status

**🟡 In Progress**

The project is being developed progressively, starting with database design and fundamental SQL operations and moving toward advanced SQL features.

### Progress

* [x] Project planning
* [x] Database requirements
* [ ] Database schema
* [ ] Sample data
* [ ] Basic SQL queries
* [ ] JOIN and aggregation queries
* [ ] Advanced queries
* [ ] Views
* [ ] Stored procedures
* [ ] Triggers
* [ ] Transactions
* [ ] ER diagram
* [ ] Testing
* [ ] Final documentation

---

## 🛠️ Technology Stack

```text
🐬 MySQL 8.0
📝 SQL
🗄️ Relational Database Design
🐙 Git & GitHub
```

---

## 👨‍💻 Author

### **Vaibhav Jadhav**

🎓 Computer Science & Engineering — AI/ML

💡 Building practical projects to strengthen my skills in **SQL, databases, programming, and software development**.

---

## ⭐ Project Note

This project is developed through **hands-on SQL practice** and focuses on applying database concepts to a realistic academic management scenario.

> 🚀 **The project will evolve progressively as new SQL concepts and database features are implemented.**
