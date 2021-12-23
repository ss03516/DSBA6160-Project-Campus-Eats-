# DVL3 Create a stored procedure to calculate ratings  - Driver
select * 
from driver; 
DELIMITER // 
CREATE DEFINER=`root`@`localhost` PROCEDURE `Drv_Rating_calculator`(in `driver_id` int(11))
BEGIN
UPDATE driver
SET driver.rating = (select AVG(rating.driver_rating) as driver_avg_rating 
from rating 
where rating.driver_id = driver_id  
group by rating.driver_id);
END //
DELIMITER // 

call Drv_Rating_calculator(1);

select *
from driver 
where driver.driver_id = 1;