
--conditional statements:
select distinct * from payment where customer_id = 30 and staff_id = 1

--challenge query for and or:
select * from payment where (customer_id = 322 or customer_id = 346 or customer_id = 354)
and (amount < 2 or amount > 10)
order by customer_id asc, amount desc

--Learning between:
select * from rental
where rental_date between '2005-05-25' and '2005-05-27'
order by rental_date desc

--challenge query for between:
select count(*) from  payment
 where amount between '1.99' and '3.99'
 and payment_date between '2020-01-26' and '2020-01-28'

--Learning IN operator with challenge:

select * from payment 
where customer_id in (12,25,67,93,124,234) and
payment_date between '2020-1-1' and '2020-2-1' and
amount in (4.99, 7.99, 9.99)

--Learning LIKE operator:
select * from film where description ilike '%touching%'
and title ilike '_T%'

--LIKE challenge:
select count(*) from film where description like '%Documentary%'
select count(*) from customer 
where first_name like '___'
and (last_name like '%X' or last_name like '%Y')

--practicing aliases:
select title as name_of_the_movie from film
