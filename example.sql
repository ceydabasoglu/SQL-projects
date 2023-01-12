


-- -------------------------------------------------------------------------- --

--   
CREATE DATABASE  IF NOT EXISTS `week05_labwork`;




USE week05_labwork;

-- -------------------------------------------------------------------------- --

--   Question 2: Create a table named "Student". Create a primary key named "Student ID" auto incremented. 
--   Also, create "Name", "Surname", "Gender", --   "CountryOfOrigin" and "Average" with suitable data types as not null.

--   Answer 2: 
CREATE TABLE Student (
Student_ID int auto_increment not null primary key,
Name varchar(20) not null,
Surname varchar(30) not null,
Gender varchar(20) not null,
CountryOfOrigin varchar(50),
Average double not null
);



-- -------------------------------------------------------------------------- --

--   Question 3: Create a table named "StudentLecture". Add "RecID", "CourseCode" and "CourseName" fields and
--   select most appropriate one as primary -- key. Create related attributes with suitable data types as not null and add a foreign key from the 
--   "Student" table to " StudentLecture " table.

--   Answer 3: 
CREATE TABLE StudentLecture(
RecID int not null,
CourseCode varchar(20) not null,
CourseName varchar(50) not null,
Student_ID int not null,
foreign key (Student_ID) references Student (Student_ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -------------------------------------------------------------------------- --

--   Question 4: Add students below to the "Student" table.

--   Answer 4: 

INSERT INTO Student values(1,"Aliyah", "Luna", "Female", "USA", 65);
INSERT INTO Student values(2,"Emilio" ,"Morales" ,"Male", "Spain", 82);
INSERT INTO Student values(3,"Rafael", "Fuentes", "Male", "Argentina", 25);
INSERT INTO Student values(4,"Audrina", "Martin", "Female", "USA", 98);
INSERT INTO Student values(5,"Josiah", "Logan", "Male", "USA", 73);
INSERT INTO Student values(6,"Tara" ,"Serrano", "Female", "USA", 60);
INSERT INTO Student values(7,"Trevon", "Hess" ,"Male", "United Kingdom", 63);
INSERT INTO Student values(8,"Jayleen" , "Friedman", "Female", "USA", 36);
INSERT INTO Student values(9,"Antony", "Estes", "Male", "Mexico", 80);
INSERT INTO Student values(10,"Sophie", "Davila", "Female", "France", 77);
select * from Student;

-- -------------------------------------------------------------------------- --

--   Question 5: Add 3 records into to the "StudentLecture" table of your choosing.

--   Answer 5: 
INSERT INTO StudentLecture (RecID, CourseCode, CourseName,Student_ID)values(1001,"COMP 3315","Comp Orginazation",1);
INSERT INTO StudentLecture (RecID, CourseCode, CourseName,Student_ID) values(1002,"COMP 3317","Comp Network",2);
INSERT INTO StudentLecture (RecID, CourseCode, CourseName,Student_ID) values(1003,"SE 2222","Database",3);


-- -------------------------------------------------------------------------- --

--   Question 6: Add New Column into "Student" table called Age, set default value as 20.

--   Answer 6: 
ALTER TABLE Student ADD Age int default 20;


-- -------------------------------------------------------------------------- --

--   Question 7: Subtract 10 points from all averages from the "Student" table.

--   Answer 7: 
SET SQL_SAFE_UPDATES = 0 ;
UPDATE Student SET Average=Average-10 ;
select * from Student;


-- -------------------------------------------------------------------------- --


--   Question 8: Assign random values to age field for every record within your "Student" table. (Google is your friend)

--   Answer 8: 
update Student set Age = FLOOR(RAND()*(100-18)+18);
select * from Student;


-- -------------------------------------------------------------------------- --

--   Question 9: Show one of the students that you’ve added to the "StudentLecture" table with it’s all attributes 
--   from the course(s) he/she took.

--   Answer 9: 
select *from StudentLecture where StudentLecture.RecID=1001;

-- -------------------------------------------------------------------------- --

--   Question 10: Delete All male students from the "Student" table.

--   Answer 10: 
SET SQL_SAFE_UPDATES = 0 ;
delete from Student where Gender="Male";


-- -------------------------------------------------------------------------- --