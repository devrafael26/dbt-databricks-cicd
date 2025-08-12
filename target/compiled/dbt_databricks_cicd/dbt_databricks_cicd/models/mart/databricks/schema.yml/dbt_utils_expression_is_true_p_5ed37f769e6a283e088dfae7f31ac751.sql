



select
    1
from `workspace`.`default`.`payment_distribution`

where not(total_value total_value >= 0)

