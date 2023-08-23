create table trail.result as
select 
	c.customer_id AS customer_id,
	c.First_Name as first_name,
    c.Last_Name as last_name,
    c.email as email,
    c.Contact_Number as contact_number,
    
    a.adress_id AS adress_id,
    a.state as state,
    a.country as country,

    o.order_id AS order_id,
    o.order_date as order_date,

    p.product_id AS product_id,
    p.product_name as product_name,
    p.product_price as product_price,
    
    v.variant_id AS varaint_id,
    v.variant_name as variant_name,
 
    ph.price AS price,
    ph.Start_Date as start_date,
    ph.End_Date as end_date

from trail.`customers` as c
left join trail.adress as a on c.customer_id=a.customer_id
left join trail.orders as o on o.customer_id=a.customer_id
left join trail.products as p on p.customer_id=a.customer_id
left join trail.variants as v on v.product_id=p.product_id
left join trail.price_history as ph on ph.variant_id=v.variant_id