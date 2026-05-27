--Learning left and right
select right(left(first_name, 2),1), first_name
from customer 


--Extract last 5 characters of the emailaddress
--the email address always ends with '.org'
--how can you extract jus the dot '.' from the email address?

select right(email,5) from customer

--now third:

select left(right(email,4),1), email from customer
