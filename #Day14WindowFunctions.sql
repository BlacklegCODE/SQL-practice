--Learning window functions

select first_name, customer_id, 
row_number() over(order by customer_id desc) as customers,
rank() over(order by customer_id desc) as customers_RANK,
dense_rank() over(order by customer_id desc) as customers_DENSE
from customer 


--Subquerying to find out most popular girl and boy baby names from the table:

select * from(
select gender, name, total, row_number() over(partition by gender order by total desc) from baby_names
)

where row_number <= 3


--DB query:

CREATE TABLE baby_names (
    Gender VARCHAR(10),
    Name VARCHAR(50),
    Total INT
);

INSERT INTO baby_names (Gender, Name, Total) VALUES
('Girl', 'Ava', 95),
('Girl', 'Emma', 106),
('Boy', 'Ethan', 115),
('Girl', 'Isabella', 100),
('Boy', 'Jacob', 101),
('Boy', 'Liam', 84),
('Boy', 'Logan', 73),
('Boy', 'Noah', 120),
('Girl', 'Olivia', 100),
('Girl', 'Sophia', 88);
