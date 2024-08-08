USE project_sql_schema;
    
INSERT INTO students (students_first_name, students_second_name) 
VALUES   
	("Rubens", "Ballester"),     
    ("Isidoro", "Muñoz"),     
    ("Laura", "Fernandez"),    
    ("Diana", "Ballester"),     
    ("Pepa", "Lillo"),    
    ("Aitor", "Menta"), 
    ("Pilar", "Lafuente"), 
    ("Sandra", "Fernandez");
    
INSERT INTO professors (professors_first_name, professors_second_name)
VALUES 
	("Juan", "Gomez"), 
    ("Miguel", "Adan"),
    ("Isaac", "Sanchez");
    
INSERT INTO courses (courses_name, courses_professors_id, courses_students_id)
VALUES
	("Pyhton", 1, 1),
    ("Javascript", 2, 2),
    ("SQL", 3, 3),
    ("React", 1, 4),
    ("Angular", 2, 5),
    ("Ruby", 3, 6),
    ("Pyhton", 1, 2),
    ("Pyhton", 1, 3),
    ("Angular", 2, 8),
    ("Javascript", 2, 3),
    ("Ruby", 3, 4),
    ("React", 1, 1);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_num)
VALUES
	(1, 1, 8.5),
    (1, 3, 7.33),
    (2, 2, 5.55),
    (2, 4, 6.64),
    (3, 4, 9.98),
    (4, 4, 4.25),
    (5, 4, 7.65),
    (6, 4, 8.83),
    (7, 4, 3.33),
    (8, 4, 5.25);