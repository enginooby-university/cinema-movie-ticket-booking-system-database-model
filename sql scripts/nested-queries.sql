# Non-correlated query
SELECT name, length_min FROM films
WHERE length_min < (SELECT AVG(length_min) FROM films);
/* Return name and length of films which has the lenght less than the average length */

# Non-correlated query with a derived table
SELECT MAX(id), MIN(id) FROM
(SELECT film_id, COUNT(id) AS id FROM screenings
GROUP BY film_id) a;
/* Return the maximum number and the minimum number of screenings for a particular film */

# Correlated query
SELECT name,
(SELECT COUNT(id) FROM screenings
WHERE film_id = f.id) AS number_of_screenings
FROM films f
ORDER BY number_of_screenings DESC;
/* Return each film name and the number of screenings for that film */
