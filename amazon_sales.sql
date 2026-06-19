use sales_db;
CREATE TABLE amazon_sales (
    order_id VARCHAR(50),
    order_date VARCHAR(20),
    status VARCHAR(50),
    fulfillment VARCHAR(50),
    sales_channel VARCHAR(50),
    ship_service_level VARCHAR(50),
    style VARCHAR(100),
    sku VARCHAR(100),
    category VARCHAR(100),
    size VARCHAR(20),
    asin VARCHAR(30),
    courier_status VARCHAR(50),
    qty INT,
    currency VARCHAR(10),
    amount DECIMAL(10,2),
    ship_city VARCHAR(100),
    ship_state VARCHAR(100),
    ship_postal_code VARCHAR(20),
    ship_country VARCHAR(50),
    promotion_ids TEXT,
    b2b VARCHAR(10),
    fulfillment_category VARCHAR(100),
    Status_group VARCHAR(100),
    Adjusted_Amount DECIMAL(10,2)
);
SHOW VARIABLES LIKE 'secure_file_priv';
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sales.csv'
INTO TABLE amazon_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
-- ==========Exploratory data analysis==========
-- Total Records:
select count(*) from amazon_sales;
-- Total Revenue:
select sum(Adjusted_Amount) as Revenue
from amazon_sales;
-- Net Revenue:
select round(sum(Adjusted_Amount),2) from amazon_sales
where Status_group <> "Cancelled";

select round(sum(Adjusted_Amount),2) from amazon_sales
where Status_group = "Cancelled";

-- Cancellation Rate:
select round(sum(case
             when Status_group="Cancelled" then 1 end)*100.0/count(*) ,2)  as Cancellation_Rate
from amazon_sales;

-- Order Fulfillment Rate:
select round(sum(case 
                  when Status_group="Successful Delivery" then 1 end)*100.0/count(*),2) as Fulfillment_Rate
from amazon_sales;

-- Average Order Value (AOV):
select round(sum(Adjusted_Amount)/count(distinct order_id),2)  as A_O_V
from amazon_sales;

-- B2B Revenue %:
select round(sum(
             case when b2b="True"then Adjusted_Amount end)*100.0/sum(Adjusted_Amount),2) as B2B_Revenue
from amazon_sales;

-- Promotion Conversion %:
SELECT
ROUND(
COUNT(CASE
WHEN promotion_ids <> 'Unknown'
THEN 1
END)
*100.0 /
COUNT(*),
2
) AS Promotion_Usage_Percentage
FROM amazon_sales;


-- Revenue Leakage %:
select round(sum(
               case when Status_group="Cancelled" then Adjusted_Amount else 0 end)*100/sum(Adjusted_Amount),2)
               as Revenue_Leakage_precentage
from amazon_sales;
-- Monthly Revenue Trend:
select order_date from amazon_sales;
SELECT YEAR(STR_TO_DATE(order_date,'%Y-%m-%d')) AS year,
       MONTH(STR_TO_DATE(order_date,'%Y-%m-%d')) AS month,
       ROUND(SUM(Adjusted_Amount),2) AS Revenue
FROM amazon_sales
GROUP BY year, month
ORDER BY year, month;

-- Status Analysis:
select distinct Status_group from  amazon_sales;
select Status_group,sum(Adjusted_Amount) as sales from amazon_sales
group by Status_group
order by sales DESC;
select round(sum(case 
          when Status_group="Cancelled" then 1 else 0 end)*100/count(*),2 )as cancellation_rate
from amazon_sales;

-- fulfillment Analysis:
select distinct fulfillment from amazon_sales;
select fulfillment,count(*) as orders
from amazon_sales
group by fulfillment
order by orders DESC;
select fulfillment,sum(Adjusted_Amount) as Revenue
from amazon_sales
group by fulfillment
order by Revenue DESC;
select fulfillment,count(*) as Cancelled_Orders
from amazon_sales
where Status_group="Cancelled"
group by fulfillment
order by Cancelled_Orders DESC;
select fulfillment,sum(Adjusted_Amount) as Cancelled_revenue
from amazon_sales
where Status_group="Cancelled"
group by fulfillment
order by Cancelled_revenue DESC;

-- sales Channel Analysis:
select distinct sales_channel from amazon_sales;
select sales_channel,count(*) as orders
from amazon_sales
group by sales_channel
order by orders DESC;
select sales_channel,sum(Adjusted_Amount) as Revenue
from amazon_sales
group by sales_channel
order by Revenue DESC;
select sales_channel,count(*) as orders
from amazon_sales
where Status_group="Cancelled"
group by sales_channel;
select sales_channel,sum(Adjusted_Amount) as Revenue
from amazon_sales
where Status_group="Cancelled"
group by sales_channel;

-- ship service level analysis:
select distinct ship_service_level from amazon_sales;
select ship_service_level,count(*) as orders
from amazon_sales
group by ship_service_level
order by orders DESC;
select ship_service_level,sum(Adjusted_Amount) as Revenue
from amazon_sales
group by ship_service_level
order by Revenue DESC;
select ship_service_level,count(*) as cancellation_count
from amazon_sales
where Status_group="Cancelled"
group by ship_service_level
order by cancellation_count DESC;
select ship_service_level,sum(Adjusted_Amount) as cancellation_Revenue
from amazon_sales
where Status_group="Cancelled"
group by ship_service_level
order by cancellation_Revenue DESC;












