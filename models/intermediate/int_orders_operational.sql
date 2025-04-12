select 
    sm.*
    ,sh.orders_id
    ,sh.shipping_fee
    ,sh.logcost
    ,CAST (sh.ship_cost AS FLOAT64) AS ship_cost
from {{ ref("int_sales_margin") }} as sm
join{{ ref("stg_raw__ship") }} as sh
ON sm.orders_id = sh.orders_id 

