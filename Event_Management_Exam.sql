DROP DATABASE IF EXISTS Event_Management;
CREATE DATABASE Event_Management;
USE Event_Management;



CREATE TABLE Organizers (
    organizer_id INT PRIMARY KEY AUTO_INCREMENT,
    organizer_name VARCHAR(100),
    contact_email VARCHAR(100),
    phone_number VARCHAR(15)
);

INSERT INTO Organizers (organizer_name, contact_email, phone_number) VALUES
('Rohan mishra', 'Rohan@gmail.com', '9876543210'),
('Priya patil', 'priya@gmail.com', '9876501234'),
('Sakshi Bagul', 'Sakshi@gmail.com', '9123456780'),
('Neha patil', 'neha@gmail.com', '9988776655'),
('Deny verma', 'Deny@gmail.com', '9090909090'),
('Sneha singh', 'sneha@gmail.com', '9871234567'),
('Vikas Jain', 'vikas@gmail.com', '9812345678'),
('Anjali sharma', 'anjali@gmail.com', '9765432109'),
('Karan patel', 'karan@gmail.com', '9654321098'),
('Pooja Desai', 'pooja@gmail.com', '9543210987');

Select * from Organizers;

+--------------+----------------+------------------+--------------+
| organizer_id | organizer_name | contact_email    | phone_number |
+--------------+----------------+------------------+--------------+
|            1 | Rohan mishra   | Rohan@gmail.com  | 9876543210   |
|            2 | Priya patil    | priya@gmail.com  | 9876501234   |
|            3 | Sakshi Bagul   | Sakshi@gmail.com | 9123456780   |
|            4 | Neha patil     | neha@gmail.com   | 9988776655   |
|            5 | Deny verma     | Deny@gmail.com   | 9090909090   |
|            6 | Sneha singh    | sneha@gmail.com  | 9871234567   |
|            7 | Vikas Jain     | vikas@gmail.com  | 9812345678   |
|            8 | Anjali sharma  | anjali@gmail.com | 9765432109   |
|            9 | Karan patel    | karan@gmail.com  | 9654321098   |
|           10 | Pooja Desai    | pooja@gmail.com  | 9543210987   |
+--------------+----------------+------------------+--------------+

CREATE TABLE Venues (
    venue_id INT PRIMARY KEY,
    venue_name VARCHAR(100),
    location VARCHAR(100),
    capacity INT
);

INSERT INTO Venues VALUES
(101,'Hall A', 'Ahmedabad', 500),
(102,'Hall B', 'Surat', 300),
(103,'Grand Arena', 'Mumbai', 1000),
(104,'City Hall', 'Delhi', 700),
(105,'Open Ground', 'Pune', 1500),
(106,'Conference Room 1', 'Bangalore', 200),
(107,'Expo Center', 'Hyderabad', 1200),
(108,'Auditorium X', 'Ahmedabad', 600),
(109,'Banquet Hall', 'Jaipur', 400),
(110,'Tech Park Hall', 'Gurgaon', 350);

Select * from Venues;
+----------+-------------------+-----------+----------+
| venue_id | venue_name        | location  | capacity |
+----------+-------------------+-----------+----------+
|      101 | Hall A            | Ahmedabad |      500 |
|      102 | Hall B            | Surat     |      300 |
|      103 | Grand Arena       | Mumbai    |     1000 |
|      104 | City Hall         | Delhi     |      700 |
|      105 | Open Ground       | Pune      |     1500 |
|      106 | Conference Room 1 | Bangalore |      200 |
|      107 | Expo Center       | Hyderabad |     1200 |
|      108 | Auditorium X      | Ahmedabad |      600 |
|      109 | Banquet Hall      | Jaipur    |      400 |
|      110 | Tech Park Hall    | Gurgaon   |      350 |
+----------+-------------------+-----------+----------+

CREATE TABLE Events (
    event_id INT PRIMARY KEY,
    event_name VARCHAR(100),
    event_date DATE,
    venue_id INT,
    organizer_id INT,
    ticket_price DECIMAL(10,2),
    total_seats INT,
    available_seats INT,
    FOREIGN KEY (venue_id) REFERENCES Venues(venue_id),
    FOREIGN KEY (organizer_id) REFERENCES Organizers(organizer_id)
);

