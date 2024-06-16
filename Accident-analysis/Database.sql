-- Create a table to store accident information
CREATE TABLE accidents (
    accident_id INT PRIMARY KEY,
    date DATE,
    time TIME,
    location VARCHAR(255),
    severity VARCHAR(50),
    weather VARCHAR(50),
    road_condition VARCHAR(50),
    light_condition VARCHAR(50)
);

-- Create a table to store vehicle information
CREATE TABLE vehicles (
    vehicle_id INT PRIMARY KEY,
    accident_id INT,
    vehicle_type VARCHAR(50),
    driver_age INT,
    driver_gender VARCHAR(10),
    driver_condition VARCHAR(50),
    FOREIGN KEY (accident_id) REFERENCES accidents(accident_id)
);

-- Create a table to store casualty information
CREATE TABLE casualties (
    casualty_id INT PRIMARY KEY,
    accident_id INT,
    vehicle_id INT,
    casualty_type VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    severity VARCHAR(50),
    FOREIGN KEY (accident_id) REFERENCES accidents(accident_id),
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id)
);
