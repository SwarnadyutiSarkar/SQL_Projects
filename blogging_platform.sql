-- Create a new database for Blogging Platform
CREATE DATABASE BloggingPlatform;

-- Use the newly created database
USE BloggingPlatform;

-- Create a table for users
CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50),
    Password VARCHAR(100),
    Email VARCHAR(100),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    JoinDate DATE
);

-- Create a table for blog posts
CREATE TABLE BlogPosts (
    PostID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    Title VARCHAR(200),
    Content TEXT,
    PostDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Create a table for comments
CREATE TABLE Comments (
    CommentID INT PRIMARY KEY AUTO_INCREMENT,
    PostID INT,
    UserID INT,
    CommentText TEXT,
    CommentDate DATE,
    FOREIGN KEY (PostID) REFERENCES BlogPosts(PostID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);
