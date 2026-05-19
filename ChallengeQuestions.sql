--How many movies are there that contain "Saga" in the descrioption and where are tht title starts either with "A" or
--ends with "R"

select count(*) as number_of_movies from film
where description like '%Saga%' 
and (title like 'A%' or title like '%R')


--result was 14, correct



--Create a list of customers where first name contains "ER" and has an 'A' as the second letter
--Order the results by the last name descendingly



select first_name, last_name from customer 
where (first_name like '%E%R%') and first_name like '_A%'
order by last_name desc

--Correct



--How many payments are there where the amount is either 0 or is between 3.99 and 7.99 and in the same time
-- has happened on 2020-5-1

select count(*) from payment 
where (amount = 0 or amount between 3.99 and 7.99)
and payment_date between '2020-05-01' and '2020-5-2'
