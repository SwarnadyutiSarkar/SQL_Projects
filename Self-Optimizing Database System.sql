-- Create a table for performance metrics
CREATE TABLE PerformanceMetrics (
    MetricID INT PRIMARY KEY AUTO_INCREMENT,
    MetricName VARCHAR(100),
    Value DECIMAL(12, 4),
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create a table for optimization jobs
CREATE TABLE OptimizationJobs (
    JobID INT PRIMARY KEY AUTO_INCREMENT,
    JobName VARCHAR(200),
    Status VARCHAR(50),
    StartTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    EndTime TIMESTAMP
);

-- Create a table for user interactions
CREATE TABLE UserInteractions (
    InteractionID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    Query TEXT,
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
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
