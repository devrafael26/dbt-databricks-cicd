
select *
from `workspace`.`default`.`top_customers`
where TRY_CAST(REPLACE(total_spent, ',', '.') AS DOUBLE) < 0