INSERT INTO Events VALUES
(201,'Music Fest', '2027-12-10', 101, 1, 500, 500, 200),
(202,'Tech Summit', '2025-11-15',105, 2, 1000, 300, 150),
(203,'Startup Meet', '2026-10-20',103, 3, 750, 1000, 600),
(204,'Food Carnival', '2025-12-05',104, 4, 300, 700, 300),
(205,'Art Expo',      '2025-09-25',105, 5, 400, 1500, 800),
(206,'Coding Bootcamp', '2025-08-18',106, 6, 1200, 200, 50),
(207,'Business Meetup', '2025-07-22',107, 7, 900, 1200, 500),
(208,'Dance Show',     '2025-12-25',108, 8, 600, 600, 100),
(209,'Comedy Night', '2025-11-30',109, 9, 700, 400, 120),
(210,'Gaming Event', '2027-10-10',110, 10, 800, 350, 200);

Select * from Events;
+----------+-----------------+------------+----------+--------------+--------------+-------------+-----------------+
| event_id | event_name      | event_date | venue_id | organizer_id | ticket_price | total_seats | available_seats |
+----------+-----------------+------------+----------+--------------+--------------+-------------+-----------------+
|      201 | Music Fest      | 2027-12-10 |      101 |            1 |       500.00 |         500 |             200 |
|      202 | Tech Summit     | 2025-11-15 |      105 |            2 |      1000.00 |         300 |             150 |
|      203 | Startup Meet    | 2026-10-20 |      103 |            3 |       750.00 |        1000 |             600 |
|      204 | Food Carnival   | 2025-12-05 |      104 |            4 |       300.00 |         700 |             300 |
|      205 | Art Expo        | 2025-09-25 |      105 |            5 |       400.00 |        1500 |             800 |
|      206 | Coding Bootcamp | 2025-08-18 |      106 |            6 |      1200.00 |         200 |              50 |
|      207 | Business Meetup | 2025-07-22 |      107 |            7 |       900.00 |        1200 |             500 |
|      208 | Dance Show      | 2025-12-25 |      108 |            8 |       600.00 |         600 |             100 |
|      209 | Comedy Night    | 2025-11-30 |      109 |            9 |       700.00 |         400 |             120 |
|      210 | Gaming Event    | 2027-10-10 |      110 |           10 |       800.00 |         350 |             200 |
+----------+-----------------+------------+----------+--------------+--------------+-------------+-----------------+

CREATE TABLE Attendees (
    attendee_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(15)
);

INSERT INTO Attendees VALUES
(111,'Aman', 'aman@gmail.com', '9000000001'),
(112,'Riya', 'riya@gmail.com', '9000000002'),
(113,'Soham', 'soham@gmail.com', '9000000003'),
(114,'Kriti', 'kriti@gmail.com', '9000000004'),
(115,'Arjun', 'arjun@gmail.com', '9000000005'),
(116,'Meera', 'meera@gmail.com', '9000000006'),
(117,'Dev', 'dev@gmail.com', '9000000007'),
(118,'Isha', 'isha@gmail.com', '9000000008'),
(119,'Yash', 'yash@gmail.com', '9000000009'),
(120,'Nisha', 'nisha@gmail.com', '9000000010');

Select * from Attendees;

+-------------+-------+-----------------+--------------+
| attendee_id | name  | email           | phone_number |
+-------------+-------+-----------------+--------------+
|         111 | Aman  | aman@gmail.com  | 9000000001   |
|         112 | Riya  | riya@gmail.com  | 9000000002   |
|         113 | Soham | soham@gmail.com | 9000000003   |
|         114 | Kriti | kriti@gmail.com | 9000000004   |
|         115 | Arjun | arjun@gmail.com | 9000000005   |
|         116 | Meera | meera@gmail.com | 9000000006   |
|         117 | Dev   | dev@gmail.com   | 9000000007   |
|         118 | Isha  | isha@gmail.com  | 9000000008   |
|         119 | Yash  | yash@gmail.com  | 9000000009   |
|         120 | Nisha | nisha@gmail.com | 9000000010   |
+-------------+-------+-----------------+--------------+


