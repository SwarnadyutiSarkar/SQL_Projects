-- Create a table for airlines
CREATE TABLE Airlines (
    AirlineID INT PRIMARY KEY AUTO_INCREMENT,
    AirlineName VARCHAR(100),
    ContactNumber VARCHAR(15),
    Email VARCHAR(100)
);

-- Create a table for flights
CREATE TABLE Flights (
    FlightID INT PRIMARY KEY AUTO_INCREMENT,
    AirlineID INT,
    FlightNumber VARCHAR(20),
    DepartureAirport VARCHAR(100),
    ArrivalAirport VARCHAR(100),
    DepartureTime DATETIME,
    ArrivalTime DATETIME,
    Price DECIMAL(10, 2),
    TotalSeats INT,
    FOREIGN KEY (AirlineID) REFERENCES Airlines(AirlineID)
);

-- Create a table for bookings
CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY AUTO_INCREMENT,
    FlightID INT,
    UserID INT,
    BookingDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Create a table for passengers
CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY AUTO_INCREMENT,
    BookingID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);
