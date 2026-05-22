select customer_id, sum(amount) 
from payment where customer_id > 3 
group by customer_id order by customer_id desc
