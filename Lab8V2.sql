CREATE DATABASE HospitalDB;
GO
USE HospitalDB;
GO

----Add

CREATE TABLE Speciality (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(50)
);


CREATE TABLE Hospital (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100),
    Address NVARCHAR(200)
);


CREATE TABLE Doctor (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100),
    SpecialityId INT,
    HospitalId INT,
    FOREIGN KEY (SpecialityId) REFERENCES Speciality(Id),
    FOREIGN KEY (HospitalId) REFERENCES Hospital(Id)
);


-----Add 2 Info

INSERT INTO Hospital (Name, Address) VALUES ('Mərkəzi Klinika', 'Bakı'), ('City Hospital', 'Gəncə');

INSERT INTO Speciality (Name) VALUES ('Kardioloq'), ('Nevroloq'), ('Stomatoloq');

INSERT INTO Doctor (Name, SpecialityId, HospitalId) VALUES 
('Murad Əliyev', 1, 1), 
('Aysel Məmmədova', 2, 1), 
('Emin Həsənov', NULL, 2),
('Leyla Rzayeva', 1, 2);



--------Task 1

SELECT d.Name AS DoctorName, h.Name AS HospitalName, s.Name AS SpecialityName
FROM Doctor d
JOIN Hospital h ON d.HospitalId = h.Id
JOIN Speciality s ON d.SpecialityId = s.Id;

-------Task 2

SELECT Name FROM Doctor 
WHERE SpecialityId IS NULL;

--------Task 3

SELECT h.Name AS HospitalName, COUNT(d.Id) AS DoctorCount
FROM Hospital h
LEFT JOIN Doctor d ON h.Id = d.HospitalId
GROUP BY h.Name;