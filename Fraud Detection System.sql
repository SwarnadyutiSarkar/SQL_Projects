-- Create a table for transactions
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    Amount DECIMAL(10, 2),
    TransactionDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Status VARCHAR(50)
);

-- Create a table for suspicious activities
CREATE TABLE SuspiciousActivities (
    ActivityID INT PRIMARY KEY AUTO_INCREMENT,
    TransactionID INT,
    Description TEXT,
    DetectionDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (TransactionID) REFERENCES Transactions(TransactionID)
);

-- Create a table for fraudsters
CREATE TABLE Fraudsters (
    FraudsterID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    Description TEXT,
    DetectionDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

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
