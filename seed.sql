USE HotelBookingDB;

-- Insert Hotels
INSERT INTO hotels (name, location, rating) VALUES 
('Grand Hotel', 'New York', 4.5),
('Seaside Resort', 'California', 4.2);

-- Insert Rooms
INSERT INTO rooms (hotel_id, room_type, price, availability) VALUES 
(1, 'Deluxe', 150.00, TRUE),
(1, 'Suite', 250.00, TRUE),
(2, 'Single', 100.00, TRUE);

-- Insert Customers
INSERT INTO customers (name, email, phone) VALUES 
('John Doe', 'john@example.com', '1234567890'),
('Alice Smith', 'alice@example.com', '9876543210');

-- Insert Bookings
INSERT INTO bookings (customer_id, room_id, check_in, check_out, status, payment_status) VALUES 
(1, 1, '2025-03-01', '2025-03-05', 'Booked', 'Pending'),
(2, 2, '2025-03-10', '2025-03-15', 'Booked', 'Completed');
