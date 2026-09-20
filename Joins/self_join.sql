SELECT
    s.student_id,
    s.student_name,
    s.marks,
    d.department_id,
    d.department_name,
    d.hod
FROM students s
LEFT JOIN departments d
    ON s.department_id = d.department_id

UNION

SELECT
    s.student_id,
    s.student_name,
    s.marks,
    d.department_id,
    d.department_name,
    d.hod
FROM students s
RIGHT JOIN departments d
    ON s.department_id = d.department_id;


CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    job_title VARCHAR(50),
    manager_id INT
);

INSERT INTO employees VALUES
(1, 'Ramesh', 'CEO', NULL),
(2, 'Suresh', 'Manager', 1),
(3, 'Priya', 'Manager', 1),
(4, 'Arun', 'Developer', 2),
(5, 'Karthik', 'Developer', 2),
(6, 'Divya', 'Tester', 3),
(7, 'Meena', 'Developer', 3);
