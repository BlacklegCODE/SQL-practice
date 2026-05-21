--Learning aggregation functions
select sum(amount) as total,
round(avg(amount),3) as average,
max(amount) as maximum, 
min(amount) as minimum from payment as average
