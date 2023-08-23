select 
	customer_id,
    product_id,
    sum(product_price) as cumulative_purchase
from trail.result
where customer_id=7
group by customer_id, product_id
order by cumulative_purchase
