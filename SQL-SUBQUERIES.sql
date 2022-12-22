SELECT COUNT(*) FROM film 
WHERE length > (SELECT AVG(length) FROM film );

SELECT COUNT(*) FROM film 
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

SELECT COUNT(*) FROM film 
WHERE (rental_rate,replacement_cost) = (SELECT MIN(rental_rate), MIN(replacement_cost) FROM film);
SELECT 
DISTINCT customer_id , 
(SELECT COUNT(*) FROM payment 
 WHERE customer_id = main_payment.customer_id ) AS payment_count
FROM payment AS main_payment 
ORDER BY payment_count DESC;