--concatenation example
select left(first_name, 1) || right(first_name, 3), first_name from customer
