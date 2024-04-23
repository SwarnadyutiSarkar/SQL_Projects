-- Create a new database for Event Management System
CREATE DATABASE EventManagementSystem;

-- Use the newly created database
USE EventManagementSystem;

-- Create a table for events
CREATE TABLE Events (
    EventID INT PRIMARY KEY AUTO_INCREMENT,
    EventName VARCHAR(100),
    EventDate DATE,
    EventTime TIME,
    Venue VARCHAR(200),
    Organizer VARCHAR(100),
    Description TEXT
);

-- Create a table for attendees
CREATE TABLE Attendees (
    AttendeeID INT PRIMARY KEY AUTO_INCREMENT,
    EventID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    FOREIGN KEY (EventID) REFERENCES Events(EventID)
);
