SELECT 
*
,fd.operational_margin - icd.ads_cost AS ads_margin
FROM {{ref("int_campaigns_day")}} AS icd
JOIN {{ref("finance_days")}} AS fd
ON icd.date_date = fd.Date