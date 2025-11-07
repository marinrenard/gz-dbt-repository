select
  date_trunc(date_date, day) as date_day,
  sum(quantity) as total_quantity,
from {{ ref("int_orders_margin")}}
left join {{ ref("stg_raw__ship")}}
using(orders_id)
group by date_day
order by date_day