
select *
from `workspace`.`default`.`top_5_products`
where TRY_CAST(REPLACE(total_sales, ',', '.') AS DOUBLE) < 0
