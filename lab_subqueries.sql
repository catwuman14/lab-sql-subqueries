use sakila;

select count(i.inventory_id)
from inventory as i
inner join film as f on f.film_id = i.film_id
where title like 'Hunchback Impossible';



SELECT title, actor_id
FROM film
WHERE length > (
    SELECT AVG(length)
    FROM film
    WHERE film_id IN (
        SELECT film_id
        FROM film_actor
        WHERE film_id IN (
            SELECT film_id
            FROM film
            WHERE title = 'Alone Trip'
        )
    )
);

select title, actor_id
from film
where length > (
              select avg(length)
			  from film
			  where film_id in (
							   select film_id 
                               from film_actor 
							   where film_id in (
												 select film_id
                                                 from film
                                                 where title = 'Alone Trip')));





