SELECT 
*
FROM {{ref("int_campaigns_day")}} AS icd
JOIN {{ref("finance_days")}} AS fd
ON icd.date_date = fd.Date