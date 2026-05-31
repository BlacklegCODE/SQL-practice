--Learning position with example

select 
left(email, position(last_name in email) - 2)
email
from customer


-- next example

select
left(email, position(first_name in email) + position (last_name in email) -3)
email
from customer


--Challenge for position:
--In this challenge you have only the email address and the last name of the customers.
-- You need to extract the first name from the email address and concatenate it 
-- with the last name. It should be in the form: "Last name, First name"

select 

last_name

||', '||

left(email, position (last_name in email) - 2) 

from customer

