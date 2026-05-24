--Having keyword learning:

select count(*), sum(amount) from payment 
group by staff_id, date(payment_date)
having count(*) <20 and count(*) > 15
order by count(*) desc


--Challenge question for 'Having':

-- In 2020-4-28,29,30 were days with very high revenue.
-- Thats why we want to focus in this task only on these days

-- Find out what is the average payment amount grouped by
-- customer and day, consider only the days/customers with
-- more than one payment, per customer and day
-- order by the average amount in a descending order

select  customer_id, date(payment_date), round(avg(amount),2)as average , count(*) from payment 
where  payment_date between '2020-4-28' and '2020-4-30'
group by customer_id, date(payment_date)
having count(*) > 1
order by average desc
