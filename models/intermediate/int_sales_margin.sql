select 
*
, quantity * purchase_price as purchase_cost
, ROUND(revenue - purchase_price),2) AS margin
from {{ ref("stg_raw__sales") }}
join{{ ref("stg_raw__product") }} using (products_id)
