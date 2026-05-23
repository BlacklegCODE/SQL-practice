--There asre two competitions between the two employees
--which employee had the highest sales amount ina single day?
--which employee had the most sales in a single day
--(not counting payments with amount 0)

select date(payment_date), staff_id,sum(amount), 
count(*) as total from payment 
where amount != 0
group by date(payment_date),staff_id
order by count(*) desc
