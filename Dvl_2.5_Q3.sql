-- create a function that returns the Restaurant_ID given the Restaurant_Name..  Test the function.
DELIMITER //
CREATE FUNCTION get_restaurant_id
(
	restaurant_name varchar(300)
)
RETURNS int
deterministic reads sql data

BEGIN

DECLARE restaurant_id int;
SET restaurant_id  = (select r.restaurant_id 
from restaurant r  
where r.restaurant_name = restaurant_name);
RETURN restaurant_id;
END//
DELIMITER //

#test
select get_restaurant_id('Rath Ltd') as Restaurant_ID;


