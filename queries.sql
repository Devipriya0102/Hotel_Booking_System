USE HotelBookingDB;

-- 1. Retrieve Available Rooms
SELECT r.room_id, h.name AS hotel_name, r.room_type, r.price
FROM rooms r
JOIN hotels h ON r.hotel_id = h.hotel_id
WHERE r.availability = TRUE;

-- 2. Book a Room
INSERT INTO bookings (customer_id, room_id, check_in, check_out, status, payment_status) 
VALUES (1, 1, '2025-03-20', '2025-03-25', 'Booked', 'Pending');

UPDATE rooms SET availability = FALSE WHERE room_id = 1;

-- 3. View Customer Booking History
SELECT b.booking_id, c.name AS customer_name, h.name AS hotel_name, r.room_type, 
       b.check_in, b.check_out, b.status, b.payment_status
FROM bookings b
JOIN customers c ON b.customer_id = c.customer_id
JOIN rooms r ON b.room_id = r.room_id
JOIN hotels h ON r.hotel_id = h.hotel_id
WHERE c.customer_id = 1;

-- 4. Cancel a Booking
UPDATE bookings SET status = 'Cancelled' WHERE booking_id = 1;

UPDATE rooms SET availability = TRUE 
WHERE room_id = (SELECT room_id FROM bookings WHERE booking_id = 1);
