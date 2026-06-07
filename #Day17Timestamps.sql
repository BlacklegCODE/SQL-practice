--Learning timestamps

select current_timestamp, 
extract(day from return_date-rental_date) * 24 
+ extract(hours from return_date - rental_date) || 'hours'
from rental
order by 2 asc

--Challenge question query:


--You need to create a list for the support team of all rental durations of customer with
--customer_id 35

select customer_id,
return_date-rental_date as duration
from rental 
where customer_id = 35


--Also you need to find out for the support team which customer has the
--longest average rental duration?

select customer_id, avg(return_date - rental_date) as duration 
from rental
group by customer_id
order by duration desc
