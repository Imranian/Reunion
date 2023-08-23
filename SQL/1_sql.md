# Problem 2: SQL (related to Problem 1)

## Question 1
### 1. Retrieve the top 5 customers who have made the highest average order amounts in the last 6 months. The average order amount should be calculated for each customer, and the result should be sorted in descending order.

### SQL query: 

select 	

  customer_id, first_name, last_name,
	
  avg(product_price) as average_order_amount 

from trail.result

where order_date >= date_sub(now(), interval 6 month)

group by customer_id, first_name, last_name

order by average_order_amount desc

limit 5
