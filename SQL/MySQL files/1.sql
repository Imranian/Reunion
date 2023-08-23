select 	
		customer_id, first_name, last_name,
		avg(product_price) as average_order_amount 
from trail.result
where order_date >= date_sub(now(), interval 6 month)
group by customer_id, first_name, last_name
order by average_order_amount desc
limit 5