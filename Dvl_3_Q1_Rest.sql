#Create a stored procedure to calculate ratings - Restaurant
select * 
from restaurant; 

DELIMITER //
CREATE PROCEDURE `Res_Rating_calculator`(in `restaurant_id` int(11))
BEGIN
UPDATE restaurant
SET restaurant.rating = (
Select AVG(rating.restaurant_rating) 
from rating 
where rating.restaurant_id = restaurant_id 
group by rating.restaurant_id);
END //
DELIMITER // 

call Res_Rating_calculator(43);

select *
from restaurant 
where restaurant.restaurant_id = 43;