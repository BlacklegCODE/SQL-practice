--Learning aggregation functions
select sum(amount) as total,
round(avg(amount),3) as average,
max(amount) as maximum, 
min(amount) as minimum from payment as average


--Day 4 challenge:
--Challenge:Manager wants total, average, min, max of the replacement costs of the films from the film data.

select sum(replacement_cost) as total_cost,
max(replacement_cost) maximum_cost ,
round(avg(replacement_cost),2) as average_cost,
min(replacement_cost) as minimum_cost from film
