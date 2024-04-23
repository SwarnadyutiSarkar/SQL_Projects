-- Create a table for nodes
CREATE TABLE Nodes (
    NodeID INT PRIMARY KEY AUTO_INCREMENT,
    NodeType VARCHAR(50),
    NodeName VARCHAR(200),
    Properties JSON
);

-- Create a table for relationships
CREATE TABLE Relationships (
    RelationshipID INT PRIMARY KEY AUTO_INCREMENT,
    StartNodeID INT,
    EndNodeID INT,
    RelationshipType VARCHAR(50),
    Properties JSON,
    FOREIGN KEY (StartNodeID) REFERENCES Nodes(NodeID),
    FOREIGN KEY (EndNodeID) REFERENCES Nodes(NodeID)
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
