-- Create a table for autonomous instances
CREATE TABLE AutonomousInstances (
    InstanceID INT PRIMARY KEY AUTO_INCREMENT,
    InstanceName VARCHAR(200),
    Region VARCHAR(50),
    Status VARCHAR(50),
    CreatedDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create a table for databases
CREATE TABLE Databases (
    DatabaseID INT PRIMARY KEY AUTO_INCREMENT,
    DatabaseName VARCHAR(200),
    InstanceID INT,
    StorageSize DECIMAL(12, 2),
    Cost DECIMAL(12, 2),
    FOREIGN KEY (InstanceID) REFERENCES AutonomousInstances(InstanceID)
);

-- Create a table for backups
CREATE TABLE Backups (
    BackupID INT PRIMARY KEY AUTO_INCREMENT,
    DatabaseID INT,
    BackupDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Status VARCHAR(50),
    FOREIGN KEY (DatabaseID) REFERENCES Databases(DatabaseID)
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
