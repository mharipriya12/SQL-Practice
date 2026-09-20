CREATE VIEW high_scorers AS
SELECT
    student_id,
    student_name,
    department,
    marks
FROM students
WHERE marks >= 85;
