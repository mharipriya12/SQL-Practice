CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 17),
    department_id INT,
    marks INT DEFAULT 0 CHECK (marks >= 0 AND marks <= 100),

    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);
