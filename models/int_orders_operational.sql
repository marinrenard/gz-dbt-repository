select
  orders_id,
  date_date,
  (margin + shipping_fee - log_cost - ship_cost) as operational_margin
from {{ ref("int_orders_margin")}}
left join {{ ref("stg_raw__ship")}}
using(orders_id)