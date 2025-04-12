SELECT 
orders_id
,date_date
,sum(revenue) AS revenue
,sum(quantity) AS  quantity
,ROUND(sum(purchase_cost),2) AS purchase_cost
,ROUND(SUM(revenue - (quantity * purchase_price)),2) AS margin
FROM {{ ref ("int_sales_margin") }}
GROUP BY 
date_date
, orders_id
ORDER BY date_date DESC