CREATE TABLE Tickets (
    ticket_id INT PRIMARY KEY,
    event_id INT,
    attendee_id INT,
    booking_date DATE,
    status VARCHAR(30),
    FOREIGN KEY (event_id) REFERENCES Events(event_id),
    FOREIGN KEY (attendee_id) REFERENCES Attendees(attendee_id)
);

INSERT INTO Tickets VALUES
(1001,201,111, '2026-10-01', 'Confirmed'),
(1002,202,112, '2025-10-02', 'Confirmed'),
(1003,203,113, '2025-10-03', 'Pending'),
(1004,204,114, '2025-10-04', 'Cancelled'),
(1005,205,115, '2025-10-05', 'Confirmed'),
(1006,206,116, '2027-10-06', 'Pending'),
(1007,207,117, '2025-10-07', 'Confirmed'),
(1008,208,118, '2025-10-08', 'Cancelled'),
(1009,209,119, '2025-10-09', 'Confirmed'),
(1010,210,120, '2026-10-10', 'Pending');

Select * from Tickets ;
+-----------+----------+-------------+--------------+-----------+
| ticket_id | event_id | attendee_id | booking_date | status    |
+-----------+----------+-------------+--------------+-----------+
|      1001 |      201 |         111 | 2026-10-01   | Confirmed |
|      1002 |      202 |         112 | 2025-10-02   | Confirmed |
|      1003 |      203 |         113 | 2025-10-03   | Pending   |
|      1004 |      204 |         114 | 2025-10-04   | Cancelled |
|      1005 |      205 |         115 | 2025-10-05   | Confirmed |
|      1006 |      206 |         116 | 2027-10-06   | Pending   |
|      1007 |      207 |         117 | 2025-10-07   | Confirmed |
|      1008 |      208 |         118 | 2025-10-08   | Cancelled |
|      1009 |      209 |         119 | 2025-10-09   | Confirmed |
|      1010 |      210 |         120 | 2026-10-10   | Pending   |
+-----------+----------+-------------+--------------+-----------+

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    ticket_id INT,
    amount_paid DECIMAL(10,2),
    payment_status VARCHAR(20),
    payment_date DATE,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id)
);

INSERT INTO Payments  VALUES
(11,1001, 500, 'Success', '2025-10-01'),
(12,1002, 1000, 'Success', '2025-10-02'),
(13,1003, 750, 'Pending', '2025-10-03'),
(14,1004, 300, 'Failed', '2025-10-04'),
(15,1005, 400, 'Success', '2025-10-05'),
(16,1006, 1200, 'Pending', '2025-10-06'),
(17,1007, 900, 'Success', '2025-10-07'),
(18,1008, 600, 'Failed', '2025-10-08'),
(19,1009, 700, 'Success', '2025-10-09'),
(20,1010, 800, 'Pending', '2025-10-10');

Select * from Payments;
+------------+-----------+-------------+----------------+--------------+
| payment_id | ticket_id | amount_paid | payment_status | payment_date |
+------------+-----------+-------------+----------------+--------------+
|         11 |      1001 |      500.00 | Success        | 2025-10-01   |
|         12 |      1002 |     1000.00 | Success        | 2025-10-02   |
|         13 |      1003 |      750.00 | Pending        | 2025-10-03   |
|         14 |      1004 |      300.00 | Failed         | 2025-10-04   |
|         15 |      1005 |      400.00 | Success        | 2025-10-05   |
|         16 |      1006 |     1200.00 | Pending        | 2025-10-06   |
|         17 |      1007 |      900.00 | Success        | 2025-10-07   |
|         18 |      1008 |      600.00 | Failed         | 2025-10-08   |
|         19 |      1009 |      700.00 | Success        | 2025-10-09   |
|         20 |      1010 |      800.00 | Pending        | 2025-10-10   |
+------------+-----------+-------------+----------------+--------------+

