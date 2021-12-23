#Q2. Create a  function  that returns the Driver_ID given the Driver_Name.  Test the function.
DELIMITER //
CREATE FUNCTION get_driver_id
(
	driver_name varchar(300)
)
RETURNS int
deterministic reads sql data

BEGIN

DECLARE driver_id int;
SET driver_id = (select d.driver_id
from driver d
left join person p
on d.student_id = p.person_id
where p.person_name = driver_name);
RETURN driver_id;
END//
DELIMITER //

#test
select get_driver_id('Myron Mayert') as Driver_ID;
