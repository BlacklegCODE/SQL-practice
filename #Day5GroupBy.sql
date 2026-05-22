select customer_id, sum(amount) 
from payment where customer_id > 3 
group by customer_id order by customer_id desc



--Challenge question for Group By

--Manager wants to know which of the two employees (Staff_id) is responsible
--for more payments?
--for higher overall payment?
--How do these amounts change if we dont consider amounts equal to 0?

select staff_id, sum(amount), count(amount) from payment
group by staff_id order by sum(amount) desc 


-- above is half answer, below is next half:

select staff_id, sum(amount), count(amount) from payment
where amount != 0
group by staff_id
order by sum(amount) desc
