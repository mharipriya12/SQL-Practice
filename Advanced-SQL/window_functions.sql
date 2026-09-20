SELECT
    student_id,
    student_name,
    department,
    marks,
    RANK() OVER (ORDER BY marks DESC) AS rank_position
FROM students;
