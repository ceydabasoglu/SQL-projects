
 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
 
 DROP SCHEMA IF EXISTS course_regdb ;
 
 CREATE SCHEMA IF NOT EXISTS course_regdb DEFAULT CHARACTER SET utf8 ;
 USE course_regdb ;
 
 DROP TABLE IF EXISTS course_regdb.Class ;
 
 CREATE TABLE IF NOT EXISTS course_regdb.Class (
   Class_ID INT NOT NULL,
   Class_Number VARCHAR(10) NOT NULL,
   Class_Size INT NOT NULL,
   freeDayTime DATETIME NOT NULL,
   fullDayTime DATETIME NOT NULL,
  PRIMARY KEY (Class_ID))
ENGINE = InnoDB;

DROP TABLE IF EXISTS course_regdb.CourseRegistration ;


CREATE TABLE IF NOT EXISTS course_regdb.CourseRegistration (
   course_RegID INT NOT NULL,
   semester VARCHAR(50) NOT NULL,
   grade INT NOT NULL,
  PRIMARY KEY (course_RegID))
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS course_regdb.Course (
   course_ID INT NOT NULL,
   course_Code VARCHAR(10) NOT NULL,
   course_Name VARCHAR(100) NOT NULL,
   course_Lecturer VARCHAR(100) NOT NULL,
   course_Size VARCHAR(45) NOT NULL,
   courseDayTime DATETIME NOT NULL,
   course_ECTS INT NOT NULL,
   class_ID INT NOT NULL,
   course_Reg INT NOT NULL,
  PRIMARY KEY (course_ID),
  
  CONSTRAINT  class_ID
  FOREIGN KEY (class_ID)
    REFERENCES course_regdb.Class (class_ID),
    CONSTRAINT course_RegID
    FOREIGN KEY (course_Reg)
    REFERENCES  course_regdb.CourseRegistration (course_RegID))
ENGINE = InnoDB;

DROP TABLE IF EXISTS course_regdb.ContactInformation;

CREATE TABLE IF NOT EXISTS course_regdb.ContactInformation (
   contactInfoID INT NOT NULL,
   telephoneNumber INT NOT NULL,
   email VARCHAR(45) NOT NULL,
   roomNumber VARCHAR(10) NOT NULL,
   address VARCHAR(200) NOT NULL,
   city VARCHAR(30) NOT NULL,
   country VARCHAR(30) NOT NULL,
  PRIMARY KEY (contactInfoID))
ENGINE = InnoDB;


DROP TABLE IF EXISTS course_regdb.Faculty;

CREATE TABLE IF NOT EXISTS course_regdb.Faculty(
  faculty_ID INT NOT NULL,
  faculty_Name VARCHAR(100) NOT NULL,
  faculty_DeanName VARCHAR(100) NOT NULL,
  PRIMARY KEY (faculty_ID))
ENGINE = InnoDB;

DROP TABLE IF EXISTS course_regdb.Department;

CREATE TABLE IF NOT EXISTS course_regdb.Department(
   department_ID INT NOT NULL,
   department_Name VARCHAR(100) NOT NULL,
   headOfDepartmentName VARCHAR(45) NOT NULL,
   department_CourseID INT NOT NULL,
   faculty_ID INT NOT NULL,
  PRIMARY KEY (department_ID),
  
  CONSTRAINT faculty_ID
    FOREIGN KEY (faculty_ID)
    REFERENCES course_regdb.Faculty (faculty_ID),
  CONSTRAINT department_CourseID
    FOREIGN KEY (department_CourseID)
    REFERENCES course_regdb.Course (course_ID))
ENGINE = InnoDB;

DROP TABLE IF EXISTS course_regdb.Login ;

