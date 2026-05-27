--Learning left and right
select right(left(first_name, 2),1), first_name
from customer 
