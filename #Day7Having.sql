--Having keyword learning:

select count(*), sum(amount) from payment 
group by staff_id, date(payment_date)
having count(*) <20 and count(*) > 15
order by count(*) desc


--Challenge question for 'Having':

