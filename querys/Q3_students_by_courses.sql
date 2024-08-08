USE project_sql_schema;

-- QUERY 3 "Sort students by the courses that they are enrolled in"

SELECT 
	c.courses_name,
	s.students_first_name,
    s.students_second_name
FROM 
	students s
JOIN 
	grades g ON g.grades_students_id = s.students_id
JOIN 
	courses c ON g.grades_courses_id = c.courses_id
ORDER BY
	c.courses_name;