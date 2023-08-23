select 
		distinct(product_id) as product_id, 
		product_name, variant_name, 
		count(product_id) as total_products_sold
from trail.result
group by product_id, product_name, variant_name
order by total_products_sold desc
limit 5