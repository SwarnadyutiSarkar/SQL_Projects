-- Create a table for accounts
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY AUTO_INCREMENT,
    AccountType VARCHAR(50),
    Balance DECIMAL(12, 2),
    CreatedDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create a table for transactions
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    AccountID INT,
    TransactionType VARCHAR(50),
    Amount DECIMAL(10, 2),
    TransactionDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

-- Create a table for budgets
CREATE TABLE Budgets (
    BudgetID INT PRIMARY KEY AUTO_INCREMENT,
    AccountID INT,
    BudgetName VARCHAR(100),
    Amount DECIMAL(12, 2),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

-- Create a table for expenses
CREATE TABLE Expenses (
    ExpenseID INT PRIMARY KEY AUTO_INCREMENT,
    BudgetID INT,
    Description TEXT,
    Amount DECIMAL(10, 2),
    ExpenseDate DATE,
    FOREIGN KEY (BudgetID) REFERENCES Budgets(BudgetID)
);

-- Create a table for incomes
CREATE TABLE Incomes (
    IncomeID INT PRIMARY KEY AUTO_INCREMENT,
    AccountID INT,
    Description TEXT,
    Amount DECIMAL(10, 2),
    IncomeDate DATE,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

-- Create a table for investments
CREATE TABLE Investments (
    InvestmentID INT PRIMARY KEY AUTO_INCREMENT,
    AccountID INT,
    InvestmentName VARCHAR(100),
    InvestmentType VARCHAR(50),
    Amount DECIMAL(12, 2),
    PurchaseDate DATE,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);
