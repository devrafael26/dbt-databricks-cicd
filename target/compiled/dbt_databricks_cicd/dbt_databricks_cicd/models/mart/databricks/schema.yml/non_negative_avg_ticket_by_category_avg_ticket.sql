
select *
from `workspace`.`default`.`avg_ticket_by_category`
where TRY_CAST(REPLACE(avg_ticket, ',', '.') AS DOUBLE) < 0
