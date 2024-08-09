USE project_sql_schema;

-- QUERY 5 "Finding which student and professor have the most courses in common"

WITH CommonCourses AS (
    SELECT 
        s.students_first_name,
        s.students_second_name,
        p.professors_first_name,
        p.professors_second_name,
        COUNT(DISTINCT c.courses_name) AS common_courses
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
)
SELECT 
    students_first_name,
    students_second_name,
    professors_first_name,
    professors_second_name,
    common_courses
FROM 
    CommonCourses
WHERE 
    common_courses = (
        SELECT 
            MAX(common_courses)
        FROM 
            CommonCourses
    )
ORDER BY 
    students_first_name, 
    students_second_name,
    professors_first_name, 
    professors_second_name;
