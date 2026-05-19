--practicing 'where' keyword:
select distinct payment_id, customer_id from payment where staff_id = 1
select first_name, last_name, last_update from actor where first_name = 'NICK'


--challenge:
select first_name, last_name from customer where first_name = 'ERICA'
select count(*) first_name from payment where customer_id = 100 

--operators:
select count(*) return_date from rental where return_date is null

select payment_id, amount from payment where amount <= 2
