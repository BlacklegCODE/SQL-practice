--Learning substring with example:

select
substring(email from position ('.' in email) + 1 for position('@' in email) - position('.' in email) -1)

from customer



--Substring challenge:

--You need to create an anonymized form fo the email addresses in the given way
--  M***.S***@whatever.org
-- In second query create an anonymized form of the email address in following way
--  ***Y.***H@whatever.org


Query 1 solution:
select
left(email, 1) || '***.' || substring( email from position('.' in email) +1 for 1) ||'***'|| substring( email from position('@' in email) for 20)
from customer


--Qyery 2 solution

select 
'***' || substring(email from position('.' in email) -1 for 1)
||'.***'|| 
substring(email from position('@' in  email) - 1 for 1)
||
substring(email from position('@' in email) for 20)
from customer
