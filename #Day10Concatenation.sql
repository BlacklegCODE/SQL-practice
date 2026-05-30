--concatenation example
select left(first_name, 1) || right(first_name, 3), first_name from customer

--concatenation example 2
select left(first_name, 1) ||'.'|| left(last_name, 1) || '--' as initials, 
first_name from customer
