-- Create a table for nodes
CREATE TABLE Nodes (
    NodeID INT PRIMARY KEY AUTO_INCREMENT,
    NodeAddress VARCHAR(255),
    NodeType VARCHAR(50),
    PublicKey VARCHAR(256),
    Status VARCHAR(50)
);

-- Create a table for transactions
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    SenderNodeID INT,
    ReceiverNodeID INT,
    Amount DECIMAL(10, 2),
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Status VARCHAR(50),
    FOREIGN KEY (SenderNodeID) REFERENCES Nodes(NodeID),
    FOREIGN KEY (ReceiverNodeID) REFERENCES Nodes(NodeID)
);

-- Create a table for blocks
CREATE TABLE Blocks (
    BlockID INT PRIMARY KEY AUTO_INCREMENT,
    PreviousBlockHash VARCHAR(64),
    CurrentBlockHash VARCHAR(64),
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create a table for block transactions
CREATE TABLE BlockTransactions (
    BlockID INT,
    TransactionID INT,
    FOREIGN KEY (BlockID) REFERENCES Blocks(BlockID),
    FOREIGN KEY (TransactionID) REFERENCES Transactions(TransactionID)
);
