
select *
from `workspace`.`default`.`monthly_revenue`
where TRY_CAST(REPLACE(monthly_revenue, ',', '.') AS DOUBLE) < 0
