SELECT * FROM amazon_sales.amazon_data;
use amazon_sales;

-- quantity greater that 5
 
select* from amazon_data
where quantity >5;

-- diffrent payment method  
select Payment_Method,
count(Payment_Method) as diffrent_payment_method 
from amazon_data
group by payment_method ;

-- different order status 
 
select `status`,
count(`status`) as diffrent_status
from amazon_data
group by `status`;

-- sum of total sales  
select 
sum(Total_Sales) as total 
from amazon_data;

-- product wise total sales for sum 

SELECT Product, SUM(Total_Sales) AS Total_Sales
FROM amazon_data
GROUP BY Product;


-- order date for range

select Order_Date as date_2025
from amazon_data
where Order_Date >'2025-12-30';

-- total sales greater than 50000

select*
from amazon_data
where Total_Sales < 50000;

-- highest 5 total sales
 
SELECT *
FROM amazon_data
ORDER BY Total_Sales DESC
LIMIT 5;

-- distinct product and category

select distinct product,category 
from amazon_data;


-- category wise higest sales 
SELECT
    Category,
    SUM(Total_Sales) AS total_sales
FROM amazon_data
GROUP BY Category
ORDER BY total_sales DESC;


-- city wise higest_sales 
select city,
  sum(`Total_Sales`) as highest_sales
 from amazon_data
  group by city
  order by city desc
  limit 5;
--  category wise avg price 

 select Category,
 avg(Unit_Price) as avg_price 
 from amazon_data
 group by Category;
 
 --  product vise higest sales
 select Product,
 max(Unit_Price) as max_price 
 from amazon_data
 group by Product;
 -- Find products whose total quantity sold is greater than 100 using your Amazon Sales project.

 SELECT 
    Product, SUM(Quantity) AS total_quantity
FROM
    amazon_data
GROUP BY Product
HAVING SUM(Quantity) > 100
ORDER BY total_quantity DESC;
-- Find the total sale for each sales channel, such as online or offline.- 

select Sales_Channel,
 sum(Total_Sales) as sum_price 
 from amazon_data
 group by Sales_Channel;
 
-- Find the highest-value order in the dataset.

SELECT 
    MAX(Unit_Price) AS highest_price
FROM
    amazon_data;
-- Find the highest-value by total sales order in the dataset.


SELECT 
    MAX(Total_Sales) AS highest_totalsales
FROM
    amazon_data;

