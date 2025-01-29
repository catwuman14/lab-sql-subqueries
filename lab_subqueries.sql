use sakila;

select count(i.inventory_id)
from inventory as i
inner join film as f on f.film_id = i.film_id
where title like 'Hunchback Impossible';


SELECT title, length 
FROM film
WHERE length > (
  SELECT AVG(length) FROM film
);

SELECT actor_id, first_name, last_name
from actor
where actor_id in (select actor_id
					from film_actor
                    where film_id = (
						select film_id 
                        from film 
                        where title = 'Alone Trip'));
                        
                        
                        