-- CRUD Operations

-- INSERT

INSERT INTO Venues 
VALUES (111,'City Hall', 'Ahmedabad', 1000);


-- UPDATE

UPDATE Venues
SET Location = 'Junagadh'
WHERE venue_id  = 106;

-- DELETE 

DELETE FROM Venues
WHERE venue_id = 102;

-- Read 
Select * from Venues;
+----------+-------------------+-----------+----------+
| venue_id | venue_name        | location  | capacity |
+----------+-------------------+-----------+----------+
|      101 | Hall A            | Ahmedabad |      500 |
|      103 | Grand Arena       | Mumbai    |     1000 |
|      104 | City Hall         | Delhi     |      700 |
|      105 | Open Ground       | Pune      |     1500 |
|      106 | Conference Room 1 | Junagadh  |      200 |
|      107 | Expo Center       | Hyderabad |     1200 |
|      108 | Auditorium X      | Ahmedabad |      600 |
|      109 | Banquet Hall      | Jaipur    |      400 |
|      110 | Tech Park Hall    | Gurgaon   |      350 |
|      111 | City Hall         | Ahmedabad |     1000 |
+----------+-------------------+-----------+----------+


-- WHERE, HAVING, LIMIT

-- Upcoming events in a city

SELECT * FROM Events e
JOIN Venues v ON e.venue_id = v.venue_id
WHERE v.location = 'Ahmedabad'
AND e.event_date >= CURDATE();

+----------+------------+------------+----------+--------------+--------------+-------------+-----------------+----------+------------+-----------+----------+
| event_id | event_name | event_date | venue_id | organizer_id | ticket_price | total_seats | available_seats | venue_id | venue_name | location  | capacity |
+----------+------------+------------+----------+--------------+--------------+-------------+-----------------+----------+------------+-----------+----------+
|      201 | Music Fest | 2027-12-10 |      101 |            1 |       500.00 |         500 |             200 |      101 | Hall A     | Ahmedabad |      500 |
+----------+------------+------------+----------+--------------+--------------+-------------+-----------------+----------+------------+-----------+----------+


-- Top 5 highest revenue events

SELECT * 
FROM Events
WHERE venue_id IN (SELECT venue_id  FROM Venues 
    WHERE location = 'Ahmedabad')
AND event_date >= CURDATE();
+----------+------------+------------+----------+--------------+--------------+-------------+-----------------+
| event_id | event_name | event_date | venue_id | organizer_id | ticket_price | total_seats | available_seats |
+----------+------------+------------+----------+--------------+--------------+-------------+-----------------+
|      201 | Music Fest | 2027-12-10 |      101 |            1 |       500.00 |         500 |             200 |
+----------+------------+------------+----------+--------------+--------------+-------------+-----------------+


-- Attendees booked in last 7 days

SELECT name
FROM Attendees
WHERE attendee_id IN (SELECT attendee_id FROM Tickets
    WHERE booking_date >= CURDATE() - INTERVAL 7 DAY
);

+-------+
| name  |
+-------+
| Aman  |
| Meera |
| Nisha |
+-------+

-- December events with >50% seats

SELECT * FROM Events
WHERE MONTH(event_date) = 12
AND available_seats > total_seats * 0.5;

+-------+
| name  |
+-------+
| Aman  |
| Riya  |
| Soham |
| Kriti |
| Arjun |
| Meera |
| Dev   |
| Isha  |
| Yash  |
| Nisha |
+-------+

-- Attendees with ticket OR pending payment

SELECT name
FROM Attendees
WHERE attendee_id IN (SELECT attendee_id FROM Tickets)
OR attendee_id IN (SELECT attendee_id
    FROM Tickets
    WHERE ticket_id IN (
        SELECT ticket_id FROM Payments WHERE payment_status = 'Pending'
    )
);


