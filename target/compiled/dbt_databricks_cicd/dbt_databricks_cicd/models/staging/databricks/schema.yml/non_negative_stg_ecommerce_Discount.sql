
select *
from `workspace`.`default`.`stg_ecommerce`
where TRY_CAST(REPLACE(Discount, ',', '.') AS DOUBLE) < 0
