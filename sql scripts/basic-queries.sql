# SELECT, AS, AND, ORDER, IN, WHERE, LIMIT, BETWEEN, CONCAT
SELECT id, CONCAT(first_name," ", last_name) AS full_name FROM customers
WHERE first_name LIKE '%i%'
AND last_name IN ('Woodad', 'Perry', 'Lott', 'Ngo')
OR id BETWEEN 5 AND 8
ORDER BY id DESC
LIMIT 5;
/* Return id and full name containing first name and last name of 
last 5 customers who has letter 'i' in first name and last name is either Woodad/Perry/Lott/Ngo, 
or customers who has id between 5 and 8, from the highest to smallest id */