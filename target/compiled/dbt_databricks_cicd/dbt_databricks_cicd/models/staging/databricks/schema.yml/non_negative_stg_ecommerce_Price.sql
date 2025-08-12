
select *
from `workspace`.`default`.`stg_ecommerce`
where TRY_CAST(REPLACE(Price, ',', '.') AS DOUBLE) < 0
