-- Create a new database for Inventory Management System
CREATE DATABASE InventoryManagementSystem;

-- Use the newly created database
USE InventoryManagementSystem;

-- Create a table for products
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT
);

-- Create a table for suppliers
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY AUTO_INCREMENT,
    SupplierName VARCHAR(100),
    ContactName VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100)
);
