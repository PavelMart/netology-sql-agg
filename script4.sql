create table customers(
    id bigserial primary key,
    name varchar(50) ,
    surname varchar(50) ,
    age integer check ( age > 0 ),
    phone_number varchar(10) unique
);

insert into customers(name, surname, age, phone_number)
values ('pavel', 'martakov', 27, '9281112244'),
       ('Alexey', 'einstein', 75, '9992221122'),
       ('ALEXEY', 'trunov', 32, '9876543210'),
       ('alexey', 'nikitin', 20, '9281113322');

drop table customers;