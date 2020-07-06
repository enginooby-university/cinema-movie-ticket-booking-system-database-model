-- Modifying data queries --
-- ------------------------- --
# INSERT, UPDATE, DELETE
INSERT INTO customers (id,first_name,last_name,gender,email,address_id) VALUE
(12, "First name", "Last name", "M", "temp@gmail.com", 2);
SELECT * FROM cinema_booking_system.customers; #Check result
UPDATE customers
SET last_name = "changed"
WHERE id = 12;
SELECT * FROM cinema_booking_system.customers; #Check result
DELETE from customers
WHERE email = "temp@gmail.com";
SELECT * FROM cinema_booking_system.customers; #Check result

# INSERT IGNORE
INSERT IGNORE INTO customers (id,first_name,last_name,gender,email,address_id) VALUE
(1, "First name", "Last name", "M", "temp@gmail.com", 2);
/* return a warming message when inserting a duplicate primary key */

-- Seleting data queries --
-- ------------------------ --
# SELECT, AS, AND, ORDER, IN, NULL, WHERE, LIMIT, BETWEEN, CONCAT
SELECT id, CONCAT(first_name," ", last_name) AS full_name FROM customers
WHERE first_name LIKE '%i%'
AND last_name IN ('Woodad', 'Perry', 'Lott', 'Ngo')
OR id BETWEEN 5 AND 8
AND email IS NOT NULL
ORDER BY id DESC
LIMIT 5;
/* Return id and full name containing first name and last name of 
last 5 customers who has letter 'i' in first name and last name is either Woodad/Perry/Lott/Ngo, 
or customers who has id between 5 and 8 and own an email, from the highest to smallest id */

# UNION
SELECT f.name 'Films and auditoriums' FROM films f
UNION
SELECT a.name FROM auditoriums a;
/* Return all the films and auditoriums of the cinema, remove duplications */