CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department VARCHAR(50),
    marks INT
);

INSERT INTO students VALUES
(1, 'Arun', 'CSE', 85),
(2, 'Priya', 'ECE', 90),
(3, 'Karthik', 'CSE', 78),
(4, 'Divya', 'EEE', 92),
(5, 'Rahul', 'ECE', 75),
(6, 'Meena', 'CSE', 88);

SELECT
    s.student_id,
    s.student_name,
    s.department,
    s.marks
FROM students s
WHERE s.marks > (
    SELECT AVG(s2.marks)
    FROM students s2
    WHERE s2.department = s.department
);
