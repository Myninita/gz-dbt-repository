SELECT
date_date AS Date
,COUNT (DISTINCT orders_id) AS Total_nb_of_transactions
,ROUND(SUM(revenue),3)  AS Total_revenue
,ROUND((SUM(revenue)/COUNT(DISTINCT orders_id)),2) AS Average_Basket
,ROUND(SUM (operational_margin),3) AS Operational_Margin
,ROUND(SUM (purchase_cost),3) AS Total_purchase_cost
,ROUND(SUM (shipping_fee),3) AS Total_shipping_fees
,ROUND(SUM (logcost),3) AS Total_log_cost
,SUM (quantity) AS Total_quantity_of_products_sold
FROM {{ref ("int_orders_operational")}}
GROUP BY date_date
ORDER BY date_date DESC

   