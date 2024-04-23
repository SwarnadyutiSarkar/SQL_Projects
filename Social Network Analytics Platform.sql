-- Create a table for users
CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) UNIQUE,
    Password VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    PhoneNumber VARCHAR(15),
    JoinDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create a table for posts
CREATE TABLE Posts (
    PostID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    Content TEXT,
    PostDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Likes INT,
    Shares INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Create a table for comments
CREATE TABLE Comments (
    CommentID INT PRIMARY KEY AUTO_INCREMENT,
    PostID INT,
    UserID INT,
    CommentText TEXT,
    CommentDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (PostID) REFERENCES Posts(PostID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Create a table for friendships
CREATE TABLE Friendships (
    FriendshipID INT PRIMARY KEY AUTO_INCREMENT,
    UserID1 INT,
    UserID2 INT,
    FriendshipDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Status VARCHAR(50),
    FOREIGN KEY (UserID1) REFERENCES Users(UserID),
    FOREIGN KEY (UserID2) REFERENCES Users(UserID)
);