+----------+-----------------+------------+----------+--------------+--------------+-------------+-----------------+
| event_id | event_name      | event_date | venue_id | organizer_id | ticket_price | total_seats | available_seats |
+----------+-----------------+------------+----------+--------------+--------------+-------------+-----------------+
|      201 | Music Fest      | 2027-12-10 |      101 |            1 |       500.00 |         500 |             200 |
|      202 | Tech Summit     | 2025-11-15 |      105 |            2 |      1000.00 |         300 |             150 |
|      203 | Startup Meet    | 2026-10-20 |      103 |            3 |       750.00 |        1000 |             600 |
|      204 | Food Carnival   | 2025-12-05 |      104 |            4 |       300.00 |         700 |             300 |
|      205 | Art Expo        | 2025-09-25 |      105 |            5 |       400.00 |        1500 |             800 |
|      206 | Coding Bootcamp | 2025-08-18 |      106 |            6 |      1200.00 |         200 |              50 |
|      207 | Business Meetup | 2025-07-22 |      107 |            7 |       900.00 |        1200 |             500 |
|      208 | Dance Show      | 2025-12-25 |      108 |            8 |       600.00 |         600 |             100 |
|      209 | Comedy Night    | 2025-11-30 |      109 |            9 |       700.00 |         400 |             120 |
|      210 | Gaming Event    | 2027-10-10 |      110 |           10 |       800.00 |         350 |             200 |
+----------+-----------------+------------+----------+--------------+--------------+-------------+-----------------+
-- Events not fully booked

SELECT * FROM Events
WHERE available_seats > 0;

+----------+-----------------+------------+----------+--------------+--------------+-------------+-----------------+
| event_id | event_name      | event_date | venue_id | organizer_id | ticket_price | total_seats | available_seats |
+----------+-----------------+------------+----------+--------------+--------------+-------------+-----------------+
|      207 | Business Meetup | 2025-07-22 |      107 |            7 |       900.00 |        1200 |             500 |
|      206 | Coding Bootcamp | 2025-08-18 |      106 |            6 |      1200.00 |         200 |              50 |
|      205 | Art Expo        | 2025-09-25 |      105 |            5 |       400.00 |        1500 |             800 |
|      202 | Tech Summit     | 2025-11-15 |      105 |            2 |      1000.00 |         300 |             150 |
|      209 | Comedy Night    | 2025-11-30 |      109 |            9 |       700.00 |         400 |             120 |
|      204 | Food Carnival   | 2025-12-05 |      104 |            4 |       300.00 |         700 |             300 |
|      208 | Dance Show      | 2025-12-25 |      108 |            8 |       600.00 |         600 |             100 |
|      203 | Startup Meet    | 2026-10-20 |      103 |            3 |       750.00 |        1000 |             600 |
|      210 | Gaming Event    | 2027-10-10 |      110 |           10 |       800.00 |         350 |             200 |
|      201 | Music Fest      | 2027-12-10 |      101 |            1 |       500.00 |         500 |             200 |
+----------+-----------------+------------+----------+--------------+--------------+-------------+-----------------+

-- Sort events by date

SELECT * FROM Events
ORDER BY event_date ASC;

+----------+-----------------+------------+----------+--------------+--------------+-------------+-----------------+
| event_id | event_name      | event_date | venue_id | organizer_id | ticket_price | total_seats | available_seats |
+----------+-----------------+------------+----------+--------------+--------------+-------------+-----------------+
|      207 | Business Meetup | 2025-07-22 |      107 |            7 |       900.00 |        1200 |             500 |
|      206 | Coding Bootcamp | 2025-08-18 |      106 |            6 |      1200.00 |         200 |              50 |
|      205 | Art Expo        | 2025-09-25 |      105 |            5 |       400.00 |        1500 |             800 |
|      202 | Tech Summit     | 2025-11-15 |      105 |            2 |      1000.00 |         300 |             150 |
|      209 | Comedy Night    | 2025-11-30 |      109 |            9 |       700.00 |         400 |             120 |
|      204 | Food Carnival   | 2025-12-05 |      104 |            4 |       300.00 |         700 |             300 |
|      208 | Dance Show      | 2025-12-25 |      108 |            8 |       600.00 |         600 |             100 |
|      203 | Startup Meet    | 2026-10-20 |      103 |            3 |       750.00 |        1000 |             600 |
|      210 | Gaming Event    | 2027-10-10 |      110 |           10 |       800.00 |         350 |             200 |
|      201 | Music Fest      | 2027-12-10 |      101 |            1 |       500.00 |         500 |             200 |
+----------+-----------------+------------+----------+--------------+--------------+-------------+-----------------+

