/* 1) Use `INNER JOIN` to display the first and last names, as well as the address, of each staff member. Use the tables `staff` and `address` */
USE sakila;
  SELECT s.first_name,s.last_name,a.address
  FROM staff AS s
  JOIN address AS a
  ON s.address_id = a.address_id;
  
/* 2) Use `INNER JOIN` to display the total amount rung up by each staff member in August of 2005. Use tables `staff` and `payment`. */
SELECT s.staff_id,s.first_name,sum(p.amount)
FROM payment AS p
JOIN staff AS s
ON p.staff_id = s.staff_id
WHERE payment_date LIKE "2005-08-%"
GROUP BY p.staff_id;


/* 3) Write a query  to find the employee_id,name(last_name) along with their manager_id and name(last_name).*/
 SELECT s.staff_id,s.last_name,st.manager_staff_id,s.last_name AS manager_name
 FROM staff AS s
 JOIN store AS st
 ON s.store_id = st.store_id;
 

/* 4) List each film and the number of actors who are listed for that film. Use tables `film_actor` and `film`. Use inner join. */
SELECT distinct title,count(actor_id) As number_ofActors
FROM film_actor AS fa
JOIN film AS f
ON fa.film_id  = f.film_id 
GROUP BY title
ORDER BY count(actor_id) DESC;




/* 5) Write a query to get the department name and number of employees in the department. */



/* 6) How many copies of the film `Hunchback Impossible` exist in the inventory system? */

SELECT f.title,count(i.film_id) AS no_ofCopies
FROM inventory as i
JOIN film as f
ON i.film_id = f.film_id
WHERE title = "Hunchback Impossible";





/* 7) Using the tables `payment` and `customer` and the `INNER JOIN` command, list the total paid by each customer. List the customers
 alphabetically by last name: */

SELECT p.customer_id,c.first_name,sum(p.amount) AS total_payment
FROM payment AS P
JOIN customer AS c
ON p.customer_id = c.customer_id
GROUP BY p.customer_id
ORDER BY first_name DESC;


/* 8) Which actor has appeared in the most films? */
SELECT first_name,count(fa.film_id)
FROM actor AS a
JOIN film_actor as fa
ON a.actor_id = fa.actor_id
GROUP BY fa.actor_id
ORDER BY count(fa.actor_id) DESC
LIMIT 1;

