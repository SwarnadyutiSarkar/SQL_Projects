-- Create a table for users
CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) UNIQUE,
    Password VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    UserRole VARCHAR(50)
);

-- Create a table for products
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(200),
    Category VARCHAR(100),
    Description TEXT
);

-- Create a table for user interactions
CREATE TABLE UserInteractions (
    InteractionID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    ProductID INT,
    InteractionType VARCHAR(50),
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Create a table for recommendations
CREATE TABLE Recommendations (
    RecommendationID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    ProductID INT,
    Score DECIMAL(5, 2),
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