-- Count attendees per event

SELECT event_id, COUNT(attendee_id) AS total_attendees
FROM Tickets
GROUP BY event_id;

+----------+----------------+
| event_id | total_attendees |
+----------+-----------------+
|      201 |               1 |
|      202 |               1 |
|      203 |               1 |
|      204 |               1 |
|      205 |               1 |
|      206 |               1 |
|      207 |               1 |
|      208 |               1 |
|      209 |               1 |
|      210 |               1 |
+----------+-----------------+

-- Revenue per event

SELECT e.event_name, SUM(p.amount_paid) AS revenue
FROM Events e
JOIN Tickets t ON e.event_id = t.event_id
JOIN Payments p ON t.ticket_id = p.ticket_id
GROUP BY e.event_id;

+-----------------+---------+
| event_name      | revenue |
+-----------------+---------+
| Music Fest      |  500.00 |
| Tech Summit     | 1000.00 |
| Startup Meet    |  750.00 |
| Food Carnival   |  300.00 |
| Art Expo        |  400.00 |
| Coding Bootcamp | 1200.00 |
| Business Meetup |  900.00 |
| Dance Show      |  600.00 |
| Comedy Night    |  700.00 |
| Gaming Event    |  800.00 |
+-----------------+---------+


-- Aggregate Functions

-- Total revenue

SELECT SUM(amount_paid) FROM Payments
WHERE payment_status = 'Success';

+------------------+
| SUM(amount_paid) |
+------------------+
|          3500.00 |
+------------------+

-- Event with highest attendees

SELECT event_id, COUNT(attendee_id) AS total
FROM Tickets
GROUP BY event_id
ORDER BY total DESC
LIMIT 1;

+----------+-------+
| event_id | total |
+----------+-------+
|      201 |     1 |
+----------+-------+

-- Average ticket price

SELECT AVG(ticket_price) FROM Events;

+-------------------+
| AVG(ticket_price) |
+-------------------+
|        715.000000 |
+-------------------+

-- Primary & Foreign Keys

-- Prevent Multiple Bookings

ALTER TABLE Tickets
ADD CONSTRAINT unique_ticket UNIQUE (event_id, attendee_id);


-- Link Payments to Tickets (Foreign Key):

ALTER TABLE Payments
ADD CONSTRAINT fk_ticket
FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id);



-- INNER JOIN: event + venue

SELECT e.event_id, e.event_name, v.venue_name
FROM events e
INNER JOIN venues v
ON e.venue_id = v.venue_id;
+----------+-----------------+-------------------+
| event_id | event_name      | venue_name        |
+----------+-----------------+-------------------+
|      201 | Music Fest      | Hall A            |
|      202 | Tech Summit     | Open Ground       |
|      203 | Startup Meet    | Grand Arena       |
|      204 | Food Carnival   | City Hall         |
|      205 | Art Expo        | Open Ground       |
|      206 | Coding Bootcamp | Conference Room 1 |
|      207 | Business Meetup | Expo Center       |
|      208 | Dance Show      | Auditorium X      |
|      209 | Comedy Night    | Banquet Hall      |
|      210 | Gaming Event    | Tech Park Hall    |
+----------+-----------------+-------------------+


-- LEFT JOIN

SELECT e.event_id, e.event_name, v.venue_name
FROM events e
LEFT JOIN venues v
ON e.venue_id = v.venue_id;
+----------+-----------------+-------------------+
| event_id | event_name      | venue_name        |
+----------+-----------------+-------------------+
|      201 | Music Fest      | Hall A            |
|      202 | Tech Summit     | Open Ground       |
|      203 | Startup Meet    | Grand Arena       |
|      204 | Food Carnival   | City Hall         |
|      205 | Art Expo        | Open Ground       |
|      206 | Coding Bootcamp | Conference Room 1 |
|      207 | Business Meetup | Expo Center       |
|      208 | Dance Show      | Auditorium X      |
|      209 | Comedy Night    | Banquet Hall      |
|      210 | Gaming Event    | Tech Park Hall    |
+----------+-----------------+-------------------+


