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
    Balance DECIMAL(12, 2)
);

-- Create a table for stocks
CREATE TABLE Stocks (
    StockID INT PRIMARY KEY AUTO_INCREMENT,
    TickerSymbol VARCHAR(10) UNIQUE,
    CompanyName VARCHAR(100),
    CurrentPrice DECIMAL(10, 2),
    MarketCap DECIMAL(15, 2)
);

-- Create a table for transactions
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    StockID INT,
    TransactionType VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10, 2),
    TransactionDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (StockID) REFERENCES Stocks(StockID)
);

-- Create a table for watchlists
CREATE TABLE Watchlists (
    WatchlistID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    StockID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (StockID) REFERENCES Stocks(StockID)
);
