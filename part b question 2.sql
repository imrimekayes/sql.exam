--part b question 2 -1 
select genre , count (*)
from movies 
group by genre
--part b question 2 -2
select year , sum (revenue)
from movies
group by year
--part b question 2 -3
SELECT genre , avg (revenue)
from movies
GROUP by genre
--part b question 2 -4
SELECT language , avg (revenue)
from movies
GROUP by language
--part b question 2 -5
SELECT language ,count(*) as cnt
from movies
GROUP by language
order by cnt asc
limit 1
--part b question 2 -6
SELECT country ,count(*) as cnt
from movies
GROUP by country
order by cnt desc
limit 1