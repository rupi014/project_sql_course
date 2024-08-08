USE project_sql_schema;

-- QUERY 1 "The average grade that is given by each professor"

SELECT
    p.professors_first_name, 
    p.professors_second_name,
    AVG(g.grades_num) AS average_grade
FROM 
	grades g
JOIN 
	courses c ON c.courses_id = g.grades_courses_id
JOIN
	professors p ON p.professors_id = c.courses_professors_id
GROUP BY
	p.professors_id;