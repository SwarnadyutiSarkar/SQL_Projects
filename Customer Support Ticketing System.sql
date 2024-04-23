-- Create a table for customers
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(15),
    Address TEXT,
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(10)
);

-- Create a table for tickets
CREATE TABLE Tickets (
    TicketID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    Title VARCHAR(200),
    Description TEXT,
    Status VARCHAR(50),
    Priority VARCHAR(50),
    CreatedDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create a table for agents
CREATE TABLE Agents (
    AgentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(15),
    Department VARCHAR(100),
    HireDate DATE
);

-- Create a table for ticket assignments
CREATE TABLE TicketAssignments (
    AssignmentID INT PRIMARY KEY AUTO_INCREMENT,
    TicketID INT,
    AgentID INT,
    AssignmentDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Status VARCHAR(50),
    FOREIGN KEY (TicketID) REFERENCES Tickets(TicketID),
    FOREIGN KEY (AgentID) REFERENCES Agents(AgentID)
);

-- Create a table for ticket replies
CREATE TABLE TicketReplies (
    ReplyID INT PRIMARY KEY AUTO_INCREMENT,
    TicketID INT,
    AgentID INT,
    ReplyDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ReplyText TEXT,
    FOREIGN KEY (TicketID) REFERENCES Tickets(TicketID),
    FOREIGN KEY (AgentID) REFERENCES Agents(AgentID)
);
