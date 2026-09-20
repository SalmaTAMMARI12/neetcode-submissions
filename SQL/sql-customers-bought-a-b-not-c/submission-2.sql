select c.customer_id,c.customer_name from customers c
where customer_id in (select o.customer_id from orders o where product_name ='A')
and customer_id in (select o.customer_id from orders o where product_name ='B')
and customer_id not in (select o.customer_id from orders o where product_name ='C' )
order by c.customer_name ;