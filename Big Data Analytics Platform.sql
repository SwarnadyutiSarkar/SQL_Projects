-- Create a table for datasets
CREATE TABLE Datasets (
    DatasetID INT PRIMARY KEY AUTO_INCREMENT,
    DatasetName VARCHAR(200),
    Description TEXT,
    UploadDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FileType VARCHAR(50),
    FileSize DECIMAL(10, 2)
);

-- Create a table for data analysis jobs
CREATE TABLE AnalysisJobs (
    JobID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    DatasetID INT,
    JobName VARCHAR(200),
    Status VARCHAR(50),
    StartTime TIMESTAMP,
    EndTime TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (DatasetID) REFERENCES Datasets(DatasetID)
);

-- Create a table for analysis results
CREATE TABLE AnalysisResults (
    ResultID INT PRIMARY KEY AUTO_INCREMENT,
    JobID INT,
    ResultName VARCHAR(200),
    ResultType VARCHAR(50),
    ResultPath VARCHAR(255),
    FOREIGN KEY (JobID) REFERENCES AnalysisJobs(JobID)
);
