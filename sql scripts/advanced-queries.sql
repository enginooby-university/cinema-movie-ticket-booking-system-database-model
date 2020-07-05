-- Queries to multiple tables --
-- -------------------------- --
# INNER JOIN (JOIN)
SELECT DISTINCT(c.id), c.first_name, a.name FROM customers c
INNER JOIN bookings b ON c.id = b.customer_id
INNER JOIN reserved_seats rs ON b.id = rs.booking_id
INNER JOIN seats s ON s.id = rs.seat_id
INNER JOIN auditoriums a ON a.id = s.auditorium_id
WHERE a.name = 'Turpis'
ORDER BY c.id;
/* Return id and first name of customers who booked a seat in 'Turpis' auditorium */

# LEFT/RIGHT JOIN
SELECT DISTINCT(c.id), c.first_name FROM customers c 
LEFT JOIN bookings b ON c.id = b.customer_id; 
/* Left join returns all customers and only bookings owed by customers */
SELECT DISTINCT(c.id), c.first_name FROM customers c 
RIGHT JOIN bookings b ON c.id = b.customer_id; 
/* Right join returns only customers having bookings and all bookings*/

-- Aggregate queries & grouping --
-- ---------------------------- --
# COUNT
SELECT COUNT(*) FROM screenings s
JOIN films f ON s.film_id = f.id
WHERE f.name = 'sit amet metus.';
/* Return number of screening for 'sit amet metus.' film */

# COUNT DISTINCT
SELECT COUNT(DISTINCT(customer_id)) FROM bookings;
/* Return number of unique customers who made a booking */

# SUM
SELECT SUM(no_seats) FROM auditoriums;
/* Return number of seats in all auditoriums */

# MIN & MAX
SELECT MAX(length_min), MIN(length_min) FROM films;
/* Return the largest and smallest film length in minutes */

# AVERAGE
SELECT AVG(length_min) FROM films;
/* Return the average film lenghth in minutes */

# GROUPING
SELECT b.customer_id, COUNT(rs.id) FROM bookings b
JOIN reserved_seats rs ON b.id = rs.booking_id
GROUP BY b.customer_id;
/* Return number of reserved seats grouped by customer for each customer id */

# HAVING
SELECT f.name, f.length_min, COUNT(s.id) FROM films f
JOIN screenings s ON f.id = s.film_id
GROUP BY f.name, f.length_min
HAVING f.length_min > 130;
/* Return film names having length greater than 130 minutes with the number of screening for each film */
