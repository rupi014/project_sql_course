USE project_sql_schema;

-- QUERY 2 "The top grades for each student"

SELECT 
	s.students_first_name,
    s.students_second_name,
    MAX(g.grades_num) AS top_grade
FROM 
	grades g
JOIN 
	students s ON g.grades_students_id = s.students_id
GROUP BY
	s.students_id;