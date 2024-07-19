USE pizza_sales;
SELECT * FROM pizza_sales;

# Pizza Categories
SELECT DISTINCT(pizza_category) 
FROM pizza_sales;

# Pizza Sizes
SELECT DISTINCT pizza_size 
FROM pizza_sales;

# Retrieve the total no of ordered placed.
SELECT COUNT(DISTINCT order_id)AS Total_Order_No 
FROM pizza_sales;


# Calculate the total revenue generated from pizza sales.
SELECT ROUND(SUM(ALL total_price),2) 
AS Total_Revenue 
FROM pizza_sales;


# Count by pizza category
SELECT pizza_category,COUNT(pizza_category) AS count 
FROM pizza_sales 
GROUP BY pizza_category 
ORDER BY count DESC;

#Identify the highest priced pizza.
SELECT pizza_name,unit_price AS price 
FROM pizza_sales 
ORDER BY price DESC 
LIMIT 1;

#Find category wise distribution of pizzas.
SELECT pizza_category, COUNT(pizza_id) AS Quantity 
FROM pizza_sales 
GROUP BY pizza_category 
ORDER BY Quantity DESC;

#List the top 5 ordered pizza types along with their quantities.
SELECT pizza_name,COUNT(pizza_id) AS Quantities
FROM pizza_sales 
GROUP BY pizza_name 
ORDER BY Quantities DESC 
LIMIT 5;

#Identify the most common pizza size ordered.
SELECT pizza_size,COUNT(pizza_id) AS Quantities
FROM pizza_sales 
GROUP BY pizza_size 
ORDER BY Quantities DESC 
LIMIT 1;

#Determine top 3 most ordered pizza types based on revenue for each pizza category
SELECT pizza_name,SUM(total_price) AS Revenue 
FROM pizza_sales 
GROUP BY pizza_name 
ORDER BY Revenue DESC 
LIMIT 3;

# Calculate the percentage contribution of each pizza type to total revenue
SELECT ROUND(SUM(ALL total_price),2) 
AS Total_Revenue 
FROM pizza_sales;
# Total_Revenue is 817860.05
SELECT pizza_category,ROUND(SUM(total_price)/(817860.5)*100,2) AS Revenue_percentage
FROM pizza_sales
GROUP BY pizza_category
ORDER BY Revenue_percentage DESC; 



