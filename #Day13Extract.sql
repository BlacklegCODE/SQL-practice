--Learning TIMESTAMPS ie EXTERACT with example
--in which omnth of the day did we have most sales?

SELECT extract(month from rental_date) as dates,
count(*)
from rental 
group by dates
order by count(*) desc


--Challenge queries:
--You need to analyze the payments and find out ther fillowing:
--Whats the month with highest total payment amount?

SELECT 
extract(month from payment_date) as months, 
sum(amount) from payment 
group by months

--Whats the day of the week with highest total payment amount?

select sum(amount) as total, extract(week from payment_date) as weeks 
from payment 
group by weeks
order by total desc

--Whats the highest amount one customer has spent in a week?

select customer_id,sum(amount) as total, extract(week from payment_date) as weeks
from payment
group by weeks, customer_id
order by total desc
