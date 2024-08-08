-- STUDENTS

CREATE TABLE `project_sql_schema`.`students` (
  `students_id` INT NOT NULL AUTO_INCREMENT,
  `students_first_name` VARCHAR(45) NULL,
  `students_second_name` VARCHAR(45) NULL,
  PRIMARY KEY (`students_id`),
  UNIQUE INDEX `students_id_UNIQUE` (`students_id` ASC) VISIBLE);
  
-- PROFESSORS

CREATE TABLE `project_sql_schema`.`professors` (
  `professors_id` INT NOT NULL AUTO_INCREMENT,
  `professors_first_name` VARCHAR(45) NULL,
  `professors_second_name` VARCHAR(45) NULL,
  PRIMARY KEY (`professors_id`),
  UNIQUE INDEX `professors_id_UNIQUE` (`professors_id` ASC) VISIBLE);
  
-- COURSES

CREATE TABLE `project_sql_schema`.`courses` (
  `courses_id` INT NOT NULL AUTO_INCREMENT,
  `courses_name` VARCHAR(45) NULL,
  `courses_professors_id` INT NOT NULL,
  `courses_students_id` INT NOT NULL,
  PRIMARY KEY (`courses_id`),
  UNIQUE INDEX `courses_id_UNIQUE` (`courses_id` ASC) VISIBLE,
  INDEX `courses_professors_id_idx` (`courses_professors_id` ASC) VISIBLE,
  INDEX `courses_students_id_idx` (`courses_students_id` ASC) VISIBLE,
  CONSTRAINT `courses_professors_id`
    FOREIGN KEY (`courses_professors_id`)
    REFERENCES `project_sql_schema`.`professors` (`professors_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `courses_students_id`
    FOREIGN KEY (`courses_students_id`)
    REFERENCES `project_sql_schema`.`students` (`students_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
-- GRADES 

CREATE TABLE `project_sql_schema`.`grades` (
  `grades_id` INT NOT NULL AUTO_INCREMENT,
  `grades_num` FLOAT NULL,
  `grades_students_id` INT NOT NULL,
  `grades_courses_id` INT NOT NULL,
  PRIMARY KEY (`grades_id`),
  UNIQUE INDEX `grades_id_UNIQUE` (`grades_id` ASC) VISIBLE,
  INDEX `grades_students_id_idx` (`grades_students_id` ASC) VISIBLE,
  INDEX `grades_courses_id_idx` (`grades_coursers_id` ASC) VISIBLE,
  CONSTRAINT `grades_students_id`
    FOREIGN KEY (`grades_students_id`)
    REFERENCES `project_sql_schema`.`students` (`students_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `grades_courses_id`
    FOREIGN KEY (`grades_courses_id`)
    REFERENCES `project_sql_schema`.`courses` (`courses_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);