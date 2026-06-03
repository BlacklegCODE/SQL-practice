--Learning subqueries and CTEs

select * from 

(select city_id, max(country_id) as maximum from city group by country_id,city_id) as identities

where maximum < 30
