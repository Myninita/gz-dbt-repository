SELECT 
orders_id
,date_date
,sum(revenue) AS revenue
,sum(quantity) AS  quantity
,sum(purchase_cost) AS purchase_cost
,sum(margin) AS margin
FROM {{ ref ("int_sales_margin") }}
GROUP BY 
date_date
, orders_id
ORDER BY date_date DESC