SELECT 
  icd.date_date
  ,icd.ads_cost
  ,icd.impression
  ,icd.click
  ,fd.Total_nb_of_transactions
  ,fd.Total_revenue
  ,fd.Average_Basket
  ,fd.Operational_Margin
  ,fd.Total_purchase_cost
  ,fd.Total_shipping_fees
  ,fd.Total_log_cost
  ,fd.Total_quantity_of_products_sold
  ,fd.Operational_Margin - icd.ads_cost AS ads_margin
FROM {{ref("int_campaigns_day")}} AS icd
JOIN {{ref("finance_days")}} AS fd
  ON icd.date_date = fd.Date
