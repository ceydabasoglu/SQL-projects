USE `Week11Lab`;

-- QUESTION 1
-- Apply an inner join to find Midterm Student Roster for Geology course from 2015 then find 
-- the average grade for that exam. 
select student.Name, course.CourseName, exam.Grade from
exam inner join student on exam.StudentID = student.StdID join course on course.CID = exam.CID 
where course.Year = 2015 and exam.Year = 2015 and exam.ExamType = 'Midterm' and course.CourseName = 'Geology' ;

select avg(exam.Grade) from exam inner join student on exam.StudentID = student.StdID join course on course.CID = exam.CID 
where course.Year = 2015 and exam.Year = 2015 and exam.ExamType = 'Midterm' and course.CourseName = 'Geology' ;

-- Can we do the same thing using a Natural Join? If we can show the query? If we cannot 
-- properly explain the reason? 
-- SOLUTION : No. We couldn't do the same with natural join. 
-- Because the two tables to be joined with natural join must have the same attributes.
 
 -- QUESTION 2
-- Apply a join to find all the courses taught in semester Fall (Fall = 1) in year 2015 both have exam
-- information and not have exam information with their Professors. (Exam table must be joined!)

select course.CID, course.CourseCode, course.CourseName, professor.ProfName, professor.ProfLastname from professor join course 
 on professor.ProfessorID = course.InstructorID left join exam on course.CID=exam.ExamID
 where course.Year = 2015 and course.Semester = 1 order by course.CID;
 
 -- QUESTION 3
 -- Apply a join to find all the students with clubs they are registered to. Including students without registration.
   
  (select *from club right join student on club.ClubID = student.ClubMembership order by student.StdID);
 
-- QUESTION 4
-- Insert a new Club called Butterfly Catchers with no chairman and 622,000 usd annual budget. 
-- Then perform a join between student and club tables which shows both students without club 
-- membership and clubs without members. 

INSERT INTO club (ClubID, ClubName, ClubChairman ,Budget)values(26, 'Butterfly Catchers',null,622000);

(select *from student left join club on student.ClubMembership = club.ClubID where club.ClubID is null)
union all
(select *from student right join club on student.ClubMembership = club.ClubID where student.StdID is null);
-- https://dervisali.files.wordpress.com/2012/01/sqljoins.png


-- QUESTION 5
-- Denormalize the database into a single table using consecutive join statements and save the 
-- output as university_denormalized csv file. You can ignore the records with missing values. 

create table university_denormalized as
(select club.ClubName,club.ClubChairman,club.Budget, professor.*,
department.DeptID, department.DeptName, department.DeptDean, department.DeptBudget, 
student.StdID,student.Name,student.Surname,student.`Date of Birth`,student.ClubMembership,
exam.ExamID,exam.ExamType, exam.Grade,exam.CID,
course.CourseCode,course.CourseName,course.Year,course.Semester,course.InstructorID

from 
club join student on club.ClubID=student.ClubMembership
join exam on exam.StudentID=student.StdID 
join course on course.CID=exam.CID 
join professor on course.InstructorID=professor.ProfessorID
join department on department.DeptID=professor.Department);
select*from university_denormalized;
drop table university_denormalized;