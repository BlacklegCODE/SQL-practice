to get multiple appearing readings only once:
select distinct first_name from actor

select distinct rating, rental_duration from film

select distinct amount from payment order by 1 desc

select distinct amount from payment order by amount limit 10

select count (distinct first_name) from actor

select distinct rental_date from rental order by 1 desc
select distinct district from address limit 10
select count(distinct last_name) from customer
