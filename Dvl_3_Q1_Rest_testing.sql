select *
from restaurant 
where restaurant_id = 43;

Select *
from rating 
where restaurant_id = 43;

Select (AVG(rating.restaurant_rating)) from rating where rating.restaurant_id = 43 group by rating.restaurant_id;

UPDATE restaurant
SET restaurant.rating = (
Select AVG(rating.restaurant_rating) 
from rating 
where rating.restaurant_id = 43
group by rating.restaurant_id)
where restaurant_id = 43;

UPDATE restaurant
SET restaurant.rating = NULL
WHERE restaurant_id = 43