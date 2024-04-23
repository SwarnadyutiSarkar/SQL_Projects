-- Create a table for sales
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY AUTO_INCREMENT,
    ProductID INT,
    Quantity INT,
    SaleDate DATE,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Create a table for customers
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(15),
    Address TEXT,
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(10)
);

-- Create a table for products
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(200),
    Category VARCHAR(100),
    Price DECIMAL(10, 2)
);

-- Create a table for employees
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(100),
    HireDate DATE
);

-- Create a table for reports
CREATE TABLE Reports (
    ReportID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    ReportDate DATE,
    ReportType VARCHAR(100),
    Content TEXT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
