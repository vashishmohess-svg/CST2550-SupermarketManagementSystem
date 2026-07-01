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

CREATE TABLE Products
(
    ProductID INT IDENTITY(1,1) PRIMARY KEY,

    Barcode VARCHAR(50) NOT NULL UNIQUE,

    Title VARCHAR(150) NOT NULL,

    Brand VARCHAR(100),

    CategoryID INT NOT NULL,

    SupplierID INT NOT NULL,

    Price DECIMAL(10,2) NOT NULL,

    ExpiryDate DATE NULL,

    RestockDate DATE NULL,

    CONSTRAINT FK_Product_Category
    FOREIGN KEY(CategoryID)
    REFERENCES Categories(CategoryID),

    CONSTRAINT FK_Product_Supplier
    FOREIGN KEY(SupplierID)
    REFERENCES Suppliers(SupplierID)
);

CREATE TABLE Stock
(
    StockID INT IDENTITY(1,1) PRIMARY KEY,

    ProductID INT UNIQUE NOT NULL,

    Quantity INT NOT NULL,

    LowStockLevel INT NOT NULL,

    StockStatus VARCHAR(50),

    CONSTRAINT FK_Stock_Product
    FOREIGN KEY(ProductID)
    REFERENCES Products(ProductID)
);

CREATE TABLE Sales
(
    SaleID INT IDENTITY(1,1) PRIMARY KEY,

    SaleDate DATETIME NOT NULL,

    TotalAmount DECIMAL(10,2) NOT NULL,

    PaymentMethod VARCHAR(50)
);
