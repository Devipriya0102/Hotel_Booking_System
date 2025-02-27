CREATE DATABASE HotelBookingDB;
USE HotelBookingDB;

-- Hotels Table
CREATE TABLE hotels (
    hotel_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(255) NOT NULL,
    rating DECIMAL(2,1) CHECK (rating BETWEEN 1.0 AND 5.0)
);

-- Rooms Table
CREATE TABLE rooms (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    hotel_id INT,
    room_type ENUM('Single', 'Double', 'Suite', 'Deluxe') NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    availability BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (hotel_id) REFERENCES hotels(hotel_id) ON DELETE CASCADE
);

-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL
);

-- Bookings Table
CREATE TABLE bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    room_id INT,
    check_in DATE NOT NULL,
    check_out DATE NOT NULL,
    status ENUM('Booked', 'Checked-in', 'Checked-out', 'Cancelled') DEFAULT 'Booked',
    payment_status ENUM('Pending', 'Completed') DEFAULT 'Pending',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (room_id) REFERENCES rooms(room_id)
);
