SELECT
datemonth
ads_margin
average_basket
operational_margin
icd.ads_cost AS ads_cost
icd.impression AS ads_impression
icd.clicks AS ads_click
quantity
revenue
purchase_cost
margin
fd.Total_shipping_fees AS shipping_fee
fd.Total_log_costlogcost AS log_cost
ship_cost
FROM{{ref("int_campaigns_day")}} AS icd
JOIN{{ref("finance_days")}} AS fd
GROUP BY
datemonth
