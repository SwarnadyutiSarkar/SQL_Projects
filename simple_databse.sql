-- Create a new database
CREATE DATABASE SimpleDatabase;

-- Use the newly created database
USE SimpleDatabase;

-- Create a table named 'Users'
CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Age INT,
    DateJoined DATE
);
