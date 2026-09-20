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

SELECT student_id, student_name, marks
FROM students
WHERE marks > (
    SELECT AVG(marks)
    FROM students
);
