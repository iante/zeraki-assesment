CREATE TABLE course(
courseid int(11) AUTO_INCREMENT,
name varChar(250) NOT NULL,
institution int(11) NOTNULL,
PRIMARY KEY(corseid),
FOREIGN KEY(institution) REFERENCES institution(institutionid)

)

CREATE TABLE student(                                   studentid int(11)  AUTO_INCREMENT,
name varChar(250) NOT NULL,
course int(11) NOT NULL,
PRIMARY KEY(studentid),
FOREIGN KEY(course) REFERENCES course(courseid)
) 

CREATE TABLE institution(                          
institutionid int(11)  AUTO_INCREMENT,
name varChar(250) NOT NULL,
PRIMARY KEY(institutionid)
) 

CREATE TABLE enrolment(
enrolmentid int(11) AUTO_INCREMENT,
course int(11) NOT NULL,
institution int(11) NOTNULL,
student int(11) NOT NULL,
PRIMARY KEY(enrolmentid),
FOREIGN KEY(institution) REFERENCES institution(institutionid),
FOREIGN KEY(course) REFERENCES institution(courseid),
FOREIGN KEY(student) REFERENCES institution(studentid)
)    