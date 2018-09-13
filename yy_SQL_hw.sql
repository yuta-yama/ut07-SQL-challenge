USE sakila;

-- 1A - Display the first and last names of all actors from the table actor.
SELECT first_name, last_name FROM actor;

-- 1B - Display the first and last name of each actor in a single column in upper case letters. Name the column Actor Name.
SELECT first_name, last_name
	, CONCAT_WS(' ', first_name, last_name) AS "Actor Name" 
	FROM actor;
  
-- 2A - You need to find the ID number, first name, and last name of an actor, of whom you know only the first name, "Joe." 
-- What is one query would you use to obtain this information?
SELECT * FROM actor
WHERE first_name = "Joe";

-- 2b. Find all actors whose last name contain the letters GEN:
SELECT * FROM actor
WHERE last_name LIKE "%GEN%";

-- 2c. Find all actors whose last names contain the letters LI. This time, order the rows by last name and first name, in that order:
SELECT * FROM actor
WHERE last_name LIKE "%LI%" 
ORDER BY last_name ASC, first_name ASC;