-- RIGHT JOIN

SELECT e.event_id, e.event_name, v.venue_name
FROM events e
RIGHT JOIN venues v
ON e.venue_id = v.venue_id;
+----------+-----------------+-------------------+
| event_id | event_name      | venue_name        |
+----------+-----------------+-------------------+
|      201 | Music Fest      | Hall A            |
|      203 | Startup Meet    | Grand Arena       |
|      204 | Food Carnival   | City Hall         |
|      202 | Tech Summit     | Open Ground       |
|      205 | Art Expo        | Open Ground       |
|      206 | Coding Bootcamp | Conference Room 1 |
|      207 | Business Meetup | Expo Center       |
|      208 | Dance Show      | Auditorium X      |
|      209 | Comedy Night    | Banquet Hall      |
|      210 | Gaming Event    | Tech Park Hall    |
|     NULL | NULL            | City Hall         |
+----------+-----------------+-------------------+

-- FULL OUTER JOIN

SELECT e.event_id, e.event_name, v.venue_name
FROM events e
LEFT JOIN venues v
ON e.venue_id = v.venue_id

UNION

SELECT e.event_id, e.event_name, v.venue_name
FROM events e
RIGHT JOIN venues v
ON e.venue_id = v.venue_id;

+----------+-----------------+-------------------+
| event_id | event_name      | venue_name        |
+----------+-----------------+-------------------+
|      201 | Music Fest      | Hall A            |
|      202 | Tech Summit     | Open Ground       |
|      203 | Startup Meet    | Grand Arena       |
|      204 | Food Carnival   | City Hall         |
|      205 | Art Expo        | Open Ground       |
|      206 | Coding Bootcamp | Conference Room 1 |
|      207 | Business Meetup | Expo Center       |
|      208 | Dance Show      | Auditorium X      |
|      209 | Comedy Night    | Banquet Hall      |
|      210 | Gaming Event    | Tech Park Hall    |
|     NULL | NULL            | City Hall         |
+----------+-----------------+-------------------+

-- Subqueries

-- Venues having more than 1 event

SELECT venue_id
FROM events
GROUP BY venue_id
HAVING COUNT(*) >= 1;
+----------+
| venue_id |
+----------+
|      101 |
|      103 |
|      104 |
|      105 |
|      106 |
|      107 |
|      108 |
|      109 |
|      110 |
+----------+

-- Events whose venue exists

SELECT event_name
FROM events
WHERE venue_id IN (SELECT venue_id FROM venues);
+-----------------+
| event_name      |
+-----------------+
| Music Fest      |
| Tech Summit     |
| Startup Meet    |
| Food Carnival   |
| Art Expo        |
| Coding Bootcamp |
| Business Meetup |
| Dance Show      |
| Comedy Night    |
| Gaming Event    |
+-----------------+
-- Date Functions

SELECT 
    event_id,
    event_name,
    CURRENT_DATE AS today_date,
    NOW() AS current_datetime,
    DAY(CURRENT_DATE) AS day,
    MONTH(CURRENT_DATE) AS month,
    YEAR(CURRENT_DATE) AS year
