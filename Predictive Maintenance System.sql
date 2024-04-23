-- Create a table for equipment
CREATE TABLE Equipment (
    EquipmentID INT PRIMARY KEY AUTO_INCREMENT,
    EquipmentName VARCHAR(200),
    Location VARCHAR(100),
    Status VARCHAR(50),
    LastMaintenance TIMESTAMP
);

-- Create a table for maintenance logs
CREATE TABLE MaintenanceLogs (
    LogID INT PRIMARY KEY AUTO_INCREMENT,
    EquipmentID INT,
    TechnicianID INT,
    Description TEXT,
    StartTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    EndTime TIMESTAMP,
    FOREIGN KEY (EquipmentID) REFERENCES Equipment(EquipmentID)
);

-- Create a table for predictive models
CREATE TABLE PredictiveModels (
    ModelID INT PRIMARY KEY AUTO_INCREMENT,
    ModelName VARCHAR(200),
    Description TEXT,
    LastTrained TIMESTAMP
);

-- Create a table for predictions
CREATE TABLE Predictions (
    PredictionID INT PRIMARY KEY AUTO_INCREMENT,
    ModelID INT,
    EquipmentID INT,
    PredictionDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Status VARCHAR(50),
    FOREIGN KEY (ModelID) REFERENCES PredictiveModels(ModelID),
    FOREIGN KEY (EquipmentID) REFERENCES Equipment(EquipmentID)
);
