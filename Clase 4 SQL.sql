

SELECT title, special_features FROM film WHERE rating = "PG-13";

SELECT `length` FROM film;

SELECT title, rental_rate, replacement_cost FROM film WHERE replacement_cost BETWEEN 20.00 AND 24.00;

SELECT f.title, c.name, f.rating FROM film f, film_category fc, category c WHERE f.film_id = fc.film_id AND fc.category_id = c.category_id AND f.special_features LIKE "%Behind the Scenes%";

SELECT a.first_name, a.last_name FROM actor a, film_actor fa, film f  WHERE f.film_id = fa.film_id AND fa.actor_id = a.actor_id AND f.title = "ZOOLANDER FICTION";

SELECT a.address, c.city, co.country, s.store_id FROM address a, city c, country co, store s 
WHERE s.store_id=s.address_id AND a.city_id = c.city_id AND c.country_id = co.country_id AND s.store_id = 1;

SELECT f1.title, f2.title, f1.rating, f2.rating 
FROM film f1, film f2
WHERE f1.rating = f2.rating AND f1.film_id <> f2.film_id;

SELECT title, staff.first_name, staff.last_name FROM film, staff, inventory, store 
WHERE store.store_id = inventory.store_id AND film.film_id = inventory.film_id AND store.manager_staff_id = staff.staff_id AND store.store_id = 2;

