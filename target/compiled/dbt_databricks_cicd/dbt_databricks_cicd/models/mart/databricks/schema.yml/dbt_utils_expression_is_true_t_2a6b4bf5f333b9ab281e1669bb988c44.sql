



select
    1
from `workspace`.`default`.`top_customers`

where not(total_spent total_spent >= 0)

