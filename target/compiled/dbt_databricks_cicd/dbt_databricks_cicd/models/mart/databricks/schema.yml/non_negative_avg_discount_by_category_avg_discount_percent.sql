
select *
from `workspace`.`default`.`avg_discount_by_category`
where TRY_CAST(REPLACE(avg_discount_percent, ',', '.') AS DOUBLE) < 0
