--Learning subqueries and CTEs

select * from 

(select city_id, max(country_id) as maximum from city group by country_id,city_id) as identities

where maximum < 30

--New Example:

with mi as
(select city_id, max(country_id) as maximum from city group by country_id,city_id)

select * from mi where city_id >300 
