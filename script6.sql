select product_name, customer_id
from ORDERS
where customer_id in (
    select id
    from CUSTOMERS
    where LOWER(name) = 'alexey'
);