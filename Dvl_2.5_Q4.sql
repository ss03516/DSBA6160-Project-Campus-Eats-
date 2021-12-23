-- create a stored procedure that returns the average ratings for Restaurants.  Test the procedure.
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE avg_res_rate()
BEGIN
	SELECT restaurant_name, AVG(restaurant_rating) as Rating
	FROM restaurant
	INNER JOIN rating
	ON rating.restaurant_id = restaurant.restaurant_id
	GROUP BY rating.restaurant_id;
END //
DELIMITER //

#test
call avg_res_rate();