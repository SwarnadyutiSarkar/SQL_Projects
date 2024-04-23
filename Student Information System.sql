-- Create a new database for Student Information System
CREATE DATABASE StudentInformationSystem;

-- Use the newly created database
USE StudentInformationSystem;

-- Create a table for students
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    EnrollmentDate DATE,
    Major VARCHAR(50)
);

-- Create a table for courses
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(100),
    Instructor VARCHAR(100),
    Credits INT
);

-- Create a table for student enrollments
CREATE TABLE StudentEnrollments (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    Grade VARCHAR(5),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);
