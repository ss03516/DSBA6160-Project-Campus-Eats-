#Create a Stored Procedure that returns the average ratings for a Driver given driver ID. Test the procedure.
DELIMITER // 
CREATE DEFINER=`root`@`localhost` PROCEDURE `AVG_Drv_Rating_calculator`(in `driver_id` int(11))
BEGIN

Select driver.driver_id, p.person_name as driver_name, AVG(rating.driver_rating) as driver_avg_rating 
from rating 
left join driver 
on driver.driver_id = rating.driver_id 
left join  person p
on driver.student_id = p.person_id
where rating.driver_id = driver_id  
group by rating.driver_id;
END //
DELIMITER // 

#test
call AVG_Drv_Rating_calculator(1);