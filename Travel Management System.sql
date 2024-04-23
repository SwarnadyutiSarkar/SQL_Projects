-- Create a table for travelers
CREATE TABLE Travelers (
    TravelerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(15),
    Address TEXT,
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(10)
);

-- Create a table for trips
CREATE TABLE Trips (
    TripID INT PRIMARY KEY AUTO_INCREMENT,
    TravelerID INT,
    Destination VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    TotalCost DECIMAL(10, 2),
    FOREIGN KEY (TravelerID) REFERENCES Travelers(TravelerID)
);

-- Create a table for bookings
CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY AUTO_INCREMENT,
    TripID INT,
    FlightID INT,
    HotelID INT,
    BookingDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (TripID) REFERENCES Trips(TripID),
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID),
    FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID)
);

-- Create a table for flights
CREATE TABLE Flights (
    FlightID INT PRIMARY KEY AUTO_INCREMENT,
    Airline VARCHAR(100),
    DepartureCity VARCHAR(50),
    ArrivalCity VARCHAR(50),
    DepartureTime DATETIME,
    ArrivalTime DATETIME,
    Price DECIMAL(10, 2)
);

-- Create a table for hotels
CREATE TABLE Hotels (
    HotelID INT PRIMARY KEY AUTO_INCREMENT,
    HotelName VARCHAR(100),
    Location VARCHAR(100),
    PricePerNight DECIMAL(10, 2),
    Capacity INT
);
