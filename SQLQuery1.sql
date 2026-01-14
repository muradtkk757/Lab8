--Task 1

--CREATE DATABASE Lab8;
--use Lab8;
--GO

--Create Table Student
--(
--Id int Identity (1,1) Primary Key,
--FullName NvarChar (100) Not Null,
--Birthday Date Not Null
--);



--Task 2
--INSERT INTO Student (FullName, Birthday)
--VALUES
--('Ali Mammadov',   '2000-01-15'),
--('Aysel Huseynova','2002-03-22'),
--('Rashad Karimov', '1999-07-08'),
--('Nigar Aliyeva',  '2001-11-30'),
--('Elvin Quliyev',  '2003-05-04'),
--('Leyla Ismayilova','2000-09-18'),
--('Kamran Abbasov','1998-12-25'),
--('Sabina Rahimova','2002-06-10'),
--('Orxan Talibov', '2001-04-02'),
--('Gunel Safarova','1999-10-14');
--SELECT * FROM Student


---Task 3

--SELECT * FROM Student

--SELECT * FROM Student
--WHERE FullName LIKE '%b%';

--SELECT * FROM Student
--WHERE Birthday < '2005-01-01';

--SELECT * FROM Student
--WHERE DATEDIFF(YEAR, Birthday, GETDATE()) > 20;



----Task 4

--ALTER TABLE Student
--ADD Email NVARCHAR(100);


--UPDATE Student
--SET Email = CASE FullName
--    WHEN 'Ali Mammadov' THEN 'ali123@mail.com'
--    WHEN 'Aysel Huseynova' THEN 'aysel456@mail.com'
--    WHEN 'Rashad Karimov' THEN 'rashad789@mail.com'
--    WHEN 'Nigar Aliyeva' THEN 'nigar321@mail.com'
--    WHEN 'Elvin Quliyev' THEN 'elvin654@mail.com'
--    WHEN 'Leyla Ismayilova' THEN 'leyla987@mail.com'
--    WHEN 'Kamran Abbasov' THEN 'kamran111@mail.com'
--    WHEN 'Sabina Rahimova' THEN 'sabina222@mail.com'
--    WHEN 'Orxan Talibov' THEN 'orxan333@mail.com'
--    WHEN 'Gunel Safarova' THEN 'gunel444@mail.com'
--END;
--SELECT * FROM Student

-----Task 5


--UPDATE Student
--SET Email = 'newemail@mail.com'
--WHERE Id = 6;


--DELETE FROM Student
--WHERE Id = 7;
--SELECT * FROM Student

------Task 6

--CREATE TABLE Course 
--(
--    Id INT IDENTITY PRIMARY KEY,
--    Name NVARCHAR(100)
--);
--SELECT * FROM Course;

--INSERT INTO Course (Name)
--VALUES
--('Mathematics'),
--('Physics'),
--('Computer Science');
--SELECT * FROM Course;


-------Task 7

--ALTER TABLE Student
--ADD CourseId INT;


--ALTER TABLE Student
--ADD CONSTRAINT FK_Student_Course
--FOREIGN KEY (CourseId) REFERENCES Course(Id);



--------Task 8
--SELECT 
--    s.FullName AS StudentName,
--    c.Name AS CourseName
--FROM Student s
--LEFT JOIN Course c
--    ON s.CourseId = c.Id;


