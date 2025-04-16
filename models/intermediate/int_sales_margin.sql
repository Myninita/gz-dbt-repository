select 
*
, quantity * purchase_price as purchase_cost
, ROUND((revenue - (quantity * purchase_price)),2) AS margin
,  {{ margin_percent('s.revenue','s.quantity * p.purchase_price')}} AS margin_percent
from {{ ref("stg_raw__sales") }} s
join {{ ref("stg_raw__product") }}p
 using (products_id)
ORDER BY margin ASC