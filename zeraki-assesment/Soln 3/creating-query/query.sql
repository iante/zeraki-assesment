/*Inserting Records to DB*/
INSERT INTO `enrolment`( `course`, `institution`,`student`) VALUES (2,1,1)
INSERT INTO `enrolment`( `course`, `institution`,`student`) VALUES (1,2,2)     

INSERT INTO `student`( `name`, `course`) VALUES ('Njuguna',5)
INSERT INTO `student`( `name`, `course`) VALUES ('Njuguna',5)

INSERT INTO `institution` (`name`) VALUES ('Strathmore')
INSERT INTO `institution` (`name`) VALUES ('Kabarak')

INSERT INTO `course` (`name`) VALUES ('Economics')
INSERT INTO `course` (`name`) VALUES ('Telecommunication')


/*Querying the DB*/

SELECT i.name AS Institution_Name, c.name AS Course_name, COUNT(*) AS Count_students 
FROM  enrolment e
LEFT JOIN course c
ON e.course = c.courseid

LEFT JOIN institution i
ON e.institution = i.institutionid
GROUP BY i.name, c.name