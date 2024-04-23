-- Create a table for employees
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(15),
    Address TEXT,
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(10),
    HireDate DATE,
    Position VARCHAR(100),
    Department VARCHAR(100),
    Salary DECIMAL(10, 2)
);

-- Create a table for departments
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(100),
    ManagerID INT,
    Location VARCHAR(100),
    FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);

-- Create a table for leave requests
CREATE TABLE LeaveRequests (
    RequestID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    StartDate DATE,
    EndDate DATE,
    Reason TEXT,
    Status VARCHAR(50),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Create a table for attendance
CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    Date DATE,
    Status VARCHAR(50),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