CREATE TABLE IF NOT EXISTS course_regdb.Login (
  login_ID INT NOT NULL,
  username VARCHAR(45) NOT NULL,
  password VARCHAR(45) NOT NULL,
  authorizationType VARCHAR(45) NOT NULL,
  PRIMARY KEY (login_ID))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS course_regdb.Professor (
  professorID INT NOT NULL,
  professorName VARCHAR(100) NOT NULL,
  professorBirthdate DATE NOT NULL,
  professorDepartment VARCHAR(100) NOT NULL,
  givedCourseID INT NOT NULL,
  contactInfoID INT NOT NULL,
  department_ID INT NOT NULL,
  login_ID INT NOT NULL,
  PRIMARY KEY (professorID),
  CONSTRAINT givedCourseID
    FOREIGN KEY (givedCourseID)
    REFERENCES  course_regdb.Course (course_ID),
  CONSTRAINT contactInfoID
    FOREIGN KEY (contactInfoID)
    REFERENCES  course_regdb.ContactInformation (contactInfoID),
  CONSTRAINT department_ID
    FOREIGN KEY (department_ID)
    REFERENCES  course_regdb.Department (department_ID),
  CONSTRAINT login_ID
    FOREIGN KEY (login_ID)
    REFERENCES  course_regdb.Login (login_ID)
)
ENGINE = InnoDB;


DROP TABLE IF EXISTS course_regdb.StudentClub ;

CREATE TABLE IF NOT EXISTS course_regdb.StudentClub (
  studentClubID INT NOT NULL,
  studentClubName VARCHAR(100) NOT NULL,
  headOfClubName VARCHAR(100) NOT NULL,
  studentClubSize INT NOT NULL,
  descriptionOfClub VARCHAR(200) NOT NULL,
  StudentClubcol VARCHAR(45) NOT NULL,
  PRIMARY KEY (studentClubID))
ENGINE = InnoDB;

DROP TABLE IF EXISTS course_regdb.Scholarship;
CREATE TABLE IF NOT EXISTS course_regdb.Scholarship(
	id int not null auto_increment primary key,
    name varchar(100) not null
    );
    
DROP TABLE IF EXISTS course_regdb.StudentScholarship;           
CREATE TABLE IF NOT EXISTS course_regdb.StudentScholarship(
	studentID bigint not null,
    scholarshipId int not null,
    startYear int not null,
	endYear int,
    
    FOREIGN KEY (studentID) REFERENCES Student (studentID) on delete restrict,
    FOREIGN KEY (scholarshipId) REFERENCES Scholarship (id) on delete restrict,
    primary key(studentID,scholarshipId)
    );

DROP TABLE IF EXISTS course_regdb.Student;

CREATE TABLE IF NOT EXISTS course_regdb.Student (
  studentID bigint NOT NULL,
  studentName VARCHAR(100) NOT NULL,
  studentBirthdate DATE NOT NULL,
  -- studentScholarship INT NULL,
  studentDepartment VARCHAR(100) NOT NULL,
  registeredCourseID INT NOT NULL,
  academicAdvisorID INT NOT NULL,
  registeredClubID INT NOT NULL,
  contactInfoID INT NOT NULL,
  department_ID INT NOT NULL,
  login_ID INT NOT NULL,
  PRIMARY KEY (studentID),
  
  CONSTRAINT registeredCourseID
    FOREIGN KEY (registeredCourseID)
    REFERENCES course_regdb.Course (course_ID),
  CONSTRAINT academicAdvisorID
    FOREIGN KEY (academicAdvisorID)
    REFERENCES course_regdb.Professor (professorID),
  CONSTRAINT registeredClubID
    FOREIGN KEY (registeredClubID)
    REFERENCES course_regdb.StudentClub (studentClubID),
  CONSTRAINT contactInfoID1
    FOREIGN KEY (contactInfoID)
    REFERENCES course_regdb.ContactInformation (contactInfoID),
  CONSTRAINT departmentID
    FOREIGN KEY (department_ID)
    REFERENCES course_regdb.Department (department_ID),
  CONSTRAINT loginID
    FOREIGN KEY (login_ID)
    REFERENCES course_regdb.Login (login_ID)
    
    
    )
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
