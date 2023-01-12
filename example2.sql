-- -------------------------------------------------------------------------- --
--                                                    --
-- -------------------------------------------------------------------------- --

USE week05_lab;

-- -------------------------------------------------------------------------- --

--   Exercise 1: Show the number of students with a GPA of 3 group by their 
-- departments. The name of the column where the department is shown should be 
-- "Department" and the name of the column where the number is shown should be 
-- "#Student".

SELECT department AS "Department", COUNT(*) AS "#Student"
FROM student
WHERE gpa >= 3
GROUP BY department;

-- -------------------------------------------------------------------------- --

--   Exercise 2: Find one standard deviation below and one standard deviation 
-- above the final grades and name the columns "BELOW" and "ABOVE".

SELECT AVG(final_grade) - STDDEV(final_grade) AS "BELOW",
AVG(final_grade) + STDDEV(final_grade) AS "ABOVE"
FROM student;

-- -------------------------------------------------------------------------- --

--   Exercise 3: Print the maximum final grade in each department. Sections 
-- should be listed alphabetically.

SELECT department, MAX(final_grade)
FROM student
GROUP BY department
ORDER BY department;

-- -------------------------------------------------------------------------- --

--   Exercise 4: Create a column named "weightted_avg" as a double data type in 
-- the student table. Place there weighted averages which 35% final, 30% 
-- midterm, 20% quiz, and 15% lab weighted.

ALTER TABLE student
ADD weighted_avg DOUBLE;

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET weighted_avg = final_grade * 0.35 +
				   midterm_grade * 0.3 +
                   quiz_grade * 0.20 +
                   lab_grade * 0.15;

-- -------------------------------------------------------------------------- --

--   Exercise 5: Print the department, name, surname, and weighted average of 
-- the most successful student in each department. Sort the list in descending 
-- order of the students' last names.

select student_name,student_surname,department
FROM student 
where WeightedAverage in (select max(WeightedAverage) from student group by department);

-- -------------------------------------------------------------------------- --