FROM events;
+----------+-----------------+------------+---------------------+------+-------+------+
| event_id | event_name      | today_date | current_datetime    | day  | month | year |
+----------+-----------------+------------+---------------------+------+-------+------+
|      201 | Music Fest      | 2026-04-13 | 2026-04-13 21:34:40 |   13 |     4 | 2026 |
|      202 | Tech Summit     | 2026-04-13 | 2026-04-13 21:34:40 |   13 |     4 | 2026 |
|      203 | Startup Meet    | 2026-04-13 | 2026-04-13 21:34:40 |   13 |     4 | 2026 |
|      204 | Food Carnival   | 2026-04-13 | 2026-04-13 21:34:40 |   13 |     4 | 2026 |
|      205 | Art Expo        | 2026-04-13 | 2026-04-13 21:34:40 |   13 |     4 | 2026 |
|      206 | Coding Bootcamp | 2026-04-13 | 2026-04-13 21:34:40 |   13 |     4 | 2026 |
|      207 | Business Meetup | 2026-04-13 | 2026-04-13 21:34:40 |   13 |     4 | 2026 |
|      208 | Dance Show      | 2026-04-13 | 2026-04-13 21:34:40 |   13 |     4 | 2026 |
|      209 | Comedy Night    | 2026-04-13 | 2026-04-13 21:34:40 |   13 |     4 | 2026 |
|      210 | Gaming Event    | 2026-04-13 | 2026-04-13 21:34:40 |   13 |     4 | 2026 |
+----------+-----------------+------------+---------------------+------+-------+------+

-- String Functions

SELECT UPPER(event_name) FROM events;
+-------------------+
| UPPER(event_name) |
+-------------------+
| MUSIC FEST        |
| TECH SUMMIT       |
| STARTUP MEET      |
| FOOD CARNIVAL     |
| ART EXPO          |
| CODING BOOTCAMP   |
| BUSINESS MEETUP   |
| DANCE SHOW        |
| COMEDY NIGHT      |
| GAMING EVENT      |
+-------------------+

SELECT LENGTH(event_name) FROM events;

+--------------------+
| LENGTH(event_name) |
+--------------------+
|                 10 |
|                 11 |
|                 12 |
|                 13 |
|                  8 |
|                 15 |
|                 15 |
|                 10 |
|                 12 |
|                 12 |
+--------------------+

SELECT CONCAT(event_name, ' - Event') FROM events;

+--------------------------------+
| CONCAT(event_name, ' - Event') |
+--------------------------------+
| Music Fest - Event             |
| Tech Summit - Event            |
| Startup Meet - Event           |
| Food Carnival - Event          |
| Art Expo - Event               |
| Coding Bootcamp - Event        |
| Business Meetup - Event        |
| Dance Show - Event             |
| Comedy Night - Event           |
| Gaming Event - Event           |
+--------------------------------+
-- Window Functions

SELECT event_id, event_name,
RANK() OVER (ORDER BY event_id) AS rank_no
FROM events;

+----------+-----------------+---------+
| event_id | event_name      | rank_no |
+----------+-----------------+---------+
|      201 | Music Fest      |       1 |
|      202 | Tech Summit     |       2 |
|      203 | Startup Meet    |       3 |
|      204 | Food Carnival   |       4 |
|      205 | Art Expo        |       5 |
|      206 | Coding Bootcamp |       6 |
|      207 | Business Meetup |       7 |
|      208 | Dance Show      |       8 |
|      209 | Comedy Night    |       9 |
|      210 | Gaming Event    |      10 |
+----------+-----------------+---------+

SELECT event_id,
COUNT(*) OVER () AS total_events
FROM events;

+----------+--------------+
| event_id | total_events |
+----------+--------------+
|      201 |           10 |
|      203 |           10 |
|      204 |           10 |
|      202 |           10 |
|      205 |           10 |
|      206 |           10 |
|      207 |           10 |
|      208 |           10 |
|      209 |           10 |
|      210 |           10 |
+----------+--------------+

-- CASE

SELECT event_name,
CASE
    WHEN event_id < 205 THEN 'Old Event'
    ELSE 'New Event'
END AS category
FROM events;

+-----------------+-----------+
| event_name      | category  |
+-----------------+-----------+
| Music Fest      | Old Event |
| Tech Summit     | Old Event |
| Startup Meet    | Old Event |
| Food Carnival   | Old Event |
| Art Expo        | New Event |
| Coding Bootcamp | New Event |
| Business Meetup | New Event |
| Dance Show      | New Event |
| Comedy Night    | New Event |
| Gaming Event    | New Event |
+-----------------+-----------+