SELECT
    student_id,
    student_name,
    marks,
    CASE
        WHEN marks >= 90 THEN 'Excellent'
        WHEN marks >= 80 THEN 'Very Good'
        WHEN marks >= 70 THEN 'Good'
        WHEN marks >= 50 THEN 'Average'
        ELSE 'Fail'
    END AS performance
FROM students;
