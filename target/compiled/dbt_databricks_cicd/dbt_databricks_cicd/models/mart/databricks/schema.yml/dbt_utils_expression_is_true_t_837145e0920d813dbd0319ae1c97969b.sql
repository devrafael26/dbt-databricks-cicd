



select
    1
from `workspace`.`default`.`top_customers`

where not(total_orders total_orders > 0)

