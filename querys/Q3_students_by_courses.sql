USE project_sql_schema;

-- QUERY 3 "Sort students by the courses that they are enrolled in"

SELECT 
	c.courses_name,
	s.students_first_name,
    	s.students_second_name
FROM 
	students s
JOIN 
	courses c ON c.courses_students_id = s.students_id
ORDER BY
	c.courses_name
