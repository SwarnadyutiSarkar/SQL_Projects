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
    Address TEXT,
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(10),
    JoinDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create a table for auctions
CREATE TABLE Auctions (
    AuctionID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    ProductName VARCHAR(200),
    Description TEXT,
    StartDate DATETIME,
    EndDate DATETIME,
    StartingPrice DECIMAL(10, 2),
    Status VARCHAR(50),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Create a table for bids
CREATE TABLE Bids (
    BidID INT PRIMARY KEY AUTO_INCREMENT,
    AuctionID INT,
    UserID INT,
    BidAmount DECIMAL(10, 2),
    BidDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (AuctionID) REFERENCES Auctions(AuctionID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);
