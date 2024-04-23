-- Create a table for data streams
CREATE TABLE DataStreams (
    StreamID INT PRIMARY KEY AUTO_INCREMENT,
    StreamName VARCHAR(200),
    SourceType VARCHAR(50),
    Status VARCHAR(50),
    LastUpdated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create a table for stream processors
CREATE TABLE StreamProcessors (
    ProcessorID INT PRIMARY KEY AUTO_INCREMENT,
    ProcessorName VARCHAR(200),
    StreamID INT,
    Status VARCHAR(50),
    FOREIGN KEY (StreamID) REFERENCES DataStreams(StreamID)
);

-- Create a table for processed data
CREATE TABLE ProcessedData (
    DataID INT PRIMARY KEY AUTO_INCREMENT,
    ProcessorID INT,
    Data JSON,
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ProcessorID) REFERENCES StreamProcessors(ProcessorID)
);
