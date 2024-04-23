-- Create a table for autonomous instances
CREATE TABLE AutonomousInstances (
    InstanceID INT PRIMARY KEY AUTO_INCREMENT,
    InstanceName VARCHAR(200),
    Region VARCHAR(50),
    Status VARCHAR(50),
    CreatedDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create a table for transactions
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    InstanceID INT,
    Amount DECIMAL(10, 2),
    TransactionDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Status VARCHAR(50),
    FOREIGN KEY (InstanceID) REFERENCES AutonomousInstances(InstanceID)
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
