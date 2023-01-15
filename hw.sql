--1. List all customers who live in Texas (use
JOINs)
SELECT first_name,last_name
FROM customer
JOIN address ON customer.address_id = address.id
JOIN country ON address.country_id = country_id.id
WHERE country.name = 'Texas'


--2. Get all payments above $6.99 with the Customer's Full
Name
SELECT customer_id,amount
FROM payment
WHERE amount > 6.99

--3. Show all customers names who have made payments over $175(use
subqueries)
SELECT first_name,last_name,
FROM customer
WHERE customer_id IN(
SELECT customers_id
FROM payment
GROUP BY customer_id
HAVING SUM(amount) >175
ORDER BY SUM(amount) DESC



--4. List all customers that live in Nepal (use the city
table) 
SELECT* 
FROM city
WHERE country_id = 66

--5. Which staff member had the most
transactions?

SELECT staff_id, COUNT(*) FROM payment
GROUP BY staff_id
ORDER BY COUNT(*) DESC
LIMIT 1;








--6. How many movies of each rating are
there?
SELECT rating, COUNT(*) FROM film
GROUP BY rating





--7.Show all customers who have made a single payment
above $6.99 (Use Subqueries)

select first_name,last_name
FROM customer
WHERE customer_id IN (
SELECT customer_id
FROM payment
WHERE amount > 6.99
GROUP BY customer_id
HAVING COUNT(*) = 1
);