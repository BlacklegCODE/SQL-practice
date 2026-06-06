--Learning TO_CHAR function:

select sum(amount),
TO_CHAR(payment_date, 'YYYY-Month-Day') as modi
from payment
group by modi



--Challenge question for to_char:
--You need to sum payments and group in the following formats:
--sum, month, year
--sum, weekday, time
--Group them pair by pair

--sum, Day, date
select sum(amount), to_char( payment_date, 'Day-DD-MM-YYYY') as p_day from payment
group by p_day


--sum, month, year

select sum(amount), to_char(payment_date, 'Month-YYYY') as p_date from payment
group by p_date


--sum, weekday, time
select sum(amount), to_char(payment_date, 'Day HH:MM') as times from payment
group by times
