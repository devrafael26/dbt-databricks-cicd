
select *
from `workspace`.`default`.`sales_by_category`
where TRY_CAST(REPLACE(total_revenue, ',', '.') AS DOUBLE) < 0
