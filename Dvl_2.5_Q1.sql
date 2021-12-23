select *
from restaurant;

#1)create a SQL query that inserts a new row into the Restaurant table. Test with good and bad data.
#good data
INSERT INTO `restaurant`
VALUES (101,'28262 South Park North', 'Steaks', '4pm-11pm','http://www.steaks.net/', 0);

select *
from restaurant;

#bad data  #duplication of Primary Key. 
INSERT INTO `restaurant` (`restaurant_id`, `location`, `restaurant_name`, `schedule`, `website`) Values
('101','28262 South Park North', 'Steaks', '4pm-11pm','http://www.steaks.net/');

