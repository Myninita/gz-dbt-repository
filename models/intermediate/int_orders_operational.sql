select 
    sm.date_date
    ,sm.products_id
    ,sm.orders_id
    ,sm.revenue
    ,sm.quantity
    ,sm.purchase_price
    ,sm.purchase_cost
    ,round(sm.margin + sh.shipping_fee - (sh.logcost + sh.ship_cost),2) AS operational_margin
    ,sh.shipping_fee
    ,sh.logcost
    ,CAST (sh.ship_cost AS FLOAT64) AS ship_cost
from {{ ref("int_sales_margin") }} as sm
JOIN {{ ref("stg_raw__ship") }} as sh
ON sm.orders_id = sh.orders_id


 