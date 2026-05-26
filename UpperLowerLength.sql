select distinct (length(email)) as sizeofemail,
upper(email) as email_upper,
lower(email) as email_lower
from customer where length(email) < 30
