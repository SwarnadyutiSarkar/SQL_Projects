-- Create a table for databases
CREATE TABLE Databases (
    DatabaseID INT PRIMARY KEY AUTO_INCREMENT,
    DatabaseName VARCHAR(200),
    Location VARCHAR(100),
    Status VARCHAR(50)
);

-- Create a table for federated servers
CREATE TABLE FederatedServers (
    ServerID INT PRIMARY KEY AUTO_INCREMENT,
    ServerName VARCHAR(100),
    ServerAddress VARCHAR(255),
    Status VARCHAR(50)
);

-- Create a table for federated tables
CREATE TABLE FederatedTables (
    TableID INT PRIMARY KEY AUTO_INCREMENT,
    DatabaseID INT,
    TableName VARCHAR(200),
    ServerID INT,
    FOREIGN KEY (DatabaseID) REFERENCES Databases(DatabaseID),
    FOREIGN KEY (ServerID) REFERENCES FederatedServers(ServerID)
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
