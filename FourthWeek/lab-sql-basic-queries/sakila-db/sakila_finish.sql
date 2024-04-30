USE sakila;

# 1. Display all available tables in the Sakila database.

SHOW TABLES

# 2. Retrieve all the data from the tables actor, film and customer.

SELECT * FROM actor, film, customer;

USE sakila;

# 3. Retrieve the following columns from their respective tables:
# Titles of all films from the film table
# List of languages used in films, with the column aliased as language from the language table
# List of first names of all employees from the staff table

SELECT title FROM film;

SELECT name FROM language;

SELECT first_name FROM staff;


# 4. Retrieve unique release years.

USE sakila;

SELECT distinct(release_year) FROM film; 

# 5. Counting records for database insights:
# Determine the number of stores that the company has.
SELECT COUNT(store_id) AS store_number
FROM store;

# Determine the number of employees that the company has.
SELECT COUNT(staff_id) AS staff_number
FROM staff;

# Determine how many films are available for rent and how many have been rented.
SELECT COUNT(film_id) AS films_available
FROM film;
SELECT COUNT(DISTINCT rental_id) AS films_rental
FROM rental;

# Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS actors_ln
FROM actor;

# 6. Retrieve the 10 longest films.
SELECT length, title  
FROM film
ORDER BY length DESC 
LIMIT 10;

# 7.Use filtering techniques in order to: 
# Retrieve all actors with the first name "SCARLETT".
SELECT * 
FROM actor
WHERE first_name LIKE "SCARLETT";

# Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * 
FROM film
WHERE title LIKE "%ARMAGEDDON%" AND length > 100;

# Determine the number of films that include Behind the Scenes content

SELECT COUNT(title) AS behind_the_scenes_number 
FROM film
WHERE special_features LIKE "%Behind the Scenes%";

