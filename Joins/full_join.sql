-- students
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department_id INT,
    marks INT
);

INSERT INTO students VALUES
(1, 'Arun', 101, 85),
(2, 'Priya', 102, 90),
(3, 'Karthik', 101, 78),
(4, 'Divya', 103, 92),
(5, 'Rahul', 104, 75),
(6, 'Meena', NULL, 88);

-- departments
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    hod VARCHAR(50)
);

INSERT INTO departments VALUES
(101, 'Computer Science', 'Dr. Kumar'),
(102, 'Electronics', 'Dr. Ravi'),
(103, 'Electrical', 'Dr. Priya'),
(105, 'Mechanical', 'Dr. Suresh');


SELECT
    s.student_id,
    s.student_name,
    s.marks,
    d.department_id,
    d.department_name,
    d.hod
FROM students s
FULL OUTER JOIN departments d
    ON s.department_id = d.department_id;
