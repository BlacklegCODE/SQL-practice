--Learning timestamps

select current_timestamp, 
extract(day from return_date-rental_date) * 24 
+ extract(hours from return_date - rental_date) || 'hours'
from rental
order by 2 asc
