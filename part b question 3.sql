-- part b question 3 1
select *
from tourists
inner join countries
on countries.id = tourists.country_id
-- part b question 3 2
select *  
from tourists
 join tours
on tours.id = tourists.tour_id
-- part b question 3 3
select * 
from tourists
left join tours
on tours.id = tourists.tour_id
-- part b question 3 4
select * 
from tourists
full join tours
on tours.id = tourists.tour_id
-- part b question 3 6
select tours.id ,tours.tour_name , count (tour_id) as cnt 
from tours
full join tourists
on tours.id = tourists.tour_id
group by tour_id
having cnt < 1