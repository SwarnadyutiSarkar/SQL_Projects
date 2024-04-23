-- Create a new database for Restaurant Reservation System
CREATE DATABASE RestaurantReservationSystem;

-- Use the newly created database
USE RestaurantReservationSystem;

-- Create a table for restaurants
CREATE TABLE Restaurants (
    RestaurantID INT PRIMARY KEY AUTO_INCREMENT,
    RestaurantName VARCHAR(100),
    Address TEXT,
    PhoneNumber VARCHAR(15),
    CuisineType VARCHAR(50),
    Capacity INT
);

-- Create a table for tables
CREATE TABLE Tables (
    TableID INT PRIMARY KEY AUTO_INCREMENT,
    RestaurantID INT,
    TableNumber INT,
    Capacity INT,
    FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
);

-- Create a table for customers
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15)
);

-- Create a table for reservations
CREATE TABLE Reservations (
    ReservationID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    RestaurantID INT,
    TableID INT,
    ReservationDate DATE,
    ReservationTime TIME,
    PartySize INT,
    Status VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID),
    FOREIGN KEY (TableID) REFERENCES Tables(TableID)
);
