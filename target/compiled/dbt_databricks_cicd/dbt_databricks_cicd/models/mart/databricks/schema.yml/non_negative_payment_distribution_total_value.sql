
select *
from `workspace`.`default`.`payment_distribution`
where TRY_CAST(REPLACE(total_value, ',', '.') AS DOUBLE) < 0
