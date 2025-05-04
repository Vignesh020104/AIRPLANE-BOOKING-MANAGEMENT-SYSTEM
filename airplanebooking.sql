create schema AIRPLANEBOOKING;


-- Table 1: Customer
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20)
);
-- Insert values into Customer table
INSERT INTO Customer (Customer_ID, Name, Email, Phone) VALUES
(1, 'Alice Johnson', 'alice@email.com', '1234567890'),
(2, 'Bob Smith', 'bob@email.com', '2345678901'),
(3, 'Charlie Brown', 'charlie@email.com', '3456789012'),
(4, 'David Lee', 'david@email.com', '4567890123'),
(5, 'Eva Green', 'eva@email.com', '5678901234'),
(6, 'Frank White', 'frank@email.com', '6789012345'),
(7, 'Grace Hall', 'grace@email.com', '7890123456'),
(8, 'Hannah Baker', 'hannah@email.com', '8901234567'),
(9, 'Ian Curtis', 'ian@email.com', '9012345678'),
(10, 'Julia Adams', 'julia@email.com', '0123456789'),
(11, 'Kevin Martin', 'kevin@email.com', '1122334455'),
(12, 'Laura Wilson', 'laura@email.com', '2233445566'),
(13, 'Mike Davis', 'mike@email.com', '3344556677'),
(14, 'Nancy Clark', 'nancy@email.com', '4455667788'),
(15, 'Oliver Thomas', 'oliver@email.com', '5566778899'),
(16, 'Paul Walker', 'paul@email.com', '6677889900'),
(17, 'Quincy Harris', 'quincy@email.com', '7788990011'),
(18, 'Rachel Scott', 'rachel@email.com', '8899001122'),
(19, 'Sam Evans', 'sam@email.com', '9900112233'),
(20, 'Tina Lewis', 'tina@email.com', '0011223344'),
(21, 'Umar Patel', 'umar@email.com', '1122334466'),
(22, 'Vera Robinson', 'vera@email.com', '2233445577'),
(23, 'Will Parker', 'will@email.com', '3344556688'),
(24, 'Xavier Moore', 'xavier@email.com', '4455667799'),
(25, 'Yasmine Taylor', 'yasmine@email.com', '5566778800'),
(26, 'Zane Cooper', 'zane@email.com', '6677889911'),
(27, 'Amy Fox', 'amy@email.com', '7788990022'),
(28, 'Brian Hughes', 'brian@email.com', '8899001133'),
(29, 'Cindy Lopez', 'cindy@email.com', '9900112244'),
(30, 'Derek Ross', 'derek@email.com', '0011223355');

-- Table 2: Location
CREATE TABLE Location (
    Location_ID INT PRIMARY KEY,
    Location_Name VARCHAR(100)
);
-- Insert values into Location table
INSERT INTO Location (Location_ID, Location_Name) VALUES
(1, 'New York'),
(2, 'Los Angeles'),
(3, 'Chicago'),
(4, 'Houston'),
(5, 'San Francisco'),
(6, 'Miami'),
(7, 'Seattle'),
(8, 'Dallas'),
(9, 'Boston'),
(10, 'Denver'),
(11, 'Atlanta'),
(12, 'Phoenix'),
(13, 'Philadelphia'),
(14, 'Las Vegas'),
(15, 'Orlando'),
(16, 'San Diego'),
(17, 'Austin'),
(18, 'Detroit'),
(19, 'Minneapolis'),
(20, 'Portland'),
(21, 'Tampa'),
(22, 'Charlotte'),
(23, 'Cleveland'),
(24, 'Kansas City'),
(25, 'Indianapolis'),
(26, 'St. Louis'),
(27, 'Salt Lake City'),
(28, 'Nashville'),
(29, 'Memphis'),
(30, 'New Orleans');

-- Table 3: Flight
CREATE TABLE Flight (
    Flight_ID INT PRIMARY KEY,
    Flight_Name VARCHAR(100),
    Departure_ID INT,
    Arrival_ID INT,
    FOREIGN KEY (Departure_ID) REFERENCES Location(Location_ID),
    FOREIGN KEY (Arrival_ID) REFERENCES Location(Location_ID)
);
-- Insert values into Flight table
INSERT INTO Flight (Flight_ID, Flight_Name, Departure_ID, Arrival_ID) VALUES
(1, 'NY to LA', 1, 2),
(2, 'Chicago to Houston', 3, 4),
(3, 'San Francisco to Miami', 5, 6),
(4, 'Seattle to Dallas', 7, 8),
(5, 'Boston to Denver', 9, 10),
(6, 'Atlanta to Phoenix', 11, 12),
(7, 'Philadelphia to Las Vegas', 13, 14),
(8, 'Orlando to San Diego', 15, 16),
(9, 'Austin to Detroit', 17, 18),
(10, 'Minneapolis to Portland', 19, 20),
(11, 'Tampa to Charlotte', 21, 22),
(12, 'Cleveland to Kansas City', 23, 24),
(13, 'Indianapolis to St. Louis', 25, 26),
(14, 'Salt Lake City to Nashville', 27, 28),
(15, 'Memphis to New Orleans', 29, 30),
(16, 'LA to NY', 2, 1),
(17, 'Houston to Chicago', 4, 3),
(18, 'Miami to San Francisco', 6, 5),
(19, 'Dallas to Seattle', 8, 7),
(20, 'Denver to Boston', 10, 9),
(21, 'Phoenix to Atlanta', 12, 11),
(22, 'Las Vegas to Philadelphia', 14, 13),
(23, 'San Diego to Orlando', 16, 15),
(24, 'Detroit to Austin', 18, 17),
(25, 'Portland to Minneapolis', 20, 19),
(26, 'Charlotte to Tampa', 22, 21),
(27, 'Kansas City to Cleveland', 24, 23),
(28, 'St. Louis to Indianapolis', 26, 25),
(29, 'Nashville to Salt Lake City', 28, 27),
(30, 'New Orleans to Memphis', 30, 29);

