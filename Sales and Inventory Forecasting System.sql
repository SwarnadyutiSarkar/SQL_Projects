-- Create a table for products
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(200),
    Category VARCHAR(100),
    CurrentStock INT,
    ReorderLevel INT,
    Price DECIMAL(10, 2)
);

-- Create a table for sales
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY AUTO_INCREMENT,
    ProductID INT,
    SaleDate DATE,
    QuantitySold INT,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Create a table for inventory
CREATE TABLE Inventory (
    InventoryID INT PRIMARY KEY AUTO_INCREMENT,
    ProductID INT,
    Date DATE,
    Quantity INT,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Create a table for forecasts
CREATE TABLE Forecasts (
    ForecastID INT PRIMARY KEY AUTO_INCREMENT,
    ProductID INT,
    ForecastDate DATE,
    ForecastedQuantity INT,
    ConfidenceLevel DECIMAL(5, 2),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
