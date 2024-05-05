create table orders(
    id bigserial primary key,
    date timestamp default current_timestamp,
    customer_id bigint references customers(id),
    product_name varchar(50),
    amount integer check ( amount > 0 )
);

insert into orders(customer_id, product_name, amount)
values (1, 'Молоко', 3),
       (1, 'Булка', 2),
       (2, 'Кофе', 1),
       (3, 'Чипсы', 5),
       (4, 'Майонез', 1),
       (4,'Крабовые палочки', 10);

drop table orders;