select distinct (length(email)) as sizeofemail,
upper(email) as email_upper,
lower(email) as email_lower
from customer where length(email) < 30


--In the email system there was a problem with names where either thet first name or the last name is more than 10
--characters long.

--Find these customers and output the list of these first and last names in all lower case

select lower(first_name), lower(last_name), lower(email) from customer 
where length(first_name) > 10 or length(last_name) > 10 
