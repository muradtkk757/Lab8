CREATE DATABASE RentACarDB;

---Add

CREATE TABLE Branch (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Location NVARCHAR(200)
);


CREATE TABLE CarCategory (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(50) NOT NULL
);

CREATE TABLE Car (
    Id INT PRIMARY KEY IDENTITY(1,1),
    PlateNumber NVARCHAR(20) NOT NULL,
    CategoryId INT,
    BranchId INT,
    FOREIGN KEY (CategoryId) REFERENCES CarCategory(Id),
    FOREIGN KEY (BranchId) REFERENCES Branch(Id)
);

-----Add 2 Info

INSERT INTO Branch (Name, Location) VALUES 
('Premium Baku', 'Port Baku'),
('Express Ganja', 'Heydar Aliyev Ave'),
('Airport Branch', 'GYD Terminal 1'),
('Quba Retreat', 'Qachresh'),
('Lankaran Coast', 'South Hub'),
('Ganja Branch', 'City Center');
INSERT INTO CarCategory (Name) VALUES 
('Business Class'), ('Economy'), ('Off-Road'), ('Electric'), ('Supercar');


INSERT INTO Car (PlateNumber, CategoryId, BranchId) VALUES 
('99-UX-102', 1, 1), 
('77-GB-050', 3, 4), 
('10-TH-888', 5, 1), 
('90-AA-007', 1, 3), 
('50-EK-200', 2, 5), 
('20-CC-444', 3, 2), 
('01-EL-001', 4, 1), 
('99-ZZ-999', 5, 3);


-----Task 1 

SELECT 
    c.PlateNumber, 
    b.Name AS BranchName, 
    cat.Name AS CategoryName
FROM Car c
INNER JOIN Branch b ON c.BranchId = b.Id
INNER JOIN CarCategory cat ON c.CategoryId = cat.Id;

-----Task 2

SELECT 
    cat.Name AS CategoryName, 
    COUNT(c.Id) AS CarCount
FROM CarCategory cat
LEFT JOIN Car c ON cat.Id = c.CategoryId
GROUP BY cat.Name;

---------Task 3 
SELECT 
    b.Name AS EmptyBranch, 
    b.Location
FROM Branch b
LEFT JOIN Car c ON b.Id = c.BranchId
WHERE c.Id IS NULL;