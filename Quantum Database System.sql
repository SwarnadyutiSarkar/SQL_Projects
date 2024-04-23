-- Create a table for qubits
CREATE TABLE Qubits (
    QubitID INT PRIMARY KEY AUTO_INCREMENT,
    State VARCHAR(50),
    Probability DECIMAL(5, 4),
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create a table for quantum operations
CREATE TABLE QuantumOperations (
    OperationID INT PRIMARY KEY AUTO_INCREMENT,
    OperationName VARCHAR(100),
    Parameters JSON,
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create a table for quantum circuits
CREATE TABLE QuantumCircuits (
    CircuitID INT PRIMARY KEY AUTO_INCREMENT,
    CircuitName VARCHAR(200),
    OperationID INT,
    QubitID INT,
    FOREIGN KEY (OperationID) REFERENCES QuantumOperations(OperationID),
    FOREIGN KEY (QubitID) REFERENCES Qubits(QubitID)
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
