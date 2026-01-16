CREATE DATABASE Lab8v1;
use Lab8v1;
GO

----Add

CREATE TABLE Shop (
    Id INT IDENTITY PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Location NVARCHAR(100) NOT NULL
);

CREATE TABLE Category (
    Id INT IDENTITY PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL
);

CREATE TABLE Product (
    Id INT IDENTITY PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Count INT NOT NULL,
    ShopId INT NOT NULL,
    CategoryId INT NOT NULL,

    CONSTRAINT FK_Product_Shop
        FOREIGN KEY (ShopId) REFERENCES Shop(Id),

    CONSTRAINT FK_Product_Category
        FOREIGN KEY (CategoryId) REFERENCES Category(Id)
);

----Add Shop
INSERT INTO Shop (Name, Location)
VALUES
('Baku Mall', 'Baku'),
('Metro Store', 'Baku'),
('Ganja Center', 'Ganja'),
('Kapaz Market', 'Ganja'),
('Sumqayit Plaza', 'Sumqayit'),
('Crystal Shop', 'Sumqayit'),
('Lankaran Market', 'Lankaran'),
('Sheki Store', 'Sheki');


--Add Category

INSERT INTO Category (Name)
VALUES
('Electronics'),
('Clothes'),
('Food'),
('Books'),
('Toys');

SELECT * FROM Category;

---Add Insert


INSERT INTO Product (Name, Count, ShopId, CategoryId)
VALUES
('Laptop', 15, 1, 1),
('Phone', 25, 2, 1),
('T-Shirt', 40, 3, 2),
('Jeans', 18, 4, 2),
('Bread', 120, 5, 3),
('Milk', 60, 6, 3),
('Notebook', 30, 7, 4),
('Story Book', 12, 8, 4),
('Toy Car', 50, 1, 5),
('Doll', 22, 2, 5);
SELECT * FROM Product;

--Task 1 

SELECT * FROM Shop;

----Task 2

SELECT * FROM Shop
WHERE Location = 'Baku';

-----Task 3

SELECT * FROM Product
WHERE Count > 10;

----Task 4
SELECT * FROM Product
ORDER BY Count DESC;