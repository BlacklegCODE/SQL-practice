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
