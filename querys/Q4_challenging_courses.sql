USE project_sql_schema;

-- QUERY 4 "Create a summary report of courses and their average grades, sorted by the most challenging course (course with the lowest average grade) to the easiest course"

SELECT 
	c.courses_name,
    AVG(g.grades_num) AS average_grade
FROM 
	grades g
JOIN 
	courses c ON g.grades_courses_id = c.courses_id
GROUP BY
	c.courses_name
ORDER BY
	average_grade ASC;