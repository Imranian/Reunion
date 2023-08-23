# Problem 2: SQL (related to Problem 1)

## Question 1
### 1. Retrieve the top 5 customers who have made the highest average order amounts in the last 6 months. The average order amount should be calculated for each customer, and the result should be sorted in descending order.

<p><img align="right" src="https://github.com/Imranian/Reunion/blob/main/SQL/Screenshot%201.png" style='width:400px; height:400px'/></p>

### SQL query: 

select 	

  customer_id, first_name, last_name,
	
  avg(product_price) as average_order_amount 

from trail.result

where order_date >= date_sub(now(), interval 6 month)

group by customer_id, first_name, last_name

order by average_order_amount desc

limit 5

## Question 3
### 3. Create a table showing cumulative purchase by a particular customer. Show the breakup of cumulative purchases by product category.

<p><img align="right" src="https://github.com/Imranian/Reunion/blob/main/SQL/Screenshot%203.png" style='width:400px; height:400px'/></p>


### SQL query:

select 
	
 customer_id,
 
 product_id,
 
sum(product_price) as cumulative_purchase

from trail.result

where customer_id=7

group by customer_id, product_id

order by cumulative_purchase


## Question 4
### 4. Retrieve the list of top 5 selling products. Further bifurcate the sales by product variants.

<p><img align="right" src="https://github.com/Imranian/Reunion/blob/main/SQL/Screenshot%204.png" style='width:400px; height:400px'/></p>

### SQL Query:

select 

  distinct(product_id) as product_id, 

  product_name, variant_name, 

  count(product_id) as total_products_sold

from trail.result

group by product_id, product_name, variant_name

order by total_products_sold desc

limit 5

## Question 2
### 2. Retrieve the list of customer whose order value is lower this year as compared to previous year.

### SQL Query:
select customeer_id

from trail.result

where year(order_date) = year(now()) - 1

group by customer_id

having

sum(case when year(order_date) = year(now()) then product-price else 0 end)

<

sum(case when year(order_date) = year(now()) - 1 then product-price else 0 end);







