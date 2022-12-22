SELECT AVG(rental_rate) FROM film;

SELECT COUNT(*) FROM film
WHERE title ILIKE 'C%';

SELECT MAX(length) FROM film
WHERE rental_rate IN(0.99);

SELECT COUNT(DISTINCT length) FROM film
WHERE length > 150;

