-- Create a table for properties
CREATE TABLE Properties (
    PropertyID INT PRIMARY KEY AUTO_INCREMENT,
    PropertyType VARCHAR(50),
    Address TEXT,
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(10),
    Price DECIMAL(12, 2),
    Bedrooms INT,
    Bathrooms INT,
    SquareFootage INT,
    Description TEXT,
    Availability BOOLEAN
);

-- Create a table for agents
CREATE TABLE Agents (
    AgentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(15),
    HireDate DATE
);

-- Create a table for customers
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(15),
    Address TEXT,
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(10)
);

-- Create a table for property viewings
CREATE TABLE PropertyViewings (
    ViewingID INT PRIMARY KEY AUTO_INCREMENT,
    PropertyID INT,
    AgentID INT,
    CustomerID INT,
    ViewingDate DATE,
    Feedback TEXT,
    FOREIGN KEY (PropertyID) REFERENCES Properties(PropertyID),
    FOREIGN KEY (AgentID) REFERENCES Agents(AgentID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create a table for offers
CREATE TABLE Offers (
    OfferID INT PRIMARY KEY AUTO_INCREMENT,
    PropertyID INT,
    CustomerID INT,
    OfferAmount DECIMAL(12, 2),
    OfferDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Status VARCHAR(50),
    FOREIGN KEY (PropertyID) REFERENCES Properties(PropertyID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
