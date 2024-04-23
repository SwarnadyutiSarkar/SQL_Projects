-- Create a table for blocks
CREATE TABLE Blocks (
    BlockID INT PRIMARY KEY,
    PreviousBlockHash VARCHAR(64),
    CurrentBlockHash VARCHAR(64),
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create a table for transactions
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    BlockID INT,
    SenderAddress VARCHAR(64),
    ReceiverAddress VARCHAR(64),
    Amount DECIMAL(10, 2),
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (BlockID) REFERENCES Blocks(BlockID)
);

-- Create a table for addresses
CREATE TABLE Addresses (
    AddressID INT PRIMARY KEY AUTO_INCREMENT,
    Address VARCHAR(64) UNIQUE,
    PublicKey VARCHAR(256),
    Balance DECIMAL(10, 2)
);
