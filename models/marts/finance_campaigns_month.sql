SELECT
  DATE_TRUNC(date_date, MONTH) AS datemonth
  ,SUM(ads_margin) AS ads_margin
  ,ROUND(AVG(Average_Basket), 2) AS average_basket
  ,SUM(Operational_Margin) AS operational_margin
  ,SUM(ads_cost) AS ads_cost
  ,SUM(impression) AS ads_impression
  ,SUM(click) AS ads_clicks
  ,SUM(Total_quantity_of_products_sold) AS quantity
  ,SUM(Total_revenue) AS revenue
  ,SUM(Total_purchase_cost) AS purchase_cost
  ,SUM(Total_shipping_fees) AS shipping_fee
  ,SUM(Total_log_cost) AS logcost
FROM {{ ref("finance_campaigns_day") }}
GROUP BY datemonth
ORDER BY datemonth DESC
