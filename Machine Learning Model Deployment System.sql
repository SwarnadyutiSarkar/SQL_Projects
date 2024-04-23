-- Create a table for models
CREATE TABLE Models (
    ModelID INT PRIMARY KEY AUTO_INCREMENT,
    ModelName VARCHAR(200),
    ModelType VARCHAR(50),
    UploadDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FilePath VARCHAR(255),
    Status VARCHAR(50)
);

-- Create a table for deployments
CREATE TABLE Deployments (
    DeploymentID INT PRIMARY KEY AUTO_INCREMENT,
    ModelID INT,
    DeploymentName VARCHAR(200),
    DeploymentDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Status VARCHAR(50),
    EndpointURL VARCHAR(255),
    FOREIGN KEY (ModelID) REFERENCES Models(ModelID)
);

-- Create a table for predictions
CREATE TABLE Predictions (
    PredictionID INT PRIMARY KEY AUTO_INCREMENT,
    DeploymentID INT,
    InputData JSON,
    OutputData JSON,
    PredictionDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (DeploymentID) REFERENCES Deployments(DeploymentID)
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
