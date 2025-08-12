



select
    1
from `workspace`.`default`.`avg_discount_by_category`

where not(avg_discount_percent avg_discount_percent >= 0)

