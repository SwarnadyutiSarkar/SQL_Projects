-- Create a table for cloud providers
CREATE TABLE CloudProviders (
    ProviderID INT PRIMARY KEY AUTO_INCREMENT,
    ProviderName VARCHAR(100),
    Region VARCHAR(50),
    URL VARCHAR(255),
    Status VARCHAR(50)
);

-- Create a table for databases
CREATE TABLE Databases (
    DatabaseID INT PRIMARY KEY AUTO_INCREMENT,
    DatabaseName VARCHAR(200),
    ProviderID INT,
    StorageSize DECIMAL(12, 2),
    Cost DECIMAL(12, 2),
    FOREIGN KEY (ProviderID) REFERENCES CloudProviders(ProviderID)
);

-- Create a table for backup schedules
CREATE TABLE BackupSchedules (
    ScheduleID INT PRIMARY KEY AUTO_INCREMENT,
    DatabaseID INT,
    Frequency VARCHAR(50),
    StartTime TIME,
    NextBackup TIMESTAMP,
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
