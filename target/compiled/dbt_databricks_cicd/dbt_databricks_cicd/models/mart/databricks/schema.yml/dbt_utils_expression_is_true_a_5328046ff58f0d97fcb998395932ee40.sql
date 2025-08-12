



select
    1
from `workspace`.`default`.`avg_ticket_by_category`

where not(avg_ticket avg_ticket >= 0)

