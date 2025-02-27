# Hotel_Booking_System
Hotel Booking System (MySQL): Designed and implemented a relational database for managing hotel reservations, including room availability, customer bookings, and payment status using SQL queries and CRUD operations.

Hotel Booking System

Technologies Used: MySQL

Project Overview

The Hotel Booking System is a database-driven project designed to manage hotel reservations efficiently. It allows users to check room availability, make bookings, track customer reservations, and manage hotel room statuses.

Features:

Hotel Management: Stores hotel details, locations, and ratings.

Room Management: Tracks room types, pricing, and availability.

Customer Database: Stores customer information and contact details.

Booking System: Handles check-in, check-out, and payment status updates.

Cancellation & Updates: Allows room cancellations and updates booking statuses.


SQL Implementation:

Database Schema: Structured tables for hotels, rooms, customers, and bookings.

CRUD Operations: Queries to insert, update, delete, and retrieve data.

Joins & Constraints: Ensures data consistency with foreign keys and relationships.

How to Run the Project:

1. Setup MySQL Database:

mysql -u root -p

2. Import the Schema:

SOURCE database/schema.sql;

3. Insert Sample Data:

SOURCE database/seed.sql;

4. Execute Queries:

SOURCE database/queries.sql;
