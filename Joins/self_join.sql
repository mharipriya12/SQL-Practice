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


SELECT
    e.employee_id,
    e.employee_name AS employee,
    e.job_title,
    m.employee_name AS manager
FROM employees e
LEFT JOIN employees m
    ON e.manager_id = m.employee_id;
