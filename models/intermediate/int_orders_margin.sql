SELECT 
orders_id
,date_date
,ROUND(sum(revenue),2) AS revenue
,sum(quantity) AS  quantity
,ROUND(sum(purchase_cost),2) AS purchase_cost
,ROUND(SUM(margin),2) AS margin
FROM {{ ref ("int_sales_margin") }}
GROUP BY 
date_date
, orders_id
ORDER BY date_date DESC 