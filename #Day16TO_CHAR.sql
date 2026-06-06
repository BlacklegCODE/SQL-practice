--Learning TO_CHAR function:

select sum(amount),
TO_CHAR(payment_date, 'YYYY-Month-Day') as modi
from payment
group by modi
