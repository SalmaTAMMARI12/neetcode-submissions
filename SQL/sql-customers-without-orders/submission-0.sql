select C.name from 
customers C left join orders O  
on C.id=O.customer_id 
where O.id is NULL ;


-- select c.name from customers c left join orders o on c.id=o.customer_id where o.id is null;