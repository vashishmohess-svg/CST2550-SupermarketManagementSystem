IF DB_ID('SupermarketDB') IS NULL
BEGIN
    CREATE DATABASE SupermarketDB;
END
GO

USE SupermarketDB;
GO

CREATE TABLE Categories
(
    CategoryID INT IDENTITY(1,1) PRIMARY KEY,

    CategoryName VARCHAR(100) NOT NULL
);
GO

CREATE TABLE Suppliers
(
    SupplierID INT IDENTITY(1,1) PRIMARY KEY,

    SupplierName VARCHAR(150) NOT NULL,

    Phone VARCHAR(20),

    Email VARCHAR(100),

    Address VARCHAR(255)
);
GO