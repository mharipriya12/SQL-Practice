WITH average_marks AS (
    SELECT AVG(marks) AS avg_marks
    FROM students
)
SELECT
    student_name,
    department,
    marks
FROM students
WHERE marks > (
    SELECT avg_marks
    FROM average_marks
);