-- Table 4: Booking
CREATE TABLE Booking (
    Booking_ID INT PRIMARY KEY,
    Customer_ID INT,
    Date DATE,
    Flight_ID INT,
    Seat_NO VARCHAR(10),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Flight_ID) REFERENCES Flight(Flight_ID)
);


-- Insert values into Booking table
INSERT INTO Booking (Booking_ID, Customer_ID, Date, Flight_ID, Seat_NO) VALUES
(1, 1, '2025-05-10', 1, 'A1'),
(2, 2, '2025-05-11', 2, 'B2'),
(3, 3, '2025-05-12', 3, 'C3'),
(4, 4, '2025-05-13', 4, 'D4'),
(5, 5, '2025-05-14', 5, 'E5'),
(6, 6, '2025-05-15', 6, 'F6'),
(7, 7, '2025-05-16', 7, 'G7'),
(8, 8, '2025-05-17', 8, 'H8'),
(9, 9, '2025-05-18', 9, 'I9'),
(10, 10, '2025-05-19', 10, 'J10'),
(11, 11, '2025-05-20', 11, 'K11'),
(12, 12, '2025-05-21', 12, 'L12'),
(13, 13, '2025-05-22', 13, 'M13'),
(14, 14, '2025-05-23', 14, 'N14'),
(15, 15, '2025-05-24', 15, 'O15'),
(16, 16, '2025-05-25', 1, 'P16'),
(17, 17, '2025-05-26', 2, 'Q17'),
(18, 18, '2025-05-27', 3, 'R18'),
(19, 19, '2025-05-28', 4, 'S19'),
(20, 20, '2025-05-29', 5, 'T20'),
(21, 21, '2025-05-30', 6, 'U21'),
(22, 22, '2025-05-31', 7, 'V22'),
(23, 23, '2025-06-01', 8, 'W23'),
(24, 24, '2025-06-02', 9, 'X24'),
(25, 25, '2025-06-03', 10, 'Y25'),
(26, 26, '2025-06-04', 11, 'Z26'),
(27, 27, '2025-06-05', 12, 'A27'),
(28, 28, '2025-06-06', 13, 'B28'),
(29, 29, '2025-06-07', 14, 'C29'),
(30, 30, '2025-06-08', 15, 'D30');

-- Table 5: Payment
CREATE TABLE Payment (
    Payment_ID INT PRIMARY KEY,
    Booking_ID INT,
    Date DATE,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (Booking_ID) REFERENCES Booking(Booking_ID)
);
-- Insert values into Payment table
INSERT INTO Payment (Payment_ID, Booking_ID, Date, Amount) VALUES
(1, 1, '2025-05-10', 250.00),
(2, 2, '2025-05-11', 300.00),
(3, 3, '2025-05-12', 350.00),
(4, 4, '2025-05-13', 400.00),
(5, 5, '2025-05-14', 450.00),
(6, 6, '2025-05-15', 500.00),
(7, 7, '2025-05-16', 550.00),
(8, 8, '2025-05-17', 600.00),
(9, 9, '2025-05-18', 650.00),
(10, 10, '2025-05-19', 700.00),
(11, 11, '2025-05-20', 750.00),
(12, 12, '2025-05-21', 800.00),
(13, 13, '2025-05-22', 850.00),
(14, 14, '2025-05-23', 900.00),
(15, 15, '2025-05-24', 950.00),
(16, 16, '2025-05-25', 1000.00),
(17, 17, '2025-05-26', 1050.00),
(18, 18, '2025-05-27', 1100.00),
(19, 19, '2025-05-28', 1150.00),
(20, 20, '2025-05-29', 1200.00),
(21, 21, '2025-05-30', 1250.00),
(22, 22, '2025-05-31', 1300.00),
(23, 23, '2025-06-01', 1350.00),
(24, 24, '2025-06-02', 1400.00),
(25, 25, '2025-06-03', 1450.00),
(26, 26, '2025-06-04', 1500.00),
(27, 27, '2025-06-05', 1550.00),
(28, 28, '2025-06-06', 1600.00),
(29, 29, '2025-06-07', 1650.00),
(30, 30, '2025-06-08', 1700.00);