-- Create a table for hotels
CREATE TABLE Hotels (
    HotelID INT PRIMARY KEY AUTO_INCREMENT,
    HotelName VARCHAR(100),
    Address TEXT,
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(10),
    ContactNumber VARCHAR(15),
    Email VARCHAR(100)
);

-- Create a table for rooms
CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY AUTO_INCREMENT,
    HotelID INT,
    RoomNumber VARCHAR(20),
    RoomType VARCHAR(50),
    Price DECIMAL(10, 2),
    Availability BOOLEAN,
    FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID)
);

-- Create a table for bookings
CREATE TABLE HotelBookings (
    BookingID INT PRIMARY KEY AUTO_INCREMENT,
    HotelID INT,
    UserID INT,
    CheckInDate DATE,
    CheckOutDate DATE,
    BookingDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Create a table for guests
CREATE TABLE Guests (
    GuestID INT PRIMARY KEY AUTO_INCREMENT,
    BookingID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    PhoneNumber VARCHAR(15),
    FOREIGN KEY (BookingID) REFERENCES HotelBookings(BookingID)
);
