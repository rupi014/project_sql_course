USE project_sql_schema;

-- QUERY 5 "Finding which student and professor have the most courses in common"

SELECT 
    s.students_first_name,
    s.students_second_name,
    p.professors_first_name,
    p.professors_second_name,
    COUNT(c.courses_name) AS "Common courses"
FROM 
    students s
JOIN 
    courses c
ON 
    c.courses_students_id = s.students_id
JOIN 
    professors p
ON 
    c.courses_professors_id = p.professors_id
GROUP BY 
	s.students_first_name, 
    s.students_second_name,
    p.professors_first_name,
    p.professors_second_name
ORDER BY 
    COUNT(c.courses_name) DESC
LIMIT 3;